SELECT * FROM project.project;

#-- 1. Mengidentifikasi "KOLEKTIBILITAS" data 'LANCAR', 'KURANG LANCAR', 'DALAM PENGAWASAN KHUSUS', 'MACET' berdasarkan "PROFESI".
#-- 2. Mengidentifikasi "KONDISI_USAHA" berdasarkan "KONDISI_JAMINAN".
#-- 3. Mengidentifikasi Total/AVG "PYD" berdasarkan "PROFESI".

#-- 1. Mengidentifikasi "KOLEKTIBILITAS" data 'LANCAR', 'KURANG LANCAR', 'DALAM PENGAWASAN KHUSUS', 'MACET' berdasarkan "PROFESI". --#
SELECT 
    PROFESI, COUNT(*) Total
FROM
    project.project
WHERE
    KOLEKTIBILITAS = 'LANCAR'
GROUP BY PROFESI
ORDER BY Total;

SELECT 
    PROFESI, COUNT(*) Total
FROM
    project.project
WHERE
    KOLEKTIBILITAS = 'KURANG LANCAR'
GROUP BY PROFESI
ORDER BY Total;

SELECT 
    PROFESI, COUNT(*) Total
FROM
    project.project
WHERE
    KOLEKTIBILITAS = 'MACET'
GROUP BY PROFESI
ORDER BY Total;

SELECT 
    PROFESI, COUNT(*) Total
FROM
    project.project
WHERE
    KOLEKTIBILITAS = 'DALAM PENGAWASAN KHUSUS'
GROUP BY PROFESI
ORDER BY Total;
#------------------------------------------------------------------------------------------------------------------------------------#

