--https://dataford.io/sql/Coolest-review
SELECT business_name , review_text,cool
FROM yelp_reviews 
ORDER BY cool DESC, review_date ASC
LIMIT 1;
