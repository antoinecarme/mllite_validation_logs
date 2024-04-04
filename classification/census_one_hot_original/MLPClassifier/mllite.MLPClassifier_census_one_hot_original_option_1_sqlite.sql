WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52"
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
    -0.263454 + 0.664751 * t."OUT_0"  + 0.064959 * t."OUT_1"  + -0.215365 * t."OUT_2"  + 1.569243 * t."OUT_3"  + -0.038798 * t."OUT_4"  + -0.301363 * t."OUT_5"  + -1.457338 * t."OUT_6"  + 0.808714 * t."OUT_7"  + 0.060316 * t."OUT_8"  + -1.084425 * t."OUT_9"  + 0.143622 * t."OUT_10"  + 0.935320 * t."OUT_11"  + -0.489363 * t."OUT_12"  + 2.096425 * t."OUT_13"  + -0.480139 * t."OUT_14"  + -0.156125 * t."OUT_15"  + 0.394671 * t."OUT_16"  + -0.878850 * t."OUT_17"  + 1.768060 * t."OUT_18"  + -0.843730 * t."OUT_19"  + -1.293408 * t."OUT_20"  + -1.102442 * t."OUT_21"  + -1.525910 * t."OUT_22"  + 0.231712 * t."OUT_23"  + -0.979474 * t."OUT_24"  + -0.453975 * t."OUT_25"  + 1.885511 * t."OUT_26"  + -1.498503 * t."OUT_27"  + 1.438262 * t."OUT_28"  + 0.022154 * t."OUT_29"  + -0.679640 * t."OUT_30"  + 1.467115 * t."OUT_31"  + -1.502376 * t."OUT_32"  + -1.638480 * t."OUT_33"  + -1.901690 * t."OUT_34"  + -1.648593 * t."OUT_35"  + 1.256276 * t."OUT_36"  + -0.866188 * t."OUT_37"  + 0.358930 * t."OUT_38"  + -1.103335 * t."OUT_39"  + -0.864183 * t."OUT_40"  + 0.155131 * t."OUT_41"  + 0.597722 * t."OUT_42"  + 2.813076 * t."OUT_43"  + 2.161479 * t."OUT_44"  + 0.305117 * t."OUT_45"  + 0.287801 * t."OUT_46"  + -1.105896 * t."OUT_47"  + 0.010781 * t."OUT_48"  + -0.824374 * t."OUT_49"  + -0.096635 * t."OUT_50"  + 0.106566 * t."OUT_51"  + -0.062884 * t."OUT_52" AS "OUT_1",
    -0.092751 + -0.132422 * t."OUT_0"  + 0.094041 * t."OUT_1"  + 0.269760 * t."OUT_2"  + -0.135918 * t."OUT_3"  + -0.165113 * t."OUT_4"  + -0.051730 * t."OUT_5"  + -0.166123 * t."OUT_6"  + -0.290512 * t."OUT_7"  + -0.065281 * t."OUT_8"  + -0.237550 * t."OUT_9"  + 0.076419 * t."OUT_10"  + 0.108536 * t."OUT_11"  + 0.246911 * t."OUT_12"  + -0.195912 * t."OUT_13"  + 0.041178 * t."OUT_14"  + 0.132895 * t."OUT_15"  + -0.180619 * t."OUT_16"  + -0.042764 * t."OUT_17"  + -0.234102 * t."OUT_18"  + 0.285867 * t."OUT_19"  + 0.237688 * t."OUT_20"  + 0.003598 * t."OUT_21"  + -0.118669 * t."OUT_22"  + -0.075136 * t."OUT_23"  + -0.125914 * t."OUT_24"  + -0.106632 * t."OUT_25"  + 0.235749 * t."OUT_26"  + 0.090639 * t."OUT_27"  + 0.186592 * t."OUT_28"  + -0.088699 * t."OUT_29"  + -0.224432 * t."OUT_30"  + 0.060937 * t."OUT_31"  + -0.291685 * t."OUT_32"  + -0.121873 * t."OUT_33"  + -0.107727 * t."OUT_34"  + -0.287214 * t."OUT_35"  + 0.064418 * t."OUT_36"  + 0.038349 * t."OUT_37"  + 0.323315 * t."OUT_38"  + 0.135249 * t."OUT_39"  + 0.298761 * t."OUT_40"  + -0.156116 * t."OUT_41"  + 0.067425 * t."OUT_42"  + 0.009109 * t."OUT_43"  + -0.131268 * t."OUT_44"  + -0.006668 * t."OUT_45"  + -0.228454 * t."OUT_46"  + -0.094060 * t."OUT_47"  + 0.042322 * t."OUT_48"  + -0.182538 * t."OUT_49"  + -0.265617 * t."OUT_50"  + 0.013469 * t."OUT_51"  + 0.023677 * t."OUT_52" AS "OUT_2",
    -0.261385 + -0.639288 * t."OUT_0"  + -0.392414 * t."OUT_1"  + 0.129873 * t."OUT_2"  + -1.799356 * t."OUT_3"  + -0.478889 * t."OUT_4"  + -0.106444 * t."OUT_5"  + 1.376973 * t."OUT_6"  + -0.889244 * t."OUT_7"  + 0.088118 * t."OUT_8"  + 1.506809 * t."OUT_9"  + 0.227512 * t."OUT_10"  + -1.175727 * t."OUT_11"  + 0.473858 * t."OUT_12"  + -1.769683 * t."OUT_13"  + 0.598801 * t."OUT_14"  + 0.279935 * t."OUT_15"  + -0.586218 * t."OUT_16"  + 0.868786 * t."OUT_17"  + -1.433135 * t."OUT_18"  + 0.827416 * t."OUT_19"  + 1.459872 * t."OUT_20"  + 1.167621 * t."OUT_21"  + 1.460472 * t."OUT_22"  + -0.609945 * t."OUT_23"  + 0.743799 * t."OUT_24"  + 0.309015 * t."OUT_25"  + -1.520059 * t."OUT_26"  + 1.718566 * t."OUT_27"  + -1.309766 * t."OUT_28"  + -0.403962 * t."OUT_29"  + 0.886904 * t."OUT_30"  + -1.701585 * t."OUT_31"  + 1.380306 * t."OUT_32"  + 1.153590 * t."OUT_33"  + 1.560690 * t."OUT_34"  + 1.438872 * t."OUT_35"  + -1.485420 * t."OUT_36"  + 0.691571 * t."OUT_37"  + -0.240207 * t."OUT_38"  + 0.611847 * t."OUT_39"  + 0.956918 * t."OUT_40"  + 0.138451 * t."OUT_41"  + -0.703454 * t."OUT_42"  + -2.841302 * t."OUT_43"  + -1.918204 * t."OUT_44"  + -0.087629 * t."OUT_45"  + -0.254870 * t."OUT_46"  + 1.168875 * t."OUT_47"  + 0.019927 * t."OUT_48"  + 0.443656 * t."OUT_49"  + 0.181478 * t."OUT_50"  + -0.014892 * t."OUT_51"  + 0.315986 * t."OUT_52" AS "OUT_3"
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
    0.233306 + -0.422945 * t."OUT_0"  + 0.255093 * t."OUT_1"  + 0.224711 * t."OUT_2"  + -0.017869 * t."OUT_3" AS "OUT_1",
    -0.655912 + 0.195556 * t."OUT_0"  + 0.336163 * t."OUT_1"  + 0.442062 * t."OUT_2"  + 0.290103 * t."OUT_3" AS "OUT_2",
    -0.065390 + -0.102255 * t."OUT_0"  + 0.287229 * t."OUT_1"  + 0.191604 * t."OUT_2"  + 0.548934 * t."OUT_3" AS "OUT_3",
    0.444955 + -0.300380 * t."OUT_0"  + -0.223136 * t."OUT_1"  + -0.240953 * t."OUT_2"  + 0.129466 * t."OUT_3" AS "OUT_4",
    -0.320960 + -0.222824 * t."OUT_0"  + 0.520179 * t."OUT_1"  + 0.223235 * t."OUT_2"  + -0.112117 * t."OUT_3" AS "OUT_5",
    -0.042387 + 0.223846 * t."OUT_0"  + 0.612479 * t."OUT_1"  + -0.223884 * t."OUT_2"  + -0.468672 * t."OUT_3" AS "OUT_6",
    -0.090179 + -0.272169 * t."OUT_0"  + 0.543599 * t."OUT_1"  + -0.224654 * t."OUT_2"  + -0.403607 * t."OUT_3" AS "OUT_7"
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
    -0.483834 + 0.231317 * t."OUT_0"  + 0.463122 * t."OUT_1"  + 0.255674 * t."OUT_2"  + 0.166389 * t."OUT_3"  + 0.307008 * t."OUT_4"  + 0.404383 * t."OUT_5"  + -0.137063 * t."OUT_6"  + 0.041620 * t."OUT_7" AS "OUT_0",
    0.283730 + -0.333577 * t."OUT_0"  + 0.447346 * t."OUT_1"  + 0.129434 * t."OUT_2"  + 0.357307 * t."OUT_3"  + 0.223968 * t."OUT_4"  + -0.646252 * t."OUT_5"  + 0.134895 * t."OUT_6"  + -0.011513 * t."OUT_7" AS "OUT_1",
    -0.069664 + -0.003050 * t."OUT_0"  + 0.212946 * t."OUT_1"  + 0.656013 * t."OUT_2"  + 0.262098 * t."OUT_3"  + -0.023497 * t."OUT_4"  + 0.239589 * t."OUT_5"  + -0.380008 * t."OUT_6"  + 0.340979 * t."OUT_7" AS "OUT_2",
    -0.171606 + 0.444377 * t."OUT_0"  + -0.456948 * t."OUT_1"  + 0.317038 * t."OUT_2"  + 0.575075 * t."OUT_3"  + 0.246293 * t."OUT_4"  + 0.569594 * t."OUT_5"  + 0.090823 * t."OUT_6"  + -0.605232 * t."OUT_7" AS "OUT_3",
    -0.179821 + 0.199075 * t."OUT_0"  + -0.052357 * t."OUT_1"  + 0.618672 * t."OUT_2"  + -0.312016 * t."OUT_3"  + 0.379477 * t."OUT_4"  + 0.137751 * t."OUT_5"  + -0.546900 * t."OUT_6"  + -0.423991 * t."OUT_7" AS "OUT_4",
    0.429095 + 0.421684 * t."OUT_0"  + -0.459985 * t."OUT_1"  + -0.372848 * t."OUT_2"  + 0.401185 * t."OUT_3"  + 0.336314 * t."OUT_4"  + 0.513151 * t."OUT_5"  + 0.284507 * t."OUT_6"  + -0.224440 * t."OUT_7" AS "OUT_5"
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
    0.201512 + 0.509543 * t."OUT_0"  + -0.345556 * t."OUT_1"  + 0.502343 * t."OUT_2"  + -0.765903 * t."OUT_3"  + 0.726687 * t."OUT_4"  + -0.171340 * t."OUT_5" AS "OUT_0"
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