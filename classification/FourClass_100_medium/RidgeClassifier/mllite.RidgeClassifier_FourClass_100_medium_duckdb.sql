WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "FourClass_100_medium" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT t."index" AS "index",
   -0.595580 + -0.005209 * t."X_0" + -0.010568 * t."X_1" + -0.023959 * t."X_2" + -0.017256 * t."X_3" + -0.025062 * t."X_4" + -0.002553 * t."X_5" + -0.014995 * t."X_6" + 0.043119 * t."X_7" + 0.024320 * t."X_8" + 0.007832 * t."X_9" + 0.022306 * t."X_10" + -0.015732 * t."X_11" + 0.003245 * t."X_12" + 0.034479 * t."X_13" + -0.004997 * t."X_14" + 0.009765 * t."X_15" + 0.020627 * t."X_16" + 0.004628 * t."X_17" + 0.021976 * t."X_18" + -0.034641 * t."X_19" + -0.029515 * t."X_20" + 0.009840 * t."X_21" + -0.031210 * t."X_22" + 0.048241 * t."X_23" + 0.056928 * t."X_24" + 0.001353 * t."X_25" + -0.004135 * t."X_26" + 0.029808 * t."X_27" + -0.002665 * t."X_28" + -0.048063 * t."X_29" + -0.025059 * t."X_30" + 0.123898 * t."X_31" + -0.073412 * t."X_32" + -0.029082 * t."X_33" + -0.013936 * t."X_34" + 0.002711 * t."X_35" + -0.026862 * t."X_36" + 0.041008 * t."X_37" + -0.069371 * t."X_38" + -0.054203 * t."X_39" + -0.001184 * t."X_40" + 0.006535 * t."X_41" + -0.024474 * t."X_42" + -0.011319 * t."X_43" + -0.013177 * t."X_44" + -0.035089 * t."X_45" + 0.063640 * t."X_46" + -0.105869 * t."X_47" + -0.007767 * t."X_48" + -0.104683 * t."X_49" + 0.025561 * t."X_50" + 0.009653 * t."X_51" + 0.024258 * t."X_52" + 0.106984 * t."X_53" + 0.000799 * t."X_54" + 0.060795 * t."X_55" + -0.016889 * t."X_56" + -0.050182 * t."X_57" + -0.028485 * t."X_58" + -0.048503 * t."X_59" + -0.066156 * t."X_60" + 0.000853 * t."X_61" + 0.125688 * t."X_62" + 0.011338 * t."X_63" + 0.015521 * t."X_64" + 0.000896 * t."X_65" + 0.018397 * t."X_66" + 0.054561 * t."X_67" + -0.035458 * t."X_68" + 0.040848 * t."X_69" + 0.091815 * t."X_70" + 0.000974 * t."X_71" + -0.030555 * t."X_72" + 0.006012 * t."X_73" + -0.009680 * t."X_74" + 0.037019 * t."X_75" + -0.048458 * t."X_76" + -0.030383 * t."X_77" + 0.058525 * t."X_78" + 0.007181 * t."X_79" + 0.005389 * t."X_80" + -0.052557 * t."X_81" + 0.009720 * t."X_82" + -0.080367 * t."X_83" + 0.028988 * t."X_84" + -0.003318 * t."X_85" + -0.021673 * t."X_86" + -0.082746 * t."X_87" + -0.004037 * t."X_88" + -0.093748 * t."X_89" + 0.002984 * t."X_90" + -0.020412 * t."X_91" + 0.021390 * t."X_92" + 0.039211 * t."X_93" + 0.051567 * t."X_94" + -0.029838 * t."X_95" + 0.037569 * t."X_96" + -0.006352 * t."X_97" + -0.012338 * t."X_98" + -0.021013 * t."X_99" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.436952 + 0.033824 * t."X_0" + 0.007671 * t."X_1" + 0.045216 * t."X_2" + -0.039684 * t."X_3" + 0.011058 * t."X_4" + 0.034498 * t."X_5" + -0.035215 * t."X_6" + 0.035260 * t."X_7" + -0.009594 * t."X_8" + 0.054389 * t."X_9" + -0.046807 * t."X_10" + 0.007002 * t."X_11" + -0.084148 * t."X_12" + -0.036146 * t."X_13" + 0.094285 * t."X_14" + 0.030421 * t."X_15" + -0.028548 * t."X_16" + 0.004907 * t."X_17" + -0.010318 * t."X_18" + 0.057355 * t."X_19" + 0.065891 * t."X_20" + 0.005761 * t."X_21" + 0.081139 * t."X_22" + -0.020587 * t."X_23" + 0.003975 * t."X_24" + -0.043549 * t."X_25" + 0.036544 * t."X_26" + -0.021817 * t."X_27" + -0.018796 * t."X_28" + -0.019925 * t."X_29" + -0.006292 * t."X_30" + 0.049273 * t."X_31" + -0.005034 * t."X_32" + 0.053544 * t."X_33" + 0.038443 * t."X_34" + -0.015169 * t."X_35" + 0.012991 * t."X_36" + -0.067272 * t."X_37" + -0.016624 * t."X_38" + -0.032690 * t."X_39" + 0.080588 * t."X_40" + -0.033411 * t."X_41" + 0.020510 * t."X_42" + 0.019795 * t."X_43" + 0.035456 * t."X_44" + 0.027312 * t."X_45" + -0.051227 * t."X_46" + 0.047108 * t."X_47" + 0.019607 * t."X_48" + 0.041361 * t."X_49" + 0.023947 * t."X_50" + 0.039231 * t."X_51" + 0.072390 * t."X_52" + -0.046583 * t."X_53" + -0.041335 * t."X_54" + -0.023656 * t."X_55" + 0.028911 * t."X_56" + 0.093195 * t."X_57" + -0.005429 * t."X_58" + 0.041127 * t."X_59" + 0.048122 * t."X_60" + -0.036111 * t."X_61" + 0.063889 * t."X_62" + 0.014665 * t."X_63" + -0.004436 * t."X_64" + 0.006633 * t."X_65" + -0.001158 * t."X_66" + 0.052569 * t."X_67" + 0.010723 * t."X_68" + -0.081214 * t."X_69" + 0.009964 * t."X_70" + 0.021675 * t."X_71" + 0.030815 * t."X_72" + -0.015359 * t."X_73" + -0.023769 * t."X_74" + -0.043859 * t."X_75" + 0.028109 * t."X_76" + 0.027886 * t."X_77" + 0.021592 * t."X_78" + -0.005940 * t."X_79" + -0.009229 * t."X_80" + -0.025368 * t."X_81" + 0.051633 * t."X_82" + 0.102880 * t."X_83" + 0.004959 * t."X_84" + -0.003867 * t."X_85" + -0.043653 * t."X_86" + 0.036767 * t."X_87" + -0.002194 * t."X_88" + 0.027861 * t."X_89" + 0.016106 * t."X_90" + -0.058189 * t."X_91" + 0.049220 * t."X_92" + -0.005177 * t."X_93" + 0.010856 * t."X_94" + 0.097249 * t."X_95" + -0.058254 * t."X_96" + 0.045791 * t."X_97" + 0.094062 * t."X_98" + -0.054166 * t."X_99" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.437378 + -0.034380 * t."X_0" + -0.010277 * t."X_1" + -0.067087 * t."X_2" + -0.053277 * t."X_3" + 0.029955 * t."X_4" + -0.034195 * t."X_5" + 0.079568 * t."X_6" + -0.041629 * t."X_7" + 0.002700 * t."X_8" + -0.047088 * t."X_9" + 0.014200 * t."X_10" + -0.014719 * t."X_11" + 0.040148 * t."X_12" + 0.043529 * t."X_13" + -0.033313 * t."X_14" + -0.025004 * t."X_15" + 0.034974 * t."X_16" + -0.060917 * t."X_17" + -0.008702 * t."X_18" + -0.020311 * t."X_19" + -0.014646 * t."X_20" + -0.014481 * t."X_21" + -0.073988 * t."X_22" + 0.045623 * t."X_23" + -0.054122 * t."X_24" + 0.008791 * t."X_25" + -0.047369 * t."X_26" + 0.011934 * t."X_27" + -0.024440 * t."X_28" + -0.022567 * t."X_29" + 0.009117 * t."X_30" + -0.038159 * t."X_31" + 0.012654 * t."X_32" + -0.049610 * t."X_33" + -0.028401 * t."X_34" + -0.009024 * t."X_35" + -0.040872 * t."X_36" + 0.029257 * t."X_37" + 0.001981 * t."X_38" + 0.021629 * t."X_39" + -0.055725 * t."X_40" + 0.030747 * t."X_41" + 0.042435 * t."X_42" + 0.021414 * t."X_43" + -0.051236 * t."X_44" + -0.005873 * t."X_45" + -0.074092 * t."X_46" + -0.041136 * t."X_47" + -0.041652 * t."X_48" + 0.059683 * t."X_49" + 0.016822 * t."X_50" + -0.032259 * t."X_51" + -0.028070 * t."X_52" + -0.033659 * t."X_53" + -0.026101 * t."X_54" + -0.089185 * t."X_55" + 0.033740 * t."X_56" + -0.022765 * t."X_57" + 0.007270 * t."X_58" + 0.006733 * t."X_59" + 0.114247 * t."X_60" + 0.010469 * t."X_61" + -0.038484 * t."X_62" + -0.022577 * t."X_63" + 0.054880 * t."X_64" + -0.020616 * t."X_65" + -0.025111 * t."X_66" + -0.015089 * t."X_67" + 0.010359 * t."X_68" + 0.040714 * t."X_69" + -0.054606 * t."X_70" + 0.052468 * t."X_71" + 0.016253 * t."X_72" + -0.032711 * t."X_73" + 0.022780 * t."X_74" + 0.037695 * t."X_75" + -0.019093 * t."X_76" + -0.052043 * t."X_77" + -0.048459 * t."X_78" + -0.005576 * t."X_79" + 0.044568 * t."X_80" + 0.035740 * t."X_81" + -0.012166 * t."X_82" + -0.030370 * t."X_83" + -0.042130 * t."X_84" + -0.008503 * t."X_85" + 0.032112 * t."X_86" + -0.024860 * t."X_87" + 0.017697 * t."X_88" + 0.002005 * t."X_89" + -0.017350 * t."X_90" + 0.006769 * t."X_91" + -0.008769 * t."X_92" + -0.045561 * t."X_93" + 0.020630 * t."X_94" + -0.102519 * t."X_95" + -0.024390 * t."X_96" + -0.057558 * t."X_97" + -0.067203 * t."X_98" + 0.035073 * t."X_99" AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.530086 + 0.005765 * t."X_0" + 0.013174 * t."X_1" + 0.045830 * t."X_2" + 0.110217 * t."X_3" + -0.015951 * t."X_4" + 0.002249 * t."X_5" + -0.029358 * t."X_6" + -0.036750 * t."X_7" + -0.017426 * t."X_8" + -0.015133 * t."X_9" + 0.010301 * t."X_10" + 0.023446 * t."X_11" + 0.040754 * t."X_12" + -0.041862 * t."X_13" + -0.055976 * t."X_14" + -0.015182 * t."X_15" + -0.027053 * t."X_16" + 0.051382 * t."X_17" + -0.002956 * t."X_18" + -0.002403 * t."X_19" + -0.021730 * t."X_20" + -0.001120 * t."X_21" + 0.024059 * t."X_22" + -0.073278 * t."X_23" + -0.006782 * t."X_24" + 0.033405 * t."X_25" + 0.014959 * t."X_26" + -0.019923 * t."X_27" + 0.045901 * t."X_28" + 0.090556 * t."X_29" + 0.022234 * t."X_30" + -0.135015 * t."X_31" + 0.065791 * t."X_32" + 0.025148 * t."X_33" + 0.003894 * t."X_34" + 0.021473 * t."X_35" + 0.054743 * t."X_36" + -0.002993 * t."X_37" + 0.084014 * t."X_38" + 0.065265 * t."X_39" + -0.023680 * t."X_40" + -0.003871 * t."X_41" + -0.038471 * t."X_42" + -0.029890 * t."X_43" + 0.028957 * t."X_44" + 0.013650 * t."X_45" + 0.061675 * t."X_46" + 0.099897 * t."X_47" + 0.029812 * t."X_48" + 0.003637 * t."X_49" + -0.066330 * t."X_50" + -0.016626 * t."X_51" + -0.068578 * t."X_52" + -0.026747 * t."X_53" + 0.066636 * t."X_54" + 0.052046 * t."X_55" + -0.045761 * t."X_56" + -0.020247 * t."X_57" + 0.026645 * t."X_58" + 0.000644 * t."X_59" + -0.096215 * t."X_60" + 0.024789 * t."X_61" + -0.151090 * t."X_62" + -0.003425 * t."X_63" + -0.065965 * t."X_64" + 0.013091 * t."X_65" + 0.007867 * t."X_66" + -0.092041 * t."X_67" + 0.014376 * t."X_68" + -0.000349 * t."X_69" + -0.047173 * t."X_70" + -0.075117 * t."X_71" + -0.016514 * t."X_72" + 0.042058 * t."X_73" + 0.010668 * t."X_74" + -0.030855 * t."X_75" + 0.039442 * t."X_76" + 0.054540 * t."X_77" + -0.031658 * t."X_78" + 0.004338 * t."X_79" + -0.040728 * t."X_80" + 0.042185 * t."X_81" + -0.049187 * t."X_82" + 0.007858 * t."X_83" + 0.008183 * t."X_84" + 0.015688 * t."X_85" + 0.033214 * t."X_86" + 0.070839 * t."X_87" + -0.011466 * t."X_88" + 0.063882 * t."X_89" + -0.001740 * t."X_90" + 0.071832 * t."X_91" + -0.061840 * t."X_92" + 0.011526 * t."X_93" + -0.083054 * t."X_94" + 0.035108 * t."X_95" + 0.045075 * t."X_96" + 0.018120 * t."X_97" + -0.014522 * t."X_98" + 0.040105 * t."X_99" AS "Score_3",
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