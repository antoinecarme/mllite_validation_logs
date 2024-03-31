WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_5" < 0.026367) THEN CASE WHEN (t."X_5" < -0.761259) THEN CASE WHEN (t."X_4" < 0.633071) THEN CASE WHEN (t."X_2" < -0.813633) THEN 13 ELSE CASE WHEN (t."X_3" < 0.028590) THEN 21 ELSE 22 END END ELSE 8 END ELSE CASE WHEN (t."X_2" < -0.485268) THEN 9 ELSE CASE WHEN (t."X_0" < 0.648423) THEN CASE WHEN (t."X_6" < -0.125965) THEN 23 ELSE CASE WHEN (t."X_0" < -0.714298) THEN 27 ELSE 28 END END ELSE 16 END END END ELSE CASE WHEN (t."X_6" < -0.125965) THEN 5 ELSE CASE WHEN (t."X_5" < 0.415792) THEN CASE WHEN (t."X_4" < 0.940039) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 1.598236) THEN CASE WHEN (t."X_9" < -1.199707) THEN 25 ELSE 26 END ELSE 20 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  0.047897 AS "P_0", -0.047897 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.279258 AS "P_0", -0.279258 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.238903 AS "P_0", -0.238903 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.255976 AS "P_0", -0.255976 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.195385 AS "P_0", 0.195385 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.184279 AS "P_0", -0.184279 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.209346 AS "P_0", 0.209346 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.055800 AS "P_0", 0.055800 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.133645 AS "P_0", -0.133645 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.175840 AS "P_0", 0.175840 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.175840 AS "P_0", 0.175840 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.055800 AS "P_0", 0.055800 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.255105 AS "P_0", 0.255105 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.047897 AS "P_0", -0.047897 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.238903 AS "P_0", -0.238903 AS "P_1"
  ) AS "Values")
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_5" < 0.026367) THEN CASE WHEN (t."X_3" < -0.766536) THEN CASE WHEN (t."X_6" < -0.372289) THEN CASE WHEN (t."X_9" < 0.011059) THEN 13 ELSE 14 END ELSE 8 END ELSE CASE WHEN (t."X_1" < 0.263870) THEN CASE WHEN (t."X_1" < 0.043356) THEN CASE WHEN (t."X_4" < 0.633071) THEN CASE WHEN (t."X_0" < -0.714298) THEN 25 ELSE 26 END ELSE 22 END ELSE 16 END ELSE 10 END END ELSE CASE WHEN (t."X_5" < 1.089994) THEN CASE WHEN (t."X_4" < 0.940039) THEN CASE WHEN (t."X_2" < 0.201192) THEN CASE WHEN (t."X_6" < -0.125965) THEN 23 ELSE CASE WHEN (t."X_3" < 0.476120) THEN 27 ELSE 28 END END ELSE 18 END ELSE CASE WHEN (t."X_3" < 0.309242) THEN 19 ELSE 20 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 6 AS nid,  -0.222753 AS "P_0", 0.222753 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.114724 AS "P_0", 0.114724 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.221748 AS "P_0", -0.221748 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.170438 AS "P_0", -0.170438 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.026289 AS "P_0", -0.026289 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.095038 AS "P_0", 0.095038 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.234125 AS "P_0", -0.234125 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.207242 AS "P_0", 0.207242 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.028446 AS "P_0", 0.028446 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.209595 AS "P_0", -0.209595 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.037633 AS "P_0", -0.037633 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.203361 AS "P_0", -0.203361 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.051284 AS "P_0", 0.051284 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.190280 AS "P_0", 0.190280 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.038306 AS "P_0", 0.038306 AS "P_1"
  ) AS "Values")
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_5" < 0.026367) THEN CASE WHEN (t."X_5" < -0.761259) THEN CASE WHEN (t."X_7" < 1.147776) THEN CASE WHEN (t."X_1" < -1.064963) THEN 13 ELSE 14 END ELSE 8 END ELSE CASE WHEN (t."X_2" < -0.485268) THEN 9 ELSE CASE WHEN (t."X_6" < -0.125965) THEN 15 ELSE CASE WHEN (t."X_0" < 0.648423) THEN CASE WHEN (t."X_1" < -0.196737) THEN 25 ELSE 26 END ELSE 22 END END END END ELSE CASE WHEN (t."X_5" < 1.089994) THEN CASE WHEN (t."X_4" < 0.940039) THEN CASE WHEN (t."X_2" < -0.046821) THEN CASE WHEN (t."X_6" < -0.125965) THEN 23 ELSE 24 END ELSE 18 END ELSE CASE WHEN (t."X_1" < 0.043356) THEN 19 ELSE 20 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 6 AS nid,  -0.190301 AS "P_0", 0.190301 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.000942 AS "P_0", 0.000942 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.170396 AS "P_0", -0.170396 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.060300 AS "P_0", -0.060300 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.173790 AS "P_0", -0.173790 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.154332 AS "P_0", 0.154332 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.159090 AS "P_0", -0.159090 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.030127 AS "P_0", 0.030127 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.180717 AS "P_0", 0.180717 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.132924 AS "P_0", 0.132924 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.029650 AS "P_0", -0.029650 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.171809 AS "P_0", 0.171809 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.180212 AS "P_0", -0.180212 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.003404 AS "P_0", 0.003404 AS "P_1"
  ) AS "Values")
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_5" < 0.026367) THEN CASE WHEN (t."X_4" < 0.978572) THEN CASE WHEN (t."X_2" < -0.485268) THEN CASE WHEN (t."X_7" < -1.153852) THEN 11 ELSE CASE WHEN (t."X_8" < -0.774628) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_7" < -0.039876) THEN CASE WHEN (t."X_5" < -0.761259) THEN 19 ELSE CASE WHEN (t."X_0" < -0.714298) THEN 27 ELSE 28 END END ELSE CASE WHEN (t."X_2" < -0.273729) THEN 21 ELSE CASE WHEN (t."X_3" < -0.766536) THEN 29 ELSE 30 END END END END ELSE 4 END ELSE CASE WHEN (t."X_5" < 1.089994) THEN CASE WHEN (t."X_7" < 1.147776) THEN CASE WHEN (t."X_4" < 0.940039) THEN CASE WHEN (t."X_9" < 0.285353) THEN CASE WHEN (t."X_1" < -0.196737) THEN 31 ELSE 32 END ELSE CASE WHEN (t."X_2" < -0.120141) THEN 33 ELSE 34 END END ELSE CASE WHEN (t."X_9" < -0.573774) THEN 25 ELSE 26 END END ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.168348 AS "P_0", -0.168348 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.170284 AS "P_0", 0.170284 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.180178 AS "P_0", 0.180178 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.003276 AS "P_0", -0.003276 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.019988 AS "P_0", -0.019988 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.178620 AS "P_0", -0.178620 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.138100 AS "P_0", -0.138100 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.171703 AS "P_0", 0.171703 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.014917 AS "P_0", 0.014917 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.157365 AS "P_0", 0.157365 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.056473 AS "P_0", 0.056473 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.046875 AS "P_0", -0.046875 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.132425 AS "P_0", 0.132425 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.080383 AS "P_0", -0.080383 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.002700 AS "P_0", -0.002700 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.121417 AS "P_0", 0.121417 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  0.045921 AS "P_0", -0.045921 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  0.172053 AS "P_0", -0.172053 AS "P_1"
  ) AS "Values")
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_5" < 0.026367) THEN CASE WHEN (t."X_4" < 0.978572) THEN CASE WHEN (t."X_2" < -0.485268) THEN CASE WHEN (t."X_5" < -1.129074) THEN CASE WHEN (t."X_5" < -1.565818) THEN 17 ELSE 18 END ELSE 12 END ELSE CASE WHEN (t."X_7" < -0.039876) THEN CASE WHEN (t."X_5" < -0.761259) THEN 19 ELSE CASE WHEN (t."X_0" < -0.714298) THEN 27 ELSE 28 END END ELSE CASE WHEN (t."X_3" < -0.766536) THEN 21 ELSE CASE WHEN (t."X_7" < 0.520360) THEN 29 ELSE 30 END END END END ELSE 4 END ELSE CASE WHEN (t."X_6" < -0.125965) THEN 5 ELSE CASE WHEN (t."X_4" < -0.606263) THEN 9 ELSE CASE WHEN (t."X_4" < 0.940039) THEN CASE WHEN (t."X_2" < 0.201192) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_9" < -0.807822) THEN 25 ELSE 26 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.152362 AS "P_0", -0.152362 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.034965 AS "P_0", -0.034965 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.160863 AS "P_0", 0.160863 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.159981 AS "P_0", -0.159981 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.121777 AS "P_0", -0.121777 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.061411 AS "P_0", 0.061411 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.123521 AS "P_0", -0.123521 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.148993 AS "P_0", 0.148993 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.012322 AS "P_0", 0.012322 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  0.140506 AS "P_0", -0.140506 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.020364 AS "P_0", -0.020364 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.161581 AS "P_0", 0.161581 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.047008 AS "P_0", 0.047008 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.039204 AS "P_0", -0.039204 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.090006 AS "P_0", 0.090006 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.104012 AS "P_0", -0.104012 AS "P_1"
  ) AS "Values")
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_5" < 0.026367) THEN CASE WHEN (t."X_0" < 0.922568) THEN CASE WHEN (t."X_0" < -0.259218) THEN CASE WHEN (t."X_1" < -0.196737) THEN CASE WHEN (t."X_1" < -0.751864) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_5" < -0.761259) THEN 23 ELSE 24 END END ELSE CASE WHEN (t."X_1" < -1.064963) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_6" < -0.372289) THEN CASE WHEN (t."X_4" < 0.633071) THEN CASE WHEN (t."X_2" < -0.813633) THEN 25 ELSE 26 END ELSE 18 END ELSE 10 END END ELSE CASE WHEN (t."X_6" < -0.125965) THEN 5 ELSE CASE WHEN (t."X_5" < 1.089994) THEN CASE WHEN (t."X_2" < -0.046821) THEN 19 ELSE CASE WHEN (t."X_4" < 0.940039) THEN CASE WHEN (t."X_1" < 0.525953) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_3" < 0.309242) THEN 31 ELSE 32 END END END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  0.027587 AS "P_0", -0.027587 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.098508 AS "P_0", 0.098508 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.145430 AS "P_0", 0.145430 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.001469 AS "P_0", -0.001469 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.159111 AS "P_0", -0.159111 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.105321 AS "P_0", -0.105321 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.132289 AS "P_0", 0.132289 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.031462 AS "P_0", -0.031462 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.112124 AS "P_0", -0.112124 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.038163 AS "P_0", -0.038163 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.125516 AS "P_0", 0.125516 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.094741 AS "P_0", -0.094741 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.085534 AS "P_0", 0.085534 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.030837 AS "P_0", -0.030837 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.119257 AS "P_0", -0.119257 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  -0.136367 AS "P_0", 0.136367 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  0.031000 AS "P_0", -0.031000 AS "P_1"
  ) AS "Values")
,
"DT_output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_5" < 0.026367) THEN CASE WHEN (t."X_4" < 0.978572) THEN CASE WHEN (t."X_4" < -0.606263) THEN 7 ELSE CASE WHEN (t."X_0" < 0.922568) THEN CASE WHEN (t."X_0" < -0.259218) THEN CASE WHEN (t."X_1" < 0.043356) THEN 27 ELSE 28 END ELSE CASE WHEN (t."X_3" < 0.028590) THEN 29 ELSE 30 END END ELSE CASE WHEN (t."X_2" < -0.120141) THEN 21 ELSE 22 END END END ELSE 4 END ELSE CASE WHEN (t."X_2" < -0.273729) THEN CASE WHEN (t."X_0" < 0.106440) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_0" < 0.106440) THEN CASE WHEN (t."X_0" < -1.497360) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_5" < 0.795371) THEN CASE WHEN (t."X_9" < 0.539971) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_9" < 0.539971) THEN 25 ELSE 26 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.132595 AS "P_0", -0.132595 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.133291 AS "P_0", -0.133291 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.101598 AS "P_0", -0.101598 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.054952 AS "P_0", 0.054952 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.031937 AS "P_0", 0.031937 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.153439 AS "P_0", 0.153439 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.132057 AS "P_0", 0.132057 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.041504 AS "P_0", 0.041504 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.090704 AS "P_0", -0.090704 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.059158 AS "P_0", 0.059158 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.100220 AS "P_0", 0.100220 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.021442 AS "P_0", 0.021442 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.055375 AS "P_0", -0.055375 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.124987 AS "P_0", 0.124987 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.129936 AS "P_0", -0.129936 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  -0.001071 AS "P_0", 0.001071 AS "P_1"
  ) AS "Values")
