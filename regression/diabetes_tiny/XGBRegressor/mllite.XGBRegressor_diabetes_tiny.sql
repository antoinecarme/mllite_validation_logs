WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_9" < -0.054925) THEN CASE WHEN (t."X_0" < -0.001882) THEN 7 ELSE 8 END ELSE 6 END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 2 AS nid,  26.625002 AS "E"
    UNION ALL
    SELECT 4 AS nid,  12.065625 AS "E"
    UNION ALL
    SELECT 6 AS nid,  -16.816668 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -2.112500 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.215625 AS "E"
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
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_9" < -0.054925) THEN CASE WHEN (t."X_0" < -0.001882) THEN CASE WHEN (t."X_0" < -0.070900) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_8" < -0.015999) THEN 11 ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_0" < 0.023546) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  10.255783 AS "E"
    UNION ALL
    SELECT 5 AS nid,  23.057814 AS "E"
    UNION ALL
    SELECT 6 AS nid,  4.471875 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.183282 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -13.170784 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -2.811877 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.517500 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -2.017500 AS "E"
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
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_9" < -0.054925) THEN CASE WHEN (t."X_0" < -0.001882) THEN CASE WHEN (t."X_0" < -0.070900) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_8" < -0.041176) THEN 11 ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_0" < 0.023546) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  8.717414 AS "E"
    UNION ALL
    SELECT 5 AS nid,  17.869804 AS "E"
    UNION ALL
    SELECT 6 AS nid,  3.801093 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.155788 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -10.843762 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -4.356304 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.439874 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -1.714874 AS "E"
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
    CASE WHEN (t."X_8" < -0.015999) THEN CASE WHEN (t."X_9" < -0.067351) THEN CASE WHEN (t."X_0" < -0.070900) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_4" < 0.036958) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_2" < -0.009439) THEN 5 ELSE CASE WHEN (t."X_0" < 0.023546) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  -2.129528 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.373892 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.132420 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -8.008937 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -1.382812 AS "E"
    UNION ALL
    SELECT 11 AS nid,  14.043201 AS "E"
    UNION ALL
    SELECT 12 AS nid,  3.230931 AS "E"
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
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_9" < -0.054925) THEN CASE WHEN (t."X_0" < -0.001882) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_4" < 0.017694) THEN CASE WHEN (t."X_2" < -0.047163) THEN 13 ELSE 14 END ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_0" < 0.023546) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  5.303323 AS "E"
    UNION ALL
    SELECT 5 AS nid,  10.689381 AS "E"
    UNION ALL
    SELECT 6 AS nid,  2.746291 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.970682 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.112557 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -1.755829 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -1.417220 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -6.454962 AS "E"
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
"DT_node_lookup_5" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_9" < -0.054925) THEN CASE WHEN (t."X_1" < 0.050680) THEN CASE WHEN (t."X_0" < -0.070900) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_4" < 0.001183) THEN CASE WHEN (t."X_2" < -0.047163) THEN 15 ELSE 16 END ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_0" < 0.023546) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  4.072847 AS "E"
    UNION ALL
    SELECT 5 AS nid,  8.501759 AS "E"
    UNION ALL
    SELECT 6 AS nid,  2.334348 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.992610 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -1.785111 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.172206 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.095673 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -1.204637 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -5.224173 AS "E"
  ) AS "Values"
 )
,
"DT_output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_5" AS t1
   LEFT OUTER JOIN
   "DT_node_data_5" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_6" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_9" < -0.067351) THEN CASE WHEN (t."X_0" < -0.070900) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_8" < -0.041176) THEN CASE WHEN (t."X_7" < -0.021412) THEN 11 ELSE 12 END ELSE 10 END END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 2 AS nid,  6.156513 AS "E"
    UNION ALL
    SELECT 4 AS nid,  3.232560 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.146375 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.081322 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -1.482948 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -1.820088 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -4.808643 AS "E"
  ) AS "Values"
 )
