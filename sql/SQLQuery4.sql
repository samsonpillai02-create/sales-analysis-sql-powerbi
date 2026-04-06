-- Top Products
SELECT TOP 10 
    Product_Name, 
    SUM(Sales) AS Sales
FROM Train
GROUP BY Product_Name
ORDER BY Sales DESC;

-- Category Sales
SELECT 
    Category, 
    SUM(Sales) AS Sales
FROM Train
GROUP BY Category;

-- Sub-catogory trends
SELECT 
    Sub_Category,
    SUM(Sales) AS Total_Sales
FROM train
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;