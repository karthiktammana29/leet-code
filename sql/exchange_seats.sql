--Write a solution to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.Return the result table ordered by id in ascending order.
--use case when statement to swap the elements based on the id

select
CASE when id % 2 = 1 and id < (select max(id) from seat) then id + 1
     when id % 2 = 0 then id - 1
     ELSE id
END as id,
student
from seat
ORDER by id