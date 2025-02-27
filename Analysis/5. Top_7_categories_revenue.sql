# Which top 7 product categories generated the highest revenue?

SELECT
  opd.product_category_name,
  ROUND(SUM(oopd.payment_value), 2) AS revenue
FROM olist_order_payments_dataset oopd
JOIN olist_orders_dataset ood ON oopd.order_id = ood.order_id
JOIN olist_order_items_dataset ooid ON oopd.order_id = ooid.order_id
JOIN olist_products_dataset opd ON ooid.product_id = opd.product_id
WHERE ood.order_status <> 'canceled'
GROUP BY opd.product_category_name
ORDER BY revenue DESC
LIMIT 7;
