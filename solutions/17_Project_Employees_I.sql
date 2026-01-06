-- 1075. Project Employees I
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/Project-Employees-I

# Write your MySQL query statement below
with cte as(select p.project_id,p.employee_id,e.experience_years
from Project p left join Employee e
on p.employee_id=e.employee_id)
select project_id,round(coalesce(avg(experience_years),0),2) as average_years 
from cte
group by project_id
