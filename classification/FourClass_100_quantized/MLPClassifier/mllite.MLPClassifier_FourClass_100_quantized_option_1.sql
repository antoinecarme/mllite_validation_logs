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
    -0.128119 + -0.030019 * t.OUT_0  + 0.008822 * t.OUT_1  + 0.197014 * t.OUT_2  + 0.206470 * t.OUT_3  + 0.099910 * t.OUT_4  + 0.102700 * t.OUT_5  + -0.009394 * t.OUT_6  + -0.019073 * t.OUT_7  + -0.073106 * t.OUT_8  + -0.186365 * t.OUT_9  + -0.200329 * t.OUT_10  + -0.141632 * t.OUT_11  + 0.170739 * t.OUT_12  + 0.147158 * t.OUT_13  + 0.086598 * t.OUT_14  + -0.210102 * t.OUT_15  + -0.231998 * t.OUT_16  + 0.213215 * t.OUT_17  + -0.012001 * t.OUT_18  + 0.138998 * t.OUT_19  + 0.085089 * t.OUT_20  + -0.233007 * t.OUT_21  + -0.159707 * t.OUT_22  + 0.004023 * t.OUT_23  + 0.095372 * t.OUT_24  + 0.117531 * t.OUT_25  + 0.149405 * t.OUT_26  + -0.065494 * t.OUT_27  + 0.106903 * t.OUT_28  + 0.018393 * t.OUT_29  + 0.149142 * t.OUT_30  + -0.111738 * t.OUT_31  + 0.113312 * t.OUT_32  + 0.231387 * t.OUT_33  + -0.197465 * t.OUT_34  + -0.178421 * t.OUT_35  + -0.169670 * t.OUT_36  + -0.043896 * t.OUT_37  + -0.052875 * t.OUT_38  + -0.176543 * t.OUT_39  + 0.075790 * t.OUT_40  + -0.112540 * t.OUT_41  + -0.229285 * t.OUT_42  + 0.120019 * t.OUT_43  + 0.214515 * t.OUT_44  + 0.130230 * t.OUT_45  + 0.059023 * t.OUT_46  + 0.188844 * t.OUT_47  + 0.158079 * t.OUT_48  + -0.183657 * t.OUT_49  + -0.120239 * t.OUT_50  + 0.218036 * t.OUT_51  + 0.020754 * t.OUT_52  + 0.101254 * t.OUT_53  + -0.113848 * t.OUT_54  + -0.121320 * t.OUT_55  + -0.066721 * t.OUT_56  + -0.173543 * t.OUT_57  + 0.036323 * t.OUT_58  + -0.109962 * t.OUT_59  + -0.025395 * t.OUT_60  + 0.035181 * t.OUT_61  + 0.048338 * t.OUT_62  + 0.128669 * t.OUT_63  + 0.131855 * t.OUT_64  + 0.056624 * t.OUT_65  + 0.030201 * t.OUT_66  + 0.085735 * t.OUT_67  + 0.219821 * t.OUT_68  + 0.120537 * t.OUT_69  + 0.102177 * t.OUT_70  + 0.144295 * t.OUT_71  + 0.067782 * t.OUT_72  + -0.108547 * t.OUT_73  + -0.236193 * t.OUT_74  + 0.115331 * t.OUT_75  + -0.149283 * t.OUT_76  + -0.083197 * t.OUT_77  + 0.137084 * t.OUT_78  + 0.050295 * t.OUT_79  + -0.087096 * t.OUT_80  + 0.097314 * t.OUT_81  + -0.154719 * t.OUT_82  + 0.049874 * t.OUT_83  + 0.207652 * t.OUT_84  + 0.000938 * t.OUT_85  + -0.056898 * t.OUT_86  + -0.050737 * t.OUT_87  + -0.215789 * t.OUT_88  + -0.127357 * t.OUT_89  + -0.178947 * t.OUT_90  + 0.234056 * t.OUT_91  + 0.110387 * t.OUT_92  + -0.226474 * t.OUT_93  + -0.219999 * t.OUT_94  + -0.053046 * t.OUT_95  + -0.139570 * t.OUT_96  + -0.015843 * t.OUT_97  + -0.136416 * t.OUT_98  + -0.182393 * t.OUT_99 AS OUT_0,
    0.052460 + 0.158203 * t.OUT_0  + -0.150273 * t.OUT_1  + 0.091239 * t.OUT_2  + -0.199668 * t.OUT_3  + -0.095761 * t.OUT_4  + -0.220259 * t.OUT_5  + -0.167810 * t.OUT_6  + 0.026439 * t.OUT_7  + 0.132055 * t.OUT_8  + 0.185827 * t.OUT_9  + 0.150796 * t.OUT_10  + -0.162785 * t.OUT_11  + 0.223725 * t.OUT_12  + 0.224549 * t.OUT_13  + 0.030993 * t.OUT_14  + 0.054591 * t.OUT_15  + 0.181280 * t.OUT_16  + 0.251886 * t.OUT_17  + 0.253048 * t.OUT_18  + 0.174797 * t.OUT_19  + 0.194312 * t.OUT_20  + 0.131060 * t.OUT_21  + -0.192586 * t.OUT_22  + -0.047488 * t.OUT_23  + -0.022996 * t.OUT_24  + -0.146998 * t.OUT_25  + 0.242893 * t.OUT_26  + 0.071444 * t.OUT_27  + 0.036081 * t.OUT_28  + -0.065300 * t.OUT_29  + 0.133195 * t.OUT_30  + 0.016881 * t.OUT_31  + -0.216848 * t.OUT_32  + -0.140003 * t.OUT_33  + -0.189983 * t.OUT_34  + -0.142205 * t.OUT_35  + -0.131889 * t.OUT_36  + 0.088948 * t.OUT_37  + 0.197589 * t.OUT_38  + -0.095318 * t.OUT_39  + -0.110830 * t.OUT_40  + 0.138607 * t.OUT_41  + 0.151479 * t.OUT_42  + 0.138276 * t.OUT_43  + 0.219225 * t.OUT_44  + 0.063154 * t.OUT_45  + 0.139777 * t.OUT_46  + 0.130362 * t.OUT_47  + -0.095646 * t.OUT_48  + -0.115901 * t.OUT_49  + 0.032040 * t.OUT_50  + 0.061668 * t.OUT_51  + 0.132076 * t.OUT_52  + -0.054210 * t.OUT_53  + -0.115665 * t.OUT_54  + -0.167259 * t.OUT_55  + 0.090119 * t.OUT_56  + 0.185916 * t.OUT_57  + 0.246712 * t.OUT_58  + 0.221129 * t.OUT_59  + -0.020603 * t.OUT_60  + -0.030614 * t.OUT_61  + 0.106799 * t.OUT_62  + -0.077951 * t.OUT_63  + -0.102477 * t.OUT_64  + 0.156704 * t.OUT_65  + -0.168454 * t.OUT_66  + 0.042086 * t.OUT_67  + -0.099648 * t.OUT_68  + 0.256679 * t.OUT_69  + 0.251115 * t.OUT_70  + 0.114386 * t.OUT_71  + 0.229493 * t.OUT_72  + 0.099540 * t.OUT_73  + 0.175288 * t.OUT_74  + -0.163270 * t.OUT_75  + 0.092368 * t.OUT_76  + 0.154320 * t.OUT_77  + -0.187436 * t.OUT_78  + -0.119550 * t.OUT_79  + 0.240062 * t.OUT_80  + 0.027209 * t.OUT_81  + -0.142498 * t.OUT_82  + 0.128654 * t.OUT_83  + -0.168084 * t.OUT_84  + -0.082773 * t.OUT_85  + 0.145618 * t.OUT_86  + 0.047684 * t.OUT_87  + -0.089314 * t.OUT_88  + -0.052173 * t.OUT_89  + -0.040770 * t.OUT_90  + -0.084614 * t.OUT_91  + -0.092388 * t.OUT_92  + 0.094602 * t.OUT_93  + 0.009449 * t.OUT_94  + -0.070225 * t.OUT_95  + -0.069768 * t.OUT_96  + 0.120892 * t.OUT_97  + 0.098534 * t.OUT_98  + -0.022323 * t.OUT_99 AS OUT_1,
    0.115353 + -0.107166 * t.OUT_0  + 0.054433 * t.OUT_1  + 0.201701 * t.OUT_2  + -0.118070 * t.OUT_3  + -0.100844 * t.OUT_4  + -0.019878 * t.OUT_5  + -0.106469 * t.OUT_6  + -0.222551 * t.OUT_7  + -0.014695 * t.OUT_8  + -0.175971 * t.OUT_9  + 0.038627 * t.OUT_10  + 0.095515 * t.OUT_11  + 0.163736 * t.OUT_12  + -0.159897 * t.OUT_13  + 0.051776 * t.OUT_14  + 0.085502 * t.OUT_15  + -0.123643 * t.OUT_16  + -0.092185 * t.OUT_17  + -0.125052 * t.OUT_18  + 0.215789 * t.OUT_19  + 0.205845 * t.OUT_20  + 0.005181 * t.OUT_21  + -0.124669 * t.OUT_22  + -0.066571 * t.OUT_23  + -0.106854 * t.OUT_24  + -0.103208 * t.OUT_25  + 0.151947 * t.OUT_26  + 0.083423 * t.OUT_27  + 0.155592 * t.OUT_28  + -0.102175 * t.OUT_29  + -0.170940 * t.OUT_30  + 0.010443 * t.OUT_31  + -0.180976 * t.OUT_32  + -0.074789 * t.OUT_33  + -0.101721 * t.OUT_34  + -0.206012 * t.OUT_35  + 0.084770 * t.OUT_36  + 0.028870 * t.OUT_37  + 0.254844 * t.OUT_38  + 0.115333 * t.OUT_39  + 0.235900 * t.OUT_40  + -0.098022 * t.OUT_41  + 0.035568 * t.OUT_42  + -0.006138 * t.OUT_43  + -0.117741 * t.OUT_44  + -0.001541 * t.OUT_45  + -0.171901 * t.OUT_46  + -0.035418 * t.OUT_47  + 0.071933 * t.OUT_48  + -0.162839 * t.OUT_49  + -0.179003 * t.OUT_50  + 0.012983 * t.OUT_51  + -0.007271 * t.OUT_52  + -0.077250 * t.OUT_53  + 0.070768 * t.OUT_54  + 0.180016 * t.OUT_55  + 0.085528 * t.OUT_56  + 0.167587 * t.OUT_57  + 0.161658 * t.OUT_58  + -0.265200 * t.OUT_59  + 0.097275 * t.OUT_60  + -0.174553 * t.OUT_61  + -0.270774 * t.OUT_62  + 0.001503 * t.OUT_63  + 0.002582 * t.OUT_64  + 0.127132 * t.OUT_65  + -0.042127 * t.OUT_66  + 0.204659 * t.OUT_67  + 0.011485 * t.OUT_68  + -0.121445 * t.OUT_69  + 0.010080 * t.OUT_70  + 0.158356 * t.OUT_71  + 0.010175 * t.OUT_72  + -0.154164 * t.OUT_73  + -0.003302 * t.OUT_74  + -0.171665 * t.OUT_75  + -0.002557 * t.OUT_76  + 0.121702 * t.OUT_77  + 0.173567 * t.OUT_78  + -0.125695 * t.OUT_79  + -0.259693 * t.OUT_80  + 0.152072 * t.OUT_81  + -0.213341 * t.OUT_82  + -0.081134 * t.OUT_83  + -0.123571 * t.OUT_84  + -0.109905 * t.OUT_85  + 0.040777 * t.OUT_86  + 0.208881 * t.OUT_87  + -0.216364 * t.OUT_88  + -0.208544 * t.OUT_89  + 0.203282 * t.OUT_90  + 0.097528 * t.OUT_91  + -0.179960 * t.OUT_92  + -0.184982 * t.OUT_93  + 0.187842 * t.OUT_94  + 0.151133 * t.OUT_95  + 0.028577 * t.OUT_96  + 0.147366 * t.OUT_97  + -0.162671 * t.OUT_98  + 0.169221 * t.OUT_99 AS OUT_2,
    0.217215 + -0.035766 * t.OUT_0  + 0.008283 * t.OUT_1  + -0.064620 * t.OUT_2  + 0.104689 * t.OUT_3  + -0.167370 * t.OUT_4  + 0.004374 * t.OUT_5  + 0.164733 * t.OUT_6  + 0.001538 * t.OUT_7  + 0.071701 * t.OUT_8  + 0.167584 * t.OUT_9  + 0.206557 * t.OUT_10  + 0.069572 * t.OUT_11  + -0.150931 * t.OUT_12  + 0.097646 * t.OUT_13  + 0.140862 * t.OUT_14  + 0.122578 * t.OUT_15  + -0.213866 * t.OUT_16  + -0.185224 * t.OUT_17  + 0.069223 * t.OUT_18  + -0.140567 * t.OUT_19  + -0.012551 * t.OUT_20  + -0.039940 * t.OUT_21  + 0.210759 * t.OUT_22  + -0.203108 * t.OUT_23  + -0.072376 * t.OUT_24  + 0.119811 * t.OUT_25  + 0.121048 * t.OUT_26  + 0.111826 * t.OUT_27  + 0.170068 * t.OUT_28  + -0.108803 * t.OUT_29  + 0.078167 * t.OUT_30  + -0.095486 * t.OUT_31  + 0.188223 * t.OUT_32  + -0.188331 * t.OUT_33  + -0.033825 * t.OUT_34  + 0.046613 * t.OUT_35  + 0.040192 * t.OUT_36  + -0.167613 * t.OUT_37  + -0.019300 * t.OUT_38  + -0.200113 * t.OUT_39  + 0.235773 * t.OUT_40  + 0.181626 * t.OUT_41  + -0.138321 * t.OUT_42  + -0.116867 * t.OUT_43  + 0.013548 * t.OUT_44  + 0.207500 * t.OUT_45  + -0.068335 * t.OUT_46  + -0.036226 * t.OUT_47  + 0.194092 * t.OUT_48  + -0.124158 * t.OUT_49  + 0.135795 * t.OUT_50  + 0.080772 * t.OUT_51  + 0.138509 * t.OUT_52  + -0.253127 * t.OUT_53  + -0.040179 * t.OUT_54  + -0.126816 * t.OUT_55  + 0.110463 * t.OUT_56  + 0.174957 * t.OUT_57  + 0.060211 * t.OUT_58  + -0.202476 * t.OUT_59  + 0.223479 * t.OUT_60  + -0.138974 * t.OUT_61  + -0.007169 * t.OUT_62  + -0.025999 * t.OUT_63  + 0.147416 * t.OUT_64  + 0.190087 * t.OUT_65  + -0.126777 * t.OUT_66  + 0.149568 * t.OUT_67  + 0.134520 * t.OUT_68  + 0.128022 * t.OUT_69  + 0.106189 * t.OUT_70  + -0.198585 * t.OUT_71  + 0.189516 * t.OUT_72  + 0.071035 * t.OUT_73  + -0.021004 * t.OUT_74  + -0.116035 * t.OUT_75  + -0.051447 * t.OUT_76  + -0.086696 * t.OUT_77  + -0.063089 * t.OUT_78  + 0.038006 * t.OUT_79  + -0.129076 * t.OUT_80  + 0.154063 * t.OUT_81  + 0.060076 * t.OUT_82  + 0.006913 * t.OUT_83  + -0.050379 * t.OUT_84  + -0.059695 * t.OUT_85  + -0.122414 * t.OUT_86  + 0.000560 * t.OUT_87  + 0.120164 * t.OUT_88  + 0.056909 * t.OUT_89  + -0.150840 * t.OUT_90  + -0.189970 * t.OUT_91  + -0.114434 * t.OUT_92  + 0.191288 * t.OUT_93  + -0.002846 * t.OUT_94  + -0.107839 * t.OUT_95  + 0.152755 * t.OUT_96  + 0.077924 * t.OUT_97  + 0.155259 * t.OUT_98  + -0.144477 * t.OUT_99 AS OUT_3
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
    -0.116536 + -0.374091 * t.OUT_0  + 0.049703 * t.OUT_1  + 0.693066 * t.OUT_2  + -0.357805 * t.OUT_3 AS OUT_0,
    -0.671529 + 0.004555 * t.OUT_0  + -0.609873 * t.OUT_1  + 0.451917 * t.OUT_2  + -0.005594 * t.OUT_3 AS OUT_1,
    0.536036 + 0.684261 * t.OUT_0  + -0.291604 * t.OUT_1  + -0.370184 * t.OUT_2  + -0.673569 * t.OUT_3 AS OUT_2,
    -0.656476 + 0.579628 * t.OUT_0  + -0.659309 * t.OUT_1  + -0.001035 * t.OUT_2  + -0.147010 * t.OUT_3 AS OUT_3,
    -0.012605 + 0.553495 * t.OUT_0  + -0.136556 * t.OUT_1  + 0.435400 * t.OUT_2  + -0.161058 * t.OUT_3 AS OUT_4,
    -0.053478 + -0.174503 * t.OUT_0  + -0.261621 * t.OUT_1  + -0.662030 * t.OUT_2  + 0.274823 * t.OUT_3 AS OUT_5,
    0.381998 + -0.362541 * t.OUT_0  + 0.040706 * t.OUT_1  + -0.313543 * t.OUT_2  + -0.112643 * t.OUT_3 AS OUT_6,
    -0.705895 + -0.277960 * t.OUT_0  + -0.112267 * t.OUT_1  + 0.010197 * t.OUT_2  + 0.463428 * t.OUT_3 AS OUT_7
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
    0.560676 + -0.305532 * t.OUT_0  + 0.563735 * t.OUT_1  + 0.415547 * t.OUT_2  + 0.057653 * t.OUT_3  + -0.344646 * t.OUT_4  + 0.496949 * t.OUT_5  + -0.410194 * t.OUT_6  + -0.111610 * t.OUT_7 AS OUT_0,
    -0.600591 + 0.571460 * t.OUT_0  + 0.556346 * t.OUT_1  + 0.096048 * t.OUT_2  + -0.200050 * t.OUT_3  + -0.454966 * t.OUT_4  + -0.035472 * t.OUT_5  + 0.511542 * t.OUT_6  + 0.371010 * t.OUT_7 AS OUT_1,
    -0.358139 + 0.308256 * t.OUT_0  + -0.283060 * t.OUT_1  + 0.090075 * t.OUT_2  + -0.411199 * t.OUT_3  + -0.306204 * t.OUT_4  + 0.149450 * t.OUT_5  + 0.508785 * t.OUT_6  + 0.228437 * t.OUT_7 AS OUT_2,
    0.712959 + -0.220106 * t.OUT_0  + 0.455681 * t.OUT_1  + -0.052470 * t.OUT_2  + 0.093359 * t.OUT_3  + -0.228752 * t.OUT_4  + 0.020402 * t.OUT_5  + 0.456807 * t.OUT_6  + -0.138633 * t.OUT_7 AS OUT_3,
    -0.484423 + 0.417860 * t.OUT_0  + 0.513978 * t.OUT_1  + -0.066416 * t.OUT_2  + 0.649012 * t.OUT_3  + -0.136340 * t.OUT_4  + 0.058204 * t.OUT_5  + 0.052229 * t.OUT_6  + -0.117158 * t.OUT_7 AS OUT_4,
    0.511802 + 0.057197 * t.OUT_0  + 0.532721 * t.OUT_1  + 0.079988 * t.OUT_2  + -0.182614 * t.OUT_3  + -0.155387 * t.OUT_4  + 0.015040 * t.OUT_5  + 0.014917 * t.OUT_6  + -0.658410 * t.OUT_7 AS OUT_5
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
    -0.080635 + -0.374972 * t.OUT_0  + -0.457468 * t.OUT_1  + -0.411203 * t.OUT_2  + 0.401113 * t.OUT_3  + -0.270165 * t.OUT_4  + 0.299253 * t.OUT_5 AS OUT_0,
    -0.282843 + 0.748258 * t.OUT_0  + 0.416055 * t.OUT_1  + -0.564816 * t.OUT_2  + 0.580495 * t.OUT_3  + -0.605354 * t.OUT_4  + -0.532159 * t.OUT_5 AS OUT_1,
    0.386342 + 0.201012 * t.OUT_0  + -0.590547 * t.OUT_1  + -0.465503 * t.OUT_2  + -0.316234 * t.OUT_3  + -0.423895 * t.OUT_4  + 0.303553 * t.OUT_5 AS OUT_2,
    -0.650512 + 0.603960 * t.OUT_0  + 0.730204 * t.OUT_1  + -0.177719 * t.OUT_2  + 0.567444 * t.OUT_3  + -0.101689 * t.OUT_4  + 0.349622 * t.OUT_5 AS OUT_3
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