,
"DT_output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_6" AS t1
   LEFT OUTER JOIN
   "DT_node_data_6" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_7" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_9" < -0.054925) THEN CASE WHEN (t."X_1" < 0.050680) THEN CASE WHEN (t."X_0" < -0.070900) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_4" < 0.017694) THEN CASE WHEN (t."X_2" < -0.039618) THEN 15 ELSE CASE WHEN (t."X_0" < 0.038076) THEN 17 ELSE 18 END END ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_0" < 0.023546) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  2.538444 AS "E"
    UNION ALL
    SELECT 5 AS nid,  5.422945 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.060719 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.621277 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.717337 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.124418 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.069122 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -1.056645 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -3.576920 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.973019 AS "E"
  ) AS "Values"
 )
,
"DT_output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_7" AS t1
   LEFT OUTER JOIN
   "DT_node_data_7" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_8" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN 9 ELSE CASE WHEN (t."X_0" < 0.038076) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_4" < -0.002945) THEN CASE WHEN (t."X_0" < -0.070900) THEN 15 ELSE 16 END ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_0" < 0.023546) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  1.934235 AS "E"
    UNION ALL
    SELECT 5 AS nid,  4.314505 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.901611 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.898029 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.853867 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -3.131531 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.827066 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.105755 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.058754 AS "E"
  ) AS "Values"
 )
,
"DT_output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_8" AS t1
   LEFT OUTER JOIN
   "DT_node_data_8" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_9" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_6" < 0.022869) THEN CASE WHEN (t."X_0" < -0.052738) THEN 13 ELSE 14 END ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_0" < 0.023546) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  1.510503 AS "E"
    UNION ALL
    SELECT 5 AS nid,  3.410539 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.766370 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.695972 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -2.230422 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.758245 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.184012 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.049940 AS "E"
  ) AS "Values"
 )
,
"DT_output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_9" AS t1
   LEFT OUTER JOIN
   "DT_node_data_9" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_10" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_9" < -0.054925) THEN CASE WHEN (t."X_0" < -0.001882) THEN CASE WHEN (t."X_0" < -0.070900) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_4" < 0.001183) THEN CASE WHEN (t."X_0" < -0.052738) THEN 15 ELSE 16 END ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_0" < 0.023546) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  1.132519 AS "E"
    UNION ALL
    SELECT 5 AS nid,  2.718870 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.651414 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.042448 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.415874 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.062290 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.288985 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.697443 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -2.059140 AS "E"
  ) AS "Values"
 )
,
"DT_output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_10" AS t1
   LEFT OUTER JOIN
   "DT_node_data_10" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_11" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_9" < -0.050783) THEN CASE WHEN (t."X_1" < 0.050680) THEN CASE WHEN (t."X_0" < -0.070900) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_4" < 0.001183) THEN 11 ELSE CASE WHEN (t."X_0" < -0.052738) THEN 15 ELSE 16 END END END ELSE 4 END ELSE CASE WHEN (t."X_0" < 0.023546) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.876098 AS "E"
    UNION ALL
    SELECT 5 AS nid,  2.150395 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.553702 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.413089 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -1.485733 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.052947 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.036081 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.096144 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.365641 AS "E"
  ) AS "Values"
 )
,
"DT_output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_11" AS t1
   LEFT OUTER JOIN
   "DT_node_data_11" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_12" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN 9 ELSE CASE WHEN (t."X_0" < 0.038076) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_4" < -0.002945) THEN CASE WHEN (t."X_0" < -0.070900) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_1" < 0.050680) THEN 17 ELSE 18 END END END ELSE 4 END ELSE CASE WHEN (t."X_0" < 0.023546) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.640082 AS "E"
    UNION ALL
    SELECT 5 AS nid,  1.718858 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.470647 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.320144 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -1.350166 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.251216 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.045005 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.030668 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.310127 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.081722 AS "E"
  ) AS "Values"
 )
,
"DT_output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_12" AS t1
   LEFT OUTER JOIN
   "DT_node_data_12" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_13" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN 5 ELSE CASE WHEN (t."X_0" < 0.038076) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_3" < 0.002351) THEN CASE WHEN (t."X_4" < -0.002945) THEN CASE WHEN (t."X_0" < -0.070900) THEN 13 ELSE 14 END ELSE 12 END ELSE 8 END END ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 2 AS nid,  1.248597 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -0.248112 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.486855 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -1.080132 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.213534 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.220808 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.038255 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.026067 AS "E"
  ) AS "Values"
 )
