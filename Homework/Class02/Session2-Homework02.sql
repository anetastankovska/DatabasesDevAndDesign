USE SEDC
GO

--List all BusinessEntity Names and Customer Names in single result set with duplicates
--SELECT be.[Name], cs.[Name] FROM [BusinessEntities] AS be
--FULL OUTER JOIN [Customers] AS cs ON be.Id=cs.Id;
--GO

select Name from BusinessEntities
UNION ALL 
select Name from Customers


--List all regions where some BusinessEntity is based, or some Customer is based. Remove duplicates
SELECT [Region] FROM [BusinessEntities]
UNION 
SELECT [RegionName] FROM [Customers]
GO

--List all regions where we have BusinessEntities and Customers in the same time
SELECT [Region] FROM [BusinessEntities]
INTERSECT
SELECT [RegionName] FROM [Customers]
GO
