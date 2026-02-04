--Write a solution to find the daily active user count for a period of 30 days ending 2019-07-27 inclusively. A user was active on someday if they made at least one activity on that day.

select activity_date as day, count(distinct user_id) as active_users
from activity
where activity_date BETWEEN DATE '2019-07-27' - 29 AND DATE '2019-07-27'
group by activity_date