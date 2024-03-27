WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
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
    X_13 AS OUT_13,
    X_14 AS OUT_14,
    X_15 AS OUT_15,
    X_16 AS OUT_16,
    X_17 AS OUT_17,
    X_18 AS OUT_18,
    X_19 AS OUT_19,
    X_20 AS OUT_20,
    X_21 AS OUT_21,
    X_22 AS OUT_22,
    X_23 AS OUT_23,
    X_24 AS OUT_24,
    X_25 AS OUT_25,
    X_26 AS OUT_26,
    X_27 AS OUT_27,
    X_28 AS OUT_28,
    X_29 AS OUT_29
 FROM model_input AS t
)
,
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    0.198402 + -0.057859 * t.OUT_0  + 0.055273 * t.OUT_1  + 0.336599 * t.OUT_2  + 0.396764 * t.OUT_3  + 0.197248 * t.OUT_4  + 0.160916 * t.OUT_5  + -0.103510 * t.OUT_6  + -0.051051 * t.OUT_7  + -0.150760 * t.OUT_8  + -0.302190 * t.OUT_9  + -0.322895 * t.OUT_10  + -0.286471 * t.OUT_11  + 0.261441 * t.OUT_12  + 0.230718 * t.OUT_13  + 0.101471 * t.OUT_14  + -0.381983 * t.OUT_15  + -0.380006 * t.OUT_16  + 0.392918 * t.OUT_17  + -0.037843 * t.OUT_18  + 0.166412 * t.OUT_19  + 0.155352 * t.OUT_20  + -0.394806 * t.OUT_21  + -0.329867 * t.OUT_22  + -0.003113 * t.OUT_23  + 0.117874 * t.OUT_24  + 0.152267 * t.OUT_25  + 0.256281 * t.OUT_26  + -0.198967 * t.OUT_27  + 0.184507 * t.OUT_28  + 0.047069 * t.OUT_29 AS OUT_0,
    0.233720 + 0.217923 * t.OUT_0  + -0.294738 * t.OUT_1  + 0.089131 * t.OUT_2  + -0.371462 * t.OUT_3  + -0.201252 * t.OUT_4  + -0.414717 * t.OUT_5  + -0.381641 * t.OUT_6  + 0.003465 * t.OUT_7  + 0.155011 * t.OUT_8  + 0.367910 * t.OUT_9  + 0.231126 * t.OUT_10  + -0.323759 * t.OUT_11  + 0.360349 * t.OUT_12  + 0.342355 * t.OUT_13  + 0.031502 * t.OUT_14  + 0.053013 * t.OUT_15  + 0.291182 * t.OUT_16  + 0.400927 * t.OUT_17  + 0.401676 * t.OUT_18  + 0.248151 * t.OUT_19  + 0.295639 * t.OUT_20  + 0.209921 * t.OUT_21  + -0.397437 * t.OUT_22  + -0.085654 * t.OUT_23  + -0.127784 * t.OUT_24  + -0.296816 * t.OUT_25  + 0.357613 * t.OUT_26  + 0.039600 * t.OUT_27  + -0.001030 * t.OUT_28  + -0.144422 * t.OUT_29 AS OUT_1,
    -0.290591 + -0.171459 * t.OUT_0  + 0.121763 * t.OUT_1  + 0.349281 * t.OUT_2  + -0.175984 * t.OUT_3  + -0.213785 * t.OUT_4  + -0.066979 * t.OUT_5  + -0.215094 * t.OUT_6  + -0.376151 * t.OUT_7  + -0.084525 * t.OUT_8  + -0.307576 * t.OUT_9  + 0.098946 * t.OUT_10  + 0.140531 * t.OUT_11  + 0.319697 * t.OUT_12  + -0.253665 * t.OUT_13  + 0.053316 * t.OUT_14  + 0.172071 * t.OUT_15  + -0.233863 * t.OUT_16  + -0.055371 * t.OUT_17  + -0.303112 * t.OUT_18  + 0.370137 * t.OUT_19  + 0.307756 * t.OUT_20  + 0.004659 * t.OUT_21  + -0.153652 * t.OUT_22  + -0.097285 * t.OUT_23  + -0.163032 * t.OUT_24  + -0.138066 * t.OUT_25  + 0.305245 * t.OUT_26  + 0.117358 * t.OUT_27  + 0.241597 * t.OUT_28  + -0.114846 * t.OUT_29 AS OUT_2,
    0.136162 + -0.030922 * t.OUT_0  + 0.013379 * t.OUT_1  + -0.065839 * t.OUT_2  + 0.156287 * t.OUT_3  + -0.325985 * t.OUT_4  + 0.019589 * t.OUT_5  + 0.343634 * t.OUT_6  + 0.023954 * t.OUT_7  + 0.177865 * t.OUT_8  + 0.225757 * t.OUT_9  + 0.381596 * t.OUT_10  + 0.151490 * t.OUT_11  + -0.272891 * t.OUT_12  + 0.187635 * t.OUT_13  + 0.239946 * t.OUT_14  + 0.241667 * t.OUT_15  + -0.388472 * t.OUT_16  + -0.341627 * t.OUT_17  + 0.165607 * t.OUT_18  + -0.212163 * t.OUT_19  + -0.037646 * t.OUT_20  + -0.079595 * t.OUT_21  + 0.378767 * t.OUT_22  + -0.376288 * t.OUT_23  + -0.085359 * t.OUT_24  + 0.241600 * t.OUT_25  + 0.238515 * t.OUT_26  + 0.284766 * t.OUT_27  + 0.291647 * t.OUT_28  + -0.208159 * t.OUT_29 AS OUT_3
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
    -0.601465 + -0.450622 * t.OUT_0  + 0.640801 * t.OUT_1  + -0.462791 * t.OUT_2  + -0.111183 * t.OUT_3 AS OUT_0,
    -0.343582 + -0.001867 * t.OUT_0  + -0.467921 * t.OUT_1  + -0.509832 * t.OUT_2  + 0.189751 * t.OUT_3 AS OUT_1,
    0.280885 + 0.114176 * t.OUT_0  + -0.265616 * t.OUT_1  + -0.625969 * t.OUT_2  + 0.083580 * t.OUT_3 AS OUT_2,
    -0.585498 + -0.284529 * t.OUT_0  + -0.534516 * t.OUT_1  + 0.136479 * t.OUT_2  + -0.467854 * t.OUT_3 AS OUT_3,
    0.230867 + 0.304740 * t.OUT_0  + -0.540622 * t.OUT_1  + -0.464325 * t.OUT_2  + -0.116517 * t.OUT_3 AS OUT_4,
    -0.374832 + -0.668273 * t.OUT_0  + -0.542913 * t.OUT_1  + -0.560014 * t.OUT_2  + 0.586027 * t.OUT_3 AS OUT_5,
    0.651135 + -0.635713 * t.OUT_0  + -0.234787 * t.OUT_1  + 0.140396 * t.OUT_2  + 0.704649 * t.OUT_3 AS OUT_6,
    0.691990 + 0.545189 * t.OUT_0  + -0.161909 * t.OUT_1  + 0.245475 * t.OUT_2  + -0.112664 * t.OUT_3 AS OUT_7
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
    0.283688 + -0.299766 * t.OUT_0  + 0.136049 * t.OUT_1  + 0.529248 * t.OUT_2  + -0.013455 * t.OUT_3  + 0.514863 * t.OUT_4  + 0.085396 * t.OUT_5  + -0.264320 * t.OUT_6  + 0.008920 * t.OUT_7 AS OUT_0,
    -0.262806 + 0.339618 * t.OUT_0  + -0.365438 * t.OUT_1  + 0.575728 * t.OUT_2  + 0.598982 * t.OUT_3  + 0.380094 * t.OUT_4  + 0.534354 * t.OUT_5  + -0.009806 * t.OUT_6  + 0.274014 * t.OUT_7 AS OUT_1,
    -0.187150 + -0.315008 * t.OUT_0  + 0.304756 * t.OUT_1  + -0.264870 * t.OUT_2  + 0.231906 * t.OUT_3  + -0.189793 * t.OUT_4  + -0.603413 * t.OUT_5  + -0.535956 * t.OUT_6  + 0.067016 * t.OUT_7 AS OUT_2,
    -0.549459 + 0.480827 * t.OUT_0  + 0.303771 * t.OUT_1  + 0.092863 * t.OUT_2  + 0.268682 * t.OUT_3  + -0.154642 * t.OUT_4  + -0.358589 * t.OUT_5  + 0.404701 * t.OUT_6  + 0.333964 * t.OUT_7 AS OUT_3,
    -0.366869 + -0.555063 * t.OUT_0  + 0.018379 * t.OUT_1  + 0.337486 * t.OUT_2  + -0.460970 * t.OUT_3  + 0.441581 * t.OUT_4  + -0.368321 * t.OUT_5  + 0.617728 * t.OUT_6  + 0.029589 * t.OUT_7 AS OUT_4,
    -0.378888 + 0.391634 * t.OUT_0  + -0.284353 * t.OUT_1  + 0.094905 * t.OUT_2  + -0.088915 * t.OUT_3  + -0.321307 * t.OUT_4  + -0.341001 * t.OUT_5  + 0.111382 * t.OUT_6  + 0.409482 * t.OUT_7 AS OUT_5
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
    -0.233400 + 0.237654 * t.OUT_0  + -0.152072 * t.OUT_1  + -0.393289 * t.OUT_2  + -0.795145 * t.OUT_3  + 0.794913 * t.OUT_4  + -0.374243 * t.OUT_5 AS OUT_0
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