import pandas as pd

src = 'dairy_sales_50000.csv'
out = 'powerbi_ready_sales.csv'
df = pd.read_csv(src, parse_dates=['Date'])
df['Year'] = df['Date'].dt.year
df['Month'] = df['Date'].dt.month
df['Month_Name'] = df['Date'].dt.strftime('%b')
df['Quarter'] = 'Q' + df['Date'].dt.quarter.astype(str)
df['Profit_Margin_Pct'] = (df['Profit'] / df['Revenue'].replace(0, pd.NA) * 100).round(2)
columns = ['Date','Year','Quarter','Month','Month_Name','Product','Category','Region','Channel','Customer_Type','Unit_Price','Units_Sold','Discount_Pct','Revenue','Cost','Profit','Profit_Margin_Pct']
df[columns].to_csv(out, index=False)
print(f'Created {out}: {len(df):,} rows')
