"""
Design a small database which contains at least 3 tables. Every table should has a primary key.
The schema should contain some foreign keys so the tables need to be connected to each other
(you know this is relational database topic).
This DB could represent any system. It's up on you.
For example: something connected to your hobbies. Be creative!
Create the relational model for it. You can use the Dia application to make it.
Write the creational scripts for it. You can practice the SQL commands on it.
It should be an individual work so do not copy somebody's DB schema!
"""

import mysql.connector
mitnezel = open('mitnezel.txt', 'r').read()

database_connector = mysql.connector.connect(user='root', password=mitnezel, host='127.0.0.1')
cursor = database_connector.cursor()

createsql = open("SeriesDB\\create.sql", "r").read().split(";")
for lines in createsql:
	cursor.execute(lines)

insertsql = open("SeriesDB\\insert.sql", "r").read().split(";")
for lines in insertsql:
	cursor.execute(lines)

querysql = open("SeriesDB\\query.sql", "r").read().split(";")
for lines in querysql:
	cursor.execute(lines)
	print(cursor.fetchall())
