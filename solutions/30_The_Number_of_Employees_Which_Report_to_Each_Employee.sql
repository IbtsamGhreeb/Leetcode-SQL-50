-- 1731. The Number of Employees Which Report to Each Employee
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/The-Number-of-Employees-Which-Report-to-Each-Employee

select e.employee_id,e.name,count(e.employee_id) as reports_count,round(avg(m.age)) as average_age
from Employees e join Employees m
on e.employee_id=m.reports_to 
group by e.name,e.employee_id
order by e.employee_id
