# Power BI implementation

## Import
Run `python data/generate_dataset.py` and `python data/prepare_powerbi.py` from the repository root. Import `data/powerbi_ready_sales.csv`. The Power Query script in this folder includes the expected column types; replace its sample file path with your local CSV path.

## Data model
Create a calendar table, mark it as the Date table, and create a one-to-many relationship from `Date[Date]` to `Sales[Date]`. Use a single-direction relationship from Date to Sales.

Example calendar table (DAX):
```dax
Date = CALENDAR(MIN(Sales[Date]), MAX(Sales[Date]))
Year = YEAR('Date'[Date])
Month Number = MONTH('Date'[Date])
Month = FORMAT('Date'[Date], "MMM")
Year Month = FORMAT('Date'[Date], "YYYY-MM")
```
Sort Date[Month] by Date[Month Number] and Date[Year Month] by Date[Date].

## Measures
Use the measures in `Sales_Measures.dax`. Profit margin must be calculated as total profit divided by total revenue; do not average row-level margin percentages.

## Pages
1. **Overview:** Total Revenue, Total Profit, Units Sold, Transactions, monthly revenue and profit trend, revenue by category.
2. **Product:** Revenue and profit by product, units sold, profit margin by product.
3. **Region & Channel:** Revenue, profit and units by region and channel.
4. **Pricing:** Average discount, revenue and profit by discount band, unit price vs units sold.

## Slicers
Date, product, category, region, channel and customer type.

## Validation
Check that total revenue, cost and profit in Power BI match the source CSV totals. Confirm date sorting, filter interactions and blank values. The repository contains build instructions and measures, not a native `.pbix` report file.
