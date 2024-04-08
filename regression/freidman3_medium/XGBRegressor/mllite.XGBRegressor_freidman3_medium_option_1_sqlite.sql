WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman3_medium" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 0.156860) THEN CASE WHEN (t."X_0" < 59.325420) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 526.791992) THEN CASE WHEN (t."X_0" < 40.263954) THEN CASE WHEN (t."X_0" < 18.416498) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_2" < 0.402955) THEN 13 ELSE CASE WHEN (t."X_0" < 59.325420) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_2" < 0.235384) THEN 9 ELSE CASE WHEN (t."X_0" < 48.198017) THEN 15 ELSE CASE WHEN (t."X_1" < 865.747681) THEN 19 ELSE CASE WHEN (t."X_2" < 0.520814) THEN 21 ELSE 22 END END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.038116 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.214538 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.008775 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.040116 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.003237 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.128986 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.051731 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.008919 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.028774 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.011900 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.021754 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.040604 AS "E"
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
    CASE WHEN (t."X_2" < 0.156860) THEN CASE WHEN (t."X_0" < 59.325420) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 444.204834) THEN CASE WHEN (t."X_2" < 0.595422) THEN 7 ELSE CASE WHEN (t."X_0" < 59.325420) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_2" < 0.292127) THEN CASE WHEN (t."X_0" < 67.712112) THEN CASE WHEN (t."X_1" < 865.747681) THEN 17 ELSE 18 END ELSE 14 END ELSE CASE WHEN (t."X_0" < 34.347893) THEN 15 ELSE CASE WHEN (t."X_1" < 865.747681) THEN CASE WHEN (t."X_0" < 67.712112) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_2" < 0.520814) THEN 23 ELSE 24 END END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.028587 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.160904 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.073434 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.023188 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.013107 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.037997 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.043659 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.000380 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.029792 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.019568 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.004693 AS "E"
    UNION ALL
    SELECT 23 AS nid,  0.017442 AS "E"
    UNION ALL
    SELECT 24 AS nid,  0.032209 AS "E"
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
    CASE WHEN (t."X_2" < 0.156860) THEN CASE WHEN (t."X_0" < 59.325420) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 444.204834) THEN CASE WHEN (t."X_2" < 0.595422) THEN 7 ELSE CASE WHEN (t."X_0" < 59.325420) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_2" < 0.292127) THEN CASE WHEN (t."X_0" < 34.347893) THEN 13 ELSE CASE WHEN (t."X_0" < 67.712112) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_0" < 67.712112) THEN CASE WHEN (t."X_0" < 34.347893) THEN 19 ELSE CASE WHEN (t."X_1" < 671.264099) THEN 23 ELSE 24 END END ELSE CASE WHEN (t."X_1" < 1134.869141) THEN CASE WHEN (t."X_2" < 0.685229) THEN 25 ELSE 26 END ELSE 22 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.021440 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.120678 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.053852 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.017391 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.009830 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.020106 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.004839 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.028498 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.031289 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.018371 AS "E"
    UNION ALL
    SELECT 23 AS nid,  0.010561 AS "E"
    UNION ALL
    SELECT 24 AS nid,  0.023363 AS "E"
    UNION ALL
    SELECT 25 AS nid,  -0.001877 AS "E"
    UNION ALL
    SELECT 26 AS nid,  0.011540 AS "E"
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
    CASE WHEN (t."X_2" < 0.156860) THEN CASE WHEN (t."X_0" < 59.325420) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 865.747681) THEN CASE WHEN (t."X_0" < 76.304665) THEN CASE WHEN (t."X_0" < 18.416498) THEN 11 ELSE CASE WHEN (t."X_2" < 0.402955) THEN 17 ELSE CASE WHEN (t."X_1" < 273.763794) THEN 19 ELSE 20 END END END ELSE CASE WHEN (t."X_2" < 0.520814) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_0" < 59.325420) THEN 9 ELSE CASE WHEN (t."X_3" < 7.449268) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.016080 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.090508 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.021286 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.026436 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.069523 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.001088 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.015218 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.003534 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.018348 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.010702 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.010757 AS "E"
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
    CASE WHEN (t."X_2" < 0.156860) THEN CASE WHEN (t."X_1" < 971.383606) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 526.791992) THEN CASE WHEN (t."X_0" < 76.304665) THEN CASE WHEN (t."X_0" < 34.347893) THEN 11 ELSE CASE WHEN (t."X_1" < 273.763794) THEN 15 ELSE 16 END END ELSE 8 END ELSE CASE WHEN (t."X_0" < 34.347893) THEN 9 ELSE CASE WHEN (t."X_2" < 0.402955) THEN CASE WHEN (t."X_1" < 1412.240356) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_1" < 671.264099) THEN 19 ELSE CASE WHEN (t."X_2" < 0.737876) THEN 21 ELSE 22 END END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.069362 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.010579 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.050001 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.017183 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.014885 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.018191 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.000244 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.006787 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.008353 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.001589 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.009459 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.016989 AS "E"
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