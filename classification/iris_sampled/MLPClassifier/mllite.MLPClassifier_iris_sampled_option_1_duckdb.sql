WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "iris_sampled" AS "ADS" 
 ),
"Input_Layer_BA" AS
 ( SELECT t."index" as "index",
    t."X_0" AS "OUT_0",
    t."X_1" AS "OUT_1",
    t."X_2" AS "OUT_2",
    t."X_3" AS "OUT_3"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    0.421806 + -0.105349 * t."OUT_0"  + 0.128462 * t."OUT_1"  + 0.708088 * t."OUT_2"  + 0.830896 * t."OUT_3" AS "OUT_0",
    -0.442373 + 0.421718 * t."OUT_0"  + -0.634918 * t."OUT_1"  + 0.156332 * t."OUT_2"  + -0.792608 * t."OUT_3" AS "OUT_1",
    -0.471010 + -0.383811 * t."OUT_0"  + 0.220660 * t."OUT_1"  + 0.689705 * t."OUT_2"  + -0.393051 * t."OUT_3" AS "OUT_2",
    -0.672035 + -0.063746 * t."OUT_0"  + 0.027581 * t."OUT_1"  + -0.135730 * t."OUT_2"  + 0.292005 * t."OUT_3" AS "OUT_3"
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
    0.455171 + 0.339078 * t."OUT_0"  + -0.022259 * t."OUT_1"  + -0.438995 * t."OUT_2"  + -0.413230 * t."OUT_3" AS "OUT_0",
    0.576270 + -0.666899 * t."OUT_0"  + 0.005832 * t."OUT_1"  + 0.588220 * t."OUT_2"  + -0.514036 * t."OUT_3" AS "OUT_1",
    -0.426981 + -0.112743 * t."OUT_0"  + -0.602071 * t."OUT_1"  + -0.486853 * t."OUT_2"  + 0.206992 * t."OUT_3" AS "OUT_2",
    0.285063 + 0.002495 * t."OUT_0"  + 0.014562 * t."OUT_1"  + 0.351753 * t."OUT_2"  + 0.225269 * t."OUT_3" AS "OUT_3",
    0.215759 + -0.134116 * t."OUT_0"  + -0.186668 * t."OUT_1"  + -0.477086 * t."OUT_2"  + 0.444812 * t."OUT_3" AS "OUT_4",
    0.053026 + -0.611299 * t."OUT_0"  + 0.231146 * t."OUT_1"  + 0.358545 * t."OUT_2"  + 0.575514 * t."OUT_3" AS "OUT_5",
    0.089744 + -0.331670 * t."OUT_0"  + -0.142278 * t."OUT_1"  + 0.166551 * t."OUT_2"  + 0.507212 * t."OUT_3" AS "OUT_6",
    0.372717 + 0.547855 * t."OUT_0"  + 0.273910 * t."OUT_1"  + 0.615033 * t."OUT_2"  + -0.428614 * t."OUT_3" AS "OUT_7"
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
    -0.278179 + -0.530473 * t."OUT_0"  + -0.334052 * t."OUT_1"  + -0.023593 * t."OUT_2"  + 0.545824 * t."OUT_3"  + -0.550197 * t."OUT_4"  + -0.209864 * t."OUT_5"  + 0.188764 * t."OUT_6"  + -0.185835 * t."OUT_7" AS "OUT_0",
    0.096536 + 0.117944 * t."OUT_0"  + -0.574349 * t."OUT_1"  + 0.594893 * t."OUT_2"  + -0.296683 * t."OUT_3"  + 0.302519 * t."OUT_4"  + 0.559249 * t."OUT_5"  + -0.199137 * t."OUT_6"  + 0.409807 * t."OUT_7" AS "OUT_1",
    0.187176 + 0.253030 * t."OUT_0"  + 0.614800 * t."OUT_1"  + -0.441602 * t."OUT_2"  + 0.253421 * t."OUT_3"  + 0.012187 * t."OUT_4"  + 0.027252 * t."OUT_5"  + -0.224348 * t."OUT_6"  + 0.407741 * t."OUT_7" AS "OUT_2",
    0.412516 + 0.344825 * t."OUT_0"  + 0.593727 * t."OUT_1"  + 0.228327 * t."OUT_2"  + 0.431469 * t."OUT_3"  + -0.119120 * t."OUT_4"  + -0.133482 * t."OUT_5"  + -0.133022 * t."OUT_6"  + 0.526771 * t."OUT_7" AS "OUT_3",
    0.289548 + -0.591402 * t."OUT_0"  + -0.086289 * t."OUT_1"  + 0.264757 * t."OUT_2"  + 0.449203 * t."OUT_3"  + -0.457680 * t."OUT_4"  + -0.151607 * t."OUT_5"  + 0.239765 * t."OUT_6"  + 0.444147 * t."OUT_7" AS "OUT_4",
    0.009494 + 0.478838 * t."OUT_0"  + -0.501481 * t."OUT_1"  + 0.356226 * t."OUT_2"  + -0.033248 * t."OUT_3"  + -0.598545 * t."OUT_4"  + -0.555392 * t."OUT_5"  + -0.431816 * t."OUT_6"  + 0.398641 * t."OUT_7" AS "OUT_5"
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
    0.709400 + 0.438823 * t."OUT_0"  + -0.311613 * t."OUT_1"  + 0.399529 * t."OUT_2"  + 0.234609 * t."OUT_3"  + 0.124854 * t."OUT_4"  + -0.802472 * t."OUT_5" AS "OUT_0",
    -0.508382 + 0.535886 * t."OUT_0"  + -0.191171 * t."OUT_1"  + 0.485521 * t."OUT_2"  + -0.489055 * t."OUT_3"  + -0.298942 * t."OUT_4"  + -0.702097 * t."OUT_5" AS "OUT_1",
    -0.303277 + 0.134588 * t."OUT_0"  + -0.379102 * t."OUT_1"  + -0.540593 * t."OUT_2"  + 0.021606 * t."OUT_3"  + 0.398185 * t."OUT_4"  + 0.633574 * t."OUT_5" AS "OUT_2"
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
   CAST(NULL AS FLOAT) AS "LogProba_2"
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
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   GREATEST( t."Score_0", t."Score_1", t."Score_2" ) AS "Greatest_Score"
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
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        t."Proba_2" AS "Proba_2",
        t."Score_2" AS "Score_2",
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2"
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
    t1."Score_2" AS "Score_2"
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
    GREATEST( t."Proba_0", t."Proba_1", t."Proba_2" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1", t."Score_2" ) AS "Max_Score"
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
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
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
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2" ) AS argmax_class_idx
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
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte