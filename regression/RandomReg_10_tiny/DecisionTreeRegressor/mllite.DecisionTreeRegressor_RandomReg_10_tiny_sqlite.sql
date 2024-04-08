WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "RandomReg_10_tiny" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_9" <= -1.583338) THEN 1 ELSE CASE WHEN (model_input."X_7" <= -1.543582) THEN CASE WHEN (model_input."X_9" <= -0.950757) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_0" <= 1.941732) THEN CASE WHEN (model_input."X_5" <= -1.549785) THEN CASE WHEN (model_input."X_5" <= -1.846437) THEN CASE WHEN (model_input."X_9" <= 0.068221) THEN 23 ELSE 24 END ELSE 14 END ELSE CASE WHEN (model_input."X_7" <= -0.005867) THEN CASE WHEN (model_input."X_6" <= -0.400839) THEN 17 ELSE CASE WHEN (model_input."X_4" <= 0.907366) THEN CASE WHEN (model_input."X_9" <= -1.106098) THEN 27 ELSE 28 END ELSE 26 END END ELSE CASE WHEN (model_input."X_9" <= 0.116520) THEN CASE WHEN (model_input."X_7" <= 0.977636) THEN CASE WHEN (model_input."X_0" <= -0.487180) THEN 29 ELSE 30 END ELSE 20 END ELSE CASE WHEN (model_input."X_0" <= 0.249905) THEN 21 ELSE 22 END END END END ELSE 6 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 31.561600 AS "E"
    UNION ALL
    SELECT 1 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 2 AS nid, 7.661760 AS "E"
    UNION ALL
    SELECT 3 AS nid, -167.013977 AS "E"
    UNION ALL
    SELECT 4 AS nid, 34.534946 AS "E"
    UNION ALL
    SELECT 5 AS nid, 16.328964 AS "E"
    UNION ALL
    SELECT 6 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 7 AS nid, 76.303238 AS "E"
    UNION ALL
    SELECT 8 AS nid, -3.662465 AS "E"
    UNION ALL
    SELECT 9 AS nid, -33.274513 AS "E"
    UNION ALL
    SELECT 10 AS nid, 20.027176 AS "E"
    UNION ALL
    SELECT 11 AS nid, 43.113659 AS "E"
    UNION ALL
    SELECT 12 AS nid, -14.602547 AS "E"
    UNION ALL
    SELECT 13 AS nid, 61.085030 AS "E"
    UNION ALL
    SELECT 14 AS nid, 106.739655 AS "E"
    UNION ALL
    SELECT 15 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 16 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 17 AS nid, -61.438679 AS "E"
    UNION ALL
    SELECT 18 AS nid, -23.886459 AS "E"
    UNION ALL
    SELECT 19 AS nid, 32.054405 AS "E"
    UNION ALL
    SELECT 20 AS nid, 65.232162 AS "E"
    UNION ALL
    SELECT 21 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 22 AS nid, -0.276592 AS "E"
    UNION ALL
    SELECT 23 AS nid, 72.851982 AS "E"
    UNION ALL
    SELECT 24 AS nid, 49.318077 AS "E"
    UNION ALL
    SELECT 25 AS nid, -30.179905 AS "E"
    UNION ALL
    SELECT 26 AS nid, -11.299567 AS "E"
    UNION ALL
    SELECT 27 AS nid, -27.190422 AS "E"
    UNION ALL
    SELECT 28 AS nid, -33.169388 AS "E"
    UNION ALL
    SELECT 29 AS nid, 33.841240 AS "E"
    UNION ALL
    SELECT 30 AS nid, 30.267570 AS "E"
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