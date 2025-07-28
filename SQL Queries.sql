-- BigQuery Script Used for Deep Dive Insights and Recommendations

-- <Deep Dive Insights on Underperformance in Q4 2022>

-- Hypothesis 1. Had existing customers been disengaged over time?

--> 1) calculate purchase hiatus

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

--> 2) calculate repeat purchase rate per year

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

--> 3) obtain the distribution of unique products customers purchased

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


-- <Recommendations>

-- 1) for marketing team: obtain the customer distribution of time to purchase in months 


WITH earliest_purchase AS (
  SELECT 
    DISTINCT c.id,
    c.created_on,
    MIN(o.purchase_ts) AS earliest_purchase_date
  FROM core.customers c
  LEFT JOIN core.orders o
    ON c.id = o.customer_id
  WHERE c.created_on <= o.purchase_ts AND EXTRACT(YEAR FROM c.created_on) BETWEEN 2019 AND 2022
  GROUP BY 1, 2), -- 61664

cal_month_diff AS (
  SELECT 
    id,
    DATE_DIFF(earliest_purchase_date, created_on,MONTH) AS month_diff
  FROM earliest_purchase),

recategorized AS (
  SELECT id,
    (CASE
      WHEN month_diff = 0 THEN "Less Than 1 Month"
      WHEN month_diff BETWEEN 1 AND 3 THEN "1 ~ 3 Months"
      WHEN month_diff BETWEEN 4 AND 6 THEN "4 ~ 6 Months"
      WHEN month_diff BETWEEN 6 AND 12 THEN  "6 ~ 12 Months"
      ELSE "12+ Months" 
      END) AS month_to_purchase,
    COUNT(id) OVER () AS total_num_customers
  FROM cal_month_diff),

customers_per_category AS (
  SELECT 
    month_to_purchase,
    total_num_customers,
    COUNT(month_to_purchase) AS num_customers
  FROM recategorized
  GROUP BY 1, 2
  ORDER BY 1)
  
SELECT 
  month_to_purchase,
  num_customers,
  ROUND(100.00 * num_customers / total_num_customers, 2) AS percentage
FROM customers_per_category
ORDER BY 3 DESC;


-- 2) for marketing team:identify customers who created accounts but did not make any purchase

SELECT 
  COUNT(DISTINCT customers.id) AS customer_no_purchase
FROM core.customers 
WHERE NOT EXISTS (
  SELECT orders.customer_id
  FROM core.orders 
  WHERE customers.id = orders.customer_id);

-- 3) for sales team: identify top 5 customers based on their total spend

WITH clean_table AS (
  SELECT 
    customer_id,
    (CASE
      WHEN product_name LIKE "27%" THEN "27in 4K Gaming Monitor"
      WHEN product_name LIKE "bose%" THEN INITCAP(product_name)
      ELSE product_name
      END) AS product_name_cleaned,
    id,
    purchase_ts,
    usd_price
  FROM core.orders)
     
SELECT 
  customer_id,
  STRING_AGG(CAST(purchase_ts AS STRING), ', ') AS purchase_dates,
  STRING_AGG(product_name_cleaned, ', ') AS unique_products,
  COUNT(id) AS total_order_count,
  ROUND(SUM(usd_price), 0) AS total_spend,
FROM clean_table
GROUP BY 1
ORDER BY total_spend DESC
LIMIT 5;