,
"DT_output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_2" < -0.485268) THEN CASE WHEN (t."X_5" < -1.129074) THEN CASE WHEN (t."X_2" < -0.813633) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_4" < 1.131531) THEN CASE WHEN (t."X_5" < -1.129074) THEN 9 ELSE CASE WHEN (t."X_0" < -1.497360) THEN CASE WHEN (t."X_8" < -0.774628) THEN 13 ELSE CASE WHEN (t."X_2" < -0.046821) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_7" < -0.381770) THEN CASE WHEN (t."X_4" < 0.940039) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_3" < 0.780480) THEN 21 ELSE 22 END END END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.151402 AS "P_0", -0.151402 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.139358 AS "P_0", -0.139358 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.092679 AS "P_0", -0.092679 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.065871 AS "P_0", 0.065871 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.105368 AS "P_0", -0.105368 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.109879 AS "P_0", -0.109879 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.096994 AS "P_0", 0.096994 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.026498 AS "P_0", -0.026498 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.019846 AS "P_0", -0.019846 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.112601 AS "P_0", 0.112601 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.167342 AS "P_0", 0.167342 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.005486 AS "P_0", 0.005486 AS "P_1"
  ) AS "Values")
,
"DT_output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_5" < 0.415792) THEN CASE WHEN (t."X_7" < 1.147776) THEN CASE WHEN (t."X_4" < -0.606263) THEN 7 ELSE CASE WHEN (t."X_4" < 1.042403) THEN CASE WHEN (t."X_3" < 0.309242) THEN CASE WHEN (t."X_4" < 0.940039) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_4" < 0.633071) THEN 23 ELSE 24 END END ELSE 14 END END ELSE CASE WHEN (t."X_5" < 0.026367) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_5" < 1.089994) THEN CASE WHEN (t."X_1" < -0.196737) THEN 11 ELSE CASE WHEN (t."X_2" < 0.201192) THEN 15 ELSE CASE WHEN (t."X_4" < 0.940039) THEN 19 ELSE 20 END END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 6 AS nid,  -0.121149 AS "P_0", 0.121149 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.137470 AS "P_0", -0.137470 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.007460 AS "P_0", -0.007460 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.121042 AS "P_0", 0.121042 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.101191 AS "P_0", 0.101191 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.106563 AS "P_0", -0.106563 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.044504 AS "P_0", 0.044504 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.097968 AS "P_0", -0.097968 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.009804 AS "P_0", 0.009804 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.083760 AS "P_0", -0.083760 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.091143 AS "P_0", 0.091143 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.079103 AS "P_0", 0.079103 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  0.052252 AS "P_0", -0.052252 AS "P_1"
  ) AS "Values")
