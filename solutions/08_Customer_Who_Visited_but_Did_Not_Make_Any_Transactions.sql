-- 1581. Customer Who Visited but Did Not Make Any Transactions
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/Customer-Who-Visited-but-Did-Not-Make-Any-Transactions/

/* Write your T-SQL query statement below */
select v.customer_id ,count(v.visit_id) as count_no_trans
from Visits v left join Transactions t
on v.visit_id =t.visit_id 
where t.transaction_id is null
group by v.customer_id
