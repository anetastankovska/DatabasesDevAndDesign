USE [master]
GO

DROP DATABASE IF EXISTS [SEDCNew]
GO

CREATE DATABASE [SEDCNew]
GO

USE [SEDCNew]
GO

DROP TABLE IF EXISTS [dbo].[OrderDetails]
DROP TABLE IF EXISTS [dbo].[Orders]
DROP TABLE IF EXISTS [dbo].[BusinessEntities]
DROP TABLE IF EXISTS [dbo].[Customers]
DROP TABLE IF EXISTS [dbo].[Employees]
DROP TABLE IF EXISTS [dbo].[Products]
GO

CREATE TABLE [Customers](
	[Id] int IDENTITY (1,1) NOT NULL,
	[Name] nvarchar(100) NOT NULL,
	[AccountNumber] nvarchar(50) NULL,
	[City] nvarchar(100) NULL,
	[RegionName] nvarchar(100) NULL,
	[CustomerSize] nvarchar(10) NULL,
	[PhoneNumber] nvarchar(20) NULL,
	[IsActive] bit NOT NULL,
CONSTRAINT [PK_Customers] PRIMARY KEY(Id)
)

CREATE TABLE [Employees](
	[Id] int IDENTITY(1,1) NOT NULL,
	[FirstName] nvarchar(100) NOT NULL,
	[LastName] nvarchar(100) NOT NULL,
	[DateOfBirth] date NULL,
	[Gender] nchar(1) NULL,
	[HireDate] date NULL,
	[NationalIdNumber] nvarchar(20) NULL,
CONSTRAINT [PK_Employees] PRIMARY KEY(Id)
)

CREATE TABLE [Products](
	[Id] int IDENTITY(1,1) NOT NULL,
	[Code] nvarchar(50) NULL,
	[Name] nvarchar(100) NULL,
	[Description] nvarchar(MAX) NULL,
	[Weight] decimal(18,2) NULL,
	[Price] decimal(18,2) NULL,
	[Cost] decimal(18,2) NULL,
CONSTRAINT [PK_Products] PRIMARY KEY(Id)
)

CREATE TABLE [Orders](
	[Id] bigint IDENTITY(1,1) NOT NULL,
	[OrderDate] datetime NULL,
	[Status] smallint NULL,
	[BusinessEntityId] int NULL,
	[CustomerId] int NULL,
	[EmployeeId] int NULL,
	[TotalPrice] decimal(18,2) NULL,
	[Comment] nvarchar(max) NULL,
CONSTRAINT [PK_Orders] PRIMARY KEY(Id)
)

CREATE TABLE [OrderDetails](
	[Id] bigint IDENTITY(1,1) NOT NULL,
	[OrderId] bigint NULL,
	[ProdictId] int NULL,
	[Quantity] int NULL,
	[Price] decimal(18,2) NULL,
CONSTRAINT [PK_OrderDetails] PRIMARY KEY(Id)
)

CREATE TABLE [BusinessEntities](
	[Id] int IDENTITY (1,1) NOT NULL,
	[Name] nvarchar(100) NULL,
	[Region] nvarchar(1000) NULL,
	[ZipCode] nvarchar(10) NULL,
	[Size] nvarchar(10) NULL,
CONSTRAINT [PK_BusinessEntities] PRIMARY KEY(Id)
)
GO
