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

-- CustomerID, CompanyName, ContactName, Country
SELECT *
FROM Customers;

-- EmployeeID, FirstName, LastName, Title, ReportsTo, HireDate
SELECT * 
FROM Employees;

-- OrderID, CustomerID, EmployeeID, OrderDate, ShipCountry
SELECT *
FROM Orders;

-- ProductID, ProductName, SupplierID, CategoryID, UnitPrice, UnitsInStock
SELECT *
FROM Products;

-- JOINS

-- INNER JOIN
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

SELECT CONCAT(Employees.FirstName, ' ', Employees.LastName) AS Name, Departments.DepartmentID, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.EmployeeID = Departments.DepartmentID;

/** 
Challenge 1: Customers and Orders
    
Retrieve a list of all customers who have placed an order.
Display the CustomerName, OrderID, and OrderDate.
Use the Customers and Orders tables.
*/

SELECT Customers.ContactName, Orders.OrderID, Orders.OrderDate
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

/**
Challenge 2: Employees and Orders

Retrieve a list of employees and the orders they processed.
Display the LastName, FirstName, OrderID, and OrderDate.
Use the Employees and Orders tables.
*/

SELECT Employees.FirstName, Employees.LastName, Orders.OrderID, Orders.OrderDate
FROM Employees
INNER JOIN Orders
ON Employees.EmployeeID = Orders.EmployeeID;

/**
Challenge 3: Customers, Employees, and Orders

Retrieve a list of orders, along with the employee who processed the order and the customer who placed it.
Display the OrderID, OrderDate, CompanyName (customer), ContactName (customer), FirstName (employee), and LastName (employee).
Use the Orders, Customers, and Employees tables with INNER JOIN.
*/

SELECT  
	Orders.OrderID, 
	Orders.OrderDate, 
	Customers.CompanyName, 
	Customers.ContactName, 
	Employees.FirstName, 
	Employees.LastName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID;





