WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "diabetes_sampled" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_8" <= -0.002877) THEN CASE WHEN (model_input."X_3" <= 0.037365) THEN CASE WHEN (model_input."X_6" <= 0.046799) THEN CASE WHEN (model_input."X_9" <= -0.019717) THEN CASE WHEN (model_input."X_1" <= 0.003019) THEN CASE WHEN (model_input."X_6" <= 0.026550) THEN 33 ELSE 34 END ELSE CASE WHEN (model_input."X_8" <= -0.037913) THEN 37 ELSE 38 END END ELSE CASE WHEN (model_input."X_5" <= 0.042683) THEN CASE WHEN (model_input."X_5" <= 0.003227) THEN 45 ELSE 46 END ELSE CASE WHEN (model_input."X_2" <= -0.002434) THEN 53 ELSE 54 END END END ELSE CASE WHEN (model_input."X_5" <= -0.012744) THEN CASE WHEN (model_input."X_0" <= 0.048974) THEN CASE WHEN (model_input."X_5" <= -0.020103) THEN 55 ELSE 56 END ELSE 44 END ELSE CASE WHEN (model_input."X_6" <= 0.063367) THEN 57 ELSE 58 END END END ELSE CASE WHEN (model_input."X_9" <= -0.003149) THEN CASE WHEN (model_input."X_4" <= -0.048351) THEN 21 ELSE 22 END ELSE CASE WHEN (model_input."X_7" <= -0.018829) THEN 49 ELSE 50 END END END ELSE CASE WHEN (model_input."X_2" <= 0.054152) THEN CASE WHEN (model_input."X_3" <= -0.024606) THEN CASE WHEN (model_input."X_6" <= -0.017629) THEN CASE WHEN (model_input."X_5" <= 0.008707) THEN 61 ELSE 62 END ELSE CASE WHEN (model_input."X_6" <= 0.022869) THEN 59 ELSE 60 END END ELSE CASE WHEN (model_input."X_8" <= 0.028955) THEN CASE WHEN (model_input."X_7" <= 0.052759) THEN CASE WHEN (model_input."X_2" <= 0.004033) THEN 51 ELSE 52 END ELSE 18 END ELSE CASE WHEN (model_input."X_0" <= -0.000066) THEN 9 ELSE CASE WHEN (model_input."X_6" <= -0.037878) THEN 19 ELSE 20 END END END END ELSE CASE WHEN (model_input."X_4" <= -0.019456) THEN CASE WHEN (model_input."X_9" <= 0.025846) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_5" <= 0.020450) THEN CASE WHEN (model_input."X_4" <= 0.028014) THEN 47 ELSE 48 END ELSE 24 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 143.454544 AS "E"
    UNION ALL
    SELECT 1 AS nid, 100.454544 AS "E"
    UNION ALL
    SELECT 2 AS nid, 207.954544 AS "E"
    UNION ALL
    SELECT 3 AS nid, 176.500000 AS "E"
    UNION ALL
    SELECT 4 AS nid, 291.833344 AS "E"
    UNION ALL
    SELECT 5 AS nid, 104.599998 AS "E"
    UNION ALL
    SELECT 6 AS nid, 209.181824 AS "E"
    UNION ALL
    SELECT 7 AS nid, 266.250000 AS "E"
    UNION ALL
    SELECT 8 AS nid, 176.571426 AS "E"
    UNION ALL
    SELECT 9 AS nid, 122.500000 AS "E"
    UNION ALL
    SELECT 10 AS nid, 198.199997 AS "E"
    UNION ALL
    SELECT 11 AS nid, 333.500000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 271.000000 AS "E"
    UNION ALL
    SELECT 13 AS nid, 89.827583 AS "E"
    UNION ALL
    SELECT 14 AS nid, 177.500000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 239.000000 AS "E"
    UNION ALL
    SELECT 16 AS nid, 116.000000 AS "E"
    UNION ALL
    SELECT 17 AS nid, 281.000000 AS "E"
    UNION ALL
    SELECT 18 AS nid, 222.000000 AS "E"
    UNION ALL
    SELECT 19 AS nid, 150.000000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 210.250000 AS "E"
    UNION ALL
    SELECT 21 AS nid, 219.000000 AS "E"
    UNION ALL
    SELECT 22 AS nid, 259.000000 AS "E"
    UNION ALL
    SELECT 23 AS nid, 282.333344 AS "E"
    UNION ALL
    SELECT 24 AS nid, 237.000000 AS "E"
    UNION ALL
    SELECT 25 AS nid, 127.500000 AS "E"
    UNION ALL
    SELECT 26 AS nid, 89.333336 AS "E"
    UNION ALL
    SELECT 27 AS nid, 100.210526 AS "E"
    UNION ALL
    SELECT 28 AS nid, 70.099998 AS "E"
    UNION ALL
    SELECT 29 AS nid, 110.916664 AS "E"
    UNION ALL
    SELECT 30 AS nid, 81.857140 AS "E"
    UNION ALL
    SELECT 31 AS nid, 133.857147 AS "E"
    UNION ALL
    SELECT 32 AS nid, 78.800003 AS "E"
    UNION ALL
    SELECT 33 AS nid, 146.800003 AS "E"
    UNION ALL
    SELECT 34 AS nid, 101.500000 AS "E"
    UNION ALL
    SELECT 35 AS nid, 64.750000 AS "E"
    UNION ALL
    SELECT 36 AS nid, 104.666664 AS "E"
    UNION ALL
    SELECT 37 AS nid, 66.000000 AS "E"
    UNION ALL
    SELECT 38 AS nid, 98.000000 AS "E"
    UNION ALL
    SELECT 39 AS nid, 346.000000 AS "E"
    UNION ALL
    SELECT 40 AS nid, 321.000000 AS "E"
    UNION ALL
    SELECT 41 AS nid, 62.285713 AS "E"
    UNION ALL
    SELECT 42 AS nid, 88.333336 AS "E"
    UNION ALL
    SELECT 43 AS nid, 57.666668 AS "E"
    UNION ALL
    SELECT 44 AS nid, 90.000000 AS "E"
    UNION ALL
    SELECT 45 AS nid, 55.000000 AS "E"
    UNION ALL
    SELECT 46 AS nid, 74.500000 AS "E"
    UNION ALL
    SELECT 47 AS nid, 276.000000 AS "E"
    UNION ALL
    SELECT 48 AS nid, 295.000000 AS "E"
    UNION ALL
    SELECT 49 AS nid, 108.000000 AS "E"
    UNION ALL
    SELECT 50 AS nid, 124.000000 AS "E"
    UNION ALL
    SELECT 51 AS nid, 292.000000 AS "E"
    UNION ALL
    SELECT 52 AS nid, 275.500000 AS "E"
    UNION ALL
    SELECT 53 AS nid, 109.000000 AS "E"
    UNION ALL
    SELECT 54 AS nid, 96.000000 AS "E"
    UNION ALL
    SELECT 55 AS nid, 62.000000 AS "E"
    UNION ALL
    SELECT 56 AS nid, 49.000000 AS "E"
    UNION ALL
    SELECT 57 AS nid, 97.000000 AS "E"
    UNION ALL
    SELECT 58 AS nid, 84.000000 AS "E"
    UNION ALL
    SELECT 59 AS nid, 86.500000 AS "E"
    UNION ALL
    SELECT 60 AS nid, 95.000000 AS "E"
    UNION ALL
    SELECT 61 AS nid, 131.000000 AS "E"
    UNION ALL
    SELECT 62 AS nid, 124.000000 AS "E"
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