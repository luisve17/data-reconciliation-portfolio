SELECT s.id,
       s.fare_amount AS fare_source,
       t.fare_amount AS fare_target,
       ROUND((t.fare_amount::numeric - s.fare_amount::numeric), 2) AS diferencia
FROM trips_source s
JOIN trips_target t ON s.id = t.id
WHERE s.fare_amount IS DISTINCT FROM t.fare_amount
GROUP BY s.id, s.fare_amount, t.fare_amount
ORDER BY s.id;
