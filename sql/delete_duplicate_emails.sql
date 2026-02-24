--Write a solution to delete all duplicate emails, keeping only one unique email with the smallest id.For SQL users, please note that you are supposed to write a DELETE statement and not a SELECT one.

DELETE FROM person
WHERE id IN (
    SELECT id
    FROM (
        SELECT id,
               ROW_NUMBER() OVER (
                   PARTITION BY email
                   ORDER BY id
               ) AS rn
        FROM person
    ) t
    WHERE rn > 1
);