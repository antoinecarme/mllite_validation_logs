WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
  FROM "california_housing_quantized" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT
  t."index" AS "index",
   270228.500000 + -23248.501953 * t."X_0" + -23922.412109 * t."X_1" + 5887.901855 * t."X_2" + -492.822052 * t."X_3" + 10715.501953 * t."X_4" + -16666.689453 * t."X_5" + 8507.838867 * t."X_6" + 24955.617188 * t."X_7" + 0.000000 * t."X_8" AS "Estimator"
  FROM model_input AS t
 )
SELECT
  model_scores_cte."index" as "index",
  model_scores_cte."Estimator" as "Estimator"
FROM  model_scores_cte
