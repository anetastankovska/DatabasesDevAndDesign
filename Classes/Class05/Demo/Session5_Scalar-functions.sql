SELECT * FROM Student;
GO

--Create a scalar function
CREATE OR ALTER FUNCTION GetStudentFullName(@firstName NVARCHAR(50), @lastName NVARCHAR(50))
RETURNS NVARCHAR(255)
AS 
BEGIN
	RETURN CONCAT(@firstName, ' ', @lastname);
END;
GO

--Call scalar function
SELECT dbo.GetStudentFullName(s.FirstName, s.LastName) AS [Student Full Name]
FROM Student s
GO

--Return table function
CREATE OR ALTER FUNCTION GetAllStudentsBornBetweenDate(@from Date, @to Date)
RETURNS TABLE 
AS 
	RETURN 
		SELECT s.FirstName, s.LastName, s.EnrolledDate, COUNT (*) AS [Number od=f students]
		FROM Student s
		WHERE s.DateOfBirth BETWEEN @from AND @to
		GROUP BY s.FirstName, s.LastName, s.EnrolledDate
GO

--Incorrect call of function that returns table as result
SELECT dbo.GetAllStudentsBornBetweenDate(DATEADD(YEAR - 18, GETDATE()), GETDATE()) AS [Students older than 18]
FROM Student
GO


SELECT * FROM dbo.GetAllStudentsBornBetweenDate(DATEADD(YEAR, - 30, GETDATE()), GETDATE()) AS [Students older than 18]
ORDER BY EnrolledDate;
GO;

CREATE OR ALTER FUNCTION FormatStudentName(@studentId INT)
RETURNS NVARCHAR(50)
AS
BEGIN
DECLARE @Output NVARCHAR(255);
		SELECT @Output =    CONCAT(s.FirstName, ' ', s.LastName, '| CardNumber: ', s.StudentCardNumber)
							FROM Student s 
							WHERE s.Id = @studentId
	RETURN @Output;
END
GO

SELECT dbo.FormatStudentName(s.Id) AS [FuncOutput]
FROM Student s