WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "freidman1_medium" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.290412) THEN CASE WHEN (t."X_1" < 0.335669) THEN CASE WHEN (t."X_5" < 0.171653) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_5" < 0.394020) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_1" < 0.212467) THEN CASE WHEN (t."X_2" < 0.186105) THEN 11 ELSE CASE WHEN (t."X_9" < 0.297702) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < 0.479223) THEN CASE WHEN (t."X_8" < 0.532042) THEN CASE WHEN (t."X_9" < 0.218690) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_3" < 0.567316) THEN 23 ELSE 24 END END ELSE CASE WHEN (t."X_4" < 0.427686) THEN 19 ELSE 20 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  -1.191236 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -2.210541 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.104390 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.720167 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.111533 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -1.095880 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.563902 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.791671 AS "E"
    UNION ALL
    SELECT 20 AS nid,  1.822285 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.533292 AS "E"
    UNION ALL
    SELECT 22 AS nid,  1.107015 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -0.407234 AS "E"
    UNION ALL
    SELECT 24 AS nid,  0.564859 AS "E"
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
    CASE WHEN (t."X_3" < 0.290412) THEN CASE WHEN (t."X_1" < 0.212467) THEN 3 ELSE CASE WHEN (t."X_0" < 0.479223) THEN 7 ELSE CASE WHEN (t."X_9" < 0.218690) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_1" < 0.212467) THEN CASE WHEN (t."X_0" < 0.759884) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_0" < 0.413337) THEN CASE WHEN (t."X_4" < 0.746659) THEN CASE WHEN (t."X_1" < 0.645603) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_3" < 0.676029) THEN 21 ELSE 22 END END ELSE CASE WHEN (t."X_3" < 0.676029) THEN CASE WHEN (t."X_1" < 0.645603) THEN 23 ELSE 24 END ELSE 18 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -1.610615 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.987496 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.671515 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.009841 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.500501 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.110261 AS "E"
    UNION ALL
    SELECT 18 AS nid,  1.401578 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.388774 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.127053 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.251990 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.986675 AS "E"
    UNION ALL
    SELECT 23 AS nid,  0.306404 AS "E"
    UNION ALL
    SELECT 24 AS nid,  0.910266 AS "E"
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
    CASE WHEN (t."X_1" < 0.335669) THEN CASE WHEN (t."X_3" < 0.520758) THEN CASE WHEN (t."X_0" < 0.479223) THEN 7 ELSE CASE WHEN (t."X_1" < 0.153571) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_4" < 0.654557) THEN CASE WHEN (t."X_0" < 0.413337) THEN 17 ELSE 18 END ELSE 10 END END ELSE CASE WHEN (t."X_3" < 0.567316) THEN CASE WHEN (t."X_2" < 0.964562) THEN CASE WHEN (t."X_2" < 0.186105) THEN 19 ELSE CASE WHEN (t."X_4" < 0.654557) THEN CASE WHEN (t."X_9" < 0.356884) THEN 25 ELSE 26 END ELSE CASE WHEN (t."X_0" < 0.479223) THEN 27 ELSE 28 END END END ELSE 12 END ELSE CASE WHEN (t."X_0" < 0.226051) THEN 13 ELSE CASE WHEN (t."X_4" < 0.340806) THEN 21 ELSE 22 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  -1.391675 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.200065 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.796466 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.254850 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.873107 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.302766 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.463669 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.073990 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.457111 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.516626 AS "E"
    UNION ALL
    SELECT 22 AS nid,  1.069756 AS "E"
    UNION ALL
    SELECT 25 AS nid,  -0.504071 AS "E"
    UNION ALL
    SELECT 26 AS nid,  -0.097973 AS "E"
    UNION ALL
    SELECT 27 AS nid,  0.014440 AS "E"
    UNION ALL
    SELECT 28 AS nid,  0.380980 AS "E"
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
    CASE WHEN (t."X_3" < 0.290412) THEN CASE WHEN (t."X_0" < 0.479223) THEN CASE WHEN (t."X_4" < 0.553400) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 0.153571) THEN 9 ELSE CASE WHEN (t."X_4" < 0.340806) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < 0.212467) THEN CASE WHEN (t."X_0" < 0.759884) THEN CASE WHEN (t."X_2" < 0.475292) THEN 17 ELSE 18 END ELSE 12 END ELSE CASE WHEN (t."X_0" < 0.413337) THEN CASE WHEN (t."X_4" < 0.746659) THEN CASE WHEN (t."X_8" < 0.622375) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_3" < 0.676029) THEN 25 ELSE 26 END END ELSE CASE WHEN (t."X_0" < 0.804101) THEN CASE WHEN (t."X_4" < 0.427686) THEN 27 ELSE CASE WHEN (t."X_6" < 0.719388) THEN 29 ELSE 30 END END ELSE 22 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  -1.109280 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.501251 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.600404 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.003447 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.241259 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.042137 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.474810 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.186448 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.147027 AS "E"
    UNION ALL
    SELECT 23 AS nid,  0.079862 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -0.318764 AS "E"
    UNION ALL
    SELECT 25 AS nid,  0.124979 AS "E"
    UNION ALL
    SELECT 26 AS nid,  0.565000 AS "E"
    UNION ALL
    SELECT 27 AS nid,  0.323264 AS "E"
    UNION ALL
    SELECT 29 AS nid,  0.908881 AS "E"
    UNION ALL
    SELECT 30 AS nid,  0.459678 AS "E"
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
    CASE WHEN (t."X_1" < 0.335669) THEN CASE WHEN (t."X_3" < 0.520758) THEN CASE WHEN (t."X_4" < 0.340806) THEN 7 ELSE CASE WHEN (t."X_4" < 0.553400) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_2" < 0.789831) THEN CASE WHEN (t."X_0" < 0.479223) THEN 17 ELSE 18 END ELSE 10 END END ELSE CASE WHEN (t."X_3" < 0.676029) THEN CASE WHEN (t."X_2" < 0.964562) THEN CASE WHEN (t."X_1" < 0.645603) THEN CASE WHEN (t."X_0" < 0.413337) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_0" < 0.341289) THEN 25 ELSE CASE WHEN (t."X_5" < 0.488280) THEN 27 ELSE 28 END END END ELSE 12 END ELSE CASE WHEN (t."X_2" < 0.366127) THEN 13 ELSE CASE WHEN (t."X_0" < 0.341289) THEN 21 ELSE 22 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  -0.794310 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.178819 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.504924 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.712842 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.110021 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.525407 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.358142 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.127822 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.105047 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.364710 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -0.417572 AS "E"
    UNION ALL
    SELECT 24 AS nid,  -0.024543 AS "E"
    UNION ALL
    SELECT 25 AS nid,  -0.074625 AS "E"
    UNION ALL
    SELECT 27 AS nid,  0.350331 AS "E"
    UNION ALL
    SELECT 28 AS nid,  0.053319 AS "E"
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