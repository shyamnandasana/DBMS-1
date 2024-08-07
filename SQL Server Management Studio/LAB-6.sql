--LAB 6


--A (Math Functions)

--1. Display the result of 5 multiply by 30.
SELECT 5 * 30 AS MULTIPLICATION

--2. Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25) AS ABSOLUTE_VALUE, ABS(25) AS ABSOLUTE_VALUE, ABS(-50) AS ABSOLUTE_VALUE, ABS(50) AS ABSOLUTE_VALUE

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2) AS CEILING_FUNCTION, CEILING(25.7) AS CEILING_FUNCTION, CEILING(-25.2) AS CEILING_FUNCTION

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2) AS FLOOR_FUNCTION, FLOOR(25.7) AS FLOOR_FUNCTION, FLOOR(-25.2) AS FLOOR_FUNCTION

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT 5 % 3 AS MODULO

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER(3, 2)AS POWER , POWER(4, 3) AS POWER

--7. Find out the square root of 25, 30 and 50.
SELECT SQRT(25) AS ROOT, SQRT(30) AS ROOT, SQRT(50) AS ROOT

--8. Find out the square of 5, 15, and 25.
SELECT SQUARE(5) AS SQUARE, SQUARE(15) AS SQUARE, SQUARE(25) AS SQUARE

--9. Find out the value of PI.
SELECT PI() AS PI

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT ROUND(157.732, 2) AS ROUNDOFF_VALUE, ROUND(157.732, 0) AS ROUNDOFF_VALUE, ROUND(157.732, -2) AS ROUNDOFF_VALUE

--11. Find out exponential value of 2 and 3.
SELECT EXP(2) AS EXPONENTIAL_VALUE, EXP(3) AS EXPONENTIAL_VALUE

--12. Find out logarithm having base e of 10 and 2.
SELECT LOG(10) AS LOG, LOG(2) AS LOG

--13. Find out logarithm having base b having value 10 of 5 and 100.
SELECT LOG10(5) AS LOG, LOG10(100) AS LOG

--14. Find sine, cosine and tangent of 3.1415.
SELECT SIN(3.1415) AS SINE, COS(3.1415) AS COSINE, TAN(3.1415) AS TANGENT

--15. Find sign of -25, 0 and 25.
SELECT SIGN(-25) AS SIGN, SIGN(0) AS SIGN, SIGN(25) AS SIGN 

--16. Generate random number using function.
SELECT RAND() * 100 AS RANDOM


--A (String Functions)


--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
SELECT LEN('NULL') AS LENGTH, LEN('HELLO') AS LENGTH, LEN('BLANK') AS LENGTH

--2. Display your name in lower & upper case.
SELECT UPPER('Sachin Tendulkar') AS CASE_VALUE, LOWER('Mahendra Singh Dhoni') AS CASE_VALUE

--3. Display first three characters of your name.
SELECT SUBSTRING('ROHIT SHARMA',1,3) AS SUBSTRING_VALUE

--4. Display 3rd to 10th character of your name.
SELECT SUBSTRING('VIRAT KOHLI',3,10) AS SUBSTRING_VALUE

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & 
--‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
SELECT REPLACE('ABC123EFG','123','XYZ') AS REPLACE, REPLACE('ABCABCABC','C','5') AS REPLACE

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
SELECT ASCII('a') AS ASCII, ASCII('A') AS ASCII, ASCII('z') AS ASCII, ASCII('Z') AS ASCII,
ASCII('0') AS ASCII, ASCII('9') AS ASCII

--7. Write a query to display character based on 
--number 97, 65,122,90,48,57.
SELECT CHAR(97) AS CHARACTERVALUE, CHAR(65) AS CHARACTERVALUE, CHAR(122) AS CHARACTERVALUE, CHAR(90) AS CHARACTERVALUE
SELECT CHAR(48) AS CHARACTERVALUE, CHAR(57) AS CHARACTERVALUE

--8. Write a query to remove spaces from left of a given string ‘hello world ‘.
SELECT LTRIM('HELLO WORLD') AS LEFTTRIM

--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
SELECT RTRIM('HELLO WORLD') AS RIGHTTRIM

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
SELECT LEFT('SQL SERVER',4) AS LEFT_DISPLAY
SELECT RIGHT('SQL SERVER',5) AS RIGHT_DISPLAY

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
SELECT CAST(1234.56 AS INT) AS CAST_VALUE
SELECT CONVERT(INT, 1234.56) AS CONVERT_VALUE

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
SELECT CAST(10.58 AS INT) AS CASTVALUEfgvd
SELECT CONVERT(INT, 10.58) AS CONVERTVALUE

--13. Put 10 space before your name using function.
SELECT SPACE(10) + 'JASPREET BOOMRAH' AS SPACEVALUE
 
--14. Combine two strings using + sign as well as CONCAT ().
SELECT 'NEERAJ' + SPACE(2) + 'CHOPRA' AS CONCAT, CONCAT('LAXYA','SEN') AS CONCAT

