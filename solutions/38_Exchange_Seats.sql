-- 626. Exchange Seats
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/Exchange-Seats


select case when id = (
    select count(id) as cnt
    from Seat
) and (
    select count(id) as cnt
    from Seat
)%2=1 then id
when id%2 = 0 then id-1
when id%2 = 1 then id+1
end as id,student
from Seat
order by id 


