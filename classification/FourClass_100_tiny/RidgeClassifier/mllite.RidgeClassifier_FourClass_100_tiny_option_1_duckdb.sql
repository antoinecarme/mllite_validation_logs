WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "FourClass_100_tiny" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT t."index" AS "index",
   -0.249764 + -0.034088 * t."X_0" + 0.047886 * t."X_1" + 0.009084 * t."X_2" + -0.042919 * t."X_3" + 0.025753 * t."X_4" + -0.042496 * t."X_5" + 0.032411 * t."X_6" + 0.017392 * t."X_7" + -0.003303 * t."X_8" + -0.000838 * t."X_9" + 0.054237 * t."X_10" + -0.018617 * t."X_11" + -0.020033 * t."X_12" + -0.072613 * t."X_13" + 0.039798 * t."X_14" + -0.070648 * t."X_15" + -0.039930 * t."X_16" + -0.031152 * t."X_17" + -0.007756 * t."X_18" + 0.012360 * t."X_19" + 0.039965 * t."X_20" + -0.041931 * t."X_21" + 0.005864 * t."X_22" + 0.013420 * t."X_23" + 0.009487 * t."X_24" + -0.047506 * t."X_25" + -0.002141 * t."X_26" + -0.002503 * t."X_27" + -0.012646 * t."X_28" + 0.004098 * t."X_29" + 0.023039 * t."X_30" + -0.000580 * t."X_31" + -0.044879 * t."X_32" + -0.066652 * t."X_33" + -0.025728 * t."X_34" + 0.062745 * t."X_35" + 0.073222 * t."X_36" + -0.050289 * t."X_37" + 0.001466 * t."X_38" + -0.093689 * t."X_39" + -0.012472 * t."X_40" + -0.004735 * t."X_41" + 0.012735 * t."X_42" + 0.056510 * t."X_43" + 0.020743 * t."X_44" + -0.005499 * t."X_45" + 0.016190 * t."X_46" + -0.045699 * t."X_47" + -0.029008 * t."X_48" + -0.021522 * t."X_49" + -0.043904 * t."X_50" + 0.056282 * t."X_51" + -0.022608 * t."X_52" + -0.004164 * t."X_53" + -0.005038 * t."X_54" + 0.040178 * t."X_55" + -0.071343 * t."X_56" + -0.007547 * t."X_57" + 0.017895 * t."X_58" + -0.008320 * t."X_59" + -0.008388 * t."X_60" + -0.020937 * t."X_61" + 0.015179 * t."X_62" + -0.073968 * t."X_63" + 0.027338 * t."X_64" + 0.005516 * t."X_65" + 0.014735 * t."X_66" + 0.006003 * t."X_67" + 0.035024 * t."X_68" + 0.026232 * t."X_69" + 0.000917 * t."X_70" + 0.019292 * t."X_71" + -0.057747 * t."X_72" + 0.046539 * t."X_73" + 0.018269 * t."X_74" + -0.050856 * t."X_75" + -0.019636 * t."X_76" + 0.017174 * t."X_77" + -0.037880 * t."X_78" + 0.006587 * t."X_79" + 0.068576 * t."X_80" + -0.021022 * t."X_81" + 0.014044 * t."X_82" + 0.069827 * t."X_83" + -0.095092 * t."X_84" + 0.057562 * t."X_85" + -0.005839 * t."X_86" + -0.012111 * t."X_87" + 0.058334 * t."X_88" + 0.053692 * t."X_89" + 0.039327 * t."X_90" + 0.070143 * t."X_91" + 0.044262 * t."X_92" + 0.028203 * t."X_93" + 0.029245 * t."X_94" + 0.037150 * t."X_95" + 0.007452 * t."X_96" + -0.026724 * t."X_97" + 0.005302 * t."X_98" + 0.010378 * t."X_99" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.721142 + 0.026303 * t."X_0" + -0.006725 * t."X_1" + 0.003565 * t."X_2" + -0.043000 * t."X_3" + 0.021624 * t."X_4" + 0.037354 * t."X_5" + 0.046966 * t."X_6" + -0.039131 * t."X_7" + -0.001706 * t."X_8" + -0.049447 * t."X_9" + 0.010489 * t."X_10" + 0.019075 * t."X_11" + 0.031750 * t."X_12" + -0.002341 * t."X_13" + 0.027066 * t."X_14" + -0.011137 * t."X_15" + 0.022588 * t."X_16" + -0.002567 * t."X_17" + -0.033878 * t."X_18" + -0.088524 * t."X_19" + -0.015384 * t."X_20" + -0.004840 * t."X_21" + -0.048900 * t."X_22" + 0.035851 * t."X_23" + -0.010083 * t."X_24" + -0.023691 * t."X_25" + 0.007725 * t."X_26" + -0.010715 * t."X_27" + -0.006534 * t."X_28" + 0.007896 * t."X_29" + -0.060820 * t."X_30" + 0.002814 * t."X_31" + 0.003168 * t."X_32" + 0.004953 * t."X_33" + -0.014746 * t."X_34" + 0.024390 * t."X_35" + -0.052568 * t."X_36" + 0.012176 * t."X_37" + -0.002866 * t."X_38" + 0.017438 * t."X_39" + 0.010052 * t."X_40" + -0.026068 * t."X_41" + -0.006183 * t."X_42" + -0.006017 * t."X_43" + 0.034391 * t."X_44" + -0.004025 * t."X_45" + -0.019766 * t."X_46" + 0.015756 * t."X_47" + 0.002617 * t."X_48" + 0.033893 * t."X_49" + 0.004284 * t."X_50" + 0.020899 * t."X_51" + 0.040768 * t."X_52" + 0.033853 * t."X_53" + 0.003856 * t."X_54" + -0.025700 * t."X_55" + 0.022298 * t."X_56" + 0.003499 * t."X_57" + 0.020435 * t."X_58" + 0.010202 * t."X_59" + 0.019919 * t."X_60" + -0.005402 * t."X_61" + 0.011443 * t."X_62" + -0.005818 * t."X_63" + -0.006753 * t."X_64" + 0.015513 * t."X_65" + -0.010535 * t."X_66" + 0.030824 * t."X_67" + -0.004498 * t."X_68" + -0.002330 * t."X_69" + 0.005735 * t."X_70" + -0.028815 * t."X_71" + 0.045041 * t."X_72" + 0.019202 * t."X_73" + -0.000205 * t."X_74" + -0.018902 * t."X_75" + 0.022190 * t."X_76" + 0.012523 * t."X_77" + 0.069980 * t."X_78" + 0.015162 * t."X_79" + 0.013834 * t."X_80" + 0.038073 * t."X_81" + 0.037931 * t."X_82" + -0.020212 * t."X_83" + -0.017106 * t."X_84" + 0.014184 * t."X_85" + -0.002691 * t."X_86" + 0.011076 * t."X_87" + 0.015652 * t."X_88" + -0.018810 * t."X_89" + -0.029814 * t."X_90" + -0.038810 * t."X_91" + 0.018374 * t."X_92" + -0.034143 * t."X_93" + -0.009092 * t."X_94" + -0.048827 * t."X_95" + -0.002948 * t."X_96" + 0.069434 * t."X_97" + 0.002573 * t."X_98" + -0.023575 * t."X_99" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.371580 + 0.000749 * t."X_0" + -0.028673 * t."X_1" + -0.004020 * t."X_2" + 0.078597 * t."X_3" + -0.028633 * t."X_4" + -0.003233 * t."X_5" + -0.038975 * t."X_6" + 0.041159 * t."X_7" + -0.045940 * t."X_8" + 0.010036 * t."X_9" + -0.034866 * t."X_10" + -0.011978 * t."X_11" + 0.019739 * t."X_12" + -0.005200 * t."X_13" + 0.012650 * t."X_14" + 0.017398 * t."X_15" + -0.017576 * t."X_16" + 0.033484 * t."X_17" + -0.002991 * t."X_18" + 0.060348 * t."X_19" + 0.020768 * t."X_20" + 0.042264 * t."X_21" + 0.025789 * t."X_22" + -0.006139 * t."X_23" + 0.023488 * t."X_24" + 0.074655 * t."X_25" + 0.061068 * t."X_26" + 0.006185 * t."X_27" + 0.010836 * t."X_28" + 0.005290 * t."X_29" + 0.001627 * t."X_30" + -0.010353 * t."X_31" + 0.036052 * t."X_32" + 0.064790 * t."X_33" + 0.026674 * t."X_34" + -0.057848 * t."X_35" + -0.031899 * t."X_36" + 0.029768 * t."X_37" + 0.040371 * t."X_38" + 0.013840 * t."X_39" + 0.059247 * t."X_40" + -0.015333 * t."X_41" + -0.058556 * t."X_42" + 0.018660 * t."X_43" + -0.071975 * t."X_44" + -0.054678 * t."X_45" + -0.018829 * t."X_46" + -0.001606 * t."X_47" + -0.040738 * t."X_48" + 0.004861 * t."X_49" + 0.009258 * t."X_50" + -0.021952 * t."X_51" + -0.062384 * t."X_52" + -0.009439 * t."X_53" + 0.007298 * t."X_54" + 0.011234 * t."X_55" + 0.032855 * t."X_56" + 0.055935 * t."X_57" + -0.022100 * t."X_58" + -0.024423 * t."X_59" + 0.028127 * t."X_60" + -0.005155 * t."X_61" + -0.004535 * t."X_62" + 0.049443 * t."X_63" + 0.024434 * t."X_64" + -0.008194 * t."X_65" + -0.007390 * t."X_66" + -0.021013 * t."X_67" + -0.023609 * t."X_68" + -0.016641 * t."X_69" + -0.032271 * t."X_70" + 0.023958 * t."X_71" + 0.037844 * t."X_72" + -0.064828 * t."X_73" + 0.011873 * t."X_74" + 0.027174 * t."X_75" + 0.006571 * t."X_76" + -0.007445 * t."X_77" + -0.048240 * t."X_78" + -0.018764 * t."X_79" + -0.019771 * t."X_80" + -0.028316 * t."X_81" + -0.033124 * t."X_82" + 0.032528 * t."X_83" + 0.081677 * t."X_84" + 0.021303 * t."X_85" + 0.014935 * t."X_86" + -0.019353 * t."X_87" + -0.020788 * t."X_88" + 0.045431 * t."X_89" + 0.028446 * t."X_90" + 0.019835 * t."X_91" + -0.050134 * t."X_92" + -0.019675 * t."X_93" + -0.015673 * t."X_94" + -0.028451 * t."X_95" + 0.038023 * t."X_96" + 0.008009 * t."X_97" + -0.006147 * t."X_98" + 0.041936 * t."X_99" AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.654503 + 0.006419 * t."X_0" + -0.013296 * t."X_1" + -0.007335 * t."X_2" + 0.005733 * t."X_3" + -0.018201 * t."X_4" + 0.009288 * t."X_5" + -0.042305 * t."X_6" + -0.021465 * t."X_7" + 0.052181 * t."X_8" + 0.039126 * t."X_9" + -0.029900 * t."X_10" + 0.011114 * t."X_11" + -0.033003 * t."X_12" + 0.081857 * t."X_13" + -0.079889 * t."X_14" + 0.062139 * t."X_15" + 0.033954 * t."X_16" + -0.000017 * t."X_17" + 0.045007 * t."X_18" + 0.014128 * t."X_19" + -0.043519 * t."X_20" + 0.004675 * t."X_21" + 0.016688 * t."X_22" + -0.042899 * t."X_23" + -0.022466 * t."X_24" + -0.003887 * t."X_25" + -0.066883 * t."X_26" + 0.007881 * t."X_27" + 0.008569 * t."X_28" + -0.017293 * t."X_29" + 0.036491 * t."X_30" + 0.008928 * t."X_31" + 0.006007 * t."X_32" + -0.004521 * t."X_33" + 0.014710 * t."X_34" + -0.028908 * t."X_35" + 0.013450 * t."X_36" + 0.007845 * t."X_37" + -0.038306 * t."X_38" + 0.061985 * t."X_39" + -0.055060 * t."X_40" + 0.046235 * t."X_41" + 0.051721 * t."X_42" + -0.068738 * t."X_43" + 0.016808 * t."X_44" + 0.064105 * t."X_45" + 0.021904 * t."X_46" + 0.031909 * t."X_47" + 0.068342 * t."X_48" + -0.016808 * t."X_49" + 0.028814 * t."X_50" + -0.055475 * t."X_51" + 0.044601 * t."X_52" + -0.019337 * t."X_53" + -0.006191 * t."X_54" + -0.026433 * t."X_55" + 0.015496 * t."X_56" + -0.052721 * t."X_57" + -0.015970 * t."X_58" + 0.022406 * t."X_59" + -0.039583 * t."X_60" + 0.031539 * t."X_61" + -0.022787 * t."X_62" + 0.029417 * t."X_63" + -0.043925 * t."X_64" + -0.012699 * t."X_65" + 0.003533 * t."X_66" + -0.015828 * t."X_67" + -0.008358 * t."X_68" + -0.007076 * t."X_69" + 0.026349 * t."X_70" + -0.014080 * t."X_71" + -0.025565 * t."X_72" + -0.001387 * t."X_73" + -0.030164 * t."X_74" + 0.043446 * t."X_75" + -0.007890 * t."X_76" + -0.022125 * t."X_77" + 0.013946 * t."X_78" + -0.002570 * t."X_79" + -0.063332 * t."X_80" + 0.011570 * t."X_81" + -0.018764 * t."X_82" + -0.081508 * t."X_83" + 0.030609 * t."X_84" + -0.093331 * t."X_85" + -0.006565 * t."X_86" + 0.020318 * t."X_87" + -0.050286 * t."X_88" + -0.079402 * t."X_89" + -0.038421 * t."X_90" + -0.052625 * t."X_91" + -0.012047 * t."X_92" + 0.025634 * t."X_93" + -0.004478 * t."X_94" + 0.040106 * t."X_95" + -0.042445 * t."X_96" + -0.054569 * t."X_97" + -0.003156 * t."X_98" + -0.028634 * t."X_99" AS "Score_3",
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