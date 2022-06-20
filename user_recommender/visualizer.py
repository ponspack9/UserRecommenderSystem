import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.axes_grid1 import make_axes_locatable
from file_utils import block_norm_saving_path

with open(block_norm_saving_path, 'rb') as file:
    block_norm = np.load(file)

str_features = ["user_id", "interacted_id", "gender", "language", "character", "c_type", "mode"]
int_features = ["age", "login_time", "ranking"]
features = str_features + int_features

plt.figure(figsize=(9,9))
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