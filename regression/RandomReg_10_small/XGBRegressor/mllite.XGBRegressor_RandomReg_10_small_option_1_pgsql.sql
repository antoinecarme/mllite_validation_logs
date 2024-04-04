WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_0" < -0.298941) THEN CASE WHEN (t."X_2" < 0.534130) THEN CASE WHEN (t."X_1" < 0.067277) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_7" < -0.187530) THEN CASE WHEN (t."X_8" < -0.378033) THEN 9 ELSE CASE WHEN (t."X_1" < -0.170877) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_6" < -0.159300) THEN 11 ELSE CASE WHEN (t."X_9" < 0.156183) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.244453 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -58.180790 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -17.796810 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -20.386951 AS "E"
    UNION ALL
    SELECT 11 AS nid,  18.119200 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -1.274493 AS "E"
    UNION ALL
    SELECT 14 AS nid,  42.051826 AS "E"
    UNION ALL
    SELECT 15 AS nid,  22.338358 AS "E"
    UNION ALL
    SELECT 16 AS nid,  45.439995 AS "E"
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
    CASE WHEN (t."X_6" < -0.308706) THEN CASE WHEN (t."X_0" < 0.524310) THEN CASE WHEN (t."X_5" < -0.043307) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_8" < -0.378033) THEN CASE WHEN (t."X_0" < 0.392462) THEN CASE WHEN (t."X_1" < 0.067277) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_1" < 0.067277) THEN CASE WHEN (t."X_9" < -0.541692) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_8" < 0.075771) THEN 17 ELSE 18 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  11.414319 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -43.993671 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -17.931501 AS "E"
    UNION ALL
    SELECT 10 AS nid,  13.829531 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -29.130503 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -5.147330 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -3.503606 AS "E"
    UNION ALL
    SELECT 16 AS nid,  14.823895 AS "E"
    UNION ALL
    SELECT 17 AS nid,  47.020912 AS "E"
    UNION ALL
    SELECT 18 AS nid,  21.770203 AS "E"
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
    CASE WHEN (t."X_0" < -0.298941) THEN CASE WHEN (t."X_6" < -0.308706) THEN 3 ELSE CASE WHEN (t."X_2" < 0.534130) THEN CASE WHEN (t."X_1" < 0.067277) THEN 13 ELSE 14 END ELSE 8 END END ELSE CASE WHEN (t."X_7" < -0.187530) THEN CASE WHEN (t."X_2" < -0.012289) THEN CASE WHEN (t."X_0" < 0.392462) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_5" < -0.828030) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_1" < -0.170877) THEN 11 ELSE CASE WHEN (t."X_0" < 0.942791) THEN 19 ELSE 20 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -34.041275 AS "E"
    UNION ALL
    SELECT 8 AS nid,  9.951073 AS "E"
    UNION ALL
    SELECT 11 AS nid,  9.617744 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -31.117182 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -1.015424 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -17.314112 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -5.076922 AS "E"
    UNION ALL
    SELECT 17 AS nid,  20.719658 AS "E"
    UNION ALL
    SELECT 18 AS nid,  6.527969 AS "E"
    UNION ALL
    SELECT 19 AS nid,  13.371385 AS "E"
    UNION ALL
    SELECT 20 AS nid,  35.301983 AS "E"
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
    CASE WHEN (t."X_0" < -1.199299) THEN 1 ELSE CASE WHEN (t."X_6" < 0.912151) THEN CASE WHEN (t."X_0" < 0.942791) THEN CASE WHEN (t."X_2" < 0.683175) THEN CASE WHEN (t."X_5" < -0.313901) THEN 15 ELSE CASE WHEN (t."X_9" < 0.335445) THEN 17 ELSE 18 END END ELSE 10 END ELSE CASE WHEN (t."X_2" < -0.232649) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_1" < 0.414936) THEN CASE WHEN (t."X_4" < 0.278531) THEN 13 ELSE 14 END ELSE 8 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -29.806190 AS "E"
    UNION ALL
    SELECT 8 AS nid,  31.249022 AS "E"
    UNION ALL
    SELECT 10 AS nid,  9.415497 AS "E"
    UNION ALL
    SELECT 11 AS nid,  1.628221 AS "E"
    UNION ALL
    SELECT 12 AS nid,  20.201128 AS "E"
    UNION ALL
    SELECT 13 AS nid,  14.372396 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -1.932405 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -26.643045 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.813643 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -13.940453 AS "E"
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
    CASE WHEN (t."X_6" < 1.707673) THEN CASE WHEN (t."X_0" < 0.392462) THEN CASE WHEN (t."X_2" < 0.534130) THEN CASE WHEN (t."X_0" < -0.695245) THEN 9 ELSE CASE WHEN (t."X_7" < -1.034381) THEN 17 ELSE CASE WHEN (t."X_3" < 0.153117) THEN 19 ELSE 20 END END END ELSE CASE WHEN (t."X_3" < 0.153117) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_2" < -0.232649) THEN CASE WHEN (t."X_6" < 0.153602) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_7" < -0.426124) THEN 15 ELSE 16 END END END ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 2 AS nid,  21.141836 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -27.325546 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -6.943026 AS "E"
    UNION ALL
    SELECT 12 AS nid,  7.875771 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -7.435223 AS "E"
    UNION ALL
    SELECT 14 AS nid,  9.994303 AS "E"
    UNION ALL
    SELECT 15 AS nid,  4.917616 AS "E"
    UNION ALL
    SELECT 16 AS nid,  16.228161 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -20.387863 AS "E"
    UNION ALL
    SELECT 19 AS nid,  5.172034 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -3.604892 AS "E"
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
   16.448906 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"