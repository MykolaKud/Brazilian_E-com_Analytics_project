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

Initially, let's check the dataset for missing (NULL) values. 

This is done using the following SQL query:
[Checking for null-values](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/9101b7ad5656760146955be6b906459bf2e9aa1d/Preparing_dataset_for%20analysis/Checking%20for%20null-values.sql)

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

## Conclusion:
The query results indicate:
- **2 product_id** entries are missing product dimensions.
- **610 product_id** entries are missing product name, description, and photos.

# Duplicate Values Analysis

## Checking for Duplicates
Next, let's check for duplicate values in key columns across multiple datasets:

- **olist_customers_dataset**: `customer_id`, `customer_unique_id`
- **olist_orders_dataset**: `order_id`
- **product_category_name_translation**: `product_category_name`, `product_category_name_english`
- **olist_sellers_dataset**: `seller_id`
- **olist_order_payments_dataset**: `order_id`
- **olist_order_reviews_dataset**: `review_id`
- **olist_products_dataset**: `product_id`

This helps us understand the structure of the data and ensure its correct usage in further analysis.

This is done using the following SQL query:
[Checking for duplicates](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/84e00dee0544d8e9a1adabc109938b3ca25ed3e2/Preparing_dataset_for%20analysis/Checking%20for%20duplicates.sql)

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
Since `order_id` is unique in the orders dataset, we can assume that a single order may have multiple payments. To verify this, let's extract all duplicate values and check some of them.

This is done using the following SQL queries:
[Checking order_id for duplicates reason](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/90f16a949662b5226ddc5d796e0aa59017ba4c01/Preparing_dataset_for%20analysis/Checking%20order_id%20for%20duplicates%20reason.sql)

## Results
*Selecting duplicate order_id's in payments:*
|order_id|
|--------|
|5cfd514482e22bc992e7693f0e3e8df7|
|b2bb080b6bc860118a246fd9b6fad6da|
|3689194c14ad4e2e7361ebd1df0e77b0|
|723e462ce1ee50e024887c0b403130f3|
|21b8b46679ea6482cbf911d960490048|
|ea9184ad433a404df1d72fa0a8764232|
|...|

*Checking first 4 id's:*
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
Then analyze why `review_id` is duplicated. The results indicate that the same `review_id` can be associated with different `order_id` values.

This is done using the following SQL query:
[Checking review_id for duplicates reason.sql](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/56b52abae2ea4cce0a9765deb2cbad7787622f01/Preparing_dataset_for%20analysis/Checking%20review_id%20for%20duplicates%20reason.sql)

## Results
*Different values in duplicate review_id*
|review_id|
|---------|
|00130cbe1f9d422698c812ed8ded1919|
|03a6a25db577d0689440933055111897|
|0467560f511c516ddaa54a60edb0c291|
|047fd109ced39e02296f6aeb74f6a6f1|
|0501aab2f381486c36bf0f071442c0c2|
|0655af56f10bc3ef8e3810610828f294|
|06e327fb381850fdd69fba40ad61b2f2|
|08528f70f579f0c830189efc523d2182|
|08a86da22498172adb6cefaa99fdfaf7|
|090aa2980b0aea78cd1ae73447d7d55b|
|...|

*Checking separate review_id*
|review_id|order_id|review_score|review_comment_title|review_comment_message|review_creation_date|review_answer_timestamp|
|---------|--------|------------|--------------------|----------------------|--------------------|-----------------------|
|00130cbe1f9d422698c812ed8ded1919|04a28263e085d399c97ae49e0b477efa|1||O cartucho "original HP" 60XL não é reconhecido pela impressora, consequentemente não funcionou. Além de ter chegado com atraso de mais de 15 dias do previsto. Preciso que seja trocado. |2018-03-07 00:00:00|2018-03-20 18:08:23|
|00130cbe1f9d422698c812ed8ded1919|dfcdfc43867d1c1381bfaf62d6b9c195|1||O cartucho "original HP" 60XL não é reconhecido pela impressora, consequentemente não funcionou. Além de ter chegado com atraso de mais de 15 dias do previsto. Preciso que seja trocado. |2018-03-07 00:00:00|2018-03-20 18:08:23|

*Finding all the different values in duplicate review_id*
|review_id|
|---------|

## Conclusion
- A single order can have multiple payments.
- A single review can be linked to multiple orders.
- These findings will be considered in further data analysis.

So, we can move on in the analysis of the datasets.

# 1. Top States and Cities by Unique Buyers

## Analysis
Let's determine the **top 7 states** and **top 10 cities** with the highest number of unique buyers, along with their percentage of the total customer base.

