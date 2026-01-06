-- 1934. Confirmation Rate
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/Confirmation-Rate/

# Write your MySQL query statement below
with cte_action as(select count(c.action) as request,s.user_id 
from Signups s left join Confirmations c
on s.user_id=c.user_id
group by s.user_id)
,cte_confirm as(
select count(action) as confirm,user_id 
from Confirmations 
where action='confirmed'
group by user_id)
select a.user_id,round(coalesce(c.confirm/a.request,0),2) as confirmation_rate 
from cte_action a left join cte_confirm c
on c.user_id=a.user_id

