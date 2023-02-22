SELECT region, CAST(count(DISTINCT institution) AS float)/CAST(count(DISTINCT country) AS  float) AS insAvg
FROM institutions
GROUP BY region
ORDER BY region;