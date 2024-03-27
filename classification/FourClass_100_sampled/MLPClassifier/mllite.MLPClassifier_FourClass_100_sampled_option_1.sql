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
    -0.153001 + -0.019355 * t.OUT_0  + 0.015553 * t.OUT_1  + 0.194374 * t.OUT_2  + 0.205989 * t.OUT_3  + 0.099971 * t.OUT_4  + 0.129976 * t.OUT_5  + -0.078391 * t.OUT_6  + -0.046052 * t.OUT_7  + -0.052671 * t.OUT_8  + -0.152010 * t.OUT_9  + -0.140061 * t.OUT_10  + -0.120596 * t.OUT_11  + 0.183151 * t.OUT_12  + 0.114719 * t.OUT_13  + 0.074665 * t.OUT_14  + -0.177158 * t.OUT_15  + -0.237292 * t.OUT_16  + 0.259349 * t.OUT_17  + 0.025211 * t.OUT_18  + 0.133861 * t.OUT_19  + 0.092262 * t.OUT_20  + -0.244309 * t.OUT_21  + -0.144800 * t.OUT_22  + 0.001169 * t.OUT_23  + 0.050311 * t.OUT_24  + 0.065578 * t.OUT_25  + 0.128479 * t.OUT_26  + -0.074724 * t.OUT_27  + 0.086519 * t.OUT_28  + 0.054648 * t.OUT_29  + 0.099251 * t.OUT_30  + -0.182476 * t.OUT_31  + 0.077945 * t.OUT_32  + 0.187337 * t.OUT_33  + -0.155454 * t.OUT_34  + -0.188516 * t.OUT_35  + -0.187416 * t.OUT_36  + -0.007274 * t.OUT_37  + -0.014757 * t.OUT_38  + -0.204582 * t.OUT_39  + 0.110035 * t.OUT_40  + -0.077283 * t.OUT_41  + -0.221294 * t.OUT_42  + 0.128277 * t.OUT_43  + 0.177372 * t.OUT_44  + 0.123948 * t.OUT_45  + 0.056158 * t.OUT_46  + 0.163646 * t.OUT_47  + 0.146049 * t.OUT_48  + -0.195782 * t.OUT_49  + -0.088328 * t.OUT_50  + 0.193034 * t.OUT_51  + -0.004937 * t.OUT_52  + 0.075899 * t.OUT_53  + -0.148291 * t.OUT_54  + -0.094346 * t.OUT_55  + -0.043269 * t.OUT_56  + -0.183482 * t.OUT_57  + 0.016949 * t.OUT_58  + -0.115364 * t.OUT_59  + 0.007286 * t.OUT_60  + 0.015301 * t.OUT_61  + 0.034389 * t.OUT_62  + 0.140557 * t.OUT_63  + 0.117401 * t.OUT_64  + 0.099262 * t.OUT_65  + 0.048087 * t.OUT_66  + 0.060317 * t.OUT_67  + 0.193771 * t.OUT_68  + 0.062687 * t.OUT_69  + 0.083231 * t.OUT_70  + 0.108115 * t.OUT_71  + 0.115706 * t.OUT_72  + -0.091020 * t.OUT_73  + -0.207738 * t.OUT_74  + 0.086297 * t.OUT_75  + -0.178383 * t.OUT_76  + -0.026138 * t.OUT_77  + 0.153923 * t.OUT_78  + 0.027984 * t.OUT_79  + -0.104874 * t.OUT_80  + 0.112390 * t.OUT_81  + -0.114648 * t.OUT_82  + 0.060448 * t.OUT_83  + 0.230514 * t.OUT_84  + 0.027703 * t.OUT_85  + -0.016501 * t.OUT_86  + -0.040798 * t.OUT_87  + -0.188082 * t.OUT_88  + -0.085723 * t.OUT_89  + -0.178425 * t.OUT_90  + 0.205125 * t.OUT_91  + 0.094732 * t.OUT_92  + -0.251496 * t.OUT_93  + -0.264006 * t.OUT_94  + -0.031720 * t.OUT_95  + -0.182957 * t.OUT_96  + -0.005871 * t.OUT_97  + -0.187027 * t.OUT_98  + -0.170446 * t.OUT_99 AS OUT_0,
    0.039858 + 0.149693 * t.OUT_0  + -0.140160 * t.OUT_1  + 0.031814 * t.OUT_2  + -0.208396 * t.OUT_3  + -0.095218 * t.OUT_4  + -0.249272 * t.OUT_5  + -0.207602 * t.OUT_6  + -0.027160 * t.OUT_7  + 0.091143 * t.OUT_8  + 0.241699 * t.OUT_9  + 0.162057 * t.OUT_10  + -0.209715 * t.OUT_11  + 0.180614 * t.OUT_12  + 0.174346 * t.OUT_13  + 0.021985 * t.OUT_14  + 0.035164 * t.OUT_15  + 0.171352 * t.OUT_16  + 0.255341 * t.OUT_17  + 0.212050 * t.OUT_18  + 0.150866 * t.OUT_19  + 0.146920 * t.OUT_20  + 0.151481 * t.OUT_21  + -0.243859 * t.OUT_22  + -0.077694 * t.OUT_23  + -0.102074 * t.OUT_24  + -0.151179 * t.OUT_25  + 0.175643 * t.OUT_26  + -0.002575 * t.OUT_27  + -0.028827 * t.OUT_28  + -0.106955 * t.OUT_29  + 0.151246 * t.OUT_30  + 0.007832 * t.OUT_31  + -0.252833 * t.OUT_32  + -0.187939 * t.OUT_33  + -0.215141 * t.OUT_34  + -0.153019 * t.OUT_35  + -0.211356 * t.OUT_36  + 0.060781 * t.OUT_37  + 0.223600 * t.OUT_38  + -0.101483 * t.OUT_39  + -0.157069 * t.OUT_40  + 0.097032 * t.OUT_41  + 0.166015 * t.OUT_42  + 0.080914 * t.OUT_43  + 0.231212 * t.OUT_44  + 0.043120 * t.OUT_45  + 0.121611 * t.OUT_46  + 0.160522 * t.OUT_47  + -0.149877 * t.OUT_48  + -0.131677 * t.OUT_49  + 0.025143 * t.OUT_50  + 0.027301 * t.OUT_51  + 0.139950 * t.OUT_52  + -0.070096 * t.OUT_53  + -0.167560 * t.OUT_54  + -0.208343 * t.OUT_55  + 0.115552 * t.OUT_56  + 0.202782 * t.OUT_57  + 0.268651 * t.OUT_58  + 0.237111 * t.OUT_59  + -0.002316 * t.OUT_60  + -0.064198 * t.OUT_61  + 0.062376 * t.OUT_62  + -0.100127 * t.OUT_63  + -0.094809 * t.OUT_64  + 0.174515 * t.OUT_65  + -0.150342 * t.OUT_66  + 0.027220 * t.OUT_67  + -0.097548 * t.OUT_68  + 0.228924 * t.OUT_69  + 0.262723 * t.OUT_70  + 0.152258 * t.OUT_71  + 0.200476 * t.OUT_72  + 0.054858 * t.OUT_73  + 0.134024 * t.OUT_74  + -0.227725 * t.OUT_75  + 0.124724 * t.OUT_76  + 0.123986 * t.OUT_77  + -0.172977 * t.OUT_78  + -0.117596 * t.OUT_79  + 0.213308 * t.OUT_80  + 0.019945 * t.OUT_81  + -0.194297 * t.OUT_82  + 0.132977 * t.OUT_83  + -0.147718 * t.OUT_84  + -0.108722 * t.OUT_85  + 0.143043 * t.OUT_86  + -0.017428 * t.OUT_87  + -0.115760 * t.OUT_88  + -0.060652 * t.OUT_89  + -0.054818 * t.OUT_90  + -0.115292 * t.OUT_91  + -0.090012 * t.OUT_92  + 0.067727 * t.OUT_93  + -0.012144 * t.OUT_94  + -0.057206 * t.OUT_95  + -0.102235 * t.OUT_96  + 0.043317 * t.OUT_97  + 0.127995 * t.OUT_98  + -0.027141 * t.OUT_99 AS OUT_1,
    0.155654 + -0.129067 * t.OUT_0  + 0.041765 * t.OUT_1  + 0.195492 * t.OUT_2  + -0.129875 * t.OUT_3  + -0.092035 * t.OUT_4  + -0.008127 * t.OUT_5  + -0.089956 * t.OUT_6  + -0.192428 * t.OUT_7  + -0.021304 * t.OUT_8  + -0.160632 * t.OUT_9  + 0.025859 * t.OUT_10  + 0.089899 * t.OUT_11  + 0.215463 * t.OUT_12  + -0.176249 * t.OUT_13  + 0.062851 * t.OUT_14  + 0.123622 * t.OUT_15  + -0.153503 * t.OUT_16  + -0.036393 * t.OUT_17  + -0.204294 * t.OUT_18  + 0.230406 * t.OUT_19  + 0.204684 * t.OUT_20  + 0.011869 * t.OUT_21  + -0.071832 * t.OUT_22  + -0.054806 * t.OUT_23  + -0.074096 * t.OUT_24  + -0.050791 * t.OUT_25  + 0.206986 * t.OUT_26  + 0.094973 * t.OUT_27  + 0.166855 * t.OUT_28  + -0.086993 * t.OUT_29  + -0.179326 * t.OUT_30  + 0.074438 * t.OUT_31  + -0.182165 * t.OUT_32  + -0.062305 * t.OUT_33  + -0.113243 * t.OUT_34  + -0.194296 * t.OUT_35  + 0.074663 * t.OUT_36  + 0.056130 * t.OUT_37  + 0.271790 * t.OUT_38  + 0.069441 * t.OUT_39  + 0.249693 * t.OUT_40  + -0.108430 * t.OUT_41  + 0.018980 * t.OUT_42  + 0.034774 * t.OUT_43  + -0.127114 * t.OUT_44  + -0.031011 * t.OUT_45  + -0.142730 * t.OUT_46  + -0.038776 * t.OUT_47  + 0.051212 * t.OUT_48  + -0.165480 * t.OUT_49  + -0.222690 * t.OUT_50  + -0.010092 * t.OUT_51  + 0.011665 * t.OUT_52  + -0.048574 * t.OUT_53  + 0.085814 * t.OUT_54  + 0.234332 * t.OUT_55  + 0.082304 * t.OUT_56  + 0.191279 * t.OUT_57  + 0.181940 * t.OUT_58  + -0.235184 * t.OUT_59  + 0.065450 * t.OUT_60  + -0.127554 * t.OUT_61  + -0.183859 * t.OUT_62  + -0.039528 * t.OUT_63  + 0.018923 * t.OUT_64  + 0.146989 * t.OUT_65  + 0.006341 * t.OUT_66  + 0.206012 * t.OUT_67  + 0.073703 * t.OUT_68  + -0.151159 * t.OUT_69  + 0.018661 * t.OUT_70  + 0.177087 * t.OUT_71  + 0.073443 * t.OUT_72  + -0.201604 * t.OUT_73  + 0.020265 * t.OUT_74  + -0.194198 * t.OUT_75  + -0.012727 * t.OUT_76  + 0.098124 * t.OUT_77  + 0.165609 * t.OUT_78  + -0.113836 * t.OUT_79  + -0.244136 * t.OUT_80  + 0.143514 * t.OUT_81  + -0.232456 * t.OUT_82  + -0.036531 * t.OUT_83  + -0.077879 * t.OUT_84  + -0.074161 * t.OUT_85  + 0.002424 * t.OUT_86  + 0.189978 * t.OUT_87  + -0.228470 * t.OUT_88  + -0.191042 * t.OUT_89  + 0.223903 * t.OUT_90  + 0.059827 * t.OUT_91  + -0.148149 * t.OUT_92  + -0.227940 * t.OUT_93  + 0.193930 * t.OUT_94  + 0.216792 * t.OUT_95  + 0.038343 * t.OUT_96  + 0.146071 * t.OUT_97  + -0.171767 * t.OUT_98  + 0.170878 * t.OUT_99 AS OUT_2,
    0.199326 + 0.002282 * t.OUT_0  + 0.035907 * t.OUT_1  + -0.014125 * t.OUT_2  + 0.121435 * t.OUT_3  + -0.154250 * t.OUT_4  + -0.023140 * t.OUT_5  + 0.226930 * t.OUT_6  + -0.011281 * t.OUT_7  + 0.069140 * t.OUT_8  + 0.155803 * t.OUT_9  + 0.240762 * t.OUT_10  + 0.119256 * t.OUT_11  + -0.124479 * t.OUT_12  + 0.136254 * t.OUT_13  + 0.120377 * t.OUT_14  + 0.107133 * t.OUT_15  + -0.200366 * t.OUT_16  + -0.222130 * t.OUT_17  + 0.066572 * t.OUT_18  + -0.151780 * t.OUT_19  + -0.055906 * t.OUT_20  + -0.030979 * t.OUT_21  + 0.187740 * t.OUT_22  + -0.184164 * t.OUT_23  + -0.077550 * t.OUT_24  + 0.112867 * t.OUT_25  + 0.161659 * t.OUT_26  + 0.134391 * t.OUT_27  + 0.179443 * t.OUT_28  + -0.117506 * t.OUT_29  + 0.048002 * t.OUT_30  + -0.064549 * t.OUT_31  + 0.194286 * t.OUT_32  + -0.209211 * t.OUT_33  + -0.061541 * t.OUT_34  + 0.079293 * t.OUT_35  + 0.088159 * t.OUT_36  + -0.186288 * t.OUT_37  + -0.071574 * t.OUT_38  + -0.169580 * t.OUT_39  + 0.256120 * t.OUT_40  + 0.200057 * t.OUT_41  + -0.115629 * t.OUT_42  + -0.115864 * t.OUT_43  + 0.057970 * t.OUT_44  + 0.247174 * t.OUT_45  + -0.064478 * t.OUT_46  + -0.029537 * t.OUT_47  + 0.169000 * t.OUT_48  + -0.097907 * t.OUT_49  + 0.172668 * t.OUT_50  + 0.126134 * t.OUT_51  + 0.174173 * t.OUT_52  + -0.178577 * t.OUT_53  + -0.006283 * t.OUT_54  + -0.122382 * t.OUT_55  + 0.125728 * t.OUT_56  + 0.148644 * t.OUT_57  + 0.032211 * t.OUT_58  + -0.192146 * t.OUT_59  + 0.164108 * t.OUT_60  + -0.109597 * t.OUT_61  + 0.004338 * t.OUT_62  + -0.063891 * t.OUT_63  + 0.130428 * t.OUT_64  + 0.199337 * t.OUT_65  + -0.193570 * t.OUT_66  + 0.155103 * t.OUT_67  + 0.172030 * t.OUT_68  + 0.128541 * t.OUT_69  + 0.110736 * t.OUT_70  + -0.212342 * t.OUT_71  + 0.161360 * t.OUT_72  + 0.086841 * t.OUT_73  + 0.004864 * t.OUT_74  + -0.047163 * t.OUT_75  + -0.062419 * t.OUT_76  + -0.072369 * t.OUT_77  + -0.079077 * t.OUT_78  + 0.068228 * t.OUT_79  + -0.136827 * t.OUT_80  + 0.178247 * t.OUT_81  + 0.033222 * t.OUT_82  + -0.007948 * t.OUT_83  + -0.041946 * t.OUT_84  + -0.107346 * t.OUT_85  + -0.079996 * t.OUT_86  + 0.048763 * t.OUT_87  + 0.129971 * t.OUT_88  + 0.023256 * t.OUT_89  + -0.170013 * t.OUT_90  + -0.184789 * t.OUT_91  + -0.108935 * t.OUT_92  + 0.236312 * t.OUT_93  + 0.032331 * t.OUT_94  + -0.152717 * t.OUT_95  + 0.200872 * t.OUT_96  + 0.154456 * t.OUT_97  + 0.157932 * t.OUT_98  + -0.173331 * t.OUT_99 AS OUT_3
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
    -0.026664 + -0.325720 * t.OUT_0  + 0.138947 * t.OUT_1  + 0.722570 * t.OUT_2  + -0.338682 * t.OUT_3 AS OUT_0,
    -0.675937 + -0.013924 * t.OUT_0  + -0.604671 * t.OUT_1  + 0.479640 * t.OUT_2  + 0.011783 * t.OUT_3 AS OUT_1,
    0.529912 + 0.676838 * t.OUT_0  + -0.282254 * t.OUT_1  + -0.408787 * t.OUT_2  + -0.672961 * t.OUT_3 AS OUT_2,
    -0.616524 + 0.611841 * t.OUT_0  + -0.632901 * t.OUT_1  + -0.029793 * t.OUT_2  + -0.107281 * t.OUT_3 AS OUT_3,
    -0.022815 + 0.503763 * t.OUT_0  + -0.185688 * t.OUT_1  + 0.398628 * t.OUT_2  + -0.235181 * t.OUT_3 AS OUT_4,
    -0.054808 + -0.147370 * t.OUT_0  + -0.191374 * t.OUT_1  + -0.667300 * t.OUT_2  + 0.290634 * t.OUT_3 AS OUT_5,
    0.295229 + -0.301977 * t.OUT_0  + -0.006546 * t.OUT_1  + -0.371400 * t.OUT_2  + -0.104482 * t.OUT_3 AS OUT_6,
    -0.687855 + -0.276998 * t.OUT_0  + -0.141184 * t.OUT_1  + 0.020008 * t.OUT_2  + 0.471177 * t.OUT_3 AS OUT_7
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
    0.610885 + -0.264949 * t.OUT_0  + 0.605018 * t.OUT_1  + 0.403523 * t.OUT_2  + 0.072698 * t.OUT_3  + -0.332315 * t.OUT_4  + 0.502782 * t.OUT_5  + -0.277233 * t.OUT_6  + -0.070488 * t.OUT_7 AS OUT_0,
    -0.564384 + 0.563798 * t.OUT_0  + 0.595693 * t.OUT_1  + 0.079923 * t.OUT_2  + -0.194039 * t.OUT_3  + -0.419524 * t.OUT_4  + -0.034800 * t.OUT_5  + 0.552646 * t.OUT_6  + 0.394018 * t.OUT_7 AS OUT_1,
    -0.362573 + 0.367915 * t.OUT_0  + -0.247366 * t.OUT_1  + 0.090075 * t.OUT_2  + -0.413525 * t.OUT_3  + -0.295394 * t.OUT_4  + 0.116373 * t.OUT_5  + 0.651237 * t.OUT_6  + 0.175121 * t.OUT_7 AS OUT_2,
    0.629223 + -0.320623 * t.OUT_0  + 0.494229 * t.OUT_1  + -0.068863 * t.OUT_2  + 0.127796 * t.OUT_3  + -0.288747 * t.OUT_4  + 0.087805 * t.OUT_5  + 0.267751 * t.OUT_6  + -0.130391 * t.OUT_7 AS OUT_3,
    -0.461759 + 0.453665 * t.OUT_0  + 0.554471 * t.OUT_1  + -0.114253 * t.OUT_2  + 0.601730 * t.OUT_3  + -0.161727 * t.OUT_4  + 0.057084 * t.OUT_5  + 0.112850 * t.OUT_6  + -0.183469 * t.OUT_7 AS OUT_4,
    0.556943 + 0.121241 * t.OUT_0  + 0.511753 * t.OUT_1  + -0.002618 * t.OUT_2  + -0.191184 * t.OUT_3  + -0.212070 * t.OUT_4  + -0.008349 * t.OUT_5  + 0.143219 * t.OUT_6  + -0.603254 * t.OUT_7 AS OUT_5
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
    -0.155912 + -0.405203 * t.OUT_0  + -0.538052 * t.OUT_1  + -0.499978 * t.OUT_2  + 0.312359 * t.OUT_3  + -0.321749 * t.OUT_4  + 0.197224 * t.OUT_5 AS OUT_0,
    -0.339696 + 0.705499 * t.OUT_0  + 0.482592 * t.OUT_1  + -0.524990 * t.OUT_2  + 0.526865 * t.OUT_3  + -0.650208 * t.OUT_4  + -0.584747 * t.OUT_5 AS OUT_1,
    0.470721 + 0.256427 * t.OUT_0  + -0.635644 * t.OUT_1  + -0.444057 * t.OUT_2  + -0.213524 * t.OUT_3  + -0.388120 * t.OUT_4  + 0.379202 * t.OUT_5 AS OUT_2,
    -0.562473 + 0.675571 * t.OUT_0  + 0.781816 * t.OUT_1  + -0.174944 * t.OUT_2  + 0.688975 * t.OUT_3  + -0.023971 * t.OUT_4  + 0.434909 * t.OUT_5 AS OUT_3
 FROM Hidden_Layer_3_Activation AS t
)

