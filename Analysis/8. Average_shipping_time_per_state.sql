#Let's calculate the average shipping time per state

SELECT
  ocd.customer_state,
  ROUND(AVG(DATEDIFF(ood.order_estimated_delivery_date, ood.order_delivered_carrier_date)), 0) AS shipping_time
FROM olist_orders_dataset ood
JOIN olist_customers_dataset ocd ON ood.customer_id = ocd.customer_id 
WHERE ood.order_status = 'delivered' 
  AND order_estimated_delivery_date <> '' 
  AND order_delivered_carrier_date <> ''
GROUP BY ocd.customer_state
ORDER BY shipping_time DESC;


