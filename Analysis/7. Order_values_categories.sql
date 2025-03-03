SELECT
  revenue_rank,
  COUNT(order_id) AS order_count,
  ROUND(COUNT(order_id) * 100.0 / SUM(COUNT(order_id)) OVER(), 2) AS percentage
FROM (
  SELECT
     ood.order_id,
     SUM(oopd.payment_value) AS order_total,
     CASE
       WHEN SUM(oopd.payment_value) < 100 THEN 'Low'
       WHEN SUM(oopd.payment_value) BETWEEN 100 AND 300 THEN 'Medium'
       ELSE 'High'
     END AS revenue_rank
   FROM olist_orders_dataset ood
   JOIN olist_order_payments_dataset oopd ON ood.order_id = oopd.order_id
   GROUP BY ood.order_id
) rank_dataset
GROUP BY revenue_rank
ORDER BY percentage DESC;



    
    
