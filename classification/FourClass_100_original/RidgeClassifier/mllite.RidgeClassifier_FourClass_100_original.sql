WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -0.597073 + -0.001595 * X_0 + -0.001982 * X_1 + -0.005353 * X_2 + 0.018841 * X_3 + 0.016128 * X_4 + -0.010243 * X_5 + 0.001177 * X_6 + 0.022296 * X_7 + 0.013508 * X_8 + 0.005939 * X_9 + -0.012131 * X_10 + -0.018531 * X_11 + -0.005154 * X_12 + 0.016414 * X_13 + -0.010139 * X_14 + 0.016580 * X_15 + -0.005364 * X_16 + -0.002308 * X_17 + 0.024118 * X_18 + -0.003147 * X_19 + -0.017514 * X_20 + 0.013282 * X_21 + -0.009752 * X_22 + 0.009979 * X_23 + 0.012738 * X_24 + 0.017545 * X_25 + -0.024696 * X_26 + 0.025686 * X_27 + 0.001195 * X_28 + -0.024827 * X_29 + -0.016954 * X_30 + 0.113042 * X_31 + -0.056323 * X_32 + -0.003822 * X_33 + 0.011510 * X_34 + -0.002731 * X_35 + -0.024433 * X_36 + 0.031320 * X_37 + -0.031148 * X_38 + -0.040167 * X_39 + 0.022540 * X_40 + 0.001711 * X_41 + -0.012373 * X_42 + 0.016615 * X_43 + -0.022797 * X_44 + -0.032952 * X_45 + 0.051097 * X_46 + -0.015117 * X_47 + -0.021671 * X_48 + -0.085263 * X_49 + 0.015921 * X_50 + 0.011724 * X_51 + 0.019412 * X_52 + 0.104623 * X_53 + 0.006244 * X_54 + 0.006459 * X_55 + -0.019475 * X_56 + -0.022904 * X_57 + -0.001219 * X_58 + 0.008469 * X_59 + -0.062347 * X_60 + -0.028638 * X_61 + 0.123848 * X_62 + 0.027151 * X_63 + 0.012818 * X_64 + -0.008029 * X_65 + 0.014650 * X_66 + 0.012211 * X_67 + -0.008030 * X_68 + 0.018901 * X_69 + 0.038617 * X_70 + -0.018218 * X_71 + 0.000341 * X_72 + 0.001789 * X_73 + -0.016657 * X_74 + 0.028437 * X_75 + -0.021740 * X_76 + 0.000076 * X_77 + 0.035340 * X_78 + 0.008632 * X_79 + -0.019243 * X_80 + -0.028199 * X_81 + 0.026106 * X_82 + -0.061000 * X_83 + 0.006934 * X_84 + -0.015512 * X_85 + -0.031868 * X_86 + -0.042295 * X_87 + -0.008557 * X_88 + -0.039384 * X_89 + 0.024597 * X_90 + 0.031739 * X_91 + 0.007257 * X_92 + -0.002098 * X_93 + 0.012924 * X_94 + -0.002874 * X_95 + 0.012473 * X_96 + -0.000907 * X_97 + -0.008004 * X_98 + 0.007288 * X_99 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.458797 + 0.003584 * X_0 + -0.025373 * X_1 + 0.024860 * X_2 + -0.008321 * X_3 + -0.000572 * X_4 + 0.022867 * X_5 + -0.015827 * X_6 + 0.000644 * X_7 + 0.020816 * X_8 + 0.043514 * X_9 + -0.006664 * X_10 + 0.003734 * X_11 + -0.028186 * X_12 + -0.040341 * X_13 + 0.028306 * X_14 + 0.012744 * X_15 + 0.013571 * X_16 + 0.015951 * X_17 + 0.016137 * X_18 + 0.000646 * X_19 + -0.006200 * X_20 + 0.028091 * X_21 + 0.021441 * X_22 + -0.017987 * X_23 + -0.029730 * X_24 + -0.036832 * X_25 + 0.042713 * X_26 + -0.017817 * X_27 + -0.003451 * X_28 + -0.002750 * X_29 + 0.013728 * X_30 + 0.040652 * X_31 + 0.010941 * X_32 + -0.001437 * X_33 + 0.010054 * X_34 + -0.028648 * X_35 + 0.007005 * X_36 + -0.031864 * X_37 + 0.005335 * X_38 + -0.016798 * X_39 + 0.037218 * X_40 + -0.005439 * X_41 + 0.003108 * X_42 + -0.000376 * X_43 + 0.039286 * X_44 + -0.004825 * X_45 + -0.049008 * X_46 + -0.013592 * X_47 + 0.004076 * X_48 + 0.011665 * X_49 + 0.018934 * X_50 + -0.004153 * X_51 + 0.014220 * X_52 + -0.017229 * X_53 + -0.026302 * X_54 + 0.019190 * X_55 + 0.070387 * X_56 + 0.026096 * X_57 + 0.019652 * X_58 + -0.009996 * X_59 + 0.030742 * X_60 + 0.014629 * X_61 + 0.094719 * X_62 + -0.024599 * X_63 + -0.037028 * X_64 + 0.004015 * X_65 + -0.002913 * X_66 + 0.047333 * X_67 + -0.012185 * X_68 + -0.054749 * X_69 + -0.041847 * X_70 + -0.001903 * X_71 + 0.019882 * X_72 + 0.008418 * X_73 + -0.005993 * X_74 + -0.025511 * X_75 + 0.037191 * X_76 + 0.009211 * X_77 + -0.023448 * X_78 + -0.012359 * X_79 + 0.002581 * X_80 + -0.030436 * X_81 + 0.012058 * X_82 + 0.058399 * X_83 + 0.021069 * X_84 + -0.004197 * X_85 + -0.010377 * X_86 + 0.005559 * X_87 + 0.006323 * X_88 + -0.009562 * X_89 + -0.007847 * X_90 + -0.031579 * X_91 + 0.017903 * X_92 + 0.014461 * X_93 + 0.002874 * X_94 + 0.021842 * X_95 + -0.024552 * X_96 + 0.002534 * X_97 + 0.040097 * X_98 + -0.025697 * X_99 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.405739 + -0.015115 * X_0 + -0.005525 * X_1 + -0.030317 * X_2 + -0.034445 * X_3 + 0.025235 * X_4 + -0.012599 * X_5 + 0.055476 * X_6 + -0.029351 * X_7 + -0.045008 * X_8 + -0.033835 * X_9 + 0.012622 * X_10 + -0.020703 * X_11 + 0.050164 * X_12 + 0.024849 * X_13 + -0.002699 * X_14 + 0.012048 * X_15 + 0.005708 * X_16 + -0.046591 * X_17 + -0.022108 * X_18 + 0.009342 * X_19 + -0.008019 * X_20 + -0.043124 * X_21 + -0.028182 * X_22 + 0.025747 * X_23 + 0.003406 * X_24 + 0.010602 * X_25 + -0.018898 * X_26 + 0.020375 * X_27 + -0.014662 * X_28 + -0.008090 * X_29 + -0.007072 * X_30 + -0.016875 * X_31 + 0.014170 * X_32 + 0.006681 * X_33 + 0.000848 * X_34 + 0.008674 * X_35 + -0.002968 * X_36 + 0.021145 * X_37 + -0.017685 * X_38 + 0.020124 * X_39 + -0.022499 * X_40 + 0.004135 * X_41 + 0.013935 * X_42 + -0.009256 * X_43 + -0.016096 * X_44 + 0.020219 * X_45 + -0.055518 * X_46 + -0.037458 * X_47 + -0.019014 * X_48 + 0.079177 * X_49 + 0.007633 * X_50 + -0.030345 * X_51 + -0.019892 * X_52 + -0.046710 * X_53 + 0.013476 * X_54 + -0.049152 * X_55 + -0.027198 * X_56 + 0.020951 * X_57 + 0.014801 * X_58 + -0.011155 * X_59 + 0.137016 * X_60 + -0.011788 * X_61 + -0.067081 * X_62 + -0.006925 * X_63 + 0.042827 * X_64 + 0.007424 * X_65 + -0.026180 * X_66 + -0.010818 * X_67 + 0.012832 * X_68 + 0.034471 * X_69 + -0.009577 * X_70 + 0.020824 * X_71 + 0.026820 * X_72 + -0.017525 * X_73 + 0.011236 * X_74 + 0.028338 * X_75 + -0.037383 * X_76 + -0.051623 * X_77 + -0.010745 * X_78 + -0.004590 * X_79 + 0.036134 * X_80 + 0.016399 * X_81 + -0.010784 * X_82 + -0.027745 * X_83 + -0.057784 * X_84 + 0.005486 * X_85 + 0.020585 * X_86 + 0.006282 * X_87 + 0.029512 * X_88 + 0.014958 * X_89 + -0.007285 * X_90 + -0.011996 * X_91 + 0.013468 * X_92 + -0.041626 * X_93 + 0.013227 * X_94 + -0.036200 * X_95 + 0.009156 * X_96 + -0.000139 * X_97 + -0.018051 * X_98 + 0.009088 * X_99 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.538383 + 0.013126 * X_0 + 0.032879 * X_1 + 0.010810 * X_2 + 0.023926 * X_3 + -0.040790 * X_4 + -0.000024 * X_5 + -0.040826 * X_6 + 0.006411 * X_7 + 0.010685 * X_8 + -0.015618 * X_9 + 0.006174 * X_10 + 0.035551 * X_11 + -0.016824 * X_12 + -0.000921 * X_13 + -0.015468 * X_14 + -0.041372 * X_15 + -0.013915 * X_16 + 0.032948 * X_17 + -0.018147 * X_18 + -0.006841 * X_19 + 0.031732 * X_20 + 0.001750 * X_21 + 0.016493 * X_22 + -0.017738 * X_23 + 0.013586 * X_24 + 0.008685 * X_25 + 0.000882 * X_26 + -0.028223 * X_27 + 0.016918 * X_28 + 0.035667 * X_29 + 0.010299 * X_30 + -0.136826 * X_31 + 0.031211 * X_32 + -0.001421 * X_33 + -0.022412 * X_34 + 0.022677 * X_35 + 0.020396 * X_36 + -0.020602 * X_37 + 0.043498 * X_38 + 0.036841 * X_39 + -0.037259 * X_40 + -0.000408 * X_41 + -0.004669 * X_42 + -0.006983 * X_43 + -0.000392 * X_44 + 0.017558 * X_45 + 0.053408 * X_46 + 0.066166 * X_47 + 0.036609 * X_48 + -0.005540 * X_49 + -0.042488 * X_50 + 0.022775 * X_51 + -0.013740 * X_52 + -0.040638 * X_53 + 0.006581 * X_54 + 0.023504 * X_55 + -0.023714 * X_56 + -0.024144 * X_57 + -0.033234 * X_58 + 0.012683 * X_59 + -0.105389 * X_60 + 0.025797 * X_61 + -0.151491 * X_62 + 0.004373 * X_63 + -0.018617 * X_64 + -0.003404 * X_65 + 0.014488 * X_66 + -0.048726 * X_67 + 0.007384 * X_68 + 0.001378 * X_69 + 0.012806 * X_70 + -0.000703 * X_71 + -0.047043 * X_72 + 0.007318 * X_73 + 0.011414 * X_74 + -0.031264 * X_75 + 0.021933 * X_76 + 0.042336 * X_77 + -0.001148 * X_78 + 0.008309 * X_79 + -0.019472 * X_80 + 0.042236 * X_81 + -0.027380 * X_82 + 0.030346 * X_83 + 0.029780 * X_84 + 0.014223 * X_85 + 0.021660 * X_86 + 0.030454 * X_87 + -0.027279 * X_88 + 0.033988 * X_89 + -0.009465 * X_90 + 0.011836 * X_91 + -0.038628 * X_92 + 0.029264 * X_93 + -0.029025 * X_94 + 0.017232 * X_95 + 0.002923 * X_96 + -0.001489 * X_97 + -0.014042 * X_98 + 0.009320 * X_99 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3"
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