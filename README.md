# Walmart-Weekly-Sales-Analysis-2010-2012


# Executive Summary
  This project examines Walmart’s weekly sales data across multiple stores, incorporating economic indicators such as fuel prices, unemployment rates, and the Consumer Price Index (CPI).   The dataset spans several years, offering insights into store performance, seasonal trends, and the influence of economic factors on sales using Microsoft Excel, SQL and Power BI.

# Report Objectives
  The objective of this report is to analyze Walmart’s historical weekly sales performance across multiple stores, integrating economic indicators such as fuel prices, unemployment         rates, and the Consumer Price Index (CPI). This analysis aims to:
- Which Store made the highest Sales: Check all stores and see which one brought in the most money overall.
- Find the total Weekly Sales for each Store: Add up the sales for each store across all weeks to see how much each store made in total.
- Find the Average Temperature for each Store: Work out the average temperature for each store’s location to see its usual weather.
- What was the Total Sales made each Year: Add up all sales in each year to see how much Walmart made per year.
- Which Week was Fuel Price high and how much was made: Find the week with the most expensive fuel price and check the sales in that same week.
- Show the top 5 highest Weekly sales across all Stores: Pick the 5 weeks where sales were the highest across all stores.
- How much was made in the Week with the highest Inflation in Percentage (%): Look for the week with the highest CPI (inflation) value and see the total sales made in that week.
- Stores with an Average Unemployment rate above 8%: List the stores where the average unemployment rate in their area is more than 8%.
- What are the top 3 Stores that made the most Sales in a Week: Find the top 3 store-week combinations with the biggest sales numbers.
- Find the Average Fuel Price for each Year: Work out the average fuel price for each year to see how it changes over time.


# Data Sources
  The Walmart dataset contains several key data fields, each providing important information for analysis. 
- Store: The Store column identifies each Walmart location by a unique number.
- Date: The Date column shows the start date of the sales week, indicating when the data was recorded.
- Weekly Sales: Weekly Sales ($) represents the total sales made by a store in a specific week, measured in U.S. dollars.
- Holiday Flag: The Holiday Flag indicates whether the week included a major holiday, with a value of 1 representing a holiday week and 0 for a non-holiday week.
- Temperature (℉): Temperature (℉) records the average temperature in the store’s area during the sales week, measured in degrees Fahrenheit.
- Fuel Price ($): Fuel Price ($) provides the average fuel price in the store’s region for that week, expressed in U.S. dollars per gallon.
- CPI: The CPI (Consumer Price Index) measures the average change over time in the prices of goods and services, serving as an indicator of inflation. A higher CPI reflects higher price    levels compared to a base year.
- Unemployment (%): Unemployment (%) shows the average unemployment rate in the store’s region for the week, indicating the percentage of people without jobs in that area.


# Methodology
  Tools used, 
- Microsoft excel: For Data Cleaning
  The Store Column, Weekly Sales, Fuel Price, Holiday Flag, Temperature, Unemployment were all intact.
  For the Date column, the format was standardized by selecting the Date column, navigating to the ribbon, clicking on “Text to Columns,” choosing “Delimited,” clicking next, unchecking    all delimiters, clicking next again, selecting “Date” as the column data format, and finally choosing “Short Date” as the display format.

  The CPI (Consumer Price Index) column, which measures price level changes over time, was converted to a percentage for easier interpretation. This was done by subtracting the known       base value of 100 from the CPI, making it clearer to see how much prices have changed relative to the base year.
- SQL: For Data Analysis.
- Power BI: For Data Visualization.

# Reasearch Questions

- Which store made the highest sales?
- Find the total weekly sales for each store?
- Find the average temperature for each store?
- What was the total sales made each year?
- Which week was fuel price high and how much was made?
- Show the top 5 highest weekly sales across all stores?
- How much was made in the week with the highest inflation %?
- Stores with an average unemployment rate above 8%?
- What are the top 3 Stores that made the most Sales in a Week?
- Find the average fuel price for each year?



# Data Analysis
-- A Query to Which Store made the highest Sales.
 SELECT TOP 1 Store, Date, Weekly_Sales, CPI 
 FROM Walmart
 ORDER BY Weekly_Sales DESC
   





# Results/Findidngs
(1) Store 14 recorded the highest single-week sales, achieving $3,818,686.45 in revenue with a CPI of 82.5400009155273 during that week.

(2). Total Weekly Sales for Each Store ($).

