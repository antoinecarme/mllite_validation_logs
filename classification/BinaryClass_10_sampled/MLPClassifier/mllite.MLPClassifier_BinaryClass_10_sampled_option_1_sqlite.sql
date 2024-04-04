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
    -0.500829 + -0.027289 * t."OUT_0"  + 0.138645 * t."OUT_1"  + 0.527466 * t."OUT_2"  + 0.620259 * t."OUT_3"  + 0.311415 * t."OUT_4"  + 0.252938 * t."OUT_5"  + -0.160747 * t."OUT_6"  + -0.015033 * t."OUT_7"  + -0.228749 * t."OUT_8"  + -0.405173 * t."OUT_9" AS "OUT_0",
    0.336328 + 0.309252 * t."OUT_0"  + -0.467458 * t."OUT_1"  + 0.107498 * t."OUT_2"  + -0.556856 * t."OUT_3"  + -0.293023 * t."OUT_4"  + -0.676758 * t."OUT_5"  + -0.625782 * t."OUT_6"  + -0.026056 * t."OUT_7"  + 0.275136 * t."OUT_8"  + 0.544151 * t."OUT_9" AS "OUT_1",
    0.122630 + -0.234817 * t."OUT_0"  + 0.156727 * t."OUT_1"  + 0.512715 * t."OUT_2"  + -0.242358 * t."OUT_3"  + -0.301890 * t."OUT_4"  + -0.135990 * t."OUT_5"  + -0.366813 * t."OUT_6"  + -0.554634 * t."OUT_7"  + -0.150773 * t."OUT_8"  + -0.456764 * t."OUT_9" AS "OUT_2",
    0.565571 + -0.057338 * t."OUT_0"  + 0.021890 * t."OUT_1"  + -0.130448 * t."OUT_2"  + 0.273890 * t."OUT_3"  + -0.477095 * t."OUT_4"  + 0.001036 * t."OUT_5"  + 0.506725 * t."OUT_6"  + 0.021041 * t."OUT_7"  + 0.247483 * t."OUT_8"  + 0.322164 * t."OUT_9" AS "OUT_3"
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
    0.350419 + -0.411808 * t."OUT_0"  + 0.399946 * t."OUT_1"  + -0.574196 * t."OUT_2"  + 0.728509 * t."OUT_3" AS "OUT_0",
    0.387407 + -0.573322 * t."OUT_0"  + 0.611406 * t."OUT_1"  + 0.061661 * t."OUT_2"  + 0.644414 * t."OUT_3" AS "OUT_1",
    0.652134 + 0.208229 * t."OUT_0"  + -0.397341 * t."OUT_1"  + 0.259096 * t."OUT_2"  + -0.064618 * t."OUT_3" AS "OUT_2",
    -0.324657 + 0.228025 * t."OUT_0"  + 0.348503 * t."OUT_1"  + 0.439841 * t."OUT_2"  + -0.541995 * t."OUT_3" AS "OUT_3",
    0.331743 + 0.506995 * t."OUT_0"  + 0.225018 * t."OUT_1"  + -0.569987 * t."OUT_2"  + 0.008335 * t."OUT_3" AS "OUT_4",
    0.467047 + 0.576251 * t."OUT_0"  + 0.085653 * t."OUT_1"  + 0.460034 * t."OUT_2"  + 0.646026 * t."OUT_3" AS "OUT_5",
    0.487748 + 0.508338 * t."OUT_0"  + 0.062028 * t."OUT_1"  + -0.423103 * t."OUT_2"  + -0.540040 * t."OUT_3" AS "OUT_6",
    -0.061803 + -0.428364 * t."OUT_0"  + 0.434173 * t."OUT_1"  + -0.622167 * t."OUT_2"  + 0.269685 * t."OUT_3" AS "OUT_7"
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
    0.562293 + -0.612011 * t."OUT_0"  + -0.269724 * t."OUT_1"  + 0.187109 * t."OUT_2"  + -0.181029 * t."OUT_3"  + -0.309650 * t."OUT_4"  + 0.346058 * t."OUT_5"  + 0.313832 * t."OUT_6"  + 0.098752 * t."OUT_7" AS "OUT_0",
    -0.464313 + 0.295795 * t."OUT_0"  + 0.559755 * t."OUT_1"  + -0.230400 * t."OUT_2"  + 0.410473 * t."OUT_3"  + 0.030276 * t."OUT_4"  + 0.423873 * t."OUT_5"  + 0.334102 * t."OUT_6"  + -0.292765 * t."OUT_7" AS "OUT_1",
    -0.265721 + -0.015080 * t."OUT_0"  + 0.012441 * t."OUT_1"  + -0.274392 * t."OUT_2"  + 0.464253 * t."OUT_3"  + 0.160614 * t."OUT_4"  + 0.088206 * t."OUT_5"  + -0.437722 * t."OUT_6"  + 0.281432 * t."OUT_7" AS "OUT_2",
    -0.494865 + -0.124039 * t."OUT_0"  + -0.133482 * t."OUT_1"  + -0.133022 * t."OUT_2"  + 0.557300 * t."OUT_3"  + 0.443776 * t."OUT_4"  + -0.225065 * t."OUT_5"  + 0.212193 * t."OUT_6"  + -0.618701 * t."OUT_7" AS "OUT_3",
    -0.500519 + -0.480768 * t."OUT_0"  + -0.151607 * t."OUT_1"  + 0.269611 * t."OUT_2"  + 0.475690 * t."OUT_3"  + 0.321790 * t."OUT_4"  + -0.178974 * t."OUT_5"  + -0.417195 * t."OUT_6"  + -0.588556 * t."OUT_7" AS "OUT_4",
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
    -0.576375 + -0.277077 * t."OUT_0"  + -0.181732 * t."OUT_1"  + -0.631601 * t."OUT_2"  + -0.667527 * t."OUT_3"  + -0.819586 * t."OUT_4"  + 0.178692 * t."OUT_5" AS "OUT_0"
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