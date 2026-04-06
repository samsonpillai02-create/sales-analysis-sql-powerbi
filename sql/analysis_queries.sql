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

-- Check duplicates
SELECT Order_ID, COUNT(*)
FROM train
GROUP BY Order_ID
HAVING COUNT(*) > 1;

-- Check date issues
SELECT *
FROM train
WHERE Order_Date > Ship_Date;

--Check for Negative or zero values
SELECT*
FROM train
WHERE sales<=0;
