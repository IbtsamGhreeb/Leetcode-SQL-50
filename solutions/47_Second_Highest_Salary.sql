-- 176. Second Highest Salary
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/Second-Highest-Salary

/* Write your T-SQL query statement below */
select coalesce(max(distinct salary),null) as SecondHighestSalary 
from Employee
where salary not in (
select max(distinct salary) as HighestSalary 
from Employee
)
