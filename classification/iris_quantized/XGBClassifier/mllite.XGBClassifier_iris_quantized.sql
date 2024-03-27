WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_1" < 2.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_3" < 7.000000) THEN CASE WHEN (t."X_2" < 7.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_2" < 7.000000) THEN CASE WHEN (t."X_1" < 4.000000) THEN 11 ELSE 12 END ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  -0.081818 AS "P_0", 0.245455 AS "P_1", -0.163636 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.430244 AS "P_0", -0.215122 AS "P_1", -0.215122 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  -0.213559 AS "P_0", 0.427119 AS "P_1", -0.213559 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.155172 AS "P_0", -0.062069 AS "P_1", 0.217241 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.213295 AS "P_0", -0.197688 AS "P_1", 0.410983 AS "P_2"
    UNION ALL
    SELECT 11 AS nid,  -0.144000 AS "P_0", -0.144000 AS "P_1", 0.288000 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.128571 AS "P_0", -0.000000 AS "P_1", 0.128571 AS "P_2"
  ) AS "Values")
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_1" < 2.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_3" < 7.000000) THEN CASE WHEN (t."X_2" < 7.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_2" < 8.000000) THEN CASE WHEN (t."X_0" < 8.000000) THEN CASE WHEN (t."X_1" < 4.000000) THEN 13 ELSE CASE WHEN (t."X_2" < 7.000000) THEN 15 ELSE 16 END END ELSE 12 END ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  -0.069118 AS "P_0", 0.190048 AS "P_1", -0.146954 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.295282 AS "P_0", -0.191353 AS "P_1", -0.191353 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  -0.189911 AS "P_0", 0.294068 AS "P_1", -0.189911 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.139782 AS "P_0", -0.052266 AS "P_1", 0.171667 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.185839 AS "P_0", -0.187009 AS "P_1", 0.292434 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.107949 AS "P_0", 0.029899 AS "P_1", 0.066959 AS "P_2"
    UNION ALL
    SELECT 13 AS nid,  -0.159980 AS "P_0", -0.160630 AS "P_1", 0.266658 AS "P_2"
    UNION ALL
    SELECT 15 AS nid,  -0.117166 AS "P_0", 0.000707 AS "P_1", 0.108215 AS "P_2"
    UNION ALL
    SELECT 16 AS nid,  -0.107949 AS "P_0", -0.109053 AS "P_1", 0.187065 AS "P_2"
  ) AS "Values")
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_1" < 2.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_3" < 7.000000) THEN CASE WHEN (t."X_2" < 7.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_2" < 8.000000) THEN CASE WHEN (t."X_0" < 8.000000) THEN CASE WHEN (t."X_1" < 4.000000) THEN 13 ELSE CASE WHEN (t."X_2" < 7.000000) THEN 15 ELSE 16 END END ELSE 12 END ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  -0.057028 AS "P_0", 0.153408 AS "P_1", -0.133538 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.236587 AS "P_0", -0.175223 AS "P_1", -0.175223 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  -0.173695 AS "P_0", 0.235676 AS "P_1", -0.173695 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.127261 AS "P_0", -0.042678 AS "P_1", 0.139937 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.169525 AS "P_0", -0.170313 AS "P_1", 0.234086 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.099748 AS "P_0", 0.028090 AS "P_1", 0.057633 AS "P_2"
    UNION ALL
    SELECT 13 AS nid,  -0.144129 AS "P_0", -0.144606 AS "P_1", 0.216283 AS "P_2"
    UNION ALL
    SELECT 15 AS nid,  -0.107642 AS "P_0", 0.002028 AS "P_1", 0.092011 AS "P_2"
    UNION ALL
    SELECT 16 AS nid,  -0.097876 AS "P_0", -0.098784 AS "P_1", 0.161532 AS "P_2"
  ) AS "Values")
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_1" < 2.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_3" < 7.000000) THEN CASE WHEN (t."X_2" < 7.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_2" < 8.000000) THEN CASE WHEN (t."X_1" < 4.000000) THEN 11 ELSE CASE WHEN (t."X_2" < 7.000000) THEN 13 ELSE 14 END END ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  -0.045913 AS "P_0", 0.127012 AS "P_1", -0.122350 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.204137 AS "P_0", -0.163302 AS "P_1", -0.163302 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  -0.161580 AS "P_0", 0.203209 AS "P_1", -0.161580 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.116749 AS "P_0", -0.033753 AS "P_1", 0.116380 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.156999 AS "P_0", -0.157590 AS "P_1", 0.201266 AS "P_2"
    UNION ALL
    SELECT 11 AS nid,  -0.130859 AS "P_0", -0.131240 AS "P_1", 0.185108 AS "P_2"
    UNION ALL
    SELECT 13 AS nid,  -0.099512 AS "P_0", 0.003608 AS "P_1", 0.078860 AS "P_2"
    UNION ALL
    SELECT 14 AS nid,  -0.122199 AS "P_0", -0.037044 AS "P_1", 0.119852 AS "P_2"
  ) AS "Values")
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_1" < 2.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_3" < 7.000000) THEN CASE WHEN (t."X_2" < 7.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_2" < 8.000000) THEN CASE WHEN (t."X_1" < 4.000000) THEN 11 ELSE 12 END ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  -0.035920 AS "P_0", 0.106791 AS "P_1", -0.112761 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.183726 AS "P_0", -0.153804 AS "P_1", -0.153804 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  -0.151810 AS "P_0", 0.182663 AS "P_1", -0.151810 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.107717 AS "P_0", -0.025699 AS "P_1", 0.098044 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.146633 AS "P_0", -0.147120 AS "P_1", 0.180229 AS "P_2"
    UNION ALL
    SELECT 11 AS nid,  -0.119288 AS "P_0", -0.119614 AS "P_1", 0.163618 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.132672 AS "P_0", -0.016846 AS "P_1", 0.104635 AS "P_2"
  ) AS "Values")
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_1" < 2.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_3" < 7.000000) THEN CASE WHEN (t."X_2" < 7.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_2" < 8.000000) THEN CASE WHEN (t."X_1" < 4.000000) THEN 11 ELSE 12 END ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  -0.027099 AS "P_0", 0.090627 AS "P_1", -0.104383 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.169630 AS "P_0", -0.145636 AS "P_1", -0.145636 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  -0.143317 AS "P_0", 0.168364 AS "P_1", -0.143317 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.099827 AS "P_0", -0.018598 AS "P_1", 0.083289 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.137437 AS "P_0", -0.137871 AS "P_1", 0.165361 AS "P_2"
    UNION ALL
    SELECT 11 AS nid,  -0.108894 AS "P_0", -0.109184 AS "P_1", 0.147523 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.123475 AS "P_0", -0.009437 AS "P_1", 0.086479 AS "P_2"
  ) AS "Values")
