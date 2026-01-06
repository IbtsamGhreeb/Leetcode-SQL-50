-- 1164. Product Price at a Given Date
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/Product-Price-at-a-Given-Date

SELECT p.product_id, p.new_price AS price
FROM Products p
JOIN (
    SELECT product_id, MAX(change_date) AS max_date
    FROM Products
    WHERE change_date <= '2019-08-16' 
    GROUP BY product_id
) t
ON p.product_id = t.product_id
AND p.change_date = t.max_date
UNION ALL

SELECT
  product_id,
  10 AS price
FROM
  Products
GROUP BY
  product_id
HAVING
  MIN(change_date) > '2019-08-16'

order by product_id  


