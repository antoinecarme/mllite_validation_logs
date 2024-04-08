WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52"
  FROM "census_one_hot_sampled" AS "ADS" 
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
    t."X_29" AS "OUT_29",
    t."X_30" AS "OUT_30",
    t."X_31" AS "OUT_31",
    t."X_32" AS "OUT_32",
    t."X_33" AS "OUT_33",
    t."X_34" AS "OUT_34",
    t."X_35" AS "OUT_35",
    t."X_36" AS "OUT_36",
    t."X_37" AS "OUT_37",
    t."X_38" AS "OUT_38",
    t."X_39" AS "OUT_39",
    t."X_40" AS "OUT_40",
    t."X_41" AS "OUT_41",
    t."X_42" AS "OUT_42",
    t."X_43" AS "OUT_43",
    t."X_44" AS "OUT_44",
    t."X_45" AS "OUT_45",
    t."X_46" AS "OUT_46",
    t."X_47" AS "OUT_47",
    t."X_48" AS "OUT_48",
    t."X_49" AS "OUT_49",
    t."X_50" AS "OUT_50",
    t."X_51" AS "OUT_51",
    t."X_52" AS "OUT_52"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    0.147075 + -0.027975 * t."OUT_0"  + 0.059677 * t."OUT_1"  + 0.276623 * t."OUT_2"  + 0.322559 * t."OUT_3"  + 0.169565 * t."OUT_4"  + 0.140561 * t."OUT_5"  + -0.064454 * t."OUT_6"  + -0.023846 * t."OUT_7"  + -0.099109 * t."OUT_8"  + -0.215919 * t."OUT_9"  + -0.233058 * t."OUT_10"  + -0.203682 * t."OUT_11"  + 0.218214 * t."OUT_12"  + 0.193981 * t."OUT_13"  + 0.096078 * t."OUT_14"  + -0.278246 * t."OUT_15"  + -0.276932 * t."OUT_16"  + 0.320107 * t."OUT_17"  + -0.011693 * t."OUT_18"  + 0.146092 * t."OUT_19"  + 0.136532 * t."OUT_20"  + -0.288038 * t."OUT_21"  + -0.238266 * t."OUT_22"  + 0.013506 * t."OUT_23"  + 0.108101 * t."OUT_24"  + 0.133618 * t."OUT_25"  + 0.213638 * t."OUT_26"  + -0.137864 * t."OUT_27"  + 0.159477 * t."OUT_28"  + 0.053480 * t."OUT_29"  + 0.170687 * t."OUT_30"  + -0.206760 * t."OUT_31"  + 0.148238 * t."OUT_32"  + 0.294020 * t."OUT_33"  + -0.248055 * t."OUT_34"  + -0.212343 * t."OUT_35"  + -0.213047 * t."OUT_36"  + -0.051014 * t."OUT_37"  + -0.053462 * t."OUT_38"  + -0.275971 * t."OUT_39"  + 0.111946 * t."OUT_40"  + -0.148562 * t."OUT_41"  + -0.275086 * t."OUT_42"  + 0.151035 * t."OUT_43"  + 0.271445 * t."OUT_44"  + 0.176380 * t."OUT_45"  + 0.114931 * t."OUT_46"  + 0.264274 * t."OUT_47"  + 0.227924 * t."OUT_48"  + -0.299048 * t."OUT_49"  + -0.130996 * t."OUT_50"  + 0.306143 * t."OUT_51"  + 0.033213 * t."OUT_52" AS "OUT_0",
    -0.159415 + 0.294546 * t."OUT_0"  + -0.142834 * t."OUT_1"  + 0.012767 * t."OUT_2"  + 0.187794 * t."OUT_3"  + -0.167846 * t."OUT_4"  + -0.319511 * t."OUT_5"  + -0.596217 * t."OUT_6"  + 0.073871 * t."OUT_7"  + 0.103074 * t."OUT_8"  + -0.056231 * t."OUT_9"  + 0.164642 * t."OUT_10"  + 0.063496 * t."OUT_11"  + 0.094720 * t."OUT_12"  + 0.682506 * t."OUT_13"  + -0.099161 * t."OUT_14"  + 0.003052 * t."OUT_15"  + 0.272615 * t."OUT_16"  + -0.005245 * t."OUT_17"  + 0.657813 * t."OUT_18"  + -0.007199 * t."OUT_19"  + -0.143906 * t."OUT_20"  + -0.123563 * t."OUT_21"  + -0.579648 * t."OUT_22"  + -0.082169 * t."OUT_23"  + -0.278216 * t."OUT_24"  + -0.260560 * t."OUT_25"  + 0.656673 * t."OUT_26"  + -0.331229 * t."OUT_27"  + 0.347865 * t."OUT_28"  + -0.100505 * t."OUT_29"  + -0.043450 * t."OUT_30"  + 0.342029 * t."OUT_31"  + -0.604266 * t."OUT_32"  + -0.592445 * t."OUT_33"  + -0.662419 * t."OUT_34"  + -0.580678 * t."OUT_35"  + 0.131935 * t."OUT_36"  + -0.196216 * t."OUT_37"  + 0.244849 * t."OUT_38"  + -0.394234 * t."OUT_39"  + -0.295196 * t."OUT_40"  + 0.176186 * t."OUT_41"  + 0.291961 * t."OUT_42"  + 0.808628 * t."OUT_43"  + 0.724195 * t."OUT_44"  + 0.106373 * t."OUT_45"  + 0.215729 * t."OUT_46"  + -0.153208 * t."OUT_47"  + -0.149537 * t."OUT_48"  + -0.430238 * t."OUT_49"  + -0.017555 * t."OUT_50"  + 0.106160 * t."OUT_51"  + 0.104410 * t."OUT_52" AS "OUT_1",
    -0.092751 + -0.132422 * t."OUT_0"  + 0.094041 * t."OUT_1"  + 0.269760 * t."OUT_2"  + -0.135918 * t."OUT_3"  + -0.165113 * t."OUT_4"  + -0.051730 * t."OUT_5"  + -0.166123 * t."OUT_6"  + -0.290512 * t."OUT_7"  + -0.065281 * t."OUT_8"  + -0.237550 * t."OUT_9"  + 0.076419 * t."OUT_10"  + 0.108536 * t."OUT_11"  + 0.246911 * t."OUT_12"  + -0.195912 * t."OUT_13"  + 0.041178 * t."OUT_14"  + 0.132895 * t."OUT_15"  + -0.180619 * t."OUT_16"  + -0.042764 * t."OUT_17"  + -0.234102 * t."OUT_18"  + 0.285867 * t."OUT_19"  + 0.237688 * t."OUT_20"  + 0.003598 * t."OUT_21"  + -0.118669 * t."OUT_22"  + -0.075136 * t."OUT_23"  + -0.125914 * t."OUT_24"  + -0.106632 * t."OUT_25"  + 0.235749 * t."OUT_26"  + 0.090639 * t."OUT_27"  + 0.186592 * t."OUT_28"  + -0.088699 * t."OUT_29"  + -0.224432 * t."OUT_30"  + 0.060937 * t."OUT_31"  + -0.291685 * t."OUT_32"  + -0.121873 * t."OUT_33"  + -0.107727 * t."OUT_34"  + -0.287214 * t."OUT_35"  + 0.064418 * t."OUT_36"  + 0.038349 * t."OUT_37"  + 0.323315 * t."OUT_38"  + 0.135249 * t."OUT_39"  + 0.298761 * t."OUT_40"  + -0.156116 * t."OUT_41"  + 0.067425 * t."OUT_42"  + 0.009109 * t."OUT_43"  + -0.131268 * t."OUT_44"  + -0.006668 * t."OUT_45"  + -0.228454 * t."OUT_46"  + -0.094060 * t."OUT_47"  + 0.042322 * t."OUT_48"  + -0.182538 * t."OUT_49"  + -0.265617 * t."OUT_50"  + 0.013469 * t."OUT_51"  + 0.023677 * t."OUT_52" AS "OUT_2",
    -0.266099 + -0.160582 * t."OUT_0"  + -0.084005 * t."OUT_1"  + -0.005122 * t."OUT_2"  + -0.359967 * t."OUT_3"  + -0.249326 * t."OUT_4"  + 0.005470 * t."OUT_5"  + 0.561536 * t."OUT_6"  + -0.061370 * t."OUT_7"  + 0.143564 * t."OUT_8"  + 0.509092 * t."OUT_9"  + 0.298877 * t."OUT_10"  + -0.205590 * t."OUT_11"  + -0.036654 * t."OUT_12"  + -0.279894 * t."OUT_13"  + 0.298977 * t."OUT_14"  + 0.215097 * t."OUT_15"  + -0.358318 * t."OUT_16"  + 0.043588 * t."OUT_17"  + -0.228671 * t."OUT_18"  + 0.029015 * t."OUT_19"  + 0.335629 * t."OUT_20"  + 0.217938 * t."OUT_21"  + 0.558955 * t."OUT_22"  + -0.276448 * t."OUT_23"  + 0.104467 * t."OUT_24"  + 0.208167 * t."OUT_25"  + -0.203850 * t."OUT_26"  + 0.574084 * t."OUT_27"  + -0.132355 * t."OUT_28"  + -0.181792 * t."OUT_29"  + 0.320297 * t."OUT_30"  + -0.482500 * t."OUT_31"  + 0.531204 * t."OUT_32"  + 0.127512 * t."OUT_33"  + 0.332842 * t."OUT_34"  + 0.401953 * t."OUT_35"  + -0.282774 * t."OUT_36"  + 0.063308 * t."OUT_37"  + -0.036653 * t."OUT_38"  + -0.040769 * t."OUT_39"  + 0.429909 * t."OUT_40"  + 0.219856 * t."OUT_41"  + -0.289494 * t."OUT_42"  + -0.802558 * t."OUT_43"  + -0.414853 * t."OUT_44"  + 0.217945 * t."OUT_45"  + -0.131436 * t."OUT_46"  + 0.242370 * t."OUT_47"  + 0.240489 * t."OUT_48"  + 0.081499 * t."OUT_49"  + 0.202740 * t."OUT_50"  + 0.070175 * t."OUT_51"  + 0.236957 * t."OUT_52" AS "OUT_3"
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
    0.183992 + -0.382317 * t."OUT_0"  + -0.168455 * t."OUT_1"  + 0.039384 * t."OUT_2"  + -0.074066 * t."OUT_3" AS "OUT_0",
    0.271835 + -0.422945 * t."OUT_0"  + 0.260787 * t."OUT_1"  + 0.705415 * t."OUT_2"  + -0.021115 * t."OUT_3" AS "OUT_1",
    -0.615416 + 0.195556 * t."OUT_0"  + 0.343101 * t."OUT_1"  + 0.442062 * t."OUT_2"  + 0.288008 * t."OUT_3" AS "OUT_2",
    -0.094203 + -0.102255 * t."OUT_0"  + 0.290569 * t."OUT_1"  + 0.191604 * t."OUT_2"  + 0.561443 * t."OUT_3" AS "OUT_3",
    0.444955 + -0.300380 * t."OUT_0"  + -0.632237 * t."OUT_1"  + -0.240953 * t."OUT_2"  + 0.129466 * t."OUT_3" AS "OUT_4",
    -0.269698 + -0.593563 * t."OUT_0"  + 0.540740 * t."OUT_1"  + 0.626345 * t."OUT_2"  + -0.099364 * t."OUT_3" AS "OUT_5",
    -0.032805 + 0.621208 * t."OUT_0"  + 0.608192 * t."OUT_1"  + -0.702088 * t."OUT_2"  + -0.477459 * t."OUT_3" AS "OUT_6",
    -0.109743 + -0.272169 * t."OUT_0"  + 0.539527 * t."OUT_1"  + -0.656715 * t."OUT_2"  + -0.402736 * t."OUT_3" AS "OUT_7"
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
    -0.447373 + 0.231317 * t."OUT_0"  + 0.475298 * t."OUT_1"  + 0.256277 * t."OUT_2"  + 0.161098 * t."OUT_3"  + 0.307008 * t."OUT_4"  + 0.416115 * t."OUT_5"  + -0.202730 * t."OUT_6"  + 0.006452 * t."OUT_7" AS "OUT_0",
    0.251710 + -0.333577 * t."OUT_0"  + 0.438904 * t."OUT_1"  + 0.132500 * t."OUT_2"  + 0.366230 * t."OUT_3"  + 0.651637 * t."OUT_4"  + -0.654300 * t."OUT_5"  + 0.201768 * t."OUT_6"  + 0.024710 * t."OUT_7" AS "OUT_1",
    -0.033046 + -0.003050 * t."OUT_0"  + 0.225184 * t."OUT_1"  + 0.656660 * t."OUT_2"  + 0.256840 * t."OUT_3"  + -0.023497 * t."OUT_4"  + 0.251388 * t."OUT_5"  + -0.445651 * t."OUT_6"  + 0.305824 * t."OUT_7" AS "OUT_2",
    -0.205441 + 0.444377 * t."OUT_0"  + -0.466674 * t."OUT_1"  + 0.318935 * t."OUT_2"  + 0.582879 * t."OUT_3"  + 0.246293 * t."OUT_4"  + 0.560264 * t."OUT_5"  + 0.157430 * t."OUT_6"  + -0.569309 * t."OUT_7" AS "OUT_3",
    -0.143896 + 0.199075 * t."OUT_0"  + -0.040650 * t."OUT_1"  + 0.618893 * t."OUT_2"  + -0.317650 * t."OUT_3"  + 0.379477 * t."OUT_4"  + 0.149023 * t."OUT_5"  + -0.611995 * t."OUT_6"  + -0.459144 * t."OUT_7" AS "OUT_4",
    0.399115 + 0.421684 * t."OUT_0"  + -0.466466 * t."OUT_1"  + -0.367848 * t."OUT_2"  + 0.412017 * t."OUT_3"  + 0.336314 * t."OUT_4"  + 0.507017 * t."OUT_5"  + 0.351332 * t."OUT_6"  + -0.187794 * t."OUT_7" AS "OUT_5"
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
    0.236489 + 0.515590 * t."OUT_0"  + -0.365455 * t."OUT_1"  + 0.504564 * t."OUT_2"  + -0.770957 * t."OUT_3"  + 0.780012 * t."OUT_4"  + -0.189216 * t."OUT_5" AS "OUT_0"
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