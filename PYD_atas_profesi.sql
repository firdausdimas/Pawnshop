SELECT * FROM project.project;

#-- 3. Mengidentifikasi Total/AVG "PYD" berdasarkan "PROFESI". --#
SELECT 
    PROFESI, 
    CONCAT('Rp. ', format( sum(PYD), 0)) as Pembiayaan_total,
    COUNT(*) Total
FROM
    project.project
GROUP BY PROFESI
ORDER BY Total;

SELECT 
    PROFESI, 
	CONCAT('Rp. ', format( AVG(PYD), 0)) as Pembiayaan_rerata,
    COUNT(*) Total
FROM
    project.project
GROUP BY PROFESI
ORDER BY Total;
#----------------------------------------------------------------#