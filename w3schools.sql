-- SQL: Structured Query Language

SELECT COUNT(*)
FROM Employees;

SELECT DISTINCT CONCAT(FirstName, ' ', LastName) AS Name
FROM Employees;

SELECT COUNT(DISTINCT CONCAT(FirstName, ' ', LastName)) as Name
From Employees;