This is done using the following SQL queries:
[Top-7 States and Top-10 cities](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/cf5f63145f276cead345312e1aacb08f02be0807/Analysis/1.%20Num_of_customers.sql)

## Results

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
Let's analyze how orders are distributed across product categories, including the **percentage of total orders** and **English category names**.

This is done using the following SQL query:
[Sum per category](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/a7909eb368400417bd9abbea529d1a73aef1ab8d/Analysis/2.%20Sum_per_category.sql)

## Results

|product_category|sum_of_orders|percent_from_total|
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

# 3. Top Order Months Analysis

## Analysis
Let's determine the **month with the highest number of orders** for each year, excluding orders with a "canceled" status.

This is done using the following SQL query:
[Highest month each year](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/61ed94dc78b66a49c1b68101700fb6d2cab2a92c/Analysis/3.%20Highest_month_each_year.sql)

## Results
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

# 4. Sales Volume Analysis

## Analysis
Let's calculate the **total revenue, number of orders, and average order value** for the three analyzed years, excluding orders with a "canceled" status.

This is done using the following SQL query:
[Total revenue, order count, average value](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/1b547a1d3802195faec89e6afd7f3e2214a2b560/Analysis/4.%20Total_revenue.sql)

## Results
|reporting_year|annual_revenue|total_orders_per_year|average_order_value|
|--------------|--------------|---------------------|-------------------|
|2016|54071.35|320|168.97|
|2017|7186913.77|47235|152.15|
|2018|8624631.4|55667|154.93|

### Key Findings
- The dataset contains incomplete data for **2016**, so only **2017 and 2018** are considered.
- **2018 showed a positive growth trend** in total revenue compared to 2017.
- The **number of orders also increased** in 2018.
- The **average order value remained relatively stable** between the two years.

## Conclusion & Recommendations
1. **Growth Opportunity**: The increase in revenue and order volume suggests a healthy market expansion.
2. **Strategic Planning**: Future forecasting models should focus on identifying factors driving this growth.
3. **Data Completeness**: Consider collecting a more comprehensive dataset to improve long-term sales trend analysis.

# 5. Top Revenue-Generating Product Categories

## Analysis
Let's identify the **top 7 product categories** contributing the most to total sales revenue.

This is done using the following SQL query:
[Top-7 categories](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/cf5539bb4d243dede52facd03ffebeaf298ee2f8/Analysis/5.%20Top_7_categories_revenue.sql)

## Results
|product_category_name|revenue|percent_from_total|
|---------------------|-------|------------------|
|cama_mesa_banho|1711258.08|10.69|
|beleza_saude|1653730.45|10.33|
|informatica_acessorios|1571543.81|9.82|
|moveis_decoracao|1424782.52|8.9|
|relogios_presentes|1421715.28|8.88|
|esporte_lazer|1381363.23|8.63|
|utilidades_domesticas|1086565.32|6.79|

### Key Findings
- The **top 7 categories** are:
  - `cama_mesa_banho`
  - `beleza_saude`
  - `informatica_acessorios`
  - `moveis_decoracao`
  - `relogios_presentes`
  - `esporte_lazer`
  - `utilidades_domesticas`
- These categories collectively account for approximately **60%** of total sales revenue.

## Conclusion & Recommendations
1. **Assortment Expansion**: Increasing the variety of products in these categories could drive further revenue growth.
2. **Sales Promotions**: Implementing targeted marketing campaigns and promotions can further boost sales.
3. **Inventory Management**: Ensuring adequate stock levels for these high-demand categories can improve order fulfillment and customer satisfaction.

# 6. Average Order Value (AOV) by State

## Analysis
Let's calculate the **average order value (AOV)** across different states in Brazil to understand regional purchasing behaviors.

This is done using the following SQL query:
[Average order value](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/7ca9e301cdfddf328caacdefbdcb012a3b124fc3/Analysis/6.%20Average_order_value.sql)

## Results
|customer_state|average_order_value|
|--------------|-------------------|
|AC|234.29|
|AL|227.08|
|AM|181.6|
|AP|232.33|
|BA|170.82|
|CE|199.9|
|DF|161.13|
|ES|154.71|
|GO|165.76|
|MA|198.86|
|MG|154.71|
|MS|186.87|
|MT|195.23|
|PA|215.92|
|PB|248.33|
|PE|187.99|
|PI|207.11|
|PR|154.15|
|RJ|158.53|
|RN|196.78|
|RO|233.2|
|RR|218.8|
|RS|157.18|
|SC|165.98|
|SE|208.44|
|SP|137.5|
|TO|204.27|

### Key Findings
- The **average order value varies significantly** across states.
- The **top 3 states by number of buyers**—São Paulo (SP), Rio de Janeiro (RJ), and Minas Gerais (MG)—account for over **60% of total orders**.
- These states have a **relatively low AOV**, which heavily influences the overall company average.

## Conclusion & Recommendations
1. **AOV Growth Strategy**: Targeting SP, RJ, and MG with premium product offerings or upselling strategies could help increase the average order value.
2. **Personalized Marketing**: Region-specific promotions or bundled deals might encourage higher spending per order.

# 7. Order Value Distribution

## Analysis
Let's categorize orders based on their value:
- **Low**: Less than 100 BRL
- **Medium**: Between 100 and 300 BRL
- **High**: More than 300 BRL

This is done using the following SQL query:
[Order values categories](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/23f0b3c11311cea2fb2c627d7ccf7f8bd3f248ba/Analysis/7.%20Order_values_categories.sql)

## Results
| revenue_rank | order_count | percentage |
|-------------|------------|------------|
| Low         | 47,255     | 47.52%     |
| Medium      | 41,868     | 42.10%     |
| High        | 10,317     | 10.38%     |

## Conclusion & Recommendations
1. **Customer Behavior Insight**: Nearly **90% of orders** fall into the **low** and **medium** price categories, indicating that most buyers prefer spending under **300 BRL**.
2. **Sales Strategy**: Running promotional sales or bundle offers could help shift some medium buyers into the high-value category.
3. **Experimentation**: Future analysis could track how discounts or marketing incentives impact the order value distribution.

# 8. Average Delivery Time by State

## Analysis
Let's calculate the **average shipping time (in days) for each state** to assess regional differences in delivery speed.

This is done using the following SQL query:
[Average shipping time by state](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/4b329afc34291879b4940aa5ae85718d73fbd51c/Analysis/8.%20Average_shipping_time_per_state.sql)

## Results
| customer_state | shipping_time_days |
|---------------|----------------------|
| SP | 17 |
| DF | 22 |
| PR | 22 |
| MG | 22 |
| SC | 23 |
| ES | 23 |
| MS | 23 |
| RJ | 24 |
| GO | 25 |
| TO | 26 |
| RS | 26 |
| BA | 27 |
| SE | 28 |
| MA | 28 |
| PE | 28 |
| PI | 28 |
| RN | 29 |
| CE | 29 |
| MT | 29 |
| PB | 30 |
| AL | 30 |
| PA | 34 |
| RO | 37 |
| AC | 38 |
| AP | 43 |
| RR | 43 |
| AM | 43 |

## Conclusion & Recommendations
1. **Fastest Delivery**: São Paulo (SP) has the shortest shipping time (**17 days**) and also the highest number of buyers.
2. **Delivery Gap**: The slowest states (AM, RR, AP) have more than **twice the delivery time** of SP.
3. **Optimization Opportunity**: Investigating the causes of long delivery times and improving logistics could enhance customer satisfaction and potentially increase sales.
4. **Customer Retention**: Reducing shipping times in slow-delivery states may attract more buyers who currently hesitate due to long waiting periods.

# 9. Average Freight Cost by State

## Analysis
Let's calculate the **average freight cost** across Brazilian states to determine regional differences in shipping expenses.

This is done using the following SQL query:
[Average freight cost](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/1c46d6c855fdfe378c9bdad92250b44c73139e81/Analysis/9.%20Average_freight_value_top10cities.sql)

## Results
|customer_state|average_freight_value|
|--------------|---------------------|
|PB|43.01|
|RR|42.98|
|RO|41.22|
|AC|40.07|
|PI|39.29|
|MA|38.3|
|TO|37.37|
|SE|36.75|
|AL|36.25|
|PA|35.87|
|RN|35.86|
|AP|34.43|
|AM|33.21|
|PE|33.06|
|CE|32.91|
|MT|28.27|
|BA|26.49|
|MS|23.49|
|GO|22.88|
|ES|22.19|
|RS|21.79|
|SC|21.56|
|RJ|21.09|
|DF|21.09|
|MG|20.72|
|PR|20.61|
|SP|15.18|

## Conclusion & Observations
1. **Freight Cost vs. Delivery Time**: Higher freight costs do not always correlate with longer delivery times. Some states with long shipping durations do not have the highest freight charges.
2. **Regional Pricing Variance**: Freight pricing may be influenced by factors other than distance, such as logistics infrastructure, carrier availability, and state-specific regulations.
3. **Further Analysis**: Investigating the relationship between freight costs, order values, and delivery time could provide insights into potential cost optimizations.

# 10. Most Popular Payment Method

## Analysis
Let's identify the **most commonly used payment method** and check whether there are regional differences across Brazilian states.

This is done using the following SQL query:
[The most popular payment method](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/ace9cff0a19c16f9eb0754973aa85edfa2c3dc9b/Analysis/10.%20The_most_popular_payment_types.sql)

## Results
*Overall Most Popular Payment Method:*
|payment_type|num_of_orders|
|------------|-------------|
|credit_card|76351|

*Payment Method by State:*
|customer_state|most_popular_payment_type|
|--------------|-------------------------|
|AC|credit_card|
|AL|credit_card|
|AM|credit_card|
|AP|credit_card|
|BA|credit_card|
|CE|credit_card|
|DF|credit_card|
|ES|credit_card|
|GO|credit_card|
|MA|credit_card|
|MG|credit_card|
|MS|credit_card|
|MT|credit_card|
|PA|credit_card|
|PB|credit_card|
|PE|credit_card|
|PI|credit_card|
|PR|credit_card|
|RJ|credit_card|
|RN|credit_card|
|RO|credit_card|
|RR|credit_card|
|RS|credit_card|
|SC|credit_card|
|SE|credit_card|
|SP|credit_card|
|TO|credit_card|

## Conclusion
1. **Credit Cards Dominate**: The most popular payment method is **credit card payments**, with no variation across different states.
2. **Implications for Business Strategy**: Given the widespread preference for credit cards, businesses may focus on optimizing credit card transactions, offering installment payment options, and ensuring seamless payment processing to enhance customer satisfaction.

# 11. Installment Payment Distribution

## Analysis
Let's examine the **distribution of payments made in installments**, identifying how many transactions are completed in a single payment versus multiple installments.

This is done using the following SQL query:
[Installment payment distribution](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/14da1f9789ffc203a794027d6deaea5ba0bd026b/Analysis/11.%20Distribution_of_payment_installmenst.sql)

## Results
|payment_installments|num_of_payments|
|--------------------|---------------|
|1|52546|
|2|12413|
|3|10461|
|4|7098|
|10|5328|
|5|5239|
|8|4268|
|6|3920|
|7|1626|
|9|644|
|12|133|
|15|74|
|18|27|
|11|23|
|24|18|
|20|17|
|13|16|
|14|15|
|17|8|
|16|5|
|21|3|
|0|2|
|22|1|
|23|1|

## Conclusion
1. **One-Time Payments Are Preferred**: The majority of customers opt to pay in full rather than using installments. More than **50% of all payments** are completed in **a single payment**.  
2. **Further Analysis Required**: It would be beneficial to investigate whether the **number of installment payments impacts the average order value (AOV)**. If customers who pay in installments tend to make larger purchases, businesses might consider promoting installment options to increase revenue.

# 12. Correlation Between Installment Payments and AOV

## Analysis
Let's analyze whether there is a correlation between the **number of installment payments** and the **average order value (AOV)**.

This is done using the following SQL query:
[Installment Payments and AOV](https://github.com/MykolaKud/Brazilian_E-com_Analytics_project/blob/3476ff2c80411f815218fc13d99489e31bc73585/Analysis/12.%20Correlation%20between%20payment%20installments%20and%20order%20value.sql) 

## Results
| payment_installments | avg_order_value | total_orders |
|----------------------|----------------------|--------------|
| 1                  | 112.04                | 52184        |
| 2                  | 126.9                 | 12353        |
| 3                  | 142.29                | 10392        |
| 4                  | 163.85                | 7056         |
| 5                  | 182.59                | 5209         |
| 6                  | 209.69                | 3898         |
| 7                  | 187.61                | 1620         |
| 8                  | 307.22                | 4239         |
| 9                  | 204.21                | 638          |
| 10                 | 413.69                | 5292         |
| 11                 | 125.6                 | 22           |
| 12                 | 321.68                | 133          |
| 13                 | 151.83                | 15           |
| 14                 | 167.96                | 15           |
| 15                 | 445.55                | 74           |
| 16                 | 292.69                | 5            |
| 17                 | 174.6                 | 8            |
| 18                 | 486.48                | 27           |
| 20                 | 615.8                 | 17           |
| 21                 | 243.7                 | 3            |
| 22                 | 228.71                | 1            |
| 23                 | 236.48                | 1            |
| 24                 | 610.05                | 18           |

## Conclusion
1. **Observed Correlation**: There is a noticeable increase in **AOV with more installments**, suggesting that customers who pay in multiple parts tend to make larger purchases.
2. **Further Statistical Analysis Needed**: While the data suggests a correlation, a **statistical test** (e.g., Pearson correlation or regression analysis) should be performed to confirm the strength and significance of the relationship.
3. **Business Opportunity**: Encouraging installment-based payments might lead to an increase in AOV, making it a potential strategy for boosting revenue.




