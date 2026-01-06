-- 1633. Percentage of Users Attended a Contest
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/Percentage-of-Users-Attended-a-Contest

/* Write your T-SQL query statement below */
select contest_id,round(count(user_id)*1.0/(select count(user_id)
from Users)*100,2) as percentage
from Register
group by contest_id
order by percentage desc,contest_id asc
