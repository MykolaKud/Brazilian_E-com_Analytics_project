#The most common payment method among customers
   
SELECT
   oopd.payment_type,
   COUNT(ood.order_id) AS num_of_orders
FROM olist_order_payments_dataset oopd 
JOIN olist_orders_dataset ood ON oopd.order_id = ood.order_id
WHERE ood.order_status <> 'canceled'
GROUP BY oopd.payment_type
ORDER BY num_of_orders DESC
LIMIT 1;

#Are there any difference per state?
   
SELECT
  customer_state,
  payment_type AS most_popular_payment_type
FROM (
  SELECT
    ocd.customer_state,
    oopd.payment_type,
    COUNT(oopd.order_id) AS payment_count,
    RANK() OVER (PARTITION BY ocd.customer_state ORDER BY COUNT(oopd.order_id) DESC) AS rank_order
  FROM olist_order_payments_dataset oopd
  JOIN olist_orders_dataset ood ON oopd.order_id = ood.order_id
  JOIN olist_customers_dataset ocd ON ood.customer_id = ocd.customer_id
  WHERE ood.order_status <> 'canceled'
  GROUP BY ocd.customer_state, oopd.payment_type
) AS grouped_by_payment_type 
WHERE rank_order = 1
ORDER BY customer_state;

