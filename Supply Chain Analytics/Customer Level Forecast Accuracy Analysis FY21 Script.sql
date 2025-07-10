WITH forecast_err_table AS
(
SELECT
s.customer_code,
c.customer,
c.market,
SUM(s.sold_quantity) AS total_sold_qty,
SUM(s.forecast_quantity) AS total_forecast_qty,
SUM((forecast_quantity-sold_quantity)) AS net_err,
SUM((forecast_quantity-sold_quantity))*100/SUM(forecast_quantity) AS net_err_pct,
SUM(ABS(forecast_quantity-sold_quantity)) AS abs_err,
SUM(ABS(forecast_quantity-sold_quantity))*100/SUM(forecast_quantity) AS abs_err_pct
FROM fact_act_est s
JOIN dim_customer c
USING (customer_code)
WHERE s.fiscal_year=2021
GROUP BY s.customer_code
)
SELECT
*,
IF (abs_err_pct > 100, 0, 100-abs_err_pct) AS forecast_accuracy
FROM forecast_err_table
ORDER BY forecast_accuracy DESC;