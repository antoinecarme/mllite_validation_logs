WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman2_sampled" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_0" < 17.761709) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 2 AS nid,  109.884895 AS "E"
    UNION ALL
    SELECT 3 AS nid,  -7.577706 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -66.783638 AS "E"
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
    CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_0" < 17.761709) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -6.441051 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -49.252934 AS "E"
    UNION ALL
    SELECT 5 AS nid,  95.400787 AS "E"
    UNION ALL
    SELECT 6 AS nid,  17.979713 AS "E"
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
    CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 643.716797) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_0" < 34.347893) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -39.190758 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -9.068933 AS "E"
    UNION ALL
    SELECT 5 AS nid,  84.687416 AS "E"
    UNION ALL
    SELECT 6 AS nid,  24.081898 AS "E"
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
    CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_2" < 0.726658) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_0" < 34.347893) THEN CASE WHEN (t."X_0" < 13.280704) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -7.255146 AS "E"
    UNION ALL
    SELECT 6 AS nid,  19.265522 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -31.975477 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -5.969522 AS "E"
    UNION ALL
    SELECT 9 AS nid,  20.853159 AS "E"
    UNION ALL
    SELECT 10 AS nid,  80.771736 AS "E"
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
    CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_2" < 0.652046) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_0" < 34.347893) THEN CASE WHEN (t."X_0" < 13.280704) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -5.804120 AS "E"
    UNION ALL
    SELECT 6 AS nid,  15.412421 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -25.979757 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -8.046348 AS "E"
    UNION ALL
    SELECT 9 AS nid,  17.725187 AS "E"
    UNION ALL
    SELECT 10 AS nid,  68.655975 AS "E"
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
    CASE WHEN (t."X_1" < 1002.086060) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_2" < 0.652046) THEN 9 ELSE 10 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_3" < 8.526538) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  6.468778 AS "E"
    UNION ALL
    SELECT 5 AS nid,  18.061695 AS "E"
    UNION ALL
    SELECT 6 AS nid,  58.357582 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -4.643292 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -19.744616 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -6.437082 AS "E"
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
    CASE WHEN (t."X_1" < 1002.086060) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_0" < 17.761709) THEN 7 ELSE CASE WHEN (t."X_0" < 55.118420) THEN CASE WHEN (t."X_1" < 643.716797) THEN 11 ELSE 12 END ELSE 10 END END ELSE 4 END ELSE CASE WHEN (t."X_3" < 8.526538) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  5.498465 AS "E"
    UNION ALL
    SELECT 5 AS nid,  14.449353 AS "E"
    UNION ALL
    SELECT 6 AS nid,  49.603943 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -1.459172 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -4.169849 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -15.593797 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -4.112778 AS "E"
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
    CASE WHEN (t."X_1" < 1002.086060) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_0" < 17.761709) THEN 7 ELSE CASE WHEN (t."X_2" < 0.652046) THEN CASE WHEN (t."X_0" < 55.118420) THEN CASE WHEN (t."X_1" < 643.716797) THEN 13 ELSE 14 END ELSE 12 END ELSE 10 END END ELSE 4 END ELSE CASE WHEN (t."X_3" < 8.526538) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  4.673694 AS "E"
    UNION ALL
    SELECT 5 AS nid,  11.559485 AS "E"
    UNION ALL
    SELECT 6 AS nid,  42.163349 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -1.240297 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -3.173299 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -2.727722 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -13.572183 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -3.495863 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_0" < 17.761709) THEN 7 ELSE CASE WHEN (t."X_2" < 0.652046) THEN CASE WHEN (t."X_0" < 50.992905) THEN 11 ELSE 12 END ELSE 10 END END ELSE 4 END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  6.258790 AS "E"
    UNION ALL
    SELECT 5 AS nid,  8.455830 AS "E"
    UNION ALL
    SELECT 6 AS nid,  35.838852 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -1.054253 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -2.538640 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -11.419429 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -4.598894 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_0" < 17.761709) THEN 7 ELSE CASE WHEN (t."X_2" < 0.652046) THEN CASE WHEN (t."X_1" < 473.447937) THEN 11 ELSE 12 END ELSE 10 END END ELSE 4 END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  5.007031 AS "E"
    UNION ALL
    SELECT 5 AS nid,  7.187458 AS "E"
    UNION ALL
    SELECT 6 AS nid,  30.463020 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.896114 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -2.030913 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -9.135544 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -3.564143 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_0" < 55.118420) THEN CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_2" < 0.652046) THEN 11 ELSE 12 END ELSE 10 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  4.005628 AS "E"
    UNION ALL
    SELECT 5 AS nid,  6.109342 AS "E"
    UNION ALL
    SELECT 6 AS nid,  25.893568 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -1.472520 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -1.672482 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -6.822969 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -1.322422 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_0" < 17.761709) THEN 7 ELSE CASE WHEN (t."X_0" < 55.118420) THEN CASE WHEN (t."X_2" < 0.652046) THEN CASE WHEN (t."X_0" < 50.992905) THEN 13 ELSE 14 END ELSE 12 END ELSE 10 END END ELSE 4 END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  3.204505 AS "E"
    UNION ALL
    SELECT 5 AS nid,  5.192945 AS "E"
    UNION ALL
    SELECT 6 AS nid,  22.009535 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.510823 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -1.178017 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -1.124059 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -5.943841 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -2.103997 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_2" < 0.155164) THEN 7 ELSE CASE WHEN (t."X_0" < 17.761709) THEN 9 ELSE CASE WHEN (t."X_0" < 55.118420) THEN 11 ELSE 12 END END END ELSE 4 END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  2.563599 AS "E"
    UNION ALL
    SELECT 5 AS nid,  4.414005 AS "E"
    UNION ALL
    SELECT 6 AS nid,  18.708107 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -4.596837 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.434198 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -2.406407 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.942412 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_2" < 0.155164) THEN 7 ELSE CASE WHEN (t."X_0" < 17.761709) THEN 9 ELSE 10 END END ELSE 4 END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  2.050879 AS "E"
    UNION ALL
    SELECT 5 AS nid,  3.751904 AS "E"
    UNION ALL
    SELECT 6 AS nid,  15.901887 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -3.907311 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.369067 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -1.629448 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_2" < 0.155164) THEN 7 ELSE CASE WHEN (t."X_1" < 205.928116) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  3.189121 AS "E"
    UNION ALL
    SELECT 6 AS nid,  13.516608 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -3.321215 AS "E"
    UNION ALL
    SELECT 9 AS nid,  1.951978 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.509070 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -1.930394 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.748535 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_2" < 0.155164) THEN 7 ELSE CASE WHEN (t."X_1" < 205.928116) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  2.710748 AS "E"
    UNION ALL
    SELECT 6 AS nid,  11.489118 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -2.823033 AS "E"
    UNION ALL
    SELECT 9 AS nid,  1.659183 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.432706 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -1.640834 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.556054 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_2" < 0.155164) THEN 7 ELSE CASE WHEN (t."X_1" < 205.928116) THEN 11 ELSE CASE WHEN (t."X_3" < 5.897069) THEN 13 ELSE CASE WHEN (t."X_1" < 423.498322) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  2.304135 AS "E"
    UNION ALL
    SELECT 6 AS nid,  9.765747 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -2.399577 AS "E"
    UNION ALL
    SELECT 9 AS nid,  1.410306 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.367804 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -1.394710 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.155382 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.193337 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.615106 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_2" < 0.155164) THEN 7 ELSE CASE WHEN (t."X_1" < 205.928116) THEN 11 ELSE CASE WHEN (t."X_3" < 5.897069) THEN 13 ELSE CASE WHEN (t."X_1" < 423.498322) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  1.958514 AS "E"
    UNION ALL
    SELECT 6 AS nid,  8.300885 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -2.039641 AS "E"
    UNION ALL
    SELECT 9 AS nid,  1.198764 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.312634 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -1.185504 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.124304 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.154668 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.492085 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_2" < 0.155164) THEN 7 ELSE CASE WHEN (t."X_1" < 205.928116) THEN 11 ELSE CASE WHEN (t."X_3" < 5.897069) THEN 13 ELSE CASE WHEN (t."X_1" < 423.498322) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  1.664740 AS "E"
    UNION ALL
    SELECT 6 AS nid,  7.055750 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -1.733695 AS "E"
    UNION ALL
    SELECT 9 AS nid,  1.018945 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.265741 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -1.007679 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.099445 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.123735 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.393668 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_2" < 0.155164) THEN 7 ELSE CASE WHEN (t."X_1" < 205.928116) THEN 11 ELSE CASE WHEN (t."X_3" < 5.897069) THEN 13 ELSE CASE WHEN (t."X_1" < 423.498322) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  1.415030 AS "E"
    UNION ALL
    SELECT 6 AS nid,  5.997382 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -1.473640 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.866107 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.225879 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.856527 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.079555 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.098988 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.314935 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_2" < 0.155164) THEN 7 ELSE CASE WHEN (t."X_1" < 205.928116) THEN 11 ELSE CASE WHEN (t."X_2" < 0.233546) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  1.202774 AS "E"
    UNION ALL
    SELECT 6 AS nid,  5.097766 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -1.252594 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.736194 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.191995 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.728048 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.270804 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.107123 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_0" < 55.118420) THEN CASE WHEN (t."X_1" < 473.447937) THEN CASE WHEN (t."X_2" < 0.652046) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_1" < 643.716797) THEN 9 ELSE CASE WHEN (t."X_0" < 63.010204) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  1.022360 AS "E"
    UNION ALL
    SELECT 6 AS nid,  4.333099 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.042755 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -1.122364 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.052707 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.033142 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.214155 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.625763 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.163193 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_2" < 0.155164) THEN 7 ELSE CASE WHEN (t."X_1" < 205.928116) THEN 11 ELSE CASE WHEN (t."X_2" < 0.233546) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.869009 AS "E"
    UNION ALL
    SELECT 6 AS nid,  3.683130 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.896351 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.531894 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.138712 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.450486 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.198059 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.061068 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_0" < 55.118420) THEN CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_2" < 0.652046) THEN CASE WHEN (t."X_0" < 50.992905) THEN 15 ELSE 16 END ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_1" < 643.716797) THEN 9 ELSE CASE WHEN (t."X_0" < 63.010204) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.738657 AS "E"
    UNION ALL
    SELECT 6 AS nid,  3.130664 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.045851 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.021991 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.035641 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.452106 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.117902 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.763208 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.168351 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_2" < 0.155164) THEN 7 ELSE CASE WHEN (t."X_1" < 205.928116) THEN 11 ELSE CASE WHEN (t."X_2" < 0.233546) THEN 13 ELSE CASE WHEN (t."X_3" < 5.897069) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.627860 AS "E"
    UNION ALL
    SELECT 6 AS nid,  2.661072 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.647417 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.384293 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.100214 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.268433 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.143098 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.015634 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.044128 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_0" < 55.118420) THEN CASE WHEN (t."X_2" < 0.155164) THEN 7 ELSE CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_2" < 0.652046) THEN 15 ELSE 16 END ELSE 12 END END ELSE CASE WHEN (t."X_1" < 643.716797) THEN 9 ELSE CASE WHEN (t."X_0" < 63.010204) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.533679 AS "E"
    UNION ALL
    SELECT 6 AS nid,  2.261920 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.550305 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.011617 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.030707 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.326651 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.085181 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.233201 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.023676 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_2" < 0.155164) THEN 7 ELSE CASE WHEN (t."X_1" < 205.928116) THEN 11 ELSE CASE WHEN (t."X_2" < 0.233546) THEN 13 ELSE CASE WHEN (t."X_3" < 5.897069) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.453626 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.922626 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.467759 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.277652 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.072400 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.193188 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.086654 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.008276 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.029250 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_0" < 55.118420) THEN CASE WHEN (t."X_2" < 0.155164) THEN 7 ELSE CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_2" < 0.652046) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < 17.761709) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < 643.716797) THEN 9 ELSE CASE WHEN (t."X_0" < 63.010204) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.385584 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.634235 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.397595 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.005542 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.236005 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.061542 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.158576 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.015736 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.003946 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.027276 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_0" < 55.118420) THEN CASE WHEN (t."X_2" < 0.155164) THEN 7 ELSE CASE WHEN (t."X_1" < 205.928116) THEN 11 ELSE CASE WHEN (t."X_0" < 17.761709) THEN 15 ELSE CASE WHEN (t."X_0" < 50.992905) THEN 17 ELSE 18 END END END END ELSE CASE WHEN (t."X_1" < 643.716797) THEN 9 ELSE CASE WHEN (t."X_0" < 63.010204) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.327750 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.389093 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.337956 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.004434 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.140422 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.200601 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.052313 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.003355 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.013376 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.048701 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_0" < 55.118420) THEN CASE WHEN (t."X_2" < 0.155164) THEN 7 ELSE CASE WHEN (t."X_1" < 205.928116) THEN 11 ELSE CASE WHEN (t."X_0" < 17.761709) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < 643.716797) THEN CASE WHEN (t."X_0" < 67.667091) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  0.278586 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.180737 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.287263 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.119360 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.000829 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.004491 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.170508 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.044467 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.002852 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.034905 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_2" < 0.155164) THEN 3 ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 205.928116) THEN 9 ELSE CASE WHEN (t."X_2" < 0.233546) THEN 13 ELSE CASE WHEN (t."X_2" < 0.726658) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.244173 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.236801 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.003619 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.101455 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.144928 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.037793 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.037328 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.009207 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.000705 AS "E"
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
    CASE WHEN (t."X_1" < 1112.226562) THEN CASE WHEN (t."X_2" < 0.155164) THEN 3 ELSE CASE WHEN (t."X_1" < 938.672607) THEN CASE WHEN (t."X_1" < 205.928116) THEN 9 ELSE CASE WHEN (t."X_2" < 0.233546) THEN 13 ELSE CASE WHEN (t."X_2" < 0.726658) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_0" < 63.010204) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 13.280704) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.207547 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.201279 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.853070 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.086237 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.123184 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.032126 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.031729 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.006997 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.000600 AS "E"
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
   386.037323 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"