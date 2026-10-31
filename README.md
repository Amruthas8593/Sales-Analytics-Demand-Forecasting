# Dairy Sales Analysis and Demand Estimation

A portfolio project using Python, SQL and Power BI to examine sales performance, product demand, discounting and profitability in a generated dairy sales dataset.

## Business questions
- How do revenue, units sold and profit vary by month, product, region and channel?
- How are discount bands associated with revenue and profit?
- How accurately can transaction-level units sold be estimated from the available transaction attributes?

## Dataset
The repository includes 50,000 generated transaction records covering 2023–2025. The data-generation script is in `data/generate_dataset.py`. It uses a fixed random seed so the dataset can be rebuilt consistently. Fields include date, product, category, region, channel, customer type, unit price, units sold, discount, revenue, cost and profit.

Revenue, cost and profit are generated in the data script. Profit is not estimated using a flat margin in the analysis notebook.

## Analysis
The notebook checks missing values and duplicates, explores monthly and segment-level performance, and compares regression models for transaction-level units sold. The latest 20% of dates are held out for testing. A mean-prediction baseline is included alongside Linear Regression, Decision Tree, Support Vector Regression and a Neural Network.

This is a demand-estimation exercise, not a complete inventory forecasting system. The dataset does not include stock levels, stock-outs or product-level historical lag features. Model results are calculated when the notebook is run; no performance figures are assumed in this README.

## Repository structure
- `data/` — generated source and Power BI-ready datasets
- `notebooks/` — analysis and model evaluation
- `sql/` — MySQL sales queries
- `dashboard/` — Power BI report specification
- `images/` — project visuals
- `requirements.txt` — Python dependencies

## Run locally
From the repository root:

```bash
python -m pip install -r requirements.txt
python data/generate_dataset.py
python data/prepare_powerbi.py
```

Open `notebooks/sales_demand_forecasting.ipynb` in Jupyter and run the cells in order. The notebook expects the CSV in `data/`.

## Tools
Python, Pandas, NumPy, Matplotlib, Scikit-learn, MySQL and Power BI.

## Author
Amrutha S Panicker | MSc Data Analytics | BCA
