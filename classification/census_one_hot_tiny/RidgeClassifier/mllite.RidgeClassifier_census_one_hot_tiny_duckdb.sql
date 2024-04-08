WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52"
  FROM "census_one_hot_tiny" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT t."index" AS "index",
   -0.5 * ( 246068.765625 + -72265.578125 * t."X_0" + -62640.890625 * t."X_1" + -137249.593750 * t."X_2" + -62358.367188 * t."X_3" + -23773.470703 * t."X_4" + 314442.406250 * t."X_5" + 0.000000 * t."X_6" + 0.000000 * t."X_7" + -0.756432 * t."X_8" + 0.000000 * t."X_9" + 0.000000 * t."X_10" + 53740.011719 * t."X_11" + -40249.480469 * t."X_12" + 43834.007812 * t."X_13" + 82489.203125 * t."X_14" + -180547.140625 * t."X_15" + -1852.621582 * t."X_16" + -35552.957031 * t."X_17" + 17806.076172 * t."X_18" + 0.000000 * t."X_19" + 5512.002441 * t."X_20" + 0.000000 * t."X_21" + 0.000000 * t."X_22" + 0.000000 * t."X_23" + 0.000000 * t."X_24" + -273371.000000 * t."X_25" + 33967.175781 * t."X_26" + 94588.820312 * t."X_27" + -56327.156250 * t."X_28" + 0.000000 * t."X_29" + 37018.082031 * t."X_30" + 37014.738281 * t."X_31" + -33321.269531 * t."X_32" + 0.000000 * t."X_33" + 12632.810547 * t."X_34" + 8312.232422 * t."X_35" + -83173.085938 * t."X_36" + -33751.300781 * t."X_37" + -63643.097656 * t."X_38" + 0.000000 * t."X_39" + 0.000000 * t."X_40" + 52178.804688 * t."X_41" + -34850.429688 * t."X_42" + -10367.119141 * t."X_43" + -23707.056641 * t."X_44" + -7519.101562 * t."X_45" + 0.000000 * t."X_46" + 0.000000 * t."X_47" + 0.000000 * t."X_48" + 0.000000 * t."X_49" + 67505.132812 * t."X_50" + 0.000000 * t."X_51" + -67500.570312 * t."X_52" ) AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.5 * ( 246068.765625 + -72265.578125 * t."X_0" + -62640.890625 * t."X_1" + -137249.593750 * t."X_2" + -62358.367188 * t."X_3" + -23773.470703 * t."X_4" + 314442.406250 * t."X_5" + 0.000000 * t."X_6" + 0.000000 * t."X_7" + -0.756432 * t."X_8" + 0.000000 * t."X_9" + 0.000000 * t."X_10" + 53740.011719 * t."X_11" + -40249.480469 * t."X_12" + 43834.007812 * t."X_13" + 82489.203125 * t."X_14" + -180547.140625 * t."X_15" + -1852.621582 * t."X_16" + -35552.957031 * t."X_17" + 17806.076172 * t."X_18" + 0.000000 * t."X_19" + 5512.002441 * t."X_20" + 0.000000 * t."X_21" + 0.000000 * t."X_22" + 0.000000 * t."X_23" + 0.000000 * t."X_24" + -273371.000000 * t."X_25" + 33967.175781 * t."X_26" + 94588.820312 * t."X_27" + -56327.156250 * t."X_28" + 0.000000 * t."X_29" + 37018.082031 * t."X_30" + 37014.738281 * t."X_31" + -33321.269531 * t."X_32" + 0.000000 * t."X_33" + 12632.810547 * t."X_34" + 8312.232422 * t."X_35" + -83173.085938 * t."X_36" + -33751.300781 * t."X_37" + -63643.097656 * t."X_38" + 0.000000 * t."X_39" + 0.000000 * t."X_40" + 52178.804688 * t."X_41" + -34850.429688 * t."X_42" + -10367.119141 * t."X_43" + -23707.056641 * t."X_44" + -7519.101562 * t."X_45" + 0.000000 * t."X_46" + 0.000000 * t."X_47" + 0.000000 * t."X_48" + 0.000000 * t."X_49" + 67505.132812 * t."X_50" + 0.000000 * t."X_51" + -67500.570312 * t."X_52" ) AS "Score_1",
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
   GREATEST( t."Score_0", t."Score_1" ) AS "Greatest_Score"
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
    GREATEST( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1" ) AS "Max_Score"
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