WITH cte1 AS
(
SELECT 
customer,
ROUND(SUM(net_sales)/1000000,2) AS net_sales_mln
FROM gdb0041.net_sales
WHERE fiscal_year=2021
GROUP BY customer
)
SELECT
*,
ROUND(net_sales_mln*100/SUM(net_sales_mln)OVER(),2) AS mkt_share_pct
FROM cte1
ORDER BY net_sales_mln DESC;