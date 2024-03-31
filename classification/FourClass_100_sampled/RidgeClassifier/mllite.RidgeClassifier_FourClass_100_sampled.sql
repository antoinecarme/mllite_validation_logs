WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -0.572132 + -0.145041 * X_0 + 0.145890 * X_1 + -0.017903 * X_2 + 0.181855 * X_3 + -0.030460 * X_4 + 0.140419 * X_5 + 0.106423 * X_6 + -0.271661 * X_7 + 0.080142 * X_8 + 0.117255 * X_9 + -0.137473 * X_10 + 0.011829 * X_11 + -0.082997 * X_12 + 0.016067 * X_13 + 0.114478 * X_14 + -0.190575 * X_15 + 0.073777 * X_16 + -0.109770 * X_17 + 0.096498 * X_18 + -0.034434 * X_19 + 0.252872 * X_20 + -0.019254 * X_21 + -0.108379 * X_22 + -0.008768 * X_23 + -0.129486 * X_24 + -0.011183 * X_25 + -0.099233 * X_26 + 0.013530 * X_27 + -0.163590 * X_28 + -0.091720 * X_29 + -0.037381 * X_30 + 0.193308 * X_31 + -0.075939 * X_32 + -0.020634 * X_33 + -0.060535 * X_34 + 0.040171 * X_35 + 0.082913 * X_36 + -0.082732 * X_37 + 0.085138 * X_38 + -0.045894 * X_39 + 0.105752 * X_40 + 0.109661 * X_41 + 0.065797 * X_42 + -0.056804 * X_43 + -0.232975 * X_44 + 0.067681 * X_45 + 0.076949 * X_46 + -0.009876 * X_47 + -0.062303 * X_48 + -0.039458 * X_49 + 0.017717 * X_50 + 0.049532 * X_51 + 0.131083 * X_52 + 0.013481 * X_53 + -0.060908 * X_54 + 0.153082 * X_55 + 0.014245 * X_56 + 0.215502 * X_57 + -0.090466 * X_58 + 0.172538 * X_59 + -0.067104 * X_60 + -0.099945 * X_61 + 0.049464 * X_62 + -0.029024 * X_63 + 0.254618 * X_64 + -0.052757 * X_65 + 0.043514 * X_66 + -0.012177 * X_67 + -0.056019 * X_68 + 0.153494 * X_69 + 0.143251 * X_70 + 0.226740 * X_71 + 0.175863 * X_72 + -0.007171 * X_73 + -0.014874 * X_74 + 0.010875 * X_75 + 0.107639 * X_76 + -0.081689 * X_77 + -0.080065 * X_78 + 0.058366 * X_79 + 0.251340 * X_80 + -0.201886 * X_81 + -0.025946 * X_82 + -0.010854 * X_83 + -0.122766 * X_84 + 0.158405 * X_85 + -0.034260 * X_86 + -0.123415 * X_87 + -0.210961 * X_88 + -0.084517 * X_89 + 0.052318 * X_90 + 0.083964 * X_91 + 0.085987 * X_92 + -0.239807 * X_93 + 0.087404 * X_94 + 0.036358 * X_95 + 0.213344 * X_96 + 0.029129 * X_97 + 0.085570 * X_98 + 0.043067 * X_99 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.461946 + 0.002089 * X_0 + -0.113818 * X_1 + 0.224141 * X_2 + 0.113290 * X_3 + -0.053175 * X_4 + -0.050889 * X_5 + -0.043470 * X_6 + -0.101864 * X_7 + -0.170319 * X_8 + -0.193587 * X_9 + 0.057612 * X_10 + 0.096475 * X_11 + 0.078448 * X_12 + -0.168392 * X_13 + 0.086769 * X_14 + -0.079526 * X_15 + -0.009500 * X_16 + -0.073324 * X_17 + 0.067659 * X_18 + -0.018455 * X_19 + -0.150386 * X_20 + -0.109558 * X_21 + 0.198698 * X_22 + -0.185986 * X_23 + -0.041813 * X_24 + -0.301646 * X_25 + 0.004118 * X_26 + -0.108635 * X_27 + 0.307551 * X_28 + -0.021035 * X_29 + 0.009994 * X_30 + -0.018714 * X_31 + 0.020023 * X_32 + -0.118517 * X_33 + 0.089185 * X_34 + 0.038582 * X_35 + -0.117575 * X_36 + 0.011162 * X_37 + -0.045555 * X_38 + -0.056590 * X_39 + 0.110094 * X_40 + -0.046728 * X_41 + -0.039280 * X_42 + 0.187668 * X_43 + 0.194585 * X_44 + 0.045834 * X_45 + -0.097164 * X_46 + -0.159135 * X_47 + -0.071507 * X_48 + -0.005605 * X_49 + 0.163807 * X_50 + -0.054518 * X_51 + 0.042312 * X_52 + -0.089932 * X_53 + 0.104272 * X_54 + -0.098107 * X_55 + -0.019899 * X_56 + -0.207102 * X_57 + -0.013819 * X_58 + 0.025373 * X_59 + 0.091360 * X_60 + 0.067916 * X_61 + 0.120736 * X_62 + 0.158853 * X_63 + -0.183819 * X_64 + 0.061275 * X_65 + 0.007479 * X_66 + 0.110924 * X_67 + -0.169132 * X_68 + -0.084709 * X_69 + -0.093782 * X_70 + -0.133647 * X_71 + -0.089653 * X_72 + -0.087278 * X_73 + 0.023934 * X_74 + -0.059191 * X_75 + 0.020939 * X_76 + 0.120172 * X_77 + 0.163116 * X_78 + -0.000081 * X_79 + -0.217891 * X_80 + 0.148636 * X_81 + 0.065440 * X_82 + -0.015540 * X_83 + -0.045988 * X_84 + 0.074747 * X_85 + 0.164494 * X_86 + -0.134902 * X_87 + 0.034935 * X_88 + 0.123700 * X_89 + -0.115959 * X_90 + -0.048097 * X_91 + -0.167685 * X_92 + 0.096070 * X_93 + -0.038551 * X_94 + -0.039720 * X_95 + 0.050655 * X_96 + -0.057275 * X_97 + 0.147963 * X_98 + -0.145229 * X_99 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.515613 + 0.065783 * X_0 + -0.021909 * X_1 + -0.158313 * X_2 + -0.157408 * X_3 + -0.010029 * X_4 + -0.012311 * X_5 + 0.153855 * X_6 + 0.223803 * X_7 + 0.026265 * X_8 + 0.154861 * X_9 + 0.154054 * X_10 + -0.116430 * X_11 + 0.127008 * X_12 + -0.096461 * X_13 + -0.091727 * X_14 + 0.246727 * X_15 + 0.010984 * X_16 + 0.093566 * X_17 + -0.096564 * X_18 + 0.017660 * X_19 + 0.051286 * X_20 + 0.019572 * X_21 + -0.035114 * X_22 + 0.155748 * X_23 + 0.023899 * X_24 + 0.196793 * X_25 + 0.069757 * X_26 + 0.059326 * X_27 + -0.030951 * X_28 + -0.157909 * X_29 + 0.030612 * X_30 + -0.042355 * X_31 + 0.025485 * X_32 + 0.115061 * X_33 + 0.002556 * X_34 + -0.056785 * X_35 + -0.016295 * X_36 + 0.132071 * X_37 + -0.023257 * X_38 + 0.104181 * X_39 + 0.010812 * X_40 + -0.100235 * X_41 + -0.147108 * X_42 + -0.032949 * X_43 + -0.020066 * X_44 + -0.051435 * X_45 + -0.025726 * X_46 + 0.010124 * X_47 + -0.037074 * X_48 + 0.044684 * X_49 + -0.046421 * X_50 + -0.061879 * X_51 + -0.103294 * X_52 + -0.005162 * X_53 + -0.121072 * X_54 + 0.039477 * X_55 + -0.080020 * X_56 + 0.071874 * X_57 + -0.037718 * X_58 + 0.086301 * X_59 + 0.139088 * X_60 + -0.121192 * X_61 + -0.092486 * X_62 + -0.106000 * X_63 + -0.075524 * X_64 + -0.000916 * X_65 + -0.029183 * X_66 + -0.034610 * X_67 + 0.153072 * X_68 + -0.022017 * X_69 + -0.004410 * X_70 + 0.081717 * X_71 + -0.043907 * X_72 + -0.028322 * X_73 + -0.026103 * X_74 + 0.135560 * X_75 + 0.048667 * X_76 + -0.157602 * X_77 + -0.060989 * X_78 + -0.044974 * X_79 + 0.115143 * X_80 + -0.018897 * X_81 + 0.204972 * X_82 + -0.016723 * X_83 + 0.072962 * X_84 + -0.020379 * X_85 + -0.004737 * X_86 + 0.026614 * X_87 + 0.117464 * X_88 + -0.018005 * X_89 + 0.083408 * X_90 + -0.021213 * X_91 + 0.048198 * X_92 + -0.144396 * X_93 + -0.044246 * X_94 + -0.083201 * X_95 + -0.203868 * X_96 + 0.096764 * X_97 + -0.133042 * X_98 + 0.148293 * X_99 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.450308 + 0.077168 * X_0 + -0.010163 * X_1 + -0.047924 * X_2 + -0.137737 * X_3 + 0.093664 * X_4 + -0.077219 * X_5 + -0.216808 * X_6 + 0.149722 * X_7 + 0.063912 * X_8 + -0.078529 * X_9 + -0.074194 * X_10 + 0.008124 * X_11 + -0.122459 * X_12 + 0.248787 * X_13 + -0.109519 * X_14 + 0.023374 * X_15 + -0.075260 * X_16 + 0.089528 * X_17 + -0.067592 * X_18 + 0.035228 * X_19 + -0.153773 * X_20 + 0.109240 * X_21 + -0.055206 * X_22 + 0.039005 * X_23 + 0.147400 * X_24 + 0.116035 * X_25 + 0.025358 * X_26 + 0.035779 * X_27 + -0.113010 * X_28 + 0.270664 * X_29 + -0.003226 * X_30 + -0.132240 * X_31 + 0.030432 * X_32 + 0.024090 * X_33 + -0.031206 * X_34 + -0.021969 * X_35 + 0.050957 * X_36 + -0.060501 * X_37 + -0.016327 * X_38 + -0.001697 * X_39 + -0.226657 * X_40 + 0.037302 * X_41 + 0.120592 * X_42 + -0.097916 * X_43 + 0.058455 * X_44 + -0.062080 * X_45 + 0.045942 * X_46 + 0.158887 * X_47 + 0.170885 * X_48 + 0.000378 * X_49 + -0.135104 * X_50 + 0.066865 * X_51 + -0.070101 * X_52 + 0.081610 * X_53 + 0.077709 * X_54 + -0.094451 * X_55 + 0.085673 * X_56 + -0.080274 * X_57 + 0.142003 * X_58 + -0.284213 * X_59 + -0.163345 * X_60 + 0.153221 * X_61 + -0.077714 * X_62 + -0.023830 * X_63 + 0.004726 * X_64 + -0.007604 * X_65 + -0.021812 * X_66 + -0.064137 * X_67 + 0.072079 * X_68 + -0.046768 * X_69 + -0.045060 * X_70 + -0.174810 * X_71 + -0.042303 * X_72 + 0.122771 * X_73 + 0.017043 * X_74 + -0.087245 * X_75 + -0.177246 * X_76 + 0.119119 * X_77 + -0.022063 * X_78 + -0.013308 * X_79 + -0.148592 * X_80 + 0.072147 * X_81 + -0.244466 * X_82 + 0.043116 * X_83 + 0.095793 * X_84 + -0.212772 * X_85 + -0.125498 * X_86 + 0.231704 * X_87 + 0.058563 * X_88 + -0.021178 * X_89 + -0.019767 * X_90 + -0.014654 * X_91 + 0.033499 * X_92 + 0.288133 * X_93 + -0.004608 * X_94 + 0.086564 * X_95 + -0.060130 * X_96 + -0.068618 * X_97 + -0.100491 * X_98 + -0.046130 * X_99 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3"
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