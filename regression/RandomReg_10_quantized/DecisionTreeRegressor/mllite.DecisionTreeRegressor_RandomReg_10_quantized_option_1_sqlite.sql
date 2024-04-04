WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_0" <= 6.500000) THEN CASE WHEN (model_input."X_6" <= 5.500000) THEN CASE WHEN (model_input."X_0" <= 1.500000) THEN CASE WHEN (model_input."X_2" <= 6.500000) THEN CASE WHEN (model_input."X_6" <= 1.500000) THEN CASE WHEN (model_input."X_5" <= 8.500000) THEN 35 ELSE 36 END ELSE 34 END ELSE 32 END ELSE CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_6" <= 1.500000) THEN 41 ELSE 42 END ELSE 40 END END ELSE CASE WHEN (model_input."X_2" <= 4.500000) THEN CASE WHEN (model_input."X_1" <= 6.500000) THEN CASE WHEN (model_input."X_0" <= 3.500000) THEN 57 ELSE CASE WHEN (model_input."X_2" <= 0.500000) THEN 59 ELSE 60 END END ELSE CASE WHEN (model_input."X_7" <= 7.500000) THEN 43 ELSE 44 END END ELSE CASE WHEN (model_input."X_2" <= 8.500000) THEN 21 ELSE CASE WHEN (model_input."X_1" <= 3.000000) THEN CASE WHEN (model_input."X_9" <= 1.500000) THEN 27 ELSE 28 END ELSE CASE WHEN (model_input."X_8" <= 8.500000) THEN 25 ELSE 26 END END END END END ELSE CASE WHEN (model_input."X_6" <= 3.500000) THEN CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_1" <= 2.500000) THEN CASE WHEN (model_input."X_7" <= 6.500000) THEN 13 ELSE CASE WHEN (model_input."X_6" <= 0.500000) THEN 17 ELSE 18 END END ELSE 12 END ELSE 10 END ELSE CASE WHEN (model_input."X_2" <= 2.500000) THEN CASE WHEN (model_input."X_2" <= 0.500000) THEN CASE WHEN (model_input."X_5" <= 2.500000) THEN 53 ELSE CASE WHEN (model_input."X_5" <= 6.000000) THEN 55 ELSE 56 END END ELSE 52 END ELSE CASE WHEN (model_input."X_8" <= 4.500000) THEN CASE WHEN (model_input."X_2" <= 6.500000) THEN CASE WHEN (model_input."X_1" <= 6.500000) THEN 49 ELSE 50 END ELSE CASE WHEN (model_input."X_3" <= 4.500000) THEN 47 ELSE 48 END END ELSE CASE WHEN (model_input."X_7" <= 6.500000) THEN 61 ELSE 62 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 4.245648 AS "E"
    UNION ALL
    SELECT 1 AS nid, -43.027275 AS "E"
    UNION ALL
    SELECT 2 AS nid, 113.125893 AS "E"
    UNION ALL
    SELECT 3 AS nid, -99.919235 AS "E"
    UNION ALL
    SELECT 4 AS nid, 36.392414 AS "E"
    UNION ALL
    SELECT 5 AS nid, -21.184757 AS "E"
    UNION ALL
    SELECT 6 AS nid, 99.646217 AS "E"
    UNION ALL
    SELECT 7 AS nid, 44.917664 AS "E"
    UNION ALL
    SELECT 8 AS nid, 165.057190 AS "E"
    UNION ALL
    SELECT 9 AS nid, -32.414776 AS "E"
    UNION ALL
    SELECT 10 AS nid, 92.435196 AS "E"
    UNION ALL
    SELECT 11 AS nid, -133.991119 AS "E"
    UNION ALL
    SELECT 12 AS nid, 18.373396 AS "E"
    UNION ALL
    SELECT 13 AS nid, -178.566513 AS "E"
    UNION ALL
    SELECT 14 AS nid, -52.269562 AS "E"
    UNION ALL
    SELECT 15 AS nid, 79.095116 AS "E"
    UNION ALL
    SELECT 16 AS nid, 203.105972 AS "E"
    UNION ALL
    SELECT 17 AS nid, -124.335419 AS "E"
    UNION ALL
    SELECT 18 AS nid, -16.236637 AS "E"
    UNION ALL
    SELECT 19 AS nid, -57.671345 AS "E"
    UNION ALL
    SELECT 20 AS nid, 47.734344 AS "E"
    UNION ALL
    SELECT 21 AS nid, 78.821114 AS "E"
    UNION ALL
    SELECT 22 AS nid, 219.638412 AS "E"
    UNION ALL
    SELECT 23 AS nid, 113.485741 AS "E"
    UNION ALL
    SELECT 24 AS nid, 299.252930 AS "E"
    UNION ALL
    SELECT 25 AS nid, 267.067078 AS "E"
    UNION ALL
    SELECT 26 AS nid, 460.182129 AS "E"
    UNION ALL
    SELECT 27 AS nid, 291.887360 AS "E"
    UNION ALL
    SELECT 28 AS nid, 91.185547 AS "E"
    UNION ALL
    SELECT 29 AS nid, -173.703140 AS "E"
    UNION ALL
    SELECT 30 AS nid, -67.126472 AS "E"
    UNION ALL
    SELECT 31 AS nid, -226.610901 AS "E"
    UNION ALL
    SELECT 32 AS nid, -82.521652 AS "E"
    UNION ALL
    SELECT 33 AS nid, -318.731079 AS "E"
    UNION ALL
    SELECT 34 AS nid, -190.080536 AS "E"
    UNION ALL
    SELECT 35 AS nid, -331.573761 AS "E"
    UNION ALL
    SELECT 36 AS nid, -36.191864 AS "E"
    UNION ALL
    SELECT 37 AS nid, 154.107956 AS "E"
    UNION ALL
    SELECT 38 AS nid, 252.103928 AS "E"
    UNION ALL
    SELECT 39 AS nid, -126.789604 AS "E"
    UNION ALL
    SELECT 40 AS nid, -27.465996 AS "E"
    UNION ALL
    SELECT 41 AS nid, -197.018158 AS "E"
    UNION ALL
    SELECT 42 AS nid, -90.751289 AS "E"
    UNION ALL
    SELECT 43 AS nid, 18.190111 AS "E"
    UNION ALL
    SELECT 44 AS nid, 124.549347 AS "E"
    UNION ALL
    SELECT 45 AS nid, 114.550377 AS "E"
    UNION ALL
    SELECT 46 AS nid, 211.070847 AS "E"
    UNION ALL
    SELECT 47 AS nid, 169.998413 AS "E"
    UNION ALL
    SELECT 48 AS nid, 284.088470 AS "E"
    UNION ALL
    SELECT 49 AS nid, 77.364822 AS "E"
    UNION ALL
    SELECT 50 AS nid, 180.340195 AS "E"
    UNION ALL
    SELECT 51 AS nid, -9.622414 AS "E"
    UNION ALL
    SELECT 52 AS nid, 104.443001 AS "E"
    UNION ALL
    SELECT 53 AS nid, -97.672241 AS "E"
    UNION ALL
    SELECT 54 AS nid, 34.402504 AS "E"
    UNION ALL
    SELECT 55 AS nid, 3.021622 AS "E"
    UNION ALL
    SELECT 56 AS nid, 128.545135 AS "E"
    UNION ALL
    SELECT 57 AS nid, -96.770668 AS "E"
    UNION ALL
    SELECT 58 AS nid, -1.815137 AS "E"
    UNION ALL
    SELECT 59 AS nid, -118.183037 AS "E"
    UNION ALL
    SELECT 60 AS nid, 21.458447 AS "E"
    UNION ALL
    SELECT 61 AS nid, 222.377869 AS "E"
    UNION ALL
    SELECT 62 AS nid, 323.116241 AS "E"
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