,
"DT_output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_2" < -0.485268) THEN CASE WHEN (t."X_5" < -1.129074) THEN CASE WHEN (t."X_1" < 0.043356) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_4" < 1.131531) THEN CASE WHEN (t."X_5" < -1.129074) THEN 9 ELSE CASE WHEN (t."X_0" < -1.497360) THEN CASE WHEN (t."X_2" < -0.046821) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_7" < -0.381770) THEN CASE WHEN (t."X_4" < 0.033159) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_3" < 0.780480) THEN 19 ELSE 20 END END END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.130535 AS "P_0", -0.130535 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.124144 AS "P_0", -0.124144 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.003474 AS "P_0", -0.003474 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.019822 AS "P_0", -0.019822 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.090610 AS "P_0", -0.090610 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.038981 AS "P_0", 0.038981 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.054985 AS "P_0", -0.054985 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.109185 AS "P_0", 0.109185 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.014096 AS "P_0", -0.014096 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.150041 AS "P_0", 0.150041 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.005775 AS "P_0", -0.005775 AS "P_1"
  ) AS "Values")
,
"DT_output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_5" < 0.415792) THEN CASE WHEN (t."X_7" < 1.147776) THEN CASE WHEN (t."X_4" < -0.606263) THEN 7 ELSE CASE WHEN (t."X_5" < -0.761259) THEN CASE WHEN (t."X_4" < 0.633071) THEN CASE WHEN (t."X_7" < 0.268793) THEN 21 ELSE 22 END ELSE 18 END ELSE CASE WHEN (t."X_6" < -0.125965) THEN 19 ELSE CASE WHEN (t."X_4" < 0.940039) THEN 23 ELSE 24 END END END END ELSE CASE WHEN (t."X_5" < 0.026367) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_3" < -1.273629) THEN 5 ELSE CASE WHEN (t."X_2" < 0.201192) THEN 11 ELSE CASE WHEN (t."X_0" < 0.106440) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  0.015618 AS "P_0", -0.015618 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.119552 AS "P_0", -0.119552 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.009511 AS "P_0", -0.009511 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.096918 AS "P_0", 0.096918 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.116207 AS "P_0", 0.116207 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.084045 AS "P_0", 0.084045 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.029782 AS "P_0", -0.029782 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.108291 AS "P_0", -0.108291 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.090958 AS "P_0", 0.090958 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.029705 AS "P_0", 0.029705 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.023609 AS "P_0", -0.023609 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.077329 AS "P_0", -0.077329 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.054735 AS "P_0", 0.054735 AS "P_1"
  ) AS "Values")
