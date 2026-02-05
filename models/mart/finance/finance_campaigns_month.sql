SELECT 
DATE_TRUNC(date_date,month) AS months
,SUM(margin) AS margin 
,SUM(average_basket) AS avg_basket
,SUM(operational_margin) AS ops_margin
,SUM(ads_cost) AS ads_cost
,SUM(impressions) AS impressions
,SUM(clicks) AS clicks
,SUM(total_quantity_products_sold) AS qty
,SUM(total_revenue) AS revenue
,SUM(total_purchase) AS purchase_cost
,SUM(total_shipping_fees) AS shippin_fee
,SUM(total_log_cost) AS log_cost
FROM {{ref('finance_campaigns_day')}}
GROUP BY months
ORDER BY months DESC
