# What is the distribution of order values (low, medium, high)?

select
  revenue_rank,
  count(order_id) as order_count,
  round(count(order_id)*100.0/sum(count(order_id)) over(), 2) as percentage
from (
  select
     ood.order_id,
     sum(oopd.payment_value) as order_total,
     case
    	when SUM(oopd.payment_value) < 100 then 'Low'
    	when SUM(oopd.payment_value) between 100 and 300 then 'Medium'
    	else 'High'
     end as revenue_rank
   from olist_orders_dataset ood
   join olist_order_payments_dataset oopd on ood.order_id = oopd.order_id
   group by ood.order_id
 ) rank_dataset
group by revenue_rank
order by percentage desc


    
    