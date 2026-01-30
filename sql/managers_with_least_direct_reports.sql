--Write a solution to find managers with at least five direct reports.
--Can be done in multiple ways using IN operator or left join

select name from employee
where id IN (
    select managerId from employee
    where managerId IS NOT NULL
    GROUP BY managerId
    HAVING COUNT(*) >= 5
)