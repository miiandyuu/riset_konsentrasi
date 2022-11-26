import uuid
from flask import Blueprint, request, jsonify
from firebase_admin import firestore

db = firestore.client()
user_Ref = db.collection('user')
# .document('Gambar1')

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

# @userAPI.route('/testD')
# def readD():
#     try:
#         doc = user_Ref.get()
#         if doc.exists:
#             return jsonify(doc.to_dict())
#     except Exception as e:
#         return f"An Error Occured: {e}"