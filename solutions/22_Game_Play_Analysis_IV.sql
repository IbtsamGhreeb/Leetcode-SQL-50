-- 550. Game Play Analysis IV
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/Game-Play-Analysis-IV

/* Write your T-SQL query statement below */
WITH cte AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY player_id ORDER BY event_date) AS rn,
           LEAD(event_date) OVER (PARTITION BY player_id ORDER BY event_date) AS next_date
    FROM Activity
)
SELECT 
    ROUND(
        CAST(SUM(CASE WHEN DATEDIFF(day, event_date, next_date) = 1 AND rn = 1 THEN 1 ELSE 0 END) AS DECIMAL) 
        / COUNT(DISTINCT player_id),
    2) AS fraction
FROM cte;


