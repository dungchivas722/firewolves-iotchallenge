<<<<<<< HEAD
from firebase import firebase
import string
from datetime import datetime

firebase = firebase.FirebaseApplication("https://iottest-d6c52-default-rtdb.firebaseio.com/",None)
class Vuon:
	def __init__(self, data_get):
		self.air = data_get["air"] 											# độ ẩm không khí
		self.humidity_soil = data_get["humidity_soil"]						# độ ẩm đất
		self.light = data_get["light"]										# Cường độ sáng	
		self.tempareture = data_get["tempareture"]							# Nhiệt độ

		self.sw_light = data_get["sw_light"]								# Bật đèn
		self.sw_pumb = data_get["sw_pumb"]									# Bật bơm	

		self.sw_st_light = data_get["sw_st_light"]							# Bật thời gian đèn
		self.timeLightOn = data_get["timeLightOn"]							# Thời gian đèn bật
		self.timeLightOff = data_get["timeLightOff"]						# Thời gian đèn tắt

		self.sw_st_threshold = data_get["sw_st_threshold"]					# Bật tưới cây theo ngưỡng
		self.threshold = data_get["threshold"]								# Ngưỡng tưới
		self.threshold_max = data_get["threshold_max"]						# Ngưỡng độ ẩm max

		self.sw_st_threshold_light = data_get["sw_st_threshold_light"]		# Đèn theo ngưỡng sáng
		self.threshold_light = data_get["threshold_light"]					# Ngưỡng sáng min

		self.sw_st_water = data_get["sw_st_water"]							# Tưới cây theo thời gian
		self.sw_st_water2 = data_get["sw_st_water2"]
		self.timeWater = data_get["timeWater"]								# Thời gian tưới 
		self.timeWater2 = data_get["timeWater2"]							# thời gian tưới

		self.time_water = data_get["time_water"]							# Thời gian tưới kéo dài

def controlPump(humidity_soil, sw_pumb, sw_st_threshold, threshold, threshold_max, sw_st_water, sw_st_water2, timeWater, timeWater2, time_water):
	now = datetime.now()
	current_time = now.strftime("%H:%M:%S").split(":")
	time = int(current_time[0])*60+current_time[1]
	time1 = int(timeWater["hour"])*60+int(timeWater["minute"])
	time2 = int(timeWater2["hour"])*60+int(timeWater2["minute"])
	if sw_pumb == 1:
		return 1
	if sw_st_threshold == 1:
		if humidity_soil >= threshold and humidity_soil <= threshold_max:
			return 1
	if sw_st_water == 1:
		if time >= time1 and time <= time1 + int(time_water):
			return 1
		if time >= time2 and time <= time2 + int(time_water):
			return 1
	return 0

def controlLamp(light, sw_light, sw_st_light, timeLightOn, timeLightOff, sw_st_threshold_light, threshold_light):
	now = datetime.now()
	current_time = now.strftime("%H:%M:%S").split(":")
	time = int(current_time[0])*60+current_time[1]
	timeOn = int(timeLightOn["hour"])*60+int(timeLightOn["minute"])
	timeOff = int(timeLightOff["hour"])*60+int(timeLightOff["minute"])
	if sw_light == 1:
		return 1
	if sw_st_light == 1:
		if time >= timeOn and time <= timeOff:
			return 1
	if sw_st_threshold_light == 1:
		if light < threshold_light:
			return 1
	return 0

while(1):
	data_get = firebase.get('/',"data") # Lấy dữ liệu cloud
	vuon1 = Vuon(data_get[1])
	vuon2 = Vuon(data_get[2])

	# Dữ liệu điều khiển
	p1 = controlPump(vuon1.humidity_soil, vuon1.sw_pumb, vuon1.sw_st_threshold, vuon1.threshold, vuon1.threshold_max, vuon1.sw_st_water, vuon1.sw_st_water2, vuon1.timeWater, vuon1.timeWater2, vuon1.time_water)
	l1 = controlLamp(vuon1.light, vuon1.sw_light, vuon1.sw_st_light, vuon1.timeLightOn, vuon1.timeLightOff, vuon1.sw_st_threshold_light, vuon1.threshold_light)
	p2 = controlPump(vuon2.humidity_soil, vuon2.sw_pumb, vuon2.sw_st_threshold, vuon2.threshold, vuon2.threshold_max, vuon2.sw_st_water, vuon2.sw_st_water2, vuon2.timeWater, vuon2.timeWater2, vuon2.time_water)
	l2 = controlLamp(vuon2.light, vuon2.sw_light, vuon2.sw_st_light, vuon2.timeLightOn, vuon2.timeLightOff, vuon2.sw_st_threshold_light, vuon2.threshold_light)
	
	humidity_soil1 = 0 	# Cập nhập thông số đo được vào đây
	tempareture1 = 0
	light1 = 0
	air1 = 0
	humidity_soil2 = 0
	tempareture2 = 0
	light2 = 0
	air2 = 0
	
	firebase.put('/data/1','tempareture',string(tempareture1)) # đẩy lên cloud
	firebase.put('/data/1','air',string(air1))
	firebase.put('/data/1','light',string(light1))
	firebase.put('/data/1','humidity_soil',string(humidity_soil1))
	firebase.put('/data/2','tempareture',string(tempareture2))
	firebase.put('/data/2','air',string(air2))
	firebase.put('/data/2','light',string(light2))
	firebase.put('/data/2','humidity_soil',string(humidity_soil2))
=======
from firebase import firebase
import string
from datetime import datetime

