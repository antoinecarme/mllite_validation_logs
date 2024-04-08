WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "diabetes_tiny" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT
  t."index" AS "index",
   153.696960 + -103.366539 * t."X_0" + -217.497879 * t."X_1" + 80.784737 * t."X_2" + 814.241394 * t."X_3" + -1436.395508 * t."X_4" + 784.150757 * t."X_5" + 471.693268 * t."X_6" + -89.956879 * t."X_7" + 1585.794678 * t."X_8" + -228.886841 * t."X_9" AS "Estimator"
  FROM model_input AS t
 )
SELECT
  model_scores_cte."index" as "index",
  model_scores_cte."Estimator" as "Estimator"
FROM  model_scores_cte
