WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -0.601790 + -0.005324 * X_0 + -0.010539 * X_1 + -0.022921 * X_2 + -0.018191 * X_3 + -0.026031 * X_4 + -0.001844 * X_5 + -0.016072 * X_6 + 0.043345 * X_7 + 0.024643 * X_8 + 0.007773 * X_9 + 0.025368 * X_10 + -0.021858 * X_11 + 0.003691 * X_12 + 0.034971 * X_13 + -0.006145 * X_14 + 0.009035 * X_15 + 0.021533 * X_16 + 0.003009 * X_17 + 0.023265 * X_18 + -0.035629 * X_19 + -0.028112 * X_20 + 0.009374 * X_21 + -0.032341 * X_22 + 0.048793 * X_23 + 0.056890 * X_24 + 0.001192 * X_25 + -0.006544 * X_26 + 0.030861 * X_27 + -0.003206 * X_28 + -0.049011 * X_29 + -0.024414 * X_30 + 0.125422 * X_31 + -0.073826 * X_32 + -0.028990 * X_33 + -0.014190 * X_34 + 0.009147 * X_35 + -0.026521 * X_36 + 0.041357 * X_37 + -0.069038 * X_38 + -0.055270 * X_39 + -0.000940 * X_40 + 0.007062 * X_41 + -0.025882 * X_42 + -0.011032 * X_43 + -0.013162 * X_44 + -0.035348 * X_45 + 0.064914 * X_46 + -0.106282 * X_47 + -0.008198 * X_48 + -0.110257 * X_49 + 0.025485 * X_50 + 0.009321 * X_51 + 0.024417 * X_52 + 0.099202 * X_53 + 0.000842 * X_54 + 0.061019 * X_55 + -0.016280 * X_56 + -0.050886 * X_57 + -0.028251 * X_58 + -0.048848 * X_59 + -0.072379 * X_60 + 0.001585 * X_61 + 0.130092 * X_62 + 0.009901 * X_63 + 0.015618 * X_64 + 0.002375 * X_65 + 0.013349 * X_66 + 0.054694 * X_67 + -0.035628 * X_68 + 0.040920 * X_69 + 0.092112 * X_70 + 0.000886 * X_71 + -0.030633 * X_72 + 0.005857 * X_73 + -0.009628 * X_74 + 0.037174 * X_75 + -0.048702 * X_76 + -0.030514 * X_77 + 0.058527 * X_78 + 0.013443 * X_79 + 0.005320 * X_80 + -0.052824 * X_81 + 0.009763 * X_82 + -0.080728 * X_83 + 0.029083 * X_84 + -0.003306 * X_85 + -0.021514 * X_86 + -0.083087 * X_87 + -0.004148 * X_88 + -0.094027 * X_89 + 0.003071 * X_90 + -0.020573 * X_91 + 0.021383 * X_92 + 0.039289 * X_93 + 0.051648 * X_94 + -0.029810 * X_95 + 0.037563 * X_96 + -0.006288 * X_97 + -0.012505 * X_98 + -0.020990 * X_99 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.436952 + 0.034032 * X_0 + 0.007603 * X_1 + 0.044650 * X_2 + -0.039371 * X_3 + 0.011215 * X_4 + 0.034232 * X_5 + -0.035082 * X_6 + 0.035184 * X_7 + -0.009488 * X_8 + 0.054971 * X_9 + -0.047602 * X_10 + 0.007870 * X_11 + -0.084385 * X_12 + -0.035669 * X_13 + 0.094269 * X_14 + 0.030969 * X_15 + -0.028692 * X_16 + 0.005340 * X_17 + -0.010927 * X_18 + 0.058121 * X_19 + 0.065597 * X_20 + 0.006289 * X_21 + 0.081619 * X_22 + -0.020072 * X_23 + 0.003631 * X_24 + -0.043705 * X_25 + 0.037451 * X_26 + -0.011402 * X_27 + -0.018590 * X_28 + -0.019763 * X_29 + -0.006628 * X_30 + 0.048370 * X_31 + -0.005152 * X_32 + 0.053656 * X_33 + 0.038371 * X_34 + -0.020167 * X_35 + 0.012871 * X_36 + -0.067396 * X_37 + -0.016961 * X_38 + -0.032518 * X_39 + 0.080744 * X_40 + -0.033817 * X_41 + 0.020926 * X_42 + 0.019584 * X_43 + 0.035250 * X_44 + 0.027478 * X_45 + -0.053807 * X_46 + 0.047236 * X_47 + 0.019857 * X_48 + 0.043025 * X_49 + 0.024061 * X_50 + 0.039375 * X_51 + 0.072724 * X_52 + -0.046333 * X_53 + -0.041455 * X_54 + -0.023615 * X_55 + 0.028600 * X_56 + 0.093525 * X_57 + -0.005520 * X_58 + 0.041425 * X_59 + 0.050394 * X_60 + -0.036653 * X_61 + 0.063341 * X_62 + 0.015025 * X_63 + -0.004457 * X_64 + 0.009589 * X_65 + 0.002653 * X_66 + 0.052660 * X_67 + 0.010823 * X_68 + -0.081501 * X_69 + 0.010120 * X_70 + 0.021871 * X_71 + 0.030783 * X_72 + -0.015300 * X_73 + -0.023896 * X_74 + -0.044046 * X_75 + 0.028220 * X_76 + 0.027941 * X_77 + 0.021742 * X_78 + -0.003361 * X_79 + -0.009293 * X_80 + -0.025440 * X_81 + 0.051679 * X_82 + 0.103391 * X_83 + 0.005023 * X_84 + -0.003858 * X_85 + -0.043780 * X_86 + 0.036946 * X_87 + -0.002127 * X_88 + 0.027898 * X_89 + 0.016119 * X_90 + -0.058314 * X_91 + 0.049459 * X_92 + -0.005280 * X_93 + 0.011009 * X_94 + 0.097603 * X_95 + -0.058398 * X_96 + 0.046037 * X_97 + 0.094455 * X_98 + -0.054271 * X_99 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.435640 + -0.034930 * X_0 + -0.010589 * X_1 + -0.068333 * X_2 + -0.052446 * X_3 + 0.031465 * X_4 + -0.034632 * X_5 + 0.080992 * X_6 + -0.042011 * X_7 + 0.002406 * X_8 + -0.047070 * X_9 + 0.011769 * X_10 + -0.021342 * X_11 + 0.039029 * X_12 + 0.043260 * X_13 + -0.032285 * X_14 + -0.024069 * X_15 + 0.034158 * X_16 + -0.059689 * X_17 + -0.009752 * X_18 + -0.019810 * X_19 + -0.015658 * X_20 + -0.014323 * X_21 + -0.073313 * X_22 + 0.045391 * X_23 + -0.054397 * X_24 + 0.008985 * X_25 + -0.045795 * X_26 + 0.024220 * X_27 + -0.023890 * X_28 + -0.021749 * X_29 + 0.008560 * X_30 + -0.041865 * X_31 + 0.013201 * X_32 + -0.049720 * X_33 + -0.028201 * X_34 + -0.016640 * X_35 + -0.041367 * X_36 + 0.029482 * X_37 + 0.001724 * X_38 + 0.022620 * X_39 + -0.056006 * X_40 + 0.030201 * X_41 + 0.043612 * X_42 + 0.021150 * X_43 + -0.051276 * X_44 + -0.005742 * X_45 + -0.078265 * X_46 + -0.040945 * X_47 + -0.041511 * X_48 + 0.059288 * X_49 + 0.017191 * X_50 + -0.031672 * X_51 + -0.028123 * X_52 + -0.039241 * X_53 + -0.025912 * X_54 + -0.089360 * X_55 + 0.033256 * X_56 + -0.022473 * X_57 + 0.007005 * X_58 + 0.006697 * X_59 + 0.117308 * X_60 + 0.009898 * X_61 + -0.037747 * X_62 + -0.021390 * X_63 + 0.055055 * X_64 + -0.015716 * X_65 + -0.024192 * X_66 + -0.015184 * X_67 + 0.010298 * X_68 + 0.040711 * X_69 + -0.054818 * X_70 + 0.052639 * X_71 + 0.016242 * X_72 + -0.032788 * X_73 + 0.022885 * X_74 + 0.037867 * X_75 + -0.019188 * X_76 + -0.052165 * X_77 + -0.048599 * X_78 + 0.005361 * X_79 + 0.044863 * X_80 + 0.035805 * X_81 + -0.012117 * X_82 + -0.030388 * X_83 + -0.042227 * X_84 + -0.008580 * X_85 + 0.032161 * X_86 + -0.024907 * X_87 + 0.017759 * X_88 + 0.001940 * X_89 + -0.017472 * X_90 + 0.006728 * X_91 + -0.008830 * X_92 + -0.045597 * X_93 + 0.020703 * X_94 + -0.102778 * X_95 + -0.024424 * X_96 + -0.057825 * X_97 + -0.067428 * X_98 + 0.035152 * X_99 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.530651 + 0.006223 * X_0 + 0.013524 * X_1 + 0.046604 * X_2 + 0.110009 * X_3 + -0.016649 * X_4 + 0.002244 * X_5 + -0.029838 * X_6 + -0.036518 * X_7 + -0.017561 * X_8 + -0.015674 * X_9 + 0.010465 * X_10 + 0.030215 * X_11 + 0.041665 * X_12 + -0.042563 * X_13 + -0.055838 * X_14 + -0.015935 * X_15 + -0.026999 * X_16 + 0.051339 * X_17 + -0.002586 * X_18 + -0.002682 * X_19 + -0.021827 * X_20 + -0.001340 * X_21 + 0.024035 * X_22 + -0.074112 * X_23 + -0.006125 * X_24 + 0.033528 * X_25 + 0.014888 * X_26 + -0.028437 * X_27 + 0.045687 * X_28 + 0.090523 * X_29 + 0.022483 * X_30 + -0.133470 * X_31 + 0.065776 * X_32 + 0.025054 * X_33 + 0.004020 * X_34 + 0.029800 * X_35 + 0.055016 * X_36 + -0.003442 * X_37 + 0.084274 * X_38 + 0.065169 * X_39 + -0.023799 * X_40 + -0.003445 * X_41 + -0.038656 * X_42 + -0.029702 * X_43 + 0.029188 * X_44 + 0.013611 * X_45 + 0.062651 * X_46 + 0.099991 * X_47 + 0.029852 * X_48 + 0.007598 * X_49 + -0.066737 * X_50 + -0.017024 * X_51 + -0.069018 * X_52 + -0.019295 * X_53 + 0.066525 * X_54 + 0.051956 * X_55 + -0.045576 * X_56 + -0.020166 * X_57 + 0.026766 * X_58 + 0.000726 * X_59 + -0.096165 * X_60 + 0.025169 * X_61 + -0.154378 * X_62 + -0.003536 * X_63 + -0.066215 * X_64 + 0.005882 * X_65 + 0.009465 * X_66 + -0.092170 * X_67 + 0.014507 * X_68 + -0.000129 * X_69 + -0.047413 * X_70 + -0.075396 * X_71 + -0.016393 * X_72 + 0.042231 * X_73 + 0.010638 * X_74 + -0.030995 * X_75 + 0.039670 * X_76 + 0.054738 * X_77 + -0.031669 * X_78 + -0.004479 * X_79 + -0.040890 * X_80 + 0.042459 * X_81 + -0.049324 * X_82 + 0.007725 * X_83 + 0.008121 * X_84 + 0.015743 * X_85 + 0.033132 * X_86 + 0.071048 * X_87 + -0.011484 * X_88 + 0.064190 * X_89 + -0.001718 * X_90 + 0.072158 * X_91 + -0.062011 * X_92 + 0.011589 * X_93 + -0.083360 * X_94 + 0.034985 * X_95 + 0.045259 * X_96 + 0.018077 * X_97 + -0.014522 * X_98 + 0.040109 * X_99 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3"
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