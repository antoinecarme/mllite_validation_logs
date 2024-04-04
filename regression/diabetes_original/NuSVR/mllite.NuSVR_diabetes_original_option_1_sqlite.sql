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
     SELECT 0 AS "sv_idx", 1.000000 AS "coeff", -0.070900 AS "sv_0", -0.044642 AS "sv_1", 0.039062 AS "sv_2", -0.033213 AS "sv_3", -0.012577 AS "sv_4", -0.034508 AS "sv_5", -0.024993 AS "sv_6", -0.002592 AS "sv_7", 0.067737 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", 1.000000 AS "coeff", 0.067136 AS "sv_0", 0.050680 AS "sv_1", -0.006206 AS "sv_2", 0.063187 AS "sv_3", -0.042848 AS "sv_4", -0.095885 AS "sv_5", 0.052322 AS "sv_6", -0.076395 AS "sv_7", 0.059424 AS "sv_8", 0.052770 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", 1.000000 AS "coeff", 0.034443 AS "sv_0", 0.050680 AS "sv_1", 0.125287 AS "sv_2", 0.028758 AS "sv_3", -0.053855 AS "sv_4", -0.012900 AS "sv_5", -0.102307 AS "sv_6", 0.108111 AS "sv_7", 0.000272 AS "sv_8", 0.027917 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.000000 AS "coeff", -0.041840 AS "sv_0", -0.044642 AS "sv_1", 0.041218 AS "sv_2", -0.026328 AS "sv_3", -0.031840 AS "sv_4", -0.030437 AS "sv_5", -0.036038 AS "sv_6", 0.002943 AS "sv_7", 0.033654 AS "sv_8", -0.017646 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", -1.000000 AS "coeff", -0.027310 AS "sv_0", -0.044642 AS "sv_1", -0.063330 AS "sv_2", -0.050427 AS "sv_3", -0.089630 AS "sv_4", -0.104340 AS "sv_5", 0.052322 AS "sv_6", -0.076395 AS "sv_7", -0.056153 AS "sv_8", -0.067351 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", -1.000000 AS "coeff", -0.001882 AS "sv_0", -0.044642 AS "sv_1", -0.069797 AS "sv_2", -0.012556 AS "sv_3", -0.000193 AS "sv_4", -0.009143 AS "sv_5", 0.070730 AS "sv_6", -0.039493 AS "sv_7", -0.062917 AS "sv_8", 0.040343 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.000000 AS "coeff", -0.009147 AS "sv_0", 0.050680 AS "sv_1", -0.030996 AS "sv_2", -0.026328 AS "sv_3", -0.011201 AS "sv_4", -0.001001 AS "sv_5", -0.021311 AS "sv_6", -0.002592 AS "sv_7", 0.006207 AS "sv_8", 0.027917 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", -1.000000 AS "coeff", 0.012648 AS "sv_0", 0.050680 AS "sv_1", -0.022373 AS "sv_2", -0.029770 AS "sv_3", 0.010815 AS "sv_4", 0.028435 AS "sv_5", -0.021311 AS "sv_6", 0.034309 AS "sv_7", -0.006081 AS "sv_8", -0.001078 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", -1.000000 AS "coeff", -0.052738 AS "sv_0", 0.050680 AS "sv_1", -0.040696 AS "sv_2", -0.067642 AS "sv_3", -0.031840 AS "sv_4", -0.037013 AS "sv_5", 0.037595 AS "sv_6", -0.039493 AS "sv_7", -0.034522 AS "sv_8", 0.069338 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", -1.000000 AS "coeff", -0.020045 AS "sv_0", -0.044642 AS "sv_1", 0.004572 AS "sv_2", 0.097615 AS "sv_3", 0.005311 AS "sv_4", -0.020729 AS "sv_5", 0.063367 AS "sv_6", -0.039493 AS "sv_7", 0.012551 AS "sv_8", 0.011349 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", 1.000000 AS "coeff", -0.092695 AS "sv_0", -0.044642 AS "sv_1", 0.028284 AS "sv_2", -0.015999 AS "sv_3", 0.036958 AS "sv_4", 0.024991 AS "sv_5", 0.056003 AS "sv_6", -0.039493 AS "sv_7", -0.005142 AS "sv_8", -0.001078 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.000000 AS "coeff", 0.019913 AS "sv_0", 0.050680 AS "sv_1", 0.014272 AS "sv_2", 0.063187 AS "sv_3", 0.014942 AS "sv_4", 0.020293 AS "sv_5", -0.047082 AS "sv_6", 0.034309 AS "sv_7", 0.046662 AS "sv_8", 0.090049 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", 1.000000 AS "coeff", 0.034443 AS "sv_0", 0.050680 AS "sv_1", 0.111276 AS "sv_2", 0.076958 AS "sv_3", -0.031840 AS "sv_4", -0.033881 AS "sv_5", -0.021311 AS "sv_6", -0.002592 AS "sv_7", 0.028020 AS "sv_8", 0.073480 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", 1.000000 AS "coeff", -0.027310 AS "sv_0", -0.044642 AS "sv_1", 0.047685 AS "sv_2", -0.046985 AS "sv_3", 0.034206 AS "sv_4", 0.057245 AS "sv_5", -0.080217 AS "sv_6", 0.130252 AS "sv_7", 0.045067 AS "sv_8", 0.131470 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", 1.000000 AS "coeff", 0.023546 AS "sv_0", -0.044642 AS "sv_1", 0.070319 AS "sv_2", 0.025315 AS "sv_3", -0.034592 AS "sv_4", -0.014466 AS "sv_5", -0.032356 AS "sv_6", -0.002592 AS "sv_7", -0.019198 AS "sv_8", -0.009362 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", 1.000000 AS "coeff", -0.034575 AS "sv_0", 0.050680 AS "sv_1", -0.000817 AS "sv_2", 0.070072 AS "sv_3", 0.039710 AS "sv_4", 0.066952 AS "sv_5", -0.065491 AS "sv_6", 0.108111 AS "sv_7", 0.026717 AS "sv_8", 0.073480 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", -1.000000 AS "coeff", -0.016412 AS "sv_0", -0.044642 AS "sv_1", -0.010517 AS "sv_2", 0.001215 AS "sv_3", -0.037344 AS "sv_4", -0.035760 AS "sv_5", 0.011824 AS "sv_6", -0.039493 AS "sv_7", -0.021395 AS "sv_8", -0.034215 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", -1.000000 AS "coeff", 0.023546 AS "sv_0", 0.050680 AS "sv_1", -0.020218 AS "sv_2", -0.036656 AS "sv_3", -0.013953 AS "sv_4", -0.015092 AS "sv_5", 0.059685 AS "sv_6", -0.039493 AS "sv_7", -0.096435 AS "sv_8", -0.017646 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", 1.000000 AS "coeff", 0.041708 AS "sv_0", 0.050680 AS "sv_1", 0.071397 AS "sv_2", 0.008101 AS "sv_3", 0.038334 AS "sv_4", 0.015909 AS "sv_5", -0.017629 AS "sv_6", 0.034309 AS "sv_7", 0.073407 AS "sv_8", 0.085907 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", 1.000000 AS "coeff", 0.009016 AS "sv_0", -0.044642 AS "sv_1", -0.012673 AS "sv_2", 0.028758 AS "sv_3", -0.018080 AS "sv_4", -0.005072 AS "sv_5", -0.047082 AS "sv_6", 0.034309 AS "sv_7", 0.023371 AS "sv_8", -0.005220 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", -1.000000 AS "coeff", -0.034575 AS "sv_0", 0.050680 AS "sv_1", -0.055785 AS "sv_2", -0.015999 AS "sv_3", -0.009825 AS "sv_4", -0.007890 AS "sv_5", 0.037595 AS "sv_6", -0.039493 AS "sv_7", -0.052963 AS "sv_8", 0.027917 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", 1.000000 AS "coeff", 0.074401 AS "sv_0", -0.044642 AS "sv_1", 0.031517 AS "sv_2", 0.101058 AS "sv_3", 0.046589 AS "sv_4", 0.036890 AS "sv_5", 0.015505 AS "sv_6", -0.002592 AS "sv_7", 0.033654 AS "sv_8", 0.044485 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", -1.000000 AS "coeff", 0.016281 AS "sv_0", 0.050680 AS "sv_1", -0.046085 AS "sv_2", 0.011544 AS "sv_3", -0.033216 AS "sv_4", -0.016032 AS "sv_5", -0.010266 AS "sv_6", -0.002592 AS "sv_7", -0.043984 AS "sv_8", -0.042499 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", -0.120302 AS "coeff", -0.081798 AS "sv_0", -0.044642 AS "sv_1", -0.081653 AS "sv_2", -0.040099 AS "sv_3", 0.002559 AS "sv_4", -0.018537 AS "sv_5", 0.070730 AS "sv_6", -0.039493 AS "sv_7", -0.010903 AS "sv_8", -0.092204 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", 1.000000 AS "coeff", 0.067136 AS "sv_0", -0.044642 AS "sv_1", 0.056307 AS "sv_2", 0.073515 AS "sv_3", -0.013953 AS "sv_4", -0.039205 AS "sv_5", -0.032356 AS "sv_6", -0.002592 AS "sv_7", 0.075741 AS "sv_8", 0.036201 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", 1.000000 AS "coeff", 0.030811 AS "sv_0", 0.050680 AS "sv_1", 0.056307 AS "sv_2", 0.076958 AS "sv_3", 0.049341 AS "sv_4", -0.012274 AS "sv_5", -0.036038 AS "sv_6", 0.071210 AS "sv_7", 0.120051 AS "sv_8", 0.090049 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", 1.000000 AS "coeff", -0.049105 AS "sv_0", -0.044642 AS "sv_1", 0.160855 AS "sv_2", -0.046985 AS "sv_3", -0.029088 AS "sv_4", -0.019790 AS "sv_5", -0.047082 AS "sv_6", 0.034309 AS "sv_7", 0.028020 AS "sv_8", 0.011349 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", -1.000000 AS "coeff", 0.012648 AS "sv_0", -0.044642 AS "sv_1", -0.036385 AS "sv_2", 0.042529 AS "sv_3", -0.013953 AS "sv_4", 0.012934 AS "sv_5", -0.026833 AS "sv_6", 0.005157 AS "sv_7", -0.043984 AS "sv_8", 0.007207 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", -1.000000 AS "coeff", 0.041708 AS "sv_0", -0.044642 AS "sv_1", -0.008362 AS "sv_2", -0.057313 AS "sv_3", 0.008063 AS "sv_4", -0.031376 AS "sv_5", 0.151726 AS "sv_6", -0.076395 AS "sv_7", -0.080237 AS "sv_8", -0.017646 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", 1.000000 AS "coeff", -0.016412 AS "sv_0", 0.050680 AS "sv_1", 0.127443 AS "sv_2", 0.097615 AS "sv_3", 0.016318 AS "sv_4", 0.017475 AS "sv_5", -0.021311 AS "sv_6", 0.034309 AS "sv_7", 0.034866 AS "sv_8", 0.003064 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", -1.000000 AS "coeff", -0.052738 AS "sv_0", 0.050680 AS "sv_1", -0.062252 AS "sv_2", 0.011544 AS "sv_3", -0.008449 AS "sv_4", -0.036700 AS "sv_5", 0.122273 AS "sv_6", -0.076395 AS "sv_7", -0.086827 AS "sv_8", 0.003064 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", 0.099949 AS "coeff", 0.012648 AS "sv_0", -0.044642 AS "sv_1", 0.026128 AS "sv_2", 0.063187 AS "sv_3", 0.125019 AS "sv_4", 0.091691 AS "sv_5", 0.063367 AS "sv_6", -0.002592 AS "sv_7", 0.057573 AS "sv_8", -0.021788 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", 1.000000 AS "coeff", 0.059871 AS "sv_0", 0.050680 AS "sv_1", 0.076786 AS "sv_2", 0.025315 AS "sv_3", 0.001183 AS "sv_4", 0.016849 AS "sv_5", -0.054446 AS "sv_6", 0.034309 AS "sv_7", 0.029935 AS "sv_8", 0.044485 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", -1.000000 AS "coeff", 0.001751 AS "sv_0", -0.044642 AS "sv_1", -0.008362 AS "sv_2", -0.064199 AS "sv_3", -0.038720 AS "sv_4", -0.024487 AS "sv_5", 0.004460 AS "sv_6", -0.039493 AS "sv_7", -0.064685 AS "sv_8", -0.054925 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", -1.000000 AS "coeff", 0.009016 AS "sv_0", 0.050680 AS "sv_1", -0.001895 AS "sv_2", 0.021872 AS "sv_3", -0.038720 AS "sv_4", -0.024800 AS "sv_5", -0.006584 AS "sv_6", -0.039493 AS "sv_7", -0.039809 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", 1.000000 AS "coeff", -0.020045 AS "sv_0", -0.044642 AS "sv_1", 0.085408 AS "sv_2", -0.036656 AS "sv_3", 0.091996 AS "sv_4", 0.089499 AS "sv_5", -0.061809 AS "sv_6", 0.145012 AS "sv_7", 0.080946 AS "sv_8", 0.052770 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", 1.000000 AS "coeff", 0.038076 AS "sv_0", 0.050680 AS "sv_1", 0.005650 AS "sv_2", 0.032201 AS "sv_3", 0.006687 AS "sv_4", 0.017475 AS "sv_5", -0.024993 AS "sv_6", 0.034309 AS "sv_7", 0.014821 AS "sv_8", 0.061054 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", 1.000000 AS "coeff", 0.019913 AS "sv_0", 0.050680 AS "sv_1", 0.104809 AS "sv_2", 0.070072 AS "sv_3", -0.035968 AS "sv_4", -0.026679 AS "sv_5", -0.024993 AS "sv_6", -0.002592 AS "sv_7", 0.003709 AS "sv_8", 0.040343 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", -1.000000 AS "coeff", -0.001882 AS "sv_0", -0.044642 AS "sv_1", -0.038540 AS "sv_2", 0.021872 AS "sv_3", -0.108893 AS "sv_4", -0.115613 AS "sv_5", 0.022869 AS "sv_6", -0.076395 AS "sv_7", -0.046883 AS "sv_8", 0.023775 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", -0.979646 AS "coeff", 0.016281 AS "sv_0", -0.044642 AS "sv_1", 0.026128 AS "sv_2", 0.058608 AS "sv_3", -0.060735 AS "sv_4", -0.044215 AS "sv_5", -0.013948 AS "sv_6", -0.033958 AS "sv_7", -0.051404 AS "sv_8", -0.025930 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", -1.000000 AS "coeff", -0.085430 AS "sv_0", 0.050680 AS "sv_1", -0.030996 AS "sv_2", -0.022885 AS "sv_3", -0.063487 AS "sv_4", -0.054236 AS "sv_5", 0.019187 AS "sv_6", -0.039493 AS "sv_7", -0.096435 AS "sv_8", -0.034215 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", 1.000000 AS "coeff", -0.016412 AS "sv_0", -0.044642 AS "sv_1", 0.054152 AS "sv_2", 0.070072 AS "sv_3", -0.033216 AS "sv_4", -0.027931 AS "sv_5", 0.008142 AS "sv_6", -0.039493 AS "sv_7", -0.027129 AS "sv_8", -0.009362 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", -1.000000 AS "coeff", -0.020045 AS "sv_0", -0.044642 AS "sv_1", -0.054707 AS "sv_2", -0.053870 AS "sv_3", -0.066239 AS "sv_4", -0.057367 AS "sv_5", 0.011824 AS "sv_6", -0.039493 AS "sv_7", -0.074093 AS "sv_8", -0.005220 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", 1.000000 AS "coeff", 0.048974 AS "sv_0", 0.050680 AS "sv_1", 0.088642 AS "sv_2", 0.087287 AS "sv_3", 0.035582 AS "sv_4", 0.021546 AS "sv_5", -0.024993 AS "sv_6", 0.034309 AS "sv_7", 0.066051 AS "sv_8", 0.131470 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", -1.000000 AS "coeff", 0.016281 AS "sv_0", -0.044642 AS "sv_1", 0.001339 AS "sv_2", 0.008101 AS "sv_3", 0.005311 AS "sv_4", 0.010899 AS "sv_5", 0.030232 AS "sv_6", -0.039493 AS "sv_7", -0.045424 AS "sv_8", 0.032059 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", -1.000000 AS "coeff", -0.056370 AS "sv_0", -0.044642 AS "sv_1", -0.074108 AS "sv_2", -0.050427 AS "sv_3", -0.024960 AS "sv_4", -0.047034 AS "sv_5", 0.092820 AS "sv_6", -0.076395 AS "sv_7", -0.061176 AS "sv_8", -0.046641 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -168.704010 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -44.200001 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
