# Sales Analytics & Demand Forecasting for Dairy Products

**Python | SQL | Power BI | Microsoft Excel | Pandas | Scikit-learn**

## Project Overview

This portfolio project analyses a large-scale dairy sales dataset to identify sales trends, inventory patterns and pricing strategies. It combines Python and SQL analysis with four demand-prediction approaches and a Power BI dashboard design.

## Business Problem

Dairy retailers need to balance product availability, demand fluctuations, pricing and inventory cost. The project uses historical sales data to identify high-performing products and regions, understand seasonality and discount behaviour, and compare predictive models for demand forecasting.

## Objectives

- Analyse a large-scale dairy sales dataset
- Clean, preprocess and validate data using Python and SQL
- Perform exploratory data analysis (EDA)
- Analyse sales trends, inventory patterns and pricing strategies
- Build Linear Regression, Decision Tree, SVM and Neural Network models
- Compare models using MAE, RMSE and R²
- Design an interactive Power BI dashboard for sales performance and business KPIs

## Dataset

The repository contains **50,000 transaction records** covering 2023–2025. Key fields include date, product, category, region, channel, customer type, unit price, units sold, discount, revenue and profit.

## Tools & Technologies

- **Python:** Pandas, NumPy, Matplotlib, Scikit-learn
- **SQL:** KPI, product, regional, channel and discount analysis
- **Power BI:** KPI cards, trends, product/category performance, regional analysis and slicers
- **Excel:** Sample dataset for ad-hoc analysis and validation

## Key Analysis

### Sales & Profit

The supplied dataset produces the following reproducible KPIs when revenue is calculated as `Unit_Price × Units_Sold × (1 − Discount_Pct)` and profit as the project margin assumption of 25%:

| KPI | Result |
|---|---:|
| Transactions | 50,000 |
| Total Units Sold | 1,026,744 |
| Total Revenue | ₹228.24M |
| Total Profit | ₹57.06M |
| Highest-Revenue Region | West |
| Highest-Revenue Product | Cheese |

### Pricing & Inventory Findings

- Product-level demand and revenue are ranked to support inventory prioritisation.
- Regional performance is compared using revenue, profit and units sold.
- Discount bands are compared against sales volume, revenue and profit to identify pricing trade-offs.
- Monthly analysis is used to identify demand and revenue patterns over time.

## Machine Learning

The notebook compares four models:

1. Linear Regression
2. Decision Tree Regressor
3. Support Vector Machine (SVM)
4. Neural Network

Evaluation metrics:

- Mean Absolute Error (MAE)
- Root Mean Squared Error (RMSE)
- R² Score

The notebook calculates the metrics from the dataset and automatically identifies the best model by RMSE. SVM is trained on a representative sample because kernel SVR is computationally expensive on the full dataset.

## Power BI Dashboard

The Power BI-ready dataset supports an interactive dashboard containing:

- Total Revenue
- Total Profit
- Units Sold
- Total Orders
- Monthly Revenue Trend
- Regional Performance
- Product Performance
- Sales Channel Performance
- Date, Region, Product, Channel and Customer Type slicers

Dashboard visuals and supporting screenshots are stored in `images/`. The dashboard build specification is stored in `dashboard/`.

## Project Structure

```text
Sales-Analytics-Demand-Forecasting/
├── data/
│   ├── dairy_sales_50000.csv
│   ├── powerbi_ready_sales.csv
│   ├── sample_sales.xlsx
│   ├── generate_dataset.py
│   └── prepare_powerbi.py
├── notebooks/
│   └── sales_demand_forecasting.ipynb
├── sql/
│   └── sales_analysis.sql
├── dashboard/
│   ├── PowerBI_Dashboard_Guide.md
│   └── powerbi_dashboard_spec.md
├── images/
│   ├── dashboard_overview.png
│   ├── monthly_revenue_trend.png
│   ├── regional_performance.png
│   └── product_performance.png
├── requirements.txt
└── README.md
```

## How to Run

```bash
pip install -r requirements.txt
jupyter notebook notebooks/sales_demand_forecasting.ipynb
```

Then import `data/powerbi_ready_sales.csv` into Power BI and follow the dashboard specification.

## Final Business Outcome

The project provides a reproducible workflow from raw transaction data through cleaning, EDA, SQL analysis, predictive modelling and dashboard reporting. The resulting KPIs and product/region/demand analysis can be used to support inventory planning, pricing decisions and sales performance monitoring.

## Author

**Amrutha S Panicker**  
MSc Data Analytics | BCA
