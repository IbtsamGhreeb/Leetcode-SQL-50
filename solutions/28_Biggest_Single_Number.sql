-- 619. Biggest Single Number
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/Biggest-Single-Number

with nums as(select num ,count(num) as count_nums
from MyNumbers 
group by num)
select max(num) as num 
from nums
where count_nums=1 
