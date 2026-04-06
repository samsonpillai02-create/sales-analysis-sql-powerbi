-- =========================================
-- 📊 SALES ANALYSIS PROJECT (SQL)
-- Dataset: Superstore (train table)
-- =========================================


-- =========================================
-- 🔹 DATA CLEANING
-- =========================================

-- Check NULL values
SELECT *
FROM train
WHERE 
    Sales IS NULL OR
    Order_Date IS NULL OR
    Ship_Date IS NULL OR
    Customer_ID IS NULL OR
    Product_Name IS NULL OR
    Category IS NULL OR
    Segment IS NULL;

-- Check duplicate Order IDs
SELECT Order_ID, COUNT(*) AS duplicate_count
FROM train
GROUP BY Order_ID
HAVING COUNT(*) > 1;

-- Check date issues
SELECT *
FROM train
WHERE Order_Date > Ship_Date;

-- Check negative or zero sales
SELECT *
FROM train
WHERE Sales <= 0;


-- =========================================
-- 🔹 BASIC METRICS
-- =========================================

-- Total Sales
SELECT SUM(Sales) AS Total_Sales FROM train;

-- Total Orders
SELECT COUNT(DISTINCT Order_ID) AS Total_Orders FROM train;

-- Average Sales
SELECT AVG(Sales) AS Avg_Sales FROM train;


-- =========================================
-- 🔹 SALES ANALYSIS
-- =========================================

-- Sales by Segment
SELECT Segment, SUM(Sales) AS Total_Sales
FROM train
GROUP BY Segment;

-- Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
FROM train
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM train
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Sales by Sub-Category
SELECT Sub_Category, SUM(Sales) AS Total_Sales
FROM train
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;


-- =========================================
-- 🔹 PRODUCT ANALYSIS
-- =========================================

-- Top 10 Products by Sales
SELECT TOP 10 
    Product_Name,
    SUM(Sales) AS Total_Sales
FROM train
GROUP BY Product_Name
ORDER BY Total_Sales DESC;

-- Low Performing Products
SELECT TOP 10 
    Product_Name,
    SUM(Sales) AS Total_Sales
FROM train
GROUP BY Product_Name
ORDER BY Total_Sales ASC;


-- =========================================
-- 🔹 TIME SERIES ANALYSIS
-- =========================================

-- Monthly Sales
SELECT 
    FORMAT(Order_Date, 'yyyy-MM') AS Month,
    SUM(Sales) AS Total_Sales
FROM train
GROUP BY FORMAT(Order_Date, 'yyyy-MM')
ORDER BY Month;

-- Monthly Sales Growth
WITH MonthlySales AS (
    SELECT 
        FORMAT(Order_Date, 'yyyy-MM') AS Month,
        SUM(Sales) AS Total_Sales
    FROM train
    GROUP BY FORMAT(Order_Date, 'yyyy-MM')
)

SELECT 
    Month,
    Total_Sales,
    LAG(Total_Sales) OVER (ORDER BY Month) AS Previous_Month_Sales,
    (Total_Sales - LAG(Total_Sales) OVER (ORDER BY Month)) * 100.0 
    / LAG(Total_Sales) OVER (ORDER BY Month) AS Growth_Percentage
FROM MonthlySales;


-- =========================================
-- 🔹 BUSINESS INSIGHTS QUERIES
-- =========================================

-- Top Regions by Sales
SELECT Region, SUM(Sales) AS Total_Sales
FROM train
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Segment Contribution
SELECT Segment, 
       SUM(Sales) AS Total_Sales,
       (SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER()) AS Percentage_Contribution
FROM train
GROUP BY Segment;

-- Category Contribution
SELECT Category, 
       SUM(Sales) AS Total_Sales,
       (SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER()) AS Percentage_Contribution
FROM train
GROUP BY Category;

-- =========================================
-- 🔹 SQL VIEWS (REUSABLE LOGIC)
-- =========================================

-- Sales Summary View
CREATE VIEW vw_sales_summary AS
SELECT 
    SUM(Sales) AS Total_Sales,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    AVG(Sales) AS Avg_Sales
FROM train;


-- Category Sales View
CREATE VIEW vw_category_sales AS
SELECT 
    Category,
    SUM(Sales) AS Total_Sales
FROM train
GROUP BY Category;


-- Region Sales View
CREATE VIEW vw_region_sales AS
SELECT 
    Region,
    SUM(Sales) AS Total_Sales
FROM train
GROUP BY Region;


-- Monthly Sales View
CREATE VIEW vw_monthly_sales AS
SELECT 
    FORMAT(Order_Date, 'yyyy-MM') AS Month,
    SUM(Sales) AS Total_Sales
FROM train
GROUP BY FORMAT(Order_Date, 'yyyy-MM');
