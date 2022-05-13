import os
import pprint
import time
import numpy as np
import pandas as pd
import tensorflow as tf

import tensorflow_recommenders as tfrs
from user_recommender.user_model import UserUserModel
from utils import print_np_array, print_dataset_sample

# -------------------------------------------------------------------------
time_start = time.time()
size = 50000
print('Dataset size ' + size.__str__())

# Dataset -----------------------------------------------------------------------------------------------------------
print(f"Dataset {'-' * 50}")

# file loading
users_file = pd.read_csv('/home/avax/tensorflow_datasets/downloads/users.csv')
users_interactions_file = pd.read_csv('/home/avax/tensorflow_datasets/downloads/users_interactions.csv')
interactions_size = users_interactions_file.shape[0]

# creating the datasets
users_dataset = tf.data.Dataset.from_tensor_slices(dict(users_file))
users_interactions_dataset = tf.data.Dataset.from_tensor_slices(dict(users_interactions_file))

# print to check everything is okey
print_dataset_sample(users_dataset)
print_dataset_sample(users_interactions_dataset)
print('-' * 50)

# this user has interacted with this user
# keep the mode and c_type
interactions = users_interactions_dataset.map(lambda x: {
    'user_id': x['user_id'],
    'interacted_id': x['interacted_id']
})
users = users_dataset.map(lambda x: x['user_id'])

# divide the interactions set at 80/20 ratio
seed = 42
tf.random.set_seed(seed)
shuffled = interactions.shuffle(500_000, seed, reshuffle_each_iteration=False)

train_amount = int(interactions_size * 0.8)
train = shuffled.take(train_amount)
test = shuffled.skip(train_amount).take(interactions_size - train_amount)

# map raw values to an integer, keeping only the identifiers
users_ids = users.batch(1_000)
interactions_ids = interactions.batch(1_000_000).map(lambda x: x['user_id'])

# vocabulary
unique_interactions_ids = np.unique(np.concatenate(list(interactions_ids)))
unique_user_ids = np.unique(np.concatenate(list(users_ids)))

# print to check everything is okey
print_np_array(unique_user_ids)
print_np_array(unique_interactions_ids)
print('-' * 50)

# Model ----------------------------------------------------------------------------------------------------------------
print(f"Model {'-' * 50}")
embedding_dimension = 32

# The query tower
user_model = tf.keras.Sequential([
    tf.keras.layers.IntegerLookup(vocabulary=unique_user_ids, mask_token=None),
    tf.keras.layers.Embedding(len(unique_user_ids) + 1, embedding_dimension)
])

# the candidate tower
user_candidate_model = tf.keras.Sequential([
    tf.keras.layers.IntegerLookup(vocabulary=unique_interactions_ids, mask_token=None),
    # We add an additional embedding to account for unknown tokens
    tf.keras.layers.Embedding(len(unique_interactions_ids) + 1, embedding_dimension)
])

# Metrics
# figure out how good our model is. Compare affinity score to all other possible candidates
metrics = tfrs.metrics.FactorizedTopK(candidates=users.batch(128).map(user_candidate_model))

# Loss
# The task itself is a Keras layer that takes the query and candidate embeddings as arguments, and returns the
# computed loss: we'll use that to implement the model's training loop.
task = tfrs.tasks.Retrieval(metrics=metrics)

# Fitting and evaluating -----------------------------------------------------------------------------------------------
print(f"Fitting and evaluating {'-' * 50}")

model = UserUserModel(user_model, user_candidate_model, task)
model.compile(optimizer=tf.keras.optimizers.Adagrad(learning_rate=0.1))

cached_train = train.shuffle(50_000).batch(8192).cache()
cached_test = test.batch(4096).cache()

# train the model
print(f"Training {'-' * 50}")
model.fit(cached_train, epochs=3)

# evaluate the model
print(f"Evaluating {'-' * 50}")
model.evaluate(cached_test, return_dict=True)

# Making predictions ---------------------------------------------------------------------------------------------------
print(f"Making predictions {'-' * 50}")

index = tfrs.layers.factorized_top_k.BruteForce(model.user_model)
index = index.index_from_dataset(
    tf.data.Dataset.zip((users.batch(100), users.batch(100).map(model.candidate_model))))

# get recommendations MUST DO TO BE ABLE TO LOAD IT LATER!!!
my_user = 499
idk, something = index(tf.constant([my_user]))
print(f"Recommendations for user {my_user}: \n{idk} \n{something[0, :25]}")


index.save_weights('weights/weightsv1')

# Exporting the model --------------------------------------------------------------------------------------------------
print(f"Exporting the model {'-'*50}")

tmp = 'models'
path = os.path.join(tmp, "model_v2")

# save the index
tf.saved_model.save(index, path)
#index.save(path)

loaded = tf.saved_model.load(path)

# keras
# tf.keras.models.save_model(index,'models/keras')

# Pass a user id in, get top users recommended back
scores, users_recommended = loaded([42])
print(f"Recommendadions: {users_recommended[0][:10]}")



print(f'Time elapsed: {time.time() - time_start}')
