-- 1757. Recyclable and Low Fat Products
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/recyclable-and-low-fat-products/

/* Write your T-SQL query statement below */
select product_id
from products
where low_fats='Y' and recyclable='Y'
