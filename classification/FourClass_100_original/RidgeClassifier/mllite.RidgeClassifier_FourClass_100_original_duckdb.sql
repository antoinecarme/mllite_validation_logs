WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "FourClass_100_original" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT t."index" AS "index",
   -0.597073 + -0.001595 * t."X_0" + -0.001982 * t."X_1" + -0.005353 * t."X_2" + 0.018841 * t."X_3" + 0.016128 * t."X_4" + -0.010243 * t."X_5" + 0.001177 * t."X_6" + 0.022296 * t."X_7" + 0.013508 * t."X_8" + 0.005939 * t."X_9" + -0.012131 * t."X_10" + -0.018531 * t."X_11" + -0.005154 * t."X_12" + 0.016414 * t."X_13" + -0.010139 * t."X_14" + 0.016580 * t."X_15" + -0.005364 * t."X_16" + -0.002308 * t."X_17" + 0.024118 * t."X_18" + -0.003147 * t."X_19" + -0.017514 * t."X_20" + 0.013282 * t."X_21" + -0.009752 * t."X_22" + 0.009979 * t."X_23" + 0.012738 * t."X_24" + 0.017545 * t."X_25" + -0.024696 * t."X_26" + 0.025686 * t."X_27" + 0.001195 * t."X_28" + -0.024827 * t."X_29" + -0.016954 * t."X_30" + 0.113042 * t."X_31" + -0.056323 * t."X_32" + -0.003822 * t."X_33" + 0.011510 * t."X_34" + -0.002731 * t."X_35" + -0.024433 * t."X_36" + 0.031320 * t."X_37" + -0.031148 * t."X_38" + -0.040167 * t."X_39" + 0.022540 * t."X_40" + 0.001711 * t."X_41" + -0.012373 * t."X_42" + 0.016615 * t."X_43" + -0.022797 * t."X_44" + -0.032952 * t."X_45" + 0.051097 * t."X_46" + -0.015117 * t."X_47" + -0.021671 * t."X_48" + -0.085263 * t."X_49" + 0.015921 * t."X_50" + 0.011724 * t."X_51" + 0.019412 * t."X_52" + 0.104623 * t."X_53" + 0.006244 * t."X_54" + 0.006459 * t."X_55" + -0.019475 * t."X_56" + -0.022904 * t."X_57" + -0.001219 * t."X_58" + 0.008469 * t."X_59" + -0.062347 * t."X_60" + -0.028638 * t."X_61" + 0.123848 * t."X_62" + 0.027151 * t."X_63" + 0.012818 * t."X_64" + -0.008029 * t."X_65" + 0.014650 * t."X_66" + 0.012211 * t."X_67" + -0.008030 * t."X_68" + 0.018901 * t."X_69" + 0.038617 * t."X_70" + -0.018218 * t."X_71" + 0.000341 * t."X_72" + 0.001789 * t."X_73" + -0.016657 * t."X_74" + 0.028437 * t."X_75" + -0.021740 * t."X_76" + 0.000076 * t."X_77" + 0.035340 * t."X_78" + 0.008632 * t."X_79" + -0.019243 * t."X_80" + -0.028199 * t."X_81" + 0.026106 * t."X_82" + -0.061000 * t."X_83" + 0.006934 * t."X_84" + -0.015512 * t."X_85" + -0.031868 * t."X_86" + -0.042295 * t."X_87" + -0.008557 * t."X_88" + -0.039384 * t."X_89" + 0.024597 * t."X_90" + 0.031739 * t."X_91" + 0.007257 * t."X_92" + -0.002098 * t."X_93" + 0.012924 * t."X_94" + -0.002874 * t."X_95" + 0.012473 * t."X_96" + -0.000907 * t."X_97" + -0.008004 * t."X_98" + 0.007288 * t."X_99" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.458797 + 0.003584 * t."X_0" + -0.025373 * t."X_1" + 0.024860 * t."X_2" + -0.008321 * t."X_3" + -0.000572 * t."X_4" + 0.022867 * t."X_5" + -0.015827 * t."X_6" + 0.000644 * t."X_7" + 0.020816 * t."X_8" + 0.043514 * t."X_9" + -0.006664 * t."X_10" + 0.003734 * t."X_11" + -0.028186 * t."X_12" + -0.040341 * t."X_13" + 0.028306 * t."X_14" + 0.012744 * t."X_15" + 0.013571 * t."X_16" + 0.015951 * t."X_17" + 0.016137 * t."X_18" + 0.000646 * t."X_19" + -0.006200 * t."X_20" + 0.028091 * t."X_21" + 0.021441 * t."X_22" + -0.017987 * t."X_23" + -0.029730 * t."X_24" + -0.036832 * t."X_25" + 0.042713 * t."X_26" + -0.017817 * t."X_27" + -0.003451 * t."X_28" + -0.002750 * t."X_29" + 0.013728 * t."X_30" + 0.040652 * t."X_31" + 0.010941 * t."X_32" + -0.001437 * t."X_33" + 0.010054 * t."X_34" + -0.028648 * t."X_35" + 0.007005 * t."X_36" + -0.031864 * t."X_37" + 0.005335 * t."X_38" + -0.016798 * t."X_39" + 0.037218 * t."X_40" + -0.005439 * t."X_41" + 0.003108 * t."X_42" + -0.000376 * t."X_43" + 0.039286 * t."X_44" + -0.004825 * t."X_45" + -0.049008 * t."X_46" + -0.013592 * t."X_47" + 0.004076 * t."X_48" + 0.011665 * t."X_49" + 0.018934 * t."X_50" + -0.004153 * t."X_51" + 0.014220 * t."X_52" + -0.017229 * t."X_53" + -0.026302 * t."X_54" + 0.019190 * t."X_55" + 0.070387 * t."X_56" + 0.026096 * t."X_57" + 0.019652 * t."X_58" + -0.009996 * t."X_59" + 0.030742 * t."X_60" + 0.014629 * t."X_61" + 0.094719 * t."X_62" + -0.024599 * t."X_63" + -0.037028 * t."X_64" + 0.004015 * t."X_65" + -0.002913 * t."X_66" + 0.047333 * t."X_67" + -0.012185 * t."X_68" + -0.054749 * t."X_69" + -0.041847 * t."X_70" + -0.001903 * t."X_71" + 0.019882 * t."X_72" + 0.008418 * t."X_73" + -0.005993 * t."X_74" + -0.025511 * t."X_75" + 0.037191 * t."X_76" + 0.009211 * t."X_77" + -0.023448 * t."X_78" + -0.012359 * t."X_79" + 0.002581 * t."X_80" + -0.030436 * t."X_81" + 0.012058 * t."X_82" + 0.058399 * t."X_83" + 0.021069 * t."X_84" + -0.004197 * t."X_85" + -0.010377 * t."X_86" + 0.005559 * t."X_87" + 0.006323 * t."X_88" + -0.009562 * t."X_89" + -0.007847 * t."X_90" + -0.031579 * t."X_91" + 0.017903 * t."X_92" + 0.014461 * t."X_93" + 0.002874 * t."X_94" + 0.021842 * t."X_95" + -0.024552 * t."X_96" + 0.002534 * t."X_97" + 0.040097 * t."X_98" + -0.025697 * t."X_99" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.405739 + -0.015115 * t."X_0" + -0.005525 * t."X_1" + -0.030317 * t."X_2" + -0.034445 * t."X_3" + 0.025235 * t."X_4" + -0.012599 * t."X_5" + 0.055476 * t."X_6" + -0.029351 * t."X_7" + -0.045008 * t."X_8" + -0.033835 * t."X_9" + 0.012622 * t."X_10" + -0.020703 * t."X_11" + 0.050164 * t."X_12" + 0.024849 * t."X_13" + -0.002699 * t."X_14" + 0.012048 * t."X_15" + 0.005708 * t."X_16" + -0.046591 * t."X_17" + -0.022108 * t."X_18" + 0.009342 * t."X_19" + -0.008019 * t."X_20" + -0.043124 * t."X_21" + -0.028182 * t."X_22" + 0.025747 * t."X_23" + 0.003406 * t."X_24" + 0.010602 * t."X_25" + -0.018898 * t."X_26" + 0.020375 * t."X_27" + -0.014662 * t."X_28" + -0.008090 * t."X_29" + -0.007072 * t."X_30" + -0.016875 * t."X_31" + 0.014170 * t."X_32" + 0.006681 * t."X_33" + 0.000848 * t."X_34" + 0.008674 * t."X_35" + -0.002968 * t."X_36" + 0.021145 * t."X_37" + -0.017685 * t."X_38" + 0.020124 * t."X_39" + -0.022499 * t."X_40" + 0.004135 * t."X_41" + 0.013935 * t."X_42" + -0.009256 * t."X_43" + -0.016096 * t."X_44" + 0.020219 * t."X_45" + -0.055518 * t."X_46" + -0.037458 * t."X_47" + -0.019014 * t."X_48" + 0.079177 * t."X_49" + 0.007633 * t."X_50" + -0.030345 * t."X_51" + -0.019892 * t."X_52" + -0.046710 * t."X_53" + 0.013476 * t."X_54" + -0.049152 * t."X_55" + -0.027198 * t."X_56" + 0.020951 * t."X_57" + 0.014801 * t."X_58" + -0.011155 * t."X_59" + 0.137016 * t."X_60" + -0.011788 * t."X_61" + -0.067081 * t."X_62" + -0.006925 * t."X_63" + 0.042827 * t."X_64" + 0.007424 * t."X_65" + -0.026180 * t."X_66" + -0.010818 * t."X_67" + 0.012832 * t."X_68" + 0.034471 * t."X_69" + -0.009577 * t."X_70" + 0.020824 * t."X_71" + 0.026820 * t."X_72" + -0.017525 * t."X_73" + 0.011236 * t."X_74" + 0.028338 * t."X_75" + -0.037383 * t."X_76" + -0.051623 * t."X_77" + -0.010745 * t."X_78" + -0.004590 * t."X_79" + 0.036134 * t."X_80" + 0.016399 * t."X_81" + -0.010784 * t."X_82" + -0.027745 * t."X_83" + -0.057784 * t."X_84" + 0.005486 * t."X_85" + 0.020585 * t."X_86" + 0.006282 * t."X_87" + 0.029512 * t."X_88" + 0.014958 * t."X_89" + -0.007285 * t."X_90" + -0.011996 * t."X_91" + 0.013468 * t."X_92" + -0.041626 * t."X_93" + 0.013227 * t."X_94" + -0.036200 * t."X_95" + 0.009156 * t."X_96" + -0.000139 * t."X_97" + -0.018051 * t."X_98" + 0.009088 * t."X_99" AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.538383 + 0.013126 * t."X_0" + 0.032879 * t."X_1" + 0.010810 * t."X_2" + 0.023926 * t."X_3" + -0.040790 * t."X_4" + -0.000024 * t."X_5" + -0.040826 * t."X_6" + 0.006411 * t."X_7" + 0.010685 * t."X_8" + -0.015618 * t."X_9" + 0.006174 * t."X_10" + 0.035551 * t."X_11" + -0.016824 * t."X_12" + -0.000921 * t."X_13" + -0.015468 * t."X_14" + -0.041372 * t."X_15" + -0.013915 * t."X_16" + 0.032948 * t."X_17" + -0.018147 * t."X_18" + -0.006841 * t."X_19" + 0.031732 * t."X_20" + 0.001750 * t."X_21" + 0.016493 * t."X_22" + -0.017738 * t."X_23" + 0.013586 * t."X_24" + 0.008685 * t."X_25" + 0.000882 * t."X_26" + -0.028223 * t."X_27" + 0.016918 * t."X_28" + 0.035667 * t."X_29" + 0.010299 * t."X_30" + -0.136826 * t."X_31" + 0.031211 * t."X_32" + -0.001421 * t."X_33" + -0.022412 * t."X_34" + 0.022677 * t."X_35" + 0.020396 * t."X_36" + -0.020602 * t."X_37" + 0.043498 * t."X_38" + 0.036841 * t."X_39" + -0.037259 * t."X_40" + -0.000408 * t."X_41" + -0.004669 * t."X_42" + -0.006983 * t."X_43" + -0.000392 * t."X_44" + 0.017558 * t."X_45" + 0.053408 * t."X_46" + 0.066166 * t."X_47" + 0.036609 * t."X_48" + -0.005540 * t."X_49" + -0.042488 * t."X_50" + 0.022775 * t."X_51" + -0.013740 * t."X_52" + -0.040638 * t."X_53" + 0.006581 * t."X_54" + 0.023504 * t."X_55" + -0.023714 * t."X_56" + -0.024144 * t."X_57" + -0.033234 * t."X_58" + 0.012683 * t."X_59" + -0.105389 * t."X_60" + 0.025797 * t."X_61" + -0.151491 * t."X_62" + 0.004373 * t."X_63" + -0.018617 * t."X_64" + -0.003404 * t."X_65" + 0.014488 * t."X_66" + -0.048726 * t."X_67" + 0.007384 * t."X_68" + 0.001378 * t."X_69" + 0.012806 * t."X_70" + -0.000703 * t."X_71" + -0.047043 * t."X_72" + 0.007318 * t."X_73" + 0.011414 * t."X_74" + -0.031264 * t."X_75" + 0.021933 * t."X_76" + 0.042336 * t."X_77" + -0.001148 * t."X_78" + 0.008309 * t."X_79" + -0.019472 * t."X_80" + 0.042236 * t."X_81" + -0.027380 * t."X_82" + 0.030346 * t."X_83" + 0.029780 * t."X_84" + 0.014223 * t."X_85" + 0.021660 * t."X_86" + 0.030454 * t."X_87" + -0.027279 * t."X_88" + 0.033988 * t."X_89" + -0.009465 * t."X_90" + 0.011836 * t."X_91" + -0.038628 * t."X_92" + 0.029264 * t."X_93" + -0.029025 * t."X_94" + 0.017232 * t."X_95" + 0.002923 * t."X_96" + -0.001489 * t."X_97" + -0.014042 * t."X_98" + 0.009320 * t."X_99" AS "Score_3",
   CAST(NULL AS FLOAT) AS "Proba_3",
   CAST(NULL AS FLOAT) AS "LogProba_3"
  FROM model_input AS t
 ),
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
   GREATEST( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1."index" as "index",
    t1."Proba_0" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_0" AS "Exp_Score_0",
    t1."Proba_1" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    t1."Exp_Score_1" AS "Exp_Score_1",
    t1."Proba_2" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    t1."Exp_Score_2" AS "Exp_Score_2",
    t1."Proba_3" AS "Proba_3",
    t1."Score_3" AS "Score_3",
    t1."Exp_Score_3" AS "Exp_Score_3",
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        t."Proba_2" AS "Proba_2",
        t."Score_2" AS "Score_2",
        t."Proba_3" AS "Proba_3",
        t."Score_3" AS "Score_3",
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
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    t1."Exp_Score_2" / t1."Sum_Exp" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    t1."Exp_Score_3" / t1."Sum_Exp" AS "Proba_3",
    t1."Score_3" AS "Score_3"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    GREATEST( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Max_Score"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
    t."Max_Proba" AS "Max_Proba",
    t."Max_Score" AS "Max_Score"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
( SELECT t."index" as "index",
     t."Proba_0" AS "Proba_0",
     t."Score_0" AS "Score_0",
     t."Proba_1" AS "Proba_1",
     t."Score_1" AS "Score_1",
     t."Proba_2" AS "Proba_2",
     t."Score_2" AS "Score_2",
     t."Proba_3" AS "Proba_3",
     t."Score_3" AS "Score_3",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
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