select 
  'product_category_name_translation' as dataset,
  'Total_rows' as metric,
  count(*) as value
from product_category_name_translation
union all 
select 
  'product_category_name_translation',
  'NULL-count - product_category_name',
  sum(product_category_name is null)
from product_category_name_translation  
union all 
select 
  'product_category_name_translation',
  'NULL-count - product_category_name_english',
  sum(product_category_name_english is null)
from product_category_name_translation
union all
select 
  'olist_sellers_dataset',
  'Total_rows',
  count(*)
from olist_sellers_dataset
union all 
select 
  'olist_sellers_dataset',
  'NULL-count - seller_id',
  sum(seller_id is null)
from olist_sellers_dataset
union all 
select 
  'olist_sellers_dataset',
  'NULL-count - seller_city',
  sum(seller_city is null)
from olist_sellers_dataset
union all 
select 
  'olist_sellers_dataset',
  'NULL-count - seller_state',
  sum(seller_state is null)
from olist_sellers_dataset
union all
select 
  'olist_customers_dataset',
  'Total_rows',
  count(*)
from olist_customers_dataset
union all
select 
  'olist_customers_dataset',
  'NULL-count - customer_id',
  sum(customer_id is null)
from olist_customers_dataset
union all
select 
  'olist_customers_dataset',
  'NULL-count - customer_unique_id',
  sum(customer_unique_id is null)
from olist_customers_dataset
union all
select 
  'olist_customers_dataset',
  'NULL-count - customer_zip_code_prefix',
  sum(customer_zip_code_prefix is null)
from olist_customers_dataset
union all
select 
  'olist_customers_dataset',
  'NULL-count - customer_city',
  sum(customer_city is null)
from olist_customers_dataset
union all
select 
  'olist_customers_dataset',
  'NULL-count - customer_state',
  sum(customer_state is null)
from olist_customers_dataset
union all
select 
  'olist_geolocation_dataset',
  'Total_rows',
  count(*)
from olist_geolocation_dataset
union all
select 
  'olist_geolocation_dataset',
  'NULL-count - geolocation_zip_code_prefix',
  sum(geolocation_zip_code_prefix is null)
from olist_geolocation_dataset
union all
select 
  'olist_geolocation_dataset',
  'NULL-count - geolocation_lat',
  sum(geolocation_lat is null)
from olist_geolocation_dataset
union all
select 
  'olist_geolocation_dataset',
  'NULL-count - geolocation_lng',
  sum(geolocation_lng is null)
from olist_geolocation_dataset
union all
select 
  'olist_geolocation_dataset',
  'NULL-count - geolocation_city',
  sum(geolocation_city is null)
from olist_geolocation_dataset
union all
select 
  'olist_geolocation_dataset',
  'NULL-count - geolocation_state',
  sum(geolocation_state is null)
from olist_geolocation_dataset
union all
select 
  'olist_order_payments_dataset',
  'Total_rows',
  count(*)
from olist_order_payments_dataset
union all
select 
  'olist_order_payments_dataset',
  'NULL-count - order_id',
  sum(order_id is null)
from olist_order_payments_dataset
union all
select 
  'olist_order_payments_dataset',
  'NULL-count - payment_sequential',
  sum(payment_sequential is null)
from olist_order_payments_dataset
union all
select 
  'olist_order_payments_dataset',
  'NULL-count - payment_type',
  sum(payment_type is null)
from olist_order_payments_dataset
union all
select 
  'olist_order_payments_dataset',
  'NULL-count - payment_installments',
  sum(payment_installments is null)
from olist_order_payments_dataset
union all
select 
  'olist_order_payments_dataset',
  'NULL-count - payment_value',
  sum(payment_value is null)
from olist_order_payments_dataset
union all
select 
  'olist_order_items_dataset',
  'Total_rows',
  count(*)
from olist_order_items_dataset
union all
select 
  'olist_order_items_dataset',
  'NULL-count - order_id',
  sum(order_id is null)
from olist_order_items_dataset
union all
select 
  'olist_order_items_dataset',
  'NULL-count - order_item_id',
  sum(order_item_id is null)
from olist_order_items_dataset
union all
select 
  'olist_order_items_dataset',
  'NULL-count - product_id',
  sum(product_id is null)
from olist_order_items_dataset
union all
select 
  'olist_order_items_dataset',
  'NULL-count - seller_id',
  sum(seller_id is null)
