--Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places. If a product does not have any sold units, its average selling price is assumed to be 0.

select p.product_id,ROUND(COALESCE(SUM(u.units * p.price)::numeric / NULLIF(SUM(u.units),0),0),2) as average_price
from prices p
left join unitssold u
on p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date and p.end_date
group by p.product_id