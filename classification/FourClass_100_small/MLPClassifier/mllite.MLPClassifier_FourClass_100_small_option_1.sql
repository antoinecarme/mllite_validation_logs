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
    -0.148527 + -0.051009 * t.OUT_0  + 0.015957 * t.OUT_1  + 0.227939 * t.OUT_2  + 0.204592 * t.OUT_3  + 0.101778 * t.OUT_4  + 0.133625 * t.OUT_5  + -0.077786 * t.OUT_6  + -0.040707 * t.OUT_7  + -0.100958 * t.OUT_8  + -0.183080 * t.OUT_9  + -0.165796 * t.OUT_10  + -0.126080 * t.OUT_11  + 0.195216 * t.OUT_12  + 0.113146 * t.OUT_13  + 0.096712 * t.OUT_14  + -0.180599 * t.OUT_15  + -0.235124 * t.OUT_16  + 0.239876 * t.OUT_17  + -0.033331 * t.OUT_18  + 0.139404 * t.OUT_19  + 0.073189 * t.OUT_20  + -0.244368 * t.OUT_21  + -0.145956 * t.OUT_22  + 0.039738 * t.OUT_23  + 0.056026 * t.OUT_24  + 0.065363 * t.OUT_25  + 0.164417 * t.OUT_26  + -0.076179 * t.OUT_27  + 0.124856 * t.OUT_28  + 0.061235 * t.OUT_29  + 0.095243 * t.OUT_30  + -0.137907 * t.OUT_31  + 0.127573 * t.OUT_32  + 0.241033 * t.OUT_33  + -0.154023 * t.OUT_34  + -0.184814 * t.OUT_35  + -0.189455 * t.OUT_36  + -0.067837 * t.OUT_37  + -0.017541 * t.OUT_38  + -0.200419 * t.OUT_39  + 0.112885 * t.OUT_40  + -0.078555 * t.OUT_41  + -0.231194 * t.OUT_42  + 0.133539 * t.OUT_43  + 0.195268 * t.OUT_44  + 0.160793 * t.OUT_45  + 0.056933 * t.OUT_46  + 0.168568 * t.OUT_47  + 0.138482 * t.OUT_48  + -0.189556 * t.OUT_49  + -0.130274 * t.OUT_50  + 0.245044 * t.OUT_51  + 0.008869 * t.OUT_52  + 0.136491 * t.OUT_53  + -0.107667 * t.OUT_54  + -0.069863 * t.OUT_55  + -0.057296 * t.OUT_56  + -0.182667 * t.OUT_57  + 0.042187 * t.OUT_58  + -0.106948 * t.OUT_59  + 0.008036 * t.OUT_60  + 0.016510 * t.OUT_61  + 0.055739 * t.OUT_62  + 0.178608 * t.OUT_63  + 0.111526 * t.OUT_64  + 0.096095 * t.OUT_65  + 0.048417 * t.OUT_66  + 0.058904 * t.OUT_67  + 0.192812 * t.OUT_68  + 0.061043 * t.OUT_69  + 0.089904 * t.OUT_70  + 0.106643 * t.OUT_71  + 0.117312 * t.OUT_72  + -0.048361 * t.OUT_73  + -0.255060 * t.OUT_74  + 0.082986 * t.OUT_75  + -0.183843 * t.OUT_76  + -0.070288 * t.OUT_77  + 0.112192 * t.OUT_78  + 0.031153 * t.OUT_79  + -0.102697 * t.OUT_80  + 0.123799 * t.OUT_81  + -0.113735 * t.OUT_82  + 0.077710 * t.OUT_83  + 0.243800 * t.OUT_84  + 0.034247 * t.OUT_85  + -0.050467 * t.OUT_86  + -0.044495 * t.OUT_87  + -0.199145 * t.OUT_88  + -0.122203 * t.OUT_89  + -0.208871 * t.OUT_90  + 0.204791 * t.OUT_91  + 0.133928 * t.OUT_92  + -0.253730 * t.OUT_93  + -0.262187 * t.OUT_94  + -0.031593 * t.OUT_95  + -0.125446 * t.OUT_96  + -0.061252 * t.OUT_97  + -0.180206 * t.OUT_98  + -0.166146 * t.OUT_99 AS OUT_0,
    0.052246 + 0.097234 * t.OUT_0  + -0.181116 * t.OUT_1  + 0.029692 * t.OUT_2  + -0.219531 * t.OUT_3  + -0.121745 * t.OUT_4  + -0.242356 * t.OUT_5  + -0.210899 * t.OUT_6  + -0.029275 * t.OUT_7  + 0.112625 * t.OUT_8  + 0.241987 * t.OUT_9  + 0.161316 * t.OUT_10  + -0.190942 * t.OUT_11  + 0.177069 * t.OUT_12  + 0.190814 * t.OUT_13  + -0.011956 * t.OUT_14  + 0.009722 * t.OUT_15  + 0.175726 * t.OUT_16  + 0.238305 * t.OUT_17  + 0.226511 * t.OUT_18  + 0.166742 * t.OUT_19  + 0.196766 * t.OUT_20  + 0.151478 * t.OUT_21  + -0.206986 * t.OUT_22  + -0.075240 * t.OUT_23  + -0.101876 * t.OUT_24  + -0.157288 * t.OUT_25  + 0.177334 * t.OUT_26  + 0.010248 * t.OUT_27  + -0.028812 * t.OUT_28  + -0.112562 * t.OUT_29  + 0.117906 * t.OUT_30  + -0.014875 * t.OUT_31  + -0.254897 * t.OUT_32  + -0.185892 * t.OUT_33  + -0.207940 * t.OUT_34  + -0.156167 * t.OUT_35  + -0.160570 * t.OUT_36  + 0.093281 * t.OUT_37  + 0.177533 * t.OUT_38  + -0.142992 * t.OUT_39  + -0.149548 * t.OUT_40  + 0.103657 * t.OUT_41  + 0.168898 * t.OUT_42  + 0.088230 * t.OUT_43  + 0.222403 * t.OUT_44  + 0.006729 * t.OUT_45  + 0.123912 * t.OUT_46  + 0.131583 * t.OUT_47  + -0.116017 * t.OUT_48  + -0.148974 * t.OUT_49  + 0.017583 * t.OUT_50  + 0.013341 * t.OUT_51  + 0.093923 * t.OUT_52  + -0.112557 * t.OUT_53  + -0.120325 * t.OUT_54  + -0.201558 * t.OUT_55  + 0.113494 * t.OUT_56  + 0.199004 * t.OUT_57  + 0.267427 * t.OUT_58  + 0.208381 * t.OUT_59  + -0.030215 * t.OUT_60  + -0.050213 * t.OUT_61  + 0.060480 * t.OUT_62  + -0.116479 * t.OUT_63  + -0.137199 * t.OUT_64  + 0.168061 * t.OUT_65  + -0.146994 * t.OUT_66  + 0.029095 * t.OUT_67  + -0.099514 * t.OUT_68  + 0.234745 * t.OUT_69  + 0.260493 * t.OUT_70  + 0.128252 * t.OUT_71  + 0.185079 * t.OUT_72  + 0.066880 * t.OUT_73  + 0.155939 * t.OUT_74  + -0.235296 * t.OUT_75  + 0.126306 * t.OUT_76  + 0.124387 * t.OUT_77  + -0.193963 * t.OUT_78  + -0.117195 * t.OUT_79  + 0.201297 * t.OUT_80  + 0.001204 * t.OUT_81  + -0.192473 * t.OUT_82  + 0.080596 * t.OUT_83  + -0.147058 * t.OUT_84  + -0.107949 * t.OUT_85  + 0.151081 * t.OUT_86  + 0.017306 * t.OUT_87  + -0.143036 * t.OUT_88  + -0.075971 * t.OUT_89  + -0.049879 * t.OUT_90  + -0.122075 * t.OUT_91  + -0.141428 * t.OUT_92  + 0.080622 * t.OUT_93  + -0.018831 * t.OUT_94  + -0.052579 * t.OUT_95  + -0.082811 * t.OUT_96  + 0.105354 * t.OUT_97  + 0.097007 * t.OUT_98  + -0.030545 * t.OUT_99 AS OUT_1,
    0.124629 + -0.129110 * t.OUT_0  + 0.037889 * t.OUT_1  + 0.220197 * t.OUT_2  + -0.130759 * t.OUT_3  + -0.090819 * t.OUT_4  + -0.006068 * t.OUT_5  + -0.089764 * t.OUT_6  + -0.192457 * t.OUT_7  + -0.018468 * t.OUT_8  + -0.193525 * t.OUT_9  + 0.035735 * t.OUT_10  + 0.053952 * t.OUT_11  + 0.149783 * t.OUT_12  + -0.170790 * t.OUT_13  + 0.060718 * t.OUT_14  + 0.112317 * t.OUT_15  + -0.145766 * t.OUT_16  + -0.015655 * t.OUT_17  + -0.202460 * t.OUT_18  + 0.178619 * t.OUT_19  + 0.197796 * t.OUT_20  + 0.010112 * t.OUT_21  + -0.056746 * t.OUT_22  + -0.085020 * t.OUT_23  + -0.085938 * t.OUT_24  + -0.068860 * t.OUT_25  + 0.207284 * t.OUT_26  + 0.052663 * t.OUT_27  + 0.129523 * t.OUT_28  + -0.090565 * t.OUT_29  + -0.146287 * t.OUT_30  + 0.043219 * t.OUT_31  + -0.229698 * t.OUT_32  + -0.120292 * t.OUT_33  + -0.113626 * t.OUT_34  + -0.193583 * t.OUT_35  + 0.064774 * t.OUT_36  + 0.038033 * t.OUT_37  + 0.272104 * t.OUT_38  + 0.071467 * t.OUT_39  + 0.210525 * t.OUT_40  + -0.144717 * t.OUT_41  + 0.064357 * t.OUT_42  + -0.022386 * t.OUT_43  + -0.125351 * t.OUT_44  + -0.035787 * t.OUT_45  + -0.151839 * t.OUT_46  + -0.084565 * t.OUT_47  + 0.012010 * t.OUT_48  + -0.157581 * t.OUT_49  + -0.194406 * t.OUT_50  + 0.028306 * t.OUT_51  + 0.001335 * t.OUT_52  + -0.047062 * t.OUT_53  + 0.092696 * t.OUT_54  + 0.191887 * t.OUT_55  + 0.140750 * t.OUT_56  + 0.186039 * t.OUT_57  + 0.180112 * t.OUT_58  + -0.217055 * t.OUT_59  + 0.107692 * t.OUT_60  + -0.174876 * t.OUT_61  + -0.232788 * t.OUT_62  + -0.037581 * t.OUT_63  + -0.021139 * t.OUT_64  + 0.173458 * t.OUT_65  + 0.000081 * t.OUT_66  + 0.212144 * t.OUT_67  + 0.081930 * t.OUT_68  + -0.101385 * t.OUT_69  + -0.034081 * t.OUT_70  + 0.179199 * t.OUT_71  + 0.073340 * t.OUT_72  + -0.196858 * t.OUT_73  + 0.025830 * t.OUT_74  + -0.179723 * t.OUT_75  + -0.036968 * t.OUT_76  + 0.107163 * t.OUT_77  + 0.170236 * t.OUT_78  + -0.132407 * t.OUT_79  + -0.239724 * t.OUT_80  + 0.153763 * t.OUT_81  + -0.224665 * t.OUT_82  + -0.037267 * t.OUT_83  + -0.035816 * t.OUT_84  + -0.106700 * t.OUT_85  + 0.035084 * t.OUT_86  + 0.195207 * t.OUT_87  + -0.212527 * t.OUT_88  + -0.182261 * t.OUT_89  + 0.198296 * t.OUT_90  + 0.108332 * t.OUT_91  + -0.134640 * t.OUT_92  + -0.237394 * t.OUT_93  + 0.186463 * t.OUT_94  + 0.214128 * t.OUT_95  + 0.029143 * t.OUT_96  + 0.185772 * t.OUT_97  + -0.125960 * t.OUT_98  + 0.184700 * t.OUT_99 AS OUT_2,
    0.200865 + 0.011722 * t.OUT_0  + 0.037286 * t.OUT_1  + -0.012662 * t.OUT_2  + 0.101989 * t.OUT_3  + -0.155824 * t.OUT_4  + 0.003375 * t.OUT_5  + 0.225889 * t.OUT_6  + -0.013925 * t.OUT_7  + 0.074039 * t.OUT_8  + 0.137290 * t.OUT_9  + 0.248473 * t.OUT_10  + 0.106965 * t.OUT_11  + -0.159169 * t.OUT_12  + 0.126326 * t.OUT_13  + 0.121536 * t.OUT_14  + 0.122751 * t.OUT_15  + -0.190017 * t.OUT_16  + -0.212722 * t.OUT_17  + 0.067388 * t.OUT_18  + -0.154806 * t.OUT_19  + -0.049172 * t.OUT_20  + -0.015180 * t.OUT_21  + 0.185220 * t.OUT_22  + -0.195561 * t.OUT_23  + -0.066752 * t.OUT_24  + 0.115119 * t.OUT_25  + 0.167889 * t.OUT_26  + 0.155039 * t.OUT_27  + 0.196501 * t.OUT_28  + -0.090933 * t.OUT_29  + 0.050086 * t.OUT_30  + -0.064393 * t.OUT_31  + 0.211132 * t.OUT_32  + -0.214073 * t.OUT_33  + -0.050159 * t.OUT_34  + 0.076847 * t.OUT_35  + 0.063931 * t.OUT_36  + -0.137294 * t.OUT_37  + -0.065518 * t.OUT_38  + -0.167955 * t.OUT_39  + 0.259046 * t.OUT_40  + 0.145536 * t.OUT_41  + -0.110631 * t.OUT_42  + -0.134960 * t.OUT_43  + 0.037303 * t.OUT_44  + 0.235358 * t.OUT_45  + -0.057604 * t.OUT_46  + -0.095308 * t.OUT_47  + 0.173170 * t.OUT_48  + -0.093536 * t.OUT_49  + 0.118716 * t.OUT_50  + 0.066045 * t.OUT_51  + 0.174858 * t.OUT_52  + -0.175491 * t.OUT_53  + -0.005529 * t.OUT_54  + -0.121239 * t.OUT_55  + 0.125821 * t.OUT_56  + 0.171663 * t.OUT_57  + 0.053182 * t.OUT_58  + -0.190377 * t.OUT_59  + 0.166645 * t.OUT_60  + -0.110969 * t.OUT_61  + 0.004732 * t.OUT_62  + -0.072291 * t.OUT_63  + 0.129904 * t.OUT_64  + 0.158479 * t.OUT_65  + -0.166486 * t.OUT_66  + 0.153515 * t.OUT_67  + 0.164300 * t.OUT_68  + 0.130589 * t.OUT_69  + 0.056561 * t.OUT_70  + -0.230017 * t.OUT_71  + 0.200258 * t.OUT_72  + 0.092392 * t.OUT_73  + 0.040481 * t.OUT_74  + -0.042233 * t.OUT_75  + -0.059633 * t.OUT_76  + -0.068701 * t.OUT_77  + -0.075757 * t.OUT_78  + 0.081988 * t.OUT_79  + -0.090450 * t.OUT_80  + 0.181187 * t.OUT_81  + 0.025313 * t.OUT_82  + 0.046410 * t.OUT_83  + -0.059502 * t.OUT_84  + -0.083744 * t.OUT_85  + -0.084057 * t.OUT_86  + 0.051699 * t.OUT_87  + 0.113487 * t.OUT_88  + 0.002069 * t.OUT_89  + -0.165326 * t.OUT_90  + -0.162648 * t.OUT_91  + -0.118970 * t.OUT_92  + 0.229622 * t.OUT_93  + -0.019898 * t.OUT_94  + -0.152609 * t.OUT_95  + 0.184525 * t.OUT_96  + 0.158582 * t.OUT_97  + 0.149256 * t.OUT_98  + -0.175631 * t.OUT_99 AS OUT_3
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
    -0.027433 + -0.322232 * t.OUT_0  + 0.151898 * t.OUT_1  + 0.707070 * t.OUT_2  + -0.340258 * t.OUT_3 AS OUT_0,
    -0.671680 + -0.016580 * t.OUT_0  + -0.631855 * t.OUT_1  + 0.484582 * t.OUT_2  + 0.012250 * t.OUT_3 AS OUT_1,
    0.529958 + 0.681402 * t.OUT_0  + -0.272267 * t.OUT_1  + -0.396434 * t.OUT_2  + -0.638663 * t.OUT_3 AS OUT_2,
    -0.619697 + 0.610286 * t.OUT_0  + -0.631653 * t.OUT_1  + 0.015946 * t.OUT_2  + -0.106879 * t.OUT_3 AS OUT_3,
    -0.032433 + 0.509617 * t.OUT_0  + -0.183346 * t.OUT_1  + 0.407043 * t.OUT_2  + -0.226634 * t.OUT_3 AS OUT_4,
    -0.055534 + -0.128052 * t.OUT_0  + -0.212185 * t.OUT_1  + -0.656434 * t.OUT_2  + 0.278501 * t.OUT_3 AS OUT_5,
    0.295327 + -0.305915 * t.OUT_0  + -0.008568 * t.OUT_1  + -0.353630 * t.OUT_2  + -0.103782 * t.OUT_3 AS OUT_6,
    -0.694826 + -0.313153 * t.OUT_0  + -0.139602 * t.OUT_1  + 0.044531 * t.OUT_2  + 0.471884 * t.OUT_3 AS OUT_7
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
    0.611536 + -0.261545 * t.OUT_0  + 0.600990 * t.OUT_1  + 0.404465 * t.OUT_2  + 0.085454 * t.OUT_3  + -0.327035 * t.OUT_4  + 0.492999 * t.OUT_5  + -0.276296 * t.OUT_6  + -0.080285 * t.OUT_7 AS OUT_0,
    -0.567500 + 0.522783 * t.OUT_0  + 0.597355 * t.OUT_1  + 0.096048 * t.OUT_2  + -0.194039 * t.OUT_3  + -0.463610 * t.OUT_4  + -0.028335 * t.OUT_5  + 0.552646 * t.OUT_6  + 0.400409 * t.OUT_7 AS OUT_1,
    -0.351686 + 0.385035 * t.OUT_0  + -0.285359 * t.OUT_1  + 0.090075 * t.OUT_2  + -0.413525 * t.OUT_3  + -0.302072 * t.OUT_4  + 0.120487 * t.OUT_5  + 0.650656 * t.OUT_6  + 0.178905 * t.OUT_7 AS OUT_2,
    0.628445 + -0.315555 * t.OUT_0  + 0.495940 * t.OUT_1  + -0.068678 * t.OUT_2  + 0.125895 * t.OUT_3  + -0.290563 * t.OUT_4  + 0.031488 * t.OUT_5  + 0.268568 * t.OUT_6  + -0.129479 * t.OUT_7 AS OUT_3,
    -0.408999 + 0.519334 * t.OUT_0  + 0.553793 * t.OUT_1  + -0.097564 * t.OUT_2  + 0.617099 * t.OUT_3  + -0.122081 * t.OUT_4  + 0.057084 * t.OUT_5  + 0.112850 * t.OUT_6  + -0.130040 * t.OUT_7 AS OUT_4,
    0.556111 + 0.177820 * t.OUT_0  + 0.517925 * t.OUT_1  + -0.006807 * t.OUT_2  + -0.218593 * t.OUT_3  + -0.214285 * t.OUT_4  + -0.007886 * t.OUT_5  + 0.189430 * t.OUT_6  + -0.606300 * t.OUT_7 AS OUT_5
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
    -0.155998 + -0.404895 * t.OUT_0  + -0.535713 * t.OUT_1  + -0.494750 * t.OUT_2  + 0.312865 * t.OUT_3  + -0.304992 * t.OUT_4  + 0.197486 * t.OUT_5 AS OUT_0,
    -0.382455 + 0.708696 * t.OUT_0  + 0.421004 * t.OUT_1  + -0.586126 * t.OUT_2  + 0.461895 * t.OUT_3  + -0.713066 * t.OUT_4  + -0.627771 * t.OUT_5 AS OUT_1,
    0.470779 + 0.256099 * t.OUT_0  + -0.603169 * t.OUT_1  + -0.443395 * t.OUT_2  + -0.213632 * t.OUT_3  + -0.337153 * t.OUT_4  + 0.379553 * t.OUT_5 AS OUT_2,
    -0.563225 + 0.674307 * t.OUT_0  + 0.777919 * t.OUT_1  + -0.144912 * t.OUT_2  + 0.687314 * t.OUT_3  + -0.026614 * t.OUT_4  + 0.438364 * t.OUT_5 AS OUT_3
 FROM Hidden_Layer_3_Activation AS t
)

, model_scores_cte AS 
( SELECT t."index" AS "index",
    CAST(NULL AS FLOAT) AS "Proba_0", t.OUT_0 AS "Score_0", CAST(NULL AS FLOAT) AS "LogProba_0",
    CAST(NULL AS FLOAT) AS "Proba_1", t.OUT_1 AS "Score_1", CAST(NULL AS FLOAT) AS "LogProba_1",
    CAST(NULL AS FLOAT) AS "Proba_2", t.OUT_2 AS "Score_2", CAST(NULL AS FLOAT) AS "LogProba_2",
    CAST(NULL AS FLOAT) AS "Proba_3", t.OUT_3 AS "Score_3", CAST(NULL AS FLOAT) AS "LogProba_3"
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
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX(t."Score_0", t."Score_1", t."Score_2", t."Score_3") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1.*,
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" ) AS "Sum_Exp"
  FROM
   ( SELECT t.*,
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2",
        EXP(t."Score_3" - t."Greatest_Score") as "Exp_Score_3"
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
    t1."Score_3" AS "Score_3"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t.*,
   CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
   CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
   CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
   CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3" ) AS argmax_class_idx
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
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte