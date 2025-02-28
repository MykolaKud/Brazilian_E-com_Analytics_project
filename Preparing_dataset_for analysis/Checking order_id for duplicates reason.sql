select order_id
FROM olist_order_payments_dataset
group by order_id
having count(*) > 1;

select * from olist_order_payments_dataset
where order_id  = '5cfd514482e22bc992e7693f0e3e8df7' 
or order_id  = 'b2bb080b6bc860118a246fd9b6fad6da' 
or order_id  = '3689194c14ad4e2e7361ebd1df0e77b0' 
or order_id  = '723e462ce1ee50e024887c0b403130f3'
order by order_id;