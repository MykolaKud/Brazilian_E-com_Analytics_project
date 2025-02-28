![image](https://github.com/user-attachments/assets/bbd7b3e4-b8a7-4ea3-8a16-593cf344990e)

# Brazilian E-Commerce Sales Analysis with SQL

## Overview
This project analyzes sales data from the public dataset **Brazilian E-Commerce Public Dataset by Olist** on Kaggle platform.

## Dataset
- Source: [Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
- The dataset was connected locally using **DBeaver** for data exploration and analysis.

## Analysis
The project explores **12 key business questions** to uncover insights from the dataset. Each question is addressed with data-driven conclusions and actionable business recommendations.

## Tools Used
- **DBeaver** (for database connection and SQL queries)

## Results & Recommendations
- Each analysis provides meaningful insights into the dataset.
- Business recommendations are based on observed trends and key performance indicators.

## How to Use
1. Clone this repository.
2. Load the dataset into **DBeaver** or another SQL-compatible tool.
3. Run the provided SQL queries.

## Contributing
Feel free to contribute by adding more analyses, or optimizing queries.

---
**Author:** Mykola Kudinov

## Data exploration

Initially, we check the dataset for missing (NULL) values. This is done using the following SQL query:

[Checking for null-values SQL query](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/9101b7ad5656760146955be6b906459bf2e9aa1d/Preparing_dataset_for%20analysis/Checking%20for%20null-values.sql)

## Results:
|dataset|metric|value|
|-------|------|-----|
|product_category_name_translation|Total_rows|71|
|product_category_name_translation|NULL-count - product_category_name|0|
|product_category_name_translation|NULL-count - product_category_name_english|0|
|olist_sellers_dataset|Total_rows|3095|
|olist_sellers_dataset|NULL-count - seller_id|0|
|olist_sellers_dataset|NULL-count - seller_city|0|
|olist_sellers_dataset|NULL-count - seller_state|0|
|olist_customers_dataset|Total_rows|99441|
|olist_customers_dataset|NULL-count - customer_id|0|
|olist_customers_dataset|NULL-count - customer_unique_id|0|
|olist_customers_dataset|NULL-count - customer_zip_code_prefix|0|
|olist_customers_dataset|NULL-count - customer_city|0|
|olist_customers_dataset|NULL-count - customer_state|0|
|olist_geolocation_dataset|Total_rows|1000163|
|olist_geolocation_dataset|NULL-count - geolocation_zip_code_prefix|0|
|olist_geolocation_dataset|NULL-count - geolocation_lat|0|
|olist_geolocation_dataset|NULL-count - geolocation_lng|0|
|olist_geolocation_dataset|NULL-count - geolocation_city|0|
|olist_geolocation_dataset|NULL-count - geolocation_state|0|
|olist_order_payments_dataset|Total_rows|103886|
|olist_order_payments_dataset|NULL-count - order_id|0|
|olist_order_payments_dataset|NULL-count - payment_sequential|0|
|olist_order_payments_dataset|NULL-count - payment_type|0|
|olist_order_payments_dataset|NULL-count - payment_installments|0|
|olist_order_payments_dataset|NULL-count - payment_value|0|
|olist_order_items_dataset|Total_rows|112650|
|olist_order_items_dataset|NULL-count - order_id|0|
|olist_order_items_dataset|NULL-count - order_item_id|0|
|olist_order_items_dataset|NULL-count - product_id|0|
|olist_order_items_dataset|NULL-count - seller_id|0|
|olist_order_items_dataset|NULL-count - shipping_limit_date|0|
|olist_order_items_dataset|NULL-count - price|0|
|olist_order_items_dataset|NULL-count - freight_value|0|
|olist_order_reviews_dataset|Total_rows|109580|
|olist_order_reviews_dataset|NULL-count - review_id|0|
|olist_order_reviews_dataset|NULL-count - review_score|0|
|olist_order_reviews_dataset|NULL-count - review_comment_title|0|
|olist_order_reviews_dataset|NULL-count - review_comment_message|0|
|olist_order_reviews_dataset|NULL-count - review_creation_date|0|
|olist_order_reviews_dataset|NULL-count - review_answer_timestamp|0|
|olist_orders_dataset|Total_rows|99441|
|olist_orders_dataset|NULL-count - order_id|0|
|olist_orders_dataset|NULL-count - customer_id|0|
|olist_orders_dataset|NULL-count - order_status|0|
|olist_orders_dataset|NULL-count - order_purchase_timestamp|0|
|olist_orders_dataset|NULL-count - order_approved_at|0|
|olist_orders_dataset|NULL-count - order_delivered_carrier_date|0|
|olist_orders_dataset|NULL-count - order_delivered_customer_date|0|
|olist_orders_dataset|NULL-count - order_estimated_delivery_date|0|
|olist_products_dataset|Total_rows|32951|
|olist_products_dataset|NULL-count - product_id|0|
|olist_products_dataset|NULL-count - product_category_name|0|
|olist_products_dataset|NULL-count - product_name_lenght|610|
|olist_products_dataset|NULL-count - product_description_lenght|610|
|olist_products_dataset|NULL-count - product_photos_qty|610|
|olist_products_dataset|NULL-count - product_weight_g|2|
|olist_products_dataset|NULL-count - product_length_cm|2|
|olist_products_dataset|NULL-count - product_height_cm|2|
|olist_products_dataset|NULL-count - product_width_cm|2|

## Conclusion:
The query results indicate:
- **2 product_id** entries are missing product dimensions.
- **610 product_id** entries are missing product name, description, and photos.

# Duplicate Values Analysis

## Checking for Duplicates
Next, we check for duplicate values in key columns across multiple datasets:

- **olist_customers_dataset**: `customer_id`, `customer_unique_id`
- **olist_orders_dataset**: `order_id`
- **product_category_name_translation**: `product_category_name`, `product_category_name_english`
- **olist_sellers_dataset**: `seller_id`
- **olist_order_payments_dataset**: `order_id`
- **olist_order_reviews_dataset**: `review_id`
- **olist_products_dataset**: `product_id`

This helps us understand the structure of the data and ensure its correct usage in further analysis.
[Checking for duplicates SQL query](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/84e00dee0544d8e9a1adabc109938b3ca25ed3e2/Preparing_dataset_for%20analysis/Checking%20for%20duplicates.sql)

## Results
|dataset|metric|value|
|-------|------|-----|
|product_category_name_translation|Total_rows|71|
|product_category_name_translation|NULL-count - product_category_name|0|
|product_category_name_translation|NULL-count - product_category_name_english|0|
|olist_sellers_dataset|Total_rows|3095|
|olist_sellers_dataset|NULL-count - seller_id|0|
|olist_sellers_dataset|NULL-count - seller_city|0|
|olist_sellers_dataset|NULL-count - seller_state|0|
|olist_customers_dataset|Total_rows|99441|
|olist_customers_dataset|NULL-count - customer_id|0|
|olist_customers_dataset|NULL-count - customer_unique_id|0|
|olist_customers_dataset|NULL-count - customer_zip_code_prefix|0|
|olist_customers_dataset|NULL-count - customer_city|0|
|olist_customers_dataset|NULL-count - customer_state|0|
|olist_geolocation_dataset|Total_rows|1000163|
|olist_geolocation_dataset|NULL-count - geolocation_zip_code_prefix|0|
|olist_geolocation_dataset|NULL-count - geolocation_lat|0|
|olist_geolocation_dataset|NULL-count - geolocation_lng|0|
|olist_geolocation_dataset|NULL-count - geolocation_city|0|
|olist_geolocation_dataset|NULL-count - geolocation_state|0|
|olist_order_payments_dataset|Total_rows|103886|
|olist_order_payments_dataset|NULL-count - order_id|0|
|olist_order_payments_dataset|NULL-count - payment_sequential|0|
|olist_order_payments_dataset|NULL-count - payment_type|0|
|olist_order_payments_dataset|NULL-count - payment_installments|0|
|olist_order_payments_dataset|NULL-count - payment_value|0|
|olist_order_items_dataset|Total_rows|112650|
|olist_order_items_dataset|NULL-count - order_id|0|
|olist_order_items_dataset|NULL-count - order_item_id|0|
|olist_order_items_dataset|NULL-count - product_id|0|
|olist_order_items_dataset|NULL-count - seller_id|0|
|olist_order_items_dataset|NULL-count - shipping_limit_date|0|
|olist_order_items_dataset|NULL-count - price|0|
|olist_order_items_dataset|NULL-count - freight_value|0|
|olist_order_reviews_dataset|Total_rows|109580|
|olist_order_reviews_dataset|NULL-count - review_id|0|
|olist_order_reviews_dataset|NULL-count - review_score|0|
|olist_order_reviews_dataset|NULL-count - review_comment_title|0|
|olist_order_reviews_dataset|NULL-count - review_comment_message|0|
|olist_order_reviews_dataset|NULL-count - review_creation_date|0|
|olist_order_reviews_dataset|NULL-count - review_answer_timestamp|0|
|olist_orders_dataset|Total_rows|99441|
|olist_orders_dataset|NULL-count - order_id|0|
|olist_orders_dataset|NULL-count - customer_id|0|
|olist_orders_dataset|NULL-count - order_status|0|
|olist_orders_dataset|NULL-count - order_purchase_timestamp|0|
|olist_orders_dataset|NULL-count - order_approved_at|0|
|olist_orders_dataset|NULL-count - order_delivered_carrier_date|0|
|olist_orders_dataset|NULL-count - order_delivered_customer_date|0|
|olist_orders_dataset|NULL-count - order_estimated_delivery_date|0|
|olist_products_dataset|Total_rows|32951|
|olist_products_dataset|NULL-count - product_id|0|
|olist_products_dataset|NULL-count - product_category_name|0|
|olist_products_dataset|NULL-count - product_name_lenght|610|
|olist_products_dataset|NULL-count - product_description_lenght|610|
|olist_products_dataset|NULL-count - product_photos_qty|610|
|olist_products_dataset|NULL-count - product_weight_g|2|
|olist_products_dataset|NULL-count - product_length_cm|2|
|olist_products_dataset|NULL-count - product_height_cm|2|
|olist_products_dataset|NULL-count - product_width_cm|2|

The analysis revealed duplicates in two columns.

### Investigating Duplicate `order_id` in `olist_order_payments_dataset`
Since `order_id` is unique in the orders dataset, we can assume that a single order may have multiple payments. To verify this, we extract all duplicate values and check some of them.

[Checking order_id for duplicates reason SQL query](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/3927b8e62abab4786a08f1ce5c3f79890d1c350a/Preparing_dataset_for%20analysis/Checking%20order_id%20for%20duplicates%20reason.sql)

## Result
|order_id|
|--------|
|5cfd514482e22bc992e7693f0e3e8df7|
|b2bb080b6bc860118a246fd9b6fad6da|
|3689194c14ad4e2e7361ebd1df0e77b0|
|723e462ce1ee50e024887c0b403130f3|
|21b8b46679ea6482cbf911d960490048|
|ea9184ad433a404df1d72fa0a8764232|

|order_id|payment_sequential|payment_type|payment_installments|payment_value|
|--------|------------------|------------|--------------------|-------------|
|3689194c14ad4e2e7361ebd1df0e77b0|2|voucher|1|57.53|
|3689194c14ad4e2e7361ebd1df0e77b0|1|credit_card|1|95.74|
|5cfd514482e22bc992e7693f0e3e8df7|2|voucher|1|45.17|
|5cfd514482e22bc992e7693f0e3e8df7|1|credit_card|4|665.41|
|723e462ce1ee50e024887c0b403130f3|1|credit_card|1|13.8|
|723e462ce1ee50e024887c0b403130f3|2|voucher|1|100.0|
|b2bb080b6bc860118a246fd9b6fad6da|1|credit_card|1|173.84|
|b2bb080b6bc860118a246fd9b6fad6da|2|voucher|1|24.08|

After selecting a few examples, we confirm that multiple payments can be linked to the same `order_id`, validating our assumption.

### Investigating Duplicate `review_id` in `olist_order_reviews_dataset`
We then analyze why `review_id` is duplicated. The results indicate that the same `review_id` can be associated with different `order_id` values.

[Checking review_id for duplicates reason.sql](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/3927b8e62abab4786a08f1ce5c3f79890d1c350a/Preparing_dataset_for%20analysis/Checking%20review_id%20for%20duplicates%20reason.sql)



## Conclusion
- A single order can have multiple payments.
- A single review can be linked to multiple orders.
- These findings will be considered in further data analysis.

So, we can move on in the analysis of the datasets.

# 1. Top States and Cities by Unique Buyers

## Analysis
We determine the **top 7 states** and **top 10 cities** with the highest number of unique buyers, along with their percentage of the total customer base.

[Top-7 States and Top-10 cities SQL query](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/d30bc48c3afa77ab90997d03c6b16f1550930dee/Analysis/1.%20Num_of_customers.sql)

## Results:

States:
|state|num_of_unique_customers|percent_from_total|
|-----|-----------------------|------------------|
|SP|41746|41.98|
|RJ|12852|12.92|
|MG|11635|11.70|
|RS|5466|5.50|
|PR|5045|5.07|
|SC|3637|3.66|
|BA|3380|3.40|

Cities:
|city|num_of_unique_customers|percent_from_total|
|----|-----------------------|------------------|
|sao paulo|15540|15.63|
|rio de janeiro|6882|6.92|
|belo horizonte|2773|2.79|
|brasilia|2131|2.14|
|curitiba|1521|1.53|
|campinas|1444|1.45|
|porto alegre|1379|1.39|
|salvador|1245|1.25|
|guarulhos|1189|1.20|
|sao bernardo do campo|938|0.94|


### Key Findings
- **States**: SP and RJ have the highest number of unique buyers, collectively accounting for more than half of all purchases.
- **Cities**: São Paulo, Rio de Janeiro, Belo Horizonte, and the capital Brasília together represent over **25%** of all unique buyers.

## Conclusion & Recommendations
1. **Marketing Focus**: Given their high customer density, SP and RJ should be prioritized for targeted advertising and promotions.
2. **Strategic Planning**: Major cities such as São Paulo and Rio de Janeiro should be key areas for regional expansion efforts.
3. **Supply Chain Optimization**: Ensuring efficient logistics and stock availability in these top locations can improve delivery times and customer satisfaction.

# 2. Order Distribution by Category

## Analysis
We analyze how orders are distributed across product categories, including the **percentage of total orders** and **English category names**.

[Sum per category SQL query](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/a7909eb368400417bd9abbea529d1a73aef1ab8d/Analysis/2.%20Sum_per_category.sql)

## Results:

product_category|sum_of_orders|percent_from_total|
|----------------|-------------|------------------|
|bed_bath_table|11115|11.18|
|health_beauty|9670|9.72|
|sports_leisure|8641|8.69|
|furniture_decor|8334|8.38|
|computers_accessories|7827|7.87|
|housewares|6964|7.00|
|watches_gifts|5991|6.02|
|telephony|4545|4.57|
|garden_tools|4347|4.37|
|auto|4235|4.26|
|toys|4117|4.14|
|cool_stuff|3796|3.82|
|perfumery|3419|3.44|
|baby|3065|3.08|
|electronics|2767|2.78|
|stationery|2517|2.53|
|fashion_bags_accessories|2031|2.04|
|pet_shop|1947|1.96|
|office_furniture|1691|1.70|
|consoles_games|1137|1.14|
|luggage_accessories|1092|1.10|

### Key Findings
- The top categories **bed_bath_table, health_beauty, and sports_leisure** make up nearly **30%** of all orders.
- The **top 7 categories** collectively account for over **50%** of total orders.

## Conclusion & Recommendations
1. **Revenue Focus**: These key categories should be prioritized when planning future revenue growth strategies.
2. **Sales Optimization**: Even a small increase in sales within these high-performing categories can lead to significant profit gains.
3. **Targeted Promotions**: Special promotions, discounts, or bundling strategies can further boost sales in these segments.

# Top Order Months Analysis

## Analysis
We determine the **month with the highest number of orders** for each year, excluding orders with a "canceled" status.

[Highest month each year SQL query](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/61ed94dc78b66a49c1b68101700fb6d2cab2a92c/Analysis/3.%20Highest_month_each_year.sql)

## Results:

|order_month|order_year|num_of_orders|
|-----------|----------|-------------|
|10|2016|300|
|11|2017|7507|
|1|2018|7235|

### Key Findings
- **2016:** October had the highest number of orders.
- **2017:** November saw the peak order volume.
- **2018:** January recorded the most orders.

## Conclusion & Recommendations
1. **Promotional Strategies**: These peak months can be leveraged for targeted promotional campaigns and marketing efforts.
2. **Data Limitations**: The dataset covers a limited period, making it difficult to establish long-term sales trends.
3. **Visualization**: Future analysis should include visual representations to better understand sales dynamics over time.


