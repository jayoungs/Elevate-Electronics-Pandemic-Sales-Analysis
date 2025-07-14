<img align="left" src="https://github.com/user-attachments/assets/4dc8bae9-5640-4614-bc6a-92272de9a069" alt="Company Logo" width="20%" length="20%">


Founded in 2018, Elevate Electronics is a fictional e-commerce company that sells popular electronics products and accessories at a competitive price and has since rapidly expanded to a global customer base from 192 countries. This project aims to understand Elevate Electronics' performance during the period from 2019 to 2022, around the pandemic, and deliver insights on improvements across the company, including sales, product, marketing, IT and customer support team.
* assess our competibility/position in the market, find a niche in the market to curate selective products based on the needs of our expanded customers.

**< Stakeholder Questions >**
* What were the overall trends in sales during this time?
* What were our monthly and yearly growth rates?
* How was the new loyalty program performing? Should we keep using it?
* What were our refund rates for Apple Products?

The key metrics used in this analysis were gross sales, average order value (AOV), and order count. 

## About Data and Tools

The database structure, as seen below, consists of four tables: `orders`, `customers`, `geo_lookup`, and `order_status`. The main table for this analysis was consolidated from these four tables with a total of 108,127 records and Excel and SQL(BigQuery) were used as analysis tools.

<img src="ERD.png" alt="Image" width="60%">

## Executive Summary

#### **Sales Trends:**
<img src="https://github.com/user-attachments/assets/fb0665ce-3252-491d-994a-70f18e7f5a1c" alt="2020 Gross Sales Surged and Subsequently Declined to Pre-Pandemic Level. Gross Sales Growth was Persistenty Volatile Every Year, Not Limited to 2020">

* **2020 surge in all sales metrics - gross sales, order count, and AOV**: especially the highest growth in gross sales and order count happened in March when the pandemic hit, and people started buying electronics to set up their home offices or deal with the lockdown.
* **Post-2020 sales decline**: 
    * In 2021, gross sales and AOV started declining, but order count momentum continued. Our customers placed more orders but for less expensive items compared to 2020.
    * In 2022, all metrics trended downwards to pre-pandemic level or potentially worse across all products and regions.
* **Alarming Q4 2022 underperformance** compared to 2019 gross sales average: October 2022 marked the lowest growth rate of -55.2%, and the seasonal sales increase during the holiday season was not sufficient to bounce back from this dip to reach at least the 2019 average level. Further analysis on Q4 2022 underperformance will be presented later here.
* **Persistent month-over-month gross sales growth rate volatility and its possible link to seasonality**: both revenue and order count showed a dip in February and October and a surge in September and during November and December. This surge could be related to the school and holiday seasons.
      <img align="middle" width="800" length="800" alt="Image" src="https://github.com/user-attachments/assets/688939d6-d379-46f1-a6c1-8cc086aaa467" alt="Seasonality in Gross Sales: Decrease in Feb. and Oct. vs. Increase in Sep., Nov., and Dec.">
  
[image:  + excel conditional formatting monthly table] 
 
#### **Product Segmentation:**
<img align="middle" width="1205" height="612" alt="Screenshot 2025-07-14 at 6 16 10 PM" src="https://github.com/user-attachments/assets/37721165-6198-4ec0-903e-7db8c4a4f422" />

* **Products that failed to achieve sales expectations**:
   * Bose Soundsport Headphones, ever since it was brought into the product line in 2020, had had the highest negative growth rates in sales, ending up with only one order in 2022. 
   * Surprisingly, Apple iPhone had underperformed despite its general popularity and higher price range, only accounting for less than 1% in both revenue and order count. Lack of the product variation might be the possible reason behind this. We sell only one model with one color and storage capacity option as opposed to 27in 4K Gaming Monitor and Apple Airpods Headphone with at least 14 options.

   | **Apple iPhone** | Bose Soundsport Headphones | Macbook Air Laptop | ThinkPad Laptop | Samsung Webcam | Samsung Charging Cable Pack | 27in 4K Gaming Monitor | Apple Airpods Headphones |
   |:---|:---|:---|:---|:---|:---|:---|:---|
   |**1**|2|5|5|7|8|14|16|

* Product performance in Q4 2022 compared to Q4: gross sales declined across all the products by a range of -51% (ThinkPad Laptop) and -83% (Macbook Air Laptop).
  [maybe add a conditional formatting table?]
  
#### **Regional Segmentation:** 
<img align="middle" width="800" height="800" alt="Screenshot 2025-07-10 at 5 06 12 PM" src="https://github.com/user-attachments/assets/c9e45ddd-e59d-479c-95d6-d720e6c16721" />


* Potential market opportunity in APAC:
   * Customers in APAC purchased more expensive products, compared to those in the other regions.
   * APAC showed the highest sales growth rate of 226% in 2020.
   * APAC has the largest total population of 4.8 billion people among the four regions.
* Regional performance in Q4 2022 compared to the previous Q4: gross sales declined across all the regions by a range of -68% (NA) and -82% (APAC).

   [maybe add a conditional formatting table?]

#### **Loyalty Program Performance:**
<img width="1198" height="596" alt="Loyalty Members Caught Up and Outperformed Non-Loyalty Members in All Sales Metrics in 2021 and 2022 but Reversed in Recent Months" src="https://github.com/user-attachments/assets/4bf45dad-4040-4a55-b960-99569ed0e3f8" />

By its nature, since it took time to become a loyalty member, revenue and order count from loyalty members had been lower than those from non-loyalty members during the first two years and then loyalty members were catching up by growing five times more than non-loyalty members in 2020 and finally outperforming in both revenue and order count in 2021 and 2022 and AOV in 2022. However, when zooming into monthly trends, we see that in the last few months in 2022 the performance between the two groups reversed with loyalty members underperforming again in all metrics.


