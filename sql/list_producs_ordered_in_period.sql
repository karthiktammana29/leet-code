--Write a solution to get the names of products that have at least 100 units ordered in February 2020 and their amount.

WITH base_data_cte AS(
    select p.product_name, o.order_date, o.unit
    from products p
    left join
    orders o
    on p.product_id = o.product_id
)

select product_name, sum(unit) as unit
from base_data_cte
where order_date >= '2020-02-01' and order_date < '2020-03-01'
group by product_name
HAVING sum(unit) >= 100