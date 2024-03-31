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
    -0.136783 + -0.031463 * t.OUT_0  + 0.020622 * t.OUT_1  + 0.216687 * t.OUT_2  + 0.218835 * t.OUT_3  + 0.122926 * t.OUT_4  + 0.130448 * t.OUT_5  + -0.072628 * t.OUT_6  + -0.040543 * t.OUT_7  + -0.099153 * t.OUT_8  + -0.177907 * t.OUT_9  + -0.151459 * t.OUT_10  + -0.129464 * t.OUT_11  + 0.163245 * t.OUT_12  + 0.113504 * t.OUT_13  + 0.097342 * t.OUT_14  + -0.220826 * t.OUT_15  + -0.208402 * t.OUT_16  + 0.252860 * t.OUT_17  + -0.035848 * t.OUT_18  + 0.128919 * t.OUT_19  + 0.128306 * t.OUT_20  + -0.187008 * t.OUT_21  + -0.154242 * t.OUT_22  + 0.013856 * t.OUT_23  + 0.064701 * t.OUT_24  + 0.123719 * t.OUT_25  + 0.165192 * t.OUT_26  + -0.087052 * t.OUT_27  + 0.124922 * t.OUT_28  + 0.026326 * t.OUT_29  + 0.097672 * t.OUT_30  + -0.149206 * t.OUT_31  + 0.130483 * t.OUT_32  + 0.242410 * t.OUT_33  + -0.173398 * t.OUT_34  + -0.171256 * t.OUT_35  + -0.189648 * t.OUT_36  + -0.022551 * t.OUT_37  + -0.021172 * t.OUT_38  + -0.219644 * t.OUT_39  + 0.105327 * t.OUT_40  + -0.139107 * t.OUT_41  + -0.223808 * t.OUT_42  + 0.085729 * t.OUT_43  + 0.197549 * t.OUT_44  + 0.155137 * t.OUT_45  + 0.060817 * t.OUT_46  + 0.180579 * t.OUT_47  + 0.146678 * t.OUT_48  + -0.235678 * t.OUT_49  + -0.074080 * t.OUT_50  + 0.250307 * t.OUT_51  + 0.007516 * t.OUT_52  + 0.135702 * t.OUT_53  + -0.120069 * t.OUT_54  + -0.082075 * t.OUT_55  + -0.031153 * t.OUT_56  + -0.232276 * t.OUT_57  + 0.025530 * t.OUT_58  + -0.093591 * t.OUT_59  + -0.015045 * t.OUT_60  + 0.019473 * t.OUT_61  + 0.077186 * t.OUT_62  + 0.172871 * t.OUT_63  + 0.096130 * t.OUT_64  + 0.056666 * t.OUT_65  + 0.056087 * t.OUT_66  + 0.061330 * t.OUT_67  + 0.225372 * t.OUT_68  + 0.076461 * t.OUT_69  + 0.093780 * t.OUT_70  + 0.124588 * t.OUT_71  + 0.115335 * t.OUT_72  + -0.062096 * t.OUT_73  + -0.215737 * t.OUT_74  + 0.086939 * t.OUT_75  + -0.185870 * t.OUT_76  + -0.081918 * t.OUT_77  + 0.095553 * t.OUT_78  + 0.047894 * t.OUT_79  + -0.096232 * t.OUT_80  + 0.119743 * t.OUT_81  + -0.125251 * t.OUT_82  + 0.040498 * t.OUT_83  + 0.221773 * t.OUT_84  + 0.032488 * t.OUT_85  + -0.040750 * t.OUT_86  + -0.051811 * t.OUT_87  + -0.202169 * t.OUT_88  + -0.087132 * t.OUT_89  + -0.187620 * t.OUT_90  + 0.243971 * t.OUT_91  + 0.127397 * t.OUT_92  + -0.249699 * t.OUT_93  + -0.253408 * t.OUT_94  + -0.036025 * t.OUT_95  + -0.127621 * t.OUT_96  + -0.000648 * t.OUT_97  + -0.130955 * t.OUT_98  + -0.152245 * t.OUT_99 AS OUT_0,
    0.048515 + 0.093531 * t.OUT_0  + -0.166277 * t.OUT_1  + 0.026066 * t.OUT_2  + -0.235860 * t.OUT_3  + -0.122765 * t.OUT_4  + -0.220335 * t.OUT_5  + -0.232531 * t.OUT_6  + -0.014265 * t.OUT_7  + 0.071249 * t.OUT_8  + 0.235291 * t.OUT_9  + 0.162609 * t.OUT_10  + -0.205045 * t.OUT_11  + 0.187566 * t.OUT_12  + 0.207849 * t.OUT_13  + -0.011802 * t.OUT_14  + 0.050665 * t.OUT_15  + 0.178308 * t.OUT_16  + 0.201333 * t.OUT_17  + 0.244082 * t.OUT_18  + 0.174249 * t.OUT_19  + 0.176361 * t.OUT_20  + 0.150418 * t.OUT_21  + -0.208028 * t.OUT_22  + -0.066386 * t.OUT_23  + -0.103348 * t.OUT_24  + -0.191835 * t.OUT_25  + 0.217040 * t.OUT_26  + 0.030662 * t.OUT_27  + 0.005417 * t.OUT_28  + -0.112157 * t.OUT_29  + 0.137609 * t.OUT_30  + 0.007403 * t.OUT_31  + -0.249342 * t.OUT_32  + -0.178237 * t.OUT_33  + -0.206952 * t.OUT_34  + -0.161161 * t.OUT_35  + -0.169469 * t.OUT_36  + 0.078393 * t.OUT_37  + 0.201921 * t.OUT_38  + -0.142875 * t.OUT_39  + -0.158045 * t.OUT_40  + 0.113852 * t.OUT_41  + 0.169689 * t.OUT_42  + 0.083680 * t.OUT_43  + 0.185774 * t.OUT_44  + 0.029955 * t.OUT_45  + 0.115593 * t.OUT_46  + 0.124826 * t.OUT_47  + -0.092797 * t.OUT_48  + -0.155643 * t.OUT_49  + 0.024972 * t.OUT_50  + 0.013445 * t.OUT_51  + 0.110575 * t.OUT_52  + -0.120249 * t.OUT_53  + -0.163697 * t.OUT_54  + -0.173332 * t.OUT_55  + 0.086958 * t.OUT_56  + 0.205545 * t.OUT_57  + 0.260722 * t.OUT_58  + 0.237290 * t.OUT_59  + -0.029900 * t.OUT_60  + -0.041338 * t.OUT_61  + 0.066529 * t.OUT_62  + -0.117754 * t.OUT_63  + -0.144666 * t.OUT_64  + 0.163084 * t.OUT_65  + -0.144643 * t.OUT_66  + 0.029928 * t.OUT_67  + -0.119006 * t.OUT_68  + 0.217234 * t.OUT_69  + 0.248516 * t.OUT_70  + 0.094775 * t.OUT_71  + 0.184879 * t.OUT_72  + 0.110302 * t.OUT_73  + 0.127213 * t.OUT_74  + -0.208796 * t.OUT_75  + 0.126702 * t.OUT_76  + 0.144191 * t.OUT_77  + -0.229995 * t.OUT_78  + -0.160143 * t.OUT_79  + 0.193784 * t.OUT_80  + 0.009969 * t.OUT_81  + -0.189139 * t.OUT_82  + 0.098097 * t.OUT_83  + -0.148746 * t.OUT_84  + -0.109829 * t.OUT_85  + 0.143828 * t.OUT_86  + 0.045850 * t.OUT_87  + -0.145885 * t.OUT_88  + -0.078674 * t.OUT_89  + -0.078735 * t.OUT_90  + -0.120118 * t.OUT_91  + -0.101255 * t.OUT_92  + 0.079836 * t.OUT_93  + -0.030243 * t.OUT_94  + -0.057446 * t.OUT_95  + -0.069296 * t.OUT_96  + 0.045531 * t.OUT_97  + 0.125979 * t.OUT_98  + -0.064374 * t.OUT_99 AS OUT_1,
    0.117633 + -0.125326 * t.OUT_0  + 0.060120 * t.OUT_1  + 0.214086 * t.OUT_2  + -0.129364 * t.OUT_3  + -0.147447 * t.OUT_4  + -0.008504 * t.OUT_5  + -0.145937 * t.OUT_6  + -0.188808 * t.OUT_7  + -0.032085 * t.OUT_8  + -0.188395 * t.OUT_9  + 0.086829 * t.OUT_10  + 0.080936 * t.OUT_11  + 0.206537 * t.OUT_12  + -0.165008 * t.OUT_13  + 0.051335 * t.OUT_14  + 0.076590 * t.OUT_15  + -0.151509 * t.OUT_16  + -0.023648 * t.OUT_17  + -0.194023 * t.OUT_18  + 0.226964 * t.OUT_19  + 0.200486 * t.OUT_20  + 0.033330 * t.OUT_21  + -0.061024 * t.OUT_22  + -0.076935 * t.OUT_23  + -0.070945 * t.OUT_24  + -0.064199 * t.OUT_25  + 0.202548 * t.OUT_26  + 0.095440 * t.OUT_27  + 0.144165 * t.OUT_28  + -0.096769 * t.OUT_29  + -0.151611 * t.OUT_30  + 0.071040 * t.OUT_31  + -0.242564 * t.OUT_32  + -0.114197 * t.OUT_33  + -0.085256 * t.OUT_34  + -0.231790 * t.OUT_35  + 0.062064 * t.OUT_36  + 0.056849 * t.OUT_37  + 0.236617 * t.OUT_38  + 0.071629 * t.OUT_39  + 0.197558 * t.OUT_40  + -0.123191 * t.OUT_41  + 0.042979 * t.OUT_42  + -0.019022 * t.OUT_43  + -0.124994 * t.OUT_44  + -0.031047 * t.OUT_45  + -0.151051 * t.OUT_46  + -0.059439 * t.OUT_47  + 0.020894 * t.OUT_48  + -0.159553 * t.OUT_49  + -0.187855 * t.OUT_50  + 0.027150 * t.OUT_51  + -0.007688 * t.OUT_52  + -0.095527 * t.OUT_53  + 0.040330 * t.OUT_54  + 0.241514 * t.OUT_55  + 0.135903 * t.OUT_56  + 0.244216 * t.OUT_57  + 0.177606 * t.OUT_58  + -0.236699 * t.OUT_59  + 0.103134 * t.OUT_60  + -0.152774 * t.OUT_61  + -0.237184 * t.OUT_62  + 0.023279 * t.OUT_63  + -0.004223 * t.OUT_64  + 0.144866 * t.OUT_65  + 0.002253 * t.OUT_66  + 0.206273 * t.OUT_67  + 0.077052 * t.OUT_68  + -0.148589 * t.OUT_69  + 0.005105 * t.OUT_70  + 0.116511 * t.OUT_71  + 0.066703 * t.OUT_72  + -0.186564 * t.OUT_73  + -0.002969 * t.OUT_74  + -0.182478 * t.OUT_75  + -0.024503 * t.OUT_76  + 0.105628 * t.OUT_77  + 0.172016 * t.OUT_78  + -0.152981 * t.OUT_79  + -0.245963 * t.OUT_80  + 0.145146 * t.OUT_81  + -0.189231 * t.OUT_82  + -0.054520 * t.OUT_83  + -0.054925 * t.OUT_84  + -0.061907 * t.OUT_85  + 0.037281 * t.OUT_86  + 0.192982 * t.OUT_87  + -0.182244 * t.OUT_88  + -0.158346 * t.OUT_89  + 0.192077 * t.OUT_90  + 0.119140 * t.OUT_91  + -0.174627 * t.OUT_92  + -0.201664 * t.OUT_93  + 0.170303 * t.OUT_94  + 0.210123 * t.OUT_95  + 0.022879 * t.OUT_96  + 0.145305 * t.OUT_97  + -0.126293 * t.OUT_98  + 0.225161 * t.OUT_99 AS OUT_2,
    0.235696 + 0.012960 * t.OUT_0  + 0.032607 * t.OUT_1  + -0.062763 * t.OUT_2  + 0.112293 * t.OUT_3  + -0.159559 * t.OUT_4  + -0.016091 * t.OUT_5  + 0.223807 * t.OUT_6  + -0.012298 * t.OUT_7  + 0.110568 * t.OUT_8  + 0.101731 * t.OUT_9  + 0.231509 * t.OUT_10  + 0.107124 * t.OUT_11  + -0.181335 * t.OUT_12  + 0.134840 * t.OUT_13  + 0.113544 * t.OUT_14  + 0.162474 * t.OUT_15  + -0.193102 * t.OUT_16  + -0.213857 * t.OUT_17  + 0.068819 * t.OUT_18  + -0.150253 * t.OUT_19  + -0.050488 * t.OUT_20  + -0.058801 * t.OUT_21  + 0.187513 * t.OUT_22  + -0.187192 * t.OUT_23  + -0.074386 * t.OUT_24  + 0.111270 * t.OUT_25  + 0.161682 * t.OUT_26  + 0.133246 * t.OUT_27  + 0.170908 * t.OUT_28  + -0.100075 * t.OUT_29  + 0.050745 * t.OUT_30  + -0.111085 * t.OUT_31  + 0.207816 * t.OUT_32  + -0.205947 * t.OUT_33  + -0.055447 * t.OUT_34  + 0.072426 * t.OUT_35  + 0.056229 * t.OUT_36  + -0.139803 * t.OUT_37  + -0.012168 * t.OUT_38  + -0.168255 * t.OUT_39  + 0.260142 * t.OUT_40  + 0.202859 * t.OUT_41  + -0.113381 * t.OUT_42  + -0.120958 * t.OUT_43  + 0.052333 * t.OUT_44  + 0.203122 * t.OUT_45  + -0.060204 * t.OUT_46  + -0.086010 * t.OUT_47  + 0.187536 * t.OUT_48  + -0.094987 * t.OUT_49  + 0.119726 * t.OUT_50  + 0.069835 * t.OUT_51  + 0.171779 * t.OUT_52  + -0.177411 * t.OUT_53  + -0.051976 * t.OUT_54  + -0.120366 * t.OUT_55  + 0.127521 * t.OUT_56  + 0.152276 * t.OUT_57  + 0.070525 * t.OUT_58  + -0.206446 * t.OUT_59  + 0.177962 * t.OUT_60  + -0.115816 * t.OUT_61  + -0.005232 * t.OUT_62  + -0.067392 * t.OUT_63  + 0.142204 * t.OUT_64  + 0.196621 * t.OUT_65  + -0.194432 * t.OUT_66  + 0.150495 * t.OUT_67  + 0.113617 * t.OUT_68  + 0.137001 * t.OUT_69  + 0.072207 * t.OUT_70  + -0.219478 * t.OUT_71  + 0.211671 * t.OUT_72  + 0.080503 * t.OUT_73  + -0.006161 * t.OUT_74  + -0.093548 * t.OUT_75  + -0.049632 * t.OUT_76  + -0.070274 * t.OUT_77  + -0.024198 * t.OUT_78  + 0.080117 * t.OUT_79  + -0.090861 * t.OUT_80  + 0.178049 * t.OUT_81  + 0.085865 * t.OUT_82  + 0.013936 * t.OUT_83  + -0.095857 * t.OUT_84  + -0.058658 * t.OUT_85  + -0.088936 * t.OUT_86  + 0.042644 * t.OUT_87  + 0.104027 * t.OUT_88  + 0.008009 * t.OUT_89  + -0.154718 * t.OUT_90  + -0.178094 * t.OUT_91  + -0.149463 * t.OUT_92  + 0.178669 * t.OUT_93  + -0.022002 * t.OUT_94  + -0.147974 * t.OUT_95  + 0.171407 * t.OUT_96  + 0.154983 * t.OUT_97  + 0.103930 * t.OUT_98  + -0.172408 * t.OUT_99 AS OUT_3
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
    -0.021079 + -0.349356 * t.OUT_0  + 0.162948 * t.OUT_1  + 0.722651 * t.OUT_2  + -0.335736 * t.OUT_3 AS OUT_0,
    -0.678599 + 0.024034 * t.OUT_0  + -0.600756 * t.OUT_1  + 0.445167 * t.OUT_2  + -0.016654 * t.OUT_3 AS OUT_1,
    0.547020 + 0.735263 * t.OUT_0  + -0.267840 * t.OUT_1  + -0.349793 * t.OUT_2  + -0.619086 * t.OUT_3 AS OUT_2,
    -0.654493 + 0.577737 * t.OUT_0  + -0.640008 * t.OUT_1  + -0.030429 * t.OUT_2  + -0.132318 * t.OUT_3 AS OUT_3,
    -0.047305 + 0.511254 * t.OUT_0  + -0.184772 * t.OUT_1  + 0.384395 * t.OUT_2  + -0.230037 * t.OUT_3 AS OUT_4,
    0.005414 + -0.125210 * t.OUT_0  + -0.191229 * t.OUT_1  + -0.625282 * t.OUT_2  + 0.336065 * t.OUT_3 AS OUT_5,
    0.293847 + -0.316583 * t.OUT_0  + -0.010518 * t.OUT_1  + -0.385274 * t.OUT_2  + -0.165520 * t.OUT_3 AS OUT_6,
    -0.687448 + -0.338509 * t.OUT_0  + -0.144724 * t.OUT_1  + 0.044139 * t.OUT_2  + 0.490622 * t.OUT_3 AS OUT_7
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
    0.612847 + -0.253699 * t.OUT_0  + 0.552343 * t.OUT_1  + 0.419722 * t.OUT_2  + 0.077447 * t.OUT_3  + -0.333353 * t.OUT_4  + 0.556233 * t.OUT_5  + -0.277108 * t.OUT_6  + -0.036847 * t.OUT_7 AS OUT_0,
    -0.518953 + 0.564405 * t.OUT_0  + 0.534831 * t.OUT_1  + 0.096048 * t.OUT_2  + -0.164715 * t.OUT_3  + -0.463855 * t.OUT_4  + -0.007332 * t.OUT_5  + 0.521585 * t.OUT_6  + 0.410524 * t.OUT_7 AS OUT_1,
    -0.315864 + 0.422480 * t.OUT_0  + -0.274635 * t.OUT_1  + 0.090075 * t.OUT_2  + -0.382792 * t.OUT_3  + -0.295492 * t.OUT_4  + 0.139892 * t.OUT_5  + 0.619773 * t.OUT_6  + 0.172285 * t.OUT_7 AS OUT_2,
    0.628856 + -0.294981 * t.OUT_0  + 0.479633 * t.OUT_1  + -0.069840 * t.OUT_2  + 0.081189 * t.OUT_3  + -0.314586 * t.OUT_4  + 0.088644 * t.OUT_5  + 0.267367 * t.OUT_6  + -0.064409 * t.OUT_7 AS OUT_3,
    -0.400431 + 0.517337 * t.OUT_0  + 0.511858 * t.OUT_1  + -0.106247 * t.OUT_2  + 0.601015 * t.OUT_3  + -0.137100 * t.OUT_4  + 0.057084 * t.OUT_5  + 0.112850 * t.OUT_6  + -0.179106 * t.OUT_7 AS OUT_4,
    0.561676 + 0.166667 * t.OUT_0  + 0.545086 * t.OUT_1  + 0.059984 * t.OUT_2  + -0.188342 * t.OUT_3  + -0.150225 * t.OUT_4  + -0.007224 * t.OUT_5  + 0.161829 * t.OUT_6  + -0.617115 * t.OUT_7 AS OUT_5
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
    -0.155631 + -0.406080 * t.OUT_0  + -0.526622 * t.OUT_1  + -0.464769 * t.OUT_2  + 0.312369 * t.OUT_3  + -0.258989 * t.OUT_4  + 0.197533 * t.OUT_5 AS OUT_0,
    -0.322613 + 0.741812 * t.OUT_0  + 0.413524 * t.OUT_1  + -0.593820 * t.OUT_2  + 0.529632 * t.OUT_3  + -0.715335 * t.OUT_4  + -0.603670 * t.OUT_5 AS OUT_1,
    0.470800 + 0.255491 * t.OUT_0  + -0.636192 * t.OUT_1  + -0.491997 * t.OUT_2  + -0.214008 * t.OUT_3  + -0.384817 * t.OUT_4  + 0.379757 * t.OUT_5 AS OUT_2,
    -0.593051 + 0.676641 * t.OUT_0  + 0.783370 * t.OUT_1  + -0.114118 * t.OUT_2  + 0.671185 * t.OUT_3  + -0.023438 * t.OUT_4  + 0.436769 * t.OUT_5 AS OUT_3
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