,
"DT_output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_1" < 2.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_3" < 7.000000) THEN CASE WHEN (t."X_2" < 7.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_2" < 8.000000) THEN CASE WHEN (t."X_1" < 4.000000) THEN 11 ELSE 12 END ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  -0.019443 AS "P_0", 0.077342 AS "P_1", -0.096973 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.159061 AS "P_0", -0.138093 AS "P_1", -0.138093 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  -0.135418 AS "P_0", 0.157547 AS "P_1", -0.135418 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.092857 AS "P_0", -0.012459 AS "P_1", 0.071151 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.128802 AS "P_0", -0.129213 AS "P_1", 0.153926 AS "P_2"
    UNION ALL
    SELECT 11 AS nid,  -0.099392 AS "P_0", -0.099658 AS "P_1", 0.134655 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.115432 AS "P_0", -0.003222 AS "P_1", 0.071878 AS "P_2"
  ) AS "Values")
,
"DT_output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_1" < 2.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_3" < 7.000000) THEN CASE WHEN (t."X_2" < 7.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < 6.000000) THEN CASE WHEN (t."X_0" < 8.000000) THEN 11 ELSE 12 END ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  -0.012906 AS "P_0", 0.066239 AS "P_1", -0.090369 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.150490 AS "P_0", -0.130722 AS "P_1", -0.130722 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  -0.127688 AS "P_0", 0.148698 AS "P_1", -0.127688 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.086656 AS "P_0", -0.007246 AS "P_1", 0.061026 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.100609 AS "P_0", -0.011385 AS "P_1", 0.071006 AS "P_2"
    UNION ALL
    SELECT 11 AS nid,  -0.120455 AS "P_0", -0.135337 AS "P_1", 0.162659 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.102510 AS "P_0", -0.025583 AS "P_1", 0.080315 AS "P_2"
  ) AS "Values")
