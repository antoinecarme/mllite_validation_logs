WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"Input_Layer_BA" AS
 ( SELECT t."index" as "index",
    t."X_0" AS "OUT_0",
    t."X_1" AS "OUT_1",
    t."X_2" AS "OUT_2",
    t."X_3" AS "OUT_3",
    t."X_4" AS "OUT_4",
    t."X_5" AS "OUT_5",
    t."X_6" AS "OUT_6",
    t."X_7" AS "OUT_7",
    t."X_8" AS "OUT_8",
    t."X_9" AS "OUT_9",
    t."X_10" AS "OUT_10",
    t."X_11" AS "OUT_11",
    t."X_12" AS "OUT_12",
    t."X_13" AS "OUT_13",
    t."X_14" AS "OUT_14",
    t."X_15" AS "OUT_15",
    t."X_16" AS "OUT_16",
    t."X_17" AS "OUT_17",
    t."X_18" AS "OUT_18",
    t."X_19" AS "OUT_19",
    t."X_20" AS "OUT_20",
    t."X_21" AS "OUT_21",
    t."X_22" AS "OUT_22",
    t."X_23" AS "OUT_23",
    t."X_24" AS "OUT_24",
    t."X_25" AS "OUT_25",
    t."X_26" AS "OUT_26",
    t."X_27" AS "OUT_27",
    t."X_28" AS "OUT_28",
    t."X_29" AS "OUT_29"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    0.198482 + -0.057826 * t."OUT_0"  + 0.055382 * t."OUT_1"  + 0.336630 * t."OUT_2"  + 0.396760 * t."OUT_3"  + 0.197331 * t."OUT_4"  + 0.160981 * t."OUT_5"  + -0.103477 * t."OUT_6"  + -0.051085 * t."OUT_7"  + -0.150675 * t."OUT_8"  + -0.302087 * t."OUT_9"  + -0.322929 * t."OUT_10"  + -0.286196 * t."OUT_11"  + 0.261422 * t."OUT_12"  + 0.230689 * t."OUT_13"  + 0.101620 * t."OUT_14"  + -0.381872 * t."OUT_15"  + -0.379870 * t."OUT_16"  + 0.392949 * t."OUT_17"  + -0.037777 * t."OUT_18"  + 0.166677 * t."OUT_19"  + 0.155369 * t."OUT_20"  + -0.394696 * t."OUT_21"  + -0.329850 * t."OUT_22"  + -0.003129 * t."OUT_23"  + 0.117954 * t."OUT_24"  + 0.152322 * t."OUT_25"  + 0.256306 * t."OUT_26"  + -0.198982 * t."OUT_27"  + 0.184560 * t."OUT_28"  + 0.047172 * t."OUT_29" AS "OUT_0",
    0.233720 + 0.217923 * t."OUT_0"  + -0.294738 * t."OUT_1"  + 0.089131 * t."OUT_2"  + -0.371462 * t."OUT_3"  + -0.201252 * t."OUT_4"  + -0.414717 * t."OUT_5"  + -0.381641 * t."OUT_6"  + 0.003465 * t."OUT_7"  + 0.155011 * t."OUT_8"  + 0.367910 * t."OUT_9"  + 0.231126 * t."OUT_10"  + -0.323759 * t."OUT_11"  + 0.360349 * t."OUT_12"  + 0.342355 * t."OUT_13"  + 0.031502 * t."OUT_14"  + 0.053013 * t."OUT_15"  + 0.291182 * t."OUT_16"  + 0.400927 * t."OUT_17"  + 0.401676 * t."OUT_18"  + 0.248151 * t."OUT_19"  + 0.295639 * t."OUT_20"  + 0.209921 * t."OUT_21"  + -0.397437 * t."OUT_22"  + -0.085654 * t."OUT_23"  + -0.127784 * t."OUT_24"  + -0.296816 * t."OUT_25"  + 0.357613 * t."OUT_26"  + 0.039600 * t."OUT_27"  + -0.001030 * t."OUT_28"  + -0.144422 * t."OUT_29" AS "OUT_1",
    -0.290591 + -0.171459 * t."OUT_0"  + 0.121763 * t."OUT_1"  + 0.349281 * t."OUT_2"  + -0.175984 * t."OUT_3"  + -0.213785 * t."OUT_4"  + -0.066979 * t."OUT_5"  + -0.215094 * t."OUT_6"  + -0.376151 * t."OUT_7"  + -0.084525 * t."OUT_8"  + -0.307576 * t."OUT_9"  + 0.098946 * t."OUT_10"  + 0.140531 * t."OUT_11"  + 0.319697 * t."OUT_12"  + -0.253665 * t."OUT_13"  + 0.053316 * t."OUT_14"  + 0.172071 * t."OUT_15"  + -0.233863 * t."OUT_16"  + -0.055371 * t."OUT_17"  + -0.303112 * t."OUT_18"  + 0.370137 * t."OUT_19"  + 0.307756 * t."OUT_20"  + 0.004659 * t."OUT_21"  + -0.153652 * t."OUT_22"  + -0.097285 * t."OUT_23"  + -0.163032 * t."OUT_24"  + -0.138066 * t."OUT_25"  + 0.305245 * t."OUT_26"  + 0.117358 * t."OUT_27"  + 0.241597 * t."OUT_28"  + -0.114846 * t."OUT_29" AS "OUT_2",
    0.136162 + -0.030922 * t."OUT_0"  + 0.013379 * t."OUT_1"  + -0.065839 * t."OUT_2"  + 0.156287 * t."OUT_3"  + -0.325985 * t."OUT_4"  + 0.019589 * t."OUT_5"  + 0.343634 * t."OUT_6"  + 0.023954 * t."OUT_7"  + 0.177865 * t."OUT_8"  + 0.225757 * t."OUT_9"  + 0.381596 * t."OUT_10"  + 0.151490 * t."OUT_11"  + -0.272891 * t."OUT_12"  + 0.187635 * t."OUT_13"  + 0.239946 * t."OUT_14"  + 0.241667 * t."OUT_15"  + -0.388472 * t."OUT_16"  + -0.341627 * t."OUT_17"  + 0.165607 * t."OUT_18"  + -0.212163 * t."OUT_19"  + -0.037646 * t."OUT_20"  + -0.079595 * t."OUT_21"  + 0.378767 * t."OUT_22"  + -0.376288 * t."OUT_23"  + -0.085359 * t."OUT_24"  + 0.241600 * t."OUT_25"  + 0.238515 * t."OUT_26"  + 0.284766 * t."OUT_27"  + 0.291647 * t."OUT_28"  + -0.208159 * t."OUT_29" AS "OUT_3"
 FROM "Input_Layer_BA" AS t
),
"Hidden_Layer_1_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3"
 FROM "Hidden_Layer_1_BA" AS t
),
"Hidden_Layer_2_BA" AS
 ( SELECT t."index" as "index",
    -0.601465 + -0.450622 * t."OUT_0"  + 0.640801 * t."OUT_1"  + -0.462791 * t."OUT_2"  + -0.111183 * t."OUT_3" AS "OUT_0",
    -0.343582 + -0.001867 * t."OUT_0"  + -0.467921 * t."OUT_1"  + -0.509832 * t."OUT_2"  + 0.189751 * t."OUT_3" AS "OUT_1",
    0.280703 + 0.114192 * t."OUT_0"  + -0.265616 * t."OUT_1"  + -0.625969 * t."OUT_2"  + 0.083580 * t."OUT_3" AS "OUT_2",
    -0.585498 + -0.284529 * t."OUT_0"  + -0.534516 * t."OUT_1"  + 0.136479 * t."OUT_2"  + -0.467854 * t."OUT_3" AS "OUT_3",
    0.230675 + 0.304759 * t."OUT_0"  + -0.540622 * t."OUT_1"  + -0.464325 * t."OUT_2"  + -0.116517 * t."OUT_3" AS "OUT_4",
    -0.374832 + -0.668273 * t."OUT_0"  + -0.542913 * t."OUT_1"  + -0.560014 * t."OUT_2"  + 0.586027 * t."OUT_3" AS "OUT_5",
    0.651135 + -0.635713 * t."OUT_0"  + -0.234787 * t."OUT_1"  + 0.140396 * t."OUT_2"  + 0.704649 * t."OUT_3" AS "OUT_6",
    0.692188 + 0.545168 * t."OUT_0"  + -0.161909 * t."OUT_1"  + 0.245475 * t."OUT_2"  + -0.112664 * t."OUT_3" AS "OUT_7"
 FROM "Hidden_Layer_1_Activation" AS t
),
"Hidden_Layer_2_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3",
    CASE WHEN (t."OUT_4" > 0) THEN t."OUT_4" ELSE 0 END AS "OUT_4",
    CASE WHEN (t."OUT_5" > 0) THEN t."OUT_5" ELSE 0 END AS "OUT_5",
    CASE WHEN (t."OUT_6" > 0) THEN t."OUT_6" ELSE 0 END AS "OUT_6",
    CASE WHEN (t."OUT_7" > 0) THEN t."OUT_7" ELSE 0 END AS "OUT_7"
 FROM "Hidden_Layer_2_BA" AS t
),
"Hidden_Layer_3_BA" AS
 ( SELECT t."index" as "index",
    0.283497 + -0.299766 * t."OUT_0"  + 0.136049 * t."OUT_1"  + 0.529264 * t."OUT_2"  + -0.013455 * t."OUT_3"  + 0.514881 * t."OUT_4"  + 0.085396 * t."OUT_5"  + -0.264320 * t."OUT_6"  + 0.008939 * t."OUT_7" AS "OUT_0",
    -0.262609 + 0.339618 * t."OUT_0"  + -0.365438 * t."OUT_1"  + 0.575710 * t."OUT_2"  + 0.598982 * t."OUT_3"  + 0.380074 * t."OUT_4"  + 0.534354 * t."OUT_5"  + -0.009806 * t."OUT_6"  + 0.273993 * t."OUT_7" AS "OUT_1",
    -0.187150 + -0.315008 * t."OUT_0"  + 0.304756 * t."OUT_1"  + -0.264870 * t."OUT_2"  + 0.231906 * t."OUT_3"  + -0.189793 * t."OUT_4"  + -0.603413 * t."OUT_5"  + -0.535956 * t."OUT_6"  + 0.067016 * t."OUT_7" AS "OUT_2",
    -0.549264 + 0.480827 * t."OUT_0"  + 0.303771 * t."OUT_1"  + 0.092846 * t."OUT_2"  + 0.268682 * t."OUT_3"  + -0.154660 * t."OUT_4"  + -0.358589 * t."OUT_5"  + 0.404701 * t."OUT_6"  + 0.333945 * t."OUT_7" AS "OUT_3",
    -0.367062 + -0.555063 * t."OUT_0"  + 0.018379 * t."OUT_1"  + 0.337503 * t."OUT_2"  + -0.460970 * t."OUT_3"  + 0.441600 * t."OUT_4"  + -0.368321 * t."OUT_5"  + 0.617728 * t."OUT_6"  + 0.029608 * t."OUT_7" AS "OUT_4",
    -0.378693 + 0.391634 * t."OUT_0"  + -0.284353 * t."OUT_1"  + 0.094888 * t."OUT_2"  + -0.088915 * t."OUT_3"  + -0.321326 * t."OUT_4"  + -0.341001 * t."OUT_5"  + 0.111382 * t."OUT_6"  + 0.409462 * t."OUT_7" AS "OUT_5"
 FROM "Hidden_Layer_2_Activation" AS t
),
"Hidden_Layer_3_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3",
    CASE WHEN (t."OUT_4" > 0) THEN t."OUT_4" ELSE 0 END AS "OUT_4",
    CASE WHEN (t."OUT_5" > 0) THEN t."OUT_5" ELSE 0 END AS "OUT_5"
 FROM "Hidden_Layer_3_BA" AS t
),
"Output_Layer_BA" AS
 ( SELECT t."index" as "index",
    -0.233594 + 0.237671 * t."OUT_0"  + -0.152053 * t."OUT_1"  + -0.393289 * t."OUT_2"  + -0.795123 * t."OUT_3"  + 0.794931 * t."OUT_4"  + -0.374221 * t."OUT_5" AS "OUT_0"
 FROM "Hidden_Layer_3_Activation" AS t
),
model_scores_cte AS 
( SELECT t."index" AS "index",
   -0.5 * t."OUT_0" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.5 * t."OUT_0" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM "Output_Layer_BA" AS t ),
soft_max_orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX( t."Score_0", t."Score_1" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1."index" as "index",
    t1."Proba_0" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_0" AS "Exp_Score_0",
    t1."Proba_1" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    t1."Exp_Score_1" AS "Exp_Score_1",
    ( t1."Exp_Score_0" + t1."Exp_Score_1" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    MAX( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1" ) AS "Max_Score"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    t."Max_Proba" AS "Max_Proba",
    t."Max_Score" AS "Max_Score"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
( SELECT t."index" as "index",
     t."Proba_0" AS "Proba_0",
     t."Score_0" AS "Score_0",
     t."Proba_1" AS "Proba_1",
     t."Score_1" AS "Score_1",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
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