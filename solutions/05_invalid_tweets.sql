-- 1683. Invalid Tweets
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/invalid-tweets/

/* Write your T-SQL query statement below */
select tweet_id
from Tweets 
where len(content)>15


