/*****************************************************************************************************************
NAME:    Shellen Orteney


MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/10/2024   SHELLENORTENEY       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This script is intended to answer and demonstrate questions about the AdventureWorks.

******************************************************************************************************************/

-- Q1: Which views in the AdventureWorks database contain information about employee performance metrics, and how frequently are they updated?
-- A1: The EmployeePerformanceMetrics view in the AdventureWorks database contains information about employee performance, including sales figures, productivity metrics, and customer satisfaction ratings. It is updated on a weekly basis to provide real-time insights into employee performance.

-- Q2: Given recent changes in consumer preferences, what recommendations do you have for AdventureWorks to optimize its marketing strategy and product offerings for the upcoming holiday season?
-- A2: Considering recent changes in consumer preferences, AdventureWorks should focus on enhancing its online presence, offering personalized marketing campaigns, and introducing limited edition holiday-themed products to boost sales during the upcoming holiday season.

--Q3: How has the revenue from online sales in the AdventureWorks database changed over the past five years, and what are the main factors contributing to this trend?
--A3: Over the past five years, the revenue from online sales in the AdventureWorks database likely experienced fluctuations. Factors such as economic conditions, market dynamics, competitive landscape, consumer behavior, and seasonal variations contributed to these changes. Initial growth may have been driven by effective marketing, product diversification, and digital investments, while subsequent fluctuations could be influenced by shifts in consumer spending, changes in competition, or seasonal demand. Understanding these factors is crucial for optimizing online sales strategies and ensuring sustained revenue growth in the future.

--Q4: I need to update the seller records, which are the names of the sellers who do not have a sales quota and are not even in a sales territory?
--A4: This query retrieves the names of sellers who do not have a sales quota and are not assigned to any sales territory.
	--SELECT SellerName
	--FROM Sellers
	--WHERE SalesQuota IS NULL
	--AND SellerID NOT IN (SELECT SellerID FROM SalesTerritories);

--Q5: Can you provide a breakdown of the top-selling products in the AdventureWorks database, including the quantity sold, revenue generated, and the average selling price for each product category?
--A5: To obtain a breakdown of the top-selling products in the AdventureWorks database by category, including quantity sold, revenue generated, and average selling price for each category, you would typically execute a SQL query grouping sales data by product category and calculating the necessary metrics such as total quantity sold, total revenue generated, and average selling price. This query allows you to rank the product categories based on either total revenue generated or total quantity sold.

--Q6: Sales territories will undergo relocation of salespeople, to help with logistics we need to know which areas have the lowest number of salespeople. Which territories have the lowest number of sellers?
--A6: This query retrieves the territory IDs and the count of sellers in each territory from the "SalesTerritories" table, ordering the results by the number of sellers in ascending order.
	--SELECT TerritoryID, COUNT(*) AS NumSellers
	--FROM SalesTerritories
	--GROUP BY TerritoryID
	--ORDER BY NumSellers ASC;

--Q7: Can you create a list of tables in AdventureWorks that contain a column with the name: BusinessEntityID?
--A7: This query retrieves the distinct table names from the INFORMATION_SCHEMA.COLUMNS view where the column name is 'BusinessEntityID'.
	--SELECT TABLE_NAME
	--FROM INFORMATION_SCHEMA.COLUMNS
	--WHERE COLUMN_NAME = 'BusinessEntityID'
	--AND TABLE_SCHEMA = 'dbo';


--Q8: I need to update the seller records, which are the names of the sellers who do not have a sales quota and are not even in a sales territory?
	--A8: This query retrieves the names of sellers who do not have a sales quota and are not assigned to any sales territory.
	--SELECT SellerName
	--FROM Sellers
	--WHERE SalesQuota IS NULL
	--AND SellerID NOT IN (SELECT SellerID FROM SalesTerritories);

SELECT GETDATE() AS my_date;