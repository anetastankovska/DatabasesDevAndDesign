CREATE DATABASE SEDCACADEMYDB;

CREATE TABLE [Students](
[Id] int PRIMARY KEY NOT NULL,
[FirstName] nvarchar(50) NOT NULL,
[LastName] nvarchar(50) NOT NULL,
[DateOfBirth] date NOT NULL,
[EnrolledDate] date NOT NULL,
[Gender] nvarchar(20),
[NationalIdNumber] bigint NOT NULL,
[StudentCardNumber] int, 
);

CREATE TABLE [Teachers](
[Id] int PRIMARY KEY NOT NULL,
[FirstName] nvarchar(50) NOT NULL,
[LastName] nvarchar(50) NOT NULL,
[DateOfBirth] date NOT NULL,
[AcademicRank] tinyint,
[HireDate] Date 
);

CREATE TABLE [Course](
[Id] int PRIMARY KEY NOT NULL,
[Credit] nvarchar(50),
[AcademyYear] smallint,
[Semester] nvarchar(50), 
);

EXEC sp_rename 'Course.AcademyYear', 'AcademicYear', 'COLUMN';

CREATE TABLE [Grades](
[Id] int PRIMARY KEY NOT NULL,
[StudentId] int NOT NULL,
[CourseId] int NOT NULL,
[TeacherID] int NOT NULL,
[Grade] tinyint,
[Comment] nvarchar(max),
[CreatedDate] Date
);

CREATE TABLE [AchievementDetails](
[Id] int PRIMARY KEY NOT NULL,
[Name] nvarchar(100) NOT NULL,
[Description] nvarchar(max),
[ParticipationRate] decimal(6,4)
);

CREATE TABLE [GradeDetails](
[Id] int PRIMARY KEY NOT NULL,
[GradeId] int NOT NULL,
[AchievementTypeId] int NOT NULL,
[AchievementPoints] int,
[AchievementMaxPoints] int,
[AchievementDate] Date
);


