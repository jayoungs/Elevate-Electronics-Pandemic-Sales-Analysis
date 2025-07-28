-- BigQuery script related to Deep Dive Insights on Underperformance in Q4 2022 

-- Hypothesis 1. Had existing customers been disengaged over time?

--> 1) purchase hiatus

WITH calculate_inactivity AS (
  SELECT 
    customer_id,
    MAX(purchase_ts) AS latest_purchase,
    DATE_DIFF('2023-01-01', MAX(purchase_ts), MONTH) AS inactive_period
  FROM core.orders
  GROUP BY 1),

aggregate_customer_num AS (
  SELECT 
    (CASE 
      WHEN inactive_period <=3 THEN '0-3 months'
      WHEN inactive_period BETWEEN 4 AND 6 THEN '4-6 months'
      WHEN inactive_period BETWEEN 7 AND 12 THEN '7-12 months'
      WHEN inactive_period BETWEEN 13 AND 24 THEN '13-24 months'
      ELSE '24+ months'
      END) AS inactive_period_category,
    COUNT(customer_id) AS num_customers
  FROM calculate_inactivity
  GROUP BY 1
  ORDER BY 1)

SELECT 
  inactive_period_category,
  num_customers,
  SUM(num_customers) OVER () AS total_num,
  ROUND(100.00 * num_customers / SUM(num_customers) OVER (), 2) AS percentage
FROM aggregate_customer_num
ORDER BY 1;

--> 2) repeat purchase rate per year

WITH customers_per_year AS (
  SELECT 
    EXTRACT(YEAR FROM purchase_ts) AS year,
    COUNT(DISTINCT customer_id) AS total_num_customers
  FROM core.orders
  GROUP BY 1),

repeat_purchase_customer AS (
SELECT EXTRACT(YEAR FROM purchase_ts) AS year,
  customer_id,
  COUNT(DISTINCT id) AS order_count
FROM core.orders
GROUP BY 1, 2
HAVING order_count >= 2)
  
SELECT repeat_purchase_customer.year,
  total_num_customers,
  COUNT(DISTINCT customer_id) AS num_customer_repeat_purchase,
  ROUND(100.00 * COUNT(DISTINCT customer_id) / total_num_customers, 2) AS percentage
FROM repeat_purchase_customer
LEFT JOIN customers_per_year
  ON repeat_purchase_customer.year = customers_per_year.year
GROUP BY 1, 2
ORDER BY 1;

--> 3) the distribution of unique products customers purchased

WITH cleaned_table AS (
  SELECT 
    customer_id, 
    (CASE
      WHEN product_name LIKE "27%" THEN "27in 4K Gaming Monitor"
      WHEN product_name LIKE "bose%" THEN INITCAP(product_name)
      ELSE product_name
      END) AS product_name_cleaned
  FROM core.orders),

product_per_customer AS (
  SELECT 
    customer_id,
    COUNT(DISTINCT product_name_cleaned) AS num_unique_product_purchased
  FROM cleaned_table
  GROUP BY 1) 
    
SELECT 
  num_unique_product_purchased,
  COUNT(customer_id) AS num_customers
FROM product_per_customer
GROUP BY 1 
ORDER BY 1 DESC;

-- Hypothesis 2. Had we had fewer newly registered users over time?

--> 1) how many customers created accounts per year?

SELECT 
  DATE_TRUNC(created_on, month) AS month,
  COUNT(DISTINCT id) AS unique_customer_count
FROM core.customers 
WHERE EXTRACT(YEAR FROM created_on) BETWEEN 2019 AND 2022 
GROUP BY 1
ORDER BY 1;

--> 2) how about grouping the above results by marketing channel?

WITH customers_cleaned AS (
  SELECT 
    id,
    COALESCE(marketing_channel, "unknown") AS marketing_channel_cleaned,
    created_on
  FROM core.customers
  WHERE EXTRACT(YEAR FROM created_on) BETWEEN 2019 AND 2022)
    
SELECT 
  marketing_channel_cleaned,
  DATE_TRUNC(created_on, month) AS month,
  COUNT(DISTINCT id) AS unique_customer_count
FROM customers_cleaned
GROUP BY 1, 2
ORDER BY 1, 2;