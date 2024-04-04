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
    -0.498807 + -0.076196 * t."OUT_0"  + 0.143340 * t."OUT_1"  + 0.529151 * t."OUT_2"  + 0.627277 * t."OUT_3"  + 0.310995 * t."OUT_4"  + 0.254553 * t."OUT_5"  + -0.159093 * t."OUT_6"  + -0.030071 * t."OUT_7"  + -0.172134 * t."OUT_8"  + -0.406463 * t."OUT_9" AS "OUT_0",
    0.330552 + 0.308656 * t."OUT_0"  + -0.426912 * t."OUT_1"  + 0.107901 * t."OUT_2"  + -0.551050 * t."OUT_3"  + -0.284112 * t."OUT_4"  + -0.614954 * t."OUT_5"  + -0.564511 * t."OUT_6"  + 0.036034 * t."OUT_7"  + 0.211757 * t."OUT_8"  + 0.542483 * t."OUT_9" AS "OUT_1",
    0.125066 + -0.237719 * t."OUT_0"  + 0.160711 * t."OUT_1"  + 0.519108 * t."OUT_2"  + -0.245234 * t."OUT_3"  + -0.366196 * t."OUT_4"  + -0.073105 * t."OUT_5"  + -0.306762 * t."OUT_6"  + -0.557189 * t."OUT_7"  + -0.144616 * t."OUT_8"  + -0.470611 * t."OUT_9" AS "OUT_2",
    0.564950 + -0.078950 * t."OUT_0"  + 0.051604 * t."OUT_1"  + -0.071925 * t."OUT_2"  + 0.212878 * t."OUT_3"  + -0.477295 * t."OUT_4"  + 0.000340 * t."OUT_5"  + 0.504943 * t."OUT_6"  + 0.068571 * t."OUT_7"  + 0.307907 * t."OUT_8"  + 0.322659 * t."OUT_9" AS "OUT_3"
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
    0.288556 + -0.473558 * t."OUT_0"  + 0.392561 * t."OUT_1"  + -0.637238 * t."OUT_2"  + 0.667951 * t."OUT_3" AS "OUT_0",
    0.387514 + -0.574985 * t."OUT_0"  + 0.546064 * t."OUT_1"  + 0.058823 * t."OUT_2"  + 0.645026 * t."OUT_3" AS "OUT_1",
    0.654506 + 0.268609 * t."OUT_0"  + -0.395222 * t."OUT_1"  + 0.320678 * t."OUT_2"  + -0.062490 * t."OUT_3" AS "OUT_2",
    -0.385677 + 0.228998 * t."OUT_0"  + 0.287333 * t."OUT_1"  + 0.379188 * t."OUT_2"  + -0.602120 * t."OUT_3" AS "OUT_3",
    0.275589 + 0.505835 * t."OUT_0"  + 0.178772 * t."OUT_1"  + -0.634925 * t."OUT_2"  + -0.049703 * t."OUT_3" AS "OUT_4",
    0.467426 + 0.576691 * t."OUT_0"  + 0.022882 * t."OUT_1"  + 0.459759 * t."OUT_2"  + 0.646406 * t."OUT_3" AS "OUT_5",
    0.489125 + 0.508937 * t."OUT_0"  + 0.061296 * t."OUT_1"  + -0.422899 * t."OUT_2"  + -0.538812 * t."OUT_3" AS "OUT_6",
    -0.032589 + -0.426775 * t."OUT_0"  + 0.426228 * t."OUT_1"  + -0.635374 * t."OUT_2"  + 0.310777 * t."OUT_3" AS "OUT_7"
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
    0.562888 + -0.610322 * t."OUT_0"  + -0.269129 * t."OUT_1"  + 0.187011 * t."OUT_2"  + -0.244751 * t."OUT_3"  + -0.307121 * t."OUT_4"  + 0.346631 * t."OUT_5"  + 0.316212 * t."OUT_6"  + 0.093239 * t."OUT_7" AS "OUT_0",
    -0.463634 + 0.297578 * t."OUT_0"  + 0.560237 * t."OUT_1"  + -0.230256 * t."OUT_2"  + 0.346403 * t."OUT_3"  + 0.032844 * t."OUT_4"  + 0.424403 * t."OUT_5"  + 0.336156 * t."OUT_6"  + -0.293772 * t."OUT_7" AS "OUT_1",
    -0.274702 + -0.021745 * t."OUT_0"  + -0.001730 * t."OUT_1"  + -0.280399 * t."OUT_2"  + 0.403052 * t."OUT_3"  + 0.155367 * t."OUT_4"  + 0.079888 * t."OUT_5"  + -0.481349 * t."OUT_6"  + 0.268780 * t."OUT_7" AS "OUT_2",
    -0.462375 + -0.094846 * t."OUT_0"  + -0.101092 * t."OUT_1"  + -0.107912 * t."OUT_2"  + 0.589683 * t."OUT_3"  + 0.467885 * t."OUT_4"  + -0.192722 * t."OUT_5"  + 0.236273 * t."OUT_6"  + -0.591247 * t."OUT_7" AS "OUT_3",
    -0.470369 + -0.480768 * t."OUT_0"  + -0.122365 * t."OUT_1"  + 0.298298 * t."OUT_2"  + 0.506902 * t."OUT_3"  + 0.321790 * t."OUT_4"  + -0.147848 * t."OUT_5"  + -0.409486 * t."OUT_6"  + -0.588556 * t."OUT_7" AS "OUT_4",
    -0.502640 + -0.619361 * t."OUT_0"  + -0.586402 * t."OUT_1"  + -0.462554 * t."OUT_2"  + 0.371699 * t."OUT_3"  + -0.001604 * t."OUT_4"  + -0.324393 * t."OUT_5"  + -0.001729 * t."OUT_6"  + 0.488080 * t."OUT_7" AS "OUT_5"
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
    0.737729 + -0.232859 * t."OUT_0"  + -0.658112 * t."OUT_1"  + 0.179647 * t."OUT_2"  + 0.108497 * t."OUT_3"  + 0.806697 * t."OUT_4"  + 0.322902 * t."OUT_5" AS "OUT_0",
    0.713637 + -0.207702 * t."OUT_0"  + 0.119759 * t."OUT_1"  + 0.240691 * t."OUT_2"  + -0.545103 * t."OUT_3"  + -0.158639 * t."OUT_4"  + -0.641381 * t."OUT_5" AS "OUT_1",
    -0.322994 + -0.475703 * t."OUT_0"  + -0.478214 * t."OUT_1"  + -0.093798 * t."OUT_2"  + -0.158943 * t."OUT_3"  + -0.645165 * t."OUT_4"  + 0.267267 * t."OUT_5" AS "OUT_2",
    0.432592 + -0.528464 * t."OUT_0"  + -0.583608 * t."OUT_1"  + 0.236867 * t."OUT_2"  + 0.676117 * t."OUT_3"  + -0.341085 * t."OUT_4"  + -0.410608 * t."OUT_5" AS "OUT_3"
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