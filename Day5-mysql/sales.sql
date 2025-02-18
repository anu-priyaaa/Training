use employees;
show tables;
select * from employees limit 5;
-- Retrieve the first name, last name, and job title of all employees.
SELECT e.first_name, e.last_name, t.title
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no;
 
-- Find all employees who work in the Sales department.
SELECT e.first_name, e.last_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';
-- List all products sorted by product name in ascending order.
-- Calculate the average salary of all employees.
SELECT AVG(s.salary) as 'Average Salary'
FROM employees e
JOIN salaries s ON s.emp_no = e.emp_no;
-- Find the total number of employees in each department.
SELECT d.dept_name, COUNT(e.emp_no) AS total_employees
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
GROUP BY d.dept_name;
-- list departments with more than 5 employees.
SELECT d.dept_name, COUNT(e.emp_no) AS total_employees
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
GROUP BY d.dept_name
HAVING COUNT(e.emp_no) > 5;
-- Retrieve a list of orders along with the customer names who placed the orders.
SELECT AVG(s.salary) AS average_salary
FROM salaries s;
-- Find all customers and their orders, including customers who have not placed any orders.
-- List all employees and the names of their managers.
-- Find all products that have never been ordered.
-- Find all employees who work in the 'Marketing' or 'Finance' departments.
-- List all orders placed between January 1, 2020, and December 31, 2020.
-- Find all customers whose names start with the letter 'A'.
-- Combine the first names of employees and customers into a single list.
-- Find the names of employees who have placed the highest number of orders.
-- Find the number of Male and Female employees in the database and the order count in descending order.
-- Find the Average salary by employee title and order by descending order.
--  List first 5 employees (id,fname,lname,department name) alog with their department names.
-- Display firstname, lastname,salary of the highest payed employee.
-- second highest payed employee