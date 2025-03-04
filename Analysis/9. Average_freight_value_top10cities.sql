SELECT 
  ocd.customer_state,
  ROUND(AVG(ooid.freight_value), 2) AS average_freight_value
FROM olist_order_items_dataset ooid
JOIN olist_orders_dataset ood ON ooid.order_id = ood.order_id 
JOIN olist_customers_dataset ocd ON ood.customer_id = ocd.customer_id
WHERE ooid.freight_value > 0
GROUP BY ocd.customer_state
ORDER BY average_freight_value DESC;
