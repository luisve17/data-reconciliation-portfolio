SELECT 'source' AS tabla, COUNT(*) AS filas FROM trips_source
UNION ALL
SELECT 'target', COUNT(*) FROM trips_target;
