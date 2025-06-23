# Elist Electronics Pandemic Sales Analysis 
*company name will be changed and company logo will be added.

Founded in 2018, Elist is an e-commerce company that sells popular electronics products and has since expanded to a global customer base. This project aims *to understand Elist's performance during the period from 2019 to 2022, around the pandemic, and deliver insights on improvements* across the company, including finance, sales, product, and marketing. The *metrics* in this analysis were *revenue, average order value, and order count*.


**< Stakeholder Questions >**
* What were the overall trends in sales during this time in regards?
* What were our monthly and yearly growth rates?
* How is the new loyalty program performing? Should we keep using it?
* What were our refund rates and average order value?

## About Data 

The database structure, as seen below, consists of four tables: orders, customers, geo_lookup, and order_status. This project analyzed a total of 108,127 records from the table, which was consolidated from the above four tables.

<img src="ERD.png" alt="Image" width="60%">

## Executive Summary

#### **Overall Sales Trends (2019 - 2022):**
The revenue drastically increased from 3.8M in 2019 to 10M in 2020 by 163% and declined gradually in 2021 and sharply in 2022, ending up at 5M. The surge in 2020 started in March when the pandemic hit and people started buying electrinic products to set up their home offices or deal with lockdown, and so March shows the highest month-over_month growth rate in both revenue and order count. This upward revenue trend continued until 2021. On the contrary, order count's momentum continued longer through 2021, which means that in 2021, people placed more orders but for less expensive items compared to 2020.

As much as Marh 2020 surge, we need to pay attention to drops in the last quarter of 2022 when we had the highest negative growth rates in revenue and order count. After the initial emergency phase had passed, in 2022 revenues trends went back to the pre-pandemic 2019 level but even worse, in Q4, it started underperforming compared to that of 2019. Not being able to capitalizing on the pandemic sales boom and showing worst performance throughout the four years is alarming. Hence, it will be explored further in details in Deep Dive Insights below.

[image]

* **Growth Volatiality:** Surprisingly, month-over-month growth rates were volatile each year, not limited to the panedmic years. March 2020 recorded the highest growth rates of 50% and 46% in both revenue and order count while October 2022 the lowest growth rates of -55%, -16%, and -47% in all metrics, revenue, AOV, and order count. 

* **Seasonality:** The revenue and order count trends over months showed a similar seasonal pattern: they dropped in February, went up in September, dropped again in October and increased during November and December. Our top four products - 27in 4K gaming monitors, Apple Airpods Headphones, Macbook Air Laptops, and Lenovo ThinkPad Laptops - followed these trends. The high growth in September and December could be related to the school and holiday seasons.
  
[image: monthly, yearly trends + excel conditional formatting monthly table] 
 
#### **Product Performance:**
In 2020, YoY growth rates in both sales and order count were positive for all eight products, then a mix of positive and negative rates among the products in 2021, and in 2022, all products showed negative growth rate ranging from around -30% to -90%.
* High Performance: 27in 4K gaming monitor maintained the highest revenue throughout the years while Apple Airpods Headphones the highest order count. As for the YoY growth rate, Macbook Air Laptops showed the highest of 400% in revenue and order count in 2020, followed by Lenovo ThinkPad Laptops of 200%.
* Worst Performance: Bose Soundsport Headphones, ever since it was brought into the product line in 2020, had had the highest negative growth rates in revenue and order count, ending up with only one order in 2022. We should consider replacing with other new products.

#### **Regional Performance:** 
North America had been the biggest market, accounting for 51-52% of sales and order count on avearage every year, followed by EMEA(Europe, the Middle East and Africa), LATAM(Latin America), and APAC(Asia Pacific). However, APAC has the highest average order value on average, which means that customers from APAC purchased more expensive prodcuts.

In 2020, EMEA showed the highest growth rate. while 

 
 * * all regions: total sales increased drastically from 2019 to 2020 across all regions while APAC saw the highest growth  increase. Then sales started declining from 2021 onwards and decliming more by each year with LATAM most negative growth rate.

#### **Return Rate:**

#### **Loyalty Program:**

## Tableau Interactive Dashboard

## Deep Dive Insights on Underperformance in Q4 2022.
* replacement span:
* less new customers?
* how about existing customers' behavior? buying only 1 item?


## Recommendations

## Caveats
