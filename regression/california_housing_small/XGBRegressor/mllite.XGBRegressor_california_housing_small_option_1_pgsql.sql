WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_7" < 3.899200) THEN CASE WHEN (t."X_3" < 1126.000000) THEN 3 ELSE CASE WHEN (t."X_4" < 973.000000) THEN CASE WHEN (t."X_7" < 3.611800) THEN 11 ELSE 12 END ELSE 8 END END ELSE CASE WHEN (t."X_6" < 294.000000) THEN 5 ELSE CASE WHEN (t."X_7" < 5.381300) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  1030.438477 AS "E"
    UNION ALL
    SELECT 5 AS nid,  48807.558594 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -1544.850098 AS "E"
    UNION ALL
    SELECT 9 AS nid,  2680.824951 AS "E"
    UNION ALL
    SELECT 10 AS nid,  21540.162109 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -27793.134766 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -9839.850586 AS "E"
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
    CASE WHEN (t."X_7" < 3.899200) THEN CASE WHEN (t."X_2" < 38.000000) THEN CASE WHEN (t."X_4" < 473.000000) THEN 7 ELSE CASE WHEN (t."X_5" < 1791.000000) THEN 11 ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_6" < 294.000000) THEN 5 ELSE CASE WHEN (t."X_2" < 26.000000) THEN CASE WHEN (t."X_1" < 33.900002) THEN 13 ELSE 14 END ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  77.535004 AS "E"
    UNION ALL
    SELECT 5 AS nid,  35792.210938 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -23547.546875 AS "E"
    UNION ALL
    SELECT 10 AS nid,  18951.789062 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -4989.137207 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -15362.328125 AS "E"
    UNION ALL
    SELECT 13 AS nid,  7366.042480 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -827.973877 AS "E"
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
    CASE WHEN (t."X_7" < 4.675000) THEN CASE WHEN (t."X_5" < 633.000000) THEN 3 ELSE CASE WHEN (t."X_6" < 445.000000) THEN 7 ELSE CASE WHEN (t."X_2" < 22.000000) THEN 9 ELSE CASE WHEN (t."X_4" < 735.000000) THEN 11 ELSE 12 END END END END ELSE CASE WHEN (t."X_2" < 30.000000) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  4402.171387 AS "E"
    UNION ALL
    SELECT 5 AS nid,  7272.320312 AS "E"
    UNION ALL
    SELECT 6 AS nid,  25212.894531 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -16066.131836 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -12528.044922 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -7007.260742 AS "E"
    UNION ALL
    SELECT 12 AS nid,  2237.576172 AS "E"
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
    CASE WHEN (t."X_7" < 3.899200) THEN CASE WHEN (t."X_3" < 1126.000000) THEN 3 ELSE CASE WHEN (t."X_4" < 473.000000) THEN 7 ELSE CASE WHEN (t."X_7" < 2.338200) THEN 11 ELSE CASE WHEN (t."X_2" < 30.000000) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (t."X_6" < 273.000000) THEN 5 ELSE CASE WHEN (t."X_7" < 4.675000) THEN 9 ELSE CASE WHEN (t."X_0" < -121.919998) THEN 13 ELSE CASE WHEN (t."X_5" < 1293.000000) THEN 17 ELSE 18 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  4405.480957 AS "E"
    UNION ALL
    SELECT 5 AS nid,  27009.646484 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -14755.735352 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -7581.563477 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -12360.929688 AS "E"
    UNION ALL
    SELECT 13 AS nid,  1536.904053 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -3369.700928 AS "E"
    UNION ALL
    SELECT 16 AS nid,  4502.544434 AS "E"
    UNION ALL
    SELECT 17 AS nid,  17965.921875 AS "E"
    UNION ALL
    SELECT 18 AS nid,  6276.869141 AS "E"
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
    CASE WHEN (t."X_7" < 3.899200) THEN CASE WHEN (t."X_2" < 38.000000) THEN CASE WHEN (t."X_0" < -117.110001) THEN CASE WHEN (t."X_1" < 38.000000) THEN CASE WHEN (t."X_3" < 3114.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_7" < 2.338200) THEN 17 ELSE 18 END END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_6" < 273.000000) THEN 5 ELSE CASE WHEN (t."X_7" < 4.675000) THEN 9 ELSE CASE WHEN (t."X_2" < 26.000000) THEN 13 ELSE 14 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  3070.940674 AS "E"
    UNION ALL
    SELECT 5 AS nid,  20257.230469 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -14977.784180 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -5686.172852 AS "E"
    UNION ALL
    SELECT 13 AS nid,  2432.604248 AS "E"
    UNION ALL
    SELECT 14 AS nid,  11854.590820 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -2768.882324 AS "E"
    UNION ALL
    SELECT 16 AS nid,  4889.572754 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -15261.816406 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -6789.659668 AS "E"
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
   203459.406250 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"