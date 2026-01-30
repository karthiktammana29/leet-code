--Write a solution to find the ids of products that are both low fat and recyclable
--Using AND condition to satisfy both the conditions


select product_id from products
where low_fats = 'Y' and recyclable = 'Y';