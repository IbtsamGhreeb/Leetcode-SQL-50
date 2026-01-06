-- 196. Delete Duplicate Emails
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/Delete-Duplicate-Emails

/* Write your T-SQL query statement below */
DELETE FROM Person
WHERE id NOT IN (
    SELECT MIN(id)
    FROM Person
    GROUP BY email
);





