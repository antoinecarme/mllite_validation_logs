WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "FourClass_100_quantized" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT t."index" AS "index",
   -0.846064 + -0.000430 * t."X_0" + -0.001754 * t."X_1" + 0.000468 * t."X_2" + 0.009150 * t."X_3" + 0.006838 * t."X_4" + -0.005638 * t."X_5" + -0.000593 * t."X_6" + 0.007854 * t."X_7" + 0.006958 * t."X_8" + 0.002340 * t."X_9" + -0.003635 * t."X_10" + -0.023309 * t."X_11" + -0.001902 * t."X_12" + 0.004576 * t."X_13" + -0.002405 * t."X_14" + 0.002654 * t."X_15" + -0.002469 * t."X_16" + 0.000050 * t."X_17" + 0.009609 * t."X_18" + 0.002261 * t."X_19" + -0.006169 * t."X_20" + 0.009360 * t."X_21" + -0.006031 * t."X_22" + 0.006594 * t."X_23" + 0.004416 * t."X_24" + 0.005360 * t."X_25" + -0.009354 * t."X_26" + 0.006384 * t."X_27" + -0.001655 * t."X_28" + -0.012551 * t."X_29" + -0.004690 * t."X_30" + 0.088506 * t."X_31" + -0.020330 * t."X_32" + -0.002880 * t."X_33" + 0.004955 * t."X_34" + 0.006497 * t."X_35" + -0.009354 * t."X_36" + 0.007629 * t."X_37" + -0.011174 * t."X_38" + -0.015155 * t."X_39" + 0.009841 * t."X_40" + -0.001974 * t."X_41" + -0.002981 * t."X_42" + 0.006140 * t."X_43" + -0.008809 * t."X_44" + -0.007291 * t."X_45" + 0.035517 * t."X_46" + -0.009062 * t."X_47" + -0.006872 * t."X_48" + -0.073294 * t."X_49" + 0.007694 * t."X_50" + 0.002295 * t."X_51" + 0.008833 * t."X_52" + 0.060565 * t."X_53" + 0.003570 * t."X_54" + 0.002204 * t."X_55" + -0.010517 * t."X_56" + -0.009696 * t."X_57" + -0.002093 * t."X_58" + 0.002528 * t."X_59" + -0.053082 * t."X_60" + -0.008116 * t."X_61" + 0.085302 * t."X_62" + 0.006211 * t."X_63" + 0.001109 * t."X_64" + -0.011834 * t."X_65" + -0.003221 * t."X_66" + 0.002896 * t."X_67" + -0.002664 * t."X_68" + 0.003563 * t."X_69" + 0.014999 * t."X_70" + -0.008946 * t."X_71" + -0.002263 * t."X_72" + -0.000899 * t."X_73" + -0.002430 * t."X_74" + 0.006885 * t."X_75" + -0.005553 * t."X_76" + 0.000094 * t."X_77" + 0.010560 * t."X_78" + 0.019482 * t."X_79" + -0.010259 * t."X_80" + -0.012206 * t."X_81" + 0.011491 * t."X_82" + -0.020859 * t."X_83" + 0.003280 * t."X_84" + -0.007815 * t."X_85" + -0.015126 * t."X_86" + -0.017273 * t."X_87" + -0.003052 * t."X_88" + -0.011948 * t."X_89" + 0.012277 * t."X_90" + 0.014638 * t."X_91" + 0.007713 * t."X_92" + -0.003711 * t."X_93" + 0.007990 * t."X_94" + -0.001489 * t."X_95" + 0.003173 * t."X_96" + 0.003798 * t."X_97" + 0.000959 * t."X_98" + 0.004130 * t."X_99" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.930450 + 0.003346 * t."X_0" + -0.006802 * t."X_1" + 0.007911 * t."X_2" + -0.001894 * t."X_3" + -0.000333 * t."X_4" + 0.008628 * t."X_5" + -0.005379 * t."X_6" + -0.002954 * t."X_7" + 0.003728 * t."X_8" + 0.015400 * t."X_9" + -0.001548 * t."X_10" + 0.016393 * t."X_11" + -0.006504 * t."X_12" + -0.015722 * t."X_13" + 0.006980 * t."X_14" + 0.004483 * t."X_15" + 0.004290 * t."X_16" + 0.005278 * t."X_17" + 0.000397 * t."X_18" + -0.004777 * t."X_19" + -0.006508 * t."X_20" + 0.006420 * t."X_21" + 0.010773 * t."X_22" + -0.009609 * t."X_23" + -0.008139 * t."X_24" + -0.010251 * t."X_25" + 0.012425 * t."X_26" + -0.029098 * t."X_27" + 0.002418 * t."X_28" + -0.001000 * t."X_29" + 0.003502 * t."X_30" + 0.030076 * t."X_31" + 0.004001 * t."X_32" + -0.003139 * t."X_33" + 0.005188 * t."X_34" + -0.003939 * t."X_35" + 0.000180 * t."X_36" + -0.007157 * t."X_37" + 0.001272 * t."X_38" + -0.004492 * t."X_39" + 0.013602 * t."X_40" + -0.000931 * t."X_41" + -0.003538 * t."X_42" + 0.001072 * t."X_43" + 0.013381 * t."X_44" + -0.004368 * t."X_45" + -0.023383 * t."X_46" + -0.003300 * t."X_47" + 0.000066 * t."X_48" + 0.013281 * t."X_49" + 0.001798 * t."X_50" + 0.003453 * t."X_51" + 0.002379 * t."X_52" + 0.008477 * t."X_53" + -0.008029 * t."X_54" + 0.004406 * t."X_55" + 0.024555 * t."X_56" + 0.011031 * t."X_57" + 0.004430 * t."X_58" + -0.007018 * t."X_59" + 0.028943 * t."X_60" + 0.001318 * t."X_61" + 0.067221 * t."X_62" + -0.007283 * t."X_63" + -0.012368 * t."X_64" + -0.012115 * t."X_65" + 0.006722 * t."X_66" + 0.015851 * t."X_67" + 0.000572 * t."X_68" + -0.014589 * t."X_69" + -0.013210 * t."X_70" + -0.001236 * t."X_71" + 0.009521 * t."X_72" + 0.002945 * t."X_73" + -0.000182 * t."X_74" + -0.005399 * t."X_75" + 0.017672 * t."X_76" + 0.006068 * t."X_77" + -0.008271 * t."X_78" + -0.067586 * t."X_79" + 0.004591 * t."X_80" + -0.014104 * t."X_81" + 0.001894 * t."X_82" + 0.019998 * t."X_83" + 0.007778 * t."X_84" + -0.001224 * t."X_85" + 0.000973 * t."X_86" + 0.002779 * t."X_87" + 0.003514 * t."X_88" + -0.005487 * t."X_89" + 0.000123 * t."X_90" + -0.014596 * t."X_91" + 0.007099 * t."X_92" + 0.003633 * t."X_93" + -0.003044 * t."X_94" + 0.007329 * t."X_95" + -0.009846 * t."X_96" + -0.003211 * t."X_97" + 0.007505 * t."X_98" + -0.010035 * t."X_99" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.203135 + -0.007360 * t."X_0" + -0.004067 * t."X_1" + -0.010634 * t."X_2" + -0.010048 * t."X_3" + 0.008013 * t."X_4" + -0.003595 * t."X_5" + 0.014820 * t."X_6" + -0.006575 * t."X_7" + -0.017859 * t."X_8" + -0.015778 * t."X_9" + 0.002720 * t."X_10" + -0.016162 * t."X_11" + 0.013542 * t."X_12" + 0.005495 * t."X_13" + 0.005367 * t."X_14" + 0.007535 * t."X_15" + 0.004242 * t."X_16" + -0.014909 * t."X_17" + -0.006804 * t."X_18" + 0.002409 * t."X_19" + -0.003568 * t."X_20" + -0.017182 * t."X_21" + -0.010018 * t."X_22" + 0.005992 * t."X_23" + 0.000866 * t."X_24" + 0.008448 * t."X_25" + -0.006326 * t."X_26" + 0.029266 * t."X_27" + -0.007396 * t."X_28" + -0.002127 * t."X_29" + 0.001467 * t."X_30" + -0.016093 * t."X_31" + 0.005479 * t."X_32" + 0.003718 * t."X_33" + -0.004464 * t."X_34" + -0.004368 * t."X_35" + 0.001568 * t."X_36" + 0.005516 * t."X_37" + -0.004911 * t."X_38" + 0.004824 * t."X_39" + -0.013707 * t."X_40" + 0.002843 * t."X_41" + 0.007332 * t."X_42" + -0.003449 * t."X_43" + -0.002334 * t."X_44" + 0.005266 * t."X_45" + -0.038189 * t."X_46" + -0.008155 * t."X_47" + -0.004879 * t."X_48" + 0.065419 * t."X_49" + 0.003864 * t."X_50" + -0.010052 * t."X_51" + -0.005817 * t."X_52" + -0.036256 * t."X_53" + 0.005550 * t."X_54" + -0.016901 * t."X_55" + -0.008079 * t."X_56" + 0.005280 * t."X_57" + 0.006675 * t."X_58" + -0.002399 * t."X_59" + 0.092820 * t."X_60" + 0.002284 * t."X_61" + -0.040777 * t."X_62" + -0.001575 * t."X_63" + 0.021710 * t."X_64" + 0.017441 * t."X_65" + -0.036700 * t."X_66" + -0.006098 * t."X_67" + 0.000336 * t."X_68" + 0.012165 * t."X_69" + -0.008250 * t."X_70" + 0.007432 * t."X_71" + 0.004503 * t."X_72" + -0.005508 * t."X_73" + 0.001476 * t."X_74" + 0.012557 * t."X_75" + -0.015689 * t."X_76" + -0.017493 * t."X_77" + -0.001108 * t."X_78" + 0.018290 * t."X_79" + 0.013799 * t."X_80" + 0.008840 * t."X_81" + -0.005209 * t."X_82" + -0.007901 * t."X_83" + -0.017012 * t."X_84" + 0.001983 * t."X_85" + 0.008202 * t."X_86" + 0.002082 * t."X_87" + 0.005455 * t."X_88" + 0.006262 * t."X_89" + -0.005652 * t."X_90" + -0.006492 * t."X_91" + 0.000242 * t."X_92" + -0.012413 * t."X_93" + 0.004159 * t."X_94" + -0.010664 * t."X_95" + 0.005982 * t."X_96" + 0.003262 * t."X_97" + -0.009072 * t."X_98" + -0.002245 * t."X_99" AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.020418 + 0.004443 * t."X_0" + 0.012623 * t."X_1" + 0.002255 * t."X_2" + 0.002793 * t."X_3" + -0.014518 * t."X_4" + 0.000605 * t."X_5" + -0.008847 * t."X_6" + 0.001676 * t."X_7" + 0.007173 * t."X_8" + -0.001962 * t."X_9" + 0.002463 * t."X_10" + 0.023080 * t."X_11" + -0.005135 * t."X_12" + 0.005651 * t."X_13" + -0.009942 * t."X_14" + -0.014673 * t."X_15" + -0.006064 * t."X_16" + 0.009581 * t."X_17" + -0.003202 * t."X_18" + 0.000108 * t."X_19" + 0.016246 * t."X_20" + 0.001401 * t."X_21" + 0.005276 * t."X_22" + -0.002977 * t."X_23" + 0.002856 * t."X_24" + -0.003558 * t."X_25" + 0.003256 * t."X_26" + -0.006549 * t."X_27" + 0.006633 * t."X_28" + 0.015677 * t."X_29" + -0.000278 * t."X_30" + -0.102490 * t."X_31" + 0.010850 * t."X_32" + 0.002302 * t."X_33" + -0.005679 * t."X_34" + 0.001808 * t."X_35" + 0.007607 * t."X_36" + -0.005988 * t."X_37" + 0.014813 * t."X_38" + 0.014823 * t."X_39" + -0.009736 * t."X_40" + 0.000063 * t."X_41" + -0.000813 * t."X_42" + -0.003762 * t."X_43" + -0.002238 * t."X_44" + 0.006392 * t."X_45" + 0.026054 * t."X_46" + 0.020517 * t."X_47" + 0.011686 * t."X_48" + -0.005403 * t."X_49" + -0.013356 * t."X_50" + 0.004305 * t."X_51" + -0.005395 * t."X_52" + -0.032783 * t."X_53" + -0.001090 * t."X_54" + 0.010291 * t."X_55" + -0.005959 * t."X_56" + -0.006615 * t."X_57" + -0.009012 * t."X_58" + 0.006890 * t."X_59" + -0.068681 * t."X_60" + 0.004514 * t."X_61" + -0.111746 * t."X_62" + 0.002647 * t."X_63" + -0.010450 * t."X_64" + 0.006510 * t."X_65" + 0.033205 * t."X_66" + -0.012650 * t."X_67" + 0.001757 * t."X_68" + -0.001139 * t."X_69" + 0.006460 * t."X_70" + 0.002750 * t."X_71" + -0.011760 * t."X_72" + 0.003462 * t."X_73" + 0.001136 * t."X_74" + -0.014043 * t."X_75" + 0.003570 * t."X_76" + 0.011331 * t."X_77" + -0.001181 * t."X_78" + 0.029815 * t."X_79" + -0.008130 * t."X_80" + 0.017470 * t."X_81" + -0.008176 * t."X_82" + 0.008762 * t."X_83" + 0.005955 * t."X_84" + 0.007056 * t."X_85" + 0.005950 * t."X_86" + 0.012413 * t."X_87" + -0.005917 * t."X_88" + 0.011174 * t."X_89" + -0.006747 * t."X_90" + 0.006450 * t."X_91" + -0.015054 * t."X_92" + 0.012491 * t."X_93" + -0.009105 * t."X_94" + 0.004824 * t."X_95" + 0.000691 * t."X_96" + -0.003850 * t."X_97" + 0.000607 * t."X_98" + 0.008150 * t."X_99" AS "Score_3",
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