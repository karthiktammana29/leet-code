--Write a solution to find for each date the number of different products sold and their names.The sold products names for each date should be sorted lexicographically.Return the result table ordered by sell_date.
--Use STRIN_AGG to concatenate the products

select sell_date,
count(distinct product) as num_sold,
STRING_AGG(DISTINCT product, ',') AS products
from activities
group by sell_date
order by sell_date