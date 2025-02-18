-- PK AND FK CONSTRAINTS
CREATE DATABASE SAMPLE;
USE SAMPLE;
CREATE TABLE DEPARTMENT(
id INT PRIMARY KEY, 
name VARCHAR(100) 
NOT NULL);

INSERT INTO department (id, name) 
VALUES 
(1, 'Sales'), 
(2, 'R&D'), 
(3, 'Marketing'), 
(4, 'Finance'), 
(5, 'Human Resources');

-- VERIFY THE INSERTED DATA
SELECT * FROM DEPARTMENT;

-- CREATE EMPLOYEES TABLE WHICH MAKES MANY TO ONE RELATIONSHIP BETWEEN DEPARTMENT AND EMPLOYEES
-- ONE DEPARTMENT CAN HAVE MANY EMPLOYEES
CREATE TABLE EMPLOYEES
(id INT PRIMARY KEY, 
name VARCHAR(100) NOT NULL, 
position VARCHAR(100) NOT NULL, 
salary DECIMAL(10, 2), 
department_id INT, 
FOREIGN KEY (department_id) 
REFERENCES department(id) );

DESCRIBE EMPLOYEES;
INSERT INTO EMPLOYEES
(id, name, position, salary, department_id) 
VALUES 
(1, 'John Doe', 'Manager', 75000.00, 1), 
(2, 'Jane Smith', 'Developer', 65000.00, 2), 
(3, 'Emily Johnson', 'Designer', 60000.00, 3), 
(4, 'Michael Brown', 'Analyst', 70000.00, 4), 
(5, 'Linda Green', 'Manager', 75000.00, 1), 
(6, 'James White', 'Developer', 65000.00, 2), 
(7, 'William Black', 'Developer', NULL, 2), 
(8, 'Mary Blue', 'HR', 50000.00, 5);

SELECT E.ID,E.NAME,E.POSITION,E.SALARY,D.NAME 'DEPARTMENT NAME'
FROM EMPLOYEES E
JOIN DEPARTMENT D
ON E.DEPARTMENT_ID = D.ID;

-- lets insert one record in employee table without department_id
insert into employees(id,name,position,salary,department_id) values(9,'test user','testing',45678,NULL);
-- left join to take common details as well as values from the left table
SELECT employees.id, employees.name, employees.position, 
employees.salary, department.name AS department
FROM employees
LEFT JOIN department ON employees.department_id = department.id;

-- full join 
SELECT employees.id, employees.name, employees.position, 
employees.salary, department.name AS department
FROM employees
LEFT JOIN department ON employees.department_id = department.id
UNION
SELECT employees.id, employees.name, employees.position, 
employees.salary, department.name AS department
FROM employees
RIGHT JOIN department ON employees.department_id = department.id;
-- group by
SELECT department.name AS department, SUM(employees.salary) AS 
total_salary
FROM employees
JOIN department ON employees.department_id = department.id
GROUP BY department.name;

CREATE TABLE Accounts (
 account_id VARCHAR(10) PRIMARY KEY,
 account_name VARCHAR(100),
 balance DECIMAL(10, 2)
);
INSERT INTO Accounts (account_id, account_name, balance) 
VALUES
('A001', 'Alice', 1000.00),
('A002', 'Bob', 1500.00),
('A003', 'Charlie', 2000.00);
BEGIN ;
UPDATE ACCOUNTS SET BALANCE = BALANCE +100 WHERE ACCOUNT_ID='A001';
commit;
BEGIN;
UPDATE ACCOUNTS SET BALANCE = BALANCE WHERE account_id = 'A001';
ROLLBACK;

BEGIN;
UPDATE Accounts SET balance = balance - 100 WHERE account_id = 'A001';
SAVEPOINT sp1;
UPDATE Accounts SET balance = balance + 100 WHERE account_id = 'A001';
ROLLBACK TO sp1;
COMMIT;
DELIMITER //
CREATE PROCEDURE GetAllAccounts()
BEGIN
 SELECT * FROM Accounts;
END //
DELIMITER 


