# PicoTech Electronics Pandemic Sales Analysis 
*company name will be changed and company logo will be added.

Founded in 2018, PicoTech Electronics is an e-commerce company that sells popular electronics products and accessories at a competitive price and has since expanded to a global customer base from 192 countries. This project aims to:
* understand PicoTech Electronics' performance during the period from 2019 to 2022, around the pandemic,
* deliver insights on improvements across the company, including finance, sales, product and marketing, and
* find a niche in the market to curate selective products based on the needs of our expanded customers.

**< Stakeholder Questions >**
* What were the overall trends in sales during this time?
* What were our monthly and yearly growth rates?
* How was the new loyalty program performing? Should we keep using it?
* What were our refund rates for Apple Products?

**The metrics used in this analysis: revenue, average order value, and order count**

## About Data and Tools

The database structure, as seen below, consists of four tables: orders, customers, geo_lookup, and order_status. This project analyzed a total of 108,127 records from the table, which was consolidated from the above tables, using Excel and BigQuery SQL.

<img src="ERD.png" alt="Image" width="60%">

## Executive Summary

#### **Overall Sales Trends (2019 - 2022):**
The revenue drastically increased from $3.8M in 2019 to $10M in 2020 by 163% and declined gradually in 2021 and sharply in 2022, ending up at $5M. The surge in 2020 started in March when the pandemic hit and people started buying electrinic products to set up their home offices or deal with lockdown, and so March shows the highest month-over_month growth rate in both revenue and order count. This upward revenue trend continued until 2021. On the contrary, order count's momentum continued longer through 2021, which means that in 2021, people placed more orders but for less expensive items compared to 2020.

As much as Marh 2020 surge, we need to pay attention to drops in the last quarter of 2022 when we had the highest negative growth rates in revenue and order count. After the initial emergency phase had passed, in 2022 revenues trends went back to the pre-pandemic 2019 level but even worse, in Q4, it started underperforming compared to that of 2019. Not being able to capitalizing on the pandemic sales boom and showing worst performance throughout the four years is alarming. Hence, it will be explored further in details in Deep Dive Insights below.

[image]

* **Growth Volatility:** Surprisingly, month-over-month growth rates were volatile each year, not just limited to the panedmic years. March 2020 recorded the highest growth rates of 50% and 46% in both revenue and order count while October 2022 the lowest growth rates of -55%, -16%, and -47% in all metrics, revenue, AOV, and order count. 

* **Seasonality:** Both revenue and order count showed a similar seasonal pattern: they dropped in February, increased through September, dropped again in October and increased again during November and December. Our top four products - 27in 4K gaming monitors, Apple Airpods Headphones, Macbook Air Laptops, and Lenovo ThinkPad Laptops - followed these trends. Also, these trends applied to region and loyalty program. The high growth in September and December could be related to the school and holiday seasons.
  
[image: monthly, yearly trends + excel conditional formatting monthly table] or [image - tableau: monthly yearly trends + same graph by product, region, and loyalty program]
 
#### **Product Performance:**
In 2020, YoY growth rates in both sales and order count were positive for all eight products, then a mix of positive and negative rates among the products in 2021, and in 2022, all products showed negative growth rate ranging from around -30% to -90%.
* High Performance: 27in 4K gaming monitor maintained the highest revenue throughout the four years while Apple Airpods Headphones the highest order count. As for the YoY growth rate, Macbook Air Laptops showed the highest of 400% in revenue and order count in 2020, followed by Lenovo ThinkPad Laptops of 200%.
* Worst Performance: Bose Soundsport Headphone, ever since it was brought into the product line in 2020, had had the highest negative growth rates in revenue and order count, ending up with only one order in 2022. We should consider replacing it with other new products.
* also iphone's underperformance. why?
* product variety:
  
#### **Regional Performance:** 
* **Overall Trends:** North America had been the biggest market, accounting for 51-52% of order count and sales on avearage every year, followed by EMEA(Europe, the Middle East and Africa), LATAM(Latin America), and APAC(Asia Pacific). However, APAC had the highest average order value on average across the years, which means that customers from APAC purchased more expensive products.

* **Growth Rate:** In 2020, yearly growth rates in both reveunue and order count were positive across all regions with APAC and LATAM showing the highest of more than 200%, then revenue growth turned to negative in 2021 while order count growth remained positive during the same period, and in 2022, both metrics showed negative growth rates with LATAM, the highest negative growth rates.

[image?]

#### **Loyalty Program Performance:**
Our loyalty membership is given to a customer who creates an account and then purchases a certain number of orders. Out of 87,628 customers who ever made a purchase during 2019 through 2022, registered or not, 37% was loyalty members. 
By its nature, since it took time to become a loyalty member, revenue and order count from loyalty members had been lower than those from non-loyalty members during the first two years and then loyalty members were catching up by growing five times more than non-loyalty members in 2020 and finally outperforming in both revenue and order count in 2021 and 2022 and AOV in 2022. However, when zooming into monthly trends, we see that in the last few months in 2022 the performance between the two groups reversed with loyalty members underperforming again in all metrics.


we should continue loyalty program?


#### **Return Rate for Apple Products:**
Three Apple products - Airpod headphones, Macbook Air laptops, and iPhone - accounted for 49% of all orders each year on average. The refund rate of both Apple products and non-Apple products went up in 2020 and down in 2021 and average annual refund rates were 5.25% and 4.01% respectively. 

Specifically among Apple products, it turned out that the more expensive the product was, the higher the refund rate was: Macbook Air laptops (AOV $1,588) > iPhone (AOV $736) > Airpod headphones (AOV $159). This is because a high-ticket purchase has a high finanicial risk so custoemrs are more likely to seek a refund despite inconvience.

The data showed no refunds in 2022. Whether it's accurate or an error needs to be checked with the operations team.

[image?]

## Tableau Interactive Dashboard

## Deep Dive Insights on Underperformance in Q4 2022. 

> **Factors to consider**: electronic products such as our top products - gaming monitor and latops - have **a long lifespan** of at least 3-5 years. Hence, whether existing customers stay active - by revisitng to buying different products - and introducing new customers to our platform is crucial.
> (how to keep them engaged and have them revisit when needed. it's not amazon where you can buy groceries and everything at one place. it's not everyday needs.)

#### Hypothesis 1. Were existing customers no longer active over time?

* Inactive customers and low customer engagement confirmed:
    * 269 registered customers with no purchase history. --% of customers bought products within -- months.
    * Long purchase hiatus between last purchase and January 1, 2023: 78.9% of customers hadn't purchased anything since at least 24 months ago.
      (table?)
* Declining repeat purchase rate over the years: 20% (2019) > 19% (2020) > 18% (2021) > 15% (2022).
* Low variety-seeking customer behavior: 94.6% of our customers only purchased one unique product and 5.2% two unique products.

    <details>
    <summary><sub>Click to expand</sub></summary> 
    
    ```sql
    
     -- calculate the number of inactive customers
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
#### Top Customer Behavior (untapped potential)

## Recommendations: how to position ourselves unique in this market.
#### Product Team
* Introduce new products in lower price range (under $100 and $100 - $500) that customers could purchase with less hesitation and financial risk for themsevles and gifts like Apple Airpods. <- shorter lifespan or easy to lose item
* Curate products pairing with our top-selling gaming moniotors and Macbook Air laptops, such as gaming keyboards/headsets or laptop case, so that customers who bought/are buying the monitors and laptops could be tempted to buy their accessories.
* Remove Bose Soundsport Headphones from our product line because of its underperformance in every metric across the years.
* Bring more variety into Apple iPhone or more recent iPhone model. We have only one model/color/storage capacity which might be a reason for its underperformance compared to the other Apple products.
  
#### Marketing Team
* Improve seasonal promotions for the school and holiday season to take advantage of seasonal growth volatility.
* Send customers who purchased gaming monitors and laptops in our first few years a tailored marketing email for upgraded products as replacement options.
* Introduce a referral program so that our customers would be motivated to attract new customers.
* promotion for inactive customers?
* Further investigate on why our best marketing channel, direct marketing, failed to bring more new customers and invest more resources into it if necessary.

(* content creation to keep customers engaged: recommendation on how to maintain your appliance. create more vlaues.
* potential opportunity for business customers? who bought more than 3?)

#### Data Analytics Team
* Conduct customer research targeted for top customers and loyalty members to further surface insights on improvements and opportunities.
* Check possible data integrity issues suggested in Caveats and improve data integrity.

#### customer support team

## Caveats
* The main matric used in this analysis was sales revenue, not profits. Further analysis based on profits should be followed.
*

2023-2024 data, profit data rather than sales, data quality (refund data for 2022)
