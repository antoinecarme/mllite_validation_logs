WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT t."index" AS "index",
   -0.584476 + -0.149482 * t."X_0" + 0.177374 * t."X_1" + 0.006457 * t."X_2" + 0.221549 * t."X_3" + -0.006775 * t."X_4" + 0.166078 * t."X_5" + 0.133836 * t."X_6" + -0.342083 * t."X_7" + 0.065577 * t."X_8" + 0.131714 * t."X_9" + -0.177602 * t."X_10" + 0.015111 * t."X_11" + -0.121622 * t."X_12" + 0.012661 * t."X_13" + 0.116193 * t."X_14" + -0.220935 * t."X_15" + 0.081262 * t."X_16" + -0.111115 * t."X_17" + 0.139084 * t."X_18" + -0.051024 * t."X_19" + 0.272064 * t."X_20" + -0.042323 * t."X_21" + -0.125059 * t."X_22" + -0.032476 * t."X_23" + -0.165943 * t."X_24" + -0.027691 * t."X_25" + -0.091845 * t."X_26" + 0.007514 * t."X_27" + -0.175878 * t."X_28" + -0.115776 * t."X_29" + -0.025400 * t."X_30" + 0.213897 * t."X_31" + -0.101205 * t."X_32" + -0.008131 * t."X_33" + -0.061767 * t."X_34" + 0.048025 * t."X_35" + 0.049709 * t."X_36" + -0.082073 * t."X_37" + 0.088260 * t."X_38" + -0.045333 * t."X_39" + 0.121818 * t."X_40" + 0.150798 * t."X_41" + 0.084119 * t."X_42" + -0.080673 * t."X_43" + -0.267043 * t."X_44" + 0.074550 * t."X_45" + 0.074983 * t."X_46" + -0.001198 * t."X_47" + -0.064360 * t."X_48" + -0.036843 * t."X_49" + 0.012829 * t."X_50" + 0.067431 * t."X_51" + 0.143346 * t."X_52" + -0.009441 * t."X_53" + -0.045341 * t."X_54" + 0.158448 * t."X_55" + -0.009826 * t."X_56" + 0.245732 * t."X_57" + -0.078063 * t."X_58" + 0.185085 * t."X_59" + -0.065655 * t."X_60" + -0.102528 * t."X_61" + 0.037533 * t."X_62" + -0.025775 * t."X_63" + 0.282400 * t."X_64" + -0.049630 * t."X_65" + 0.045499 * t."X_66" + -0.015525 * t."X_67" + -0.099236 * t."X_68" + 0.170258 * t."X_69" + 0.148471 * t."X_70" + 0.226160 * t."X_71" + 0.230163 * t."X_72" + 0.004486 * t."X_73" + -0.021293 * t."X_74" + 0.020048 * t."X_75" + 0.081731 * t."X_76" + -0.089122 * t."X_77" + -0.109616 * t."X_78" + 0.070820 * t."X_79" + 0.284101 * t."X_80" + -0.269289 * t."X_81" + -0.039934 * t."X_82" + -0.028882 * t."X_83" + -0.146797 * t."X_84" + 0.159601 * t."X_85" + -0.020691 * t."X_86" + -0.115997 * t."X_87" + -0.237720 * t."X_88" + -0.095270 * t."X_89" + 0.041029 * t."X_90" + 0.094548 * t."X_91" + 0.078023 * t."X_92" + -0.274951 * t."X_93" + 0.085865 * t."X_94" + 0.015906 * t."X_95" + 0.266422 * t."X_96" + 0.038177 * t."X_97" + 0.100254 * t."X_98" + 0.072483 * t."X_99" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.451225 + -0.011344 * t."X_0" + -0.120191 * t."X_1" + 0.246145 * t."X_2" + 0.125488 * t."X_3" + -0.077932 * t."X_4" + -0.049540 * t."X_5" + -0.040841 * t."X_6" + -0.113352 * t."X_7" + -0.179589 * t."X_8" + -0.203495 * t."X_9" + 0.065274 * t."X_10" + 0.103570 * t."X_11" + 0.063679 * t."X_12" + -0.178880 * t."X_13" + 0.104760 * t."X_14" + -0.085127 * t."X_15" + -0.003380 * t."X_16" + -0.076939 * t."X_17" + 0.072607 * t."X_18" + -0.017085 * t."X_19" + -0.144183 * t."X_20" + -0.119327 * t."X_21" + 0.219049 * t."X_22" + -0.212464 * t."X_23" + -0.050629 * t."X_24" + -0.320001 * t."X_25" + -0.007874 * t."X_26" + -0.118465 * t."X_27" + 0.343373 * t."X_28" + -0.026763 * t."X_29" + 0.005356 * t."X_30" + -0.020948 * t."X_31" + 0.030699 * t."X_32" + -0.123561 * t."X_33" + 0.084996 * t."X_34" + 0.043611 * t."X_35" + -0.123817 * t."X_36" + 0.010837 * t."X_37" + -0.038862 * t."X_38" + -0.053949 * t."X_39" + 0.128328 * t."X_40" + -0.034515 * t."X_41" + -0.045073 * t."X_42" + 0.196059 * t."X_43" + 0.217410 * t."X_44" + 0.049111 * t."X_45" + -0.106354 * t."X_46" + -0.161888 * t."X_47" + -0.084040 * t."X_48" + -0.005152 * t."X_49" + 0.180064 * t."X_50" + -0.064677 * t."X_51" + 0.053559 * t."X_52" + -0.100257 * t."X_53" + 0.101637 * t."X_54" + -0.103487 * t."X_55" + -0.025038 * t."X_56" + -0.230490 * t."X_57" + 0.001088 * t."X_58" + 0.023506 * t."X_59" + 0.098270 * t."X_60" + 0.086794 * t."X_61" + 0.123115 * t."X_62" + 0.175761 * t."X_63" + -0.193398 * t."X_64" + 0.067089 * t."X_65" + 0.011930 * t."X_66" + 0.121468 * t."X_67" + -0.183003 * t."X_68" + -0.081285 * t."X_69" + -0.107466 * t."X_70" + -0.141487 * t."X_71" + -0.097545 * t."X_72" + -0.100171 * t."X_73" + 0.019256 * t."X_74" + -0.053896 * t."X_75" + 0.025794 * t."X_76" + 0.131317 * t."X_77" + 0.175907 * t."X_78" + -0.002067 * t."X_79" + -0.237232 * t."X_80" + 0.170025 * t."X_81" + 0.065380 * t."X_82" + -0.007412 * t."X_83" + -0.056429 * t."X_84" + 0.081658 * t."X_85" + 0.186404 * t."X_86" + -0.155873 * t."X_87" + 0.031818 * t."X_88" + 0.136311 * t."X_89" + -0.121407 * t."X_90" + -0.039415 * t."X_91" + -0.180981 * t."X_92" + 0.105439 * t."X_93" + -0.037143 * t."X_94" + -0.033551 * t."X_95" + 0.051116 * t."X_96" + -0.078304 * t."X_97" + 0.182707 * t."X_98" + -0.161858 * t."X_99" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.517543 + 0.075500 * t."X_0" + -0.031313 * t."X_1" + -0.179848 * t."X_2" + -0.185499 * t."X_3" + -0.007088 * t."X_4" + -0.024311 * t."X_5" + 0.148488 * t."X_6" + 0.266681 * t."X_7" + 0.036949 * t."X_8" + 0.155383 * t."X_9" + 0.173507 * t."X_10" + -0.123068 * t."X_11" + 0.158625 * t."X_12" + -0.097844 * t."X_13" + -0.103307 * t."X_14" + 0.268755 * t."X_15" + 0.011330 * t."X_16" + 0.101214 * t."X_17" + -0.115272 * t."X_18" + 0.032845 * t."X_19" + 0.042012 * t."X_20" + 0.031905 * t."X_21" + -0.043262 * t."X_22" + 0.185386 * t."X_23" + 0.037967 * t."X_24" + 0.214675 * t."X_25" + 0.073515 * t."X_26" + 0.066277 * t."X_27" + -0.037082 * t."X_28" + -0.154406 * t."X_29" + 0.025466 * t."X_30" + -0.048213 * t."X_31" + 0.036976 * t."X_32" + 0.114338 * t."X_33" + 0.008839 * t."X_34" + -0.057436 * t."X_35" + 0.001217 * t."X_36" + 0.140320 * t."X_37" + -0.032805 * t."X_38" + 0.106185 * t."X_39" + -0.002348 * t."X_40" + -0.125542 * t."X_41" + -0.155516 * t."X_42" + -0.024535 * t."X_43" + -0.016020 * t."X_44" + -0.047866 * t."X_45" + -0.026209 * t."X_46" + 0.003736 * t."X_47" + -0.028453 * t."X_48" + 0.041483 * t."X_49" + -0.050938 * t."X_50" + -0.073957 * t."X_51" + -0.116936 * t."X_52" + 0.009532 * t."X_53" + -0.134487 * t."X_54" + 0.043353 * t."X_55" + -0.077166 * t."X_56" + 0.071805 * t."X_57" + -0.052453 * t."X_58" + 0.093659 * t."X_59" + 0.143064 * t."X_60" + -0.130462 * t."X_61" + -0.091074 * t."X_62" + -0.120431 * t."X_63" + -0.092353 * t."X_64" + -0.007889 * t."X_65" + -0.030340 * t."X_66" + -0.037059 * t."X_67" + 0.185729 * t."X_68" + -0.024315 * t."X_69" + 0.002305 * t."X_70" + 0.095725 * t."X_71" + -0.065462 * t."X_72" + -0.029083 * t."X_73" + -0.027027 * t."X_74" + 0.136243 * t."X_75" + 0.057201 * t."X_76" + -0.167520 * t."X_77" + -0.052736 * t."X_78" + -0.050223 * t."X_79" + 0.116978 * t."X_80" + 0.002750 * t."X_81" + 0.232277 * t."X_82" + -0.012485 * t."X_83" + 0.097530 * t."X_84" + -0.022447 * t."X_85" + -0.014701 * t."X_86" + 0.031809 * t."X_87" + 0.129679 * t."X_88" + -0.018849 * t."X_89" + 0.095345 * t."X_90" + -0.026117 * t."X_91" + 0.065089 * t."X_92" + -0.139273 * t."X_93" + -0.045635 * t."X_94" + -0.075261 * t."X_95" + -0.237609 * t."X_96" + 0.106648 * t."X_97" + -0.157031 * t."X_98" + 0.147590 * t."X_99" AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.447006 + 0.085326 * t."X_0" + -0.025869 * t."X_1" + -0.072753 * t."X_2" + -0.161537 * t."X_3" + 0.091795 * t."X_4" + -0.092227 * t."X_5" + -0.241482 * t."X_6" + 0.188754 * t."X_7" + 0.077062 * t."X_8" + -0.083602 * t."X_9" + -0.061180 * t."X_10" + 0.002817 * t."X_11" + -0.100682 * t."X_12" + 0.264064 * t."X_13" + -0.117646 * t."X_14" + 0.037307 * t."X_15" + -0.089211 * t."X_16" + 0.086839 * t."X_17" + -0.096418 * t."X_18" + 0.035264 * t."X_19" + -0.169894 * t."X_20" + 0.129745 * t."X_21" + -0.050729 * t."X_22" + 0.059553 * t."X_23" + 0.178605 * t."X_24" + 0.133017 * t."X_25" + 0.026204 * t."X_26" + 0.045444 * t."X_27" + -0.130414 * t."X_28" + 0.296946 * t."X_29" + -0.005422 * t."X_30" + -0.144114 * t."X_31" + 0.033531 * t."X_32" + 0.017354 * t."X_33" + -0.032068 * t."X_34" + -0.034591 * t."X_35" + 0.072892 * t."X_36" + -0.069083 * t."X_37" + -0.016593 * t."X_38" + -0.006903 * t."X_39" + -0.247798 * t."X_40" + 0.009259 * t."X_41" + 0.116471 * t."X_42" + -0.090853 * t."X_43" + 0.065652 * t."X_44" + -0.075795 * t."X_45" + 0.057937 * t."X_46" + 0.159349 * t."X_47" + 0.176854 * t."X_48" + -0.000294 * t."X_49" + -0.141955 * t."X_50" + 0.071203 * t."X_51" + -0.079970 * t."X_52" + 0.096946 * t."X_53" + 0.078192 * t."X_54" + -0.098313 * t."X_55" + 0.112029 * t."X_56" + -0.087047 * t."X_57" + 0.129428 * t."X_58" + -0.302251 * t."X_59" + -0.177149 * t."X_60" + 0.146196 * t."X_61" + -0.067680 * t."X_62" + -0.029557 * t."X_63" + 0.003350 * t."X_64" + -0.008525 * t."X_65" + -0.029713 * t."X_66" + -0.068885 * t."X_67" + 0.096511 * t."X_68" + -0.064657 * t."X_69" + -0.043308 * t."X_70" + -0.180398 * t."X_71" + -0.067155 * t."X_72" + 0.124768 * t."X_73" + 0.029063 * t."X_74" + -0.102395 * t."X_75" + -0.164727 * t."X_76" + 0.125325 * t."X_77" + -0.013556 * t."X_78" + -0.015833 * t."X_79" + -0.163846 * t."X_80" + 0.096513 * t."X_81" + -0.257723 * t."X_82" + 0.048779 * t."X_83" + 0.105696 * t."X_84" + -0.218812 * t."X_85" + -0.151013 * t."X_86" + 0.240062 * t."X_87" + 0.076224 * t."X_88" + -0.022193 * t."X_89" + -0.014967 * t."X_90" + -0.029016 * t."X_91" + 0.037868 * t."X_92" + 0.308784 * t."X_93" + -0.003087 * t."X_94" + 0.092906 * t."X_95" + -0.079929 * t."X_96" + -0.066521 * t."X_97" + -0.125931 * t."X_98" + -0.058213 * t."X_99" AS "Score_3",
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