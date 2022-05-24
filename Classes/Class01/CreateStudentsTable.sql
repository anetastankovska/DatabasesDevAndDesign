CREATE DATABASE MyAppDatabase;

USE MyAppDatabase;

CREATE TABLE Students (
Id int NOT NULL,
FirstName nvarchar(100) NOT NULL,
LastName nvarchar(100) NOT NULL,
Age tinyint NULL
);

SELECT * FROM Students;

INSERT INTO Students (Id, FirstName, LastName, Age)
VALUES (1, 'Aneta', 'Stankovska', 30);

INSERT INTO Students (Id, FirstName, LastName, Age)
VALUES (1, 'Aleksandar', 'Zivkovic', 33);

INSERT INTO Students (Id, FirstName, LastName, Age)
VALUES (4, 'Aleksandar', 'Zivkovic', 33);

INSERT INTO Students (Id, FirstName, LastName)
VALUES (1, 'Stefan', 'Ivanovski');

UPDATE Students
SET Id = 3
WHERE FirstName = 'Stefan';

-- DELETE FROM Students - NEVER DO THIS!!!

SELECT * FROM Students WHERE Age > 29 ORDER BY Age;

INSERT INTO Students(Id, FirstName, LastName, Age)
VALUES(5, 'Kristijan', 'Karanfilovski', 25),(6, 'Ilija', 'Mitev', 32)