,
"DT_output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_5" < 1.089994) THEN CASE WHEN (t."X_4" < 1.042403) THEN CASE WHEN (t."X_4" < 0.940039) THEN CASE WHEN (t."X_7" < 1.147776) THEN CASE WHEN (t."X_9" < 0.285353) THEN CASE WHEN (t."X_2" < -0.813633) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_2" < -0.120141) THEN 13 ELSE 14 END END ELSE 8 END ELSE 6 END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.102683 AS "P_0", 0.102683 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.105334 AS "P_0", -0.105334 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.097883 AS "P_0", 0.097883 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.077344 AS "P_0", 0.077344 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.082129 AS "P_0", -0.082129 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.019091 AS "P_0", 0.019091 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.014717 AS "P_0", -0.014717 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.126207 AS "P_0", -0.126207 AS "P_1"
  ) AS "Values")
,
"DT_output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_2" < -0.485268) THEN CASE WHEN (t."X_9" < -0.573774) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_4" < 1.131531) THEN CASE WHEN (t."X_5" < 0.415792) THEN CASE WHEN (t."X_7" < -0.381770) THEN CASE WHEN (t."X_4" < 0.940039) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_8" < 0.532632) THEN CASE WHEN (t."X_4" < 0.633071) THEN 17 ELSE 18 END ELSE 16 END END ELSE CASE WHEN (t."X_1" < 0.525953) THEN 11 ELSE 12 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.002175 AS "P_0", -0.002175 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.113455 AS "P_0", -0.113455 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.100673 AS "P_0", -0.100673 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.117419 AS "P_0", 0.117419 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.020471 AS "P_0", 0.020471 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.083075 AS "P_0", -0.083075 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.015348 AS "P_0", 0.015348 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.027547 AS "P_0", -0.027547 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.122759 AS "P_0", 0.122759 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.012758 AS "P_0", -0.012758 AS "P_1"
  ) AS "Values")
,
"DT_output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_2" < -0.485268) THEN CASE WHEN (t."X_3" < 0.309242) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_4" < 1.131531) THEN CASE WHEN (t."X_5" < -0.761259) THEN 7 ELSE CASE WHEN (t."X_4" < 0.940039) THEN CASE WHEN (t."X_4" < 0.033159) THEN CASE WHEN (t."X_3" < 0.309242) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_6" < 0.043686) THEN 15 ELSE 16 END END ELSE 10 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.105779 AS "P_0", -0.105779 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.002182 AS "P_0", 0.002182 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.092079 AS "P_0", -0.092079 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.042872 AS "P_0", -0.042872 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.109423 AS "P_0", 0.109423 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.103904 AS "P_0", 0.103904 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.033687 AS "P_0", 0.033687 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.012804 AS "P_0", 0.012804 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.106084 AS "P_0", -0.106084 AS "P_1"
  ) AS "Values")
,
"DT_output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_5" < 1.089994) THEN CASE WHEN (t."X_4" < 1.042403) THEN CASE WHEN (t."X_4" < 0.940039) THEN CASE WHEN (t."X_7" < 0.659906) THEN CASE WHEN (t."X_8" < -0.774628) THEN 9 ELSE CASE WHEN (t."X_7" < -0.820119) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_8" < -0.774628) THEN 11 ELSE 12 END END ELSE 6 END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.081576 AS "P_0", 0.081576 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.085387 AS "P_0", -0.085387 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.073584 AS "P_0", 0.073584 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.093369 AS "P_0", -0.093369 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.099104 AS "P_0", 0.099104 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.032385 AS "P_0", -0.032385 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.070001 AS "P_0", 0.070001 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.042237 AS "P_0", -0.042237 AS "P_1"
  ) AS "Values")
