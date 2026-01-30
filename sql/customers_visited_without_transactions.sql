--Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

select v.customer_id, count(*) as count_no_trans
from visits v
left join transactions t
on v.visit_id = t.visit_id
where t.visit_id is NULL
group by v.customer_id
