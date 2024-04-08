WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "diabetes_medium" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT
  t."index" AS "index",
   152.133484 + -9.064349 * t."X_0" + -238.275131 * t."X_1" + 520.785522 * t."X_2" + 323.207916 * t."X_3" + -632.411804 * t."X_4" + 349.987030 * t."X_5" + 30.668673 * t."X_6" + 158.102844 * t."X_7" + 690.440918 * t."X_8" + 68.672272 * t."X_9" AS "Estimator"
  FROM model_input AS t
 )
SELECT
  model_scores_cte."index" as "index",
  model_scores_cte."Estimator" as "Estimator"
FROM  model_scores_cte
