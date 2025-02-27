SELECT review_id
FROM olist_order_reviews_dataset
GROUP BY review_id
HAVING COUNT(DISTINCT order_id) > 1
   OR COUNT(DISTINCT review_score) > 1
   OR COUNT(DISTINCT review_comment_title) > 1
   OR COUNT(DISTINCT review_comment_message) > 1
   OR COUNT(DISTINCT review_creation_date) > 1
   OR COUNT(DISTINCT review_answer_timestamp) > 1;
