--Write a solution to find all the classes that have at least five students.
-- HAVING after group by will help here for better performance
SELECT class
FROM courses
GROUP by class
HAVING count(student)>=5


--Subqueries may lead to performance issues
select class from (
select class, count(distinct student)
from courses
group by class
) where count >= 5