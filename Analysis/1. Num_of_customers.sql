#Let's check top 7 states and top 10 cities have the highest number of unique customers with % from total amount
  
SELECT
  customer_state AS state,
  COUNT(*) AS num_of_unique_customers,
  ROUND((COUNT(*)*100.0)/(SELECT COUNT(*) FROM olist_customers_dataset), 2) AS percent_from_total
FROM olist_customers_dataset
GROUP BY state
ORDER BY num_of_unique_customers desc
LIMIT 7;

SELECT 
  customer_city AS city, 
  COUNT(*) AS num_of_unique_customers,
  ROUND((COUNT(*)*100.0)/(SELECT COUNT(*) FROM olist_customers_dataset), 2) AS percent_from_total
FROM olist_customers_dataset 
GROUP BY city
ORDER BY num_of_unique_customers DESC
LIMIT 10
