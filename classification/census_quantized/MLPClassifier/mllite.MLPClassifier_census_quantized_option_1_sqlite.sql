WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "census_quantized" AS "ADS" 
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
    0.409718 + 0.106715 * t."OUT_0"  + 0.106196 * t."OUT_1"  + 0.085667 * t."OUT_2"  + 0.223184 * t."OUT_3"  + 0.288304 * t."OUT_4"  + 0.250130 * t."OUT_5"  + -0.114696 * t."OUT_6"  + -0.042435 * t."OUT_7"  + -0.176366 * t."OUT_8"  + -0.384231 * t."OUT_9"  + -0.607163 * t."OUT_10"  + -0.847215 * t."OUT_11"  + 0.250021 * t."OUT_12"  + 0.345192 * t."OUT_13" AS "OUT_0",
    -0.513848 + 0.382185 * t."OUT_0"  + -0.405079 * t."OUT_1"  + 0.178238 * t."OUT_2"  + -0.222252 * t."OUT_3"  + 0.162026 * t."OUT_4"  + -0.223178 * t."OUT_5"  + -0.222223 * t."OUT_6"  + 0.004762 * t."OUT_7"  + 0.213042 * t."OUT_8"  + 0.223091 * t."OUT_9"  + 0.468415 * t."OUT_10"  + 0.327856 * t."OUT_11"  + 0.298901 * t."OUT_12"  + 0.470522 * t."OUT_13" AS "OUT_1",
    0.872647 + -0.385265 * t."OUT_0"  + 0.167347 * t."OUT_1"  + 0.259904 * t."OUT_2"  + -0.241867 * t."OUT_3"  + -0.059614 * t."OUT_4"  + -0.092054 * t."OUT_5"  + -0.295619 * t."OUT_6"  + -0.222568 * t."OUT_7"  + -0.116169 * t."OUT_8"  + -0.422723 * t."OUT_9"  + 0.437715 * t."OUT_10"  + 0.303100 * t."OUT_11"  + 0.216550 * t."OUT_12"  + -0.348629 * t."OUT_13" AS "OUT_2",
    0.543191 + 0.148051 * t."OUT_0"  + 0.018387 * t."OUT_1"  + 0.084378 * t."OUT_2"  + 0.214797 * t."OUT_3"  + -0.498126 * t."OUT_4"  + 0.026923 * t."OUT_5"  + 0.472280 * t."OUT_6"  + 0.032922 * t."OUT_7"  + 0.244452 * t."OUT_8"  + 0.310274 * t."OUT_9"  + 0.385006 * t."OUT_10"  + 0.393219 * t."OUT_11"  + -0.143416 * t."OUT_12"  + 0.257880 * t."OUT_13" AS "OUT_3"
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
    0.297381 + -0.658185 * t."OUT_0"  + 0.662800 * t."OUT_1"  + 0.010670 * t."OUT_2"  + -0.689407 * t."OUT_3" AS "OUT_0",
    0.235345 + 0.210799 * t."OUT_0"  + 0.694899 * t."OUT_1"  + 0.452540 * t."OUT_2"  + 0.300704 * t."OUT_3" AS "OUT_1",
    0.725583 + 0.158169 * t."OUT_0"  + -0.283611 * t."OUT_1"  + 0.579690 * t."OUT_2"  + 0.033040 * t."OUT_3" AS "OUT_2",
    -0.037948 + 0.509399 * t."OUT_0"  + -0.873291 * t."OUT_1"  + 0.341193 * t."OUT_2"  + 0.505520 * t."OUT_3" AS "OUT_3",
    0.447094 + -0.967872 * t."OUT_0"  + 0.297445 * t."OUT_1"  + 0.113348 * t."OUT_2"  + -0.406437 * t."OUT_3" AS "OUT_4",
    -0.610822 + 0.396741 * t."OUT_0"  + 0.625050 * t."OUT_1"  + 0.514995 * t."OUT_2"  + -0.714725 * t."OUT_3" AS "OUT_5",
    -0.331750 + -0.386584 * t."OUT_0"  + -0.525160 * t."OUT_1"  + 0.481329 * t."OUT_2"  + -0.192377 * t."OUT_3" AS "OUT_6",
    -0.389499 + -0.919464 * t."OUT_0"  + 0.125811 * t."OUT_1"  + -0.072200 * t."OUT_2"  + 0.671227 * t."OUT_3" AS "OUT_7"
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
    -0.354667 + 0.323995 * t."OUT_0"  + 0.418674 * t."OUT_1"  + 0.264696 * t."OUT_2"  + -0.837247 * t."OUT_3"  + -0.216186 * t."OUT_4"  + -0.689057 * t."OUT_5"  + -0.489441 * t."OUT_6"  + -0.355807 * t."OUT_7" AS "OUT_0",
    0.144808 + -0.516844 * t."OUT_0"  + 0.367078 * t."OUT_1"  + 0.047170 * t."OUT_2"  + -0.037199 * t."OUT_3"  + -0.155808 * t."OUT_4"  + 0.496731 * t."OUT_5"  + -0.447111 * t."OUT_6"  + 0.196306 * t."OUT_7" AS "OUT_1",
    0.635230 + -0.310460 * t."OUT_0"  + -0.504143 * t."OUT_1"  + 0.422346 * t."OUT_2"  + 0.471078 * t."OUT_3"  + 0.114140 * t."OUT_4"  + 0.315477 * t."OUT_5"  + -0.157658 * t."OUT_6"  + -0.378257 * t."OUT_7" AS "OUT_2",
    0.620082 + 0.184017 * t."OUT_0"  + 0.166094 * t."OUT_1"  + 0.840816 * t."OUT_2"  + 0.752010 * t."OUT_3"  + -0.239315 * t."OUT_4"  + -0.321900 * t."OUT_5"  + -0.065690 * t."OUT_6"  + -0.620721 * t."OUT_7" AS "OUT_3",
    -0.377288 + 0.493399 * t."OUT_0"  + 0.145876 * t."OUT_1"  + 0.000215 * t."OUT_2"  + -0.533213 * t."OUT_3"  + 0.448138 * t."OUT_4"  + -0.328031 * t."OUT_5"  + -0.487625 * t."OUT_6"  + 0.374686 * t."OUT_7" AS "OUT_4",
    1.214241 + 0.526904 * t."OUT_0"  + 0.359362 * t."OUT_1"  + 0.144126 * t."OUT_2"  + 0.510177 * t."OUT_3"  + -0.841846 * t."OUT_4"  + -0.596139 * t."OUT_5"  + -0.378227 * t."OUT_6"  + -0.012829 * t."OUT_7" AS "OUT_5"
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
    -0.025282 + 0.924244 * t."OUT_0"  + 0.148883 * t."OUT_1"  + -0.831972 * t."OUT_2"  + -1.214555 * t."OUT_3"  + 0.551094 * t."OUT_4"  + -1.320202 * t."OUT_5" AS "OUT_0"
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
),arg_max_cte_with_max_proba AS 
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