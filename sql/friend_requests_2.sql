--Write a solution to find the people who have the most friends and the most friends number.The test cases are generated so that only one person has the most friends.
-- create a CTE to union ALL both requester and accepter id's and then count the number

WITH id_cte AS (
select requester_id from requestaccepted
UNION ALL
select accepter_id from requestaccepted
)

select requester_id as id,
count(requester_id) as num from id_cte
group by requester_id
ORDER BY num desc
LIMIT 1