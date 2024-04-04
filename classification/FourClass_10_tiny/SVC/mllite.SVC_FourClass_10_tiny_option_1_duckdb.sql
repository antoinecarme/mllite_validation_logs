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
     SELECT 0 AS "sv_idx", 0.928858 AS "sv_0", -1.177375 AS "sv_1", 0.542731 AS "sv_2", 1.248167 AS "sv_3", -0.732359 AS "sv_4", 0.692213 AS "sv_5", 0.362028 AS "sv_6", -0.053731 AS "sv_7", 0.485529 AS "sv_8", 1.106564 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", -1.750210 AS "sv_0", 1.576099 AS "sv_1", 0.286503 AS "sv_2", -1.740885 AS "sv_3", -0.949967 AS "sv_4", -0.384233 AS "sv_5", 0.038996 AS "sv_6", -1.160993 AS "sv_7", -2.267550 AS "sv_8", 1.213184 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", -0.649409 AS "sv_0", 1.030112 AS "sv_1", 0.590313 AS "sv_2", -1.432318 AS "sv_3", 0.032630 AS "sv_4", -0.008973 AS "sv_5", -0.488904 AS "sv_6", -0.064296 AS "sv_7", -0.635514 AS "sv_8", 0.255228 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -0.124049 AS "sv_0", 0.768644 AS "sv_1", -1.040184 AS "sv_2", -1.041910 AS "sv_3", -0.515943 AS "sv_4", 1.480217 AS "sv_5", -1.720070 AS "sv_6", 0.342352 AS "sv_7", 1.247335 AS "sv_8", -1.413962 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", -0.049861 AS "sv_0", 1.019062 AS "sv_1", -0.239901 AS "sv_2", -1.762634 AS "sv_3", 0.672174 AS "sv_4", 0.659128 AS "sv_5", -1.484999 AS "sv_6", 0.600685 AS "sv_7", 0.642133 AS "sv_8", 0.460004 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", -1.368644 AS "sv_0", 0.716127 AS "sv_1", 0.307297 AS "sv_2", 0.899080 AS "sv_3", -0.303330 AS "sv_4", 1.272378 AS "sv_5", -0.112382 AS "sv_6", 0.215110 AS "sv_7", 1.172710 AS "sv_8", 1.728197 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.728087 AS "sv_0", 2.393295 AS "sv_1", 0.055107 AS "sv_2", -1.740847 AS "sv_3", -1.848529 AS "sv_4", -0.978944 AS "sv_5", 0.438442 AS "sv_6", 2.200070 AS "sv_7", 0.248741 AS "sv_8", 1.048002 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", -1.050659 AS "sv_0", 0.920640 AS "sv_1", -0.455125 AS "sv_2", -0.050130 AS "sv_3", -0.191627 AS "sv_4", 0.584329 AS "sv_5", 0.943031 AS "sv_6", 1.021308 AS "sv_7", -0.010797 AS "sv_8", -1.586949 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", 0.914030 AS "sv_0", -0.385815 AS "sv_1", 2.120265 AS "sv_2", -1.074814 AS "sv_3", 0.670472 AS "sv_4", -0.572071 AS "sv_5", -1.966973 AS "sv_6", -1.398672 AS "sv_7", -0.152956 AS "sv_8", -0.427271 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", -0.128543 AS "sv_0", 1.029262 AS "sv_1", -1.338428 AS "sv_2", -2.145117 AS "sv_3", 1.119838 AS "sv_4", 0.882593 AS "sv_5", -0.514950 AS "sv_6", 0.340163 AS "sv_7", -0.885099 AS "sv_8", 0.307255 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", 0.420960 AS "sv_0", 0.508218 AS "sv_1", 0.792587 AS "sv_2", -1.824423 AS "sv_3", -0.534459 AS "sv_4", -0.802783 AS "sv_5", -2.398403 AS "sv_6", -0.576551 AS "sv_7", 0.458008 AS "sv_8", 1.340859 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.869880 AS "sv_0", -2.312190 AS "sv_1", -1.153852 AS "sv_2", 1.292078 AS "sv_3", -1.061729 AS "sv_4", 2.042926 AS "sv_5", 1.284271 AS "sv_6", -1.335399 AS "sv_7", -1.648043 AS "sv_8", 2.109906 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", -1.598324 AS "sv_0", 1.482463 AS "sv_1", 1.664691 AS "sv_2", -0.791131 AS "sv_3", -0.326916 AS "sv_4", -0.073560 AS "sv_5", -3.352625 AS "sv_6", -1.347481 AS "sv_7", 1.816532 AS "sv_8", 0.637000 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", 0.476411 AS "sv_0", 0.555172 AS "sv_1", 2.004011 AS "sv_2", -1.439637 AS "sv_3", -0.087655 AS "sv_4", 0.899499 AS "sv_5", -1.289876 AS "sv_6", 0.803645 AS "sv_7", 0.821823 AS "sv_8", 0.485550 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", -1.979466 AS "sv_0", 2.354344 AS "sv_1", -0.380747 AS "sv_2", -1.758169 AS "sv_3", -0.097531 AS "sv_4", 0.358732 AS "sv_5", -4.851546 AS "sv_6", -1.103278 AS "sv_7", 2.837784 AS "sv_8", 0.027100 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", 1.184632 AS "sv_0", -1.691100 AS "sv_1", -0.781676 AS "sv_2", 1.327282 AS "sv_3", 0.194338 AS "sv_4", 2.642873 AS "sv_5", 1.366181 AS "sv_6", -0.742383 AS "sv_7", -1.114233 AS "sv_8", 0.622367 AS "sv_9"
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
           EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.063473 * (power(model_input."X_0" - "SV_data"."sv_0", 2) + power(model_input."X_1" - "SV_data"."sv_1", 2) + power(model_input."X_2" - "SV_data"."sv_2", 2) + power(model_input."X_3" - "SV_data"."sv_3", 2) + power(model_input."X_4" - "SV_data"."sv_4", 2) + power(model_input."X_5" - "SV_data"."sv_5", 2) + power(model_input."X_6" - "SV_data"."sv_6", 2) + power(model_input."X_7" - "SV_data"."sv_7", 2) + power(model_input."X_8" - "SV_data"."sv_8", 2) + power(model_input."X_9" - "SV_data"."sv_9", 2)) ), CAST(32.0 AS FLOAT) ) )  AS "kernel_value" 
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
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 0 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 1 AS "sv_idx", 0.921813 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 2 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 3 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", 0.921813 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 5 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 6 AS "sv_idx", -0.389006 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 0 AS "sv_idx", 1.853795 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 1 AS "sv_idx", 1.340241 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 2 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 7 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 8 AS "sv_idx", 0.921813 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 9 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 1 AS "prob_idx", 0 AS "c_1", 2 AS "c_2", 10 AS "sv_idx", -0.389006 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 0 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 1 AS "sv_idx", 0.569342 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 2 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 11 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 12 AS "sv_idx", 0.921813 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 13 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 14 AS "sv_idx", -0.389006 AS "Coeff"
     UNION ALL
     SELECT 2 AS "prob_idx", 0 AS "c_1", 3 AS "c_2", 15 AS "sv_idx", -1.717513 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 3 AS "sv_idx", 1.853795 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 4 AS "sv_idx", 1.340241 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 5 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 6 AS "sv_idx", 1.756134 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 7 AS "sv_idx", 1.853795 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 8 AS "sv_idx", 1.340241 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 9 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 3 AS "prob_idx", 1 AS "c_1", 2 AS "c_2", 10 AS "sv_idx", 1.756134 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 3 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 4 AS "sv_idx", 0.569342 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 5 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 6 AS "sv_idx", 0.847718 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 11 AS "sv_idx", 1.853795 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 12 AS "sv_idx", 1.340241 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 13 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 14 AS "sv_idx", 1.756134 AS "Coeff"
     UNION ALL
     SELECT 4 AS "prob_idx", 1 AS "c_1", 3 AS "c_2", 15 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 7 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 8 AS "sv_idx", 0.569342 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 9 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 10 AS "sv_idx", 0.847718 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 11 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 12 AS "sv_idx", 0.569342 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 13 AS "sv_idx", 2.000000 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 14 AS "sv_idx", 0.847718 AS "Coeff"
     UNION ALL
     SELECT 5 AS "prob_idx", 2 AS "c_1", 3 AS "c_2", 15 AS "sv_idx", 1.824648 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", 0.228815 AS "rho", 0.124054 AS "probA", 0.274655 AS "probB"
     UNION ALL
     SELECT 1 AS "prob_idx", 0.436097 AS "rho", 1.478024 AS "probA", 0.694521 AS "probB"
     UNION ALL
     SELECT 2 AS "prob_idx", 0.477607 AS "rho", 2.089410 AS "probA", 1.717939 AS "probB"
     UNION ALL
     SELECT 3 AS "prob_idx", 0.123268 AS "rho", 2.061109 AS "probA", 0.184145 AS "probB"
     UNION ALL
     SELECT 4 AS "prob_idx", 0.233189 AS "rho", -1.066903 AS "probA", 0.071471 AS "probB"
     UNION ALL
     SELECT 5 AS "prob_idx", 0.120232 AS "rho", 0.046234 AS "probA", 0.213752 AS "probB"
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
   CAST(NULL AS FLOAT) AS "LogProba_1",
   SUM( CASE WHEN (t1."c_1" == 2 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 2 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   SUM( CASE WHEN (t1."c_1" == 3 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 3 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_3",
   CAST(NULL AS FLOAT) AS "Proba_3",
   CAST(NULL AS FLOAT) AS "LogProba_3"
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
     "orig_cte" AS t
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