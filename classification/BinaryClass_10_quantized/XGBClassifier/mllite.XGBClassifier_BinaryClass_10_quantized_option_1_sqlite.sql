WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "BinaryClass_10_quantized" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_5" < 6.000000) THEN CASE WHEN (t."X_5" < 4.000000) THEN CASE WHEN (t."X_2" < 2.000000) THEN 7 ELSE CASE WHEN (t."X_4" < 8.000000) THEN CASE WHEN (t."X_6" < 4.000000) THEN CASE WHEN (t."X_4" < 5.000000) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_8" < 5.000000) THEN 31 ELSE 32 END END ELSE 16 END END ELSE CASE WHEN (t."X_2" < 3.000000) THEN CASE WHEN (t."X_4" < 3.000000) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_4" < 8.000000) THEN CASE WHEN (t."X_4" < 6.000000) THEN CASE WHEN (t."X_2" < 5.000000) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_1" < 7.000000) THEN 35 ELSE 36 END END ELSE 20 END END END ELSE CASE WHEN (t."X_5" < 7.000000) THEN CASE WHEN (t."X_4" < 6.000000) THEN CASE WHEN (t."X_2" < 5.000000) THEN CASE WHEN (t."X_3" < 4.000000) THEN 27 ELSE 28 END ELSE 22 END ELSE 12 END ELSE CASE WHEN (t."X_6" < 5.000000) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  0.291415 AS "P_0", -0.291415 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.242873 AS "P_0", 0.242873 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.143682 AS "P_0", 0.143682 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.279306 AS "P_0", 0.279306 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.291768 AS "P_0", -0.291768 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.278368 AS "P_0", -0.278368 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.148466 AS "P_0", -0.148466 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.271138 AS "P_0", -0.271138 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.058478 AS "P_0", -0.058478 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.247060 AS "P_0", 0.247060 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.137966 AS "P_0", 0.137966 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.061117 AS "P_0", -0.061117 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.218774 AS "P_0", -0.218774 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.098441 AS "P_0", -0.098441 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.163031 AS "P_0", 0.163031 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.106033 AS "P_0", 0.106033 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  0.181679 AS "P_0", -0.181679 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.201691 AS "P_0", 0.201691 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.019199 AS "P_0", 0.019199 AS "P_1"
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
    CASE WHEN (t."X_5" < 6.000000) THEN CASE WHEN (t."X_5" < 4.000000) THEN CASE WHEN (t."X_6" < 2.000000) THEN 7 ELSE CASE WHEN (t."X_4" < 8.000000) THEN CASE WHEN (t."X_6" < 4.000000) THEN CASE WHEN (t."X_4" < 6.000000) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_8" < 5.000000) THEN 31 ELSE 32 END END ELSE 14 END END ELSE CASE WHEN (t."X_2" < 3.000000) THEN CASE WHEN (t."X_4" < 3.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_4" < 8.000000) THEN CASE WHEN (t."X_4" < 6.000000) THEN CASE WHEN (t."X_4" < 5.000000) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_1" < 7.000000) THEN 35 ELSE 36 END END ELSE 18 END END END ELSE CASE WHEN (t."X_5" < 8.000000) THEN CASE WHEN (t."X_4" < 6.000000) THEN CASE WHEN (t."X_6" < 6.000000) THEN CASE WHEN (t."X_6" < 5.000000) THEN CASE WHEN (t."X_4" < 2.000000) THEN 37 ELSE 38 END ELSE 28 END ELSE 20 END ELSE CASE WHEN (t."X_4" < 8.000000) THEN 21 ELSE 22 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 6 AS nid,  -0.221652 AS "P_0", 0.221652 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.224201 AS "P_0", -0.224201 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.226533 AS "P_0", -0.226534 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.218089 AS "P_0", -0.218089 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.112108 AS "P_0", -0.112108 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.213199 AS "P_0", -0.213199 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.064725 AS "P_0", -0.064725 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.210903 AS "P_0", 0.210903 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.138276 AS "P_0", 0.138276 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.213489 AS "P_0", 0.213489 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.101184 AS "P_0", -0.101184 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.180786 AS "P_0", -0.180786 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.072988 AS "P_0", -0.072988 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.124527 AS "P_0", 0.124527 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.062267 AS "P_0", 0.062267 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  0.185314 AS "P_0", -0.185314 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.149774 AS "P_0", 0.149774 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.014119 AS "P_0", 0.014118 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  -0.029213 AS "P_0", 0.029213 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.156397 AS "P_0", 0.156397 AS "P_1"
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
    CASE WHEN (t."X_5" < 6.000000) THEN CASE WHEN (t."X_2" < 2.000000) THEN 3 ELSE CASE WHEN (t."X_4" < 8.000000) THEN CASE WHEN (t."X_5" < 2.000000) THEN CASE WHEN (t."X_4" < 6.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_4" < 6.000000) THEN CASE WHEN (t."X_4" < 5.000000) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_5" < 3.000000) THEN 31 ELSE 32 END END END ELSE 8 END END ELSE CASE WHEN (t."X_5" < 7.000000) THEN CASE WHEN (t."X_3" < 6.000000) THEN CASE WHEN (t."X_8" < 6.000000) THEN CASE WHEN (t."X_9" < 4.000000) THEN 25 ELSE 26 END ELSE 16 END ELSE CASE WHEN (t."X_9" < 6.000000) THEN CASE WHEN (t."X_7" < 3.000000) THEN 27 ELSE 28 END ELSE 18 END END ELSE CASE WHEN (t."X_6" < 5.000000) THEN 11 ELSE CASE WHEN (t."X_0" < 1.000000) THEN 19 ELSE 20 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.197657 AS "P_0", -0.197657 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.198621 AS "P_0", -0.198621 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.092656 AS "P_0", 0.092656 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.189171 AS "P_0", 0.189171 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.046950 AS "P_0", -0.046950 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.105002 AS "P_0", 0.105002 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.184550 AS "P_0", 0.184550 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.107107 AS "P_0", -0.107107 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.192269 AS "P_0", -0.192269 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.167375 AS "P_0", 0.167375 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.068394 AS "P_0", 0.068394 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.189513 AS "P_0", 0.189513 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.039167 AS "P_0", 0.039167 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.002408 AS "P_0", -0.002408 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.147725 AS "P_0", -0.147725 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.080752 AS "P_0", -0.080752 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.102404 AS "P_0", 0.102404 AS "P_1"
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
    CASE WHEN (t."X_5" < 6.000000) THEN CASE WHEN (t."X_2" < 2.000000) THEN 3 ELSE CASE WHEN (t."X_4" < 8.000000) THEN CASE WHEN (t."X_5" < 2.000000) THEN CASE WHEN (t."X_9" < 5.000000) THEN CASE WHEN (t."X_3" < 4.000000) THEN 27 ELSE 28 END ELSE 20 END ELSE CASE WHEN (t."X_4" < 6.000000) THEN CASE WHEN (t."X_3" < 6.000000) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_6" < 4.000000) THEN 31 ELSE 32 END END END ELSE 8 END END ELSE CASE WHEN (t."X_5" < 8.000000) THEN CASE WHEN (t."X_4" < 6.000000) THEN CASE WHEN (t."X_6" < 6.000000) THEN CASE WHEN (t."X_6" < 5.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_0" < 7.000000) THEN 35 ELSE 36 END END ELSE 16 END ELSE CASE WHEN (t."X_1" < 7.000000) THEN 17 ELSE CASE WHEN (t."X_0" < 6.000000) THEN 25 ELSE 26 END END END ELSE CASE WHEN (t."X_1" < 2.000000) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.178728 AS "P_0", -0.178728 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.180548 AS "P_0", -0.180548 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.115213 AS "P_0", 0.115213 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.175141 AS "P_0", 0.175141 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.074764 AS "P_0", -0.074764 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.164748 AS "P_0", 0.164748 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.178488 AS "P_0", -0.178488 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.003354 AS "P_0", 0.003354 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.164985 AS "P_0", 0.164985 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.026520 AS "P_0", -0.026520 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.123365 AS "P_0", -0.123365 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.084757 AS "P_0", -0.084757 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  -0.030343 AS "P_0", 0.030343 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.071234 AS "P_0", -0.071234 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.075045 AS "P_0", 0.075045 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.141711 AS "P_0", 0.141711 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  -0.024335 AS "P_0", 0.024335 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.186160 AS "P_0", 0.186160 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.082630 AS "P_0", 0.082630 AS "P_1"
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
    CASE WHEN (t."X_5" < 6.000000) THEN CASE WHEN (t."X_2" < 2.000000) THEN 3 ELSE CASE WHEN (t."X_4" < 8.000000) THEN CASE WHEN (t."X_5" < 2.000000) THEN CASE WHEN (t."X_3" < 6.000000) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_7" < 8.000000) THEN CASE WHEN (t."X_8" < 1.000000) THEN 27 ELSE 28 END ELSE CASE WHEN (t."X_5" < 4.000000) THEN 29 ELSE 30 END END END ELSE 8 END END ELSE CASE WHEN (t."X_5" < 8.000000) THEN CASE WHEN (t."X_8" < 7.000000) THEN CASE WHEN (t."X_4" < 6.000000) THEN CASE WHEN (t."X_6" < 6.000000) THEN CASE WHEN (t."X_7" < 3.000000) THEN 31 ELSE 32 END ELSE 24 END ELSE CASE WHEN (t."X_3" < 6.000000) THEN 25 ELSE 26 END END ELSE CASE WHEN (t."X_9" < 6.000000) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_1" < 2.000000) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.165943 AS "P_0", -0.165943 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.168697 AS "P_0", -0.168697 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.097934 AS "P_0", 0.097934 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.160433 AS "P_0", 0.160433 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.169526 AS "P_0", 0.169526 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.072121 AS "P_0", 0.072121 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.065391 AS "P_0", -0.065391 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.159575 AS "P_0", -0.159575 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  0.104963 AS "P_0", -0.104963 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.151703 AS "P_0", 0.151703 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.037093 AS "P_0", 0.037093 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.155126 AS "P_0", -0.155126 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.008587 AS "P_0", -0.008587 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.029539 AS "P_0", -0.029539 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  -0.139407 AS "P_0", 0.139407 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  -0.163793 AS "P_0", 0.163793 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.019457 AS "P_0", 0.019457 AS "P_1"
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
  ) AS scu
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.505859 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.494141 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM "union_of_trees" t
  GROUP BY t."index"
 ),
soft_max_orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX( t."Score_0", t."Score_1" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1."index" as "index",
    t1."Proba_0" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_0" AS "Exp_Score_0",
    t1."Proba_1" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    t1."Exp_Score_1" AS "Exp_Score_1",
    ( t1."Exp_Score_0" + t1."Exp_Score_1" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    MAX( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1" ) AS "Max_Score"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    t."Max_Proba" AS "Max_Proba",
    t."Max_Score" AS "Max_Score"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
( SELECT t."index" as "index",
     t."Proba_0" AS "Proba_0",
     t."Score_0" AS "Score_0",
     t."Proba_1" AS "Proba_1",
     t."Score_1" AS "Score_1",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
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