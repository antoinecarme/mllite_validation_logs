WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
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
    X_29 AS OUT_29,
    X_30 AS OUT_30,
    X_31 AS OUT_31,
    X_32 AS OUT_32,
    X_33 AS OUT_33,
    X_34 AS OUT_34,
    X_35 AS OUT_35,
    X_36 AS OUT_36,
    X_37 AS OUT_37,
    X_38 AS OUT_38,
    X_39 AS OUT_39,
    X_40 AS OUT_40,
    X_41 AS OUT_41,
    X_42 AS OUT_42,
    X_43 AS OUT_43,
    X_44 AS OUT_44,
    X_45 AS OUT_45,
    X_46 AS OUT_46,
    X_47 AS OUT_47,
    X_48 AS OUT_48,
    X_49 AS OUT_49,
    X_50 AS OUT_50,
    X_51 AS OUT_51,
    X_52 AS OUT_52,
    X_53 AS OUT_53,
    X_54 AS OUT_54,
    X_55 AS OUT_55,
    X_56 AS OUT_56,
    X_57 AS OUT_57,
    X_58 AS OUT_58,
    X_59 AS OUT_59,
    X_60 AS OUT_60,
    X_61 AS OUT_61,
    X_62 AS OUT_62,
    X_63 AS OUT_63
 FROM model_input AS t
)
,
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    0.080984 + -0.025613 * t.OUT_0  + 0.030234 * t.OUT_1  + 0.231388 * t.OUT_2  + 0.271579 * t.OUT_3  + 0.132030 * t.OUT_4  + 0.109842 * t.OUT_5  + -0.063779 * t.OUT_6  + -0.040878 * t.OUT_7  + -0.124905 * t.OUT_8  + -0.218576 * t.OUT_9  + -0.234435 * t.OUT_10  + -0.210625 * t.OUT_11  + 0.173174 * t.OUT_12  + 0.153104 * t.OUT_13  + 0.077887 * t.OUT_14  + -0.273783 * t.OUT_15  + -0.287708 * t.OUT_16  + 0.270528 * t.OUT_17  + -0.033439 * t.OUT_18  + 0.105577 * t.OUT_19  + 0.095401 * t.OUT_20  + -0.288410 * t.OUT_21  + -0.238345 * t.OUT_22  + 0.028409 * t.OUT_23  + 0.098972 * t.OUT_24  + 0.100235 * t.OUT_25  + 0.171819 * t.OUT_26  + -0.149248 * t.OUT_27  + 0.123298 * t.OUT_28  + 0.025390 * t.OUT_29  + 0.128875 * t.OUT_30  + -0.189299 * t.OUT_31  + 0.135719 * t.OUT_32  + 0.241377 * t.OUT_33  + -0.252145 * t.OUT_34  + -0.215187 * t.OUT_35  + -0.213572 * t.OUT_36  + -0.068988 * t.OUT_37  + -0.073839 * t.OUT_38  + -0.252666 * t.OUT_39  + 0.102492 * t.OUT_40  + -0.163601 * t.OUT_41  + -0.278172 * t.OUT_42  + 0.113496 * t.OUT_43  + 0.224103 * t.OUT_44  + 0.139410 * t.OUT_45  + 0.085649 * t.OUT_46  + 0.241957 * t.OUT_47  + 0.184052 * t.OUT_48  + -0.299293 * t.OUT_49  + -0.145778 * t.OUT_50  + 0.256944 * t.OUT_51  + 0.005497 * t.OUT_52  + 0.111793 * t.OUT_53  + -0.179369 * t.OUT_54  + -0.120360 * t.OUT_55  + -0.095388 * t.OUT_56  + -0.293925 * t.OUT_57  + -0.005841 * t.OUT_58  + -0.124146 * t.OUT_59  + -0.055125 * t.OUT_60  + 0.030320 * t.OUT_61  + 0.053674 * t.OUT_62  + 0.215113 * t.OUT_63 AS OUT_0,
    -0.178196 + 0.154095 * t.OUT_0  + -0.232588 * t.OUT_1  + 0.036272 * t.OUT_2  + -0.289571 * t.OUT_3  + -0.168356 * t.OUT_4  + -0.317639 * t.OUT_5  + -0.291206 * t.OUT_6  + 0.002450 * t.OUT_7  + 0.075821 * t.OUT_8  + 0.237206 * t.OUT_9  + 0.136307 * t.OUT_10  + -0.256088 * t.OUT_11  + 0.227380 * t.OUT_12  + 0.213977 * t.OUT_13  + -0.004224 * t.OUT_14  + 0.037486 * t.OUT_15  + 0.172113 * t.OUT_16  + 0.255610 * t.OUT_17  + 0.256497 * t.OUT_18  + 0.151104 * t.OUT_19  + 0.184229 * t.OUT_20  + 0.119710 * t.OUT_21  + -0.309816 * t.OUT_22  + -0.066349 * t.OUT_23  + -0.090357 * t.OUT_24  + -0.237791 * t.OUT_25  + 0.226024 * t.OUT_26  + 0.011451 * t.OUT_27  + -0.021857 * t.OUT_28  + -0.130186 * t.OUT_29  + 0.136181 * t.OUT_30  + -0.000784 * t.OUT_31  + -0.280731 * t.OUT_32  + -0.225272 * t.OUT_33  + -0.253858 * t.OUT_34  + -0.229082 * t.OUT_35  + -0.252264 * t.OUT_36  + 0.053384 * t.OUT_37  + 0.217653 * t.OUT_38  + -0.144333 * t.OUT_39  + -0.157461 * t.OUT_40  + 0.125124 * t.OUT_41  + 0.149643 * t.OUT_42  + 0.112980 * t.OUT_43  + 0.231489 * t.OUT_44  + 0.008517 * t.OUT_45  + 0.094504 * t.OUT_46  + 0.164243 * t.OUT_47  + -0.183593 * t.OUT_48  + -0.190492 * t.OUT_49  + -0.032737 * t.OUT_50  + 0.022827 * t.OUT_51  + 0.116726 * t.OUT_52  + -0.151962 * t.OUT_53  + -0.203766 * t.OUT_54  + -0.268608 * t.OUT_55  + 0.073567 * t.OUT_56  + 0.192176 * t.OUT_57  + 0.270310 * t.OUT_58  + 0.236444 * t.OUT_59  + -0.043598 * t.OUT_60  + -0.074832 * t.OUT_61  + 0.083807 * t.OUT_62  + -0.093293 * t.OUT_63 AS OUT_1,
    -0.025652 + -0.121240 * t.OUT_0  + 0.112691 * t.OUT_1  + 0.274432 * t.OUT_2  + -0.140721 * t.OUT_3  + -0.174758 * t.OUT_4  + -0.070401 * t.OUT_5  + -0.123858 * t.OUT_6  + -0.265979 * t.OUT_7  + -0.059769 * t.OUT_8  + -0.190897 * t.OUT_9  + 0.097530 * t.OUT_10  + 0.076603 * t.OUT_11  + 0.201201 * t.OUT_12  + -0.199746 * t.OUT_13  + 0.065410 * t.OUT_14  + 0.121673 * t.OUT_15  + -0.165366 * t.OUT_16  + -0.012561 * t.OUT_17  + -0.216161 * t.OUT_18  + 0.237111 * t.OUT_19  + 0.192212 * t.OUT_20  + -0.022974 * t.OUT_21  + -0.133598 * t.OUT_22  + -0.068791 * t.OUT_23  + -0.115281 * t.OUT_24  + -0.117939 * t.OUT_25  + 0.192532 * t.OUT_26  + 0.059973 * t.OUT_27  + 0.146425 * t.OUT_28  + -0.106712 * t.OUT_29  + -0.229532 * t.OUT_30  + 0.055791 * t.OUT_31  + -0.267053 * t.OUT_32  + -0.136924 * t.OUT_33  + -0.123710 * t.OUT_34  + -0.286925 * t.OUT_35  + 0.033932 * t.OUT_36  + 0.010240 * t.OUT_37  + 0.269446 * t.OUT_38  + 0.123827 * t.OUT_39  + 0.273531 * t.OUT_40  + -0.170760 * t.OUT_41  + 0.034522 * t.OUT_42  + -0.017462 * t.OUT_43  + -0.144934 * t.OUT_44  + -0.031286 * t.OUT_45  + -0.237496 * t.OUT_46  + -0.086117 * t.OUT_47  + 0.038748 * t.OUT_48  + -0.139037 * t.OUT_49  + -0.216044 * t.OUT_50  + -0.006752 * t.OUT_51  + -0.001978 * t.OUT_52  + -0.107975 * t.OUT_53  + 0.101052 * t.OUT_54  + 0.272328 * t.OUT_55  + 0.137762 * t.OUT_56  + 0.289771 * t.OUT_57  + 0.213138 * t.OUT_58  + -0.308258 * t.OUT_59  + 0.090156 * t.OUT_60  + -0.218577 * t.OUT_61  + -0.242810 * t.OUT_62  + 0.005261 * t.OUT_63 AS OUT_2,
    0.179146 + -0.021865 * t.OUT_0  + -0.014523 * t.OUT_1  + -0.069421 * t.OUT_2  + 0.088627 * t.OUT_3  + -0.251924 * t.OUT_4  + -0.011922 * t.OUT_5  + 0.221444 * t.OUT_6  + 0.023940 * t.OUT_7  + 0.160034 * t.OUT_8  + 0.136619 * t.OUT_9  + 0.245513 * t.OUT_10  + 0.085283 * t.OUT_11  + -0.209871 * t.OUT_12  + 0.107556 * t.OUT_13  + 0.139100 * t.OUT_14  + 0.177920 * t.OUT_15  + -0.240427 * t.OUT_16  + -0.266093 * t.OUT_17  + 0.092256 * t.OUT_18  + -0.146298 * t.OUT_19  + -0.035030 * t.OUT_20  + -0.082434 * t.OUT_21  + 0.237663 * t.OUT_22  + -0.298138 * t.OUT_23  + -0.060358 * t.OUT_24  + 0.146649 * t.OUT_25  + 0.146000 * t.OUT_26  + 0.185705 * t.OUT_27  + 0.185822 * t.OUT_28  + -0.171952 * t.OUT_29  + 0.069551 * t.OUT_30  + -0.119526 * t.OUT_31  + 0.221463 * t.OUT_32  + -0.230105 * t.OUT_33  + -0.060794 * t.OUT_34  + 0.055933 * t.OUT_35  + 0.086943 * t.OUT_36  + -0.222088 * t.OUT_37  + -0.072489 * t.OUT_38  + -0.245958 * t.OUT_39  + 0.285498 * t.OUT_40  + 0.193602 * t.OUT_41  + -0.185361 * t.OUT_42  + -0.140093 * t.OUT_43  + 0.032223 * t.OUT_44  + 0.245081 * t.OUT_45  + -0.065266 * t.OUT_46  + -0.078452 * t.OUT_47  + 0.219350 * t.OUT_48  + -0.176644 * t.OUT_49  + 0.159334 * t.OUT_50  + 0.094173 * t.OUT_51  + 0.154991 * t.OUT_52  + -0.279819 * t.OUT_53  + -0.066002 * t.OUT_54  + -0.111468 * t.OUT_55  + 0.106176 * t.OUT_56  + 0.197045 * t.OUT_57  + 0.057654 * t.OUT_58  + -0.298650 * t.OUT_59  + 0.220601 * t.OUT_60  + -0.195610 * t.OUT_61  + -0.059743 * t.OUT_62  + -0.072528 * t.OUT_63 AS OUT_3
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
    -0.202136 + 0.245516 * t.OUT_0  + 0.291151 * t.OUT_1  + 0.235853 * t.OUT_2  + 0.439909 * t.OUT_3 AS OUT_0,
    0.232265 + 0.460738 * t.OUT_0  + 0.170935 * t.OUT_1  + 0.628908 * t.OUT_2  + 0.374416 * t.OUT_3 AS OUT_1,
    -0.514895 + 0.483940 * t.OUT_0  + 0.669695 * t.OUT_1  + -0.341594 * t.OUT_2  + 0.417326 * t.OUT_3 AS OUT_2,
    0.197103 + 0.500495 * t.OUT_0  + 0.380253 * t.OUT_1  + 0.444128 * t.OUT_2  + -0.670563 * t.OUT_3 AS OUT_3,
    -0.705470 + 0.207351 * t.OUT_0  + 0.623643 * t.OUT_1  + 0.334126 * t.OUT_2  + 0.233767 * t.OUT_3 AS OUT_4,
    0.391429 + -0.482540 * t.OUT_0  + -0.375131 * t.OUT_1  + 0.726802 * t.OUT_2  + 0.616616 * t.OUT_3 AS OUT_5,
    0.000051 + -0.073451 * t.OUT_0  + 0.136619 * t.OUT_1  + -0.048545 * t.OUT_2  + 0.134731 * t.OUT_3 AS OUT_6,
    0.034664 + -0.469820 * t.OUT_0  + 0.433311 * t.OUT_1  + 0.248787 * t.OUT_2  + 0.577612 * t.OUT_3 AS OUT_7
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
    -0.220224 + 0.292626 * t.OUT_0  + -0.060282 * t.OUT_1  + 0.325656 * t.OUT_2  + -0.405995 * t.OUT_3  + 0.267433 * t.OUT_4  + -0.529935 * t.OUT_5  + 0.596162 * t.OUT_6  + -0.229642 * t.OUT_7 AS OUT_0,
    0.010598 + -0.574658 * t.OUT_0  + -0.221255 * t.OUT_1  + -0.557870 * t.OUT_2  + 0.117362 * t.OUT_3  + 0.044977 * t.OUT_4  + 0.129291 * t.OUT_5  + -0.495706 * t.OUT_6  + -0.248821 * t.OUT_7 AS OUT_1,
    0.544836 + -0.474448 * t.OUT_0  + -0.172889 * t.OUT_1  + 0.522055 * t.OUT_2  + -0.224890 * t.OUT_3  + 0.425019 * t.OUT_4  + 0.195065 * t.OUT_5  + -0.203904 * t.OUT_6  + -0.160378 * t.OUT_7 AS OUT_2,
    0.049659 + -0.196886 * t.OUT_0  + 0.404107 * t.OUT_1  + -0.152328 * t.OUT_2  + 0.549532 * t.OUT_3  + 0.403299 * t.OUT_4  + 0.254770 * t.OUT_5  + -0.206068 * t.OUT_6  + 0.325162 * t.OUT_7 AS OUT_3,
    -0.514099 + -0.456963 * t.OUT_0  + 0.353595 * t.OUT_1  + 0.160227 * t.OUT_2  + -0.590324 * t.OUT_3  + -0.394099 * t.OUT_4  + -0.190328 * t.OUT_5  + 0.012797 * t.OUT_6  + 0.087162 * t.OUT_7 AS OUT_4,
    -0.314064 + 0.262046 * t.OUT_0  + -0.272955 * t.OUT_1  + -0.401604 * t.OUT_2  + -0.330454 * t.OUT_3  + -0.446251 * t.OUT_4  + 0.041223 * t.OUT_5  + -0.212515 * t.OUT_6  + -0.303818 * t.OUT_7 AS OUT_5
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
    -0.205104 + -0.480950 * t.OUT_0  + 0.578190 * t.OUT_1  + -0.544157 * t.OUT_2  + -0.368987 * t.OUT_3  + -0.389083 * t.OUT_4  + -0.288505 * t.OUT_5 AS OUT_0,
    -0.589861 + 0.298996 * t.OUT_0  + -0.353583 * t.OUT_1  + 0.504067 * t.OUT_2  + -0.270056 * t.OUT_3  + 0.337891 * t.OUT_4  + 0.013625 * t.OUT_5 AS OUT_1,
    -0.104577 + -0.266631 * t.OUT_0  + 0.222499 * t.OUT_1  + -0.568559 * t.OUT_2  + 0.049654 * t.OUT_3  + -0.446701 * t.OUT_4  + 0.608485 * t.OUT_5 AS OUT_2,
    -0.223243 + -0.149180 * t.OUT_0  + -0.414432 * t.OUT_1  + -0.051077 * t.OUT_2  + 0.404893 * t.OUT_3  + -0.150599 * t.OUT_4  + 0.500203 * t.OUT_5 AS OUT_3,
    -0.006699 + -0.433969 * t.OUT_0  + 0.287810 * t.OUT_1  + 0.522786 * t.OUT_2  + -0.043347 * t.OUT_3  + 0.508040 * t.OUT_4  + 0.465535 * t.OUT_5 AS OUT_4,
    -0.111442 + 0.105552 * t.OUT_0  + -0.300471 * t.OUT_1  + 0.009926 * t.OUT_2  + 0.198102 * t.OUT_3  + -0.363815 * t.OUT_4  + -0.136175 * t.OUT_5 AS OUT_5,
    0.593925 + -0.461217 * t.OUT_0  + -0.349243 * t.OUT_1  + -0.135802 * t.OUT_2  + 0.360188 * t.OUT_3  + -0.310573 * t.OUT_4  + -0.291553 * t.OUT_5 AS OUT_6,
    0.393669 + -0.216545 * t.OUT_0  + -0.340765 * t.OUT_1  + -0.228073 * t.OUT_2  + 0.309528 * t.OUT_3  + 0.084499 * t.OUT_4  + -0.266297 * t.OUT_5 AS OUT_7,
    -0.332480 + 0.473519 * t.OUT_0  + -0.595681 * t.OUT_1  + 0.459990 * t.OUT_2  + -0.404032 * t.OUT_3  + 0.311561 * t.OUT_4  + 0.116867 * t.OUT_5 AS OUT_8,
    0.030241 + -0.340167 * t.OUT_0  + 0.137196 * t.OUT_1  + -0.280637 * t.OUT_2  + 0.280547 * t.OUT_3  + 0.553982 * t.OUT_4  + -0.521211 * t.OUT_5 AS OUT_9
 FROM Hidden_Layer_3_Activation AS t
)

