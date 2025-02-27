SELECT 
  'product_category_name_translation' AS datASet,
  'Total_rows' AS metric,
  COUNT(*) AS value
FROM product_category_name_translation
UNION ALL 
SELECT 
  'product_category_name_translation',
  'NULL-COUNT - product_category_name',
  sum(product_category_name IS NULL)
FROM product_category_name_translation  
UNION ALL 
SELECT 
  'product_category_name_translation',
  'NULL-COUNT - product_category_name_english',
  sum(product_category_name_english IS NULL)
FROM product_category_name_translation
UNION ALL
SELECT 
  'olist_sellers_datASet',
  'Total_rows',
  COUNT(*)
FROM olist_sellers_datASet
UNION ALL 
SELECT 
  'olist_sellers_datASet',
  'NULL-COUNT - seller_id',
  sum(seller_id IS NULL)
FROM olist_sellers_datASet
UNION ALL 
SELECT 
  'olist_sellers_datASet',
  'NULL-COUNT - seller_city',
  sum(seller_city IS NULL)
FROM olist_sellers_datASet
UNION ALL 
SELECT 
  'olist_sellers_datASet',
  'NULL-COUNT - seller_state',
  sum(seller_state IS NULL)
FROM olist_sellers_datASet
UNION ALL
SELECT 
  'olist_customers_datASet',
  'Total_rows',
  COUNT(*)
FROM olist_customers_datASet
UNION ALL
SELECT 
  'olist_customers_datASet',
  'NULL-COUNT - customer_id',
  sum(customer_id IS NULL)
FROM olist_customers_datASet
UNION ALL
SELECT 
  'olist_customers_datASet',
  'NULL-COUNT - customer_unique_id',
  sum(customer_unique_id IS NULL)
FROM olist_customers_datASet
UNION ALL
SELECT 
  'olist_customers_datASet',
  'NULL-COUNT - customer_zip_code_prefix',
  sum(customer_zip_code_prefix IS NULL)
FROM olist_customers_datASet
UNION ALL
SELECT 
  'olist_customers_datASet',
  'NULL-COUNT - customer_city',
  sum(customer_city IS NULL)
FROM olist_customers_datASet
UNION ALL
SELECT 
  'olist_customers_datASet',
  'NULL-COUNT - customer_state',
  sum(customer_state IS NULL)
FROM olist_customers_datASet
UNION ALL
SELECT 
  'olist_geolocation_datASet',
  'Total_rows',
  COUNT(*)
FROM olist_geolocation_datASet
UNION ALL
SELECT 
  'olist_geolocation_datASet',
  'NULL-COUNT - geolocation_zip_code_prefix',
  sum(geolocation_zip_code_prefix IS NULL)
FROM olist_geolocation_datASet
UNION ALL
SELECT 
  'olist_geolocation_datASet',
  'NULL-COUNT - geolocation_lat',
  sum(geolocation_lat IS NULL)
FROM olist_geolocation_datASet
UNION ALL
SELECT 
  'olist_geolocation_datASet',
  'NULL-COUNT - geolocation_lng',
  sum(geolocation_lng IS NULL)
FROM olist_geolocation_datASet
UNION ALL
SELECT 
  'olist_geolocation_datASet',
  'NULL-COUNT - geolocation_city',
  sum(geolocation_city IS NULL)
FROM olist_geolocation_datASet
UNION ALL
SELECT 
  'olist_geolocation_datASet',
  'NULL-COUNT - geolocation_state',
  sum(geolocation_state IS NULL)
FROM olist_geolocation_datASet
UNION ALL
SELECT 
  'olist_order_payments_datASet',
  'Total_rows',
  COUNT(*)
FROM olist_order_payments_datASet
UNION ALL
SELECT 
  'olist_order_payments_datASet',
  'NULL-COUNT - order_id',
  sum(order_id IS NULL)
FROM olist_order_payments_datASet
UNION ALL
SELECT 
  'olist_order_payments_datASet',
  'NULL-COUNT - payment_sequential',
  sum(payment_sequential IS NULL)
FROM olist_order_payments_datASet
UNION ALL
SELECT 
  'olist_order_payments_datASet',
  'NULL-COUNT - payment_type',
  sum(payment_type IS NULL)
FROM olist_order_payments_datASet
UNION ALL
SELECT 
  'olist_order_payments_datASet',
  'NULL-COUNT - payment_installments',
  sum(payment_installments IS NULL)
FROM olist_order_payments_datASet
UNION ALL
SELECT 
  'olist_order_payments_datASet',
  'NULL-COUNT - payment_value',
  sum(payment_value IS NULL)
FROM olist_order_payments_datASet
UNION ALL
SELECT 
  'olist_order_items_datASet',
  'Total_rows',
  COUNT(*)
FROM olist_order_items_datASet
UNION ALL
SELECT 
  'olist_order_items_datASet',
  'NULL-COUNT - order_id',
  sum(order_id IS NULL)
FROM olist_order_items_datASet
UNION ALL
SELECT 
  'olist_order_items_datASet',
  'NULL-COUNT - order_item_id',
  sum(order_item_id IS NULL)
FROM olist_order_items_datASet
UNION ALL
SELECT 
  'olist_order_items_datASet',
  'NULL-COUNT - product_id',
  sum(product_id IS NULL)
FROM olist_order_items_datASet
UNION ALL
SELECT 
  'olist_order_items_datASet',
  'NULL-COUNT - seller_id',
  sum(seller_id IS NULL)
FROM olist_order_items_datASet
UNION ALL
SELECT 
  'olist_order_items_datASet',
  'NULL-COUNT - shipping_limit_date',
  sum(shipping_limit_date IS NULL)
FROM olist_order_items_datASet
UNION ALL
SELECT 
  'olist_order_items_datASet',
  'NULL-COUNT - price',
  sum(price IS NULL)
FROM olist_order_items_datASet
UNION ALL
SELECT 
  'olist_order_items_datASet',
  'NULL-COUNT - freight_value',
  sum(freight_value IS NULL)
FROM olist_order_items_datASet
UNION ALL
SELECT 
  'olist_order_reviews_datASet',
  'Total_rows',
  COUNT(*)
FROM olist_order_reviews_datASet
UNION ALL
SELECT 
  'olist_order_reviews_datASet',
  'NULL-COUNT - review_id',
  sum(review_id IS NULL)
FROM olist_order_reviews_datASet
UNION ALL
SELECT 
  'olist_order_reviews_datASet',
  'NULL-COUNT - review_score',
  sum(review_score IS NULL)
FROM olist_order_reviews_datASet
UNION ALL
SELECT 
  'olist_order_reviews_datASet',
  'NULL-COUNT - review_comment_title',
  sum(review_comment_title IS NULL)
FROM olist_order_reviews_datASet
UNION ALL
SELECT 
  'olist_order_reviews_datASet',
  'NULL-COUNT - review_comment_message',
  sum(review_comment_message IS NULL)
FROM olist_order_reviews_datASet
UNION ALL
SELECT 
  'olist_order_reviews_datASet',
  'NULL-COUNT - review_creation_date',
  sum(review_creation_date IS NULL)
FROM olist_order_reviews_datASet
UNION ALL
SELECT 
  'olist_order_reviews_datASet',
  'NULL-COUNT - review_answer_timestamp',
  sum(review_answer_timestamp IS NULL)
FROM olist_order_reviews_datASet
UNION ALL
SELECT 
  'olist_orders_datASet',
  'Total_rows',
  COUNT(*)
FROM olist_orders_datASet
UNION ALL
SELECT 
  'olist_orders_datASet',
  'NULL-COUNT - order_id',
  sum(order_id IS NULL)
FROM olist_orders_datASet
UNION ALL
SELECT 
  'olist_orders_datASet',
  'NULL-COUNT - customer_id',
  sum(customer_id IS NULL)
FROM olist_orders_datASet
UNION ALL
SELECT 
  'olist_orders_datASet',
  'NULL-COUNT - order_status',
  sum(order_status IS NULL)
FROM olist_orders_datASet
UNION ALL
SELECT 
  'olist_orders_datASet',
  'NULL-COUNT - order_purchASe_timestamp',
  sum(order_purchASe_timestamp IS NULL)
FROM olist_orders_datASet
UNION ALL
SELECT 
  'olist_orders_datASet',
  'NULL-COUNT - order_approved_at',
  sum(order_approved_at IS NULL)
FROM olist_orders_datASet
UNION ALL
SELECT 
  'olist_orders_datASet',
  'NULL-COUNT - order_delivered_carrier_date',
  sum(order_delivered_carrier_date IS NULL)
FROM olist_orders_datASet
UNION ALL
SELECT 
  'olist_orders_datASet',
  'NULL-COUNT - order_delivered_customer_date',
  sum(order_delivered_customer_date IS NULL)
FROM olist_orders_datASet
UNION ALL
SELECT 
  'olist_orders_datASet',
  'NULL-COUNT - order_estimated_delivery_date',
  sum(order_estimated_delivery_date IS NULL)
FROM olist_orders_datASet
UNION ALL
SELECT 
  'olist_products_datASet',
  'Total_rows',
  COUNT(*)
FROM olist_products_datASet
UNION ALL
SELECT 
  'olist_products_datASet',
  'NULL-COUNT - product_id',
  sum(product_id IS NULL)
FROM olist_products_datASet
UNION ALL
SELECT 
  'olist_products_datASet',
  'NULL-COUNT - product_category_name',
  sum(product_category_name IS NULL)
FROM olist_products_datASet
UNION ALL
SELECT 
  'olist_products_datASet',
  'NULL-COUNT - product_name_lenght',
  sum(product_name_lenght IS NULL)
FROM olist_products_datASet
UNION ALL
SELECT 
  'olist_products_datASet',
  'NULL-COUNT - product_description_lenght',
  sum(product_description_lenght IS NULL)
FROM olist_products_datASet
UNION ALL
SELECT 
  'olist_products_datASet',
  'NULL-COUNT - product_photos_qty',
  sum(product_photos_qty IS NULL)
FROM olist_products_datASet
UNION ALL
SELECT 
  'olist_products_datASet',
  'NULL-COUNT - product_weight_g',
  sum(product_weight_g IS NULL)
FROM olist_products_datASet
UNION ALL
SELECT 
  'olist_products_datASet',
  'NULL-COUNT - product_length_cm',
  sum(product_length_cm IS NULL)
FROM olist_products_datASet
UNION ALL
SELECT 
  'olist_products_datASet',
  'NULL-COUNT - product_height_cm',
  sum(product_height_cm IS NULL)
FROM olist_products_datASet
UNION ALL
SELECT 
  'olist_products_datASet',
  'NULL-COUNT - product_width_cm',
  sum(product_width_cm IS NULL)
FROM olist_products_datASet


#2 product_id's don't have entered dimensions and 610 prodict_id's don't have name, description and product photos
