SELECT SUM (Price) AS [Total product price]
FROM Products

SELECT SUM (Weight) AS [Total product weight]
FROM Products


--MIN and MAX
SELECT MAX (TotalPrice) AS [Order with highest price]
FROM Orders

SELECT MIN (TotalPrice) AS [Order with lowest price]
FROM Orders

SELECT MIN (TotalPrice) AS [Order with lowest price]
FROM Orders
WHERE TotalPrice BETWEEN 1 AND 1000

SELECT * FROM Orders
WHERE TotalPrice is NOT NULL

SELECT MIN (Name)
FROM Customers

SELECT * FROM Products

SELECT ROUND (AVG (TotalPrice), 2) AS [Average product price]
FROM Orders


SELECT AVG (Price) AS [Average order price]
FROM Products
