/*****************************************************

Where Statement
=, <>, >, >=, <, <=, And, Or, Like, Null, Not Null, In

*****************************************************/



SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE FirstName = 'Jim'

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE FirstName <> 'Jim'

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age > 30

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age >= 30

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age < 32

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age <= 32

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male'

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male'

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE LastName LIKE 'S%'

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE LastName LIKE '%S'

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE LastName LIKE '%S%'

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE LastName LIKE 'S%o%'

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE FirstName is NULL

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE FirstName is NOT NULL

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael')