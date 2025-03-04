#Finding all the different values in duplicate review_id by checking all columns   
SELECT review_id
FROM olist_order_reviews_dataset
GROUP BY review_id
HAVING COUNT(DISTINCT order_id) > 1
   OR COUNT(DISTINCT review_score) > 1
   OR COUNT(DISTINCT review_comment_title) > 1
   OR COUNT(DISTINCT review_comment_message) > 1
   OR COUNT(DISTINCT review_creation_date) > 1
   OR COUNT(DISTINCT review_answer_timestamp) > 1;

#Checking one separate review_id 
SELECT * FROM olist_order_reviews_dataset WHERE review_id = '00130cbe1f9d422698c812ed8ded1919';

#Finding all the different values in duplicate review_id by checking all columns except order_id
SELECT review_id
FROM olist_order_reviews_dataset
GROUP BY review_id
HAVING COUNT(DISTINCT review_score) > 1
   OR COUNT(DISTINCT review_comment_title) > 1
   OR COUNT(DISTINCT review_comment_message) > 1
   OR COUNT(DISTINCT review_creation_date) > 1
   OR COUNT(DISTINCT review_answer_timestamp) > 1;
