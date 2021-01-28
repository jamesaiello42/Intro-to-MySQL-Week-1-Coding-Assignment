-- Query 1 - Employees before 1-1-1965
USE EMPLOYEES;
SELECT * 
FROM EMPLOYEES
WHERE BIRTH_DATE <  '1965-01-01';

-- Query 2 - Employees hired after 1990
USE EMPLOYEES;
SELECT * 
FROM EMPLOYEES
WHERE YEAR(HIRE_DATE) > 1990
AND GENDER = 'F';

-- Query 3 - First and last name of employees whose last name start with the letter F
USE EMPLOYEES;
SELECT FIRST_NAME
,LAST_NAME 
FROM EMPLOYEES
WHERE LAST_NAME LIKE 'F%'
LIMIT 50;

-- Query 4 - Insert 3 three records with emp_no (100, 101, and 102.)
USE EMPLOYEES;
INSERT INTO EMPLOYEES
VALUES 	(100, '1920-01-11', 'Frank', 'Edwards', 'M', '1940-01-11')
		,(101, '1921-01-11', 'Jack', 'Edwards', 'M', '1941-01-12')
        ,(102, '1922-01-11', 'Jill', 'Edwards', 'F', '1943-02-11');
		
-- Query 5 - EMP_NO 10023 First Name to Bob
USE EMPLOYEES;
UPDATE EMPLOYEES
SET FIRST_NAME = 'Bob'
WHERE EMP_NO = 10023;

-- Query 6 - Change Hire Dates of employees with the letter P in there first or last names to date 1-1-2002
USE EMPLOYEES;
UPDATE EMPLOYEES
SET HIRE_DATE = '2002-01-01'
WHERE LAST_NAME LIKE 'P%'
OR FIRST_NAME LIKE 'P%'


-- Query 7 - Delete rows with EMP_NO less than 10000
USE EMPLOYEES;
DELETE FROM EMPLOYEES
WHERE EMP_NO < 10000;

-- Query 8 - Remove emp_no keys 10048, 10099, 10234, and 20089.
USE EMPLOYEES;
DELETE FROM EMPLOYEES
WHERE EMP_NO IN (10048, 10099, 10234, 20089);