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
    -0.148651 + -0.028522 * t.OUT_0  + 0.013992 * t.OUT_1  + 0.172736 * t.OUT_2  + 0.267015 * t.OUT_3  + 0.095642 * t.OUT_4  + 0.085845 * t.OUT_5  + -0.070626 * t.OUT_6  + -0.027748 * t.OUT_7  + -0.106772 * t.OUT_8  + -0.129193 * t.OUT_9  + -0.205443 * t.OUT_10  + -0.179173 * t.OUT_11  + 0.150117 * t.OUT_12  + 0.174153 * t.OUT_13  + 0.067238 * t.OUT_14  + -0.233335 * t.OUT_15  + -0.177714 * t.OUT_16  + 0.257350 * t.OUT_17  + -0.041338 * t.OUT_18  + 0.078228 * t.OUT_19  + 0.094995 * t.OUT_20  + -0.244734 * t.OUT_21  + -0.149673 * t.OUT_22  + 0.039902 * t.OUT_23  + 0.055761 * t.OUT_24  + 0.077628 * t.OUT_25  + 0.166260 * t.OUT_26  + -0.068334 * t.OUT_27  + 0.143776 * t.OUT_28  + 0.068640 * t.OUT_29  + 0.155622 * t.OUT_30  + -0.122874 * t.OUT_31  + 0.099535 * t.OUT_32  + 0.191070 * t.OUT_33  + -0.209920 * t.OUT_34  + -0.185792 * t.OUT_35  + -0.163941 * t.OUT_36  + -0.050699 * t.OUT_37  + -0.012143 * t.OUT_38  + -0.173477 * t.OUT_39  + 0.050387 * t.OUT_40  + -0.080176 * t.OUT_41  + -0.171308 * t.OUT_42  + 0.142263 * t.OUT_43  + 0.233214 * t.OUT_44  + 0.099541 * t.OUT_45  + 0.114221 * t.OUT_46  + 0.178169 * t.OUT_47  + 0.184694 * t.OUT_48  + -0.250420 * t.OUT_49  + -0.067827 * t.OUT_50  + 0.210682 * t.OUT_51  + 0.053716 * t.OUT_52  + 0.137331 * t.OUT_53  + -0.102983 * t.OUT_54  + -0.070422 * t.OUT_55  + -0.031536 * t.OUT_56  + -0.209900 * t.OUT_57  + 0.039877 * t.OUT_58  + -0.063543 * t.OUT_59  + 0.008015 * t.OUT_60  + 0.013835 * t.OUT_61  + 0.095240 * t.OUT_62  + 0.119094 * t.OUT_63  + 0.054959 * t.OUT_64  + 0.048233 * t.OUT_65  + 0.049092 * t.OUT_66  + 0.117754 * t.OUT_67  + 0.225710 * t.OUT_68  + 0.057863 * t.OUT_69  + 0.118123 * t.OUT_70  + 0.108159 * t.OUT_71  + 0.118069 * t.OUT_72  + -0.055489 * t.OUT_73  + -0.247005 * t.OUT_74  + 0.084275 * t.OUT_75  + -0.135651 * t.OUT_76  + -0.087051 * t.OUT_77  + 0.100035 * t.OUT_78  + 0.053825 * t.OUT_79  + -0.108400 * t.OUT_80  + 0.138248 * t.OUT_81  + -0.174688 * t.OUT_82  + 0.061951 * t.OUT_83  + 0.196136 * t.OUT_84  + -0.022193 * t.OUT_85  + -0.079233 * t.OUT_86  + -0.053632 * t.OUT_87  + -0.160121 * t.OUT_88  + -0.100947 * t.OUT_89  + -0.146752 * t.OUT_90  + 0.252205 * t.OUT_91  + 0.154996 * t.OUT_92  + -0.254784 * t.OUT_93  + -0.262626 * t.OUT_94  + -0.075332 * t.OUT_95  + -0.125147 * t.OUT_96  + 0.003071 * t.OUT_97  + -0.165475 * t.OUT_98  + -0.207522 * t.OUT_99 AS OUT_0,
    0.045444 + 0.096146 * t.OUT_0  + -0.138893 * t.OUT_1  + 0.020929 * t.OUT_2  + -0.212508 * t.OUT_3  + -0.085096 * t.OUT_4  + -0.226467 * t.OUT_5  + -0.190891 * t.OUT_6  + -0.013571 * t.OUT_7  + 0.071172 * t.OUT_8  + 0.189329 * t.OUT_9  + 0.164484 * t.OUT_10  + -0.186919 * t.OUT_11  + 0.236474 * t.OUT_12  + 0.166558 * t.OUT_13  + -0.009663 * t.OUT_14  + 0.057612 * t.OUT_15  + 0.198542 * t.OUT_16  + 0.260817 * t.OUT_17  + 0.261245 * t.OUT_18  + 0.174426 * t.OUT_19  + 0.199553 * t.OUT_20  + 0.146422 * t.OUT_21  + -0.227439 * t.OUT_22  + -0.074632 * t.OUT_23  + -0.048147 * t.OUT_24  + -0.141307 * t.OUT_25  + 0.226960 * t.OUT_26  + 0.023160 * t.OUT_27  + -0.024309 * t.OUT_28  + -0.075563 * t.OUT_29  + 0.106115 * t.OUT_30  + -0.027768 * t.OUT_31  + -0.256511 * t.OUT_32  + -0.143674 * t.OUT_33  + -0.205835 * t.OUT_34  + -0.182342 * t.OUT_35  + -0.173540 * t.OUT_36  + 0.095117 * t.OUT_37  + 0.172703 * t.OUT_38  + -0.115842 * t.OUT_39  + -0.100138 * t.OUT_40  + 0.120479 * t.OUT_41  + 0.117282 * t.OUT_42  + 0.085820 * t.OUT_43  + 0.173146 * t.OUT_44  + 0.058384 * t.OUT_45  + 0.064358 * t.OUT_46  + 0.105765 * t.OUT_47  + -0.126447 * t.OUT_48  + -0.108388 * t.OUT_49  + -0.035144 * t.OUT_50  + 0.011211 * t.OUT_51  + 0.084300 * t.OUT_52  + -0.093112 * t.OUT_53  + -0.129784 * t.OUT_54  + -0.230328 * t.OUT_55  + 0.109421 * t.OUT_56  + 0.147170 * t.OUT_57  + 0.210578 * t.OUT_58  + 0.184162 * t.OUT_59  + -0.022304 * t.OUT_60  + -0.009608 * t.OUT_61  + 0.111138 * t.OUT_62  + -0.117731 * t.OUT_63  + -0.089577 * t.OUT_64  + 0.153872 * t.OUT_65  + -0.194439 * t.OUT_66  + 0.042757 * t.OUT_67  + -0.124792 * t.OUT_68  + 0.190254 * t.OUT_69  + 0.214913 * t.OUT_70  + 0.155269 * t.OUT_71  + 0.238532 * t.OUT_72  + 0.096803 * t.OUT_73  + 0.159079 * t.OUT_74  + -0.184114 * t.OUT_75  + 0.073877 * t.OUT_76  + 0.180496 * t.OUT_77  + -0.176514 * t.OUT_78  + -0.135144 * t.OUT_79  + 0.245098 * t.OUT_80  + -0.014460 * t.OUT_81  + -0.137271 * t.OUT_82  + 0.134660 * t.OUT_83  + -0.144952 * t.OUT_84  + -0.072183 * t.OUT_85  + 0.119086 * t.OUT_86  + 0.045025 * t.OUT_87  + -0.144291 * t.OUT_88  + -0.013825 * t.OUT_89  + -0.046608 * t.OUT_90  + -0.111187 * t.OUT_91  + -0.136945 * t.OUT_92  + 0.094527 * t.OUT_93  + -0.027902 * t.OUT_94  + -0.077412 * t.OUT_95  + -0.121235 * t.OUT_96  + 0.102287 * t.OUT_97  + 0.126664 * t.OUT_98  + -0.027503 * t.OUT_99 AS OUT_1,
    0.141839 + -0.070842 * t.OUT_0  + 0.060680 * t.OUT_1  + 0.207783 * t.OUT_2  + -0.079538 * t.OUT_3  + -0.128915 * t.OUT_4  + -0.008450 * t.OUT_5  + -0.096624 * t.OUT_6  + -0.194874 * t.OUT_7  + -0.024333 * t.OUT_8  + -0.171706 * t.OUT_9  + 0.056264 * t.OUT_10  + 0.065109 * t.OUT_11  + 0.206189 * t.OUT_12  + -0.169077 * t.OUT_13  + 0.056750 * t.OUT_14  + 0.090341 * t.OUT_15  + -0.138864 * t.OUT_16  + -0.046900 * t.OUT_17  + -0.179272 * t.OUT_18  + 0.182200 * t.OUT_19  + 0.197197 * t.OUT_20  + 0.022063 * t.OUT_21  + -0.100507 * t.OUT_22  + -0.084624 * t.OUT_23  + -0.066632 * t.OUT_24  + -0.108247 * t.OUT_25  + 0.184352 * t.OUT_26  + 0.051086 * t.OUT_27  + 0.172279 * t.OUT_28  + -0.064663 * t.OUT_29  + -0.172724 * t.OUT_30  + 0.071250 * t.OUT_31  + -0.229445 * t.OUT_32  + -0.060519 * t.OUT_33  + -0.053656 * t.OUT_34  + -0.244529 * t.OUT_35  + 0.038944 * t.OUT_36  + 0.000804 * t.OUT_37  + 0.226419 * t.OUT_38  + 0.100534 * t.OUT_39  + 0.247448 * t.OUT_40  + -0.145624 * t.OUT_41  + 0.060392 * t.OUT_42  + -0.025474 * t.OUT_43  + -0.095881 * t.OUT_44  + 0.002593 * t.OUT_45  + -0.139527 * t.OUT_46  + -0.036811 * t.OUT_47  + 0.046117 * t.OUT_48  + -0.107890 * t.OUT_49  + -0.171875 * t.OUT_50  + 0.023713 * t.OUT_51  + -0.013504 * t.OUT_52  + -0.082205 * t.OUT_53  + 0.079981 * t.OUT_54  + 0.219348 * t.OUT_55  + 0.088380 * t.OUT_56  + 0.193711 * t.OUT_57  + 0.172051 * t.OUT_58  + -0.259567 * t.OUT_59  + 0.111131 * t.OUT_60  + -0.176515 * t.OUT_61  + -0.192262 * t.OUT_62  + -0.009541 * t.OUT_63  + -0.016807 * t.OUT_64  + 0.141764 * t.OUT_65  + 0.000149 * t.OUT_66  + 0.236485 * t.OUT_67  + 0.056500 * t.OUT_68  + -0.106328 * t.OUT_69  + 0.016176 * t.OUT_70  + 0.176973 * t.OUT_71  + 0.023634 * t.OUT_72  + -0.192190 * t.OUT_73  + -0.020605 * t.OUT_74  + -0.194531 * t.OUT_75  + -0.005012 * t.OUT_76  + 0.128833 * t.OUT_77  + 0.184041 * t.OUT_78  + -0.166552 * t.OUT_79  + -0.206924 * t.OUT_80  + 0.181811 * t.OUT_81  + -0.230597 * t.OUT_82  + -0.042421 * t.OUT_83  + -0.090720 * t.OUT_84  + -0.055705 * t.OUT_85  + 0.055505 * t.OUT_86  + 0.221533 * t.OUT_87  + -0.170924 * t.OUT_88  + -0.176583 * t.OUT_89  + 0.220922 * t.OUT_90  + 0.085938 * t.OUT_91  + -0.138945 * t.OUT_92  + -0.241256 * t.OUT_93  + 0.224733 * t.OUT_94  + 0.208091 * t.OUT_95  + -0.006955 * t.OUT_96  + 0.156779 * t.OUT_97  + -0.151516 * t.OUT_98  + 0.219980 * t.OUT_99 AS OUT_2,
    0.237126 + -0.022607 * t.OUT_0  + -0.011762 * t.OUT_1  + -0.067142 * t.OUT_2  + 0.057598 * t.OUT_3  + -0.207100 * t.OUT_4  + -0.015816 * t.OUT_5  + 0.219375 * t.OUT_6  + 0.037060 * t.OUT_7  + 0.133242 * t.OUT_8  + 0.159629 * t.OUT_9  + 0.222133 * t.OUT_10  + 0.115698 * t.OUT_11  + -0.185168 * t.OUT_12  + 0.079394 * t.OUT_13  + 0.125030 * t.OUT_14  + 0.159756 * t.OUT_15  + -0.205678 * t.OUT_16  + -0.165501 * t.OUT_17  + 0.062926 * t.OUT_18  + -0.106108 * t.OUT_19  + 0.001306 * t.OUT_20  + -0.014012 * t.OUT_21  + 0.247184 * t.OUT_22  + -0.225914 * t.OUT_23  + -0.066760 * t.OUT_24  + 0.162462 * t.OUT_25  + 0.166711 * t.OUT_26  + 0.160757 * t.OUT_27  + 0.193656 * t.OUT_28  + -0.149581 * t.OUT_29  + 0.047437 * t.OUT_30  + -0.100631 * t.OUT_31  + 0.174320 * t.OUT_32  + -0.150332 * t.OUT_33  + -0.046216 * t.OUT_34  + 0.026793 * t.OUT_35  + 0.082256 * t.OUT_36  + -0.135504 * t.OUT_37  + -0.069607 * t.OUT_38  + -0.231869 * t.OUT_39  + 0.214430 * t.OUT_40  + 0.144002 * t.OUT_41  + -0.101142 * t.OUT_42  + -0.137222 * t.OUT_43  + -0.002719 * t.OUT_44  + 0.187126 * t.OUT_45  + -0.056508 * t.OUT_46  + -0.092514 * t.OUT_47  + 0.164792 * t.OUT_48  + -0.149521 * t.OUT_49  + 0.120234 * t.OUT_50  + 0.125411 * t.OUT_51  + 0.169889 * t.OUT_52  + -0.237215 * t.OUT_53  + -0.055684 * t.OUT_54  + -0.116798 * t.OUT_55  + 0.133893 * t.OUT_56  + 0.150929 * t.OUT_57  + 0.041962 * t.OUT_58  + -0.251899 * t.OUT_59  + 0.163793 * t.OUT_60  + -0.157338 * t.OUT_61  + -0.050406 * t.OUT_62  + -0.008026 * t.OUT_63  + 0.159577 * t.OUT_64  + 0.195616 * t.OUT_65  + -0.147056 * t.OUT_66  + 0.101571 * t.OUT_67  + 0.157612 * t.OUT_68  + 0.188576 * t.OUT_69  + 0.074471 * t.OUT_70  + -0.202412 * t.OUT_71  + 0.218947 * t.OUT_72  + 0.066389 * t.OUT_73  + -0.021599 * t.OUT_74  + -0.052423 * t.OUT_75  + -0.103538 * t.OUT_76  + -0.100723 * t.OUT_77  + -0.081520 * t.OUT_78  + 0.084829 * t.OUT_79  + -0.147725 * t.OUT_80  + 0.130017 * t.OUT_81  + 0.087188 * t.OUT_82  + -0.006140 * t.OUT_83  + -0.043951 * t.OUT_84  + -0.073444 * t.OUT_85  + -0.140542 * t.OUT_86  + -0.006430 * t.OUT_87  + 0.120833 * t.OUT_88  + 0.030278 * t.OUT_89  + -0.171502 * t.OUT_90  + -0.122072 * t.OUT_91  + -0.151128 * t.OUT_92  + 0.197620 * t.OUT_93  + 0.032776 * t.OUT_94  + -0.124022 * t.OUT_95  + 0.143627 * t.OUT_96  + 0.106462 * t.OUT_97  + 0.161862 * t.OUT_98  + -0.161243 * t.OUT_99 AS OUT_3
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
    -0.030649 + -0.344450 * t.OUT_0  + 0.118255 * t.OUT_1  + 0.724909 * t.OUT_2  + -0.323305 * t.OUT_3 AS OUT_0,
    -0.687178 + -0.009215 * t.OUT_0  + -0.617875 * t.OUT_1  + 0.434382 * t.OUT_2  + -0.020177 * t.OUT_3 AS OUT_1,
    0.528967 + 0.693763 * t.OUT_0  + -0.307950 * t.OUT_1  + -0.382737 * t.OUT_2  + -0.624241 * t.OUT_3 AS OUT_2,
    -0.664220 + 0.566034 * t.OUT_0  + -0.632590 * t.OUT_1  + 0.020686 * t.OUT_2  + -0.107275 * t.OUT_3 AS OUT_3,
    -0.032694 + 0.534453 * t.OUT_0  + -0.128803 * t.OUT_1  + 0.429319 * t.OUT_2  + -0.176596 * t.OUT_3 AS OUT_4,
    -0.032648 + -0.137007 * t.OUT_0  + -0.192648 * t.OUT_1  + -0.608644 * t.OUT_2  + 0.338561 * t.OUT_3 AS OUT_5,
    0.293354 + -0.308620 * t.OUT_0  + -0.046736 * t.OUT_1  + -0.361482 * t.OUT_2  + -0.107695 * t.OUT_3 AS OUT_6,
    -0.673528 + -0.275743 * t.OUT_0  + -0.090387 * t.OUT_1  + 0.075947 * t.OUT_2  + 0.505042 * t.OUT_3 AS OUT_7
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
    0.612715 + -0.197586 * t.OUT_0  + 0.603714 * t.OUT_1  + 0.404994 * t.OUT_2  + 0.064611 * t.OUT_3  + -0.294682 * t.OUT_4  + 0.534231 * t.OUT_5  + -0.275074 * t.OUT_6  + -0.035878 * t.OUT_7 AS OUT_0,
    -0.574246 + 0.513298 * t.OUT_0  + 0.585272 * t.OUT_1  + 0.096048 * t.OUT_2  + -0.194039 * t.OUT_3  + -0.428485 * t.OUT_4  + -0.007913 * t.OUT_5  + 0.552646 * t.OUT_6  + 0.409092 * t.OUT_7 AS OUT_1,
    -0.364643 + 0.362904 * t.OUT_0  + -0.272169 * t.OUT_1  + 0.090075 * t.OUT_2  + -0.413525 * t.OUT_3  + -0.303332 * t.OUT_4  + 0.146345 * t.OUT_5  + 0.651237 * t.OUT_6  + 0.202362 * t.OUT_7 AS OUT_2,
    0.631139 + -0.344288 * t.OUT_0  + 0.434126 * t.OUT_1  + -0.073408 * t.OUT_2  + 0.092127 * t.OUT_3  + -0.342266 * t.OUT_4  + 0.039967 * t.OUT_5  + 0.268112 * t.OUT_6  + -0.134679 * t.OUT_7 AS OUT_3,
    -0.394736 + 0.519182 * t.OUT_0  + 0.559175 * t.OUT_1  + -0.092856 * t.OUT_2  + 0.632200 * t.OUT_3  + -0.094014 * t.OUT_4  + 0.057084 * t.OUT_5  + 0.112850 * t.OUT_6  + -0.123971 * t.OUT_7 AS OUT_4,
    0.617169 + 0.111996 * t.OUT_0  + 0.510597 * t.OUT_1  + 0.052776 * t.OUT_2  + -0.177257 * t.OUT_3  + -0.188202 * t.OUT_4  + 0.012545 * t.OUT_5  + 0.187282 * t.OUT_6  + -0.625776 * t.OUT_7 AS OUT_5
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
    -0.688898 + -0.491974 * t.OUT_0  + 0.858790 * t.OUT_1  + 0.314965 * t.OUT_2  + 0.804184 * t.OUT_3  + -0.640595 * t.OUT_4  + 0.569567 * t.OUT_5 AS OUT_0
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