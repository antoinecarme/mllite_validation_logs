WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman3_original" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_2" <= 0.046038) THEN CASE WHEN (model_input."X_2" <= 0.037129) THEN CASE WHEN (model_input."X_2" <= 0.018615) THEN 15 ELSE 16 END ELSE 4 END ELSE CASE WHEN (model_input."X_2" <= 0.254820) THEN CASE WHEN (model_input."X_0" <= 48.212666) THEN CASE WHEN (model_input."X_0" <= 14.603495) THEN CASE WHEN (model_input."X_0" <= 12.927776) THEN CASE WHEN (model_input."X_1" <= 557.734497) THEN 41 ELSE 42 END ELSE 38 END ELSE CASE WHEN (model_input."X_2" <= 0.063820) THEN 27 ELSE CASE WHEN (model_input."X_3" <= 2.257579) THEN 35 ELSE 36 END END END ELSE CASE WHEN (model_input."X_0" <= 79.849136) THEN CASE WHEN (model_input."X_1" <= 425.449432) THEN 17 ELSE CASE WHEN (model_input."X_2" <= 0.113179) THEN 25 ELSE 26 END END ELSE 12 END END ELSE CASE WHEN (model_input."X_1" <= 148.509979) THEN 9 ELSE CASE WHEN (model_input."X_1" <= 340.413940) THEN CASE WHEN (model_input."X_0" <= 39.892754) THEN CASE WHEN (model_input."X_1" <= 186.469421) THEN 29 ELSE 30 END ELSE CASE WHEN (model_input."X_0" <= 50.388824) THEN 23 ELSE 24 END END ELSE CASE WHEN (model_input."X_0" <= 36.854443) THEN CASE WHEN (model_input."X_3" <= 9.901045) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_1" <= 844.359009) THEN 33 ELSE 34 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.340354 AS "E"
    UNION ALL
    SELECT 1 AS nid, 0.224450 AS "E"
    UNION ALL
    SELECT 2 AS nid, 1.374867 AS "E"
    UNION ALL
    SELECT 3 AS nid, 0.111990 AS "E"
    UNION ALL
    SELECT 4 AS nid, 0.449370 AS "E"
    UNION ALL
    SELECT 5 AS nid, 1.167238 AS "E"
    UNION ALL
    SELECT 6 AS nid, 1.425443 AS "E"
    UNION ALL
    SELECT 7 AS nid, 1.308710 AS "E"
    UNION ALL
    SELECT 8 AS nid, 0.972714 AS "E"
    UNION ALL
    SELECT 9 AS nid, 0.453986 AS "E"
    UNION ALL
    SELECT 10 AS nid, 1.438059 AS "E"
    UNION ALL
    SELECT 11 AS nid, 0.933345 AS "E"
    UNION ALL
    SELECT 12 AS nid, 1.248302 AS "E"
    UNION ALL
    SELECT 13 AS nid, 1.473608 AS "E"
    UNION ALL
    SELECT 14 AS nid, 1.246873 AS "E"
    UNION ALL
    SELECT 15 AS nid, 0.021344 AS "E"
    UNION ALL
    SELECT 16 AS nid, 0.202636 AS "E"
    UNION ALL
    SELECT 17 AS nid, 0.731225 AS "E"
    UNION ALL
    SELECT 18 AS nid, 0.967031 AS "E"
    UNION ALL
    SELECT 19 AS nid, 1.269042 AS "E"
    UNION ALL
    SELECT 20 AS nid, 1.472391 AS "E"
    UNION ALL
    SELECT 21 AS nid, 1.447743 AS "E"
    UNION ALL
    SELECT 22 AS nid, 1.157354 AS "E"
    UNION ALL
    SELECT 23 AS nid, 0.906663 AS "E"
    UNION ALL
    SELECT 24 AS nid, 1.193167 AS "E"
    UNION ALL
    SELECT 25 AS nid, 0.868826 AS "E"
    UNION ALL
    SELECT 26 AS nid, 1.016134 AS "E"
    UNION ALL
    SELECT 27 AS nid, 1.072180 AS "E"
    UNION ALL
    SELECT 28 AS nid, 1.271829 AS "E"
    UNION ALL
    SELECT 29 AS nid, 1.565980 AS "E"
    UNION ALL
    SELECT 30 AS nid, 1.418184 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.535730 AS "E"
    UNION ALL
    SELECT 32 AS nid, 1.439213 AS "E"
    UNION ALL
    SELECT 33 AS nid, 1.387902 AS "E"
    UNION ALL
    SELECT 34 AS nid, 1.470789 AS "E"
    UNION ALL
    SELECT 35 AS nid, 1.193958 AS "E"
    UNION ALL
    SELECT 36 AS nid, 1.284808 AS "E"
    UNION ALL
    SELECT 37 AS nid, 1.458304 AS "E"
    UNION ALL
    SELECT 38 AS nid, 1.504214 AS "E"
    UNION ALL
    SELECT 39 AS nid, 1.543614 AS "E"
    UNION ALL
    SELECT 40 AS nid, 1.500252 AS "E"
    UNION ALL
    SELECT 41 AS nid, 1.446981 AS "E"
    UNION ALL
    SELECT 42 AS nid, 1.469628 AS "E"
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