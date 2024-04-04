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
    -0.498634 + -0.028945 * t."OUT_0"  + 0.148922 * t."OUT_1"  + 0.528552 * t."OUT_2"  + 0.682523 * t."OUT_3"  + 0.317586 * t."OUT_4"  + 0.253232 * t."OUT_5"  + -0.159950 * t."OUT_6"  + -0.076920 * t."OUT_7"  + -0.230923 * t."OUT_8"  + -0.401846 * t."OUT_9" AS "OUT_0",
    0.333562 + 0.320245 * t."OUT_0"  + -0.428118 * t."OUT_1"  + 0.108835 * t."OUT_2"  + -0.611359 * t."OUT_3"  + -0.284791 * t."OUT_4"  + -0.676195 * t."OUT_5"  + -0.624751 * t."OUT_6"  + -0.025585 * t."OUT_7"  + 0.249304 * t."OUT_8"  + 0.548746 * t."OUT_9" AS "OUT_1",
    0.124075 + -0.240343 * t."OUT_0"  + 0.157738 * t."OUT_1"  + 0.513059 * t."OUT_2"  + -0.243452 * t."OUT_3"  + -0.301309 * t."OUT_4"  + -0.135887 * t."OUT_5"  + -0.366572 * t."OUT_6"  + -0.555058 * t."OUT_7"  + -0.163006 * t."OUT_8"  + -0.509767 * t."OUT_9" AS "OUT_2",
    0.565054 + -0.020679 * t."OUT_0"  + 0.012377 * t."OUT_1"  + -0.129960 * t."OUT_2"  + 0.262280 * t."OUT_3"  + -0.477448 * t."OUT_4"  + 0.000870 * t."OUT_5"  + 0.506571 * t."OUT_6"  + 0.005560 * t."OUT_7"  + 0.245923 * t."OUT_8"  + 0.323726 * t."OUT_9" AS "OUT_3"
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
    0.347818 + -0.414124 * t."OUT_0"  + 0.419535 * t."OUT_1"  + -0.575574 * t."OUT_2"  + 0.725988 * t."OUT_3" AS "OUT_0",
    0.386922 + -0.571225 * t."OUT_0"  + 0.610041 * t."OUT_1"  + 0.061683 * t."OUT_2"  + 0.644113 * t."OUT_3" AS "OUT_1",
    0.648893 + 0.208713 * t."OUT_0"  + -0.404080 * t."OUT_1"  + 0.259782 * t."OUT_2"  + -0.066343 * t."OUT_3" AS "OUT_2",
    -0.325761 + 0.226926 * t."OUT_0"  + 0.347542 * t."OUT_1"  + 0.439537 * t."OUT_2"  + -0.542009 * t."OUT_3" AS "OUT_3",
    0.324354 + 0.506359 * t."OUT_0"  + 0.237268 * t."OUT_1"  + -0.576240 * t."OUT_2"  + -0.030885 * t."OUT_3" AS "OUT_4",
    0.467526 + 0.576761 * t."OUT_0"  + 0.085404 * t."OUT_1"  + 0.460100 * t."OUT_2"  + 0.646590 * t."OUT_3" AS "OUT_5",
    0.488607 + 0.510514 * t."OUT_0"  + 0.060578 * t."OUT_1"  + -0.423645 * t."OUT_2"  + -0.537752 * t."OUT_3" AS "OUT_6",
    -0.063532 + -0.427938 * t."OUT_0"  + 0.433607 * t."OUT_1"  + -0.624048 * t."OUT_2"  + 0.267293 * t."OUT_3" AS "OUT_7"
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
    0.562908 + -0.610739 * t."OUT_0"  + -0.269021 * t."OUT_1"  + 0.187506 * t."OUT_2"  + -0.180173 * t."OUT_3"  + -0.308302 * t."OUT_4"  + 0.346660 * t."OUT_5"  + 0.313824 * t."OUT_6"  + 0.100558 * t."OUT_7" AS "OUT_0",
    -0.464268 + 0.295983 * t."OUT_0"  + 0.559774 * t."OUT_1"  + -0.230424 * t."OUT_2"  + 0.410173 * t."OUT_3"  + 0.031086 * t."OUT_4"  + 0.423948 * t."OUT_5"  + 0.335130 * t."OUT_6"  + -0.292984 * t."OUT_7" AS "OUT_1",
    -0.264176 + -0.013462 * t."OUT_0"  + 0.011921 * t."OUT_1"  + -0.276114 * t."OUT_2"  + 0.463206 * t."OUT_3"  + 0.176267 * t."OUT_4"  + 0.087599 * t."OUT_5"  + -0.426020 * t."OUT_6"  + 0.286161 * t."OUT_7" AS "OUT_2",
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
    -0.576409 + -0.277210 * t."OUT_0"  + -0.181720 * t."OUT_1"  + -0.617984 * t."OUT_2"  + -0.667527 * t."OUT_3"  + -0.789899 * t."OUT_4"  + 0.178692 * t."OUT_5" AS "OUT_0"
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