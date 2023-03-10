import firebase_admin
from firebase_admin import credentials, firestore
import random

cred = credentials.Certificate("firebaseAPI/api/key.json") #NOTE: put your apiKey file here
default_app = firebase_admin.initialize_app(cred)
db = firestore.client()
user_Ref = db.collection('Ricky Aston')

def new_func():
    listTest = []

    t=60
    while t:
        listTest.append(int(random.randrange(30)))
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
    return final

final = new_func()

indexGambar = 1
while True:
    while indexGambar < 6:
        new_func()
        final = new_func()
        user_Ref.document('Gambar'f'{indexGambar}').set(final)
        indexGambar += 1