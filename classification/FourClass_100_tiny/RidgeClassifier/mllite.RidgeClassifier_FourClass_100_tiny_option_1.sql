WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -0.249764 + -0.034088 * X_0 + 0.047886 * X_1 + 0.009084 * X_2 + -0.042919 * X_3 + 0.025753 * X_4 + -0.042496 * X_5 + 0.032411 * X_6 + 0.017392 * X_7 + -0.003303 * X_8 + -0.000838 * X_9 + 0.054237 * X_10 + -0.018617 * X_11 + -0.020033 * X_12 + -0.072613 * X_13 + 0.039798 * X_14 + -0.070648 * X_15 + -0.039930 * X_16 + -0.031152 * X_17 + -0.007756 * X_18 + 0.012360 * X_19 + 0.039965 * X_20 + -0.041931 * X_21 + 0.005864 * X_22 + 0.013420 * X_23 + 0.009487 * X_24 + -0.047506 * X_25 + -0.002141 * X_26 + -0.002503 * X_27 + -0.012646 * X_28 + 0.004098 * X_29 + 0.023039 * X_30 + -0.000580 * X_31 + -0.044879 * X_32 + -0.066652 * X_33 + -0.025728 * X_34 + 0.062745 * X_35 + 0.073222 * X_36 + -0.050289 * X_37 + 0.001466 * X_38 + -0.093689 * X_39 + -0.012472 * X_40 + -0.004735 * X_41 + 0.012735 * X_42 + 0.056510 * X_43 + 0.020743 * X_44 + -0.005499 * X_45 + 0.016190 * X_46 + -0.045699 * X_47 + -0.029008 * X_48 + -0.021522 * X_49 + -0.043904 * X_50 + 0.056282 * X_51 + -0.022608 * X_52 + -0.004164 * X_53 + -0.005038 * X_54 + 0.040178 * X_55 + -0.071343 * X_56 + -0.007547 * X_57 + 0.017895 * X_58 + -0.008320 * X_59 + -0.008388 * X_60 + -0.020937 * X_61 + 0.015179 * X_62 + -0.073968 * X_63 + 0.027338 * X_64 + 0.005516 * X_65 + 0.014735 * X_66 + 0.006003 * X_67 + 0.035024 * X_68 + 0.026232 * X_69 + 0.000917 * X_70 + 0.019292 * X_71 + -0.057747 * X_72 + 0.046539 * X_73 + 0.018269 * X_74 + -0.050856 * X_75 + -0.019636 * X_76 + 0.017174 * X_77 + -0.037880 * X_78 + 0.006587 * X_79 + 0.068576 * X_80 + -0.021022 * X_81 + 0.014044 * X_82 + 0.069827 * X_83 + -0.095092 * X_84 + 0.057562 * X_85 + -0.005839 * X_86 + -0.012111 * X_87 + 0.058334 * X_88 + 0.053692 * X_89 + 0.039327 * X_90 + 0.070143 * X_91 + 0.044262 * X_92 + 0.028203 * X_93 + 0.029245 * X_94 + 0.037150 * X_95 + 0.007452 * X_96 + -0.026724 * X_97 + 0.005302 * X_98 + 0.010378 * X_99 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.721142 + 0.026303 * X_0 + -0.006725 * X_1 + 0.003565 * X_2 + -0.043000 * X_3 + 0.021624 * X_4 + 0.037354 * X_5 + 0.046966 * X_6 + -0.039131 * X_7 + -0.001706 * X_8 + -0.049447 * X_9 + 0.010489 * X_10 + 0.019075 * X_11 + 0.031750 * X_12 + -0.002341 * X_13 + 0.027066 * X_14 + -0.011137 * X_15 + 0.022588 * X_16 + -0.002567 * X_17 + -0.033878 * X_18 + -0.088524 * X_19 + -0.015384 * X_20 + -0.004840 * X_21 + -0.048900 * X_22 + 0.035851 * X_23 + -0.010083 * X_24 + -0.023691 * X_25 + 0.007725 * X_26 + -0.010715 * X_27 + -0.006534 * X_28 + 0.007896 * X_29 + -0.060820 * X_30 + 0.002814 * X_31 + 0.003168 * X_32 + 0.004953 * X_33 + -0.014746 * X_34 + 0.024390 * X_35 + -0.052568 * X_36 + 0.012176 * X_37 + -0.002866 * X_38 + 0.017438 * X_39 + 0.010052 * X_40 + -0.026068 * X_41 + -0.006183 * X_42 + -0.006017 * X_43 + 0.034391 * X_44 + -0.004025 * X_45 + -0.019766 * X_46 + 0.015756 * X_47 + 0.002617 * X_48 + 0.033893 * X_49 + 0.004284 * X_50 + 0.020899 * X_51 + 0.040768 * X_52 + 0.033853 * X_53 + 0.003856 * X_54 + -0.025700 * X_55 + 0.022298 * X_56 + 0.003499 * X_57 + 0.020435 * X_58 + 0.010202 * X_59 + 0.019919 * X_60 + -0.005402 * X_61 + 0.011443 * X_62 + -0.005818 * X_63 + -0.006753 * X_64 + 0.015513 * X_65 + -0.010535 * X_66 + 0.030824 * X_67 + -0.004498 * X_68 + -0.002330 * X_69 + 0.005735 * X_70 + -0.028815 * X_71 + 0.045041 * X_72 + 0.019202 * X_73 + -0.000205 * X_74 + -0.018902 * X_75 + 0.022190 * X_76 + 0.012523 * X_77 + 0.069980 * X_78 + 0.015162 * X_79 + 0.013834 * X_80 + 0.038073 * X_81 + 0.037931 * X_82 + -0.020212 * X_83 + -0.017106 * X_84 + 0.014184 * X_85 + -0.002691 * X_86 + 0.011076 * X_87 + 0.015652 * X_88 + -0.018810 * X_89 + -0.029814 * X_90 + -0.038810 * X_91 + 0.018374 * X_92 + -0.034143 * X_93 + -0.009092 * X_94 + -0.048827 * X_95 + -0.002948 * X_96 + 0.069434 * X_97 + 0.002573 * X_98 + -0.023575 * X_99 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.371580 + 0.000749 * X_0 + -0.028673 * X_1 + -0.004020 * X_2 + 0.078597 * X_3 + -0.028633 * X_4 + -0.003233 * X_5 + -0.038975 * X_6 + 0.041159 * X_7 + -0.045940 * X_8 + 0.010036 * X_9 + -0.034866 * X_10 + -0.011978 * X_11 + 0.019739 * X_12 + -0.005200 * X_13 + 0.012650 * X_14 + 0.017398 * X_15 + -0.017576 * X_16 + 0.033484 * X_17 + -0.002991 * X_18 + 0.060348 * X_19 + 0.020768 * X_20 + 0.042264 * X_21 + 0.025789 * X_22 + -0.006139 * X_23 + 0.023488 * X_24 + 0.074655 * X_25 + 0.061068 * X_26 + 0.006185 * X_27 + 0.010836 * X_28 + 0.005290 * X_29 + 0.001627 * X_30 + -0.010353 * X_31 + 0.036052 * X_32 + 0.064790 * X_33 + 0.026674 * X_34 + -0.057848 * X_35 + -0.031899 * X_36 + 0.029768 * X_37 + 0.040371 * X_38 + 0.013840 * X_39 + 0.059247 * X_40 + -0.015333 * X_41 + -0.058556 * X_42 + 0.018660 * X_43 + -0.071975 * X_44 + -0.054678 * X_45 + -0.018829 * X_46 + -0.001606 * X_47 + -0.040738 * X_48 + 0.004861 * X_49 + 0.009258 * X_50 + -0.021952 * X_51 + -0.062384 * X_52 + -0.009439 * X_53 + 0.007298 * X_54 + 0.011234 * X_55 + 0.032855 * X_56 + 0.055935 * X_57 + -0.022100 * X_58 + -0.024423 * X_59 + 0.028127 * X_60 + -0.005155 * X_61 + -0.004535 * X_62 + 0.049443 * X_63 + 0.024434 * X_64 + -0.008194 * X_65 + -0.007390 * X_66 + -0.021013 * X_67 + -0.023609 * X_68 + -0.016641 * X_69 + -0.032271 * X_70 + 0.023958 * X_71 + 0.037844 * X_72 + -0.064828 * X_73 + 0.011873 * X_74 + 0.027174 * X_75 + 0.006571 * X_76 + -0.007445 * X_77 + -0.048240 * X_78 + -0.018764 * X_79 + -0.019771 * X_80 + -0.028316 * X_81 + -0.033124 * X_82 + 0.032528 * X_83 + 0.081677 * X_84 + 0.021303 * X_85 + 0.014935 * X_86 + -0.019353 * X_87 + -0.020788 * X_88 + 0.045431 * X_89 + 0.028446 * X_90 + 0.019835 * X_91 + -0.050134 * X_92 + -0.019675 * X_93 + -0.015673 * X_94 + -0.028451 * X_95 + 0.038023 * X_96 + 0.008009 * X_97 + -0.006147 * X_98 + 0.041936 * X_99 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.654503 + 0.006419 * X_0 + -0.013296 * X_1 + -0.007335 * X_2 + 0.005733 * X_3 + -0.018201 * X_4 + 0.009288 * X_5 + -0.042305 * X_6 + -0.021465 * X_7 + 0.052181 * X_8 + 0.039126 * X_9 + -0.029900 * X_10 + 0.011114 * X_11 + -0.033003 * X_12 + 0.081857 * X_13 + -0.079889 * X_14 + 0.062139 * X_15 + 0.033954 * X_16 + -0.000017 * X_17 + 0.045007 * X_18 + 0.014128 * X_19 + -0.043519 * X_20 + 0.004675 * X_21 + 0.016688 * X_22 + -0.042899 * X_23 + -0.022466 * X_24 + -0.003887 * X_25 + -0.066883 * X_26 + 0.007881 * X_27 + 0.008569 * X_28 + -0.017293 * X_29 + 0.036491 * X_30 + 0.008928 * X_31 + 0.006007 * X_32 + -0.004521 * X_33 + 0.014710 * X_34 + -0.028908 * X_35 + 0.013450 * X_36 + 0.007845 * X_37 + -0.038306 * X_38 + 0.061985 * X_39 + -0.055060 * X_40 + 0.046235 * X_41 + 0.051721 * X_42 + -0.068738 * X_43 + 0.016808 * X_44 + 0.064105 * X_45 + 0.021904 * X_46 + 0.031909 * X_47 + 0.068342 * X_48 + -0.016808 * X_49 + 0.028814 * X_50 + -0.055475 * X_51 + 0.044601 * X_52 + -0.019337 * X_53 + -0.006191 * X_54 + -0.026433 * X_55 + 0.015496 * X_56 + -0.052721 * X_57 + -0.015970 * X_58 + 0.022406 * X_59 + -0.039583 * X_60 + 0.031539 * X_61 + -0.022787 * X_62 + 0.029417 * X_63 + -0.043925 * X_64 + -0.012699 * X_65 + 0.003533 * X_66 + -0.015828 * X_67 + -0.008358 * X_68 + -0.007076 * X_69 + 0.026349 * X_70 + -0.014080 * X_71 + -0.025565 * X_72 + -0.001387 * X_73 + -0.030164 * X_74 + 0.043446 * X_75 + -0.007890 * X_76 + -0.022125 * X_77 + 0.013946 * X_78 + -0.002570 * X_79 + -0.063332 * X_80 + 0.011570 * X_81 + -0.018764 * X_82 + -0.081508 * X_83 + 0.030609 * X_84 + -0.093331 * X_85 + -0.006565 * X_86 + 0.020318 * X_87 + -0.050286 * X_88 + -0.079402 * X_89 + -0.038421 * X_90 + -0.052625 * X_91 + -0.012047 * X_92 + 0.025634 * X_93 + -0.004478 * X_94 + 0.040106 * X_95 + -0.042445 * X_96 + -0.054569 * X_97 + -0.003156 * X_98 + -0.028634 * X_99 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3"
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