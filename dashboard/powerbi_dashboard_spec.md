# Power BI Dashboard Specification

## Page 1 — Executive Overview

KPI cards:
- Total Revenue
- Total Profit
- Units Sold
- Profit Margin %

Visuals:
- Monthly Revenue and Profit line chart
- Revenue by Category clustered column chart
- Revenue by Region map/bar chart
- Revenue by Channel donut chart

## Page 2 — Product Performance

- Top 10 Products by Revenue
- Top 10 Products by Units Sold
- Product Profit Margin table
- Product Revenue vs Profit scatter chart

## Page 3 — Demand & Inventory

- Monthly Units Sold trend
- Product demand ranking
- Region × Product matrix
- Discount vs Units Sold scatter chart

## Recommended Slicers

- Date
- Product
- Category
- Region
- Channel
- Customer Type

## Measures

```DAX
Total Revenue = SUM(dairy_sales[Revenue])
Total Profit = SUM(dairy_sales[Profit])
Total Units = SUM(dairy_sales[Units_Sold])
Profit Margin % = DIVIDE([Total Profit], [Total Revenue], 0)
Average Transaction Value = AVERAGE(dairy_sales[Revenue])
```

The dashboard can be reproduced using `data/powerbi_ready_sales.csv` generated from the project dataset.
