WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
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
    t."X_9" AS "OUT_9",
    t."X_10" AS "OUT_10",
    t."X_11" AS "OUT_11",
    t."X_12" AS "OUT_12",
    t."X_13" AS "OUT_13"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    0.138573 + -0.082182 * t."OUT_0"  + 0.106196 * t."OUT_1"  + 0.459855 * t."OUT_2"  + 0.542901 * t."OUT_3"  + 0.269344 * t."OUT_4"  + 0.220222 * t."OUT_5"  + -0.114696 * t."OUT_6"  + -0.042435 * t."OUT_7"  + -0.176366 * t."OUT_8"  + -0.353596 * t."OUT_9"  + -0.447130 * t."OUT_10"  + -0.394855 * t."OUT_11"  + 0.355914 * t."OUT_12"  + 0.314713 * t."OUT_13" AS "OUT_0",
    0.010593 + 0.266804 * t."OUT_0"  + -0.374373 * t."OUT_1"  + 0.089796 * t."OUT_2"  + -0.479545 * t."OUT_3"  + -0.309297 * t."OUT_4"  + -0.538884 * t."OUT_5"  + -0.493507 * t."OUT_6"  + 0.004762 * t."OUT_7"  + 0.183489 * t."OUT_8"  + 0.474674 * t."OUT_9"  + 0.284950 * t."OUT_10"  + -0.477667 * t."OUT_11"  + 0.462549 * t."OUT_12"  + 0.439632 * t."OUT_13" AS "OUT_1",
    0.043944 + -0.264979 * t."OUT_0"  + 0.167347 * t."OUT_1"  + 0.450709 * t."OUT_2"  + -0.212030 * t."OUT_3"  + -0.323152 * t."OUT_4"  + -0.092054 * t."OUT_5"  + -0.265394 * t."OUT_6"  + -0.485976 * t."OUT_7"  + -0.116169 * t."OUT_8"  + -0.391961 * t."OUT_9"  + 0.106656 * t."OUT_10"  + 0.163809 * t."OUT_11"  + 0.410049 * t."OUT_12"  + -0.318134 * t."OUT_13" AS "OUT_2",
    0.329774 + -0.042498 * t."OUT_0"  + 0.018387 * t."OUT_1"  + -0.090487 * t."OUT_2"  + 0.185224 * t."OUT_3"  + -0.417190 * t."OUT_4"  + 0.026923 * t."OUT_5"  + 0.441385 * t."OUT_6"  + 0.032922 * t."OUT_7"  + 0.214592 * t."OUT_8"  + 0.279965 * t."OUT_9"  + 0.493445 * t."OUT_10"  + 0.178704 * t."OUT_11"  + -0.344451 * t."OUT_12"  + 0.227911 * t."OUT_13" AS "OUT_3"
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
    0.029435 + -0.575274 * t."OUT_0"  + 0.666390 * t."OUT_1"  + 0.288050 * t."OUT_2"  + -0.596587 * t."OUT_3" AS "OUT_0",
    -0.111636 + 0.121599 * t."OUT_0"  + 0.706601 * t."OUT_1"  + 0.450069 * t."OUT_2"  + 0.322835 * t."OUT_3" AS "OUT_1",
    -0.195422 + 0.258165 * t."OUT_0"  + -0.124008 * t."OUT_1"  + 0.591555 * t."OUT_2"  + 0.007842 * t."OUT_3" AS "OUT_2",
    -0.633386 + 0.376074 * t."OUT_0"  + -0.543945 * t."OUT_1"  + -0.326594 * t."OUT_2"  + -0.133978 * t."OUT_3" AS "OUT_3",
    0.235601 + -0.572415 * t."OUT_0"  + -0.025484 * t."OUT_1"  + 0.267329 * t."OUT_2"  + -0.488291 * t."OUT_3" AS "OUT_4",
    -0.246820 + 0.458596 * t."OUT_0"  + 0.645251 * t."OUT_1"  + 0.466096 * t."OUT_2"  + -0.637754 * t."OUT_3" AS "OUT_5",
    -0.258318 + -0.362349 * t."OUT_0"  + -0.478856 * t."OUT_1"  + 0.518697 * t."OUT_2"  + -0.228659 * t."OUT_3" AS "OUT_6",
    -0.143680 + -0.622683 * t."OUT_0"  + 0.248640 * t."OUT_1"  + -0.063368 * t."OUT_2"  + 0.606367 * t."OUT_3" AS "OUT_7"
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
    -0.102936 + 0.239555 * t."OUT_0"  + 0.444787 * t."OUT_1"  + 0.291422 * t."OUT_2"  + -0.154200 * t."OUT_3"  + -0.386450 * t."OUT_4"  + -0.557435 * t."OUT_5"  + -0.469560 * t."OUT_6"  + -0.548428 * t."OUT_7" AS "OUT_0",
    0.144275 + -0.431684 * t."OUT_0"  + 0.340339 * t."OUT_1"  + -0.032585 * t."OUT_2"  + -0.294011 * t."OUT_3"  + -0.001729 * t."OUT_4"  + 0.457156 * t."OUT_5"  + -0.503103 * t."OUT_6"  + 0.126355 * t."OUT_7" AS "OUT_1",
    0.045427 + -0.185583 * t."OUT_0"  + -0.310093 * t."OUT_1"  + 0.344950 * t."OUT_2"  + 0.313933 * t."OUT_3"  + 0.122957 * t."OUT_4"  + 0.561770 * t."OUT_5"  + -0.218569 * t."OUT_6"  + -0.399099 * t."OUT_7" AS "OUT_2",
    -0.433148 + 0.345899 * t."OUT_0"  + 0.061712 * t."OUT_1"  + 0.423650 * t."OUT_2"  + 0.333667 * t."OUT_3"  + -0.233412 * t."OUT_4"  + -0.402418 * t."OUT_5"  + -0.149899 * t."OUT_6"  + -0.487476 * t."OUT_7" AS "OUT_3",
    -0.107874 + 0.400288 * t."OUT_0"  + 0.156136 * t."OUT_1"  + 0.107910 * t."OUT_2"  + -0.422008 * t."OUT_3"  + 0.268866 * t."OUT_4"  + -0.216041 * t."OUT_5"  + -0.397683 * t."OUT_6"  + 0.129981 * t."OUT_7" AS "OUT_4",
    0.542555 + 0.526231 * t."OUT_0"  + 0.412954 * t."OUT_1"  + -0.195384 * t."OUT_2"  + 0.182649 * t."OUT_3"  + -0.587535 * t."OUT_4"  + -0.463919 * t."OUT_5"  + -0.441119 * t."OUT_6"  + 0.197564 * t."OUT_7" AS "OUT_5"
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
    0.351511 + 0.891145 * t."OUT_0"  + -0.116135 * t."OUT_1"  + -0.756328 * t."OUT_2"  + -0.419017 * t."OUT_3"  + 0.355301 * t."OUT_4"  + -0.735261 * t."OUT_5" AS "OUT_0"
 FROM "Hidden_Layer_3_Activation" AS t
),
model_scores_cte AS 
( SELECT t."index" AS "index",
   -0.5 * t."OUT_0" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.5 * t."OUT_0" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM "Output_Layer_BA" AS t ),
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
),arg_max_cte_with_max_proba AS 
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