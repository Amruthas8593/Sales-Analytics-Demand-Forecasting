# Power BI report build notes

## Source
Import `data/powerbi_ready_sales.csv`. Run the two scripts in `data/` first to regenerate the source and reporting files.

## Report pages

### Sales overview
- Revenue, profit, units sold and transaction count
- Monthly revenue and profit trend
- Revenue and profit by category

### Product performance
- Product revenue and profit ranking
- Units sold by product
- Profit margin by product

### Region and channel
- Revenue, profit and units sold by region
- Revenue and profit by channel
- Transaction count by channel

### Pricing
- Revenue and profit by discount band
- Unit price and units sold by product
- Profit margin by product and category

## Filters
Date, product, category, region, channel and customer type.

## Measures
Use the supplied Revenue, Cost and Profit columns. Calculate profit margin as total profit divided by total revenue; do not average row-level percentages for an overall margin.

## Notes
The data is generated for this portfolio project. It is suitable for demonstrating analysis and report design, not for making claims about a real dairy business.
