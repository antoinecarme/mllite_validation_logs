WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -0.411119 + -0.102690 * X_0 + -0.021733 * X_1 + 0.015702 * X_2 + 0.097197 * X_3 + 0.006831 * X_4 + -0.054610 * X_5 + -0.079589 * X_6 + 0.028203 * X_7 + 0.113468 * X_8 + 0.123671 * X_9 + 0.040121 * X_10 + 0.026748 * X_11 + -0.197075 * X_12 + 0.006949 * X_13 + 0.100460 * X_14 + -0.072329 * X_15 + 0.000690 * X_16 + -0.021788 * X_17 + -0.021677 * X_18 + -0.093302 * X_19 + 0.112259 * X_20 + -0.120557 * X_21 + -0.070810 * X_22 + 0.116105 * X_23 + 0.074577 * X_24 + 0.043012 * X_25 + 0.081422 * X_26 + -0.006275 * X_27 + -0.083023 * X_28 + 0.026549 * X_29 + 0.032380 * X_30 + 0.075476 * X_31 + -0.249492 * X_32 + -0.066264 * X_33 + -0.001693 * X_34 + 0.068630 * X_35 + 0.101035 * X_36 + 0.064770 * X_37 + 0.023285 * X_38 + -0.153403 * X_39 + -0.014943 * X_40 + 0.015217 * X_41 + 0.042262 * X_42 + 0.144974 * X_43 + -0.034358 * X_44 + 0.185682 * X_45 + 0.092146 * X_46 + 0.071845 * X_47 + -0.076954 * X_48 + 0.000795 * X_49 + 0.134872 * X_50 + -0.052525 * X_51 + 0.108029 * X_52 + 0.009529 * X_53 + -0.111329 * X_54 + 0.085142 * X_55 + 0.001382 * X_56 + 0.308394 * X_57 + -0.035489 * X_58 + 0.031380 * X_59 + -0.055121 * X_60 + -0.077758 * X_61 + 0.054455 * X_62 + -0.031606 * X_63 + 0.038193 * X_64 + -0.019955 * X_65 + 0.023258 * X_66 + 0.049326 * X_67 + 0.074851 * X_68 + 0.020224 * X_69 + -0.078391 * X_70 + 0.245075 * X_71 + 0.019157 * X_72 + -0.012945 * X_73 + 0.058804 * X_74 + -0.073844 * X_75 + 0.144940 * X_76 + 0.066601 * X_77 + -0.025704 * X_78 + 0.036143 * X_79 + 0.101031 * X_80 + 0.115347 * X_81 + -0.032025 * X_82 + -0.133767 * X_83 + -0.012764 * X_84 + 0.219501 * X_85 + 0.056442 * X_86 + -0.245222 * X_87 + -0.105097 * X_88 + 0.053344 * X_89 + 0.062717 * X_90 + 0.087789 * X_91 + 0.137431 * X_92 + 0.044787 * X_93 + 0.142997 * X_94 + 0.110703 * X_95 + 0.117300 * X_96 + 0.042600 * X_97 + -0.086883 * X_98 + 0.000259 * X_99 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.491056 + 0.048223 * X_0 + 0.106636 * X_1 + -0.052630 * X_2 + 0.003140 * X_3 + 0.067658 * X_4 + 0.200950 * X_5 + -0.031399 * X_6 + -0.012986 * X_7 + -0.109268 * X_8 + -0.062325 * X_9 + 0.022186 * X_10 + -0.004704 * X_11 + 0.280222 * X_12 + 0.100407 * X_13 + 0.089174 * X_14 + 0.033591 * X_15 + -0.036717 * X_16 + 0.001880 * X_17 + 0.070159 * X_18 + 0.106455 * X_19 + -0.172490 * X_20 + 0.042271 * X_21 + 0.052482 * X_22 + -0.105050 * X_23 + -0.055330 * X_24 + -0.286243 * X_25 + -0.067165 * X_26 + -0.029595 * X_27 + 0.116733 * X_28 + 0.105289 * X_29 + -0.052222 * X_30 + 0.025751 * X_31 + 0.283916 * X_32 + -0.091058 * X_33 + 0.120392 * X_34 + 0.053285 * X_35 + -0.120200 * X_36 + -0.024926 * X_37 + -0.121956 * X_38 + -0.165027 * X_39 + 0.000144 * X_40 + -0.043226 * X_41 + 0.032441 * X_42 + 0.088152 * X_43 + 0.096396 * X_44 + -0.014390 * X_45 + -0.104444 * X_46 + -0.126325 * X_47 + -0.091081 * X_48 + 0.030778 * X_49 + -0.195062 * X_50 + -0.092463 * X_51 + -0.106669 * X_52 + -0.065135 * X_53 + 0.186098 * X_54 + -0.055011 * X_55 + -0.030151 * X_56 + -0.269035 * X_57 + -0.086281 * X_58 + -0.094391 * X_59 + 0.114039 * X_60 + -0.119160 * X_61 + 0.007301 * X_62 + -0.011506 * X_63 + 0.015089 * X_64 + 0.006866 * X_65 + 0.003832 * X_66 + 0.013737 * X_67 + -0.080471 * X_68 + 0.024430 * X_69 + 0.008908 * X_70 + -0.220438 * X_71 + -0.057386 * X_72 + 0.117290 * X_73 + 0.015375 * X_74 + -0.003216 * X_75 + -0.001040 * X_76 + -0.129877 * X_77 + 0.113729 * X_78 + 0.010359 * X_79 + 0.021963 * X_80 + 0.036611 * X_81 + -0.043431 * X_82 + 0.046576 * X_83 + -0.073301 * X_84 + 0.027841 * X_85 + -0.158008 * X_86 + 0.112582 * X_87 + 0.031190 * X_88 + 0.064274 * X_89 + -0.178229 * X_90 + 0.076303 * X_91 + -0.020725 * X_92 + -0.181545 * X_93 + -0.211593 * X_94 + -0.203346 * X_95 + -0.127532 * X_96 + 0.161645 * X_97 + 0.105543 * X_98 + -0.162642 * X_99 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.403421 + -0.039221 * X_0 + -0.051614 * X_1 + 0.019422 * X_2 + 0.118383 * X_3 + -0.195829 * X_4 + -0.012083 * X_5 + 0.096234 * X_6 + 0.038452 * X_7 + -0.058004 * X_8 + 0.045381 * X_9 + 0.094765 * X_10 + -0.030417 * X_11 + -0.191201 * X_12 + -0.205457 * X_13 + 0.005799 * X_14 + 0.106719 * X_15 + 0.000097 * X_16 + 0.017560 * X_17 + -0.135349 * X_18 + 0.094485 * X_19 + 0.198574 * X_20 + -0.054935 * X_21 + -0.052710 * X_22 + 0.007137 * X_23 + -0.028191 * X_24 + 0.177718 * X_25 + 0.110912 * X_26 + 0.000011 * X_27 + -0.095751 * X_28 + -0.131981 * X_29 + 0.001525 * X_30 + -0.014083 * X_31 + -0.219334 * X_32 + 0.078374 * X_33 + -0.097921 * X_34 + -0.144102 * X_35 + -0.003497 * X_36 + 0.079004 * X_37 + 0.116753 * X_38 + 0.149682 * X_39 + 0.120648 * X_40 + -0.032542 * X_41 + -0.281834 * X_42 + -0.080243 * X_43 + -0.040968 * X_44 + -0.136570 * X_45 + 0.029092 * X_46 + -0.057438 * X_47 + -0.008041 * X_48 + 0.071992 * X_49 + 0.058166 * X_50 + 0.081089 * X_51 + 0.131385 * X_52 + 0.027508 * X_53 + -0.149734 * X_54 + 0.034318 * X_55 + 0.031859 * X_56 + 0.098718 * X_57 + -0.063393 * X_58 + 0.160801 * X_59 + 0.015085 * X_60 + 0.122494 * X_61 + -0.046954 * X_62 + 0.054308 * X_63 + -0.066925 * X_64 + 0.016298 * X_65 + -0.033904 * X_66 + -0.117034 * X_67 + -0.029073 * X_68 + 0.043032 * X_69 + -0.000852 * X_70 + 0.164564 * X_71 + 0.007061 * X_72 + -0.009675 * X_73 + -0.069454 * X_74 + 0.003788 * X_75 + -0.065721 * X_76 + -0.029814 * X_77 + -0.058036 * X_78 + -0.029558 * X_79 + -0.008504 * X_80 + -0.092724 * X_81 + 0.082910 * X_82 + 0.038142 * X_83 + 0.045105 * X_84 + -0.025719 * X_85 + 0.070394 * X_86 + -0.014983 * X_87 + 0.061702 * X_88 + -0.075685 * X_89 + 0.159607 * X_90 + -0.195047 * X_91 + -0.075843 * X_92 + 0.040286 * X_93 + 0.051344 * X_94 + -0.027131 * X_95 + 0.029770 * X_96 + -0.136096 * X_97 + 0.073858 * X_98 + 0.078226 * X_99 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.694401 + 0.093685 * X_0 + -0.033288 * X_1 + 0.017507 * X_2 + -0.218721 * X_3 + 0.121342 * X_4 + -0.134257 * X_5 + 0.014751 * X_6 + -0.053666 * X_7 + 0.053806 * X_8 + -0.106730 * X_9 + -0.157068 * X_10 + 0.008374 * X_11 + 0.108058 * X_12 + 0.098101 * X_13 + -0.195432 * X_14 + -0.067982 * X_15 + 0.035932 * X_16 + 0.002349 * X_17 + 0.086869 * X_18 + -0.107640 * X_19 + -0.138345 * X_20 + 0.133223 * X_21 + 0.071040 * X_22 + -0.018191 * X_23 + 0.008942 * X_24 + 0.065517 * X_25 + -0.125168 * X_26 + 0.035855 * X_27 + 0.062043 * X_28 + 0.000143 * X_29 + 0.018317 * X_30 + -0.087146 * X_31 + 0.184912 * X_32 + 0.078946 * X_33 + -0.020775 * X_34 + 0.022185 * X_35 + 0.022660 * X_36 + -0.118850 * X_37 + -0.018080 * X_38 + 0.168748 * X_39 + -0.105848 * X_40 + 0.060551 * X_41 + 0.207134 * X_42 + -0.152883 * X_43 + -0.021070 * X_44 + -0.034720 * X_45 + -0.016793 * X_46 + 0.111916 * X_47 + 0.176072 * X_48 + -0.103566 * X_49 + 0.002024 * X_50 + 0.063900 * X_51 + -0.132745 * X_52 + 0.028099 * X_53 + 0.074962 * X_54 + -0.064449 * X_55 + -0.003090 * X_56 + -0.138077 * X_57 + 0.185161 * X_58 + -0.097791 * X_59 + -0.074003 * X_60 + 0.074424 * X_61 + -0.014801 * X_62 + -0.011195 * X_63 + 0.013639 * X_64 + -0.003208 * X_65 + 0.006814 * X_66 + 0.053972 * X_67 + 0.034694 * X_68 + -0.087685 * X_69 + 0.070335 * X_70 + -0.189203 * X_71 + 0.031166 * X_72 + -0.094670 * X_73 + -0.004725 * X_74 + 0.073272 * X_75 + -0.078178 * X_76 + 0.093092 * X_77 + -0.029986 * X_78 + -0.016943 * X_79 + -0.114487 * X_80 + -0.059232 * X_81 + -0.007456 * X_82 + 0.049051 * X_83 + 0.040961 * X_84 + -0.221620 * X_85 + 0.031172 * X_86 + 0.147622 * X_87 + 0.012208 * X_88 + -0.041929 * X_89 + -0.044096 * X_90 + 0.030952 * X_91 + -0.040861 * X_92 + 0.096472 * X_93 + 0.017253 * X_94 + 0.119779 * X_95 + -0.019541 * X_96 + -0.068149 * X_97 + -0.092518 * X_98 + 0.084156 * X_99 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3"
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