from faker import Faker
from faker.config import AVAILABLE_LOCALES
import numpy as np
# import matplotlib.pyplot as plt
from labels import *
import time

time_start = time.time()

fake = Faker(AVAILABLE_LOCALES)

N_USERS = 500

# generate normal distribution
age_dist = np.random.normal(loc=27, scale=6, size=N_USERS).astype(int)
ranking_dist = np.random.normal(loc=1500, scale=500, size=N_USERS).astype(int)
avg_hour_dist = np.random.normal(loc=2, scale=0.75, size=N_USERS)

distributions = [age_dist, ranking_dist, avg_hour_dist]
N_DIST = len(distributions)

users = []

for i in range(0, N_USERS):
    users.append(
        {
            'user_id': i,
            'age': age_dist[i],
            'gender': np.random.choice(gender),
            'language': np.random.choice(language_names),
            'avg_hours_session': "%.2f" % avg_hour_dist[i],
            'login_time': np.random.randint(0, 24 * 60),  # fake.time()[:5],
            'character': np.random.choice(characters),
            'c_type': np.random.choice(c_type),
            'mode': np.random.choice(modes),
            'ranking': ranking_dist[i]
        }
    )

# for user in users:
#     print(user)

# reseting the data
with open('/home/avax/tensorflow_datasets/downloads/users_interactions.csv', 'w') as f:
    f.write('user_id,interacted_id\n')

# saving the dataset
with open('/home/avax/tensorflow_datasets/downloads/users.csv', 'w') as f:
    f.write(','.join(users[0].keys()) + '\n')
    for user in users:
        with open('/home/avax/tensorflow_datasets/downloads/users_interactions.csv', 'a') as q:
            # generate interactions with other users
            if np.random.rand() > 0.75:
                for _ in range(0, np.random.randint(0, 20)):
                    user_id = np.random.randint(0, N_USERS)
                    if user_id == user.get('user_id'):
                        user_id += 1 if user_id < N_USERS - 1 else -1
                    q.write(f"{user['user_id']},{user_id}\n")
                    # for i, feature in enumerate(users[user_id].values()):
                    #     q.write(feature.__str__() + ('\n' if i == len(user.values()) - 1 else ','))

        for i, feature in enumerate(user.values()):
            f.write(feature.__str__() + ('\n' if i == len(user.values()) - 1 else ','))

# fig, plots = plt.subplots(1, N_DIST)
# for i in range(0, N_DIST):
#    plots[i].hist(distributions[i])

# histograms to visualize the distributions
# fig, [ax1, ax2, ax3] = plt.subplots(1,3)
# plt.hist(normal_dist)
# plt.title('Normal Distribution')
# plt.ylabel('Ranking')

# plt.show()

print(f'Time elapsed: {time.time() - time_start}')
