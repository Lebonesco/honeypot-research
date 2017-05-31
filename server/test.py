from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return "Edward's Flask Application"

if __name__ == '__main__':
    app.run(host='128.223.4.35', port=5555, debug=True)
