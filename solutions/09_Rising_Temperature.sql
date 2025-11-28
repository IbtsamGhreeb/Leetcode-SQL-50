-- 197. Rising Temperature
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/Rising-Temperature/

/* Write your T-SQL query statement below */
SELECT W2.id
FROM Weather W1
JOIN Weather W2
ON DATEDIFF(day, W1.recordDate, W2.recordDate) = 1
WHERE W2.temperature > W1.temperature;
