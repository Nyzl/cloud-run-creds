import os
from flask import Flask

app = Flask(__name__)
port = os.environ.get('PORT') 

@app.route('/')
def go():
    return "hello ian"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=int(os.environ.get('PORT', 8080)))