CREATE DATABASE alx_book_store;
USE alx_book_store;
CREATE TABLE BookS(book_id INT PRIMARY KEY,
title VARCHAR(130),
author_id (FOREIGN KEY REFERENCING Authors TABLE),
price DOUBLE,
publication_date DATE)
CREATE TABLE Authors(author_id (PRIMARY KEY),
author_name VARCHAR(215))
CREATE TABLE Customers(customer_id (PRIMARY KEY),
customer_name VARCHAR(215),
email VARCHAR(215),address TEXT)
CREATE TABLE Orders (order_id (PRIMARY KEY),
customer_id (FOREIGN KEY REFERENCING Customers TABLE),
order_date DATE)
CREATE TABLE Order_Details(orderdetailid (PRIMARY KEY),
order_id (FOREIGN KEY REFERENCING Orders TABLE),
book_id (FOREIGN KEY REFERENCING Books TABLE),
quantity DOUBLE)