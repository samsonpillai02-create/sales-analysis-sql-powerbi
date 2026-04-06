--Category Trends Over Time
SELECT 
    FORMAT(Order_Date, 'yyyy-MM') AS Month,
    Category,
    SUM(Sales) AS Sales
FROM train
GROUP BY FORMAT(Order_Date, 'yyyy-MM'), Category
ORDER BY Month;

--Category Growth
SELECT 
    Category,
    Month,
    Sales,
    LAG(Sales) OVER (PARTITION BY Category ORDER BY Month) AS Prev_Sales,
    
    (Sales - LAG(Sales) OVER (PARTITION BY Category ORDER BY Month)) * 100.0
    / LAG(Sales) OVER (PARTITION BY Category ORDER BY Month) AS Growth_Percent

FROM (
    SELECT 
        Category,
        FORMAT(Order_Date, 'yyyy-MM') AS Month,
        SUM(Sales) AS Sales
    FROM train
    GROUP BY Category, FORMAT(Order_Date, 'yyyy-MM')
) t;

--Sub-Category Trends Over Time
SELECT 
    FORMAT(Order_Date, 'yyyy-MM') AS Month,
    Sub_Category,
    SUM(Sales) AS Sales
FROM train
GROUP BY FORMAT(Order_Date, 'yyyy-MM'), Sub_Category
ORDER BY Month;

--Growth of Each Sub-Category
SELECT 
    Sub_Category,
    Month,
    Sales,
    LAG(Sales) OVER (PARTITION BY Sub_Category ORDER BY Month) AS Prev_Sales,
    
    (Sales - LAG(Sales) OVER (PARTITION BY Sub_Category ORDER BY Month)) * 100.0
    / LAG(Sales) OVER (PARTITION BY Sub_Category ORDER BY Month) AS Growth_Percent

FROM (
    SELECT 
        Sub_Category,
        FORMAT(Order_Date, 'yyyy-MM') AS Month,
        SUM(Sales) AS Sales
    FROM train
    GROUP BY Sub_Category, FORMAT(Order_Date, 'yyyy-MM')
) t;