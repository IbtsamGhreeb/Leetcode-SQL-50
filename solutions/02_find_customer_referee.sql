-- 584. Find Customer Referee
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/recyclable-and-low-fat-products/

/* Write your T-SQL query statement below */
select name
from Customer
where referee_id !=2 or referee_id is null


