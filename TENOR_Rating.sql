SELECT * FROM project.project;

SELECT 
    CASE
        WHEN TENOR < 4 THEN '1-4'
        WHEN TENOR BETWEEN 4 AND 6 THEN '4-6'
        WHEN TENOR BETWEEN 6 AND 12 THEN '6-12'
        WHEN TENOR BETWEEN 12 AND 18 THEN '12-18'
        WHEN TENOR BETWEEN 18 AND 24 THEN '18-24'
        WHEN TENOR BETWEEN 24 AND 36 THEN '24-36'
        WHEN TENOR > 36 THEN 'above 36'
    END AS TENOR_Rating,
    CONCAT('Rp. ', FORMAT(SUM(PYD), 0)) AS Pembiayaan_Total,
    PROFESI,
    COUNT(*) AS total
FROM
    project.project
GROUP BY TENOR
ORDER BY total DESC;

SELECT 
    TENOR,
    count(*) as total
FROM
    project.project
group by TENOR
order by total;