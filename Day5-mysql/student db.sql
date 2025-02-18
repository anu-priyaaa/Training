show databases;
create database IF NOT EXISTS MINDSPRINT;
USE MINDSPRINT;

CREATE TABLE EMOLOYEE ( ID INT PRIMARY KEY, 
						NAME VARCHAR (100),
                        DEPARTMENT VARCHAR (100),
                        SALARY  DECIMAL(10,2))
                        
                        -- DESCRIBE TABLE
                    --    DESCRIBE EMOLOYEE;
                    -- ALTER TABLE TO ADD NEW COLUMN
ALTER TABLE EMOLOYEE
ADD COLUMN POSITION VARCHAR(100);
DESCRIBE EMOLOYEE;
INSERT INTO EMOLOYEE VALUES (1,'ANUPRIYA','IT',645474,'ENGG');
INSERT INTO EMOLOYEE VALUES (2,'SHEETHAL','IT',645474,'ENGG');
INSERT INTO EMOLOYEE VALUES (3,'PRAJ','IT',645474,'ENGG');
INSERT INTO EMOLOYEE VALUES (4,'YAS','IT',645474,'ENGG');
INSERT INTO EMOLOYEE VALUES (5,'BAS','IT',645474,'ENGG');

--UPDATE DATA
UPDATE EMOLOYEE SET SALARY =8763524 WHERE ID=1;

-- truncate means it recreates the tabel
truncate table EMOLOYEE;
 
-- delete the entire table
drop table EMOLOYEE;
SELECT * FROM EMOLOYEE 

create table employees(id int primary key auto_increment,
name varchar(100), position varchar(100), department varchar(100), salary decimal(10, 2)
);
 
describe employees;

-- INSERT 
INSERT INTO employees VALUES (1,'ANUPRIYA','SDE','IT',97439574);
INSERT INTO employees VALUES (2,'PRAJ','SDE','IT',343545);
INSERT INTO employees VALUES (3,'SHEETH','SDE','IT',4354365);
INSERT INTO employees VALUES (4,'BAS','SDE','IT',4565654);
INSERT INTO employees VALUES (5,'YAS','SDE','IT',46565465);

SELECT * FROM employees

-- single column retrival
select name,position from employees;
 
-- concat
select concat('John','','Doe') as fullname;
 
select now() today;
select upper ('Hello world') as 'upper case';
-- Where clause
select 1+1 as 'result';
select concat('John', ' ','Doe') as fullname;
select now() today;
 --
 
 -- where clause 
 -- retrive the data of employees whose salary is more than 50000
 select * 
 from employees
 where salary > 500000;
 -- retrive the data of employees whose salary is more than 100000
 select * 
 from employees
 where salary > 100000;
 -- retrive the data of employees whose id is 4
 select * 
 from employees
 where id = 4;
 -- retrive the data of employees whose name is praj
 select * 
 from employees
 where name='Praj';
 -- retrive the data of employees whose salary is between 30000 to 50000
 select * 
 from employees
 where salary > 30000 and 50000;
  
-- order by salary in ascending order

select * from employees order by salary asc;
 
-- order by name in descending order
select * from employees order by name desc;
 
select * from employees order by department asc,salary asc;
select * from employees order by position asc,name asc;
select * from employees order by salary desc, department asc, name desc;

-- FILTER DATA
SELECT * FROM EMPLOYEES WHERE DEPARTMENT ='IT';

-- dISTNICT
SELECT distinct POSITION FROM EMPLOYEES;
-- USING AND 
SELECT * FROM EMPLOYEES WHERE DEPARTMENT = 'IT' AND SALARY >90000000;
-- USING OR
-- using in 
SELECT * FROM EMPLOYEES WHERE DEPARTMENT IN ('SALES','IT');
-- USINF NOT IN
SELECT * FROM EMPLOYEES WHERE DEPARTMENT NOT IN ('IT');
-- USING BETWEEN 
SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN  6883754 AND 97846453;
-- USING LIKE
SELECT * FROM EMPLOYEES WHERE NAME LIKE 'A%';
SELECT * FROM EMPLOYEES WHERE POSITION LIKE 'SDE';


CREATE TABLE Students (

    student_id INT PRIMARY KEY,

    name VARCHAR(255),

    age INT,

    major VARCHAR(255),

    gpa DECIMAL(3, 2),

    enrollment_date DATE

);

INSERT INTO Students (student_id, name, age, major, gpa, enrollment_date)
VALUES 
(101, 'Alice Johnson', 20, 'Computer Science', 3.8, '2023-01-15'),
(102, 'Bob Smith', 22, 'Mathematics', 3.4, '2023-03-22'),
(103, 'Carol Lee', 19, 'Biology', 3.2, '2023-04-10'),
(104, 'David Brown', 21, 'Physics', 2.9, '2022-11-05'),
(105, 'Eve Davis', 23, 'Computer Science', 3.6, '2022-08-20'),
(106, 'Frank Miller', 20, 'Mathematics', 3.1, '2023-02-28');
 
 SELECT * FROM Students WHERE major = 'Computer Science';
SELECT * FROM Students WHERE gpa > 3.5 OR major = 'Mathematics';
SELECT * FROM Students WHERE age > 20 AND gpa < 3.0;
SELECT * FROM Students WHERE enrollment_date BETWEEN '2023-01-01' AND '2023-12-31';
SELECT DISTINCT major FROM Students;
SELECT * FROM Students WHERE student_id IN (101, 102, 103);
SELECT * FROM Students WHERE gpa IS NULL;
SELECT * FROM Students WHERE name IS NOT NULL;
SELECT * FROM Students WHERE age = 18 OR age = 22;
SELECT * FROM Students WHERE age < 19 OR gpa > 3.8;
SELECT * FROM Students WHERE gpa BETWEEN 2.5 AND 3.5 AND major = 'Biology';
SELECT * FROM Students ORDER BY name ASC, gpa DESC;


 