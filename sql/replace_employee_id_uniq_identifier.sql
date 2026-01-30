--Join 2 tables to get the final result

select eu.unique_id, e.name
from employees e
left join employeeuni eu
on e.id = eu.id