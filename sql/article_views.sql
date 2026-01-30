--Write a solution to find all the authors that viewed at least one of their own articles. Return the result table sorted by id in ascending order.
-- Get the distinct values when the author and viewer match, apply alias for the column and order by asc


select distinct(v.author_id) as id from views v
where  v.author_id = v.viewer_id
order by v.author_id asc