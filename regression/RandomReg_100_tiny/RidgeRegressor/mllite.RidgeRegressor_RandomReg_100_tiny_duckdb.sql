WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "RandomReg_100_tiny" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT
  t."index" AS "index",
   25.886122 + -1.290956 * t."X_0" + 1.121498 * t."X_1" + -7.690050 * t."X_2" + -1.649620 * t."X_3" + -6.892511 * t."X_4" + 4.133846 * t."X_5" + -0.679299 * t."X_6" + 14.223087 * t."X_7" + 5.511638 * t."X_8" + -3.709194 * t."X_9" + -0.767171 * t."X_10" + 6.471190 * t."X_11" + 3.013078 * t."X_12" + -10.839190 * t."X_13" + 5.725629 * t."X_14" + 5.914690 * t."X_15" + -3.364897 * t."X_16" + 5.538644 * t."X_17" + -2.305380 * t."X_18" + -1.427389 * t."X_19" + -6.955196 * t."X_20" + 12.759958 * t."X_21" + 10.109994 * t."X_22" + 4.207901 * t."X_23" + -9.798366 * t."X_24" + -1.362888 * t."X_25" + 6.677388 * t."X_26" + 2.717241 * t."X_27" + 6.162190 * t."X_28" + 3.309771 * t."X_29" + 11.040243 * t."X_30" + -1.948051 * t."X_31" + 14.511501 * t."X_32" + -5.783782 * t."X_33" + 8.074210 * t."X_34" + -3.803150 * t."X_35" + 3.101975 * t."X_36" + -3.715777 * t."X_37" + 6.143843 * t."X_38" + -6.995973 * t."X_39" + 7.389888 * t."X_40" + -6.045675 * t."X_41" + -2.133979 * t."X_42" + -5.342076 * t."X_43" + -3.108168 * t."X_44" + -15.819291 * t."X_45" + 16.182127 * t."X_46" + 8.353917 * t."X_47" + 11.688150 * t."X_48" + -12.058825 * t."X_49" + -0.484051 * t."X_50" + -1.561430 * t."X_51" + -6.970072 * t."X_52" + 9.574152 * t."X_53" + 2.438553 * t."X_54" + -5.654925 * t."X_55" + -3.849045 * t."X_56" + 6.304163 * t."X_57" + -2.382997 * t."X_58" + 6.981254 * t."X_59" + -3.493163 * t."X_60" + -0.613352 * t."X_61" + 7.639600 * t."X_62" + -4.811016 * t."X_63" + 9.561032 * t."X_64" + 2.238349 * t."X_65" + 11.614104 * t."X_66" + 5.013224 * t."X_67" + 9.057299 * t."X_68" + -2.770084 * t."X_69" + -0.886854 * t."X_70" + -4.699414 * t."X_71" + 1.647829 * t."X_72" + 8.478578 * t."X_73" + -1.861753 * t."X_74" + -3.721231 * t."X_75" + 6.510406 * t."X_76" + 9.996015 * t."X_77" + -8.131359 * t."X_78" + 6.634007 * t."X_79" + -7.280452 * t."X_80" + -3.332745 * t."X_81" + 1.134869 * t."X_82" + -4.281098 * t."X_83" + -15.024531 * t."X_84" + -2.118644 * t."X_85" + -10.248626 * t."X_86" + -9.236107 * t."X_87" + -1.079210 * t."X_88" + 1.382576 * t."X_89" + 7.371418 * t."X_90" + 3.277084 * t."X_91" + -2.953186 * t."X_92" + -2.303676 * t."X_93" + 3.527118 * t."X_94" + -14.110859 * t."X_95" + 7.031977 * t."X_96" + 2.192146 * t."X_97" + 1.410200 * t."X_98" + 0.689352 * t."X_99" AS "Estimator"
  FROM model_input AS t
 )
SELECT
  model_scores_cte."index" as "index",
  model_scores_cte."Estimator" as "Estimator"
FROM  model_scores_cte
