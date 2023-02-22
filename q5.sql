SELECT DISTINCT name
FROM authors NATURAL JOIN conferences
    EXCEPT
    (SELECT DISTINCT name
        FROM authors NATURAL JOIN conferences
        WHERE area!= 'systems' or year>=1990)
ORDER BY name;

