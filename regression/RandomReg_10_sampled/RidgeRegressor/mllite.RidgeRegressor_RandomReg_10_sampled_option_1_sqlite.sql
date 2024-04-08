WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "RandomReg_10_sampled" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT
  t."index" AS "index",
   -0.000043 + 89.170052 * t."X_0" + 48.855202 * t."X_1" + 73.117928 * t."X_2" + 7.017606 * t."X_3" + 4.636961 * t."X_4" + 27.396570 * t."X_5" + 77.384583 * t."X_6" + 35.203041 * t."X_7" + 26.482065 * t."X_8" + 17.607967 * t."X_9" AS "Estimator"
  FROM model_input AS t
 )
SELECT
  model_scores_cte."index" as "index",
  model_scores_cte."Estimator" as "Estimator"
FROM  model_scores_cte
