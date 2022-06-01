USE SEDC
GO

--List all possible combinations of Customer names and Product names that can be ordered from specific customer\
SELECT cs.[Name], pr.[Name] FROM [Customers] AS cs
FULL OUTER JOIN [Products] AS pr ON cs.Id = pr.Id
WHERE cs.Id IS NOT NULL OR pr.Id IS NOT NULL;
GO

SELECT c.Name AS [CustomerName], p.Name as [ProductName] 
FROM [Customers] c
CROSS JOIN Products p


--List all Business Entities that has any order 
SELECT * FROM [BusinessEntities]
LEFT JOIN [Orders] ON [BusinessEntities].Id = [Orders].Id
GO


--List all Entities without orders
SELECT * FROM [BusinessEntities]
LEFT JOIN [Orders] ON [BusinessEntities].Id = [Orders].Id
WHERE Orders.BusinessEntityId IS NULL
GO

--List all Customers without orders (using Right Join)


SELECT * FROM BusinessEntities
SELECT * FROM Customers
SELECT * FROM Employees
SELECT * FROM Orders
SELECT * FROM OrderDetails
SELECT * FROM Products