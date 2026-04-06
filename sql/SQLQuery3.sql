-- =========================================
-- 📊 SALES ANALYSIS PROJECT (SQL)
-- =========================================


-- =========================================
-- 🔹 BASIC METRICS
-- =========================================

-- Total Sales
SELECT 
    SUM(Sales) AS Total_Sales
FROM train;

-- Total Orders
SELECT 
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM train;

-- Average Sales
SELECT 
    AVG(Sales) AS Avg_Sales
FROM train;


-- =========================================
-- 🔹 SALES BY SEGMENT
-- =========================================

SELECT 
    Segment,
    SUM(Sales) AS Total_Sales
FROM train
GROUP BY Segment;


-- =========================================
-- 🔹 MONTHLY SALES & GROWTH ANALYSIS
-- =========================================

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
-- 🔹 CATEGORY PERFORMANCE
-- =========================================

SELECT 
    Category,
    SUM(Sales) AS Total_Sales
FROM train
GROUP BY Category
ORDER BY Total_Sales DESC;


-- =========================================
-- 🔹 REGION PERFORMANCE
-- =========================================

SELECT 
    Region,
    SUM(Sales) AS Total_Sales
FROM train
GROUP BY Region
ORDER BY Total_Sales DESC;
