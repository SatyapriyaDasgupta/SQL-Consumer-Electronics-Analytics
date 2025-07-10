SELECT
s.date,
ROUND(SUM(g.gross_price*s.sold_quantity),2) AS Total_Gross_Sales
FROM fact_sales_monthly s
JOIN fact_gross_price g
ON g.product_code=s.product_code
AND g.fiscal_year=get_fiscal_year(s.date)
WHERE customer_code=90002002
GROUP BY s.date
ORDER BY s.date;