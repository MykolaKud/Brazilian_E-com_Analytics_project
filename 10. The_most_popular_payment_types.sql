#What is the most common payment method among customers?
select
   oopd.payment_type,
   count(ood.order_id) as num_of_orders
from olist_order_payments_dataset oopd 
join olist_orders_dataset ood on oopd.order_id = ood.order_id
where ood.order_status <> 'canceled'
group by oopd.payment_type
order by num_of_orders desc
limit 1

#Are there any difference per state?
select
  customer_state,
  payment_type AS most_popular_payment_type
from(
  select
    ocd.customer_state,
    oopd.payment_type,
    COUNT(oopd.order_id) as payment_count,
    RANK() OVER (PARTITION BY ocd.customer_state ORDER BY COUNT(oopd.order_id) DESC) AS rank_order
  from olist_order_payments_dataset oopd
  join olist_orders_dataset ood on oopd.order_id = ood.order_id
  join olist_customers_dataset ocd on ood.customer_id = ocd.customer_id
  where ood.order_status <> 'canceled'
  group by ocd.customer_state, oopd.payment_type
  ) as grouped_by_payment_type 
where rank_order = 1
order by customer_state 
