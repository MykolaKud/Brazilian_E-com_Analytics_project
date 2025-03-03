SELECT 
  payment_installments,
  COUNT(*) AS num_of_payments
FROM olist_order_payments_dataset
GROUP BY payment_installments
ORDER BY num_of_payments DESC;
