SELECT id, COUNT(*) AS veces
FROM trips_target
GROUP BY id
HAVING COUNT(*) > 1;
