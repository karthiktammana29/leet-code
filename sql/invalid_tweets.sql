-- Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15
-- length(col_name) captures any special characters as well

select tweet_id from tweets
where length(content) > 15