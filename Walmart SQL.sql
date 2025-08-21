Use Walmart
go
select * from [Walmart]

Question (1). Which Store made the highest Sales?
SELECT TOP 1 Store, Date, Weekly_Sales, CPI FROM [Walmart]
ORDER BY Weekly_Sales DESC

Question (2). Find the total weekly sales for each store?

SELECT Store, SUM("Weekly_Sales") AS Total_Sales
FROM [Walmart]
GROUP BY Store

Question (3) Find the average temperature for each store?
SELECT Store, AVG("Temperature") AS Avg_Temperature
FROM [Walmart]
GROUP BY Store;

Question (4) What was the Total Sales made each Year?
SELECT  YEAR(date) as YEAR, SUM("Weekly_Sales") AS Total_Sales
FROM [Walmart]
GROUP BY YEAR(date)
ORDER BY Total_Sales DESC

Question (5) Which week was fuel price high and how much was made?
SELECT TOP 1 Date, Weekly_Sales, Fuel_Price FROM [Walmart]
ORDER BY Fuel_Price

Question (6) Show the top 5 highest weekly sales across all stores?
SELECT TOP 5 Store, Date, Weekly_Sales FROM [Walmart]
ORDER BY Weekly_Sales DESC


Question (7) How much was made in the week with the highest inflation %?
SELECT TOP 1 date, Weekly_Sales, CPI FROM [Walmart]
ORDER BY CPI DESC

Question (8) Stores with an average unemployment rate above 8%?
SELECT Store, AVG("Unemployment") AS Avg_Unemployment
FROM Walmart
GROUP BY Store
HAVING AVG("Unemployment") > 8;

Question (9) What are the top 3 Stores that made the most Sales in a Week?
SELECT TOP 3 Store, Weekly_Sales, Fuel_Price FROM Walmart
ORDER BY  Weekly_Sales DESC

Question (10) Find the average fuel price for each year?
SELECT YEAR(Date) AS Year, AVG("Fuel_Price") AS Avg_Fuel_Price
FROM Walmart
GROUP BY YEAR(Date)
ORDER BY Year;