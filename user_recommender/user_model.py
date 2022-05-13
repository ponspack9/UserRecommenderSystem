import tensorflow_recommenders as tfrs
import tensorflow as tf
from typing import Dict, Text


class UserUserModel(tfrs.Model):

    def __init__(self, user_model, candidate_model, task):
        super().__init__()
        self.user_model: tf.keras.Model = user_model
        self.candidate_model: tf.keras.Model = candidate_model
        self.task: tf.keras.layers.Layer = task

    def compute_loss(self, inputs, training: bool = False) -> tf.Tensor:
        user_embeddings = self.user_model(inputs["user_id"])
        positive_candidate_embeddings = self.candidate_model(inputs["user_id"])

        return self.task(user_embeddings, positive_candidate_embeddings)

    # @tf.function
    # def call(self, features: Dict[str, tf.Tensor]) -> tf.Tensor:
    #     return self.candidate_model(features["user_id"], features["interacted_id"])
