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
    -0.511753 + -0.097358 * t."OUT_0"  + 0.058011 * t."OUT_1"  + 0.497594 * t."OUT_2"  + 0.639241 * t."OUT_3"  + 0.279441 * t."OUT_4"  + 0.240228 * t."OUT_5"  + -0.154899 * t."OUT_6"  + -0.140612 * t."OUT_7"  + -0.272165 * t."OUT_8"  + -0.436710 * t."OUT_9" AS "OUT_0",
    0.308164 + 0.295600 * t."OUT_0"  + -0.505765 * t."OUT_1"  + 0.080845 * t."OUT_2"  + -0.640883 * t."OUT_3"  + -0.332204 * t."OUT_4"  + -0.684221 * t."OUT_5"  + -0.630298 * t."OUT_6"  + -0.000060 * t."OUT_7"  + 0.195729 * t."OUT_8"  + 0.517304 * t."OUT_9" AS "OUT_1",
    0.109626 + -0.325120 * t."OUT_0"  + 0.146566 * t."OUT_1"  + 0.498948 * t."OUT_2"  + -0.317777 * t."OUT_3"  + -0.364179 * t."OUT_4"  + -0.139684 * t."OUT_5"  + -0.370102 * t."OUT_6"  + -0.621419 * t."OUT_7"  + -0.174232 * t."OUT_8"  + -0.510818 * t."OUT_9" AS "OUT_2",
    0.506174 + -0.139369 * t."OUT_0"  + -0.054926 * t."OUT_1"  + -0.185182 * t."OUT_2"  + 0.146061 * t."OUT_3"  + -0.576714 * t."OUT_4"  + -0.057870 * t."OUT_5"  + 0.438540 * t."OUT_6"  + -0.036469 * t."OUT_7"  + 0.205395 * t."OUT_8"  + 0.257390 * t."OUT_9" AS "OUT_3"
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
    0.219710 + -0.516250 * t."OUT_0"  + 0.360613 * t."OUT_1"  + -0.618411 * t."OUT_2"  + 0.607892 * t."OUT_3" AS "OUT_0",
    0.318702 + -0.620306 * t."OUT_0"  + 0.512185 * t."OUT_1"  + 0.064390 * t."OUT_2"  + 0.585949 * t."OUT_3" AS "OUT_1",
    0.728827 + 0.320729 * t."OUT_0"  + -0.362031 * t."OUT_1"  + 0.332458 * t."OUT_2"  + 0.008132 * t."OUT_3" AS "OUT_2",
    -0.344143 + 0.277743 * t."OUT_0"  + 0.289272 * t."OUT_1"  + 0.371342 * t."OUT_2"  + -0.460084 * t."OUT_3" AS "OUT_3",
    0.375554 + 0.553557 * t."OUT_0"  + 0.179306 * t."OUT_1"  + -0.573609 * t."OUT_2"  + 0.113889 * t."OUT_3" AS "OUT_4",
    0.418422 + 0.540631 * t."OUT_0"  + -0.008624 * t."OUT_1"  + 0.449687 * t."OUT_2"  + 0.593197 * t."OUT_3" AS "OUT_5",
    0.448219 + 0.478666 * t."OUT_0"  + 0.051287 * t."OUT_1"  + -0.430824 * t."OUT_2"  + -0.561000 * t."OUT_3" AS "OUT_6",
    0.081741 + -0.333102 * t."OUT_0"  + 0.486873 * t."OUT_1"  + -0.550544 * t."OUT_2"  + 0.410103 * t."OUT_3" AS "OUT_7"
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
    0.509707 + -0.638949 * t."OUT_0"  + -0.295809 * t."OUT_1"  + 0.135045 * t."OUT_2"  + -0.258942 * t."OUT_3"  + -0.354871 * t."OUT_4"  + 0.307903 * t."OUT_5"  + 0.280820 * t."OUT_6"  + -0.002805 * t."OUT_7" AS "OUT_0",
    -0.519870 + 0.236239 * t."OUT_0"  + 0.497701 * t."OUT_1"  + -0.285549 * t."OUT_2"  + 0.319708 * t."OUT_3"  + -0.019101 * t."OUT_4"  + 0.376868 * t."OUT_5"  + 0.310556 * t."OUT_6"  + -0.393070 * t."OUT_7" AS "OUT_1",
    -0.307935 + -0.058374 * t."OUT_0"  + -0.039975 * t."OUT_1"  + -0.310723 * t."OUT_2"  + 0.418584 * t."OUT_3"  + 0.131991 * t."OUT_4"  + 0.052597 * t."OUT_5"  + -0.474111 * t."OUT_6"  + 0.212543 * t."OUT_7" AS "OUT_2",
    -0.437381 + 0.036906 * t."OUT_0"  + -0.014960 * t."OUT_1"  + -0.066855 * t."OUT_2"  + 0.558645 * t."OUT_3"  + 0.514972 * t."OUT_4"  + -0.143291 * t."OUT_5"  + 0.247243 * t."OUT_6"  + -0.417935 * t."OUT_7" AS "OUT_3",
    -0.520102 + -0.370162 * t."OUT_0"  + -0.151607 * t."OUT_1"  + 0.250079 * t."OUT_2"  + 0.445904 * t."OUT_3"  + 0.291695 * t."OUT_4"  + -0.198064 * t."OUT_5"  + -0.426408 * t."OUT_6"  + -0.475751 * t."OUT_7" AS "OUT_4",
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
    0.702363 + -0.263428 * t."OUT_0"  + -0.626231 * t."OUT_1"  + 0.195620 * t."OUT_2"  + 0.113115 * t."OUT_3"  + 0.716724 * t."OUT_4"  + 0.217087 * t."OUT_5" AS "OUT_0",
    0.645952 + -0.241773 * t."OUT_0"  + 0.073278 * t."OUT_1"  + 0.225098 * t."OUT_2"  + -0.630442 * t."OUT_3"  + -0.137916 * t."OUT_4"  + -0.527762 * t."OUT_5" AS "OUT_1",
    -0.190773 + -0.378743 * t."OUT_0"  + -0.407897 * t."OUT_1"  + -0.078093 * t."OUT_2"  + 0.062843 * t."OUT_3"  + -0.627799 * t."OUT_4"  + 0.267267 * t."OUT_5" AS "OUT_2",
    0.431000 + -0.528651 * t."OUT_0"  + -0.569830 * t."OUT_1"  + 0.248051 * t."OUT_2"  + 0.561862 * t."OUT_3"  + -0.359438 * t."OUT_4"  + -0.302027 * t."OUT_5" AS "OUT_3"
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