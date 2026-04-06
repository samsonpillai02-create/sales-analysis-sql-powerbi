--KPI View
CREATE VIEW vw_KPIs AS
SELECT 
    SUM(Sales) AS Total_Sales,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    AVG(Sales) AS Avg_Sales
FROM train;

--Category Analysis
CREATE VIEW vw_Category_Sales AS
SELECT 
    Category,
    SUM(Sales) AS Sales
FROM train
GROUP BY Category;

--Customer Segmentation
CREATE VIEW vw_Customer_Segment AS
SELECT 
    Segment,
    COUNT(DISTINCT Customer_ID) AS Customers,
    SUM(Sales) AS Sales
FROM train
GROUP BY Segment;

--Time Series
CREATE VIEW vw_Monthly_Sales AS
SELECT 
    FORMAT(Order_Date, 'yyyy-MM') AS Month,
    SUM(Sales) AS Sales
FROM train
GROUP BY FORMAT(Order_Date, 'yyyy-MM');

--Shipping Analysis
CREATE VIEW vw_Shipping AS
SELECT 
    AVG(DATEDIFF(day, Order_Date, Ship_Date)) AS Avg_Shipping_Days
FROM train;

--Geography
CREATE VIEW vw_Region_Sales AS
SELECT 
    Region,
    SUM(Sales) AS Sales
FROM train
GROUP BY Region;