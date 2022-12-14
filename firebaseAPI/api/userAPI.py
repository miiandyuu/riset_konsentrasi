import uuid
from flask import Blueprint, request, jsonify
from firebase_admin import firestore
import random

db = firestore.client()
user_Ref = db.collection('userTest')

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
        listTest = []
        t = 60
        while t:
            listTest.append(str(random.randrange(30)))
            t -= 1

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
        final = {}
        for index, item in enumerate(checkKoordinat):
            x = item[0]
            y = item[1]
                
            saveKoordinat = {
                    f'{index}' : {
                        'x' : x,
                        'y' : y
                    }
                }
            final = final | saveKoordinat
        user_Ref.document('cobaRandomKoordinat').set(final)
        return jsonify({"success": True}), 200
    except Exception as e:
        return f"An Error Occured: {e}"

