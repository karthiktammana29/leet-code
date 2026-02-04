--Write a solution to calculate the number of unique subjects each teacher teaches in the university.

select teacher_id, distinct(count subject_id) as cnt
from teacher
group by teacher_id