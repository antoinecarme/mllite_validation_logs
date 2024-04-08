WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "diabetes_tiny" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_3" <= 0.018998) THEN CASE WHEN (model_input."X_8" <= 0.046366) THEN CASE WHEN (model_input."X_9" <= -0.061138) THEN CASE WHEN (model_input."X_9" <= -0.069422) THEN CASE WHEN (model_input."X_5" <= -0.017911) THEN 25 ELSE 26 END ELSE 18 END ELSE CASE WHEN (model_input."X_8" <= -0.038815) THEN CASE WHEN (model_input."X_7" <= -0.030453) THEN CASE WHEN (model_input."X_0" <= -0.009147) THEN CASE WHEN (model_input."X_6" <= 0.008142) THEN 27 ELSE 28 END ELSE 20 END ELSE 12 END ELSE CASE WHEN (model_input."X_9" <= 0.052770) THEN CASE WHEN (model_input."X_3" <= -0.046985) THEN 21 ELSE 22 END ELSE 14 END END END ELSE 4 END ELSE CASE WHEN (model_input."X_5" <= 0.058654) THEN CASE WHEN (model_input."X_0" <= -0.021861) THEN 15 ELSE CASE WHEN (model_input."X_8" <= 0.065007) THEN 23 ELSE 24 END END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 139.562500 AS "E"
    UNION ALL
    SELECT 1 AS nid, 102.583336 AS "E"
    UNION ALL
    SELECT 2 AS nid, 250.500000 AS "E"
    UNION ALL
    SELECT 3 AS nid, 91.909088 AS "E"
    UNION ALL
    SELECT 4 AS nid, 220.000000 AS "E"
    UNION ALL
    SELECT 5 AS nid, 268.666656 AS "E"
    UNION ALL
    SELECT 6 AS nid, 196.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 133.000000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 76.500000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 66.199997 AS "E"
    UNION ALL
    SELECT 10 AS nid, 93.666664 AS "E"
    UNION ALL
    SELECT 11 AS nid, 73.666664 AS "E"
    UNION ALL
    SELECT 12 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 100.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 273.500000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 137.500000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 70.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 81.000000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 104.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 23 AS nid, 270.000000 AS "E"
    UNION ALL
    SELECT 24 AS nid, 277.000000 AS "E"
    UNION ALL
    SELECT 25 AS nid, 134.000000 AS "E"
    UNION ALL
    SELECT 26 AS nid, 141.000000 AS "E"
    UNION ALL
    SELECT 27 AS nid, 72.000000 AS "E"
    UNION ALL
    SELECT 28 AS nid, 68.000000 AS "E"
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