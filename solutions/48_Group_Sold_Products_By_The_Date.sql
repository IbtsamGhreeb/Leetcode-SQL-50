-- 1484. Group Sold Products By The Date
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/Group-Sold-Products-By-The-Date


/* Write your T-SQL query statement below */

SELECT sell_date,COUNT(product) as num_sold,STRING_AGG(product,',' )WITHIN GROUP(ORDER BY product ASC) AS products
FROM (
    SELECT DISTINCT product,sell_date
    from Activities
)t
GROUP BY sell_dat
ORDER BY sell_date