,
"DT_output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_1" < 2.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_2" < 8.000000) THEN CASE WHEN (t."X_3" < 7.000000) THEN CASE WHEN (t."X_0" < 6.000000) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_2" < 7.000000) THEN 11 ELSE 12 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  -0.007416 AS "P_0", 0.056874 AS "P_1", -0.084456 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.143011 AS "P_0", -0.123255 AS "P_1", -0.123255 AS "P_2"
    UNION ALL
    SELECT 6 AS nid,  -0.119001 AS "P_0", -0.127119 AS "P_1", 0.148610 AS "P_2"
    UNION ALL
    SELECT 9 AS nid,  -0.112747 AS "P_0", 0.147024 AS "P_1", -0.112005 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.091042 AS "P_0", 0.085503 AS "P_1", -0.034818 AS "P_2"
    UNION ALL
    SELECT 11 AS nid,  -0.085741 AS "P_0", -0.001975 AS "P_1", 0.055828 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.096542 AS "P_0", -0.025533 AS "P_1", 0.075650 AS "P_2"
  ) AS "Values")
,
"DT_output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_2" < 2.000000) THEN 3 ELSE CASE WHEN (t."X_1" < 6.000000) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_2" < 8.000000) THEN CASE WHEN (t."X_3" < 7.000000) THEN CASE WHEN (t."X_0" < 6.000000) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 6.000000) THEN 13 ELSE 14 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  0.170892 AS "P_0", -0.158214 AS "P_1", -0.094387 AS "P_2"
    UNION ALL
    SELECT 6 AS nid,  -0.110666 AS "P_0", -0.118370 AS "P_1", 0.139686 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  -0.054469 AS "P_0", 0.105279 AS "P_1", -0.083745 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  0.113501 AS "P_0", -0.086394 AS "P_1", -0.086394 AS "P_2"
    UNION ALL
    SELECT 11 AS nid,  -0.105193 AS "P_0", 0.134040 AS "P_1", -0.097679 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.084858 AS "P_0", 0.075654 AS "P_1", -0.027038 AS "P_2"
    UNION ALL
    SELECT 13 AS nid,  -0.089583 AS "P_0", -0.017799 AS "P_1", 0.066987 AS "P_2"
    UNION ALL
    SELECT 14 AS nid,  -0.081222 AS "P_0", 0.001106 AS "P_1", 0.047210 AS "P_2"
  ) AS "Values")
,
"DT_output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_2" < 2.000000) THEN 3 ELSE CASE WHEN (t."X_1" < 7.000000) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_2" < 7.000000) THEN CASE WHEN (t."X_3" < 6.000000) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_2" < 8.000000) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  0.163801 AS "P_0", -0.149178 AS "P_1", -0.085806 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  -0.037590 AS "P_0", 0.087657 AS "P_1", -0.080510 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  0.104528 AS "P_0", -0.077036 AS "P_1", -0.077036 AS "P_2"
    UNION ALL
    SELECT 9 AS nid,  -0.093871 AS "P_0", 0.119901 AS "P_1", -0.095447 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.095512 AS "P_0", 0.059730 AS "P_1", 0.003127 AS "P_2"
    UNION ALL
    SELECT 11 AS nid,  -0.100013 AS "P_0", 0.001998 AS "P_1", 0.049044 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.102350 AS "P_0", -0.109734 AS "P_1", 0.131443 AS "P_2"
  ) AS "Values")
,
"DT_output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_2" < 2.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_2" < 8.000000) THEN CASE WHEN (t."X_3" < 7.000000) THEN CASE WHEN (t."X_3" < 6.000000) THEN 9 ELSE 10 END ELSE 8 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  0.154981 AS "P_0", -0.138380 AS "P_1", -0.077719 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.037648 AS "P_0", 0.026333 AS "P_1", -0.099566 AS "P_2"
    UNION ALL
    SELECT 6 AS nid,  -0.094165 AS "P_0", -0.101264 AS "P_1", 0.123636 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.102082 AS "P_0", -0.005593 AS "P_1", 0.053912 AS "P_2"
    UNION ALL
    SELECT 9 AS nid,  -0.086030 AS "P_0", 0.112750 AS "P_1", -0.087568 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.079332 AS "P_0", 0.071771 AS "P_1", -0.027593 AS "P_2"
  ) AS "Values")
,
"DT_output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN CASE WHEN (t."X_3" < 2.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_2" < 7.000000) THEN CASE WHEN (t."X_3" < 6.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_2" < 8.000000) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  0.111343 AS "P_0", -0.087325 AS "P_1", -0.083283 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.040619 AS "P_0", 0.010560 AS "P_1", -0.085581 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  -0.078610 AS "P_0", 0.105833 AS "P_1", -0.080091 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.084842 AS "P_0", 0.051033 AS "P_1", 0.000345 AS "P_2"
    UNION ALL
    SELECT 9 AS nid,  -0.089433 AS "P_0", 0.004703 AS "P_1", 0.037890 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.086256 AS "P_0", -0.093062 AS "P_1", 0.116146 AS "P_2"
  ) AS "Values")
,
"DT_output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN 1 ELSE CASE WHEN (t."X_2" < 8.000000) THEN CASE WHEN (t."X_3" < 7.000000) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.078387 AS "P_0", -0.027139 AS "P_1", -0.104216 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.078760 AS "P_0", -0.085245 AS "P_1", 0.108942 AS "P_2"
    UNION ALL
    SELECT 5 AS nid,  -0.097077 AS "P_0", 0.093711 AS "P_1", -0.053528 AS "P_2"
    UNION ALL
    SELECT 6 AS nid,  -0.092162 AS "P_0", -0.001414 AS "P_1", 0.042452 AS "P_2"
  ) AS "Values")
,
"DT_output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN 1 ELSE CASE WHEN (t."X_2" < 7.000000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.065800 AS "P_0", -0.018081 AS "P_1", -0.098791 AS "P_2"
    UNION ALL
    SELECT 3 AS nid,  -0.096154 AS "P_0", 0.076531 AS "P_1", -0.028425 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.102024 AS "P_0", -0.028814 AS "P_1", 0.067669 AS "P_2"
  ) AS "Values")
,
"DT_output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN 1 ELSE CASE WHEN (t."X_3" < 7.000000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.054942 AS "P_0", -0.010840 AS "P_1", -0.093646 AS "P_2"
    UNION ALL
    SELECT 3 AS nid,  -0.088316 AS "P_0", 0.067736 AS "P_1", -0.026376 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.098342 AS "P_0", -0.019874 AS "P_1", 0.057727 AS "P_2"
  ) AS "Values")
,
"DT_output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN 1 ELSE CASE WHEN (t."X_2" < 7.000000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.045804 AS "P_0", -0.005191 AS "P_1", -0.088803 AS "P_2"
    UNION ALL
    SELECT 3 AS nid,  -0.085336 AS "P_0", 0.064353 AS "P_1", -0.023546 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.091292 AS "P_0", -0.019245 AS "P_1", 0.053587 AS "P_2"
  ) AS "Values")
,
"DT_output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_0" < 4.000000) THEN 1 ELSE CASE WHEN (t."X_2" < 7.000000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.043586 AS "P_0", -0.009593 AS "P_1", -0.068000 AS "P_2"
    UNION ALL
    SELECT 3 AS nid,  -0.077417 AS "P_0", 0.061817 AS "P_1", -0.023059 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.086129 AS "P_0", -0.011906 AS "P_1", 0.044828 AS "P_2"
  ) AS "Values")
,
"DT_output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.000000) THEN 1 ELSE CASE WHEN (t."X_2" < 7.000000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.033493 AS "P_0", 0.001661 AS "P_1", -0.080885 AS "P_2"
    UNION ALL
    SELECT 3 AS nid,  -0.077508 AS "P_0", 0.044343 AS "P_1", -0.008316 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.081370 AS "P_0", -0.006073 AS "P_1", 0.037440 AS "P_2"
  ) AS "Values")
,
"DT_output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_0" < 4.000000) THEN 1 ELSE CASE WHEN (t."X_3" < 7.000000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.032074 AS "P_0", -0.004137 AS "P_1", -0.058175 AS "P_2"
    UNION ALL
    SELECT 3 AS nid,  -0.067149 AS "P_0", 0.056937 AS "P_1", -0.025042 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.078801 AS "P_0", -0.009633 AS "P_1", 0.038074 AS "P_2"
  ) AS "Values")
