"""Generate the 50,000-row dairy sales dataset used by this project."""
import numpy as np
import pandas as pd

rng = np.random.default_rng(42)
n = 50_000
dates = pd.date_range("2023-01-01", "2025-12-31", freq="D")
products = ["Milk", "Curd", "Paneer", "Butter", "Cheese", "Yogurt", "Ghee", "Buttermilk", "Cream", "Flavored Milk"]
categories = {"Milk":"Fresh Dairy", "Curd":"Fermented Dairy", "Paneer":"Fresh Dairy", "Butter":"Dairy Fat", "Cheese":"Processed Dairy", "Yogurt":"Fermented Dairy", "Ghee":"Dairy Fat", "Buttermilk":"Beverage", "Cream":"Fresh Dairy", "Flavored Milk":"Beverage"}
prices = {"Milk":2.2, "Curd":1.6, "Paneer":5.8, "Butter":4.2, "Cheese":6.5, "Yogurt":2.8, "Ghee":8.5, "Buttermilk":1.4, "Cream":3.6, "Flavored Milk":2.5}
regions = ["North", "South", "East", "West", "Central"]
channels = ["Retail Store", "Supermarket", "Online", "Wholesale"]

df = pd.DataFrame({
    "Date": rng.choice(dates, n),
    "Product": rng.choice(products, n, p=[.16,.12,.10,.10,.10,.10,.07,.08,.07,.10]),
    "Region": rng.choice(regions, n),
    "Channel": rng.choice(channels, n, p=[.30,.30,.20,.20]),
})
df["Category"] = df["Product"].map(categories)
df["Unit_Price"] = df["Product"].map(prices) * rng.normal(1, .06, n)
season = 1 + .12 * np.sin(2 * np.pi * df["Date"].dt.dayofyear / 365.25)
dow = 1 + .06 * (df["Date"].dt.dayofweek >= 5)
product_factor = df["Product"].map({"Milk":1.35,"Curd":1.15,"Paneer":.9,"Butter":.8,"Cheese":.75,"Yogurt":1.0,"Ghee":.55,"Buttermilk":1.2,"Cream":.7,"Flavored Milk":1.05})
channel_factor = df["Channel"].map({"Retail Store":1.0,"Supermarket":1.15,"Online":.9,"Wholesale":1.45})
df["Units_Sold"] = np.maximum(1, np.round(rng.poisson(45, n) * season * dow * product_factor * channel_factor)).astype(int)
df["Discount_Pct"] = np.round(np.clip(rng.normal(8, 4, n), 0, 25), 1)
df["Revenue"] = np.round(df["Units_Sold"] * df["Unit_Price"] * (1 - df["Discount_Pct"] / 100), 2)
cost_factor = df["Category"].map({"Fresh Dairy":.68,"Fermented Dairy":.60,"Dairy Fat":.58,"Processed Dairy":.63,"Beverage":.52})
df["Cost"] = np.round(df["Revenue"] * cost_factor * rng.normal(1, .04, n), 2)
df["Profit"] = np.round(df["Revenue"] - df["Cost"], 2)
df["Customer_Type"] = rng.choice(["Regular", "New", "Wholesale"], n, p=[.55,.25,.20])
df.sort_values("Date").to_csv("dairy_sales_50000.csv", index=False)
print("Generated", len(df), "rows")
