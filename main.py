import bf_depth
import database
import json
import os


db = database.connect_db()
#database.select_data(db, 'depth')
#database.insert_data(db, '20191111', '100003', 'ASK', 3, 0.123, 1)


cursor = db.cursor()
#cursor.execute("delete from depth")


time_ymd = '20200511'
file_list = os.listdir('./depth/' + time_ymd)

i = 0
for file in file_list:
	print(str(i) + " - " + file)

	stringA = str(file)
	listA = stringA.split(".")

	time_hms = listA[0]
	python_dict = bf_depth.read_test('./depth/' + time_ymd + '/' + time_hms + '.json')
	bf_depth.read_json(python_dict,  time_ymd, time_hms, i, 'ASK', 'savedb', db)
	bf_depth.read_json(python_dict,  time_ymd, time_hms, i, 'BID', 'savedb', db)

	db.commit()
	i = i+1






time_ymd = '20200512'
file_list = os.listdir('./depth/' + time_ymd)

i = 0
for file in file_list:
	print(str(i) + " - " + file)

	stringA = str(file)
	listA = stringA.split(".")

	time_hms = listA[0]
	python_dict = bf_depth.read_test('./depth/' + time_ymd + '/' + time_hms + '.json')
	bf_depth.read_json(python_dict,  time_ymd, time_hms, i, 'ASK', 'savedb', db)
	bf_depth.read_json(python_dict,  time_ymd, time_hms, i, 'BID', 'savedb', db)

	db.commit()
	i = i+1




time_ymd = '20200513'
file_list = os.listdir('./depth/' + time_ymd)

i = 0
for file in file_list:
	print(str(i) + " - " + file)

	stringA = str(file)
	listA = stringA.split(".")

	time_hms = listA[0]
	python_dict = bf_depth.read_test('./depth/' + time_ymd + '/' + time_hms + '.json')
	bf_depth.read_json(python_dict,  time_ymd, time_hms, i, 'ASK', 'savedb', db)
	bf_depth.read_json(python_dict,  time_ymd, time_hms, i, 'BID', 'savedb', db)

	db.commit()
	i = i+1









database.close_db(db)


