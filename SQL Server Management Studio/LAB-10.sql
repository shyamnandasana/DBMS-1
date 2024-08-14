CREATE TABLE STUDENT_INF(
	ROLL_NO INT,
	NAME VARCHAR(50),
	BRANCH VARCHAR(50),
	SPI DECIMAL(5,2),
	BACKLOG INT
);

INSERT INTO STUDENT_INF VALUES (101,'RAJU','CE',8.80,0),
								(102,'Amit','CE',2.20,3),
								(103,'Sanjay','ME',1.50,6),
								(104,'Neha','EC',7.65,1),
								(105,'Meera','EE',5.52,2),
								(106,'Mahesh','EE',4.50,3)
								
								SELECT * FROM STUDENT_INF

--1. Create a view Personal with all columns.
 CREATE VIEW Personal AS 
 SELECT * FROM STUDENT_INF

--2. Create a view Student_Details having columns Name, Branch & SPI.
 CREATE VIEW Student_Detail AS 
 SELECT NAME,BRANCH,SPI FROM STUDENT_INF

--3. Create a view AcademicData having columns RNo, Name, Branch.
 Create view AcademicData AS
 SELECT ROLL_NO,NAME,BRANCH FROM STUDENT_INF

--4. Create a view Student_ bklog having all columns but students whose bklog more than 2.
 Create  view Student_BACKLOG AS
 SELECT * FROM  STUDENT_INF WHERE BACKLOG>2

--5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four 
--letters.
 Create view Student_PatterRn AS
 SELECT ROLL_NO,NAME,BRANCH FROM Student_INF WHERE  NAME  LIKE '____'

--6. Insert a new record to AcademicData view. (107, Meet, ME)
 INSERT INTO AcademicDatA VALUES(107,'MEET','ME')
 SELECT * FROM AcademicDatA

--7. Update the branch of Amit from CE to ME in Student_Details view.
UPDATE Student_Detail SET BRANCH = 'ME' FROM Student_Detail WHERE NAME='AMIT'

select * from  Resalt_EC

--8. Delete a student whose roll number is 104 from AcademicData view.delete from AcademicData where ROLL_NO=104  -- Part – B:

--1. Create a view that displays information of all students whose SPI is above 8.5
CREATE VIEW information AS 
SELECT * FROM STUDENT_INF WHERE SPI>8.5

--2. Create a view that displays 0 backlog students.
CREATE VIEW BACJLG AS 
SELECT * FROM STUDENT_INF WHERE BACKLOG=0

--3. Create a view Computerview that displays CE branch data only.
 Create  view Computerrview AS 
 SELECT * FROM STUDENT_INF WHERE BRANCH='CE'

--Part – C:
--1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
CREATE VIEW Result_EC AS 
SELECT SPI,name fROM STUDENT_INF WHERE SPI<5 AND BRANCH='EE'
select * from Result_EC


--2. Update the result of student MAHESH to 4.90 in Result_EC view.
UPDATE Result_EC SET SPI= 4.90 WHERE NAME='MAHESH'

--3. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having bklogs more thaCE
CREATE VIEW Stu_Bklog AS 
SELECT ROLL_NO,NAME,BACKLOG 

--4. Drop Computerview form the database