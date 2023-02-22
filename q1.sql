SELECT region, count(DISTINCT country) AS countryCount
FROM institutions
GROUP BY region
ORDER BY region;