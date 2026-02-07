--There is a queue of people waiting to board a bus. However, the bus has a weight limit of 1000 kilograms, so there may be some people who cannot board.Write a solution to find the person_name of the last person that can fit on the bus without exceeding the weight limit. The test cases are generated such that the first person does not exceed the weight limit.Note that only one person can board the bus at any given turn.
--Order by the turn and add the next weight using window function to calculate the total amount
select person_name from (
select person_name,
    SUM(weight) OVER(ORDER by turn) as total_weight
from queue
) where total_weight <= 1000
ORDER BY total_weight desc
LIMIT 1
