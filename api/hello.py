from flask import Flask
app = Flask(__name__)

@app.route("/api/test")
def test():
    return "Testing"

if __name__ == "__main__":
    app.run()
