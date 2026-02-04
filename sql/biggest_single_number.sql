--Find the largest single number. If there is no single number, report null.

select MAX(num) as num from (
select num
from mynumbers
group by num
HAVING count(*) = 1
)