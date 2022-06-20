import time
import gc
from datetime import timedelta

import numpy as np
import tensorflow_recommenders as tfrs
import matplotlib.pyplot as plt
from mpl_toolkits.axes_grid1 import make_axes_locatable

from file_utils import *

# Commands ------------------------------------------------------------------------------------------------------------
# python -m tf2onnx.convert --saved-model . --output onnxmodel.onnx
# saved_model_cli show --all --dir .

# Constants ------------------------------------------------------------------------------------------------------------
print(tf.config.list_physical_devices('GPU'))
time_start = time.time()
seed = 42

epochs = 8
learning_rate = 0.01

# Dataset --------------------------------------------------------------------------------------------------------------
interactions_dataset, size = create_interactions_dataset()

print('Dataset size: ' + size.__str__())
train_amount = int(size * 0.8)
test_amount = size - train_amount

# Vocabulary -----------------------------------------------------------------------------------------------------------
feature_names = ["user_id", "interacted_id", "rating", "age", "gender", "language", "login_time", "character", "c_type",
                 "mode", "ranking"]

str_features = ["gender", "language", "character", "c_type", "mode"]
int_features = ["user_id", "interacted_id", "age", "login_time", "ranking"]

do_not_preprocess_features = ["rating"]

vocabularies_size = {}
processed_features = {}

for feature_name in feature_names:
    print(feature_name + '-' * 50)

    print('Obtaining feature from dataset')

    features = list(interactions_dataset.batch(size).map(lambda x: x[feature_name]))
    print('Generating vocabulary')
    vocabulary = np.unique(np.concatenate(features)).tolist()

    vocabularies_size[feature_name] = len(vocabulary)

    if feature_name not in do_not_preprocess_features:
        save_vocabulary_to_script(feature_name, vocabulary, feature_name in str_features)
        if feature_name in str_features:
            processed_features[feature_name] = map_str_feature(vocabulary=vocabulary, data=tf.constant(features[0]))
        elif feature_name in int_features:
            processed_features[feature_name] = map_int_feature(vocabulary=vocabulary, data=tf.constant(features[0]))

    else:
        processed_features[feature_name] = features[0]

    print('Deleting vocabulary')
    del vocabulary
    print('Deleting features')
    del features
    gc.collect()

print('Deleting dataset')
del interactions_dataset
gc.collect()

interactions = tf.data.Dataset.from_tensor_slices(processed_features)
print('Deleting processed_features')
del processed_features
gc.collect()

tf.random.set_seed(seed)
shuffled = interactions.shuffle(size, seed=seed, reshuffle_each_iteration=False)

train = shuffled.take(train_amount)
test = shuffled.skip(train_amount).take(test_amount)

cached_train = train.batch(8192).cache()
cached_test = test.batch(4096).cache()


# Model ----------------------------------------------------------------------------------------------------------------
class DCN(tfrs.Model):
    def __init__(self, use_cross_layer, deep_layer_sizes, projection_dim=None):
        super().__init__()
        self.embedding_dimension = 32

        self._all_features = [f for f in feature_names if f != "rating"]
        self._embeddings = {}

        # Compute embeddings for string features
        for feature_name in self._all_features:
            sequential = tf.keras.Sequential([
                tf.keras.Input(type_spec=tf.TensorSpec(shape=(None,), dtype=tf.int64),
                               name=f'{feature_name}_input_layer'),
                tf.keras.layers.Embedding(vocabularies_size[feature_name] + 1, self.embedding_dimension)],
                name=f'{feature_name}_sequential_layer'
            )

            self._embeddings[feature_name] = sequential

        if use_cross_layer:
            self._cross_layer = tfrs.layers.dcn.Cross(
                projection_dim=projection_dim,
                kernel_initializer="glorot_uniform"
            )
        else:
            self._cross_layer = None

        self._deep_layers = [tf.keras.layers.Dense(layer_size, activation="relu") for layer_size in deep_layer_sizes]

        self._logit_layer = tf.keras.layers.Dense(1)

        self.task = tfrs.tasks.Ranking(
            loss=tf.keras.losses.MeanSquaredError(),
            metrics=[tf.keras.metrics.RootMeanSquaredError("RMSE")]
        )

    def call(self, features):
        embeddings = []
        for feature_name in self._all_features:
            embedding_fn = self._embeddings[feature_name]
            embeddings.append(embedding_fn(features[feature_name]))

        x = tf.concat(embeddings, axis=1)

        # Build cross network
        if self._cross_layer is not None:
            x = self._cross_layer(x)

        # Build deep network
        for deep_layer in self._deep_layers:
            x = deep_layer(x)

        return self._logit_layer(x)

    def compute_loss(self, inputs, training: bool = False) -> tf.Tensor:
        labels = inputs.pop('rating')
        scores = self(inputs)

        return self.task(labels=labels, predictions=scores)


