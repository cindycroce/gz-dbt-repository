SELECT 
date_date  
,ROUND(operational_margin - ads_cost,2) AS margin
,average_basket
,operational_margin
,ads_cost
,impressions
,clicks
,total_quantity_products_sold
,total_revenue
,total_purchase
,total_shipping_fees
,total_log_cost
FROM {{ref('int_campaigns_day')}}
FULL OUTER JOIN {{ref('finance_days')}}
USING (date_date)
ORDER BY date_date DESC
