SELECT
date_date 
,COUNT (DISTINCT orders_id) AS nb_transactions
,ROUND(SUM(revenue),2) AS total_revenue
,ROUND(AVG(revenue),2) AS average_basket
,ROUND(SUM(operational_margin),2) AS operational_margin
,ROUND(SUM(purchase),2) AS total_purchase 
,ROUND(SUM(shipping_fee),2) AS total_shipping_fees
,ROUND(SUM(logcost),2) AS total_log_cost
,SUM(quantity) AS total_quantity_products_sold
FROM {{ref('int_orders_operational')}}
GROUP BY date_date 
ORDER BY date_date DESC 