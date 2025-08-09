<img width="2014" height="568" alt="ElevateElectronicsLogo" src="https://github.com/user-attachments/assets/6bd1e6b1-3669-4b34-bff3-8d8e14e57aef" alt="Company Logo"> 
Founded in 2018, Elevate Electronics is an e-commerce company that curates and sells a select range of electronic products at competitive prices, and has since rapidly expanded to a global customer base spanning 192 countries.<br />  
<br />
This project aims to understand Elevate Electronics' performance during the period from 2019 to 2022, around the COVID-19 pandemic, and deliver insights on improvements across the company, including product, marketing, and sales teams.<br />
<br />

**< Stakeholder Questions >**<br />

* What were the overall trends in sales during this time?<br />
* What were our monthly and yearly growth rates?<br />
* How was the new loyalty program performing? Should we keep using it?<br />

The key sales metrics used in this analysis were gross sales, average order value (AOV), and order count.<br /> 

**< Table of Contents >**  
[About Data and Tools](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#about-data-and-tools)  
[Executive Summary](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#executive-summary)  
[Deep Dive Insights](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#summary-insights)  
[Recommendations](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#recommendations-how-to-position-ourselves-unique-in-this-market)  
[Caveats](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#caveats)  

## About Data and Tools

The database structure, as seen below, consists of four tables: `orders`, `customers`, `geo_lookup`, and `order_status`. The main table for this analysis was compiled from these four tables, totaling 108,127 records.

 <details>
 <summary>ERD: Click to expand</summary> 
 <img src="ERD.png" alt="Image" width="60%">
 </details>
   
Excel was used for preliminary analysis with its pivot table, SQL (BigQuery) for deep dive analysis, and Tableau for visualization.

## Executive Summary
<img align="middle" alt="2020 Gross Sales Surged and Subsequently Declined to Pre-Pandemic Level. 2020 Gross Sales Surged and Subsequently Declined to Pre-Pandemic Level" src="https://github.com/user-attachments/assets/7103bb3d-7cb4-4a0a-9f78-9c37d4b60ee1" />

* Gross sales surged and peaked at $1,252K in 2020 and then declined gradually in 2021 and more sharply in 2022, returning to the pre-pandemic level. On a more granular level, Q4 2022 showed alarming underperformance even compared to the 2019 sales average.
  * All the sales metrics surged in 2020. Especially, **March 2020 showed the highest MoM growth in both gross sales and order count** - 50.3% and 46.2% respectively - when the COVID-19 pandemic hit and people started buying electronics to set up their home offices or cope with the lockdown.
  * In 2021, gross sales and AOV started declining gradually, but order count momentum continued, which means that our customers placed more orders for less expensive items compared to 2020.
  * In 2022, all metrics trended downwards across all products and regions to the pre-pandemic level or worse than the pre-pandemic level. **October 2022 marked the lowest growth rate** of -55.2% in gross sales and -46.9% in order count, and the sales increase during the following holiday season was still insufficient to bounce back and reach at least the 2019 average level. Further analysis on the Q4 2022 underperformance was conducted and presented in [here](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#deep-dive-insights-on-underperformance-in-q4-2022).
* **Loyalty Program**: Since its launch in 2019, the program exhibited a mixed performance trajectory, underperforming, outperforming, and then back to underperforming in the most recent months of 2022. However, its high growth rate in 2020 suggests its potential for impact. 
* **Possible Reason behind Underperformance in Q4 2022**: Our existing customers have been disengaged over time, considering their long purchase hiatus, decreasing repeat purchase rate, and single-item purchase behavior. Additionally, the number of new customers(signups) plummeted as well throughout 2022.
  
## Deep Dive Insights

### **Seasonality**

<img align="middle" width="60%" height="50%" alt="Monthly Gross Sales Pattern" src="https://github.com/user-attachments/assets/8cd18093-b444-4c83-a298-f0e333ca3446" />

The persistent MoM gross sales growth volatility, as seen above, suggested a possible seasonal pattern, and in fact, there was. Both gross sales and order count showed dips in February and October, and surges in September and during November and December. These surges could be related to the back-to-school season, Labor Day sales, and the holiday season.

### **Product Segmentation**

<img align="middle" width="60%" height="60%" alt="Top 3 Products: Gaming Monitor, Apple Airpods, Macbook Laptop" src="https://github.com/user-attachments/assets/35cd9e41-575a-4a41-9569-3ac714c860ba" />

* 3 top-selling products - 27in 4K Gaming Monitor, Apple Airpods Headphones, and Macbook Air Laptop - comprised 85% of gross sales and 70% of order count.
* **Products that failed to achieve sales expectations**:
  * **Bose Soundsport Headphone**, since being introduced to the product line in 2020, have had the highest negative growth rates in both gross sales and order count over the following two years, ultimately resulting in only one order in 2022.
  * Surprisingly, **Apple iPhone** have underperformed despite its general popularity, accounting for less than 1% of both gross sales and order volume. The **lack of product variation** might be the possible reason behind this. We sell only one model with one color and storage capacity option, as opposed to 27in 4K Gaming Monitor and Apple Airpods Headphone, which offer at least 14 variations.
* **Product performance in Q4 2022** compared to the previous Q4: Gross sales declined across all the products by a range of -51% (Lenovo ThinkPad Laptop) and -83% (MacBook Air Laptop).
  
### **Regional Segmentation**

<img width="60%" height="60%" align="middle" alt="North America is the Largest Market with Highest Sales and Order Count" src="https://github.com/user-attachments/assets/6cc41017-e0cf-4834-bbe2-aa35dfae595d" />

* North America comprised 51% of gross sales, followed by Europe, the Middle East, and Africa (EMEA) of 30%.
* **Potential market opportunity in APAC**: Despite its smaller market share, APAC showed the highest sales growth rate of 226% in 2020 and the highest AOV between 2019 and 2022. Its customers purchased more expensive products than those from the other regions. Given their **higher spending power**, APAC can be **a target market for high-ticket products**.
* **Regional performance in Q4 2022** compared to the previous Q4: Gross sales declined across all the regions by a range of -68% (NA) and -82% (APAC).

### **Loyalty Program**
> Our loyalty program, launched in 2019, was designed for **customers who have created accounts and met a minimum purchase frequency**.

<img align="middle" width="2398" height="1198" alt="Contrasting Performance between Program's Strong Annual Growth in 2020 and Outperformance in 2021-2022 and its Recent Monthly Decline" src="https://github.com/user-attachments/assets/7dfade7c-0b1f-4a45-86c8-2a6cfb683617" />

* **Unclear cause of the recent underperformance**:
  * **The simultaneous decline in loyalty member performance and overall sales in Q4 2022** made it challenging to determine if the loyalty program itself was losing appeal or if its members were reflecting the broader market slowdown affecting all customer segments.
  * The other possible reason could be that loyalty members had no other products in their interests, given our limited variety of eight different products and their previous purchases.
* **Potential for impact**: The five-fold and twelve-fold growth in gross sales and order count, respectively, in 2020 indicates that the loyalty program, when effective, can significantly contribute to sales.
* We should **continue the loyalty program** for further observation and strategic refinement rather than discontinuing it prematurely.

### **Investigation on Underperformance in Q4 2022** 

**Factor to consider**: Electronic products, such as gaming monitors and laptops, have a **long lifespan** of at least 3-5 years. Hence, to maintain strong sales, 1) keeping **existing customers** engaged to revisit and buy different products and 2) acquiring **new customers** are crucial.

#### Hypothesis 1. Have existing customers been disengaged over time? - Yes
> Here, we define existing customers as those who **placed at least one order between 2019 and 2022, whether as guests or members**.
* **Long hiatus** between the last purchase date and January 1, 2023: 79% of customers have not made another purchase since at least 13 months ago.
* **Declining repeat purchase rate** over the years: 20% (2019) > 19% (2020) > 18% (2021) > 15% (2022).
* **Single-item purchase behavior**: 94.6% of our customers purchased only one unique product, and 5.2% purchased two distinctive products.

#### Hypothesis 2. Have we had fewer newly registered users over time? - Yes, but Further Investigation Required

> Due to the data limitations, this analysis focused on **newly registered users who created accounts between 2019 and 2022, regardless of whether they made
a purchase or not.**

<img align="middle" width="70%" height="70%" alt="The Number of Customer Signups Plummeted in 2022, Especially Those Through Direct Marketing" src="https://github.com/user-attachments/assets/58910dac-9cd1-48c5-af9d-45804fe715a8" />

The number of signups decreased at an accelerated pace in 2022, from 1,737 in January to 36 in December. Although the number from the direct marketing channel reflected a similar downward pattern, it is unclear whether the decline in overall signups was related to the direct marketing performance itself or whether visitors were not being sufficiently appealed to sign up. Further analysis on marketing channel performance along the customer journey should be followed.

## Recommendations

#### Product Team
* Extend Apple iPhone variations in terms of models, colors, and storage capacities.
* Discontinue Bose Soundsport Headphones.
* Prepare upgraded products for our top-selling products, 27in 4K Gaming Monitors and MacBook Air Laptops, by conducting market research on the current popularity and profitability potential.
* Widen product variety for cross-selling and in a lower price range that customers could purchase with less hesitation and financial risk (e.g., gaming keyboards, headsets, or mouse).
  
#### Marketing Team
* Refine seasonal marketing strategies for the back-to-school season and holidays.
* Target APAC customers for high-ticket products.
* Plan personalized promotions for product upgrades targeting customers who purchased gaming monitors and laptops in our first year, 2018, and might want a replacement or an upgrade.
* Launch a referral program to capitalize on our expanded customer base to acquire new customers.
* Further analyze our marketing channel performance to determine its impact on leads and customer acquisition.
* Map our customer journey to further understand their experience, pain points, and motivations behind their decisions by using existing data on the website/app behavior and conduting qualitative research on loyalty members.
* Develop tailored promotions for disengaged customers based on the findings that only 13% of customers who created accounts made a purchase within one month, and that 269 registered users hadn't yet made any purchase.

#### Sales Team
* Conduct qualitative research on top-spending customers who have purchased 3-4 laptops. Their behavior suggests potential business opportunities for small business customers/resellers.

## Caveats 
* Profits are missing as a key sales metric in this analysis due to the data limitations. Profit analysis should be followed.
* If time and data were available, customer segmentation would have provided valuable insights to help us understand the diverse needs and preferences of our customers.
* To follow up on underperformance in Q4 2022, we should analyze more recent sales data from 2023 onward.
* Missing or nonsensical values were present in our dataset, especially in the critical columns, such as `purchase_date`, `sales_price`, and `region`, but they were left as is for this project because their magnitude was only 0.20% of the entire data. Still, checking on them with relevant stakeholders and improving data integrity and quality overall is required.

## Tableau Self-Service Dashboard
<img width="970" height="788" alt="Dashboard" src="https://github.com/user-attachments/assets/9b0c3c88-5942-4bbe-a9ba-7d6e5ef56d6d" />


