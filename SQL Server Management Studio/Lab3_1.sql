CREATE TABLE CRICKETE(
	PNAME VARCHAR(50),
	CITY VARCHAR(50),
	AGE INT
)

INSERT INTO CRICKETE VALUES
('SACHIN TENDULKAR', 'MUMBAI', 30),
('RAHUL DRAVID', 'BOMBAY', 35),
('M.S. DHONI', 'JHARKHAND', 31),
('SURESH RAINA', 'GUJARAT', 30);
SELECT * FROM CRICKETE

--SELECT INTO


--A 
SELECT * INTO WORLDCUPE FROM CRICKET
SELECT * FROM WORLDCUPE

SELECT PNAME, CITY INTO ttwenty FROM CRICKET WHERE 1 = 0

--3. Create table IPL From Cricket with No Data
SELECT * INTO IPL FROM CRICKET WHERE 1 = 0


--B

CREATE TABLE EMPLOYEEE(
	NAME VARCHAR(50),
	CITY VARCHAR(50),
	AGE INT
)

INSERT INTO EMPLOYEEE VALUES
('Jay Patel', 'Rajkot', 30),
('Rahul Dave', 'Baroda', 35),
('Jeet Patel', 'Surat', 31),
('Vijay Raval', 'Rajkot', 30);
SELECT * FROM EMPLOYEEE

--1. Create table Employee_detail from Employee with all the columns and data. 
SELECT * INTO EMPLOYEEE_DETAIL FROM EMPLOYEE

--2. Create table Employee_data from Employee with first two columns with no data.
SELECT NAME, CITY INTO EMPLOYEEE_DATA FROM EMPLOYEEE WHERE 1 = 0

--3. Create table Employee_info from Employee with no Data
SELECT * INTO EMPLOYEEE_INFO FROM EMPLOYEE WHERE 1 = 0


--C

--1. Insert the Data into Employee_info from Employee whose CITY is Rajkot
INSERT INTO EMPLOYEE_INFO SELECT * FROM EMPLOYEE WHERE CITY = 'RAJKOT'

--2. Insert the Data into Employee_info from Employee whose age is more than 32.
INSERT INTO EMPLOYEE_INFO SELECT * FROM EMPLOYEE WHERE AGE > 32