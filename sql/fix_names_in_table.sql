--Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.

select user_id,
CONCAT(
    UPPER(SUBSTRING(name,1,1)),
    LOWER(SUBSTRING(name,2,LENGTH(name)))
    ) AS name
from users
order by user_id