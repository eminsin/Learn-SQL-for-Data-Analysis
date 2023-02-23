/****************************************************

Subqueries (in the Select, From, and Where Statement)

****************************************************/



SELECT *
FROM EmployeeSalary

--Subquery in Select

SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) AS AllAvgSalary
FROM EmployeeSalary

--How to do it with Partition By

SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
FROM EmployeeSalary

--Why Group By doesn't work?

SELECT EmployeeID, Salary, AVG(Salary) AS AllAvgSalary
FROM EmployeeSalary
GROUP BY EmployeeID, Salary
ORDER BY 1,2

--Subquery in From

SELECT a.EmployeeID, Salary
FROM (SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
      FROM EmployeeSalary) AS a

--Use #temp tables instead of subquerying in From

--Subquery in Where

SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID in (
        SELECT EmployeeID
		FROM EmployeeDemographics
		WHERE Age > 30)

--We took the Age information from EmployeeDemographics table