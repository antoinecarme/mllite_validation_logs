WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_1" < 5.000000) THEN CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_0" < 4.000000) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_0" < 5.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_1" < 2.000000) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_0" < 6.000000) THEN 7 ELSE CASE WHEN (t."X_2" < 5.000000) THEN 13 ELSE 14 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -0.141681 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.052460 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.002566 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.098811 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.011465 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.037991 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.048083 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.017168 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.033344 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.013492 AS "E"
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
    CASE WHEN (t."X_2" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_1" < 2.000000) THEN CASE WHEN (t."X_2" < 6.000000) THEN 5 ELSE CASE WHEN (t."X_0" < 5.000000) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_2" < 2.000000) THEN CASE WHEN (t."X_0" < 4.000000) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 8.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN 15 ELSE CASE WHEN (t."X_1" < 4.000000) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_1" < 5.000000) THEN 17 ELSE 18 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -0.103427 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -0.073397 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.016304 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.011964 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.011353 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.037338 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.042243 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.011504 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.019034 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.011383 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.029533 AS "E"
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
    CASE WHEN (t."X_0" < 7.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN 3 ELSE CASE WHEN (t."X_1" < 1.000000) THEN 7 ELSE CASE WHEN (t."X_2" < 2.000000) THEN 11 ELSE CASE WHEN (t."X_1" < 4.000000) THEN 15 ELSE CASE WHEN (t."X_2" < 4.000000) THEN 17 ELSE 18 END END END END END ELSE CASE WHEN (t."X_2" < 2.000000) THEN 5 ELSE CASE WHEN (t."X_1" < 4.000000) THEN 9 ELSE CASE WHEN (t."X_2" < 5.000000) THEN 13 ELSE 14 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  0.030441 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -0.123470 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.029273 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.036853 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.012510 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.005009 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.020628 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.007869 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.009512 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.024566 AS "E"
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
    CASE WHEN (t."X_2" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_1" < 1.000000) THEN 3 ELSE CASE WHEN (t."X_2" < 2.000000) THEN CASE WHEN (t."X_1" < 4.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < 8.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN 11 ELSE CASE WHEN (t."X_1" < 4.000000) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_2" < 5.000000) THEN 13 ELSE 14 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -0.061386 AS "E"
    UNION ALL
    SELECT 3 AS nid,  -0.034164 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.029698 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.009122 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.020797 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.008196 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.009494 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.006406 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.015301 AS "E"
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
    CASE WHEN (t."X_0" < 7.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN 7 ELSE CASE WHEN (t."X_3" < 4.000000) THEN 15 ELSE CASE WHEN (t."X_3" < 8.000000) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_1" < 4.000000) THEN CASE WHEN (t."X_2" < 6.000000) THEN CASE WHEN (t."X_1" < 2.000000) THEN 23 ELSE 24 END ELSE 18 END ELSE CASE WHEN (t."X_0" < 6.000000) THEN CASE WHEN (t."X_1" < 8.000000) THEN CASE WHEN (t."X_2" < 5.000000) THEN 27 ELSE 28 END ELSE 26 END ELSE 20 END END END ELSE CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_1" < 6.000000) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_1" < 5.000000) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  0.024561 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.104813 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.014778 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.001763 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.012002 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.022910 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.006745 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.000993 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.007089 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.016657 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -0.019645 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -0.002650 AS "E"
    UNION ALL
    SELECT 26 AS nid,  0.022914 AS "E"
    UNION ALL
    SELECT 27 AS nid,  0.006871 AS "E"
    UNION ALL
    SELECT 28 AS nid,  0.011782 AS "E"
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
   1.340354 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"