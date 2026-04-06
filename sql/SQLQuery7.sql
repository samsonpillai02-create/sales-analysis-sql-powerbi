--CUSTOMER SEGMENTATION
SELECT Segment,
       COUNT(DISTINCT Customer_ID) AS Customers,
       SUM(Sales) AS Sales
FROM train
GROUP BY Segment;

--Segment-wise Performance
SELECT 
    Segment,
    COUNT(DISTINCT Customer_ID) AS Total_Customers,
    SUM(Sales) AS Total_Sales,
    AVG(Sales) AS Avg_Order_Value
FROM train
GROUP BY Segment;

--Top Customers
SELECT TOP 10
    Customer_ID,
    Customer_Name,
    COUNT(Order_ID) AS Total_Orders,
    SUM(Sales) AS Total_Spent
FROM train
GROUP BY Customer_ID, Customer_Name
ORDER BY Total_Spent DESC;