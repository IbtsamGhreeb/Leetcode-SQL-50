-- 596. Classes With at Least 5 Students
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/Classes-With-at-Least-5-Students

# Write your MySQL query statement below
select class 
from 
(select class,count(student)
from Courses 
group by class
having count(student)>=5)as t
