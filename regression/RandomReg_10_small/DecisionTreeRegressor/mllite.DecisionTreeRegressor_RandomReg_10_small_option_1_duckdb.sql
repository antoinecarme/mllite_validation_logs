WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "RandomReg_10_small" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_0" <= -0.210799) THEN CASE WHEN (model_input."X_6" <= -0.273292) THEN CASE WHEN (model_input."X_7" <= 0.399224) THEN CASE WHEN (model_input."X_3" <= 0.136441) THEN CASE WHEN (model_input."X_4" <= 0.244611) THEN CASE WHEN (model_input."X_8" <= 0.489605) THEN 45 ELSE 46 END ELSE CASE WHEN (model_input."X_0" <= -0.379400) THEN 47 ELSE 48 END END ELSE CASE WHEN (model_input."X_9" <= -0.254748) THEN 51 ELSE 52 END END ELSE CASE WHEN (model_input."X_3" <= -1.315852) THEN 29 ELSE CASE WHEN (model_input."X_0" <= -1.421821) THEN 49 ELSE 50 END END END ELSE CASE WHEN (model_input."X_0" <= -2.142423) THEN 5 ELSE CASE WHEN (model_input."X_7" <= -1.302731) THEN CASE WHEN (model_input."X_3" <= -0.315428) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_8" <= -1.715707) THEN CASE WHEN (model_input."X_2" <= 0.150967) THEN 31 ELSE 32 END ELSE CASE WHEN (model_input."X_0" <= -0.444341) THEN 27 ELSE 28 END END END END END ELSE CASE WHEN (model_input."X_7" <= 1.782874) THEN CASE WHEN (model_input."X_2" <= 1.963608) THEN CASE WHEN (model_input."X_4" <= -0.230991) THEN CASE WHEN (model_input."X_9" <= 0.482680) THEN CASE WHEN (model_input."X_3" <= -0.731170) THEN 41 ELSE 42 END ELSE CASE WHEN (model_input."X_3" <= -0.431762) THEN 39 ELSE 40 END END ELSE CASE WHEN (model_input."X_6" <= 0.128312) THEN CASE WHEN (model_input."X_7" <= 0.306135) THEN 25 ELSE 26 END ELSE CASE WHEN (model_input."X_7" <= -0.295320) THEN 23 ELSE 24 END END END ELSE 14 END ELSE CASE WHEN (model_input."X_9" <= 0.754860) THEN 19 ELSE 20 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 16.448906 AS "E"
    UNION ALL
    SELECT 1 AS nid, -77.469566 AS "E"
    UNION ALL
    SELECT 2 AS nid, 84.984009 AS "E"
    UNION ALL
    SELECT 3 AS nid, -179.976303 AS "E"
    UNION ALL
    SELECT 4 AS nid, -17.171480 AS "E"
    UNION ALL
    SELECT 5 AS nid, -346.413483 AS "E"
    UNION ALL
    SELECT 6 AS nid, 3.406143 AS "E"
    UNION ALL
    SELECT 7 AS nid, -167.013977 AS "E"
    UNION ALL
    SELECT 8 AS nid, 27.751871 AS "E"
    UNION ALL
    SELECT 9 AS nid, -220.704224 AS "E"
    UNION ALL
    SELECT 10 AS nid, -84.944527 AS "E"
    UNION ALL
    SELECT 11 AS nid, 72.367325 AS "E"
    UNION ALL
    SELECT 12 AS nid, 305.776062 AS "E"
    UNION ALL
    SELECT 13 AS nid, 63.023445 AS "E"
    UNION ALL
    SELECT 14 AS nid, 390.059235 AS "E"
    UNION ALL
    SELECT 15 AS nid, 129.987045 AS "E"
    UNION ALL
    SELECT 16 AS nid, 10.157445 AS "E"
    UNION ALL
    SELECT 17 AS nid, -46.535526 AS "E"
    UNION ALL
    SELECT 18 AS nid, 61.181122 AS "E"
    UNION ALL
    SELECT 19 AS nid, 253.006744 AS "E"
    UNION ALL
    SELECT 20 AS nid, 358.545349 AS "E"
    UNION ALL
    SELECT 21 AS nid, -97.038986 AS "E"
    UNION ALL
    SELECT 22 AS nid, 48.550350 AS "E"
    UNION ALL
    SELECT 23 AS nid, 11.042180 AS "E"
    UNION ALL
    SELECT 24 AS nid, 111.320053 AS "E"
    UNION ALL
    SELECT 25 AS nid, -80.324516 AS "E"
    UNION ALL
    SELECT 26 AS nid, 21.042448 AS "E"
    UNION ALL
    SELECT 27 AS nid, 80.193649 AS "E"
    UNION ALL
    SELECT 28 AS nid, -14.736258 AS "E"
    UNION ALL
    SELECT 29 AS nid, -28.928501 AS "E"
    UNION ALL
    SELECT 30 AS nid, -112.952530 AS "E"
    UNION ALL
    SELECT 31 AS nid, -62.351631 AS "E"
    UNION ALL
    SELECT 32 AS nid, -131.726334 AS "E"
    UNION ALL
    SELECT 33 AS nid, 98.623528 AS "E"
    UNION ALL
    SELECT 34 AS nid, 165.831055 AS "E"
    UNION ALL
    SELECT 35 AS nid, -204.808319 AS "E"
    UNION ALL
    SELECT 36 AS nid, -260.443909 AS "E"
    UNION ALL
    SELECT 37 AS nid, -226.155441 AS "E"
    UNION ALL
    SELECT 38 AS nid, -172.787689 AS "E"
    UNION ALL
    SELECT 39 AS nid, 188.660721 AS "E"
    UNION ALL
    SELECT 40 AS nid, 148.708832 AS "E"
    UNION ALL
    SELECT 41 AS nid, 117.709419 AS "E"
    UNION ALL
    SELECT 42 AS nid, 79.537651 AS "E"
    UNION ALL
    SELECT 43 AS nid, -148.117706 AS "E"
    UNION ALL
    SELECT 44 AS nid, -185.910233 AS "E"
    UNION ALL
    SELECT 45 AS nid, -213.323593 AS "E"
    UNION ALL
    SELECT 46 AS nid, -251.819077 AS "E"
    UNION ALL
    SELECT 47 AS nid, -175.497147 AS "E"
    UNION ALL
    SELECT 48 AS nid, -170.078217 AS "E"
    UNION ALL
    SELECT 49 AS nid, -111.243858 AS "E"
    UNION ALL
    SELECT 50 AS nid, -114.661209 AS "E"
    UNION ALL
    SELECT 51 AS nid, -261.114166 AS "E"
    UNION ALL
    SELECT 52 AS nid, -259.773651 AS "E"
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