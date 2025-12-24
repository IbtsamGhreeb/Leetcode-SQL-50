-- 570. Managers with at Least 5 Direct Reports
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

# Write your MySQL query statement below
WITH cte AS (
    SELECT 
        managerId,
        COUNT(*) AS num_reports
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5
)
SELECT e.name
FROM Employee e
JOIN cte c
  ON e.id = c.managerId;
