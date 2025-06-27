# Elist Electronics Pandemic Sales Analysis 
*company name will be changed and company logo will be added.

Founded in 2018, Elist is an e-commerce company that sells selective electronics products at competitive price and has since expanded to a global customer base in -- countries. This project aims to understand Elist's performance during the period from 2019 to 2022, around the pandemic, and deliver insights on improvements* across the company, including finance, sales, product, and marketing. The *metrics* used in this analysis were revenue, average order value, and order count*. <-- niche products, how many countries?


**< Stakeholder Questions >**
* What were the overall trends in sales during this time?
* What were our monthly and yearly growth rates?
* How was the new loyalty program performing? Should we keep using it?
* What were our refund rates for Apple Products?

## About Data 

The database structure, as seen below, consists of four tables: orders, customers, geo_lookup, and order_status. This project analyzed a total of 108,127 records from the table, which was consolidated from the above tables.

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

## Deep Dive Insights on Underperformance in Q4 2022. -- make funnel chart?

[image - monthly sales graph by year]

#### Hypothesis 1. were existing customers no longer active over time?

> **Factors to consider**
> * long lifespan of electronic products:** during this period, 69% of sales came from gaming monitors (AOV $421) and laptops (Macbook Air Laptop $1,588, Lenovo > ThinkPad Laptop $1,100), which had a lifespan of at least 3-5 years. It's critical to our sales for customers who bought these products to buy the other products over time > as well. But only 29% of these customers bought the other products beside laptops or monitors. 
> * how to keep them engaged. it's not amazon where you can buy groceries and everything at one place. it's not everyday needs.

* **Low repeat purchase rate within year keep declining:** number of orders per customer distribution + repeat rate
* how many total orders (overlap with repeat purchase) and different items did they buy? (variety of purchases)
* inactive customers: 1) those who signed up but didn't purchase, 2) hiatus as of 1/1/2023: within 3, 4-6, 7-12, 12+ months (need to query)

funnel:

website/app visitors (no info)

customers, registered or not,who purchased

custoemrs who purchased AND signed up (either order)

customers who are loyalty members

[this one, just SQL? image?]

``` sql

```

#### Hypothesis 2. were fewer customers coming in over time?
* decline in number of customers
* direct marketing:
  



## Recommendations
* introduce new items for each price tier (less expensive, something you can have more than one or gift without financial risk): laptop case,
* bring more customers through direct marketing & referral promotion?
* for customers who purchased gaming monitor and laptop few years ago, send promotion for new monitor.
* embrace volatility and take advangage of seasonal promotions.
* content creation to keep customers engaged: recommendation on how to maintain your appliance. create more vlaues.
* invest in the marketing platform we did best at: direct marketing.
* promotion for inactive customers.
* sell pair products: gaming keyboard or headset, mouse. mac accessories. air tag.
* potential opportunity for business customers? who bought more than 3?
* how to position ourselves unique in this market.
## Caveats
refund data for 2022.
