-- 1280. Students and Examinations
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/students-and-examinations/

/* Write your T-SQL query statement below */
select s.student_id ,s.student_name,j.subject_name,count(e.student_id) as attended_exams
from Students s cross join Subjects j
left join Examinations e
on s.student_id=e.student_id
and j.subject_name=e.subject_name
group by s.student_id ,s.student_name,j.subject_name
order by s.student_id ,j.subject_name
