WITH OldConference(conference) as
    (SELECT DISTINCT conference
        FROM authors
        GROUP BY conference
        HAVING count(DISTINCT year) >= 10)
SELECT DISTINCT name
FROM OldConference NATURAL JOIN authors
ORDER BY name;

