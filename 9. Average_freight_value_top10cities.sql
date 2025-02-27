# Which 10 cities have the highest shipping costs on average?

select 
  ocd.customer_city,
  AVG(ooid.freight_value) as average_freight_value
from olist_order_items_dataset ooid
join olist_orders_dataset ood on ooid.order_id = ood.order_id 
join olist_customers_dataset ocd on ood.customer_id = ocd.customer_id
group by ocd.customer_city
order by average_freight_value desc
limit 10