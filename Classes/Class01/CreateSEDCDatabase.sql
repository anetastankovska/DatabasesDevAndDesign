CREATE DATABASE SEDC;

CREATE TABLE [BusinessEntity] (
[Id] int NOT NULL, 
[Name] nvarchar(100),
[Region] nvarchar(1000),
[ZipCode] nvarchar(10),
[Size] nvarchar(10)
);

ALTER TABLE [BusinessEntity] 
ADD CONSTRAINT PK_BusinessEntity_Id PRIMARY KEY (Id);

INSERT INTO BusinessEntity(Id, [Name], Region, ZipCode, Size)
VALUES(1, 'Academy for Programming', 'Skopje', '1000', '100');

INSERT INTO BusinessEntity(Id, [Name], Region, ZipCode, Size)
VALUES(1, 'Academy for Programming', 'Ohrid', '6000', '30');

INSERT INTO BusinessEntity(Id, [Name], Region, ZipCode, Size)
VALUES(1, 'Academy for Software testing', 'Skopje', '1000', '120');

INSERT INTO BusinessEntity(Id, [Name], Region, ZipCode, Size)
VALUES(1, 'Academy for Web Design', 'Skopje', '1000', '50');

INSERT INTO BusinessEntity(Id, [Name], Region, ZipCode, Size)
VALUES(1, 'Academy for Data Science', 'Skopje', '1000', '60');

INSERT INTO BusinessEntity(Id, [Name], Region, ZipCode, Size)
VALUES(1, 'Academy for Computer Networks', 'Skopje', '1000', '20');

UPDATE BusinessEntity
SET Id = 2 WHERE Region = 'Ohrid'; 

UPDATE BusinessEntity
SET Id = 3 WHERE [Name] = 'Academy for Software testing';

UPDATE BusinessEntity
SET Id = 4 WHERE [Name] = 'Academy for Web Design';

UPDATE BusinessEntity
SET Id = 5 WHERE [Name] = 'Academy for Data Science';

UPDATE BusinessEntity
SET Id = 6 WHERE [Name] = 'Academy for Computer Networks';

SELECT * FROM BusinessEntity;

SELECT * FROM BusinessEntity WHERE size > 50 ORDER BY size DESC;

--TRUNCATE TABLE BusinessEntity; // Execute this to remove data from 

CREATE TABLE [Employee](
[Id] int NOT NULL,
[FirstName] nvarchar(100) NOT NULL,
[LastName] nvarchar(100) NOT NULL,
[DateOfBirth] date,
[Gender] nchar(1),
[HireDate] date,
[NationalIdNumber] nvarchar(20)
);

ALTER TABLE [Employee] 
ADD CONSTRAINT PK_Emoloyee_Id PRIMARY KEY (Id);

CREATE TABLE [Product](
[Id] int NOT NULL,
[Code] nvarchar(50),
[Name] nvarchar(100),
[Description] nvarchar(MAX),
[Weight] decimal(18,2),
[Price] decimal(18,2),
[Cost] decimal(18,2)
);

ALTER TABLE [Product] 
ADD CONSTRAINT PK_Product_Id PRIMARY KEY (Id);

CREATE TABLE [Customer](
[Id] int NOT NULL,
[Name] nvarchar(100) NOT NULL,
[AccountNumber] nvarchar(50),
[City] nvarchar(100),
[RegionName] nvarchar(100),
[CustomerSize] nvarchar(10),
[PhoneNumber] nvarchar(20),
[isActive] bit NOT NULL
);

ALTER TABLE [Customer] 
ADD CONSTRAINT PK_Customer_Id PRIMARY KEY (Id);

CREATE TABLE [Order](
[Id] bigint NOT NULL,
[OrderDate] datetime,
[Status] smallint,
[BusinessEntityId] int,
[CustometId] int,
[EmployeeId] int,
[TotalPrice] decimal(18,2),
[Comment] nvarchar(MAX)
);

ALTER TABLE [Order] 
ADD CONSTRAINT PK_Order_Id PRIMARY KEY (Id);

CREATE TABLE [OrderDetails](
[Id] bigint NOT NULL,
[OrderId] bigint,
[ProductId] int,
[Quantity] int,
[Price] decimal(18,2)
);

ALTER TABLE [OrderDetails] 
ADD CONSTRAINT PK_OrderDetails_Id PRIMARY KEY (Id);


