CREATE DATABASE w3school;

USE w3school;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Title VARCHAR(50),
    ReportsTo INT NULL,
    HireDate DATE
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Title, ReportsTo, HireDate)
VALUES
(1, 'Andrew', 'Fuller', 'Sales Manager', NULL, '1992-08-14'),
(2, 'Nancy', 'Davolio', 'Sales Representative', 1, '1992-05-01'),
(3, 'Margaret', 'Peacock', 'Sales Representative', 1, '1993-05-03'),
(4, 'Steven', 'Buchanan', 'Sales Representative', 2, '1993-10-17'),
(5, 'Laura', 'Callahan', 'Sales Coordinator', 2, '1994-03-05'),
(6, 'Michael', 'Suyama', 'Sales Representative', 3, '1996-10-17'),
(7, 'Robert', 'King', 'Sales Representative', 3, '1994-01-02'),
(8, 'Anne', 'Dodsworth', 'Sales Representative', 4, '1998-11-15');

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CompanyName VARCHAR(100),
    ContactName VARCHAR(50),
    Country VARCHAR(50)
);

INSERT INTO Customers (CustomerID, CompanyName, ContactName, Country)
VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Sweden'),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Germany'),
(7, 'Blondel père et fils', 'Frédérique Citeaux', 'France'),
(8, 'Bólido Comidas preparadas', 'Martín Sommer', 'Spain');

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    SupplierID INT,
    CategoryID INT,
    UnitPrice DECIMAL(10, 2),
    UnitsInStock INT
);

INSERT INTO Products (ProductID, ProductName, SupplierID, CategoryID, UnitPrice, UnitsInStock)
VALUES
(1, 'Chai', 1, 1, 18.00, 39),
(2, 'Chang', 1, 1, 19.00, 17),
(3, 'Aniseed Syrup', 1, 2, 10.00, 13),
(4, 'Chef Anton\'s Cajun Seasoning', 2, 2, 22.00, 53),
(5, 'Chef Anton\'s Gumbo Mix', 2, 2, 21.35, 0),
(6, 'Grandma\'s Boysenberry Spread', 3, 2, 25.00, 120),
(7, 'Uncle Bob\'s Organic Dried Pears', 3, 7, 30.00, 15),
(8, 'Northwoods Cranberry Sauce', 3, 2, 40.00, 6);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    ShipCountry VARCHAR(50)
);

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipCountry)
VALUES
(1, 1, 1, '2022-01-15', 'Germany'),
(2, 2, 2, '2022-01-20', 'Mexico'),
(3, 3, 3, '2022-01-25', 'Mexico'),
(4, 4, 4, '2022-02-01', 'UK'),
(5, 5, 5, '2022-02-10', 'Sweden'),
(6, 6, 6, '2022-02-15', 'Germany'),
(7, 7, 7, '2022-02-20', 'France'),
(8, 8, 8, '2022-02-25', 'Spain');
