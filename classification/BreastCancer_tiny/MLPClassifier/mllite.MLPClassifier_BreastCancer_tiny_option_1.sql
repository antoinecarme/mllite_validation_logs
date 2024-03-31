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
    0.198076 + -0.057814 * t.OUT_0  + 0.054881 * t.OUT_1  + 0.336644 * t.OUT_2  + 0.396941 * t.OUT_3  + 0.196729 * t.OUT_4  + 0.160721 * t.OUT_5  + -0.103303 * t.OUT_6  + -0.050990 * t.OUT_7  + -0.151049 * t.OUT_8  + -0.302724 * t.OUT_9  + -0.322998 * t.OUT_10  + -0.285747 * t.OUT_11  + 0.261380 * t.OUT_12  + 0.230792 * t.OUT_13  + 0.101305 * t.OUT_14  + -0.382114 * t.OUT_15  + -0.379349 * t.OUT_16  + 0.393292 * t.OUT_17  + -0.038128 * t.OUT_18  + 0.164966 * t.OUT_19  + 0.155311 * t.OUT_20  + -0.395133 * t.OUT_21  + -0.329892 * t.OUT_22  + -0.003055 * t.OUT_23  + 0.117253 * t.OUT_24  + 0.152082 * t.OUT_25  + 0.256560 * t.OUT_26  + -0.198833 * t.OUT_27  + 0.184006 * t.OUT_28  + 0.046460 * t.OUT_29 AS OUT_0,
    0.233720 + 0.188316 * t.OUT_0  + -0.264519 * t.OUT_1  + 0.089131 * t.OUT_2  + -0.340874 * t.OUT_3  + -0.171836 * t.OUT_4  + -0.383980 * t.OUT_5  + -0.351015 * t.OUT_6  + 0.003465 * t.OUT_7  + 0.155011 * t.OUT_8  + 0.337336 * t.OUT_9  + 0.201387 * t.OUT_10  + -0.293381 * t.OUT_11  + 0.329805 * t.OUT_12  + 0.311888 * t.OUT_13  + 0.031502 * t.OUT_14  + 0.053013 * t.OUT_15  + 0.260984 * t.OUT_16  + 0.370234 * t.OUT_17  + 0.370981 * t.OUT_18  + 0.218260 * t.OUT_19  + 0.265414 * t.OUT_20  + 0.180403 * t.OUT_21  + -0.366756 * t.OUT_22  + -0.085654 * t.OUT_23  + -0.127784 * t.OUT_24  + -0.266584 * t.OUT_25  + 0.327081 * t.OUT_26  + 0.039600 * t.OUT_27  + -0.001030 * t.OUT_28  + -0.144422 * t.OUT_29 AS OUT_1,
    -0.290591 + -0.171459 * t.OUT_0  + 0.121763 * t.OUT_1  + 0.318784 * t.OUT_2  + -0.175984 * t.OUT_3  + -0.184224 * t.OUT_4  + -0.066979 * t.OUT_5  + -0.185518 * t.OUT_6  + -0.345545 * t.OUT_7  + -0.084525 * t.OUT_8  + -0.277282 * t.OUT_9  + 0.098946 * t.OUT_10  + 0.140531 * t.OUT_11  + 0.289339 * t.OUT_12  + -0.223729 * t.OUT_13  + 0.053316 * t.OUT_14  + 0.172071 * t.OUT_15  + -0.204098 * t.OUT_16  + -0.055371 * t.OUT_17  + -0.272844 * t.OUT_18  + 0.339554 * t.OUT_19  + 0.277461 * t.OUT_20  + 0.004659 * t.OUT_21  + -0.153652 * t.OUT_22  + -0.097285 * t.OUT_23  + -0.163032 * t.OUT_24  + -0.138066 * t.OUT_25  + 0.274964 * t.OUT_26  + 0.117358 * t.OUT_27  + 0.211762 * t.OUT_28  + -0.114846 * t.OUT_29 AS OUT_2,
    0.136162 + -0.030922 * t.OUT_0  + 0.013379 * t.OUT_1  + -0.065839 * t.OUT_2  + 0.156287 * t.OUT_3  + -0.295595 * t.OUT_4  + 0.019589 * t.OUT_5  + 0.313162 * t.OUT_6  + 0.023954 * t.OUT_7  + 0.177865 * t.OUT_8  + 0.196070 * t.OUT_9  + 0.350970 * t.OUT_10  + 0.151490 * t.OUT_11  + -0.242812 * t.OUT_12  + 0.160825 * t.OUT_13  + 0.210125 * t.OUT_14  + 0.211831 * t.OUT_15  + -0.357822 * t.OUT_16  + -0.311164 * t.OUT_17  + 0.165607 * t.OUT_18  + -0.182619 * t.OUT_19  + -0.037646 * t.OUT_20  + -0.079595 * t.OUT_21  + 0.348151 * t.OUT_22  + -0.345682 * t.OUT_23  + -0.085359 * t.OUT_24  + 0.211765 * t.OUT_25  + 0.208707 * t.OUT_26  + 0.254608 * t.OUT_27  + 0.261446 * t.OUT_28  + -0.178661 * t.OUT_29 AS OUT_3
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
    -0.601465 + -0.419782 * t.OUT_0  + 0.609605 * t.OUT_1  + -0.431920 * t.OUT_2  + -0.111183 * t.OUT_3 AS OUT_0,
    -0.343582 + -0.001867 * t.OUT_0  + -0.437037 * t.OUT_1  + -0.478854 * t.OUT_2  + 0.162916 * t.OUT_3 AS OUT_1,
    0.280260 + 0.112891 * t.OUT_0  + -0.235589 * t.OUT_1  + -0.594793 * t.OUT_2  + 0.083580 * t.OUT_3 AS OUT_2,
    -0.585498 + -0.254373 * t.OUT_0  + -0.503488 * t.OUT_1  + 0.136479 * t.OUT_2  + -0.436970 * t.OUT_3 AS OUT_3,
    0.230256 + 0.303308 * t.OUT_0  + -0.509584 * t.OUT_1  + -0.433450 * t.OUT_2  + -0.116517 * t.OUT_3 AS OUT_4,
    -0.374832 + -0.637042 * t.OUT_0  + -0.511870 * t.OUT_1  + -0.528941 * t.OUT_2  + 0.554910 * t.OUT_3 AS OUT_5,
    0.651135 + -0.604523 * t.OUT_0  + -0.205013 * t.OUT_1  + 0.140396 * t.OUT_2  + 0.673376 * t.OUT_3 AS OUT_6,
    0.692579 + 0.546771 * t.OUT_0  + -0.161909 * t.OUT_1  + 0.215607 * t.OUT_2  + -0.112664 * t.OUT_3 AS OUT_7
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
    0.283079 + -0.269516 * t.OUT_0  + 0.136049 * t.OUT_1  + 0.527901 * t.OUT_2  + -0.013455 * t.OUT_3  + 0.513460 * t.OUT_4  + 0.085396 * t.OUT_5  + -0.234303 * t.OUT_6  + 0.007458 * t.OUT_7 AS OUT_0,
    -0.262214 + 0.309164 * t.OUT_0  + -0.334873 * t.OUT_1  + 0.577202 * t.OUT_2  + 0.567845 * t.OUT_3  + 0.381624 * t.OUT_4  + 0.503327 * t.OUT_5  + -0.009806 * t.OUT_6  + 0.275602 * t.OUT_7 AS OUT_1,
    -0.187150 + -0.284675 * t.OUT_0  + 0.274478 * t.OUT_1  + -0.234848 * t.OUT_2  + 0.202159 * t.OUT_3  + -0.162957 * t.OUT_4  + -0.572269 * t.OUT_5  + -0.504925 * t.OUT_6  + 0.067016 * t.OUT_7 AS OUT_2,
    -0.548857 + 0.449912 * t.OUT_0  + 0.273498 * t.OUT_1  + 0.094272 * t.OUT_2  + 0.238633 * t.OUT_3  + -0.153177 * t.OUT_4  + -0.328053 * t.OUT_5  + 0.373996 * t.OUT_6  + 0.335488 * t.OUT_7 AS OUT_3,
    -0.367475 + -0.523998 * t.OUT_0  + 0.018379 * t.OUT_1  + 0.336107 * t.OUT_2  + -0.430103 * t.OUT_3  + 0.440145 * t.OUT_4  + -0.337746 * t.OUT_5  + 0.586564 * t.OUT_6  + 0.028094 * t.OUT_7 AS OUT_4,
    -0.378289 + 0.360972 * t.OUT_0  + -0.254198 * t.OUT_1  + 0.096330 * t.OUT_2  + -0.088915 * t.OUT_3  + -0.319825 * t.OUT_4  + -0.310540 * t.OUT_5  + 0.111382 * t.OUT_6  + 0.411022 * t.OUT_7 AS OUT_5
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
    -0.234004 + 0.236263 * t.OUT_0  + -0.153570 * t.OUT_1  + -0.362622 * t.OUT_2  + -0.796749 * t.OUT_3  + 0.793526 * t.OUT_4  + -0.375880 * t.OUT_5 AS OUT_0
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