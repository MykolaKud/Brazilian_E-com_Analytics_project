SELECT 
    'olist_customers_dataset' AS dataset, 
    'Total Rows' AS metric, 
    COUNT(*) AS value 
FROM olist_customers_dataset
UNION ALL
SELECT 
    'olist_customers_dataset', 
    'Duplicate Count - customer_id', 
    COUNT(*) - COUNT(DISTINCT customer_id) 
FROM olist_customers_dataset
UNION ALL
SELECT 
    'olist_customers_dataset', 
    'Duplicate Count - customer_unique_id', 
    COUNT(*) - COUNT(DISTINCT customer_unique_id) 
FROM olist_customers_dataset
UNION ALL
SELECT 
    'olist_orders_dataset', 
    'Total Rows', 
    COUNT(*) 
FROM olist_orders_dataset
UNION ALL
SELECT 
    'olist_orders_dataset', 
    'Duplicate Count - order_id', 
    COUNT(*) - COUNT(DISTINCT order_id) 
FROM olist_orders_dataset
UNION ALL
SELECT 
    'product_category_name_translation', 
    'Total Rows', 
    COUNT(*) 
FROM product_category_name_translation
UNION ALL
SELECT 
    'product_category_name_translation', 
    'Duplicate Count - product_category_name', 
    COUNT(*) - COUNT(DISTINCT product_category_name) 
FROM product_category_name_translation
UNION ALL
SELECT 
    'product_category_name_translation', 
    'Duplicate Count - product_category_name_english', 
    COUNT(*) - COUNT(DISTINCT product_category_name_english) 
FROM product_category_name_translation
UNION ALL
SELECT 
    'olist_sellers_dataset', 
    'Total Rows', 
    COUNT(*) 
FROM olist_sellers_dataset
UNION ALL
SELECT 
    'olist_sellers_dataset', 
    'Duplicate Count - seller_id', 
    COUNT(*) - COUNT(DISTINCT seller_id) 
FROM olist_sellers_dataset
UNION ALL
SELECT 
    'olist_order_payments_dataset', 
    'Total Rows', 
    COUNT(*) 
FROM olist_order_payments_dataset
UNION ALL
SELECT 
    'olist_order_payments_dataset', 
    'Duplicate Count - order_id', 
    COUNT(*) - COUNT(DISTINCT order_id) 
FROM olist_order_payments_dataset
UNION ALL
SELECT 
    'olist_order_reviews_dataset', 
    'Total Rows', 
    COUNT(*) 
FROM olist_order_reviews_dataset
UNION ALL
SELECT 
    'olist_order_reviews_dataset', 
    'Duplicate Count - review_id', 
    COUNT(*) - COUNT(DISTINCT review_id) 
FROM olist_order_reviews_dataset
UNION ALL
SELECT 
    'olist_products_dataset', 
    'Total Rows', 
    COUNT(*) 
FROM olist_products_dataset
UNION ALL
SELECT 
    'olist_products_dataset', 
    'Duplicate Count - product_id', 
    COUNT(*) - COUNT(DISTINCT product_id) 
FROM olist_products_dataset;
