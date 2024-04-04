WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 )
,"SV_data" AS
 ( SELECT 
   "Values"."sv_idx" AS "sv_idx",
   "Values"."coeff" AS "coeff",
   "Values"."sv_0" AS "sv_0",
   "Values"."sv_1" AS "sv_1",
   "Values"."sv_2" AS "sv_2",
   "Values"."sv_3" AS "sv_3",
   "Values"."sv_4" AS "sv_4",
   "Values"."sv_5" AS "sv_5",
   "Values"."sv_6" AS "sv_6",
   "Values"."sv_7" AS "sv_7",
   "Values"."sv_8" AS "sv_8",
   "Values"."sv_9" AS "sv_9"
  FROM
  (
     SELECT 0 AS "sv_idx", 1.000000 AS "coeff", -0.041840 AS "sv_0", -0.044642 AS "sv_1", 0.128521 AS "sv_2", 0.063187 AS "sv_3", -0.033216 AS "sv_4", -0.032629 AS "sv_5", 0.011824 AS "sv_6", -0.039493 AS "sv_7", -0.015999 AS "sv_8", -0.050783 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", -1.000000 AS "coeff", 0.023546 AS "sv_0", 0.050680 AS "sv_1", -0.030996 AS "sv_2", -0.005670 AS "sv_3", -0.016704 AS "sv_4", 0.017788 AS "sv_5", -0.032356 AS "sv_6", -0.002592 AS "sv_7", -0.074093 AS "sv_8", -0.034215 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", 1.000000 AS "coeff", 0.016281 AS "sv_0", 0.050680 AS "sv_1", 0.014272 AS "sv_2", 0.001215 AS "sv_3", 0.001183 AS "sv_4", -0.021355 AS "sv_5", -0.032356 AS "sv_6", 0.034309 AS "sv_7", 0.074966 AS "sv_8", 0.040343 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.000000 AS "coeff", -0.085430 AS "sv_0", -0.044642 AS "sv_1", -0.004050 AS "sv_2", -0.009113 AS "sv_3", -0.002945 AS "sv_4", 0.007767 AS "sv_5", 0.022869 AS "sv_6", -0.039493 AS "sv_7", -0.061176 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "coeff", -0.001882 AS "sv_0", -0.044642 AS "sv_1", 0.033673 AS "sv_2", 0.125158 AS "sv_3", 0.024574 AS "sv_4", 0.026243 AS "sv_5", -0.010266 AS "sv_6", -0.002592 AS "sv_7", 0.026717 AS "sv_8", 0.061054 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", -1.000000 AS "coeff", -0.052738 AS "sv_0", -0.044642 AS "sv_1", 0.071397 AS "sv_2", -0.074527 AS "sv_3", -0.015328 AS "sv_4", -0.001314 AS "sv_5", 0.004460 AS "sv_6", -0.021412 AS "sv_7", -0.046883 AS "sv_8", 0.003064 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", 1.000000 AS "coeff", 0.009016 AS "sv_0", 0.050680 AS "sv_1", 0.069241 AS "sv_2", 0.059744 AS "sv_3", 0.017694 AS "sv_4", -0.023234 AS "sv_5", -0.047082 AS "sv_6", 0.034309 AS "sv_7", 0.103297 AS "sv_8", 0.073480 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", -1.000000 AS "coeff", -0.060003 AS "sv_0", 0.050680 AS "sv_1", -0.047163 AS "sv_2", -0.022885 AS "sv_3", -0.071743 AS "sv_4", -0.057681 AS "sv_5", -0.006584 AS "sv_6", -0.039493 AS "sv_7", -0.062917 AS "sv_8", -0.054925 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -142.185349 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -43.773697 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
