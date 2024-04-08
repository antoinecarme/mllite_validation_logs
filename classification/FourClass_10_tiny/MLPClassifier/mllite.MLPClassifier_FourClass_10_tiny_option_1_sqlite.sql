WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "FourClass_10_tiny" AS "ADS" 
 ),
"Input_Layer_BA" AS
 ( SELECT t."index" as "index",
    t."X_0" AS "OUT_0",
    t."X_1" AS "OUT_1",
    t."X_2" AS "OUT_2",
    t."X_3" AS "OUT_3",
    t."X_4" AS "OUT_4",
    t."X_5" AS "OUT_5",
    t."X_6" AS "OUT_6",
    t."X_7" AS "OUT_7",
    t."X_8" AS "OUT_8",
    t."X_9" AS "OUT_9"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    -0.499854 + -0.086814 * t."OUT_0"  + 0.151402 * t."OUT_1"  + 0.527794 * t."OUT_2"  + 0.672687 * t."OUT_3"  + 0.311649 * t."OUT_4"  + 0.253373 * t."OUT_5"  + -0.137333 * t."OUT_6"  + -0.016440 * t."OUT_7"  + -0.171643 * t."OUT_8"  + -0.409369 * t."OUT_9" AS "OUT_0",
    0.330286 + 0.367734 * t."OUT_0"  + -0.484605 * t."OUT_1"  + 0.108212 * t."OUT_2"  + -0.549845 * t."OUT_3"  + -0.283687 * t."OUT_4"  + -0.631922 * t."OUT_5"  + -0.564834 * t."OUT_6"  + 0.036404 * t."OUT_7"  + 0.276316 * t."OUT_8"  + 0.542898 * t."OUT_9" AS "OUT_1",
    0.123405 + -0.236466 * t."OUT_0"  + 0.159106 * t."OUT_1"  + 0.513961 * t."OUT_2"  + -0.243917 * t."OUT_3"  + -0.301387 * t."OUT_4"  + -0.076235 * t."OUT_5"  + -0.305080 * t."OUT_6"  + -0.556609 * t."OUT_7"  + -0.162244 * t."OUT_8"  + -0.507411 * t."OUT_9" AS "OUT_2",
    0.564615 + -0.079293 * t."OUT_0"  + 0.051847 * t."OUT_1"  + -0.072004 * t."OUT_2"  + 0.212689 * t."OUT_3"  + -0.478619 * t."OUT_4"  + 0.000116 * t."OUT_5"  + 0.505003 * t."OUT_6"  + 0.068297 * t."OUT_7"  + 0.307903 * t."OUT_8"  + 0.322623 * t."OUT_9" AS "OUT_3"
 FROM "Input_Layer_BA" AS t
),
"Hidden_Layer_1_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3"
 FROM "Hidden_Layer_1_BA" AS t
),
"Hidden_Layer_2_BA" AS
 ( SELECT t."index" as "index",
    0.295076 + -0.411498 * t."OUT_0"  + 0.393148 * t."OUT_1"  + -0.635391 * t."OUT_2"  + 0.670915 * t."OUT_3" AS "OUT_0",
    0.387519 + -0.573615 * t."OUT_0"  + 0.546021 * t."OUT_1"  + 0.058894 * t."OUT_2"  + 0.645756 * t."OUT_3" AS "OUT_1",
    0.653779 + 0.267072 * t."OUT_0"  + -0.396178 * t."OUT_1"  + 0.320927 * t."OUT_2"  + -0.064353 * t."OUT_3" AS "OUT_2",
    -0.387526 + 0.225578 * t."OUT_0"  + 0.285631 * t."OUT_1"  + 0.376658 * t."OUT_2"  + -0.605906 * t."OUT_3" AS "OUT_3",
    0.332241 + 0.505778 * t."OUT_0"  + 0.180158 * t."OUT_1"  + -0.630044 * t."OUT_2"  + 0.008568 * t."OUT_3" AS "OUT_4",
    0.467207 + 0.577503 * t."OUT_0"  + 0.022620 * t."OUT_1"  + 0.459761 * t."OUT_2"  + 0.646684 * t."OUT_3" AS "OUT_5",
    0.493342 + 0.518021 * t."OUT_0"  + 0.061349 * t."OUT_1"  + -0.421779 * t."OUT_2"  + -0.530513 * t."OUT_3" AS "OUT_6",
    -0.032539 + -0.430080 * t."OUT_0"  + 0.434935 * t."OUT_1"  + -0.622063 * t."OUT_2"  + 0.308509 * t."OUT_3" AS "OUT_7"
 FROM "Hidden_Layer_1_Activation" AS t
),
"Hidden_Layer_2_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3",
    CASE WHEN (t."OUT_4" > 0) THEN t."OUT_4" ELSE 0 END AS "OUT_4",
    CASE WHEN (t."OUT_5" > 0) THEN t."OUT_5" ELSE 0 END AS "OUT_5",
    CASE WHEN (t."OUT_6" > 0) THEN t."OUT_6" ELSE 0 END AS "OUT_6",
    CASE WHEN (t."OUT_7" > 0) THEN t."OUT_7" ELSE 0 END AS "OUT_7"
 FROM "Hidden_Layer_2_BA" AS t
),
"Hidden_Layer_3_BA" AS
 ( SELECT t."index" as "index",
    0.562280 + -0.611951 * t."OUT_0"  + -0.270057 * t."OUT_1"  + 0.186364 * t."OUT_2"  + -0.245533 * t."OUT_3"  + -0.309537 * t."OUT_4"  + 0.346096 * t."OUT_5"  + 0.314341 * t."OUT_6"  + 0.088815 * t."OUT_7" AS "OUT_0",
    -0.463783 + 0.297706 * t."OUT_0"  + 0.560093 * t."OUT_1"  + -0.230828 * t."OUT_2"  + 0.346322 * t."OUT_3"  + 0.031799 * t."OUT_4"  + 0.424410 * t."OUT_5"  + 0.351626 * t."OUT_6"  + -0.294119 * t."OUT_7" AS "OUT_1",
    -0.276615 + -0.023799 * t."OUT_0"  + -0.003128 * t."OUT_1"  + -0.285305 * t."OUT_2"  + 0.401170 * t."OUT_3"  + 0.151509 * t."OUT_4"  + 0.078039 * t."OUT_5"  + -0.482137 * t."OUT_6"  + 0.266559 * t."OUT_7" AS "OUT_2",
    -0.494865 + -0.124039 * t."OUT_0"  + -0.133482 * t."OUT_1"  + -0.133022 * t."OUT_2"  + 0.526231 * t."OUT_3"  + 0.412954 * t."OUT_4"  + -0.195384 * t."OUT_5"  + 0.182649 * t."OUT_6"  + -0.587535 * t."OUT_7" AS "OUT_3",
    -0.500519 + -0.449854 * t."OUT_0"  + -0.151607 * t."OUT_1"  + 0.239555 * t."OUT_2"  + 0.444787 * t."OUT_3"  + 0.291422 * t."OUT_4"  + -0.154200 * t."OUT_5"  + -0.386450 * t."OUT_6"  + -0.557435 * t."OUT_7" AS "OUT_4",
    -0.502640 + -0.588194 * t."OUT_0"  + -0.555284 * t."OUT_1"  + -0.431684 * t."OUT_2"  + 0.341110 * t."OUT_3"  + -0.001604 * t."OUT_4"  + -0.294011 * t."OUT_5"  + -0.001729 * t."OUT_6"  + 0.457149 * t."OUT_7" AS "OUT_5"
 FROM "Hidden_Layer_2_Activation" AS t
),
"Hidden_Layer_3_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3",
    CASE WHEN (t."OUT_4" > 0) THEN t."OUT_4" ELSE 0 END AS "OUT_4",
    CASE WHEN (t."OUT_5" > 0) THEN t."OUT_5" ELSE 0 END AS "OUT_5"
 FROM "Hidden_Layer_3_BA" AS t
),
"Output_Layer_BA" AS
 ( SELECT t."index" as "index",
    0.718539 + -0.226770 * t."OUT_0"  + -0.675079 * t."OUT_1"  + 0.119085 * t."OUT_2"  + 0.091557 * t."OUT_3"  + 0.740563 * t."OUT_4"  + 0.292528 * t."OUT_5" AS "OUT_0",
    0.713525 + -0.207724 * t."OUT_0"  + 0.119639 * t."OUT_1"  + 0.240380 * t."OUT_2"  + -0.481524 * t."OUT_3"  + -0.123417 * t."OUT_4"  + -0.610184 * t."OUT_5" AS "OUT_1",
    -0.323009 + -0.475964 * t."OUT_0"  + -0.478053 * t."OUT_1"  + -0.091755 * t."OUT_2"  + -0.127638 * t."OUT_3"  + -0.627652 * t."OUT_4"  + 0.237228 * t."OUT_5" AS "OUT_2",
    0.433123 + -0.529525 * t."OUT_0"  + -0.583265 * t."OUT_1"  + 0.235523 * t."OUT_2"  + 0.610762 * t."OUT_3"  + -0.345769 * t."OUT_4"  + -0.379884 * t."OUT_5" AS "OUT_3"
 FROM "Hidden_Layer_3_Activation" AS t
),
model_scores_cte AS 
( SELECT t."index" AS "index",
   t."OUT_0" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   t."OUT_1" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   t."OUT_2" AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   t."OUT_3" AS "Score_3",
   CAST(NULL AS FLOAT) AS "Proba_3",
   CAST(NULL AS FLOAT) AS "LogProba_3"
  FROM "Output_Layer_BA" AS t ),
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
   MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Greatest_Score"
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
    t1."Proba_2" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    t1."Exp_Score_2" AS "Exp_Score_2",
    t1."Proba_3" AS "Proba_3",
    t1."Score_3" AS "Score_3",
    t1."Exp_Score_3" AS "Exp_Score_3",
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        t."Proba_2" AS "Proba_2",
        t."Score_2" AS "Score_2",
        t."Proba_3" AS "Proba_3",
        t."Score_3" AS "Score_3",
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
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    t1."Exp_Score_2" / t1."Sum_Exp" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    t1."Exp_Score_3" / t1."Sum_Exp" AS "Proba_3",
    t1."Score_3" AS "Score_3"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    MAX( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Max_Score"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
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
     t."Proba_2" AS "Proba_2",
     t."Score_2" AS "Score_2",
     t."Proba_3" AS "Proba_3",
     t."Score_3" AS "Score_3",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
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