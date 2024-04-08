WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "census_sampled" AS "ADS" 
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
    0.037539 + -0.182974 * t."OUT_0"  + 0.106196 * t."OUT_1"  + 0.359295 * t."OUT_2"  + 0.573998 * t."OUT_3"  + 0.168387 * t."OUT_4"  + 0.250130 * t."OUT_5"  + -0.114696 * t."OUT_6"  + -0.042435 * t."OUT_7"  + -0.176366 * t."OUT_8"  + -0.384231 * t."OUT_9"  + -0.544470 * t."OUT_10"  + -0.486225 * t."OUT_11"  + 0.254856 * t."OUT_12"  + 0.345192 * t."OUT_13" AS "OUT_0",
    -0.082430 + 0.174129 * t."OUT_0"  + -0.405079 * t."OUT_1"  + -0.002732 * t."OUT_2"  + -0.510525 * t."OUT_3"  + -0.402195 * t."OUT_4"  + -0.569974 * t."OUT_5"  + -0.524515 * t."OUT_6"  + 0.004762 * t."OUT_7"  + 0.213042 * t."OUT_8"  + 0.505643 * t."OUT_9"  + 0.195157 * t."OUT_10"  + -0.561905 * t."OUT_11"  + 0.369520 * t."OUT_12"  + 0.470522 * t."OUT_13" AS "OUT_1",
    0.043686 + -0.265085 * t."OUT_0"  + 0.167347 * t."OUT_1"  + 0.450197 * t."OUT_2"  + -0.241867 * t."OUT_3"  + -0.323373 * t."OUT_4"  + -0.092054 * t."OUT_5"  + -0.295619 * t."OUT_6"  + -0.516970 * t."OUT_7"  + -0.116169 * t."OUT_8"  + -0.422723 * t."OUT_9"  + 0.106246 * t."OUT_10"  + 0.165476 * t."OUT_11"  + 0.409830 * t."OUT_12"  + -0.348629 * t."OUT_13" AS "OUT_2",
    0.329774 + -0.042498 * t."OUT_0"  + 0.018387 * t."OUT_1"  + -0.090487 * t."OUT_2"  + 0.214797 * t."OUT_3"  + -0.448023 * t."OUT_4"  + 0.026923 * t."OUT_5"  + 0.472280 * t."OUT_6"  + 0.032922 * t."OUT_7"  + 0.244452 * t."OUT_8"  + 0.310274 * t."OUT_9"  + 0.524453 * t."OUT_10"  + 0.208203 * t."OUT_11"  + -0.375053 * t."OUT_12"  + 0.257880 * t."OUT_13" AS "OUT_3"
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
    0.029435 + -0.606422 * t."OUT_0"  + 0.697656 * t."OUT_1"  + 0.318401 * t."OUT_2"  + -0.627765 * t."OUT_3" AS "OUT_0",
    0.016445 + 0.240937 * t."OUT_0"  + 0.779067 * t."OUT_1"  + 0.574280 * t."OUT_2"  + 0.353350 * t."OUT_3" AS "OUT_1",
    -0.294405 + 0.167551 * t."OUT_0"  + -0.177319 * t."OUT_1"  + 0.496551 * t."OUT_2"  + 0.007842 * t."OUT_3" AS "OUT_2",
    -0.633386 + 0.406786 * t."OUT_0"  + -0.575044 * t."OUT_1"  + -0.357124 * t."OUT_2"  + -0.133978 * t."OUT_3" AS "OUT_3",
    0.235601 + -0.603558 * t."OUT_0"  + -0.025484 * t."OUT_1"  + 0.297565 * t."OUT_2"  + -0.519289 * t."OUT_3" AS "OUT_4",
    -0.351905 + 0.362549 * t."OUT_0"  + 0.590494 * t."OUT_1"  + 0.364951 * t."OUT_2"  + -0.668986 * t."OUT_3" AS "OUT_5",
    -0.115291 + -0.243699 * t."OUT_0"  + -0.412116 * t."OUT_1"  + 0.674084 * t."OUT_2"  + -0.258634 * t."OUT_3" AS "OUT_6",
    -0.143680 + -0.653897 * t."OUT_0"  + 0.278759 * t."OUT_1"  + -0.063368 * t."OUT_2"  + 0.637559 * t."OUT_3" AS "OUT_7"
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
    -0.102936 + 0.269611 * t."OUT_0"  + 0.475690 * t."OUT_1"  + 0.321790 * t."OUT_2"  + -0.178974 * t."OUT_3"  + -0.417195 * t."OUT_4"  + -0.588556 * t."OUT_5"  + -0.500519 * t."OUT_6"  + -0.579535 * t."OUT_7" AS "OUT_0",
    0.036057 + -0.462554 * t."OUT_0"  + 0.230735 * t."OUT_1"  + -0.124282 * t."OUT_2"  + -0.324393 * t."OUT_3"  + -0.001729 * t."OUT_4"  + 0.372655 * t."OUT_5"  + -0.746772 * t."OUT_6"  + 0.126355 * t."OUT_7" AS "OUT_1",
    -0.066824 + -0.215160 * t."OUT_0"  + -0.421883 * t."OUT_1"  + 0.246148 * t."OUT_2"  + 0.344409 * t."OUT_3"  + 0.122957 * t."OUT_4"  + 0.468259 * t."OUT_5"  + -0.415122 * t."OUT_6"  + -0.429881 * t."OUT_7" AS "OUT_2",
    -0.433148 + 0.376506 * t."OUT_0"  + 0.061712 * t."OUT_1"  + 0.454500 * t."OUT_2"  + 0.364227 * t."OUT_3"  + -0.263423 * t."OUT_4"  + -0.433210 * t."OUT_5"  + -0.149899 * t."OUT_6"  + -0.518473 * t."OUT_7" AS "OUT_3",
    -0.107874 + 0.431074 * t."OUT_0"  + 0.182889 * t."OUT_1"  + 0.107910 * t."OUT_2"  + -0.452853 * t."OUT_3"  + 0.299111 * t."OUT_4"  + -0.245913 * t."OUT_5"  + -0.428461 * t."OUT_6"  + 0.129981 * t."OUT_7" AS "OUT_4",
    0.542555 + 0.557300 * t."OUT_0"  + 0.443776 * t."OUT_1"  + -0.225065 * t."OUT_2"  + 0.212193 * t."OUT_3"  + -0.618701 * t."OUT_4"  + -0.494865 * t."OUT_5"  + -0.472013 * t."OUT_6"  + 0.227266 * t."OUT_7" AS "OUT_5"
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
    -0.243632 + 0.922603 * t."OUT_0"  + -0.038615 * t."OUT_1"  + -0.694328 * t."OUT_2"  + -0.449855 * t."OUT_3"  + 0.385942 * t."OUT_4"  + -0.766597 * t."OUT_5" AS "OUT_0"
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