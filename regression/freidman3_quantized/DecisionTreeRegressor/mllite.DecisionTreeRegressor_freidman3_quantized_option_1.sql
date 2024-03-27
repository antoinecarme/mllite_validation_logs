WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.500000) THEN CASE WHEN (model_input."X_0" <= 6.500000) THEN CASE WHEN (model_input."X_0" <= 5.000000) THEN CASE WHEN (model_input."X_0" <= 2.000000) THEN CASE WHEN (model_input."X_1" <= 1.500000) THEN 41 ELSE 42 END ELSE CASE WHEN (model_input."X_0" <= 3.500000) THEN 27 ELSE 28 END END ELSE 10 END ELSE CASE WHEN (model_input."X_1" <= 7.000000) THEN CASE WHEN (model_input."X_3" <= 1.000000) THEN CASE WHEN (model_input."X_1" <= 3.500000) THEN 13 ELSE 14 END ELSE 8 END ELSE 6 END END ELSE CASE WHEN (model_input."X_0" <= 9.500000) THEN CASE WHEN (model_input."X_1" <= 4.500000) THEN CASE WHEN (model_input."X_0" <= 2.500000) THEN CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_0" <= 1.000000) THEN 31 ELSE 32 END ELSE CASE WHEN (model_input."X_0" <= 1.500000) THEN 37 ELSE 38 END END ELSE CASE WHEN (model_input."X_2" <= 3.500000) THEN CASE WHEN (model_input."X_1" <= 2.500000) THEN 21 ELSE 22 END ELSE CASE WHEN (model_input."X_1" <= 1.500000) THEN 23 ELSE 24 END END END ELSE CASE WHEN (model_input."X_0" <= 5.500000) THEN CASE WHEN (model_input."X_0" <= 2.500000) THEN CASE WHEN (model_input."X_2" <= 2.500000) THEN 47 ELSE 48 END ELSE CASE WHEN (model_input."X_2" <= 4.500000) THEN 45 ELSE 46 END END ELSE CASE WHEN (model_input."X_2" <= 1.500000) THEN 35 ELSE CASE WHEN (model_input."X_2" <= 4.500000) THEN 39 ELSE 40 END END END END ELSE 12 END END AS node_id
  FROM model_input
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.340354 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.815609 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.392252 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.156844 AS "E"
    UNION ALL
    SELECT 4 AS nid, 0.389066 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.224450 AS "E"
    UNION ALL
    SELECT 6 AS nid, 0.882915 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.111990 AS "E"
    UNION ALL
    SELECT 8 AS nid, 0.449370 AS "E"
    UNION ALL
    SELECT 9 AS nid, 1.232371 AS "E"
    UNION ALL
    SELECT 10 AS nid, 0.854736 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.402677 AS "E"
    UNION ALL
    SELECT 12 AS nid, 0.453986 AS "E"
    UNION ALL
    SELECT 13 AS nid, 0.202636 AS "E"
    UNION ALL
    SELECT 14 AS nid, 0.021344 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.317872 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.491337 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.479970 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.260661 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.106551 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.334365 AS "E"
    UNION ALL
    SELECT 21 AS nid, 0.972405 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.218340 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.245041 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.403077 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.297325 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.167416 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.262652 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.398583 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.520664 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.444544 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.260701 AS "E"
    UNION ALL
    SELECT 33 AS nid, 1.521465 AS "E"
    UNION ALL
    SELECT 34 AS nid, 1.438612 AS "E"
    UNION ALL
    SELECT 35 AS nid, 1.248302 AS "E"
    UNION ALL
    SELECT 36 AS nid, 1.451300 AS "E"
    UNION ALL
    SELECT 37 AS nid, 1.542126 AS "E"
    UNION ALL
    SELECT 38 AS nid, 1.456278 AS "E"
    UNION ALL
    SELECT 39 AS nid, 1.406654 AS "E"
    UNION ALL
    SELECT 40 AS nid, 1.481063 AS "E"
    UNION ALL
    SELECT 41 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 42 AS nid, 1.324506 AS "E"
    UNION ALL
    SELECT 43 AS nid, 1.538347 AS "E"
    UNION ALL
    SELECT 44 AS nid, 1.501987 AS "E"
    UNION ALL
    SELECT 45 AS nid, 1.462696 AS "E"
    UNION ALL
    SELECT 46 AS nid, 1.519449 AS "E"
    UNION ALL
    SELECT 47 AS nid, 1.510090 AS "E"
    UNION ALL
    SELECT 48 AS nid, 1.548622 AS "E"
  ) AS "Values"
 ),
"DT_output" AS 
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