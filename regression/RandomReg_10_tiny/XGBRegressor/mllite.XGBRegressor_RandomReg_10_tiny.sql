WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 0.359897) THEN CASE WHEN (t."X_2" < 0.148738) THEN CASE WHEN (t."X_1" < 2.459666) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_0" < 0.375851) THEN CASE WHEN (t."X_1" < -1.450382) THEN 9 ELSE CASE WHEN (t."X_1" < 0.045409) THEN 13 ELSE CASE WHEN (t."X_0" < -0.406296) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < -0.489682) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -39.715115 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -14.646036 AS "E"
    UNION ALL
    SELECT 8 AS nid,  2.663471 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -8.812803 AS "E"
    UNION ALL
    SELECT 11 AS nid,  11.276709 AS "E"
    UNION ALL
    SELECT 12 AS nid,  57.994282 AS "E"
    UNION ALL
    SELECT 13 AS nid,  7.496095 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.341946 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.194104 AS "E"
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
    CASE WHEN (t."X_2" < 0.359897) THEN CASE WHEN (t."X_2" < 0.148738) THEN CASE WHEN (t."X_6" < 1.111452) THEN CASE WHEN (t."X_0" < 1.195055) THEN 13 ELSE 14 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_0" < 0.375851) THEN CASE WHEN (t."X_1" < -1.450382) THEN 9 ELSE CASE WHEN (t."X_1" < 0.045409) THEN 15 ELSE CASE WHEN (t."X_0" < -0.406296) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_8" < 0.311669) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -31.772089 AS "E"
    UNION ALL
    SELECT 8 AS nid,  2.263950 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -7.490883 AS "E"
    UNION ALL
    SELECT 11 AS nid,  46.395424 AS "E"
    UNION ALL
    SELECT 12 AS nid,  9.585205 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -12.149904 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -2.578823 AS "E"
    UNION ALL
    SELECT 15 AS nid,  5.996876 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.290654 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.164989 AS "E"
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
    CASE WHEN (t."X_2" < 0.359897) THEN CASE WHEN (t."X_7" < -1.353951) THEN 3 ELSE CASE WHEN (t."X_4" < 0.756183) THEN 7 ELSE CASE WHEN (t."X_0" < -0.406296) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 0.375851) THEN CASE WHEN (t."X_1" < -1.450382) THEN 9 ELSE CASE WHEN (t."X_1" < 0.045409) THEN 15 ELSE CASE WHEN (t."X_0" < -0.406296) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < -0.489682) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -25.417675 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -10.337516 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -6.367250 AS "E"
    UNION ALL
    SELECT 11 AS nid,  8.147421 AS "E"
    UNION ALL
    SELECT 12 AS nid,  37.116341 AS "E"
    UNION ALL
    SELECT 13 AS nid,  1.924358 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -3.067856 AS "E"
    UNION ALL
    SELECT 15 AS nid,  4.797501 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.247056 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.140240 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.353951) THEN 3 ELSE CASE WHEN (t."X_2" < 0.148738) THEN CASE WHEN (t."X_5" < -1.586949) THEN 9 ELSE CASE WHEN (t."X_0" < 0.375851) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_0" < -0.119582) THEN CASE WHEN (t."X_0" < -0.132642) THEN CASE WHEN (t."X_0" < -0.648732) THEN 17 ELSE 18 END ELSE 16 END ELSE 12 END END END ELSE CASE WHEN (t."X_1" < -0.489682) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -20.334141 AS "E"
    UNION ALL
    SELECT 5 AS nid,  6.925308 AS "E"
    UNION ALL
    SELECT 6 AS nid,  32.548744 AS "E"
    UNION ALL
    SELECT 9 AS nid,  1.635705 AS "E"
    UNION ALL
    SELECT 12 AS nid,  10.293903 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -8.011576 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -2.454285 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -5.412163 AS "E"
    UNION ALL
    SELECT 17 AS nid,  2.307014 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.060529 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.353951) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_5" < -1.586949) THEN 9 ELSE CASE WHEN (t."X_0" < -0.132642) THEN CASE WHEN (t."X_2" < 0.148738) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < 0.375851) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -16.267311 AS "E"
    UNION ALL
    SELECT 5 AS nid,  27.666431 AS "E"
    UNION ALL
    SELECT 6 AS nid,  5.886511 AS "E"
    UNION ALL
    SELECT 9 AS nid,  2.197500 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -1.363679 AS "E"
    UNION ALL
    SELECT 12 AS nid,  10.446783 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -3.493103 AS "E"
    UNION ALL
    SELECT 16 AS nid,  1.016798 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -7.852417 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -1.581463 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.353951) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_5" < -1.586949) THEN 9 ELSE CASE WHEN (t."X_0" < -0.406296) THEN CASE WHEN (t."X_1" < 0.529279) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_3" < 0.188895) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -13.013850 AS "E"
    UNION ALL
    SELECT 5 AS nid,  23.516468 AS "E"
    UNION ALL
    SELECT 6 AS nid,  5.003533 AS "E"
    UNION ALL
    SELECT 9 AS nid,  1.758000 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -1.159127 AS "E"
    UNION ALL
    SELECT 12 AS nid,  8.879766 AS "E"
    UNION ALL
    SELECT 15 AS nid,  1.237894 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -1.777795 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -5.918414 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -1.083365 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.353951) THEN 3 ELSE CASE WHEN (t."X_2" < 0.148738) THEN CASE WHEN (t."X_1" < 2.459666) THEN CASE WHEN (t."X_6" < -0.917510) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_0" < 0.375851) THEN CASE WHEN (t."X_1" < -1.450382) THEN 15 ELSE CASE WHEN (t."X_1" < 0.045409) THEN 17 ELSE 18 END END ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -10.411079 AS "E"
    UNION ALL
    SELECT 5 AS nid,  19.988998 AS "E"
    UNION ALL
    SELECT 6 AS nid,  4.253005 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.797024 AS "E"
    UNION ALL
    SELECT 12 AS nid,  7.547802 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -5.112662 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -2.081715 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -2.534714 AS "E"
    UNION ALL
    SELECT 17 AS nid,  1.956889 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.170389 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.353951) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_9" < 0.330976) THEN CASE WHEN (t."X_1" < -0.660511) THEN 13 ELSE CASE WHEN (t."X_1" < 0.045409) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_6" < -0.917510) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -8.328864 AS "E"
    UNION ALL
    SELECT 5 AS nid,  16.990646 AS "E"
    UNION ALL
    SELECT 6 AS nid,  3.615054 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.673001 AS "E"
    UNION ALL
    SELECT 12 AS nid,  6.415631 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -2.245610 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -4.345763 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -1.378900 AS "E"
    UNION ALL
    SELECT 17 AS nid,  1.565511 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.236502 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.353951) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_1" < -0.660511) THEN 13 ELSE CASE WHEN (t."X_6" < 0.128738) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -6.663091 AS "E"
    UNION ALL
    SELECT 5 AS nid,  14.442046 AS "E"
    UNION ALL
    SELECT 6 AS nid,  3.072796 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -3.693898 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.572051 AS "E"
    UNION ALL
    SELECT 12 AS nid,  5.453286 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -1.796488 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.891448 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.949363 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_8" < 0.035418) THEN CASE WHEN (t."X_0" < -0.406296) THEN CASE WHEN (t."X_1" < 0.549981) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 0.375851) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_2" < 0.671135) THEN CASE WHEN (t."X_0" < -0.361483) THEN 21 ELSE 22 END ELSE 16 END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -6.832295 AS "E"
    UNION ALL
    SELECT 5 AS nid,  12.275739 AS "E"
    UNION ALL
    SELECT 6 AS nid,  2.611876 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.486243 AS "E"
    UNION ALL
    SELECT 12 AS nid,  4.635292 AS "E"
    UNION ALL
    SELECT 16 AS nid,  1.062536 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.765282 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.499591 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -2.925711 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.528929 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -0.607594 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.005501 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_1" < -0.660511) THEN 13 ELSE CASE WHEN (t."X_9" < 0.330976) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -5.807451 AS "E"
    UNION ALL
    SELECT 5 AS nid,  10.434380 AS "E"
    UNION ALL
    SELECT 6 AS nid,  2.220094 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -2.700957 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.413306 AS "E"
    UNION ALL
    SELECT 12 AS nid,  3.940000 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -1.175175 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.509852 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.795409 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_8" < 0.035418) THEN CASE WHEN (t."X_1" < 2.459666) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_2" < 0.671135) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -4.936334 AS "E"
    UNION ALL
    SELECT 5 AS nid,  8.869222 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.887080 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -2.295814 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.351311 AS "E"
    UNION ALL
    SELECT 12 AS nid,  3.348999 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.895709 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.348174 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.274654 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.748059 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_1" < -0.660511) THEN 13 ELSE CASE WHEN (t."X_6" < 0.128738) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -4.195883 AS "E"
    UNION ALL
    SELECT 5 AS nid,  7.538837 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.604019 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -1.951441 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.298614 AS "E"
    UNION ALL
    SELECT 12 AS nid,  2.846649 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.755806 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.358191 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.430673 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_8" < 0.035418) THEN CASE WHEN (t."X_1" < 2.459666) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_2" < 0.671135) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -3.566501 AS "E"
    UNION ALL
    SELECT 5 AS nid,  6.408010 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.363416 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -1.658725 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.253822 AS "E"
    UNION ALL
    SELECT 12 AS nid,  2.419652 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.581916 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.231347 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.108323 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.512312 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_1" < -0.660511) THEN 13 ELSE CASE WHEN (t."X_3" < -1.294070) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -3.031526 AS "E"
    UNION ALL
    SELECT 5 AS nid,  5.446806 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.158903 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -1.409916 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.215749 AS "E"
    UNION ALL
    SELECT 12 AS nid,  2.056705 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.490339 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.295393 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.265296 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_8" < 0.035418) THEN CASE WHEN (t."X_1" < 2.459666) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_2" < 0.671135) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -2.576797 AS "E"
    UNION ALL
    SELECT 5 AS nid,  4.629786 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.985067 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -1.198429 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.183386 AS "E"
    UNION ALL
    SELECT 12 AS nid,  1.748200 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.371129 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.156850 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.064154 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.356790 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_1" < -0.660511) THEN CASE WHEN (t."X_0" < -0.132642) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_6" < 0.128738) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -2.190278 AS "E"
    UNION ALL
    SELECT 5 AS nid,  3.935317 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.837307 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -1.018664 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.155878 AS "E"
    UNION ALL
    SELECT 12 AS nid,  1.485970 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.113493 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.468824 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.139345 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.226880 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_9" < -1.402543) THEN 13 ELSE CASE WHEN (t."X_2" < 0.683175) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -1.861736 AS "E"
    UNION ALL
    SELECT 5 AS nid,  3.345021 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.711710 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.865865 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.132497 AS "E"
    UNION ALL
    SELECT 12 AS nid,  1.263075 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.398501 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.056942 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.335134 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_3" < -0.247653) THEN CASE WHEN (t."X_1" < 0.549981) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < -0.648732) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -1.582475 AS "E"
    UNION ALL
    SELECT 5 AS nid,  2.843266 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.604954 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.735985 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.112622 AS "E"
    UNION ALL
    SELECT 12 AS nid,  1.073614 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.254557 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.107833 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.284864 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.000771 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_9" < -1.402543) THEN 13 ELSE CASE WHEN (t."X_2" < 0.683175) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -1.345104 AS "E"
    UNION ALL
    SELECT 5 AS nid,  2.416777 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.514211 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.625587 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.095729 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.912573 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.300542 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.019999 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.242135 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_9" < 0.330976) THEN CASE WHEN (t."X_7" < 0.852386) THEN CASE WHEN (t."X_1" < -0.660511) THEN CASE WHEN (t."X_0" < -0.132642) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_3" < -1.294070) THEN 21 ELSE 22 END END ELSE CASE WHEN (t."X_0" < -0.648732) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < 0.375851) THEN 11 ELSE CASE WHEN (t."X_0" < 1.195055) THEN 17 ELSE 18 END END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -1.143338 AS "E"
    UNION ALL
    SELECT 5 AS nid,  2.054260 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.437079 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.473323 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.205815 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.775687 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.006704 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.081369 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.050026 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.255461 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.021422 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.086281 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_9" < -1.402543) THEN 13 ELSE CASE WHEN (t."X_2" < 0.683175) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.971837 AS "E"
    UNION ALL
    SELECT 5 AS nid,  1.746121 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.371516 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.460751 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.069164 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.659335 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.217142 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.004671 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.174942 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_9" < 0.330976) THEN CASE WHEN (t."X_7" < 0.852386) THEN CASE WHEN (t."X_1" < -0.660511) THEN CASE WHEN (t."X_3" < -1.067979) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_3" < -1.294070) THEN 21 ELSE 22 END END ELSE CASE WHEN (t."X_0" < -0.648732) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < 0.375851) THEN 11 ELSE CASE WHEN (t."X_0" < 1.195055) THEN 17 ELSE 18 END END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.826062 AS "E"
    UNION ALL
    SELECT 5 AS nid,  1.484203 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.315789 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.332116 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.148701 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.560436 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.004997 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.058789 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.009096 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.156069 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.018910 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.067919 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_9" < -1.402543) THEN 13 ELSE CASE WHEN (t."X_2" < 0.683175) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.702152 AS "E"
    UNION ALL
    SELECT 5 AS nid,  1.261574 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.268421 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.341821 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.049971 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.476370 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.161160 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.005895 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.126395 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_9" < 0.330976) THEN CASE WHEN (t."X_7" < 0.852386) THEN CASE WHEN (t."X_2" < 0.683175) THEN CASE WHEN (t."X_1" < -0.660511) THEN 19 ELSE 20 END ELSE 14 END ELSE CASE WHEN (t."X_0" < -0.648732) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_5" < 0.175927) THEN 11 ELSE CASE WHEN (t."X_1" < 0.549981) THEN 17 ELSE 18 END END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.596830 AS "E"
    UNION ALL
    SELECT 5 AS nid,  1.072339 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.228159 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.290548 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.136986 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.107436 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.404915 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.066719 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.005132 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.023748 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.047124 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_9" < -1.402543) THEN 13 ELSE CASE WHEN (t."X_2" < 0.683175) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.507305 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.911490 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.193935 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.246966 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.032468 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.344177 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.116438 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.002018 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.091320 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_9" < 0.330976) THEN CASE WHEN (t."X_7" < 0.852386) THEN CASE WHEN (t."X_1" < -0.660511) THEN CASE WHEN (t."X_0" < -0.132642) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_1" < 0.529279) THEN 21 ELSE 22 END END ELSE CASE WHEN (t."X_0" < -0.648732) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_5" < 0.175927) THEN 11 ELSE CASE WHEN (t."X_1" < 0.549981) THEN 17 ELSE 18 END END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.431209 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.774765 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.164845 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.209921 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.077622 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.292550 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.050330 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.004665 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.019402 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.098973 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.012176 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.063973 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_9" < -1.402543) THEN 13 ELSE CASE WHEN (t."X_9" < 0.330976) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.366527 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.658548 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.140118 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.178433 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.020048 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.248666 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.084127 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.028987 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.029542 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_1" < -0.660511) THEN CASE WHEN (t."X_3" < -1.067979) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_6" < 0.128738) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.311547 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.559767 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.119100 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.151668 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.017041 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.211366 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.006793 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.064462 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.015390 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.045128 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_1" < -0.067925) THEN CASE WHEN (t."X_2" < 0.683175) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_3" < -1.294070) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.264814 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.475804 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.101234 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.128918 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.014485 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.179661 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.014272 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.061838 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.025823 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.043150 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_0" < 1.195055) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_1" < -0.067925) THEN CASE WHEN (t."X_2" < 0.683175) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_6" < 0.128738) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < -1.114724) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.225092 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.404434 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.086049 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.109580 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.012312 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.152712 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.011061 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.052562 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.016463 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.041962 AS "E"
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
    CASE WHEN (t."X_2" < 1.243189) THEN CASE WHEN (t."X_7" < -1.733213) THEN 3 ELSE CASE WHEN (t."X_5" < 0.462846) THEN CASE WHEN (t."X_6" < -0.917510) THEN 9 ELSE CASE WHEN (t."X_1" < 2.459666) THEN CASE WHEN (t."X_3" < -0.247653) THEN 17 ELSE 18 END ELSE 14 END END ELSE CASE WHEN (t."X_1" < -0.660511) THEN CASE WHEN (t."X_1" < -1.450382) THEN 15 ELSE 16 END ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 1.092563) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.191327 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.343767 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.073141 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.093143 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.114600 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.030493 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.001975 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.014787 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.039745 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.000853 AS "E"
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
   31.561600 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"