,
"DT_output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_2" < -0.485268) THEN CASE WHEN (t."X_5" < -1.129074) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_5" < -1.129074) THEN 5 ELSE CASE WHEN (t."X_2" < -0.046821) THEN CASE WHEN (t."X_7" < -0.381770) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_4" < 0.940039) THEN CASE WHEN (t."X_9" < 0.285353) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_4" < 1.042403) THEN 15 ELSE 16 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.000518 AS "P_0", 0.000518 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.094483 AS "P_0", -0.094483 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.081556 AS "P_0", -0.081556 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.016261 AS "P_0", -0.016261 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.118605 AS "P_0", 0.118605 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.029664 AS "P_0", 0.029664 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.090384 AS "P_0", -0.090384 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.099199 AS "P_0", 0.099199 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.030535 AS "P_0", -0.030535 AS "P_1"
  ) AS "Values")
,
"DT_output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_5" < 0.415792) THEN CASE WHEN (t."X_0" < 0.922568) THEN CASE WHEN (t."X_8" < 0.028721) THEN CASE WHEN (t."X_7" < 0.659906) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_9" < -0.573774) THEN 15 ELSE CASE WHEN (t."X_0" < -0.259218) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_3" < 0.309242) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_8" < -0.408593) THEN 5 ELSE CASE WHEN (t."X_7" < -0.381770) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  0.006599 AS "P_0", -0.006599 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.030331 AS "P_0", -0.030331 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.066370 AS "P_0", 0.066370 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.084137 AS "P_0", 0.084137 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.009300 AS "P_0", 0.009300 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.044139 AS "P_0", -0.044139 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.074992 AS "P_0", 0.074992 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.098501 AS "P_0", -0.098501 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.034990 AS "P_0", 0.034990 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.074832 AS "P_0", -0.074832 AS "P_1"
  ) AS "Values")
,
"DT_output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_2" < -0.485268) THEN CASE WHEN (t."X_5" < -1.129074) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_4" < 0.033159) THEN CASE WHEN (t."X_5" < 0.415792) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_3" < -0.766536) THEN 9 ELSE CASE WHEN (t."X_2" < 0.508844) THEN CASE WHEN (t."X_3" < 0.476120) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_3" < 0.309242) THEN 15 ELSE 16 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.003506 AS "P_0", 0.003506 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.085035 AS "P_0", -0.085035 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.022380 AS "P_0", 0.022380 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.086474 AS "P_0", 0.086474 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.042067 AS "P_0", 0.042067 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.096776 AS "P_0", -0.096776 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.008353 AS "P_0", -0.008353 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.024029 AS "P_0", 0.024029 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.001889 AS "P_0", -0.001889 AS "P_1"
  ) AS "Values")
,
"DT_output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_2" < -0.485268) THEN 1 ELSE CASE WHEN (t."X_4" < 0.033159) THEN CASE WHEN (t."X_5" < 0.415792) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_3" < -0.766536) THEN 7 ELSE CASE WHEN (t."X_2" < 0.508844) THEN CASE WHEN (t."X_3" < 0.476120) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_7" < -0.648837) THEN 13 ELSE 14 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.042541 AS "P_0", -0.042541 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.018558 AS "P_0", 0.018558 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.079763 AS "P_0", 0.079763 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.034541 AS "P_0", 0.034541 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.088810 AS "P_0", -0.088810 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.007049 AS "P_0", -0.007049 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.020976 AS "P_0", 0.020976 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.001916 AS "P_0", -0.001916 AS "P_1"
  ) AS "Values")
,
"DT_output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_4" < 1.042403) THEN CASE WHEN (t."X_4" < 0.940039) THEN CASE WHEN (t."X_3" < 0.309242) THEN CASE WHEN (t."X_0" < -0.259218) THEN 7 ELSE CASE WHEN (t."X_7" < -0.039876) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_1" < -0.339445) THEN 9 ELSE 10 END END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.046408 AS "P_0", -0.046408 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.066124 AS "P_0", 0.066124 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.012278 AS "P_0", 0.012278 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.065275 AS "P_0", 0.065275 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.019895 AS "P_0", -0.019895 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.077115 AS "P_0", -0.077115 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.016577 AS "P_0", -0.016577 AS "P_1"
  ) AS "Values")
