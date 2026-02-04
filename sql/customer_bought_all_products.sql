--Write a solution to report the customer ids from the Customer table that bought all the products in the Product table.

select customer_id from (
select customer_id, count(distinct product_key) as cnt
from customer
group by customer_id
) where cnt = (select count(product_key) from product)