CREATE TABLE SALES_DATA(
	REGION VARCHAR(50),
	PRODUCT VARCHAR(50),
	SALES_AMOUNT INT,
	YEARR DATE
)

INSERT INTO SALES_DATA VALUES ('NORTH AMERICA','WATCH','1500','2023'),
							  ('Europe','MOBILE','1200','2023'),
							  ('ASIA','WATCH','1800','2023'),
							  ('NORTH AMERICA','TV','900','2024'),
							  ('Europe','WATCH','2000','2024'),
							  ('ASIA','MOBILE','1000','2024'),
							  ('NORTH AMERICA','MOBILE','1600','2023'),
							  ('Europe','TV','1500','2023'),
							  ('ASIA','TV','1100','2024'),
							  ('NORTH AMERICA','WATCH','1700','2024')
							  SELECT * FROM SALES_DATA

--Part – A:
--1. Display Total Sales Amount by Region.
 	SELECT SUM(SALES_AMOUNT) FROM SALES_DATA GROUP  BY REGION

--2. Display Average Sales Amount by Product
	SELECT PRODUCT, AVG(SALES_AMOUNT) FROM SALES_DATA GROUP  BY PRODUCT

--3. Display Maximum Sales Amount by Year
	SELECT  MAX(SALES_AMOUNT) FROM SALES_DATA GROUP  BY YEARR

--4. Display Minimum Sales Amount by Region and Year
	SELECT  MIN(SALES_AMOUNT) FROM SALES_DATA GROUP  BY REGION,YEARR

--5. Count of Products Sold by Region
	SELECT COUNT(PRODUCT) FROM SALES_DATA GROUP  BY REGION

--6. Display Sales Amount by Year and Product
	SELECT  SUM(SALES_AMOUNT) FROM SALES_DATA GROUP  BY PRODUCT,YEARR

--7. Display Regions with Total Sales Greater Than 5000
	SELECT  SUM(SALES_AMOUNT) FROM SALES_DATA GROUP BY REGION HAVING SUM(SALES_AMOUNT)>5000

--8. Display Products with Average Sales Less Than 10000
	SELECT  AVG(SALES_AMOUNT) FROM SALES_DATA GROUP BY PRODUCT HAVING AVG(SALES_AMOUNT)<10000

--9. Display Years with Maximum Sales Exceeding 500
	SELECT  MAX(SALES_AMOUNT) FROM SALES_DATA GROUP BY YEARR HAVING MAX(SALES_AMOUNT)>500

--10. Display Regions with at Least 3 Distinct Products Sold.
	SELECT REGION, COUNT(DISTINCT PRODUCT) FROM SALES_DATA GROUP BY REGION HAVING  COUNT(DISTINCT PRODUCT)>=3

--11. Display Years with Minimum Sales Less Than 1000
	SELECT  MIN(SALES_AMOUNT) FROM SALES_DATA GROUP BY YEARR HAVING MIN(SALES_AMOUNT)<1000

--12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount
	SELECT SUM(SALES_AMOUNT) FROM SALES_DATA WHERE YEARR='2023'  GROUP BY REGION

-- B
--1. Display Count of Orders by Year and Region, Sorted by Year and Region
SELECT Yearr, Region, COUNT(Product) FROM SALES_DATA
GROUP BY Yearr, Region

--2. Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
SELECT Region, MAX(Sales_Amount) FROM SALES_DATA
GROUP BY Region
HAVING MAX(Sales_Amount) >= 1000

--3. Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
SELECT Yearr, SUM(Sales_Amount) FROM SALES_DATA
GROUP BY Yearr
HAVING SUM(Sales_Amount) < 1000
ORDER BY Yearr DESC

--4. Display Top 3 Regions by Total Sales Amount in Year 2024
SELECT TOP 3 Region, SUM(Sales_Amount) FROM SALES_DATA
WHERE Yearr = 2024
GROUP BY Region


--C

--1. Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name
SELECT Product, AVG(Sales_Amount) FROM SALES_DATA
GROUP BY Product
HAVING AVG(Sales_Amount) BETWEEN 1000 AND 2000
ORDER BY Product
	
--2. Display Years with More Than 5 Orders from Each Region
SELECT Region, COUNT(Product) FROM SALES_DATA
GROUP BY REGION
HAVING COUNT(Product) > 5

--3. Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending.
SELECT Region, AVG(Sales_Amount) FROM SALES_DATA
WHERE Yearr = 2023
GROUP BY Region
HAVING AVG(Sales_Amount) > 1500
ORDER BY AVG(Sales_Amount) DESC

--4. Find out region wise duplicate product.
SELECT Region, COUNT(Product) - COUNT(DISTINCT Product) FROM SALES_DATA
GROUP BY Region

--5. Find out region wise highest sales amount.
SELECT Region, MAX(Sales_Amount) FROM SALES_DATA
GROUP BY Region