--Write a solution to find all sales that occurred in the first year each product was sold.

select product_id, first_year, quantity, price from (
select product_id, year as first_year, quantity, price,
RANK() OVER (PARTITION BY product_id ORDER BY year) as rank_nb
from sales
) where rank_nb = 1