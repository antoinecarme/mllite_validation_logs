WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_1" <= 0.258731) THEN CASE WHEN (model_input."X_2" <= 0.269714) THEN 7 ELSE CASE WHEN (model_input."X_4" <= 0.514812) THEN CASE WHEN (model_input."X_9" <= 0.854095) THEN 21 ELSE 22 END ELSE CASE WHEN (model_input."X_4" <= 0.705366) THEN 25 ELSE 26 END END END ELSE CASE WHEN (model_input."X_4" <= 0.470478) THEN CASE WHEN (model_input."X_3" <= 0.180545) THEN CASE WHEN (model_input."X_0" <= 0.832593) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_7" <= 0.426837) THEN 23 ELSE CASE WHEN (model_input."X_9" <= 0.179432) THEN 27 ELSE 28 END END END ELSE CASE WHEN (model_input."X_0" <= 0.123085) THEN 5 ELSE CASE WHEN (model_input."X_8" <= 0.609613) THEN CASE WHEN (model_input."X_4" <= 0.777545) THEN 29 ELSE 30 END ELSE CASE WHEN (model_input."X_2" <= 0.565379) THEN 15 ELSE CASE WHEN (model_input."X_0" <= 0.699415) THEN 19 ELSE 20 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.551092 AS "E"
    UNION ALL
    SELECT 1 AS nid, 11.590940 AS "E"
    UNION ALL
    SELECT 2 AS nid, 17.351164 AS "E"
    UNION ALL
    SELECT 3 AS nid, 14.142885 AS "E"
    UNION ALL
    SELECT 4 AS nid, 20.024725 AS "E"
    UNION ALL
    SELECT 5 AS nid, 15.153405 AS "E"
    UNION ALL
    SELECT 6 AS nid, 20.998989 AS "E"
    UNION ALL
    SELECT 7 AS nid, 14.766437 AS "E"
    UNION ALL
    SELECT 8 AS nid, 10.797066 AS "E"
    UNION ALL
    SELECT 9 AS nid, 12.261716 AS "E"
    UNION ALL
    SELECT 10 AS nid, 15.396998 AS "E"
    UNION ALL
    SELECT 11 AS nid, 19.551659 AS "E"
    UNION ALL
    SELECT 12 AS nid, 21.963875 AS "E"
    UNION ALL
    SELECT 13 AS nid, 11.485588 AS "E"
    UNION ALL
    SELECT 14 AS nid, 10.108543 AS "E"
    UNION ALL
    SELECT 15 AS nid, 22.842493 AS "E"
    UNION ALL
    SELECT 16 AS nid, 21.524567 AS "E"
    UNION ALL
    SELECT 17 AS nid, 11.800902 AS "E"
    UNION ALL
    SELECT 18 AS nid, 12.722529 AS "E"
    UNION ALL
    SELECT 19 AS nid, 21.151442 AS "E"
    UNION ALL
    SELECT 20 AS nid, 21.897690 AS "E"
    UNION ALL
    SELECT 21 AS nid, 11.119547 AS "E"
    UNION ALL
    SELECT 22 AS nid, 11.851628 AS "E"
    UNION ALL
    SELECT 23 AS nid, 15.807614 AS "E"
    UNION ALL
    SELECT 24 AS nid, 15.191689 AS "E"
    UNION ALL
    SELECT 25 AS nid, 10.304958 AS "E"
    UNION ALL
    SELECT 26 AS nid, 9.912128 AS "E"
    UNION ALL
    SELECT 27 AS nid, 15.371187 AS "E"
    UNION ALL
    SELECT 28 AS nid, 15.012190 AS "E"
    UNION ALL
    SELECT 29 AS nid, 19.559004 AS "E"
    UNION ALL
    SELECT 30 AS nid, 19.544313 AS "E"
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