,
"DT_output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_1" < 5.000000) THEN CASE WHEN (t."X_3" < 6.000000) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 2 AS nid,  0.057656 AS "P_0", -0.001944 AS "P_1", -0.053058 AS "P_2"
    UNION ALL
    SELECT 3 AS nid,  -0.044157 AS "P_0", 0.063788 AS "P_1", -0.054835 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.077356 AS "P_0", -0.020073 AS "P_1", 0.045125 AS "P_2"
  ) AS "Values")
,
"DT_output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_0" < 4.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.031931 AS "P_0", -0.008085 AS "P_1", -0.051098 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  -0.088305 AS "P_0", 0.024581 AS "P_1", 0.010525 AS "P_2"
  ) AS "Values")
,
"DT_output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_1" < 5.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  -0.059010 AS "P_0", 0.017260 AS "P_1", 0.017757 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  0.052326 AS "P_0", -0.002377 AS "P_1", -0.045479 AS "P_2"
  ) AS "Values")
,
"DT_output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 5.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.023671 AS "P_0", 0.011048 AS "P_1", -0.077369 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  -0.086957 AS "P_0", 0.008141 AS "P_1", 0.019838 AS "P_2"
  ) AS "Values")
,
"DT_output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_1" < 5.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  -0.051348 AS "P_0", 0.014286 AS "P_1", 0.015286 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  0.047648 AS "P_0", -0.001764 AS "P_1", -0.040515 AS "P_2"
  ) AS "Values")
,
"DT_output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_3" < 6.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.019494 AS "P_0", 0.011726 AS "P_1", -0.063699 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  -0.078359 AS "P_0", 0.004676 AS "P_1", 0.018845 AS "P_2"
  ) AS "Values")
,
"DT_output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_1" < 5.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  -0.044697 AS "P_0", 0.011764 AS "P_1", 0.013498 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  0.043695 AS "P_0", -0.001295 AS "P_1", -0.036568 AS "P_2"
  ) AS "Values")
,
"DT_output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_1" < 6.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  -0.034558 AS "P_0", 0.002255 AS "P_1", 0.018715 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  0.040123 AS "P_0", 0.019303 AS "P_1", -0.057459 AS "P_2"
  ) AS "Values")
,
"DT_output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_1" < 6.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  -0.030444 AS "P_0", 0.002128 AS "P_1", 0.016145 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  0.036191 AS "P_0", 0.015838 AS "P_1", -0.049534 AS "P_2"
  ) AS "Values")
,
"DT_output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_1" < 2.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  -0.030462 AS "P_0", 0.032335 AS "P_1", -0.019156 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  0.017798 AS "P_0", -0.016552 AS "P_1", 0.008043 AS "P_2"
  ) AS "Values")
,
"DT_output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_1" < 6.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  -0.023703 AS "P_0", -0.000229 AS "P_1", 0.014594 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  0.030876 AS "P_0", 0.015773 AS "P_1", -0.044080 AS "P_2"
  ) AS "Values")
,
"DT_output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_1" < 6.000000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  -0.020918 AS "P_0", 0.000116 AS "P_1", 0.012422 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  0.027756 AS "P_0", 0.012877 AS "P_1", -0.037886 AS "P_2"
  ) AS "Values")
,
"DT_output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
   ON t1.node_id = t2.nid
 )
,
union_of_trees AS 
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1", scu."P_2" AS "P_2"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_4" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_31" AS t
  ) AS scu
)
,soft_max_orig_cte AS 
( SELECT
   t."index" AS "index",
   0.333333 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.333333 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   0.333333 + SUM(t."P_2") AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2"
  FROM "union_of_trees" t
  GROUP BY t."index"
 )
,
soft_max_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 2 AS class,  "LogProba_2" AS "LogProba", "Proba_2" AS "Proba", "Score_2" AS "Score" from "soft_max_orig_cte"
   ) AS scu
 )
