WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -0.595580 + -0.005209 * X_0 + -0.010568 * X_1 + -0.023959 * X_2 + -0.017256 * X_3 + -0.025062 * X_4 + -0.002553 * X_5 + -0.014995 * X_6 + 0.043119 * X_7 + 0.024320 * X_8 + 0.007832 * X_9 + 0.022306 * X_10 + -0.015732 * X_11 + 0.003245 * X_12 + 0.034479 * X_13 + -0.004997 * X_14 + 0.009765 * X_15 + 0.020627 * X_16 + 0.004628 * X_17 + 0.021976 * X_18 + -0.034641 * X_19 + -0.029515 * X_20 + 0.009840 * X_21 + -0.031210 * X_22 + 0.048241 * X_23 + 0.056928 * X_24 + 0.001353 * X_25 + -0.004135 * X_26 + 0.029808 * X_27 + -0.002665 * X_28 + -0.048063 * X_29 + -0.025059 * X_30 + 0.123898 * X_31 + -0.073412 * X_32 + -0.029082 * X_33 + -0.013936 * X_34 + 0.002711 * X_35 + -0.026862 * X_36 + 0.041008 * X_37 + -0.069371 * X_38 + -0.054203 * X_39 + -0.001184 * X_40 + 0.006535 * X_41 + -0.024474 * X_42 + -0.011319 * X_43 + -0.013177 * X_44 + -0.035089 * X_45 + 0.063640 * X_46 + -0.105869 * X_47 + -0.007767 * X_48 + -0.104683 * X_49 + 0.025561 * X_50 + 0.009653 * X_51 + 0.024258 * X_52 + 0.106984 * X_53 + 0.000799 * X_54 + 0.060795 * X_55 + -0.016889 * X_56 + -0.050182 * X_57 + -0.028485 * X_58 + -0.048503 * X_59 + -0.066156 * X_60 + 0.000853 * X_61 + 0.125688 * X_62 + 0.011338 * X_63 + 0.015521 * X_64 + 0.000896 * X_65 + 0.018397 * X_66 + 0.054561 * X_67 + -0.035458 * X_68 + 0.040848 * X_69 + 0.091815 * X_70 + 0.000974 * X_71 + -0.030555 * X_72 + 0.006012 * X_73 + -0.009680 * X_74 + 0.037019 * X_75 + -0.048458 * X_76 + -0.030383 * X_77 + 0.058525 * X_78 + 0.007181 * X_79 + 0.005389 * X_80 + -0.052557 * X_81 + 0.009720 * X_82 + -0.080367 * X_83 + 0.028988 * X_84 + -0.003318 * X_85 + -0.021673 * X_86 + -0.082746 * X_87 + -0.004037 * X_88 + -0.093748 * X_89 + 0.002984 * X_90 + -0.020412 * X_91 + 0.021390 * X_92 + 0.039211 * X_93 + 0.051567 * X_94 + -0.029838 * X_95 + 0.037569 * X_96 + -0.006352 * X_97 + -0.012338 * X_98 + -0.021013 * X_99 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.436952 + 0.033824 * X_0 + 0.007671 * X_1 + 0.045216 * X_2 + -0.039684 * X_3 + 0.011058 * X_4 + 0.034498 * X_5 + -0.035215 * X_6 + 0.035260 * X_7 + -0.009594 * X_8 + 0.054389 * X_9 + -0.046807 * X_10 + 0.007002 * X_11 + -0.084148 * X_12 + -0.036146 * X_13 + 0.094285 * X_14 + 0.030421 * X_15 + -0.028548 * X_16 + 0.004907 * X_17 + -0.010318 * X_18 + 0.057355 * X_19 + 0.065891 * X_20 + 0.005761 * X_21 + 0.081139 * X_22 + -0.020587 * X_23 + 0.003975 * X_24 + -0.043549 * X_25 + 0.036544 * X_26 + -0.021817 * X_27 + -0.018796 * X_28 + -0.019925 * X_29 + -0.006292 * X_30 + 0.049273 * X_31 + -0.005034 * X_32 + 0.053544 * X_33 + 0.038443 * X_34 + -0.015169 * X_35 + 0.012991 * X_36 + -0.067272 * X_37 + -0.016624 * X_38 + -0.032690 * X_39 + 0.080588 * X_40 + -0.033411 * X_41 + 0.020510 * X_42 + 0.019795 * X_43 + 0.035456 * X_44 + 0.027312 * X_45 + -0.051227 * X_46 + 0.047108 * X_47 + 0.019607 * X_48 + 0.041361 * X_49 + 0.023947 * X_50 + 0.039231 * X_51 + 0.072390 * X_52 + -0.046583 * X_53 + -0.041335 * X_54 + -0.023656 * X_55 + 0.028911 * X_56 + 0.093195 * X_57 + -0.005429 * X_58 + 0.041127 * X_59 + 0.048122 * X_60 + -0.036111 * X_61 + 0.063889 * X_62 + 0.014665 * X_63 + -0.004436 * X_64 + 0.006633 * X_65 + -0.001158 * X_66 + 0.052569 * X_67 + 0.010723 * X_68 + -0.081214 * X_69 + 0.009964 * X_70 + 0.021675 * X_71 + 0.030815 * X_72 + -0.015359 * X_73 + -0.023769 * X_74 + -0.043859 * X_75 + 0.028109 * X_76 + 0.027886 * X_77 + 0.021592 * X_78 + -0.005940 * X_79 + -0.009229 * X_80 + -0.025368 * X_81 + 0.051633 * X_82 + 0.102880 * X_83 + 0.004959 * X_84 + -0.003867 * X_85 + -0.043653 * X_86 + 0.036767 * X_87 + -0.002194 * X_88 + 0.027861 * X_89 + 0.016106 * X_90 + -0.058189 * X_91 + 0.049220 * X_92 + -0.005177 * X_93 + 0.010856 * X_94 + 0.097249 * X_95 + -0.058254 * X_96 + 0.045791 * X_97 + 0.094062 * X_98 + -0.054166 * X_99 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.437378 + -0.034380 * X_0 + -0.010277 * X_1 + -0.067087 * X_2 + -0.053277 * X_3 + 0.029955 * X_4 + -0.034195 * X_5 + 0.079568 * X_6 + -0.041629 * X_7 + 0.002700 * X_8 + -0.047088 * X_9 + 0.014200 * X_10 + -0.014719 * X_11 + 0.040148 * X_12 + 0.043529 * X_13 + -0.033313 * X_14 + -0.025004 * X_15 + 0.034974 * X_16 + -0.060917 * X_17 + -0.008702 * X_18 + -0.020311 * X_19 + -0.014646 * X_20 + -0.014481 * X_21 + -0.073988 * X_22 + 0.045623 * X_23 + -0.054122 * X_24 + 0.008791 * X_25 + -0.047369 * X_26 + 0.011934 * X_27 + -0.024440 * X_28 + -0.022567 * X_29 + 0.009117 * X_30 + -0.038159 * X_31 + 0.012654 * X_32 + -0.049610 * X_33 + -0.028401 * X_34 + -0.009024 * X_35 + -0.040872 * X_36 + 0.029257 * X_37 + 0.001981 * X_38 + 0.021629 * X_39 + -0.055725 * X_40 + 0.030747 * X_41 + 0.042435 * X_42 + 0.021414 * X_43 + -0.051236 * X_44 + -0.005873 * X_45 + -0.074092 * X_46 + -0.041136 * X_47 + -0.041652 * X_48 + 0.059683 * X_49 + 0.016822 * X_50 + -0.032259 * X_51 + -0.028070 * X_52 + -0.033659 * X_53 + -0.026101 * X_54 + -0.089185 * X_55 + 0.033740 * X_56 + -0.022765 * X_57 + 0.007270 * X_58 + 0.006733 * X_59 + 0.114247 * X_60 + 0.010469 * X_61 + -0.038484 * X_62 + -0.022577 * X_63 + 0.054880 * X_64 + -0.020616 * X_65 + -0.025111 * X_66 + -0.015089 * X_67 + 0.010359 * X_68 + 0.040714 * X_69 + -0.054606 * X_70 + 0.052468 * X_71 + 0.016253 * X_72 + -0.032711 * X_73 + 0.022780 * X_74 + 0.037695 * X_75 + -0.019093 * X_76 + -0.052043 * X_77 + -0.048459 * X_78 + -0.005576 * X_79 + 0.044568 * X_80 + 0.035740 * X_81 + -0.012166 * X_82 + -0.030370 * X_83 + -0.042130 * X_84 + -0.008503 * X_85 + 0.032112 * X_86 + -0.024860 * X_87 + 0.017697 * X_88 + 0.002005 * X_89 + -0.017350 * X_90 + 0.006769 * X_91 + -0.008769 * X_92 + -0.045561 * X_93 + 0.020630 * X_94 + -0.102519 * X_95 + -0.024390 * X_96 + -0.057558 * X_97 + -0.067203 * X_98 + 0.035073 * X_99 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.530086 + 0.005765 * X_0 + 0.013174 * X_1 + 0.045830 * X_2 + 0.110217 * X_3 + -0.015951 * X_4 + 0.002249 * X_5 + -0.029358 * X_6 + -0.036750 * X_7 + -0.017426 * X_8 + -0.015133 * X_9 + 0.010301 * X_10 + 0.023446 * X_11 + 0.040754 * X_12 + -0.041862 * X_13 + -0.055976 * X_14 + -0.015182 * X_15 + -0.027053 * X_16 + 0.051382 * X_17 + -0.002956 * X_18 + -0.002403 * X_19 + -0.021730 * X_20 + -0.001120 * X_21 + 0.024059 * X_22 + -0.073278 * X_23 + -0.006782 * X_24 + 0.033405 * X_25 + 0.014959 * X_26 + -0.019923 * X_27 + 0.045901 * X_28 + 0.090556 * X_29 + 0.022234 * X_30 + -0.135015 * X_31 + 0.065791 * X_32 + 0.025148 * X_33 + 0.003894 * X_34 + 0.021473 * X_35 + 0.054743 * X_36 + -0.002993 * X_37 + 0.084014 * X_38 + 0.065265 * X_39 + -0.023680 * X_40 + -0.003871 * X_41 + -0.038471 * X_42 + -0.029890 * X_43 + 0.028957 * X_44 + 0.013650 * X_45 + 0.061675 * X_46 + 0.099897 * X_47 + 0.029812 * X_48 + 0.003637 * X_49 + -0.066330 * X_50 + -0.016626 * X_51 + -0.068578 * X_52 + -0.026747 * X_53 + 0.066636 * X_54 + 0.052046 * X_55 + -0.045761 * X_56 + -0.020247 * X_57 + 0.026645 * X_58 + 0.000644 * X_59 + -0.096215 * X_60 + 0.024789 * X_61 + -0.151090 * X_62 + -0.003425 * X_63 + -0.065965 * X_64 + 0.013091 * X_65 + 0.007867 * X_66 + -0.092041 * X_67 + 0.014376 * X_68 + -0.000349 * X_69 + -0.047173 * X_70 + -0.075117 * X_71 + -0.016514 * X_72 + 0.042058 * X_73 + 0.010668 * X_74 + -0.030855 * X_75 + 0.039442 * X_76 + 0.054540 * X_77 + -0.031658 * X_78 + 0.004338 * X_79 + -0.040728 * X_80 + 0.042185 * X_81 + -0.049187 * X_82 + 0.007858 * X_83 + 0.008183 * X_84 + 0.015688 * X_85 + 0.033214 * X_86 + 0.070839 * X_87 + -0.011466 * X_88 + 0.063882 * X_89 + -0.001740 * X_90 + 0.071832 * X_91 + -0.061840 * X_92 + 0.011526 * X_93 + -0.083054 * X_94 + 0.035108 * X_95 + 0.045075 * X_96 + 0.018120 * X_97 + -0.014522 * X_98 + 0.040105 * X_99 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3"
  FROM model_input
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
   MAX(t."Score_0", t."Score_1", t."Score_2", t."Score_3") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1.*,
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" ) AS "Sum_Exp"
  FROM
   ( SELECT t.*,
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
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    CAST(NULL AS FLOAT) AS "LogProba_2",
    t1."Exp_Score_2" / t1."Sum_Exp" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    CAST(NULL AS FLOAT) AS "LogProba_3",
    t1."Exp_Score_3" / t1."Sum_Exp" AS "Proba_3",
    t1."Score_3" AS "Score_3"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t.*,
   CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
   CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
   CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
   CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
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