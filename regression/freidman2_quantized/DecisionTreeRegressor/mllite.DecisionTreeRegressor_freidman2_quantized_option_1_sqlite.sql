WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman2_quantized" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_1" <= 4.500000) THEN CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_1" <= 2.500000) THEN 61 ELSE 62 END ELSE CASE WHEN (model_input."X_1" <= 2.500000) THEN CASE WHEN (model_input."X_1" <= 1.500000) THEN CASE WHEN (model_input."X_1" <= 0.500000) THEN 53 ELSE CASE WHEN (model_input."X_2" <= 6.500000) THEN 55 ELSE 56 END END ELSE CASE WHEN (model_input."X_3" <= 2.500000) THEN CASE WHEN (model_input."X_2" <= 5.500000) THEN 51 ELSE 52 END ELSE CASE WHEN (model_input."X_3" <= 4.500000) THEN 43 ELSE 44 END END END ELSE CASE WHEN (model_input."X_2" <= 7.500000) THEN 19 ELSE CASE WHEN (model_input."X_0" <= 8.000000) THEN CASE WHEN (model_input."X_3" <= 6.000000) THEN 57 ELSE 58 END ELSE CASE WHEN (model_input."X_3" <= 5.500000) THEN 47 ELSE 48 END END END END END ELSE CASE WHEN (model_input."X_2" <= 4.500000) THEN CASE WHEN (model_input."X_2" <= 1.500000) THEN CASE WHEN (model_input."X_2" <= 0.500000) THEN 37 ELSE 38 END ELSE CASE WHEN (model_input."X_1" <= 7.500000) THEN CASE WHEN (model_input."X_2" <= 3.500000) THEN 31 ELSE CASE WHEN (model_input."X_1" <= 6.500000) THEN 33 ELSE 34 END END ELSE CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_3" <= 0.500000) THEN 49 ELSE 50 END ELSE 30 END END END ELSE CASE WHEN (model_input."X_1" <= 7.500000) THEN CASE WHEN (model_input."X_3" <= 6.000000) THEN CASE WHEN (model_input."X_2" <= 8.000000) THEN 35 ELSE 36 END ELSE CASE WHEN (model_input."X_0" <= 6.500000) THEN 45 ELSE 46 END END ELSE CASE WHEN (model_input."X_2" <= 8.500000) THEN CASE WHEN (model_input."X_2" <= 6.500000) THEN CASE WHEN (model_input."X_1" <= 8.500000) THEN 25 ELSE 26 END ELSE CASE WHEN (model_input."X_2" <= 7.500000) THEN 59 ELSE 60 END END ELSE CASE WHEN (model_input."X_3" <= 2.500000) THEN 13 ELSE 14 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 441.435455 AS "E"
    UNION ALL
    SELECT 1 AS nid, 249.000427 AS "E"
    UNION ALL
    SELECT 2 AS nid, 633.870178 AS "E"
    UNION ALL
    SELECT 3 AS nid, 371.088440 AS "E"
    UNION ALL
    SELECT 4 AS nid, 942.353088 AS "E"
    UNION ALL
    SELECT 5 AS nid, 740.801819 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1204.369873 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1066.676392 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1525.654663 AS "E"
    UNION ALL
    SELECT 9 AS nid, 134.555862 AS "E"
    UNION ALL
    SELECT 10 AS nid, 470.681122 AS "E"
    UNION ALL
    SELECT 11 AS nid, 960.343445 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1208.453491 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1374.632690 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1601.165527 AS "E"
    UNION ALL
    SELECT 15 AS nid, 114.036491 AS "E"
    UNION ALL
    SELECT 16 AS nid, 331.720276 AS "E"
    UNION ALL
    SELECT 17 AS nid, 242.206589 AS "E"
    UNION ALL
    SELECT 18 AS nid, 473.450287 AS "E"
    UNION ALL
    SELECT 19 AS nid, 373.291565 AS "E"
    UNION ALL
    SELECT 20 AS nid, 613.672485 AS "E"
    UNION ALL
    SELECT 21 AS nid, 671.331360 AS "E"
    UNION ALL
    SELECT 22 AS nid, 527.184021 AS "E"
    UNION ALL
    SELECT 23 AS nid, 784.215942 AS "E"
    UNION ALL
    SELECT 24 AS nid, 643.120239 AS "E"
    UNION ALL
    SELECT 25 AS nid, 900.404846 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1020.282043 AS "E"
    UNION ALL
    SELECT 27 AS nid, 414.266602 AS "E"
    UNION ALL
    SELECT 28 AS nid, 533.363892 AS "E"
    UNION ALL
    SELECT 29 AS nid, 496.724945 AS "E"
    UNION ALL
    SELECT 30 AS nid, 661.600220 AS "E"
    UNION ALL
    SELECT 31 AS nid, 364.415863 AS "E"
    UNION ALL
    SELECT 32 AS nid, 489.042633 AS "E"
    UNION ALL
    SELECT 33 AS nid, 455.307587 AS "E"
    UNION ALL
    SELECT 34 AS nid, 590.247803 AS "E"
    UNION ALL
    SELECT 35 AS nid, 753.330627 AS "E"
    UNION ALL
    SELECT 36 AS nid, 892.314575 AS "E"
    UNION ALL
    SELECT 37 AS nid, 101.316460 AS "E"
    UNION ALL
    SELECT 38 AS nid, 234.274078 AS "E"
    UNION ALL
    SELECT 39 AS nid, 205.840546 AS "E"
    UNION ALL
    SELECT 40 AS nid, 320.999756 AS "E"
    UNION ALL
    SELECT 41 AS nid, 264.085358 AS "E"
    UNION ALL
    SELECT 42 AS nid, 434.828552 AS "E"
    UNION ALL
    SELECT 43 AS nid, 385.108765 AS "E"
    UNION ALL
    SELECT 44 AS nid, 484.548340 AS "E"
    UNION ALL
    SELECT 45 AS nid, 615.836182 AS "E"
    UNION ALL
    SELECT 46 AS nid, 724.972351 AS "E"
    UNION ALL
    SELECT 47 AS nid, 481.196167 AS "E"
    UNION ALL
    SELECT 48 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 49 AS nid, 564.339233 AS "E"
    UNION ALL
    SELECT 50 AS nid, 469.679199 AS "E"
    UNION ALL
    SELECT 51 AS nid, 241.485184 AS "E"
    UNION ALL
    SELECT 52 AS nid, 331.885864 AS "E"
    UNION ALL
    SELECT 53 AS nid, 164.355225 AS "E"
    UNION ALL
    SELECT 54 AS nid, 241.399384 AS "E"
    UNION ALL
    SELECT 55 AS nid, 163.000275 AS "E"
    UNION ALL
    SELECT 56 AS nid, 272.759003 AS "E"
    UNION ALL
    SELECT 57 AS nid, 697.837158 AS "E"
    UNION ALL
    SELECT 58 AS nid, 618.319824 AS "E"
    UNION ALL
    SELECT 59 AS nid, 1186.468018 AS "E"
    UNION ALL
    SELECT 60 AS nid, 1252.424316 AS "E"
    UNION ALL
    SELECT 61 AS nid, 93.262383 AS "E"
    UNION ALL
    SELECT 62 AS nid, 149.649246 AS "E"
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