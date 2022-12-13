# TODO:: Simpan data dari VR
import random

i = 1
listTest = []
while i < 30:
    listTest.append(str(random.randrange(30)))
    i += 1
print(listTest)


x = []
y = []
count = 0
for i in listTest:
    if count % 2 == 1:
        y = listTest[1::2]
    else: x = listTest[0::2]
    count += 1

checkKoordinat = list(zip(x, y))
print(checkKoordinat)

saveKoordinat = {}

for index, item in enumerate(checkKoordinat):
    x = item[0]
    y = item[1]
        
    saveKoordinat = {
            index : {
                'x' : x,
                'y' : y
            }
        }
    print(saveKoordinat)




# TODO:: Kirim data dari VR to API
from firebase_admin import firestore
db = firestore.client()
user_Ref = db.collection('user')
db.collection('user').document('Gambar1').set(saveKoordinat)

# TODO:: Get from API

