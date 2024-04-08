WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "RandomReg_10_small" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT
  t."index" AS "index",
   0.351852 + 87.771378 * t."X_0" + 47.318851 * t."X_1" + 71.130699 * t."X_2" + 7.033662 * t."X_3" + 3.750020 * t."X_4" + 26.221785 * t."X_5" + 75.744553 * t."X_6" + 34.855663 * t."X_7" + 25.663731 * t."X_8" + 16.925283 * t."X_9" AS "Estimator"
  FROM model_input AS t
 )
SELECT
  model_scores_cte."index" as "index",
  model_scores_cte."Estimator" as "Estimator"
FROM  model_scores_cte
