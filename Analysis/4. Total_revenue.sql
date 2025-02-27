# What is the total revenue generated per year?

SELECT
  YEAR(order_purchase_timestamp) AS reporting_year,
  ROUND(SUM(oopd.payment_value), 2) AS annual_revenue
FROM olist_orders_dataset ood
JOIN olist_order_payments_dataset oopd ON ood.order_id = oopd.order_id 
WHERE ood.order_status <> 'canceled'
GROUP BY reporting_year
ORDER BY reporting_year;

