-- 1978. Employees Whose Manager Left the Company
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/Employees-Whose-Manager-Left-the-Company

/* Write your T-SQL query statement below */
select employee_id 
from Employees 
where salary < 30000 and manager_id not in (
    select employee_id 
    from Employees 
)
order by employee_id  asc


