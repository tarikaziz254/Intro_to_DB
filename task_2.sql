"""
This program tables for database alx_book_store,
it has books,authors,customers,orders and order_details
"""

import mysql.connector

#connecting with the database
mydb = mysql.connector.connect(

    host = "localhost",
    user = "root",
    password = "22427843Tk!!?",
    database = "alx_book_store"
)

mycursor = mydb.cursor()

# creating table books
mycursor.execute("""CREATE TABLE IF NOT EXISTS books(
                 
                 book_id INT AUTO_INCREMENT PRIMARY KEY,
                 title VARCHAR (130),
                 author_id INT,
                 price DOUBLE,
                 publication_date DATE,
                 FOREIGN KEY(author_id) REFERENCES authors(author_id)
)
""")
print("successfully created")

#author table
mycursor.execute("""CREATE TABLE IF NOT EXISTS authors(
                 
                 author_id INT AUTO_INCREMENT PRIMARY KEY,
                 author_name VARCHAR (215)
)
""")
print("successfully created")

#customers table
mycursor.execute("""CREATE TABLE IF NOT EXISTS customers(
                 
                 customers_id INT AUTO_INCREMENT PRIMARY KEY,
                 customer_name VARCHAR (215),
                 email VARCHAR (215),
                 address TEXT
)
""")

#orders table
mycursor.execute("""CREATE TABLE IF NOT EXISTS orders(
                 
                 order_id INT AUTO_INCREMENT PRIMARY KEY,
                 customers_id INT,
                 order_date DATE,
                 FOREIGN KEY (customers_id) REFERENCES customers(customers_id)             
)
""")
print("successfully created")

#Order_details
mycursor.execute("""CREATE TABLE IF NOT EXISTS order_details(
                 
                 orderdetail_id INT AUTO_INCREMENT PRIMARY KEY,
                 order_id INT,
                 book_id INT,
                 quantity DOUBLE,
                 FOREIGN KEY (order_id) REFERENCES orders(order_id),
                 FOREIGN KEY (book_id) REFERENCES books(book_id)               
)
""")
print("successfully created")
