WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_0" <= 39.892754) THEN CASE WHEN (model_input."X_1" <= 314.713226) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_2" <= 0.579224) THEN CASE WHEN (model_input."X_3" <= 3.345518) THEN 9 ELSE CASE WHEN (model_input."X_0" <= 60.929955) THEN 21 ELSE 22 END END ELSE 6 END END ELSE CASE WHEN (model_input."X_2" <= 0.389127) THEN 7 ELSE CASE WHEN (model_input."X_0" <= 38.861763) THEN CASE WHEN (model_input."X_3" <= 5.491227) THEN 17 ELSE CASE WHEN (model_input."X_0" <= 15.105726) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_1" <= 970.379333) THEN 15 ELSE 16 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.308779 AS "E"
    UNION ALL
    SELECT 1 AS nid, 1.128719 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.488840 AS "E"
    UNION ALL
    SELECT 3 AS nid, 1.306651 AS "E"
    UNION ALL
    SELECT 4 AS nid, 1.039753 AS "E"
    UNION ALL
    SELECT 5 AS nid, 0.974796 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.234627 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.332255 AS "E"
    UNION ALL
    SELECT 8 AS nid, 1.520157 AS "E"
    UNION ALL
    SELECT 9 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.008862 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.343157 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.270144 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.548283 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.477967 AS "E"
    UNION ALL
    SELECT 15 AS nid, 1.460687 AS "E"
    UNION ALL
    SELECT 16 AS nid, 1.495246 AS "E"
    UNION ALL
    SELECT 17 AS nid, 1.531204 AS "E"
    UNION ALL
    SELECT 18 AS nid, 1.556823 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.561464 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.552182 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.009971 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.007753 AS "E"
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