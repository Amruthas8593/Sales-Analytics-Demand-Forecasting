# Sales Analytics & Demand Forecasting for Dairy Products

## Overview
An end-to-end data analytics project analyzing a large-scale dairy sales dataset to identify sales trends, inventory patterns, pricing insights, and future demand.

## Business Problem
A dairy retailer needs better visibility into product demand, regional performance, pricing, profitability, and inventory planning. This project combines Python, SQL, Excel, Power BI, and machine learning to convert transactional sales data into actionable business insights.

## Objectives
- Analyse 50,000 dairy sales transactions.
- Clean, preprocess, validate, and explore the dataset using Python and SQL.
- Identify trends by product, category, region, channel, customer type, and month.
- Evaluate pricing and discount effects on revenue and profit.
- Compare Linear Regression, Decision Tree, SVM, and Neural Network models for demand forecasting.
- Build a Power BI-ready analytical model and dashboard specification.

## Tools & Technologies
Python, Pandas, NumPy, Matplotlib, Scikit-learn, SQL, Microsoft Excel, Power BI.

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
│   └── PowerBI_Dashboard_Guide.md
├── images/
├── requirements.txt
└── README.md
```

## Analysis Workflow
1. Data loading and validation
2. Duplicate and missing-value checks
3. Feature engineering
4. Exploratory data analysis
5. Product, regional, channel, and pricing analysis
6. Demand forecasting model development
7. Model comparison using MAE, RMSE, and R²
8. Dashboard preparation
9. Business findings and recommendations

## Results & Findings
The analysis is structured to identify:
- Highest-revenue products and categories.
- Strongest-performing regions and sales channels.
- Monthly and seasonal demand patterns.
- Discount bands associated with volume and margin changes.
- Demand forecasts that can support inventory planning.

### Machine Learning Results
The notebook evaluates four models on a held-out test set:

| Model | Evaluation |
|---|---|
| Linear Regression | MAE, RMSE, R² |
| Decision Tree Regressor | MAE, RMSE, R² |
| Support Vector Machine (SVM) | MAE, RMSE, R² |
| Neural Network Regressor | MAE, RMSE, R² |

The notebook calculates the actual metrics and ranks the models by predictive performance rather than using fabricated results.

## Power BI Dashboard
The dashboard specification covers KPI cards for revenue, profit, units sold, and orders; monthly revenue trends; regional performance; product/category performance; channel mix; discount versus profit; and interactive slicers for date, region, product, channel, and customer type.

## Business Use
The analysis supports inventory prioritisation, seasonal stocking, pricing decisions, regional sales planning, and demand forecasting.

## How to Run
```bash
pip install -r requirements.txt
jupyter notebook notebooks/sales_demand_forecasting.ipynb
```

## Author
**Amrutha S Panicker**  
MSc Data Analytics | BCA
