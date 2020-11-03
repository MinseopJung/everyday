import pymysql
import csv

conn = pymysql.connect(host='localhost', port=3306, user='root', passwd='1234', db='new_schema', charset='utf8')
curs = conn.cursor()
sql = "insert into bf_final (user_no, currency, link, usdt, _date) values (%s, %s, %s, %s, %s)"
f = open('CSV_20201029.csv', 'r', encoding='utf-8')

rd = csv.reader(f)

i=0
for line in rd:
    curs.execute(sql, (line[0], line[1], line[2], line[3], line[4]))
    i += 1
    print (i) 

conn.commit()
conn.close()
f.close()
