SELECT *
FROM (
  SELECT t.*,
         ROW_NUMBER() OVER (PARTITION BY id ORDER BY id) AS rn
  FROM trips_target t
) x
WHERE rn > 1;
