from firebase import firebase

firebase = firebase.FirebaseApplication("https://iottest-d6c52-default-rtdb.firebaseio.com/",None)
firebase.put('/','test',"done")

data_get = firebase.get('/',"data")
# print(len(data_get))

# for i in data_get:
# 	print(type(i))
print(data_get[1]['timeWater2']['hour'])