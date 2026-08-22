# Sales Analytics & Demand Forecasting for Dairy Products

An end-to-end portfolio project demonstrating **Python, SQL, Power BI and Machine Learning** on a realistic dairy retail sales dataset.

## Business Problem

Dairy retailers need to balance product availability with inventory cost. This project analyzes historical sales to identify revenue and profit drivers, seasonal demand patterns, and product-level performance, then builds demand forecasting models to support inventory planning.

## Objectives

- Clean and validate 50,000 sales records
- Perform exploratory data analysis (EDA)
- Analyze revenue, profit, products, regions and channels
- Identify seasonal demand patterns
- Build and compare Linear Regression and Decision Tree forecasting models
- Produce a Power BI-ready analytical dataset
- Translate findings into practical business recommendations

## Tech Stack

- **Python:** Pandas, NumPy, Matplotlib, Scikit-learn
- **SQL:** Aggregations, CTEs, window functions and KPI analysis
- **Power BI:** KPI cards, trend analysis, product/category performance and regional analysis
- **Excel:** Data validation and ad-hoc analysis

## Project Structure

```text
Sales-Analytics-Demand-Forecasting/
├── data/
│   ├── dairy_sales_50000.csv
│   ├── powerbi_ready_sales.csv
│   └── generate_dataset.py
├── notebooks/
│   └── sales_demand_forecasting.ipynb
├── sql/
│   └── sales_analysis.sql
├── dashboard/
│   └── powerbi_dashboard_spec.md
├── images/
├── requirements.txt
└── README.md
```

## Dataset

The dataset contains 50,000 realistic transactional observations covering 2023–2025. Fields include date, product, category, region, sales channel, unit price, units sold, discount, revenue and profit.

## Analysis Questions

1. Which products and categories generate the most revenue and profit?
2. Which regions and channels have the strongest performance?
3. How does demand change over time and across seasons?
4. Which products should receive higher inventory priority?
5. Which forecasting model provides the strongest demand prediction?

## Machine Learning

Two baseline regression models are evaluated:

- Linear Regression
- Decision Tree Regressor

Evaluation metrics:

- MAE
- RMSE
- R²

## Power BI Dashboard

The Power BI-ready dataset supports:

- Total Revenue
- Total Profit
- Units Sold
- Average Transaction Value
- Monthly Revenue Trend
- Product and Category Performance
- Regional Performance
- Channel Performance
- Discount vs Profit analysis

A dashboard specification is included in `dashboard/powerbi_dashboard_spec.md` so the report can be reproduced directly in Power BI.

## How to Run

```bash
pip install -r requirements.txt
jupyter notebook notebooks/sales_demand_forecasting.ipynb
```

## Key Skills Demonstrated

Data cleaning, EDA, feature engineering, KPI development, SQL analytics, regression modelling, model evaluation, business interpretation and dashboard preparation.

## Author

**Amrutha S Panicker**  
MSc Data Analytics | BCA
