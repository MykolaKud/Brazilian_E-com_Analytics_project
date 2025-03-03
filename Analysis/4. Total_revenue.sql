SELECT
  YEAR(order_purchase_timestamp) AS reporting_year,
  ROUND(SUM(oopd.payment_value), 2) AS annual_revenue,
  COUNT(ood.order_id) AS total_orders_per_year,
  ROUND(AVG(oopd.payment_value), 2) AS average_order_value
FROM olist_orders_dataset ood
JOIN olist_order_payments_dataset oopd ON ood.order_id = oopd.order_id 
WHERE ood.order_status <> 'canceled'
GROUP BY reporting_year
ORDER BY reporting_year;

