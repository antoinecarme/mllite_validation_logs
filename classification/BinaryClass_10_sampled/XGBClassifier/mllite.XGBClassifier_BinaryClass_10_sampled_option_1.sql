WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_5" < 0.026367) THEN CASE WHEN (t."X_5" < -0.761259) THEN CASE WHEN (t."X_4" < 0.633071) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_3" < -0.498485) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_5" < 0.415792) THEN 5 ELSE CASE WHEN (t."X_8" < -0.408593) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  -0.036849 AS "P_0", 0.036849 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.156404 AS "P_0", -0.156404 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.279258 AS "P_0", -0.279258 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.029039 AS "P_0", -0.029039 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.129795 AS "P_0", -0.129795 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.122603 AS "P_0", 0.122603 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.250579 AS "P_0", 0.250579 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.026367) THEN CASE WHEN (t."X_4" < -0.606263) THEN 3 ELSE CASE WHEN (t."X_4" < 0.978572) THEN CASE WHEN (t."X_5" < -0.761259) THEN 11 ELSE 12 END ELSE 8 END END ELSE CASE WHEN (t."X_5" < 1.089994) THEN CASE WHEN (t."X_4" < 0.940039) THEN CASE WHEN (t."X_8" < -0.408593) THEN 13 ELSE 14 END ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.235418 AS "P_0", -0.235418 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.221532 AS "P_0", 0.221532 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.220305 AS "P_0", -0.220305 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.190837 AS "P_0", 0.190837 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.105219 AS "P_0", -0.105219 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.046740 AS "P_0", 0.046740 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.052716 AS "P_0", -0.052716 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.064760 AS "P_0", 0.064760 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.415792) THEN CASE WHEN (t."X_6" < 0.235087) THEN CASE WHEN (t."X_2" < -0.485268) THEN CASE WHEN (t."X_3" < 0.309242) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_4" < 0.633071) THEN 13 ELSE 14 END END ELSE 4 END ELSE CASE WHEN (t."X_5" < 1.089994) THEN CASE WHEN (t."X_2" < 0.201192) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.031925 AS "P_0", 0.031925 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.189500 AS "P_0", 0.189500 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.164636 AS "P_0", 0.164636 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.020011 AS "P_0", 0.020011 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.213436 AS "P_0", -0.213436 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.100968 AS "P_0", -0.100968 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.043374 AS "P_0", 0.043374 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.172063 AS "P_0", -0.172063 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.415792) THEN CASE WHEN (t."X_3" < -0.766536) THEN 3 ELSE CASE WHEN (t."X_4" < -0.606263) THEN 7 ELSE CASE WHEN (t."X_2" < -0.120141) THEN 11 ELSE CASE WHEN (t."X_9" < -0.204729) THEN 13 ELSE 14 END END END END ELSE CASE WHEN (t."X_5" < 1.089994) THEN CASE WHEN (t."X_2" < 0.201192) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.038345 AS "P_0", 0.038345 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.169710 AS "P_0", 0.169710 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.188360 AS "P_0", -0.188360 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.135205 AS "P_0", 0.135205 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.015090 AS "P_0", 0.015090 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.023817 AS "P_0", 0.023817 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.020568 AS "P_0", -0.020568 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.198482 AS "P_0", -0.198482 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.026367) THEN CASE WHEN (t."X_0" < 0.922568) THEN CASE WHEN (t."X_0" < -0.259218) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_4" < 0.940039) THEN CASE WHEN (t."X_9" < 0.285353) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.019289 AS "P_0", 0.019289 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.161602 AS "P_0", 0.161602 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.035723 AS "P_0", -0.035723 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.171533 AS "P_0", -0.171533 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.135157 AS "P_0", 0.135157 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.086674 AS "P_0", -0.086674 AS "P_1"
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