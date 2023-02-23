/*****************************************

Select Statement
*, Top, Distinct, Count, As, Max, Min, Avg

*****************************************/



SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT FirstName
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT TOP 5 *
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT DISTINCT EmployeeID
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT DISTINCT Gender
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT COUNT(LastName) AS LastNameCount
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT MAX(Salary) AS MaxSalary
FROM SQLTutorial.dbo.EmployeeSalary

SELECT MIN(Salary) AS MinSalary
FROM SQLTutorial.dbo.EmployeeSalary

SELECT AVG(Salary) AS AvgSalary
FROM SQLTutorial.dbo.EmployeeSalary

SELECT *
FROM SQLTutorial.dbo.EmployeeSalary