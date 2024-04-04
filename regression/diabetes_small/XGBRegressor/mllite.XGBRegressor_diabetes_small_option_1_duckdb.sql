WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_8" < 0.003709) THEN CASE WHEN (t."X_3" < 0.028758) THEN CASE WHEN (t."X_2" < 0.020739) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_2" < 0.054152) THEN CASE WHEN (t."X_3" < -0.022885) THEN 9 ELSE CASE WHEN (t."X_8" < 0.032432) THEN 11 ELSE 12 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  11.439844 AS "E"
    UNION ALL
    SELECT 6 AS nid,  35.295834 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -17.554527 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -7.710157 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -9.760157 AS "E"
    UNION ALL
    SELECT 11 AS nid,  25.720984 AS "E"
    UNION ALL
    SELECT 12 AS nid,  5.944336 AS "E"
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
    CASE WHEN (t."X_8" < 0.003709) THEN CASE WHEN (t."X_3" < 0.028758) THEN CASE WHEN (t."X_4" < -0.037344) THEN CASE WHEN (t."X_5" < -0.061125) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_8" < -0.041176) THEN 13 ELSE CASE WHEN (t."X_5" < -0.001314) THEN 17 ELSE 18 END END END ELSE 4 END ELSE CASE WHEN (t."X_2" < 0.054152) THEN CASE WHEN (t."X_3" < -0.022885) THEN 9 ELSE CASE WHEN (t."X_8" < 0.032432) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  8.579884 AS "E"
    UNION ALL
    SELECT 6 AS nid,  25.883612 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -7.320116 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -11.329756 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.363744 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -18.138578 AS "E"
    UNION ALL
    SELECT 15 AS nid,  19.107018 AS "E"
    UNION ALL
    SELECT 16 AS nid,  4.383948 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -12.863742 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -6.251105 AS "E"
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
    CASE WHEN (t."X_8" < 0.003709) THEN CASE WHEN (t."X_2" < 0.054152) THEN CASE WHEN (t."X_4" < -0.037344) THEN CASE WHEN (t."X_4" < -0.063487) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_4" < 0.017694) THEN 13 ELSE 14 END END ELSE 4 END ELSE CASE WHEN (t."X_2" < 0.054152) THEN CASE WHEN (t."X_3" < -0.022885) THEN 9 ELSE CASE WHEN (t."X_8" < 0.032432) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  5.787454 AS "E"
    UNION ALL
    SELECT 6 AS nid,  18.981316 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -5.490088 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -10.587386 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.332395 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -13.132754 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -5.439327 AS "E"
    UNION ALL
    SELECT 15 AS nid,  14.193782 AS "E"
    UNION ALL
    SELECT 16 AS nid,  3.233163 AS "E"
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
    CASE WHEN (t."X_8" < 0.003709) THEN CASE WHEN (t."X_3" < 0.028758) THEN CASE WHEN (t."X_0" < -0.016412) THEN CASE WHEN (t."X_9" < -0.050783) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_6" < 0.048640) THEN CASE WHEN (t."X_1" < 0.050680) THEN 17 ELSE 18 END ELSE 14 END END ELSE 4 END ELSE CASE WHEN (t."X_6" < 0.004460) THEN CASE WHEN (t."X_4" < -0.009825) THEN 9 ELSE CASE WHEN (t."X_3" < -0.002228) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  6.479563 AS "E"
    UNION ALL
    SELECT 6 AS nid,  -1.105479 AS "E"
    UNION ALL
    SELECT 9 AS nid,  21.113552 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -4.488380 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -10.657274 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -8.498025 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -2.540320 AS "E"
    UNION ALL
    SELECT 16 AS nid,  9.085902 AS "E"
    UNION ALL
    SELECT 17 AS nid,  3.505327 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -5.347814 AS "E"
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
    CASE WHEN (t."X_2" < 0.071397) THEN CASE WHEN (t."X_8" < 0.003709) THEN CASE WHEN (t."X_6" < 0.048640) THEN CASE WHEN (t."X_6" < 0.004460) THEN CASE WHEN (t."X_4" < -0.023584) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < -0.016412) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_8" < -0.025953) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_3" < -0.033213) THEN 7 ELSE CASE WHEN (t."X_0" < 0.009016) THEN 13 ELSE CASE WHEN (t."X_0" < 0.027178) THEN 19 ELSE 20 END END END END ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 2 AS nid,  12.321551 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -5.784268 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -9.044458 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -3.439466 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.133316 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -7.229941 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -2.998245 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -4.756571 AS "E"
    UNION ALL
    SELECT 18 AS nid,  4.128769 AS "E"
    UNION ALL
    SELECT 19 AS nid,  10.635793 AS "E"
    UNION ALL
    SELECT 20 AS nid,  3.632072 AS "E"
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
   143.640625 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"