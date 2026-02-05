--Report for every three line segments whether they can form a triangle.
--triangle condition, (A+B) > C and (B+C) > A and (A+C) > B - it's a triangle only if all conditions are satisfied
select x,y,z,
CASE
    when (x+y) > z AND (y+z) > x and (x+z) > y then 'Yes'
    ELSE 'No'
END AS triangle
from triangle
