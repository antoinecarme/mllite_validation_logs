WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -0.248088 + -0.032680 * X_0 + 0.047098 * X_1 + 0.008775 * X_2 + -0.039150 * X_3 + 0.027354 * X_4 + -0.045914 * X_5 + 0.030449 * X_6 + 0.018330 * X_7 + -0.001463 * X_8 + 0.002041 * X_9 + 0.056794 * X_10 + -0.016927 * X_11 + -0.012972 * X_12 + -0.066580 * X_13 + 0.037496 * X_14 + -0.068480 * X_15 + -0.040931 * X_16 + -0.031019 * X_17 + -0.009872 * X_18 + 0.011540 * X_19 + 0.038169 * X_20 + -0.044626 * X_21 + 0.007128 * X_22 + 0.011336 * X_23 + 0.009664 * X_24 + -0.047945 * X_25 + -0.003127 * X_26 + -0.001970 * X_27 + -0.013092 * X_28 + 0.002833 * X_29 + 0.022015 * X_30 + -0.000430 * X_31 + -0.042193 * X_32 + -0.063419 * X_33 + -0.027033 * X_34 + 0.062947 * X_35 + 0.073595 * X_36 + -0.047719 * X_37 + -0.000500 * X_38 + -0.092515 * X_39 + -0.013749 * X_40 + -0.004376 * X_41 + 0.010925 * X_42 + 0.055817 * X_43 + 0.019261 * X_44 + -0.008979 * X_45 + 0.016775 * X_46 + -0.044592 * X_47 + -0.027336 * X_48 + -0.022976 * X_49 + -0.041635 * X_50 + 0.056437 * X_51 + -0.023379 * X_52 + -0.003178 * X_53 + -0.003042 * X_54 + 0.039473 * X_55 + -0.070351 * X_56 + -0.007537 * X_57 + 0.017535 * X_58 + -0.007972 * X_59 + -0.007764 * X_60 + -0.020748 * X_61 + 0.015078 * X_62 + -0.072287 * X_63 + 0.027618 * X_64 + 0.005808 * X_65 + 0.014576 * X_66 + 0.005992 * X_67 + 0.033478 * X_68 + 0.026221 * X_69 + 0.000910 * X_70 + 0.018879 * X_71 + -0.056805 * X_72 + 0.045192 * X_73 + 0.019464 * X_74 + -0.052116 * X_75 + -0.017970 * X_76 + 0.016474 * X_77 + -0.036417 * X_78 + 0.006659 * X_79 + 0.067884 * X_80 + -0.021900 * X_81 + 0.015306 * X_82 + 0.068999 * X_83 + -0.093202 * X_84 + 0.057534 * X_85 + -0.005484 * X_86 + -0.012761 * X_87 + 0.056252 * X_88 + 0.053134 * X_89 + 0.038574 * X_90 + 0.069022 * X_91 + 0.045125 * X_92 + 0.028197 * X_93 + 0.027323 * X_94 + 0.036377 * X_95 + 0.007265 * X_96 + -0.023765 * X_97 + 0.007132 * X_98 + 0.009091 * X_99 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.726468 + 0.029780 * X_0 + -0.007439 * X_1 + 0.002944 * X_2 + -0.043644 * X_3 + 0.022265 * X_4 + 0.036205 * X_5 + 0.045965 * X_6 + -0.032624 * X_7 + -0.004353 * X_8 + -0.049944 * X_9 + 0.008804 * X_10 + 0.018582 * X_11 + 0.032074 * X_12 + -0.000760 * X_13 + 0.027887 * X_14 + -0.010276 * X_15 + 0.022382 * X_16 + -0.003196 * X_17 + -0.033039 * X_18 + -0.084500 * X_19 + -0.012966 * X_20 + -0.000739 * X_21 + -0.050829 * X_22 + 0.036087 * X_23 + -0.009211 * X_24 + -0.023478 * X_25 + 0.008285 * X_26 + -0.011163 * X_27 + -0.005932 * X_28 + 0.008480 * X_29 + -0.059389 * X_30 + 0.003618 * X_31 + 0.002672 * X_32 + 0.007095 * X_33 + -0.016284 * X_34 + 0.024463 * X_35 + -0.052274 * X_36 + 0.011418 * X_37 + -0.001188 * X_38 + 0.017089 * X_39 + 0.010898 * X_40 + -0.024527 * X_41 + -0.006412 * X_42 + -0.007063 * X_43 + 0.033877 * X_44 + -0.001898 * X_45 + -0.019950 * X_46 + 0.014608 * X_47 + 0.002319 * X_48 + 0.034616 * X_49 + 0.005020 * X_50 + 0.018856 * X_51 + 0.040954 * X_52 + 0.031385 * X_53 + 0.003780 * X_54 + -0.024411 * X_55 + 0.023666 * X_56 + 0.001621 * X_57 + 0.019844 * X_58 + 0.012786 * X_59 + 0.018318 * X_60 + -0.004496 * X_61 + 0.011721 * X_62 + -0.006521 * X_63 + -0.005505 * X_64 + 0.014445 * X_65 + -0.010778 * X_66 + 0.030599 * X_67 + -0.002846 * X_68 + -0.002599 * X_69 + 0.007407 * X_70 + -0.026704 * X_71 + 0.044553 * X_72 + 0.019669 * X_73 + 0.000075 * X_74 + -0.020894 * X_75 + 0.019969 * X_76 + 0.012767 * X_77 + 0.070648 * X_78 + 0.014882 * X_79 + 0.014079 * X_80 + 0.035921 * X_81 + 0.036551 * X_82 + -0.020287 * X_83 + -0.014589 * X_84 + 0.013335 * X_85 + -0.004119 * X_86 + 0.011689 * X_87 + 0.015350 * X_88 + -0.018556 * X_89 + -0.030141 * X_90 + -0.037899 * X_91 + 0.019262 * X_92 + -0.033089 * X_93 + -0.008030 * X_94 + -0.049443 * X_95 + -0.002563 * X_96 + 0.071184 * X_97 + 0.002191 * X_98 + -0.022782 * X_99 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.371397 + 0.001164 * X_0 + -0.029073 * X_1 + -0.004993 * X_2 + 0.079717 * X_3 + -0.032158 * X_4 + -0.005101 * X_5 + -0.037418 * X_6 + 0.036151 * X_7 + -0.040281 * X_8 + 0.006952 * X_9 + -0.027934 * X_10 + -0.009879 * X_11 + 0.019454 * X_12 + -0.016021 * X_13 + 0.003275 * X_14 + 0.013407 * X_15 + -0.016276 * X_16 + 0.033404 * X_17 + -0.000032 * X_18 + 0.060587 * X_19 + 0.022965 * X_20 + 0.039201 * X_21 + 0.025386 * X_22 + -0.005233 * X_23 + 0.022649 * X_24 + 0.076036 * X_25 + 0.059376 * X_26 + 0.005892 * X_27 + 0.010672 * X_28 + 0.005814 * X_29 + 0.000817 * X_30 + -0.011096 * X_31 + 0.034774 * X_32 + 0.062446 * X_33 + 0.028293 * X_34 + -0.058396 * X_35 + -0.034327 * X_36 + 0.027104 * X_37 + 0.038820 * X_38 + 0.012854 * X_39 + 0.058279 * X_40 + -0.015475 * X_41 + -0.055809 * X_42 + 0.018917 * X_43 + -0.071167 * X_44 + -0.054206 * X_45 + -0.018750 * X_46 + -0.001574 * X_47 + -0.040976 * X_48 + 0.004543 * X_49 + 0.008757 * X_50 + -0.020184 * X_51 + -0.062116 * X_52 + -0.009010 * X_53 + 0.005718 * X_54 + 0.009954 * X_55 + 0.031436 * X_56 + 0.057260 * X_57 + -0.022290 * X_58 + -0.024435 * X_59 + 0.028180 * X_60 + -0.005656 * X_61 + -0.004748 * X_62 + 0.052143 * X_63 + 0.021564 * X_64 + -0.007676 * X_65 + -0.007395 * X_66 + -0.020691 * X_67 + -0.024185 * X_68 + -0.016792 * X_69 + -0.034476 * X_70 + 0.021543 * X_71 + 0.036277 * X_72 + -0.063920 * X_73 + 0.011157 * X_74 + 0.029081 * X_75 + 0.006367 * X_76 + -0.007521 * X_77 + -0.048626 * X_78 + -0.018974 * X_79 + -0.019855 * X_80 + -0.026866 * X_81 + -0.031913 * X_82 + 0.032230 * X_83 + 0.079897 * X_84 + 0.021507 * X_85 + 0.015787 * X_86 + -0.019308 * X_87 + -0.019469 * X_88 + 0.043219 * X_89 + 0.028917 * X_90 + 0.019853 * X_91 + -0.050454 * X_92 + -0.020022 * X_93 + -0.016094 * X_94 + -0.027867 * X_95 + 0.037788 * X_96 + 0.007452 * X_97 + -0.005697 * X_98 + 0.042221 * X_99 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.654044 + 0.001736 * X_0 + -0.010586 * X_1 + -0.006725 * X_2 + 0.003080 * X_3 + -0.017461 * X_4 + 0.014812 * X_5 + -0.039000 * X_6 + -0.021856 * X_7 + 0.046098 * X_8 + 0.040952 * X_9 + -0.037664 * X_10 + 0.008225 * X_11 + -0.038555 * X_12 + 0.083361 * X_13 + -0.068660 * X_14 + 0.065348 * X_15 + 0.034823 * X_16 + 0.000811 * X_17 + 0.042942 * X_18 + 0.012373 * X_19 + -0.048170 * X_20 + 0.006163 * X_21 + 0.018317 * X_22 + -0.042190 * X_23 + -0.023103 * X_24 + -0.004613 * X_25 + -0.064534 * X_26 + 0.007241 * X_27 + 0.008351 * X_28 + -0.017128 * X_29 + 0.036556 * X_30 + 0.007908 * X_31 + 0.004747 * X_32 + -0.006122 * X_33 + 0.015024 * X_34 + -0.029013 * X_35 + 0.013006 * X_36 + 0.009196 * X_37 + -0.037130 * X_38 + 0.062572 * X_39 + -0.055427 * X_40 + 0.044378 * X_41 + 0.051295 * X_42 + -0.067671 * X_43 + 0.018029 * X_44 + 0.065082 * X_45 + 0.021924 * X_46 + 0.031558 * X_47 + 0.065995 * X_48 + -0.016184 * X_49 + 0.027857 * X_50 + -0.055109 * X_51 + 0.044542 * X_52 + -0.019196 * X_53 + -0.006455 * X_54 + -0.025016 * X_55 + 0.015248 * X_56 + -0.051346 * X_57 + -0.015089 * X_58 + 0.019621 * X_59 + -0.038735 * X_60 + 0.030900 * X_61 + -0.022052 * X_62 + 0.026665 * X_63 + -0.043677 * X_64 + -0.012577 * X_65 + 0.003597 * X_66 + -0.015900 * X_67 + -0.006448 * X_68 + -0.006830 * X_69 + 0.026160 * X_70 + -0.013718 * X_71 + -0.024027 * X_72 + -0.000940 * X_73 + -0.030697 * X_74 + 0.043929 * X_75 + -0.008365 * X_76 + -0.021721 * X_77 + 0.014394 * X_78 + -0.002566 * X_79 + -0.062107 * X_80 + 0.012845 * X_81 + -0.019944 * X_82 + -0.080943 * X_83 + 0.027893 * X_84 + -0.092375 * X_85 + -0.006183 * X_86 + 0.020380 * X_87 + -0.052135 * X_88 + -0.077799 * X_89 + -0.037350 * X_90 + -0.050976 * X_91 + -0.013932 * X_92 + 0.024913 * X_93 + -0.003198 * X_94 + 0.040931 * X_95 + -0.042490 * X_96 + -0.054874 * X_97 + -0.003626 * X_98 + -0.028529 * X_99 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3"
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