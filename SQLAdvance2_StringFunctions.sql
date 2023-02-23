/**********************************************************************

String Functions - Trim, LTrim, RTrim, Replace, Substring, UPPER, lower

**********************************************************************/



--DROP TABLE EmployeeErrors;

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

INSERT INTO EmployeeErrors VALUES
('1001 ', 'Jimbo', 'Halbert'),
(' 1002', 'Pamela', 'Beasely'),
('1005', 'TOby', 'Flenderson - Fired')

SELECT *
FROM EmployeeErrors

--Using TRIM, LTRIM, RTRIM

SELECT EmployeeID, TRIM(EmployeeID) AS TrimmedID
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) AS LTrimmedID
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) AS RTrimmedID
FROM EmployeeErrors

--Using REPLACE

SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed
FROM EmployeeErrors

--Using SUBSTRING

SELECT FirstName, SUBSTRING(FirstName, 1, 3) AS FirstThreeLetters
FROM EmployeeErrors

SELECT FirstName, SUBSTRING(FirstName, 3, 3) AS ThirdFourthFifthLetters
FROM EmployeeErrors

SELECT err.FirstName, dem.FirstName
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
ON err.FirstName = dem.FirstName

SELECT err.FirstName, SUBSTRING(err.FirstName, 1, 3), dem.FirstName, SUBSTRING(dem.FirstName, 1, 3) 
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
ON SUBSTRING(err.FirstName, 1, 3) = SUBSTRING(dem.FirstName, 1, 3)

--Using UPPER, lower

SELECT FirstName, lower(FirstName) AS WithLowerLetters
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName) AS WithUpperLetters
FROM EmployeeErrors

--Change the data :
 UPDATE EmployeeErrors
 SET FirstName = 'Toby'
 WHERE FirstName = 'TOby'
--Change the result :
SELECT FirstName, REPLACE(FirstName, 'TO', 'To')
FROM EmployeeErrors