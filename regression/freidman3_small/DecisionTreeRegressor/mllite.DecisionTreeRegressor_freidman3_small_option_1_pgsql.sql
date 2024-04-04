WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.046038) THEN CASE WHEN (model_input."X_2" <= 0.037129) THEN CASE WHEN (model_input."X_2" <= 0.018615) THEN 9 ELSE 10 END ELSE 4 END ELSE CASE WHEN (model_input."X_1" <= 187.384659) THEN CASE WHEN (model_input."X_0" <= 71.489639) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_2" <= 0.260938) THEN CASE WHEN (model_input."X_0" <= 16.442682) THEN CASE WHEN (model_input."X_0" <= 14.603495) THEN CASE WHEN (model_input."X_1" <= 903.066650) THEN 33 ELSE 34 END ELSE 24 END ELSE CASE WHEN (model_input."X_0" <= 51.530243) THEN CASE WHEN (model_input."X_3" <= 10.289057) THEN 21 ELSE 22 END ELSE CASE WHEN (model_input."X_0" <= 79.828445) THEN 19 ELSE 20 END END END ELSE CASE WHEN (model_input."X_1" <= 340.413940) THEN CASE WHEN (model_input."X_0" <= 44.843964) THEN 29 ELSE CASE WHEN (model_input."X_2" <= 0.658563) THEN 31 ELSE 32 END END ELSE CASE WHEN (model_input."X_0" <= 36.854443) THEN CASE WHEN (model_input."X_0" <= 23.623474) THEN 35 ELSE 36 END ELSE CASE WHEN (model_input."X_1" <= 730.325134) THEN 27 ELSE 28 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.321436 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.224450 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.375386 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.111990 AS "E"
    UNION ALL
    SELECT 4 AS nid, 0.449370 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.680325 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.398947 AS "E"
    UNION ALL
    SELECT 7 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 8 AS nid, 0.453986 AS "E"
    UNION ALL
    SELECT 9 AS nid, 0.021344 AS "E"
    UNION ALL
    SELECT 10 AS nid, 0.202636 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.245007 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.442452 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.436332 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.159974 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.237995 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.473121 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.229870 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.072603 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.014036 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.248302 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.269293 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 23 AS nid, 1.473608 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.324506 AS "E"
    UNION ALL
    SELECT 25 AS nid, 1.535861 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.431295 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.372742 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.473118 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.216963 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.159392 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.231356 AS "E"
    UNION ALL
    SELECT 33 AS nid, 1.458304 AS "E"
    UNION ALL
    SELECT 34 AS nid, 1.504214 AS "E"
    UNION ALL
    SELECT 35 AS nid, 1.544874 AS "E"
    UNION ALL
    SELECT 36 AS nid, 1.496801 AS "E"
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