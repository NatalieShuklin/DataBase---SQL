SELECT DISTINCT year,name
FROM authors
WHERE institution = 'Hebrew University of Jerusalem' and conference='focs' and
    year>=2000 and year<=2020

EXCEPT



        SELECT year,A.name as name
        FROM authors as A NATURAL JOIN (SELECT name as name2, conference as conference, year
        as year, institution as institution, count as count2, adjustedcount
        as adjustedcount2 FROM authors) as T

        WHERE institution = 'Hebrew University of Jerusalem' and conference='focs' and A.count<T.count2 and
    year>=2000 and year<=2020

ORDER BY year,name;
