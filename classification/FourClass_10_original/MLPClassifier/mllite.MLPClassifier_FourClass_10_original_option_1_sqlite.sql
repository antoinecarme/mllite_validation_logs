WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
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
    t."X_9" AS "OUT_9"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    -0.477418 + 0.045240 * t."OUT_0"  + 0.013316 * t."OUT_1"  + 0.529895 * t."OUT_2"  + 0.776123 * t."OUT_3"  + 0.282606 * t."OUT_4"  + 0.238465 * t."OUT_5"  + -0.087671 * t."OUT_6"  + -0.078674 * t."OUT_7"  + -0.214350 * t."OUT_8"  + -0.360593 * t."OUT_9" AS "OUT_0",
    0.292261 + 0.298486 * t."OUT_0"  + -0.288278 * t."OUT_1"  + 0.112930 * t."OUT_2"  + -0.608271 * t."OUT_3"  + -0.224849 * t."OUT_4"  + -0.532928 * t."OUT_5"  + -0.519750 * t."OUT_6"  + 0.124330 * t."OUT_7"  + 0.286180 * t."OUT_8"  + 0.522150 * t."OUT_9" AS "OUT_1",
    0.098470 + -0.275899 * t."OUT_0"  + 0.174770 * t."OUT_1"  + 0.471531 * t."OUT_2"  + -0.210723 * t."OUT_3"  + -0.245951 * t."OUT_4"  + -0.113580 * t."OUT_5"  + -0.308733 * t."OUT_6"  + -0.538146 * t."OUT_7"  + -0.008363 * t."OUT_8"  + -0.380834 * t."OUT_9" AS "OUT_2",
    0.508101 + -0.122668 * t."OUT_0"  + 0.121733 * t."OUT_1"  + -0.057398 * t."OUT_2"  + 0.130754 * t."OUT_3"  + -0.401599 * t."OUT_4"  + 0.028016 * t."OUT_5"  + 0.437061 * t."OUT_6"  + 0.093886 * t."OUT_7"  + 0.400714 * t."OUT_8"  + 0.294398 * t."OUT_9" AS "OUT_3"
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
    0.249932 + -0.560769 * t."OUT_0"  + 0.381866 * t."OUT_1"  + -0.710277 * t."OUT_2"  + 0.610808 * t."OUT_3" AS "OUT_0",
    0.333048 + -0.646680 * t."OUT_0"  + 0.499967 * t."OUT_1"  + -0.009855 * t."OUT_2"  + 0.590501 * t."OUT_3" AS "OUT_1",
    0.755062 + 0.383280 * t."OUT_0"  + -0.275979 * t."OUT_1"  + 0.423894 * t."OUT_2"  + 0.001632 * t."OUT_3" AS "OUT_2",
    -0.357963 + 0.268020 * t."OUT_0"  + 0.328962 * t."OUT_1"  + 0.423534 * t."OUT_2"  + -0.608494 * t."OUT_3" AS "OUT_3",
    0.364923 + 0.673748 * t."OUT_0"  + 0.076269 * t."OUT_1"  + -0.589040 * t."OUT_2"  + -0.014068 * t."OUT_3" AS "OUT_4",
    0.402262 + 0.501080 * t."OUT_0"  + -0.031502 * t."OUT_1"  + 0.388369 * t."OUT_2"  + 0.592712 * t."OUT_3" AS "OUT_5",
    0.485764 + 0.471304 * t."OUT_0"  + 0.157172 * t."OUT_1"  + -0.472032 * t."OUT_2"  + -0.554062 * t."OUT_3" AS "OUT_6",
    0.013940 + -0.338897 * t."OUT_0"  + 0.407769 * t."OUT_1"  + -0.583883 * t."OUT_2"  + 0.388023 * t."OUT_3" AS "OUT_7"
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
    0.486010 + -0.646633 * t."OUT_0"  + -0.326381 * t."OUT_1"  + 0.092666 * t."OUT_2"  + -0.299465 * t."OUT_3"  + -0.339963 * t."OUT_4"  + 0.285815 * t."OUT_5"  + 0.279092 * t."OUT_6"  + 0.047460 * t."OUT_7" AS "OUT_0",
    -0.528599 + 0.279121 * t."OUT_0"  + 0.509867 * t."OUT_1"  + -0.328679 * t."OUT_2"  + 0.277734 * t."OUT_3"  + 0.026929 * t."OUT_4"  + 0.359362 * t."OUT_5"  + 0.372862 * t."OUT_6"  + -0.282937 * t."OUT_7" AS "OUT_1",
    -0.302987 + -0.041297 * t."OUT_0"  + -0.028035 * t."OUT_1"  + -0.297389 * t."OUT_2"  + 0.377155 * t."OUT_3"  + 0.135989 * t."OUT_4"  + 0.061186 * t."OUT_5"  + -0.517097 * t."OUT_6"  + 0.233032 * t."OUT_7" AS "OUT_2",
    -0.302822 + -0.129513 * t."OUT_0"  + 0.012734 * t."OUT_1"  + 0.108641 * t."OUT_2"  + 0.713018 * t."OUT_3"  + 0.594643 * t."OUT_4"  + -0.054068 * t."OUT_5"  + 0.323760 * t."OUT_6"  + -0.557169 * t."OUT_7" AS "OUT_3",
    -0.524386 + -0.370162 * t."OUT_0"  + -0.229043 * t."OUT_1"  + 0.280273 * t."OUT_2"  + 0.436900 * t."OUT_3"  + 0.277432 * t."OUT_4"  + -0.186018 * t."OUT_5"  + -0.418412 * t."OUT_6"  + -0.520512 * t."OUT_7" AS "OUT_4",
    -0.502640 + -0.506065 * t."OUT_0"  + -0.473633 * t."OUT_1"  + -0.352417 * t."OUT_2"  + 0.264556 * t."OUT_3"  + -0.001604 * t."OUT_4"  + -0.218781 * t."OUT_5"  + -0.001729 * t."OUT_6"  + 0.377295 * t."OUT_7" AS "OUT_5"
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
    0.638011 + -0.253344 * t."OUT_0"  + -0.686347 * t."OUT_1"  + 0.212291 * t."OUT_2"  + 0.179591 * t."OUT_3"  + 0.896900 * t."OUT_4"  + 0.217087 * t."OUT_5" AS "OUT_0",
    0.617666 + -0.296174 * t."OUT_0"  + 0.069423 * t."OUT_1"  + 0.207802 * t."OUT_2"  + -0.781489 * t."OUT_3"  + -0.294299 * t."OUT_4"  + -0.527762 * t."OUT_5" AS "OUT_1",
    -0.186458 + -0.371317 * t."OUT_0"  + -0.402848 * t."OUT_1"  + -0.076155 * t."OUT_2"  + -0.073075 * t."OUT_3"  + -0.483480 * t."OUT_4"  + 0.267267 * t."OUT_5" AS "OUT_2",
    0.474939 + -0.462823 * t."OUT_0"  + -0.554463 * t."OUT_1"  + 0.276645 * t."OUT_2"  + 0.825715 * t."OUT_3"  + -0.271416 * t."OUT_4"  + -0.302027 * t."OUT_5" AS "OUT_3"
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