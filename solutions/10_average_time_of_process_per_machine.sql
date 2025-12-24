-- 1661. Average Time of Process per Machine
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/average-time-of-process-per-machine/

/* Write your T-SQL query statement below */
with Process_start_end as(
    select process_id,machine_id,max(case when activity_type='end' then timestamp end) as end_process
,max(case when activity_type='start' then timestamp end )as start_process
from Activity
GROUP BY process_id,machine_id
)
select machine_id,round(avg(end_process-start_process),3) as processing_time
from Process_start_end
group by machine_id
