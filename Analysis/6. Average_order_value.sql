# What is the average order value (AOV) across different states in Brazil?

SELECT
  ocd.customer_state,
  ROUND(AVG(oopd.payment_value), 2) AS average_order_value
FROM olist_customers_dataset ocd
JOIN olist_orders_dataset ood ON ood.customer_id = ocd.customer_id
JOIN olist_order_payments_dataset oopd ON ood.order_id = oopd.order_id
GROUP BY ocd.customer_state
ORDER BY ocd.customer_state;
