WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -0.597588 + -0.002145 * X_0 + -0.002153 * X_1 + -0.005388 * X_2 + 0.018287 * X_3 + 0.016656 * X_4 + -0.011725 * X_5 + 0.001966 * X_6 + 0.021902 * X_7 + 0.013302 * X_8 + 0.007124 * X_9 + -0.009914 * X_10 + 0.000408 * X_11 + -0.005741 * X_12 + 0.017037 * X_13 + -0.010220 * X_14 + 0.017384 * X_15 + -0.004674 * X_16 + -0.002013 * X_17 + 0.022986 * X_18 + -0.003466 * X_19 + -0.016025 * X_20 + 0.013079 * X_21 + -0.009660 * X_22 + 0.010474 * X_23 + 0.013384 * X_24 + 0.017459 * X_25 + -0.024991 * X_26 + 0.043656 * X_27 + 0.001474 * X_28 + -0.024707 * X_29 + -0.017192 * X_30 + 0.115982 * X_31 + -0.056117 * X_32 + -0.003565 * X_33 + 0.011445 * X_34 + -0.000714 * X_35 + -0.024633 * X_36 + 0.031215 * X_37 + -0.031717 * X_38 + -0.040354 * X_39 + 0.022118 * X_40 + 0.001382 * X_41 + -0.012731 * X_42 + 0.016556 * X_43 + -0.022920 * X_44 + -0.033083 * X_45 + 0.041929 * X_46 + -0.014873 * X_47 + -0.022097 * X_48 + -0.066449 * X_49 + 0.015758 * X_50 + 0.011848 * X_51 + 0.019782 * X_52 + 0.129103 * X_53 + 0.006072 * X_54 + 0.006394 * X_55 + -0.019282 * X_56 + -0.023103 * X_57 + -0.001098 * X_58 + 0.008536 * X_59 + -0.052983 * X_60 + -0.028646 * X_61 + 0.118287 * X_62 + 0.026403 * X_63 + 0.012822 * X_64 + -0.012695 * X_65 + 0.032283 * X_66 + 0.012221 * X_67 + -0.008018 * X_68 + 0.018908 * X_69 + 0.038659 * X_70 + -0.018231 * X_71 + 0.000374 * X_72 + 0.001761 * X_73 + -0.016673 * X_74 + 0.028490 * X_75 + -0.021791 * X_76 + 0.000056 * X_77 + 0.035325 * X_78 + -0.008893 * X_79 + -0.019286 * X_80 + -0.028254 * X_81 + 0.026156 * X_82 + -0.061067 * X_83 + 0.006924 * X_84 + -0.015547 * X_85 + -0.031869 * X_86 + -0.042367 * X_87 + -0.008576 * X_88 + -0.039440 * X_89 + 0.024659 * X_90 + 0.031767 * X_91 + 0.007231 * X_92 + -0.002110 * X_93 + 0.012930 * X_94 + -0.002858 * X_95 + 0.012477 * X_96 + -0.000885 * X_97 + -0.008048 * X_98 + 0.007289 * X_99 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.460131 + 0.003678 * X_0 + -0.025445 * X_1 + 0.025294 * X_2 + -0.007558 * X_3 + -0.000577 * X_4 + 0.022938 * X_5 + -0.016282 * X_6 + 0.001018 * X_7 + 0.020381 * X_8 + 0.043895 * X_9 + -0.008005 * X_10 + 0.005111 * X_11 + -0.027467 * X_12 + -0.040572 * X_13 + 0.028516 * X_14 + 0.012800 * X_15 + 0.014039 * X_16 + 0.015917 * X_17 + 0.016516 * X_18 + 0.001409 * X_19 + -0.006350 * X_20 + 0.028059 * X_21 + 0.021442 * X_22 + -0.017763 * X_23 + -0.030020 * X_24 + -0.035927 * X_25 + 0.042551 * X_26 + -0.004972 * X_27 + -0.002964 * X_28 + -0.002703 * X_29 + 0.013024 * X_30 + 0.033901 * X_31 + 0.010418 * X_32 + -0.001080 * X_33 + 0.010055 * X_34 + -0.039808 * X_35 + 0.007043 * X_36 + -0.032109 * X_37 + 0.005472 * X_38 + -0.017082 * X_39 + 0.037235 * X_40 + -0.005508 * X_41 + 0.003519 * X_42 + -0.000548 * X_43 + 0.039399 * X_44 + -0.004835 * X_45 + -0.052340 * X_46 + -0.013649 * X_47 + 0.004121 * X_48 + 0.012837 * X_49 + 0.018882 * X_50 + -0.003952 * X_51 + 0.014227 * X_52 + -0.017021 * X_53 + -0.026450 * X_54 + 0.019164 * X_55 + 0.070565 * X_56 + 0.026126 * X_57 + 0.019744 * X_58 + -0.009982 * X_59 + 0.030885 * X_60 + 0.014672 * X_61 + 0.096261 * X_62 + -0.024604 * X_63 + -0.037121 * X_64 + 0.012415 * X_65 + 0.001024 * X_66 + 0.047405 * X_67 + -0.012186 * X_68 + -0.054810 * X_69 + -0.041882 * X_70 + -0.001909 * X_71 + 0.019897 * X_72 + 0.008421 * X_73 + -0.006019 * X_74 + -0.025534 * X_75 + 0.037231 * X_76 + 0.009206 * X_77 + -0.023484 * X_78 + -0.003897 * X_79 + 0.002556 * X_80 + -0.030474 * X_81 + 0.012078 * X_82 + 0.058496 * X_83 + 0.021093 * X_84 + -0.004203 * X_85 + -0.010373 * X_86 + 0.005546 * X_87 + 0.006330 * X_88 + -0.009587 * X_89 + -0.007859 * X_90 + -0.031617 * X_91 + 0.017907 * X_92 + 0.014483 * X_93 + 0.002904 * X_94 + 0.021878 * X_95 + -0.024566 * X_96 + 0.002546 * X_97 + 0.040139 * X_98 + -0.025716 * X_99 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.407174 + -0.014571 * X_0 + -0.004989 * X_1 + -0.030727 * X_2 + -0.034106 * X_3 + 0.024561 * X_4 + -0.010424 * X_5 + 0.055628 * X_6 + -0.029197 * X_7 + -0.044856 * X_8 + -0.036403 * X_9 + 0.010752 * X_10 + -0.019716 * X_11 + 0.050850 * X_12 + 0.024200 * X_13 + -0.002144 * X_14 + 0.011268 * X_15 + 0.004912 * X_16 + -0.046729 * X_17 + -0.020894 * X_18 + 0.008880 * X_19 + -0.009511 * X_20 + -0.043544 * X_21 + -0.028382 * X_22 + 0.025013 * X_23 + 0.002754 * X_24 + 0.010554 * X_25 + -0.018748 * X_26 + -0.001827 * X_27 + -0.015216 * X_28 + -0.008479 * X_29 + -0.006766 * X_30 + -0.010349 * X_31 + 0.013854 * X_32 + 0.006749 * X_33 + 0.001014 * X_34 + 0.028191 * X_35 + -0.002853 * X_36 + 0.021521 * X_37 + -0.017480 * X_38 + 0.020346 * X_39 + -0.022130 * X_40 + 0.004633 * X_41 + 0.014165 * X_42 + -0.009217 * X_43 + -0.016405 * X_44 + 0.019705 * X_45 + -0.051036 * X_46 + -0.037699 * X_47 + -0.018205 * X_48 + 0.072708 * X_49 + 0.007976 * X_50 + -0.030457 * X_51 + -0.020069 * X_52 + -0.042164 * X_53 + 0.013644 * X_54 + -0.049070 * X_55 + -0.027408 * X_56 + 0.021131 * X_57 + 0.014726 * X_58 + -0.011238 * X_59 + 0.135441 * X_60 + -0.011809 * X_61 + -0.071602 * X_62 + -0.006089 * X_63 + 0.042857 * X_64 + -0.003069 * X_65 + -0.033838 * X_66 + -0.010863 * X_67 + 0.012822 * X_68 + 0.034502 * X_69 + -0.009596 * X_70 + 0.020835 * X_71 + 0.026857 * X_72 + -0.017512 * X_73 + 0.011274 * X_74 + 0.028368 * X_75 + -0.037443 * X_76 + -0.051678 * X_77 + -0.010738 * X_78 + -0.012498 * X_79 + 0.036190 * X_80 + 0.016386 * X_81 + -0.010799 * X_82 + -0.027783 * X_83 + -0.057850 * X_84 + 0.005506 * X_85 + 0.020610 * X_86 + 0.006304 * X_87 + 0.029561 * X_88 + 0.014975 * X_89 + -0.007331 * X_90 + -0.012027 * X_91 + 0.013500 * X_92 + -0.041664 * X_93 + 0.013231 * X_94 + -0.036232 * X_95 + 0.009177 * X_96 + -0.000162 * X_97 + -0.018065 * X_98 + 0.009101 * X_99 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.535844 + 0.013038 * X_0 + 0.032588 * X_1 + 0.010821 * X_2 + 0.023378 * X_3 + -0.040640 * X_4 + -0.000789 * X_5 + -0.041312 * X_6 + 0.006277 * X_7 + 0.011172 * X_8 + -0.014616 * X_9 + 0.007168 * X_10 + 0.051746 * X_11 + -0.017643 * X_12 + -0.000665 * X_13 + -0.016151 * X_14 + -0.041452 * X_15 + -0.014277 * X_16 + 0.032825 * X_17 + -0.018608 * X_18 + -0.006823 * X_19 + 0.031886 * X_20 + 0.002406 * X_21 + 0.016599 * X_22 + -0.017723 * X_23 + 0.013882 * X_24 + 0.007914 * X_25 + 0.001188 * X_26 + -0.009908 * X_27 + 0.016706 * X_28 + 0.035889 * X_29 + 0.010934 * X_30 + -0.141397 * X_31 + 0.031845 * X_32 + -0.002104 * X_33 + -0.022514 * X_34 + 0.007622 * X_35 + 0.020443 * X_36 + -0.020627 * X_37 + 0.043725 * X_38 + 0.037090 * X_39 + -0.037223 * X_40 + -0.000507 * X_41 + -0.004954 * X_42 + -0.006791 * X_43 + -0.000074 * X_44 + 0.018214 * X_45 + 0.044878 * X_46 + 0.066220 * X_47 + 0.036181 * X_48 + 0.011397 * X_49 + -0.042617 * X_50 + 0.022560 * X_51 + -0.013940 * X_52 + -0.026291 * X_53 + 0.006733 * X_54 + 0.023513 * X_55 + -0.023875 * X_56 + -0.024154 * X_57 + -0.033373 * X_58 + 0.012683 * X_59 + -0.098009 * X_60 + 0.025784 * X_61 + -0.151824 * X_62 + 0.004291 * X_63 + -0.018558 * X_64 + 0.000326 * X_65 + 0.032079 * X_66 + -0.048764 * X_67 + 0.007381 * X_68 + 0.001400 * X_69 + 0.012819 * X_70 + -0.000695 * X_71 + -0.047128 * X_72 + 0.007330 * X_73 + 0.011417 * X_74 + -0.031324 * X_75 + 0.022002 * X_76 + 0.042416 * X_77 + -0.001103 * X_78 + 0.005342 * X_79 + -0.019460 * X_80 + 0.042342 * X_81 + -0.027435 * X_82 + 0.030355 * X_83 + 0.029833 * X_84 + 0.014243 * X_85 + 0.021631 * X_86 + 0.030516 * X_87 + -0.027314 * X_88 + 0.034053 * X_89 + -0.009470 * X_90 + 0.011877 * X_91 + -0.038638 * X_92 + 0.029291 * X_93 + -0.029065 * X_94 + 0.017213 * X_95 + 0.002911 * X_96 + -0.001499 * X_97 + -0.014026 * X_98 + 0.009325 * X_99 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3"
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