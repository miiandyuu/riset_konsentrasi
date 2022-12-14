from flask import Flask
import firebase_admin
from firebase_admin import credentials

cred = credentials.Certificate("firebaseAPI/api/key.json") #NOTE: put your apiKey file here
default_app = firebase_admin.initialize_app(cred)
print(default_app)

def create_app():
    app = Flask(__name__)
    app.config['SECRET_KEY'] = "12345asdasdefwcae"

    from .userAPI import userAPI

    app.register_blueprint(userAPI, url_prefix='/userTest')

    return app