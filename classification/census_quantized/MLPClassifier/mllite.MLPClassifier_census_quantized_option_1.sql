WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
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
    X_9 AS OUT_9,
    X_10 AS OUT_10,
    X_11 AS OUT_11,
    X_12 AS OUT_12,
    X_13 AS OUT_13
 FROM model_input AS t
)
,
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    0.409718 + 0.106715 * t.OUT_0  + 0.106196 * t.OUT_1  + 0.085667 * t.OUT_2  + 0.223184 * t.OUT_3  + 0.288304 * t.OUT_4  + 0.250130 * t.OUT_5  + -0.114696 * t.OUT_6  + -0.042435 * t.OUT_7  + -0.176366 * t.OUT_8  + -0.384231 * t.OUT_9  + -0.607163 * t.OUT_10  + -0.847215 * t.OUT_11  + 0.250021 * t.OUT_12  + 0.345192 * t.OUT_13 AS OUT_0,
    -0.513848 + 0.382185 * t.OUT_0  + -0.405079 * t.OUT_1  + 0.178238 * t.OUT_2  + -0.222252 * t.OUT_3  + 0.162026 * t.OUT_4  + -0.223178 * t.OUT_5  + -0.222223 * t.OUT_6  + 0.004762 * t.OUT_7  + 0.213042 * t.OUT_8  + 0.223091 * t.OUT_9  + 0.468415 * t.OUT_10  + 0.327856 * t.OUT_11  + 0.298901 * t.OUT_12  + 0.470522 * t.OUT_13 AS OUT_1,
    0.872647 + -0.385265 * t.OUT_0  + 0.167347 * t.OUT_1  + 0.259904 * t.OUT_2  + -0.241867 * t.OUT_3  + -0.059614 * t.OUT_4  + -0.092054 * t.OUT_5  + -0.295619 * t.OUT_6  + -0.222568 * t.OUT_7  + -0.116169 * t.OUT_8  + -0.422723 * t.OUT_9  + 0.437715 * t.OUT_10  + 0.303100 * t.OUT_11  + 0.216550 * t.OUT_12  + -0.348629 * t.OUT_13 AS OUT_2,
    0.543191 + 0.148051 * t.OUT_0  + 0.018387 * t.OUT_1  + 0.084378 * t.OUT_2  + 0.214797 * t.OUT_3  + -0.498126 * t.OUT_4  + 0.026923 * t.OUT_5  + 0.472280 * t.OUT_6  + 0.032922 * t.OUT_7  + 0.244452 * t.OUT_8  + 0.310274 * t.OUT_9  + 0.385006 * t.OUT_10  + 0.393219 * t.OUT_11  + -0.143416 * t.OUT_12  + 0.257880 * t.OUT_13 AS OUT_3
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
    0.297381 + -0.658185 * t.OUT_0  + 0.662800 * t.OUT_1  + 0.010670 * t.OUT_2  + -0.689407 * t.OUT_3 AS OUT_0,
    0.235345 + 0.210799 * t.OUT_0  + 0.694899 * t.OUT_1  + 0.452540 * t.OUT_2  + 0.300704 * t.OUT_3 AS OUT_1,
    0.725583 + 0.158169 * t.OUT_0  + -0.283611 * t.OUT_1  + 0.579690 * t.OUT_2  + 0.033040 * t.OUT_3 AS OUT_2,
    -0.037948 + 0.509399 * t.OUT_0  + -0.873291 * t.OUT_1  + 0.341193 * t.OUT_2  + 0.505520 * t.OUT_3 AS OUT_3,
    0.447094 + -0.967872 * t.OUT_0  + 0.297445 * t.OUT_1  + 0.113348 * t.OUT_2  + -0.406437 * t.OUT_3 AS OUT_4,
    -0.610822 + 0.396741 * t.OUT_0  + 0.625050 * t.OUT_1  + 0.514995 * t.OUT_2  + -0.714725 * t.OUT_3 AS OUT_5,
    -0.331750 + -0.386584 * t.OUT_0  + -0.525160 * t.OUT_1  + 0.481329 * t.OUT_2  + -0.192377 * t.OUT_3 AS OUT_6,
    -0.389499 + -0.919464 * t.OUT_0  + 0.125811 * t.OUT_1  + -0.072200 * t.OUT_2  + 0.671227 * t.OUT_3 AS OUT_7
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
    -0.354667 + 0.323995 * t.OUT_0  + 0.418674 * t.OUT_1  + 0.264696 * t.OUT_2  + -0.837247 * t.OUT_3  + -0.216186 * t.OUT_4  + -0.689057 * t.OUT_5  + -0.489441 * t.OUT_6  + -0.355807 * t.OUT_7 AS OUT_0,
    0.144808 + -0.516844 * t.OUT_0  + 0.367078 * t.OUT_1  + 0.047170 * t.OUT_2  + -0.037199 * t.OUT_3  + -0.155808 * t.OUT_4  + 0.496731 * t.OUT_5  + -0.447111 * t.OUT_6  + 0.196306 * t.OUT_7 AS OUT_1,
    0.635230 + -0.310460 * t.OUT_0  + -0.504143 * t.OUT_1  + 0.422346 * t.OUT_2  + 0.471078 * t.OUT_3  + 0.114140 * t.OUT_4  + 0.315477 * t.OUT_5  + -0.157658 * t.OUT_6  + -0.378257 * t.OUT_7 AS OUT_2,
    0.620082 + 0.184017 * t.OUT_0  + 0.166094 * t.OUT_1  + 0.840816 * t.OUT_2  + 0.752010 * t.OUT_3  + -0.239315 * t.OUT_4  + -0.321900 * t.OUT_5  + -0.065690 * t.OUT_6  + -0.620721 * t.OUT_7 AS OUT_3,
    -0.377288 + 0.493399 * t.OUT_0  + 0.145876 * t.OUT_1  + 0.000215 * t.OUT_2  + -0.533213 * t.OUT_3  + 0.448138 * t.OUT_4  + -0.328031 * t.OUT_5  + -0.487625 * t.OUT_6  + 0.374686 * t.OUT_7 AS OUT_4,
    1.214241 + 0.526904 * t.OUT_0  + 0.359362 * t.OUT_1  + 0.144126 * t.OUT_2  + 0.510177 * t.OUT_3  + -0.841846 * t.OUT_4  + -0.596139 * t.OUT_5  + -0.378227 * t.OUT_6  + -0.012829 * t.OUT_7 AS OUT_5
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
    -0.025282 + 0.924244 * t.OUT_0  + 0.148883 * t.OUT_1  + -0.831972 * t.OUT_2  + -1.214555 * t.OUT_3  + 0.551094 * t.OUT_4  + -1.320202 * t.OUT_5 AS OUT_0
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