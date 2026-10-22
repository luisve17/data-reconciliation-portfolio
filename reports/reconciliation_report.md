# Reporte de conciliación: trips_source vs trips_target

## Resultado general
**Estado: NO APROBADO.** Se detectaron diferencias entre origen y destino.

## Hallazgos
| # | Tipo de defecto | Registros | Consulta |
|---|---|---|---|
| 1 | Registros faltantes en destino | 50 | 03_missing_records.sql |
| 2 | Registros duplicados en destino | 20 | 04_duplicates.sql, 06_window_functions.sql |
| 3 | Valores alterados en fare_amount (+5.00) | 30 | 07_changed_values.sql |
| 4 | Nulos nuevos en trip_distance | 15 | 05_nulls.sql |

## Conteo de filas
- Origen: 500,000
- Destino: 499,970 (500,000 - 50 + 20)

## Observación técnica
Las columnas `fare_amount` y `trip_distance` son de tipo `real` (precisión simple).
Al restar valores aparecen diferencias como 5.000001 o 4.9999995. Para evitar
falsos positivos, las comparaciones y sumas se hacen con `::numeric` y `ROUND`.

## Recomendación
No aprobar la migración hasta corregir los cuatro defectos y repetir la conciliación.
