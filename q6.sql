WITH RECURSIVE Recurse(dist, name) as
(VALUES(0,'Noam Nisan')

UNION

SELECT dist + 1, A.name
FROM (Recurse NATURAL JOIN authors) as R, authors as A
WHERE R.conference = A.conference and R.year = A.year and dist < 2
)
SELECT DISTINCT name
FROM Recurse
ORDER BY name