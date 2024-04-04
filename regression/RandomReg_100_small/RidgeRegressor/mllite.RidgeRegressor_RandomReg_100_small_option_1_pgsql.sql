WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT
  t."index" AS "index",
   6.844550 + -1.696454 * t."X_0" + 7.675501 * t."X_1" + 4.063702 * t."X_2" + -2.831020 * t."X_3" + 3.649108 * t."X_4" + 1.515738 * t."X_5" + 8.337324 * t."X_6" + 13.884379 * t."X_7" + 9.369090 * t."X_8" + 11.406527 * t."X_9" + -0.413223 * t."X_10" + -3.835072 * t."X_11" + 11.007347 * t."X_12" + -1.287767 * t."X_13" + -5.424847 * t."X_14" + -3.130462 * t."X_15" + -6.424951 * t."X_16" + -4.221008 * t."X_17" + -6.540835 * t."X_18" + 5.465440 * t."X_19" + 1.692841 * t."X_20" + 7.125977 * t."X_21" + 28.029711 * t."X_22" + -5.472822 * t."X_23" + 8.096877 * t."X_24" + 2.899445 * t."X_25" + 5.480973 * t."X_26" + 0.120307 * t."X_27" + 3.844494 * t."X_28" + -0.765502 * t."X_29" + 53.025482 * t."X_30" + 3.216239 * t."X_31" + 34.523479 * t."X_32" + 5.663648 * t."X_33" + 0.713358 * t."X_34" + 5.848286 * t."X_35" + 26.505165 * t."X_36" + -5.655411 * t."X_37" + -3.849163 * t."X_38" + 8.900425 * t."X_39" + -0.176804 * t."X_40" + -5.490679 * t."X_41" + 3.705019 * t."X_42" + -1.512164 * t."X_43" + -3.291918 * t."X_44" + -13.855525 * t."X_45" + 80.123589 * t."X_46" + -9.691037 * t."X_47" + -7.095166 * t."X_48" + -5.318444 * t."X_49" + 2.135664 * t."X_50" + 10.076992 * t."X_51" + -5.138073 * t."X_52" + 1.389993 * t."X_53" + -0.207410 * t."X_54" + 1.129049 * t."X_55" + -1.656743 * t."X_56" + -5.489688 * t."X_57" + 1.176839 * t."X_58" + 36.419510 * t."X_59" + 1.478428 * t."X_60" + -11.154720 * t."X_61" + -1.840567 * t."X_62" + -3.594441 * t."X_63" + 3.052955 * t."X_64" + 2.626443 * t."X_65" + 2.260644 * t."X_66" + 8.005472 * t."X_67" + -1.365466 * t."X_68" + 7.303603 * t."X_69" + 0.263838 * t."X_70" + -5.051751 * t."X_71" + 4.697773 * t."X_72" + 0.200989 * t."X_73" + -1.450705 * t."X_74" + -7.811788 * t."X_75" + 2.924400 * t."X_76" + 47.941727 * t."X_77" + -2.578001 * t."X_78" + 6.752794 * t."X_79" + -5.034616 * t."X_80" + -5.859867 * t."X_81" + 2.198822 * t."X_82" + -7.651645 * t."X_83" + -1.744472 * t."X_84" + 4.508529 * t."X_85" + 1.545393 * t."X_86" + -12.108761 * t."X_87" + -4.152510 * t."X_88" + 3.778582 * t."X_89" + 6.428334 * t."X_90" + 3.323482 * t."X_91" + -16.989330 * t."X_92" + -9.670571 * t."X_93" + -9.020278 * t."X_94" + 24.022320 * t."X_95" + 0.516598 * t."X_96" + 1.275758 * t."X_97" + -6.192553 * t."X_98" + 3.055429 * t."X_99" AS "Estimator"
  FROM model_input AS t
 )
SELECT
  model_scores_cte."index" as "index",
  model_scores_cte."Estimator" as "Estimator"
FROM  model_scores_cte
