# What is the distribution of installment payments? 
select 
  payment_installments,
  count(*) as num_of_payments
from olist_order_payments_dataset
group by payment_installments
order by num_of_payments desc;