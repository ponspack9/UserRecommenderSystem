import pprint


def print_dataset_sample(dataset):
    for x in dataset.take(2).as_numpy_iterator():
        pprint.pprint(x)


def print_np_array(array):
    for line in array[0:2]:
        pprint.pprint(line)
