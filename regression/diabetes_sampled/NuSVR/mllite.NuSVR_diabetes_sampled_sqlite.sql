WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "diabetes_sampled" AS "ADS" 
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
     SELECT 0 AS "sv_idx", -1.000000 AS "coeff", 0.038076 AS "sv_0", 0.050680 AS "sv_1", -0.009439 AS "sv_2", 0.002351 AS "sv_3", 0.001183 AS "sv_4", 0.037517 AS "sv_5", -0.054446 AS "sv_6", 0.050176 AS "sv_7", -0.025953 AS "sv_8", 0.106617 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", -0.750000 AS "coeff", 0.041708 AS "sv_0", -0.044642 AS "sv_1", -0.008362 AS "sv_2", -0.026328 AS "sv_3", 0.024574 AS "sv_4", 0.016222 AS "sv_5", 0.070730 AS "sv_6", -0.039493 AS "sv_7", -0.048359 AS "sv_8", -0.030072 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", 1.000000 AS "coeff", -0.041840 AS "sv_0", -0.044642 AS "sv_1", 0.128521 AS "sv_2", 0.063187 AS "sv_3", -0.033216 AS "sv_4", -0.032629 AS "sv_5", 0.011824 AS "sv_6", -0.039493 AS "sv_7", -0.015999 AS "sv_8", -0.050783 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.000000 AS "coeff", 0.023546 AS "sv_0", 0.050680 AS "sv_1", -0.030996 AS "sv_2", -0.005670 AS "sv_3", -0.016704 AS "sv_4", 0.017788 AS "sv_5", -0.032356 AS "sv_6", -0.002592 AS "sv_7", -0.074093 AS "sv_8", -0.034215 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 0.750000 AS "coeff", 0.016281 AS "sv_0", 0.050680 AS "sv_1", 0.014272 AS "sv_2", 0.001215 AS "sv_3", 0.001183 AS "sv_4", -0.021355 AS "sv_5", -0.032356 AS "sv_6", 0.034309 AS "sv_7", 0.074966 AS "sv_8", 0.040343 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", -1.000000 AS "coeff", -0.085430 AS "sv_0", -0.044642 AS "sv_1", -0.004050 AS "sv_2", -0.009113 AS "sv_3", -0.002945 AS "sv_4", 0.007767 AS "sv_5", 0.022869 AS "sv_6", -0.039493 AS "sv_7", -0.061176 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", 1.000000 AS "coeff", -0.001882 AS "sv_0", -0.044642 AS "sv_1", 0.033673 AS "sv_2", 0.125158 AS "sv_3", 0.024574 AS "sv_4", 0.026243 AS "sv_5", -0.010266 AS "sv_6", -0.002592 AS "sv_7", 0.026717 AS "sv_8", 0.061054 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", -1.000000 AS "coeff", -0.052738 AS "sv_0", -0.044642 AS "sv_1", 0.071397 AS "sv_2", -0.074527 AS "sv_3", -0.015328 AS "sv_4", -0.001314 AS "sv_5", 0.004460 AS "sv_6", -0.021412 AS "sv_7", -0.046883 AS "sv_8", 0.003064 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", 1.000000 AS "coeff", 0.009016 AS "sv_0", 0.050680 AS "sv_1", 0.069241 AS "sv_2", 0.059744 AS "sv_3", 0.017694 AS "sv_4", -0.023234 AS "sv_5", -0.047082 AS "sv_6", 0.034309 AS "sv_7", 0.103297 AS "sv_8", 0.073480 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", -1.000000 AS "coeff", -0.060003 AS "sv_0", 0.050680 AS "sv_1", -0.047163 AS "sv_2", -0.022885 AS "sv_3", -0.071743 AS "sv_4", -0.057681 AS "sv_5", -0.006584 AS "sv_6", -0.039493 AS "sv_7", -0.062917 AS "sv_8", -0.054925 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", -1.000000 AS "coeff", 0.030811 AS "sv_0", -0.044642 AS "sv_1", -0.033151 AS "sv_2", -0.022885 AS "sv_3", -0.046975 AS "sv_4", -0.081167 AS "sv_5", 0.103865 AS "sv_6", -0.076395 AS "sv_7", -0.039809 AS "sv_8", -0.054925 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.000000 AS "coeff", 0.074401 AS "sv_0", -0.044642 AS "sv_1", 0.114509 AS "sv_2", 0.028758 AS "sv_3", 0.024574 AS "sv_4", 0.024991 AS "sv_5", 0.019187 AS "sv_6", -0.002592 AS "sv_7", -0.000612 AS "sv_8", -0.005220 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", -1.000000 AS "coeff", -0.103593 AS "sv_0", 0.050680 AS "sv_1", -0.023451 AS "sv_2", -0.022885 AS "sv_3", -0.086878 AS "sv_4", -0.067701 AS "sv_5", -0.017629 AS "sv_6", -0.039493 AS "sv_7", -0.078140 AS "sv_8", -0.071494 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", -1.000000 AS "coeff", 0.023546 AS "sv_0", 0.050680 AS "sv_1", -0.020218 AS "sv_2", -0.036656 AS "sv_3", -0.013953 AS "sv_4", -0.015092 AS "sv_5", 0.059685 AS "sv_6", -0.039493 AS "sv_7", -0.096435 AS "sv_8", -0.017646 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", -1.000000 AS "coeff", -0.070900 AS "sv_0", -0.044642 AS "sv_1", -0.004050 AS "sv_2", -0.040099 AS "sv_3", -0.066239 AS "sv_4", -0.078662 AS "sv_5", 0.052322 AS "sv_6", -0.076395 AS "sv_7", -0.051404 AS "sv_8", -0.034215 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", 1.000000 AS "coeff", 0.019913 AS "sv_0", 0.050680 AS "sv_1", 0.104809 AS "sv_2", 0.070072 AS "sv_3", -0.035968 AS "sv_4", -0.026679 AS "sv_5", -0.024993 AS "sv_6", -0.002592 AS "sv_7", 0.003709 AS "sv_8", 0.040343 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", -1.000000 AS "coeff", -0.005515 AS "sv_0", 0.050680 AS "sv_1", 0.001339 AS "sv_2", -0.084856 AS "sv_3", -0.011201 AS "sv_4", -0.016658 AS "sv_5", 0.048640 AS "sv_6", -0.039493 AS "sv_7", -0.041176 AS "sv_8", -0.088062 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", 1.000000 AS "coeff", -0.001882 AS "sv_0", 0.050680 AS "sv_1", 0.030440 AS "sv_2", 0.052858 AS "sv_3", 0.039710 AS "sv_4", 0.056619 AS "sv_5", -0.039719 AS "sv_6", 0.071210 AS "sv_7", 0.025395 AS "sv_8", 0.027917 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", 1.000000 AS "coeff", 0.016281 AS "sv_0", -0.044642 AS "sv_1", 0.020739 AS "sv_2", 0.021872 AS "sv_3", -0.013953 AS "sv_4", -0.013214 AS "sv_5", -0.006584 AS "sv_6", -0.002592 AS "sv_7", 0.013317 AS "sv_8", 0.040343 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", 1.000000 AS "coeff", 0.041708 AS "sv_0", 0.050680 AS "sv_1", 0.071397 AS "sv_2", 0.008101 AS "sv_3", 0.038334 AS "sv_4", 0.015909 AS "sv_5", -0.017629 AS "sv_6", 0.034309 AS "sv_7", 0.073407 AS "sv_8", 0.085907 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", 1.000000 AS "coeff", 0.048974 AS "sv_0", 0.050680 AS "sv_1", 0.074630 AS "sv_2", 0.066629 AS "sv_3", -0.009825 AS "sv_4", -0.002253 AS "sv_5", -0.043401 AS "sv_6", 0.034309 AS "sv_7", 0.033654 AS "sv_8", 0.019633 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", -1.000000 AS "coeff", -0.027310 AS "sv_0", 0.050680 AS "sv_1", -0.055785 AS "sv_2", 0.025315 AS "sv_3", -0.007073 AS "sv_4", -0.023547 AS "sv_5", 0.052322 AS "sv_6", -0.039493 AS "sv_7", -0.005142 AS "sv_8", -0.050783 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", -1.000000 AS "coeff", -0.041840 AS "sv_0", -0.044642 AS "sv_1", -0.066563 AS "sv_2", -0.046985 AS "sv_3", -0.037344 AS "sv_4", -0.043276 AS "sv_5", 0.048640 AS "sv_6", -0.039493 AS "sv_7", -0.056153 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", 1.000000 AS "coeff", 0.009016 AS "sv_0", -0.044642 AS "sv_1", -0.012673 AS "sv_2", 0.028758 AS "sv_3", -0.018080 AS "sv_4", -0.005072 AS "sv_5", -0.047082 AS "sv_6", 0.034309 AS "sv_7", 0.023371 AS "sv_8", -0.005220 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", 1.000000 AS "coeff", 0.045341 AS "sv_0", -0.044642 AS "sv_1", -0.006206 AS "sv_2", -0.015999 AS "sv_3", 0.125019 AS "sv_4", 0.125198 AS "sv_5", 0.019187 AS "sv_6", 0.034309 AS "sv_7", 0.032432 AS "sv_8", -0.005220 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", 1.000000 AS "coeff", 0.023546 AS "sv_0", 0.050680 AS "sv_1", -0.019140 AS "sv_2", 0.049415 AS "sv_3", -0.063487 AS "sv_4", -0.061125 AS "sv_5", 0.004460 AS "sv_6", -0.039493 AS "sv_7", -0.025953 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", -1.000000 AS "coeff", -0.099961 AS "sv_0", -0.044642 AS "sv_1", -0.067641 AS "sv_2", -0.108956 AS "sv_3", -0.074494 AS "sv_4", -0.072712 AS "sv_5", 0.015505 AS "sv_6", -0.039493 AS "sv_7", -0.049872 AS "sv_8", -0.009362 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", 1.000000 AS "coeff", -0.049105 AS "sv_0", -0.044642 AS "sv_1", 0.160855 AS "sv_2", -0.046985 AS "sv_3", -0.029088 AS "sv_4", -0.019790 AS "sv_5", -0.047082 AS "sv_6", 0.034309 AS "sv_7", 0.028020 AS "sv_8", 0.011349 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -149.827530 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -46.103394 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