# Running ------------------------------------------------------------------------------------------------------------
def run_models(use_cross_layer, deep_layer_sizes, projection_dim=None, num_runs=3):
    models = []
    rmses = []

    for i in range(num_runs):
        model = DCN(use_cross_layer, deep_layer_sizes, projection_dim)
        model.compile(optimizer=tf.keras.optimizers.Adam(learning_rate))

        models.append(model)

        model.fit(cached_train, epochs=epochs, verbose=False)
        metrics = model.evaluate(cached_test, return_dict=True)

        rmses.append(metrics["RMSE"])

    mean, stdv = np.average(rmses), np.std(rmses)

    return {"models": models, "mean": mean, "stdv": stdv, "sample": models[0]}


# Testing -----------------------------------------------------------------------------------------------------------
dcn_result = run_models(True, [192, 192])

results = []
sizes = []
n = 'Testing'
while n != 'q':
    print('Enter the size of each layer')
    c_sizes = []
    while True:
        n = input()
        if n:
            if n == 'q':
                break
            c_sizes.append(int(n))
        else:
            print(f'Testing with sizes {c_sizes}')
            sizes.append(c_sizes)
            results.append(run_models(True, c_sizes))
            break

for s, result in zip(sizes, results):
    print("DCN {} \t\t\tRMSE mean: {:.4f}, stdv: {:.4f}".format(s, result["mean"], result["stdv"]))

winnerX = int(input('Winner test: '))
winnerY = int(input('Winner model: '))

winner = results[winnerX]['models'][winnerY]

# Saving -----------------------------------------------------------------------------------------------------------

tf.saved_model.save(winner, saving_path_mod)
loaded = tf.saved_model.load(saving_path_mod)

prediction = loaded({
    "user_id": [1],
    "interacted_id": [2],
    # "rating": int(x['rating']),
    "age": [1],
    "gender": [1],
    "language": [1],
    "login_time": [1],
    "character": [1],
    "c_type": [1],
    "mode": [1],
    "ranking": [1]
}).numpy()
print(f"Rating: {prediction}")

# Printing results -----------------------------------------------------------------------------------------------------
print(f'Time elapsed: {timedelta(seconds=(time.time() - time_start))}')

model = winner
mat = model._cross_layer._dense.kernel
features = model._all_features

block_norm = np.ones([len(features), len(features)])

dim = model.embedding_dimension

# Compute the norms of the blocks.
for i in range(len(features)):
    for j in range(len(features)):
        block = mat[i * dim:(i + 1) * dim,
                j * dim:(j + 1) * dim]
        block_norm[i, j] = np.linalg.norm(block, ord="fro")

from file_utils import block_norm_saving_path

with open(block_norm_mod_saving_path, 'wb') as file:
    np.save(file, block_norm)

plt.figure(figsize=(9, 9))
im = plt.matshow(block_norm, cmap=plt.cm.Blues)
ax = plt.gca()
divider = make_axes_locatable(plt.gca())

cax = divider.append_axes("right", size="5%", pad=0.05)
plt.colorbar(im, cax=cax)
cax.tick_params(labelsize=10)

ax.set_xticks(np.arange(len(features)))
ax.set_yticks(np.arange(len(features)))
_ = ax.set_xticklabels(features, rotation=45, ha="left", fontsize=10)
_ = ax.set_yticklabels(features, fontsize=10)

plt.show()
