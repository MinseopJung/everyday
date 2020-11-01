import pymysql


def connect_db():
	db = pymysql.connect(host='localhost', port=3306, user='root', passwd='1234', db='bitfront', charset='utf8')

	return db

def close_db(db):
	db.close()


def select_data(db, table_name):
	cursor = db.cursor()
	cursor.execute('SELECT * FROM ' + table_name)
	rows = cursor.fetchall()

	for data in rows:
		print(data)


def insert_data(db, time_ymd, time_hms, file_order, ask_bid, order, link, amount):
	cursor = db.cursor()

	sql = "insert into depth values('" + time_ymd + "', '" + time_hms + "', " +  str(file_order) + ", '" + ask_bid + "', " + str(order) +", " + str(link) +", " + str(amount) +")"
	#sql = "insert into depth values('20191111', '100003', 0, 'ASK', 3, 0.123, 1)"
	#print(sql)
	cursor.execute(sql)