,soft_max_score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   t."LogProba_2" AS "LogProba_2", t."Proba_2" AS "Proba_2", t."Score_2" AS "Score_2",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
 "soft_max_orig_cte" AS t
    LEFT OUTER JOIN
    (SELECT t1.index_u AS index_m,
      max(t1."Score") AS "max_Score"
     FROM soft_max_class_union t1
     GROUP BY t1.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,soft_max_deltas AS 
 (SELECT soft_max_score_max."index" AS "index",
    soft_max_score_max."Score_0" AS "Score_0",
    EXP(max(-32.0, soft_max_score_max."Score_0" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_0",
    soft_max_score_max."Score_1" AS "Score_1",
    EXP(max(-32.0, soft_max_score_max."Score_1" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_1",
    soft_max_score_max."Score_2" AS "Score_2",
    EXP(max(-32.0, soft_max_score_max."Score_2" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_2",
    soft_max_score_max."max_Score" AS "max_Score"
  FROM soft_max_score_max
 )
,soft_max_class_union_with_delta AS 
 (SELECT soft_scu."index" AS "index",
   soft_scu.class AS class,
   soft_scu."ExpDelta_Score" AS "ExpDelta_Score"
  FROM (
    SELECT t."index" AS "index", 0 AS "class", t."ExpDelta_Score_0" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 1 AS "class", t."ExpDelta_Score_1" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 2 AS "class", t."ExpDelta_Score_2" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
) AS soft_scu)
,
soft_max_cte AS 
 (SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."ExpDelta_Score_0" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."ExpDelta_Score_1" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    CAST(NULL AS FLOAT) AS "LogProba_2",
    t1."ExpDelta_Score_2" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_2",
    t1."Score_2" AS "Score_2"
 FROM 
   soft_max_deltas AS t1
   LEFT OUTER JOIN
   ( SELECT t3."index" AS "index",
       SUM( t3."ExpDelta_Score" ) AS "sum_ExpDelta_Score"
     FROM soft_max_class_union_with_delta AS t3
     GROUP BY t3."index"
   ) AS sum_exp_t
   ON (t1."index" = sum_exp_t."index")
 )
,
score_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 2 AS class,  "LogProba_2" AS "LogProba", "Proba_2" AS "Proba", "Score_2" AS "Score" from "soft_max_cte"
   ) AS scu
 )
,
score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   t."LogProba_2" AS "LogProba_2", t."Proba_2" AS "Proba_2", t."Score_2" AS "Score_2",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
    "soft_max_cte" AS t
    LEFT OUTER JOIN
    (SELECT score_class_union.index_u AS index_m,
      max(score_class_union."Score") AS "max_Score"
     FROM score_class_union
     GROUP BY score_class_union.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,
union_with_max AS 
 (SELECT score_class_union.index_u AS "index",
   score_class_union.class AS class,
   score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max."LogProba_2" AS "LogProba_2", score_max."Proba_2" AS "Proba_2", score_max."Score_2" AS "Score_2",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score"
  FROM
   score_class_union
   LEFT OUTER JOIN
   score_max
   ON score_class_union.index_u = score_max."index"
 )
,
arg_max_cte AS 
 (SELECT score_max."index" AS "index",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max."LogProba_2" AS "LogProba_2", score_max."Proba_2" AS "Proba_2", score_max."Score_2" AS "Score_2",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score",
   "arg_max_t_Score"."index_Score" AS "index_Score",
   "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score"
  FROM
   score_max
   LEFT OUTER JOIN
   (SELECT union_with_max."index" AS "index_Score",
     max(union_with_max.class) AS "arg_max_Score"
    FROM union_with_max
    WHERE union_with_max."max_Score" <= union_with_max."Score"
    GROUP BY union_with_max."index"
   ) AS "arg_max_t_Score"
   ON score_max."index" = "arg_max_t_Score"."index_Score"
 )
SELECT arg_max_cte."index" AS "index",
  arg_max_cte."Score_0" AS "Score_0",
  arg_max_cte."Proba_0" AS "Proba_0",
  CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN LN( arg_max_cte."Proba_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
  arg_max_cte."Score_1" AS "Score_1",
  arg_max_cte."Proba_1" AS "Proba_1",
  CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN LN( arg_max_cte."Proba_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
  arg_max_cte."Score_2" AS "Score_2",
  arg_max_cte."Proba_2" AS "Proba_2",
  CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN LN( arg_max_cte."Proba_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
  arg_max_cte."arg_max_Score" AS "Decision",
  CASE
   WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0"
   WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1"
   WHEN (arg_max_cte."arg_max_Score" = 2) THEN arg_max_cte."Proba_2"
 END AS "DecisionProba"
FROM arg_max_cte