,
"DT_output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_13" AS t1
   LEFT OUTER JOIN
   "DT_node_data_13" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_14" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN 9 ELSE CASE WHEN (t."X_0" < 0.038076) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_6" < 0.022869) THEN CASE WHEN (t."X_0" < -0.052738) THEN 15 ELSE 16 END ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.032356) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.356781 AS "E"
    UNION ALL
    SELECT 5 AS nid,  1.426396 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.501493 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.192286 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.203940 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.864106 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.181504 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.045906 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.022158 AS "E"
  ) AS "Values"
 )
,
"DT_output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_14" AS t1
   LEFT OUTER JOIN
   "DT_node_data_14" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_15" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN 9 ELSE CASE WHEN (t."X_0" < 0.038076) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_6" < 0.022869) THEN CASE WHEN (t."X_0" < -0.052738) THEN 15 ELSE 16 END ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.032356) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.303264 AS "E"
    UNION ALL
    SELECT 5 AS nid,  1.212438 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.388656 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.149022 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.163152 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.691285 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.154279 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.036724 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.018835 AS "E"
  ) AS "Values"
 )
,
"DT_output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_15" AS t1
   LEFT OUTER JOIN
   "DT_node_data_15" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_16" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN 11 ELSE CASE WHEN (t."X_0" < 0.038076) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_6" < 0.022869) THEN CASE WHEN (t."X_0" < -0.052738) THEN 17 ELSE 18 END ELSE 14 END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.032356) THEN 5 ELSE CASE WHEN (t."X_0" < 0.009016) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.257774 AS "E"
    UNION ALL
    SELECT 5 AS nid,  1.030573 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.348788 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.079239 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.115491 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.130521 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.553028 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.131137 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.029379 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.016010 AS "E"
  ) AS "Values"
 )
,
"DT_output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_16" AS t1
   LEFT OUTER JOIN
   "DT_node_data_16" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_17" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN 11 ELSE CASE WHEN (t."X_0" < 0.038076) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_6" < 0.022869) THEN CASE WHEN (t."X_0" < -0.052738) THEN 17 ELSE 18 END ELSE 14 END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.032356) THEN 5 ELSE CASE WHEN (t."X_0" < 0.009016) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.219109 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.875986 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.279031 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.067353 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.089505 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.104416 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.442422 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.111467 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.023504 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.013609 AS "E"
  ) AS "Values"
 )
,
"DT_output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_17" AS t1
   LEFT OUTER JOIN
   "DT_node_data_17" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_18" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_9" < -0.054925) THEN CASE WHEN (t."X_0" < -0.001882) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_4" < 0.017694) THEN CASE WHEN (t."X_2" < -0.039618) THEN 15 ELSE CASE WHEN (t."X_4" < -0.009825) THEN 17 ELSE 18 END END ELSE 14 END END ELSE 4 END ELSE CASE WHEN (t."X_2" < 0.069241) THEN CASE WHEN (t."X_0" < 0.023546) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.186136 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.744589 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.223297 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.057250 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.019119 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.011568 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.022415 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.081496 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.353938 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.134959 AS "E"
  ) AS "Values"
 )
,
"DT_output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_18" AS t1
   LEFT OUTER JOIN
   "DT_node_data_18" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_19" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_9" < -0.054925) THEN CASE WHEN (t."X_0" < -0.001882) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_4" < 0.017694) THEN CASE WHEN (t."X_2" < -0.039618) THEN 15 ELSE CASE WHEN (t."X_4" < -0.009825) THEN 17 ELSE 18 END END ELSE 14 END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.032356) THEN 5 ELSE CASE WHEN (t."X_0" < 0.009016) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.152747 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.632900 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.182285 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.048663 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.015295 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.009833 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.017932 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.065196 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.283150 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.107967 AS "E"
  ) AS "Values"
 )
