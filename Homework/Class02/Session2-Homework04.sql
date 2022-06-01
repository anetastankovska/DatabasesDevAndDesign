USE SEDC
GO

--List all possible combinations of Customer names and Product names that can be ordered from specific customer
SELECT c.Name AS [CustomerName], p.Name as [ProductName] 
FROM [Customers] c
CROSS JOIN Products p

--List all Business Entities that has any order 
SELECT DISTINCT [Name] AS [Business entities that have order] FROM [BusinessEntities] 
INNER JOIN [Orders] ON [BusinessEntities].Id = [Orders].BusinessEntityId
GO

--List all Entities without orders
SELECT DISTINCT [Name] AS [Business entities without order] FROM [BusinessEntities] 
LEFT JOIN [Orders] ON [BusinessEntities].Id = [Orders].BusinessEntityId
WHERE Orders.BusinessEntityId IS NULL
GO

--List all Customers without orders (using Right Join)
SELECT DISTINCT c.[Name] FROM [Orders] AS o
RIGHT JOIN [Customers] AS c ON o.CustomerId = c.Id 
WHERE o.CustomerId IS NULL

--Using subquery
SELECT [Name], Id FROM Customers
WHERE Id NOT IN (SELECT CustomerId FROM Orders)
