WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "FourClass_100_original" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT t."index" AS "index",
   -0.597588 + -0.002145 * t."X_0" + -0.002153 * t."X_1" + -0.005388 * t."X_2" + 0.018287 * t."X_3" + 0.016656 * t."X_4" + -0.011725 * t."X_5" + 0.001966 * t."X_6" + 0.021902 * t."X_7" + 0.013302 * t."X_8" + 0.007124 * t."X_9" + -0.009914 * t."X_10" + 0.000408 * t."X_11" + -0.005741 * t."X_12" + 0.017037 * t."X_13" + -0.010220 * t."X_14" + 0.017384 * t."X_15" + -0.004674 * t."X_16" + -0.002013 * t."X_17" + 0.022986 * t."X_18" + -0.003466 * t."X_19" + -0.016025 * t."X_20" + 0.013079 * t."X_21" + -0.009660 * t."X_22" + 0.010474 * t."X_23" + 0.013384 * t."X_24" + 0.017459 * t."X_25" + -0.024991 * t."X_26" + 0.043656 * t."X_27" + 0.001474 * t."X_28" + -0.024707 * t."X_29" + -0.017192 * t."X_30" + 0.115982 * t."X_31" + -0.056117 * t."X_32" + -0.003565 * t."X_33" + 0.011445 * t."X_34" + -0.000714 * t."X_35" + -0.024633 * t."X_36" + 0.031215 * t."X_37" + -0.031717 * t."X_38" + -0.040354 * t."X_39" + 0.022118 * t."X_40" + 0.001382 * t."X_41" + -0.012731 * t."X_42" + 0.016556 * t."X_43" + -0.022920 * t."X_44" + -0.033083 * t."X_45" + 0.041929 * t."X_46" + -0.014873 * t."X_47" + -0.022097 * t."X_48" + -0.066449 * t."X_49" + 0.015758 * t."X_50" + 0.011848 * t."X_51" + 0.019782 * t."X_52" + 0.129103 * t."X_53" + 0.006072 * t."X_54" + 0.006394 * t."X_55" + -0.019282 * t."X_56" + -0.023103 * t."X_57" + -0.001098 * t."X_58" + 0.008536 * t."X_59" + -0.052983 * t."X_60" + -0.028646 * t."X_61" + 0.118287 * t."X_62" + 0.026403 * t."X_63" + 0.012822 * t."X_64" + -0.012695 * t."X_65" + 0.032283 * t."X_66" + 0.012221 * t."X_67" + -0.008018 * t."X_68" + 0.018908 * t."X_69" + 0.038659 * t."X_70" + -0.018231 * t."X_71" + 0.000374 * t."X_72" + 0.001761 * t."X_73" + -0.016673 * t."X_74" + 0.028490 * t."X_75" + -0.021791 * t."X_76" + 0.000056 * t."X_77" + 0.035325 * t."X_78" + -0.008893 * t."X_79" + -0.019286 * t."X_80" + -0.028254 * t."X_81" + 0.026156 * t."X_82" + -0.061067 * t."X_83" + 0.006924 * t."X_84" + -0.015547 * t."X_85" + -0.031869 * t."X_86" + -0.042367 * t."X_87" + -0.008576 * t."X_88" + -0.039440 * t."X_89" + 0.024659 * t."X_90" + 0.031767 * t."X_91" + 0.007231 * t."X_92" + -0.002110 * t."X_93" + 0.012930 * t."X_94" + -0.002858 * t."X_95" + 0.012477 * t."X_96" + -0.000885 * t."X_97" + -0.008048 * t."X_98" + 0.007289 * t."X_99" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.460131 + 0.003678 * t."X_0" + -0.025445 * t."X_1" + 0.025294 * t."X_2" + -0.007558 * t."X_3" + -0.000577 * t."X_4" + 0.022938 * t."X_5" + -0.016282 * t."X_6" + 0.001018 * t."X_7" + 0.020381 * t."X_8" + 0.043895 * t."X_9" + -0.008005 * t."X_10" + 0.005111 * t."X_11" + -0.027467 * t."X_12" + -0.040572 * t."X_13" + 0.028516 * t."X_14" + 0.012800 * t."X_15" + 0.014039 * t."X_16" + 0.015917 * t."X_17" + 0.016516 * t."X_18" + 0.001409 * t."X_19" + -0.006350 * t."X_20" + 0.028059 * t."X_21" + 0.021442 * t."X_22" + -0.017763 * t."X_23" + -0.030020 * t."X_24" + -0.035927 * t."X_25" + 0.042551 * t."X_26" + -0.004972 * t."X_27" + -0.002964 * t."X_28" + -0.002703 * t."X_29" + 0.013024 * t."X_30" + 0.033901 * t."X_31" + 0.010418 * t."X_32" + -0.001080 * t."X_33" + 0.010055 * t."X_34" + -0.039808 * t."X_35" + 0.007043 * t."X_36" + -0.032109 * t."X_37" + 0.005472 * t."X_38" + -0.017082 * t."X_39" + 0.037235 * t."X_40" + -0.005508 * t."X_41" + 0.003519 * t."X_42" + -0.000548 * t."X_43" + 0.039399 * t."X_44" + -0.004835 * t."X_45" + -0.052340 * t."X_46" + -0.013649 * t."X_47" + 0.004121 * t."X_48" + 0.012837 * t."X_49" + 0.018882 * t."X_50" + -0.003952 * t."X_51" + 0.014227 * t."X_52" + -0.017021 * t."X_53" + -0.026450 * t."X_54" + 0.019164 * t."X_55" + 0.070565 * t."X_56" + 0.026126 * t."X_57" + 0.019744 * t."X_58" + -0.009982 * t."X_59" + 0.030885 * t."X_60" + 0.014672 * t."X_61" + 0.096261 * t."X_62" + -0.024604 * t."X_63" + -0.037121 * t."X_64" + 0.012415 * t."X_65" + 0.001024 * t."X_66" + 0.047405 * t."X_67" + -0.012186 * t."X_68" + -0.054810 * t."X_69" + -0.041882 * t."X_70" + -0.001909 * t."X_71" + 0.019897 * t."X_72" + 0.008421 * t."X_73" + -0.006019 * t."X_74" + -0.025534 * t."X_75" + 0.037231 * t."X_76" + 0.009206 * t."X_77" + -0.023484 * t."X_78" + -0.003897 * t."X_79" + 0.002556 * t."X_80" + -0.030474 * t."X_81" + 0.012078 * t."X_82" + 0.058496 * t."X_83" + 0.021093 * t."X_84" + -0.004203 * t."X_85" + -0.010373 * t."X_86" + 0.005546 * t."X_87" + 0.006330 * t."X_88" + -0.009587 * t."X_89" + -0.007859 * t."X_90" + -0.031617 * t."X_91" + 0.017907 * t."X_92" + 0.014483 * t."X_93" + 0.002904 * t."X_94" + 0.021878 * t."X_95" + -0.024566 * t."X_96" + 0.002546 * t."X_97" + 0.040139 * t."X_98" + -0.025716 * t."X_99" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.407174 + -0.014571 * t."X_0" + -0.004989 * t."X_1" + -0.030727 * t."X_2" + -0.034106 * t."X_3" + 0.024561 * t."X_4" + -0.010424 * t."X_5" + 0.055628 * t."X_6" + -0.029197 * t."X_7" + -0.044856 * t."X_8" + -0.036403 * t."X_9" + 0.010752 * t."X_10" + -0.019716 * t."X_11" + 0.050850 * t."X_12" + 0.024200 * t."X_13" + -0.002144 * t."X_14" + 0.011268 * t."X_15" + 0.004912 * t."X_16" + -0.046729 * t."X_17" + -0.020894 * t."X_18" + 0.008880 * t."X_19" + -0.009511 * t."X_20" + -0.043544 * t."X_21" + -0.028382 * t."X_22" + 0.025013 * t."X_23" + 0.002754 * t."X_24" + 0.010554 * t."X_25" + -0.018748 * t."X_26" + -0.001827 * t."X_27" + -0.015216 * t."X_28" + -0.008479 * t."X_29" + -0.006766 * t."X_30" + -0.010349 * t."X_31" + 0.013854 * t."X_32" + 0.006749 * t."X_33" + 0.001014 * t."X_34" + 0.028191 * t."X_35" + -0.002853 * t."X_36" + 0.021521 * t."X_37" + -0.017480 * t."X_38" + 0.020346 * t."X_39" + -0.022130 * t."X_40" + 0.004633 * t."X_41" + 0.014165 * t."X_42" + -0.009217 * t."X_43" + -0.016405 * t."X_44" + 0.019705 * t."X_45" + -0.051036 * t."X_46" + -0.037699 * t."X_47" + -0.018205 * t."X_48" + 0.072708 * t."X_49" + 0.007976 * t."X_50" + -0.030457 * t."X_51" + -0.020069 * t."X_52" + -0.042164 * t."X_53" + 0.013644 * t."X_54" + -0.049070 * t."X_55" + -0.027408 * t."X_56" + 0.021131 * t."X_57" + 0.014726 * t."X_58" + -0.011238 * t."X_59" + 0.135441 * t."X_60" + -0.011809 * t."X_61" + -0.071602 * t."X_62" + -0.006089 * t."X_63" + 0.042857 * t."X_64" + -0.003069 * t."X_65" + -0.033838 * t."X_66" + -0.010863 * t."X_67" + 0.012822 * t."X_68" + 0.034502 * t."X_69" + -0.009596 * t."X_70" + 0.020835 * t."X_71" + 0.026857 * t."X_72" + -0.017512 * t."X_73" + 0.011274 * t."X_74" + 0.028368 * t."X_75" + -0.037443 * t."X_76" + -0.051678 * t."X_77" + -0.010738 * t."X_78" + -0.012498 * t."X_79" + 0.036190 * t."X_80" + 0.016386 * t."X_81" + -0.010799 * t."X_82" + -0.027783 * t."X_83" + -0.057850 * t."X_84" + 0.005506 * t."X_85" + 0.020610 * t."X_86" + 0.006304 * t."X_87" + 0.029561 * t."X_88" + 0.014975 * t."X_89" + -0.007331 * t."X_90" + -0.012027 * t."X_91" + 0.013500 * t."X_92" + -0.041664 * t."X_93" + 0.013231 * t."X_94" + -0.036232 * t."X_95" + 0.009177 * t."X_96" + -0.000162 * t."X_97" + -0.018065 * t."X_98" + 0.009101 * t."X_99" AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.535844 + 0.013038 * t."X_0" + 0.032588 * t."X_1" + 0.010821 * t."X_2" + 0.023378 * t."X_3" + -0.040640 * t."X_4" + -0.000789 * t."X_5" + -0.041312 * t."X_6" + 0.006277 * t."X_7" + 0.011172 * t."X_8" + -0.014616 * t."X_9" + 0.007168 * t."X_10" + 0.051746 * t."X_11" + -0.017643 * t."X_12" + -0.000665 * t."X_13" + -0.016151 * t."X_14" + -0.041452 * t."X_15" + -0.014277 * t."X_16" + 0.032825 * t."X_17" + -0.018608 * t."X_18" + -0.006823 * t."X_19" + 0.031886 * t."X_20" + 0.002406 * t."X_21" + 0.016599 * t."X_22" + -0.017723 * t."X_23" + 0.013882 * t."X_24" + 0.007914 * t."X_25" + 0.001188 * t."X_26" + -0.009908 * t."X_27" + 0.016706 * t."X_28" + 0.035889 * t."X_29" + 0.010934 * t."X_30" + -0.141397 * t."X_31" + 0.031845 * t."X_32" + -0.002104 * t."X_33" + -0.022514 * t."X_34" + 0.007622 * t."X_35" + 0.020443 * t."X_36" + -0.020627 * t."X_37" + 0.043725 * t."X_38" + 0.037090 * t."X_39" + -0.037223 * t."X_40" + -0.000507 * t."X_41" + -0.004954 * t."X_42" + -0.006791 * t."X_43" + -0.000074 * t."X_44" + 0.018214 * t."X_45" + 0.044878 * t."X_46" + 0.066220 * t."X_47" + 0.036181 * t."X_48" + 0.011397 * t."X_49" + -0.042617 * t."X_50" + 0.022560 * t."X_51" + -0.013940 * t."X_52" + -0.026291 * t."X_53" + 0.006733 * t."X_54" + 0.023513 * t."X_55" + -0.023875 * t."X_56" + -0.024154 * t."X_57" + -0.033373 * t."X_58" + 0.012683 * t."X_59" + -0.098009 * t."X_60" + 0.025784 * t."X_61" + -0.151824 * t."X_62" + 0.004291 * t."X_63" + -0.018558 * t."X_64" + 0.000326 * t."X_65" + 0.032079 * t."X_66" + -0.048764 * t."X_67" + 0.007381 * t."X_68" + 0.001400 * t."X_69" + 0.012819 * t."X_70" + -0.000695 * t."X_71" + -0.047128 * t."X_72" + 0.007330 * t."X_73" + 0.011417 * t."X_74" + -0.031324 * t."X_75" + 0.022002 * t."X_76" + 0.042416 * t."X_77" + -0.001103 * t."X_78" + 0.005342 * t."X_79" + -0.019460 * t."X_80" + 0.042342 * t."X_81" + -0.027435 * t."X_82" + 0.030355 * t."X_83" + 0.029833 * t."X_84" + 0.014243 * t."X_85" + 0.021631 * t."X_86" + 0.030516 * t."X_87" + -0.027314 * t."X_88" + 0.034053 * t."X_89" + -0.009470 * t."X_90" + 0.011877 * t."X_91" + -0.038638 * t."X_92" + 0.029291 * t."X_93" + -0.029065 * t."X_94" + 0.017213 * t."X_95" + 0.002911 * t."X_96" + -0.001499 * t."X_97" + -0.014026 * t."X_98" + 0.009325 * t."X_99" AS "Score_3",
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