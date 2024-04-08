WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman3_tiny" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.386207) THEN CASE WHEN (model_input."X_3" <= 4.702850) THEN CASE WHEN (model_input."X_2" <= 0.288682) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_0" <= 51.530243) THEN CASE WHEN (model_input."X_3" <= 10.289057) THEN CASE WHEN (model_input."X_1" <= 619.029846) THEN 17 ELSE 18 END ELSE 8 END ELSE 6 END END ELSE CASE WHEN (model_input."X_1" <= 432.535583) THEN CASE WHEN (model_input."X_0" <= 48.679047) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_0" <= 61.392754) THEN CASE WHEN (model_input."X_0" <= 37.003426) THEN CASE WHEN (model_input."X_1" <= 877.971680) THEN 23 ELSE CASE WHEN (model_input."X_0" <= 10.944258) THEN 25 ELSE CASE WHEN (model_input."X_3" <= 6.772219) THEN 29 ELSE 30 END END END ELSE CASE WHEN (model_input."X_1" <= 1081.708740) THEN 27 ELSE 28 END END ELSE CASE WHEN (model_input."X_0" <= 81.116760) THEN 19 ELSE 20 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.326974 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.099828 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.463262 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.957208 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.171138 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.224860 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.301200 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.288892 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.506855 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.007753 AS "E"
    UNION ALL
    SELECT 14 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.531517 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.432869 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.405051 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.548623 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.497305 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.554430 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.550913 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.499363 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.549644 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.552182 AS "E"
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