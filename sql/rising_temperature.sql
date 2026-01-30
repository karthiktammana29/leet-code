-- Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
-- Using the self join to join the data based on recorDate and recordDate + 1 and then filtering for the temp criteria

select w_1.id
from weather w_1 join
weather w_2
on w_1.recordDate = w_2.recordDate + INTERVAL '1 DAY'
where w_1.temperature > w_2.temperature