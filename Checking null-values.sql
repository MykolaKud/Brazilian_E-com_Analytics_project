#Checking null values in product_category_name_translation
SELECT 
'product_category_name_translation' as dataset,
COUNT(*) as total_rows,
COUNT(product_category_name) as non_null_product_category_name,
COUNT(product_category_name_english) as non_null_product_category_name_english
from product_category_name_translation
union all 
#Checking null values in olist_sellers_dataset
SELECT
'olist_sellers_dataset' as dataset,
COUNT(*) as total_rows,
COUNT(seller_id) as non_null_seller_id,
COUNT(seller_city) as non_null_seller_city,
COUNT(seller_state) as non_null_seller_state
from olist_sellers_dataset

#Checking null values in olist_customers_dataset
SELECT
'olist_customers_dataset' as dataset,
COUNT(*) as total_rows,
COUNT(customer_id) as non_null_customer_id,
COUNT(customer_unique_id) as non_null_customer_unique_id,
COUNT(customer_zip_code_prefix) as non_null_customer_zip_code_prefix,
COUNT(customer_city) as non_null_customer_city,
COUNT(customer_state) as non_null_customer_state
from olist_customers_dataset

#Checking null values in olist_geolocation_dataset
SELECT
'olist_geolocation_dataset' as dataset,
COUNT(*) as total_rows,
COUNT(geolocation_zip_code_prefix) as non_null_geolocation_zip_code_prefix,
COUNT(geolocation_lat) as non_null_geolocation_lat,
COUNT(geolocation_lng) as non_null_geolocation_lng,
COUNT(geolocation_city) as non_null_geolocation_city,
COUNT(geolocation_state) as non_null_geolocation_state
from olist_geolocation_dataset

#Checking null values in olist_order_payments_dataset
SELECT
'olist_order_payments_dataset' as dataset,
COUNT(*) as total_rows,
COUNT(order_id) as non_null_order_id,
COUNT(payment_sequential) as non_null_payment_sequential,
COUNT(payment_type) as non_null_payment_type,
COUNT(payment_installments) as non_null_payment_installments,
COUNT(payment_value) as non_null_payment_value
from olist_order_payments_dataset

#Checking null values in olist_order_items_dataset
SELECT
'olist_order_items_dataset' as dataset,
COUNT(*) as total_rows,
COUNT(order_id) as non_null_order_id,
COUNT(order_item_id) as non_null_order_item_id,
COUNT(product_id) as non_null_product_id,
COUNT(seller_id) as non_null_seller_id,
COUNT(shipping_limit_date) as non_null_shipping_limit_date,
COUNT(price) as non_null_price,
COUNT(freight_value) as non_null_freight_value
from olist_order_items_dataset

#Checking null values in olist_order_reviews_dataset
SELECT
'olist_order_reviews_dataset' as dataset,
COUNT(*) as total_rows,
COUNT(review_id) as non_null_review_id,
COUNT(review_score) as non_null_review_score,
COUNT(review_comment_title) as non_null_review_comment_title,
COUNT(review_comment_message) as non_null_review_comment_message,
COUNT(review_creation_date) as non_null_review_creation_date,
COUNT(review_answer_timestamp) as non_null_review_answer_timestamp
from olist_order_reviews_dataset

#Checking null values in olist_orders_dataset
SELECT
'olist_orders_dataset' as dataset,
COUNT(*) as total_rows,
COUNT(order_id) as non_null_order_id,
COUNT(customer_id) as non_null_customer_id,
COUNT(order_status) as non_null_order_status,
COUNT(order_purchase_timestamp) as non_null_order_purchase_timestamp,
COUNT(order_approved_at) as non_null_order_approved_at,
COUNT(order_delivered_carrier_date) as non_null_order_delivered_carrier_date,
COUNT(order_delivered_customer_date) as non_null_order_delivered_customer_date,
COUNT(order_estimated_delivery_date) as non_null_order_estimated_delivery_date
from olist_orders_dataset

#Checking null values in olist_products_dataset
SELECT
'olist_products_dataset' as dataset,
COUNT(*) as total_rows,
COUNT(product_id) as non_null_product_id,
COUNT(product_category_name) as non_null_product_category_name,
COUNT(product_name_lenght) as non_null_product_name_lenght,
COUNT(product_description_lenght) as non_null_product_description_lenght,
COUNT(product_photos_qty) as non_null_product_photos_qty,
COUNT(product_weight_g) as non_null_product_weight_g,
COUNT(product_length_cm) as non_null_product_length_cm,
COUNT(product_height_cm) as non_null_product_height_cm,
COUNT(product_width_cm) as non_null_product_width_cm
from olist_products_dataset
#2 product_id's don't have entered dimensions and 610 prodict_id's don't have name, description and product photos