-- 1174. Immediate Food Delivery II
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/Immediate-Food-Delivery-II

/* Write your T-SQL query statement below */
with cte as(select customer_id ,order_date,customer_pref_delivery_date,row_number()over(partition by customer_id order by order_date) as rn
from Delivery)
select round(
    cast(sum(case when order_date=customer_pref_delivery_date then 1 else 0 end)as decimal)*100.0/count(distinct customer_id),2
    )as immediate_percentage
from cte
where rn=1

