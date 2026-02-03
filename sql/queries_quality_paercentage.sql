--Write a solution to find each query_name, the quality and poor_query_percentage.Both quality and poor_query_percentage should be rounded to 2 decimal places.

select query_name,
    ROUND(AVG(rating * 1.0 / position),2) AS quality,
    ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS poor_query_percentage
from queries
group by query_name