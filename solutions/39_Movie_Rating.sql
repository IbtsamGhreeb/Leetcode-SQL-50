-- 1341. Movie Rating
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/Movie-Rating

/* Write your T-SQL query statement below */
with top_users as(select row_number()over(order by mov_rating desc,name asc) as mov_rn,name
from
(
select u.name,count(mr.rating) as mov_rating
from Users u join MovieRating mr
on u.user_id = mr.user_id     
group by u.name)t
),top_movies as
(
    select row_number()over(order by avg_rating desc,title asc) as avg_rn,title,avg_rating
from
(
select m.title,AVG(CAST(mr.rating AS FLOAT)) as avg_rating
from Movies m join MovieRating mr
on m.movie_id = mr.movie_id 
where mr.created_at between '2020-02-01' and '2020-02-29'
group by m.title)t
)
select name as results  
from top_users
where mov_rn=1
union all
select title 
from top_movies
where avg_rn=1




