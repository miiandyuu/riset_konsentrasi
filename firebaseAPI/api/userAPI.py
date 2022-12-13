import uuid
from flask import Blueprint, request, jsonify
from firebase_admin import firestore
import random

db = firestore.client()
user_Ref = db.collection('user')

userAPI = Blueprint('userAPI', __name__)

@userAPI.route('/add', methods=['POST'])
def create():
    try:
        id = uuid.uuid4()
        user_Ref.document(id.hex).set(request.json)
        return jsonify({"success": True}), 200
    except Exception as e:
        return f"An Error Occured: {e}"

@userAPI.route('/list')
def read():
    try:
        all_coordinate = [doc.to_dict() for doc in user_Ref.get()]
        return jsonify(all_coordinate), 200
    except Exception as e:
        return f"An Error Occured: {e}"







@userAPI.route('/test', methods=['POST'])
def test():
    try:
        i = 1
        listTest = []
        while i < 30:
            listTest.append(str(random.randrange(30)))
            i += 1

        x = []
        y = []
        count = 0
        for i in listTest:
            if count % 2 == 1:
                y = listTest[1::2]
            else: x = listTest[0::2]
            count += 1

        checkKoordinat = list(zip(x, y))

        saveKoordinat = {}

        for index, item in enumerate(checkKoordinat):
            x = item[0]
            y = item[1]
                
            saveKoordinat = {
                    str(index) : {
                        f'x{index}' : str(x),
                        f'y{index}' : str(y)
                    }
                }

        db.collection('user').document('Gambar1').set(saveKoordinat)
        return jsonify({"success": True}), 200
    except Exception as e:
        return f"An Error Occured: {e}"

