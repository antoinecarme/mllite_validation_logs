WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman2_small" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_1" < 889.292297) THEN CASE WHEN (t."X_2" < 0.428596) THEN 3 ELSE CASE WHEN (t."X_1" < 526.791992) THEN 7 ELSE CASE WHEN (t."X_2" < 0.732761) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_0" < 39.873802) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_1" < 1575.160400) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -90.396309 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -51.143150 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -35.955170 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -13.253116 AS "E"
    UNION ALL
    SELECT 11 AS nid,  86.146561 AS "E"
    UNION ALL
    SELECT 12 AS nid,  196.326630 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -15.483083 AS "E"
    UNION ALL
    SELECT 14 AS nid,  44.575764 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_2" < 0.233546) THEN 5 ELSE CASE WHEN (t."X_1" < 715.890503) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_1" < 635.121277) THEN CASE WHEN (t."X_1" < 472.756287) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_1" < 889.292297) THEN 13 ELSE 14 END END END ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 2 AS nid,  120.438530 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -68.780670 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -56.331097 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -6.686249 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -46.524143 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -10.898065 AS "E"
    UNION ALL
    SELECT 13 AS nid,  18.183653 AS "E"
    UNION ALL
    SELECT 14 AS nid,  62.456264 AS "E"
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
    CASE WHEN (t."X_2" < 0.943330) THEN CASE WHEN (t."X_1" < 889.292297) THEN CASE WHEN (t."X_2" < 0.674758) THEN CASE WHEN (t."X_2" < 0.428596) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_1" < 526.791992) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_2" < 0.287537) THEN 7 ELSE CASE WHEN (t."X_2" < 0.588332) THEN 13 ELSE 14 END END END ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 2 AS nid,  89.526299 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -35.842514 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -47.959202 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -28.982639 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -27.031092 AS "E"
    UNION ALL
    SELECT 12 AS nid,  8.433649 AS "E"
    UNION ALL
    SELECT 13 AS nid,  13.895635 AS "E"
    UNION ALL
    SELECT 14 AS nid,  49.644802 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_2" < 0.155164) THEN 5 ELSE CASE WHEN (t."X_1" < 1049.026855) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_1" < 635.121277) THEN CASE WHEN (t."X_1" < 472.756287) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_1" < 1049.026855) THEN CASE WHEN (t."X_2" < 0.720020) THEN 15 ELSE 16 END ELSE 14 END END END ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 2 AS nid,  78.687515 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -45.702679 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -29.449181 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -3.071765 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -31.513617 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -8.234046 AS "E"
    UNION ALL
    SELECT 14 AS nid,  38.418865 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -8.530896 AS "E"
    UNION ALL
    SELECT 16 AS nid,  29.393419 AS "E"
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
    CASE WHEN (t."X_2" < 0.943330) THEN CASE WHEN (t."X_2" < 0.588332) THEN CASE WHEN (t."X_1" < 635.121277) THEN 5 ELSE CASE WHEN (t."X_2" < 0.287537) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_1" < 635.121277) THEN CASE WHEN (t."X_1" < 472.756287) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_1" < 1049.026855) THEN 13 ELSE 14 END END END ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 2 AS nid,  58.307861 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -29.383469 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -21.921741 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -1.315258 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -18.659134 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -1.544148 AS "E"
    UNION ALL
    SELECT 13 AS nid,  9.724431 AS "E"
    UNION ALL
    SELECT 14 AS nid,  35.294312 AS "E"
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
   435.369385 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"