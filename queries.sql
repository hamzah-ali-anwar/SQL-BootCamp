SELECT * 
FROM customers;

SELECT City
FROM customers;

-- Distinct result from a city column
SELECT DISTINCT City
FROM customers;

-- Order by is used for getting columns in ASC and DESC order
SELECT * 
FROM customers
ORDER BY City DESC;

-- AND, OR, LIKE is used in WHERE clause to filter records
SELECT *
FROM customers
WHERE City = 'Berlin' AND PostalCode LIKE '1%';

SELECT *
FROM customers
WHERE City = 'Berlin' AND PostalCode LIKE '%9';

SELECT *
FROM customers
WHERE CustomerName = 'Ana' OR City LIKE 'B%';

-- NOT operator is used in combination with other operators to give the oppositive results
SELECT *
FROM customers
WHERE NOT City = 'Berlin';

SELECT *
FROM customers
WHERE City NOT IN ('México D.F.', 'London');

-- NULL
SELECT *
FROM customers
WHERE CustomerID IS NULL;

SELECT *
FROM customers
WHERE CustomerID IS NOT NULL;

-- DELETE - to delete a row/rows from the table
DELETE
FROM customers
WHERE CustomerID = 11;


