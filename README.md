# Data Reconciliation Portfolio

Proyecto de validación de migración de datos: se compara una tabla origen
contra una tabla destino con errores plantados deliberadamente, y se detectan
con consultas SQL de conciliación.

## Dataset
NYC TLC Trip Record Data (Yellow Taxi), 500,000 filas.

## Errores plantados en el destino
- 50 registros borrados
- 20 registros duplicados
- 30 valores de `fare_amount` alterados (+5)
- 15 valores de `trip_distance` en nulo

## Consultas
| Archivo | Qué valida |
|---|---|
| 01_row_counts.sql | Conteo de filas origen vs destino |
| 02_checksums.sql | Sumas de control de columnas numéricas |
| 03_missing_records.sql | Registros que faltan en el destino |
| 04_duplicates.sql | Duplicados por id en el destino |
| 05_nulls.sql | Nulos por columna crítica |
| 06_window_functions.sql | Duplicados con ROW_NUMBER() |
| 07_changed_values.sql | Valores alterados entre origen y destino |

## Resultado
Ver [reports/reconciliation_report.md](reports/reconciliation_report.md).
