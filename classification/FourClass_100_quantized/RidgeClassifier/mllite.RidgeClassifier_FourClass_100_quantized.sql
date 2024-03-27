WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -0.846064 + -0.000430 * X_0 + -0.001754 * X_1 + 0.000468 * X_2 + 0.009150 * X_3 + 0.006838 * X_4 + -0.005638 * X_5 + -0.000593 * X_6 + 0.007854 * X_7 + 0.006958 * X_8 + 0.002340 * X_9 + -0.003635 * X_10 + -0.023309 * X_11 + -0.001902 * X_12 + 0.004576 * X_13 + -0.002405 * X_14 + 0.002654 * X_15 + -0.002469 * X_16 + 0.000050 * X_17 + 0.009609 * X_18 + 0.002261 * X_19 + -0.006169 * X_20 + 0.009360 * X_21 + -0.006031 * X_22 + 0.006594 * X_23 + 0.004416 * X_24 + 0.005360 * X_25 + -0.009354 * X_26 + 0.006384 * X_27 + -0.001655 * X_28 + -0.012551 * X_29 + -0.004690 * X_30 + 0.088506 * X_31 + -0.020330 * X_32 + -0.002880 * X_33 + 0.004955 * X_34 + 0.006497 * X_35 + -0.009354 * X_36 + 0.007629 * X_37 + -0.011174 * X_38 + -0.015155 * X_39 + 0.009841 * X_40 + -0.001974 * X_41 + -0.002981 * X_42 + 0.006140 * X_43 + -0.008809 * X_44 + -0.007291 * X_45 + 0.035517 * X_46 + -0.009062 * X_47 + -0.006872 * X_48 + -0.073294 * X_49 + 0.007694 * X_50 + 0.002295 * X_51 + 0.008833 * X_52 + 0.060565 * X_53 + 0.003570 * X_54 + 0.002204 * X_55 + -0.010517 * X_56 + -0.009696 * X_57 + -0.002093 * X_58 + 0.002528 * X_59 + -0.053082 * X_60 + -0.008116 * X_61 + 0.085302 * X_62 + 0.006211 * X_63 + 0.001109 * X_64 + -0.011834 * X_65 + -0.003221 * X_66 + 0.002896 * X_67 + -0.002664 * X_68 + 0.003563 * X_69 + 0.014999 * X_70 + -0.008946 * X_71 + -0.002263 * X_72 + -0.000899 * X_73 + -0.002430 * X_74 + 0.006885 * X_75 + -0.005553 * X_76 + 0.000094 * X_77 + 0.010560 * X_78 + 0.019482 * X_79 + -0.010259 * X_80 + -0.012206 * X_81 + 0.011491 * X_82 + -0.020859 * X_83 + 0.003280 * X_84 + -0.007815 * X_85 + -0.015126 * X_86 + -0.017273 * X_87 + -0.003052 * X_88 + -0.011948 * X_89 + 0.012277 * X_90 + 0.014638 * X_91 + 0.007713 * X_92 + -0.003711 * X_93 + 0.007990 * X_94 + -0.001489 * X_95 + 0.003173 * X_96 + 0.003798 * X_97 + 0.000959 * X_98 + 0.004130 * X_99 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.930450 + 0.003346 * X_0 + -0.006802 * X_1 + 0.007911 * X_2 + -0.001894 * X_3 + -0.000333 * X_4 + 0.008628 * X_5 + -0.005379 * X_6 + -0.002954 * X_7 + 0.003728 * X_8 + 0.015400 * X_9 + -0.001548 * X_10 + 0.016393 * X_11 + -0.006504 * X_12 + -0.015722 * X_13 + 0.006980 * X_14 + 0.004483 * X_15 + 0.004290 * X_16 + 0.005278 * X_17 + 0.000397 * X_18 + -0.004777 * X_19 + -0.006508 * X_20 + 0.006420 * X_21 + 0.010773 * X_22 + -0.009609 * X_23 + -0.008139 * X_24 + -0.010251 * X_25 + 0.012425 * X_26 + -0.029098 * X_27 + 0.002418 * X_28 + -0.001000 * X_29 + 0.003502 * X_30 + 0.030076 * X_31 + 0.004001 * X_32 + -0.003139 * X_33 + 0.005188 * X_34 + -0.003939 * X_35 + 0.000180 * X_36 + -0.007157 * X_37 + 0.001272 * X_38 + -0.004492 * X_39 + 0.013602 * X_40 + -0.000931 * X_41 + -0.003538 * X_42 + 0.001072 * X_43 + 0.013381 * X_44 + -0.004368 * X_45 + -0.023383 * X_46 + -0.003300 * X_47 + 0.000066 * X_48 + 0.013281 * X_49 + 0.001798 * X_50 + 0.003453 * X_51 + 0.002379 * X_52 + 0.008477 * X_53 + -0.008029 * X_54 + 0.004406 * X_55 + 0.024555 * X_56 + 0.011031 * X_57 + 0.004430 * X_58 + -0.007018 * X_59 + 0.028943 * X_60 + 0.001318 * X_61 + 0.067221 * X_62 + -0.007283 * X_63 + -0.012368 * X_64 + -0.012115 * X_65 + 0.006722 * X_66 + 0.015851 * X_67 + 0.000572 * X_68 + -0.014589 * X_69 + -0.013210 * X_70 + -0.001236 * X_71 + 0.009521 * X_72 + 0.002945 * X_73 + -0.000182 * X_74 + -0.005399 * X_75 + 0.017672 * X_76 + 0.006068 * X_77 + -0.008271 * X_78 + -0.067586 * X_79 + 0.004591 * X_80 + -0.014104 * X_81 + 0.001894 * X_82 + 0.019998 * X_83 + 0.007778 * X_84 + -0.001224 * X_85 + 0.000973 * X_86 + 0.002779 * X_87 + 0.003514 * X_88 + -0.005487 * X_89 + 0.000123 * X_90 + -0.014596 * X_91 + 0.007099 * X_92 + 0.003633 * X_93 + -0.003044 * X_94 + 0.007329 * X_95 + -0.009846 * X_96 + -0.003211 * X_97 + 0.007505 * X_98 + -0.010035 * X_99 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.203135 + -0.007360 * X_0 + -0.004067 * X_1 + -0.010634 * X_2 + -0.010048 * X_3 + 0.008013 * X_4 + -0.003595 * X_5 + 0.014820 * X_6 + -0.006575 * X_7 + -0.017859 * X_8 + -0.015778 * X_9 + 0.002720 * X_10 + -0.016162 * X_11 + 0.013542 * X_12 + 0.005495 * X_13 + 0.005367 * X_14 + 0.007535 * X_15 + 0.004242 * X_16 + -0.014909 * X_17 + -0.006804 * X_18 + 0.002409 * X_19 + -0.003568 * X_20 + -0.017182 * X_21 + -0.010018 * X_22 + 0.005992 * X_23 + 0.000866 * X_24 + 0.008448 * X_25 + -0.006326 * X_26 + 0.029266 * X_27 + -0.007396 * X_28 + -0.002127 * X_29 + 0.001467 * X_30 + -0.016093 * X_31 + 0.005479 * X_32 + 0.003718 * X_33 + -0.004464 * X_34 + -0.004368 * X_35 + 0.001568 * X_36 + 0.005516 * X_37 + -0.004911 * X_38 + 0.004824 * X_39 + -0.013707 * X_40 + 0.002843 * X_41 + 0.007332 * X_42 + -0.003449 * X_43 + -0.002334 * X_44 + 0.005266 * X_45 + -0.038189 * X_46 + -0.008155 * X_47 + -0.004879 * X_48 + 0.065419 * X_49 + 0.003864 * X_50 + -0.010052 * X_51 + -0.005817 * X_52 + -0.036256 * X_53 + 0.005550 * X_54 + -0.016901 * X_55 + -0.008079 * X_56 + 0.005280 * X_57 + 0.006675 * X_58 + -0.002399 * X_59 + 0.092820 * X_60 + 0.002284 * X_61 + -0.040777 * X_62 + -0.001575 * X_63 + 0.021710 * X_64 + 0.017441 * X_65 + -0.036700 * X_66 + -0.006098 * X_67 + 0.000336 * X_68 + 0.012165 * X_69 + -0.008250 * X_70 + 0.007432 * X_71 + 0.004503 * X_72 + -0.005508 * X_73 + 0.001476 * X_74 + 0.012557 * X_75 + -0.015689 * X_76 + -0.017493 * X_77 + -0.001108 * X_78 + 0.018290 * X_79 + 0.013799 * X_80 + 0.008840 * X_81 + -0.005209 * X_82 + -0.007901 * X_83 + -0.017012 * X_84 + 0.001983 * X_85 + 0.008202 * X_86 + 0.002082 * X_87 + 0.005455 * X_88 + 0.006262 * X_89 + -0.005652 * X_90 + -0.006492 * X_91 + 0.000242 * X_92 + -0.012413 * X_93 + 0.004159 * X_94 + -0.010664 * X_95 + 0.005982 * X_96 + 0.003262 * X_97 + -0.009072 * X_98 + -0.002245 * X_99 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.020418 + 0.004443 * X_0 + 0.012623 * X_1 + 0.002255 * X_2 + 0.002793 * X_3 + -0.014518 * X_4 + 0.000605 * X_5 + -0.008847 * X_6 + 0.001676 * X_7 + 0.007173 * X_8 + -0.001962 * X_9 + 0.002463 * X_10 + 0.023080 * X_11 + -0.005135 * X_12 + 0.005651 * X_13 + -0.009942 * X_14 + -0.014673 * X_15 + -0.006064 * X_16 + 0.009581 * X_17 + -0.003202 * X_18 + 0.000108 * X_19 + 0.016246 * X_20 + 0.001401 * X_21 + 0.005276 * X_22 + -0.002977 * X_23 + 0.002856 * X_24 + -0.003558 * X_25 + 0.003256 * X_26 + -0.006549 * X_27 + 0.006633 * X_28 + 0.015677 * X_29 + -0.000278 * X_30 + -0.102490 * X_31 + 0.010850 * X_32 + 0.002302 * X_33 + -0.005679 * X_34 + 0.001808 * X_35 + 0.007607 * X_36 + -0.005988 * X_37 + 0.014813 * X_38 + 0.014823 * X_39 + -0.009736 * X_40 + 0.000063 * X_41 + -0.000813 * X_42 + -0.003762 * X_43 + -0.002238 * X_44 + 0.006392 * X_45 + 0.026054 * X_46 + 0.020517 * X_47 + 0.011686 * X_48 + -0.005403 * X_49 + -0.013356 * X_50 + 0.004305 * X_51 + -0.005395 * X_52 + -0.032783 * X_53 + -0.001090 * X_54 + 0.010291 * X_55 + -0.005959 * X_56 + -0.006615 * X_57 + -0.009012 * X_58 + 0.006890 * X_59 + -0.068681 * X_60 + 0.004514 * X_61 + -0.111746 * X_62 + 0.002647 * X_63 + -0.010450 * X_64 + 0.006510 * X_65 + 0.033205 * X_66 + -0.012650 * X_67 + 0.001757 * X_68 + -0.001139 * X_69 + 0.006460 * X_70 + 0.002750 * X_71 + -0.011760 * X_72 + 0.003462 * X_73 + 0.001136 * X_74 + -0.014043 * X_75 + 0.003570 * X_76 + 0.011331 * X_77 + -0.001181 * X_78 + 0.029815 * X_79 + -0.008130 * X_80 + 0.017470 * X_81 + -0.008176 * X_82 + 0.008762 * X_83 + 0.005955 * X_84 + 0.007056 * X_85 + 0.005950 * X_86 + 0.012413 * X_87 + -0.005917 * X_88 + 0.011174 * X_89 + -0.006747 * X_90 + 0.006450 * X_91 + -0.015054 * X_92 + 0.012491 * X_93 + -0.009105 * X_94 + 0.004824 * X_95 + 0.000691 * X_96 + -0.003850 * X_97 + 0.000607 * X_98 + 0.008150 * X_99 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3"
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