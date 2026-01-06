-- 1204. Last Person to Fit in the Bus
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/Last-Person-to-Fit-in-the-Bus

with total_weight as(select Turn,person_id as ID,person_name,Weight,sum(Weight)over(order by Turn) as Total_Weight 
from Queue)
select person_name
from total_weight
where Total_Weight <= 1000
order by Total_Weight  desc
limit 1

