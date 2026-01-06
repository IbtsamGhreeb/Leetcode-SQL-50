-- 1527. Patients With a Condition
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/Patients-With-a-Condition

# Write your MySQL query statement below
select patient_id,patient_name,conditions   
from Patients
where conditions like 'DIAB1%' OR conditions like '% DIAB1%'



