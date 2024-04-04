WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_1" <= 876.616943) THEN CASE WHEN (model_input."X_2" <= 0.833477) THEN CASE WHEN (model_input."X_1" <= 588.986450) THEN CASE WHEN (model_input."X_2" <= 0.531919) THEN CASE WHEN (model_input."X_0" <= 48.752602) THEN CASE WHEN (model_input."X_1" <= 296.169769) THEN 27 ELSE 28 END ELSE CASE WHEN (model_input."X_0" <= 60.929955) THEN 25 ELSE 26 END END ELSE CASE WHEN (model_input."X_3" <= 7.655873) THEN 23 ELSE 24 END END ELSE CASE WHEN (model_input."X_0" <= 32.136803) THEN 11 ELSE 12 END END ELSE 8 END ELSE CASE WHEN (model_input."X_3" <= 9.976569) THEN CASE WHEN (model_input."X_1" <= 1617.998779) THEN CASE WHEN (model_input."X_2" <= 0.729710) THEN CASE WHEN (model_input."X_1" <= 970.379333) THEN 15 ELSE CASE WHEN (model_input."X_1" <= 1368.245972) THEN 21 ELSE 22 END END ELSE 14 END ELSE 6 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 417.544525 AS "E"
    UNION ALL
    SELECT 1 AS nid, 203.339493 AS "E"
    UNION ALL
    SELECT 2 AS nid, 692.950989 AS "E"
    UNION ALL
    SELECT 3 AS nid, 795.168152 AS "E"
    UNION ALL
    SELECT 4 AS nid, 79.647888 AS "E"
    UNION ALL
    SELECT 5 AS nid, 711.304077 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1214.488647 AS "E"
    UNION ALL
    SELECT 7 AS nid, 157.110474 AS "E"
    UNION ALL
    SELECT 8 AS nid, 573.171875 AS "E"
    UNION ALL
    SELECT 9 AS nid, 117.592278 AS "E"
    UNION ALL
    SELECT 10 AS nid, 275.665009 AS "E"
    UNION ALL
    SELECT 11 AS nid, 335.519287 AS "E"
    UNION ALL
    SELECT 12 AS nid, 215.810730 AS "E"
    UNION ALL
    SELECT 13 AS nid, 685.372192 AS "E"
    UNION ALL
    SELECT 14 AS nid, 815.031494 AS "E"
    UNION ALL
    SELECT 15 AS nid, 615.786926 AS "E"
    UNION ALL
    SELECT 16 AS nid, 708.567322 AS "E"
    UNION ALL
    SELECT 17 AS nid, 90.585533 AS "E"
    UNION ALL
    SELECT 18 AS nid, 171.605743 AS "E"
    UNION ALL
    SELECT 19 AS nid, 66.847031 AS "E"
    UNION ALL
    SELECT 20 AS nid, 114.324036 AS "E"
    UNION ALL
    SELECT 21 AS nid, 725.221436 AS "E"
    UNION ALL
    SELECT 22 AS nid, 675.258972 AS "E"
    UNION ALL
    SELECT 23 AS nid, 191.013199 AS "E"
    UNION ALL
    SELECT 24 AS nid, 152.198303 AS "E"
    UNION ALL
    SELECT 25 AS nid, 97.892578 AS "E"
    UNION ALL
    SELECT 26 AS nid, 130.755493 AS "E"
    UNION ALL
    SELECT 27 AS nid, 73.717247 AS "E"
    UNION ALL
    SELECT 28 AS nid, 59.976818 AS "E"
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