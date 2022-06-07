CREATE OR ALTER PROCEDURE [Students with gender]
AS
	SELECT * 
	FROM Student s
	WHERE s.Gender = 'F'
GO

EXECUTE dbo.[Students with gender]