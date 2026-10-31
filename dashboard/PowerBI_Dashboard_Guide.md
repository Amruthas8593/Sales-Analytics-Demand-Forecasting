# Power BI build guide

Import `data/powerbi_ready_sales.csv`. Follow the Power Query steps and DAX measures in `powerbi/`. The data model, report pages, filters and reconciliation checks are documented in `powerbi/README.md`.

Use the supplied Revenue, Cost and Profit fields. Do not calculate profit using a fixed margin. Create a marked Date table related to Sales[Date] for monthly comparisons.

The report should contain Overview, Product, Region & Channel, and Pricing pages. Reconcile headline totals against the imported CSV before publishing.

A native Power BI `.pbix` file is not included; this repository provides the import query, measures and build instructions.