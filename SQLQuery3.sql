CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Amit', 'IT', 60000, 'Pune'),
(2, 'Neha', 'HR', 45000, 'Mumbai'),
(3, 'Rahul', 'IT', 70000, 'Delhi'),
(4, 'Sneha', 'Finance', 50000, 'Pune'),
(5, 'Rohan', 'IT', 55000, 'Mumbai');

SELECT * FROM employees;
SELECT name, salary FROM employees;
SELECT * FROM employees
WHERE salary > 50000;

SELECT * FROM employees
WHERE city = 'Pune';

SELECT * FROM employees
WHERE salary <> 60000;

SELECT * FROM employees
WHERE department = 'IT' AND salary > 60000;

SELECT * FROM employees
WHERE department = 'IT' OR department = 'HR';

SELECT * FROM employees
ORDER BY salary ASC;

SELECT * FROM employees
ORDER BY salary DESC;

SELECT * FROM employees
WHERE department = 'IT' AND city = 'Mumbai';