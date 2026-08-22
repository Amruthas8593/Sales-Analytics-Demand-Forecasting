-- Sales Analytics & Demand Forecasting

-- 1. Total Revenue and Profit
SELECT
    ROUND(SUM(Revenue), 2) AS total_revenue,
    ROUND(SUM(Profit), 2) AS total_profit,
    SUM(Units_Sold) AS total_units
FROM dairy_sales;

-- 2. Monthly Revenue Trend
SELECT
    DATE_FORMAT(Date, '%Y-%m') AS sales_month,
    ROUND(SUM(Revenue), 2) AS revenue,
    SUM(Units_Sold) AS units_sold
FROM dairy_sales
GROUP BY DATE_FORMAT(Date, '%Y-%m')
ORDER BY sales_month;

-- 3. Product Performance
SELECT
    Product,
    Category,
    SUM(Units_Sold) AS units_sold,
    ROUND(SUM(Revenue), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit,
    ROUND(100 * SUM(Profit) / NULLIF(SUM(Revenue), 0), 2) AS profit_margin_pct
FROM dairy_sales
GROUP BY Product, Category
ORDER BY revenue DESC;

-- 4. Regional Performance
SELECT
    Region,
    ROUND(SUM(Revenue), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit,
    SUM(Units_Sold) AS units_sold
FROM dairy_sales
GROUP BY Region
ORDER BY revenue DESC;

-- 5. Channel Performance
SELECT
    Channel,
    ROUND(SUM(Revenue), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit,
    SUM(Units_Sold) AS units_sold
FROM dairy_sales
GROUP BY Channel
ORDER BY revenue DESC;

-- 6. Discount vs Profit
SELECT
    CASE
        WHEN Discount_Pct < 5 THEN 'Low Discount'
        WHEN Discount_Pct < 10 THEN 'Medium Discount'
        WHEN Discount_Pct < 15 THEN 'High Discount'
        ELSE 'Very High Discount'
    END AS discount_band,
    COUNT(*) AS transactions,
    ROUND(SUM(Revenue), 2) AS revenue,
    ROUND(SUM(Profit), 2) AS profit
FROM dairy_sales
GROUP BY discount_band
ORDER BY profit DESC;

-- 7. Top 10 Products by Units Sold
SELECT
    Product,
    SUM(Units_Sold) AS units_sold
FROM dairy_sales
GROUP BY Product
ORDER BY units_sold DESC
LIMIT 10;
