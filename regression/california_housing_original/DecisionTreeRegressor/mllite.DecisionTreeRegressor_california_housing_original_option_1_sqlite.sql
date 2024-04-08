WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
  FROM "california_housing_original" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_7" <= 5.035150) THEN CASE WHEN (model_input."X_7" <= 3.074300) THEN 9 ELSE CASE WHEN (model_input."X_2" <= 38.500000) THEN 43 ELSE CASE WHEN (model_input."X_0" <= -122.365005) THEN CASE WHEN (model_input."X_1" <= 38.150002) THEN CASE WHEN (model_input."X_1" <= 37.764999) THEN 49 ELSE 50 END ELSE CASE WHEN (model_input."X_0" <= -122.880005) THEN 51 ELSE 52 END END ELSE CASE WHEN (model_input."X_7" <= 4.071700) THEN CASE WHEN (model_input."X_4" <= 470.500000) THEN 57 ELSE 58 END ELSE CASE WHEN (model_input."X_1" <= 33.764999) THEN 55 ELSE 56 END END END END END ELSE CASE WHEN (model_input."X_7" <= 6.819550) THEN CASE WHEN (model_input."X_2" <= 36.500000) THEN CASE WHEN (model_input."X_7" <= 5.813750) THEN 29 ELSE CASE WHEN (model_input."X_2" <= 26.500000) THEN 31 ELSE CASE WHEN (model_input."X_3" <= 1617.500000) THEN 59 ELSE 60 END END END ELSE CASE WHEN (model_input."X_7" <= 5.582900) THEN CASE WHEN (model_input."X_6" <= 218.500000) THEN CASE WHEN (model_input."X_0" <= -122.214996) THEN 21 ELSE 22 END ELSE CASE WHEN (model_input."X_1" <= 33.699997) THEN 33 ELSE 34 END END ELSE CASE WHEN (model_input."X_4" <= 45.500000) THEN CASE WHEN (model_input."X_0" <= -121.600006) THEN 25 ELSE 26 END ELSE 24 END END END ELSE CASE WHEN (model_input."X_7" <= 7.815150) THEN CASE WHEN (model_input."X_2" <= 26.500000) THEN 7 ELSE CASE WHEN (model_input."X_6" <= 79.500000) THEN CASE WHEN (model_input."X_7" <= 7.594050) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_1" <= 37.650002) THEN 27 ELSE 28 END END END ELSE CASE WHEN (model_input."X_7" <= 9.069250) THEN CASE WHEN (model_input."X_2" <= 28.500000) THEN CASE WHEN (model_input."X_0" <= -118.035004) THEN 61 ELSE 62 END ELSE 38 END ELSE CASE WHEN (model_input."X_6" <= 27.500000) THEN CASE WHEN (model_input."X_0" <= -119.305000) THEN 41 ELSE 42 END ELSE 40 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 206854.968750 AS "E"
    UNION ALL
    SELECT 1 AS nid, 173486.843750 AS "E"
    UNION ALL
    SELECT 2 AS nid, 330551.656250 AS "E"
    UNION ALL
    SELECT 3 AS nid, 290551.343750 AS "E"
    UNION ALL
    SELECT 4 AS nid, 421643.562500 AS "E"
    UNION ALL
    SELECT 5 AS nid, 372759.312500 AS "E"
    UNION ALL
    SELECT 6 AS nid, 456829.000000 AS "E"
    UNION ALL
    SELECT 7 AS nid, 341450.312500 AS "E"
    UNION ALL
    SELECT 8 AS nid, 420073.625000 AS "E"
    UNION ALL
    SELECT 9 AS nid, 135692.890625 AS "E"
    UNION ALL
    SELECT 10 AS nid, 208873.234375 AS "E"
    UNION ALL
    SELECT 11 AS nid, 256162.500000 AS "E"
    UNION ALL
    SELECT 12 AS nid, 426172.562500 AS "E"
    UNION ALL
    SELECT 13 AS nid, 197940.000000 AS "E"
    UNION ALL
    SELECT 14 AS nid, 353200.000000 AS "E"
    UNION ALL
    SELECT 15 AS nid, 277147.187500 AS "E"
    UNION ALL
    SELECT 16 AS nid, 358665.937500 AS "E"
    UNION ALL
    SELECT 17 AS nid, 326803.687500 AS "E"
    UNION ALL
    SELECT 18 AS nid, 389404.437500 AS "E"
    UNION ALL
    SELECT 19 AS nid, 250902.625000 AS "E"
    UNION ALL
    SELECT 20 AS nid, 340670.218750 AS "E"
    UNION ALL
    SELECT 21 AS nid, 322090.906250 AS "E"
    UNION ALL
    SELECT 22 AS nid, 221900.000000 AS "E"
    UNION ALL
    SELECT 23 AS nid, 163780.000000 AS "E"
    UNION ALL
    SELECT 24 AS nid, 393916.812500 AS "E"
    UNION ALL
    SELECT 25 AS nid, 90200.000000 AS "E"
    UNION ALL
    SELECT 26 AS nid, 212833.328125 AS "E"
    UNION ALL
    SELECT 27 AS nid, 440163.156250 AS "E"
    UNION ALL
    SELECT 28 AS nid, 376163.906250 AS "E"
    UNION ALL
    SELECT 29 AS nid, 255652.765625 AS "E"
    UNION ALL
    SELECT 30 AS nid, 307085.093750 AS "E"
    UNION ALL
    SELECT 31 AS nid, 291171.656250 AS "E"
    UNION ALL
    SELECT 32 AS nid, 352078.062500 AS "E"
    UNION ALL
    SELECT 33 AS nid, 446936.812500 AS "E"
    UNION ALL
    SELECT 34 AS nid, 334736.562500 AS "E"
    UNION ALL
    SELECT 35 AS nid, 431369.718750 AS "E"
    UNION ALL
    SELECT 36 AS nid, 481011.937500 AS "E"
    UNION ALL
    SELECT 37 AS nid, 399102.312500 AS "E"
    UNION ALL
    SELECT 38 AS nid, 476503.281250 AS "E"
    UNION ALL
    SELECT 39 AS nid, 302635.531250 AS "E"
    UNION ALL
    SELECT 40 AS nid, 488950.062500 AS "E"
    UNION ALL
    SELECT 41 AS nid, 349023.375000 AS "E"
    UNION ALL
    SELECT 42 AS nid, 151875.000000 AS "E"
    UNION ALL
    SELECT 43 AS nid, 196374.609375 AS "E"
    UNION ALL
    SELECT 44 AS nid, 256231.703125 AS "E"
    UNION ALL
    SELECT 45 AS nid, 325547.000000 AS "E"
    UNION ALL
    SELECT 46 AS nid, 235138.046875 AS "E"
    UNION ALL
    SELECT 47 AS nid, 339642.750000 AS "E"
    UNION ALL
    SELECT 48 AS nid, 174922.859375 AS "E"
    UNION ALL
    SELECT 49 AS nid, 293431.000000 AS "E"
    UNION ALL
    SELECT 50 AS nid, 412625.562500 AS "E"
    UNION ALL
    SELECT 51 AS nid, 98345.453125 AS "E"
    UNION ALL
    SELECT 52 AS nid, 210020.828125 AS "E"
    UNION ALL
    SELECT 53 AS nid, 212398.671875 AS "E"
    UNION ALL
    SELECT 54 AS nid, 280012.593750 AS "E"
    UNION ALL
    SELECT 55 AS nid, 377969.875000 AS "E"
    UNION ALL
    SELECT 56 AS nid, 272297.656250 AS "E"
    UNION ALL
    SELECT 57 AS nid, 197511.421875 AS "E"
    UNION ALL
    SELECT 58 AS nid, 256795.109375 AS "E"
    UNION ALL
    SELECT 59 AS nid, 310242.031250 AS "E"
    UNION ALL
    SELECT 60 AS nid, 365889.906250 AS "E"
    UNION ALL
    SELECT 61 AS nid, 418087.031250 AS "E"
    UNION ALL
    SELECT 62 AS nid, 371981.375000 AS "E"
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