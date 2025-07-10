WITH cte1 AS
(
SELECT 
c.customer,
ROUND(SUM(ns.net_sales)/1000000,2) AS net_sales_mln,
c.region
FROM gdb0041.net_sales ns
JOIN dim_customer c
ON ns.customer_code=c.customer_code
WHERE fiscal_year=2021
GROUP BY c.customer,c.region
)
SELECT
*,
ROUND(net_sales_mln*100/SUM(net_sales_mln)OVER(PARTITION BY region),2) AS mkt_share_pct
FROM cte1
ORDER BY net_sales_mln DESC;