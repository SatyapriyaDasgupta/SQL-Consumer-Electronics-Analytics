SELECT
get_fiscal_year(s.date) AS Fiscal_Year,
ROUND(SUM(g.gross_price*s.sold_quantity),2) AS Yearly_Sales
FROM fact_sales_monthly s
JOIN fact_gross_price g
ON g.product_code=s.product_code
AND g.fiscal_year=get_fiscal_year(s.date)
WHERE customer_code=90002002
GROUP BY Fiscal_Year
ORDER BY Fiscal_Year;