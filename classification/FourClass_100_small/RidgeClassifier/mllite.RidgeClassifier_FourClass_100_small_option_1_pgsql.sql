WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT t."index" AS "index",
   -0.435129 + -0.127077 * t."X_0" + -0.023887 * t."X_1" + 0.019792 * t."X_2" + 0.103184 * t."X_3" + -0.000815 * t."X_4" + -0.054984 * t."X_5" + -0.092606 * t."X_6" + 0.031880 * t."X_7" + 0.121656 * t."X_8" + 0.127582 * t."X_9" + 0.025043 * t."X_10" + 0.030587 * t."X_11" + -0.224390 * t."X_12" + -0.013324 * t."X_13" + 0.108654 * t."X_14" + -0.079534 * t."X_15" + 0.013791 * t."X_16" + -0.021706 * t."X_17" + -0.040479 * t."X_18" + -0.087536 * t."X_19" + 0.123308 * t."X_20" + -0.128571 * t."X_21" + -0.075455 * t."X_22" + 0.138907 * t."X_23" + 0.083402 * t."X_24" + 0.054466 * t."X_25" + 0.093221 * t."X_26" + -0.006129 * t."X_27" + -0.098559 * t."X_28" + 0.022455 * t."X_29" + 0.026622 * t."X_30" + 0.079315 * t."X_31" + -0.288348 * t."X_32" + -0.062907 * t."X_33" + -0.007246 * t."X_34" + 0.068529 * t."X_35" + 0.115250 * t."X_36" + 0.065285 * t."X_37" + 0.031246 * t."X_38" + -0.139562 * t."X_39" + 0.008812 * t."X_40" + 0.026396 * t."X_41" + 0.054456 * t."X_42" + 0.154191 * t."X_43" + -0.029918 * t."X_44" + 0.209451 * t."X_45" + 0.108563 * t."X_46" + 0.082673 * t."X_47" + -0.071687 * t."X_48" + 0.003505 * t."X_49" + 0.164674 * t."X_50" + -0.054657 * t."X_51" + 0.125674 * t."X_52" + 0.015642 * t."X_53" + -0.125092 * t."X_54" + 0.088222 * t."X_55" + 0.000340 * t."X_56" + 0.341885 * t."X_57" + -0.042288 * t."X_58" + 0.047248 * t."X_59" + -0.062865 * t."X_60" + -0.068922 * t."X_61" + 0.062898 * t."X_62" + -0.025419 * t."X_63" + 0.019380 * t."X_64" + -0.022319 * t."X_65" + 0.022348 * t."X_66" + 0.056203 * t."X_67" + 0.074000 * t."X_68" + 0.007232 * t."X_69" + -0.082984 * t."X_70" + 0.268603 * t."X_71" + 0.026739 * t."X_72" + -0.018651 * t."X_73" + 0.049696 * t."X_74" + -0.078912 * t."X_75" + 0.163569 * t."X_76" + 0.078687 * t."X_77" + -0.029914 * t."X_78" + 0.036294 * t."X_79" + 0.112161 * t."X_80" + 0.126607 * t."X_81" + -0.030653 * t."X_82" + -0.139751 * t."X_83" + -0.008447 * t."X_84" + 0.221852 * t."X_85" + 0.067197 * t."X_86" + -0.261728 * t."X_87" + -0.106293 * t."X_88" + 0.047002 * t."X_89" + 0.062248 * t."X_90" + 0.094120 * t."X_91" + 0.137783 * t."X_92" + 0.058173 * t."X_93" + 0.159349 * t."X_94" + 0.119879 * t."X_95" + 0.138297 * t."X_96" + 0.030865 * t."X_97" + -0.086884 * t."X_98" + 0.023403 * t."X_99" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.433021 + 0.080538 * t."X_0" + 0.141068 * t."X_1" + -0.062487 * t."X_2" + 0.006480 * t."X_3" + 0.086815 * t."X_4" + 0.221964 * t."X_5" + -0.035803 * t."X_6" + -0.012916 * t."X_7" + -0.097352 * t."X_8" + -0.049706 * t."X_9" + 0.046845 * t."X_10" + -0.004375 * t."X_11" + 0.318698 * t."X_12" + 0.125815 * t."X_13" + 0.088545 * t."X_14" + 0.038321 * t."X_15" + -0.064736 * t."X_16" + 0.004343 * t."X_17" + 0.114600 * t."X_18" + 0.099331 * t."X_19" + -0.188813 * t."X_20" + 0.050080 * t."X_21" + 0.061740 * t."X_22" + -0.150895 * t."X_23" + -0.072718 * t."X_24" + -0.307821 * t."X_25" + -0.079103 * t."X_26" + -0.033297 * t."X_27" + 0.137517 * t."X_28" + 0.123901 * t."X_29" + -0.064300 * t."X_30" + 0.022150 * t."X_31" + 0.348872 * t."X_32" + -0.090649 * t."X_33" + 0.146655 * t."X_34" + 0.067745 * t."X_35" + -0.140724 * t."X_36" + -0.014965 * t."X_37" + -0.128241 * t."X_38" + -0.198717 * t."X_39" + -0.038615 * t."X_40" + -0.060168 * t."X_41" + 0.034947 * t."X_42" + 0.090740 * t."X_43" + 0.096386 * t."X_44" + -0.036253 * t."X_45" + -0.128247 * t."X_46" + -0.144989 * t."X_47" + -0.099176 * t."X_48" + 0.030065 * t."X_49" + -0.236397 * t."X_50" + -0.082631 * t."X_51" + -0.135031 * t."X_52" + -0.078797 * t."X_53" + 0.217942 * t."X_54" + -0.052383 * t."X_55" + -0.043052 * t."X_56" + -0.307823 * t."X_57" + -0.088039 * t."X_58" + -0.117330 * t."X_59" + 0.130218 * t."X_60" + -0.127306 * t."X_61" + -0.003515 * t."X_62" + -0.031211 * t."X_63" + 0.044346 * t."X_64" + 0.012311 * t."X_65" + 0.005000 * t."X_66" + -0.002834 * t."X_67" + -0.090538 * t."X_68" + 0.042996 * t."X_69" + 0.027662 * t."X_70" + -0.249407 * t."X_71" + -0.076723 * t."X_72" + 0.134339 * t."X_73" + 0.033500 * t."X_74" + 0.004907 * t."X_75" + -0.028286 * t."X_76" + -0.155601 * t."X_77" + 0.121882 * t."X_78" + 0.012604 * t."X_79" + 0.022563 * t."X_80" + 0.024824 * t."X_81" + -0.075840 * t."X_82" + 0.054813 * t."X_83" + -0.078673 * t."X_84" + 0.030070 * t."X_85" + -0.180748 * t."X_86" + 0.139711 * t."X_87" + 0.023224 * t."X_88" + 0.086383 * t."X_89" + -0.185182 * t."X_90" + 0.070039 * t."X_91" + -0.014072 * t."X_92" + -0.217434 * t."X_93" + -0.236594 * t."X_94" + -0.237216 * t."X_95" + -0.166385 * t."X_96" + 0.202992 * t."X_97" + 0.107184 * t."X_98" + -0.200990 * t."X_99" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.423530 + -0.057571 * t."X_0" + -0.078732 * t."X_1" + 0.025226 * t."X_2" + 0.116521 * t."X_3" + -0.228911 * t."X_4" + -0.033892 * t."X_5" + 0.111908 * t."X_6" + 0.040092 * t."X_7" + -0.075213 * t."X_8" + 0.035072 * t."X_9" + 0.083748 * t."X_10" + -0.036012 * t."X_11" + -0.215996 * t."X_12" + -0.223991 * t."X_13" + 0.004416 * t."X_14" + 0.102519 * t."X_15" + 0.013081 * t."X_16" + 0.019211 * t."X_17" + -0.171149 * t."X_18" + 0.101925 * t."X_19" + 0.214460 * t."X_20" + -0.065342 * t."X_21" + -0.054862 * t."X_22" + 0.038481 * t."X_23" + -0.027071 * t."X_24" + 0.184550 * t."X_25" + 0.112134 * t."X_26" + 0.003661 * t."X_27" + -0.110651 * t."X_28" + -0.139454 * t."X_29" + 0.019331 * t."X_30" + -0.008560 * t."X_31" + -0.259826 * t."X_32" + 0.066098 * t."X_33" + -0.116584 * t."X_34" + -0.157794 * t."X_35" + 0.013979 * t."X_36" + 0.077130 * t."X_37" + 0.120879 * t."X_38" + 0.167423 * t."X_39" + 0.147875 * t."X_40" + -0.036611 * t."X_41" + -0.299725 * t."X_42" + -0.079307 * t."X_43" + -0.036963 * t."X_44" + -0.133081 * t."X_45" + 0.035050 * t."X_46" + -0.053635 * t."X_47" + -0.015081 * t."X_48" + 0.069963 * t."X_49" + 0.083166 * t."X_50" + 0.070031 * t."X_51" + 0.163036 * t."X_52" + 0.034086 * t."X_53" + -0.186636 * t."X_54" + 0.035129 * t."X_55" + 0.047718 * t."X_56" + 0.108787 * t."X_57" + -0.064169 * t."X_58" + 0.172658 * t."X_59" + 0.006399 * t."X_60" + 0.124341 * t."X_61" + -0.046058 * t."X_62" + 0.073143 * t."X_63" + -0.086476 * t."X_64" + 0.010065 * t."X_65" + -0.035354 * t."X_66" + -0.108086 * t."X_67" + -0.021805 * t."X_68" + 0.036670 * t."X_69" + -0.018847 * t."X_70" + 0.175822 * t."X_71" + 0.016566 * t."X_72" + -0.017982 * t."X_73" + -0.078618 * t."X_74" + 0.002758 * t."X_75" + -0.049671 * t."X_76" + -0.014502 * t."X_77" + -0.055525 * t."X_78" + -0.030858 * t."X_79" + -0.005778 * t."X_80" + -0.089843 * t."X_81" + 0.106541 * t."X_82" + 0.026556 * t."X_83" + 0.046365 * t."X_84" + -0.021996 * t."X_85" + 0.085414 * t."X_86" + -0.025577 * t."X_87" + 0.072207 * t."X_88" + -0.096143 * t."X_89" + 0.169835 * t."X_90" + -0.206673 * t."X_91" + -0.075153 * t."X_92" + 0.061601 * t."X_93" + 0.060134 * t."X_94" + -0.003382 * t."X_95" + 0.046287 * t."X_96" + -0.164698 * t."X_97" + 0.082987 * t."X_98" + 0.093149 * t."X_99" AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.707113 + 0.101541 * t."X_0" + -0.036851 * t."X_1" + 0.017233 * t."X_2" + -0.221424 * t."X_3" + 0.141113 * t."X_4" + -0.134412 * t."X_5" + 0.015450 * t."X_6" + -0.055733 * t."X_7" + 0.052091 * t."X_8" + -0.114315 * t."X_9" + -0.153941 * t."X_10" + 0.010524 * t."X_11" + 0.122124 * t."X_12" + 0.111848 * t."X_13" + -0.203551 * t."X_14" + -0.062520 * t."X_15" + 0.039659 * t."X_16" + -0.002989 * t."X_17" + 0.096863 * t."X_18" + -0.115187 * t."X_19" + -0.150955 * t."X_20" + 0.142688 * t."X_21" + 0.069685 * t."X_22" + -0.027939 * t."X_23" + 0.015862 * t."X_24" + 0.071665 * t."X_25" + -0.126446 * t."X_26" + 0.035014 * t."X_27" + 0.074211 * t."X_28" + -0.007403 * t."X_29" + 0.017462 * t."X_30" + -0.093941 * t."X_31" + 0.199324 * t."X_32" + 0.085578 * t."X_33" + -0.022180 * t."X_34" + 0.021783 * t."X_35" + 0.009538 * t."X_36" + -0.127669 * t."X_37" + -0.022256 * t."X_38" + 0.171081 * t."X_39" + -0.117727 * t."X_40" + 0.071705 * t."X_41" + 0.213117 * t."X_42" + -0.167696 * t."X_43" + -0.029212 * t."X_44" + -0.037986 * t."X_45" + -0.015679 * t."X_46" + 0.115041 * t."X_47" + 0.182350 * t."X_48" + -0.105233 * t."X_49" + -0.009607 * t."X_50" + 0.070201 * t."X_51" + -0.154000 * t."X_52" + 0.030111 * t."X_53" + 0.090549 * t."X_54" + -0.071895 * t."X_55" + -0.005634 * t."X_56" + -0.143060 * t."X_57" + 0.193096 * t."X_58" + -0.102873 * t."X_59" + -0.074606 * t."X_60" + 0.071870 * t."X_61" + -0.013539 * t."X_62" + -0.017617 * t."X_63" + 0.020470 * t."X_64" + 0.000748 * t."X_65" + 0.007729 * t."X_66" + 0.055896 * t."X_67" + 0.038131 * t."X_68" + -0.085340 * t."X_69" + 0.075417 * t."X_70" + -0.197474 * t."X_71" + 0.031507 * t."X_72" + -0.099638 * t."X_73" + -0.005046 * t."X_74" + 0.072427 * t."X_75" + -0.086544 * t."X_76" + 0.092816 * t."X_77" + -0.034024 * t."X_78" + -0.017945 * t."X_79" + -0.127496 * t."X_80" + -0.058986 * t."X_81" + -0.000056 * t."X_82" + 0.058882 * t."X_83" + 0.041094 * t."X_84" + -0.230523 * t."X_85" + 0.028643 * t."X_86" + 0.145635 * t."X_87" + 0.012601 * t."X_88" + -0.033719 * t."X_89" + -0.048383 * t."X_90" + 0.042234 * t."X_91" + -0.047507 * t."X_92" + 0.097602 * t."X_93" + 0.017162 * t."X_94" + 0.121182 * t."X_95" + -0.021482 * t."X_96" + -0.070214 * t."X_97" + -0.102324 * t."X_98" + 0.082418 * t."X_99" AS "Score_3",
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