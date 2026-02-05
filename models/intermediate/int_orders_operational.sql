SELECT
     o.orders_id
     ,o.date_date
     ,o.quantity
     ,o.revenue
     ,o.purchase
     ,o.margin
     ,s.shipping_fee
     ,s.logcost
     ,s.ship_cost
     ,ROUND(o.margin + s.shipping_fee - (s.logcost + s.ship_cost),2) AS operational_margin
 FROM {{ref('int_orders_margin')}} AS o
 LEFT JOIN {{ref('stg_gz_raw_data__raw_gz_ship')}} AS s
     USING(orders_id)
 ORDER BY orders_id desc