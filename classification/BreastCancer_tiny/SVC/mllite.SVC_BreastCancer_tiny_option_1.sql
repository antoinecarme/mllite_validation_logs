WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
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
   CAST("Values".sv_13 AS FLOAT) sv_13,
   CAST("Values".sv_14 AS FLOAT) sv_14,
   CAST("Values".sv_15 AS FLOAT) sv_15,
   CAST("Values".sv_16 AS FLOAT) sv_16,
   CAST("Values".sv_17 AS FLOAT) sv_17,
   CAST("Values".sv_18 AS FLOAT) sv_18,
   CAST("Values".sv_19 AS FLOAT) sv_19,
   CAST("Values".sv_20 AS FLOAT) sv_20,
   CAST("Values".sv_21 AS FLOAT) sv_21,
   CAST("Values".sv_22 AS FLOAT) sv_22,
   CAST("Values".sv_23 AS FLOAT) sv_23,
   CAST("Values".sv_24 AS FLOAT) sv_24,
   CAST("Values".sv_25 AS FLOAT) sv_25,
   CAST("Values".sv_26 AS FLOAT) sv_26,
   CAST("Values".sv_27 AS FLOAT) sv_27,
   CAST("Values".sv_28 AS FLOAT) sv_28,
   CAST("Values".sv_29 AS FLOAT) sv_29
  FROM
  (
     SELECT 0 AS sv_idx, 19.400000 AS sv_0, 23.500000 AS sv_1, 129.100006 AS sv_2, 1155.000000 AS sv_3, 0.102700 AS sv_4, 0.155800 AS sv_5, 0.204900 AS sv_6, 0.088860 AS sv_7, 0.197800 AS sv_8, 0.060000 AS sv_9, 0.524300 AS sv_10, 1.802000 AS sv_11, 4.037000 AS sv_12, 60.410000 AS sv_13, 0.010610 AS sv_14, 0.032520 AS sv_15, 0.039150 AS sv_16, 0.015590 AS sv_17, 0.021860 AS sv_18, 0.003949 AS sv_19, 21.650000 AS sv_20, 30.530001 AS sv_21, 144.899994 AS sv_22, 1417.000000 AS sv_23, 0.146300 AS sv_24, 0.296800 AS sv_25, 0.345800 AS sv_26, 0.156400 AS sv_27, 0.292000 AS sv_28, 0.076140 AS sv_29
     UNION ALL
     SELECT 1 AS sv_idx, 15.660000 AS sv_0, 23.200001 AS sv_1, 110.199997 AS sv_2, 773.500000 AS sv_3, 0.110900 AS sv_4, 0.311400 AS sv_5, 0.317600 AS sv_6, 0.137700 AS sv_7, 0.249500 AS sv_8, 0.081040 AS sv_9, 1.292000 AS sv_10, 2.454000 AS sv_11, 10.120000 AS sv_12, 138.500000 AS sv_13, 0.012360 AS sv_14, 0.059950 AS sv_15, 0.082320 AS sv_16, 0.030240 AS sv_17, 0.023370 AS sv_18, 0.006042 AS sv_19, 19.850000 AS sv_20, 31.639999 AS sv_21, 143.699997 AS sv_22, 1226.000000 AS sv_23, 0.150400 AS sv_24, 0.517200 AS sv_25, 0.618100 AS sv_26, 0.246200 AS sv_27, 0.327700 AS sv_28, 0.101900 AS sv_29
     UNION ALL
     SELECT 2 AS sv_idx, 15.340000 AS sv_0, 14.260000 AS sv_1, 102.500000 AS sv_2, 704.400024 AS sv_3, 0.107300 AS sv_4, 0.213500 AS sv_5, 0.207700 AS sv_6, 0.097560 AS sv_7, 0.252100 AS sv_8, 0.070320 AS sv_9, 0.438800 AS sv_10, 0.709600 AS sv_11, 3.384000 AS sv_12, 44.910000 AS sv_13, 0.006789 AS sv_14, 0.053280 AS sv_15, 0.064460 AS sv_16, 0.022520 AS sv_17, 0.036720 AS sv_18, 0.004394 AS sv_19, 18.070000 AS sv_20, 19.080000 AS sv_21, 125.099998 AS sv_22, 980.900024 AS sv_23, 0.139000 AS sv_24, 0.595400 AS sv_25, 0.630500 AS sv_26, 0.239300 AS sv_27, 0.466700 AS sv_28, 0.099460 AS sv_29
     UNION ALL
     SELECT 3 AS sv_idx, 13.870000 AS sv_0, 20.700001 AS sv_1, 89.769997 AS sv_2, 584.799988 AS sv_3, 0.095780 AS sv_4, 0.101800 AS sv_5, 0.036880 AS sv_6, 0.023690 AS sv_7, 0.162000 AS sv_8, 0.066880 AS sv_9, 0.272000 AS sv_10, 1.047000 AS sv_11, 2.076000 AS sv_12, 23.120001 AS sv_13, 0.006298 AS sv_14, 0.021720 AS sv_15, 0.026150 AS sv_16, 0.009061 AS sv_17, 0.014900 AS sv_18, 0.003599 AS sv_19, 15.050000 AS sv_20, 24.750000 AS sv_21, 99.169998 AS sv_22, 688.599976 AS sv_23, 0.126400 AS sv_24, 0.203700 AS sv_25, 0.137700 AS sv_26, 0.068450 AS sv_27, 0.224900 AS sv_28, 0.084920 AS sv_29
     UNION ALL
     SELECT 4 AS sv_idx, 14.620000 AS sv_0, 24.020000 AS sv_1, 94.570000 AS sv_2, 662.700012 AS sv_3, 0.089740 AS sv_4, 0.086060 AS sv_5, 0.031020 AS sv_6, 0.029570 AS sv_7, 0.168500 AS sv_8, 0.058660 AS sv_9, 0.372100 AS sv_10, 1.111000 AS sv_11, 2.279000 AS sv_12, 33.759998 AS sv_13, 0.004868 AS sv_14, 0.018180 AS sv_15, 0.011210 AS sv_16, 0.008606 AS sv_17, 0.020850 AS sv_18, 0.002893 AS sv_19, 16.110001 AS sv_20, 29.110001 AS sv_21, 102.900002 AS sv_22, 803.700012 AS sv_23, 0.111500 AS sv_24, 0.176600 AS sv_25, 0.091890 AS sv_26, 0.069460 AS sv_27, 0.252200 AS sv_28, 0.072460 AS sv_29
     UNION ALL
     SELECT 5 AS sv_idx, 12.100000 AS sv_0, 17.719999 AS sv_1, 78.070000 AS sv_2, 446.200012 AS sv_3, 0.102900 AS sv_4, 0.097580 AS sv_5, 0.047830 AS sv_6, 0.033260 AS sv_7, 0.193700 AS sv_8, 0.061610 AS sv_9, 0.284100 AS sv_10, 1.652000 AS sv_11, 1.869000 AS sv_12, 22.219999 AS sv_13, 0.008146 AS sv_14, 0.016310 AS sv_15, 0.018430 AS sv_16, 0.007513 AS sv_17, 0.020150 AS sv_18, 0.001798 AS sv_19, 13.560000 AS sv_20, 25.799999 AS sv_21, 88.330002 AS sv_22, 559.500000 AS sv_23, 0.143200 AS sv_24, 0.177300 AS sv_25, 0.160300 AS sv_26, 0.062660 AS sv_27, 0.304900 AS sv_28, 0.070810 AS sv_29
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
           exp(min(max(-32.0, -0.000001 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2) + power(model_input."X_10" - "SV_data".sv_10, 2) + power(model_input."X_11" - "SV_data".sv_11, 2) + power(model_input."X_12" - "SV_data".sv_12, 2) + power(model_input."X_13" - "SV_data".sv_13, 2) + power(model_input."X_14" - "SV_data".sv_14, 2) + power(model_input."X_15" - "SV_data".sv_15, 2) + power(model_input."X_16" - "SV_data".sv_16, 2) + power(model_input."X_17" - "SV_data".sv_17, 2) + power(model_input."X_18" - "SV_data".sv_18, 2) + power(model_input."X_19" - "SV_data".sv_19, 2) + power(model_input."X_20" - "SV_data".sv_20, 2) + power(model_input."X_21" - "SV_data".sv_21, 2) + power(model_input."X_22" - "SV_data".sv_22, 2) + power(model_input."X_23" - "SV_data".sv_23, 2) + power(model_input."X_24" - "SV_data".sv_24, 2) + power(model_input."X_25" - "SV_data".sv_25, 2) + power(model_input."X_26" - "SV_data".sv_26, 2) + power(model_input."X_27" - "SV_data".sv_27, 2) + power(model_input."X_28" - "SV_data".sv_28, 2) + power(model_input."X_29" - "SV_data".sv_29, 2))), 32.0))  AS "kernel_value" 
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
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 0 AS sv_idx, 0.696239 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 1 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 2 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 3 AS sv_idx, 0.696239 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 4 AS sv_idx, 2.000000 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 5 AS sv_idx, 2.000000 AS Coeff
   ) AS t
  )
,
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", 0.054533 AS "rho", -1.969666 AS "probA", -0.247407 AS "probB"
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