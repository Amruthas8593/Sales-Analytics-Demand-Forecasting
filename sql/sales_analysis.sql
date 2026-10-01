-- Sales Analytics & Demand Forecasting | MySQL 8+
SELECT COUNT(*) AS transactions, SUM(Units_Sold) AS units_sold,
       ROUND(SUM(Revenue),2) AS revenue, ROUND(SUM(Profit),2) AS profit
FROM dairy_sales;

SELECT DATE_FORMAT(Date,'%Y-%m') AS sales_month,
       SUM(Units_Sold) AS units_sold, ROUND(SUM(Revenue),2) AS revenue,
       ROUND(SUM(Profit),2) AS profit
FROM dairy_sales GROUP BY DATE_FORMAT(Date,'%Y-%m') ORDER BY sales_month;

SELECT Product,Category,SUM(Units_Sold) AS units_sold,
       ROUND(SUM(Revenue),2) AS revenue,ROUND(SUM(Profit),2) AS profit
FROM dairy_sales GROUP BY Product,Category ORDER BY revenue DESC;

SELECT Region,SUM(Units_Sold) AS units_sold,
       ROUND(SUM(Revenue),2) AS revenue,ROUND(SUM(Profit),2) AS profit
FROM dairy_sales GROUP BY Region ORDER BY revenue DESC;

SELECT Channel,COUNT(*) AS transactions,SUM(Units_Sold) AS units_sold,
       ROUND(SUM(Revenue),2) AS revenue,ROUND(SUM(Profit),2) AS profit
FROM dairy_sales GROUP BY Channel ORDER BY revenue DESC;