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
    0.200926 + -0.011441 * t.OUT_0  + 0.096055 * t.OUT_1  + 0.383955 * t.OUT_2  + 0.441050 * t.OUT_3  + 0.238954 * t.OUT_4  + 0.211256 * t.OUT_5  + -0.041195 * t.OUT_6  + 0.012424 * t.OUT_7  + -0.102308 * t.OUT_8  + -0.280224 * t.OUT_9  + -0.266664 * t.OUT_10  + -0.262204 * t.OUT_11  + 0.315315 * t.OUT_12  + 0.289808 * t.OUT_13  + 0.117170 * t.OUT_14  + -0.346451 * t.OUT_15  + -0.335561 * t.OUT_16  + 0.438001 * t.OUT_17  + -0.011283 * t.OUT_18  + 0.193456 * t.OUT_19  + 0.205836 * t.OUT_20  + -0.355471 * t.OUT_21  + -0.277752 * t.OUT_22  + 0.045130 * t.OUT_23  + 0.156528 * t.OUT_24  + 0.192964 * t.OUT_25  + 0.308870 * t.OUT_26  + -0.139504 * t.OUT_27  + 0.230268 * t.OUT_28  + 0.074803 * t.OUT_29 AS OUT_0,
    0.181417 + 0.185158 * t.OUT_0  + -0.329646 * t.OUT_1  + 0.057689 * t.OUT_2  + -0.404021 * t.OUT_3  + -0.255539 * t.OUT_4  + -0.459111 * t.OUT_5  + -0.424672 * t.OUT_6  + -0.040401 * t.OUT_7  + 0.106019 * t.OUT_8  + 0.316355 * t.OUT_9  + 0.181912 * t.OUT_10  + -0.369202 * t.OUT_11  + 0.313236 * t.OUT_12  + 0.296307 * t.OUT_13  + -0.018391 * t.OUT_14  + 0.007462 * t.OUT_15  + 0.242618 * t.OUT_16  + 0.346953 * t.OUT_17  + 0.349070 * t.OUT_18  + 0.200035 * t.OUT_19  + 0.272306 * t.OUT_20  + 0.180253 * t.OUT_21  + -0.417914 * t.OUT_22  + -0.108751 * t.OUT_23  + -0.175179 * t.OUT_24  + -0.330402 * t.OUT_25  + 0.323380 * t.OUT_26  + 0.013095 * t.OUT_27  + -0.048022 * t.OUT_28  + -0.191267 * t.OUT_29 AS OUT_1,
    -0.292865 + -0.152609 * t.OUT_0  + 0.172682 * t.OUT_1  + 0.370173 * t.OUT_2  + -0.157549 * t.OUT_3  + -0.175278 * t.OUT_4  + -0.013336 * t.OUT_5  + -0.147746 * t.OUT_6  + -0.319701 * t.OUT_7  + -0.037503 * t.OUT_8  + -0.273677 * t.OUT_9  + 0.159296 * t.OUT_10  + 0.168016 * t.OUT_11  + 0.379792 * t.OUT_12  + -0.195770 * t.OUT_13  + 0.074785 * t.OUT_14  + 0.220227 * t.OUT_15  + -0.175269 * t.OUT_16  + -0.002101 * t.OUT_17  + -0.281668 * t.OUT_18  + 0.410142 * t.OUT_19  + 0.335981 * t.OUT_20  + 0.057992 * t.OUT_21  + -0.122069 * t.OUT_22  + -0.069566 * t.OUT_23  + -0.114081 * t.OUT_24  + -0.088523 * t.OUT_25  + 0.365136 * t.OUT_26  + 0.173805 * t.OUT_27  + 0.288421 * t.OUT_28  + -0.065530 * t.OUT_29 AS OUT_2,
    0.213484 + -0.034354 * t.OUT_0  + 0.045800 * t.OUT_1  + -0.070913 * t.OUT_2  + 0.154069 * t.OUT_3  + -0.295772 * t.OUT_4  + 0.021499 * t.OUT_5  + 0.331272 * t.OUT_6  + 0.003731 * t.OUT_7  + 0.213467 * t.OUT_8  + 0.289549 * t.OUT_9  + 0.397664 * t.OUT_10  + 0.214940 * t.OUT_11  + -0.259119 * t.OUT_12  + 0.187804 * t.OUT_13  + 0.312769 * t.OUT_14  + 0.274961 * t.OUT_15  + -0.365210 * t.OUT_16  + -0.318564 * t.OUT_17  + 0.235825 * t.OUT_18  + -0.163966 * t.OUT_19  + -0.048058 * t.OUT_20  + -0.049694 * t.OUT_21  + 0.365728 * t.OUT_22  + -0.385402 * t.OUT_23  + -0.056775 * t.OUT_24  + 0.249638 * t.OUT_25  + 0.234851 * t.OUT_26  + 0.265746 * t.OUT_27  + 0.320378 * t.OUT_28  + -0.169438 * t.OUT_29 AS OUT_3
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
    -0.642911 + -0.496289 * t.OUT_0  + 0.597849 * t.OUT_1  + -0.518175 * t.OUT_2  + -0.155004 * t.OUT_3 AS OUT_0,
    -0.376219 + 0.073644 * t.OUT_0  + -0.492698 * t.OUT_1  + -0.402798 * t.OUT_2  + 0.236167 * t.OUT_3 AS OUT_1,
    0.362313 + 0.135499 * t.OUT_0  + -0.234846 * t.OUT_1  + -0.679642 * t.OUT_2  + 0.094420 * t.OUT_3 AS OUT_2,
    -0.585498 + -0.284529 * t.OUT_0  + -0.534516 * t.OUT_1  + 0.136479 * t.OUT_2  + -0.467854 * t.OUT_3 AS OUT_3,
    0.296885 + 0.316853 * t.OUT_0  + -0.512143 * t.OUT_1  + -0.519155 * t.OUT_2  + -0.131217 * t.OUT_3 AS OUT_4,
    -0.355344 + -0.673079 * t.OUT_0  + -0.503881 * t.OUT_1  + -0.525280 * t.OUT_2  + 0.582325 * t.OUT_3 AS OUT_5,
    0.685947 + -0.685691 * t.OUT_0  + -0.235502 * t.OUT_1  + 0.161286 * t.OUT_2  + 0.696142 * t.OUT_3 AS OUT_6,
    0.608494 + 0.509180 * t.OUT_0  + -0.226884 * t.OUT_1  + 0.213427 * t.OUT_2  + -0.135574 * t.OUT_3 AS OUT_7
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
    0.370243 + -0.249651 * t.OUT_0  + 0.118296 * t.OUT_1  + 0.578977 * t.OUT_2  + -0.013455 * t.OUT_3  + 0.550397 * t.OUT_4  + 0.164808 * t.OUT_5  + -0.217663 * t.OUT_6  + 0.055148 * t.OUT_7 AS OUT_0,
    -0.334630 + 0.306374 * t.OUT_0  + -0.337110 * t.OUT_1  + 0.530395 * t.OUT_2  + 0.598982 * t.OUT_3  + 0.349916 * t.OUT_4  + 0.456435 * t.OUT_5  + -0.045930 * t.OUT_6  + 0.244748 * t.OUT_7 AS OUT_1,
    -0.203419 + -0.310297 * t.OUT_0  + 0.395130 * t.OUT_1  + -0.198609 * t.OUT_2  + 0.231906 * t.OUT_3  + -0.124484 * t.OUT_4  + -0.603413 * t.OUT_5  + -0.446488 * t.OUT_6  + 0.092391 * t.OUT_7 AS OUT_2,
    -0.632586 + 0.445629 * t.OUT_0  + 0.333579 * t.OUT_1  + 0.044665 * t.OUT_2  + 0.268682 * t.OUT_3  + -0.185678 * t.OUT_4  + -0.443492 * t.OUT_5  + 0.341380 * t.OUT_6  + 0.300370 * t.OUT_7 AS OUT_3,
    -0.281216 + -0.515450 * t.OUT_0  + -0.011376 * t.OUT_1  + 0.383793 * t.OUT_2  + -0.460970 * t.OUT_3  + 0.475201 * t.OUT_4  + -0.281347 * t.OUT_5  + 0.682782 * t.OUT_6  + 0.031971 * t.OUT_7 AS OUT_4,
    -0.457801 + 0.356956 * t.OUT_0  + -0.237239 * t.OUT_1  + 0.056403 * t.OUT_2  + -0.088915 * t.OUT_3  + -0.350399 * t.OUT_4  + -0.379539 * t.OUT_5  + 0.066596 * t.OUT_6  + 0.375974 * t.OUT_7 AS OUT_5
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
    -0.148240 + 0.297378 * t.OUT_0  + -0.094469 * t.OUT_1  + -0.464814 * t.OUT_2  + -0.753029 * t.OUT_3  + 0.863664 * t.OUT_4  + -0.341652 * t.OUT_5 AS OUT_0
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