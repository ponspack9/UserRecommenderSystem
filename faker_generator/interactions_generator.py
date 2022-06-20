import os

from faker import Faker
from faker.config import AVAILABLE_LOCALES
import numpy as np
import time
from datetime import timedelta
import matplotlib.pyplot as plt
from leveraged_rating import *
from labels import *

users_leveraged_file_path = '../dataset/leveraged/users.csv'
users_leveraged_interactions_file_path = '../dataset/leveraged/users_interactions.csv'
time_start = time.time()

fake = Faker(AVAILABLE_LOCALES)

N_USERS = 75000

N_MIN_INTERACTIONS = 25
N_MAX_INTERACTIONS = 100

# generate normal distribution
age_dist = np.random.normal(loc=27, scale=6, size=N_USERS).astype(int)
ranking_dist = np.random.normal(loc=1750, scale=500, size=N_USERS).astype(int)

users = []

for i in range(1, N_USERS):
    users.append(
        {
            'user_id': i,
            'age': abs(age_dist[i]),
            'gender': np.random.choice(gender),
            'language': np.random.choice(language_names),
            'login_time': np.random.randint(0, 24 * 60),  # fake.time()[:5],
            'character': np.random.choice(characters),
            'c_type': np.random.choice(c_type),
            'mode': np.random.choice(modes),
            'ranking': abs(ranking_dist[i])
        }
    )


# functions ------------------------------------------------------------------------------------------------------------
def user_has_interactions():
    # create user interactions in 90% of the users
    # return np.random.rand() > 0.1
    return True


def get_random_interacted_id():
    _id = np.random.randint(1, len(users))

    if _id == user.get('user_id'):
        _id += 1 if _id < len(users) - 1 else -1

    return _id


def get_leveraged_rating(query_user, candidate_user):
    _rating = 0

    for field in list(users[0].keys())[1:]:
        _rating += get_rating(field, query_user, candidate_user)

    # total of 120 points
    _rating = "%.2f" % ((_rating/120)*10)

    return float(_rating)


def write_interaction_to_file(file, user, interacted_id, rating):
    file.write(f"{user['user_id']},{interacted_id},{'%.2f'%rating},")
    for i, feature in enumerate(users[interacted_id].values()):
        if i > 0:
            file.write(feature.__str__() + ('\n' if i == len(user.values()) - 1 else ','))


total_interactions = 0
max_rating = 0

# reseting the data
with open(users_leveraged_interactions_file_path, 'w') as f:
    # save the header
    f.write('user_id,interacted_id,rating,age,gender,language,login_time,character,c_type,mode,ranking\n')

# saving the dataset
with open(users_leveraged_file_path, 'w') as f:
    # save the header
    f.write(','.join(users[0].keys()) + '\n')

    for user in users:
        with open(users_leveraged_interactions_file_path, 'a') as q:
            # generate interactions with other users

            if user_has_interactions():
                for _ in range(0, np.random.randint(N_MIN_INTERACTIONS, N_MAX_INTERACTIONS)):
                    interacted_id = get_random_interacted_id()
                    rating = get_leveraged_rating(user, users[interacted_id])

                    write_interaction_to_file(q, user, interacted_id, rating)

                    total_interactions += 1
                    if max_rating < rating:
                        max_rating = rating

        for i, feature in enumerate(user.values()):
            f.write(feature.__str__() + ('\n' if i == len(user.values()) - 1 else ','))


print(f'Number of interactions {total_interactions}')
print(f'Max rating {max_rating}')
print(f'Time elapsed: {timedelta(seconds=(time.time() - time_start))}')

# histograms to visualize the distributions

plt.hist(age_dist)
plt.title('Age distribution')
plt.ylabel('Nº players')
plt.xlabel('Age')
plt.show()

plt.hist(ranking_dist)
plt.title('Score distribution')
plt.ylabel('Nº players')
plt.xlabel('Scoreboard')
plt.show()
