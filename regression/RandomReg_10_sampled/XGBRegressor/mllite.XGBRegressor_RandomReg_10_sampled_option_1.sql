WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_0" < 0.316403) THEN CASE WHEN (t."X_6" < -0.101445) THEN CASE WHEN (t."X_2" < 0.079805) THEN CASE WHEN (t."X_1" < -0.554347) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_1" < -0.554347) THEN 17 ELSE CASE WHEN (t."X_3" < -0.006026) THEN 25 ELSE CASE WHEN (t."X_4" < -0.888636) THEN 31 ELSE 32 END END END END ELSE CASE WHEN (t."X_4" < 0.511942) THEN CASE WHEN (t."X_8" < -0.697196) THEN 19 ELSE CASE WHEN (t."X_1" < 0.812617) THEN 27 ELSE 28 END END ELSE CASE WHEN (t."X_1" < -0.005918) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_6" < -0.307631) THEN CASE WHEN (t."X_0" < 0.942791) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_2" < -1.004811) THEN 13 ELSE CASE WHEN (t."X_8" < -0.697196) THEN 23 ELSE CASE WHEN (t."X_1" < -0.554347) THEN 29 ELSE CASE WHEN (t."X_2" < -0.174185) THEN 33 ELSE 34 END END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 11 AS nid,  -14.441207 AS "E"
    UNION ALL
    SELECT 12 AS nid,  22.373766 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -1.210001 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -76.549225 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -41.813011 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -37.205925 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.842385 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -30.364138 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.915917 AS "E"
    UNION ALL
    SELECT 23 AS nid,  23.727791 AS "E"
    UNION ALL
    SELECT 25 AS nid,  -22.251762 AS "E"
    UNION ALL
    SELECT 27 AS nid,  14.224523 AS "E"
    UNION ALL
    SELECT 28 AS nid,  34.903980 AS "E"
    UNION ALL
    SELECT 29 AS nid,  25.799004 AS "E"
    UNION ALL
    SELECT 31 AS nid,  7.410019 AS "E"
    UNION ALL
    SELECT 32 AS nid,  -7.399949 AS "E"
    UNION ALL
    SELECT 33 AS nid,  40.110600 AS "E"
    UNION ALL
    SELECT 34 AS nid,  71.307457 AS "E"
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
    CASE WHEN (t."X_0" < 0.031861) THEN CASE WHEN (t."X_6" < -0.101445) THEN CASE WHEN (t."X_2" < 0.267929) THEN CASE WHEN (t."X_7" < 0.261961) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < -0.507328) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_2" < 0.563936) THEN CASE WHEN (t."X_1" < 0.486421) THEN CASE WHEN (t."X_8" < -0.697196) THEN 27 ELSE 28 END ELSE 20 END ELSE CASE WHEN (t."X_9" < -0.089773) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_6" < -0.307631) THEN CASE WHEN (t."X_0" < 0.942791) THEN CASE WHEN (t."X_2" < 0.079805) THEN 23 ELSE 24 END ELSE 12 END ELSE CASE WHEN (t."X_2" < -1.004811) THEN 13 ELSE CASE WHEN (t."X_6" < 1.359676) THEN CASE WHEN (t."X_5" < -1.020888) THEN 29 ELSE CASE WHEN (t."X_1" < -0.885393) THEN 31 ELSE 32 END END ELSE 26 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 12 AS nid,  16.407427 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -4.764234 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -48.519020 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -21.663940 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -23.013710 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.048507 AS "E"
    UNION ALL
    SELECT 20 AS nid,  10.694239 AS "E"
    UNION ALL
    SELECT 21 AS nid,  4.694026 AS "E"
    UNION ALL
    SELECT 22 AS nid,  27.114252 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -24.852512 AS "E"
    UNION ALL
    SELECT 24 AS nid,  4.959737 AS "E"
    UNION ALL
    SELECT 26 AS nid,  55.980289 AS "E"
    UNION ALL
    SELECT 27 AS nid,  -29.525213 AS "E"
    UNION ALL
    SELECT 28 AS nid,  -14.873572 AS "E"
    UNION ALL
    SELECT 29 AS nid,  0.179382 AS "E"
    UNION ALL
    SELECT 31 AS nid,  15.313483 AS "E"
    UNION ALL
    SELECT 32 AS nid,  33.595699 AS "E"
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
    CASE WHEN (t."X_0" < 0.316403) THEN CASE WHEN (t."X_0" < -1.347752) THEN CASE WHEN (t."X_1" < -0.005918) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_6" < 0.468882) THEN CASE WHEN (t."X_2" < 0.267929) THEN CASE WHEN (t."X_6" < -0.551305) THEN CASE WHEN (t."X_2" < -0.174185) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_7" < -0.268477) THEN 35 ELSE 36 END END ELSE CASE WHEN (t."X_5" < 0.214696) THEN CASE WHEN (t."X_3" < 0.398819) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_6" < -0.551305) THEN 39 ELSE 40 END END END ELSE CASE WHEN (t."X_6" < 1.359676) THEN CASE WHEN (t."X_3" < -0.977647) THEN 27 ELSE 28 END ELSE 18 END END END ELSE CASE WHEN (t."X_0" < 1.254984) THEN CASE WHEN (t."X_2" < 0.563936) THEN CASE WHEN (t."X_6" < -0.101445) THEN CASE WHEN (t."X_2" < -0.468737) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_7" < -0.491267) THEN 31 ELSE 32 END END ELSE CASE WHEN (t."X_4" < 0.019008) THEN 21 ELSE 22 END END ELSE CASE WHEN (t."X_5" < -0.047720) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  -45.757767 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -9.781006 AS "E"
    UNION ALL
    SELECT 13 AS nid,  12.708705 AS "E"
    UNION ALL
    SELECT 14 AS nid,  36.863262 AS "E"
    UNION ALL
    SELECT 18 AS nid,  21.387379 AS "E"
    UNION ALL
    SELECT 21 AS nid,  15.891450 AS "E"
    UNION ALL
    SELECT 22 AS nid,  40.519012 AS "E"
    UNION ALL
    SELECT 27 AS nid,  -6.208985 AS "E"
    UNION ALL
    SELECT 28 AS nid,  10.469002 AS "E"
    UNION ALL
    SELECT 29 AS nid,  -21.421421 AS "E"
    UNION ALL
    SELECT 30 AS nid,  0.702299 AS "E"
    UNION ALL
    SELECT 31 AS nid,  -5.027975 AS "E"
    UNION ALL
    SELECT 32 AS nid,  14.751750 AS "E"
    UNION ALL
    SELECT 33 AS nid,  -34.413078 AS "E"
    UNION ALL
    SELECT 34 AS nid,  -15.372327 AS "E"
    UNION ALL
    SELECT 35 AS nid,  -22.451746 AS "E"
    UNION ALL
    SELECT 36 AS nid,  -4.052518 AS "E"
    UNION ALL
    SELECT 37 AS nid,  -17.432642 AS "E"
    UNION ALL
    SELECT 38 AS nid,  -2.087106 AS "E"
    UNION ALL
    SELECT 39 AS nid,  -3.385319 AS "E"
    UNION ALL
    SELECT 40 AS nid,  10.424043 AS "E"
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
    CASE WHEN (t."X_0" < 0.493729) THEN CASE WHEN (t."X_6" < -0.101445) THEN CASE WHEN (t."X_2" < -0.468737) THEN CASE WHEN (t."X_3" < -0.296571) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < -0.885169) THEN CASE WHEN (t."X_1" < -0.554347) THEN 25 ELSE 26 END ELSE CASE WHEN (t."X_6" < -0.917510) THEN 27 ELSE CASE WHEN (t."X_5" < -0.047720) THEN 35 ELSE 36 END END END END ELSE CASE WHEN (t."X_1" < 0.812617) THEN CASE WHEN (t."X_2" < 0.563936) THEN CASE WHEN (t."X_8" < -1.081071) THEN 29 ELSE CASE WHEN (t."X_1" < -0.317365) THEN 37 ELSE 38 END END ELSE CASE WHEN (t."X_3" < 0.222732) THEN 31 ELSE 32 END END ELSE CASE WHEN (t."X_6" < 0.937034) THEN 19 ELSE 20 END END END ELSE CASE WHEN (t."X_6" < -1.256169) THEN 5 ELSE CASE WHEN (t."X_0" < 1.254984) THEN CASE WHEN (t."X_2" < 0.563936) THEN CASE WHEN (t."X_6" < 0.468882) THEN 33 ELSE 34 END ELSE 22 END ELSE CASE WHEN (t."X_4" < -0.175369) THEN 23 ELSE 24 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  -4.106908 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -16.929474 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -34.277386 AS "E"
    UNION ALL
    SELECT 19 AS nid,  9.120774 AS "E"
    UNION ALL
    SELECT 20 AS nid,  21.984928 AS "E"
    UNION ALL
    SELECT 22 AS nid,  21.562916 AS "E"
    UNION ALL
    SELECT 23 AS nid,  14.216156 AS "E"
    UNION ALL
    SELECT 24 AS nid,  36.345287 AS "E"
    UNION ALL
    SELECT 25 AS nid,  -24.731806 AS "E"
    UNION ALL
    SELECT 26 AS nid,  -11.643630 AS "E"
    UNION ALL
    SELECT 27 AS nid,  -11.968583 AS "E"
    UNION ALL
    SELECT 29 AS nid,  -20.552706 AS "E"
    UNION ALL
    SELECT 31 AS nid,  2.668091 AS "E"
    UNION ALL
    SELECT 32 AS nid,  16.692099 AS "E"
    UNION ALL
    SELECT 33 AS nid,  0.139397 AS "E"
    UNION ALL
    SELECT 34 AS nid,  11.508319 AS "E"
    UNION ALL
    SELECT 35 AS nid,  -3.851453 AS "E"
    UNION ALL
    SELECT 36 AS nid,  7.624974 AS "E"
    UNION ALL
    SELECT 37 AS nid,  -11.755803 AS "E"
    UNION ALL
    SELECT 38 AS nid,  5.209085 AS "E"
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
    CASE WHEN (t."X_0" < -0.885169) THEN CASE WHEN (t."X_1" < -0.005918) THEN CASE WHEN (t."X_0" < -1.347752) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_2" < 0.563936) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_6" < 1.359676) THEN CASE WHEN (t."X_0" < 0.493729) THEN CASE WHEN (t."X_7" < -1.147983) THEN 15 ELSE CASE WHEN (t."X_6" < -1.256169) THEN 19 ELSE CASE WHEN (t."X_7" < 0.008158) THEN 23 ELSE 24 END END END ELSE CASE WHEN (t."X_1" < -0.885393) THEN 17 ELSE CASE WHEN (t."X_2" < -0.174185) THEN CASE WHEN (t."X_8" < -0.383287) THEN 25 ELSE 26 END ELSE CASE WHEN (t."X_1" < 0.260716) THEN 27 ELSE 28 END END END END ELSE CASE WHEN (t."X_2" < -0.468737) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  -28.334047 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -13.582625 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -10.079417 AS "E"
    UNION ALL
    SELECT 10 AS nid,  3.282383 AS "E"
    UNION ALL
    SELECT 13 AS nid,  9.585502 AS "E"
    UNION ALL
    SELECT 14 AS nid,  35.038715 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -18.740337 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -4.737909 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -16.119957 AS "E"
    UNION ALL
    SELECT 23 AS nid,  -3.352822 AS "E"
    UNION ALL
    SELECT 24 AS nid,  6.384099 AS "E"
    UNION ALL
    SELECT 25 AS nid,  1.503153 AS "E"
    UNION ALL
    SELECT 26 AS nid,  8.414144 AS "E"
    UNION ALL
    SELECT 27 AS nid,  19.249540 AS "E"
    UNION ALL
    SELECT 28 AS nid,  6.326532 AS "E"
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
   -0.557551 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"