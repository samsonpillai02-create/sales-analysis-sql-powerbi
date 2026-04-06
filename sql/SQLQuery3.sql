-- Total Sales
SELECT 
    SUM(Sales) AS Total_Sales 
  FROM train;

-- Total Orders
SELECT 
    COUNT(DISTINCT Order_ID) AS Total_Orders 
  FROM train;

-- Avg Sales
SELECT 
    AVG(Sales) AS Avg_Sales 
  FROM train;

-- Sales by Segment
SELECT 
    Segment, 
    SUM(Sales) AS Sales
  FROM train
 GROUP BY Segment;


--Sales Growth
SELECT 
    Month,
    Total_Sales,
    LAG(Total_Sales) OVER (ORDER BY Month) AS Previous_Month_Sales,
    
    (Total_Sales - LAG(Total_Sales) OVER (ORDER BY Month)) * 100.0 
    / LAG(Total_Sales) OVER (ORDER BY Month) AS Growth_Percentage

FROM (
    SELECT 
        FORMAT(Order_Date, 'yyyy-MM') AS Month,
        SUM(Sales) AS Total_Sales
    FROM train
    GROUP BY FORMAT(Order_Date, 'yyyy-MM')
) AS MonthlySales;