we should continue loyalty program? not conclusive answer.



[image?]

#### Customer Behavior Analysis

* Top 5 Customer Behavior (untapped potential): each of them all purchased 3-4 laptops within 4 years. there might be a possibility that they were  small businesses. Investigate further to determine and develop B2B strategies.
* how many registered customers? how many customers, registered or not, purchased? 
* Inactive customers and low customer engagement confirmed:
    * 83% of customers who created accounts purchased products within three months, including 13% of those who did in less than one month.
    * 269 registered customers with no purchase history yet. 

## Tableau Interactive Dashboard

## Deep Dive Insights on Underperformance in Q4 2022. 

> **Factors to consider**:  
> Electronic products, such as our top products - gaming monitor and latops -, have **a long lifespan** of at least 3-5 years. Hence,
> whether existing customers stay active - by revisiting and buying different products - and introducing new customers to our
> platform is crucial. (how to keep them engaged and have them revisit when needed. it's not amazon where you can buy groceries and
> everything at one place. it's not everyday needs.)

#### Hypothesis 1. Were existing customers no longer active over time?
* Long purchase hiatus between last purchase and January 1, 2023: 78.9% of customers hadn't purchased anything since at least 24 months ago.
      (table?)
* Declining repeat purchase rate over the years: 20% (2019) > 19% (2020) > 18% (2021) > 15% (2022).
* Low variety-seeking customer behavior: 94.6% of our customers only purchased one unique product and 5.2% two unique products.

    <details>
    <summary><sub>Click to expand</sub></summary> 
    
    ```sql
    -- calculate the distribution of how long it took for customers who created accounts to place their first order
    WITH earliest_purchase AS (
      SELECT DISTINCT customers.id,
        customers.created_on,
        MIN(orders.purchase_ts) AS earliest_purchase_date
      FROM core.customers 
      LEFT JOIN core.orders 
        ON customers.id = orders.customer_id
      WHERE customers.created_on <= orders.purchase_ts AND EXTRACT(YEAR FROM customers.created_on) BETWEEN 2019 AND 2022
      GROUP BY 1, 2), -- 61664
    cal_month_diff AS (
      SELECT id,
        DATE_DIFF(earliest_purchase_date, created_on, MONTH) AS month_diff
      FROM earliest_purchase),
    recategorized AS (
        SELECT id,
          (CASE
            WHEN month_diff = 0 THEN "1) less than 1 month"
            WHEN month_diff BETWEEN 1 AND 3 THEN "2) 1 to 3 months"
            WHEN month_diff BETWEEN 4 AND 6 THEN "3) 4 to 6 months"
            WHEN month_diff BETWEEN 6 AND 12 THEN  "4) 6 to 12 months"
            ELSE "5) 12+ months" 
            END) AS month_to_purchase,
          COUNT(id) OVER () AS total_num_customers
        FROM cal_month_diff)
      
      SELECT month_to_purchase,
        total_num_customers,
        COUNT(month_to_purchase) AS num_customers,
        ROUND(100.00 * COUNT(month_to_purchase) / total_num_customers, 2) AS percentage
      FROM recategorized
      GROUP BY 1, 2
      ORDER BY 1; 

    -- calculate the number of inactive customers who created accounts but hadn't yet purchased anything.
    SELECT COUNT(DISTINCT customers.id) AS customer_no_purchase
    FROM core.customers 
    WHERE NOT EXISTS (
      SELECT orders.customer_id
      FROM core.orders 
      WHERE customers.id = orders.customer_id); -- 269

    -- calculate purchase hiatus
    WITH calculate_inactivity AS (
      SELECT customer_id,
        MAX(purchase_ts) AS latest_purchase,
        DATE_DIFF('2023-01-01', MAX(purchase_ts), MONTH) AS inactive_period
      FROM core.orders
      GROUP BY 1),
    aggregate_customer_num AS (
      SELECT (CASE 
        WHEN inactive_period <=3 THEN '3 months'
        WHEN inactive_period BETWEEN 4 AND 6 THEN '6 months'
        WHEN inactive_period BETWEEN 7 AND 12 THEN '12 months'
        WHEN inactive_period BETWEEN 13 AND 24 THEN '24 months'
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
      HAVING order_count >= 2
    ),
    joined_table AS (
      SELECT repeat_purchase_customer.year,
        total_num_customers,
        COUNT(DISTINCT customer_id) AS num_customer_repeat_purchase
      FROM repeat_purchase_customer
      LEFT JOIN customers_per_year
        ON repeat_purchase_customer.year = customers_per_year.year
      GROUP BY 1, 2
      ORDER BY 1)
    
    SELECT *,
      ROUND(100.00 * num_customer_repeat_purchase / total_num_customers, 2) AS percentage
    FROM joined_table
    ORDER BY year;

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

#### Hypothesis 2. Were fewer newly registered customers coming in over time?
==(graphs showing both?)==
* Declining number of registered customers in an accelerated pace during 2021 and 2022: hit low at 36 in December 2022.
* Customers from the most successful channel, direct marketing, showed the similar pattern with a plummet in its effect from March 2022 on.
  
    <details>
    <summary><sub>Click to expand</sub></summary> 
    
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
* Introduce new products in lower price range (under $100 and $100 - $500) that customers could purchase with less hesitation and financial risk for themsevles and gifts like Apple Airpods. <- shorter lifespan or easy to lose item
* Curate products pairing with our top-selling gaming moniotors and Macbook Air laptops, such as gaming keyboards/headsets or laptop case, so that customers who bought/are buying the monitors and laptops could be tempted to buy their accessories.
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
