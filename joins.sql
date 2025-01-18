SELECT *
FROM customers;

SELECT *
FROM orders;

-- Inner Join: is used to combine rows from two or more tables, based on a related column between them

SELECT orders.OrderID, customers.CustomerName, orders.OrderDate
FROM orders
INNER JOIN  customers ON orders.CustomerID = customers.CustomerID;