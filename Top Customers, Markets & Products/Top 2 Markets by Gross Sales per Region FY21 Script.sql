WITH cte1 AS
(
SELECT
c.market,
c.region,
ROUND(SUM(s.sold_quantity*g.gross_price)/1000000,2) AS gross_sales_mln
FROM fact_sales_monthly s
JOIN dim_customer c
ON c.customer_code=s.customer_code
JOIN fact_gross_price g
ON g.fiscal_year=s.fiscal_year
AND g.product_code=s.product_code
WHERE s.fiscal_year=2021
GROUP BY market
),
cte2 AS
(
SELECT
*,
DENSE_RANK() OVER(PARTITION BY region ORDER BY gross_sales_mln DESC) AS rnk
FROM cte1
)
SELECT
*
FROM cte2
WHERE rnk<=2;