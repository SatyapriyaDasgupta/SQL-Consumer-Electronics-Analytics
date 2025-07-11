# SQL-Consumer-Electronics-Analytics

## Introduction:
AtliQ Hardwares is a prominent Indian brand in Consumer Electronics. Despite their strong market position, the management identified critical gaps in their decision
making due to the lack of actionable insights. To address this issue, we have utilized over 1.4 million records spanning from FY 2017 to FY 2022 which include
sales, customer, and product data to perform Financial Analytics, analyze Supply Chain Performance, and identify top performing Customers, Products, and Markets
with the help of SQL.

## Data Sources:
The main datasets used include fact_sales_monthly, dim_product, dim_customer, and supporting tables such as fact_manufacturing_cost, fact_pre_invoice_deductions,
and fact_gross_price. The input data consists of sales data from Fiscal Year 2018 till Fiscal Year 2022.

## Project Overview:
Utilized SQL to extract relevant data from internal databases, transformed the results into clear reports, and presented these actionable insights to top level
management to aid in strategic decision making in areas such as promotional strategies and resource allocation.

## Technical Skills:
- [x] Wrote SQL queries to merge sales data from fact tables and enrich them with product and pricing details via joins with dimension tables.
- [x] Derived fiscal years dynamically from raw date fields using custom logics.
- [x] Created temporary tables and CTEs to structure complex queries for layered analysis (e.g., forecast accuracy breakdowns).
- [x] Built comparative models to analyze YoY forecast accuracy drops by customer using multiple temporary tables on top of CTEs.
- [x] Applied conditional logic to rectify forecast accuracy outputs (e.g., capping errors using `IF` conditions).
- [x] Designed queries that tracked performance of top products, segments, and categories.
- [x] Created multiple stored procedures to semi-automate repetitive reporting.
- [x] Created reusable SQL views to streamline future analysis to build on clean and structured datasets.
- [x] Filtered and structured data outputs to be analysis-ready for Power BI or Excel-based reporting.

## Results and Insights
1. Market Presence:
Atliq has established a strong presence in 6 major APAC markets.

2. Product Portfolio:
Product portfolio increased by 36% from FY 2020 to FY 2021.
Introduced 89 new products into to the market in FY2021.

3. Strategic Needs:
Need to diversify production as well as increase sales in Desktop, Networking and Storage segments.

4. Low Performers (FY 2021):
Least revenue generating product category in FY 2021 is Batteries.
Least sold product in FY 2021 is Personal Desktops & Gaming Laptop.

5. Top Performing Products:
In FY 2021, Pen Drives were the top selling products in the Networking & Storage segment, keyboard in the Peripherals & Accessories segment, and business laptop
and personal laptops in the Personal & Corporate segment. These products significantly contributed to the company's overall sales performance.

7. Supply Chain Insights:
The complete drop in forecast accuracy for Netherlands-based customers in 2021, indicating a significant issue with the forecasting models in that region.

## Reports:

## Top 10 Markets by Net Sales
<p align="center">
  <img src='https://github.com/SatyapriyaDasgupta/SQL-Consumer-Electronics
    Analytics/blob/c2167230c472761e2257dd553fc82ea4af630bd0/Top%20Customers%2C%20Markets%20%26%20Products/Top%2010%20Markets%20by%20Net%20Sales.png'>
</p>

## Top 10 Customers by Revenue Contribution
<p align="center">
  <img src='https://github.com/SatyapriyaDasgupta/SQL-Consumer-Electronics
    Analytics/blob/c2167230c472761e2257dd553fc82ea4af630bd0/Top%20Customers%2C%20Markets%20%26%20Products/Top%2010%20Customers%20by%20Revenue%20Contribution.png'
</p>

A. Finance Analytics:
1. [Chroma FY21 Sales Report](https://github.com/SatyapriyaDasgupta/SQL-Consumer-Electronics-Analytics/blob/44072f808311f8fdb2e90d94c54cfe1a0235df41/Finance%20Analytics/Chroma%20FY21%20Sales%20Report.csv)

2. [Chroma Monthly Gross Sales Report](https://github.com/SatyapriyaDasgupta/SQL-Consumer-Electronics-Analytics/blob/44072f808311f8fdb2e90d94c54cfe1a0235df41/Finance%20Analytics/Chroma%20Monthly%20Gross%20Sales%20Report.csv)

3. [Chroma Yearly Sales Report](https://github.com/SatyapriyaDasgupta/SQL-Consumer-Electronics-Analytics/blob/44072f808311f8fdb2e90d94c54cfe1a0235df41/Finance%20Analytics/Chroma%20Yearly%20Sales%20Report.csv)

B. Supply Chain Analytics:
1. [Customer Level Forecast Accuracy Analysis FY21](https://github.com/SatyapriyaDasgupta/SQL-Consumer-Electronics-Analytics/blob/323fbd71526fcfb074ff5d92e7bf2e58da9be915/Supply%20Chain%20Analytics/Customer%20Level%20Forecast%20Accuracy%20Analysis%20FY21%20Report.csv)

2. [YoY Forecast Accuracy Drop by Customer](https://github.com/SatyapriyaDasgupta/SQL-Consumer-Electronics-Analytics/blob/323fbd71526fcfb074ff5d92e7bf2e58da9be915/Supply%20Chain%20Analytics/YoY%20Forecast%20Accuracy%20Drop%20by%20Customer%20Report.csv)

C. Top Customers, Markets & Products:
1. [Regional Market Share Analysis by Customer FY21](https://github.com/SatyapriyaDasgupta/SQL-Consumer-Electronics-Analytics/blob/323fbd71526fcfb074ff5d92e7bf2e58da9be915/Top%20Customers%2C%20Markets%20%26%20Products/Regional%20Market%20Share%20Analysis%20by%20Customer%20FY21%20Report.csv)

2. [Top 2 Markets by Gross Sales per Region FY21](https://github.com/SatyapriyaDasgupta/SQL-Consumer-Electronics-Analytics/blob/323fbd71526fcfb074ff5d92e7bf2e58da9be915/Top%20Customers%2C%20Markets%20%26%20Products/Top%202%20Markets%20by%20Gross%20Sales%20per%20Region%20FY21%20Report.csv)

3. [Top 3 Products by Quantity Sold per Division FY21](https://github.com/SatyapriyaDasgupta/SQL-Consumer-Electronics-Analytics/blob/323fbd71526fcfb074ff5d92e7bf2e58da9be915/Top%20Customers%2C%20Markets%20%26%20Products/Top%203%20Products%20by%20Quantity%20Sold%20per%20Division%20FY21%20Report.csv)

4. [Top Customer By Revenue Contribution FY21](https://github.com/SatyapriyaDasgupta/SQL-Consumer-Electronics-Analytics/blob/323fbd71526fcfb074ff5d92e7bf2e58da9be915/Top%20Customers%2C%20Markets%20%26%20Products/Top%20Customer%20By%20Revenue%20Contribution%20FY21%20Report.csv)
