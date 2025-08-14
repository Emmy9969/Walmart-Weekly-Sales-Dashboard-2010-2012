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

 23.	198750617.85 
 29.	77141554.31
 9.	77789218.99
 15.	89133683.92
 3.	57586735.07
 32.	166819246.16
 26.	143416393.79
 12.	144287230.15
 35.	131520672.08
 6.	223756130.64
 43.	90565435.41
 21.	108117878.92
 27.	253855916.88
 38.	55159626.42
 7.	81598275.14
 44.	43293087.84
 1. 222402808.85
 24.	194016021.28
 18.	155114734.21
 30.	62716885.12
 10.	271617713.89
 41.	181341934.89
 4.	299543953.38
 19.	206634862.10
 25.	101061179.17
 36.	53412214.97
 13.	286517703.80
 42.	795657.90
 22.	147075648.57
 33.	37160221.96
 39.	207445542.47
 16.	74252425.40
 45.	112395341.42
 2.	275382440.98
 17.	127782138.83
 31.	199613905.50
 34.	138249763.00
 40.	137870309.79
 11.	193962786.80
 20.	301397792.46
 28.	189263680.58
 14.	288999911.34
 37.	74202740.32
 8.	129951181.13

(3). Average Temperature per Store ($).

23.	48.8051050226172
29.	54.8971329135495
9.	67.7751749478854
15.	51.8338460455408
3.	71.4341959386439
32.	52.7475525182444
26.	43.6582518957712
12.	70.2627971622494
35.	57.3111189462088
6.	69.7000000160057
43.	68.8776922159262
21.	68.8476226646583
27.	57.3111189462088
38.	70.2627971622494
7.	40.0145071190847
44.	53.6971328175151
1.	68.3067836361331
24.	54.0299997529783
18.	53.3712586889734
30.	68.8476226646583
10.	72.2411887695739
41.	48.4103497925338
4.	62.2533567868746
19.	52.295034888741
25.	52.1383914147224
36.	71.1603496258075
13.	53.6971328175151
42.	72.2411887695739
5.	69.4101396840769
22.	54.8971329135495
33.	76.7281816389177
39.	70.5973426978905
16.	45.0300699847561
45.	57.7909790652615
2.	68.2163636267602
17.	46.387202666356
31.	68.8476226646583
34.	58.4958743248786
40.	47.6745455014956
11. 72.4807694708551
20.	55.4513986360777
28.	70.2627971622494
14.	57.7909790652615
37.	71.1603496258075
8. 62.5139858939431


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

29	9.80678324265913
32	8.58622390907128
12	13.1174826388592
35	8.7881819118153
43	9.93566427030764
27	8.0028777431241
38	13.1174826388592
7	8.58622390907128
24	8.44685297745925
18	8.83874132249739
10	8.29286828151969
42	8.29286828151969
22	8.06825182321188
33	8.53496504496861
45	8.64790217526309
34	9.93566427030764
28	13.1174826388592
14	8.64790217526309

(9). Top 3 Stores with Highest Single-Week Sales

14	3818686.45	3.14
20	3766687.43	3.14
10	3749057.69	3.24


(10). Average Fuel Price per Year

2010	2.8244
2011	3.5621
2012	3.7104