firebase = firebase.FirebaseApplication("https://iottest-d6c52-default-rtdb.firebaseio.com/",None)
class Vuon:
	def __init__(self, data_get):
		self.air = data_get["air"] 											# độ ẩm không khí
		self.humidity_soil = data_get["humidity_soil"]						# độ ẩm đất
		self.light = data_get["light"]										# Cường độ sáng	
		self.tempareture = data_get["tempareture"]							# Nhiệt độ

		self.sw_light = data_get["sw_light"]								# Bật đèn
		self.sw_pumb = data_get["sw_pumb"]									# Bật bơm	

		self.sw_st_light = data_get["sw_st_light"]							# Bật thời gian đèn
		self.timeLightOn = data_get["timeLightOn"]							# Thời gian đèn bật
		self.timeLightOff = data_get["timeLightOff"]						# Thời gian đèn tắt

		self.sw_st_threshold = data_get["sw_st_threshold"]					# Bật tưới cây theo ngưỡng
		self.threshold = data_get["threshold"]								# Ngưỡng tưới
		self.threshold_max = data_get["threshold_max"]						# Ngưỡng độ ẩm max

		self.sw_st_threshold_light = data_get["sw_st_threshold_light"]		# Đèn theo ngưỡng sáng
		self.threshold_light = data_get["threshold_light"]					# Ngưỡng sáng min

		self.sw_st_water = data_get["sw_st_water"]							# Tưới cây theo thời gian
		self.sw_st_water2 = data_get["sw_st_water2"]
		self.timeWater = data_get["timeWater"]								# Thời gian tưới 
		self.timeWater2 = data_get["timeWater2"]							# thời gian tưới

		self.time_water = data_get["time_water"]							# Thời gian tưới kéo dài

def controlPump(humidity_soil, sw_pumb, sw_st_threshold, threshold, threshold_max, sw_st_water, sw_st_water2, timeWater, timeWater2, time_water):
	now = datetime.now()
	current_time = now.strftime("%H:%M:%S").split(":")
	time = int(current_time[0])*60+current_time[1]
	time1 = int(timeWater["hour"])*60+int(timeWater["minute"])
	time2 = int(timeWater2["hour"])*60+int(timeWater2["minute"])
	if sw_pumb == 1:
		return 1
	if sw_st_threshold == 1:
		if humidity_soil >= threshold and humidity_soil <= threshold_max:
			return 1
	if sw_st_water == 1:
		if time >= time1 and time <= time1 + int(time_water):
			return 1
		if time >= time2 and time <= time2 + int(time_water):
			return 1
	return 0

def controlLamp(light, sw_light, sw_st_light, timeLightOn, timeLightOff, sw_st_threshold_light, threshold_light):
	now = datetime.now()
	current_time = now.strftime("%H:%M:%S").split(":")
	time = int(current_time[0])*60+current_time[1]
	timeOn = int(timeLightOn["hour"])*60+int(timeLightOn["minute"])
	timeOff = int(timeLightOff["hour"])*60+int(timeLightOff["minute"])
	if sw_light == 1:
		return 1
	if sw_st_light == 1:
		if time >= timeOn and time <= timeOff:
			return 1
	if sw_st_threshold_light == 1:
		if light < threshold_light:
			return 1
	return 0

data_get = firebase.get('/',"data")
vuon1 = Vuon(data_get[1])
vuon2 = Vuon(data_get[2])
print(vuon2.time_water)
while(1):
	data_get = firebase.get('/',"data") # Lấy dữ liệu cloud
	vuon1 = Vuon(data_get[1])
	vuon2 = Vuon(data_get[2])

	# Dữ liệu điều khiển
	p1 = controlPump(vuon1.humidity_soil, vuon1.sw_pumb, vuon1.sw_st_threshold, vuon1.threshold, vuon1.threshold_max, vuon1.sw_st_water, vuon1.sw_st_water2, vuon1.timeWater, vuon1.timeWater2, vuon1.time_water)
	l1 = controlLamp(vuon1.light, vuon1.sw_light, vuon1.sw_st_light, vuon1.timeLightOn, vuon1.timeLightOff, vuon1.sw_st_threshold_light, vuon1.threshold_light)
	p2 = controlPump(vuon2.humidity_soil, vuon2.sw_pumb, vuon2.sw_st_threshold, vuon2.threshold, vuon2.threshold_max, vuon2.sw_st_water, vuon2.sw_st_water2, vuon2.timeWater, vuon2.timeWater2, vuon2.time_water)
	l2 = controlLamp(vuon2.light, vuon2.sw_light, vuon2.sw_st_light, vuon2.timeLightOn, vuon2.timeLightOff, vuon2.sw_st_threshold_light, vuon2.threshold_light)
	
	humidity_soil1 = 0 	# Cập nhập thông số đo được vào đây
	tempareture1 = 0
	light1 = 0
	air1 = 0
	humidity_soil2 = 0
	tempareture2 = 0
	light2 = 0
	air2 = 0
	
	firebase.put('/data/1','tempareture',string(tempareture1)) # đẩy lên cloud
	firebase.put('/data/1','air',string(air1))
	firebase.put('/data/1','light',string(light1))
	firebase.put('/data/1','humidity_soil',string(humidity_soil1))
	firebase.put('/data/2','tempareture',string(tempareture2))
	firebase.put('/data/2','air',string(air2))
	firebase.put('/data/2','light',string(light2))
	firebase.put('/data/2','humidity_soil',string(humidity_soil2))
>>>>>>> f6585f5d18029aff92c56ecfe45611bdf1a2c397
