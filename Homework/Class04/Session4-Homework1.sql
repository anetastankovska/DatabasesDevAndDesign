USE SEDC

--Calculate the total amount on all orders in the system
SELECT COUNT(*) AS [Total amount of orders]
FROM Orders
GO

/*Calculate the total amount per BusinessEntity on all orders in the system
(Showing the names of the BusinessEntity)*/
SELECT be.[Name] AS [Business entity name], COUNT(*) AS [Total amount of orders]
FROM [Orders] as o
JOIN [BusinessEntities] AS be on o.[BusinessEntityId] = be.[Id]
GROUP BY [Name], [BusinessEntityId]
GO

--(Showing only the ID of the BusinessEntity)
SELECT BusinessEntityId, COUNT(*) AS [Total amount of orders]
FROM Orders
GROUP BY BusinessEntityId 

/*Calculate the total amount per BusinessEntity on all orders in the system from Customers with ID < 20
(We can omit the CustomerId column, but I have added it in the result)*/
SELECT be.[Name] AS [Business entity name], COUNT(*) AS [Total amount of orders], o.CustomerId AS [Customer ID]
FROM [Orders] as o
JOIN [BusinessEntities] AS be on o.[BusinessEntityId] = be.[Id]
GROUP BY [Name], [BusinessEntityId], [CustomerId]
HAVING o.CustomerId < 20
GO

/*Find the Maximal Order amount, and the Average Order amount per BusinessEntity on all orders in the system
(First interpretation of the requirement: 
The maximal order amount - the maximal amount of products in a single order
The average order amount - the average amount of products in a single order
)*/
SELECT be.Name, COUNT(o.Id) AS [Total amount of orders], MAX(od.Quantity) AS [Maximal Order Amount of prodicts in order], AVG(od.Quantity) AS [Average Order Amount of prodicts in order]
FROM OrderDetails AS od
JOIN Orders AS o ON od.OrderId = o.Id
JOIN BusinessEntities AS be ON o.BusinessEntityId = be.Id
GROUP BY be.Name

/*(Sedond interpretation of the requirement)
The maximal order amount - the maximal total price of order
The average order amount - the average total price of order*/
SELECT be.Name, COUNT(OrderId) AS [Total number of orders], MAX (o.TotalPrice) AS [Maximal price of order], AVG (o.TotalPrice) AS [Average price of order]
FROM OrderDetails AS od
JOIN Orders AS o ON o.Id = od.OrderId
join BusinessEntities AS be on be.Id = o.BusinessEntityId
GROUP BY be.Name

