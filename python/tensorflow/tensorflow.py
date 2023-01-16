import tensorflow as tf

###tensor constant
x = tf.ones(shape=(2, 1))
x = tf.zeros(shape=(1, 2))
x = tf.random.normal(shape=(3, 1), mean=0., stddev=1.)

###tensor variable
v = tf.Variable(initial_value = tf.random.normal(shape=(3, 1)))
v.assign(tf.ones((3, 1)))
v[0, 0].assign(3.)
v.assign_add(tf.ones((3, 1)))
v.assign_sub(tf.ones((3, 1)))

###tensor math operations
#element wise
a = tf.random.normal(shape=(2, 2), mean=0., stddev=1.)
b = tf.square(a)
c = tf.sqrt(a)
d = b + c
e *= d
#matrics multiplication
e = tf.matmul(a, b)
