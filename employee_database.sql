create database employee;

use employee;

create table department (
department_id INT PRIMARY KEY, 
department_name VARCHAR(50)
);

create table employee (
employee_id INT PRIMARY KEY, 
employee_name VARCHAR(30), 
salary DECIMAL(8, 3),
department_id INT,
FOREIGN KEY (department_id) REFERENCES department(department_id)
);

INSERT into department (department_id, department_name)
VALUES (1010, 'Technology'),
(1020, 'Sales'),
(1030, 'HR');

INSERT into employee (employee_id, employee_name, salary, department_id)
VALUES (301, 'Rohit', 50000.750, 1030),
(302, 'Baneet', 80000.000, 1010),
(303, 'Sorav', 75000.250, 1020),
(304, 'Ajay', 55000.000,1010);


Select * from department;
Select * from employee;



/* 1. Print employee_id, employee_name and department_name*/
SELECT e.employee_id, e.employee_name, d.department_name
FROM employee e
JOIN department d ON e.department_id = d.department_id;

/* 2. Write a Query that prints all the employees and their salaries in descending order of their salary*/
SELECT employee_id, employee_name, salary
FROM employee
ORDER BY salary DESC;

/* 3. Write a Query that prints the average salary of employees in each department with the department name*/
SELECT d.department_name, AVG(e.salary) AS average_salary
FROM department d
JOIN employee e ON d.department_id = e.department_id
GROUP BY d.department_name;

