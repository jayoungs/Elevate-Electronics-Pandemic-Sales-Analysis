<img width="2014" height="568" alt="ElevateElectronicsLogo" src="https://github.com/user-attachments/assets/6bd1e6b1-3669-4b34-bff3-8d8e14e57aef" alt="Company Logo"> 
Founded in 2018, Elevate Electronics is an e-commerce company that curates and sells a select range of electronic products at competitive prices, and has since rapidly expanded to a global customer base spanning 192 countries.<br />  
<br />
This project aims to:<br />  

  * Understand Elevate Electronics' performance during the period from 2019 to 2022, around the COVID-19 pandemic, and
  * Deliver insights on improvements across the company, including product, marketing, and sales teams.

**< Stakeholder Questions >**<br />

* What were the overall trends in sales during this time?<br />
* What were our monthly and yearly growth rates?<br />
* How was the new loyalty program performing? Should we keep using it?<br />

The key sales metrics used in this analysis were gross sales, average order value (AOV), and order count.<br /> 

**< Table of Contents >**  
* [About Data and Tools](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#about-data-and-tools)  
* [Executive Summary](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#executive-summary)  
* [Summary Insights](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#summary-insights)  
* [Deep Dive Insights on Underperformance in Q4 2022](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#deep-dive-insights-on-underperformance-in-q4-2022)  
* [Recommendations](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#recommendations-how-to-position-ourselves-unique-in-this-market)  
* [Caveats](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#caveats)  

## About Data and Tools

* The database structure, as seen below, consists of four tables: `orders`, `customers`, `geo_lookup`, and `order_status`. The main table for this analysis was compiled from these four tables, totaling 108,127 records.

<details>
<summary>ERD: Click to expand</summary> 
<img src="ERD.png" alt="Image" width="60%">
</details>
   
* Excel and SQL (BigQuery) were used for analysis, and Tableau was used for visualization.

## Executive Summary
* **Overall Sales Trends and Growth**: Gross sales surged in 2020, the first year of the COVID-19 pandemic, reaching a peak of $1.3M, and then declined gradually in 2021 and sharply in 2022 to return to the pre-pandemic level. A granular examination of monthly trends reveals underperformance in Q4 2022, even compared to the pre-pandemic level.
* **Volatility and Seasonality**: The month-over-month sales growth rate was volatile each year, not just during the pandemic years, and this could be related to seasonality, as evidenced by decreases in February and October and increases in September, November, and December.
* **Products**: The most popular products were 27in 4K Gaming Monitor, Apple Airpods Headphone, and MacBook Air Laptop. On the other hand, Bose Soundsport Headphone and Apple iPhone failed to meet sales expectations.
* **Region**: North America was the largest market in terms of both gross sales and order count. Meanwhile, APAC's highest AOV and sales growth in 2020 suggest a strong underlying potential.
* **Loyalty Program**: Since its launch in 2019, the program had exhibited a mixed performance trajectory, with underperforming results in the most recent months of 2022. However, its high growth rate in 2020 suggests its potential for impact. 
* **Reason behind Underperformance on Q4 2022**: Our existing customers had been disengaged over time, considering their long purchase hiatus, decreasing repeat purchase rate, and single-item purchase behavior. Additionally, the number of registrations plummeted throughout 2022.
  
## Summary Insights

### **Overall Sales Trends:**
<img src="https://github.com/user-attachments/assets/fb0665ce-3252-491d-994a-70f18e7f5a1c" alt="2020 Gross Sales Surged and Subsequently Declined to Pre-Pandemic Level. Gross Sales Growth was Persistenty Volatile Every Year, Not Limited to 2020">

* **2020 surge in all sales metrics** - gross sales, order count, and AOV: especially the highest growth in gross sales and order count occurred in March, when the pandemic hit and people started buying electronics to set up their home offices or cope with the lockdown.
* **Post-2020 sales decline**:
  * In 2021, gross sales and AOV started declining gradually, but order count momentum continued. This means that our customers placed more orders but for less expensive items compared to 2020.
  * In 2022, all metrics trended downwards to the pre-pandemic level or potentially worse across all products and regions.
* **Alarming Q4 2022 underperformance** compared to the 2019 gross sales average: October 2022 marked the lowest growth rate of -55.2%, and the sales increase during the following holiday season was insufficient to bounce back and reach at least the 2019 average level. Further analysis on Q4 2022 underperformance can be found [here](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#deep-dive-insights-on-underperformance-in-q4-2022).
* **Persistent MoM gross sales growth rate volatility and its possible link to seasonality**: both gross sales and order count showed a dip in February and October, and a surge in September and during November and December. This surge appears to be related to the back-to-school season, Labor Day sales, and the holiday season.
<img align="middle" width="800" length="800" alt="Image" src="https://github.com/user-attachments/assets/688939d6-d379-46f1-a6c1-8cc086aaa467" alt="Seasonality in Gross Sales: Decrease in Feb. and Oct. vs. Increase in Sep., Nov., and Dec.">
 
### **Product Segmentation:**
<img align="middle" width="1205" height="612" alt="Screenshot 2025-07-14 at 6 16 10 PM" src="https://github.com/user-attachments/assets/37721165-6198-4ec0-903e-7db8c4a4f422" />

* **Products that failed to achieve sales expectations**:
  * **Bose Soundsport Headphones**, since being introduced to the product line in 2020, had experienced the highest negative growth rates in both gross sales and order count over the following two years, ultimately resulting in only one order in 2022.
  * Surprisingly, **Apple iPhone** had underperformed despite its general popularity, accounting for less than 1% of both gross sales and order volume. The lack of product variation might be the possible reason behind this. We sell only one model with one color and storage capacity option, as opposed to 27in 4K Gaming Monitor and Apple Airpods Headphone, which offer at least 14 options.

     | <ins><sub>Apple iPhone</sub></ins> | <sub>Bose Soundsport Headphones</sub> | <sub>Macbook Air Laptop</sub> | <sub>Lenovo ThinkPad Laptop</sub> | <sub>Samsung Webcam</sub> | <sub>Samsung Charging Cable Pack</sub> | <sub>27in 4K Gaming Monitor</sub> | <sub>Apple Airpods Headphones</sub> |
     |:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
     |<ins><sub>1</sub></ins>|<sub>2</sub>|<sub>5</sub>|<sub>5</sub>|<sub>7</sub>|<sub>8</sub>|<sub>14</sub>|<sub>16</sub>|

 * **Product performance in Q4 2022** compared to the previous Q4: gross sales declined across all the products by a range of -51% (Lenovo ThinkPad Laptop) and -83% (MacBook Air Laptop).
  
### **Regional Segmentation:** 
<img align="middle" width="800" height="800" alt="Screenshot 2025-07-10 at 5 06 12 PM" src="https://github.com/user-attachments/assets/c9e45ddd-e59d-479c-95d6-d720e6c16721" />


* **Potential market opportunity in APAC**:
  * APAC Customers purchased more expensive products, compared to those in the other regions.
  * APAC showed the highest sales growth rate of 226% in 2020.
  * APAC has the largest total population of 4.8 billion people among the four regions.
* **Regional performance in Q4 2022** compared to the previous Q4: gross sales declined across all the regions by a range of -68% (NA) and -82% (APAC).

### **Loyalty Program:** 
<img align="middle" width="2398" height="1198" alt="loyalty program" src="https://github.com/user-attachments/assets/72274986-f155-4bdc-af95-cb66c6ece622" />

* Our loyalty program, launched in 2019, is designed for **customers who have created accounts and met a minimum purchase frequency**.
* **Mixed performance trajectory**: after the first two years, loyalty members finally outperformed non-loyalty members in all the sales metrics for at least 17 months throughout 2021 and 2022. However, this trend reversed again in the later months of 2022, with loyalty members experiencing a decline in performance across all metrics.
* **Unclear cause of the recent decrease** in loyalty member performance:
  * **The simultaneous decline in loyalty member performance and overall sales in Q4 2022** made it challenging to determine if the loyalty program itself was losing appeal or if its members were reflecting the broader market slowdown affecting all customer segments.
  * Loyalty members may have no other products in their interests, given our limited variety of eight different products and their proven purchase history.
* **Potential for impact**: The five-fold and twelve-fold growth in gross sales and order count, respectively, in 2020 indicates that the loyalty program, when effective, can significantly contribute to sales.
* We should **continue the loyalty program** for further observation and strategic refinement rather than discontinuing it prematurely.

## Deep Dive Insights on Underperformance in Q4 2022 

**Factor to consider**:  
Electronic products, such as gaming monitors and laptops, have a **long lifespan** of at least 3-5 years. Hence, to boost sales consistently, 1) keeping **existing customers** engaged to revisit and buy different products and 2) acquiring **new customers** are crucial.

#### Hypothesis 1. Had existing customers been disengaged over time? - Yes
> Here, we define existing customers as those who **placed at least one order between 2019 and 2022, whether as guests or members**.
* **Long hiatus** between the last purchase date and January 1, 2023: 79% of customers hadn't made another purchase since at least 13 months ago.
  |**Hiatus Period**|**Number of Customers**|**Percentage**|
  |---:|---:|---:|
  |<ins>24+ months</ins>|39,600| <ins>45%</ins> |
  |<ins>13-24 months</ins>|29,500|<ins>34%<ins> |
  |7-12 months|12,186|14%|
  |4-6 months|4,111|5%|
  |0-3 months|2,231|3%|
  
* **Declining repeat purchase rate** over the years: 20% (2019) > 19% (2020) > 18% (2021) > 15% (2022).
* **Single-item purchase behavior**: 94.6% of our customers purchased only one unique product, and 5.2% purchased two distinctive products.
  
    <details>
    <summary>SQL Queries: Click to expand</summary> 
    
    ```sql
    
  -- calculate purchase hiatus
    WITH calculate_inactivity AS (
      SELECT customer_id,
        MAX(purchase_ts) AS latest_purchase,
        DATE_DIFF('2023-01-01', MAX(purchase_ts), MONTH) AS inactive_period
      FROM core.orders
      GROUP BY 1),
    aggregate_customer_num AS (
      SELECT (CASE 
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

    SELECT inactive_period_category,
      num_customers,
      SUM(num_customers) OVER () AS total_num,
      ROUND(100.00 * num_customers / SUM(num_customers) OVER (), 2) AS percentage
    FROM aggregate_customer_num
    ORDER BY 1;

    -- calculate repeat purchase rate per year
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
    
    -- the number of unique products customers purchased
    WITH cleaned_table AS (
      SELECT customer_id, 
        (CASE
        WHEN product_name LIKE "27%" THEN "27in 4K Gaming Monitor"
        WHEN product_name LIKE "bose%" THEN INITCAP(product_name)
        ELSE product_name
        END) AS product_name_cleaned
    FROM core.orders),
    product_per_customer AS (
      SELECT customer_id,
        COUNT(DISTINCT product_name_cleaned) AS num_unique_product_purchased
      FROM cleaned_table
      GROUP BY 1) 
    
    SELECT num_unique_product_purchased,
      COUNT(customer_id) AS num_customers
    FROM product_per_customer
    GROUP BY 1 
    ORDER BY 1 DESC;
    
    ```
    </details>

#### Hypothesis 2. Had we had fewer new registered users over time? - Yes, but Further Investigation Required
> With the given data, which does not contain orders made before 2019, it's not possible to determine new customers, whether registered or not, who made their first purchase
> during the period 2019-2022. Given this limitation, this analysis focused on **newly registered users who created accounts between 2019 and 2022, regardless of whether they made
> a purchase or not.**

(chart)
* A plummet in customer registrations through our most successful channel, direct marketing, in 2022: however, it's **unclear whether this downfall was related to the direct marketing performance itself or whether visitors were not being sufficiently appealed to sign up.** Further investigation on marketing performance and customer journey is needed.
  
    <details>
    <summary>SQL Queries: Click to expand</summary> 
    
    ```sql

    -- how many customers created accounts per year
    SELECT DATE_TRUNC(created_on, month) AS month,
      COUNT(DISTINCT id) AS unique_customer_count
    FROM core.customers 
    WHERE EXTRACT(YEAR FROM created_on) BETWEEN 2019 AND 2022
    GROUP BY 1
    ORDER BY 1;
    
    -- how would the results be different by marketing channel?
    WITH customers_cleaned AS (
      SELECT 
        id,
        COALESCE(marketing_channel, "unknown") AS marketing_channel_cleaned,
        created_on
      FROM core.customers
      WHERE EXTRACT(YEAR FROM created_on) BETWEEN 2019 AND 2022)
    
    SELECT marketing_channel_cleaned,
      DATE_TRUNC(created_on, month) AS month,
      COUNT(DISTINCT id) AS unique_customer_count
    FROM customers_cleaned
    GROUP BY 1, 2
    ORDER BY 1, 2;
    
    ```
    </details>

## Recommendations
#### Product Team
* **Widen product variety**:
  * **Prepare product upgrades** for our top-selling products, the 27in 4K Gaming Monitors and MacBook Air Laptops, by conducting market research on the current popularity and profitability potential.
  * **Introduce new products** 1) in a **lower price range** (under $500) that customers could purchase with less hesitation and financial risk, and 2) for **cross-selling**: e.g., gaming keyboards, gaming headsets, or (gaming) mouse.
 
    |<sub>**AOV Range**</sub>|<sub>**Products** (* Top 3 Products Underlined)</sub>|
    |:---|:---|
    |<sub>Under $100</sub>|<sub>Samsung Charging Cable Pack ($20), Samsung Webcam ($50)</sub>|
    |<sub>$100+</sub>|<sub>Bose Soundsport Headphones ($124), <ins>Apple Airpods Headphones ($160)</ins>, <ins>27in 4K Gaming Monitor ($421)</ins></sub>|
    |<sub>$500+</sub>|<sub>Apple iPhone ($741)</sub>|
    |<sub>$1000+</sub>|<sub>Lenovo ThinkPad Laptop ($1,100), <ins>Macbook Air Laptop ($1,588)</ins></sub>|

* Extend product variations for Apple iPhone in terms of models, colors, and storage capacity.
* Discontinue Bose Soundsport Headphones.
  
#### Marketing Team
* Refine seasonal marketing strategies for the back-to-school season and holidays.
* Target APAC customers for high-ticket products.
* Plan personalized promotions for product upgrades targeting customers who purchased gaming monitors and laptops in our first year, 2018.
* Launch a referral program to capitalize on our expanded customer base to acquire new customers.
* Map our customer journey to further understand their experience, pain points, and motivations behind their decisions by
  * Surveying customers after their purchase or people who didn't buy, and/or
  * Using data on visitor & customer website/app behavior and marketing email behavior.
* Further analyze our marketing channel performance to determine its impact on leads, registrations, and customer acquisition.
* Develop tailored promotions for registered but disengaged users based on the fact that:
  * Only 13% of customers who created accounts made a purchase within one month, and 70% made a purchase within one to three months.
  * 269 registered users hadn't yet made any purchase.<br />
  <br />
  
  <details>
  <summary>SQL Queries: Click to expand</summary> 
    
  ```sql

  -- Calculate time to purhcase from account creation, categorized in months
  WITH earliest_purchase AS (
  SELECT DISTINCT c.id,
    c.created_on,
    MIN(o.purchase_ts) AS earliest_purchase_date
  FROM core.customers c
  LEFT JOIN core.orders o
    ON c.id = o.customer_id
  WHERE c.created_on <= o.purchase_ts AND EXTRACT(YEAR FROM c.created_on) BETWEEN 2019 AND 2022
  GROUP BY 1, 2), -- 61664
  cal_month_diff AS (
  SELECT id,
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
  SELECT month_to_purchase,
    total_num_customers,
    COUNT(month_to_purchase) AS num_customers
  FROM recategorized
  GROUP BY 1, 2
  ORDER BY 1)
  
  SELECT month_to_purchase,
    num_customers,
    ROUND(100.00 * num_customers / total_num_customers, 2) AS percentage
  FROM customers_per_category
  ORDER BY 3 DESC;

  -- Identify customers who created account but hadn't made any purchase yet
  SELECT COUNT(DISTINCT customers.id) AS customer_no_purchase
  FROM core.customers 
  WHERE NOT EXISTS (
    SELECT orders.customer_id
    FROM core.orders 
    WHERE customers.id = orders.customer_id);
  
  ```
  </details>

#### Sales Team
* Conduct surveys or interviews with top customers, based on total spend, who had purchased multiple laptops. This suggests the potential presence of small business customers.

   <details>
   <summary>Top 3 Customers: Click to expand</summary> 
    
   |Customer ID|Purchase Date|Products|Total Spend|
   |:---:|:---:|:---:|:---:|
   |5d678d3d|2022-05-27, 2019-12-23, 2019-12-23, 2019-02-17|Macbook Air Laptop, Macbook Air Laptop, Macbook Air Laptop, Macbook Air Laptop|7,200|
   |5af6c8a2|2022-06-16, 2019-06-27, 2019-01-24, 2019-01-24|ThinkPad Laptop, Macbook Air Laptop, Macbook Air Laptop, Macbook Air Laptop|6,256|
   |b8a3621b|2020-12-24, 2020-12-24, 2020-12-24|Macbook Air Laptop, Macbook Air Laptop, Macbook Air Laptop|6,022|
   
   </details>
  
   <details>
   <summary>SQL Queries: Click to expand</summary> 
   
    ```sql 
     WITH clean_table AS (
       SELECT customer_id,
         (CASE
           WHEN product_name LIKE "27%" THEN "27in 4K Gaming Monitor"
           WHEN product_name LIKE "bose%" THEN INITCAP(product_name)
           ELSE product_name
           END) AS product_name_cleaned,
           id,
           purchase_ts,
           usd_price
       FROM core.orders)
     
     SELECT customer_id,
       STRING_AGG(CAST(purchase_ts AS STRING), ', ') AS purchase_dates,
       STRING_AGG(product_name_cleaned, ', ') AS unique_products,
       COUNT(id) AS total_order_count,
       ROUND(SUM(usd_price), 0) AS total_spend,
     FROM clean_table
     GROUP BY 1
     ORDER BY total_spend DESC
     LIMIT 5;
   ```
   </details>


## Caveats
* Profit is missing as a key sales metric in this analysis due to the limitations of the data. Profit analysis should be followed.
* If time and data were available, customer segmentation would have provided valuable insights to help us understand the diverse needs and preferences of our customers.
* To follow up on underperformance in Q4 2022, we should analyze more recent data from 2023 on.
* Improve data integrity and quality.

  
## Tableau Interactive Dashboard
