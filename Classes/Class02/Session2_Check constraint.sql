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

ALTER TABLE ProductS_Test
ADD CONSTRAINT CHK_Products_Test_Price
CHECK (Price <=0)
--CHECK (Price >= 0 AND Price > 10)

INSERT INTO ProductS_Test ([Name], Price)
VALUES ('Coca-cola', -10)

DELETE FROM ProductS_Test
WHERE Price <= 0

INSERT INTO ProductS_Test ([Name], Price)
VALUES ('Coca-cola', 70)

SELECT * FROM ProductS_Test

