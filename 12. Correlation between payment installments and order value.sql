# Are there any correlation between payment installments and order value?

SELECT 
    oopd.payment_installments,
    ROUND(AVG(oopd.payment_value), 2) AS avg_order_value,
    COUNT(oopd.order_id) AS total_orders
FROM olist_order_payments_dataset oopd
JOIN olist_orders_dataset ood ON oopd.order_id = ood.order_id
WHERE ood.order_status <> 'canceled'
GROUP BY oopd.payment_installments
ORDER BY oopd.payment_installments;