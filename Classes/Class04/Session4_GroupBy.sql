SELECT Gender, FirstName, COUNT(*) AS [Number of employees]
FROM Employees
GROUP BY Gender, FirstName

SELECT Size, COUNT(*) AS [Size count]
FROM BusinessEntities
GROUP BY Size
HAVING Size <> 'Medium'

SELECT Price, COUNT(*) AS [Cost by] 
FROM Products
GROUP BY Price 


SELECT Name, Code, COUNT(*) AS [Count by name containing soy]
FROM Products
GROUP BY Name, Code
HAVING Name Like '%e%'