WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
  FROM "california_housing_tiny" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 35.500000) THEN CASE WHEN (model_input."X_7" <= 4.496550) THEN CASE WHEN (model_input."X_5" <= 792.000000) THEN CASE WHEN (model_input."X_0" <= -121.485001) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_4" <= 407.000000) THEN CASE WHEN (model_input."X_6" <= 354.500000) THEN 19 ELSE CASE WHEN (model_input."X_1" <= 38.459999) THEN 27 ELSE 28 END END ELSE CASE WHEN (model_input."X_4" <= 783.000000) THEN CASE WHEN (model_input."X_0" <= -120.040001) THEN 25 ELSE CASE WHEN (model_input."X_4" <= 453.000000) THEN 29 ELSE 30 END END ELSE 22 END END END ELSE CASE WHEN (model_input."X_4" <= 388.000000) THEN 9 ELSE CASE WHEN (model_input."X_5" <= 1403.000000) THEN 23 ELSE 24 END END END ELSE CASE WHEN (model_input."X_0" <= -122.445000) THEN 5 ELSE CASE WHEN (model_input."X_1" <= 36.904999) THEN 11 ELSE CASE WHEN (model_input."X_7" <= 4.139600) THEN 17 ELSE 18 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 180418.750000 AS "E"
    UNION ALL
    SELECT 1 AS nid, 141350.000000 AS "E"
    UNION ALL
    SELECT 2 AS nid, 297625.000000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 109822.218750 AS "E"
    UNION ALL
    SELECT 4 AS nid, 235933.328125 AS "E"
    UNION ALL
    SELECT 5 AS nid, 246400.000000 AS "E"
    UNION ALL
    SELECT 6 AS nid, 314700.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 162900.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 94657.140625 AS "E"
    UNION ALL
    SELECT 9 AS nid, 198000.000000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 254900.000000 AS "E"
    UNION ALL
    SELECT 11 AS nid, 279200.000000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 332450.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 145000.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 180800.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 75666.664062 AS "E"
    UNION ALL
    SELECT 16 AS nid, 108900.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 346200.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 318700.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 57600.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 84700.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 116200.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 87000.000000 AS "E"
    UNION ALL
    SELECT 23 AS nid, 245400.000000 AS "E"
    UNION ALL
    SELECT 24 AS nid, 264400.000000 AS "E"
    UNION ALL
    SELECT 25 AS nid, 124700.000000 AS "E"
    UNION ALL
    SELECT 26 AS nid, 111950.000000 AS "E"
    UNION ALL
    SELECT 27 AS nid, 88300.000000 AS "E"
    UNION ALL
    SELECT 28 AS nid, 81100.000000 AS "E"
    UNION ALL
    SELECT 29 AS nid, 112700.000000 AS "E"
    UNION ALL
    SELECT 30 AS nid, 111200.000000 AS "E"
  ) AS "Values"
 ),
"DT_Output" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup" AS t1
   LEFT OUTER JOIN
   "DT_node_data" AS t2
   ON t1.node_id = t2.nid
 )
SELECT
   "DT_Output"."index" AS "index",
   "DT_Output"."E" AS "Estimator"
FROM "DT_Output"