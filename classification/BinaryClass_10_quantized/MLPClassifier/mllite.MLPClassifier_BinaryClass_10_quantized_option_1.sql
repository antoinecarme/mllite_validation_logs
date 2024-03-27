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
    -0.560230 + -0.144747 * t.OUT_0  + 0.034247 * t.OUT_1  + 0.462114 * t.OUT_2  + 0.563720 * t.OUT_3  + 0.249009 * t.OUT_4  + 0.187918 * t.OUT_5  + -0.226360 * t.OUT_6  + -0.132662 * t.OUT_7  + -0.286898 * t.OUT_8  + -0.518751 * t.OUT_9 AS OUT_0,
    0.548032 + 0.509034 * t.OUT_0  + -0.266639 * t.OUT_1  + 0.123729 * t.OUT_2  + -0.334385 * t.OUT_3  + -0.118607 * t.OUT_4  + -0.767165 * t.OUT_5  + -0.715461 * t.OUT_6  + 0.153583 * t.OUT_7  + 0.426143 * t.OUT_8  + 0.708803 * t.OUT_9 AS OUT_1,
    0.154196 + -0.267199 * t.OUT_0  + 0.189754 * t.OUT_1  + 0.432310 * t.OUT_2  + -0.274252 * t.OUT_3  + -0.227494 * t.OUT_4  + -0.104379 * t.OUT_5  + -0.229559 * t.OUT_6  + -0.473423 * t.OUT_7  + -0.131723 * t.OUT_8  + -0.368752 * t.OUT_9 AS OUT_2,
    0.517866 + -0.136897 * t.OUT_0  + -0.045878 * t.OUT_1  + -0.165866 * t.OUT_2  + 0.188968 * t.OUT_3  + -0.491784 * t.OUT_4  + -0.062305 * t.OUT_5  + 0.453204 * t.OUT_6  + -0.053663 * t.OUT_7  + 0.186874 * t.OUT_8  + 0.253615 * t.OUT_9 AS OUT_3
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
    0.428424 + -0.337587 * t.OUT_0  + 0.502116 * t.OUT_1  + -0.493326 * t.OUT_2  + 0.767750 * t.OUT_3 AS OUT_0,
    0.279099 + -0.629055 * t.OUT_0  + 0.741878 * t.OUT_1  + 0.089234 * t.OUT_2  + 0.556505 * t.OUT_3 AS OUT_1,
    0.733442 + 0.302460 * t.OUT_0  + -0.521973 * t.OUT_1  + 0.178371 * t.OUT_2  + 0.000481 * t.OUT_3 AS OUT_2,
    -0.335508 + 0.198297 * t.OUT_0  + 0.529561 * t.OUT_1  + 0.298335 * t.OUT_2  + -0.571140 * t.OUT_3 AS OUT_3,
    0.405320 + 0.563984 * t.OUT_0  + 0.406179 * t.OUT_1  + -0.490508 * t.OUT_2  + 0.007168 * t.OUT_3 AS OUT_4,
    0.389240 + 0.520223 * t.OUT_0  + 0.227100 * t.OUT_1  + 0.379297 * t.OUT_2  + 0.590459 * t.OUT_3 AS OUT_5,
    0.384688 + 0.436620 * t.OUT_0  + -0.044600 * t.OUT_1  + -0.285663 * t.OUT_2  + -0.614007 * t.OUT_3 AS OUT_6,
    -0.024174 + -0.469468 * t.OUT_0  + 0.598942 * t.OUT_1  + -0.540104 * t.OUT_2  + 0.261487 * t.OUT_3 AS OUT_7
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
    0.477368 + -0.668703 * t.OUT_0  + -0.288080 * t.OUT_1  + 0.101868 * t.OUT_2  + -0.320800 * t.OUT_3  + -0.382655 * t.OUT_4  + 0.287849 * t.OUT_5  + 0.244209 * t.OUT_6  + 0.119984 * t.OUT_7 AS OUT_0,
    -0.565105 + 0.192978 * t.OUT_0  + 0.476218 * t.OUT_1  + -0.325158 * t.OUT_2  + 0.352628 * t.OUT_3  + -0.041187 * t.OUT_4  + 0.353984 * t.OUT_5  + 0.275073 * t.OUT_6  + -0.368080 * t.OUT_7 AS OUT_1,
    -0.279579 + -0.040933 * t.OUT_0  + -0.009198 * t.OUT_1  + -0.302074 * t.OUT_2  + 0.652682 * t.OUT_3  + 0.172518 * t.OUT_4  + 0.064967 * t.OUT_5  + -0.456378 * t.OUT_6  + 0.309230 * t.OUT_7 AS OUT_2,
    -0.565613 + 0.015546 * t.OUT_0  + -0.016370 * t.OUT_1  + -0.210320 * t.OUT_2  + 0.481822 * t.OUT_3  + 0.375825 * t.OUT_4  + -0.283682 * t.OUT_5  + 0.143584 * t.OUT_6  + -0.450079 * t.OUT_7 AS OUT_3,
    -0.500519 + -0.370162 * t.OUT_0  + -0.151607 * t.OUT_1  + 0.269611 * t.OUT_2  + 0.365210 * t.OUT_3  + 0.216036 * t.OUT_4  + -0.178974 * t.OUT_5  + -0.308396 * t.OUT_6  + -0.475751 * t.OUT_7 AS OUT_4,
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
    -0.448431 + -0.222386 * t.OUT_0  + -0.111124 * t.OUT_1  + -0.616468 * t.OUT_2  + -0.623632 * t.OUT_3  + -0.703981 * t.OUT_4  + 0.178692 * t.OUT_5 AS OUT_0
 FROM Hidden_Layer_3_Activation AS t
)

