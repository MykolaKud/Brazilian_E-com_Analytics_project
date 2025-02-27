# Let's check which month had the highest number of orders each year except canceled?
with orders_grouped_by_month as (
  select 
    month(order_purchase_timestamp) as order_month,
    year(order_purchase_timestamp) as order_year,
    count(*) as num_of_orders
  from olist_orders_dataset
  where order_status <> 'canceled'
  group by order_month, order_year
)
select * from orders_grouped_by_month
where num_of_orders = (
  select
    MAX(num_of_orders)
  from orders_grouped_by_month as og
  where og.order_year = orders_grouped_by_month.order_year)
order by order_month, order_year;
order by order_year, order_month;