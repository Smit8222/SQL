CREATE DATABASE data_analysis;
USE data_analysis;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO customers VALUES
(1,'Smit','Pune','2023-01-10'),
(2,'Suraj','Mumbai','2023-03-15'),
(3,'Riya','Delhi','2022-11-20'),
(4,'Amit','Pune','2022-05-05'),
(5,'Neha','Mumbai','2023-07-18');

INSERT INTO products VALUES
(101,'Laptop','Electronics',55000),
(102,'Mobile','Electronics',20000),
(103,'Shoes','Fashion',3000),
(104,'Watch','Fashion',5000),
(105,'Headphones','Electronics',2500);

INSERT INTO orders VALUES
(1001,1,101,'2023-08-01',1),
(1002,2,102,'2023-08-03',2),
(1003,3,103,'2023-08-05',1),
(1004,1,105,'2023-08-07',3),
(1005,4,104,'2023-08-10',1),
(1006,5,101,'2023-08-12',1),
(1007,2,103,'2023-08-15',2);

SELECT * FROM customers;
SELECT customer_name, city 
FROM customers;

SELECT * 
FROM products
WHERE price > 10000;

SELECT *
FROM orders
WHERE order_date BETWEEN '2023-08-01' AND '2023-08-31';

SELECT *
FROM products
ORDER BY price DESC;

SELECT COUNT(*) AS total_orders
FROM orders;

SELECT COUNT(*) AS total_customers
FROM customers;