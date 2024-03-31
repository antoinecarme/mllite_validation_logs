WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 )
,
"Input_Layer_BA" AS
 ( SELECT t."index" as "index",
    X_0 AS OUT_0,
    X_1 AS OUT_1,
    X_2 AS OUT_2,
    X_3 AS OUT_3
 FROM model_input AS t
)
,
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    0.421131 + -0.105484 * t.OUT_0  + 0.126969 * t.OUT_1  + 0.707716 * t.OUT_2  + 0.830466 * t.OUT_3 AS OUT_0,
    -0.440162 + 0.424532 * t.OUT_0  + -0.607619 * t.OUT_1  + 0.159147 * t.OUT_2  + -0.790187 * t.OUT_3 AS OUT_1,
    -0.467933 + -0.380535 * t.OUT_0  + 0.226357 * t.OUT_1  + 0.692494 * t.OUT_2  + -0.390401 * t.OUT_3 AS OUT_2,
    -0.700583 + -0.091886 * t.OUT_0  + -0.000797 * t.OUT_1  + -0.163577 * t.OUT_2  + 0.293815 * t.OUT_3 AS OUT_3
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
    0.440458 + 0.335410 * t.OUT_0  + -0.072584 * t.OUT_1  + -0.466964 * t.OUT_2  + -0.419461 * t.OUT_3 AS OUT_0,
    0.610894 + -0.663286 * t.OUT_0  + 0.005832 * t.OUT_1  + 0.654076 * t.OUT_2  + -0.544968 * t.OUT_3 AS OUT_1,
    -0.426981 + -0.112743 * t.OUT_0  + -0.633156 * t.OUT_1  + -0.517727 * t.OUT_2  + 0.236548 * t.OUT_3 AS OUT_2,
    0.286000 + 0.003435 * t.OUT_0  + 0.019584 * t.OUT_1  + 0.359613 * t.OUT_2  + 0.233228 * t.OUT_3 AS OUT_3,
    0.209398 + -0.140474 * t.OUT_0  + -0.216003 * t.OUT_1  + -0.507938 * t.OUT_2  + 0.475586 * t.OUT_3 AS OUT_4,
    0.053026 + -0.642397 * t.OUT_0  + 0.260923 * t.OUT_1  + 0.389044 * t.OUT_2  + 0.606558 * t.OUT_3 AS OUT_5,
    0.089744 + -0.362057 * t.OUT_0  + -0.142278 * t.OUT_1  + 0.166551 * t.OUT_2  + 0.538130 * t.OUT_3 AS OUT_6,
    0.372490 + 0.547655 * t.OUT_0  + 0.278502 * t.OUT_1  + 0.613963 * t.OUT_2  + -0.476660 * t.OUT_3 AS OUT_7
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
    -0.278179 + -0.561438 * t.OUT_0  + -0.364449 * t.OUT_1  + -0.023593 * t.OUT_2  + 0.576816 * t.OUT_3  + -0.581198 * t.OUT_4  + -0.239449 * t.OUT_5  + 0.218124 * t.OUT_6  + -0.215160 * t.OUT_7 AS OUT_0,
    0.096773 + 0.095675 * t.OUT_0  + -0.571587 * t.OUT_1  + 0.625967 * t.OUT_2  + -0.315601 * t.OUT_3  + 0.327138 * t.OUT_4  + 0.590265 * t.OUT_5  + -0.199137 * t.OUT_6  + 0.386918 * t.OUT_7 AS OUT_1,
    0.185769 + 0.247541 * t.OUT_0  + 0.681008 * t.OUT_1  + -0.472366 * t.OUT_2  + 0.265026 * t.OUT_3  + 0.007260 * t.OUT_4  + 0.027252 * t.OUT_5  + -0.254067 * t.OUT_6  + 0.411631 * t.OUT_7 AS OUT_2,
    0.413076 + 0.345608 * t.OUT_0  + 0.659780 * t.OUT_1  + 0.258081 * t.OUT_2  + 0.433148 * t.OUT_3  + -0.124039 * t.OUT_4  + -0.133482 * t.OUT_5  + -0.133022 * t.OUT_6  + 0.527201 * t.OUT_7 AS OUT_3,
    0.288821 + -0.592263 * t.OUT_0  + -0.121782 * t.OUT_1  + 0.294782 * t.OUT_2  + 0.447378 * t.OUT_3  + -0.480768 * t.OUT_4  + -0.151607 * t.OUT_5  + 0.269611 * t.OUT_6  + 0.442475 * t.OUT_7 AS OUT_4,
    0.002380 + 0.477704 * t.OUT_0  + -0.567637 * t.OUT_1  + 0.386716 * t.OUT_2  + -0.045100 * t.OUT_3  + -0.619361 * t.OUT_4  + -0.586402 * t.OUT_5  + -0.462554 * t.OUT_6  + 0.394079 * t.OUT_7 AS OUT_5
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
    0.711376 + 0.469580 * t.OUT_0  + -0.309773 * t.OUT_1  + 0.401097 * t.OUT_2  + 0.236203 * t.OUT_3  + 0.127987 * t.OUT_4  + -0.800982 * t.OUT_5 AS OUT_0,
    -0.508387 + 0.566861 * t.OUT_0  + -0.191330 * t.OUT_1  + 0.485708 * t.OUT_2  + -0.488888 * t.OUT_3  + -0.299016 * t.OUT_4  + -0.702020 * t.OUT_5 AS OUT_1,
    -0.306114 + 0.134588 * t.OUT_0  + -0.382955 * t.OUT_1  + -0.544383 * t.OUT_2  + 0.017838 * t.OUT_3  + 0.388607 * t.OUT_4  + 0.630595 * t.OUT_5 AS OUT_2
 FROM Hidden_Layer_3_Activation AS t
)

, model_scores_cte AS 
( SELECT t."index" AS "index",
    CAST(NULL AS FLOAT) AS "Proba_0", t.OUT_0 AS "Score_0", CAST(NULL AS FLOAT) AS "LogProba_0",
    CAST(NULL AS FLOAT) AS "Proba_1", t.OUT_1 AS "Score_1", CAST(NULL AS FLOAT) AS "LogProba_1",
    CAST(NULL AS FLOAT) AS "Proba_2", t.OUT_2 AS "Score_2", CAST(NULL AS FLOAT) AS "LogProba_2"
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
   MAX(t."Score_0", t."Score_1", t."Score_2") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1.*,
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" ) AS "Sum_Exp"
  FROM
   ( SELECT t.*,
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2"
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
    t1."Score_2" AS "Score_2"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1", t."Proba_2" ) AS "Max_Proba"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t.*,
   CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
   CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
   CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
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