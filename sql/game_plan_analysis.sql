--Write a solution to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places. In other words, you need to determine the number of players who logged in on the day immediately following their initial login, and divide it by the number of total players.

SELECT
    ROUND(
        COUNT(DISTINCT a.player_id) * 1.0
        / COUNT(DISTINCT f.player_id),
        2
    ) AS fraction
FROM (
    SELECT
        player_id,
        MIN(event_date) AS first_date
    FROM Activity
    GROUP BY player_id
) f
LEFT JOIN Activity a
    ON a.player_id = f.player_id
   AND a.event_date = DATE_ADD(f.first_date, INTERVAL 1 DAY);