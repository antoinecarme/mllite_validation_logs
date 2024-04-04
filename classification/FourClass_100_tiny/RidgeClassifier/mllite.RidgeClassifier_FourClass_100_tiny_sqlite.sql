WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT t."index" AS "index",
   -0.248088 + -0.032680 * t."X_0" + 0.047098 * t."X_1" + 0.008775 * t."X_2" + -0.039150 * t."X_3" + 0.027354 * t."X_4" + -0.045914 * t."X_5" + 0.030449 * t."X_6" + 0.018330 * t."X_7" + -0.001463 * t."X_8" + 0.002041 * t."X_9" + 0.056794 * t."X_10" + -0.016927 * t."X_11" + -0.012972 * t."X_12" + -0.066580 * t."X_13" + 0.037496 * t."X_14" + -0.068480 * t."X_15" + -0.040931 * t."X_16" + -0.031019 * t."X_17" + -0.009872 * t."X_18" + 0.011540 * t."X_19" + 0.038169 * t."X_20" + -0.044626 * t."X_21" + 0.007128 * t."X_22" + 0.011336 * t."X_23" + 0.009664 * t."X_24" + -0.047945 * t."X_25" + -0.003127 * t."X_26" + -0.001970 * t."X_27" + -0.013092 * t."X_28" + 0.002833 * t."X_29" + 0.022015 * t."X_30" + -0.000430 * t."X_31" + -0.042193 * t."X_32" + -0.063419 * t."X_33" + -0.027033 * t."X_34" + 0.062947 * t."X_35" + 0.073595 * t."X_36" + -0.047719 * t."X_37" + -0.000500 * t."X_38" + -0.092515 * t."X_39" + -0.013749 * t."X_40" + -0.004376 * t."X_41" + 0.010925 * t."X_42" + 0.055817 * t."X_43" + 0.019261 * t."X_44" + -0.008979 * t."X_45" + 0.016775 * t."X_46" + -0.044592 * t."X_47" + -0.027336 * t."X_48" + -0.022976 * t."X_49" + -0.041635 * t."X_50" + 0.056437 * t."X_51" + -0.023379 * t."X_52" + -0.003178 * t."X_53" + -0.003042 * t."X_54" + 0.039473 * t."X_55" + -0.070351 * t."X_56" + -0.007537 * t."X_57" + 0.017535 * t."X_58" + -0.007972 * t."X_59" + -0.007764 * t."X_60" + -0.020748 * t."X_61" + 0.015078 * t."X_62" + -0.072287 * t."X_63" + 0.027618 * t."X_64" + 0.005808 * t."X_65" + 0.014576 * t."X_66" + 0.005992 * t."X_67" + 0.033478 * t."X_68" + 0.026221 * t."X_69" + 0.000910 * t."X_70" + 0.018879 * t."X_71" + -0.056805 * t."X_72" + 0.045192 * t."X_73" + 0.019464 * t."X_74" + -0.052116 * t."X_75" + -0.017970 * t."X_76" + 0.016474 * t."X_77" + -0.036417 * t."X_78" + 0.006659 * t."X_79" + 0.067884 * t."X_80" + -0.021900 * t."X_81" + 0.015306 * t."X_82" + 0.068999 * t."X_83" + -0.093202 * t."X_84" + 0.057534 * t."X_85" + -0.005484 * t."X_86" + -0.012761 * t."X_87" + 0.056252 * t."X_88" + 0.053134 * t."X_89" + 0.038574 * t."X_90" + 0.069022 * t."X_91" + 0.045125 * t."X_92" + 0.028197 * t."X_93" + 0.027323 * t."X_94" + 0.036377 * t."X_95" + 0.007265 * t."X_96" + -0.023765 * t."X_97" + 0.007132 * t."X_98" + 0.009091 * t."X_99" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.726468 + 0.029780 * t."X_0" + -0.007439 * t."X_1" + 0.002944 * t."X_2" + -0.043644 * t."X_3" + 0.022265 * t."X_4" + 0.036205 * t."X_5" + 0.045965 * t."X_6" + -0.032624 * t."X_7" + -0.004353 * t."X_8" + -0.049944 * t."X_9" + 0.008804 * t."X_10" + 0.018582 * t."X_11" + 0.032074 * t."X_12" + -0.000760 * t."X_13" + 0.027887 * t."X_14" + -0.010276 * t."X_15" + 0.022382 * t."X_16" + -0.003196 * t."X_17" + -0.033039 * t."X_18" + -0.084500 * t."X_19" + -0.012966 * t."X_20" + -0.000739 * t."X_21" + -0.050829 * t."X_22" + 0.036087 * t."X_23" + -0.009211 * t."X_24" + -0.023478 * t."X_25" + 0.008285 * t."X_26" + -0.011163 * t."X_27" + -0.005932 * t."X_28" + 0.008480 * t."X_29" + -0.059389 * t."X_30" + 0.003618 * t."X_31" + 0.002672 * t."X_32" + 0.007095 * t."X_33" + -0.016284 * t."X_34" + 0.024463 * t."X_35" + -0.052274 * t."X_36" + 0.011418 * t."X_37" + -0.001188 * t."X_38" + 0.017089 * t."X_39" + 0.010898 * t."X_40" + -0.024527 * t."X_41" + -0.006412 * t."X_42" + -0.007063 * t."X_43" + 0.033877 * t."X_44" + -0.001898 * t."X_45" + -0.019950 * t."X_46" + 0.014608 * t."X_47" + 0.002319 * t."X_48" + 0.034616 * t."X_49" + 0.005020 * t."X_50" + 0.018856 * t."X_51" + 0.040954 * t."X_52" + 0.031385 * t."X_53" + 0.003780 * t."X_54" + -0.024411 * t."X_55" + 0.023666 * t."X_56" + 0.001621 * t."X_57" + 0.019844 * t."X_58" + 0.012786 * t."X_59" + 0.018318 * t."X_60" + -0.004496 * t."X_61" + 0.011721 * t."X_62" + -0.006521 * t."X_63" + -0.005505 * t."X_64" + 0.014445 * t."X_65" + -0.010778 * t."X_66" + 0.030599 * t."X_67" + -0.002846 * t."X_68" + -0.002599 * t."X_69" + 0.007407 * t."X_70" + -0.026704 * t."X_71" + 0.044553 * t."X_72" + 0.019669 * t."X_73" + 0.000075 * t."X_74" + -0.020894 * t."X_75" + 0.019969 * t."X_76" + 0.012767 * t."X_77" + 0.070648 * t."X_78" + 0.014882 * t."X_79" + 0.014079 * t."X_80" + 0.035921 * t."X_81" + 0.036551 * t."X_82" + -0.020287 * t."X_83" + -0.014589 * t."X_84" + 0.013335 * t."X_85" + -0.004119 * t."X_86" + 0.011689 * t."X_87" + 0.015350 * t."X_88" + -0.018556 * t."X_89" + -0.030141 * t."X_90" + -0.037899 * t."X_91" + 0.019262 * t."X_92" + -0.033089 * t."X_93" + -0.008030 * t."X_94" + -0.049443 * t."X_95" + -0.002563 * t."X_96" + 0.071184 * t."X_97" + 0.002191 * t."X_98" + -0.022782 * t."X_99" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.371397 + 0.001164 * t."X_0" + -0.029073 * t."X_1" + -0.004993 * t."X_2" + 0.079717 * t."X_3" + -0.032158 * t."X_4" + -0.005101 * t."X_5" + -0.037418 * t."X_6" + 0.036151 * t."X_7" + -0.040281 * t."X_8" + 0.006952 * t."X_9" + -0.027934 * t."X_10" + -0.009879 * t."X_11" + 0.019454 * t."X_12" + -0.016021 * t."X_13" + 0.003275 * t."X_14" + 0.013407 * t."X_15" + -0.016276 * t."X_16" + 0.033404 * t."X_17" + -0.000032 * t."X_18" + 0.060587 * t."X_19" + 0.022965 * t."X_20" + 0.039201 * t."X_21" + 0.025386 * t."X_22" + -0.005233 * t."X_23" + 0.022649 * t."X_24" + 0.076036 * t."X_25" + 0.059376 * t."X_26" + 0.005892 * t."X_27" + 0.010672 * t."X_28" + 0.005814 * t."X_29" + 0.000817 * t."X_30" + -0.011096 * t."X_31" + 0.034774 * t."X_32" + 0.062446 * t."X_33" + 0.028293 * t."X_34" + -0.058396 * t."X_35" + -0.034327 * t."X_36" + 0.027104 * t."X_37" + 0.038820 * t."X_38" + 0.012854 * t."X_39" + 0.058279 * t."X_40" + -0.015475 * t."X_41" + -0.055809 * t."X_42" + 0.018917 * t."X_43" + -0.071167 * t."X_44" + -0.054206 * t."X_45" + -0.018750 * t."X_46" + -0.001574 * t."X_47" + -0.040976 * t."X_48" + 0.004543 * t."X_49" + 0.008757 * t."X_50" + -0.020184 * t."X_51" + -0.062116 * t."X_52" + -0.009010 * t."X_53" + 0.005718 * t."X_54" + 0.009954 * t."X_55" + 0.031436 * t."X_56" + 0.057260 * t."X_57" + -0.022290 * t."X_58" + -0.024435 * t."X_59" + 0.028180 * t."X_60" + -0.005656 * t."X_61" + -0.004748 * t."X_62" + 0.052143 * t."X_63" + 0.021564 * t."X_64" + -0.007676 * t."X_65" + -0.007395 * t."X_66" + -0.020691 * t."X_67" + -0.024185 * t."X_68" + -0.016792 * t."X_69" + -0.034476 * t."X_70" + 0.021543 * t."X_71" + 0.036277 * t."X_72" + -0.063920 * t."X_73" + 0.011157 * t."X_74" + 0.029081 * t."X_75" + 0.006367 * t."X_76" + -0.007521 * t."X_77" + -0.048626 * t."X_78" + -0.018974 * t."X_79" + -0.019855 * t."X_80" + -0.026866 * t."X_81" + -0.031913 * t."X_82" + 0.032230 * t."X_83" + 0.079897 * t."X_84" + 0.021507 * t."X_85" + 0.015787 * t."X_86" + -0.019308 * t."X_87" + -0.019469 * t."X_88" + 0.043219 * t."X_89" + 0.028917 * t."X_90" + 0.019853 * t."X_91" + -0.050454 * t."X_92" + -0.020022 * t."X_93" + -0.016094 * t."X_94" + -0.027867 * t."X_95" + 0.037788 * t."X_96" + 0.007452 * t."X_97" + -0.005697 * t."X_98" + 0.042221 * t."X_99" AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.654044 + 0.001736 * t."X_0" + -0.010586 * t."X_1" + -0.006725 * t."X_2" + 0.003080 * t."X_3" + -0.017461 * t."X_4" + 0.014812 * t."X_5" + -0.039000 * t."X_6" + -0.021856 * t."X_7" + 0.046098 * t."X_8" + 0.040952 * t."X_9" + -0.037664 * t."X_10" + 0.008225 * t."X_11" + -0.038555 * t."X_12" + 0.083361 * t."X_13" + -0.068660 * t."X_14" + 0.065348 * t."X_15" + 0.034823 * t."X_16" + 0.000811 * t."X_17" + 0.042942 * t."X_18" + 0.012373 * t."X_19" + -0.048170 * t."X_20" + 0.006163 * t."X_21" + 0.018317 * t."X_22" + -0.042190 * t."X_23" + -0.023103 * t."X_24" + -0.004613 * t."X_25" + -0.064534 * t."X_26" + 0.007241 * t."X_27" + 0.008351 * t."X_28" + -0.017128 * t."X_29" + 0.036556 * t."X_30" + 0.007908 * t."X_31" + 0.004747 * t."X_32" + -0.006122 * t."X_33" + 0.015024 * t."X_34" + -0.029013 * t."X_35" + 0.013006 * t."X_36" + 0.009196 * t."X_37" + -0.037130 * t."X_38" + 0.062572 * t."X_39" + -0.055427 * t."X_40" + 0.044378 * t."X_41" + 0.051295 * t."X_42" + -0.067671 * t."X_43" + 0.018029 * t."X_44" + 0.065082 * t."X_45" + 0.021924 * t."X_46" + 0.031558 * t."X_47" + 0.065995 * t."X_48" + -0.016184 * t."X_49" + 0.027857 * t."X_50" + -0.055109 * t."X_51" + 0.044542 * t."X_52" + -0.019196 * t."X_53" + -0.006455 * t."X_54" + -0.025016 * t."X_55" + 0.015248 * t."X_56" + -0.051346 * t."X_57" + -0.015089 * t."X_58" + 0.019621 * t."X_59" + -0.038735 * t."X_60" + 0.030900 * t."X_61" + -0.022052 * t."X_62" + 0.026665 * t."X_63" + -0.043677 * t."X_64" + -0.012577 * t."X_65" + 0.003597 * t."X_66" + -0.015900 * t."X_67" + -0.006448 * t."X_68" + -0.006830 * t."X_69" + 0.026160 * t."X_70" + -0.013718 * t."X_71" + -0.024027 * t."X_72" + -0.000940 * t."X_73" + -0.030697 * t."X_74" + 0.043929 * t."X_75" + -0.008365 * t."X_76" + -0.021721 * t."X_77" + 0.014394 * t."X_78" + -0.002566 * t."X_79" + -0.062107 * t."X_80" + 0.012845 * t."X_81" + -0.019944 * t."X_82" + -0.080943 * t."X_83" + 0.027893 * t."X_84" + -0.092375 * t."X_85" + -0.006183 * t."X_86" + 0.020380 * t."X_87" + -0.052135 * t."X_88" + -0.077799 * t."X_89" + -0.037350 * t."X_90" + -0.050976 * t."X_91" + -0.013932 * t."X_92" + 0.024913 * t."X_93" + -0.003198 * t."X_94" + 0.040931 * t."X_95" + -0.042490 * t."X_96" + -0.054874 * t."X_97" + -0.003626 * t."X_98" + -0.028529 * t."X_99" AS "Score_3",
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
   MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Greatest_Score"
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
    MAX( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Max_Score"
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