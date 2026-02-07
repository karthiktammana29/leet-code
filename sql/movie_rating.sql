--Find the name of the user who has rated the greatest number of movies. In case of a tie, return the lexicographically smaller user name.Find the movie name with the highest average rating in February 2020. In case of a tie, return the lexicographically smaller movie name.


WITH cte_1 as (
select m.user_id, m.rating, m.created_at, u.name, mv.title
from movierating m
left join users u
on m.user_id = u.user_id
left join movies mv
on m.movie_id = mv.movie_id
),
name_cte as (
select name, COUNT(rating) as cnt from
cte_1
group by name
order by cnt desc, name asc
LIMIT 1
),
rating_cte as (
    select title, AVG(rating) as avg_rating
    from cte_1
    where created_at >= '2020-02-01' AND created_at < '2020-03-01'
    group by title
    ORDER by avg_rating desc, title asc
    LIMIT 1
)

select name as results from name_cte
UNION ALL
select title from rating_cte