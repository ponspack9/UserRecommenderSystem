import tensorflow as tf

# loaded = tf.saved_model.load('models/model_v2')

#loaded = tf.keras.models.load_model(filepath='weights/wheightsv1')

loaded = tf.saved_model.load('models/model_v2')

scores, users_recommended = loaded([42])
print(f"Recommendations: {users_recommended[0][:10]}")
