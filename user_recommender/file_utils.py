import gc
import pandas as pd
import tensorflow as tf
from constants import users_leveraged_file_path, users_leveraged_interactions_file_path

# from user_recommender.utils.utils import print_dataset_sample
home = '/home/kusama/Documents/GitHub/TFG/Recommender/user_recommender/versions/4.cross_networks'
saving_path = home + '/models/cross'
saving_path_mod = home + '/models/cross_mod'
block_norm_saving_path = saving_path + '/block_norm.npy'  # to later plot the results
block_norm_mod_saving_path = saving_path_mod + '/block_norm.npy'  # to later plot the results


def create_users_dataset():
    csv = pd.read_csv(users_leveraged_file_path)
    _dataset = tf.data.Dataset.from_tensor_slices(dict(csv))

    # print_dataset_sample(_dataset)

    return _dataset


def create_interactions_dataset():
    # file loading
    dtype_dic = {
        "user_id": int,
        "interacted_id": int,
        "rating": float,
        "age": int,
        "gender": str,
        "language": str,
        "login_time": int,
        "character": str,
        "c_type": str,
        "mode": str,
        "ranking": int
    }

    csv = pd.read_csv(users_leveraged_interactions_file_path, dtype=dtype_dic)
    _dataset = tf.data.Dataset.from_tensor_slices(dict(csv))
    size = sum(1 for row in csv['user_id'])

    # print_dataset_sample(_dataset)

    return _dataset, size


def map_int_feature(vocabulary, data):
    layer = tf.keras.layers.IntegerLookup(vocabulary=vocabulary)
    d = list(layer(data).numpy())

    print('[file_utils/map_int_feature] Deleting vocabulary')
    print('[file_utils/map_int_feature] Deleting data')
    del vocabulary
    del data
    del layer
    gc.collect()
    return d


def map_str_feature(vocabulary, data):
    print(f'Mapping str feature. Size vocabulary/data: {len(vocabulary)}/{len(data)}')
    layer = tf.keras.layers.StringLookup(vocabulary=vocabulary)
    d = list(layer(data).numpy())

    print('[file_utils/map_str_feature] Deleting vocabulary')
    print('[file_utils/map_str_feature] Deleting data')
    del vocabulary
    del data
    del layer
    gc.collect()
    return d


def save_vocabulary_to_script(feature, vocabulary, is_string):
    print(f'Saving feature [{feature}] to script. Size: {len(vocabulary)}')
    file_name = f'{feature.__str__().capitalize()}Vocabulary'
    with open(f'/home/kusama/Desktop/Assets/Scripts/Recommender/{file_name}.cs', 'w') as file:
        file.write(f"using System.Collections.Generic;\n\n public static class {file_name}\n")
        file.write('{\n')
        type = "string" if is_string else "int"
        file.write(f'\tpublic static Dictionary<{type}, int> values = new Dictionary<{type}, int>()\n')
        file.write('\t{')
        # contents of the array
        for i,word in enumerate(vocabulary):
            if i % 10 == 0:
                file.write('\n\t\t')

            if is_string:
                file.write('{')
                file.write(f'"{word.decode()}", {i+1}')
                file.write('}, ')
            else:
                file.write('{')
                file.write(f'{word}, {i+1}')
                file.write('}, ')



        # end of array contents
        file.write('\n\t};')
        file.write('\n}')

        file.flush()

    print('[file_utils/save_to_script] Deleting vocabulary')
    del vocabulary
    gc.collect()
