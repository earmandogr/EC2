from flask import Flask, request
import logging

app = Flask(__name__)

# Configurar logging
logging.basicConfig(filename='access.log', level=logging.INFO)

@app.route('/')
def home():
    app.logger.info(f"Access from {request.remote_addr}")
    return "Hello from Dockerized Flask app!"
    
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
