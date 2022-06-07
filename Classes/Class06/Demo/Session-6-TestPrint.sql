-- STORED PROCEDURE WITH INPUT PARAMETERS
CREATE OR ALTER PROCEDURE sp_PrintFullName
(
	@firstName nvarchar(50) = 'Martin', 
	@lastName nvarchar(50) = 'Panovski'
)
AS 
BEGIN 
	PRINT 'FirstName: ' + @firstName
	PRINT 'LastName: ' + @lastName
	PRINT CONCAT (@firstName, '',  @lastName)
END

EXEC dbo.[sp_PrintFullName] 


EXEC dbo.[sp_PrintFullName] 
@firstName = 'Aneta',
@lastName ='Stankovska'

DECLARE @ReturnValue nvarchar(100);

EXEC @ReturnValue = sp_PrintFullName;

SELECT @ReturnValue AS [Result]
