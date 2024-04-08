WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "FourClass_100_small" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT t."index" AS "index",
   -0.411119 + -0.102690 * t."X_0" + -0.021733 * t."X_1" + 0.015702 * t."X_2" + 0.097197 * t."X_3" + 0.006831 * t."X_4" + -0.054610 * t."X_5" + -0.079589 * t."X_6" + 0.028203 * t."X_7" + 0.113468 * t."X_8" + 0.123671 * t."X_9" + 0.040121 * t."X_10" + 0.026748 * t."X_11" + -0.197075 * t."X_12" + 0.006949 * t."X_13" + 0.100460 * t."X_14" + -0.072329 * t."X_15" + 0.000690 * t."X_16" + -0.021788 * t."X_17" + -0.021677 * t."X_18" + -0.093302 * t."X_19" + 0.112259 * t."X_20" + -0.120557 * t."X_21" + -0.070810 * t."X_22" + 0.116105 * t."X_23" + 0.074577 * t."X_24" + 0.043012 * t."X_25" + 0.081422 * t."X_26" + -0.006275 * t."X_27" + -0.083023 * t."X_28" + 0.026549 * t."X_29" + 0.032380 * t."X_30" + 0.075476 * t."X_31" + -0.249492 * t."X_32" + -0.066264 * t."X_33" + -0.001693 * t."X_34" + 0.068630 * t."X_35" + 0.101035 * t."X_36" + 0.064770 * t."X_37" + 0.023285 * t."X_38" + -0.153403 * t."X_39" + -0.014943 * t."X_40" + 0.015217 * t."X_41" + 0.042262 * t."X_42" + 0.144974 * t."X_43" + -0.034358 * t."X_44" + 0.185682 * t."X_45" + 0.092146 * t."X_46" + 0.071845 * t."X_47" + -0.076954 * t."X_48" + 0.000795 * t."X_49" + 0.134872 * t."X_50" + -0.052525 * t."X_51" + 0.108029 * t."X_52" + 0.009529 * t."X_53" + -0.111329 * t."X_54" + 0.085142 * t."X_55" + 0.001382 * t."X_56" + 0.308394 * t."X_57" + -0.035489 * t."X_58" + 0.031380 * t."X_59" + -0.055121 * t."X_60" + -0.077758 * t."X_61" + 0.054455 * t."X_62" + -0.031606 * t."X_63" + 0.038193 * t."X_64" + -0.019955 * t."X_65" + 0.023258 * t."X_66" + 0.049326 * t."X_67" + 0.074851 * t."X_68" + 0.020224 * t."X_69" + -0.078391 * t."X_70" + 0.245075 * t."X_71" + 0.019157 * t."X_72" + -0.012945 * t."X_73" + 0.058804 * t."X_74" + -0.073844 * t."X_75" + 0.144940 * t."X_76" + 0.066601 * t."X_77" + -0.025704 * t."X_78" + 0.036143 * t."X_79" + 0.101031 * t."X_80" + 0.115347 * t."X_81" + -0.032025 * t."X_82" + -0.133767 * t."X_83" + -0.012764 * t."X_84" + 0.219501 * t."X_85" + 0.056442 * t."X_86" + -0.245222 * t."X_87" + -0.105097 * t."X_88" + 0.053344 * t."X_89" + 0.062717 * t."X_90" + 0.087789 * t."X_91" + 0.137431 * t."X_92" + 0.044787 * t."X_93" + 0.142997 * t."X_94" + 0.110703 * t."X_95" + 0.117300 * t."X_96" + 0.042600 * t."X_97" + -0.086883 * t."X_98" + 0.000259 * t."X_99" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.491056 + 0.048223 * t."X_0" + 0.106636 * t."X_1" + -0.052630 * t."X_2" + 0.003140 * t."X_3" + 0.067658 * t."X_4" + 0.200950 * t."X_5" + -0.031399 * t."X_6" + -0.012986 * t."X_7" + -0.109268 * t."X_8" + -0.062325 * t."X_9" + 0.022186 * t."X_10" + -0.004704 * t."X_11" + 0.280222 * t."X_12" + 0.100407 * t."X_13" + 0.089174 * t."X_14" + 0.033591 * t."X_15" + -0.036717 * t."X_16" + 0.001880 * t."X_17" + 0.070159 * t."X_18" + 0.106455 * t."X_19" + -0.172490 * t."X_20" + 0.042271 * t."X_21" + 0.052482 * t."X_22" + -0.105050 * t."X_23" + -0.055330 * t."X_24" + -0.286243 * t."X_25" + -0.067165 * t."X_26" + -0.029595 * t."X_27" + 0.116733 * t."X_28" + 0.105289 * t."X_29" + -0.052222 * t."X_30" + 0.025751 * t."X_31" + 0.283916 * t."X_32" + -0.091058 * t."X_33" + 0.120392 * t."X_34" + 0.053285 * t."X_35" + -0.120200 * t."X_36" + -0.024926 * t."X_37" + -0.121956 * t."X_38" + -0.165027 * t."X_39" + 0.000144 * t."X_40" + -0.043226 * t."X_41" + 0.032441 * t."X_42" + 0.088152 * t."X_43" + 0.096396 * t."X_44" + -0.014390 * t."X_45" + -0.104444 * t."X_46" + -0.126325 * t."X_47" + -0.091081 * t."X_48" + 0.030778 * t."X_49" + -0.195062 * t."X_50" + -0.092463 * t."X_51" + -0.106669 * t."X_52" + -0.065135 * t."X_53" + 0.186098 * t."X_54" + -0.055011 * t."X_55" + -0.030151 * t."X_56" + -0.269035 * t."X_57" + -0.086281 * t."X_58" + -0.094391 * t."X_59" + 0.114039 * t."X_60" + -0.119160 * t."X_61" + 0.007301 * t."X_62" + -0.011506 * t."X_63" + 0.015089 * t."X_64" + 0.006866 * t."X_65" + 0.003832 * t."X_66" + 0.013737 * t."X_67" + -0.080471 * t."X_68" + 0.024430 * t."X_69" + 0.008908 * t."X_70" + -0.220438 * t."X_71" + -0.057386 * t."X_72" + 0.117290 * t."X_73" + 0.015375 * t."X_74" + -0.003216 * t."X_75" + -0.001040 * t."X_76" + -0.129877 * t."X_77" + 0.113729 * t."X_78" + 0.010359 * t."X_79" + 0.021963 * t."X_80" + 0.036611 * t."X_81" + -0.043431 * t."X_82" + 0.046576 * t."X_83" + -0.073301 * t."X_84" + 0.027841 * t."X_85" + -0.158008 * t."X_86" + 0.112582 * t."X_87" + 0.031190 * t."X_88" + 0.064274 * t."X_89" + -0.178229 * t."X_90" + 0.076303 * t."X_91" + -0.020725 * t."X_92" + -0.181545 * t."X_93" + -0.211593 * t."X_94" + -0.203346 * t."X_95" + -0.127532 * t."X_96" + 0.161645 * t."X_97" + 0.105543 * t."X_98" + -0.162642 * t."X_99" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.403421 + -0.039221 * t."X_0" + -0.051614 * t."X_1" + 0.019422 * t."X_2" + 0.118383 * t."X_3" + -0.195829 * t."X_4" + -0.012083 * t."X_5" + 0.096234 * t."X_6" + 0.038452 * t."X_7" + -0.058004 * t."X_8" + 0.045381 * t."X_9" + 0.094765 * t."X_10" + -0.030417 * t."X_11" + -0.191201 * t."X_12" + -0.205457 * t."X_13" + 0.005799 * t."X_14" + 0.106719 * t."X_15" + 0.000097 * t."X_16" + 0.017560 * t."X_17" + -0.135349 * t."X_18" + 0.094485 * t."X_19" + 0.198574 * t."X_20" + -0.054935 * t."X_21" + -0.052710 * t."X_22" + 0.007137 * t."X_23" + -0.028191 * t."X_24" + 0.177718 * t."X_25" + 0.110912 * t."X_26" + 0.000011 * t."X_27" + -0.095751 * t."X_28" + -0.131981 * t."X_29" + 0.001525 * t."X_30" + -0.014083 * t."X_31" + -0.219334 * t."X_32" + 0.078374 * t."X_33" + -0.097921 * t."X_34" + -0.144102 * t."X_35" + -0.003497 * t."X_36" + 0.079004 * t."X_37" + 0.116753 * t."X_38" + 0.149682 * t."X_39" + 0.120648 * t."X_40" + -0.032542 * t."X_41" + -0.281834 * t."X_42" + -0.080243 * t."X_43" + -0.040968 * t."X_44" + -0.136570 * t."X_45" + 0.029092 * t."X_46" + -0.057438 * t."X_47" + -0.008041 * t."X_48" + 0.071992 * t."X_49" + 0.058166 * t."X_50" + 0.081089 * t."X_51" + 0.131385 * t."X_52" + 0.027508 * t."X_53" + -0.149734 * t."X_54" + 0.034318 * t."X_55" + 0.031859 * t."X_56" + 0.098718 * t."X_57" + -0.063393 * t."X_58" + 0.160801 * t."X_59" + 0.015085 * t."X_60" + 0.122494 * t."X_61" + -0.046954 * t."X_62" + 0.054308 * t."X_63" + -0.066925 * t."X_64" + 0.016298 * t."X_65" + -0.033904 * t."X_66" + -0.117034 * t."X_67" + -0.029073 * t."X_68" + 0.043032 * t."X_69" + -0.000852 * t."X_70" + 0.164564 * t."X_71" + 0.007061 * t."X_72" + -0.009675 * t."X_73" + -0.069454 * t."X_74" + 0.003788 * t."X_75" + -0.065721 * t."X_76" + -0.029814 * t."X_77" + -0.058036 * t."X_78" + -0.029558 * t."X_79" + -0.008504 * t."X_80" + -0.092724 * t."X_81" + 0.082910 * t."X_82" + 0.038142 * t."X_83" + 0.045105 * t."X_84" + -0.025719 * t."X_85" + 0.070394 * t."X_86" + -0.014983 * t."X_87" + 0.061702 * t."X_88" + -0.075685 * t."X_89" + 0.159607 * t."X_90" + -0.195047 * t."X_91" + -0.075843 * t."X_92" + 0.040286 * t."X_93" + 0.051344 * t."X_94" + -0.027131 * t."X_95" + 0.029770 * t."X_96" + -0.136096 * t."X_97" + 0.073858 * t."X_98" + 0.078226 * t."X_99" AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.694401 + 0.093685 * t."X_0" + -0.033288 * t."X_1" + 0.017507 * t."X_2" + -0.218721 * t."X_3" + 0.121342 * t."X_4" + -0.134257 * t."X_5" + 0.014751 * t."X_6" + -0.053666 * t."X_7" + 0.053806 * t."X_8" + -0.106730 * t."X_9" + -0.157068 * t."X_10" + 0.008374 * t."X_11" + 0.108058 * t."X_12" + 0.098101 * t."X_13" + -0.195432 * t."X_14" + -0.067982 * t."X_15" + 0.035932 * t."X_16" + 0.002349 * t."X_17" + 0.086869 * t."X_18" + -0.107640 * t."X_19" + -0.138345 * t."X_20" + 0.133223 * t."X_21" + 0.071040 * t."X_22" + -0.018191 * t."X_23" + 0.008942 * t."X_24" + 0.065517 * t."X_25" + -0.125168 * t."X_26" + 0.035855 * t."X_27" + 0.062043 * t."X_28" + 0.000143 * t."X_29" + 0.018317 * t."X_30" + -0.087146 * t."X_31" + 0.184912 * t."X_32" + 0.078946 * t."X_33" + -0.020775 * t."X_34" + 0.022185 * t."X_35" + 0.022660 * t."X_36" + -0.118850 * t."X_37" + -0.018080 * t."X_38" + 0.168748 * t."X_39" + -0.105848 * t."X_40" + 0.060551 * t."X_41" + 0.207134 * t."X_42" + -0.152883 * t."X_43" + -0.021070 * t."X_44" + -0.034720 * t."X_45" + -0.016793 * t."X_46" + 0.111916 * t."X_47" + 0.176072 * t."X_48" + -0.103566 * t."X_49" + 0.002024 * t."X_50" + 0.063900 * t."X_51" + -0.132745 * t."X_52" + 0.028099 * t."X_53" + 0.074962 * t."X_54" + -0.064449 * t."X_55" + -0.003090 * t."X_56" + -0.138077 * t."X_57" + 0.185161 * t."X_58" + -0.097791 * t."X_59" + -0.074003 * t."X_60" + 0.074424 * t."X_61" + -0.014801 * t."X_62" + -0.011195 * t."X_63" + 0.013639 * t."X_64" + -0.003208 * t."X_65" + 0.006814 * t."X_66" + 0.053972 * t."X_67" + 0.034694 * t."X_68" + -0.087685 * t."X_69" + 0.070335 * t."X_70" + -0.189203 * t."X_71" + 0.031166 * t."X_72" + -0.094670 * t."X_73" + -0.004725 * t."X_74" + 0.073272 * t."X_75" + -0.078178 * t."X_76" + 0.093092 * t."X_77" + -0.029986 * t."X_78" + -0.016943 * t."X_79" + -0.114487 * t."X_80" + -0.059232 * t."X_81" + -0.007456 * t."X_82" + 0.049051 * t."X_83" + 0.040961 * t."X_84" + -0.221620 * t."X_85" + 0.031172 * t."X_86" + 0.147622 * t."X_87" + 0.012208 * t."X_88" + -0.041929 * t."X_89" + -0.044096 * t."X_90" + 0.030952 * t."X_91" + -0.040861 * t."X_92" + 0.096472 * t."X_93" + 0.017253 * t."X_94" + 0.119779 * t."X_95" + -0.019541 * t."X_96" + -0.068149 * t."X_97" + -0.092518 * t."X_98" + 0.084156 * t."X_99" AS "Score_3",
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
   GREATEST( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Greatest_Score"
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
    GREATEST( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Max_Score"
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