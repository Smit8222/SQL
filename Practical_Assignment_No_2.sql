create database bank;
use bank;
create table branch
(
branch_name varchar(50) primary key, 
branch_city varchar(50), assets varchar(50));

create table customer
(
customer_number int primary key, 
customer_name varchar(50),
customer_city varchar(50));


create table account 
(
account_number int primary key, 
branch_name varchar(50), 
balance int check(balance >= 0), 
foreign key(branch_name) references branch(branch_name)
);

create table loan
(
loan_number int primary key,
branch_name varchar(50),
amount int check(amount > 0),
foreign key(branch_name) references branch(branch_name)
);

create table depositor
(
customer_number int,
account_number int,
foreign key(customer_number) references customer(customer_number),
foreign key(account_number) references account(account_number)
);

create table borrower
(
customer_number int,
loan_number int,
foreign key(customer_number) references customer(customer_number),
foreign key(loan_number) references loan(loan_number)
);

INSERT INTO branch VALUES
('Mumbai_Central', 'Mumbai', 9000000),
('Nagpur_West', 'Nagpur', 3000000),
('Nashik_East', 'Nashik', 2500000),
('Aurangabad', 'Aurangabad', 2000000),
('Kolhapur', 'Kolhapur', 1800000),
('Satara', 'Satara', 1500000),
('Solapur', 'Solapur', 2200000),
('Amravati', 'Amravati', 1700000),
('Akola', 'Akola', 1600000);

INSERT INTO customer VALUES
(1, 'Smit','Pune'),
(2, 'Amit','Pune'),
(3, 'Rahul','Mumbai'),
(4, 'Neha', 'Nagpur'),
(5, 'Priya','Nashik'),
(6, 'Rohit','Aurangabad'),
(7, 'Sneha','Kolhapur'),
(8, 'Kunal', 'Satara'),
(9, 'Anjali','Solapur'),
(10, 'Vikas','Akola');

INSERT INTO account VALUES
(101, 'Pune_Main', 50000),
(102, 'Pune_Main', 65000),
(103, 'Mumbai_Central', 120000),
(104, 'Nagpur_West', 40000),
(105, 'Nashik_East', 55000),
(106, 'Aurangabad', 30000),
(107, 'Kolhapur', 45000),
(108, 'Satara', 35000),
(109, 'Solapur', 60000),
(110, 'Akola', 25000);

INSERT INTO loan VALUES
(201, 'Pune_Main', 200000),
(202, 'Mumbai_Central', 500000),
(203, 'Nagpur_West', 150000),
(204, 'Nashik_East', 180000),
(205, 'Aurangabad', 120000),
(206, 'Kolhapur', 140000),
(207, 'Satara', 100000),
(208, 'Solapur', 160000),
(209, 'Amravati', 130000),
(210, 'Akola', 110000);


INSERT INTO depositor VALUES
(1, 101),
(2, 102),
(3, 103),
(4, 104),
(5, 105),
(6, 106),
(7, 107),
(8, 108),
(9, 109),
(10, 110);

INSERT INTO borrower VALUES
(1, 202),
(2, 203),
(3, 204),
(4, 205),
(5, 206),
(6, 207),
(7, 208),
(8, 209),
(9, 210),
(10, 201);

SELECT * FROM branch;
SELECT * FROM customer;
SELECT * FROM account;
SELECT * FROM loan;
SELECT * FROM depositor;
SELECT * FROM borrower;