,
"DT_output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_0" < 0.922568) THEN CASE WHEN (t."X_8" < 0.028721) THEN CASE WHEN (t."X_8" < -0.774628) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_9" < -0.573774) THEN 9 ELSE CASE WHEN (t."X_7" < 0.268793) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_6" < -0.372289) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  -0.000557 AS "P_0", 0.000557 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.050928 AS "P_0", 0.050928 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.024569 AS "P_0", -0.024569 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.051187 AS "P_0", 0.051187 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.079492 AS "P_0", -0.079492 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.041316 AS "P_0", 0.041316 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.044596 AS "P_0", -0.044596 AS "P_1"
  ) AS "Values")
,
"DT_output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_1" < -1.064963) THEN 1 ELSE CASE WHEN (t."X_2" < -0.485268) THEN 3 ELSE CASE WHEN (t."X_7" < -0.039876) THEN CASE WHEN (t."X_1" < 0.043356) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_8" < 0.532632) THEN CASE WHEN (t."X_4" < 0.633071) THEN 11 ELSE 12 END ELSE 10 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  -0.040615 AS "P_0", 0.040615 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.057015 AS "P_0", -0.057015 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.060223 AS "P_0", -0.060223 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.020643 AS "P_0", 0.020643 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.021707 AS "P_0", -0.021707 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.090924 AS "P_0", 0.090924 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.010930 AS "P_0", 0.010930 AS "P_1"
  ) AS "Values")
,
"DT_output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_0" < -1.497360) THEN 1 ELSE CASE WHEN (t."X_0" < -0.259218) THEN CASE WHEN (t."X_9" < -0.204729) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_0" < 0.648423) THEN CASE WHEN (t."X_1" < -0.196737) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_6" < -0.372289) THEN 11 ELSE 12 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.036246 AS "P_0", -0.036246 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.004539 AS "P_0", 0.004539 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.066960 AS "P_0", 0.066960 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.003057 AS "P_0", 0.003057 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.059469 AS "P_0", -0.059469 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.008600 AS "P_0", -0.008600 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.040130 AS "P_0", 0.040130 AS "P_1"
  ) AS "Values")
,
"DT_output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_5" < 0.415792) THEN CASE WHEN (t."X_0" < 0.922568) THEN CASE WHEN (t."X_7" < -0.381770) THEN 7 ELSE CASE WHEN (t."X_2" < -0.046821) THEN 9 ELSE 10 END END ELSE 4 END ELSE CASE WHEN (t."X_9" < 0.285353) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.027772 AS "P_0", 0.027772 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.052120 AS "P_0", 0.052120 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.005563 AS "P_0", -0.005563 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.066452 AS "P_0", -0.066452 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.035610 AS "P_0", 0.035610 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.042984 AS "P_0", -0.042984 AS "P_1"
  ) AS "Values")
,
"DT_output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_4" < 1.042403) THEN CASE WHEN (t."X_4" < 0.940039) THEN CASE WHEN (t."X_2" < -0.046821) THEN CASE WHEN (t."X_2" < -0.485268) THEN 7 ELSE CASE WHEN (t."X_7" < -0.039876) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_5" < 0.026367) THEN 9 ELSE 10 END END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.037531 AS "P_0", -0.037531 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.059012 AS "P_0", 0.059013 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.024829 AS "P_0", -0.024829 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.008816 AS "P_0", -0.008816 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.056275 AS "P_0", -0.056275 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.003836 AS "P_0", 0.003836 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.072517 AS "P_0", 0.072517 AS "P_1"
  ) AS "Values")
,
"DT_output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_5" < 0.795371) THEN CASE WHEN (t."X_1" < 0.043356) THEN CASE WHEN (t."X_1" < -1.064963) THEN 5 ELSE CASE WHEN (t."X_0" < 0.648423) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_1" < 0.525953) THEN 7 ELSE 8 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.035522 AS "P_0", 0.035522 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.033519 AS "P_0", 0.033519 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.059574 AS "P_0", 0.059574 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.017019 AS "P_0", -0.017019 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.079457 AS "P_0", -0.079457 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.005495 AS "P_0", 0.005495 AS "P_1"
  ) AS "Values")
,
"DT_output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_5" < -0.761259) THEN CASE WHEN (t."X_2" < -0.485268) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_4" < 0.940039) THEN CASE WHEN (t."X_2" < 0.201192) THEN CASE WHEN (t."X_2" < -0.273729) THEN 9 ELSE 10 END ELSE 8 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.007338 AS "P_0", 0.007338 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.045825 AS "P_0", -0.045825 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.048661 AS "P_0", 0.048661 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.046472 AS "P_0", -0.046472 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.023780 AS "P_0", -0.023780 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.041079 AS "P_0", 0.041079 AS "P_1"
  ) AS "Values")
