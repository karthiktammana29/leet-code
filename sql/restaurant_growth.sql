--Compute the moving average of how much the customer paid in a seven days window (i.e., current day + 6 days before). average_amount should be rounded to two decimal places.Return the result table ordered by visited_on in ascending order.
-- Derive the base CTE which is the sum of the amount for each date. Then use this one to derive using window

WITH daily_cte AS(
select visited_on, sum(amount) as amount
from customer
group by visited_on
)

select visited_on,
SUM(amount) OVER(ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) as amount,
ROUND(AVG(amount) OVER(ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),2) as average_amount
from daily_cte
order by visited_on
OFFSET 6