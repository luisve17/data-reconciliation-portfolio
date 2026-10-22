SELECT 'source' AS tabla,
       COUNT(*) FILTER (WHERE fare_amount IS NULL) AS fare_nulos,
       COUNT(*) FILTER (WHERE trip_distance IS NULL) AS distancia_nulos
FROM trips_source
UNION ALL
SELECT 'target',
       COUNT(*) FILTER (WHERE fare_amount IS NULL),
       COUNT(*) FILTER (WHERE trip_distance IS NULL)
FROM trips_target;
