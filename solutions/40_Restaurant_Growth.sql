-- 1321. Restaurant Growth
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/Restaurant-Growth

WITH daily_amount AS (
  SELECT
    visited_on,
    SUM(amount) AS daily_amount
  FROM Customer
  GROUP BY visited_on
),
total_amount as(
SELECT
  visited_on,
  SUM(daily_amount) OVER (
    ORDER BY visited_on
    ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
  )AS amount
FROM daily_amount
)
SELECT visited_on,amount,ROUND(amount*1.0/7,2) AS average_amount
FROM total_amount 
WHERE visited_on IN(
    SELECT DATEADD(DAY, 6, visited_on)
    FROM total_amount
)