,
"DT_output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_4" < 1.042403) THEN CASE WHEN (t."X_2" < -0.485268) THEN 3 ELSE CASE WHEN (t."X_2" < -0.120141) THEN 5 ELSE CASE WHEN (t."X_9" < 0.285353) THEN 7 ELSE 8 END END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.034198 AS "P_0", -0.034198 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.022728 AS "P_0", -0.022728 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.054779 AS "P_0", 0.054779 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.028555 AS "P_0", 0.028555 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.033541 AS "P_0", -0.033541 AS "P_1"
  ) AS "Values")
,
"DT_output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_1" < 0.043356) THEN CASE WHEN (t."X_7" < -0.039876) THEN CASE WHEN (t."X_9" < -0.204729) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < -0.339445) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_7" < 0.268793) THEN CASE WHEN (t."X_8" < -0.155010) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 6 AS nid,  0.027572 AS "P_0", -0.027572 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.065589 AS "P_0", -0.065589 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.005018 AS "P_0", -0.005018 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.048509 AS "P_0", 0.048509 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.019641 AS "P_0", -0.019641 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.000195 AS "P_0", -0.000195 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.067441 AS "P_0", 0.067442 AS "P_1"
  ) AS "Values")
,
"DT_output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_5" < 0.415792) THEN CASE WHEN (t."X_3" < -0.766536) THEN 3 ELSE CASE WHEN (t."X_2" < -0.120141) THEN CASE WHEN (t."X_7" < -0.039876) THEN 7 ELSE 8 END ELSE 6 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.025174 AS "P_0", 0.025174 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  -0.027479 AS "P_0", 0.027480 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.052196 AS "P_0", -0.052196 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.012849 AS "P_0", -0.012849 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.020853 AS "P_0", 0.020853 AS "P_1"
  ) AS "Values")
,
"DT_output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_9" < -0.807822) THEN 1 ELSE CASE WHEN (t."X_9" < 0.285353) THEN CASE WHEN (t."X_1" < 0.043356) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_2" < -0.046821) THEN 7 ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.027830 AS "P_0", -0.027830 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.008112 AS "P_0", -0.008112 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.056248 AS "P_0", 0.056248 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.019235 AS "P_0", 0.019235 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.034677 AS "P_0", -0.034677 AS "P_1"
  ) AS "Values")
,
"DT_output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_2" < -0.485268) THEN 1 ELSE CASE WHEN (t."X_8" < -0.774628) THEN 3 ELSE CASE WHEN (t."X_0" < -0.259218) THEN 5 ELSE CASE WHEN (t."X_0" < 0.648423) THEN 7 ELSE 8 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.025936 AS "P_0", -0.025936 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.027759 AS "P_0", -0.027759 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.049348 AS "P_0", 0.049348 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.023220 AS "P_0", -0.023220 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.016735 AS "P_0", 0.016735 AS "P_1"
  ) AS "Values")
,
"DT_output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
   ON t1.node_id = t2.nid
 )
,
union_of_trees AS 
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_4" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_31" AS t
  ) AS scu
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.476562 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.523438 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM "union_of_trees" t
  GROUP BY t."index"
 ),
soft_max_orig_cte AS 
( SELECT t."index" AS "index", 
   -t."Score_1" AS "Score_0",
   1.0 - t."Proba_1" AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX(t."Score_0", t."Score_1") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1.*,
    ( t1."Exp_Score_0" + t1."Exp_Score_1" ) AS "Sum_Exp"
  FROM
   ( SELECT t.*,
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1" ) AS "Max_Proba"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t.*,
   CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
   CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
     COALESCE(  t."max_idx_0", t."max_idx_1" ) AS argmax_class_idx
   FROM
     "arg_max_cte_with_max_proba_idx" AS t
)
SELECT arg_max_cte."index" AS "index",
  arg_max_cte."Score_0" AS "Score_0",
  arg_max_cte."Proba_0" AS "Proba_0",
  CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN LN( arg_max_cte."Proba_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
  arg_max_cte."Score_1" AS "Score_1",
  arg_max_cte."Proba_1" AS "Proba_1",
  CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN LN( arg_max_cte."Proba_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte