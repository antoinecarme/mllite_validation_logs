WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT t."index" AS "index",
   -0.841159 + -0.000445 * t."X_0" + -0.001766 * t."X_1" + 0.000488 * t."X_2" + 0.009145 * t."X_3" + 0.006860 * t."X_4" + -0.005648 * t."X_5" + -0.000587 * t."X_6" + 0.007845 * t."X_7" + 0.006956 * t."X_8" + 0.002349 * t."X_9" + -0.003622 * t."X_10" + -0.023602 * t."X_11" + -0.001897 * t."X_12" + 0.004587 * t."X_13" + -0.002411 * t."X_14" + 0.002662 * t."X_15" + -0.002455 * t."X_16" + 0.000059 * t."X_17" + 0.009633 * t."X_18" + 0.002271 * t."X_19" + -0.006190 * t."X_20" + 0.009368 * t."X_21" + -0.006046 * t."X_22" + 0.006614 * t."X_23" + 0.004407 * t."X_24" + 0.005367 * t."X_25" + -0.009373 * t."X_26" + 0.006225 * t."X_27" + -0.001681 * t."X_28" + -0.012579 * t."X_29" + -0.004688 * t."X_30" + 0.088637 * t."X_31" + -0.020345 * t."X_32" + -0.002868 * t."X_33" + 0.004974 * t."X_34" + 0.006597 * t."X_35" + -0.009370 * t."X_36" + 0.007650 * t."X_37" + -0.011171 * t."X_38" + -0.015180 * t."X_39" + 0.009858 * t."X_40" + -0.001960 * t."X_41" + -0.002982 * t."X_42" + 0.006142 * t."X_43" + -0.008829 * t."X_44" + -0.007303 * t."X_45" + 0.035634 * t."X_46" + -0.009079 * t."X_47" + -0.006881 * t."X_48" + -0.073578 * t."X_49" + 0.007696 * t."X_50" + 0.002291 * t."X_51" + 0.008839 * t."X_52" + 0.060447 * t."X_53" + 0.003582 * t."X_54" + 0.002206 * t."X_55" + -0.010524 * t."X_56" + -0.009708 * t."X_57" + -0.002099 * t."X_58" + 0.002522 * t."X_59" + -0.053215 * t."X_60" + -0.008134 * t."X_61" + 0.085441 * t."X_62" + 0.006218 * t."X_63" + 0.001106 * t."X_64" + -0.011912 * t."X_65" + -0.003699 * t."X_66" + 0.002904 * t."X_67" + -0.002663 * t."X_68" + 0.003565 * t."X_69" + 0.015021 * t."X_70" + -0.008951 * t."X_71" + -0.002259 * t."X_72" + -0.000901 * t."X_73" + -0.002436 * t."X_74" + 0.006901 * t."X_75" + -0.005564 * t."X_76" + 0.000088 * t."X_77" + 0.010548 * t."X_78" + 0.019513 * t."X_79" + -0.010274 * t."X_80" + -0.012230 * t."X_81" + 0.011510 * t."X_82" + -0.020880 * t."X_83" + 0.003275 * t."X_84" + -0.007831 * t."X_85" + -0.015132 * t."X_86" + -0.017307 * t."X_87" + -0.003048 * t."X_88" + -0.011962 * t."X_89" + 0.012304 * t."X_90" + 0.014652 * t."X_91" + 0.007714 * t."X_92" + -0.003721 * t."X_93" + 0.007996 * t."X_94" + -0.001476 * t."X_95" + 0.003169 * t."X_96" + 0.003820 * t."X_97" + 0.000956 * t."X_98" + 0.004141 * t."X_99" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   -0.931336 + 0.003349 * t."X_0" + -0.006813 * t."X_1" + 0.007912 * t."X_2" + -0.001905 * t."X_3" + -0.000344 * t."X_4" + 0.008640 * t."X_5" + -0.005386 * t."X_6" + -0.002960 * t."X_7" + 0.003743 * t."X_8" + 0.015417 * t."X_9" + -0.001535 * t."X_10" + 0.016680 * t."X_11" + -0.006513 * t."X_12" + -0.015732 * t."X_13" + 0.006983 * t."X_14" + 0.004490 * t."X_15" + 0.004293 * t."X_16" + 0.005274 * t."X_17" + 0.000406 * t."X_18" + -0.004784 * t."X_19" + -0.006516 * t."X_20" + 0.006442 * t."X_21" + 0.010793 * t."X_22" + -0.009631 * t."X_23" + -0.008133 * t."X_24" + -0.010270 * t."X_25" + 0.012436 * t."X_26" + -0.029406 * t."X_27" + 0.002434 * t."X_28" + -0.000994 * t."X_29" + 0.003509 * t."X_30" + 0.030264 * t."X_31" + 0.003995 * t."X_32" + -0.003142 * t."X_33" + 0.005199 * t."X_34" + -0.003578 * t."X_35" + 0.000164 * t."X_36" + -0.007159 * t."X_37" + 0.001278 * t."X_38" + -0.004492 * t."X_39" + 0.013601 * t."X_40" + -0.000930 * t."X_41" + -0.003536 * t."X_42" + 0.001101 * t."X_43" + 0.013407 * t."X_44" + -0.004360 * t."X_45" + -0.023355 * t."X_46" + -0.003313 * t."X_47" + 0.000058 * t."X_48" + 0.013451 * t."X_49" + 0.001799 * t."X_50" + 0.003450 * t."X_51" + 0.002389 * t."X_52" + 0.008836 * t."X_53" + -0.008037 * t."X_54" + 0.004416 * t."X_55" + 0.024589 * t."X_56" + 0.011034 * t."X_57" + 0.004442 * t."X_58" + -0.007019 * t."X_59" + 0.029041 * t."X_60" + 0.001333 * t."X_61" + 0.067138 * t."X_62" + -0.007279 * t."X_63" + -0.012385 * t."X_64" + -0.012467 * t."X_65" + 0.006897 * t."X_66" + 0.015859 * t."X_67" + 0.000581 * t."X_68" + -0.014601 * t."X_69" + -0.013208 * t."X_70" + -0.001244 * t."X_71" + 0.009527 * t."X_72" + 0.002950 * t."X_73" + -0.000185 * t."X_74" + -0.005419 * t."X_75" + 0.017690 * t."X_76" + 0.006063 * t."X_77" + -0.008291 * t."X_78" + -0.068402 * t."X_79" + 0.004588 * t."X_80" + -0.014126 * t."X_81" + 0.001880 * t."X_82" + 0.020034 * t."X_83" + 0.007806 * t."X_84" + -0.001222 * t."X_85" + 0.000979 * t."X_86" + 0.002780 * t."X_87" + 0.003513 * t."X_88" + -0.005507 * t."X_89" + 0.000111 * t."X_90" + -0.014607 * t."X_91" + 0.007088 * t."X_92" + 0.003639 * t."X_93" + -0.003033 * t."X_94" + 0.007329 * t."X_95" + -0.009837 * t."X_96" + -0.003228 * t."X_97" + 0.007509 * t."X_98" + -0.010047 * t."X_99" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   -0.204436 + -0.007365 * t."X_0" + -0.004068 * t."X_1" + -0.010652 * t."X_2" + -0.010048 * t."X_3" + 0.008023 * t."X_4" + -0.003607 * t."X_5" + 0.014826 * t."X_6" + -0.006585 * t."X_7" + -0.017882 * t."X_8" + -0.015795 * t."X_9" + 0.002699 * t."X_10" + -0.016258 * t."X_11" + 0.013547 * t."X_12" + 0.005496 * t."X_13" + 0.005374 * t."X_14" + 0.007553 * t."X_15" + 0.004239 * t."X_16" + -0.014913 * t."X_17" + -0.006830 * t."X_18" + 0.002412 * t."X_19" + -0.003567 * t."X_20" + -0.017208 * t."X_21" + -0.010033 * t."X_22" + 0.006005 * t."X_23" + 0.000867 * t."X_24" + 0.008459 * t."X_25" + -0.006335 * t."X_26" + 0.029519 * t."X_27" + -0.007396 * t."X_28" + -0.002125 * t."X_29" + 0.001466 * t."X_30" + -0.016155 * t."X_31" + 0.005492 * t."X_32" + 0.003713 * t."X_33" + -0.004475 * t."X_34" + -0.004566 * t."X_35" + 0.001580 * t."X_36" + 0.005514 * t."X_37" + -0.004921 * t."X_38" + 0.004833 * t."X_39" + -0.013725 * t."X_40" + 0.002829 * t."X_41" + 0.007350 * t."X_42" + -0.003459 * t."X_43" + -0.002339 * t."X_44" + 0.005272 * t."X_45" + -0.038306 * t."X_46" + -0.008150 * t."X_47" + -0.004880 * t."X_48" + 0.065431 * t."X_49" + 0.003879 * t."X_50" + -0.010046 * t."X_51" + -0.005824 * t."X_52" + -0.036448 * t."X_53" + 0.005562 * t."X_54" + -0.016924 * t."X_55" + -0.008094 * t."X_56" + 0.005283 * t."X_57" + 0.006681 * t."X_58" + -0.002400 * t."X_59" + 0.092928 * t."X_60" + 0.002287 * t."X_61" + -0.040779 * t."X_62" + -0.001586 * t."X_63" + 0.021731 * t."X_64" + 0.017666 * t."X_65" + -0.036643 * t."X_66" + -0.006109 * t."X_67" + 0.000328 * t."X_68" + 0.012172 * t."X_69" + -0.008271 * t."X_70" + 0.007439 * t."X_71" + 0.004510 * t."X_72" + -0.005509 * t."X_73" + 0.001482 * t."X_74" + 0.012579 * t."X_75" + -0.015709 * t."X_76" + -0.017506 * t."X_77" + -0.001093 * t."X_78" + 0.018735 * t."X_79" + 0.013820 * t."X_80" + 0.008845 * t."X_81" + -0.005210 * t."X_82" + -0.007910 * t."X_83" + -0.017037 * t."X_84" + 0.001989 * t."X_85" + 0.008213 * t."X_86" + 0.002088 * t."X_87" + 0.005463 * t."X_88" + 0.006271 * t."X_89" + -0.005669 * t."X_90" + -0.006512 * t."X_91" + 0.000250 * t."X_92" + -0.012419 * t."X_93" + 0.004155 * t."X_94" + -0.010670 * t."X_95" + 0.005986 * t."X_96" + 0.003264 * t."X_97" + -0.009082 * t."X_98" + -0.002249 * t."X_99" AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   -0.023136 + 0.004461 * t."X_0" + 0.012647 * t."X_1" + 0.002253 * t."X_2" + 0.002807 * t."X_3" + -0.014538 * t."X_4" + 0.000615 * t."X_5" + -0.008853 * t."X_6" + 0.001699 * t."X_7" + 0.007183 * t."X_8" + -0.001971 * t."X_9" + 0.002458 * t."X_10" + 0.023183 * t."X_11" + -0.005137 * t."X_12" + 0.005649 * t."X_13" + -0.009946 * t."X_14" + -0.014705 * t."X_15" + -0.006077 * t."X_16" + 0.009579 * t."X_17" + -0.003209 * t."X_18" + 0.000101 * t."X_19" + 0.016273 * t."X_20" + 0.001398 * t."X_21" + 0.005286 * t."X_22" + -0.002987 * t."X_23" + 0.002860 * t."X_24" + -0.003556 * t."X_25" + 0.003271 * t."X_26" + -0.006334 * t."X_27" + 0.006643 * t."X_28" + 0.015699 * t."X_29" + -0.000287 * t."X_30" + -0.102748 * t."X_31" + 0.010859 * t."X_32" + 0.002297 * t."X_33" + -0.005698 * t."X_34" + 0.001545 * t."X_35" + 0.007627 * t."X_36" + -0.006004 * t."X_37" + 0.014814 * t."X_38" + 0.014839 * t."X_39" + -0.009734 * t."X_40" + 0.000062 * t."X_41" + -0.000833 * t."X_42" + -0.003784 * t."X_43" + -0.002239 * t."X_44" + 0.006391 * t."X_45" + 0.026026 * t."X_46" + 0.020541 * t."X_47" + 0.011703 * t."X_48" + -0.005301 * t."X_49" + -0.013374 * t."X_50" + 0.004304 * t."X_51" + -0.005404 * t."X_52" + -0.032834 * t."X_53" + -0.001107 * t."X_54" + 0.010302 * t."X_55" + -0.005971 * t."X_56" + -0.006609 * t."X_57" + -0.009025 * t."X_58" + 0.006897 * t."X_59" + -0.068753 * t."X_60" + 0.004514 * t."X_61" + -0.111799 * t."X_62" + 0.002647 * t."X_63" + -0.010452 * t."X_64" + 0.006715 * t."X_65" + 0.033451 * t."X_66" + -0.012654 * t."X_67" + 0.001753 * t."X_68" + -0.001136 * t."X_69" + 0.006458 * t."X_70" + 0.002756 * t."X_71" + -0.011779 * t."X_72" + 0.003460 * t."X_73" + 0.001138 * t."X_74" + -0.014061 * t."X_75" + 0.003584 * t."X_76" + 0.011355 * t."X_77" + -0.001165 * t."X_78" + 0.030155 * t."X_79" + -0.008134 * t."X_80" + 0.017510 * t."X_81" + -0.008180 * t."X_82" + 0.008757 * t."X_83" + 0.005956 * t."X_84" + 0.007065 * t."X_85" + 0.005940 * t."X_86" + 0.012439 * t."X_87" + -0.005927 * t."X_88" + 0.011198 * t."X_89" + -0.006745 * t."X_90" + 0.006467 * t."X_91" + -0.015052 * t."X_92" + 0.012501 * t."X_93" + -0.009117 * t."X_94" + 0.004816 * t."X_95" + 0.000683 * t."X_96" + -0.003857 * t."X_97" + 0.000618 * t."X_98" + 0.008156 * t."X_99" AS "Score_3",
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