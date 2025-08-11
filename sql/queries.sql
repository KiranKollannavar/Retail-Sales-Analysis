
-- Top 5 products by sales
SELECT Product, SUM(Sales) AS TotalSales
FROM retail_sales
GROUP BY Product
ORDER BY TotalSales DESC
LIMIT 5;

-- Monthly sales
SELECT strftime('%Y-%m', Date) AS Month, SUM(Sales) AS TotalSales
FROM retail_sales
GROUP BY Month
ORDER BY Month;
