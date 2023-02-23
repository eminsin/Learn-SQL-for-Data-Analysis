/*******

Aliasing

*******/



SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT FirstName AS FName
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT FirstName FName
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT FirstName + ' ' + LastName AS FullName
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT AVG(Age) AS AVGAge
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo

SELECT Demo.EmployeeID
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
ON Demo.EmployeeID = Sal.EmployeeID

SELECT Demo.EmployeeID, Sal.Salary
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
ON Demo.EmployeeID = Sal.EmployeeID

SELECT Demo.EmployeeID, Demo.FirstName, Demo.LastName, Sal.JobTitle, Ware.Age
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
ON Demo.EmployeeID = Sal.EmployeeID
LEFT OUTER JOIN SQLTutorial.dbo.WareHouseEmployeeDemographics AS Ware
ON Demo.EmployeeID = Ware.EmployeeID