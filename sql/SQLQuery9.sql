--SHIPPING ANALYSIS (AVG)
SELECT 
    AVG(DATEDIFF(day, Order_Date, Ship_Date)) AS Avg_Shipping_Days
FROM train;