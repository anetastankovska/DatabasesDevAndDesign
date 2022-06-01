USE SEDC
GO

--Change Products table always to insert value 1 in price column if no price is provided on insert
ALTER TABLE [Products]
ADD CONSTRAINT DF_Products_Price
DEFAULT 1 FOR [Price]
GO

--Change Products table to prevent inserting Price that will more than 2x bigger then the cost price
ALTER TABLE [Products]
ADD CONSTRAINT CK_Products_Price
CHECK ([Price] > [Cost]*2)
GO

--Change Products table to guarantee unique names across the products
ALTER TABLE [Products]
ADD CONSTRAINT UC_Products_Name
UNIQUE([Name])
GO

SELECT * FROM Products