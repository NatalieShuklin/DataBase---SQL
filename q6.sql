
SELECT DISTINCT name
FROM Authors A
WHERE NOT EXISTS
      (SELECT conference
        FROM authors NATURAL JOIN conferences
        WHERE name='Noam Nisan' and area='ai'

        and conference NOT IN (SELECT conference
            FROM conferences NATURAL JOIN authors as C
            WHERE C.name = A.name)
    )
ORDER BY name;

