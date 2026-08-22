-- Sales Analytics & Demand Forecasting for Dairy Products
-- SQL examples are written for MySQL 8+

-- 1. Overall KPIs
SELECT
    COUNT(*) AS transactions,
    SUM(Units_Sold) AS units_sold,
    ROUND(SUM(Revenue), 2) AS total_revenue,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(100 * SUM(Profit) / NULLIF(SUM(Revenue),0), 2) AS profit_margin_pct
FROM dairy_sales;

-- 2. Monthly sales trend
SELECT
    DATE_FORMAT(Date, '%Y-%m') AS sales_month,
    SUM(Units_Sold) AS units_sold,
    ROUND(SUM(Revenue), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit
FROM dairy_sales
GROUP BY DATE_FORMAT(Date, '%Y-%m')
ORDER BY sales_month;

-- 3. Product performance
SELECT
    Product,
    Category,
    SUM(Units_Sold) AS units_sold,
    ROUND(SUM(Revenue), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit,
    ROUND(100 * SUM(Profit) / NULLIF(SUM(Revenue),0), 2) AS margin_pct
FROM dairy_sales
GROUP BY Product, Category
ORDER BY revenue DESC;

-- 4. Regional performance
SELECT
    Region,
    SUM(Units_Sold) AS units_sold,
    ROUND(SUM(Revenue), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit
FROM dairy_sales
GROUP BY Region
ORDER BY revenue DESC;

-- 5. Sales channel performance
SELECT
    Channel,
    COUNT(*) AS transactions,
    SUM(Units_Sold) AS units_sold,
    ROUND(SUM(Revenue), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit
FROM dairy_sales
GROUP BY Channel
ORDER BY revenue DESC;

-- 6. Discount-band analysis
SELECT
    CASE
        WHEN Discount_Pct < 5 THEN '0-4%'
        WHEN Discount_Pct < 10 THEN '5-9%'
        WHEN Discount_Pct < 15 THEN '10-14%'
        ELSE '15%+'
    END AS discount_band,
    COUNT(*) AS transactions,
    SUM(Units_Sold) AS units_sold,
    ROUND(SUM(Revenue), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit
FROM dairy_sales
GROUP BY discount_band
ORDER BY discount_band;

-- 7. Top 10 products by revenue
SELECT Product, ROUND(SUM(Revenue),2) AS revenue
FROM dairy_sales
GROUP BY Product
ORDER BY revenue DESC
LIMIT 10;

-- 8. High-demand products for inventory planning
SELECT
    Product,
    ROUND(AVG(Units_Sold),2) AS avg_units_per_transaction,
    SUM(Units_Sold) AS total_units,
    ROUND(SUM(Revenue),2) AS revenue
FROM dairy_sales
GROUP BY Product
ORDER BY avg_units_per_transaction DESC;
