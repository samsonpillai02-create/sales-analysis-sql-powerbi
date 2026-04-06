--Sales by Region
SELECT 
	Region, 
	SUM(Sales) AS Sales
FROM train
GROUP BY Region
ORDER BY Sales DESC;

--Sales by state
SELECT 
	State, 
	SUM(Sales) AS Sales
FROM train
GROUP BY State
ORDER BY Sales DESC;