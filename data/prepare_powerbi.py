"""Add date attributes and profit margin for Power BI."""
from pathlib import Path

import pandas as pd

DATA_DIR = Path(__file__).resolve().parent
source_path = DATA_DIR / "dairy_sales_50000.csv"
output_path = DATA_DIR / "powerbi_ready_sales.csv"

df = pd.read_csv(source_path, parse_dates=["Date"])
df["Year"] = df["Date"].dt.year
df["Month"] = df["Date"].dt.month
df["Month_Name"] = df["Date"].dt.strftime("%b")
df["Quarter"] = "Q" + df["Date"].dt.quarter.astype(str)
df["Profit_Margin_Pct"] = (
    df["Profit"] / df["Revenue"].where(df["Revenue"].ne(0)) * 100
).round(2)

columns = [
    "Date", "Year", "Quarter", "Month", "Month_Name", "Product", "Category",
    "Region", "Channel", "Customer_Type", "Unit_Price", "Units_Sold",
    "Discount_Pct", "Revenue", "Cost", "Profit", "Profit_Margin_Pct",
]
df[columns].to_csv(output_path, index=False)
print(f"Created {output_path} ({len(df):,} rows)")
