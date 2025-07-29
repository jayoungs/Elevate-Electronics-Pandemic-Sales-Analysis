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
[Summary Insights](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#summary-insights)  
[Deep Dive Insights on Underperformance in Q4 2022](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#deep-dive-insights-on-underperformance-in-q4-2022)  
[Recommendations](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#recommendations-how-to-position-ourselves-unique-in-this-market)  
[Caveats](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#caveats)  

## About Data and Tools

The database structure, as seen below, consists of four tables: `orders`, `customers`, `geo_lookup`, and `order_status`. The main table for this analysis was compiled from these four tables, totaling 108,127 records.

 <details>
 <summary>ERD: Click to expand</summary> 
 <img src="ERD.png" alt="Image" width="60%">
 </details>
   
Excel and SQL (BigQuery) were used for analysis, and Tableau was used for visualization.

## Executive Summary
<img align="middle" src="https://github.com/user-attachments/assets/a8c131fe-892c-40f1-8238-16ecfaf675ca" alt="2020 Gross Sales Surged and Subsequently Declined to Pre-Pandemic Level. Gross Sales Growth was Persistenty Volatile Every Year, Not Limited to 2020">

* **Overall Sales Trends and Growth**: Gross sales surged in 2020, the first year of the COVID-19 pandemic, reaching a peak of $1.3M, and then declined gradually in 2021 and sharply in 2022 to return to the pre-pandemic level. A granular examination of monthly trends reveals underperformance in Q4 2022, even compared to the pre-pandemic level.
* **Sales Growth Volatility and Seasonality**: The month-over-month sales growth rate was volatile each year, not just during the pandemic years, and this could be related to seasonal pattern.
* **Loyalty Program**: Since its launch in 2019, the program had exhibited a mixed performance trajectory, with underperforming results in the most recent months of 2022. However, its high growth rate in 2020 suggests its potential for impact. 
* **Possible Reason behind Underperformance on Q4 2022**: Our existing customers had been disengaged over time, considering their long purchase hiatus, decreasing repeat purchase rate, and single-item purchase behavior. Additionally, the number of registrations plummeted throughout 2022.
  
## Summary Insights

### **Overall Sales Trends:**
* **2020 surge in all sales metrics** - gross sales, order count, and AOV: Especially the highest growth in gross sales and order count occurred in March, when the pandemic hit and people started buying electronics to set up their home offices or cope with the lockdown.
* **Post-2020 sales decline**:
  * In 2021, gross sales and AOV started declining gradually, but order count momentum continued. This means that our customers placed more orders but for less expensive items compared to 2020.
  * In 2022, all metrics trended downwards to the pre-pandemic level or potentially worse across all products and regions.
* **Alarming Q4 2022 underperformance** compared to the 2019 gross sales average: October 2022 marked the lowest growth rate of -55.2%, and the sales increase during the following holiday season was insufficient to bounce back and reach at least the 2019 average level. Further analysis on Q4 2022 underperformance can be found [here](https://github.com/jayoungs/PicoTech_Electronics_Pandemic_Sales_Analyasis/edit/main/README.md#deep-dive-insights-on-underperformance-in-q4-2022).

### **Seasonality**
<img align="middle" width="60%" height="50%" alt="Screenshot 2025-07-14 at 6 16 10 PM" src="https://github.com/user-attachments/assets/a6922a0e-6f02-46ef-b964-953601175794" /> <br />

The persistent MoM gross sales growth volatility, as seen above, suggested a possible seasonal pattern, and in fact, there was. Both gross sales and order count showed dips in February and October, and surges in September and during November and December. These surges coincide with the back-to-school season, Labor Day sales, and the holiday season.

### **Product Segmentation:**
<img align="middle" width="1206" height="609" src="https://github.com/user-attachments/assets/844f390a-79aa-4921-ba86-60b63b5a6c3f" />

* **Products that failed to achieve sales expectations**:
  * **Bose Soundsport Headphones**, since being introduced to the product line in 2020, had experienced the highest negative growth rates in both gross sales and order count over the following two years, ultimately resulting in only one order in 2022.
  * Surprisingly, **Apple iPhone** had underperformed despite its general popularity, accounting for less than 1% of both gross sales and order volume. The **lack of product variation** might be the possible reason behind this. We sell only one model with one color and storage capacity option, as opposed to 27in 4K Gaming Monitor and Apple Airpods Headphone, which offer at least 14 options.
* **Product performance in Q4 2022** compared to the previous Q4: Gross sales declined across all the products by a range of -51% (Lenovo ThinkPad Laptop) and -83% (MacBook Air Laptop).
  
### **Regional Segmentation:** 
<img width="60%" height="60%" align="middle" src="https://github.com/user-attachments/assets/27e9c8a9-a093-4636-842c-fbbd388dcfa8" />

* **Potential market opportunity in APAC**: Although comprising a smaller portion of the market, APAC showed the highest sales growth rate of 226% in 2020 and the highest AOV between 2019 and 2022. Its customers purchased more expensive products than those from the other regions. Given their **higher spending power**, APAC can be **a target market for high-ticket products**.
* **Regional performance in Q4 2022** compared to the previous Q4: Gross sales declined across all the regions by a range of -68% (NA) and -82% (APAC).

### **Loyalty Program:** 
> Our loyalty program, launched in 2019, was designed for **customers who have created accounts and met a minimum purchase frequency**.
<img align="middle" width="2398" height="1198" alt="loyalty program" src="https://github.com/user-attachments/assets/a509aadd-fc83-44b8-89c3-932acb9bfd30" />

* **Unclear cause of the recent decrease** in loyalty member performance:
  * **The simultaneous decline in loyalty member performance and overall sales in Q4 2022** made it challenging to determine if the loyalty program itself was losing appeal or if its members were reflecting the broader market slowdown affecting all customer segments.
  * Loyalty members might have had no other products in their interests, given our limited variety of eight different products and their previous purchases.
* **Potential for impact**: The five-fold and twelve-fold growth in gross sales and order count, respectively, in 2020 indicates that the loyalty program, when effective, can significantly contribute to sales.
* We should **continue the loyalty program** for further observation and strategic refinement rather than discontinuing it prematurely.

## Deep Dive Insights on Underperformance in Q4 2022 

<**Factor to consider**>  
Electronic products, such as gaming monitors and laptops, have a **long lifespan** of at least 3-5 years. Hence, to boost sales constantly, 1) keeping **existing customers** engaged to revisit and buy different products and 2) acquiring **new customers** are crucial.

#### Hypothesis 1. Had existing customers been disengaged over time? - Yes
> Here, we define existing customers as those who **placed at least one order between 2019 and 2022, whether as guests or members**.
* **Long hiatus** between the last purchase date and January 1, 2023: 79% of customers hadn't made another purchase since at least 13 months ago.
* **Declining repeat purchase rate** over the years: 20% (2019) > 19% (2020) > 18% (2021) > 15% (2022).
* **Single-item purchase behavior**: 94.6% of our customers purchased only one unique product, and 5.2% purchased two distinctive products.

#### Hypothesis 2. Had we had fewer newly registered users over time? - Yes, but Further Investigation Required

> Due to the data limitations, this analysis focused on **newly registered users who created accounts between 2019 and 2022, regardless of whether they made
a purchase or not.**

<img width="60%" height="60%" align="middle" src="https://github.com/user-attachments/assets/ef9044ad-4645-4718-b076-54c61c7d00a5" />

However, it's **unclear whether this downfall was related to the direct marketing performance itself or whether visitors were not being sufficiently appealed to sign up.** Further investigation on marketing performance and customer journey is needed.

## Recommendations

#### Product Team
* Extend Apple iPhone variations in terms of different models in different colors and storage capacities.
* Discontinue Bose Soundsport Headphones.
* Prepare upgraded products for our top-selling products, the 27in 4K Gaming Monitors and MacBook Air Laptops, by conducting market research on the current popularity and profitability potential.
* Widen product variety in a lower price range that customers could purchase with less hesitation and financial risk, and for cross-selling (e.g., gaming keyboards, gaming headsets, or (gaming) mouse).
  
#### Marketing Team
* Refine seasonal marketing strategies for the back-to-school season and holidays.
* Target APAC customers for high-ticket products.
* Plan personalized promotions for product upgrades targeting customers who purchased gaming monitors and laptops in our first year, 2018.
* Launch a referral program to capitalize on our expanded customer base to acquire new customers.
* Map our customer journey to further understand their experience, pain points, and motivations behind their decisions by surveying customers after their purchase or users who didn't buy, and using existing data on the website/app and marketing email behavior.
* Further analyze our marketing channel performance to determine its impact on leads, registrations, and customer acquisition.
* Develop tailored promotions for registered but disengaged users based on the findings that only 13% of customers who created accounts made a purchase within one month and that 269 registered users hadn't yet made any purchase.

#### Sales Team
* Conduct qualitative research on top customers in terms of total spend who turned out to purchase multiple laptops. There might be opportunities targeting small business customers/resellers.

## Caveats (in progress)
* Profit is missing as a key sales metric in this analysis due to the limitations of the data. Profit analysis should be followed.
* If time and data were available, customer segmentation would have provided valuable insights to help us understand the diverse needs and preferences of our customers.
* To follow up on underperformance in Q4 2022, we should analyze more recent data from 2023 on.
* Improve data integrity and quality.

  
## Tableau Interactive Dashboard
