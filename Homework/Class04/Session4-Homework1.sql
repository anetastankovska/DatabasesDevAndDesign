USE SEDC

--Calculate the total amount on all orders in the system
SELECT SUM(TotalPrice) AS [Total amount of orders]
FROM Orders
GO

/*Calculate the total amount per BusinessEntity on all orders in the system*/
SELECT be.[Name] AS [Business Entity Name], SUM(TotalPrice) AS [Total amount of orders]
FROM Orders AS o
JOIN BusinessEntities AS be
ON o.BusinessEntityId = be.Id
GROUP BY be.Name 
GO


/*Calculate the total amount per BusinessEntity on all orders in the system from Customers with ID < 20
(We can omit the CustomerId column, but I have added it in the result so that we can see that only customers with ID under 20 are included)*/
SELECT be.[Name] AS [Business Entity Name], SUM(TotalPrice) AS [Total amount of orders], o.CustomerId AS [Customer ID]
FROM [Orders] AS o
JOIN BusinessEntities AS be
ON o.BusinessEntityId = be.Id
GROUP BY be.Name, o.[CustomerId]
HAVING o.CustomerId < 20
GO

--(If we want to agregate the amounts per business entity)
SELECT be.[Name] AS [Business Entity Name], SUM(TotalPrice) AS [Total amount of orders]
FROM [Orders] AS o
JOIN BusinessEntities AS be
ON o.BusinessEntityId = be.Id
WHERE o.CustomerId < 20
GROUP BY be.Name
GO


/*Find the Maximal Order amount, and the Average Order amount per BusinessEntity on all orders in the system
The maximal order amount - the maximal total price of order
The average order amount - the average total price of order*/
SELECT be.Name, COUNT(OrderId) AS [Total number of orders], MAX (o.TotalPrice) AS [Maximal price of order], AVG (o.TotalPrice) AS [Average price of order]
FROM OrderDetails AS od
JOIN Orders AS o ON o.Id = od.OrderId
join BusinessEntities AS be on be.Id = o.BusinessEntityId
GROUP BY be.Name

