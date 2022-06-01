SELECT STRING_AGG (Name, ', ') AS [All customer names aggregated]
FROM Customers

SELECT STRING_AGG (TotalPrice, ', ')
FROM Orders

SELECT GETDATE()
SELECT CAST(GETDATE() AS Date) AS CurrentDate

SELECT DATEADD(year, 1, GETDATE())
SELECT DATEADD(year, -2, GETDATE())

SELECT STRING_AGG(FirstName, ' | ')
FROM Employees
WHERE FirstName = 'Ana'