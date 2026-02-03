--Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.

select DATE_FORMAT(trans_date, '%Y-%m') as month, country,
COUNT(state) as trans_count,
SUM(CASE when state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
SUM(amount) as trans_total_amount,
SUM(CASE when state = 'approved' THEN amount ELSE 0 END) as approved_total_amount
from transactions
group by DATE_FORMAT(trans_date, '%Y-%m'), country