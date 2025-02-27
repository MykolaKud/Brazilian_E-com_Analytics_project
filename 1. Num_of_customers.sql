#Let's check top 7 states and top 10 cities have the highest number of unique customers with % from total amount
select
  customer_state as state,
  count(*) as num_of_unique_customers,
  round((count(*)*100.0)/(select count(*) from olist_customers_dataset), 2) as percent_from_total
from olist_customers_dataset
group by state
order by num_of_unique_customers desc
limit 7;

select 
  customer_city as city, 
  count(*) as num_of_unique_customers,
  round((count(*)*100.0)/(select count(*) from olist_customers_dataset), 2) as percent_from_total
from olist_customers_dataset 
group by city
order by num_of_unique_customers desc
limit 10