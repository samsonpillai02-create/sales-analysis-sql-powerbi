--YEARLY SALES TREND
SELECT 
    YEAR(Order_Date) AS Year,
    SUM(Sales) AS Total_Sales
FROM train
GROUP BY YEAR(Order_Date)
ORDER BY Year;

--MONTHLY SALES
SELECT 
    FORMAT(Order_Date, 'yyyy-MM') AS Month,
    SUM(Sales) AS Sales
FROM train
GROUP BY FORMAT(Order_Date, 'yyyy-MM')
ORDER BY Month;

--DAILY SALES
SELECT 
    CAST(Order_Date AS DATE) AS Order_Day,
    SUM(Sales) AS Daily_Sales
FROM train
GROUP BY CAST(Order_Date AS DATE)
ORDER BY Order_Day;