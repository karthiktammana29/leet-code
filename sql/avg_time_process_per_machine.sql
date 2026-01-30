--There is a factory website that has several machines each running the same number of processes. Write a solution to find the average time each machine takes to complete a process.The time to complete a process is the 'end' timestamp minus the 'start' timestamp. The average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run.The resulting table should have the machine_id along with the average time as processing_time, which should be rounded to 3 decimal places.

-- Nested Query, Performance is not great
select machine_id, ROUND(AVG(processing_time)::numeric,3) as processing_time from
(
select machine_id, process_id,
SUM(
    CASE
        WHEN activity_type = 'start' then -timestamp
        WHEN activity_type = 'end' then timestamp
        ELSE 0
    END
) AS processing_time
from activity


-- Self Join
select a1.machine_id, round(avg(a2.timestamp - a1.timestamp)::numeric, 3) as processing_time
from Activity a1
join Activity a2
on a1.machine_id = a2.machine_id
and a1.process_id = a2.process_id
and a1.activity_type = 'start'
and a2.activity_type = 'end'
group by a1.machine_id