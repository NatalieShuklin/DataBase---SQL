SELECT DISTINCT name,year
FROM authors A NATURAL JOIN conferences C
WHERE C.Subarea='vision' and institution = 'Hebrew University of Jerusalem'

INTERSECT

SELECT DISTINCT name,year
FROM authors A NATURAL JOIN conferences C
WHERE C.Subarea='ml' and institution = 'Hebrew University of Jerusalem'
ORDER BY name,
    year;

