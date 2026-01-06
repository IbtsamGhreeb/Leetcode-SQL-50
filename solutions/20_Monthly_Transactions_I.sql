-- 1193. Monthly Transactions I
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/Monthly-Transactions-I

/* Write your T-SQL query statement below */
select left(trans_date,7) AS month,country,count(id) as trans_count,
sum(case when state='approved' then 1 else 0 end) as approved_count,
sum(amount) as trans_total_amount,
sum(case when state='approved' then amount else 0 end) as approved_total_amount 
from Transactions 
group by left(trans_date,7),country
order by left(trans_date,7),country desc
