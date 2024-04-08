WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "freidman1_small" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_1" < 0.233387) THEN CASE WHEN (t."X_3" < 0.458178) THEN 3 ELSE CASE WHEN (t."X_9" < 0.389115) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_3" < 0.378696) THEN CASE WHEN (t."X_9" < 0.149271) THEN 9 ELSE CASE WHEN (t."X_6" < 0.745771) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_0" < 0.341289) THEN CASE WHEN (t."X_5" < 0.385768) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_4" < 0.683117) THEN 17 ELSE 18 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -1.909418 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.870071 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.003463 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.781038 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.186418 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.292482 AS "E"
    UNION ALL
    SELECT 15 AS nid,  1.010985 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.009819 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.717950 AS "E"
    UNION ALL
    SELECT 18 AS nid,  1.667238 AS "E"
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
    CASE WHEN (t."X_1" < 0.233387) THEN CASE WHEN (t."X_3" < 0.458178) THEN 3 ELSE CASE WHEN (t."X_9" < 0.389115) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_3" < 0.694676) THEN CASE WHEN (t."X_2" < 0.858346) THEN CASE WHEN (t."X_4" < 0.618557) THEN CASE WHEN (t."X_6" < 0.451813) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_5" < 0.488280) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_5" < 0.385768) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < 0.341289) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -1.393875 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.652553 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.002597 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.576087 AS "E"
    UNION ALL
    SELECT 12 AS nid,  1.376737 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.147087 AS "E"
    UNION ALL
    SELECT 16 AS nid,  1.114941 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.762004 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.336149 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.140995 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.270628 AS "E"
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
    CASE WHEN (t."X_1" < 0.233387) THEN CASE WHEN (t."X_3" < 0.806913) THEN CASE WHEN (t."X_8" < 0.262669) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_3" < 0.259409) THEN CASE WHEN (t."X_2" < 0.677121) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_4" < 0.618557) THEN CASE WHEN (t."X_0" < 0.663564) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < 0.235384) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.002573 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.300032 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -1.130783 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.467921 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.108487 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.383729 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.518344 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.290874 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.907866 AS "E"
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
    CASE WHEN (t."X_3" < 0.259409) THEN CASE WHEN (t."X_0" < 0.399336) THEN 3 ELSE CASE WHEN (t."X_0" < 0.783459) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_1" < 0.378970) THEN CASE WHEN (t."X_0" < 0.663564) THEN CASE WHEN (t."X_4" < 0.363702) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_3" < 0.694676) THEN CASE WHEN (t."X_2" < 0.858346) THEN CASE WHEN (t."X_6" < 0.745771) THEN 19 ELSE 20 END ELSE 16 END ELSE CASE WHEN (t."X_0" < 0.509773) THEN 17 ELSE 18 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -1.079466 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.027826 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.297301 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.116637 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.546016 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.072694 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.591760 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.385957 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.954577 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.262222 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.095076 AS "E"
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
    CASE WHEN (t."X_1" < 0.233387) THEN CASE WHEN (t."X_3" < 0.806913) THEN CASE WHEN (t."X_8" < 0.262669) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_3" < 0.694676) THEN CASE WHEN (t."X_2" < 0.858346) THEN CASE WHEN (t."X_4" < 0.618557) THEN CASE WHEN (t."X_0" < 0.663564) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_8" < 0.667965) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_5" < 0.385768) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < 0.509773) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.044643 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.204361 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.680821 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.283035 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.670027 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.102669 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.500251 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.430716 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.129523 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.143394 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.103467 AS "E"
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
   14.969233 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"