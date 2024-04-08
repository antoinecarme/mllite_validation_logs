WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman3_tiny" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_0" < 34.347893) THEN 3 ELSE CASE WHEN (t."X_1" < 643.716797) THEN 7 ELSE CASE WHEN (t."X_0" < 50.992905) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_0" < 69.792320) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.008524 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.079240 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.002427 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.013852 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.051036 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.011711 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.038219 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.000792 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_0" < 34.347893) THEN 3 ELSE CASE WHEN (t."X_1" < 643.716797) THEN 7 ELSE CASE WHEN (t."X_0" < 50.992905) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.007246 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.061411 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.002063 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.011774 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.039473 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.014904 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.032486 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.000673 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_0" < 34.347893) THEN 3 ELSE CASE WHEN (t."X_1" < 643.716797) THEN 7 ELSE CASE WHEN (t."X_0" < 50.992905) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_0" < 69.792320) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.006159 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.047594 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.001754 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.010008 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.028199 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.007719 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.027613 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.000572 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_0" < 34.347893) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < 34.347893) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.005235 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.032252 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.001491 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.008507 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.024706 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.011193 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_0" < 34.347893) THEN 3 ELSE CASE WHEN (t."X_1" < 643.716797) THEN 7 ELSE CASE WHEN (t."X_0" < 50.992905) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_0" < 34.347893) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.004450 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.029628 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.001267 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.007231 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.018776 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.008507 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.018634 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.005324 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_0" < 50.992905) THEN CASE WHEN (t."X_0" < 34.347893) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < 51.401745) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 55.118420) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  -0.003782 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.027578 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.004526 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.013597 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.001077 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.006146 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.013591 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.005533 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_0" < 50.992905) THEN CASE WHEN (t."X_0" < 34.347893) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < 51.401745) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 34.347893) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  -0.003215 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.022062 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.003847 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.010878 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.000915 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.005224 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.011008 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.004654 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_3" < 4.169882) THEN 3 ELSE CASE WHEN (t."X_2" < 0.233546) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_0" < 34.347893) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.016517 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.008743 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.003270 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.000778 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.004441 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.008366 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.003537 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_1" < 221.354385) THEN 3 ELSE CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_0" < 34.347893) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < 51.401745) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN 11 ELSE CASE WHEN (t."X_0" < 34.347893) THEN 17 ELSE 18 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.015604 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.000661 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.003775 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.002501 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.001421 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.008087 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.002779 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.004216 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.007267 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.001830 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_1" < 221.354385) THEN 3 ELSE CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_0" < 34.347893) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < 51.401745) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_3" < 9.374556) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 34.347893) THEN 19 ELSE 20 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.013264 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.000562 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.003208 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.001208 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.006469 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.002362 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.003583 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.002102 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.000547 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.005632 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.001555 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_1" < 221.354385) THEN 3 ELSE CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_0" < 34.347893) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < 51.401745) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.011274 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.000478 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.002727 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.001489 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.004021 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.001027 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.005176 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.002008 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.003046 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_1" < 221.354385) THEN 3 ELSE CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_0" < 34.347893) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < 51.401745) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_0" < 63.010204) THEN CASE WHEN (t."X_1" < 814.561340) THEN 17 ELSE CASE WHEN (t."X_3" < 3.411072) THEN 19 ELSE 20 END END ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.009583 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.000406 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.002318 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.000584 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.000873 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.004140 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.001707 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.002589 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.000447 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.000719 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.003371 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_1" < 221.354385) THEN 3 ELSE CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_0" < 34.347893) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < 51.401745) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_3" < 9.374556) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 34.347893) THEN 19 ELSE 20 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.008146 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.000345 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.001970 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.000742 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.003312 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.001451 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.002201 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.000964 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.000154 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.002702 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.000611 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_1" < 221.354385) THEN 3 ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 643.716797) THEN 13 ELSE 14 END ELSE 8 END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_2" < 0.726658) THEN CASE WHEN (t."X_0" < 55.118420) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 17 ELSE 18 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.006924 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.003003 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.000293 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.001675 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.001736 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.001233 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.000716 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000131 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.002183 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.000402 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_1" < 221.354385) THEN 3 ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_0" < 34.347893) THEN 19 ELSE 20 END ELSE 14 END ELSE 8 END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_2" < 0.726658) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < 34.347893) THEN 17 ELSE 18 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.005885 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.002553 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.000249 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.001424 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.001048 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.000160 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000580 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.001713 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.000412 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.000370 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.001547 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_1" < 221.354385) THEN 3 ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 643.716797) THEN 13 ELSE 14 END ELSE 8 END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_2" < 0.726658) THEN 11 ELSE CASE WHEN (t."X_0" < 14.282172) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.005002 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.002170 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.000212 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.001210 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.000342 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.001086 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.000891 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.001867 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000585 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_3" < 4.169882) THEN 3 ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 643.716797) THEN 13 ELSE 14 END ELSE 8 END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN CASE WHEN (t."X_2" < 0.731124) THEN 9 ELSE CASE WHEN (t."X_0" < 14.282172) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.003645 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.001845 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.000383 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.001029 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.000135 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.000312 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.000757 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.001587 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000387 AS "E"
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
    CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_2" < 0.428596) THEN 3 ELSE CASE WHEN (t."X_0" < 38.088467) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_1" < 643.716797) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_0" < 63.010204) THEN CASE WHEN (t."X_3" < 5.897069) THEN CASE WHEN (t."X_0" < 14.282172) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_1" < 1161.331543) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_1" < 534.256165) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.003705 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.000123 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.000874 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.000249 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.001568 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.000668 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000108 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.000005 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.000372 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.001328 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.000329 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_1" < 221.354385) THEN 3 ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_0" < 34.347893) THEN 15 ELSE 16 END ELSE 14 END ELSE 8 END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN CASE WHEN (t."X_2" < 0.731124) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_1" < 423.498322) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.003150 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.001333 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.000225 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.000952 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000743 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.000086 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.000444 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.000068 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.000533 AS "E"
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
    CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_2" < 0.428596) THEN 3 ELSE CASE WHEN (t."X_0" < 38.088467) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_2" < 0.343817) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_0" < 51.401745) THEN CASE WHEN (t."X_0" < 34.347893) THEN 17 ELSE 18 END ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN 11 ELSE CASE WHEN (t."X_0" < 14.282172) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.002677 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.000071 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.000632 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.001133 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.000109 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000427 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.001007 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000202 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.000057 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.000378 AS "E"
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
    CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_2" < 0.428596) THEN 3 ELSE CASE WHEN (t."X_0" < 38.088467) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_2" < 0.343817) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 643.716797) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN 11 ELSE CASE WHEN (t."X_0" < 14.282172) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.002276 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.000060 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.000537 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.000963 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.000083 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.000280 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.000321 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.000856 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000156 AS "E"
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
    CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 3 ELSE CASE WHEN (t."X_0" < 50.992905) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_2" < 0.726658) THEN CASE WHEN (t."X_2" < 0.155164) THEN CASE WHEN (t."X_0" < 34.347893) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < 69.792320) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < 14.282172) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  0.000051 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.001934 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.000456 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.000727 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.000175 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.000007 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000818 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.000079 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.000382 AS "E"
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
    CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 3 ELSE CASE WHEN (t."X_0" < 50.992905) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_2" < 0.726658) THEN CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_1" < 643.716797) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < 69.792320) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < 14.282172) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  0.000043 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.001644 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.000388 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.000618 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.000135 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.000042 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000696 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.000088 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.000325 AS "E"
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
    CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 3 ELSE CASE WHEN (t."X_0" < 50.992905) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_2" < 0.726658) THEN CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_1" < 643.716797) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < 69.792320) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < 14.282172) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  0.000037 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.001397 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.000330 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.000525 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.000105 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.000034 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000591 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.000066 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.000276 AS "E"
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
    CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 3 ELSE CASE WHEN (t."X_0" < 50.992905) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_2" < 0.726658) THEN CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_1" < 643.716797) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 69.792320) THEN 13 ELSE 14 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  0.000031 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.000244 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.001188 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.000280 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000027 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000503 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.000050 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000235 AS "E"
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
    CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_2" < 0.731124) THEN CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_1" < 643.716797) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 69.792320) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_0" < 14.282172) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  0.000027 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.000832 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.000410 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.000018 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000022 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000427 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.000055 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000199 AS "E"
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
    CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_2" < 0.428596) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 2 AS nid,  -0.000013 AS "E"
    UNION ALL
    SELECT 3 AS nid,  -0.000885 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.000061 AS "E"
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
    CASE WHEN (t."X_3" < 4.169882) THEN CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_0" < 38.088467) THEN CASE WHEN (t."X_2" < 0.726658) THEN 7 ELSE CASE WHEN (t."X_0" < 14.282172) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_0" < 50.992905) THEN 9 ELSE CASE WHEN (t."X_0" < 63.010204) THEN 13 ELSE 14 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.000752 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.000079 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.000022 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.000361 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.000350 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000012 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.000130 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000101 AS "E"
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
    CASE WHEN (t."X_0" < 38.088467) THEN 1 ELSE CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE CASE WHEN (t."X_0" < 63.010204) THEN 5 ELSE 6 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  0.000070 AS "E"
    UNION ALL
    SELECT 3 AS nid,  -0.000631 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.000105 AS "E"
    UNION ALL
    SELECT 6 AS nid,  -0.000125 AS "E"
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
    CASE WHEN (t."X_1" < 814.561340) THEN CASE WHEN (t."X_3" < 6.140375) THEN CASE WHEN (t."X_1" < 221.354385) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_1" < 1161.331543) THEN CASE WHEN (t."X_0" < 63.010204) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.000005 AS "E"
    UNION ALL
    SELECT 6 AS nid,  -0.000073 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.000545 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.000165 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.000257 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.000057 AS "E"
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
    CASE WHEN (t."X_0" < 38.088467) THEN 1 ELSE CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  0.000055 AS "E"
    UNION ALL
    SELECT 3 AS nid,  -0.000443 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.000010 AS "E"
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
    CASE WHEN (t."X_1" < 814.561340) THEN 1 ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -0.000151 AS "E"
    UNION ALL
    SELECT 2 AS nid,  0.000058 AS "E"
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
   1.326974 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"