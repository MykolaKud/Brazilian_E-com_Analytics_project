# What is the total revenue generated per year?

select
  year(order_purchase_timestamp) as reporting_year,
  round(sum(oopd.payment_value), 2) as annual_revenue
from olist_orders_dataset ood
join olist_order_payments_dataset oopd on ood.order_id = oopd.order_id 
where ood.order_status <> 'canceled'
group by reporting_year
order by reporting_year;