, model_scores_cte AS 
( SELECT t."index" AS "index",
    CAST(NULL AS FLOAT) AS "Proba_0", t.OUT_0 AS "Score_0", CAST(NULL AS FLOAT) AS "LogProba_0",
    CAST(NULL AS FLOAT) AS "Proba_1", t.OUT_1 AS "Score_1", CAST(NULL AS FLOAT) AS "LogProba_1",
    CAST(NULL AS FLOAT) AS "Proba_2", t.OUT_2 AS "Score_2", CAST(NULL AS FLOAT) AS "LogProba_2",
    CAST(NULL AS FLOAT) AS "Proba_3", t.OUT_3 AS "Score_3", CAST(NULL AS FLOAT) AS "LogProba_3",
    CAST(NULL AS FLOAT) AS "Proba_4", t.OUT_4 AS "Score_4", CAST(NULL AS FLOAT) AS "LogProba_4",
    CAST(NULL AS FLOAT) AS "Proba_5", t.OUT_5 AS "Score_5", CAST(NULL AS FLOAT) AS "LogProba_5",
    CAST(NULL AS FLOAT) AS "Proba_6", t.OUT_6 AS "Score_6", CAST(NULL AS FLOAT) AS "LogProba_6",
    CAST(NULL AS FLOAT) AS "Proba_7", t.OUT_7 AS "Score_7", CAST(NULL AS FLOAT) AS "LogProba_7",
    CAST(NULL AS FLOAT) AS "Proba_8", t.OUT_8 AS "Score_8", CAST(NULL AS FLOAT) AS "LogProba_8",
    CAST(NULL AS FLOAT) AS "Proba_9", t.OUT_9 AS "Score_9", CAST(NULL AS FLOAT) AS "LogProba_9"
  FROM "Output_Layer_BA" AS t ),
