--Write a solution to find the users who have valid emails.
--Regex : ^ → start of string, [A-Za-z] → first character must be a letter, [A-Za-z0-9_.-]* → rest of the prefix can be letters, digits, underscore, period, or dash, @leetcode\.com → domain must match exactly (\. escapes the dot),$ → end of string

select user_id, name, mail
from users
where mail ~ '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\.com$'