--The result table must contain all three categories. If there are no accounts in a category, return 0.
--write 2 cte's and join the CTE's to get the results
WITH pro_cte AS(
select category, COALESCE(count(account_id),0) as accounts_count from (
select account_id,income,
CASE when income < 20000 THEN 'Low Salary'
     when income >= 20000 and income <= 50000 THEN 'Average Salary'
     when income > 50000 THEN 'High Salary'
END as category
from accounts
)
group by category
),
dis_cat AS (
    SELECT 'Low Salary' AS category
    UNION ALL
    SELECT 'Average Salary'
    UNION ALL
    SELECT 'High Salary'
)

select d.category, COALESCE(p.accounts_count,0) as accounts_count
from dis_cat d
left join
pro_cte p
on d.category = p.category