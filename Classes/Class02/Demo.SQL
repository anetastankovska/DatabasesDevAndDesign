USE [SEDCNew]
GO

DROP TABLE IF EXISTS [ProductS_Test]
GO

CREATE TABLE [ProductS_Test](
[Id] int IDENTITY(1,1) NOT NULL,
[Code] nvarchar(50) NULL,
[Name] nvarchar(100) NULL,
[Description] nvarchar(MAX) NULL,
[Weight] decimal(18,2) NULL,
[Price] decimal(18,2) NULL,
[Cost] decimal(18,2) NULL,
)
GO

INSERT INTO ProductS_Test([Name], Price)
VALUES('Musli bar', 100), ('Coca-cola', 30), ('Chocolate bar', 50)

SELECT * FROM ProductS_Test

SELECT * FROM ProductS_Test 
WHERE Price >= 100;

SELECT * FROM ProductS_Test 
WHERE Price < 30;

SELECT * FROM ProductS_Test 
WHERE Price < 100 AND Price > 50;

SELECT * FROM ProductS_Test 
WHERE Price < 100 OR Price > 50;

SELECT * FROM ProductS_Test 
WHERE Price BETWEEN 50 AND 100;

SELECT * FROM ProductS_Test 
WHERE Price BETWEEN 20 AND 100;

SELECT * FROM ProductS_Test 
WHERE Price <> 50;

SELECT * FROM ProductS_Test 
WHERE Name LIKE '%bar';

SELECT * FROM ProductS_Test 
WHERE Name LIKE 'm%'; -- Case insensitive in this case

SELECT * FROM ProductS_Test 
WHERE Name LIKE '%ba%';

SELECT * FROM ProductS_Test 
WHERE Name LIKE 'co%';