,
"DT_output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_19" AS t1
   LEFT OUTER JOIN
   "DT_node_data_19" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_20" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_9" < -0.054925) THEN CASE WHEN (t."X_0" < -0.001882) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_4" < 0.017694) THEN CASE WHEN (t."X_2" < -0.039618) THEN 13 ELSE CASE WHEN (t."X_4" < -0.009825) THEN 15 ELSE 16 END END ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.032356) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.129836 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.537964 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.130053 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.012237 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.008359 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.014346 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.052158 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.226521 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.086373 AS "E"
  ) AS "Values"
 )
,
"DT_output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_20" AS t1
   LEFT OUTER JOIN
   "DT_node_data_20" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_21" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_9" < -0.054925) THEN CASE WHEN (t."X_0" < -0.001882) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_4" < 0.017694) THEN CASE WHEN (t."X_2" < -0.039618) THEN 15 ELSE CASE WHEN (t."X_0" < 0.038076) THEN 17 ELSE 18 END END ELSE 14 END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.032356) THEN 5 ELSE CASE WHEN (t."X_0" < 0.009016) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.110360 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.457269 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.119815 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.021856 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.009789 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.007104 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.011478 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.041727 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.165060 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.045352 AS "E"
  ) AS "Values"
 )
,
"DT_output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_21" AS t1
   LEFT OUTER JOIN
   "DT_node_data_21" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_22" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN CASE WHEN (t."X_0" < -0.052738) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < 0.038076) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_8" < -0.059471) THEN 13 ELSE CASE WHEN (t."X_0" < 0.045341) THEN 19 ELSE 20 END END END ELSE 4 END ELSE CASE WHEN (t."X_2" < 0.069241) THEN CASE WHEN (t."X_0" < 0.023546) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.093393 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.388678 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.096127 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.018578 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.033537 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.033382 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.008022 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.148204 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.038549 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.008749 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.006038 AS "E"
  ) AS "Values"
 )
,
"DT_output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_22" AS t1
   LEFT OUTER JOIN
   "DT_node_data_22" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_23" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN CASE WHEN (t."X_0" < -0.052738) THEN 15 ELSE 16 END ELSE 12 END ELSE CASE WHEN (t."X_8" < -0.059471) THEN 13 ELSE CASE WHEN (t."X_0" < 0.045341) THEN 17 ELSE 18 END END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.032356) THEN 5 ELSE CASE WHEN (t."X_0" < 0.009016) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.079385 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.330377 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.076901 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.015791 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.105306 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.028506 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.026706 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.006818 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.006781 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.005132 AS "E"
  ) AS "Values"
 )
,
"DT_output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_23" AS t1
   LEFT OUTER JOIN
   "DT_node_data_23" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_24" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN CASE WHEN (t."X_0" < -0.060003) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < 0.038076) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_8" < -0.059471) THEN 13 ELSE CASE WHEN (t."X_0" < 0.045341) THEN CASE WHEN (t."X_0" < -0.070900) THEN 21 ELSE 22 END ELSE 20 END END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.032356) THEN 5 ELSE CASE WHEN (t."X_0" < 0.009016) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.067477 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.280820 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.061520 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.013422 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.024231 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.025040 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.008536 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.097502 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.016970 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.004362 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -0.001396 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.006076 AS "E"
  ) AS "Values"
 )
,
"DT_output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_24" AS t1
   LEFT OUTER JOIN
   "DT_node_data_24" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_25" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN CASE WHEN (t."X_0" < -0.060003) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < 0.038076) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_8" < -0.059471) THEN 13 ELSE CASE WHEN (t."X_0" < 0.045341) THEN CASE WHEN (t."X_0" < -0.070900) THEN 21 ELSE 22 END ELSE 20 END END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.032356) THEN 5 ELSE CASE WHEN (t."X_0" < -0.001882) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.057356 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.238696 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.058621 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.017740 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.020596 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.021284 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.006828 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.078001 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.014425 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.003708 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -0.001186 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.004861 AS "E"
  ) AS "Values"
 )
