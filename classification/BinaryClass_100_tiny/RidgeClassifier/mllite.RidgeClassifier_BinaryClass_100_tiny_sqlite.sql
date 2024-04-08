WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "BinaryClass_100_tiny" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT t."index" AS "index",
   -0.5 * ( 0.188443 + -0.005586 * t."X_0" + 0.087009 * t."X_1" + 0.073667 * t."X_2" + -0.051584 * t."X_3" + 0.086265 * t."X_4" + -0.020285 * t."X_5" + -0.018387 * t."X_6" + -0.019364 * t."X_7" + -0.077458 * t."X_8" + 0.020582 * t."X_9" + 0.007118 * t."X_10" + 0.015207 * t."X_11" + 0.003141 * t."X_12" + 0.008533 * t."X_13" + -0.016218 * t."X_14" + 0.083436 * t."X_15" + 0.047621 * t."X_16" + -0.015293 * t."X_17" + 0.018017 * t."X_18" + -0.008640 * t."X_19" + -0.011091 * t."X_20" + 0.026478 * t."X_21" + 0.019187 * t."X_22" + -0.046303 * t."X_23" + 0.019592 * t."X_24" + -0.022293 * t."X_25" + 0.031064 * t."X_26" + -0.004324 * t."X_27" + 0.008639 * t."X_28" + 0.082091 * t."X_29" + 0.054931 * t."X_30" + -0.026976 * t."X_31" + -0.017006 * t."X_32" + -0.004224 * t."X_33" + -0.065574 * t."X_34" + 0.043673 * t."X_35" + 0.032017 * t."X_36" + -0.034840 * t."X_37" + -0.019277 * t."X_38" + 0.033895 * t."X_39" + -0.026660 * t."X_40" + -0.010982 * t."X_41" + -0.017611 * t."X_42" + 0.015831 * t."X_43" + -0.038547 * t."X_44" + -0.006258 * t."X_45" + -0.028018 * t."X_46" + -0.042507 * t."X_47" + 0.039721 * t."X_48" + 0.056977 * t."X_49" + -0.033450 * t."X_50" + -0.029277 * t."X_51" + -0.027682 * t."X_52" + 0.045776 * t."X_53" + -0.047395 * t."X_54" + -0.066668 * t."X_55" + -0.017177 * t."X_56" + -0.017177 * t."X_57" + -0.002169 * t."X_58" + 0.014227 * t."X_59" + 0.007423 * t."X_60" + 0.065532 * t."X_61" + -0.030732 * t."X_62" + -0.014750 * t."X_63" + 0.016291 * t."X_64" + -0.001131 * t."X_65" + 0.019548 * t."X_66" + -0.004120 * t."X_67" + 0.014727 * t."X_68" + -0.040047 * t."X_69" + -0.002326 * t."X_70" + -0.028467 * t."X_71" + 0.016147 * t."X_72" + -0.048645 * t."X_73" + 0.030550 * t."X_74" + 0.041056 * t."X_75" + 0.041397 * t."X_76" + -0.017052 * t."X_77" + -0.004362 * t."X_78" + -0.005080 * t."X_79" + 0.011562 * t."X_80" + -0.065743 * t."X_81" + 0.055173 * t."X_82" + 0.016986 * t."X_83" + 0.071654 * t."X_84" + 0.046735 * t."X_85" + 0.037049 * t."X_86" + 0.073287 * t."X_87" + -0.029249 * t."X_88" + -0.028685 * t."X_89" + 0.004303 * t."X_90" + -0.041263 * t."X_91" + -0.024425 * t."X_92" + 0.045525 * t."X_93" + 0.039003 * t."X_94" + 0.058271 * t."X_95" + -0.013201 * t."X_96" + -0.018723 * t."X_97" + -0.035849 * t."X_98" + 0.054915 * t."X_99" ) AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.5 * ( 0.188443 + -0.005586 * t."X_0" + 0.087009 * t."X_1" + 0.073667 * t."X_2" + -0.051584 * t."X_3" + 0.086265 * t."X_4" + -0.020285 * t."X_5" + -0.018387 * t."X_6" + -0.019364 * t."X_7" + -0.077458 * t."X_8" + 0.020582 * t."X_9" + 0.007118 * t."X_10" + 0.015207 * t."X_11" + 0.003141 * t."X_12" + 0.008533 * t."X_13" + -0.016218 * t."X_14" + 0.083436 * t."X_15" + 0.047621 * t."X_16" + -0.015293 * t."X_17" + 0.018017 * t."X_18" + -0.008640 * t."X_19" + -0.011091 * t."X_20" + 0.026478 * t."X_21" + 0.019187 * t."X_22" + -0.046303 * t."X_23" + 0.019592 * t."X_24" + -0.022293 * t."X_25" + 0.031064 * t."X_26" + -0.004324 * t."X_27" + 0.008639 * t."X_28" + 0.082091 * t."X_29" + 0.054931 * t."X_30" + -0.026976 * t."X_31" + -0.017006 * t."X_32" + -0.004224 * t."X_33" + -0.065574 * t."X_34" + 0.043673 * t."X_35" + 0.032017 * t."X_36" + -0.034840 * t."X_37" + -0.019277 * t."X_38" + 0.033895 * t."X_39" + -0.026660 * t."X_40" + -0.010982 * t."X_41" + -0.017611 * t."X_42" + 0.015831 * t."X_43" + -0.038547 * t."X_44" + -0.006258 * t."X_45" + -0.028018 * t."X_46" + -0.042507 * t."X_47" + 0.039721 * t."X_48" + 0.056977 * t."X_49" + -0.033450 * t."X_50" + -0.029277 * t."X_51" + -0.027682 * t."X_52" + 0.045776 * t."X_53" + -0.047395 * t."X_54" + -0.066668 * t."X_55" + -0.017177 * t."X_56" + -0.017177 * t."X_57" + -0.002169 * t."X_58" + 0.014227 * t."X_59" + 0.007423 * t."X_60" + 0.065532 * t."X_61" + -0.030732 * t."X_62" + -0.014750 * t."X_63" + 0.016291 * t."X_64" + -0.001131 * t."X_65" + 0.019548 * t."X_66" + -0.004120 * t."X_67" + 0.014727 * t."X_68" + -0.040047 * t."X_69" + -0.002326 * t."X_70" + -0.028467 * t."X_71" + 0.016147 * t."X_72" + -0.048645 * t."X_73" + 0.030550 * t."X_74" + 0.041056 * t."X_75" + 0.041397 * t."X_76" + -0.017052 * t."X_77" + -0.004362 * t."X_78" + -0.005080 * t."X_79" + 0.011562 * t."X_80" + -0.065743 * t."X_81" + 0.055173 * t."X_82" + 0.016986 * t."X_83" + 0.071654 * t."X_84" + 0.046735 * t."X_85" + 0.037049 * t."X_86" + 0.073287 * t."X_87" + -0.029249 * t."X_88" + -0.028685 * t."X_89" + 0.004303 * t."X_90" + -0.041263 * t."X_91" + -0.024425 * t."X_92" + 0.045525 * t."X_93" + 0.039003 * t."X_94" + 0.058271 * t."X_95" + -0.013201 * t."X_96" + -0.018723 * t."X_97" + -0.035849 * t."X_98" + 0.054915 * t."X_99" ) AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
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
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX( t."Score_0", t."Score_1" ) AS "Greatest_Score"
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
    ( t1."Exp_Score_0" + t1."Exp_Score_1" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    MAX( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1" ) AS "Max_Score"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
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
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1" ) AS argmax_class_idx
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
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte