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
    -0.161463 + -0.071242 * t.OUT_0  + -0.034247 * t.OUT_1  + 0.235417 * t.OUT_2  + 0.177366 * t.OUT_3  + 0.082853 * t.OUT_4  + 0.051559 * t.OUT_5  + 0.012597 * t.OUT_6  + -0.094555 * t.OUT_7  + -0.037678 * t.OUT_8  + -0.145410 * t.OUT_9  + -0.117316 * t.OUT_10  + -0.121587 * t.OUT_11  + 0.237011 * t.OUT_12  + 0.181921 * t.OUT_13  + 0.084867 * t.OUT_14  + -0.165266 * t.OUT_15  + -0.221371 * t.OUT_16  + 0.173477 * t.OUT_17  + 0.061073 * t.OUT_18  + 0.083440 * t.OUT_19  + 0.068363 * t.OUT_20  + -0.258689 * t.OUT_21  + -0.092906 * t.OUT_22  + 0.002740 * t.OUT_23  + 0.060288 * t.OUT_24  + 0.070660 * t.OUT_25  + 0.192904 * t.OUT_26  + -0.096190 * t.OUT_27  + 0.090473 * t.OUT_28  + 0.010891 * t.OUT_29  + 0.121183 * t.OUT_30  + -0.203650 * t.OUT_31  + 0.035402 * t.OUT_32  + 0.135865 * t.OUT_33  + -0.142348 * t.OUT_34  + -0.308859 * t.OUT_35  + -0.233515 * t.OUT_36  + -0.001538 * t.OUT_37  + -0.048997 * t.OUT_38  + -0.212846 * t.OUT_39  + 0.053592 * t.OUT_40  + -0.013499 * t.OUT_41  + -0.294019 * t.OUT_42  + 0.013698 * t.OUT_43  + 0.073929 * t.OUT_44  + 0.061521 * t.OUT_45  + -0.014192 * t.OUT_46  + 0.057873 * t.OUT_47  + 0.112362 * t.OUT_48  + -0.158289 * t.OUT_49  + -0.079937 * t.OUT_50  + 0.210836 * t.OUT_51  + 0.025851 * t.OUT_52  + -0.019965 * t.OUT_53  + -0.215003 * t.OUT_54  + -0.072678 * t.OUT_55  + 0.011005 * t.OUT_56  + -0.188372 * t.OUT_57  + 0.039853 * t.OUT_58  + -0.168178 * t.OUT_59  + 0.139945 * t.OUT_60  + 0.063879 * t.OUT_61  + 0.107051 * t.OUT_62  + 0.114673 * t.OUT_63  + 0.128504 * t.OUT_64  + -0.017702 * t.OUT_65  + -0.027007 * t.OUT_66  + 0.120626 * t.OUT_67  + 0.204567 * t.OUT_68  + 0.027489 * t.OUT_69  + -0.006543 * t.OUT_70  + 0.156955 * t.OUT_71  + 0.108730 * t.OUT_72  + -0.014057 * t.OUT_73  + -0.168396 * t.OUT_74  + 0.015309 * t.OUT_75  + -0.191494 * t.OUT_76  + 0.036227 * t.OUT_77  + 0.163841 * t.OUT_78  + -0.065150 * t.OUT_79  + -0.108555 * t.OUT_80  + 0.032042 * t.OUT_81  + -0.026781 * t.OUT_82  + 0.115276 * t.OUT_83  + 0.256830 * t.OUT_84  + -0.062438 * t.OUT_85  + -0.097890 * t.OUT_86  + -0.038455 * t.OUT_87  + -0.186478 * t.OUT_88  + -0.025194 * t.OUT_89  + -0.115851 * t.OUT_90  + 0.154358 * t.OUT_91  + 0.137891 * t.OUT_92  + -0.242660 * t.OUT_93  + -0.249185 * t.OUT_94  + -0.095501 * t.OUT_95  + -0.156688 * t.OUT_96  + -0.152144 * t.OUT_97  + -0.118380 * t.OUT_98  + -0.199320 * t.OUT_99 AS OUT_0,
    0.030845 + 0.152611 * t.OUT_0  + -0.119481 * t.OUT_1  + 0.098162 * t.OUT_2  + -0.211320 * t.OUT_3  + -0.239718 * t.OUT_4  + -0.203411 * t.OUT_5  + -0.166830 * t.OUT_6  + -0.003885 * t.OUT_7  + 0.162052 * t.OUT_8  + 0.218865 * t.OUT_9  + 0.214701 * t.OUT_10  + -0.174439 * t.OUT_11  + 0.255309 * t.OUT_12  + 0.148086 * t.OUT_13  + -0.004554 * t.OUT_14  + 0.027427 * t.OUT_15  + 0.082543 * t.OUT_16  + 0.209946 * t.OUT_17  + 0.243318 * t.OUT_18  + 0.152945 * t.OUT_19  + 0.098342 * t.OUT_20  + 0.125642 * t.OUT_21  + -0.221236 * t.OUT_22  + 0.051435 * t.OUT_23  + -0.038204 * t.OUT_24  + -0.183576 * t.OUT_25  + 0.223030 * t.OUT_26  + 0.056896 * t.OUT_27  + -0.089824 * t.OUT_28  + -0.116273 * t.OUT_29  + 0.082257 * t.OUT_30  + 0.049011 * t.OUT_31  + -0.236386 * t.OUT_32  + -0.240640 * t.OUT_33  + -0.144309 * t.OUT_34  + -0.109446 * t.OUT_35  + -0.159911 * t.OUT_36  + 0.046191 * t.OUT_37  + 0.168216 * t.OUT_38  + -0.118724 * t.OUT_39  + -0.207221 * t.OUT_40  + 0.063578 * t.OUT_41  + 0.179136 * t.OUT_42  + 0.111821 * t.OUT_43  + 0.252311 * t.OUT_44  + -0.018861 * t.OUT_45  + 0.139942 * t.OUT_46  + 0.119992 * t.OUT_47  + -0.123517 * t.OUT_48  + -0.180021 * t.OUT_49  + -0.059681 * t.OUT_50  + -0.004484 * t.OUT_51  + 0.174092 * t.OUT_52  + -0.020969 * t.OUT_53  + -0.237519 * t.OUT_54  + -0.194451 * t.OUT_55  + -0.008638 * t.OUT_56  + 0.170225 * t.OUT_57  + 0.266216 * t.OUT_58  + 0.273035 * t.OUT_59  + -0.047570 * t.OUT_60  + 0.022231 * t.OUT_61  + 0.021654 * t.OUT_62  + -0.178311 * t.OUT_63  + 0.018598 * t.OUT_64  + 0.166239 * t.OUT_65  + -0.182124 * t.OUT_66  + 0.032067 * t.OUT_67  + -0.214185 * t.OUT_68  + 0.285033 * t.OUT_69  + 0.226657 * t.OUT_70  + 0.116698 * t.OUT_71  + 0.179014 * t.OUT_72  + 0.153470 * t.OUT_73  + 0.134013 * t.OUT_74  + -0.211040 * t.OUT_75  + 0.099381 * t.OUT_76  + 0.223331 * t.OUT_77  + -0.053531 * t.OUT_78  + -0.079460 * t.OUT_79  + 0.157318 * t.OUT_80  + -0.002231 * t.OUT_81  + -0.151470 * t.OUT_82  + 0.096286 * t.OUT_83  + -0.282851 * t.OUT_84  + -0.079905 * t.OUT_85  + 0.110295 * t.OUT_86  + -0.050311 * t.OUT_87  + -0.107058 * t.OUT_88  + -0.078208 * t.OUT_89  + -0.148818 * t.OUT_90  + -0.072445 * t.OUT_91  + -0.072130 * t.OUT_92  + 0.067556 * t.OUT_93  + -0.005289 * t.OUT_94  + -0.105381 * t.OUT_95  + -0.017236 * t.OUT_96  + 0.103685 * t.OUT_97  + 0.160624 * t.OUT_98  + -0.133465 * t.OUT_99 AS OUT_1,
    0.112650 + -0.152796 * t.OUT_0  + 0.036205 * t.OUT_1  + 0.191183 * t.OUT_2  + -0.080217 * t.OUT_3  + -0.059285 * t.OUT_4  + 0.033759 * t.OUT_5  + -0.155150 * t.OUT_6  + -0.194484 * t.OUT_7  + -0.069466 * t.OUT_8  + -0.210883 * t.OUT_9  + 0.073598 * t.OUT_10  + 0.151246 * t.OUT_11  + 0.290701 * t.OUT_12  + -0.092196 * t.OUT_13  + 0.043959 * t.OUT_14  + 0.124121 * t.OUT_15  + -0.113082 * t.OUT_16  + -0.092405 * t.OUT_17  + -0.148894 * t.OUT_18  + 0.265820 * t.OUT_19  + 0.225611 * t.OUT_20  + -0.027932 * t.OUT_21  + -0.067914 * t.OUT_22  + -0.022766 * t.OUT_23  + -0.149080 * t.OUT_24  + 0.007903 * t.OUT_25  + 0.224299 * t.OUT_26  + 0.103118 * t.OUT_27  + 0.200307 * t.OUT_28  + -0.030978 * t.OUT_29  + -0.236782 * t.OUT_30  + 0.070956 * t.OUT_31  + -0.070164 * t.OUT_32  + -0.174154 * t.OUT_33  + -0.107086 * t.OUT_34  + -0.093773 * t.OUT_35  + 0.049091 * t.OUT_36  + -0.035236 * t.OUT_37  + 0.164428 * t.OUT_38  + 0.148423 * t.OUT_39  + 0.214845 * t.OUT_40  + -0.116770 * t.OUT_41  + 0.030389 * t.OUT_42  + 0.032558 * t.OUT_43  + -0.065012 * t.OUT_44  + -0.005571 * t.OUT_45  + -0.152151 * t.OUT_46  + 0.000941 * t.OUT_47  + 0.003328 * t.OUT_48  + -0.151983 * t.OUT_49  + -0.234009 * t.OUT_50  + 0.046877 * t.OUT_51  + 0.027993 * t.OUT_52  + -0.031415 * t.OUT_53  + 0.113325 * t.OUT_54  + 0.184287 * t.OUT_55  + 0.156237 * t.OUT_56  + 0.159902 * t.OUT_57  + 0.193286 * t.OUT_58  + -0.245789 * t.OUT_59  + 0.084788 * t.OUT_60  + -0.176160 * t.OUT_61  + -0.345964 * t.OUT_62  + 0.011046 * t.OUT_63  + -0.012517 * t.OUT_64  + 0.177179 * t.OUT_65  + -0.042061 * t.OUT_66  + 0.180109 * t.OUT_67  + 0.082732 * t.OUT_68  + -0.051542 * t.OUT_69  + 0.082394 * t.OUT_70  + 0.101806 * t.OUT_71  + 0.068098 * t.OUT_72  + -0.167811 * t.OUT_73  + -0.034664 * t.OUT_74  + -0.183470 * t.OUT_75  + -0.012804 * t.OUT_76  + 0.096267 * t.OUT_77  + 0.162683 * t.OUT_78  + -0.079582 * t.OUT_79  + -0.187403 * t.OUT_80  + 0.258808 * t.OUT_81  + -0.242314 * t.OUT_82  + -0.101057 * t.OUT_83  + -0.078320 * t.OUT_84  + -0.074214 * t.OUT_85  + -0.007529 * t.OUT_86  + 0.258631 * t.OUT_87  + -0.204288 * t.OUT_88  + -0.276857 * t.OUT_89  + 0.141338 * t.OUT_90  + 0.083486 * t.OUT_91  + -0.189646 * t.OUT_92  + -0.210443 * t.OUT_93  + 0.092226 * t.OUT_94  + 0.198559 * t.OUT_95  + -0.003399 * t.OUT_96  + 0.168634 * t.OUT_97  + -0.233364 * t.OUT_98  + 0.212184 * t.OUT_99 AS OUT_2,
    0.198972 + 0.040522 * t.OUT_0  + -0.014881 * t.OUT_1  + 0.017564 * t.OUT_2  + 0.070218 * t.OUT_3  + -0.190578 * t.OUT_4  + 0.097551 * t.OUT_5  + 0.157709 * t.OUT_6  + -0.038107 * t.OUT_7  + 0.075580 * t.OUT_8  + 0.163332 * t.OUT_9  + 0.147419 * t.OUT_10  + 0.119374 * t.OUT_11  + -0.219905 * t.OUT_12  + 0.085191 * t.OUT_13  + 0.201999 * t.OUT_14  + 0.135474 * t.OUT_15  + -0.213842 * t.OUT_16  + -0.259642 * t.OUT_17  + 0.001187 * t.OUT_18  + -0.147836 * t.OUT_19  + -0.102288 * t.OUT_20  + 0.035499 * t.OUT_21  + 0.219893 * t.OUT_22  + -0.182468 * t.OUT_23  + -0.069763 * t.OUT_24  + 0.037897 * t.OUT_25  + 0.069551 * t.OUT_26  + 0.130109 * t.OUT_27  + 0.093359 * t.OUT_28  + -0.147542 * t.OUT_29  + 0.089867 * t.OUT_30  + 0.015279 * t.OUT_31  + 0.137527 * t.OUT_32  + -0.179581 * t.OUT_33  + -0.097810 * t.OUT_34  + 0.120299 * t.OUT_35  + 0.085414 * t.OUT_36  + -0.185512 * t.OUT_37  + -0.072227 * t.OUT_38  + -0.184410 * t.OUT_39  + 0.154332 * t.OUT_40  + 0.166979 * t.OUT_41  + -0.186238 * t.OUT_42  + -0.076842 * t.OUT_43  + 0.054441 * t.OUT_44  + 0.243339 * t.OUT_45  + -0.119125 * t.OUT_46  + 0.063546 * t.OUT_47  + 0.172462 * t.OUT_48  + -0.162352 * t.OUT_49  + 0.197174 * t.OUT_50  + 0.108206 * t.OUT_51  + 0.182267 * t.OUT_52  + -0.204334 * t.OUT_53  + -0.015924 * t.OUT_54  + 0.001917 * t.OUT_55  + 0.166582 * t.OUT_56  + 0.294521 * t.OUT_57  + 0.023417 * t.OUT_58  + -0.070820 * t.OUT_59  + 0.093037 * t.OUT_60  + -0.105497 * t.OUT_61  + 0.109184 * t.OUT_62  + -0.005275 * t.OUT_63  + 0.127018 * t.OUT_64  + 0.275763 * t.OUT_65  + -0.097926 * t.OUT_66  + 0.147774 * t.OUT_67  + 0.220207 * t.OUT_68  + 0.108644 * t.OUT_69  + 0.135131 * t.OUT_70  + -0.228730 * t.OUT_71  + 0.145519 * t.OUT_72  + 0.062411 * t.OUT_73  + 0.000658 * t.OUT_74  + -0.093796 * t.OUT_75  + -0.015918 * t.OUT_76  + -0.171816 * t.OUT_77  + -0.049210 * t.OUT_78  + 0.023815 * t.OUT_79  + -0.121577 * t.OUT_80  + 0.186244 * t.OUT_81  + 0.088263 * t.OUT_82  + 0.048532 * t.OUT_83  + -0.038809 * t.OUT_84  + -0.067521 * t.OUT_85  + -0.060352 * t.OUT_86  + 0.006064 * t.OUT_87  + 0.096392 * t.OUT_88  + 0.028920 * t.OUT_89  + -0.148060 * t.OUT_90  + -0.147485 * t.OUT_91  + -0.145872 * t.OUT_92  + 0.117437 * t.OUT_93  + 0.129891 * t.OUT_94  + -0.140222 * t.OUT_95  + 0.175851 * t.OUT_96  + 0.220064 * t.OUT_97  + 0.199004 * t.OUT_98  + -0.175248 * t.OUT_99 AS OUT_3
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
    -0.052598 + -0.339970 * t.OUT_0  + 0.106059 * t.OUT_1  + 0.737699 * t.OUT_2  + -0.313781 * t.OUT_3 AS OUT_0,
    -0.658977 + -0.017532 * t.OUT_0  + -0.662468 * t.OUT_1  + 0.469804 * t.OUT_2  + 0.002075 * t.OUT_3 AS OUT_1,
    0.481725 + 0.707084 * t.OUT_0  + -0.246509 * t.OUT_1  + -0.425857 * t.OUT_2  + -0.702712 * t.OUT_3 AS OUT_2,
    -0.578702 + 0.644400 * t.OUT_0  + -0.655722 * t.OUT_1  + -0.043413 * t.OUT_2  + -0.133182 * t.OUT_3 AS OUT_3,
    -0.033862 + 0.535293 * t.OUT_0  + -0.214322 * t.OUT_1  + 0.362592 * t.OUT_2  + -0.222550 * t.OUT_3 AS OUT_4,
    -0.083967 + -0.179830 * t.OUT_0  + -0.248247 * t.OUT_1  + -0.626194 * t.OUT_2  + 0.340778 * t.OUT_3 AS OUT_5,
    0.433167 + -0.247259 * t.OUT_0  + 0.054727 * t.OUT_1  + -0.328088 * t.OUT_2  + -0.024906 * t.OUT_3 AS OUT_6,
    -0.716473 + -0.442326 * t.OUT_0  + -0.169731 * t.OUT_1  + 0.020892 * t.OUT_2  + 0.467168 * t.OUT_3 AS OUT_7
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
    0.539593 + -0.200769 * t.OUT_0  + 0.629287 * t.OUT_1  + 0.404706 * t.OUT_2  + 0.098381 * t.OUT_3  + -0.290508 * t.OUT_4  + 0.575964 * t.OUT_5  + -0.431947 * t.OUT_6  + 0.068886 * t.OUT_7 AS OUT_0,
    -0.481970 + 0.621190 * t.OUT_0  + 0.635694 * t.OUT_1  + 0.016897 * t.OUT_2  + -0.243450 * t.OUT_3  + -0.394665 * t.OUT_4  + 0.007796 * t.OUT_5  + 0.551096 * t.OUT_6  + 0.365897 * t.OUT_7 AS OUT_1,
    -0.354814 + 0.362485 * t.OUT_0  + -0.350632 * t.OUT_1  + 0.090075 * t.OUT_2  + -0.304847 * t.OUT_3  + -0.371933 * t.OUT_4  + 0.054951 * t.OUT_5  + 0.428414 * t.OUT_6  + 0.107399 * t.OUT_7 AS OUT_2,
    0.726261 + -0.283074 * t.OUT_0  + 0.459218 * t.OUT_1  + 0.041348 * t.OUT_2  + 0.210631 * t.OUT_3  + -0.280483 * t.OUT_4  + 0.156384 * t.OUT_5  + 0.413489 * t.OUT_6  + -0.123222 * t.OUT_7 AS OUT_3,
    -0.461934 + 0.448169 * t.OUT_0  + 0.540371 * t.OUT_1  + -0.135105 * t.OUT_2  + 0.625896 * t.OUT_3  + -0.178695 * t.OUT_4  + 0.099418 * t.OUT_5  + 0.030839 * t.OUT_6  + -0.220181 * t.OUT_7 AS OUT_4,
    0.518412 + 0.085270 * t.OUT_0  + 0.544856 * t.OUT_1  + -0.047972 * t.OUT_2  + -0.246440 * t.OUT_3  + -0.245478 * t.OUT_4  + -0.028574 * t.OUT_5  + 0.106166 * t.OUT_6  + -0.655536 * t.OUT_7 AS OUT_5
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
    -0.068461 + -0.336445 * t.OUT_0  + -0.586654 * t.OUT_1  + -0.569792 * t.OUT_2  + 0.437178 * t.OUT_3  + -0.366246 * t.OUT_4  + 0.299879 * t.OUT_5 AS OUT_0,
    -0.266121 + 0.811269 * t.OUT_0  + 0.544553 * t.OUT_1  + -0.504194 * t.OUT_2  + 0.578982 * t.OUT_3  + -0.622694 * t.OUT_4  + -0.548423 * t.OUT_5 AS OUT_1,
    0.389199 + 0.170817 * t.OUT_0  + -0.706272 * t.OUT_1  + -0.508856 * t.OUT_2  + -0.334676 * t.OUT_3  + -0.441450 * t.OUT_4  + 0.295018 * t.OUT_5 AS OUT_2,
    -0.661943 + 0.577798 * t.OUT_0  + 0.779579 * t.OUT_1  + -0.123647 * t.OUT_2  + 0.554809 * t.OUT_3  + -0.030312 * t.OUT_4  + 0.360927 * t.OUT_5 AS OUT_3
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