SELECT 
  'product_category_name_translation' AS dataset,
  'Total_rows' AS metric,
  COUNT(*) AS value
FROM product_category_name_translation
UNION ALL 
SELECT 
  'product_category_name_translation',
  'NULL-COUNT - product_category_name',
  SUM(product_category_name IS NULL)
FROM product_category_name_translation  
UNION ALL 
SELECT 
  'product_category_name_translation',
  'NULL-COUNT - product_category_name_english',
  SUM(product_category_name_english IS NULL)
FROM product_category_name_translation
UNION ALL
SELECT 
  'olist_sellers_dataset',
  'Total_rows',
  COUNT(*)
FROM olist_sellers_dataset
UNION ALL 
SELECT 
  'olist_sellers_dataset',
  'NULL-COUNT - seller_id',
  SUM(seller_id IS NULL)
FROM olist_sellers_dataset
UNION ALL 
SELECT 
  'olist_sellers_dataset',
  'NULL-COUNT - seller_city',
  SUM(seller_city IS NULL)
FROM olist_sellers_dataset
UNION ALL 
SELECT 
  'olist_sellers_dataset',
  'NULL-COUNT - seller_state',
  SUM(seller_state IS NULL)
FROM olist_sellers_dataset
UNION ALL
SELECT 
  'olist_customers_dataset',
  'Total_rows',
  COUNT(*)
FROM olist_customers_dataset
UNION ALL
SELECT 
  'olist_customers_dataset',
  'NULL-COUNT - customer_id',
  SUM(customer_id IS NULL)
FROM olist_customers_dataset
UNION ALL
SELECT 
  'olist_customers_dataset',
  'NULL-COUNT - customer_unique_id',
  SUM(customer_unique_id IS NULL)
FROM olist_customers_dataset
UNION ALL
SELECT 
  'olist_customers_dataset',
  'NULL-COUNT - customer_zip_code_prefix',
  SUM(customer_zip_code_prefix IS NULL)
FROM olist_customers_dataset
UNION ALL
SELECT 
  'olist_customers_dataset',
  'NULL-COUNT - customer_city',
  SUM(customer_city IS NULL)
FROM olist_customers_dataset
UNION ALL
SELECT 
  'olist_customers_dataset',
  'NULL-COUNT - customer_state',
  SUM(customer_state IS NULL)
FROM olist_customers_dataset
UNION ALL
SELECT 
  'olist_geolocation_dataset',
  'Total_rows',
  COUNT(*)
FROM olist_geolocation_dataset
UNION ALL
SELECT 
  'olist_geolocation_dataset',
  'NULL-COUNT - geolocation_zip_code_prefix',
  SUM(geolocation_zip_code_prefix IS NULL)
FROM olist_geolocation_dataset
UNION ALL
SELECT 
  'olist_geolocation_dataset',
  'NULL-COUNT - geolocation_lat',
  SUM(geolocation_lat IS NULL)
FROM olist_geolocation_dataset
UNION ALL
SELECT 
  'olist_geolocation_dataset',
  'NULL-COUNT - geolocation_lng',
  SUM(geolocation_lng IS NULL)
FROM olist_geolocation_dataset
UNION ALL
SELECT 
  'olist_geolocation_dataset',
  'NULL-COUNT - geolocation_city',
  SUM(geolocation_city IS NULL)
FROM olist_geolocation_dataset
UNION ALL
SELECT 
  'olist_geolocation_dataset',
  'NULL-COUNT - geolocation_state',
  SUM(geolocation_state IS NULL)
FROM olist_geolocation_dataset
UNION ALL
SELECT 
  'olist_order_payments_dataset',
  'Total_rows',
  COUNT(*)
FROM olist_order_payments_dataset
UNION ALL
SELECT 
  'olist_order_payments_dataset',
  'NULL-COUNT - order_id',
  SUM(order_id IS NULL)
FROM olist_order_payments_dataset
UNION ALL
SELECT 
  'olist_order_payments_dataset',
  'NULL-COUNT - payment_sequential',
  SUM(payment_sequential IS NULL)
FROM olist_order_payments_dataset
UNION ALL
SELECT 
  'olist_order_payments_dataset',
  'NULL-COUNT - payment_type',
  SUM(payment_type IS NULL)
FROM olist_order_payments_dataset
UNION ALL
SELECT 
  'olist_order_payments_dataset',
  'NULL-COUNT - payment_installments',
  SUM(payment_installments IS NULL)
FROM olist_order_payments_dataset
UNION ALL
SELECT 
  'olist_order_payments_dataset',
  'NULL-COUNT - payment_value',
  SUM(payment_value IS NULL)
FROM olist_order_payments_dataset
UNION ALL
SELECT 
  'olist_order_items_dataset',
  'Total_rows',
  COUNT(*)
FROM olist_order_items_dataset
UNION ALL
SELECT 
  'olist_order_items_dataset',
  'NULL-COUNT - order_id',
  SUM(order_id IS NULL)
FROM olist_order_items_dataset
UNION ALL
SELECT 
  'olist_order_items_dataset',
  'NULL-COUNT - order_item_id',
  SUM(order_item_id IS NULL)
FROM olist_order_items_dataset
UNION ALL
SELECT 
  'olist_order_items_dataset',
  'NULL-COUNT - product_id',
  SUM(product_id IS NULL)
FROM olist_order_items_dataset
UNION ALL
SELECT 
  'olist_order_items_dataset',
  'NULL-COUNT - seller_id',
  SUM(seller_id IS NULL)