, soft_max_orig_cte AS 
( SELECT t."index" AS "index",
    CAST(NULL AS FLOAT) AS "Proba_0", t.OUT_0 AS "Score_0", CAST(NULL AS FLOAT) AS "LogProba_0",
    CAST(NULL AS FLOAT) AS "Proba_1", t.OUT_1 AS "Score_1", CAST(NULL AS FLOAT) AS "LogProba_1",
    CAST(NULL AS FLOAT) AS "Proba_2", t.OUT_2 AS "Score_2", CAST(NULL AS FLOAT) AS "LogProba_2",
    CAST(NULL AS FLOAT) AS "Proba_3", t.OUT_3 AS "Score_3", CAST(NULL AS FLOAT) AS "LogProba_3"
  FROM "Output_Layer_BA" AS t )
,
soft_max_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 2 AS class,  "LogProba_2" AS "LogProba", "Proba_2" AS "Proba", "Score_2" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 3 AS class,  "LogProba_3" AS "LogProba", "Proba_3" AS "Proba", "Score_3" AS "Score" from "soft_max_orig_cte"
   ) AS scu
 )
,soft_max_score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   t."LogProba_2" AS "LogProba_2", t."Proba_2" AS "Proba_2", t."Score_2" AS "Score_2",
   t."LogProba_3" AS "LogProba_3", t."Proba_3" AS "Proba_3", t."Score_3" AS "Score_3",
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
    soft_max_score_max."Score_2" AS "Score_2",
    EXP(max(-32.0, soft_max_score_max."Score_2" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_2",
    soft_max_score_max."Score_3" AS "Score_3",
    EXP(max(-32.0, soft_max_score_max."Score_3" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_3",
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
    UNION ALL
    SELECT t."index" AS "index", 2 AS "class", t."ExpDelta_Score_2" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 3 AS "class", t."ExpDelta_Score_3" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
) AS soft_scu)
,
soft_max_cte AS 
 (SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."ExpDelta_Score_0" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."ExpDelta_Score_1" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    CAST(NULL AS FLOAT) AS "LogProba_2",
    t1."ExpDelta_Score_2" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    CAST(NULL AS FLOAT) AS "LogProba_3",
    t1."ExpDelta_Score_3" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_3",
    t1."Score_3" AS "Score_3"
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
    UNION ALL
    SELECT "index" AS index_u, 2 AS class,  "LogProba_2" AS "LogProba", "Proba_2" AS "Proba", "Score_2" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 3 AS class,  "LogProba_3" AS "LogProba", "Proba_3" AS "Proba", "Score_3" AS "Score" from "soft_max_cte"
   ) AS scu
 )
,
score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   t."LogProba_2" AS "LogProba_2", t."Proba_2" AS "Proba_2", t."Score_2" AS "Score_2",
   t."LogProba_3" AS "LogProba_3", t."Proba_3" AS "Proba_3", t."Score_3" AS "Score_3",
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
   score_max."LogProba_2" AS "LogProba_2", score_max."Proba_2" AS "Proba_2", score_max."Score_2" AS "Score_2",
   score_max."LogProba_3" AS "LogProba_3", score_max."Proba_3" AS "Proba_3", score_max."Score_3" AS "Score_3",
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
   score_max."LogProba_2" AS "LogProba_2", score_max."Proba_2" AS "Proba_2", score_max."Score_2" AS "Score_2",
   score_max."LogProba_3" AS "LogProba_3", score_max."Proba_3" AS "Proba_3", score_max."Score_3" AS "Score_3",
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
  arg_max_cte."Score_2" AS "Score_2",
  arg_max_cte."Proba_2" AS "Proba_2",
  CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN LN( arg_max_cte."Proba_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
  arg_max_cte."Score_3" AS "Score_3",
  arg_max_cte."Proba_3" AS "Proba_3",
  CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN LN( arg_max_cte."Proba_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
  arg_max_cte."arg_max_Score" AS "Decision",
  CASE
   WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0"
   WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1"
   WHEN (arg_max_cte."arg_max_Score" = 2) THEN arg_max_cte."Proba_2"
   WHEN (arg_max_cte."arg_max_Score" = 3) THEN arg_max_cte."Proba_3"
 END AS "DecisionProba"
FROM arg_max_cte