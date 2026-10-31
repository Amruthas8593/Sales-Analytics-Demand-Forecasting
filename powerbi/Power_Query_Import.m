// Power Query M: import the Power BI-ready CSV.
// Replace the path with the location where you saved data/powerbi_ready_sales.csv.
let
    Source = Csv.Document(
        File.Contents("C:\\REPLACE_WITH_YOUR_PATH\\powerbi_ready_sales.csv"),
        [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]
    ),
    Headers = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    Types = Table.TransformColumnTypes(Headers, {
        {"Date", type date}, {"Year", Int64.Type}, {"Quarter", type text},
        {"Month", Int64.Type}, {"Month_Name", type text}, {"Product", type text},
        {"Category", type text}, {"Region", type text}, {"Channel", type text},
        {"Customer_Type", type text}, {"Unit_Price", type number},
        {"Units_Sold", Int64.Type}, {"Discount_Pct", type number},
        {"Revenue", type number}, {"Cost", type number}, {"Profit", type number},
        {"Profit_Margin_Pct", type number}
    })
in
    Types