FROM olist_order_items_dataset
UNION ALL
SELECT 
  'olist_order_items_dataset',
  'NULL-COUNT - shipping_limit_date',
  SUM(shipping_limit_date IS NULL)
FROM olist_order_items_dataset
UNION ALL
SELECT 
  'olist_order_items_dataset',
  'NULL-COUNT - price',
  SUM(price IS NULL)
FROM olist_order_items_dataset
UNION ALL
SELECT 
  'olist_order_items_dataset',
  'NULL-COUNT - freight_value',
  SUM(freight_value IS NULL)
FROM olist_order_items_dataset
UNION ALL
SELECT 
  'olist_order_reviews_dataset',
  'Total_rows',
  COUNT(*)
FROM olist_order_reviews_dataset
UNION ALL
SELECT 
  'olist_order_reviews_dataset',
  'NULL-COUNT - review_id',
  SUM(review_id IS NULL)
FROM olist_order_reviews_dataset
UNION ALL
SELECT 
  'olist_order_reviews_dataset',
  'NULL-COUNT - review_score',
  SUM(review_score IS NULL)
FROM olist_order_reviews_dataset
UNION ALL
SELECT 
  'olist_order_reviews_dataset',
  'NULL-COUNT - review_comment_title',
  SUM(review_comment_title IS NULL)
FROM olist_order_reviews_dataset
UNION ALL
SELECT 
  'olist_order_reviews_dataset',
  'NULL-COUNT - review_comment_message',
  SUM(review_comment_message IS NULL)
FROM olist_order_reviews_dataset
UNION ALL
SELECT 
  'olist_order_reviews_dataset',
  'NULL-COUNT - review_creation_date',
  SUM(review_creation_date IS NULL)
FROM olist_order_reviews_dataset
UNION ALL
SELECT 
  'olist_order_reviews_dataset',
  'NULL-COUNT - review_answer_timestamp',
  SUM(review_answer_timestamp IS NULL)
FROM olist_order_reviews_dataset
UNION ALL
SELECT 
  'olist_orders_dataset',
  'Total_rows',
  COUNT(*)
FROM olist_orders_dataset
UNION ALL
SELECT 
  'olist_orders_dataset',
  'NULL-COUNT - order_id',
  SUM(order_id IS NULL)
FROM olist_orders_dataset
UNION ALL
SELECT 
  'olist_orders_dataset',
  'NULL-COUNT - customer_id',
  SUM(customer_id IS NULL)
FROM olist_orders_dataset
UNION ALL
SELECT 
  'olist_orders_dataset',
  'NULL-COUNT - order_status',
  SUM(order_status IS NULL)
FROM olist_orders_dataset
UNION ALL
SELECT 
  'olist_orders_dataset',
  'NULL-COUNT - order_purchASe_timestamp',
  SUM(order_purchase_timestamp IS NULL)
FROM olist_orders_dataset
UNION ALL
SELECT 
  'olist_orders_dataset',
  'NULL-COUNT - order_approved_at',
  SUM(order_approved_at IS NULL)
FROM olist_orders_dataset
UNION ALL
SELECT 
  'olist_orders_dataset',
  'NULL-COUNT - order_delivered_carrier_date',
  SUM(order_delivered_carrier_date IS NULL)
FROM olist_orders_dataset
UNION ALL
SELECT 
  'olist_orders_dataset',
  'NULL-COUNT - order_delivered_customer_date',
  SUM(order_delivered_customer_date IS NULL)
FROM olist_orders_dataset
UNION ALL
SELECT 
  'olist_orders_dataset',
  'NULL-COUNT - order_estimated_delivery_date',
  SUM(order_estimated_delivery_date IS NULL)
FROM olist_orders_dataset
UNION ALL
SELECT 
  'olist_products_dataset',
  'Total_rows',
  COUNT(*)
FROM olist_products_dataset
UNION ALL
SELECT 
  'olist_products_dataset',
  'NULL-COUNT - product_id',
  SUM(product_id IS NULL)
FROM olist_products_dataset
UNION ALL
SELECT 
  'olist_products_dataset',
  'NULL-COUNT - product_category_name',
  SUM(product_category_name IS NULL)
FROM olist_products_dataset
UNION ALL
SELECT 
  'olist_products_dataset',
  'NULL-COUNT - product_name_lenght',
  SUM(product_name_lenght IS NULL)
FROM olist_products_dataset
UNION ALL
SELECT 
  'olist_products_dataset',
  'NULL-COUNT - product_description_lenght',
  SUM(product_description_lenght IS NULL)
FROM olist_products_dataset
UNION ALL
SELECT 
  'olist_products_dataset',
  'NULL-COUNT - product_photos_qty',
  SUM(product_photos_qty IS NULL)
FROM olist_products_dataset
UNION ALL
SELECT 
  'olist_products_dataset',
  'NULL-COUNT - product_weight_g',
  SUM(product_weight_g IS NULL)
FROM olist_products_dataset
UNION ALL
SELECT 
  'olist_products_dataset',
  'NULL-COUNT - product_length_cm',
  SUM(product_length_cm IS NULL)
FROM olist_products_dataset
UNION ALL
SELECT 
  'olist_products_dataset',
  'NULL-COUNT - product_height_cm',
  SUM(product_height_cm IS NULL)
FROM olist_products_dataset
UNION ALL
SELECT 
  'olist_products_dataset',
  'NULL-COUNT - product_width_cm',
  SUM(product_width_cm IS NULL)
FROM olist_products_dataset


#2 product_id's don't have entered dimensions and 610 prodict_id's don't have name, description and product photos
