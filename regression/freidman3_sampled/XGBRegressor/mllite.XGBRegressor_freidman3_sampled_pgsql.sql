WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_3" < 9.374556) THEN CASE WHEN (t."X_2" < 0.652046) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < 22.605108) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_2" < 0.343817) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.003521 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.052844 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.075146 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.011123 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.005795 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.005157 AS "E"
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
    CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_3" < 9.374556) THEN CASE WHEN (t."X_2" < 0.652046) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < 22.605108) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_2" < 0.343817) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.002993 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.039633 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.058238 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.009454 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.004926 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.004383 AS "E"
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
    CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_3" < 9.374556) THEN CASE WHEN (t."X_2" < 0.652046) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < 22.605108) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_2" < 0.343817) THEN 5 ELSE CASE WHEN (t."X_0" < 63.010204) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.002544 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.045135 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.008036 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.004187 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.003726 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.032104 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.008914 AS "E"
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
    CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_3" < 9.374556) THEN CASE WHEN (t."X_2" < 0.652046) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < 22.605108) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_2" < 0.343817) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.002163 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.022858 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.034979 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.006831 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.003559 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.003167 AS "E"
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
    CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_3" < 9.374556) THEN CASE WHEN (t."X_2" < 0.652046) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < 22.605108) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 34.347893) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.020714 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.005920 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.027109 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.005806 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.003025 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.002692 AS "E"
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
    CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_3" < 9.374556) THEN CASE WHEN (t."X_2" < 0.652046) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < 22.605108) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 34.347893) THEN 5 ELSE CASE WHEN (t."X_0" < 52.067585) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.016054 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.021010 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.004935 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.002571 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.002288 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.000950 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.005484 AS "E"
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
    CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_3" < 9.374556) THEN CASE WHEN (t."X_0" < 50.992905) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < 22.605108) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 34.347893) THEN 5 ELSE CASE WHEN (t."X_0" < 52.067585) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.012442 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.021075 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.007842 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.002186 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.001945 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.000808 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.004387 AS "E"
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
    CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_1" < 205.928116) THEN 3 ELSE CASE WHEN (t."X_1" < 221.354385) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_0" < 34.347893) THEN 5 ELSE CASE WHEN (t."X_0" < 52.067585) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.017914 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.009642 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.001653 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.005605 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.000686 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.003510 AS "E"
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
    CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_1" < 205.928116) THEN 3 ELSE CASE WHEN (t."X_1" < 221.354385) THEN 7 ELSE CASE WHEN (t."X_0" < 22.605108) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_1" < 1002.086060) THEN CASE WHEN (t."X_2" < 0.343817) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.015227 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.007742 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.001405 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.000583 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.002449 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.001017 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.004817 AS "E"
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
    CASE WHEN (t."X_3" < 4.570618) THEN CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_1" < 221.354385) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_2" < 0.343817) THEN 11 ELSE 12 END ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.012943 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.003172 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.001194 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.002579 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.006802 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.000496 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.002368 AS "E"
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
    CASE WHEN (t."X_3" < 4.570618) THEN CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_1" < 221.354385) THEN 7 ELSE CASE WHEN (t."X_0" < 22.605108) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_0" < 34.347893) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.011001 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.002696 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.001015 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.004930 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.001197 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000478 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.002347 AS "E"
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
    CASE WHEN (t."X_3" < 4.570618) THEN CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 1002.086060) THEN CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_0" < 22.605108) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_2" < 0.726658) THEN CASE WHEN (t."X_0" < 50.992905) THEN 13 ELSE 14 END ELSE 12 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.009351 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.002291 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.003973 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.000406 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.002100 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000716 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.001214 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.000395 AS "E"
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
    CASE WHEN (t."X_3" < 4.570618) THEN CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_0" < 22.605108) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_2" < 0.731124) THEN CASE WHEN (t."X_2" < 0.343817) THEN 13 ELSE 14 END ELSE 12 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.007948 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.001948 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.003661 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.000345 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.001785 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000609 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.000183 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.000966 AS "E"
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
    CASE WHEN (t."X_3" < 4.570618) THEN CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_0" < 22.605108) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_2" < 0.731124) THEN CASE WHEN (t."X_0" < 63.010204) THEN CASE WHEN (t."X_2" < 0.343817) THEN 15 ELSE 16 END ELSE 14 END ELSE 12 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.006756 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.001656 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.002929 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.000293 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.001517 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000518 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.000147 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.000155 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000844 AS "E"
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
    CASE WHEN (t."X_3" < 4.570618) THEN CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_0" < 22.605108) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_2" < 0.731124) THEN 11 ELSE 12 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.005743 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.001407 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.002343 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.000249 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.001290 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.000522 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000440 AS "E"
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
    CASE WHEN (t."X_3" < 4.570618) THEN CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_0" < 22.605108) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_0" < 63.010204) THEN CASE WHEN (t."X_2" < 0.343817) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < 67.667091) THEN 15 ELSE 16 END END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.004881 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.001196 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.001874 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.000212 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.001096 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.000054 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.000537 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.000374 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000047 AS "E"
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
    CASE WHEN (t."X_3" < 4.570618) THEN CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_0" < 22.605108) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 13 ELSE CASE WHEN (t."X_0" < 67.667091) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.004149 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.001017 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.001821 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.000429 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000180 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000932 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.000351 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.000318 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000040 AS "E"
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
    CASE WHEN (t."X_3" < 4.570618) THEN CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_2" < 0.233546) THEN CASE WHEN (t."X_0" < 22.605108) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 63.010204) THEN CASE WHEN (t."X_2" < 0.343817) THEN 15 ELSE 16 END ELSE 14 END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.003527 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.000864 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.001548 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.000364 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000153 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000792 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000158 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.000007 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000337 AS "E"
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
    CASE WHEN (t."X_3" < 4.570618) THEN CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_2" < 0.233546) THEN 7 ELSE CASE WHEN (t."X_0" < 63.010204) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.002998 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.000735 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.000536 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.001315 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.000310 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.000207 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000126 AS "E"
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
    CASE WHEN (t."X_3" < 4.570618) THEN CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_0" < 50.992905) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.002548 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.000624 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.000141 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.001118 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.000263 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.000044 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000547 AS "E"
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
    CASE WHEN (t."X_3" < 4.570618) THEN CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_2" < 0.343817) THEN CASE WHEN (t."X_0" < 52.067585) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 11 ELSE 12 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.002166 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.000531 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.000783 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.000076 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.000511 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.000190 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000060 AS "E"
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
    CASE WHEN (t."X_3" < 4.570618) THEN CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_0" < 17.761709) THEN CASE WHEN (t."X_0" < 13.280704) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_2" < 0.343817) THEN CASE WHEN (t."X_0" < 52.067585) THEN 11 ELSE 12 END ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.001841 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.000451 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.000833 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.000162 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.000056 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000061 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000434 AS "E"
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
    CASE WHEN (t."X_3" < 4.570618) THEN CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.001565 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.000383 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.000564 AS "E"
    UNION ALL
    SELECT 6 AS nid,  -0.000070 AS "E"
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
    CASE WHEN (t."X_3" < 4.570618) THEN CASE WHEN (t."X_0" < 50.992905) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE CASE WHEN (t."X_0" < 52.067585) THEN 7 ELSE CASE WHEN (t."X_1" < 643.716797) THEN 9 ELSE 10 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.001330 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.000326 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.000624 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.000064 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.000329 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.000081 AS "E"
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
    CASE WHEN (t."X_3" < 4.570618) THEN 1 ELSE CASE WHEN (t."X_0" < 13.280704) THEN 3 ELSE 4 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -0.000938 AS "E"
    UNION ALL
    SELECT 3 AS nid,  0.000530 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.000031 AS "E"
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
    CASE WHEN (t."X_1" < 205.928116) THEN 1 ELSE CASE WHEN (t."X_1" < 1112.226562) THEN 3 ELSE 4 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -0.000990 AS "E"
    UNION ALL
    SELECT 3 AS nid,  -0.000070 AS "E"
    UNION ALL
    SELECT 4 AS nid,  0.000369 AS "E"
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
    CASE WHEN (t."X_1" < 205.928116) THEN 1 ELSE CASE WHEN (t."X_0" < 52.067585) THEN 3 ELSE CASE WHEN (t."X_1" < 643.716797) THEN 5 ELSE 6 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -0.000841 AS "E"
    UNION ALL
    SELECT 3 AS nid,  0.000157 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -0.000245 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.000085 AS "E"
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
    CASE WHEN (t."X_1" < 205.928116) THEN 1 ELSE CASE WHEN (t."X_1" < 1112.226562) THEN 3 ELSE 4 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -0.000715 AS "E"
    UNION ALL
    SELECT 3 AS nid,  -0.000053 AS "E"
    UNION ALL
    SELECT 4 AS nid,  0.000264 AS "E"
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
    CASE WHEN (t."X_1" < 205.928116) THEN 1 ELSE CASE WHEN (t."X_0" < 52.067585) THEN 3 ELSE 4 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -0.000608 AS "E"
    UNION ALL
    SELECT 3 AS nid,  0.000103 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.000079 AS "E"
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
    CASE WHEN (t."X_2" < 0.652046) THEN CASE WHEN (t."X_0" < 22.605108) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 2 AS nid,  0.000135 AS "E"
    UNION ALL
    SELECT 3 AS nid,  -0.000016 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.000350 AS "E"
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
    CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_1" < 205.928116) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 2 AS nid,  0.000107 AS "E"
    UNION ALL
    SELECT 3 AS nid,  -0.000464 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.000082 AS "E"
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
    CASE WHEN (t."X_3" < 3.411072) THEN 1 ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  -0.000395 AS "E"
    UNION ALL
    SELECT 2 AS nid,  0.000016 AS "E"
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
   1.308779 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"