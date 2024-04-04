WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"SV_data" AS
 ( SELECT 
   "Values"."sv_idx" AS "sv_idx",
   CAST("Values"."sv_0" AS FLOAT) AS "sv_0",
   CAST("Values"."sv_1" AS FLOAT) AS "sv_1",
   CAST("Values"."sv_2" AS FLOAT) AS "sv_2",
   CAST("Values"."sv_3" AS FLOAT) AS "sv_3",
   CAST("Values"."sv_4" AS FLOAT) AS "sv_4",
   CAST("Values"."sv_5" AS FLOAT) AS "sv_5",
   CAST("Values"."sv_6" AS FLOAT) AS "sv_6",
   CAST("Values"."sv_7" AS FLOAT) AS "sv_7",
   CAST("Values"."sv_8" AS FLOAT) AS "sv_8",
   CAST("Values"."sv_9" AS FLOAT) AS "sv_9"
  FROM
  (
     SELECT 0 AS "sv_idx", -1.064559 AS "sv_0", -0.820872 AS "sv_1", -0.723270 AS "sv_2", -0.096420 AS "sv_3", -0.404633 AS "sv_4", -0.815225 AS "sv_5", -0.838692 AS "sv_6", 0.652010 AS "sv_7", -0.319080 AS "sv_8", -0.383915 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", -0.960957 AS "sv_0", -1.294560 AS "sv_1", -0.778172 AS "sv_2", 0.835975 AS "sv_3", -1.018968 AS "sv_4", -0.120865 AS "sv_5", -0.680721 AS "sv_6", -0.518959 AS "sv_7", 0.207019 AS "sv_8", -0.945521 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", -1.954561 AS "sv_0", -1.845000 AS "sv_1", 0.508844 AS "sv_2", -0.224022 AS "sv_3", 0.663209 AS "sv_4", 0.083038 AS "sv_5", 0.446295 AS "sv_6", 0.532215 AS "sv_7", -1.374292 AS "sv_8", 2.746056 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", 0.509511 AS "sv_0", -0.339445 AS "sv_1", -0.100619 AS "sv_2", 0.563929 AS "sv_3", 1.613860 AS "sv_4", -2.277556 AS "sv_5", -0.750928 AS "sv_6", 0.303728 AS "sv_7", 0.213285 AS "sv_8", -1.199707 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", -0.366856 AS "sv_0", -2.698274 AS "sv_1", 0.045788 AS "sv_2", 0.314876 AS "sv_3", 0.963445 AS "sv_4", -1.163608 AS "sv_5", -0.303052 AS "sv_6", -0.850652 AS "sv_7", 0.057282 AS "sv_8", -0.702300 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", -1.388256 AS "sv_0", -0.178366 AS "sv_1", 0.039211 AS "sv_2", 0.978269 AS "sv_3", 0.961760 AS "sv_4", -1.173605 AS "sv_5", -0.311436 AS "sv_6", -0.225993 AS "sv_7", -1.172041 AS "sv_8", -0.253551 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", 1.360494 AS "sv_0", 0.682985 AS "sv_1", -1.812859 AS "sv_2", -0.395256 AS "sv_3", -1.719778 AS "sv_4", -1.129074 AS "sv_5", -1.834214 AS "sv_6", -0.935174 AS "sv_7", 2.206119 AS "sv_8", -1.293514 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 0.983214 AS "sv_0", -0.343181 AS "sv_1", -0.498688 AS "sv_2", 0.163199 AS "sv_3", -0.733125 AS "sv_4", 0.026367 AS "sv_5", -0.405810 AS "sv_6", -0.797164 AS "sv_7", 0.430213 AS "sv_8", 0.588898 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", -1.406136 AS "sv_0", -0.242116 AS "sv_1", 1.301289 AS "sv_2", -0.494365 AS "sv_3", 1.026426 AS "sv_4", 1.080046 AS "sv_5", 1.395626 AS "sv_6", -1.043267 AS "sv_7", -1.426875 AS "sv_8", 1.876952 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", -0.098659 AS "sv_0", -1.731538 AS "sv_1", 2.272470 AS "sv_2", 0.118096 AS "sv_3", 1.083412 AS "sv_4", 2.804890 AS "sv_5", 2.706482 AS "sv_6", 0.845839 AS "sv_7", 1.740497 AS "sv_8", 0.199837 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", -2.816561 AS "sv_0", -1.091985 AS "sv_1", -0.089846 AS "sv_2", -1.001222 AS "sv_3", 0.245099 AS "sv_4", -0.483993 AS "sv_5", -0.216350 AS "sv_6", -0.176273 AS "sv_7", 0.481645 AS "sv_8", -0.115846 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", -2.525896 AS "sv_0", -0.477894 AS "sv_1", -0.273729 AS "sv_2", 1.188786 AS "sv_3", -1.104002 AS "sv_4", 0.923579 AS "sv_5", 0.043686 AS "sv_6", 1.096727 AS "sv_7", -0.136594 AS "sv_8", 0.296252 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", -2.810322 AS "sv_0", 0.803423 AS "sv_1", 0.052149 AS "sv_2", -2.649015 AS "sv_3", -1.775187 AS "sv_4", 2.396832 AS "sv_5", 0.745691 AS "sv_6", -0.584702 AS "sv_7", 1.221721 AS "sv_8", 1.307240 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", 0.444082 AS "sv_0", -0.224036 AS "sv_1", -0.126428 AS "sv_2", 0.204438 AS "sv_3", -0.991489 AS "sv_4", 1.050597 AS "sv_5", 0.203061 AS "sv_6", -0.491621 AS "sv_7", 1.706341 AS "sv_8", -0.190966 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", -0.143033 AS "sv_0", -0.745429 AS "sv_1", 1.941176 AS "sv_2", 0.378268 AS "sv_3", 1.105095 AS "sv_4", 2.163219 AS "sv_5", 2.243701 AS "sv_6", 1.262047 AS "sv_7", 0.532632 AS "sv_8", -2.605754 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", -0.890672 AS "sv_0", 0.398898 AS "sv_1", -0.046821 AS "sv_2", -0.951328 AS "sv_3", -0.764308 AS "sv_4", 0.903657 AS "sv_5", 0.226011 AS "sv_6", -2.143014 AS "sv_7", 0.973574 AS "sv_8", -0.299585 AS "sv_9"
   ) AS "Values"
 ),
"Kernel_RBF" AS
 ( SELECT
    kvt."index" as "index",
    kvt."sv_idx" as "sv_idx",
    kvt."kernel_value" AS "kernel_value"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      full_join_data_sv."sv_idx" AS "sv_idx",
      sum(CAST(full_join_data_sv."kernel_value" AS FLOAT)) AS "kernel_value"
     FROM
       (SELECT
          model_input."index" as "index",
          "SV_data"."sv_idx" AS "sv_idx",
           EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.075211 * (power(model_input."X_0" - "SV_data"."sv_0", 2) + power(model_input."X_1" - "SV_data"."sv_1", 2) + power(model_input."X_2" - "SV_data"."sv_2", 2) + power(model_input."X_3" - "SV_data"."sv_3", 2) + power(model_input."X_4" - "SV_data"."sv_4", 2) + power(model_input."X_5" - "SV_data"."sv_5", 2) + power(model_input."X_6" - "SV_data"."sv_6", 2) + power(model_input."X_7" - "SV_data"."sv_7", 2) + power(model_input."X_8" - "SV_data"."sv_8", 2) + power(model_input."X_9" - "SV_data"."sv_9", 2)) ), CAST(32.0 AS FLOAT) ) )  AS "kernel_value" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index", full_join_data_sv."sv_idx"
    ) AS kvt
 ),
"ClassProblems" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."c_1" AS "c_1", t."c_2" AS "c_2", t."sv_idx" AS "sv_idx", t."Coeff" AS "Coeff"
   FROM
   (
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 0 AS "sv_idx", 0.587144 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 1 AS "sv_idx", 1.907822 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 2 AS "sv_idx", 2.362943 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 3 AS "sv_idx", 0.046666 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", 0.186932 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 5 AS "sv_idx", 0.895137 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 6 AS "sv_idx", 0.871856 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 7 AS "sv_idx", 2.217087 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 8 AS "sv_idx", 0.587144 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 9 AS "sv_idx", 1.907822 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 10 AS "sv_idx", 2.362943 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 11 AS "sv_idx", 0.046666 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 12 AS "sv_idx", 0.186932 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 13 AS "sv_idx", 0.895137 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 14 AS "sv_idx", 0.871856 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 15 AS "sv_idx", 2.217087 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", 0.147854 AS "rho", -2.180541 AS "probA", -0.084702 AS "probB"
   ) AS t
  ),
"Competition" AS
( SELECT 
   t1."index" AS "index",
   t2."prob_idx" AS "prob_idx",
   t2."c_1" AS "c_1",
   t2."c_2" AS "c_2",
   ANY_VALUE(-t3."rho") + SUM( t2."Coeff" * t1."kernel_value" ) AS "prob_score"
  FROM 
    "Kernel_RBF" AS t1
    LEFT OUTER JOIN
    "ClassProblems" AS t2
    ON (t1."sv_idx" = t2."sv_idx")
    LEFT OUTER JOIN
    "SV_Rho" AS t3
    ON (t3."prob_idx" = t2."prob_idx")
    GROUP BY t1."index", t2."prob_idx", t2."c_1", t2."c_2"
),
"model_scores_cte" AS
( SELECT 
   t1."index" AS "index",
   SUM( CASE WHEN (t1."c_1" == 0 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 0 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   SUM( CASE WHEN (t1."c_1" == 1 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 1 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM 
    "Competition" AS t1
    GROUP BY t1."index"
),
orig_cte AS 
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
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    GREATEST( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1" ) AS "Max_Score"
  FROM
     "orig_cte" AS t
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