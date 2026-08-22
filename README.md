# Sales Analytics & Demand Forecasting for Dairy Products

**Tools:** Python, SQL, Power BI, Microsoft Excel, Pandas, Scikit-learn

## Project Objectives

- Analysed a large-scale dairy sales dataset to identify sales trends, inventory patterns, and pricing strategies.
- Performed data cleaning, preprocessing, and exploratory data analysis (EDA) using Python and SQL.
- Built predictive models including **Linear Regression, Decision Tree, Support Vector Machine (SVM), and Neural Network** to support demand forecasting and inventory optimization.
- Designed an interactive Power BI dashboard to visualize sales performance and key business metrics.

## Analysis Areas

- Sales trends and seasonality
- Inventory and demand patterns
- Product and category performance
- Regional and channel performance
- Pricing and discount strategy
- Revenue and profit KPIs

## Machine Learning

Four regression approaches are compared using MAE, RMSE and R²:

1. Linear Regression
2. Decision Tree Regressor
3. Support Vector Machine (SVM)
4. Neural Network

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

The project uses 50,000 realistic dairy sales transactions covering 2023–2025. Variables include date, product, category, region, sales channel, customer type, unit price, units sold, discount, revenue and profit.

## Power BI Dashboard

The dashboard is designed around sales performance and business KPIs, including revenue, profit, units sold, product/category performance, regional trends, pricing and discount analysis, and demand/inventory insights.

## How to Run

```bash
pip install -r requirements.txt
jupyter notebook notebooks/sales_demand_forecasting.ipynb
```

## Author

**Amrutha S Panicker**  
MSc Data Analytics | BCA
