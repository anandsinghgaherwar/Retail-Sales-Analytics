SHOW TABLES;

SELECT * 
FROM cleaned_sales_data
LIMIT 10;

SELECT *
FROM cleaned_sales_data
LIMIT 5
SELECT ROUND(SUM(SALES),2) AS TOTAL_SALES
FROM cleaned_sales_data
SELECT ROUND(SUM(PROFIT),2) AS TOTAL_PROFIT
FROM cleaned_sales_data
SELECT Region,
ROUND(SUM(Sales),2) AS Total_Sales
FROM cleaned_sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT Category,
ROUND(SUM(Profit),2) AS Total_Profit
FROM cleaned_sales_data
GROUP BY Category
ORDER BY Total_Profit DESC;
SELECT `Customer Name`,
ROUND(SUM(Sales),2) AS Spending
FROM cleaned_sales_data
GROUP BY `Customer Name`
ORDER BY Spending DESC
LIMIT 10;
SELECT `Product Name`,
ROUND(SUM(Sales),2) AS Total_Sales
FROM cleaned_sales_data
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT `Product Name`,
ROUND(SUM(Profit),2) AS Total_Profit
FROM cleaned_sales_data
GROUP BY `Product Name`
HAVING SUM(Profit) < 0
ORDER BY Total_Profit;
SELECT Year,
ROUND(SUM(Sales),2) AS Revenue
FROM cleaned_sales_data
GROUP BY Year
ORDER BY Year;