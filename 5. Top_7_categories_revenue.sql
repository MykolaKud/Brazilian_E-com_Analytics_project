# Which top 7 product categories generate the highest revenue?

select
  opd.product_category_name,
  round(sum(oopd.payment_value), 2) as revenue
from olist_order_payments_dataset oopd
join olist_orders_dataset ood on oopd.order_id = ood.order_id
join olist_order_items_dataset ooid on oopd.order_id = ooid.order_id
join olist_products_dataset opd on ooid.product_id = opd.product_id
where ood.order_status <> 'canceled'
group by opd.product_category_name
order by revenue desc
limit 7