CREATE TABLE STUDENT(
   STUID INT,
   FIRSTNAME VARCHAR(25),
   LASTNAME VARCHAR(25),
   WEBSITE VARCHAR(50),
   CITY VARCHAR(25),
   ADDRESS VARCHAR(100)
)

INSERT INTO STUDENT VALUES(1011,'KEYUR','PATEL','techonthenet.com','RAJKOT','A-303 ‘Vasant Kunj’, Rajkot'),
						  (1022,'HARDIK ','SHAH','digminecraft.com','AHMEDABAD',' “Ram Krupa”, Raiya Road'),
						  (1033,'KAJAL','TRIVEDI','bigactivities.com ','BARODA','Raj bhavan plot, near garden'),
						  (1044,'BHOOMI','GAJERA','checkyourmath.com','AHMEDABAD','Jig’s Home”, Narol'),
						  (1055,'HARMIT','MITEL','@me.darshan.com ','RAJKOT','‘B-55, Raj Residency'),
						  (1066,'ASHOK','JANI',NULL,'BARODA','A502, Club House Building')
						  SELECT * FROM STUDENT


--PART-A

SELECT FIRSTNAME FROM STUDENT WHERE FIRSTNAME LIKE 'K%' 

SELECT FIRSTNAME FROM STUDENT WHERE FIRSTNAME LIKE '_____' 

SELECT FIRSTNAME,LASTNAME FROM STUDENT WHERE CITY LIKE '_____A' 

SELECT * FROM STUDENT WHERE LASTNAME LIKE '%TEL' 

SELECT * FROM STUDENT WHERE FIRSTNAME LIKE 'HA%T' 

SELECT * FROM STUDENT WHERE FIRSTNAME LIKE 'K_Y%' 

SELECT FIRSTNAME FROM STUDENT WHERE WEBSITE IS NULL AND FIRSTNAME LIKE '_____' 

SELECT * FROM STUDENT WHERE LASTNAME LIKE '%JER%' 

SELECT * FROM STUDENT WHERE CITY LIKE 'R%' OR CITY LIKE'B%' 

SELECT * FROM STUDENT WHERE WEBSITE LIKE '%' 

SELECT FIRSTNAME FROM STUDENT WHERE FIRSTNAME LIKE '[A-H]%'

SELECT * FROM STUDENT WHERE FIRSTNAME LIKE '_[A,E,I,O,U]%' 

SELECT FIRSTNAME FROM STUDENT WHERE WEBSITE IS NULL AND  FIRSTNAME LIKE '_____%' 

SELECT * FROM STUDENT WHERE LASTNAME LIKE 'PAT%' 

SELECT * FROM STUDENT WHERE CITY NOT LIKE 'B%' 

--PART-B

--1. Display all the students whose name starts from alphabet A or H.
SELECT FIRSTNAME FROM STUDENT WHERE FIRSTNAME LIKE '[A-H]%'

 --2. Display all the students whose name’s second character is vowel and of and start with H.
 SELECT * FROM STUDENT WHERE FIRSTNAME LIKE 'H[A,E,I,O,U]%'

--3. Display all the students whose last name does not ends with ‘a’.
SELECT * FROM STUDENT WHERE LASTNAME NOT LIKE '%A'

--4. Display all the students whose first name starts with consonant.
SELECT * FROM STUDENT WHERE FIRSTNAME NOT LIKE '[A,E,I,O,U]%'

--5. Display all the students whose website contains .net
SELECT * FROM STUDENT WHERE WEBSITE LIKE '%.NET%'

--PART-C

--1. Display all the students whose address consist of -.
SELECT * FROM STUDENT WHERE ADDRESS LIKE '%-%'

--2. Display all the students whose address contains single quote or double quote.
SELECT * FROM STUDENT WHERE ADDRESS LIKE '%"%' OR ADDRESS LIKE '%''%'

--3. Display all the students whose website contains @.
SELECT * FROM STUDENT WHERE WEBSITE LIKE '%@%'

--4. Display all the names those are either four or five characters.
SELECT * FROM STUDENT WHERE FIRSTNAME LIKE '____' OR FIRSTNAME LIKE '_____'
