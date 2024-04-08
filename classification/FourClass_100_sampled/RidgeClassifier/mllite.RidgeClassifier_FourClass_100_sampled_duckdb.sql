WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "FourClass_100_sampled" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT t."index" AS "index",
   -0.572132 + -0.145041 * t."X_0" + 0.145890 * t."X_1" + -0.017903 * t."X_2" + 0.181855 * t."X_3" + -0.030460 * t."X_4" + 0.140419 * t."X_5" + 0.106423 * t."X_6" + -0.271661 * t."X_7" + 0.080142 * t."X_8" + 0.117255 * t."X_9" + -0.137473 * t."X_10" + 0.011829 * t."X_11" + -0.082997 * t."X_12" + 0.016067 * t."X_13" + 0.114478 * t."X_14" + -0.190575 * t."X_15" + 0.073777 * t."X_16" + -0.109770 * t."X_17" + 0.096498 * t."X_18" + -0.034434 * t."X_19" + 0.252872 * t."X_20" + -0.019254 * t."X_21" + -0.108379 * t."X_22" + -0.008768 * t."X_23" + -0.129486 * t."X_24" + -0.011183 * t."X_25" + -0.099233 * t."X_26" + 0.013530 * t."X_27" + -0.163590 * t."X_28" + -0.091720 * t."X_29" + -0.037381 * t."X_30" + 0.193308 * t."X_31" + -0.075939 * t."X_32" + -0.020634 * t."X_33" + -0.060535 * t."X_34" + 0.040171 * t."X_35" + 0.082913 * t."X_36" + -0.082732 * t."X_37" + 0.085138 * t."X_38" + -0.045894 * t."X_39" + 0.105752 * t."X_40" + 0.109661 * t."X_41" + 0.065797 * t."X_42" + -0.056804 * t."X_43" + -0.232975 * t."X_44" + 0.067681 * t."X_45" + 0.076949 * t."X_46" + -0.009876 * t."X_47" + -0.062303 * t."X_48" + -0.039458 * t."X_49" + 0.017717 * t."X_50" + 0.049532 * t."X_51" + 0.131083 * t."X_52" + 0.013481 * t."X_53" + -0.060908 * t."X_54" + 0.153082 * t."X_55" + 0.014245 * t."X_56" + 0.215502 * t."X_57" + -0.090466 * t."X_58" + 0.172538 * t."X_59" + -0.067104 * t."X_60" + -0.099945 * t."X_61" + 0.049464 * t."X_62" + -0.029024 * t."X_63" + 0.254618 * t."X_64" + -0.052757 * t."X_65" + 0.043514 * t."X_66" + -0.012177 * t."X_67" + -0.056019 * t."X_68" + 0.153494 * t."X_69" + 0.143251 * t."X_70" + 0.226740 * t."X_71" + 0.175863 * t."X_72" + -0.007171 * t."X_73" + -0.014874 * t."X_74" + 0.010875 * t."X_75" + 0.107639 * t."X_76" + -0.081689 * t."X_77" + -0.080065 * t."X_78" + 0.058366 * t."X_79" + 0.251340 * t."X_80" + -0.201886 * t."X_81" + -0.025946 * t."X_82" + -0.010854 * t."X_83" + -0.122766 * t."X_84" + 0.158405 * t."X_85" + -0.034260 * t."X_86" + -0.123415 * t."X_87" + -0.210961 * t."X_88" + -0.084517 * t."X_89" + 0.052318 * t."X_90" + 0.083964 * t."X_91" + 0.085987 * t."X_92" + -0.239807 * t."X_93" + 0.087404 * t."X_94" + 0.036358 * t."X_95" + 0.213344 * t."X_96" + 0.029129 * t."X_97" + 0.085570 * t."X_98" + 0.043067 * t."X_99" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.461946 + 0.002089 * t."X_0" + -0.113818 * t."X_1" + 0.224141 * t."X_2" + 0.113290 * t."X_3" + -0.053175 * t."X_4" + -0.050889 * t."X_5" + -0.043470 * t."X_6" + -0.101864 * t."X_7" + -0.170319 * t."X_8" + -0.193587 * t."X_9" + 0.057612 * t."X_10" + 0.096475 * t."X_11" + 0.078448 * t."X_12" + -0.168392 * t."X_13" + 0.086769 * t."X_14" + -0.079526 * t."X_15" + -0.009500 * t."X_16" + -0.073324 * t."X_17" + 0.067659 * t."X_18" + -0.018455 * t."X_19" + -0.150386 * t."X_20" + -0.109558 * t."X_21" + 0.198698 * t."X_22" + -0.185986 * t."X_23" + -0.041813 * t."X_24" + -0.301646 * t."X_25" + 0.004118 * t."X_26" + -0.108635 * t."X_27" + 0.307551 * t."X_28" + -0.021035 * t."X_29" + 0.009994 * t."X_30" + -0.018714 * t."X_31" + 0.020023 * t."X_32" + -0.118517 * t."X_33" + 0.089185 * t."X_34" + 0.038582 * t."X_35" + -0.117575 * t."X_36" + 0.011162 * t."X_37" + -0.045555 * t."X_38" + -0.056590 * t."X_39" + 0.110094 * t."X_40" + -0.046728 * t."X_41" + -0.039280 * t."X_42" + 0.187668 * t."X_43" + 0.194585 * t."X_44" + 0.045834 * t."X_45" + -0.097164 * t."X_46" + -0.159135 * t."X_47" + -0.071507 * t."X_48" + -0.005605 * t."X_49" + 0.163807 * t."X_50" + -0.054518 * t."X_51" + 0.042312 * t."X_52" + -0.089932 * t."X_53" + 0.104272 * t."X_54" + -0.098107 * t."X_55" + -0.019899 * t."X_56" + -0.207102 * t."X_57" + -0.013819 * t."X_58" + 0.025373 * t."X_59" + 0.091360 * t."X_60" + 0.067916 * t."X_61" + 0.120736 * t."X_62" + 0.158853 * t."X_63" + -0.183819 * t."X_64" + 0.061275 * t."X_65" + 0.007479 * t."X_66" + 0.110924 * t."X_67" + -0.169132 * t."X_68" + -0.084709 * t."X_69" + -0.093782 * t."X_70" + -0.133647 * t."X_71" + -0.089653 * t."X_72" + -0.087278 * t."X_73" + 0.023934 * t."X_74" + -0.059191 * t."X_75" + 0.020939 * t."X_76" + 0.120172 * t."X_77" + 0.163116 * t."X_78" + -0.000081 * t."X_79" + -0.217891 * t."X_80" + 0.148636 * t."X_81" + 0.065440 * t."X_82" + -0.015540 * t."X_83" + -0.045988 * t."X_84" + 0.074747 * t."X_85" + 0.164494 * t."X_86" + -0.134902 * t."X_87" + 0.034935 * t."X_88" + 0.123700 * t."X_89" + -0.115959 * t."X_90" + -0.048097 * t."X_91" + -0.167685 * t."X_92" + 0.096070 * t."X_93" + -0.038551 * t."X_94" + -0.039720 * t."X_95" + 0.050655 * t."X_96" + -0.057275 * t."X_97" + 0.147963 * t."X_98" + -0.145229 * t."X_99" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.515613 + 0.065783 * t."X_0" + -0.021909 * t."X_1" + -0.158313 * t."X_2" + -0.157408 * t."X_3" + -0.010029 * t."X_4" + -0.012311 * t."X_5" + 0.153855 * t."X_6" + 0.223803 * t."X_7" + 0.026265 * t."X_8" + 0.154861 * t."X_9" + 0.154054 * t."X_10" + -0.116430 * t."X_11" + 0.127008 * t."X_12" + -0.096461 * t."X_13" + -0.091727 * t."X_14" + 0.246727 * t."X_15" + 0.010984 * t."X_16" + 0.093566 * t."X_17" + -0.096564 * t."X_18" + 0.017660 * t."X_19" + 0.051286 * t."X_20" + 0.019572 * t."X_21" + -0.035114 * t."X_22" + 0.155748 * t."X_23" + 0.023899 * t."X_24" + 0.196793 * t."X_25" + 0.069757 * t."X_26" + 0.059326 * t."X_27" + -0.030951 * t."X_28" + -0.157909 * t."X_29" + 0.030612 * t."X_30" + -0.042355 * t."X_31" + 0.025485 * t."X_32" + 0.115061 * t."X_33" + 0.002556 * t."X_34" + -0.056785 * t."X_35" + -0.016295 * t."X_36" + 0.132071 * t."X_37" + -0.023257 * t."X_38" + 0.104181 * t."X_39" + 0.010812 * t."X_40" + -0.100235 * t."X_41" + -0.147108 * t."X_42" + -0.032949 * t."X_43" + -0.020066 * t."X_44" + -0.051435 * t."X_45" + -0.025726 * t."X_46" + 0.010124 * t."X_47" + -0.037074 * t."X_48" + 0.044684 * t."X_49" + -0.046421 * t."X_50" + -0.061879 * t."X_51" + -0.103294 * t."X_52" + -0.005162 * t."X_53" + -0.121072 * t."X_54" + 0.039477 * t."X_55" + -0.080020 * t."X_56" + 0.071874 * t."X_57" + -0.037718 * t."X_58" + 0.086301 * t."X_59" + 0.139088 * t."X_60" + -0.121192 * t."X_61" + -0.092486 * t."X_62" + -0.106000 * t."X_63" + -0.075524 * t."X_64" + -0.000916 * t."X_65" + -0.029183 * t."X_66" + -0.034610 * t."X_67" + 0.153072 * t."X_68" + -0.022017 * t."X_69" + -0.004410 * t."X_70" + 0.081717 * t."X_71" + -0.043907 * t."X_72" + -0.028322 * t."X_73" + -0.026103 * t."X_74" + 0.135560 * t."X_75" + 0.048667 * t."X_76" + -0.157602 * t."X_77" + -0.060989 * t."X_78" + -0.044974 * t."X_79" + 0.115143 * t."X_80" + -0.018897 * t."X_81" + 0.204972 * t."X_82" + -0.016723 * t."X_83" + 0.072962 * t."X_84" + -0.020379 * t."X_85" + -0.004737 * t."X_86" + 0.026614 * t."X_87" + 0.117464 * t."X_88" + -0.018005 * t."X_89" + 0.083408 * t."X_90" + -0.021213 * t."X_91" + 0.048198 * t."X_92" + -0.144396 * t."X_93" + -0.044246 * t."X_94" + -0.083201 * t."X_95" + -0.203868 * t."X_96" + 0.096764 * t."X_97" + -0.133042 * t."X_98" + 0.148293 * t."X_99" AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.450308 + 0.077168 * t."X_0" + -0.010163 * t."X_1" + -0.047924 * t."X_2" + -0.137737 * t."X_3" + 0.093664 * t."X_4" + -0.077219 * t."X_5" + -0.216808 * t."X_6" + 0.149722 * t."X_7" + 0.063912 * t."X_8" + -0.078529 * t."X_9" + -0.074194 * t."X_10" + 0.008124 * t."X_11" + -0.122459 * t."X_12" + 0.248787 * t."X_13" + -0.109519 * t."X_14" + 0.023374 * t."X_15" + -0.075260 * t."X_16" + 0.089528 * t."X_17" + -0.067592 * t."X_18" + 0.035228 * t."X_19" + -0.153773 * t."X_20" + 0.109240 * t."X_21" + -0.055206 * t."X_22" + 0.039005 * t."X_23" + 0.147400 * t."X_24" + 0.116035 * t."X_25" + 0.025358 * t."X_26" + 0.035779 * t."X_27" + -0.113010 * t."X_28" + 0.270664 * t."X_29" + -0.003226 * t."X_30" + -0.132240 * t."X_31" + 0.030432 * t."X_32" + 0.024090 * t."X_33" + -0.031206 * t."X_34" + -0.021969 * t."X_35" + 0.050957 * t."X_36" + -0.060501 * t."X_37" + -0.016327 * t."X_38" + -0.001697 * t."X_39" + -0.226657 * t."X_40" + 0.037302 * t."X_41" + 0.120592 * t."X_42" + -0.097916 * t."X_43" + 0.058455 * t."X_44" + -0.062080 * t."X_45" + 0.045942 * t."X_46" + 0.158887 * t."X_47" + 0.170885 * t."X_48" + 0.000378 * t."X_49" + -0.135104 * t."X_50" + 0.066865 * t."X_51" + -0.070101 * t."X_52" + 0.081610 * t."X_53" + 0.077709 * t."X_54" + -0.094451 * t."X_55" + 0.085673 * t."X_56" + -0.080274 * t."X_57" + 0.142003 * t."X_58" + -0.284213 * t."X_59" + -0.163345 * t."X_60" + 0.153221 * t."X_61" + -0.077714 * t."X_62" + -0.023830 * t."X_63" + 0.004726 * t."X_64" + -0.007604 * t."X_65" + -0.021812 * t."X_66" + -0.064137 * t."X_67" + 0.072079 * t."X_68" + -0.046768 * t."X_69" + -0.045060 * t."X_70" + -0.174810 * t."X_71" + -0.042303 * t."X_72" + 0.122771 * t."X_73" + 0.017043 * t."X_74" + -0.087245 * t."X_75" + -0.177246 * t."X_76" + 0.119119 * t."X_77" + -0.022063 * t."X_78" + -0.013308 * t."X_79" + -0.148592 * t."X_80" + 0.072147 * t."X_81" + -0.244466 * t."X_82" + 0.043116 * t."X_83" + 0.095793 * t."X_84" + -0.212772 * t."X_85" + -0.125498 * t."X_86" + 0.231704 * t."X_87" + 0.058563 * t."X_88" + -0.021178 * t."X_89" + -0.019767 * t."X_90" + -0.014654 * t."X_91" + 0.033499 * t."X_92" + 0.288133 * t."X_93" + -0.004608 * t."X_94" + 0.086564 * t."X_95" + -0.060130 * t."X_96" + -0.068618 * t."X_97" + -0.100491 * t."X_98" + -0.046130 * t."X_99" AS "Score_3",
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