soft_max_orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   t."Score_2" AS "Score_2",
   t."Proba_2" AS "Proba_2",
   t."LogProba_2" AS "LogProba_2",
   t."Score_3" AS "Score_3",
   t."Proba_3" AS "Proba_3",
   t."LogProba_3" AS "LogProba_3",
   t."Score_4" AS "Score_4",
   t."Proba_4" AS "Proba_4",
   t."LogProba_4" AS "LogProba_4",
   t."Score_5" AS "Score_5",
   t."Proba_5" AS "Proba_5",
   t."LogProba_5" AS "LogProba_5",
   t."Score_6" AS "Score_6",
   t."Proba_6" AS "Proba_6",
   t."LogProba_6" AS "LogProba_6",
   t."Score_7" AS "Score_7",
   t."Proba_7" AS "Proba_7",
   t."LogProba_7" AS "LogProba_7",
   t."Score_8" AS "Score_8",
   t."Proba_8" AS "Proba_8",
   t."LogProba_8" AS "LogProba_8",
   t."Score_9" AS "Score_9",
   t."Proba_9" AS "Proba_9",
   t."LogProba_9" AS "LogProba_9",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX(t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7", t."Score_8", t."Score_9") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1.*,
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" + t1."Exp_Score_4" + t1."Exp_Score_5" + t1."Exp_Score_6" + t1."Exp_Score_7" + t1."Exp_Score_8" + t1."Exp_Score_9" ) AS "Sum_Exp"
  FROM
   ( SELECT t.*,
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2",
        EXP(t."Score_3" - t."Greatest_Score") as "Exp_Score_3",
        EXP(t."Score_4" - t."Greatest_Score") as "Exp_Score_4",
        EXP(t."Score_5" - t."Greatest_Score") as "Exp_Score_5",
        EXP(t."Score_6" - t."Greatest_Score") as "Exp_Score_6",
        EXP(t."Score_7" - t."Greatest_Score") as "Exp_Score_7",
        EXP(t."Score_8" - t."Greatest_Score") as "Exp_Score_8",
        EXP(t."Score_9" - t."Greatest_Score") as "Exp_Score_9"
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
    t1."Score_1" AS "Score_1",
    CAST(NULL AS FLOAT) AS "LogProba_2",
    t1."Exp_Score_2" / t1."Sum_Exp" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    CAST(NULL AS FLOAT) AS "LogProba_3",
    t1."Exp_Score_3" / t1."Sum_Exp" AS "Proba_3",
    t1."Score_3" AS "Score_3",
    CAST(NULL AS FLOAT) AS "LogProba_4",
    t1."Exp_Score_4" / t1."Sum_Exp" AS "Proba_4",
    t1."Score_4" AS "Score_4",
    CAST(NULL AS FLOAT) AS "LogProba_5",
    t1."Exp_Score_5" / t1."Sum_Exp" AS "Proba_5",
    t1."Score_5" AS "Score_5",
    CAST(NULL AS FLOAT) AS "LogProba_6",
    t1."Exp_Score_6" / t1."Sum_Exp" AS "Proba_6",
    t1."Score_6" AS "Score_6",
    CAST(NULL AS FLOAT) AS "LogProba_7",
    t1."Exp_Score_7" / t1."Sum_Exp" AS "Proba_7",
    t1."Score_7" AS "Score_7",
    CAST(NULL AS FLOAT) AS "LogProba_8",
    t1."Exp_Score_8" / t1."Sum_Exp" AS "Proba_8",
    t1."Score_8" AS "Score_8",
    CAST(NULL AS FLOAT) AS "LogProba_9",
    t1."Exp_Score_9" / t1."Sum_Exp" AS "Proba_9",
    t1."Score_9" AS "Score_9"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3", t."Proba_4", t."Proba_5", t."Proba_6", t."Proba_7", t."Proba_8", t."Proba_9" ) AS "Max_Proba"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t.*,
   CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
   CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
   CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
   CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
   CASE WHEN(t."Proba_4" = t."Max_Proba") THEN 4 else NULL END AS "max_idx_4",
   CASE WHEN(t."Proba_5" = t."Max_Proba") THEN 5 else NULL END AS "max_idx_5",
   CASE WHEN(t."Proba_6" = t."Max_Proba") THEN 6 else NULL END AS "max_idx_6",
   CASE WHEN(t."Proba_7" = t."Max_Proba") THEN 7 else NULL END AS "max_idx_7",
   CASE WHEN(t."Proba_8" = t."Max_Proba") THEN 8 else NULL END AS "max_idx_8",
   CASE WHEN(t."Proba_9" = t."Max_Proba") THEN 9 else NULL END AS "max_idx_9"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3", t."max_idx_4", t."max_idx_5", t."max_idx_6", t."max_idx_7", t."max_idx_8", t."max_idx_9" ) AS argmax_class_idx
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
  arg_max_cte."Score_2" AS "Score_2",
  arg_max_cte."Proba_2" AS "Proba_2",
  CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN LN( arg_max_cte."Proba_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
  arg_max_cte."Score_3" AS "Score_3",
  arg_max_cte."Proba_3" AS "Proba_3",
  CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN LN( arg_max_cte."Proba_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
  arg_max_cte."Score_4" AS "Score_4",
  arg_max_cte."Proba_4" AS "Proba_4",
  CASE WHEN (arg_max_cte."Proba_4" IS NULL OR arg_max_cte."Proba_4" > 0.0) THEN LN( arg_max_cte."Proba_4" ) ELSE -1.79769313486231e+308 END AS "LogProba_4",
  arg_max_cte."Score_5" AS "Score_5",
  arg_max_cte."Proba_5" AS "Proba_5",
  CASE WHEN (arg_max_cte."Proba_5" IS NULL OR arg_max_cte."Proba_5" > 0.0) THEN LN( arg_max_cte."Proba_5" ) ELSE -1.79769313486231e+308 END AS "LogProba_5",
  arg_max_cte."Score_6" AS "Score_6",
  arg_max_cte."Proba_6" AS "Proba_6",
  CASE WHEN (arg_max_cte."Proba_6" IS NULL OR arg_max_cte."Proba_6" > 0.0) THEN LN( arg_max_cte."Proba_6" ) ELSE -1.79769313486231e+308 END AS "LogProba_6",
  arg_max_cte."Score_7" AS "Score_7",
  arg_max_cte."Proba_7" AS "Proba_7",
  CASE WHEN (arg_max_cte."Proba_7" IS NULL OR arg_max_cte."Proba_7" > 0.0) THEN LN( arg_max_cte."Proba_7" ) ELSE -1.79769313486231e+308 END AS "LogProba_7",
  arg_max_cte."Score_8" AS "Score_8",
  arg_max_cte."Proba_8" AS "Proba_8",
  CASE WHEN (arg_max_cte."Proba_8" IS NULL OR arg_max_cte."Proba_8" > 0.0) THEN LN( arg_max_cte."Proba_8" ) ELSE -1.79769313486231e+308 END AS "LogProba_8",
  arg_max_cte."Score_9" AS "Score_9",
  arg_max_cte."Proba_9" AS "Proba_9",
  CASE WHEN (arg_max_cte."Proba_9" IS NULL OR arg_max_cte."Proba_9" > 0.0) THEN LN( arg_max_cte."Proba_9" ) ELSE -1.79769313486231e+308 END AS "LogProba_9",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte