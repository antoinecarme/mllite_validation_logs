WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -0.584476 + -0.149482 * X_0 + 0.177374 * X_1 + 0.006457 * X_2 + 0.221549 * X_3 + -0.006775 * X_4 + 0.166078 * X_5 + 0.133836 * X_6 + -0.342083 * X_7 + 0.065577 * X_8 + 0.131714 * X_9 + -0.177602 * X_10 + 0.015111 * X_11 + -0.121622 * X_12 + 0.012661 * X_13 + 0.116193 * X_14 + -0.220935 * X_15 + 0.081262 * X_16 + -0.111115 * X_17 + 0.139084 * X_18 + -0.051024 * X_19 + 0.272064 * X_20 + -0.042323 * X_21 + -0.125059 * X_22 + -0.032476 * X_23 + -0.165943 * X_24 + -0.027691 * X_25 + -0.091845 * X_26 + 0.007514 * X_27 + -0.175878 * X_28 + -0.115776 * X_29 + -0.025400 * X_30 + 0.213897 * X_31 + -0.101205 * X_32 + -0.008131 * X_33 + -0.061767 * X_34 + 0.048025 * X_35 + 0.049709 * X_36 + -0.082073 * X_37 + 0.088260 * X_38 + -0.045333 * X_39 + 0.121818 * X_40 + 0.150798 * X_41 + 0.084119 * X_42 + -0.080673 * X_43 + -0.267043 * X_44 + 0.074550 * X_45 + 0.074983 * X_46 + -0.001198 * X_47 + -0.064360 * X_48 + -0.036843 * X_49 + 0.012829 * X_50 + 0.067431 * X_51 + 0.143346 * X_52 + -0.009441 * X_53 + -0.045341 * X_54 + 0.158448 * X_55 + -0.009826 * X_56 + 0.245732 * X_57 + -0.078063 * X_58 + 0.185085 * X_59 + -0.065655 * X_60 + -0.102528 * X_61 + 0.037533 * X_62 + -0.025775 * X_63 + 0.282400 * X_64 + -0.049630 * X_65 + 0.045499 * X_66 + -0.015525 * X_67 + -0.099236 * X_68 + 0.170258 * X_69 + 0.148471 * X_70 + 0.226160 * X_71 + 0.230163 * X_72 + 0.004486 * X_73 + -0.021293 * X_74 + 0.020048 * X_75 + 0.081731 * X_76 + -0.089122 * X_77 + -0.109616 * X_78 + 0.070820 * X_79 + 0.284101 * X_80 + -0.269289 * X_81 + -0.039934 * X_82 + -0.028882 * X_83 + -0.146797 * X_84 + 0.159601 * X_85 + -0.020691 * X_86 + -0.115997 * X_87 + -0.237720 * X_88 + -0.095270 * X_89 + 0.041029 * X_90 + 0.094548 * X_91 + 0.078023 * X_92 + -0.274951 * X_93 + 0.085865 * X_94 + 0.015906 * X_95 + 0.266422 * X_96 + 0.038177 * X_97 + 0.100254 * X_98 + 0.072483 * X_99 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.451225 + -0.011344 * X_0 + -0.120191 * X_1 + 0.246145 * X_2 + 0.125488 * X_3 + -0.077932 * X_4 + -0.049540 * X_5 + -0.040841 * X_6 + -0.113352 * X_7 + -0.179589 * X_8 + -0.203495 * X_9 + 0.065274 * X_10 + 0.103570 * X_11 + 0.063679 * X_12 + -0.178880 * X_13 + 0.104760 * X_14 + -0.085127 * X_15 + -0.003380 * X_16 + -0.076939 * X_17 + 0.072607 * X_18 + -0.017085 * X_19 + -0.144183 * X_20 + -0.119327 * X_21 + 0.219049 * X_22 + -0.212464 * X_23 + -0.050629 * X_24 + -0.320001 * X_25 + -0.007874 * X_26 + -0.118465 * X_27 + 0.343373 * X_28 + -0.026763 * X_29 + 0.005356 * X_30 + -0.020948 * X_31 + 0.030699 * X_32 + -0.123561 * X_33 + 0.084996 * X_34 + 0.043611 * X_35 + -0.123817 * X_36 + 0.010837 * X_37 + -0.038862 * X_38 + -0.053949 * X_39 + 0.128328 * X_40 + -0.034515 * X_41 + -0.045073 * X_42 + 0.196059 * X_43 + 0.217410 * X_44 + 0.049111 * X_45 + -0.106354 * X_46 + -0.161888 * X_47 + -0.084040 * X_48 + -0.005152 * X_49 + 0.180064 * X_50 + -0.064677 * X_51 + 0.053559 * X_52 + -0.100257 * X_53 + 0.101637 * X_54 + -0.103487 * X_55 + -0.025038 * X_56 + -0.230490 * X_57 + 0.001088 * X_58 + 0.023506 * X_59 + 0.098270 * X_60 + 0.086794 * X_61 + 0.123115 * X_62 + 0.175761 * X_63 + -0.193398 * X_64 + 0.067089 * X_65 + 0.011930 * X_66 + 0.121468 * X_67 + -0.183003 * X_68 + -0.081285 * X_69 + -0.107466 * X_70 + -0.141487 * X_71 + -0.097545 * X_72 + -0.100171 * X_73 + 0.019256 * X_74 + -0.053896 * X_75 + 0.025794 * X_76 + 0.131317 * X_77 + 0.175907 * X_78 + -0.002067 * X_79 + -0.237232 * X_80 + 0.170025 * X_81 + 0.065380 * X_82 + -0.007412 * X_83 + -0.056429 * X_84 + 0.081658 * X_85 + 0.186404 * X_86 + -0.155873 * X_87 + 0.031818 * X_88 + 0.136311 * X_89 + -0.121407 * X_90 + -0.039415 * X_91 + -0.180981 * X_92 + 0.105439 * X_93 + -0.037143 * X_94 + -0.033551 * X_95 + 0.051116 * X_96 + -0.078304 * X_97 + 0.182707 * X_98 + -0.161858 * X_99 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.517543 + 0.075500 * X_0 + -0.031313 * X_1 + -0.179848 * X_2 + -0.185499 * X_3 + -0.007088 * X_4 + -0.024311 * X_5 + 0.148488 * X_6 + 0.266681 * X_7 + 0.036949 * X_8 + 0.155383 * X_9 + 0.173507 * X_10 + -0.123068 * X_11 + 0.158625 * X_12 + -0.097844 * X_13 + -0.103307 * X_14 + 0.268755 * X_15 + 0.011330 * X_16 + 0.101214 * X_17 + -0.115272 * X_18 + 0.032845 * X_19 + 0.042012 * X_20 + 0.031905 * X_21 + -0.043262 * X_22 + 0.185386 * X_23 + 0.037967 * X_24 + 0.214675 * X_25 + 0.073515 * X_26 + 0.066277 * X_27 + -0.037082 * X_28 + -0.154406 * X_29 + 0.025466 * X_30 + -0.048213 * X_31 + 0.036976 * X_32 + 0.114338 * X_33 + 0.008839 * X_34 + -0.057436 * X_35 + 0.001217 * X_36 + 0.140320 * X_37 + -0.032805 * X_38 + 0.106185 * X_39 + -0.002348 * X_40 + -0.125542 * X_41 + -0.155516 * X_42 + -0.024535 * X_43 + -0.016020 * X_44 + -0.047866 * X_45 + -0.026209 * X_46 + 0.003736 * X_47 + -0.028453 * X_48 + 0.041483 * X_49 + -0.050938 * X_50 + -0.073957 * X_51 + -0.116936 * X_52 + 0.009532 * X_53 + -0.134487 * X_54 + 0.043353 * X_55 + -0.077166 * X_56 + 0.071805 * X_57 + -0.052453 * X_58 + 0.093659 * X_59 + 0.143064 * X_60 + -0.130462 * X_61 + -0.091074 * X_62 + -0.120431 * X_63 + -0.092353 * X_64 + -0.007889 * X_65 + -0.030340 * X_66 + -0.037059 * X_67 + 0.185729 * X_68 + -0.024315 * X_69 + 0.002305 * X_70 + 0.095725 * X_71 + -0.065462 * X_72 + -0.029083 * X_73 + -0.027027 * X_74 + 0.136243 * X_75 + 0.057201 * X_76 + -0.167520 * X_77 + -0.052736 * X_78 + -0.050223 * X_79 + 0.116978 * X_80 + 0.002750 * X_81 + 0.232277 * X_82 + -0.012485 * X_83 + 0.097530 * X_84 + -0.022447 * X_85 + -0.014701 * X_86 + 0.031809 * X_87 + 0.129679 * X_88 + -0.018849 * X_89 + 0.095345 * X_90 + -0.026117 * X_91 + 0.065089 * X_92 + -0.139273 * X_93 + -0.045635 * X_94 + -0.075261 * X_95 + -0.237609 * X_96 + 0.106648 * X_97 + -0.157031 * X_98 + 0.147590 * X_99 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.447006 + 0.085326 * X_0 + -0.025869 * X_1 + -0.072753 * X_2 + -0.161537 * X_3 + 0.091795 * X_4 + -0.092227 * X_5 + -0.241482 * X_6 + 0.188754 * X_7 + 0.077062 * X_8 + -0.083602 * X_9 + -0.061180 * X_10 + 0.002817 * X_11 + -0.100682 * X_12 + 0.264064 * X_13 + -0.117646 * X_14 + 0.037307 * X_15 + -0.089211 * X_16 + 0.086839 * X_17 + -0.096418 * X_18 + 0.035264 * X_19 + -0.169894 * X_20 + 0.129745 * X_21 + -0.050729 * X_22 + 0.059553 * X_23 + 0.178605 * X_24 + 0.133017 * X_25 + 0.026204 * X_26 + 0.045444 * X_27 + -0.130414 * X_28 + 0.296946 * X_29 + -0.005422 * X_30 + -0.144114 * X_31 + 0.033531 * X_32 + 0.017354 * X_33 + -0.032068 * X_34 + -0.034591 * X_35 + 0.072892 * X_36 + -0.069083 * X_37 + -0.016593 * X_38 + -0.006903 * X_39 + -0.247798 * X_40 + 0.009259 * X_41 + 0.116471 * X_42 + -0.090853 * X_43 + 0.065652 * X_44 + -0.075795 * X_45 + 0.057937 * X_46 + 0.159349 * X_47 + 0.176854 * X_48 + -0.000294 * X_49 + -0.141955 * X_50 + 0.071203 * X_51 + -0.079970 * X_52 + 0.096946 * X_53 + 0.078192 * X_54 + -0.098313 * X_55 + 0.112029 * X_56 + -0.087047 * X_57 + 0.129428 * X_58 + -0.302251 * X_59 + -0.177149 * X_60 + 0.146196 * X_61 + -0.067680 * X_62 + -0.029557 * X_63 + 0.003350 * X_64 + -0.008525 * X_65 + -0.029713 * X_66 + -0.068885 * X_67 + 0.096511 * X_68 + -0.064657 * X_69 + -0.043308 * X_70 + -0.180398 * X_71 + -0.067155 * X_72 + 0.124768 * X_73 + 0.029063 * X_74 + -0.102395 * X_75 + -0.164727 * X_76 + 0.125325 * X_77 + -0.013556 * X_78 + -0.015833 * X_79 + -0.163846 * X_80 + 0.096513 * X_81 + -0.257723 * X_82 + 0.048779 * X_83 + 0.105696 * X_84 + -0.218812 * X_85 + -0.151013 * X_86 + 0.240062 * X_87 + 0.076224 * X_88 + -0.022193 * X_89 + -0.014967 * X_90 + -0.029016 * X_91 + 0.037868 * X_92 + 0.308784 * X_93 + -0.003087 * X_94 + 0.092906 * X_95 + -0.079929 * X_96 + -0.066521 * X_97 + -0.125931 * X_98 + -0.058213 * X_99 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3"
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