, soft_max_orig_cte AS 
( SELECT t."index" AS "index",
    CAST(NULL AS FLOAT) AS "Proba_0", t.OUT_0 AS "Score_0", CAST(NULL AS FLOAT) AS "LogProba_0"
  FROM "Output_Layer_BA" AS t )
,
soft_max_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_orig_cte"
   ) AS scu
 )
,soft_max_score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
 "soft_max_orig_cte" AS t
    LEFT OUTER JOIN
    (SELECT t1.index_u AS index_m,
      max(t1."Score") AS "max_Score"
     FROM soft_max_class_union t1
     GROUP BY t1.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,soft_max_deltas AS 
 (SELECT soft_max_score_max."index" AS "index",
    soft_max_score_max."Score_0" AS "Score_0",
    EXP(max(-32.0, soft_max_score_max."Score_0" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_0",
    soft_max_score_max."Score_1" AS "Score_1",
    EXP(max(-32.0, soft_max_score_max."Score_1" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_1",
    soft_max_score_max."max_Score" AS "max_Score"
  FROM soft_max_score_max
 )
,soft_max_class_union_with_delta AS 
 (SELECT soft_scu."index" AS "index",
   soft_scu.class AS class,
   soft_scu."ExpDelta_Score" AS "ExpDelta_Score"
  FROM (
    SELECT t."index" AS "index", 0 AS "class", t."ExpDelta_Score_0" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 1 AS "class", t."ExpDelta_Score_1" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
) AS soft_scu)
,
soft_max_cte AS 
 (SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."ExpDelta_Score_0" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."ExpDelta_Score_1" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_1",
    t1."Score_1" AS "Score_1"
 FROM 
   soft_max_deltas AS t1
   LEFT OUTER JOIN
   ( SELECT t3."index" AS "index",
       SUM( t3."ExpDelta_Score" ) AS "sum_ExpDelta_Score"
     FROM soft_max_class_union_with_delta AS t3
     GROUP BY t3."index"
   ) AS sum_exp_t
   ON (t1."index" = sum_exp_t."index")
 )
,
score_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_cte"
   ) AS scu
 )
,
score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
    "soft_max_cte" AS t
    LEFT OUTER JOIN
    (SELECT score_class_union.index_u AS index_m,
      max(score_class_union."Score") AS "max_Score"
     FROM score_class_union
     GROUP BY score_class_union.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,
union_with_max AS 
 (SELECT score_class_union.index_u AS "index",
   score_class_union.class AS class,
   score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score"
  FROM
   score_class_union
   LEFT OUTER JOIN
   score_max
   ON score_class_union.index_u = score_max."index"
 )
,
arg_max_cte AS 
 (SELECT score_max."index" AS "index",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score",
   "arg_max_t_Score"."index_Score" AS "index_Score",
   "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score"
  FROM
   score_max
   LEFT OUTER JOIN
   (SELECT union_with_max."index" AS "index_Score",
     max(union_with_max.class) AS "arg_max_Score"
    FROM union_with_max
    WHERE union_with_max."max_Score" <= union_with_max."Score"
    GROUP BY union_with_max."index"
   ) AS "arg_max_t_Score"
   ON score_max."index" = "arg_max_t_Score"."index_Score"
 )
SELECT arg_max_cte."index" AS "index",
  arg_max_cte."Score_0" AS "Score_0",
  arg_max_cte."Proba_0" AS "Proba_0",
  CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN LN( arg_max_cte."Proba_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
  arg_max_cte."Score_1" AS "Score_1",
  arg_max_cte."Proba_1" AS "Proba_1",
  CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN LN( arg_max_cte."Proba_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
  arg_max_cte."arg_max_Score" AS "Decision",
  CASE
   WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0"
   WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1"
 END AS "DecisionProba"
FROM arg_max_cte