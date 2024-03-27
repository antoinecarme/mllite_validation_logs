WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -0.435129 + -0.127077 * X_0 + -0.023887 * X_1 + 0.019792 * X_2 + 0.103184 * X_3 + -0.000815 * X_4 + -0.054984 * X_5 + -0.092606 * X_6 + 0.031880 * X_7 + 0.121656 * X_8 + 0.127582 * X_9 + 0.025043 * X_10 + 0.030587 * X_11 + -0.224390 * X_12 + -0.013324 * X_13 + 0.108654 * X_14 + -0.079534 * X_15 + 0.013791 * X_16 + -0.021706 * X_17 + -0.040479 * X_18 + -0.087536 * X_19 + 0.123308 * X_20 + -0.128571 * X_21 + -0.075455 * X_22 + 0.138907 * X_23 + 0.083402 * X_24 + 0.054466 * X_25 + 0.093221 * X_26 + -0.006129 * X_27 + -0.098559 * X_28 + 0.022455 * X_29 + 0.026622 * X_30 + 0.079315 * X_31 + -0.288348 * X_32 + -0.062907 * X_33 + -0.007246 * X_34 + 0.068529 * X_35 + 0.115250 * X_36 + 0.065285 * X_37 + 0.031246 * X_38 + -0.139562 * X_39 + 0.008812 * X_40 + 0.026396 * X_41 + 0.054456 * X_42 + 0.154191 * X_43 + -0.029918 * X_44 + 0.209451 * X_45 + 0.108563 * X_46 + 0.082673 * X_47 + -0.071687 * X_48 + 0.003505 * X_49 + 0.164674 * X_50 + -0.054657 * X_51 + 0.125674 * X_52 + 0.015642 * X_53 + -0.125092 * X_54 + 0.088222 * X_55 + 0.000340 * X_56 + 0.341885 * X_57 + -0.042288 * X_58 + 0.047248 * X_59 + -0.062865 * X_60 + -0.068922 * X_61 + 0.062898 * X_62 + -0.025419 * X_63 + 0.019380 * X_64 + -0.022319 * X_65 + 0.022348 * X_66 + 0.056203 * X_67 + 0.074000 * X_68 + 0.007232 * X_69 + -0.082984 * X_70 + 0.268603 * X_71 + 0.026739 * X_72 + -0.018651 * X_73 + 0.049696 * X_74 + -0.078912 * X_75 + 0.163569 * X_76 + 0.078687 * X_77 + -0.029914 * X_78 + 0.036294 * X_79 + 0.112161 * X_80 + 0.126607 * X_81 + -0.030653 * X_82 + -0.139751 * X_83 + -0.008447 * X_84 + 0.221852 * X_85 + 0.067197 * X_86 + -0.261728 * X_87 + -0.106293 * X_88 + 0.047002 * X_89 + 0.062248 * X_90 + 0.094120 * X_91 + 0.137783 * X_92 + 0.058173 * X_93 + 0.159349 * X_94 + 0.119879 * X_95 + 0.138297 * X_96 + 0.030865 * X_97 + -0.086884 * X_98 + 0.023403 * X_99 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.433021 + 0.080538 * X_0 + 0.141068 * X_1 + -0.062487 * X_2 + 0.006480 * X_3 + 0.086815 * X_4 + 0.221964 * X_5 + -0.035803 * X_6 + -0.012916 * X_7 + -0.097352 * X_8 + -0.049706 * X_9 + 0.046845 * X_10 + -0.004375 * X_11 + 0.318698 * X_12 + 0.125815 * X_13 + 0.088545 * X_14 + 0.038321 * X_15 + -0.064736 * X_16 + 0.004343 * X_17 + 0.114600 * X_18 + 0.099331 * X_19 + -0.188813 * X_20 + 0.050080 * X_21 + 0.061740 * X_22 + -0.150895 * X_23 + -0.072718 * X_24 + -0.307821 * X_25 + -0.079103 * X_26 + -0.033297 * X_27 + 0.137517 * X_28 + 0.123901 * X_29 + -0.064300 * X_30 + 0.022150 * X_31 + 0.348872 * X_32 + -0.090649 * X_33 + 0.146655 * X_34 + 0.067745 * X_35 + -0.140724 * X_36 + -0.014965 * X_37 + -0.128241 * X_38 + -0.198717 * X_39 + -0.038615 * X_40 + -0.060168 * X_41 + 0.034947 * X_42 + 0.090740 * X_43 + 0.096386 * X_44 + -0.036253 * X_45 + -0.128247 * X_46 + -0.144989 * X_47 + -0.099176 * X_48 + 0.030065 * X_49 + -0.236397 * X_50 + -0.082631 * X_51 + -0.135031 * X_52 + -0.078797 * X_53 + 0.217942 * X_54 + -0.052383 * X_55 + -0.043052 * X_56 + -0.307823 * X_57 + -0.088039 * X_58 + -0.117330 * X_59 + 0.130218 * X_60 + -0.127306 * X_61 + -0.003515 * X_62 + -0.031211 * X_63 + 0.044346 * X_64 + 0.012311 * X_65 + 0.005000 * X_66 + -0.002834 * X_67 + -0.090538 * X_68 + 0.042996 * X_69 + 0.027662 * X_70 + -0.249407 * X_71 + -0.076723 * X_72 + 0.134339 * X_73 + 0.033500 * X_74 + 0.004907 * X_75 + -0.028286 * X_76 + -0.155601 * X_77 + 0.121882 * X_78 + 0.012604 * X_79 + 0.022563 * X_80 + 0.024824 * X_81 + -0.075840 * X_82 + 0.054813 * X_83 + -0.078673 * X_84 + 0.030070 * X_85 + -0.180748 * X_86 + 0.139711 * X_87 + 0.023224 * X_88 + 0.086383 * X_89 + -0.185182 * X_90 + 0.070039 * X_91 + -0.014072 * X_92 + -0.217434 * X_93 + -0.236594 * X_94 + -0.237216 * X_95 + -0.166385 * X_96 + 0.202992 * X_97 + 0.107184 * X_98 + -0.200990 * X_99 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.423530 + -0.057571 * X_0 + -0.078732 * X_1 + 0.025226 * X_2 + 0.116521 * X_3 + -0.228911 * X_4 + -0.033892 * X_5 + 0.111908 * X_6 + 0.040092 * X_7 + -0.075213 * X_8 + 0.035072 * X_9 + 0.083748 * X_10 + -0.036012 * X_11 + -0.215996 * X_12 + -0.223991 * X_13 + 0.004416 * X_14 + 0.102519 * X_15 + 0.013081 * X_16 + 0.019211 * X_17 + -0.171149 * X_18 + 0.101925 * X_19 + 0.214460 * X_20 + -0.065342 * X_21 + -0.054862 * X_22 + 0.038481 * X_23 + -0.027071 * X_24 + 0.184550 * X_25 + 0.112134 * X_26 + 0.003661 * X_27 + -0.110651 * X_28 + -0.139454 * X_29 + 0.019331 * X_30 + -0.008560 * X_31 + -0.259826 * X_32 + 0.066098 * X_33 + -0.116584 * X_34 + -0.157794 * X_35 + 0.013979 * X_36 + 0.077130 * X_37 + 0.120879 * X_38 + 0.167423 * X_39 + 0.147875 * X_40 + -0.036611 * X_41 + -0.299725 * X_42 + -0.079307 * X_43 + -0.036963 * X_44 + -0.133081 * X_45 + 0.035050 * X_46 + -0.053635 * X_47 + -0.015081 * X_48 + 0.069963 * X_49 + 0.083166 * X_50 + 0.070031 * X_51 + 0.163036 * X_52 + 0.034086 * X_53 + -0.186636 * X_54 + 0.035129 * X_55 + 0.047718 * X_56 + 0.108787 * X_57 + -0.064169 * X_58 + 0.172658 * X_59 + 0.006399 * X_60 + 0.124341 * X_61 + -0.046058 * X_62 + 0.073143 * X_63 + -0.086476 * X_64 + 0.010065 * X_65 + -0.035354 * X_66 + -0.108086 * X_67 + -0.021805 * X_68 + 0.036670 * X_69 + -0.018847 * X_70 + 0.175822 * X_71 + 0.016566 * X_72 + -0.017982 * X_73 + -0.078618 * X_74 + 0.002758 * X_75 + -0.049671 * X_76 + -0.014502 * X_77 + -0.055525 * X_78 + -0.030858 * X_79 + -0.005778 * X_80 + -0.089843 * X_81 + 0.106541 * X_82 + 0.026556 * X_83 + 0.046365 * X_84 + -0.021996 * X_85 + 0.085414 * X_86 + -0.025577 * X_87 + 0.072207 * X_88 + -0.096143 * X_89 + 0.169835 * X_90 + -0.206673 * X_91 + -0.075153 * X_92 + 0.061601 * X_93 + 0.060134 * X_94 + -0.003382 * X_95 + 0.046287 * X_96 + -0.164698 * X_97 + 0.082987 * X_98 + 0.093149 * X_99 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.707113 + 0.101541 * X_0 + -0.036851 * X_1 + 0.017233 * X_2 + -0.221424 * X_3 + 0.141113 * X_4 + -0.134412 * X_5 + 0.015450 * X_6 + -0.055733 * X_7 + 0.052091 * X_8 + -0.114315 * X_9 + -0.153941 * X_10 + 0.010524 * X_11 + 0.122124 * X_12 + 0.111848 * X_13 + -0.203551 * X_14 + -0.062520 * X_15 + 0.039659 * X_16 + -0.002989 * X_17 + 0.096863 * X_18 + -0.115187 * X_19 + -0.150955 * X_20 + 0.142688 * X_21 + 0.069685 * X_22 + -0.027939 * X_23 + 0.015862 * X_24 + 0.071665 * X_25 + -0.126446 * X_26 + 0.035014 * X_27 + 0.074211 * X_28 + -0.007403 * X_29 + 0.017462 * X_30 + -0.093941 * X_31 + 0.199324 * X_32 + 0.085578 * X_33 + -0.022180 * X_34 + 0.021783 * X_35 + 0.009538 * X_36 + -0.127669 * X_37 + -0.022256 * X_38 + 0.171081 * X_39 + -0.117727 * X_40 + 0.071705 * X_41 + 0.213117 * X_42 + -0.167696 * X_43 + -0.029212 * X_44 + -0.037986 * X_45 + -0.015679 * X_46 + 0.115041 * X_47 + 0.182350 * X_48 + -0.105233 * X_49 + -0.009607 * X_50 + 0.070201 * X_51 + -0.154000 * X_52 + 0.030111 * X_53 + 0.090549 * X_54 + -0.071895 * X_55 + -0.005634 * X_56 + -0.143060 * X_57 + 0.193096 * X_58 + -0.102873 * X_59 + -0.074606 * X_60 + 0.071870 * X_61 + -0.013539 * X_62 + -0.017617 * X_63 + 0.020470 * X_64 + 0.000748 * X_65 + 0.007729 * X_66 + 0.055896 * X_67 + 0.038131 * X_68 + -0.085340 * X_69 + 0.075417 * X_70 + -0.197474 * X_71 + 0.031507 * X_72 + -0.099638 * X_73 + -0.005046 * X_74 + 0.072427 * X_75 + -0.086544 * X_76 + 0.092816 * X_77 + -0.034024 * X_78 + -0.017945 * X_79 + -0.127496 * X_80 + -0.058986 * X_81 + -0.000056 * X_82 + 0.058882 * X_83 + 0.041094 * X_84 + -0.230523 * X_85 + 0.028643 * X_86 + 0.145635 * X_87 + 0.012601 * X_88 + -0.033719 * X_89 + -0.048383 * X_90 + 0.042234 * X_91 + -0.047507 * X_92 + 0.097602 * X_93 + 0.017162 * X_94 + 0.121182 * X_95 + -0.021482 * X_96 + -0.070214 * X_97 + -0.102324 * X_98 + 0.082418 * X_99 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3"
  FROM model_input
 )
,
soft_max_orig_cte AS 
 (SELECT t."index" AS "index", 
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
   CAST(NULL AS FLOAT) AS "DecisionProba"
  FROM model_scores_cte AS t
 )
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