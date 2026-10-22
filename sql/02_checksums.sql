SELECT 'source' AS tabla,
       SUM(fare_amount::numeric) AS total,
       SUM(trip_distance::numeric) AS distancia
FROM trips_source
UNION ALL
SELECT 'target',
       SUM(fare_amount::numeric),
       SUM(trip_distance::numeric)
FROM trips_target;
