-- Create a stored procedure that when provided an OrderId, can return the full price of a whole order
-- Do not return the Price column from the Orders table (since it is dummy data)
-- Instead calculate the sum of the Price of all pizzas from the Order + All toppings Price that are part of that pizzas


CREATE OR ALTER PROCEDURE [Full price of a whole order] @orderid INT
AS
SELECT t.OrderId, SUM(t.[Total pizza price]) AS [Total order price]
FROM (SELECT p.Name, SUM(t.Price) + p.Price AS [Total pizza price], od.OrderId
	FROM Toppings t
	JOIN PizzaToppings pt on t.Id = pt.ToppingId
	JOIN Pizzas p ON pt.PizzaId = p.Id
	JOIN OrderDetails od ON od.PizzaId = p.Id
	GROUP BY p.Name, p.Price, od.Id, t.Name, p.Id, od.OrderId)[t]
GROUP BY t.OrderId
HAVING t.OrderId = @orderid 
GO

EXEC [Full price of a whole order] @orderid = 2
GO

-- Create store procedure that will insert new User in the database
-- Make sure to also insert Role of 'Employee' for the newly inserted user
-- Don't forget the UserRoles table :)
-- HINT: Use scope identity :)




-- Create a view, name it [Most ordered pizzas], that will list all the 
--pizzas by the number of times ordered, starting from the most popular one ( Most times ordered )
CREATE OR ALTER VIEW [Most ordered pizas]
AS
SELECT t.Name, SUM(t.[Number of times ordered])[Number of times ordered]
FROM (select p.Name, COUNT(od.PizzaId) AS [Number of times ordered]
	FROM Pizzas p
	JOIN OrderDetails od ON p.Id = od.PizzaId
	GROUP BY p.Name, od.PizzaId)[t]
group by t.name
order by [Number of times ordered] desc
GO




-- Create stored procedure that will return the most loyal customer (The customer that have most orders)
CREATE OR ALTER PROCEDURE [The most loyal customer]
AS
SELECT TOP 1 CONCAT(u.FirstName, ' ', u.LastName) AS [Most loyal customer], COUNT(o.UserId) AS [Number of orders]
From Users u 
JOIN Orders o ON u.Id = o.UserId
GROUP BY CONCAT(u.FirstName, ' ', u.LastName)
ORDER BY [Number of orders] DESC
