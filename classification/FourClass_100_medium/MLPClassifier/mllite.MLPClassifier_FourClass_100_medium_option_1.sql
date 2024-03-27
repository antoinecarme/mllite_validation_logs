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
    -0.173477 + -0.047248 * t.OUT_0  + -0.009989 * t.OUT_1  + 0.170878 * t.OUT_2  + 0.168717 * t.OUT_3  + 0.197886 * t.OUT_4  + 0.128304 * t.OUT_5  + -0.028893 * t.OUT_6  + 0.026033 * t.OUT_7  + -0.038380 * t.OUT_8  + -0.199081 * t.OUT_9  + -0.240710 * t.OUT_10  + -0.133063 * t.OUT_11  + 0.149127 * t.OUT_12  + 0.141110 * t.OUT_13  + 0.121220 * t.OUT_14  + -0.204996 * t.OUT_15  + -0.208287 * t.OUT_16  + 0.201140 * t.OUT_17  + 0.021693 * t.OUT_18  + 0.085493 * t.OUT_19  + 0.082334 * t.OUT_20  + -0.228673 * t.OUT_21  + -0.123871 * t.OUT_22  + 0.013244 * t.OUT_23  + 0.054213 * t.OUT_24  + 0.099738 * t.OUT_25  + 0.163753 * t.OUT_26  + -0.072720 * t.OUT_27  + 0.064084 * t.OUT_28  + -0.007728 * t.OUT_29  + 0.201592 * t.OUT_30  + -0.223245 * t.OUT_31  + 0.098400 * t.OUT_32  + 0.185127 * t.OUT_33  + -0.173762 * t.OUT_34  + -0.229369 * t.OUT_35  + -0.206422 * t.OUT_36  + -0.070200 * t.OUT_37  + -0.056528 * t.OUT_38  + -0.164474 * t.OUT_39  + 0.093991 * t.OUT_40  + -0.106213 * t.OUT_41  + -0.141520 * t.OUT_42  + 0.122414 * t.OUT_43  + 0.205973 * t.OUT_44  + 0.130327 * t.OUT_45  + 0.025046 * t.OUT_46  + 0.119768 * t.OUT_47  + 0.193260 * t.OUT_48  + -0.145443 * t.OUT_49  + -0.069158 * t.OUT_50  + 0.282240 * t.OUT_51  + 0.015153 * t.OUT_52  + 0.026010 * t.OUT_53  + -0.182237 * t.OUT_54  + -0.104129 * t.OUT_55  + -0.002022 * t.OUT_56  + -0.133431 * t.OUT_57  + 0.042066 * t.OUT_58  + -0.122856 * t.OUT_59  + 0.059587 * t.OUT_60  + -0.010786 * t.OUT_61  + 0.102278 * t.OUT_62  + 0.196765 * t.OUT_63  + 0.131990 * t.OUT_64  + 0.100366 * t.OUT_65  + 0.000822 * t.OUT_66  + 0.133850 * t.OUT_67  + 0.285581 * t.OUT_68  + 0.094387 * t.OUT_69  + 0.047347 * t.OUT_70  + 0.121736 * t.OUT_71  + 0.144979 * t.OUT_72  + -0.067146 * t.OUT_73  + -0.212412 * t.OUT_74  + 0.078617 * t.OUT_75  + -0.142969 * t.OUT_76  + 0.012452 * t.OUT_77  + 0.120400 * t.OUT_78  + -0.018338 * t.OUT_79  + -0.108410 * t.OUT_80  + 0.058921 * t.OUT_81  + -0.108983 * t.OUT_82  + 0.042845 * t.OUT_83  + 0.192741 * t.OUT_84  + -0.041662 * t.OUT_85  + -0.124753 * t.OUT_86  + -0.076655 * t.OUT_87  + -0.180511 * t.OUT_88  + -0.067487 * t.OUT_89  + -0.138252 * t.OUT_90  + 0.157702 * t.OUT_91  + 0.078028 * t.OUT_92  + -0.197221 * t.OUT_93  + -0.238142 * t.OUT_94  + 0.011140 * t.OUT_95  + -0.205221 * t.OUT_96  + -0.113122 * t.OUT_97  + -0.185754 * t.OUT_98  + -0.190482 * t.OUT_99 AS OUT_0,
    0.077089 + 0.091616 * t.OUT_0  + -0.165361 * t.OUT_1  + 0.070391 * t.OUT_2  + -0.199488 * t.OUT_3  + -0.135476 * t.OUT_4  + -0.216332 * t.OUT_5  + -0.262270 * t.OUT_6  + -0.027716 * t.OUT_7  + 0.106330 * t.OUT_8  + 0.254389 * t.OUT_9  + 0.129878 * t.OUT_10  + -0.231861 * t.OUT_11  + 0.174445 * t.OUT_12  + 0.210766 * t.OUT_13  + -0.029396 * t.OUT_14  + -0.024908 * t.OUT_15  + 0.187160 * t.OUT_16  + 0.196085 * t.OUT_17  + 0.252974 * t.OUT_18  + 0.098089 * t.OUT_19  + 0.092422 * t.OUT_20  + 0.139899 * t.OUT_21  + -0.302614 * t.OUT_22  + 0.015381 * t.OUT_23  + -0.082181 * t.OUT_24  + -0.120908 * t.OUT_25  + 0.192856 * t.OUT_26  + -0.008703 * t.OUT_27  + -0.021295 * t.OUT_28  + -0.110428 * t.OUT_29  + 0.133871 * t.OUT_30  + 0.067196 * t.OUT_31  + -0.317568 * t.OUT_32  + -0.217467 * t.OUT_33  + -0.175450 * t.OUT_34  + -0.136881 * t.OUT_35  + -0.230532 * t.OUT_36  + 0.015890 * t.OUT_37  + 0.201243 * t.OUT_38  + -0.120164 * t.OUT_39  + -0.159827 * t.OUT_40  + 0.067320 * t.OUT_41  + 0.124875 * t.OUT_42  + 0.167807 * t.OUT_43  + 0.170375 * t.OUT_44  + -0.028902 * t.OUT_45  + 0.112625 * t.OUT_46  + 0.119954 * t.OUT_47  + -0.131304 * t.OUT_48  + -0.176439 * t.OUT_49  + 0.009958 * t.OUT_50  + 0.018735 * t.OUT_51  + 0.169147 * t.OUT_52  + -0.059591 * t.OUT_53  + -0.165713 * t.OUT_54  + -0.179229 * t.OUT_55  + 0.039406 * t.OUT_56  + 0.133067 * t.OUT_57  + 0.279248 * t.OUT_58  + 0.254001 * t.OUT_59  + -0.069556 * t.OUT_60  + 0.024391 * t.OUT_61  + 0.080285 * t.OUT_62  + -0.146202 * t.OUT_63  + -0.094716 * t.OUT_64  + 0.130030 * t.OUT_65  + -0.108002 * t.OUT_66  + 0.084910 * t.OUT_67  + -0.150343 * t.OUT_68  + 0.280203 * t.OUT_69  + 0.268546 * t.OUT_70  + 0.100445 * t.OUT_71  + 0.162597 * t.OUT_72  + 0.127723 * t.OUT_73  + 0.153323 * t.OUT_74  + -0.183317 * t.OUT_75  + 0.092036 * t.OUT_76  + 0.110110 * t.OUT_77  + -0.152655 * t.OUT_78  + -0.096654 * t.OUT_79  + 0.158319 * t.OUT_80  + 0.002126 * t.OUT_81  + -0.153927 * t.OUT_82  + 0.098229 * t.OUT_83  + -0.196372 * t.OUT_84  + -0.074811 * t.OUT_85  + 0.105721 * t.OUT_86  + -0.052693 * t.OUT_87  + -0.125761 * t.OUT_88  + -0.122964 * t.OUT_89  + -0.095158 * t.OUT_90  + -0.108369 * t.OUT_91  + -0.065890 * t.OUT_92  + 0.133608 * t.OUT_93  + -0.002322 * t.OUT_94  + -0.129677 * t.OUT_95  + -0.107495 * t.OUT_96  + 0.062513 * t.OUT_97  + 0.171117 * t.OUT_98  + -0.116095 * t.OUT_99 AS OUT_1,
    0.106577 + -0.124390 * t.OUT_0  + 0.037085 * t.OUT_1  + 0.123937 * t.OUT_2  + -0.097726 * t.OUT_3  + -0.158005 * t.OUT_4  + 0.016488 * t.OUT_5  + -0.145459 * t.OUT_6  + -0.220248 * t.OUT_7  + -0.041492 * t.OUT_8  + -0.118260 * t.OUT_9  + 0.129413 * t.OUT_10  + 0.124536 * t.OUT_11  + 0.243931 * t.OUT_12  + -0.110963 * t.OUT_13  + 0.064418 * t.OUT_14  + 0.115868 * t.OUT_15  + -0.183031 * t.OUT_16  + -0.055049 * t.OUT_17  + -0.182963 * t.OUT_18  + 0.252977 * t.OUT_19  + 0.235780 * t.OUT_20  + -0.030108 * t.OUT_21  + -0.103492 * t.OUT_22  + -0.000775 * t.OUT_23  + -0.159600 * t.OUT_24  + -0.047891 * t.OUT_25  + 0.236864 * t.OUT_26  + 0.037245 * t.OUT_27  + 0.121076 * t.OUT_28  + -0.072229 * t.OUT_29  + -0.221343 * t.OUT_30  + 0.101080 * t.OUT_31  + -0.182496 * t.OUT_32  + -0.155494 * t.OUT_33  + -0.068954 * t.OUT_34  + -0.148579 * t.OUT_35  + 0.056298 * t.OUT_36  + 0.056199 * t.OUT_37  + 0.203373 * t.OUT_38  + 0.120240 * t.OUT_39  + 0.248000 * t.OUT_40  + -0.073242 * t.OUT_41  + 0.042756 * t.OUT_42  + -0.026474 * t.OUT_43  + -0.167474 * t.OUT_44  + 0.058170 * t.OUT_45  + -0.172725 * t.OUT_46  + -0.040530 * t.OUT_47  + -0.041871 * t.OUT_48  + -0.194111 * t.OUT_49  + -0.203367 * t.OUT_50  + -0.036268 * t.OUT_51  + 0.028747 * t.OUT_52  + -0.016910 * t.OUT_53  + 0.092252 * t.OUT_54  + 0.128107 * t.OUT_55  + 0.169295 * t.OUT_56  + 0.155735 * t.OUT_57  + 0.180184 * t.OUT_58  + -0.232453 * t.OUT_59  + 0.050979 * t.OUT_60  + -0.127944 * t.OUT_61  + -0.271368 * t.OUT_62  + -0.006975 * t.OUT_63  + -0.057114 * t.OUT_64  + 0.126773 * t.OUT_65  + 0.020013 * t.OUT_66  + 0.258205 * t.OUT_67  + 0.023572 * t.OUT_68  + -0.082794 * t.OUT_69  + 0.071785 * t.OUT_70  + 0.107597 * t.OUT_71  + 0.086360 * t.OUT_72  + -0.166193 * t.OUT_73  + 0.018857 * t.OUT_74  + -0.135643 * t.OUT_75  + -0.048407 * t.OUT_76  + 0.102349 * t.OUT_77  + 0.245799 * t.OUT_78  + -0.074606 * t.OUT_79  + -0.172083 * t.OUT_80  + 0.238774 * t.OUT_81  + -0.171148 * t.OUT_82  + -0.095276 * t.OUT_83  + -0.061025 * t.OUT_84  + -0.068209 * t.OUT_85  + 0.048690 * t.OUT_86  + 0.283322 * t.OUT_87  + -0.226369 * t.OUT_88  + -0.212190 * t.OUT_89  + 0.159753 * t.OUT_90  + 0.123754 * t.OUT_91  + -0.119516 * t.OUT_92  + -0.296319 * t.OUT_93  + 0.178278 * t.OUT_94  + 0.119241 * t.OUT_95  + 0.008502 * t.OUT_96  + 0.206846 * t.OUT_97  + -0.204616 * t.OUT_98  + 0.228304 * t.OUT_99 AS OUT_2,
    0.245183 + 0.016620 * t.OUT_0  + 0.039089 * t.OUT_1  + 0.034766 * t.OUT_2  + 0.101796 * t.OUT_3  + -0.172350 * t.OUT_4  + 0.061238 * t.OUT_5  + 0.177976 * t.OUT_6  + -0.003277 * t.OUT_7  + 0.155162 * t.OUT_8  + 0.201644 * t.OUT_9  + 0.178791 * t.OUT_10  + 0.136709 * t.OUT_11  + -0.174530 * t.OUT_12  + 0.121211 * t.OUT_13  + 0.189699 * t.OUT_14  + 0.136786 * t.OUT_15  + -0.293066 * t.OUT_16  + -0.218374 * t.OUT_17  + 0.072470 * t.OUT_18  + -0.063175 * t.OUT_19  + -0.017985 * t.OUT_20  + 0.014479 * t.OUT_21  + 0.173730 * t.OUT_22  + -0.248995 * t.OUT_23  + -0.032236 * t.OUT_24  + 0.069591 * t.OUT_25  + 0.151252 * t.OUT_26  + 0.153084 * t.OUT_27  + 0.108488 * t.OUT_28  + -0.116383 * t.OUT_29  + 0.154115 * t.OUT_30  + -0.017598 * t.OUT_31  + 0.133096 * t.OUT_32  + -0.188882 * t.OUT_33  + -0.028375 * t.OUT_34  + 0.098847 * t.OUT_35  + 0.121633 * t.OUT_36  + -0.196794 * t.OUT_37  + -0.058483 * t.OUT_38  + -0.208590 * t.OUT_39  + 0.241373 * t.OUT_40  + 0.236749 * t.OUT_41  + -0.192814 * t.OUT_42  + -0.148745 * t.OUT_43  + -0.001133 * t.OUT_44  + 0.225459 * t.OUT_45  + -0.057014 * t.OUT_46  + 0.003781 * t.OUT_47  + 0.158627 * t.OUT_48  + -0.110228 * t.OUT_49  + 0.174498 * t.OUT_50  + 0.103844 * t.OUT_51  + 0.201394 * t.OUT_52  + -0.191649 * t.OUT_53  + 0.009871 * t.OUT_54  + -0.017841 * t.OUT_55  + 0.065420 * t.OUT_56  + 0.261955 * t.OUT_57  + 0.067287 * t.OUT_58  + -0.149585 * t.OUT_59  + 0.139031 * t.OUT_60  + -0.174241 * t.OUT_61  + 0.052047 * t.OUT_62  + -0.029500 * t.OUT_63  + 0.114622 * t.OUT_64  + 0.237123 * t.OUT_65  + -0.156952 * t.OUT_66  + 0.193993 * t.OUT_67  + 0.192632 * t.OUT_68  + 0.074114 * t.OUT_69  + 0.122784 * t.OUT_70  + -0.186791 * t.OUT_71  + 0.193055 * t.OUT_72  + 0.080173 * t.OUT_73  + 0.017654 * t.OUT_74  + -0.121322 * t.OUT_75  + 0.003965 * t.OUT_76  + -0.096951 * t.OUT_77  + -0.051544 * t.OUT_78  + 0.048160 * t.OUT_79  + -0.097633 * t.OUT_80  + 0.203401 * t.OUT_81  + 0.087441 * t.OUT_82  + 0.042536 * t.OUT_83  + -0.042928 * t.OUT_84  + -0.078847 * t.OUT_85  + -0.077861 * t.OUT_86  + -0.030708 * t.OUT_87  + 0.101071 * t.OUT_88  + 0.022402 * t.OUT_89  + -0.138390 * t.OUT_90  + -0.170152 * t.OUT_91  + -0.122052 * t.OUT_92  + 0.207135 * t.OUT_93  + 0.037117 * t.OUT_94  + -0.087058 * t.OUT_95  + 0.204391 * t.OUT_96  + 0.159311 * t.OUT_97  + 0.153842 * t.OUT_98  + -0.172905 * t.OUT_99 AS OUT_3
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
    -0.073096 + -0.341489 * t.OUT_0  + 0.095195 * t.OUT_1  + 0.700095 * t.OUT_2  + -0.366796 * t.OUT_3 AS OUT_0,
    -0.602937 + 0.043021 * t.OUT_0  + -0.606438 * t.OUT_1  + 0.515608 * t.OUT_2  + -0.011129 * t.OUT_3 AS OUT_1,
    0.495656 + 0.659507 * t.OUT_0  + -0.296021 * t.OUT_1  + -0.436366 * t.OUT_2  + -0.702563 * t.OUT_3 AS OUT_2,
    -0.593610 + 0.645808 * t.OUT_0  + -0.656736 * t.OUT_1  + 0.026433 * t.OUT_2  + -0.056099 * t.OUT_3 AS OUT_3,
    -0.039074 + 0.552084 * t.OUT_0  + -0.141963 * t.OUT_1  + 0.346910 * t.OUT_2  + -0.194099 * t.OUT_3 AS OUT_4,
    -0.095589 + -0.132213 * t.OUT_0  + -0.259294 * t.OUT_1  + -0.563757 * t.OUT_2  + 0.284647 * t.OUT_3 AS OUT_5,
    0.361939 + -0.239595 * t.OUT_0  + 0.053914 * t.OUT_1  + -0.310796 * t.OUT_2  + -0.036822 * t.OUT_3 AS OUT_6,
    -0.678988 + -0.336881 * t.OUT_0  + -0.105757 * t.OUT_1  + 0.042345 * t.OUT_2  + 0.507178 * t.OUT_3 AS OUT_7
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
    0.564253 + -0.239540 * t.OUT_0  + 0.628095 * t.OUT_1  + 0.379623 * t.OUT_2  + 0.066144 * t.OUT_3  + -0.346192 * t.OUT_4  + 0.494435 * t.OUT_5  + -0.344025 * t.OUT_6  + 0.009822 * t.OUT_7 AS OUT_0,
    -0.474035 + 0.612296 * t.OUT_0  + 0.641241 * t.OUT_1  + 0.125774 * t.OUT_2  + -0.241616 * t.OUT_3  + -0.381785 * t.OUT_4  + -0.042822 * t.OUT_5  + 0.581324 * t.OUT_6  + 0.354143 * t.OUT_7 AS OUT_1,
    -0.372778 + 0.359108 * t.OUT_0  + -0.324995 * t.OUT_1  + 0.090075 * t.OUT_2  + -0.413525 * t.OUT_3  + -0.311297 * t.OUT_4  + 0.086621 * t.OUT_5  + 0.582247 * t.OUT_6  + 0.136928 * t.OUT_7 AS OUT_2,
    0.688223 + -0.212627 * t.OUT_0  + 0.553107 * t.OUT_1  + -0.012806 * t.OUT_2  + 0.189513 * t.OUT_3  + -0.229190 * t.OUT_4  + 0.131750 * t.OUT_5  + 0.306635 * t.OUT_6  + -0.094619 * t.OUT_7 AS OUT_3,
    -0.424161 + 0.474937 * t.OUT_0  + 0.513140 * t.OUT_1  + -0.072986 * t.OUT_2  + 0.663270 * t.OUT_3  + -0.121928 * t.OUT_4  + 0.101901 * t.OUT_5  + 0.109175 * t.OUT_6  + -0.186224 * t.OUT_7 AS OUT_4,
    0.535862 + 0.098303 * t.OUT_0  + 0.491202 * t.OUT_1  + -0.019852 * t.OUT_2  + -0.260906 * t.OUT_3  + -0.244946 * t.OUT_4  + -0.003181 * t.OUT_5  + 0.192824 * t.OUT_6  + -0.666969 * t.OUT_7 AS OUT_5
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
    -0.103894 + -0.363374 * t.OUT_0  + -0.541495 * t.OUT_1  + -0.517171 * t.OUT_2  + 0.370720 * t.OUT_3  + -0.311324 * t.OUT_4  + 0.250331 * t.OUT_5 AS OUT_0,
    -0.291231 + 0.774429 * t.OUT_0  + 0.508982 * t.OUT_1  + -0.532572 * t.OUT_2  + 0.544415 * t.OUT_3  + -0.633558 * t.OUT_4  + -0.574216 * t.OUT_5 AS OUT_1,
    0.420607 + 0.210981 * t.OUT_0  + -0.671963 * t.OUT_1  + -0.427709 * t.OUT_2  + -0.271865 * t.OUT_3  + -0.444401 * t.OUT_4  + 0.332792 * t.OUT_5 AS OUT_2,
    -0.658448 + 0.587609 * t.OUT_0  + 0.736415 * t.OUT_1  + -0.174432 * t.OUT_2  + 0.603213 * t.OUT_3  + -0.045316 * t.OUT_4  + 0.427684 * t.OUT_5 AS OUT_3
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