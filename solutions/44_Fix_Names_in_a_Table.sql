-- 1667. Fix Names in a Table
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/Fix-Names-in-a-Table

select user_id,concat(upper(left(name,1)),lower(substring(name,2))) as name
from Users 
order by user_id 



