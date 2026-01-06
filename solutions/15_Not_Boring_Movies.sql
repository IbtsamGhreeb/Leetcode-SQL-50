-- 620. Not Boring Movies
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/Not-Boring-Movies

select *
from Cinema 
where id%2<>0
and description<>'boring'
order by rating desc