from olist_order_items_dataset
union all
select 
  'olist_order_items_dataset',
  'NULL-count - shipping_limit_date',
  sum(shipping_limit_date is null)
from olist_order_items_dataset
union all
select 
  'olist_order_items_dataset',
  'NULL-count - price',
  sum(price is null)
from olist_order_items_dataset
union all
select 
  'olist_order_items_dataset',
  'NULL-count - freight_value',
  sum(freight_value is null)
from olist_order_items_dataset
union all
select 
  'olist_order_reviews_dataset',
  'Total_rows',
  count(*)
from olist_order_reviews_dataset
union all
select 
  'olist_order_reviews_dataset',
  'NULL-count - review_id',
  sum(review_id is null)
from olist_order_reviews_dataset
union all
select 
  'olist_order_reviews_dataset',
  'NULL-count - review_score',
  sum(review_score is null)
from olist_order_reviews_dataset
union all
select 
  'olist_order_reviews_dataset',
  'NULL-count - review_comment_title',
  sum(review_comment_title is null)
from olist_order_reviews_dataset
union all
select 
  'olist_order_reviews_dataset',
  'NULL-count - review_comment_message',
  sum(review_comment_message is null)
from olist_order_reviews_dataset
union all
select 
  'olist_order_reviews_dataset',
  'NULL-count - review_creation_date',
  sum(review_creation_date is null)
from olist_order_reviews_dataset
union all
select 
  'olist_order_reviews_dataset',
  'NULL-count - review_answer_timestamp',
  sum(review_answer_timestamp is null)
from olist_order_reviews_dataset
union all
select 
  'olist_orders_dataset',
  'Total_rows',
  count(*)
from olist_orders_dataset
union all
select 
  'olist_orders_dataset',
  'NULL-count - order_id',
  sum(order_id is null)
from olist_orders_dataset
union all
select 
  'olist_orders_dataset',
  'NULL-count - customer_id',
  sum(customer_id is null)
from olist_orders_dataset
union all
select 
  'olist_orders_dataset',
  'NULL-count - order_status',
  sum(order_status is null)
from olist_orders_dataset
union all
select 
  'olist_orders_dataset',
  'NULL-count - order_purchase_timestamp',
  sum(order_purchase_timestamp is null)
from olist_orders_dataset
union all
select 
  'olist_orders_dataset',
  'NULL-count - order_approved_at',
  sum(order_approved_at is null)
from olist_orders_dataset
union all
select 
  'olist_orders_dataset',
  'NULL-count - order_delivered_carrier_date',
  sum(order_delivered_carrier_date is null)
from olist_orders_dataset
union all
select 
  'olist_orders_dataset',
  'NULL-count - order_delivered_customer_date',
  sum(order_delivered_customer_date is null)
from olist_orders_dataset
union all
select 
  'olist_orders_dataset',
  'NULL-count - order_estimated_delivery_date',
  sum(order_estimated_delivery_date is null)
from olist_orders_dataset
union all
select 
  'olist_products_dataset',
  'Total_rows',
  count(*)
from olist_products_dataset
union all
select 
  'olist_products_dataset',
  'NULL-count - product_id',
  sum(product_id is null)
from olist_products_dataset
union all
select 
  'olist_products_dataset',
  'NULL-count - product_category_name',
  sum(product_category_name is null)
from olist_products_dataset
union all
select 
  'olist_products_dataset',
  'NULL-count - product_name_lenght',
  sum(product_name_lenght is null)
from olist_products_dataset
union all
select 
  'olist_products_dataset',
  'NULL-count - product_description_lenght',
  sum(product_description_lenght is null)
from olist_products_dataset
union all
select 
  'olist_products_dataset',
  'NULL-count - product_photos_qty',
  sum(product_photos_qty is null)
from olist_products_dataset
union all
select 
  'olist_products_dataset',
  'NULL-count - product_weight_g',
  sum(product_weight_g is null)
from olist_products_dataset
union all
select 
  'olist_products_dataset',
  'NULL-count - product_length_cm',
  sum(product_length_cm is null)
from olist_products_dataset
union all
select 
  'olist_products_dataset',
  'NULL-count - product_height_cm',
  sum(product_height_cm is null)
from olist_products_dataset
union all
select 
  'olist_products_dataset',
  'NULL-count - product_width_cm',
  sum(product_width_cm is null)
from olist_products_dataset


#2 product_id's don't have entered dimensions and 610 prodict_id's don't have name, description and product photos
