-- 1068. Product Sales Analysis I
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/Product-Sales-Analysis-I/

/* Write your T-SQL query statement below */
select p.product_name ,s.year,s.price
from Sales s inner join Product p
on s.product_id=p.product_id 
