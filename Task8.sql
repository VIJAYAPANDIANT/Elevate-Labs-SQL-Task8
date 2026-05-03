
CREATE DATABASE task8;
USE task8;

-- Employees Table

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT
);


-- Departments Table

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


-- Insert Data into Employees

INSERT INTO employees (emp_id, emp_name, dept_id) VALUES
(1, 'Rahul', 101),
(2, 'Priya', 102),
(3, 'Aman', NULL),
(4, 'Neha', 103);


-- Insert Data into Departments

INSERT INTO departments (dept_id, dept_name) VALUES
(101, 'HR'),
(102, 'IT'),
(104, 'Finance');

-- INNER JOIN
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;


-- LEFT JOIN

SELECT e.emp_id, e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- RIGHT JOIN

SELECT e.emp_name, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;


-- FULL JOIN 

SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id

UNION

SELECT e.emp_name, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;
