WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 )
,
"Input_Layer_BA" AS
 ( SELECT t."index" as "index",
    X_0 AS OUT_0,
    X_1 AS OUT_1,
    X_2 AS OUT_2,
    X_3 AS OUT_3,
    X_4 AS OUT_4,
    X_5 AS OUT_5,
    X_6 AS OUT_6,
    X_7 AS OUT_7,
    X_8 AS OUT_8,
    X_9 AS OUT_9
 FROM model_input AS t
)
,
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    -0.561496 + -0.070944 * t.OUT_0  + 0.115019 * t.OUT_1  + 0.459507 * t.OUT_2  + 0.574847 * t.OUT_3  + 0.248996 * t.OUT_4  + 0.186376 * t.OUT_5  + -0.228873 * t.OUT_6  + -0.044354 * t.OUT_7  + -0.180064 * t.OUT_8  + -0.310175 * t.OUT_9 AS OUT_0,
    0.492380 + 0.278938 * t.OUT_0  + -0.266408 * t.OUT_1  + -0.040098 * t.OUT_2  + -0.394920 * t.OUT_3  + -0.213636 * t.OUT_4  + -0.844575 * t.OUT_5  + -0.782471 * t.OUT_6  + -0.084986 * t.OUT_7  + 0.134921 * t.OUT_8  + 0.392298 * t.OUT_9 AS OUT_1,
    0.069766 + -0.205282 * t.OUT_0  + 0.099636 * t.OUT_1  + 0.430991 * t.OUT_2  + -0.176444 * t.OUT_3  + -0.312171 * t.OUT_4  + -0.236798 * t.OUT_5  + -0.458268 * t.OUT_6  + -0.455347 * t.OUT_7  + -0.122513 * t.OUT_8  + -0.373663 * t.OUT_9 AS OUT_2,
    0.493737 + -0.047589 * t.OUT_0  + 0.083784 * t.OUT_1  + -0.105700 * t.OUT_2  + 0.320462 * t.OUT_3  + -0.334749 * t.OUT_4  + -0.092228 * t.OUT_5  + 0.464084 * t.OUT_6  + -0.067208 * t.OUT_7  + 0.117509 * t.OUT_8  + 0.185662 * t.OUT_9 AS OUT_3
 FROM Input_Layer_BA AS t
)
,
"Hidden_Layer_1_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (OUT_0 > 0) THEN OUT_0 ELSE 0 END AS OUT_0,
    CASE WHEN (OUT_1 > 0) THEN OUT_1 ELSE 0 END AS OUT_1,
    CASE WHEN (OUT_2 > 0) THEN OUT_2 ELSE 0 END AS OUT_2,
    CASE WHEN (OUT_3 > 0) THEN OUT_3 ELSE 0 END AS OUT_3
 FROM Hidden_Layer_1_BA AS t
),
"Hidden_Layer_2_BA" AS
 ( SELECT t."index" as "index",
    0.471604 + -0.293241 * t.OUT_0  + 0.539800 * t.OUT_1  + -0.456813 * t.OUT_2  + 0.780585 * t.OUT_3 AS OUT_0,
    0.312900 + -0.574937 * t.OUT_0  + 0.726051 * t.OUT_1  + 0.205334 * t.OUT_2  + 0.530462 * t.OUT_3 AS OUT_1,
    0.792104 + 0.161824 * t.OUT_0  + -0.459498 * t.OUT_1  + 0.109242 * t.OUT_2  + 0.084061 * t.OUT_3 AS OUT_2,
    -0.182198 + 0.348320 * t.OUT_0  + 0.485854 * t.OUT_1  + 0.607564 * t.OUT_2  + -0.397059 * t.OUT_3 AS OUT_3,
    0.451656 + 0.610851 * t.OUT_0  + 0.381736 * t.OUT_1  + -0.407423 * t.OUT_2  + 0.017557 * t.OUT_3 AS OUT_4,
    0.377856 + 0.513452 * t.OUT_0  + 0.181289 * t.OUT_1  + 0.424276 * t.OUT_2  + 0.566365 * t.OUT_3 AS OUT_5,
    0.403019 + 0.442842 * t.OUT_0  + -0.030444 * t.OUT_1  + -0.490354 * t.OUT_2  + -0.607063 * t.OUT_3 AS OUT_6,
    0.026625 + -0.330162 * t.OUT_0  + 0.575915 * t.OUT_1  + -0.453588 * t.OUT_2  + 0.216043 * t.OUT_3 AS OUT_7
 FROM Hidden_Layer_1_Activation AS t
)
,
"Hidden_Layer_2_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (OUT_0 > 0) THEN OUT_0 ELSE 0 END AS OUT_0,
    CASE WHEN (OUT_1 > 0) THEN OUT_1 ELSE 0 END AS OUT_1,
    CASE WHEN (OUT_2 > 0) THEN OUT_2 ELSE 0 END AS OUT_2,
    CASE WHEN (OUT_3 > 0) THEN OUT_3 ELSE 0 END AS OUT_3,
    CASE WHEN (OUT_4 > 0) THEN OUT_4 ELSE 0 END AS OUT_4,
    CASE WHEN (OUT_5 > 0) THEN OUT_5 ELSE 0 END AS OUT_5,
    CASE WHEN (OUT_6 > 0) THEN OUT_6 ELSE 0 END AS OUT_6,
    CASE WHEN (OUT_7 > 0) THEN OUT_7 ELSE 0 END AS OUT_7
 FROM Hidden_Layer_2_BA AS t
),
"Hidden_Layer_3_BA" AS
 ( SELECT t."index" as "index",
    0.464404 + -0.702431 * t.OUT_0  + -0.338822 * t.OUT_1  + 0.088051 * t.OUT_2  + -0.224942 * t.OUT_3  + -0.419478 * t.OUT_4  + 0.270334 * t.OUT_5  + 0.219774 * t.OUT_6  + 0.071260 * t.OUT_7 AS OUT_0,
    -0.566073 + 0.177830 * t.OUT_0  + 0.478951 * t.OUT_1  + -0.338031 * t.OUT_2  + 0.541274 * t.OUT_3  + -0.071058 * t.OUT_4  + 0.341171 * t.OUT_5  + 0.281917 * t.OUT_6  + -0.266938 * t.OUT_7 AS OUT_1,
    -0.212957 + 0.008003 * t.OUT_0  + 0.118809 * t.OUT_1  + -0.425973 * t.OUT_2  + 0.627418 * t.OUT_3  + 0.285738 * t.OUT_4  + 0.115293 * t.OUT_5  + -0.367414 * t.OUT_6  + 0.401342 * t.OUT_7 AS OUT_2,
    -0.494865 + -0.124039 * t.OUT_0  + -0.133482 * t.OUT_1  + -0.133022 * t.OUT_2  + 0.445047 * t.OUT_3  + 0.334160 * t.OUT_4  + -0.225065 * t.OUT_5  + 0.212193 * t.OUT_6  + -0.505415 * t.OUT_7 AS OUT_3,
    -0.466897 + -0.364355 * t.OUT_0  + -0.153327 * t.OUT_1  + 0.303246 * t.OUT_2  + 0.460280 * t.OUT_3  + 0.286647 * t.OUT_4  + -0.136768 * t.OUT_5  + -0.341037 * t.OUT_6  + -0.475751 * t.OUT_7 AS OUT_4,
    -0.502640 + -0.506065 * t.OUT_0  + -0.473633 * t.OUT_1  + -0.352417 * t.OUT_2  + 0.264556 * t.OUT_3  + -0.001604 * t.OUT_4  + -0.218781 * t.OUT_5  + -0.001729 * t.OUT_6  + 0.377295 * t.OUT_7 AS OUT_5
 FROM Hidden_Layer_2_Activation AS t
)
,
"Hidden_Layer_3_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (OUT_0 > 0) THEN OUT_0 ELSE 0 END AS OUT_0,
    CASE WHEN (OUT_1 > 0) THEN OUT_1 ELSE 0 END AS OUT_1,
    CASE WHEN (OUT_2 > 0) THEN OUT_2 ELSE 0 END AS OUT_2,
    CASE WHEN (OUT_3 > 0) THEN OUT_3 ELSE 0 END AS OUT_3,
    CASE WHEN (OUT_4 > 0) THEN OUT_4 ELSE 0 END AS OUT_4,
    CASE WHEN (OUT_5 > 0) THEN OUT_5 ELSE 0 END AS OUT_5
 FROM Hidden_Layer_3_BA AS t
),
"Output_Layer_BA" AS
 ( SELECT t."index" as "index",
    -0.423173 + -0.209107 * t.OUT_0  + -0.152734 * t.OUT_1  + -0.797124 * t.OUT_2  + -0.553552 * t.OUT_3  + -0.853730 * t.OUT_4  + 0.178692 * t.OUT_5 AS OUT_0
 FROM Hidden_Layer_3_Activation AS t
)

, model_scores_cte AS 
( SELECT t."index" AS "index",
    CAST(NULL AS FLOAT) AS "Proba_0", t.OUT_0 AS "Score_0", CAST(NULL AS FLOAT) AS "LogProba_0"
  FROM "Output_Layer_BA" AS t ),
soft_max_orig_cte AS 
( SELECT t."index" AS "index", 
   -t."Score_1" AS "Score_0",
   1.0 - t."Proba_1" AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX(t."Score_0", t."Score_1") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1.*,
    ( t1."Exp_Score_0" + t1."Exp_Score_1" ) AS "Sum_Exp"
  FROM
   ( SELECT t.*,
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1" ) AS "Max_Proba"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t.*,
   CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
   CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
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