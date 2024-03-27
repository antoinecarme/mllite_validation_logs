WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 )
,
"SV_data" AS
 ( SELECT 
   "Values".sv_idx AS sv_idx,
   CAST("Values".sv_0 AS FLOAT) sv_0,
   CAST("Values".sv_1 AS FLOAT) sv_1,
   CAST("Values".sv_2 AS FLOAT) sv_2,
   CAST("Values".sv_3 AS FLOAT) sv_3,
   CAST("Values".sv_4 AS FLOAT) sv_4,
   CAST("Values".sv_5 AS FLOAT) sv_5,
   CAST("Values".sv_6 AS FLOAT) sv_6,
   CAST("Values".sv_7 AS FLOAT) sv_7,
   CAST("Values".sv_8 AS FLOAT) sv_8,
   CAST("Values".sv_9 AS FLOAT) sv_9,
   CAST("Values".sv_10 AS FLOAT) sv_10,
   CAST("Values".sv_11 AS FLOAT) sv_11,
   CAST("Values".sv_12 AS FLOAT) sv_12,
   CAST("Values".sv_13 AS FLOAT) sv_13
  FROM
  (
     SELECT 0 AS sv_idx, 1.000000 AS sv_0, 0.000000 AS sv_1, 159537.000000 AS sv_2, 0.000000 AS sv_3, 12.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 1 AS sv_idx, 2.000000 AS sv_0, 0.000000 AS sv_1, 165346.000000 AS sv_2, 0.000000 AS sv_3, 10.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 4.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 2 AS sv_idx, 1.000000 AS sv_0, 0.000000 AS sv_1, 142712.000000 AS sv_2, 0.000000 AS sv_3, 9.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 3 AS sv_idx, 0.000000 AS sv_0, 0.000000 AS sv_1, 340543.000000 AS sv_2, 0.000000 AS sv_3, 13.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 4 AS sv_idx, 4.000000 AS sv_0, 0.000000 AS sv_1, 31781.000000 AS sv_2, 0.000000 AS sv_3, 9.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 1.000000 AS sv_11, 1.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 5 AS sv_idx, 1.000000 AS sv_0, 0.000000 AS sv_1, 56121.000000 AS sv_2, 0.000000 AS sv_3, 9.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 3.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 6 AS sv_idx, 3.000000 AS sv_0, 0.000000 AS sv_1, 126840.000000 AS sv_2, 0.000000 AS sv_3, 10.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 7 AS sv_idx, 2.000000 AS sv_0, 0.000000 AS sv_1, 67187.000000 AS sv_2, 0.000000 AS sv_3, 9.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 8 AS sv_idx, 2.000000 AS sv_0, 0.000000 AS sv_1, 188950.000000 AS sv_2, 0.000000 AS sv_3, 14.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 3.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 9 AS sv_idx, 1.000000 AS sv_0, 0.000000 AS sv_1, 129707.000000 AS sv_2, 0.000000 AS sv_3, 13.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 4.000000 AS sv_10, 0.000000 AS sv_11, 1.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 10 AS sv_idx, 1.000000 AS sv_0, 0.000000 AS sv_1, 78530.000000 AS sv_2, 0.000000 AS sv_3, 9.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 4.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 11 AS sv_idx, 3.000000 AS sv_0, 0.000000 AS sv_1, 96586.000000 AS sv_2, 0.000000 AS sv_3, 10.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 0.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
     UNION ALL
     SELECT 12 AS sv_idx, 1.000000 AS sv_0, 0.000000 AS sv_1, 229656.000000 AS sv_2, 0.000000 AS sv_3, 14.000000 AS sv_4, 0.000000 AS sv_5, 0.000000 AS sv_6, 0.000000 AS sv_7, 0.000000 AS sv_8, 0.000000 AS sv_9, 0.000000 AS sv_10, 1.000000 AS sv_11, 2.000000 AS sv_12, 0.000000 AS sv_13
   ) AS "Values"
 )
,
"Kernel_RBF" AS
 ( SELECT
    kvt."index" as "index",
    kvt."sv_idx" as "sv_idx",
    kvt."kernel_value" AS "kernel_value"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      full_join_data_sv."sv_idx" AS "sv_idx",
      sum(CAST(full_join_data_sv."kernel_value" AS FLOAT)) AS "kernel_value"
     FROM
       (SELECT
          model_input."index" as "index",
          "SV_data"."sv_idx" AS "sv_idx",
           exp(min(max(-32.0, -0.000000 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2) + power(model_input."X_10" - "SV_data".sv_10, 2) + power(model_input."X_11" - "SV_data".sv_11, 2) + power(model_input."X_12" - "SV_data".sv_12, 2) + power(model_input."X_13" - "SV_data".sv_13, 2))), 32.0))  AS "kernel_value" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index", full_join_data_sv."sv_idx"
    ) AS kvt
 ),
"ClassProblems" AS
 ( SELECT
    t.prob_idx AS prob_idx, t.c_1 AS c_1, t.c_2 AS c_2, t.sv_idx AS sv_idx, t.coeff AS Coeff
   FROM
   (
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 0 AS sv_idx, -19036.625000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 1 AS sv_idx, -13778.842773 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 2 AS sv_idx, -19036.625000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 3 AS sv_idx, -1502.829834 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 4 AS sv_idx, -10777.450195 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 5 AS sv_idx, -147.138779 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 6 AS sv_idx, -11024.886719 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 7 AS sv_idx, -842.097717 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 8 AS sv_idx, -19036.625000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 9 AS sv_idx, -13778.842773 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 10 AS sv_idx, -19036.625000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 11 AS sv_idx, -1502.829834 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 12 AS sv_idx, -10777.450195 AS Coeff
   ) AS t
  )
,
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", 119.268311 AS "rho", 0.010659 AS "probA", -0.829738 AS "probB"
   ) AS t
  )
,
"Competition" AS
( SELECT 
   t1."index" AS "index",
   t2."prob_idx" AS "prob_idx",
   t2."c_1" AS "c_1",
   t2."c_2" AS "c_2",
   t3."rho" + SUM( t2."Coeff" * t1."kernel_value" ) AS "prob_score"
  FROM 
    "Kernel_RBF" AS t1
    LEFT OUTER JOIN
    "ClassProblems" AS t2
    ON (t1."sv_idx" = t2."sv_idx")
    LEFT OUTER JOIN
    "SV_Rho" AS t3
    ON (t3."prob_idx" = t2."prob_idx")
    GROUP BY t1."index", t2."prob_idx", t2."c_1", t2."c_2"
)
,"model_scores_cte" AS
( SELECT 
   t1."index" AS "index",
   SUM( CASE WHEN (t1.c_1 == 0 and (t1.prob_score > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1.c_2 == 0 and (t1.prob_score <= 0)) THEN 1 ELSE 0 END ) AS Score_0,
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   SUM( CASE WHEN (t1.c_1 == 1 and (t1.prob_score > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1.c_2 == 1 and (t1.prob_score <= 0)) THEN 1 ELSE 0 END ) AS Score_1,
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM 
    "Competition" AS t1
    GROUP BY t1."index"
)
,
orig_cte AS 
 (SELECT t."index" AS "index", 
   -t."Score_1" AS "Score_0",
   1.0 - t."Proba_1" AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba"
  FROM model_scores_cte AS t
 )
,
score_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "orig_cte"
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
    "orig_cte" AS t
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