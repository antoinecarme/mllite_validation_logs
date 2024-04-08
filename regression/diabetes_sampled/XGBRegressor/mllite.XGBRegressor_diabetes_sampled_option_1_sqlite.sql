WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "diabetes_sampled" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.008101) THEN CASE WHEN (t."X_8" < 0.017765) THEN CASE WHEN (t."X_2" < 0.039062) THEN CASE WHEN (t."X_2" < -0.033151) THEN 9 ELSE 10 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_2" < 0.020739) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  10.512122 AS "E"
    UNION ALL
    SELECT 5 AS nid,  4.245455 AS "E"
    UNION ALL
    SELECT 6 AS nid,  34.377274 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -7.913636 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -11.321213 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -18.178789 AS "E"
  ) AS "Values"
 )
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_0" AS t1
   LEFT OUTER JOIN
   "DT_node_data_0" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_1" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.008101) THEN CASE WHEN (t."X_8" < 0.017765) THEN CASE WHEN (t."X_9" < -0.054925) THEN 7 ELSE CASE WHEN (t."X_0" < -0.016412) THEN 9 ELSE CASE WHEN (t."X_0" < 0.016281) THEN 11 ELSE 12 END END END ELSE 4 END ELSE CASE WHEN (t."X_2" < 0.020739) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  7.708889 AS "E"
    UNION ALL
    SELECT 5 AS nid,  3.113334 AS "E"
    UNION ALL
    SELECT 6 AS nid,  25.095411 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -6.976970 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -15.613273 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -1.575076 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -12.940203 AS "E"
  ) AS "Values"
 )
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_1" AS t1
   LEFT OUTER JOIN
   "DT_node_data_1" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_2" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.008101) THEN CASE WHEN (t."X_8" < 0.017765) THEN CASE WHEN (t."X_6" < 0.044958) THEN CASE WHEN (t."X_6" < 0.019187) THEN CASE WHEN (t."X_9" < -0.054925) THEN 11 ELSE 12 END ELSE 10 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_2" < 0.020739) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  5.653186 AS "E"
    UNION ALL
    SELECT 5 AS nid,  2.283114 AS "E"
    UNION ALL
    SELECT 6 AS nid,  18.319649 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -11.301308 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -1.950272 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -1.944091 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -9.530684 AS "E"
  ) AS "Values"
 )
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_2" AS t1
   LEFT OUTER JOIN
   "DT_node_data_2" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_3" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 0.071397) THEN CASE WHEN (t."X_3" < 0.028758) THEN CASE WHEN (t."X_9" < 0.027917) THEN CASE WHEN (t."X_6" < 0.044958) THEN CASE WHEN (t."X_4" < -0.029088) THEN 9 ELSE CASE WHEN (t."X_3" < -0.036656) THEN 11 ELSE 12 END END ELSE 8 END ELSE 6 END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 2 AS nid,  13.947335 AS "E"
    UNION ALL
    SELECT 4 AS nid,  8.270422 AS "E"
    UNION ALL
    SELECT 6 AS nid,  2.694240 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -9.786617 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -1.759283 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -9.503270 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -3.873878 AS "E"
  ) AS "Values"
 )
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_3" AS t1
   LEFT OUTER JOIN
   "DT_node_data_3" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_4" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_8" < -0.025953) THEN CASE WHEN (t."X_1" < 0.050680) THEN CASE WHEN (t."X_9" < -0.025930) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_2" < 0.071397) THEN CASE WHEN (t."X_3" < 0.028758) THEN CASE WHEN (t."X_0" < 0.009016) THEN 11 ELSE CASE WHEN (t."X_3" < -0.015999) THEN 13 ELSE 14 END END ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -10.215756 AS "E"
    UNION ALL
    SELECT 6 AS nid,  16.103691 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.162885 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -9.305057 AS "E"
    UNION ALL
    SELECT 10 AS nid,  8.487128 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -8.474453 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -5.555280 AS "E"
    UNION ALL
    SELECT 14 AS nid,  6.856194 AS "E"
  ) AS "Values"
 )
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 )
,
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."E" AS "E"
 FROM (
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_4" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   143.454544 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"