--15. Find reverse of “Darshan”.
SELECT REVERSE('KINGKOHLI') AS REVERSEVALUE 

--16. Repeat your name 3 times.
SELECT REPLICATE('ROHITMAN',3) AS REPEATVALUE 


--A (Date Functions)

--1. Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE() AS Today_Date

--2. Write a query to find new date after 365 day with reference to today.
SELECT DATEADD(DAY , 365 , GETDATE()) 

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT FORMAT(GETDATE(), 'MMM d yyyy hh:mm tt')

--4. Display the current date in a format that appears as 03 Jan 1995.
SELECT FORMAT(GETDATE(), 'dd MMM yyyy')

--5. Display the current date in a format that appears as Jan 04, 96.
SELECT FORMAT(GETDATE(), 'MMM dd, yy')

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(month, '2008/12/31', '2009/12/31') AS DateDiff;

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
SELECT DATEDIFF(year, '2010/09/14', '2012/01/25') AS DateDiff;

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(hour, '2012/01/25 07:00', '2012/01/26 10:30') 
AS DateDiff;

--9. Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT DATEFROMPARTS(2016, 05, 12) AS DateFromParts;

--10. Write a query that adds 5 years to current date.
SELECT DATEADD(year, 5, GETDATE());

--11. Write a query to subtract 2 months from current date.
SELECT DATEADD(MONTH, 2, GETDATE());

--12. Extract month from current date using datename () and datepart () function.
SELECT DATENAME(MONTH, GETDATE());
SELECT DATEPART(MONTH, GETDATE());

--13. Write a query to find out last date of current month.
SELECT EOMONTH(GETDATE());

--14. Calculate your age in years and months.
SELECT DATEDIFF(YEAR, '2005/11/17' ,GETDATE())
SELECT DATEDIFF(MONTH, '2005/11/17' ,GETDATE())


--B


CREATE TABLE EMP_MASTER(
	EMPNO INT,
	EMPNAME VARCHAR(50),
	JDATE DATE,
	SALARY INT,
	COMIS INT,
	CITY VARCHAR(50),
	DCODE VARCHAR(50)
)

INSERT INTO EMP_MASTER(EMPNO,EMPNAME,JDATE,SALARY,COMIS,CITY,DCODE)
VALUES
(101,'KEYUR','5-JAN-02',12000,4500,'RAJKOT','3@G'),
(102,'HARDIK','15-FEB-04',14000,2500,'AHMEDABAD','3@'),
(103,'KAJAL','14-MAR-06',15000,3000,'BARODA','3-GD'),
(104,'BHOOMI','23-JUN-05',12500,1000,'AHMEDABAD','1A3D'),
(105,'HARMIT','15-FEB-04',14000,2000,'RAJKOT','312A')


--1. Display the result of Salary plus Commission.
SELECT *, (SALARY + COMIS) AS SALARY_PLUS_COMISSION FROM EMP_MASTER;

--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
SELECT CEILING(55.2) AS CEIL_VALUE
SELECT CEILING(35.7) AS CEIL_VALUE
SELECT CEILING(-55.2) AS CEIL_VALUE

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
SELECT FLOOR(55.2) AS FLOOR_VALUE
SELECT FLOOR(35.7) AS FLOOR_VALUE
SELECT FLOOR(-55.2) AS FLOOR_VALUE

--4. Find out remainder of 55 divided 2 and 55 divided by 3.
SELECT 55 % 2 AS REMAINDER_VALUE
SELECT 55 % 3 AS REMAINDER_VALUE

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
SELECT POWER(23,2) AS POWER_VALUE
SELECT POWER(14,3) AS POWER_VALUE

--C

--B

--1. Find the length of FirstName and LastName columns
SELECT LEN(FIRSTNAME) FROM STUDENT
SELECT LEN(LASTNAME) FROM STUDENT

--2. Display FirstName and LastName columns in lower & upper case.
SELECT LOWER(FIRSTNAME) FROM STUDENT
SELECT UPPER(FIRSTNAME) FROM STUDENT
SELECT LOWER(LASTNAME) FROM STUDENT
SELECT UPPER(LASTNAME) FROM STUDENT

--3. Display first three characters of FirstName column.
SELECT SUBSTRING(FIRSTNAME,1,3) FROM STUDENT

--4. Display 3rd to 10th character of Website column.
SELECT SUBSTRING(WEBSITE,3,10) FROM STUDENT

--5. Write a query to display first 4 & Last 5 characters 
--of Website column.
SELECT SUBSTRING(WEBSITE,1,3) FROM STUDENT
SELECT SUBSTRING(WEBSITE,6,5) FROM STUDENT

--> PART - C

--1. Put 10 space before FirstName using function.
--2. Combine FirstName and LastName columns using + sign as well as CONCAT ().
--3. Combine all columns using + sign as well as CONCAT ().
--4. Find reverse of FirstName column.
--5. Repeat FirstName column 3 times
--6. Give the Names which contains 5 characters.
--7. Combine the result as <FirstName> Lives in <City>.
--8. Combine the result as Student_ID of < FirstName > is <StuID> .