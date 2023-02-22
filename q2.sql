SELECT DISTINCT institution,name
FROM authors A NATURAL JOIN institutions S
WHERE S.country='il'
ORDER BY institution,
         name;

