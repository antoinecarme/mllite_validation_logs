WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -0.841159 + -0.000445 * X_0 + -0.001766 * X_1 + 0.000488 * X_2 + 0.009145 * X_3 + 0.006860 * X_4 + -0.005648 * X_5 + -0.000587 * X_6 + 0.007845 * X_7 + 0.006956 * X_8 + 0.002349 * X_9 + -0.003622 * X_10 + -0.023602 * X_11 + -0.001897 * X_12 + 0.004587 * X_13 + -0.002411 * X_14 + 0.002662 * X_15 + -0.002455 * X_16 + 0.000059 * X_17 + 0.009633 * X_18 + 0.002271 * X_19 + -0.006190 * X_20 + 0.009368 * X_21 + -0.006046 * X_22 + 0.006614 * X_23 + 0.004407 * X_24 + 0.005367 * X_25 + -0.009373 * X_26 + 0.006225 * X_27 + -0.001681 * X_28 + -0.012579 * X_29 + -0.004688 * X_30 + 0.088637 * X_31 + -0.020345 * X_32 + -0.002868 * X_33 + 0.004974 * X_34 + 0.006597 * X_35 + -0.009370 * X_36 + 0.007650 * X_37 + -0.011171 * X_38 + -0.015180 * X_39 + 0.009858 * X_40 + -0.001960 * X_41 + -0.002982 * X_42 + 0.006142 * X_43 + -0.008829 * X_44 + -0.007303 * X_45 + 0.035634 * X_46 + -0.009079 * X_47 + -0.006881 * X_48 + -0.073578 * X_49 + 0.007696 * X_50 + 0.002291 * X_51 + 0.008839 * X_52 + 0.060447 * X_53 + 0.003582 * X_54 + 0.002206 * X_55 + -0.010524 * X_56 + -0.009708 * X_57 + -0.002099 * X_58 + 0.002522 * X_59 + -0.053215 * X_60 + -0.008134 * X_61 + 0.085441 * X_62 + 0.006218 * X_63 + 0.001106 * X_64 + -0.011912 * X_65 + -0.003699 * X_66 + 0.002904 * X_67 + -0.002663 * X_68 + 0.003565 * X_69 + 0.015021 * X_70 + -0.008951 * X_71 + -0.002259 * X_72 + -0.000901 * X_73 + -0.002436 * X_74 + 0.006901 * X_75 + -0.005564 * X_76 + 0.000088 * X_77 + 0.010548 * X_78 + 0.019513 * X_79 + -0.010274 * X_80 + -0.012230 * X_81 + 0.011510 * X_82 + -0.020880 * X_83 + 0.003275 * X_84 + -0.007831 * X_85 + -0.015132 * X_86 + -0.017307 * X_87 + -0.003048 * X_88 + -0.011962 * X_89 + 0.012304 * X_90 + 0.014652 * X_91 + 0.007714 * X_92 + -0.003721 * X_93 + 0.007996 * X_94 + -0.001476 * X_95 + 0.003169 * X_96 + 0.003820 * X_97 + 0.000956 * X_98 + 0.004141 * X_99 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.931336 + 0.003349 * X_0 + -0.006813 * X_1 + 0.007912 * X_2 + -0.001905 * X_3 + -0.000344 * X_4 + 0.008640 * X_5 + -0.005386 * X_6 + -0.002960 * X_7 + 0.003743 * X_8 + 0.015417 * X_9 + -0.001535 * X_10 + 0.016680 * X_11 + -0.006513 * X_12 + -0.015732 * X_13 + 0.006983 * X_14 + 0.004490 * X_15 + 0.004293 * X_16 + 0.005274 * X_17 + 0.000406 * X_18 + -0.004784 * X_19 + -0.006516 * X_20 + 0.006442 * X_21 + 0.010793 * X_22 + -0.009631 * X_23 + -0.008133 * X_24 + -0.010270 * X_25 + 0.012436 * X_26 + -0.029406 * X_27 + 0.002434 * X_28 + -0.000994 * X_29 + 0.003509 * X_30 + 0.030264 * X_31 + 0.003995 * X_32 + -0.003142 * X_33 + 0.005199 * X_34 + -0.003578 * X_35 + 0.000164 * X_36 + -0.007159 * X_37 + 0.001278 * X_38 + -0.004492 * X_39 + 0.013601 * X_40 + -0.000930 * X_41 + -0.003536 * X_42 + 0.001101 * X_43 + 0.013407 * X_44 + -0.004360 * X_45 + -0.023355 * X_46 + -0.003313 * X_47 + 0.000058 * X_48 + 0.013451 * X_49 + 0.001799 * X_50 + 0.003450 * X_51 + 0.002389 * X_52 + 0.008836 * X_53 + -0.008037 * X_54 + 0.004416 * X_55 + 0.024589 * X_56 + 0.011034 * X_57 + 0.004442 * X_58 + -0.007019 * X_59 + 0.029041 * X_60 + 0.001333 * X_61 + 0.067138 * X_62 + -0.007279 * X_63 + -0.012385 * X_64 + -0.012467 * X_65 + 0.006897 * X_66 + 0.015859 * X_67 + 0.000581 * X_68 + -0.014601 * X_69 + -0.013208 * X_70 + -0.001244 * X_71 + 0.009527 * X_72 + 0.002950 * X_73 + -0.000185 * X_74 + -0.005419 * X_75 + 0.017690 * X_76 + 0.006063 * X_77 + -0.008291 * X_78 + -0.068402 * X_79 + 0.004588 * X_80 + -0.014126 * X_81 + 0.001880 * X_82 + 0.020034 * X_83 + 0.007806 * X_84 + -0.001222 * X_85 + 0.000979 * X_86 + 0.002780 * X_87 + 0.003513 * X_88 + -0.005507 * X_89 + 0.000111 * X_90 + -0.014607 * X_91 + 0.007088 * X_92 + 0.003639 * X_93 + -0.003033 * X_94 + 0.007329 * X_95 + -0.009837 * X_96 + -0.003228 * X_97 + 0.007509 * X_98 + -0.010047 * X_99 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.204436 + -0.007365 * X_0 + -0.004068 * X_1 + -0.010652 * X_2 + -0.010048 * X_3 + 0.008023 * X_4 + -0.003607 * X_5 + 0.014826 * X_6 + -0.006585 * X_7 + -0.017882 * X_8 + -0.015795 * X_9 + 0.002699 * X_10 + -0.016258 * X_11 + 0.013547 * X_12 + 0.005496 * X_13 + 0.005374 * X_14 + 0.007553 * X_15 + 0.004239 * X_16 + -0.014913 * X_17 + -0.006830 * X_18 + 0.002412 * X_19 + -0.003567 * X_20 + -0.017208 * X_21 + -0.010033 * X_22 + 0.006005 * X_23 + 0.000867 * X_24 + 0.008459 * X_25 + -0.006335 * X_26 + 0.029519 * X_27 + -0.007396 * X_28 + -0.002125 * X_29 + 0.001466 * X_30 + -0.016155 * X_31 + 0.005492 * X_32 + 0.003713 * X_33 + -0.004475 * X_34 + -0.004566 * X_35 + 0.001580 * X_36 + 0.005514 * X_37 + -0.004921 * X_38 + 0.004833 * X_39 + -0.013725 * X_40 + 0.002829 * X_41 + 0.007350 * X_42 + -0.003459 * X_43 + -0.002339 * X_44 + 0.005272 * X_45 + -0.038306 * X_46 + -0.008150 * X_47 + -0.004880 * X_48 + 0.065431 * X_49 + 0.003879 * X_50 + -0.010046 * X_51 + -0.005824 * X_52 + -0.036448 * X_53 + 0.005562 * X_54 + -0.016924 * X_55 + -0.008094 * X_56 + 0.005283 * X_57 + 0.006681 * X_58 + -0.002400 * X_59 + 0.092928 * X_60 + 0.002287 * X_61 + -0.040779 * X_62 + -0.001586 * X_63 + 0.021731 * X_64 + 0.017666 * X_65 + -0.036643 * X_66 + -0.006109 * X_67 + 0.000328 * X_68 + 0.012172 * X_69 + -0.008271 * X_70 + 0.007439 * X_71 + 0.004510 * X_72 + -0.005509 * X_73 + 0.001482 * X_74 + 0.012579 * X_75 + -0.015709 * X_76 + -0.017506 * X_77 + -0.001093 * X_78 + 0.018735 * X_79 + 0.013820 * X_80 + 0.008845 * X_81 + -0.005210 * X_82 + -0.007910 * X_83 + -0.017037 * X_84 + 0.001989 * X_85 + 0.008213 * X_86 + 0.002088 * X_87 + 0.005463 * X_88 + 0.006271 * X_89 + -0.005669 * X_90 + -0.006512 * X_91 + 0.000250 * X_92 + -0.012419 * X_93 + 0.004155 * X_94 + -0.010670 * X_95 + 0.005986 * X_96 + 0.003264 * X_97 + -0.009082 * X_98 + -0.002249 * X_99 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.023136 + 0.004461 * X_0 + 0.012647 * X_1 + 0.002253 * X_2 + 0.002807 * X_3 + -0.014538 * X_4 + 0.000615 * X_5 + -0.008853 * X_6 + 0.001699 * X_7 + 0.007183 * X_8 + -0.001971 * X_9 + 0.002458 * X_10 + 0.023183 * X_11 + -0.005137 * X_12 + 0.005649 * X_13 + -0.009946 * X_14 + -0.014705 * X_15 + -0.006077 * X_16 + 0.009579 * X_17 + -0.003209 * X_18 + 0.000101 * X_19 + 0.016273 * X_20 + 0.001398 * X_21 + 0.005286 * X_22 + -0.002987 * X_23 + 0.002860 * X_24 + -0.003556 * X_25 + 0.003271 * X_26 + -0.006334 * X_27 + 0.006643 * X_28 + 0.015699 * X_29 + -0.000287 * X_30 + -0.102748 * X_31 + 0.010859 * X_32 + 0.002297 * X_33 + -0.005698 * X_34 + 0.001545 * X_35 + 0.007627 * X_36 + -0.006004 * X_37 + 0.014814 * X_38 + 0.014839 * X_39 + -0.009734 * X_40 + 0.000062 * X_41 + -0.000833 * X_42 + -0.003784 * X_43 + -0.002239 * X_44 + 0.006391 * X_45 + 0.026026 * X_46 + 0.020541 * X_47 + 0.011703 * X_48 + -0.005301 * X_49 + -0.013374 * X_50 + 0.004304 * X_51 + -0.005404 * X_52 + -0.032834 * X_53 + -0.001107 * X_54 + 0.010302 * X_55 + -0.005971 * X_56 + -0.006609 * X_57 + -0.009025 * X_58 + 0.006897 * X_59 + -0.068753 * X_60 + 0.004514 * X_61 + -0.111799 * X_62 + 0.002647 * X_63 + -0.010452 * X_64 + 0.006715 * X_65 + 0.033451 * X_66 + -0.012654 * X_67 + 0.001753 * X_68 + -0.001136 * X_69 + 0.006458 * X_70 + 0.002756 * X_71 + -0.011779 * X_72 + 0.003460 * X_73 + 0.001138 * X_74 + -0.014061 * X_75 + 0.003584 * X_76 + 0.011355 * X_77 + -0.001165 * X_78 + 0.030155 * X_79 + -0.008134 * X_80 + 0.017510 * X_81 + -0.008180 * X_82 + 0.008757 * X_83 + 0.005956 * X_84 + 0.007065 * X_85 + 0.005940 * X_86 + 0.012439 * X_87 + -0.005927 * X_88 + 0.011198 * X_89 + -0.006745 * X_90 + 0.006467 * X_91 + -0.015052 * X_92 + 0.012501 * X_93 + -0.009117 * X_94 + 0.004816 * X_95 + 0.000683 * X_96 + -0.003857 * X_97 + 0.000618 * X_98 + 0.008156 * X_99 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3"
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