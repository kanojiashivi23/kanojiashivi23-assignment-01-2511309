## ETL Decisions

### Decision 1 - Standardizing Date Formats

Problem:
The raw dataset had inconsistent date formats such as 29/08/2023, 12-12-2023, and 2023-02-05. These different formats can cause errors when loading data into a warehouse or performing time-based analysis.

Resolution:
All dates were converted into a single standardized format YYYY-MM-DD. This format is widely supported by SQL databases and makes it easier to perform sorting, filtering, and monthly aggregation in analytical queries.06


### Decision 2 - Fixing Category Casing

Problem:
Product categories in the raw data had inconsistent capitalization such as electronics, Electronics, and ELECTRONICS. This would cause the warehouse to treat them as different categories during analysis.

Resolution:
All category values were standardized into consistent title case such as Electronics, Clothing, and Groceries. This ensures accurate grouping when calculating sales by category.


### Decision 3 - Handling NULL or Missing Values

Problem:
Some records contained NULL values in important fields like product category or price. Missing values can cause incorrect calculations or failed data loads.

Resolution:
Missing values were either cleaned or replaced with valid defaults before loading into the warehouse. Records with critical missing information were corrected or excluded to maintain data quality.



