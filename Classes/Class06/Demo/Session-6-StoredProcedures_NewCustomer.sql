CREATE OR ALTER PROCEDURE sp_AddCustomer
(
	@Name nvarchar(100),
	@AccountNumber nvarchar(50) = NULL,
	@City nvarchar(100) = NULL,
	@RegionName nvarchar(100) = NULL,
	@CustomerSize nvarchar(10) = NULL,
	@PhoneNumber nvarchar(20) = NULL,
	@IsActive bit
)
AS
BEGIN
	IF (LEN(@Name) < 5)
		SELECT 'The name cannot have less than 5 characters' AS ERROR
	ELSE
	BEGIN
		INSERT INTO dbo.Customers 
		([Name], AccountNumber, City, RegionName, CustomerSize, PhoneNumber, IsActive)
		VALUES (@Name, @AccountNumber, @City, @RegionName, @CustomerSize, @PhoneNumber, @IsActive)

		SELECT COUNT (*) AS CustomersInRegion 
		FROM Customers
		WHERE RegionName = @RegionName
		END
END

SELECT * FROM Customers
WHERE RegionName = 'Bitolski'
ORDER BY Id DESC