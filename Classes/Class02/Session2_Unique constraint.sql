USE [SEDC]

SELECT * FROM ProductS_Test

--DROP TABLE IF EXISTS [ProductS_Test]
--GO

--CREATE TABLE [ProductS_Test](
--[Id] int IDENTITY(1,1) NOT NULL,
--[Code] nvarchar(50) NULL,
--[Name] nvarchar(100) NULL,
--[Description] nvarchar(MAX) NULL,
--[Weight] decimal(18,2) NULL,
--[Price] decimal(18,2) NULL,
--[Cost] decimal(18,2) NULL,
--)
--GO

ALTER TABLE ProductS_Test
ADD CONSTRAINT UC_ProductsTest_Name
UNIQUE ([Name])
GO

--Add multiple constraints when creating a table 
-- by adding all constraints one by one separating with ","