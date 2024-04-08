WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "RandomReg_100_small" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT
  t."index" AS "index",
   6.732546 + -1.058264 * t."X_0" + 7.213565 * t."X_1" + 4.301233 * t."X_2" + -3.009670 * t."X_3" + 3.107544 * t."X_4" + 1.180554 * t."X_5" + 7.774689 * t."X_6" + 13.217530 * t."X_7" + 8.413144 * t."X_8" + 11.191370 * t."X_9" + -0.492168 * t."X_10" + -3.129848 * t."X_11" + 11.482075 * t."X_12" + -2.053198 * t."X_13" + -5.975146 * t."X_14" + -3.429583 * t."X_15" + -5.733244 * t."X_16" + -4.196647 * t."X_17" + -6.408811 * t."X_18" + 5.958995 * t."X_19" + 1.257996 * t."X_20" + 6.956126 * t."X_21" + 27.484621 * t."X_22" + -5.920670 * t."X_23" + 7.144031 * t."X_24" + 2.454769 * t."X_25" + 5.380842 * t."X_26" + 1.373695 * t."X_27" + 3.197831 * t."X_28" + -0.584887 * t."X_29" + 51.370392 * t."X_30" + 2.498971 * t."X_31" + 33.475910 * t."X_32" + 5.471330 * t."X_33" + 0.793716 * t."X_34" + 6.066625 * t."X_35" + 25.814638 * t."X_36" + -6.651203 * t."X_37" + -3.118462 * t."X_38" + 7.943208 * t."X_39" + 0.296103 * t."X_40" + -4.327781 * t."X_41" + 2.642864 * t."X_42" + -1.815314 * t."X_43" + -3.521353 * t."X_44" + -13.294096 * t."X_45" + 78.356598 * t."X_46" + -9.553466 * t."X_47" + -7.637954 * t."X_48" + -5.570590 * t."X_49" + 2.494926 * t."X_50" + 9.899894 * t."X_51" + -4.265877 * t."X_52" + 2.158123 * t."X_53" + 0.593025 * t."X_54" + 1.548204 * t."X_55" + -1.002593 * t."X_56" + -4.891800 * t."X_57" + 0.924276 * t."X_58" + 35.838490 * t."X_59" + 1.642191 * t."X_60" + -10.987471 * t."X_61" + 0.145199 * t."X_62" + -4.122190 * t."X_63" + 3.699351 * t."X_64" + 2.595821 * t."X_65" + 1.613270 * t."X_66" + 7.051991 * t."X_67" + -2.244160 * t."X_68" + 6.434021 * t."X_69" + -0.515930 * t."X_70" + -4.426714 * t."X_71" + 4.520009 * t."X_72" + -0.078909 * t."X_73" + -1.541876 * t."X_74" + -5.510833 * t."X_75" + 3.420322 * t."X_76" + 47.941502 * t."X_77" + -2.956300 * t."X_78" + 6.870394 * t."X_79" + -6.098099 * t."X_80" + -5.516694 * t."X_81" + 1.406806 * t."X_82" + -6.554471 * t."X_83" + -0.693505 * t."X_84" + 4.584319 * t."X_85" + 1.413793 * t."X_86" + -10.813640 * t."X_87" + -4.548662 * t."X_88" + 3.768528 * t."X_89" + 7.325714 * t."X_90" + 4.049388 * t."X_91" + -16.445089 * t."X_92" + -9.017658 * t."X_93" + -8.701597 * t."X_94" + 24.580835 * t."X_95" + 0.540799 * t."X_96" + 1.961873 * t."X_97" + -5.462266 * t."X_98" + 3.044750 * t."X_99" AS "Estimator"
  FROM model_input AS t
 )
SELECT
  model_scores_cte."index" as "index",
  model_scores_cte."Estimator" as "Estimator"
FROM  model_scores_cte
