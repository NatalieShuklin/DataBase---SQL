WITH PublishedPerCountry(countPerCountry,country,region) as
         (SELECT SUM(count) AS countPerCountry,country,region
          FROM institutions NATURAL LEFT OUTER JOIN authors
          GROUP BY country,region)


SELECT region, country, countPerCountry AS totalCount
FROM PublishedPerCountry S
WHERE S.countPerCountry = (SELECT MAX(countPerCountry) 
                           FROM PublishedPerCountry S2
                           WHERE S2.region = S.region)

ORDER BY region, country;