WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 643.716797) THEN 3 ELSE CASE WHEN (t."X_0" < 51.401745) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_3" < 10.148129) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -77.130585 AS "E"
    UNION ALL
    SELECT 5 AS nid,  97.103233 AS "E"
    UNION ALL
    SELECT 6 AS nid,  -50.684494 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -28.375904 AS "E"
    UNION ALL
    SELECT 8 AS nid,  23.344103 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN 1 ELSE CASE WHEN (t."X_1" < 814.561340) THEN CASE WHEN (t."X_0" < 69.792320) THEN CASE WHEN (t."X_1" < 423.498322) THEN 9 ELSE 10 END ELSE 6 END ELSE CASE WHEN (t."X_2" < 0.731124) THEN 7 ELSE 8 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -62.566444 AS "E"
    UNION ALL
    SELECT 6 AS nid,  19.842485 AS "E"
    UNION ALL
    SELECT 7 AS nid,  40.973869 AS "E"
    UNION ALL
    SELECT 8 AS nid,  100.022453 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -33.761639 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -8.047399 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN 1 ELSE CASE WHEN (t."X_1" < 814.561340) THEN CASE WHEN (t."X_0" < 69.792320) THEN CASE WHEN (t."X_0" < 14.282172) THEN 9 ELSE 10 END ELSE 6 END ELSE CASE WHEN (t."X_2" < 0.731124) THEN CASE WHEN (t."X_0" < 63.010204) THEN 11 ELSE 12 END ELSE 8 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -46.477928 AS "E"
    UNION ALL
    SELECT 6 AS nid,  16.866112 AS "E"
    UNION ALL
    SELECT 8 AS nid,  80.017960 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -6.840290 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -27.009314 AS "E"
    UNION ALL
    SELECT 11 AS nid,  34.412773 AS "E"
    UNION ALL
    SELECT 12 AS nid,  9.024793 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN 1 ELSE CASE WHEN (t."X_1" < 814.561340) THEN CASE WHEN (t."X_0" < 69.792320) THEN CASE WHEN (t."X_0" < 14.282172) THEN 9 ELSE 10 END ELSE 6 END ELSE CASE WHEN (t."X_2" < 0.726658) THEN 7 ELSE CASE WHEN (t."X_1" < 1161.331543) THEN 11 ELSE 12 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -34.526463 AS "E"
    UNION ALL
    SELECT 6 AS nid,  14.336193 AS "E"
    UNION ALL
    SELECT 7 AS nid,  19.988741 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -5.814244 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -21.607450 AS "E"
    UNION ALL
    SELECT 11 AS nid,  26.056593 AS "E"
    UNION ALL
    SELECT 12 AS nid,  77.970078 AS "E"
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
    CASE WHEN (t."X_2" < 0.428596) THEN 1 ELSE CASE WHEN (t."X_1" < 814.561340) THEN CASE WHEN (t."X_0" < 69.792320) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_2" < 0.726658) THEN CASE WHEN (t."X_0" < 55.118420) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_1" < 1161.331543) THEN 11 ELSE 12 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -25.648230 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -15.435525 AS "E"
    UNION ALL
    SELECT 6 AS nid,  12.185765 AS "E"
    UNION ALL
    SELECT 9 AS nid,  17.539850 AS "E"
    UNION ALL
    SELECT 10 AS nid,  4.672760 AS "E"
    UNION ALL
    SELECT 11 AS nid,  20.845276 AS "E"
    UNION ALL
    SELECT 12 AS nid,  66.274559 AS "E"
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
    CASE WHEN (t."X_1" < 643.716797) THEN 1 ELSE CASE WHEN (t."X_2" < 0.618557) THEN CASE WHEN (t."X_2" < 0.155164) THEN 5 ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_0" < 14.282172) THEN 13 ELSE 14 END ELSE 10 END END ELSE CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_3" < 9.374556) THEN 11 ELSE 12 END ELSE 8 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -19.903971 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -17.698967 AS "E"
    UNION ALL
    SELECT 8 AS nid,  56.333378 AS "E"
    UNION ALL
    SELECT 10 AS nid,  7.154389 AS "E"
    UNION ALL
    SELECT 11 AS nid,  19.706264 AS "E"
    UNION ALL
    SELECT 12 AS nid,  3.971842 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -2.626781 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.620824 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.618557) THEN CASE WHEN (t."X_3" < 6.140375) THEN CASE WHEN (t."X_1" < 221.354385) THEN 11 ELSE CASE WHEN (t."X_1" < 814.561340) THEN 15 ELSE 16 END END ELSE 8 END ELSE CASE WHEN (t."X_1" < 423.498322) THEN 9 ELSE CASE WHEN (t."X_3" < 9.374556) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  6.081226 AS "E"
    UNION ALL
    SELECT 6 AS nid,  47.883373 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -18.375492 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -10.218060 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -11.636049 AS "E"
    UNION ALL
    SELECT 13 AS nid,  14.976768 AS "E"
    UNION ALL
    SELECT 14 AS nid,  3.376062 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -3.542052 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.527701 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.428596) THEN CASE WHEN (t."X_0" < 50.992905) THEN 7 ELSE CASE WHEN (t."X_0" < 51.401745) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN 9 ELSE CASE WHEN (t."X_2" < 0.618557) THEN 13 ELSE CASE WHEN (t."X_3" < 9.374556) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  5.169040 AS "E"
    UNION ALL
    SELECT 6 AS nid,  40.700867 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -16.559616 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -8.174446 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.448547 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -5.201621 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -1.701457 AS "E"
    UNION ALL
    SELECT 15 AS nid,  11.382349 AS "E"
    UNION ALL
    SELECT 16 AS nid,  2.869657 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.618557) THEN CASE WHEN (t."X_0" < 50.992905) THEN CASE WHEN (t."X_0" < 14.282172) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 51.401745) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 15 ELSE 16 END ELSE 10 END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  4.393680 AS "E"
    UNION ALL
    SELECT 6 AS nid,  34.595737 AS "E"
    UNION ALL
    SELECT 10 AS nid,  8.021896 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -1.446240 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -12.833700 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.381265 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -4.161297 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -7.815784 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -1.993549 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_0" < 55.118420) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_2" < 0.618557) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_0" < 14.282172) THEN 15 ELSE 16 END ELSE 12 END ELSE CASE WHEN (t."X_3" < 9.374556) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  3.734628 AS "E"
    UNION ALL
    SELECT 6 AS nid,  29.406374 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -9.002337 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -1.892723 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -7.878800 AS "E"
    UNION ALL
    SELECT 13 AS nid,  6.725333 AS "E"
    UNION ALL
    SELECT 14 AS nid,  1.235925 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -1.229306 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.324074 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_0" < 50.992905) THEN CASE WHEN (t."X_0" < 14.282172) THEN CASE WHEN (t."X_1" < 814.561340) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 643.716797) THEN 13 ELSE CASE WHEN (t."X_0" < 51.401745) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  3.174436 AS "E"
    UNION ALL
    SELECT 6 AS nid,  24.995417 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -8.521113 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -1.044910 AS "E"
    UNION ALL
    SELECT 12 AS nid,  1.894336 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -2.384954 AS "E"
    UNION ALL
    SELECT 15 AS nid,  6.431848 AS "E"
    UNION ALL
    SELECT 16 AS nid,  1.050540 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.275464 AS "E"
    UNION ALL
    SELECT 18 AS nid,  1.236017 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_0" < 50.992905) THEN CASE WHEN (t."X_0" < 14.282172) THEN CASE WHEN (t."X_1" < 814.561340) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_0" < 69.792320) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 51.401745) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  2.698270 AS "E"
    UNION ALL
    SELECT 6 AS nid,  21.246113 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -6.476046 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.888171 AS "E"
    UNION ALL
    SELECT 12 AS nid,  1.610184 AS "E"
    UNION ALL
    SELECT 15 AS nid,  5.145483 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.892960 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -2.129175 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.502918 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.234144 AS "E"
    UNION ALL
    SELECT 20 AS nid,  1.050613 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.618557) THEN CASE WHEN (t."X_3" < 6.140375) THEN CASE WHEN (t."X_0" < 50.992905) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  2.293533 AS "E"
    UNION ALL
    SELECT 6 AS nid,  18.059198 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -4.600398 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -1.757777 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.417668 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -3.043492 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.733491 AS "E"
    UNION ALL
    SELECT 15 AS nid,  3.771616 AS "E"
    UNION ALL
    SELECT 16 AS nid,  1.101361 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_0" < 50.992905) THEN CASE WHEN (t."X_0" < 14.282172) THEN CASE WHEN (t."X_1" < 814.561340) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 643.716797) THEN 13 ELSE CASE WHEN (t."X_0" < 51.401745) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  1.949506 AS "E"
    UNION ALL
    SELECT 6 AS nid,  15.350318 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -4.081673 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.491277 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.802918 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -1.059879 AS "E"
    UNION ALL
    SELECT 15 AS nid,  3.362061 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.593811 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.136372 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.727817 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_0" < 50.992905) THEN CASE WHEN (t."X_0" < 14.282172) THEN CASE WHEN (t."X_1" < 814.561340) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_0" < 69.792320) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 51.401745) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  1.657077 AS "E"
    UNION ALL
    SELECT 6 AS nid,  13.047767 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -3.102072 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.417586 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.682480 AS "E"
    UNION ALL
    SELECT 15 AS nid,  2.689649 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.504739 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.957976 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.205849 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.115917 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.618640 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.233546) THEN 3 ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_0" < 50.992905) THEN CASE WHEN (t."X_0" < 14.282172) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_3" < 6.140375) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_3" < 4.842079) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -2.336407 AS "E"
    UNION ALL
    SELECT 5 AS nid,  1.408511 AS "E"
    UNION ALL
    SELECT 6 AS nid,  11.090607 AS "E"
    UNION ALL
    SELECT 11 AS nid,  2.151721 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.672754 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.354950 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -1.366602 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.297145 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.525842 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_3" < 9.374556) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_0" < 69.792320) THEN CASE WHEN (t."X_1" < 814.561340) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_1" < 534.256165) THEN 15 ELSE 16 END END ELSE 8 END ELSE CASE WHEN (t."X_0" < 50.992905) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  1.197235 AS "E"
    UNION ALL
    SELECT 6 AS nid,  9.427021 AS "E"
    UNION ALL
    SELECT 8 AS nid,  1.530629 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -2.223764 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.328116 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.556699 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.053957 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.130399 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.446970 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_0" < 50.992905) THEN CASE WHEN (t."X_3" < 6.919084) THEN CASE WHEN (t."X_1" < 814.561340) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 34.347893) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 643.716797) THEN 15 ELSE CASE WHEN (t."X_0" < 51.401745) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  1.017654 AS "E"
    UNION ALL
    SELECT 6 AS nid,  8.012970 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.313467 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.249600 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.480222 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -1.977741 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.349182 AS "E"
    UNION ALL
    SELECT 17 AS nid,  1.415247 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.278897 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.045863 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.379926 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_1" < 643.716797) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_0" < 50.992905) THEN 11 ELSE CASE WHEN (t."X_3" < 6.140375) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_3" < 4.842079) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.865009 AS "E"
    UNION ALL
    SELECT 6 AS nid,  6.811029 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.500417 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -1.699098 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.525175 AS "E"
    UNION ALL
    SELECT 13 AS nid,  1.132202 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.299487 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.118889 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.322934 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_1" < 643.716797) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 423.498322) THEN CASE WHEN (t."X_0" < 38.088467) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_2" < 0.618557) THEN CASE WHEN (t."X_1" < 814.561340) THEN 19 ELSE 20 END ELSE 18 END END ELSE CASE WHEN (t."X_3" < 4.842079) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.735260 AS "E"
    UNION ALL
    SELECT 6 AS nid,  5.789374 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.400334 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -1.444233 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.905762 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.239587 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.595416 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.165800 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.274493 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.088687 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.021149 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_1" < 643.716797) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_3" < 9.374556) THEN CASE WHEN (t."X_3" < 6.140375) THEN CASE WHEN (t."X_2" < 0.343817) THEN 17 ELSE 18 END ELSE 16 END ELSE 12 END ELSE CASE WHEN (t."X_3" < 4.842079) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.624966 AS "E"
    UNION ALL
    SELECT 6 AS nid,  4.920959 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.320267 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -1.227599 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.506104 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.724609 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.191675 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.233322 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.030200 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.139031 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.155164) THEN CASE WHEN (t."X_0" < 34.347893) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_0" < 69.792320) THEN CASE WHEN (t."X_3" < 6.140375) THEN CASE WHEN (t."X_1" < 814.561340) THEN 19 ELSE 20 END ELSE 16 END ELSE CASE WHEN (t."X_1" < 534.256165) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_3" < 4.842079) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.531226 AS "E"
    UNION ALL
    SELECT 6 AS nid,  4.182806 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.225037 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -1.043459 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.579688 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.153345 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.392981 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.022794 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.198322 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.107748 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.013447 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_3" < 9.374556) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_0" < 69.792320) THEN CASE WHEN (t."X_1" < 814.561340) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_1" < 534.256165) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_0" < 14.282172) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_0" < 50.992905) THEN CASE WHEN (t."X_0" < 34.347893) THEN 15 ELSE 16 END ELSE 10 END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.451538 AS "E"
    UNION ALL
    SELECT 6 AS nid,  3.555377 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.104462 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.079559 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.463745 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.191281 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.838788 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.106938 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.011430 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.019375 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.168576 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.155164) THEN CASE WHEN (t."X_0" < 34.347893) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_3" < 6.140375) THEN CASE WHEN (t."X_0" < 69.792320) THEN 15 ELSE 16 END ELSE 12 END ELSE CASE WHEN (t."X_0" < 51.401745) THEN CASE WHEN (t."X_1" < 938.672607) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_3" < 9.374556) THEN 19 ELSE 20 END END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.383807 AS "E"
    UNION ALL
    SELECT 6 AS nid,  3.022064 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.162589 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.761121 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.219812 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.061897 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.016468 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.023839 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.067621 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.349892 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.088788 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.155164) THEN CASE WHEN (t."X_0" < 34.347893) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_3" < 9.374556) THEN CASE WHEN (t."X_0" < 69.792320) THEN CASE WHEN (t."X_1" < 814.561340) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_1" < 534.256165) THEN 19 ELSE 20 END END ELSE 12 END ELSE CASE WHEN (t."X_3" < 4.842079) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.326239 AS "E"
    UNION ALL
    SELECT 6 AS nid,  2.568750 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.138201 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.646953 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.212450 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.301013 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.088629 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.059227 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.006141 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.013998 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.090802 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.155164) THEN CASE WHEN (t."X_0" < 34.347893) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_3" < 9.374556) THEN CASE WHEN (t."X_0" < 69.792320) THEN CASE WHEN (t."X_1" < 643.716797) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_1" < 534.256165) THEN 19 ELSE 20 END END ELSE 12 END ELSE CASE WHEN (t."X_3" < 4.842079) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.277304 AS "E"
    UNION ALL
    SELECT 6 AS nid,  2.183441 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.117471 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.549910 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.180583 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.240808 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.070905 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.049475 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.012535 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.011900 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.077179 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.155164) THEN CASE WHEN (t."X_0" < 34.347893) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_0" < 38.088467) THEN 11 ELSE CASE WHEN (t."X_0" < 69.792320) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < 51.401745) THEN CASE WHEN (t."X_1" < 938.672607) THEN 17 ELSE 18 END ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.235712 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.855920 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.099850 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.467424 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.153495 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.162448 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.038343 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.010114 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.010028 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.033545 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.155164) THEN CASE WHEN (t."X_0" < 34.347893) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_3" < 9.374556) THEN CASE WHEN (t."X_0" < 69.792320) THEN CASE WHEN (t."X_1" < 814.561340) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_1" < 534.256165) THEN 19 ELSE 20 END END ELSE 12 END ELSE CASE WHEN (t."X_3" < 4.842079) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.200354 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.577527 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.084873 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.397310 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.130472 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.160156 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.037115 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.027850 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.001838 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.008597 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.041235 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.155164) THEN CASE WHEN (t."X_0" < 34.347893) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_3" < 9.374556) THEN CASE WHEN (t."X_1" < 643.716797) THEN 15 ELSE CASE WHEN (t."X_0" < 51.401745) THEN 17 ELSE 18 END END ELSE 12 END ELSE CASE WHEN (t."X_3" < 4.842079) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.170297 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.340900 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.072142 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.337714 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.110900 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.128125 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.029694 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.021683 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.005052 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.035046 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.155164) THEN CASE WHEN (t."X_0" < 34.347893) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_0" < 38.088467) THEN 11 ELSE CASE WHEN (t."X_0" < 55.118420) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_3" < 4.842079) THEN CASE WHEN (t."X_0" < 55.118420) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_2" < 0.618557) THEN CASE WHEN (t."X_0" < 14.282172) THEN 21 ELSE 22 END ELSE 20 END END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.144754 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.139758 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.061320 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.287057 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.094265 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.020892 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.006573 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.024536 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.129218 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.032716 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -0.005255 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.000806 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.155164) THEN CASE WHEN (t."X_0" < 34.347893) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_0" < 38.088467) THEN 11 ELSE CASE WHEN (t."X_0" < 55.118420) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_3" < 4.842079) THEN CASE WHEN (t."X_0" < 55.118420) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_2" < 0.618557) THEN CASE WHEN (t."X_0" < 14.282172) THEN 21 ELSE 22 END ELSE 20 END END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.123038 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.968793 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.052122 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.243998 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.080125 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.016714 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.005258 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.020856 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.109836 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.025356 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -0.004468 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.000684 AS "E"
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
    CASE WHEN (t."X_1" < 1575.160400) THEN CASE WHEN (t."X_2" < 0.155164) THEN CASE WHEN (t."X_0" < 34.347893) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_0" < 38.088467) THEN 11 ELSE CASE WHEN (t."X_1" < 534.256165) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_3" < 4.842079) THEN CASE WHEN (t."X_0" < 55.118420) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_2" < 0.618557) THEN CASE WHEN (t."X_0" < 14.282172) THEN 21 ELSE 22 END ELSE 20 END END END END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.104581 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.823480 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.044304 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.207399 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.068106 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.005084 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.016196 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.017725 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.093356 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.019656 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -0.003799 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.000581 AS "E"
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
   417.544525 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"