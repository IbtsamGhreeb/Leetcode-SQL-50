-- 585. Investments in 2016
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/Investments-in-2016


WITH COUNT_TIV_2015 AS(SELECT COUNT(*) AS COUNTS,tiv_2015
FROM Insurance
GROUP BY tiv_2015
HAVING COUNT(*) >= 2)
,UNIQUE_LATLON AS(
    SELECT lat,lon,COUNT(*)
    FROM Insurance
    GROUP BY lat,lon
    HAVING COUNT(*)=1
)
SELECT ROUND(SUM(I.tiv_2016),2) AS tiv_2016
FROM Insurance I JOIN COUNT_TIV_2015 C
ON I.tiv_2015=C.tiv_2015
JOIN UNIQUE_LATLON U
ON I.lat=U.lat and I.lon = U.lon