,
"DT_output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_25" AS t1
   LEFT OUTER JOIN
   "DT_node_data_25" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_26" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN CASE WHEN (t."X_0" < -0.060003) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < 0.038076) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_8" < -0.059471) THEN 13 ELSE CASE WHEN (t."X_0" < 0.045341) THEN CASE WHEN (t."X_0" < -0.070900) THEN 21 ELSE 22 END ELSE 20 END END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.032356) THEN 5 ELSE CASE WHEN (t."X_0" < -0.001882) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.048752 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.202890 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.049828 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.014192 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.017506 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.018091 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.005463 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.062401 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.012261 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.003152 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -0.001007 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.003889 AS "E"
  ) AS "Values"
 )
,
"DT_output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_26" AS t1
   LEFT OUTER JOIN
   "DT_node_data_26" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_27" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_9" < -0.054925) THEN CASE WHEN (t."X_0" < -0.001882) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_4" < 0.017694) THEN CASE WHEN (t."X_4" < -0.042848) THEN 15 ELSE CASE WHEN (t."X_0" < 0.038076) THEN 17 ELSE 18 END END ELSE 14 END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.032356) THEN 5 ELSE CASE WHEN (t."X_0" < -0.001882) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.041439 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.172458 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.042352 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.011354 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.002351 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.002678 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.003111 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.003884 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.042055 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.010422 AS "E"
  ) AS "Values"
 )
,
"DT_output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_27" AS t1
   LEFT OUTER JOIN
   "DT_node_data_27" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_28" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN 11 ELSE CASE WHEN (t."X_0" < 0.038076) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_6" < 0.022869) THEN CASE WHEN (t."X_0" < -0.052738) THEN 17 ELSE 18 END ELSE 14 END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.032356) THEN 5 ELSE CASE WHEN (t."X_0" < -0.001882) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.035223 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.146590 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.035999 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.009084 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.007345 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.007490 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.041509 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.008859 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.001049 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.002275 AS "E"
  ) AS "Values"
 )
,
"DT_output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_28" AS t1
   LEFT OUTER JOIN
   "DT_node_data_28" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_29" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN CASE WHEN (t."X_0" < -0.060003) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < 0.038076) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_8" < -0.059471) THEN 13 ELSE CASE WHEN (t."X_0" < 0.045341) THEN CASE WHEN (t."X_0" < -0.070900) THEN 21 ELSE 22 END ELSE 20 END END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.032356) THEN 5 ELSE CASE WHEN (t."X_0" < -0.001882) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.029940 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.124603 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.030597 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.007266 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.007448 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.007967 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.002277 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.033208 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.007530 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.001934 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -0.000346 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.001634 AS "E"
  ) AS "Values"
 )
,
"DT_output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_29" AS t1
   LEFT OUTER JOIN
   "DT_node_data_29" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_30" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN CASE WHEN (t."X_0" < -0.060003) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < 0.038076) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_8" < -0.059471) THEN 13 ELSE CASE WHEN (t."X_0" < 0.045341) THEN CASE WHEN (t."X_0" < -0.070900) THEN 21 ELSE 22 END ELSE 20 END END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.032356) THEN 5 ELSE CASE WHEN (t."X_0" < -0.001882) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.025449 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.105913 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.026006 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.005814 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.006331 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.006773 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.001822 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.026566 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.006401 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.001643 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -0.000293 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.001308 AS "E"
  ) AS "Values"
 )
,
"DT_output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_30" AS t1
   LEFT OUTER JOIN
   "DT_node_data_30" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_31" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.035644) THEN CASE WHEN (t."X_8" < 0.026717) THEN CASE WHEN (t."X_6" < 0.008142) THEN CASE WHEN (t."X_9" < -0.050783) THEN CASE WHEN (t."X_0" < -0.052738) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < 0.038076) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_8" < -0.059471) THEN 13 ELSE CASE WHEN (t."X_0" < 0.045341) THEN CASE WHEN (t."X_0" < -0.070900) THEN 21 ELSE 22 END ELSE 20 END END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.032356) THEN 5 ELSE CASE WHEN (t."X_0" < -0.001882) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.021632 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.090024 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.022105 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.004649 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.005381 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.004894 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.000601 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.021253 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.005441 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.001396 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -0.000249 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.001047 AS "E"
  ) AS "Values"
 )
,
"DT_output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
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
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_31" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   139.562500 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"