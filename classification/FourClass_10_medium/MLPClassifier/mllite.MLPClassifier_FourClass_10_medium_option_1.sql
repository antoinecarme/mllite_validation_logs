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
    -0.510981 + -0.064709 * t.OUT_0  + 0.134049 * t.OUT_1  + 0.513172 * t.OUT_2  + 0.666337 * t.OUT_3  + 0.286451 * t.OUT_4  + 0.210532 * t.OUT_5  + -0.205883 * t.OUT_6  + -0.024238 * t.OUT_7  + -0.128044 * t.OUT_8  + -0.391444 * t.OUT_9 AS OUT_0,
    0.298018 + 0.360682 * t.OUT_0  + -0.372973 * t.OUT_1  + 0.120505 * t.OUT_2  + -0.552560 * t.OUT_3  + -0.243884 * t.OUT_4  + -0.572668 * t.OUT_5  + -0.528894 * t.OUT_6  + 0.080915 * t.OUT_7  + 0.235581 * t.OUT_8  + 0.505050 * t.OUT_9 AS OUT_1,
    0.090537 + -0.209070 * t.OUT_0  + 0.127885 * t.OUT_1  + 0.557753 * t.OUT_2  + -0.208348 * t.OUT_3  + -0.263109 * t.OUT_4  + -0.076051 * t.OUT_5  + -0.271858 * t.OUT_6  + -0.521421 * t.OUT_7  + -0.054343 * t.OUT_8  + -0.436384 * t.OUT_9 AS OUT_2,
    0.535007 + -0.126394 * t.OUT_0  + 0.102566 * t.OUT_1  + -0.149076 * t.OUT_2  + 0.161815 * t.OUT_3  + -0.432253 * t.OUT_4  + 0.088475 * t.OUT_5  + 0.462502 * t.OUT_6  + 0.125843 * t.OUT_7  + 0.353448 * t.OUT_8  + 0.293297 * t.OUT_9 AS OUT_3
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
    0.262955 + -0.518513 * t.OUT_0  + 0.366809 * t.OUT_1  + -0.673997 * t.OUT_2  + 0.636906 * t.OUT_3 AS OUT_0,
    0.352409 + -0.615434 * t.OUT_0  + 0.511199 * t.OUT_1  + 0.019600 * t.OUT_2  + 0.613458 * t.OUT_3 AS OUT_1,
    0.702527 + 0.320917 * t.OUT_0  + -0.347069 * t.OUT_1  + 0.365550 * t.OUT_2  + -0.020854 * t.OUT_3 AS OUT_2,
    -0.408216 + 0.259116 * t.OUT_0  + 0.267410 * t.OUT_1  + 0.357175 * t.OUT_2  + -0.620610 * t.OUT_3 AS OUT_3,
    0.331107 + 0.559508 * t.OUT_0  + 0.156954 * t.OUT_1  + -0.622802 * t.OUT_2  + -0.043641 * t.OUT_3 AS OUT_4,
    0.429210 + 0.536624 * t.OUT_0  + -0.013843 * t.OUT_1  + 0.418840 * t.OUT_2  + 0.614851 * t.OUT_3 AS OUT_5,
    0.464426 + 0.473100 * t.OUT_0  + 0.068980 * t.OUT_1  + -0.456327 * t.OUT_2  + -0.557212 * t.OUT_3 AS OUT_6,
    0.007813 + -0.384688 * t.OUT_0  + 0.460337 * t.OUT_1  + -0.579717 * t.OUT_2  + 0.352251 * t.OUT_3 AS OUT_7
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
    0.519024 + -0.640157 * t.OUT_0  + -0.307089 * t.OUT_1  + 0.136797 * t.OUT_2  + -0.282031 * t.OUT_3  + -0.327500 * t.OUT_4  + 0.308139 * t.OUT_5  + 0.287576 * t.OUT_6  + 0.059113 * t.OUT_7 AS OUT_0,
    -0.502579 + 0.273856 * t.OUT_0  + 0.526321 * t.OUT_1  + -0.278343 * t.OUT_2  + 0.307514 * t.OUT_3  + 0.011416 * t.OUT_4  + 0.387117 * t.OUT_5  + 0.316411 * t.OUT_6  + -0.315720 * t.OUT_7 AS OUT_1,
    -0.298103 + -0.036544 * t.OUT_0  + -0.024395 * t.OUT_1  + -0.309233 * t.OUT_2  + 0.377877 * t.OUT_3  + 0.143522 * t.OUT_4  + 0.058780 * t.OUT_5  + -0.487478 * t.OUT_6  + 0.245381 * t.OUT_7 AS OUT_2,
    -0.405528 + -0.083465 * t.OUT_0  + -0.054880 * t.OUT_1  + -0.024478 * t.OUT_2  + 0.635181 * t.OUT_3  + 0.526699 * t.OUT_4  + -0.143966 * t.OUT_5  + 0.289475 * t.OUT_6  + -0.572776 * t.OUT_7 AS OUT_3,
    -0.452342 + -0.480768 * t.OUT_0  + -0.190053 * t.OUT_1  + 0.339923 * t.OUT_2  + 0.498530 * t.OUT_3  + 0.313347 * t.OUT_4  + -0.127937 * t.OUT_5  + -0.387432 * t.OUT_6  + -0.588556 * t.OUT_7 AS OUT_4,
    -0.502640 + -0.619361 * t.OUT_0  + -0.586402 * t.OUT_1  + -0.462554 * t.OUT_2  + 0.371699 * t.OUT_3  + -0.001604 * t.OUT_4  + -0.324393 * t.OUT_5  + -0.001729 * t.OUT_6  + 0.488080 * t.OUT_7 AS OUT_5
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
    0.739574 + -0.210469 * t.OUT_0  + -0.644585 * t.OUT_1  + 0.199652 * t.OUT_2  + 0.142867 * t.OUT_3  + 0.870596 * t.OUT_4  + 0.322902 * t.OUT_5 AS OUT_0,
    0.666837 + -0.252737 * t.OUT_0  + 0.087435 * t.OUT_1  + 0.216717 * t.OUT_2  + -0.608230 * t.OUT_3  + -0.228568 * t.OUT_4  + -0.641381 * t.OUT_5 AS OUT_1,
    -0.263977 + -0.428348 * t.OUT_0  + -0.435039 * t.OUT_1  + -0.072958 * t.OUT_2  + -0.179545 * t.OUT_3  + -0.545261 * t.OUT_4  + 0.267267 * t.OUT_5 AS OUT_2,
    0.477599 + -0.480036 * t.OUT_0  + -0.553085 * t.OUT_1  + 0.263197 * t.OUT_2  + 0.730269 * t.OUT_3  + -0.330702 * t.OUT_4  + -0.410608 * t.OUT_5 AS OUT_3
 FROM Hidden_Layer_3_Activation AS t
)

, model_scores_cte AS 
( SELECT t."index" AS "index",
    CAST(NULL AS FLOAT) AS "Proba_0", t.OUT_0 AS "Score_0", CAST(NULL AS FLOAT) AS "LogProba_0",
    CAST(NULL AS FLOAT) AS "Proba_1", t.OUT_1 AS "Score_1", CAST(NULL AS FLOAT) AS "LogProba_1",
    CAST(NULL AS FLOAT) AS "Proba_2", t.OUT_2 AS "Score_2", CAST(NULL AS FLOAT) AS "LogProba_2",
    CAST(NULL AS FLOAT) AS "Proba_3", t.OUT_3 AS "Score_3", CAST(NULL AS FLOAT) AS "LogProba_3"
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
   MAX(t."Score_0", t."Score_1", t."Score_2", t."Score_3") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1.*,
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" ) AS "Sum_Exp"
  FROM
   ( SELECT t.*,
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
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    CAST(NULL AS FLOAT) AS "LogProba_2",
    t1."Exp_Score_2" / t1."Sum_Exp" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    CAST(NULL AS FLOAT) AS "LogProba_3",
    t1."Exp_Score_3" / t1."Sum_Exp" AS "Proba_3",
    t1."Score_3" AS "Score_3"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t.*,
   CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
   CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
   CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
   CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
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