<img width="2014" height="568" alt="ElevateElectronicsLogo" src="https://github.com/user-attachments/assets/6bd1e6b1-3669-4b34-bff3-8d8e14e57aef" alt="Company Logo"> 
Founded in 2018, Elevate Electronics is an e-commerce company that curates and sells a select range of electronic products at competitive prices. The company has since expanded rapidly, reaching customers in 192 countries worldwide. <br/>
<br/>
This project examines the company’s performance from 2019 to 2022, covering the period around the COVID-19 pandemic, to uncover key business trends and provide actionable insights for the product and marketing teams. <br/>
<br/>

**Stakeholder Questions** 
* What were the overall sales trends during this period? 
* What were our monthly and annual growth rates? 
* How did the new loyalty program perform, and should it continue? 

**Key Metrics:** 
Gross Sales • Average Order Value (AOV) • Order Count

**Table of Contents** 
* [About Data and Tools](#about-data-and-tools)
* [Executive Summary](#executive-summary)
* [Deep Dive Insights](#deep-dive-insights)
* [Recommendations](#recommendations)
* [Caveats](#caveats)
* [Tableau Self-Service Dashboard for Stakeholders](#tableau-self-service-dashboard-for-stakeholders)

## About Data and Tools

The database structure comprises four tables—`orders`, `customers`, `geo_lookup`, and `order_status`—combined into a single analysis table containing 108,127 records.

**Tools Used:**
* Excel for preliminary analysis (pivot tables & charts)
* SQL (BigQuery) for deep-dive queries
* Tableau for visualization and dashboards

 <details>
 <summary>ERD: Click to expand</summary> 
 <img src="ERD.png" alt="Image" width="80%">
 </details>

## Executive Summary
<img align="middle" alt="2020 Gross Sales Surged and Subsequently Declined to Pre-Pandemic Level. 2020 Gross Sales Surged and Subsequently Declined to Pre-Pandemic Level" src="https://github.com/user-attachments/assets/7103bb3d-7cb4-4a0a-9f78-9c37d4b60ee1" />

#### 1. Sales Performance Overview
Gross sales surged in 2020, peaking at $1.25M, before declining through 2021 and dropping sharply in 2022 to pre-pandemic levels. Q4 2022 was particularly concerning, showing underperformance even below 2019 benchmarks.
* March 2020 marked the strongest month-over-month growth (+50.3% in gross sales, +46.2% in order count), driven by the shift to remote work and increased home electronics demand.
* In 2021, gross sales and AOV declined gradually, while order count remained high — suggesting more frequent purchases of lower-priced items.
* In 2022, all metrics declined across products and regions. October 2022 recorded the lowest growth rates (–55.2% in gross sales, –46.9% in order count). Even the holiday season failed to restore performance to 2019 levels.

#### 2. Loyalty Program Performance
Since its 2019 launch, the loyalty program saw sales and order volume surge in 2020. It sustained momentum through 2021 and into Q3 2022, ultimately outperforming non-loyalty members, but then declined again, underperforming by September 2022. Its early growth and periods of outperformance demonstrate strong potential, suggesting the program should be refined rather than discontinued.

#### 3. Q4 2022 Underperformance Drivers
The sharp Q4 decline was driven by both declining engagement among existing customers and a slowdown in new acquisitions. Most existing customers had not made repeat purchases for over a year, and nearly all had bought only a single product. At the same time, new signups dropped sharply throughout 2022. Together, these factors indicate that customer attrition and weaker acquisition contributed to the broad-based sales slowdown.
  
## Deep Dive Insights

### **Seasonality**

<img align="middle" width="60%" height="50%" alt="Monthly Gross Sales Pattern" src="https://github.com/user-attachments/assets/8cd18093-b444-4c83-a298-f0e333ca3446" /> <br/>

Both gross sales and order count displayed recurring dips in February and October, followed by surges in September, November, and December—aligning with back-to-school, Labor Day, and holiday periods. This pattern underscores the importance of aligning promotions and campaigns with seasonal demand cycles.

### **Product Segmentation**

<img align="middle" width="60%" height="60%" alt="Top 3 Products: Gaming Monitor, Apple Airpods, Macbook Laptop" src="https://github.com/user-attachments/assets/35cd9e41-575a-4a41-9569-3ac714c860ba" /> <br/>
* **27” 4K Gaming Monitor, Apple AirPods, and MacBook Air Laptop** drove most of the company’s success, contributing **85% of gross sales and 70% of order count.**
* **Bose Soundsport Headphones and Apple iPhone underperformed**. The Bose model suffered consistent declines after launch and only had one sale in 2022. Surprisingly, the iPhone accounted for under 1% of sales and order volume, and its limited options (single model, color, and storage) might have restricted appeal. <br/>

  <details> 
  <summary> Product Variation: Click to Expand </summary>
   
   | <ins>Apple iPhone</ins> | Bose Soundsport Headphones | Macbook Air Laptop | ThinkPad Laptop | Samsung Webcam | Samsung Charging Cable Pack | 27in 4K Gaming Monitor | Apple Airpods Headphones |
   |:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
   |**1**|2|5|5|7|8|14|16|
  
  </details>

* In Q4 2022, all products recorded year-over-year sales declines between –51% and –83%, confirming a broad-based slowdown.
  
### **Regional Segmentation**

<img width="60%" height="60%" align="middle" alt="North America is the Largest Market with Highest Sales and Order Count" src="https://github.com/user-attachments/assets/6cc41017-e0cf-4834-bbe2-aa35dfae595d" /> <br/>

* **North America** accounted for **the largest share of sales** (51%), followed by EMEA (30%).
* **APAC**, though smaller, stood out with the **highest sales growth rate (226% in 2020) and highest AOV**, suggesting strong potential for premium product targeting.
* In Q4 2022, all regions faced significant year-over-year sales declines (–68% to –82%).

### **Loyalty Program** 

<img align="middle" width="2398" height="1198" alt="Contrasting Performance between Program's Strong Annual Growth in 2020 and Outperformance in 2021-2022 and its Recent Monthly Decline" src="https://github.com/user-attachments/assets/7dfade7c-0b1f-4a45-86c8-2a6cfb683617" /> <br/>

* Since its launch in 2019, the loyalty program has exhibited **a mixed performance trajectory**. Loyalty-member sales and order volumes grew sharply—though still underperforming non-loyalty members—in 2020. They then **sustained pandemic-driven momentum** throughout 2021 and into the third quarter of 2022, **ultimately surpassing non-loyalty members**. However, performance began to decline thereafter, and **by September 2022, loyalty members were again underperforming** their non-loyalty counterparts.
* The recent decline highlights several challenges. Limited product variety, the long replacement cycle of electronics, and the overall sales slowdown in Q4 2022 may have contributed to reduced engagement. However, it remains unclear whether this decline reflects a loss of appeal in the program itself.
* Despite this, **the early growth (5× sales, 12× order volume) and sustained pandemic momentum during periods of outperformance (higher order volume and AOV)** underscore its potential as a powerful tool for driving repeat purchases and engagement.
* Given its historical performance, the loyalty program remains a valuable lever for customer retention. To maximize impact, **it should be refined and optimized rather than discontinued prematurely.**

### **Investigation on Underperformance in Q4 2022** 

Two hypotheses were tested: customer disengagement and reduced new user acquisition.

#### Hypothesis 1. Existing customers have become disengaged.
> Existing customers were defined as users who placed at least one order between 2019 and 2022, whether as guests or members.

This was supported by several key observations:
* 79% of customers had not made another purchase in over 13 months.
* The repeat purchase rate steadily declined from 20% (2019) to 15% (2022).
* 94.6% of customers purchased only one unique product, while only 5.2% purchased two distinct items.
Given the long lifespan of electronics (typically 3–5 years), retaining customer engagement is crucial. These findings suggest that we have struggled to keep our existing base active, highlighting the need for cross-selling, upgrades, and re-engagement strategies.

#### Hypothesis 2. Fewer new customers were acquired in 2022.
> New customers were defined as users who created accounts between 2019 and 2022, regardless of purchase activity, due to data limitations.

This was also validated by the data. New user signups declined sharply from 1,737 in January to just 36 in December 2022. The drop was especially noticeable in users acquired through direct marketing channels. However, it remains unclear whether this decline reflects reduced campaign performance or weaker sign-up conversion on the website. Future analyses should assess marketing channel effectiveness and the overall customer acquisition funnel to pinpoint the root cause.

<img align="middle" width="70%" height="70%" alt="The Number of Customer Signups Plummeted in 2022, Especially Those Through Direct Marketing" src="https://github.com/user-attachments/assets/58910dac-9cd1-48c5-af9d-45804fe715a8" /> <br/>

Together, these findings indicate that Q4 2022 underperformance resulted from both customer attrition and slowed acquisition, highlighting the dual challenge of reactivating past buyers while attracting new ones.

## Recommendations

#### Product Team
* Expand Apple iPhone offerings with more models, colors, and storage capacities.
* Discontinue Bose Soundsport Headphones due to consistent underperformance.
* Develop upgraded versions of top sellers (Gaming Monitors, MacBook Air) to sustain interest.
* Introduce lower-priced accessories (e.g., keyboards, headsets, mice) to drive repeat purchases and cross-selling.
  
#### Marketing Team
* Strengthen seasonal campaigns for back-to-school and holiday peaks.
* Target APAC customers with premium offerings and localized strategies.
* Launch upgrade promotions for early customers (2018–2019 buyers) likely ready to replace older devices.
* Introduce a referral program to leverage existing customers for new signups.
* Analyze marketing channel performance and optimize acquisition funnels.
* Design personalized re-engagement campaigns for dormant customers and registered users who haven’t yet purchased.

## Caveats 
* Profit data was unavailable, limiting margin analysis.
* Customer segmentation with richer demographic data would provide deeper behavioral insights.
* 2023 onward sales data should be included in follow-up studies to validate recovery trends.
* Minor data anomalies (0.2% of records) were found in key fields such as `purchase_date` and `sales_price`; these should be reviewed for data quality improvement.

## Tableau Self-Service Dashboard for Stakeholders
Link to [the Interactive Dashboard (size 1,200 * 1,000):](https://public.tableau.com/views/2019-2022ElevateElectronicsSalesSelf-ServiceDashboard/Self-ServiceDashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

<img width="2398" height="1998" alt="Self-Service Dashboard" src="https://github.com/user-attachments/assets/83390625-af6d-4267-a62f-e712d6ca2857" />



