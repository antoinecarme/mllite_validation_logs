WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_1" < 5.000000) THEN CASE WHEN (t."X_2" < 4.000000) THEN 3 ELSE CASE WHEN (t."X_1" < 4.000000) THEN CASE WHEN (t."X_1" < 2.000000) THEN 13 ELSE CASE WHEN (t."X_2" < 7.000000) THEN 17 ELSE 18 END END ELSE 8 END END ELSE CASE WHEN (t."X_2" < 5.000000) THEN CASE WHEN (t."X_2" < 2.000000) THEN 9 ELSE CASE WHEN (t."X_1" < 8.000000) THEN CASE WHEN (t."X_3" < 8.000000) THEN 19 ELSE 20 END ELSE 16 END END ELSE CASE WHEN (t."X_1" < 8.000000) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -93.308701 AS "E"
    UNION ALL
    SELECT 8 AS nid,  29.151636 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -81.834564 AS "E"
    UNION ALL
    SELECT 11 AS nid,  83.394943 AS "E"
    UNION ALL
    SELECT 12 AS nid,  208.073029 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -65.630013 AS "E"
    UNION ALL
    SELECT 16 AS nid,  24.820675 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -37.259071 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -1.253308 AS "E"
    UNION ALL
    SELECT 19 AS nid,  1.725311 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -15.309747 AS "E"
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
    CASE WHEN (t."X_1" < 5.000000) THEN CASE WHEN (t."X_2" < 7.000000) THEN CASE WHEN (t."X_2" < 4.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 2.000000) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_2" < 5.000000) THEN CASE WHEN (t."X_2" < 2.000000) THEN 11 ELSE CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_1" < 8.000000) THEN 17 ELSE 18 END ELSE 16 END END ELSE CASE WHEN (t."X_1" < 8.000000) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  -66.715736 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -39.265129 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -39.283669 AS "E"
    UNION ALL
    SELECT 10 AS nid,  20.580538 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -60.012005 AS "E"
    UNION ALL
    SELECT 13 AS nid,  60.163486 AS "E"
    UNION ALL
    SELECT 14 AS nid,  151.325806 AS "E"
    UNION ALL
    SELECT 16 AS nid,  25.339319 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -17.328388 AS "E"
    UNION ALL
    SELECT 18 AS nid,  7.998059 AS "E"
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
    CASE WHEN (t."X_1" < 8.000000) THEN CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_2" < 2.000000) THEN 7 ELSE CASE WHEN (t."X_1" < 4.000000) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_1" < 4.000000) THEN CASE WHEN (t."X_1" < 2.000000) THEN CASE WHEN (t."X_1" < 1.000000) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_3" < 4.000000) THEN 21 ELSE 22 END END ELSE CASE WHEN (t."X_2" < 5.000000) THEN 17 ELSE CASE WHEN (t."X_3" < 6.000000) THEN 23 ELSE 24 END END END END ELSE CASE WHEN (t."X_2" < 7.000000) THEN CASE WHEN (t."X_2" < 4.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  145.599365 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -48.862904 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -5.768897 AS "E"
    UNION ALL
    SELECT 12 AS nid,  41.916264 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -41.383087 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -13.723462 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.933732 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -44.272991 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -24.971027 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -21.352444 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -5.720976 AS "E"
    UNION ALL
    SELECT 23 AS nid,  55.158436 AS "E"
    UNION ALL
    SELECT 24 AS nid,  18.928366 AS "E"
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
    CASE WHEN (t."X_1" < 8.000000) THEN CASE WHEN (t."X_1" < 4.000000) THEN CASE WHEN (t."X_2" < 5.000000) THEN 7 ELSE CASE WHEN (t."X_1" < 2.000000) THEN CASE WHEN (t."X_1" < 1.000000) THEN 19 ELSE 20 END ELSE 14 END END ELSE CASE WHEN (t."X_2" < 5.000000) THEN CASE WHEN (t."X_2" < 2.000000) THEN 15 ELSE CASE WHEN (t."X_1" < 6.000000) THEN 21 ELSE 22 END END ELSE CASE WHEN (t."X_3" < 6.000000) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_2" < 7.000000) THEN CASE WHEN (t."X_2" < 4.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  108.159508 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -37.205452 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -4.211297 AS "E"
    UNION ALL
    SELECT 12 AS nid,  31.137798 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -6.099403 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -28.656101 AS "E"
    UNION ALL
    SELECT 17 AS nid,  39.989864 AS "E"
    UNION ALL
    SELECT 18 AS nid,  14.061072 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -32.888512 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -18.416130 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -13.075960 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.818674 AS "E"
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
    CASE WHEN (t."X_2" < 9.000000) THEN CASE WHEN (t."X_2" < 2.000000) THEN CASE WHEN (t."X_2" < 1.000000) THEN 7 ELSE CASE WHEN (t."X_1" < 4.000000) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_1" < 4.000000) THEN CASE WHEN (t."X_1" < 2.000000) THEN CASE WHEN (t."X_2" < 7.000000) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_3" < 2.000000) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_2" < 5.000000) THEN CASE WHEN (t."X_1" < 8.000000) THEN CASE WHEN (t."X_2" < 4.000000) THEN 25 ELSE 26 END ELSE 22 END ELSE CASE WHEN (t."X_1" < 6.000000) THEN 23 ELSE CASE WHEN (t."X_2" < 6.000000) THEN 27 ELSE 28 END END END END END ELSE CASE WHEN (t."X_1" < 5.000000) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  3.440901 AS "E"
    UNION ALL
    SELECT 6 AS nid,  91.876450 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -37.391701 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -23.861458 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -10.036969 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -32.177181 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -10.798287 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -14.196517 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -4.255374 AS "E"
    UNION ALL
    SELECT 22 AS nid,  12.631740 AS "E"
    UNION ALL
    SELECT 23 AS nid,  10.130068 AS "E"
    UNION ALL
    SELECT 25 AS nid,  -8.986859 AS "E"
    UNION ALL
    SELECT 26 AS nid,  1.092826 AS "E"
    UNION ALL
    SELECT 27 AS nid,  15.608365 AS "E"
    UNION ALL
    SELECT 28 AS nid,  32.704754 AS "E"
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
   441.435455 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"