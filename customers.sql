CREATE DATABASE customer;

CREATE TABLE customers (
	CustomerID INT NOT NULL PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactName VARCHAR(100),
    Address VARCHAR(100),
    City VARCHAR(100),
    PostalCode VARCHAR(100),
    Country VARCHAR(100)
);

INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (1, "Alfreds Futterkiste", "Maria Anders", "Obere Str. 57", "Berlin", "12209", "Germany"),
	   (2, "Ana Trujillo Emparedados y helados", "Ana Trujillo", "Avda. de la Constitución 2222", "México D.F.", "05021", "Mexico"),
       (3, "Antonio Moreno Taquería", "Antonio Moreno", "Mataderos 2312", "México D.F.", "05023", "Mexico"),
       (4, "Around the Horn", "Thomas Hardy", "120 Hanover Sq.", "London", "WA1 1DP", "UK"),
       (5, "Berglunds snabbköp", "Christina Berglund", "Berguvsvägen 8", "Luleå", "S-958 22", "Sweden");
       
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (6, "Futterkiste", "Anders", "Obere Str", "Berlin", "12209", "Germany"),
	   (7, "Ana", "Trujillo", "Constitución 2222", "México D.F.", "05021", "Mexico"),
       (8, "Antonio Moreno", "Antonio", "Mataderos 2312", "México D.F.", "05023", "Mexico"),
       (9, "Horn", "Hardy", "120 Hanover Sq.", "London", "WA1 1DP", "UK"),
       (10, "Berglunds", "Christina", "Berguvsvägen 8", "Luleå", "S-958 22", "Sweden");
       
INSERT INTO customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (11, "Futterkiste", "Anders", "Obere Str", "Berlin", "12209", "Germany");

CREATE TABLE orders (
	OrderID INT NOT NULL PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE
);

INSERT INTO orders (OrderID, CustomerID, OrderDate)
VALUES (10308, 2, "1996-09-18"),
	   (10309, 37, "1996-09-19"),
       (10310, 77, "1996-09-20");
       


