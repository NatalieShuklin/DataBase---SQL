SELECT DISTINCT institution,name
FROM authors A NATURAL JOIN conferences C NATURAL JOIN institutions S
WHERE S.country = 'il' and ((A.adjustedcount>=2 and C.area ='ai') or (A.adjustedcount>=2 and C.Subarea ='db'))
ORDER BY institution,
         name;

