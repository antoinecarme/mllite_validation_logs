WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
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
    X_63 AS OUT_63,
    X_64 AS OUT_64,
    X_65 AS OUT_65,
    X_66 AS OUT_66,
    X_67 AS OUT_67,
    X_68 AS OUT_68,
    X_69 AS OUT_69,
    X_70 AS OUT_70,
    X_71 AS OUT_71,
    X_72 AS OUT_72,
    X_73 AS OUT_73,
    X_74 AS OUT_74,
    X_75 AS OUT_75,
    X_76 AS OUT_76,
    X_77 AS OUT_77,
    X_78 AS OUT_78,
    X_79 AS OUT_79,
    X_80 AS OUT_80,
    X_81 AS OUT_81,
    X_82 AS OUT_82,
    X_83 AS OUT_83,
    X_84 AS OUT_84,
    X_85 AS OUT_85,
    X_86 AS OUT_86,
    X_87 AS OUT_87,
    X_88 AS OUT_88,
    X_89 AS OUT_89,
    X_90 AS OUT_90,
    X_91 AS OUT_91,
    X_92 AS OUT_92,
    X_93 AS OUT_93,
    X_94 AS OUT_94,
    X_95 AS OUT_95,
    X_96 AS OUT_96,
    X_97 AS OUT_97,
    X_98 AS OUT_98,
    X_99 AS OUT_99
 FROM model_input AS t
)
,
"Hidden_Layer_1_BA" AS
 ( SELECT t."index" as "index",
    -0.210038 + -0.101199 * t.OUT_0  + -0.108031 * t.OUT_1  + 0.222948 * t.OUT_2  + 0.213563 * t.OUT_3  + -0.025283 * t.OUT_4  + 0.161969 * t.OUT_5  + -0.071613 * t.OUT_6  + 0.009145 * t.OUT_7  + -0.051574 * t.OUT_8  + -0.055244 * t.OUT_9  + -0.077124 * t.OUT_10  + -0.262223 * t.OUT_11  + 0.043347 * t.OUT_12  + 0.173862 * t.OUT_13  + 0.020920 * t.OUT_14  + -0.178677 * t.OUT_15  + -0.212163 * t.OUT_16  + 0.276760 * t.OUT_17  + -0.122056 * t.OUT_18  + 0.210364 * t.OUT_19  + 0.088930 * t.OUT_20  + -0.219897 * t.OUT_21  + -0.180824 * t.OUT_22  + 0.150243 * t.OUT_23  + 0.088191 * t.OUT_24  + 0.093734 * t.OUT_25  + 0.130221 * t.OUT_26  + -0.042932 * t.OUT_27  + 0.121926 * t.OUT_28  + 0.106641 * t.OUT_29  + 0.242230 * t.OUT_30  + -0.180391 * t.OUT_31  + 0.069547 * t.OUT_32  + 0.154100 * t.OUT_33  + -0.132288 * t.OUT_34  + -0.076342 * t.OUT_35  + -0.108741 * t.OUT_36  + -0.086053 * t.OUT_37  + 0.058103 * t.OUT_38  + -0.138283 * t.OUT_39  + 0.016618 * t.OUT_40  + 0.016763 * t.OUT_41  + -0.181390 * t.OUT_42  + 0.041700 * t.OUT_43  + 0.142836 * t.OUT_44  + 0.167557 * t.OUT_45  + 0.069402 * t.OUT_46  + 0.159685 * t.OUT_47  + 0.198287 * t.OUT_48  + -0.151804 * t.OUT_49  + -0.008319 * t.OUT_50  + 0.198342 * t.OUT_51  + 0.102408 * t.OUT_52  + 0.146660 * t.OUT_53  + -0.088256 * t.OUT_54  + -0.090470 * t.OUT_55  + -0.100237 * t.OUT_56  + -0.199275 * t.OUT_57  + 0.066094 * t.OUT_58  + -0.145012 * t.OUT_59  + 0.036674 * t.OUT_60  + -0.107944 * t.OUT_61  + 0.140679 * t.OUT_62  + 0.159444 * t.OUT_63  + 0.069099 * t.OUT_64  + 0.148599 * t.OUT_65  + 0.041074 * t.OUT_66  + 0.158116 * t.OUT_67  + 0.155828 * t.OUT_68  + 0.036759 * t.OUT_69  + 0.086362 * t.OUT_70  + 0.117788 * t.OUT_71  + 0.143562 * t.OUT_72  + -0.004775 * t.OUT_73  + -0.200776 * t.OUT_74  + 0.044147 * t.OUT_75  + -0.119170 * t.OUT_76  + -0.072903 * t.OUT_77  + 0.143035 * t.OUT_78  + 0.051180 * t.OUT_79  + -0.012011 * t.OUT_80  + 0.131414 * t.OUT_81  + -0.150400 * t.OUT_82  + 0.145803 * t.OUT_83  + 0.151407 * t.OUT_84  + -0.030845 * t.OUT_85  + -0.171371 * t.OUT_86  + -0.006177 * t.OUT_87  + -0.105524 * t.OUT_88  + -0.049168 * t.OUT_89  + -0.180870 * t.OUT_90  + 0.122403 * t.OUT_91  + 0.078029 * t.OUT_92  + -0.089947 * t.OUT_93  + -0.134972 * t.OUT_94  + -0.088814 * t.OUT_95  + -0.181024 * t.OUT_96  + -0.011078 * t.OUT_97  + -0.071399 * t.OUT_98  + -0.159040 * t.OUT_99 AS OUT_0,
    0.198707 + 0.182598 * t.OUT_0  + 0.030220 * t.OUT_1  + -0.040677 * t.OUT_2  + -0.228462 * t.OUT_3  + 0.076740 * t.OUT_4  + -0.174773 * t.OUT_5  + -0.182293 * t.OUT_6  + -0.073940 * t.OUT_7  + 0.149588 * t.OUT_8  + 0.112302 * t.OUT_9  + 0.135856 * t.OUT_10  + -0.183658 * t.OUT_11  + 0.155503 * t.OUT_12  + 0.210454 * t.OUT_13  + 0.040365 * t.OUT_14  + 0.075076 * t.OUT_15  + 0.239797 * t.OUT_16  + 0.126963 * t.OUT_17  + 0.269912 * t.OUT_18  + 0.067231 * t.OUT_19  + 0.166265 * t.OUT_20  + 0.089809 * t.OUT_21  + -0.143533 * t.OUT_22  + -0.133931 * t.OUT_23  + 0.034635 * t.OUT_24  + -0.193004 * t.OUT_25  + 0.193020 * t.OUT_26  + -0.126769 * t.OUT_27  + -0.036766 * t.OUT_28  + 0.020609 * t.OUT_29  + 0.041104 * t.OUT_30  + 0.070008 * t.OUT_31  + -0.303037 * t.OUT_32  + -0.232886 * t.OUT_33  + -0.278130 * t.OUT_34  + -0.259901 * t.OUT_35  + -0.218759 * t.OUT_36  + 0.165574 * t.OUT_37  + 0.097397 * t.OUT_38  + -0.195618 * t.OUT_39  + -0.142246 * t.OUT_40  + 0.156884 * t.OUT_41  + 0.194268 * t.OUT_42  + 0.119564 * t.OUT_43  + 0.300720 * t.OUT_44  + -0.016474 * t.OUT_45  + 0.070917 * t.OUT_46  + 0.116155 * t.OUT_47  + -0.061499 * t.OUT_48  + -0.193916 * t.OUT_49  + -0.131003 * t.OUT_50  + 0.025043 * t.OUT_51  + 0.194082 * t.OUT_52  + -0.163344 * t.OUT_53  + -0.119137 * t.OUT_54  + -0.251984 * t.OUT_55  + 0.209095 * t.OUT_56  + 0.190646 * t.OUT_57  + 0.278445 * t.OUT_58  + 0.187561 * t.OUT_59  + -0.094541 * t.OUT_60  + 0.166751 * t.OUT_61  + 0.059717 * t.OUT_62  + -0.057604 * t.OUT_63  + -0.125001 * t.OUT_64  + 0.153063 * t.OUT_65  + -0.220283 * t.OUT_66  + 0.079118 * t.OUT_67  + -0.190463 * t.OUT_68  + 0.272783 * t.OUT_69  + 0.303078 * t.OUT_70  + 0.148157 * t.OUT_71  + 0.226332 * t.OUT_72  + -0.023198 * t.OUT_73  + 0.156561 * t.OUT_74  + -0.314196 * t.OUT_75  + 0.109964 * t.OUT_76  + 0.291823 * t.OUT_77  + -0.328939 * t.OUT_78  + -0.151766 * t.OUT_79  + 0.156599 * t.OUT_80  + 0.018506 * t.OUT_81  + -0.149464 * t.OUT_82  + 0.052021 * t.OUT_83  + -0.191566 * t.OUT_84  + 0.036173 * t.OUT_85  + 0.201065 * t.OUT_86  + 0.043701 * t.OUT_87  + -0.110214 * t.OUT_88  + -0.102929 * t.OUT_89  + -0.046423 * t.OUT_90  + -0.045386 * t.OUT_91  + -0.129629 * t.OUT_92  + 0.039336 * t.OUT_93  + -0.003193 * t.OUT_94  + -0.094930 * t.OUT_95  + -0.021647 * t.OUT_96  + 0.172284 * t.OUT_97  + -0.020776 * t.OUT_98  + -0.025992 * t.OUT_99 AS OUT_1,
    0.298560 + -0.064933 * t.OUT_0  + -0.195738 * t.OUT_1  + 0.157398 * t.OUT_2  + -0.080604 * t.OUT_3  + -0.381281 * t.OUT_4  + 0.010506 * t.OUT_5  + 0.001058 * t.OUT_6  + -0.173467 * t.OUT_7  + -0.094940 * t.OUT_8  + -0.248525 * t.OUT_9  + 0.000639 * t.OUT_10  + 0.047452 * t.OUT_11  + 0.177545 * t.OUT_12  + -0.178219 * t.OUT_13  + 0.130995 * t.OUT_14  + -0.012514 * t.OUT_15  + -0.145171 * t.OUT_16  + -0.028473 * t.OUT_17  + -0.086262 * t.OUT_18  + 0.151083 * t.OUT_19  + 0.083248 * t.OUT_20  + 0.038932 * t.OUT_21  + -0.076455 * t.OUT_22  + 0.052609 * t.OUT_23  + -0.041479 * t.OUT_24  + -0.110184 * t.OUT_25  + 0.219804 * t.OUT_26  + 0.030843 * t.OUT_27  + 0.126504 * t.OUT_28  + -0.059966 * t.OUT_29  + -0.217452 * t.OUT_30  + 0.002644 * t.OUT_31  + -0.131415 * t.OUT_32  + -0.042900 * t.OUT_33  + 0.000564 * t.OUT_34  + -0.133841 * t.OUT_35  + 0.019193 * t.OUT_36  + -0.083736 * t.OUT_37  + 0.263940 * t.OUT_38  + -0.026975 * t.OUT_39  + 0.105973 * t.OUT_40  + -0.049709 * t.OUT_41  + -0.006205 * t.OUT_42  + -0.027509 * t.OUT_43  + -0.072655 * t.OUT_44  + -0.059248 * t.OUT_45  + -0.090294 * t.OUT_46  + 0.012343 * t.OUT_47  + -0.129324 * t.OUT_48  + -0.010374 * t.OUT_49  + -0.163650 * t.OUT_50  + -0.051014 * t.OUT_51  + 0.096091 * t.OUT_52  + -0.155023 * t.OUT_53  + -0.042886 * t.OUT_54  + 0.272390 * t.OUT_55  + 0.106486 * t.OUT_56  + 0.295560 * t.OUT_57  + 0.025002 * t.OUT_58  + -0.191119 * t.OUT_59  + 0.048408 * t.OUT_60  + -0.421441 * t.OUT_61  + -0.187215 * t.OUT_62  + -0.067458 * t.OUT_63  + -0.026118 * t.OUT_64  + 0.101730 * t.OUT_65  + 0.016040 * t.OUT_66  + 0.163058 * t.OUT_67  + 0.038756 * t.OUT_68  + -0.089386 * t.OUT_69  + 0.056053 * t.OUT_70  + 0.107762 * t.OUT_71  + -0.009074 * t.OUT_72  + -0.159444 * t.OUT_73  + 0.047490 * t.OUT_74  + -0.113670 * t.OUT_75  + -0.012216 * t.OUT_76  + 0.124650 * t.OUT_77  + 0.244976 * t.OUT_78  + -0.194960 * t.OUT_79  + -0.177405 * t.OUT_80  + 0.131763 * t.OUT_81  + -0.098211 * t.OUT_82  + -0.016414 * t.OUT_83  + -0.004403 * t.OUT_84  + -0.063838 * t.OUT_85  + -0.019565 * t.OUT_86  + 0.112163 * t.OUT_87  + -0.127084 * t.OUT_88  + -0.109223 * t.OUT_89  + 0.107132 * t.OUT_90  + -0.024561 * t.OUT_91  + -0.157052 * t.OUT_92  + -0.157232 * t.OUT_93  + 0.098704 * t.OUT_94  + 0.210736 * t.OUT_95  + 0.070429 * t.OUT_96  + 0.186442 * t.OUT_97  + -0.056530 * t.OUT_98  + 0.204481 * t.OUT_99 AS OUT_2,
    0.158371 + 0.042273 * t.OUT_0  + 0.080800 * t.OUT_1  + -0.052375 * t.OUT_2  + -0.008163 * t.OUT_3  + -0.136353 * t.OUT_4  + -0.045834 * t.OUT_5  + 0.176148 * t.OUT_6  + 0.019954 * t.OUT_7  + 0.062598 * t.OUT_8  + 0.165161 * t.OUT_9  + 0.227786 * t.OUT_10  + 0.155448 * t.OUT_11  + -0.165007 * t.OUT_12  + 0.078375 * t.OUT_13  + 0.171284 * t.OUT_14  + 0.115034 * t.OUT_15  + -0.226540 * t.OUT_16  + -0.176164 * t.OUT_17  + 0.118420 * t.OUT_18  + -0.165296 * t.OUT_19  + 0.032506 * t.OUT_20  + -0.001534 * t.OUT_21  + 0.253381 * t.OUT_22  + -0.186041 * t.OUT_23  + -0.067590 * t.OUT_24  + 0.125685 * t.OUT_25  + 0.188551 * t.OUT_26  + 0.208476 * t.OUT_27  + 0.177695 * t.OUT_28  + -0.143989 * t.OUT_29  + 0.015236 * t.OUT_30  + -0.101264 * t.OUT_31  + 0.221575 * t.OUT_32  + -0.180535 * t.OUT_33  + -0.019865 * t.OUT_34  + -0.014352 * t.OUT_35  + 0.012398 * t.OUT_36  + -0.066517 * t.OUT_37  + -0.130022 * t.OUT_38  + -0.214549 * t.OUT_39  + 0.303097 * t.OUT_40  + 0.126621 * t.OUT_41  + -0.160101 * t.OUT_42  + -0.057618 * t.OUT_43  + 0.042022 * t.OUT_44  + 0.234838 * t.OUT_45  + -0.028793 * t.OUT_46  + -0.044588 * t.OUT_47  + 0.233788 * t.OUT_48  + -0.164803 * t.OUT_49  + 0.119294 * t.OUT_50  + 0.125743 * t.OUT_51  + 0.068927 * t.OUT_52  + -0.263822 * t.OUT_53  + -0.072718 * t.OUT_54  + -0.161923 * t.OUT_55  + 0.123335 * t.OUT_56  + 0.137991 * t.OUT_57  + 0.096900 * t.OUT_58  + -0.168705 * t.OUT_59  + 0.214995 * t.OUT_60  + -0.047692 * t.OUT_61  + -0.093682 * t.OUT_62  + -0.056792 * t.OUT_63  + 0.188157 * t.OUT_64  + 0.169079 * t.OUT_65  + -0.133646 * t.OUT_66  + 0.086748 * t.OUT_67  + 0.179726 * t.OUT_68  + 0.082829 * t.OUT_69  + 0.070083 * t.OUT_70  + -0.236973 * t.OUT_71  + 0.228770 * t.OUT_72  + 0.088891 * t.OUT_73  + 0.093810 * t.OUT_74  + -0.073060 * t.OUT_75  + -0.034187 * t.OUT_76  + -0.151179 * t.OUT_77  + -0.012785 * t.OUT_78  + 0.024278 * t.OUT_79  + -0.261799 * t.OUT_80  + 0.113294 * t.OUT_81  + -0.054605 * t.OUT_82  + -0.044910 * t.OUT_83  + -0.125669 * t.OUT_84  + -0.091624 * t.OUT_85  + -0.124420 * t.OUT_86  + -0.025147 * t.OUT_87  + 0.078539 * t.OUT_88  + 0.012928 * t.OUT_89  + -0.062604 * t.OUT_90  + -0.057365 * t.OUT_91  + -0.143513 * t.OUT_92  + 0.130271 * t.OUT_93  + -0.041096 * t.OUT_94  + -0.131112 * t.OUT_95  + 0.145228 * t.OUT_96  + 0.002699 * t.OUT_97  + 0.198016 * t.OUT_98  + -0.160313 * t.OUT_99 AS OUT_3
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
    0.075022 + -0.278768 * t.OUT_0  + 0.147453 * t.OUT_1  + 0.890752 * t.OUT_2  + -0.241338 * t.OUT_3 AS OUT_0,
    -0.581642 + 0.006864 * t.OUT_0  + -0.536470 * t.OUT_1  + 0.534592 * t.OUT_2  + 0.024816 * t.OUT_3 AS OUT_1,
    0.494724 + 0.680055 * t.OUT_0  + -0.340286 * t.OUT_1  + -0.351635 * t.OUT_2  + -0.644992 * t.OUT_3 AS OUT_2,
    -0.684637 + 0.552612 * t.OUT_0  + -0.690174 * t.OUT_1  + -0.036945 * t.OUT_2  + -0.152659 * t.OUT_3 AS OUT_3,
    -0.007461 + 0.539373 * t.OUT_0  + -0.126594 * t.OUT_1  + 0.561251 * t.OUT_2  + -0.070359 * t.OUT_3 AS OUT_4,
    -0.070011 + -0.180733 * t.OUT_0  + -0.233172 * t.OUT_1  + -0.565532 * t.OUT_2  + 0.309259 * t.OUT_3 AS OUT_5,
    0.480971 + -0.207384 * t.OUT_0  + 0.197226 * t.OUT_1  + -0.430264 * t.OUT_2  + 0.017198 * t.OUT_3 AS OUT_6,
    -0.696499 + -0.227087 * t.OUT_0  + -0.117584 * t.OUT_1  + 0.093212 * t.OUT_2  + 0.505928 * t.OUT_3 AS OUT_7
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
    0.550990 + -0.044945 * t.OUT_0  + 0.737011 * t.OUT_1  + 0.382309 * t.OUT_2  + 0.049497 * t.OUT_3  + -0.236165 * t.OUT_4  + 0.471758 * t.OUT_5  + -0.464097 * t.OUT_6  + 0.078630 * t.OUT_7 AS OUT_0,
    -0.624577 + 0.441168 * t.OUT_0  + 0.462164 * t.OUT_1  + 0.100320 * t.OUT_2  + -0.194039 * t.OUT_3  + -0.567254 * t.OUT_4  + -0.063814 * t.OUT_5  + 0.583033 * t.OUT_6  + 0.360105 * t.OUT_7 AS OUT_1,
    -0.250833 + 0.293737 * t.OUT_0  + -0.296587 * t.OUT_1  + 0.220826 * t.OUT_2  + -0.304847 * t.OUT_3  + -0.413423 * t.OUT_4  + 0.124287 * t.OUT_5  + 0.866294 * t.OUT_6  + 0.129858 * t.OUT_7 AS OUT_2,
    0.736914 + -0.424728 * t.OUT_0  + 0.393758 * t.OUT_1  + -0.047310 * t.OUT_2  + 0.113633 * t.OUT_3  + -0.352911 * t.OUT_4  + 0.104937 * t.OUT_5  + 0.467307 * t.OUT_6  + -0.252142 * t.OUT_7 AS OUT_3,
    -0.232708 + 0.700749 * t.OUT_0  + 0.695647 * t.OUT_1  + -0.060690 * t.OUT_2  + 0.639692 * t.OUT_3  + 0.061414 * t.OUT_4  + 0.082142 * t.OUT_5  + -0.047384 * t.OUT_6  + 0.019504 * t.OUT_7 AS OUT_4,
    0.689960 + -0.052363 * t.OUT_0  + 0.367244 * t.OUT_1  + 0.074884 * t.OUT_2  + -0.166038 * t.OUT_3  + -0.259818 * t.OUT_4  + 0.115946 * t.OUT_5  + 0.387425 * t.OUT_6  + -0.692666 * t.OUT_7 AS OUT_5
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
    -0.627241 + -0.440886 * t.OUT_0  + 0.829024 * t.OUT_1  + 0.484325 * t.OUT_2  + 0.952290 * t.OUT_3  + -0.847372 * t.OUT_4  + 0.690948 * t.OUT_5 AS OUT_0
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