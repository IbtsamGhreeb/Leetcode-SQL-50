-- 1251. Average Selling Price
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/Average-Selling-Price

WITH cte AS (
  SELECT 
    p.product_id,
    SUM(p.price * u.units) AS total_revenue,
    SUM(u.units) AS total_units
  FROM Prices p
  LEFT JOIN UnitsSold u
    ON p.product_id = u.product_id
   AND u.purchase_date BETWEEN p.start_date AND p.end_date
  GROUP BY p.product_id
)
select product_id,round(coalesce(total_revenue/total_units,0),2) as average_price
from cte

