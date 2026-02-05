--Write a solution to find the prices of all products on the date 2019-08-16.
-- On the left side of the join, get all the distinct product_id's and then on the right get the calculated values for the new price. use coalesce function to fill in the default value of 10 incase of nulls

SELECT p.product_id,
       COALESCE(t.price, 10) AS price
FROM (
    SELECT DISTINCT product_id
    FROM Products
) p
LEFT JOIN (
    SELECT product_id,
           new_price AS price,
           ROW_NUMBER() OVER (
               PARTITION BY product_id
               ORDER BY change_date DESC
           ) AS rn
    FROM Products
    WHERE change_date <= '2019-08-16'
) t
ON p.product_id = t.product_id
AND t.rn = 1;