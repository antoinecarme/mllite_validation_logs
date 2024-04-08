WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "iris_small" AS "ADS" 
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
    0.421953 + -0.104815 * t."OUT_0"  + 0.128480 * t."OUT_1"  + 0.709921 * t."OUT_2"  + 0.833956 * t."OUT_3" AS "OUT_0",
    -0.442519 + 0.421614 * t."OUT_0"  + -0.635077 * t."OUT_1"  + 0.156482 * t."OUT_2"  + -0.792758 * t."OUT_3" AS "OUT_1",
    -0.470825 + -0.383544 * t."OUT_0"  + 0.220918 * t."OUT_1"  + 0.690080 * t."OUT_2"  + -0.392632 * t."OUT_3" AS "OUT_2",
    -0.672035 + -0.063746 * t."OUT_0"  + 0.027581 * t."OUT_1"  + -0.135730 * t."OUT_2"  + 0.322195 * t."OUT_3" AS "OUT_3"
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
    0.454032 + 0.338409 * t."OUT_0"  + -0.024160 * t."OUT_1"  + -0.439537 * t."OUT_2"  + -0.443915 * t."OUT_3" AS "OUT_0",
    0.576270 + -0.698073 * t."OUT_0"  + 0.005832 * t."OUT_1"  + 0.619284 * t."OUT_2"  + -0.544968 * t."OUT_3" AS "OUT_1",
    -0.426981 + -0.112743 * t."OUT_0"  + -0.633156 * t."OUT_1"  + -0.517727 * t."OUT_2"  + 0.236548 * t."OUT_3" AS "OUT_2",
    0.285765 + 0.003089 * t."OUT_0"  + 0.015147 * t."OUT_1"  + 0.352094 * t."OUT_2"  + 0.254996 * t."OUT_3" AS "OUT_3",
    0.240944 + -0.109050 * t."OUT_0"  + -0.203087 * t."OUT_1"  + -0.507938 * t."OUT_2"  + 0.475586 * t."OUT_3" AS "OUT_4",
    0.053026 + -0.642397 * t."OUT_0"  + 0.260923 * t."OUT_1"  + 0.389044 * t."OUT_2"  + 0.606558 * t."OUT_3" AS "OUT_5",
    0.089744 + -0.362057 * t."OUT_0"  + -0.142278 * t."OUT_1"  + 0.166551 * t."OUT_2"  + 0.538130 * t."OUT_3" AS "OUT_6",
    0.373351 + 0.549075 * t."OUT_0"  + 0.274568 * t."OUT_1"  + 0.617247 * t."OUT_2"  + -0.459344 * t."OUT_3" AS "OUT_7"
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
    -0.278179 + -0.561438 * t."OUT_0"  + -0.364449 * t."OUT_1"  + -0.023593 * t."OUT_2"  + 0.576816 * t."OUT_3"  + -0.581198 * t."OUT_4"  + -0.239449 * t."OUT_5"  + 0.218124 * t."OUT_6"  + -0.215160 * t."OUT_7" AS "OUT_0",
    0.065878 + 0.073931 * t."OUT_0"  + -0.605391 * t."OUT_1"  + 0.625967 * t."OUT_2"  + -0.346982 * t."OUT_3"  + 0.355965 * t."OUT_4"  + 0.590265 * t."OUT_5"  + -0.199137 * t."OUT_6"  + 0.359756 * t."OUT_7" AS "OUT_1",
    0.157454 + 0.239541 * t."OUT_0"  + 0.645904 * t."OUT_1"  + -0.472366 * t."OUT_2"  + 0.248926 * t."OUT_3"  + 0.037182 * t."OUT_4"  + 0.027252 * t."OUT_5"  + -0.254067 * t."OUT_6"  + 0.403039 * t."OUT_7" AS "OUT_2",
    0.413057 + 0.345250 * t."OUT_0"  + 0.624800 * t."OUT_1"  + 0.258081 * t."OUT_2"  + 0.432010 * t."OUT_3"  + -0.094103 * t."OUT_4"  + -0.133482 * t."OUT_5"  + -0.133022 * t."OUT_6"  + 0.527259 * t."OUT_7" AS "OUT_3",
    0.288842 + -0.592209 * t."OUT_0"  + -0.086289 * t."OUT_1"  + 0.294782 * t."OUT_2"  + 0.447722 * t."OUT_3"  + -0.509028 * t."OUT_4"  + -0.151607 * t."OUT_5"  + 0.269611 * t."OUT_6"  + 0.442846 * t."OUT_7" AS "OUT_4",
    0.025662 + 0.483484 * t."OUT_0"  + -0.532388 * t."OUT_1"  + 0.386716 * t."OUT_2"  + -0.031256 * t."OUT_3"  + -0.649212 * t."OUT_4"  + -0.586402 * t."OUT_5"  + -0.462554 * t."OUT_6"  + 0.400585 * t."OUT_7" AS "OUT_5"
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
    0.709969 + 0.469580 * t."OUT_0"  + -0.310450 * t."OUT_1"  + 0.399958 * t."OUT_2"  + 0.234990 * t."OUT_3"  + 0.125161 * t."OUT_4"  + -0.802146 * t."OUT_5" AS "OUT_0",
    -0.508510 + 0.566861 * t."OUT_0"  + -0.192056 * t."OUT_1"  + 0.485336 * t."OUT_2"  + -0.489175 * t."OUT_3"  + -0.299080 * t."OUT_4"  + -0.702170 * t."OUT_5" AS "OUT_1",
    -0.280184 + 0.134588 * t."OUT_0"  + -0.376145 * t."OUT_1"  + -0.536619 * t."OUT_2"  + 0.026015 * t."OUT_3"  + 0.400254 * t."OUT_4"  + 0.637836 * t."OUT_5" AS "OUT_2"
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
   MAX( t."Score_0", t."Score_1", t."Score_2" ) AS "Greatest_Score"
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
    MAX( t."Proba_0", t."Proba_1", t."Proba_2" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2" ) AS "Max_Score"
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