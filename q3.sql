SELECT DISTINCT name
FROM (  SELECT name, year, conference, count
        FROM authors NATURAL JOIN conferences
        WHERE area='systems') T
GROUP BY name
HAVING SUM(count) >= 2

INTERSECT

SELECT distinct name
FROM (    SELECT name, year, conference, count
    FROM authors NATURAL JOIN conferences
    WHERE area='systems' and year>=2014) S
ORDER BY name;

