--Write a solution to find the percentage of the users registered in each contest rounded to two decimals.Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order.
-- Not everything needs to be joined, it can be handled even without join
select r.contest_id, ROUND(COUNT(DISTINCT r.user_id)* 100.0 / (select count(*) from users),2) as percentage
from
register r
group by r.contest_id
order by percentage desc, r.contest_id asc