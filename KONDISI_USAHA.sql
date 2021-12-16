SELECT * FROM project.project;

#-- 2. Mengidentifikasi "KONDISI_USAHA" berdasarkan "KONDISI_JAMINAN". --#
SELECT 
    CASE
        WHEN KONDISI_USAHA < 1 THEN '0-1'
        WHEN KONDISI_USAHA BETWEEN 1 AND 2 THEN '1-2'
        WHEN KONDISI_USAHA > 2 THEN '3'
    END AS KONDISI_range,
    COUNT(*) Total 
FROM project.project
WHERE
    KONDISI_JAMINAN = 'Baik' 
GROUP BY KONDISI_range
ORDER BY KONDISI_range;

SELECT 
    CASE
        WHEN KONDISI_USAHA < 1 THEN '0-1'
        WHEN KONDISI_USAHA BETWEEN 1 AND 2 THEN '1-2'
        WHEN KONDISI_USAHA > 2 THEN '3'
    END AS KONDISI_range,
    COUNT(*) Total 
FROM project.project
WHERE
    KONDISI_JAMINAN = 'Rusak' 
GROUP BY KONDISI_range
ORDER BY KONDISI_range;

SELECT 
    CASE
        WHEN KONDISI_USAHA < 1 THEN '0-1'
        WHEN KONDISI_USAHA BETWEEN 1 AND 2 THEN '1-2'
        WHEN KONDISI_USAHA > 2 THEN '3'
    END AS KONDISI_range,
    COUNT(*) Total 
FROM project.project
WHERE
    KONDISI_JAMINAN = 'Pindah Tangan' 
GROUP BY KONDISI_range
ORDER BY KONDISI_range;
#------------------------------------------------------------------------#