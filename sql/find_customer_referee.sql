--Find the names of the customer that are either: referred by any customer with id != 2. not referred by any customer.
-- Use OR condition and NULL to check if null and != operator

select name from customer
where referee_id is NULL
OR referee_id != 2