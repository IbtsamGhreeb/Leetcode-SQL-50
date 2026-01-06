-- 180. Consecutive Numbers
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/Consecutive-Numbers

with cte as(select lead(num,1)over(order by id) as lead1,lead(num,2)over(order by id)as lead2,id,num
from Logs)
select distinct num as ConsecutiveNums 
from cte
where num=lead1 and num=lead2
