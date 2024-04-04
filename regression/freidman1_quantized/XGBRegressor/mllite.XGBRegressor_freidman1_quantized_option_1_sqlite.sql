WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_1" < 4.000000) THEN CASE WHEN (t."X_3" < 4.000000) THEN CASE WHEN (t."X_0" < 5.000000) THEN 7 ELSE CASE WHEN (t."X_1" < 2.000000) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_1" < 2.000000) THEN CASE WHEN (t."X_7" < 5.000000) THEN 17 ELSE 18 END ELSE 10 END END ELSE CASE WHEN (t."X_3" < 6.000000) THEN CASE WHEN (t."X_2" < 7.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN 19 ELSE CASE WHEN (t."X_2" < 4.000000) THEN 25 ELSE CASE WHEN (t."X_9" < 3.000000) THEN 27 ELSE 28 END END END ELSE CASE WHEN (t."X_7" < 4.000000) THEN 21 ELSE 22 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN 13 ELSE CASE WHEN (t."X_4" < 3.000000) THEN 23 ELSE 24 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  -2.369355 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.127041 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.412761 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -1.693536 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.906484 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.864103 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.284777 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.619729 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.316274 AS "E"
    UNION ALL
    SELECT 22 AS nid,  1.259321 AS "E"
    UNION ALL
    SELECT 23 AS nid,  0.976952 AS "E"
    UNION ALL
    SELECT 24 AS nid,  1.869653 AS "E"
    UNION ALL
    SELECT 25 AS nid,  0.670358 AS "E"
    UNION ALL
    SELECT 27 AS nid,  -0.445412 AS "E"
    UNION ALL
    SELECT 28 AS nid,  0.006605 AS "E"
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
    CASE WHEN (t."X_1" < 4.000000) THEN CASE WHEN (t."X_3" < 4.000000) THEN CASE WHEN (t."X_5" < 2.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < 7.000000) THEN CASE WHEN (t."X_2" < 6.000000) THEN 15 ELSE 16 END ELSE 10 END END ELSE CASE WHEN (t."X_3" < 6.000000) THEN CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_8" < 7.000000) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_4" < 7.000000) THEN CASE WHEN (t."X_9" < 3.000000) THEN 23 ELSE 24 END ELSE 20 END END ELSE CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_4" < 7.000000) THEN 21 ELSE 22 END ELSE 14 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  -0.827984 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -1.623387 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.250196 AS "E"
    UNION ALL
    SELECT 14 AS nid,  1.318799 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.781901 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.062616 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.107255 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.692062 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.958377 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -0.049025 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.816400 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -0.417305 AS "E"
    UNION ALL
    SELECT 24 AS nid,  0.374834 AS "E"
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
    CASE WHEN (t."X_1" < 4.000000) THEN CASE WHEN (t."X_3" < 5.000000) THEN CASE WHEN (t."X_2" < 7.000000) THEN CASE WHEN (t."X_2" < 2.000000) THEN 15 ELSE CASE WHEN (t."X_4" < 5.000000) THEN 23 ELSE 24 END END ELSE 8 END ELSE CASE WHEN (t."X_1" < 2.000000) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_3" < 4.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN 11 ELSE CASE WHEN (t."X_3" < 2.000000) THEN 17 ELSE CASE WHEN (t."X_0" < 7.000000) THEN 25 ELSE 26 END END END ELSE CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_7" < 4.000000) THEN 19 ELSE CASE WHEN (t."X_4" < 5.000000) THEN 27 ELSE 28 END END ELSE CASE WHEN (t."X_7" < 4.000000) THEN 21 ELSE 22 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 8 AS nid,  -0.350034 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.384008 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.227762 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.603376 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.603716 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.259752 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.548865 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.625700 AS "E"
    UNION ALL
    SELECT 22 AS nid,  1.098507 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -1.490408 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -0.799945 AS "E"
    UNION ALL
    SELECT 25 AS nid,  0.090235 AS "E"
    UNION ALL
    SELECT 26 AS nid,  0.435313 AS "E"
    UNION ALL
    SELECT 27 AS nid,  -0.284669 AS "E"
    UNION ALL
    SELECT 28 AS nid,  0.140315 AS "E"
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
    CASE WHEN (t."X_1" < 4.000000) THEN CASE WHEN (t."X_2" < 9.000000) THEN CASE WHEN (t."X_3" < 5.000000) THEN CASE WHEN (t."X_0" < 5.000000) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < 5.000000) THEN 15 ELSE 16 END END ELSE 4 END ELSE CASE WHEN (t."X_3" < 4.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN 9 ELSE CASE WHEN (t."X_4" < 7.000000) THEN CASE WHEN (t."X_9" < 5.000000) THEN 23 ELSE 24 END ELSE 18 END END ELSE CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_8" < 5.000000) THEN 19 ELSE CASE WHEN (t."X_0" < 1.000000) THEN 25 ELSE 26 END END ELSE CASE WHEN (t."X_4" < 5.000000) THEN 21 ELSE 22 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.359074 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.452532 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -1.030575 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.586702 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.470551 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.205948 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.390627 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.446337 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.365786 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.802632 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -0.404271 AS "E"
    UNION ALL
    SELECT 24 AS nid,  0.212991 AS "E"
    UNION ALL
    SELECT 25 AS nid,  0.087086 AS "E"
    UNION ALL
    SELECT 26 AS nid,  -0.271460 AS "E"
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
    CASE WHEN (t."X_1" < 5.000000) THEN CASE WHEN (t."X_3" < 4.000000) THEN CASE WHEN (t."X_4" < 2.000000) THEN 7 ELSE CASE WHEN (t."X_7" < 6.000000) THEN 13 ELSE CASE WHEN (t."X_4" < 5.000000) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_4" < 7.000000) THEN CASE WHEN (t."X_0" < 5.000000) THEN CASE WHEN (t."X_2" < 5.000000) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_3" < 8.000000) THEN 25 ELSE 26 END END ELSE 10 END END ELSE CASE WHEN (t."X_4" < 2.000000) THEN 5 ELSE CASE WHEN (t."X_3" < 4.000000) THEN CASE WHEN (t."X_5" < 4.000000) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_1" < 7.000000) THEN 27 ELSE 28 END ELSE CASE WHEN (t."X_5" < 6.000000) THEN 29 ELSE 30 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  -0.191756 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.810651 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.463212 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.104563 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.031007 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.233294 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -0.277820 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.557606 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -0.542802 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -0.262022 AS "E"
    UNION ALL
    SELECT 25 AS nid,  0.030679 AS "E"
    UNION ALL
    SELECT 26 AS nid,  0.285729 AS "E"
    UNION ALL
    SELECT 27 AS nid,  0.004345 AS "E"
    UNION ALL
    SELECT 28 AS nid,  0.391939 AS "E"
    UNION ALL
    SELECT 29 AS nid,  0.406631 AS "E"
    UNION ALL
    SELECT 30 AS nid,  0.763640 AS "E"
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
   14.653899 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"