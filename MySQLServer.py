"""
This program tries to connect with database
and handles error incase their is no connection
"""

import mysql.connector
from mysql.connector import Error

try:

    #connect with database

    connection = mysql.connector.connect(

        host = "localhost",
        user = "root",
        password = "22427843Tk!!?"
    )

    mycursor = connection.cursor()
    mycursor.execute("CREATE DATABASE IF OT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")
    mycursor.close()
    connection.close()

except Error as e:
    print(f"Error:", e)
