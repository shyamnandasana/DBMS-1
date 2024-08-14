--JOIN

CREATE TABLE STUDNTE_INFO(
	Rno INT,
	Name VARCHAR(20),
	Branch VARCHAR(20)
)

INSERT INTO STUDNTE_INFO
VALUES
(101, 'Raju', 'CE'),
(102, 'Amit', 'CE'),
(103, 'Sanjay', 'ME'),
(104, 'Neha', 'EC'),
(105, 'Meera', 'EE'),
(106, 'Mahesh', 'ME')


CREATE TABLE RESULTT(
	Rno INT,
	SPI DECIMAL(3,2)
)

INSERT INTO RESULTT 
VALUES
(101, 8.8),
(102, 9.2),
(103, 7.6),
(104, 8.2),
(105, 7.0),
(107, 8.9)


CREATE TABLE EMPE_MASTER(
	EmployeeNo VARCHAR(10),
	Name VARCHAR(20),
	ManagerNo VARCHAR(10)
)

INSERT INTO EMPLOYEE_MASTER 
VALUES
('E01', 'Tarun', NULL),
('E02', 'Rohan', 'E02'),
('E03', 'Priya', 'E01'),
('E04', 'Milan', 'E03'),
('E05', 'Jay', 'E01'),
('E06', 'Anjana', 'E04')


--A

--1. Combine information from student and result table using cross join or Cartesian product.
SELECT * FROM STUDNTE_INFO CROSS JOIN RESULTT

--2. Perform inner join on Student and Result tables.
SELECT * FROM STUDNTE_INFO INNER JOIN RESULTT
ON STUDNTE_INFO.Rno = RESULTT.Rno

--3. Perform the left outer join on Student and Result tables.
SELECT * FROM STUDNTE_INFO LEFT OUTER JOIN RESULTT
ON STUDNTE_INFO.Rno = RESULTT.Rno

--4. Perform the right outer join on Student and Result tables.
SELECT * FROM STUDNTE_INFO RIGHT OUTER JOIN RESULTT
ON STUDNTE_INFO.Rno = RESULTT.Rno

--5. Perform the full outer join on Student and Result tables. 
SELECT * FROM STUDNTE_INFO FULL OUTER JOIN RESULTT
ON STUDNTE_INFO.Rno = RESULTT.Rno

--6. Display Rno, Name, Branch and SPI of all students.
SELECT STUDNTE_INFO.Rno, STUDNTE_INFO.Name, STUDNTE_INFO.Branch, RESULTT.SPI 
FROM STUDNTE_INFO JOIN RESULTT
ON STUDNTE_INFO.Rno = RESULTT.Rno

--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
SELECT STUDNTE_INFO.Rno, STUDNTE_INFO.Name, STUDNTE_INFO.Branch, RESULTT.SPI 
FROM STUDNTE_INFO JOIN RESULTT
ON STUDNTE_INFO.Rno = RESULTT.Rno
WHERE STUDNTE_INFO.Branch = 'CE'

--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
SELECT STUDNTE_INFO.Rno, STUDNTE_INFO.Name, STUDNTE_INFO.Branch, RESULTT.SPI 
FROM STUDNTE_INFO JOIN RESULTT
ON STUDNTE_INFO.Rno = RESULTT.Rno
WHERE STUDNTE_INFO.Branch <> 'EC'

--9. Display average result of each branch.
SELECT STUDNTE_INFO.Branch, AVG(RESULTT.SPI)
FROM STUDNTE_INFO JOIN RESULTT
ON STUDNTE_INFO.Rno = RESULTT.Rno
GROUP BY STUDNTE_INFO.Branch

--10. Display average result of CE and ME branch.
SELECT STUDNTE_INFO.Branch, AVG(RESULTT.SPI)
FROM STUDNTE_INFO JOIN RESULTT
ON STUDNTE_INFO.Rno = RESULTT.Rno
GROUP BY STUDNTE_INFO.Branch
HAVING STUDNTE_INFO.Branch IN('CE', 'ME')


--B

--1. Display average result of each branch and sort them in ascending order by SPI.
SELECT STUDNTE_INFO.Branch, AVG(RESULTT.SPI)
FROM STUDNTE_INFO JOIN RESULTT
ON STUDNTE_INFO.Rno = RESULTT.Rno
GROUP BY STUDNTE_INFO.Branch
ORDER BY AVG(RESULTT.SPI)

--2. Display highest SPI from each branch and sort them in descending order.
SELECT STUDNTE_INFO.Branch, MAX(RESULTT.SPI)
FROM STUDNTE_INFO JOIN RESULTT
ON STUDNTE_INFO.Rno = RESULTT.Rno
GROUP BY STUDNTE_INFO.Branch
ORDER BY MAX(RESULTT.SPI) DESC

--C
--1. Retrieve the names of employee along with their manager’s name from the Employee table.

