"""
This application should use the SQL files for creating the DB.
After the schema creation run the insertion scripts.
List all meetup registrations for a particular user.
List meetups which are after 2015.11.27.
List that users who have introduction (NOT NULL).
Keep in mind handle the exceptions if necessary.
"""

import mysql.connector
mitnezel = open('mitnezel.txt', 'r').read()

database_connector = mysql.connector.connect(user='root', password=mitnezel, host='127.0.0.1')
cursor = database_connector.cursor()

createsql = open("MeetupsDB\\create.sql", "r").read().split(";")
for lines in createsql:
	cursor.execute(lines)

insertsql = open("MeetupsDB\\insert.sql", "r").read().split(";")
for lines in insertsql:
	cursor.execute(lines)
	database_connector.commit()

querysql = open("MeetupsDB\\query.sql", "r").read().split(";")
for lines in querysql:
	cursor.execute(lines)
	print(cursor.fetchall())
