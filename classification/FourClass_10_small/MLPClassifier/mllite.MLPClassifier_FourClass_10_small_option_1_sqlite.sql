WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "FourClass_10_small" AS "ADS" 
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
    -0.498861 + -0.086798 * t."OUT_0"  + 0.148685 * t."OUT_1"  + 0.529834 * t."OUT_2"  + 0.624398 * t."OUT_3"  + 0.311032 * t."OUT_4"  + 0.253595 * t."OUT_5"  + -0.159270 * t."OUT_6"  + -0.081717 * t."OUT_7"  + -0.172305 * t."OUT_8"  + -0.406848 * t."OUT_9" AS "OUT_0",
    0.330458 + 0.307915 * t."OUT_0"  + -0.426197 * t."OUT_1"  + 0.108759 * t."OUT_2"  + -0.552306 * t."OUT_3"  + -0.347868 * t."OUT_4"  + -0.615058 * t."OUT_5"  + -0.564999 * t."OUT_6"  + 0.036055 * t."OUT_7"  + 0.221152 * t."OUT_8"  + 0.542252 * t."OUT_9" AS "OUT_1",
    0.124544 + -0.236183 * t."OUT_0"  + 0.159084 * t."OUT_1"  + 0.516813 * t."OUT_2"  + -0.244177 * t."OUT_3"  + -0.363126 * t."OUT_4"  + -0.078840 * t."OUT_5"  + -0.305454 * t."OUT_6"  + -0.556728 * t."OUT_7"  + -0.161644 * t."OUT_8"  + -0.486040 * t."OUT_9" AS "OUT_2",
    0.565965 + -0.078721 * t."OUT_0"  + 0.051336 * t."OUT_1"  + -0.071845 * t."OUT_2"  + 0.213134 * t."OUT_3"  + -0.478046 * t."OUT_4"  + 0.000875 * t."OUT_5"  + 0.504615 * t."OUT_6"  + 0.066994 * t."OUT_7"  + 0.308033 * t."OUT_8"  + 0.322941 * t."OUT_9" AS "OUT_3"
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
    0.289402 + -0.471963 * t."OUT_0"  + 0.393143 * t."OUT_1"  + -0.636778 * t."OUT_2"  + 0.669541 * t."OUT_3" AS "OUT_0",
    0.387703 + -0.574999 * t."OUT_0"  + 0.546240 * t."OUT_1"  + 0.058886 * t."OUT_2"  + 0.645444 * t."OUT_3" AS "OUT_1",
    0.653999 + 0.268198 * t."OUT_0"  + -0.395672 * t."OUT_1"  + 0.319981 * t."OUT_2"  + -0.062690 * t."OUT_3" AS "OUT_2",
    -0.387040 + 0.224104 * t."OUT_0"  + 0.286569 * t."OUT_1"  + 0.377936 * t."OUT_2"  + -0.602933 * t."OUT_3" AS "OUT_3",
    0.271135 + 0.505064 * t."OUT_0"  + 0.177925 * t."OUT_1"  + -0.635449 * t."OUT_2"  + -0.045098 * t."OUT_3" AS "OUT_4",
    0.467627 + 0.576720 * t."OUT_0"  + 0.023012 * t."OUT_1"  + 0.459877 * t."OUT_2"  + 0.646580 * t."OUT_3" AS "OUT_5",
    0.490174 + 0.509838 * t."OUT_0"  + 0.061362 * t."OUT_1"  + -0.422901 * t."OUT_2"  + -0.537356 * t."OUT_3" AS "OUT_6",
    -0.031782 + -0.429758 * t."OUT_0"  + 0.434225 * t."OUT_1"  + -0.622321 * t."OUT_2"  + 0.310906 * t."OUT_3" AS "OUT_7"
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
    0.563102 + -0.610619 * t."OUT_0"  + -0.269248 * t."OUT_1"  + 0.187114 * t."OUT_2"  + -0.244826 * t."OUT_3"  + -0.306466 * t."OUT_4"  + 0.346718 * t."OUT_5"  + 0.334131 * t."OUT_6"  + 0.094493 * t."OUT_7" AS "OUT_0",
    -0.463521 + 0.298108 * t."OUT_0"  + 0.560411 * t."OUT_1"  + -0.230448 * t."OUT_2"  + 0.346398 * t."OUT_3"  + 0.033743 * t."OUT_4"  + 0.424452 * t."OUT_5"  + 0.336584 * t."OUT_6"  + -0.293021 * t."OUT_7" AS "OUT_1",
    -0.274816 + -0.021101 * t."OUT_0"  + -0.001707 * t."OUT_1"  + -0.281417 * t."OUT_2"  + 0.402403 * t."OUT_3"  + 0.160181 * t."OUT_4"  + 0.079716 * t."OUT_5"  + -0.478353 * t."OUT_6"  + 0.269269 * t."OUT_7" AS "OUT_2",
    -0.461311 + -0.097592 * t."OUT_0"  + -0.100262 * t."OUT_1"  + -0.105057 * t."OUT_2"  + 0.590205 * t."OUT_3"  + 0.470525 * t."OUT_4"  + -0.191755 * t."OUT_5"  + 0.238932 * t."OUT_6"  + -0.597796 * t."OUT_7" AS "OUT_3",
    -0.473061 + -0.480768 * t."OUT_0"  + -0.125109 * t."OUT_1"  + 0.298379 * t."OUT_2"  + 0.504059 * t."OUT_3"  + 0.321790 * t."OUT_4"  + -0.150564 * t."OUT_5"  + -0.417195 * t."OUT_6"  + -0.588556 * t."OUT_7" AS "OUT_4",
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
    0.742500 + -0.226933 * t."OUT_0"  + -0.657367 * t."OUT_1"  + 0.178648 * t."OUT_2"  + 0.113948 * t."OUT_3"  + 0.806565 * t."OUT_4"  + 0.322902 * t."OUT_5" AS "OUT_0",
    0.713810 + -0.207617 * t."OUT_0"  + 0.119860 * t."OUT_1"  + 0.241014 * t."OUT_2"  + -0.537956 * t."OUT_3"  + -0.158581 * t."OUT_4"  + -0.641381 * t."OUT_5" AS "OUT_1",
    -0.323141 + -0.475935 * t."OUT_0"  + -0.478292 * t."OUT_1"  + -0.093599 * t."OUT_2"  + -0.153129 * t."OUT_3"  + -0.638478 * t."OUT_4"  + 0.267267 * t."OUT_5" AS "OUT_2",
    0.432246 + -0.529458 * t."OUT_0"  + -0.583744 * t."OUT_1"  + 0.236689 * t."OUT_2"  + 0.628534 * t."OUT_3"  + -0.408787 * t."OUT_4"  + -0.410608 * t."OUT_5" AS "OUT_3"
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