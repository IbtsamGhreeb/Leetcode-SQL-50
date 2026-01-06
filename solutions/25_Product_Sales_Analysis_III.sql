-- 1070. Product Sales Analysis III
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/Product-Sales-Analysis-III

# Write your MySQL query statement below
with cte as(select min(year) as first_year,product_id 
from Sales
group by product_id)
select c.product_id,c.first_year,s.quantity,s.price 
from Sales s join cte c
on s.product_id=c.product_id
where s.year=c.first_year
