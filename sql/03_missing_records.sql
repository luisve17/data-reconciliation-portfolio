SELECT s.id
FROM trips_source s
LEFT JOIN trips_target t ON s.id = t.id
WHERE t.id IS NULL;