| Store | Total Weekly Sales ($) |
|:------|-----------------------:|
| 23    | 198,750,617.85         |
| 29    | 77,141,554.31          |
| 9     | 77,789,218.99          |
| 15    | 89,133,683.92          |
| 3     | 57,586,735.07          |
| 32    | 166,819,246.16         |
| 26    | 143,416,393.79         |
| 12    | 144,287,230.15         |
| 35    | 131,520,672.08         |
| 6     | 223,756,130.64         |
| 43    | 90,565,435.41          |
| 21    | 108,117,878.92         |
| 27    | 253,855,916.88         |
| 38    | 55,159,626.42          |
| 7     | 81,598,275.14          |
| 44    | 43,293,087.84          |
| 1     | 222,402,808.85         |
| 24    | 194,016,021.28         |
| 18    | 155,114,734.21         |
| 30    | 62,716,885.12          |
| 10    | 271,617,713.89         |
| 41    | 181,341,934.89         |
| 4     | 299,543,953.38         |
| 19    | 206,634,862.10         |
| 25    | 101,061,179.17         |
| 36    | 53,412,214.97          |
| 13    | 286,517,703.80         |
| 42    | 795,657.90


(3). Average Temperature per Store ($).

| Store | Average Temperature (℉) |
|:------|------------------------:|
| 23    | 48.81                   |
| 29    | 54.90                   |
| 9     | 67.78                   |
| 15    | 51.83                   |
| 3     | 71.43                   |
| 32    | 52.75                   |
| 26    | 43.66                   |
| 12    | 70.26                   |
| 35    | 57.31                   |
| 6     | 69.70                   |
| 43    | 68.88                   |
| 21    | 68.85                   |
| 27    | 57.31                   |
| 38    | 70.26                   |
| 7     | 40.01                   |
| 44    | 53.70                   |
| 1     | 68.31                   |
| 24    | 54.03                   |
| 18    | 53.37                   |
| 30    | 68.85                   |
| 10    | 72.24                   |
| 41    | 48.41                   |
| 4     | 62.25                   |
| 19    | 52.30                   |
| 25    | 52.14                   |
| 36    | 71.16                   |
| 13    | 53.70                   |
| 42    | 72.24                   |
| 5     | 69.41                   |
| 22    | 54.90                   |
| 33    | 76.73                   |
| 39    | 70.60                   |
| 16    | 45.03                   |
| 45    | 57.79                   |
| 2     | 68.22                   |
| 17    | 46.39                   |
| 31    | 68.85                   |
| 34    | 58.50                   |
| 40    | 47.67                   |
| 11    | 72.48                   |
| 20    | 55.45                   |
| 28    | 70.26                   |
| 14    | 57.79                   |
| 37    | 71.16                   |
| 8     | 62.51                   |



(4). Total Annual Sales.


| Year  | Total Sales ($)| 
|-------|------------|
| 2011  | 2448200007.35 |
| 2010  | 2288886120.41 |
| 2012  | 2000132859.35 |


(5). Week with Highest Fuel Price and Corresponding Sales.
  

| Date          | Week       | Fuel Price ($)   | 
|-------------- |------------|------------------|
| 2010-02-19    | 47021.03   | 2.47             |





(6). Top 5 Highest Weekly Sales Across All Stores


| Store | Date       | Weekly Sales ($) | 
|-------|------------|------------------|
|  14   | 2010-12-24 | 3818686.45       |
|  20   | 2010-12-24 | 3766687.43       |
|  10   | 2010-12-24 | 3749057.69       | 
|  4    | 2011-12-23 |    3676388.98    |                  
|  13   | 2010-12-24 |   3595903.20     |             



(7). Sales During the Week with Highest Inflation (%)
| Date        | Weekly Sales  |      CPI              |
|-------------|---------------|-----------------------|
|2012-10-26   | 549731.49     | 127.230003356934      |



(8). Stores with Average Unemployment Rate Above 8%

| Store | Avg Unemployment (%) |
|:------|---------------------:|
| 29    | 9.81                 |
| 32    | 8.59                 |
| 12    | 13.12                |
| 35    | 8.79                 |
| 43    | 9.94                 |
| 27    | 8.00                 |
| 38    | 13.12                |
| 7     | 8.59                 |
| 24    | 8.45                 |
| 18    | 8.84                 |
| 10    | 8.29                 |
| 42    | 8.29                 |
| 22    | 8.07                 |
| 33    | 8.53                 |
| 45    | 8.65                 |
| 34    | 9.94                 |
| 28    | 13.12                |
| 14    | 8.65                 |


(9). Top 3 Stores with Highest Single-Week Sales

| Store | Weekly Sales ($) | Fuel Price ($) |
|:------|-----------------:|---------------:|
| 14    | 3,818,686.45     | 3.14           |
| 20    | 3,766,687.43     | 3.14           |
| 10    | 3,749,057.69     | 3.24           |


(10). Average Fuel Price per Year

| Year | Avg. Fuel Price ($) |
|:-----|--------------------:|
| 2010 | 2.82                |
| 2011 | 3.56                |
| 2012 | 3.71                |



