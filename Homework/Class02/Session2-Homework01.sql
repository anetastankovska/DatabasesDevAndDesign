USE SEDC
GO

--Find all Employees with FirstName = Aleksandar ordered by Last Name
SELECT * FROM [Employees]
WHERE [FirstName] = 'Aleksandar'
ORDER BY [LastName];
GO

--List all Employees ordered by FirstName
SELECT * FROM [Employees]
ORDER BY [FirstName];
GO

--Find all Male employees ordered by HireDate, starting from the last hired
SELECT * FROM [Employees]
WHERE [Gender] = 'M'
ORDER BY [HireDate] DESC;
GO