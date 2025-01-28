-- CREATE DATABASE 
CREATE DATABASE linkedin;

USE linkedin;

-- Create Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Insert Data into Departments
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Sales'),
(4, 'Finance');

-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    ManagerID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Insert Data into Employees
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID, Salary, ManagerID) VALUES
(1, 'John Doe', 1, 50000, NULL),
(2, 'Jane Smith', 2, 60000, 1),
(3, 'Alice Johnson', 3, 70000, 1),
(4, 'Bob Brown', 2, 55000, 2),
(5, 'Charlie Davis', 3, 80000, 3),
(6, 'Eve White', 4, 90000, NULL);

-- Create Sales Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    EmployeeID INT,
    SaleAmount DECIMAL(10, 2),
    SaleDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Insert Data into Sales
INSERT INTO Sales (SaleID, EmployeeID, SaleAmount, SaleDate) VALUES
(1, 3, 1000.00, '2023-01-15'),
(2, 3, 1500.00, '2023-02-10'),
(3, 5, 2000.00, '2023-03-05'),
(4, 5, 2500.00, '2023-04-20'),
(5, 3, 3000.00, '2023-05-15');

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10, 2)
);

-- Insert Data into Orders
INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount) VALUES
(1, 1, '2023-01-01', 100.00),
(2, 2, '2023-01-02', 200.00),
(3, 1, '2023-01-03', 150.00),
(4, 3, '2023-01-04', 300.00),
(5, 2, '2023-01-05', 250.00);

-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);

-- Insert Data into Customers
INSERT INTO Customers (CustomerID, CustomerName) VALUES
(1, 'Customer A'),
(2, 'Customer B'),
(3, 'Customer C');

-- Create Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Insert Data into Products
INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Product 1', 10.00),
(2, 'Product 2', 20.00),
(3, 'Product 3', 30.00),
(4, 'Product 4', 40.00);

-- Create Projects Table
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50),
    EmployeeID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Insert Data into Projects
INSERT INTO Projects (ProjectID, ProjectName, EmployeeID) VALUES
(1, 'Project Alpha', 2),
(2, 'Project Beta', 4),
(3, 'Project Gamma', NULL);