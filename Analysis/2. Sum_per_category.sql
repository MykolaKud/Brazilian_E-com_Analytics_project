SELECT 
    pnt.product_category_name_english AS product_category,
    COUNT(ood.order_id) AS sum_of_orders,
    ROUND((COUNT(*)*100.0)/(SELECT COUNT(*) FROM olist_orders_dataset), 2) AS percent_from_total    
FROM olist_orders_dataset ood
JOIN olist_order_items_dataset oid ON oid.order_id  = ood.order_id
JOIN olist_products_dataset opd ON opd.product_id = oid.product_id 
JOIN product_category_name_translation pnt ON pnt.product_category_name = opd.product_category_name 
GROUP BY product_category
ORDER BY sum_of_orders DESC;


