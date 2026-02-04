SELECT
sales.date_date 
,sales.orders_id
,sales.product_id
,sales.revenue
,sales.quantity
,product.purchase_price
,ROUND(sales.quantity * product.purchase_price,2) AS purchased_cost
,ROUND(sales.revenue-(sales.quantity * product.purchase_price),2) AS margin
FROM {{ref('stg_gz_raw_data__raw_gz_sales')}} AS sales
LEFT JOIN {{ ref('stg_gz_raw_data__raw_gz_product')}} AS product
ON sales.product_id = product.products_id
