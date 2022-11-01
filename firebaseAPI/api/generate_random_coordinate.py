from sre_constants import ANY
import time
import random
import json

koordinat = {
    f"{'{:02d}:{:02d}'.format}": {
        "x": "1",
        "y": "2"
    }
}
# TODO: make output into a .json format

def countDown(t):
    while t:
        mins, secs = divmod(t, 60)
        timer = '{:02d}:{:02d}'.format(mins,secs)
        koordinat = {
            f"{timer}": {
                "x": "1",
                "y": "1"
            }
        }
        koordinat[timer] = {"x": str(random.randrange(30)), "y": str(random.randrange(30))}

        # test = json.loads(koordinat)
        # print(timer, f'Koordinat X: {koordinat["x"]}', f'Koordinat Y: {koordinat["y"]}')
        time.sleep(1)
        t -= 1
        print(koordinat)
        
    print('Recording data success!')
    # print(koordinat)
    
t = input("Enter the time in seconds: ")
  
countDown(int(t))