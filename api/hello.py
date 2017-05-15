from flask import Flask, jsonify
import tensorflow as tf
from sklearn import datasets



app = Flask(__name__,
            static_url_path='', 
            static_folder='../build')



@app.route('/')
def root():
  return app.send_static_file('index.html')

@app.route('/api/test1')
def test1():
    iris = datasets.load_iris()
    data = iris.data
    return jsonify(data.shape)

@app.route('/api/test2')
def test2():
    hello = tf.constant('TensorFlow is working!')
    sess = tf.Session()
    return_value = sess.run(hello)
    return return_value



if __name__ == '__main__':
    app.run(host="0.0.0.0")
