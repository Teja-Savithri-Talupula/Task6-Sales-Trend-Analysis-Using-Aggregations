create database Online_sales;
USE Online_sales;
Select * from orders;

SELECT 
Extract(MONTH from order_date) AS month,
Extract(YEAR from order_date) AS year,
SUM(total_price) AS total_revenue,
COUNT(DISTINCT order_id) AS order_volume
FROM orders
group by order_date
ORDER by order_date;

SELECT 
Extract(MONTH from order_date) AS month,
Extract(YEAR from order_date) AS year,
SUM(total_price) AS total_revenue,
COUNT(DISTINCT order_id) AS order_volume
FROM orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-11-31'
group by order_date
ORDER by order_date;

