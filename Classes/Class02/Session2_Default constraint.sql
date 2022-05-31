USE [SEDC]
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


INSERT INTO ProductS_Test([Name], [Price])
VALUES ('Chocolate bar', 100), ('Musli bar', 200)
GO

SELECT * FROM ProductS_Test

ALTER TABLE [ProductS_Test]
ADD CONSTRAINT DF_ProductsTest_Weight
DEFAULT 100 FOR [Weight]
GO

INSERT INTO ProductS_Test([Name], [Price])
VALUES ('Smoki', 100), ('Snickers', 200)
GO