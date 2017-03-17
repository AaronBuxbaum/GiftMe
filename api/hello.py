from flask import Flask, jsonify
import tensorflow as tf

app = Flask(__name__,
            static_url_path='', 
            static_folder='../build')


@app.route('/')
def root():
  return app.send_static_file('index.html')


@app.route('/api/test')
def test():
    hello = tf.constant('TensorFlow is working!')
    sess = tf.Session()
    return_value = sess.run(hello)
    return jsonify(return_value)


if __name__ == '__main__':
    app.run(port=8080)
