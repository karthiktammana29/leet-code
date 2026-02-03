--If the customer's preferred delivery date is the same as the order date, then the order is called immediate; otherwise, it is called scheduled.The first order of a customer is the order with the earliest order date that the customer made. It is guaranteed that a customer has precisely one first order.Write a solution to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.

select ROUND(
SUM(CASE when order_date = customer_pref_delivery_date THEN '1' ELSE '0' END * 100.0) / COUNT(*),2) as immediate_percentage
from delivery
where (customer_id, order_date) in (
select customer_id, MIN(order_date) as first_order_date
FROM delivery
group by customer_id)