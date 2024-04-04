WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN 7 ELSE CASE WHEN (t."X_4" < 11.000000) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_12" < 2.000000) THEN 9 ELSE CASE WHEN (t."X_2" < 183916.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_2" < 105598.000000) THEN 31 ELSE 32 END END ELSE CASE WHEN (t."X_4" < 9.000000) THEN 27 ELSE CASE WHEN (t."X_2" < 273905.000000) THEN 33 ELSE 34 END END END END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_2" < 160943.000000) THEN 11 ELSE CASE WHEN (t."X_2" < 228528.000000) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_2" < 183916.000000) THEN CASE WHEN (t."X_2" < 105598.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < 3.000000) THEN 23 ELSE 24 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  0.223889 AS "P_0", -0.223889 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.192979 AS "P_0", -0.192979 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.107150 AS "P_0", 0.107150 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.177241 AS "P_0", -0.177241 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.092827 AS "P_0", -0.092827 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.083980 AS "P_0", -0.083980 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.147855 AS "P_0", -0.147855 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.031219 AS "P_0", -0.031219 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.058436 AS "P_0", 0.058436 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.079616 AS "P_0", 0.079616 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.256144 AS "P_0", 0.256144 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.147855 AS "P_0", -0.147855 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.114188 AS "P_0", -0.114188 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.199831 AS "P_0", -0.199831 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  -0.058228 AS "P_0", 0.058229 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  0.092472 AS "P_0", -0.092472 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.115743 AS "P_0", 0.115743 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  0.080607 AS "P_0", -0.080607 AS "P_1"
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
    CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN 7 ELSE CASE WHEN (t."X_4" < 11.000000) THEN CASE WHEN (t."X_2" < 105598.000000) THEN 21 ELSE CASE WHEN (t."X_2" < 198282.000000) THEN 29 ELSE 30 END END ELSE 14 END END ELSE CASE WHEN (t."X_12" < 2.000000) THEN 9 ELSE CASE WHEN (t."X_2" < 183916.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN 23 ELSE CASE WHEN (t."X_2" < 105598.000000) THEN 31 ELSE 32 END END ELSE CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_4" < 11.000000) THEN 33 ELSE 34 END ELSE 26 END END END END ELSE CASE WHEN (t."X_12" < 2.000000) THEN 5 ELSE CASE WHEN (t."X_2" < 273905.000000) THEN CASE WHEN (t."X_2" < 105598.000000) THEN 17 ELSE CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_2" < 160943.000000) THEN 35 ELSE 36 END ELSE 28 END END ELSE CASE WHEN (t."X_2" < 340148.000000) THEN 19 ELSE 20 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  0.092720 AS "P_0", -0.092720 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.191632 AS "P_0", -0.191632 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.161133 AS "P_0", -0.161133 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.072758 AS "P_0", -0.072758 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.027835 AS "P_0", 0.027835 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.030361 AS "P_0", -0.030361 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.016062 AS "P_0", 0.016062 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.081865 AS "P_0", -0.081865 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.116945 AS "P_0", -0.116945 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.127289 AS "P_0", 0.127289 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.181181 AS "P_0", 0.181181 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.180786 AS "P_0", -0.180786 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.107037 AS "P_0", -0.107037 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  -0.041676 AS "P_0", 0.041676 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  0.071415 AS "P_0", -0.071415 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  0.041158 AS "P_0", -0.041158 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  -0.032149 AS "P_0", 0.032148 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.118868 AS "P_0", 0.118868 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.009304 AS "P_0", 0.009304 AS "P_1"
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
    CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN 7 ELSE CASE WHEN (t."X_2" < 125417.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN 25 ELSE 26 END ELSE CASE WHEN (t."X_2" < 198282.000000) THEN 27 ELSE CASE WHEN (t."X_2" < 273905.000000) THEN 35 ELSE 36 END END END END ELSE CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_2" < 160943.000000) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_2" < 198282.000000) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_4" < 11.000000) THEN 39 ELSE 40 END END ELSE CASE WHEN (t."X_4" < 9.000000) THEN 31 ELSE CASE WHEN (t."X_2" < 183916.000000) THEN 41 ELSE 42 END END END END END ELSE CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_2" < 160943.000000) THEN CASE WHEN (t."X_2" < 105598.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 33 ELSE 34 END ELSE 24 END END ELSE CASE WHEN (t."X_2" < 160943.000000) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  0.171823 AS "P_0", -0.171823 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.013080 AS "P_0", 0.013080 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.136010 AS "P_0", 0.136010 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.167797 AS "P_0", -0.167797 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.091457 AS "P_0", -0.091457 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.091909 AS "P_0", -0.091909 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.139560 AS "P_0", 0.139560 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.076971 AS "P_0", 0.076971 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.117675 AS "P_0", -0.117675 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.028393 AS "P_0", -0.028393 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.155189 AS "P_0", -0.155189 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.133956 AS "P_0", -0.133956 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  0.154409 AS "P_0", -0.154409 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  0.037767 AS "P_0", -0.037767 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.052573 AS "P_0", -0.052573 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  0.130140 AS "P_0", -0.130140 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  0.115194 AS "P_0", -0.115194 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.021048 AS "P_0", 0.021048 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  -0.020016 AS "P_0", 0.020016 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  -0.116074 AS "P_0", 0.116074 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  0.086190 AS "P_0", -0.086190 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  -0.010040 AS "P_0", 0.010040 AS "P_1"
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
    CASE WHEN (t."X_0" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_2" < 340148.000000) THEN CASE WHEN (t."X_2" < 198282.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_2" < 105598.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_2" < 183916.000000) THEN 23 ELSE 24 END END ELSE CASE WHEN (t."X_2" < 228528.000000) THEN 15 ELSE CASE WHEN (t."X_0" < 2.000000) THEN 25 ELSE 26 END END END ELSE 6 END ELSE CASE WHEN (t."X_2" < 105598.000000) THEN 7 ELSE CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_2" < 228528.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 27 ELSE 28 END ELSE 18 END ELSE CASE WHEN (t."X_2" < 198282.000000) THEN 19 ELSE 20 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.156705 AS "P_0", -0.156705 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.156822 AS "P_0", -0.156822 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.008973 AS "P_0", -0.008973 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.086765 AS "P_0", 0.086765 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.037237 AS "P_0", -0.037237 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.057876 AS "P_0", 0.057876 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.111617 AS "P_0", 0.111617 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.073955 AS "P_0", -0.073955 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.145781 AS "P_0", -0.145781 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.033384 AS "P_0", -0.033384 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.117045 AS "P_0", 0.117045 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.111712 AS "P_0", -0.111712 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.011411 AS "P_0", -0.011411 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.074858 AS "P_0", 0.074858 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.022866 AS "P_0", 0.022866 AS "P_1"
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
    CASE WHEN (t."X_0" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_2" < 228528.000000) THEN CASE WHEN (t."X_2" < 183916.000000) THEN 21 ELSE 22 END ELSE 14 END ELSE CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_4" < 11.000000) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_4" < 10.000000) THEN 25 ELSE 26 END END END ELSE CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_2" < 228528.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 27 ELSE 28 END ELSE 18 END ELSE CASE WHEN (t."X_2" < 160943.000000) THEN 19 ELSE 20 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.142521 AS "P_0", -0.142521 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.135071 AS "P_0", -0.135071 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.063536 AS "P_0", -0.063536 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.114505 AS "P_0", -0.114505 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.036235 AS "P_0", -0.036235 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.012088 AS "P_0", -0.012088 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.104145 AS "P_0", 0.104145 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.084396 AS "P_0", -0.084396 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.002325 AS "P_0", -0.002325 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.002251 AS "P_0", -0.002251 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.077073 AS "P_0", 0.077073 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.019765 AS "P_0", -0.019765 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.067527 AS "P_0", -0.067527 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.081175 AS "P_0", 0.081175 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.026110 AS "P_0", 0.026110 AS "P_1"
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
   0.779297 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.220703 + SUM(t."P_1") AS "Score_1",
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
   GREATEST( t."Score_0", t."Score_1" ) AS "Greatest_Score"
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
    GREATEST( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1" ) AS "Max_Score"
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