WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman3_small" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT
  t."index" AS "index",
   0.981980 + -0.004656 * t."X_0" + 0.000230 * t."X_1" + 0.603277 * t."X_2" + 0.012646 * t."X_3" AS "Estimator"
  FROM model_input AS t
 )
SELECT
  model_scores_cte."index" as "index",
  model_scores_cte."Estimator" as "Estimator"
FROM  model_scores_cte
