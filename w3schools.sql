-- SQL: Structured Query Language

SELECT COUNT(*)
FROM Employees;

SELECT DISTINCT CONCAT(FirstName, ' ', LastName) AS Name
FROM Employees;

SELECT COUNT(DISTINCT CONCAT(FirstName, ' ', LastName)) as Name
From Employees;

SELECT *
FROM Departments
ORDER BY DepartmentName DESC;

SELECT *
FROM Employees
WHERE FirstName = 'John' AND LastName LIKE '%E';

SELECT *
FROM Employees
WHERE FirstName = 'John' OR FirstName = 'Bob';

SELECT *
FROM Employees
WHERE HiringDate NOT BETWEEN '2022-01-01' AND '2022-12-31';

SELECT *
FROM Employees
WHERE ManagerID IS NOT NULL;

SELECT DISTINCT Salary
FROM Employees
ORDER BY Salary DESC
LIMIT 3;

SELECT MIN(Salary)
FROM Employees;

SELECT MAX(Salary)
FROM Employees;

SELECT MIN(Salary) AS LowestSalary
From Employees;

SELECT MAX(Salary) AS HighestSalary
From Employees;

SELECT SUM(Salary) as Total
FROM Employees
WHERE DepartmentID = 1;

SELECT DISTINCT DepartmentID
FROM Employees;

SELECT AVG(Salary) AS Avg_Salary
FROM Employees;

SELECT *
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);

SELECT *
FROM Employees
WHERE DepartmentID IN (1, 2, 3)
ORDER BY DepartmentID ASC;

SELECT *
FROM Employees
WHERE Salary BETWEEN 50000.00 AND 60000.00;

-- INNER JOIN
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

SELECT CONCAT(Employees.FirstName, ' ', Employees.LastName) AS Name, Departments.DepartmentID, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.EmployeeID = Departments.DepartmentID;


