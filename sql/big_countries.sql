--Write a solution to find the name, population, and area of the big countries
--use cOR condition to filter the column based on the given conditions

select name,population,area from world
where area >= 3000000 or population >= 25000000