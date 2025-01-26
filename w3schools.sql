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




