-- Use relevant database
USE SEDC

--Find all Employees with FirstName = Goran
SELECT * FROM [Employees] 
WHERE FirstName = 'Goran';

--Find all Employees with LastName starting With ‘S’
SELECT * FROM [Employees]
WHERE LastName LIKE 'S%';


--Find all Employees with DateOfBirth greater than ‘01.01.1988’
SELECT * FROM [Employees]
WHERE [DateOfBirth] > '1988-01-01'
--With this part of the query we cah give the date parameter in different format than the default one and be sure that it will cast correctly
--WHERE [DateOfBirth] > CAST('01.01.1988' as date); 


--Find all Male employees
SELECT * FROM [Employees]
WHERE [Gender] = 'M'


--Find all employees hired in January/1998
SELECT * FROM [Employees]
WHERE [HireDate] BETWEEN '1998/01/01' AND '1998/01/31';
--With this part of the query we cah give the date parameter in different format than the default one and be sure that it will cast correctly
--WHERE [HireDate] BETWEEN CASt('01.01.1998' as date) AND CAST('31/01/1998' as date); 



--Find all Employees with LastName starting With ‘A’ hired in January/1998
SELECT * FROM [Employees]
WHERE [HireDate] BETWEEN '1998/01/01' AND '1998/01/31' AND [LastName] LIKE 'A%';