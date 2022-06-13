CREATE OR ALTER FUNCTION GetUserFullName(
	@FirstName nvarchar(100),
	@LastName nvarchar(100)
)
RETURNS NVARCHAR(255)
AS
BEGIN
	RETURN CONCAT(@FirstName ,' ', @LastName );
END
GO

SELECT dbo.GetUserFullName(u.FirstName, u.LastName)
FROM Users u
GO

select * from PizzaSizes
select * from Pizzas
select * from PizzaToppings
select * from Toppings
select * from OrderDetails
select * from Orders
select * from Users
select * from Roles
select * from UserRoles
GO

--My code
CREATE OR ALTER VIEW [Users waiting for orders]
AS
SELECT p.Name, u.FirstName, u.LastName, o.IsDelivered
FROM Users u
INNER JOIN Orders o ON u.Id = o.UserId
INNER JOIN OrderDetails od ON od.OrderId = o.Id
INNER JOIN Pizzas p on p.Id = od.PizzaId
WHERE o.IsDelivered = 0
GROUP BY p.Name, u.FirstName, u.LastName, o.IsDelivered
GO

--Martin's code
SELECT p.Name, u.FirstName, u.LastName
FROM Pizzas p
INNER JOIN OrderDetails od ON od. PizzaId = p.Id
INNER JOIN Orders o ON o.Id = od.OrderId
INNER JOIN Users u ON u.Id = o.UserId
WHERE o.IsDelivered =0
GO


SELECT Name, FirstName, LastName, COUNT(*) AS NumberOfOrders from [Users waiting for orders]
GROUP BY Name, FirstName, LastName
GO

--
CREATE OR ALTER PROCEDURE [Insert pizza in DB]
AS

BEGIN
	INSERT INTO Pizzas(Name, SizeId, Price)
	VALUES('Vegetariana', 2, 350)
END
SELECT TOP 1 Id FROM Pizzas
ORDER BY Id DESC 

EXECUTE [Insert pizza in DB]












