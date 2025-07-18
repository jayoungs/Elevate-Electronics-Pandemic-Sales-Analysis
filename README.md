<img align="left" src="https://github.com/user-attachments/assets/4dc8bae9-5640-4614-bc6a-92272de9a069" alt="Company Logo" width="15%" length="15%"> 
Founded in 2018, Elevate Electronics is an e-commerce company that curates and sells selective electronic products and accessories at a competitive price and has since rapidly expanded to a global customer base from 192 countries.    
This project aims to:  
   * Understand Elevate Electronics' performance during the period from 2019 to 2022, around the pandemic, and
   * Deliver insights on improvements across the company to differentiate itself in the highly competitive market and build loyalty among its growing customer base.

**< Stakeholder Questions >**
* What were the overall trends in sales during this time?
* What were our monthly and yearly growth rates?
* How was the new loyalty program performing? Should we keep using it?

The key sales metrics used in this analysis were gross sales, average order value (AOV), and order count. 

**< Table of Contents >**  
* [About Data and Tools](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#about-data-and-tools)  
* [Executive Summary](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#executive-summary)  
* [Summary Insights](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#summary-insights)  
* [Deep Dive Insights on Underperformance in Q4 2022](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#deep-dive-insights-on-underperformance-in-q4-2022)  
* [Recommendations](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#recommendations-how-to-position-ourselves-unique-in-this-market)  
* [Caveats](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#caveats)  

## About Data and Tools

* The database structure, as seen below, consists of four tables: `orders`, `customers`, `geo_lookup`, and `order_status`. The main table for this analysis was consolidated from these four tables with a total of 108,127 records. 

<details>
<summary>ERD: Click to expand</summary> 
<img src="ERD.png" alt="Image" width="60%">
</details>
   
* Excel and SQL(BigQuery) were used for analysis and Tableau for visualization.

## Executive Summary
* Gross sales surged in 2020, the first year of the Covid-19 pandemic, with a peak at $1.3M and then declined gradually in 2021 and sharply in 2022 to the pre-pandeic level. AOV and order count also followed the similar trends, except for the fact that order count continued increasing in 2021. A granular examination of monthly trends reveals underperformance in Q4 2022 even compared to the pre-pandemic level.  
* The month-over-month sales growth rate was volitle each year, not limited to the pandemic years, and seaonally, decreases in February and October and increases in September, November, and December were noticeable.
* The most popular products were 27in 4K Gaming Monitor, Apple Airpods Headphone, and Macbook Air Notebook. On the other hand, Bose Soundsport Headphone and Apple iPhone failed to meet sales expectations.
* North America was the largest market in terms of both gross sales and order count while APAC's highest AOV and sales growth in 2020 suggests a strong underlying potential.
* loyalty:
* deeper insight son underperformance on q4 2022:
  
## Summary Insights

### **Overall Sales Trends:**
<img src="https://github.com/user-attachments/assets/fb0665ce-3252-491d-994a-70f18e7f5a1c" alt="2020 Gross Sales Surged and Subsequently Declined to Pre-Pandemic Level. Gross Sales Growth was Persistenty Volatile Every Year, Not Limited to 2020">

* **2020 surge in all sales metrics - gross sales, order count, and AOV**: especially the highest growth in gross sales and order count happened in March when the pandemic hit and people started buying electronics to set up their home offices or deal with the lockdown.
* **Post-2020 sales decline**: 
    * In 2021, gross sales and AOV started declining, but order count momentum continued. Our customers placed more orders but for less expensive items compared to 2020.
    * In 2022, all metrics trended downwards to **pre-pandemic level or potentially worse** across all products and regions.
* **Alarming Q4 2022 underperformance** compared to 2019 gross sales average: October 2022 marked the lowest growth rate of -55.2%, and the sales increase during the following holiday season was not sufficient enough to bounce back and reach at least the 2019 average level. Further analysis on Q4 2022 underperformance can be found [here](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#deep-dive-insights-on-underperformance-in-q4-2022).
* **Persistent MoM gross sales growth rate volatility and its possible link to seasonality**: both gross sales and order count showed a dip in February and October and a surge in September and during November and December. This surge could be related to the school and holiday seasons.
<img align="middle" width="800" length="800" alt="Image" src="https://github.com/user-attachments/assets/688939d6-d379-46f1-a6c1-8cc086aaa467" alt="Seasonality in Gross Sales: Decrease in Feb. and Oct. vs. Increase in Sep., Nov., and Dec.">
  
[image:  + excel conditional formatting monthly table] 
 
### **Product Segmentation:**
<img align="middle" width="1205" height="612" alt="Screenshot 2025-07-14 at 6 16 10 PM" src="https://github.com/user-attachments/assets/37721165-6198-4ec0-903e-7db8c4a4f422" />

* **Products that failed to achieve sales expectations**:
   * **Bose Soundsport Headphones**, ever since it was brought into the product line in 2020, had had the highest negative growth rates in sales, ending up with only one order in 2022. 
   * Surprisingly, **Apple iPhone** had underperformed despite its general popularity and higher price range, only accounting for less than 1% in both gross sales and order count. The **lack of the product variation** might be the possible reason behind this. We sell only one model with one color and storage capacity option as opposed to 27in 4K Gaming Monitor and Apple Airpods Headphone with at least 14 options.

     | <ins><sub>Apple iPhone</sub></ins> | <sub>Bose Soundsport Headphones</sub> | <sub>Macbook Air Laptop</sub> | <sub>Lenovo ThinkPad Laptop</sub> | <sub>Samsung Webcam</sub> | <sub>Samsung Charging Cable Pack</sub> | <sub>27in 4K Gaming Monitor</sub> | <sub>Apple Airpods Headphones</sub> |
     |:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
     |<ins><sub>1</sub></ins>|<sub>2</sub>|<sub>5</sub>|<sub>5</sub>|<sub>7</sub>|<sub>8</sub>|<sub>14</sub>|<sub>16</sub>|

* **Product performance in Q4 2022** compared to the previous Q4: gross sales declined across all the products by a range of -51% (ThinkPad Laptop) and -83% (Macbook Air Laptop).
  [maybe add a conditional formatting table?]
  
### **Regional Segmentation:** 
<img align="middle" width="800" height="800" alt="Screenshot 2025-07-10 at 5 06 12 PM" src="https://github.com/user-attachments/assets/c9e45ddd-e59d-479c-95d6-d720e6c16721" />


* **Potential market opportunity in APAC**:
   * Customers in APAC purchased more expensive products, compared to those in the other regions.
   * APAC showed the highest sales growth rate of 226% in 2020.
   * APAC has the largest total population of 4.8 billion people among the four regions.
* **Regional performance in Q4 2022** compared to the previous Q4: gross sales declined across all the regions by a range of -68% (NA) and -82% (APAC).

   [maybe add a conditional formatting table?]

### **Loyalty Program:** 
<img align="middle" width="2398" height="1198" alt="loyalty program" src="https://github.com/user-attachments/assets/72274986-f155-4bdc-af95-cb66c6ece622" />

* Our loyalty program was introduced in 2019 for **customers who created accounts and fulfilled minimum purhcase frequency**.
* **Mixed performance**: after the first two years, loyalty members finally outperformed non-loyalty members in all the sales metrics for at least 17 months throughout 2021 and 2022. However, this trend reversed again in later months in 2022 with loyalty members experiencing a decline in performance across all metrics.
* **Unclear cause of the recent decline in loyalty member performance**:
   * The simultaneous decline in loyalty member performance and overall sales in Q4 2022 makes it challenging to determine if the loyalty program itself was losing appeal or if its members were simply reflecting the broader market slowdown affecting all customer segments.
   * Loyalty members might simply have no other products to buy from our product variety of 8 different products.
* **Potential for impact**: The five-fold and twelve-fold growth in gross sales and order count respectively indicate that the loyalty program, when effective, can significantly contribute to sales.
* We should **continue the loyalty program** for further observation and strategic refinement rather than discontinuing it prematurely.

### Customer Behavior Analysis

* Top 5 Customer Behavior in terms of spend (untapped potential): each of them all purchased 3-4 laptops within 4 years. there might be a possibility that they were  small businesses. Investigate further to determine and develop B2B strategies.
* Top 5 Customer Behavior in terms of order count
* how many registered customers? how many customers, registered or not, purchased? 
* Inactive customers and low customer engagement confirmed:
    * 83% of customers who created accounts purchased products within three months, including 13% of those who did in less than one month.
    * 269 registered customers with no purchase history yet.
* purchase frequency:
* how many prodcuts did they buy?

## Deep Dive Insights on Underperformance in Q4 2022 

> **Factors to consider**:  
> Electronic products, such as our top products - gaming monitors and latops -, have **a long lifespan** of at least 3-5 years. Hence,to boost sales,
> whether **existing customers** stay engaged - by revisiting to **buy different products** - and attracting **new customers** to our
> platform is crucial. 

#### Hypothesis 1. Were existing customers no longer active over time? - Yes
> Here, we define exiting customers as those whoever placed at least one order from 2019 to 2022, guests or members who created accounts.
* **Long hiatus** between the last purchase date and January 1, 2023: 79% of customers hadn't made another purchase since their last order from at least 13 months ago.
  |`Hiatus Period`|<sub>Number of Customers</sub>|<sub>Percentage</sub>|
  |---:|---:|---:|
  | <ins><sub>24+ months</sub></ins> |<sub>39,600</sub>| <ins><sub>45%</sub></ins> |
  | <ins><sub>13-24 months</sub></ins> |<sub>29,500</sub>|<ins><sub>34%</sub><ins> |
  |<sub>7-12 months</sub>|<sub>12,186</sub>|<sub>14%</sub>|
  |<sub>4-6 months</sub>|<sub>4,111</sub>|<sub>5%</sub>|
  |<sub>0-3 months</sub>|<sub>2,231</sub>|<sub>3%</sub>|
* **Declining repeat purchase rate** over the years: 20% (2019) > 19% (2020) > 18% (2021) > 15% (2022).
* **Single-item purchase behavior**: 94.6% of our customers only purchased one unique product and 5.2% two unique products.

    <details>
    <summary>SQL queries: Click to expand</summary> 
    
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

#### Hypothesis 2. Were fewer newly registered customers coming in over time? - Yes
==(graphs showing both?)==
* Declining number of registered customers in an accelerated pace during 2021 and 2022: hit low at 36 in December 2022.
* Customers from the most successful channel, direct marketing, showed the similar pattern with a plummet in its effect from March 2022 on.
  
    <details>
    <summary>SQL queries: Click to expand</summary> 
    
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


## Recommendations: how to position ourselves unique in this market.
#### Product Team
* Improve product variety:
  * Introduce new products in lower price range (under $100 and $100 - $500) that customers could purchase with less hesitation and financial risk for themsevles and gifts like Apple Airpods. <- shorter lifespan or easy to lose item
* Curate products pairing with our top-selling gaming moniotors and Macbook Air laptops, such as gaming keyboards/headsets or laptop case, so that customers who bought/are buying the monitors and laptops could be tempted to buy their accessories. (cross-selling)
* Remove Bose Soundsport Headphones from our product line because of its underperformance in every metric across the years. (or resarch reviews among our customers or in general to assess the reason behind it. also ihpone.
* Bring more variety into Apple iPhone or more recent iPhone model. We have only one model/color/storage capacity which might be a reason for its underperformance compared to the other Apple products.
* display reviews
  
#### Marketing Team
* Improve seasonal promotions for the school and holiday season to take advantage of seasonal growth volatility.
* Send customers who purchased gaming monitors and laptops in our first few years a tailored marketing email for upgraded products as replacement options.
* Introduce a referral program so that our customers would be motivated to attract new customers.
* promotion for inactive customers?
* Further investigate on why our best marketing channel, direct marketing, failed to bring more new customers and invest more resources into it if necessary.

(* content creation to keep customers engaged: recommendation on how to maintain your appliance. create more vlaues.


#### Sales Team
* potential opportunity for business customers? who bought more than 3?) B2B? review our pricing strategies.
* 
#### Customer Experience/Support Team
* Conduct customer research targeted for top customers and loyalty members to further surface insights on improvements and opportunities.

#### IT Team
* Check possible data integrity issues suggested in Caveats and improve data integrity.


## Caveats
* The main matric used in this analysis was sales revenue, not profits. Further analysis based on profits is recommended.
* 
2023-2024 data, profit data rather than sales, data quality (refund data for 2022)

## Tableau Interactive Dashboard
