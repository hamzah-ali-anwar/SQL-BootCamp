SELECT * 
FROM Employees;

SELECT *
FROM Departments;

-- Write a SQL query to fetch all employees whose salary is greater than 50,000.

SELECT *
FROM Employees
WHERE Salary > 50.000;

-- Getting a count of all the employee with salary greater than 50k

SELECT COUNT(*)
FROM Employees
WHERE Salary > 50.000;

-- Write a SQL query to fetch all employees working in the "IT" department.

SELECT *
FROM Employees
INNER JOIN Departments 
ON Employees.DepartmentID = Departments.DepartmentID
WHERE DepartmentName = 'IT';

-- Testing a FULL JOIN using above query - Right and left joins are used with union to implement full join

SELECT *
FROM Employees 
LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID

UNION

SELECT *
FROM Employees 
RIGHT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID

-- Write a SQL query to fetch employee names and their departments.




-- Write a SQL query to fetch the top 3 highest-paid employees.


-- Write a SQL query to find the 2nd largest salary of an employee


-- Write a SQL query to fetch employees whose names start with the letter "A".



-- Write a SQL query to fetch employees who were hired in the year 2022.


-- Write a SQL query to count the total number of employees in each department.


-- Write a SQL query to find the average salary of employees in the "Finance" department.


-- Write a SQL query to fetch employees with salaries between 30,000 and 60,000.


-- Write a SQL query to fetch all employees who do not belong to the "HR" department.


-- Write a SQL query to fetch the details of employees who have not been assigned a department (NULL department).


-- Write a SQL query to fetch employee details sorted by their salaries in descending order.


-- Write a SQL query to fetch duplicate employee names from the employee table.


-- Write a SQL query to fetch the department name and the highest salary in each department.


-- Write a SQL query to update the salary of employees in the "IT" department by 10%.


-- Write a SQL query to delete employees whose salaries are below 20,000.


-- Write a SQL query to insert a new employee into the table.


-- Write a SQL query to fetch employees whose names contain the substring "John".


-- Write a SQL query to fetch employees whose email IDs end with "@company.com".


-- Write a SQL query to find the total salary paid to employees in each department.


-- Write a SQL query to fetch the employee with the second-highest salary.


-- Write a SQL query to fetch the number of employees hired in each year.


-- Write a SQL query to fetch employees who share the same salary as another employee.


-- Write a SQL query to fetch employees along with their manager's name (using self-join).


-- Write a SQL query to fetch employees with the same department and job title as "John Doe."


-- Write a SQL query to find the maximum and minimum salary of employees.


-- Write a SQL query to fetch employees who were hired in the last 6 months.


-- Write a SQL query to fetch the employees who have worked for more than 5 years.


-- Write a SQL query to fetch all employees who do not have a manager assigned.


-- Write a SQL query to fetch the first name, last name, and full name of employees.


-- Write a SQL query to fetch employees grouped by department and sorted by the total salary in descending order.


-- Write a SQL query to fetch all employees whose salaries are more than the average salary.