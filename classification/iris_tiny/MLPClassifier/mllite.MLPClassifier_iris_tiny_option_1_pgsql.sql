WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
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
    0.421896 + -0.105248 * t."OUT_0"  + 0.128558 * t."OUT_1"  + 0.708217 * t."OUT_2"  + 0.831033 * t."OUT_3" AS "OUT_0",
    -0.441437 + 0.422699 * t."OUT_0"  + -0.633852 * t."OUT_1"  + 0.157383 * t."OUT_2"  + -0.791359 * t."OUT_3" AS "OUT_1",
    -0.470878 + -0.383683 * t."OUT_0"  + 0.220779 * t."OUT_1"  + 0.689827 * t."OUT_2"  + -0.392924 * t."OUT_3" AS "OUT_2",
    -0.672035 + -0.063746 * t."OUT_0"  + 0.027581 * t."OUT_1"  + -0.135730 * t."OUT_2"  + 0.291824 * t."OUT_3" AS "OUT_3"
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
    0.454942 + 0.338883 * t."OUT_0"  + -0.022495 * t."OUT_1"  + -0.439108 * t."OUT_2"  + -0.413093 * t."OUT_3" AS "OUT_0",
    0.576270 + -0.666807 * t."OUT_0"  + 0.005832 * t."OUT_1"  + 0.588118 * t."OUT_2"  + -0.513921 * t."OUT_3" AS "OUT_1",
    -0.426981 + -0.112743 * t."OUT_0"  + -0.601970 * t."OUT_1"  + -0.486733 * t."OUT_2"  + 0.206758 * t."OUT_3" AS "OUT_2",
    0.285096 + 0.002553 * t."OUT_0"  + 0.014216 * t."OUT_1"  + 0.351785 * t."OUT_2"  + 0.225049 * t."OUT_3" AS "OUT_3",
    0.209979 + -0.139892 * t."OUT_0"  + -0.186417 * t."OUT_1"  + -0.476964 * t."OUT_2"  + 0.444683 * t."OUT_3" AS "OUT_4",
    0.053026 + -0.611199 * t."OUT_0"  + 0.230930 * t."OUT_1"  + 0.358392 * t."OUT_2"  + 0.575409 * t."OUT_3" AS "OUT_5",
    0.089744 + -0.331507 * t."OUT_0"  + -0.142278 * t."OUT_1"  + 0.166551 * t."OUT_2"  + 0.507096 * t."OUT_3" AS "OUT_6",
    0.372750 + 0.547919 * t."OUT_0"  + 0.273577 * t."OUT_1"  + 0.615219 * t."OUT_2"  + -0.428481 * t."OUT_3" AS "OUT_7"
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
    -0.278179 + -0.530362 * t."OUT_0"  + -0.333889 * t."OUT_1"  + -0.023593 * t."OUT_2"  + 0.545714 * t."OUT_3"  + -0.550089 * t."OUT_4"  + -0.209633 * t."OUT_5"  + 0.188515 * t."OUT_6"  + -0.185583 * t."OUT_7" AS "OUT_0",
    0.096825 + 0.117986 * t."OUT_0"  + -0.574244 * t."OUT_1"  + 0.594791 * t."OUT_2"  + -0.308358 * t."OUT_3"  + 0.296755 * t."OUT_4"  + 0.559141 * t."OUT_5"  + -0.169748 * t."OUT_6"  + 0.399414 * t."OUT_7" AS "OUT_1",
    0.175898 + 0.247371 * t."OUT_0"  + 0.614701 * t."OUT_1"  + -0.441472 * t."OUT_2"  + 0.251745 * t."OUT_3"  + 0.007818 * t."OUT_4"  + 0.027252 * t."OUT_5"  + -0.224128 * t."OUT_6"  + 0.406164 * t."OUT_7" AS "OUT_2",
    0.412542 + 0.344866 * t."OUT_0"  + 0.593625 * t."OUT_1"  + 0.228110 * t."OUT_2"  + 0.431485 * t."OUT_3"  + -0.123499 * t."OUT_4"  + -0.133482 * t."OUT_5"  + -0.133022 * t."OUT_6"  + 0.526800 * t."OUT_7" AS "OUT_3",
    0.289481 + -0.591463 * t."OUT_0"  + -0.086289 * t."OUT_1"  + 0.264562 * t."OUT_2"  + 0.449085 * t."OUT_3"  + -0.449891 * t."OUT_4"  + -0.151607 * t."OUT_5"  + 0.239555 * t."OUT_6"  + 0.444034 * t."OUT_7" AS "OUT_4",
    0.017514 + 0.480562 * t."OUT_0"  + -0.501364 * t."OUT_1"  + 0.356072 * t."OUT_2"  + -0.032532 * t."OUT_3"  + -0.588543 * t."OUT_4"  + -0.555284 * t."OUT_5"  + -0.431684 * t."OUT_6"  + 0.399200 * t."OUT_7" AS "OUT_5"
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
    0.709414 + 0.438692 * t."OUT_0"  + -0.311476 * t."OUT_1"  + 0.399590 * t."OUT_2"  + 0.234642 * t."OUT_3"  + 0.124860 * t."OUT_4"  + -0.802440 * t."OUT_5" AS "OUT_0",
    -0.508368 + 0.535775 * t."OUT_0"  + -0.191231 * t."OUT_1"  + 0.485511 * t."OUT_2"  + -0.489036 * t."OUT_3"  + -0.298906 * t."OUT_4"  + -0.702071 * t."OUT_5" AS "OUT_1",
    -0.292843 + 0.134588 * t."OUT_0"  + -0.378021 * t."OUT_1"  + -0.539218 * t."OUT_2"  + 0.023166 * t."OUT_3"  + 0.398867 * t."OUT_4"  + 0.635013 * t."OUT_5" AS "OUT_2"
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