WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT t."index" AS "index",
   -0.601790 + -0.005324 * t."X_0" + -0.010539 * t."X_1" + -0.022921 * t."X_2" + -0.018191 * t."X_3" + -0.026031 * t."X_4" + -0.001844 * t."X_5" + -0.016072 * t."X_6" + 0.043345 * t."X_7" + 0.024643 * t."X_8" + 0.007773 * t."X_9" + 0.025368 * t."X_10" + -0.021858 * t."X_11" + 0.003691 * t."X_12" + 0.034971 * t."X_13" + -0.006145 * t."X_14" + 0.009035 * t."X_15" + 0.021533 * t."X_16" + 0.003009 * t."X_17" + 0.023265 * t."X_18" + -0.035629 * t."X_19" + -0.028112 * t."X_20" + 0.009374 * t."X_21" + -0.032341 * t."X_22" + 0.048793 * t."X_23" + 0.056890 * t."X_24" + 0.001192 * t."X_25" + -0.006544 * t."X_26" + 0.030861 * t."X_27" + -0.003206 * t."X_28" + -0.049011 * t."X_29" + -0.024414 * t."X_30" + 0.125422 * t."X_31" + -0.073826 * t."X_32" + -0.028990 * t."X_33" + -0.014190 * t."X_34" + 0.009147 * t."X_35" + -0.026521 * t."X_36" + 0.041357 * t."X_37" + -0.069038 * t."X_38" + -0.055270 * t."X_39" + -0.000940 * t."X_40" + 0.007062 * t."X_41" + -0.025882 * t."X_42" + -0.011032 * t."X_43" + -0.013162 * t."X_44" + -0.035348 * t."X_45" + 0.064914 * t."X_46" + -0.106282 * t."X_47" + -0.008198 * t."X_48" + -0.110257 * t."X_49" + 0.025485 * t."X_50" + 0.009321 * t."X_51" + 0.024417 * t."X_52" + 0.099202 * t."X_53" + 0.000842 * t."X_54" + 0.061019 * t."X_55" + -0.016280 * t."X_56" + -0.050886 * t."X_57" + -0.028251 * t."X_58" + -0.048848 * t."X_59" + -0.072379 * t."X_60" + 0.001585 * t."X_61" + 0.130092 * t."X_62" + 0.009901 * t."X_63" + 0.015618 * t."X_64" + 0.002375 * t."X_65" + 0.013349 * t."X_66" + 0.054694 * t."X_67" + -0.035628 * t."X_68" + 0.040920 * t."X_69" + 0.092112 * t."X_70" + 0.000886 * t."X_71" + -0.030633 * t."X_72" + 0.005857 * t."X_73" + -0.009628 * t."X_74" + 0.037174 * t."X_75" + -0.048702 * t."X_76" + -0.030514 * t."X_77" + 0.058527 * t."X_78" + 0.013443 * t."X_79" + 0.005320 * t."X_80" + -0.052824 * t."X_81" + 0.009763 * t."X_82" + -0.080728 * t."X_83" + 0.029083 * t."X_84" + -0.003306 * t."X_85" + -0.021514 * t."X_86" + -0.083087 * t."X_87" + -0.004148 * t."X_88" + -0.094027 * t."X_89" + 0.003071 * t."X_90" + -0.020573 * t."X_91" + 0.021383 * t."X_92" + 0.039289 * t."X_93" + 0.051648 * t."X_94" + -0.029810 * t."X_95" + 0.037563 * t."X_96" + -0.006288 * t."X_97" + -0.012505 * t."X_98" + -0.020990 * t."X_99" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.436952 + 0.034032 * t."X_0" + 0.007603 * t."X_1" + 0.044650 * t."X_2" + -0.039371 * t."X_3" + 0.011215 * t."X_4" + 0.034232 * t."X_5" + -0.035082 * t."X_6" + 0.035184 * t."X_7" + -0.009488 * t."X_8" + 0.054971 * t."X_9" + -0.047602 * t."X_10" + 0.007870 * t."X_11" + -0.084385 * t."X_12" + -0.035669 * t."X_13" + 0.094269 * t."X_14" + 0.030969 * t."X_15" + -0.028692 * t."X_16" + 0.005340 * t."X_17" + -0.010927 * t."X_18" + 0.058121 * t."X_19" + 0.065597 * t."X_20" + 0.006289 * t."X_21" + 0.081619 * t."X_22" + -0.020072 * t."X_23" + 0.003631 * t."X_24" + -0.043705 * t."X_25" + 0.037451 * t."X_26" + -0.011402 * t."X_27" + -0.018590 * t."X_28" + -0.019763 * t."X_29" + -0.006628 * t."X_30" + 0.048370 * t."X_31" + -0.005152 * t."X_32" + 0.053656 * t."X_33" + 0.038371 * t."X_34" + -0.020167 * t."X_35" + 0.012871 * t."X_36" + -0.067396 * t."X_37" + -0.016961 * t."X_38" + -0.032518 * t."X_39" + 0.080744 * t."X_40" + -0.033817 * t."X_41" + 0.020926 * t."X_42" + 0.019584 * t."X_43" + 0.035250 * t."X_44" + 0.027478 * t."X_45" + -0.053807 * t."X_46" + 0.047236 * t."X_47" + 0.019857 * t."X_48" + 0.043025 * t."X_49" + 0.024061 * t."X_50" + 0.039375 * t."X_51" + 0.072724 * t."X_52" + -0.046333 * t."X_53" + -0.041455 * t."X_54" + -0.023615 * t."X_55" + 0.028600 * t."X_56" + 0.093525 * t."X_57" + -0.005520 * t."X_58" + 0.041425 * t."X_59" + 0.050394 * t."X_60" + -0.036653 * t."X_61" + 0.063341 * t."X_62" + 0.015025 * t."X_63" + -0.004457 * t."X_64" + 0.009589 * t."X_65" + 0.002653 * t."X_66" + 0.052660 * t."X_67" + 0.010823 * t."X_68" + -0.081501 * t."X_69" + 0.010120 * t."X_70" + 0.021871 * t."X_71" + 0.030783 * t."X_72" + -0.015300 * t."X_73" + -0.023896 * t."X_74" + -0.044046 * t."X_75" + 0.028220 * t."X_76" + 0.027941 * t."X_77" + 0.021742 * t."X_78" + -0.003361 * t."X_79" + -0.009293 * t."X_80" + -0.025440 * t."X_81" + 0.051679 * t."X_82" + 0.103391 * t."X_83" + 0.005023 * t."X_84" + -0.003858 * t."X_85" + -0.043780 * t."X_86" + 0.036946 * t."X_87" + -0.002127 * t."X_88" + 0.027898 * t."X_89" + 0.016119 * t."X_90" + -0.058314 * t."X_91" + 0.049459 * t."X_92" + -0.005280 * t."X_93" + 0.011009 * t."X_94" + 0.097603 * t."X_95" + -0.058398 * t."X_96" + 0.046037 * t."X_97" + 0.094455 * t."X_98" + -0.054271 * t."X_99" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.435640 + -0.034930 * t."X_0" + -0.010589 * t."X_1" + -0.068333 * t."X_2" + -0.052446 * t."X_3" + 0.031465 * t."X_4" + -0.034632 * t."X_5" + 0.080992 * t."X_6" + -0.042011 * t."X_7" + 0.002406 * t."X_8" + -0.047070 * t."X_9" + 0.011769 * t."X_10" + -0.021342 * t."X_11" + 0.039029 * t."X_12" + 0.043260 * t."X_13" + -0.032285 * t."X_14" + -0.024069 * t."X_15" + 0.034158 * t."X_16" + -0.059689 * t."X_17" + -0.009752 * t."X_18" + -0.019810 * t."X_19" + -0.015658 * t."X_20" + -0.014323 * t."X_21" + -0.073313 * t."X_22" + 0.045391 * t."X_23" + -0.054397 * t."X_24" + 0.008985 * t."X_25" + -0.045795 * t."X_26" + 0.024220 * t."X_27" + -0.023890 * t."X_28" + -0.021749 * t."X_29" + 0.008560 * t."X_30" + -0.041865 * t."X_31" + 0.013201 * t."X_32" + -0.049720 * t."X_33" + -0.028201 * t."X_34" + -0.016640 * t."X_35" + -0.041367 * t."X_36" + 0.029482 * t."X_37" + 0.001724 * t."X_38" + 0.022620 * t."X_39" + -0.056006 * t."X_40" + 0.030201 * t."X_41" + 0.043612 * t."X_42" + 0.021150 * t."X_43" + -0.051276 * t."X_44" + -0.005742 * t."X_45" + -0.078265 * t."X_46" + -0.040945 * t."X_47" + -0.041511 * t."X_48" + 0.059288 * t."X_49" + 0.017191 * t."X_50" + -0.031672 * t."X_51" + -0.028123 * t."X_52" + -0.039241 * t."X_53" + -0.025912 * t."X_54" + -0.089360 * t."X_55" + 0.033256 * t."X_56" + -0.022473 * t."X_57" + 0.007005 * t."X_58" + 0.006697 * t."X_59" + 0.117308 * t."X_60" + 0.009898 * t."X_61" + -0.037747 * t."X_62" + -0.021390 * t."X_63" + 0.055055 * t."X_64" + -0.015716 * t."X_65" + -0.024192 * t."X_66" + -0.015184 * t."X_67" + 0.010298 * t."X_68" + 0.040711 * t."X_69" + -0.054818 * t."X_70" + 0.052639 * t."X_71" + 0.016242 * t."X_72" + -0.032788 * t."X_73" + 0.022885 * t."X_74" + 0.037867 * t."X_75" + -0.019188 * t."X_76" + -0.052165 * t."X_77" + -0.048599 * t."X_78" + 0.005361 * t."X_79" + 0.044863 * t."X_80" + 0.035805 * t."X_81" + -0.012117 * t."X_82" + -0.030388 * t."X_83" + -0.042227 * t."X_84" + -0.008580 * t."X_85" + 0.032161 * t."X_86" + -0.024907 * t."X_87" + 0.017759 * t."X_88" + 0.001940 * t."X_89" + -0.017472 * t."X_90" + 0.006728 * t."X_91" + -0.008830 * t."X_92" + -0.045597 * t."X_93" + 0.020703 * t."X_94" + -0.102778 * t."X_95" + -0.024424 * t."X_96" + -0.057825 * t."X_97" + -0.067428 * t."X_98" + 0.035152 * t."X_99" AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.530651 + 0.006223 * t."X_0" + 0.013524 * t."X_1" + 0.046604 * t."X_2" + 0.110009 * t."X_3" + -0.016649 * t."X_4" + 0.002244 * t."X_5" + -0.029838 * t."X_6" + -0.036518 * t."X_7" + -0.017561 * t."X_8" + -0.015674 * t."X_9" + 0.010465 * t."X_10" + 0.030215 * t."X_11" + 0.041665 * t."X_12" + -0.042563 * t."X_13" + -0.055838 * t."X_14" + -0.015935 * t."X_15" + -0.026999 * t."X_16" + 0.051339 * t."X_17" + -0.002586 * t."X_18" + -0.002682 * t."X_19" + -0.021827 * t."X_20" + -0.001340 * t."X_21" + 0.024035 * t."X_22" + -0.074112 * t."X_23" + -0.006125 * t."X_24" + 0.033528 * t."X_25" + 0.014888 * t."X_26" + -0.028437 * t."X_27" + 0.045687 * t."X_28" + 0.090523 * t."X_29" + 0.022483 * t."X_30" + -0.133470 * t."X_31" + 0.065776 * t."X_32" + 0.025054 * t."X_33" + 0.004020 * t."X_34" + 0.029800 * t."X_35" + 0.055016 * t."X_36" + -0.003442 * t."X_37" + 0.084274 * t."X_38" + 0.065169 * t."X_39" + -0.023799 * t."X_40" + -0.003445 * t."X_41" + -0.038656 * t."X_42" + -0.029702 * t."X_43" + 0.029188 * t."X_44" + 0.013611 * t."X_45" + 0.062651 * t."X_46" + 0.099991 * t."X_47" + 0.029852 * t."X_48" + 0.007598 * t."X_49" + -0.066737 * t."X_50" + -0.017024 * t."X_51" + -0.069018 * t."X_52" + -0.019295 * t."X_53" + 0.066525 * t."X_54" + 0.051956 * t."X_55" + -0.045576 * t."X_56" + -0.020166 * t."X_57" + 0.026766 * t."X_58" + 0.000726 * t."X_59" + -0.096165 * t."X_60" + 0.025169 * t."X_61" + -0.154378 * t."X_62" + -0.003536 * t."X_63" + -0.066215 * t."X_64" + 0.005882 * t."X_65" + 0.009465 * t."X_66" + -0.092170 * t."X_67" + 0.014507 * t."X_68" + -0.000129 * t."X_69" + -0.047413 * t."X_70" + -0.075396 * t."X_71" + -0.016393 * t."X_72" + 0.042231 * t."X_73" + 0.010638 * t."X_74" + -0.030995 * t."X_75" + 0.039670 * t."X_76" + 0.054738 * t."X_77" + -0.031669 * t."X_78" + -0.004479 * t."X_79" + -0.040890 * t."X_80" + 0.042459 * t."X_81" + -0.049324 * t."X_82" + 0.007725 * t."X_83" + 0.008121 * t."X_84" + 0.015743 * t."X_85" + 0.033132 * t."X_86" + 0.071048 * t."X_87" + -0.011484 * t."X_88" + 0.064190 * t."X_89" + -0.001718 * t."X_90" + 0.072158 * t."X_91" + -0.062011 * t."X_92" + 0.011589 * t."X_93" + -0.083360 * t."X_94" + 0.034985 * t."X_95" + 0.045259 * t."X_96" + 0.018077 * t."X_97" + -0.014522 * t."X_98" + 0.040109 * t."X_99" AS "Score_3",
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