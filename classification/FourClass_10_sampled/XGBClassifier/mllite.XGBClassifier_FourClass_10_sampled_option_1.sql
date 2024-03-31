WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_8" < 0.123663) THEN CASE WHEN (t."X_3" < 1.043369) THEN CASE WHEN (t."X_6" < 0.438471) THEN CASE WHEN (t."X_0" < -0.408017) THEN 13 ELSE 14 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_7" < -0.499781) THEN CASE WHEN (t."X_1" < 0.716127) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_7" < 0.983137) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 4 AS nid,  -0.117632 AS "P_0", -0.167985 AS "P_1", -0.075978 AS "P_2", 0.362969 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.136247 AS "P_0", -0.101515 AS "P_1", 0.330018 AS "P_2", -0.100610 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  0.219991 AS "P_0", -0.019322 AS "P_1", -0.062433 AS "P_2", -0.134721 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.117632 AS "P_0", -0.119980 AS "P_1", -0.123158 AS "P_2", 0.362969 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  0.023750 AS "P_0", 0.251677 AS "P_1", -0.138482 AS "P_2", -0.134721 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.166276 AS "P_0", 0.456084 AS "P_1", -0.123158 AS "P_2", -0.167411 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  0.221278 AS "P_0", -0.128552 AS "P_1", 0.036798 AS "P_2", -0.127789 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  -0.076299 AS "P_0", -0.169797 AS "P_1", 0.228368 AS "P_2", 0.012734 AS "P_3"
  ) AS "Values")
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_8" < 0.123663) THEN CASE WHEN (t."X_1" < -0.791891) THEN 3 ELSE CASE WHEN (t."X_5" < 0.342609) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_1" < -0.174283) THEN 5 ELSE CASE WHEN (t."X_6" < -2.111351) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.075820 AS "P_0", -0.169308 AS "P_1", -0.002342 AS "P_2", 0.206990 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  0.248892 AS "P_0", 0.016636 AS "P_1", -0.135010 AS "P_2", -0.165988 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.117878 AS "P_0", -0.126336 AS "P_1", 0.104098 AS "P_2", -0.126621 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.104523 AS "P_0", -0.089122 AS "P_1", 0.255761 AS "P_2", -0.101197 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  -0.087572 AS "P_0", -0.082036 AS "P_1", -0.037560 AS "P_2", 0.182535 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.145382 AS "P_0", 0.279377 AS "P_1", -0.115505 AS "P_2", -0.088725 AS "P_3"
  ) AS "Values")
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_8" < 0.123663) THEN CASE WHEN (t."X_3" < 0.279263) THEN CASE WHEN (t."X_8" < -0.955161) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_1" < -0.174283) THEN 5 ELSE CASE WHEN (t."X_7" < -0.499781) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 4 AS nid,  -0.053051 AS "P_0", -0.157529 AS "P_1", -0.033494 AS "P_2", 0.179128 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  0.180620 AS "P_0", 0.017197 AS "P_1", -0.121568 AS "P_2", -0.155579 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  -0.001528 AS "P_0", -0.163982 AS "P_1", 0.218711 AS "P_2", -0.137882 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.004673 AS "P_0", -0.008544 AS "P_1", 0.036458 AS "P_2", -0.033747 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  -0.124821 AS "P_0", -0.046029 AS "P_1", -0.043479 AS "P_2", 0.164841 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.093759 AS "P_0", 0.206416 AS "P_1", -0.094906 AS "P_2", -0.128013 AS "P_3"
  ) AS "Values")
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_7" < -0.044483) THEN CASE WHEN (t."X_3" < 0.279263) THEN CASE WHEN (t."X_0" < -0.030155) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_8" < 0.458008) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 4 AS nid,  0.084741 AS "P_0", -0.101465 AS "P_1", -0.114564 AS "P_2", 0.098063 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.031356 AS "P_0", -0.008807 AS "P_1", 0.107255 AS "P_2", -0.097053 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.049860 AS "P_0", 0.188237 AS "P_1", -0.154564 AS "P_2", -0.107550 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.054238 AS "P_0", -0.105033 AS "P_1", -0.056251 AS "P_2", 0.094173 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.113581 AS "P_0", -0.048191 AS "P_1", 0.185859 AS "P_2", -0.059001 AS "P_3"
  ) AS "Values")
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_8" < 0.123663) THEN CASE WHEN (t."X_3" < -0.381042) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_7" < -1.088101) THEN 5 ELSE CASE WHEN (t."X_2" < 0.171390) THEN 7 ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  0.046900 AS "P_0", -0.099816 AS "P_1", 0.094202 AS "P_2", -0.112950 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  -0.083069 AS "P_0", -0.118171 AS "P_1", 0.019445 AS "P_2", 0.115945 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  0.093250 AS "P_0", -0.117510 AS "P_1", -0.117927 AS "P_2", 0.099019 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  -0.029389 AS "P_0", 0.179408 AS "P_1", -0.151325 AS "P_2", -0.110919 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.047457 AS "P_0", 0.064625 AS "P_1", 0.054970 AS "P_2", -0.088740 AS "P_3"
  ) AS "Values")
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 )
,
union_of_trees AS 
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1", scu."P_2" AS "P_2", scu."P_3" AS "P_3"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_4" AS t
  ) AS scu
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.226562 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.250000 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   0.281250 + SUM(t."P_2") AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   0.242188 + SUM(t."P_3") AS "Score_3",
   CAST(NULL AS FLOAT) AS "Proba_3",
   CAST(NULL AS FLOAT) AS "LogProba_3"
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
   t."Score_2" AS "Score_2",
   t."Proba_2" AS "Proba_2",
   t."LogProba_2" AS "LogProba_2",
   t."Score_3" AS "Score_3",
   t."Proba_3" AS "Proba_3",
   t."LogProba_3" AS "LogProba_3",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX(t."Score_0", t."Score_1", t."Score_2", t."Score_3") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1.*,
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" ) AS "Sum_Exp"
  FROM
   ( SELECT t.*,
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2",
        EXP(t."Score_3" - t."Greatest_Score") as "Exp_Score_3"
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
    t1."Score_1" AS "Score_1",
    CAST(NULL AS FLOAT) AS "LogProba_2",
    t1."Exp_Score_2" / t1."Sum_Exp" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    CAST(NULL AS FLOAT) AS "LogProba_3",
    t1."Exp_Score_3" / t1."Sum_Exp" AS "Proba_3",
    t1."Score_3" AS "Score_3"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t.*,
   CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
   CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
   CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
   CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3" ) AS argmax_class_idx
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
  arg_max_cte."Score_2" AS "Score_2",
  arg_max_cte."Proba_2" AS "Proba_2",
  CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN LN( arg_max_cte."Proba_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
  arg_max_cte."Score_3" AS "Score_3",
  arg_max_cte."Proba_3" AS "Proba_3",
  CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN LN( arg_max_cte."Proba_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte