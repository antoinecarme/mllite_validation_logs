WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "freidman1_sampled" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.828286) THEN CASE WHEN (t."X_1" < 0.515912) THEN CASE WHEN (t."X_2" < 0.823855) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.117604) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  0.098668 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -0.049443 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.424724 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.978475 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.012580 AS "E"
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
    CASE WHEN (t."X_3" < 0.828286) THEN CASE WHEN (t."X_1" < 0.233387) THEN 3 ELSE CASE WHEN (t."X_0" < 0.834709) THEN CASE WHEN (t."X_0" < 0.764610) THEN 9 ELSE 10 END ELSE 8 END END ELSE CASE WHEN (t."X_0" < 0.783459) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.826209 AS "E"
    UNION ALL
    SELECT 5 AS nid,  1.104161 AS "E"
    UNION ALL
    SELECT 6 AS nid,  -0.042027 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.366101 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.078935 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.010693 AS "E"
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
    CASE WHEN (t."X_3" < 0.828286) THEN CASE WHEN (t."X_1" < 0.233387) THEN 3 ELSE CASE WHEN (t."X_0" < 0.834709) THEN CASE WHEN (t."X_6" < 0.576931) THEN CASE WHEN (t."X_0" < 0.368356) THEN 11 ELSE 12 END ELSE 10 END ELSE 8 END END ELSE CASE WHEN (t."X_0" < 0.783459) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.640312 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.855725 AS "E"
    UNION ALL
    SELECT 6 AS nid,  -0.035723 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.292881 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.080093 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.014629 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.009089 AS "E"
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
    CASE WHEN (t."X_3" < 0.828286) THEN CASE WHEN (t."X_1" < 0.515912) THEN CASE WHEN (t."X_7" < 0.843453) THEN 7 ELSE CASE WHEN (t."X_0" < 0.834709) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_0" < 0.368356) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_6" < 0.206877) THEN CASE WHEN (t."X_0" < 0.235384) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.777885 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.493412 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.012435 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.068079 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.159547 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.030364 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.007726 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.110411 AS "E"
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
    CASE WHEN (t."X_3" < 0.828286) THEN CASE WHEN (t."X_1" < 0.515912) THEN CASE WHEN (t."X_7" < 0.843453) THEN 7 ELSE CASE WHEN (t."X_0" < 0.834709) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_0" < 0.368356) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_6" < 0.206877) THEN CASE WHEN (t."X_0" < 0.235384) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.622308 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.374993 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.010569 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.057867 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.135615 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.025810 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.006567 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.093849 AS "E"
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
    CASE WHEN (t."X_3" < 0.828286) THEN CASE WHEN (t."X_1" < 0.233387) THEN 3 ELSE CASE WHEN (t."X_0" < 0.834709) THEN CASE WHEN (t."X_6" < 0.576931) THEN CASE WHEN (t."X_0" < 0.368356) THEN 13 ELSE 14 END ELSE 12 END ELSE 8 END END ELSE CASE WHEN (t."X_6" < 0.206877) THEN CASE WHEN (t."X_0" < 0.235384) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.300850 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.497846 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.127038 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.115273 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.021938 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.049187 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.008984 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.005582 AS "E"
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
    CASE WHEN (t."X_3" < 0.828286) THEN CASE WHEN (t."X_1" < 0.189593) THEN 3 ELSE CASE WHEN (t."X_1" < 0.515912) THEN CASE WHEN (t."X_2" < 0.823855) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 0.368356) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 0.783459) THEN CASE WHEN (t."X_0" < 0.235384) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.274653 AS "E"
    UNION ALL
    SELECT 6 AS nid,  -0.018648 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.097982 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.398277 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.103392 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.004745 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.007636 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.041809 AS "E"
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
    CASE WHEN (t."X_3" < 0.828286) THEN CASE WHEN (t."X_1" < 0.189593) THEN 3 ELSE CASE WHEN (t."X_1" < 0.515912) THEN CASE WHEN (t."X_2" < 0.823855) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 0.368356) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_0" < 0.783459) THEN CASE WHEN (t."X_0" < 0.235384) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.219722 AS "E"
    UNION ALL
    SELECT 6 AS nid,  -0.015850 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.083284 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.318622 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.080129 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.004033 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.006491 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.035538 AS "E"
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
    CASE WHEN (t."X_3" < 0.828286) THEN CASE WHEN (t."X_1" < 0.189593) THEN 3 ELSE CASE WHEN (t."X_1" < 0.515912) THEN CASE WHEN (t."X_2" < 0.823855) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_0" < 0.368356) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < 0.783459) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.175778 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.226569 AS "E"
    UNION ALL
    SELECT 6 AS nid,  -0.013473 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.062100 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.003428 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.005517 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.030207 AS "E"
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
    CASE WHEN (t."X_3" < 0.828286) THEN CASE WHEN (t."X_1" < 0.189593) THEN 3 ELSE CASE WHEN (t."X_1" < 0.515912) THEN CASE WHEN (t."X_2" < 0.823855) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 0.368356) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_6" < 0.206877) THEN CASE WHEN (t."X_0" < 0.235384) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.140622 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.209583 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.036806 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.011452 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.048127 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.002914 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.004690 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.025676 AS "E"
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
    CASE WHEN (t."X_1" < 0.378970) THEN CASE WHEN (t."X_6" < 0.353661) THEN CASE WHEN (t."X_0" < 0.825366) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_2" < 0.380885) THEN 5 ELSE CASE WHEN (t."X_2" < 0.731124) THEN CASE WHEN (t."X_0" < 0.368356) THEN 11 ELSE 12 END ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.108207 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.196610 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.013341 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.002477 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.054000 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.003986 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.016654 AS "E"
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
    CASE WHEN (t."X_3" < 0.828286) THEN CASE WHEN (t."X_1" < 0.189593) THEN 3 ELSE CASE WHEN (t."X_1" < 0.515912) THEN CASE WHEN (t."X_0" < 0.834709) THEN CASE WHEN (t."X_0" < 0.544738) THEN 15 ELSE 16 END ELSE 12 END ELSE CASE WHEN (t."X_0" < 0.368356) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_6" < 0.206877) THEN CASE WHEN (t."X_0" < 0.235384) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.090857 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.142606 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.023185 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.007733 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.030395 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.003388 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.013725 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.008276 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.002105 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_2" < 0.731124) THEN CASE WHEN (t."X_1" < 0.515912) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_0" < 0.783459) THEN 11 ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.073902 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.011666 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.145728 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.019302 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.002880 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.030071 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.001789 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_3" < 0.731889) THEN CASE WHEN (t."X_7" < 0.653572) THEN 9 ELSE CASE WHEN (t."X_2" < 0.731124) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_2" < 0.403483) THEN CASE WHEN (t."X_0" < 0.368356) THEN 15 ELSE 16 END ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.072891 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.009916 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.123869 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.025299 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.024057 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.007227 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.001521 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.002448 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.003678 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_3" < 0.731889) THEN CASE WHEN (t."X_7" < 0.653572) THEN 9 ELSE CASE WHEN (t."X_2" < 0.731124) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_2" < 0.403483) THEN CASE WHEN (t."X_0" < 0.368356) THEN 15 ELSE 16 END ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.061957 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.008429 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.105289 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.020239 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.019245 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.005781 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.001293 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.002081 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.003126 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_3" < 0.731889) THEN CASE WHEN (t."X_6" < 0.353661) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_2" < 0.403483) THEN CASE WHEN (t."X_0" < 0.368356) THEN 13 ELSE 14 END ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.052664 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.007164 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.089495 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.002191 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.014518 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.015396 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.001769 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.002657 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_3" < 0.731889) THEN CASE WHEN (t."X_7" < 0.653572) THEN 9 ELSE CASE WHEN (t."X_2" < 0.731124) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_2" < 0.403483) THEN CASE WHEN (t."X_0" < 0.368356) THEN 15 ELSE 16 END ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.044764 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.006090 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.076071 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.013287 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.012317 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.002954 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000770 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.001503 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.002259 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_3" < 0.731889) THEN CASE WHEN (t."X_7" < 0.653572) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_2" < 0.403483) THEN CASE WHEN (t."X_0" < 0.368356) THEN 13 ELSE 14 END ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.038049 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.005176 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.064660 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.010630 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.002100 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.009853 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.001278 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.001920 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_3" < 0.731889) THEN CASE WHEN (t."X_7" < 0.653572) THEN 9 ELSE CASE WHEN (t."X_2" < 0.731124) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_2" < 0.403483) THEN CASE WHEN (t."X_0" < 0.368356) THEN 15 ELSE 16 END ELSE 12 END END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.032342 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.004400 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.054961 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.008504 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.007883 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.001943 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000340 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.001086 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.001632 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_3" < 0.731889) THEN CASE WHEN (t."X_0" < 0.287599) THEN 9 ELSE CASE WHEN (t."X_2" < 0.823855) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_2" < 0.403483) THEN CASE WHEN (t."X_0" < 0.368356) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < 0.235384) THEN 17 ELSE 18 END END END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.027491 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.003740 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.046717 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.008285 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.002126 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000289 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.000923 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.001387 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.001884 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.007575 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_8" < 0.814980) THEN CASE WHEN (t."X_7" < 0.146070) THEN 9 ELSE CASE WHEN (t."X_0" < 0.368356) THEN 11 ELSE CASE WHEN (t."X_2" < 0.823855) THEN 13 ELSE 14 END END END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.023367 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.003179 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.039710 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.006439 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.007042 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.001591 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.001790 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000245 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_8" < 0.814980) THEN CASE WHEN (t."X_7" < 0.146070) THEN 9 ELSE CASE WHEN (t."X_0" < 0.368356) THEN 11 ELSE CASE WHEN (t."X_0" < 0.544738) THEN 13 ELSE 14 END END END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.019862 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.002702 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.033753 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.005473 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.005986 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.001273 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.000222 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.001355 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_8" < 0.814980) THEN CASE WHEN (t."X_7" < 0.146070) THEN 9 ELSE CASE WHEN (t."X_0" < 0.368356) THEN 11 ELSE CASE WHEN (t."X_2" < 0.823855) THEN 13 ELSE 14 END END END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.016883 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.002297 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.028690 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.004652 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.005088 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.001018 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.001103 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000005 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_8" < 0.814980) THEN CASE WHEN (t."X_7" < 0.146070) THEN 9 ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_0" < 0.235384) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_2" < 0.823855) THEN 15 ELSE 16 END END END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.014350 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.001952 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.024387 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.003954 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.004325 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.001019 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.000119 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.001036 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.000005 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_8" < 0.814980) THEN CASE WHEN (t."X_7" < 0.146070) THEN 9 ELSE CASE WHEN (t."X_0" < 0.368356) THEN CASE WHEN (t."X_0" < 0.235384) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < 0.834709) THEN 15 ELSE 16 END END END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.012198 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.001660 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.020729 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.003361 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.003676 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.000866 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.000185 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.000216 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.000813 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_7" < 0.146070) THEN 7 ELSE CASE WHEN (t."X_4" < 0.553400) THEN CASE WHEN (t."X_7" < 0.653572) THEN 11 ELSE CASE WHEN (t."X_0" < 0.834709) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < 0.235384) THEN 13 ELSE 14 END END END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.010368 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.001411 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.017619 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.003125 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000694 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.000736 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.002857 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.000088 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.000289 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_7" < 0.146070) THEN 7 ELSE CASE WHEN (t."X_4" < 0.553400) THEN CASE WHEN (t."X_0" < 0.834709) THEN CASE WHEN (t."X_1" < 0.378970) THEN 15 ELSE 16 END ELSE 12 END ELSE CASE WHEN (t."X_0" < 0.235384) THEN 13 ELSE 14 END END END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.008813 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.001199 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.014976 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.002656 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000552 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.000626 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.002428 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.000129 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000144 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_7" < 0.146070) THEN 7 ELSE CASE WHEN (t."X_4" < 0.553400) THEN CASE WHEN (t."X_7" < 0.653572) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 0.235384) THEN 13 ELSE 14 END END END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.007491 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.001019 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.012730 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.002257 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000487 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000004 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.000532 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.002064 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_7" < 0.146070) THEN 7 ELSE CASE WHEN (t."X_4" < 0.553400) THEN CASE WHEN (t."X_0" < 0.888102) THEN 11 ELSE 12 END ELSE 10 END END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.006367 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.000866 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.010820 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.001919 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.001471 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000055 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000427 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_8" < 0.814980) THEN CASE WHEN (t."X_7" < 0.146070) THEN 9 ELSE CASE WHEN (t."X_0" < 0.834709) THEN CASE WHEN (t."X_0" < 0.544738) THEN 13 ELSE 14 END ELSE 12 END END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.005412 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.000736 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.009197 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.001534 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.001631 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000344 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.000184 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000071 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_8" < 0.814980) THEN CASE WHEN (t."X_7" < 0.146070) THEN 9 ELSE CASE WHEN (t."X_1" < 0.515912) THEN 11 ELSE 12 END END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.004600 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.000626 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.007818 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.001304 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.001386 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000173 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.000205 AS "E"
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
    CASE WHEN (t."X_8" < 0.894295) THEN CASE WHEN (t."X_8" < 0.865909) THEN CASE WHEN (t."X_7" < 0.146070) THEN 7 ELSE CASE WHEN (t."X_7" < 0.403574) THEN 9 ELSE CASE WHEN (t."X_0" < 0.888102) THEN 11 ELSE 12 END END END ELSE 4 END ELSE CASE WHEN (t."X_1" < 0.757719) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.003910 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.000532 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.006645 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.001178 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.001108 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.000040 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.000285 AS "E"
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
   15.096059 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"