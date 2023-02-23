/*****************

Group By, Order By

*****************/



SELECT Gender, COUNT(Gender)
FROM SQLTutorial.dbo.EmployeeDemographics
GROUP BY Gender

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
SELECT Gender, COUNT(Gender)
FROM SQLTutorial.dbo.EmployeeDemographics
GROUP BY Gender

SELECT Gender, Age, COUNT(Gender)
FROM SQLTutorial.dbo.EmployeeDemographics
GROUP BY Gender, Age

SELECT Gender, COUNT(Gender)
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age > 31
GROUP BY Gender

SELECT Gender, COUNT(Gender) AS CountGender
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender DESC

SELECT Gender, COUNT(Gender) AS CountGender
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY Gender DESC

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
ORDER BY Age DESC

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
ORDER BY Age, Gender DESC

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
ORDER BY Age DESC, Gender DESC

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
ORDER BY Age ASC, Gender DESC

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
ORDER BY 4 ASC, 5 DESC