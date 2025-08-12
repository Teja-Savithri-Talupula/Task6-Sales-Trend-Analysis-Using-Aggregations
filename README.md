Task 6: Sales Trend Analysis Using Aggregations

📌 Objective
Analyze monthly revenue and order volume from the `online_sales` dataset using SQL aggregation functions.


🛠 Tools & Technologies
- Database: MySQL
- Language: SQL
- Dataset Table: `orders`


📂 Dataset Description
The dataset contains sales transaction data with the following relevant fields:
- `order_id` – Unique identifier for each order
- `order_date` – Date the order was placed
- `total_price` – Total price of the order (used for revenue calculation)
- `product_id` – Identifier for the product purchased


📊 Requirements
1. Extract month and year from the `order_date`.
2. Group results by Orders_date.
3. Calculate:
   - Total Revenue → `SUM(total_price)`
   - Order Volume → `COUNT(DISTINCT order_id)`
4. Sort results chronologically using `ORDER BY`.
5. Filter results for a specific date range using `WHERE`.


📝 SQL Queries

1. Monthly Revenue & Order Volume
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY orders_date
ORDER BY orders_date;


How to Run

Create a database named Online_sales.
Import the dataset into the orders table.
Run the provided SQL scripts in MySQL Workbench, PostgreSQL, or SQLite.
View the results table to analyze sales trends.


✅ Key Learnings

Using EXTRACT() to retrieve year and month from dates.
Grouping and aggregating data for trend analysis.
Applying SUM() and COUNT(DISTINCT) for key metrics.
Filtering and sorting aggregated data efficiently.


📂 Files in Repository

task6-STA-Aggregations.sql → Contains all SQL queries executed for this task. 
output_screenshots/ → Contains screenshots of query results. 
README.md → This documentation.
