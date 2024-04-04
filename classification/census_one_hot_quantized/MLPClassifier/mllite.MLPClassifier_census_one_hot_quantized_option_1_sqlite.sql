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
    0.145442 + -0.244513 * t."OUT_0"  + -0.155584 * t."OUT_1"  + 0.299179 * t."OUT_2"  + 0.434165 * t."OUT_3"  + -0.165682 * t."OUT_4"  + 0.077284 * t."OUT_5"  + -0.054899 * t."OUT_6"  + 0.279021 * t."OUT_7"  + -0.139655 * t."OUT_8"  + -0.299459 * t."OUT_9"  + 0.024091 * t."OUT_10"  + -0.015302 * t."OUT_11"  + 0.132494 * t."OUT_12"  + 0.050718 * t."OUT_13"  + 0.195151 * t."OUT_14"  + -0.092912 * t."OUT_15"  + -0.315668 * t."OUT_16"  + 0.287941 * t."OUT_17"  + -0.091880 * t."OUT_18"  + 0.169574 * t."OUT_19"  + 0.227647 * t."OUT_20"  + -0.174983 * t."OUT_21"  + -0.239983 * t."OUT_22"  + 0.251438 * t."OUT_23"  + 0.292543 * t."OUT_24"  + -0.137199 * t."OUT_25"  + 0.000621 * t."OUT_26"  + -0.216162 * t."OUT_27"  + 0.170490 * t."OUT_28"  + 0.113852 * t."OUT_29"  + 0.308888 * t."OUT_30"  + -0.031867 * t."OUT_31"  + -0.088537 * t."OUT_32"  + 0.229620 * t."OUT_33"  + -0.234423 * t."OUT_34"  + -0.089579 * t."OUT_35"  + -0.313003 * t."OUT_36"  + -0.150258 * t."OUT_37"  + -0.121245 * t."OUT_38"  + -0.136465 * t."OUT_39"  + 0.142414 * t."OUT_40"  + -0.165322 * t."OUT_41"  + -0.207153 * t."OUT_42"  + -0.152735 * t."OUT_43"  + 0.141347 * t."OUT_44"  + 0.092316 * t."OUT_45"  + 0.104297 * t."OUT_46"  + 0.523087 * t."OUT_47"  + 0.052975 * t."OUT_48"  + -0.547939 * t."OUT_49"  + -0.053845 * t."OUT_50"  + 0.165345 * t."OUT_51"  + -0.070946 * t."OUT_52" AS "OUT_0",
    -0.270508 + 0.230620 * t."OUT_0"  + -0.197152 * t."OUT_1"  + -0.058747 * t."OUT_2"  + -0.108860 * t."OUT_3"  + -0.499430 * t."OUT_4"  + -0.278945 * t."OUT_5"  + -0.200272 * t."OUT_6"  + -0.031873 * t."OUT_7"  + 0.215810 * t."OUT_8"  + 0.208672 * t."OUT_9"  + 0.037709 * t."OUT_10"  + -0.057291 * t."OUT_11"  + 0.015136 * t."OUT_12"  + 0.028153 * t."OUT_13"  + -0.012027 * t."OUT_14"  + 0.095177 * t."OUT_15"  + 0.413266 * t."OUT_16"  + 0.011394 * t."OUT_17"  + 0.373187 * t."OUT_18"  + -0.123406 * t."OUT_19"  + 0.049078 * t."OUT_20"  + 0.044676 * t."OUT_21"  + -0.008009 * t."OUT_22"  + 0.156491 * t."OUT_23"  + -0.054959 * t."OUT_24"  + -0.131657 * t."OUT_25"  + 0.185272 * t."OUT_26"  + -0.187688 * t."OUT_27"  + 0.043596 * t."OUT_28"  + -0.116604 * t."OUT_29"  + -0.040987 * t."OUT_30"  + -0.220658 * t."OUT_31"  + -0.231762 * t."OUT_32"  + -0.464978 * t."OUT_33"  + -0.286851 * t."OUT_34"  + -0.271082 * t."OUT_35"  + -0.076479 * t."OUT_36"  + -0.214880 * t."OUT_37"  + -0.045493 * t."OUT_38"  + -0.092111 * t."OUT_39"  + 0.082354 * t."OUT_40"  + 0.075452 * t."OUT_41"  + 0.049476 * t."OUT_42"  + 0.356457 * t."OUT_43"  + 0.350268 * t."OUT_44"  + 0.376012 * t."OUT_45"  + -0.112721 * t."OUT_46"  + -0.188063 * t."OUT_47"  + -0.017336 * t."OUT_48"  + -0.319328 * t."OUT_49"  + -0.034086 * t."OUT_50"  + -0.098320 * t."OUT_51"  + -0.096578 * t."OUT_52" AS "OUT_1",
    -0.187615 + 0.041937 * t."OUT_0"  + -0.041820 * t."OUT_1"  + 0.181114 * t."OUT_2"  + 0.013643 * t."OUT_3"  + -0.248241 * t."OUT_4"  + -0.168561 * t."OUT_5"  + -0.160181 * t."OUT_6"  + -0.290512 * t."OUT_7"  + -0.371104 * t."OUT_8"  + -0.324533 * t."OUT_9"  + -0.254303 * t."OUT_10"  + -0.089281 * t."OUT_11"  + 0.177743 * t."OUT_12"  + -0.096903 * t."OUT_13"  + 0.089726 * t."OUT_14"  + 0.099147 * t."OUT_15"  + -0.285154 * t."OUT_16"  + -0.008906 * t."OUT_17"  + -0.336519 * t."OUT_18"  + 0.253415 * t."OUT_19"  + 0.157123 * t."OUT_20"  + -0.119558 * t."OUT_21"  + -0.151784 * t."OUT_22"  + 0.188723 * t."OUT_23"  + -0.260565 * t."OUT_24"  + -0.277354 * t."OUT_25"  + 0.075907 * t."OUT_26"  + -0.161448 * t."OUT_27"  + 0.352588 * t."OUT_28"  + -0.076893 * t."OUT_29"  + -0.250069 * t."OUT_30"  + -0.143528 * t."OUT_31"  + -0.332871 * t."OUT_32"  + -0.299826 * t."OUT_33"  + -0.119534 * t."OUT_34"  + -0.473755 * t."OUT_35"  + 0.182082 * t."OUT_36"  + -0.001841 * t."OUT_37"  + 0.195905 * t."OUT_38"  + -0.180403 * t."OUT_39"  + 0.340467 * t."OUT_40"  + -0.005498 * t."OUT_41"  + -0.052158 * t."OUT_42"  + 0.065539 * t."OUT_43"  + -0.207713 * t."OUT_44"  + -0.124675 * t."OUT_45"  + -0.433274 * t."OUT_46"  + -0.280188 * t."OUT_47"  + 0.081577 * t."OUT_48"  + -0.453114 * t."OUT_49"  + -0.417821 * t."OUT_50"  + -0.361336 * t."OUT_51"  + 0.027422 * t."OUT_52" AS "OUT_2",
    -0.095527 + -0.169931 * t."OUT_0"  + 0.037976 * t."OUT_1"  + 0.175166 * t."OUT_2"  + 0.029449 * t."OUT_3"  + -0.152851 * t."OUT_4"  + 0.010607 * t."OUT_5"  + 0.201411 * t."OUT_6"  + 0.041835 * t."OUT_7"  + 0.163489 * t."OUT_8"  + 0.234193 * t."OUT_9"  + 0.317181 * t."OUT_10"  + 0.075497 * t."OUT_11"  + 0.072905 * t."OUT_12"  + 0.165705 * t."OUT_13"  + 0.179010 * t."OUT_14"  + 0.215631 * t."OUT_15"  + -0.474075 * t."OUT_16"  + 0.094481 * t."OUT_17"  + 0.020551 * t."OUT_18"  + -0.072174 * t."OUT_19"  + 0.235873 * t."OUT_20"  + 0.181872 * t."OUT_21"  + 0.061701 * t."OUT_22"  + -0.347705 * t."OUT_23"  + 0.191321 * t."OUT_24"  + 0.103180 * t."OUT_25"  + 0.235280 * t."OUT_26"  + 0.308606 * t."OUT_27"  + 0.126377 * t."OUT_28"  + 0.030909 * t."OUT_29"  + 0.252784 * t."OUT_30"  + 0.029302 * t."OUT_31"  + 0.080643 * t."OUT_32"  + -0.017064 * t."OUT_33"  + 0.234456 * t."OUT_34"  + 0.112498 * t."OUT_35"  + -0.118193 * t."OUT_36"  + 0.113496 * t."OUT_37"  + 0.097720 * t."OUT_38"  + 0.132570 * t."OUT_39"  + 0.193798 * t."OUT_40"  + 0.255111 * t."OUT_41"  + -0.122084 * t."OUT_42"  + -0.229751 * t."OUT_43"  + -0.034517 * t."OUT_44"  + -0.101657 * t."OUT_45"  + 0.207648 * t."OUT_46"  + 0.341794 * t."OUT_47"  + 0.272210 * t."OUT_48"  + 0.117861 * t."OUT_49"  + 0.301499 * t."OUT_50"  + 0.250524 * t."OUT_51"  + 0.271414 * t."OUT_52" AS "OUT_3"
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
    0.430511 + -0.196906 * t."OUT_0"  + -0.021751 * t."OUT_1"  + 0.029557 * t."OUT_2"  + -0.054715 * t."OUT_3" AS "OUT_0",
    0.135836 + -0.119459 * t."OUT_0"  + 0.271347 * t."OUT_1"  + 0.848071 * t."OUT_2"  + 0.003883 * t."OUT_3" AS "OUT_1",
    -0.828048 + 0.105650 * t."OUT_0"  + 0.324404 * t."OUT_1"  + 0.588695 * t."OUT_2"  + 0.172774 * t."OUT_3" AS "OUT_2",
    0.087317 + -0.058220 * t."OUT_0"  + 0.248387 * t."OUT_1"  + 0.035696 * t."OUT_2"  + 0.603198 * t."OUT_3" AS "OUT_3",
    0.432832 + 0.191570 * t."OUT_0"  + -0.631406 * t."OUT_1"  + -0.100280 * t."OUT_2"  + 0.220194 * t."OUT_3" AS "OUT_4",
    -0.458272 + -0.750756 * t."OUT_0"  + 0.396888 * t."OUT_1"  + 0.735490 * t."OUT_2"  + -0.236918 * t."OUT_3" AS "OUT_5",
    0.111746 + 0.451687 * t."OUT_0"  + 0.559123 * t."OUT_1"  + -0.678095 * t."OUT_2"  + -0.538333 * t."OUT_3" AS "OUT_6",
    -0.281636 + -0.036164 * t."OUT_0"  + 0.593180 * t."OUT_1"  + -0.730957 * t."OUT_2"  + -0.327899 * t."OUT_3" AS "OUT_7"
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
    -0.623734 + 0.103509 * t."OUT_0"  + 0.417244 * t."OUT_1"  + 0.269600 * t."OUT_2"  + 0.138401 * t."OUT_3"  + 0.150660 * t."OUT_4"  + 0.421464 * t."OUT_5"  + -0.148973 * t."OUT_6"  + 0.049275 * t."OUT_7" AS "OUT_0",
    0.445974 + -0.131484 * t."OUT_0"  + 0.492706 * t."OUT_1"  + 0.102586 * t."OUT_2"  + 0.375419 * t."OUT_3"  + 0.812548 * t."OUT_4"  + -0.667950 * t."OUT_5"  + 0.141720 * t."OUT_6"  + -0.027860 * t."OUT_7" AS "OUT_1",
    -0.209186 + -0.142023 * t."OUT_0"  + 0.165672 * t."OUT_1"  + 0.675021 * t."OUT_2"  + 0.236170 * t."OUT_3"  + -0.184947 * t."OUT_4"  + 0.256655 * t."OUT_5"  + -0.384859 * t."OUT_6"  + 0.350697 * t."OUT_7" AS "OUT_2",
    -0.011814 + 0.652425 * t."OUT_0"  + -0.411434 * t."OUT_1"  + 0.292638 * t."OUT_2"  + 0.594661 * t."OUT_3"  + 0.402004 * t."OUT_4"  + 0.548807 * t."OUT_5"  + 0.099195 * t."OUT_6"  + -0.619660 * t."OUT_7" AS "OUT_3",
    -0.163896 + 0.176164 * t."OUT_0"  + 0.016530 * t."OUT_1"  + 0.591119 * t."OUT_2"  + -0.431578 * t."OUT_3"  + 0.170310 * t."OUT_4"  + 0.090796 * t."OUT_5"  + -0.598420 * t."OUT_6"  + -0.438760 * t."OUT_7" AS "OUT_4",
    0.590567 + 0.621956 * t."OUT_0"  + -0.414656 * t."OUT_1"  + -0.400874 * t."OUT_2"  + 0.416879 * t."OUT_3"  + 0.503402 * t."OUT_4"  + 0.488492 * t."OUT_5"  + 0.285143 * t."OUT_6"  + -0.245822 * t."OUT_7" AS "OUT_5"
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
    0.039039 + 0.498875 * t."OUT_0"  + -0.411618 * t."OUT_1"  + 0.483308 * t."OUT_2"  + -0.748914 * t."OUT_3"  + 0.899171 * t."OUT_4"  + -0.186876 * t."OUT_5" AS "OUT_0"
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