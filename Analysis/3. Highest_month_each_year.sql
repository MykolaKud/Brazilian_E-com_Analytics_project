WITH orders_grouped_by_month AS (
  SELECT 
    MONTH(order_purchase_timestamp) AS order_month,
    YEAR(order_purchase_timestamp) AS order_year,
    COUNT(*) AS num_of_orders
  FROM olist_orders_dataset
  WHERE order_status <> 'canceled'
  GROUP BY order_month, order_year
)
SELECT * FROM orders_grouped_by_month
WHERE num_of_orders = (
  SELECT
    MAX(num_of_orders)
  FROM orders_grouped_by_month AS og
  WHERE og.order_year = orders_grouped_by_month.order_year
)
ORDER BY order_year, order_month;
