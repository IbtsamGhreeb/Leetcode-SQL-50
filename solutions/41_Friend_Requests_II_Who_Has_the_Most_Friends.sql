-- 602. Friend Requests II: Who Has the Most Friends
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/Friend-Requests-II:-Who-Has-the-Most-Friends

WITH COUNT_ACCEPTER_REQUESTER AS(SELECT
requester_id AS id,COUNT(accepter_id) AS num 
FROM RequestAccepted 
GROUP BY requester_id
UNION ALL 
SELECT
accepter_id AS id,COUNT(requester_id) AS num 
FROM RequestAccepted 
GROUP BY accepter_id)

SELECT TOP 1 
id,SUM(num) as num
FROM COUNT_ACCEPTER_REQUESTER
GROUP BY id
ORDER BY num DESC



