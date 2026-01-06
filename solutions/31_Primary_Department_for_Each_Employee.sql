-- 1789. Primary Department for Each Employee
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/Primary-Department-for-Each-Employee

select employee_id,department_id
from Employee 
group by employee_id 
having count(department_id)=1
union
select employee_id,department_id
from Employee
where primary_flag ='Y'
