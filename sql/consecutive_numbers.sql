--Find all numbers that appear at least three times consecutively.
--it can be done using self join or lead function

select distinct num as ConsecutiveNums
from (
select num,
    LEAD(num) OVER (ORDER BY id) as lead1,
    LEAD(num,2) OVER (ORDER BY id) as lead2
from logs
)
where num = lead1 and num = lead2