-- 185. Department Top Three Salaries
-- Difficulty: Hard
-- Link: https://leetcode.com/problems/Department-Top-Three-Salaries


WITH HIGHEST_DEPT_SALARY AS (SELECT D.name AS Department,E.name AS Employee,E.salary AS Salary,DENSE_RANK()OVER(PARTITION BY D.name ORDER BY E.Salary DESC) AS rn
FROM Employee E LEFT JOIN Department D
ON E.departmentId = D.id)
SELECT Department,Employee,Salary
FROM HIGHEST_DEPT_SALARY
WHERE RN<=3
ORDER BY Employee



