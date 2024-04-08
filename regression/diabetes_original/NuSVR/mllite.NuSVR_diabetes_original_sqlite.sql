WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "diabetes_original" AS "ADS" 
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
     SELECT 0 AS "sv_idx", -1.000000 AS "coeff", -0.001882 AS "sv_0", -0.044642 AS "sv_1", -0.051474 AS "sv_2", -0.026328 AS "sv_3", -0.008449 AS "sv_4", -0.019163 AS "sv_5", 0.074412 AS "sv_6", -0.039493 AS "sv_7", -0.068332 AS "sv_8", -0.092204 AS "sv_9"
     UNION ALL
     SELECT 1 AS "sv_idx", -1.000000 AS "coeff", 0.085299 AS "sv_0", 0.050680 AS "sv_1", 0.044451 AS "sv_2", -0.005670 AS "sv_3", -0.045599 AS "sv_4", -0.034194 AS "sv_5", -0.032356 AS "sv_6", -0.002592 AS "sv_7", 0.002861 AS "sv_8", -0.025930 AS "sv_9"
     UNION ALL
     SELECT 2 AS "sv_idx", 1.000000 AS "coeff", -0.089063 AS "sv_0", -0.044642 AS "sv_1", -0.011595 AS "sv_2", -0.036656 AS "sv_3", 0.012191 AS "sv_4", 0.024991 AS "sv_5", -0.036038 AS "sv_6", 0.034309 AS "sv_7", 0.022688 AS "sv_8", -0.009362 AS "sv_9"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.000000 AS "coeff", -0.092695 AS "sv_0", -0.044642 AS "sv_1", -0.040696 AS "sv_2", -0.019442 AS "sv_3", -0.068991 AS "sv_4", -0.079288 AS "sv_5", 0.041277 AS "sv_6", -0.076395 AS "sv_7", -0.041176 AS "sv_8", -0.096346 AS "sv_9"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "coeff", -0.045472 AS "sv_0", 0.050680 AS "sv_1", -0.047163 AS "sv_2", -0.015999 AS "sv_3", -0.040096 AS "sv_4", -0.024800 AS "sv_5", 0.000779 AS "sv_6", -0.039493 AS "sv_7", -0.062917 AS "sv_8", -0.038357 AS "sv_9"
     UNION ALL
     SELECT 5 AS "sv_idx", -1.000000 AS "coeff", 0.063504 AS "sv_0", 0.050680 AS "sv_1", -0.001895 AS "sv_2", 0.066629 AS "sv_3", 0.090620 AS "sv_4", 0.108914 AS "sv_5", 0.022869 AS "sv_6", 0.017703 AS "sv_7", -0.035816 AS "sv_8", 0.003064 AS "sv_9"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.000000 AS "coeff", 0.041708 AS "sv_0", 0.050680 AS "sv_1", 0.061696 AS "sv_2", -0.040099 AS "sv_3", -0.013953 AS "sv_4", 0.006202 AS "sv_5", -0.028674 AS "sv_6", -0.002592 AS "sv_7", -0.014960 AS "sv_8", 0.011349 AS "sv_9"
     UNION ALL
     SELECT 7 AS "sv_idx", 1.000000 AS "coeff", -0.070900 AS "sv_0", -0.044642 AS "sv_1", 0.039062 AS "sv_2", -0.033213 AS "sv_3", -0.012577 AS "sv_4", -0.034508 AS "sv_5", -0.024993 AS "sv_6", -0.002592 AS "sv_7", 0.067737 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 8 AS "sv_idx", -1.000000 AS "coeff", -0.096328 AS "sv_0", -0.044642 AS "sv_1", -0.083808 AS "sv_2", 0.008101 AS "sv_3", -0.103389 AS "sv_4", -0.090561 AS "sv_5", -0.013948 AS "sv_6", -0.076395 AS "sv_7", -0.062917 AS "sv_8", -0.034215 AS "sv_9"
     UNION ALL
     SELECT 9 AS "sv_idx", -1.000000 AS "coeff", 0.027178 AS "sv_0", 0.050680 AS "sv_1", 0.017506 AS "sv_2", -0.033213 AS "sv_3", -0.007073 AS "sv_4", 0.045972 AS "sv_5", -0.065491 AS "sv_6", 0.071210 AS "sv_7", -0.096435 AS "sv_8", -0.059067 AS "sv_9"
     UNION ALL
     SELECT 10 AS "sv_idx", 1.000000 AS "coeff", 0.016281 AS "sv_0", -0.044642 AS "sv_1", -0.028840 AS "sv_2", -0.009113 AS "sv_3", -0.004321 AS "sv_4", -0.009769 AS "sv_5", 0.044958 AS "sv_6", -0.039493 AS "sv_7", -0.030748 AS "sv_8", -0.042499 AS "sv_9"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.000000 AS "coeff", 0.005383 AS "sv_0", 0.050680 AS "sv_1", -0.001895 AS "sv_2", 0.008101 AS "sv_3", -0.004321 AS "sv_4", -0.015719 AS "sv_5", -0.002903 AS "sv_6", -0.002592 AS "sv_7", 0.038394 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 12 AS "sv_idx", -1.000000 AS "coeff", 0.045341 AS "sv_0", -0.044642 AS "sv_1", -0.025607 AS "sv_2", -0.012556 AS "sv_3", 0.017694 AS "sv_4", -0.000061 AS "sv_5", 0.081775 AS "sv_6", -0.039493 AS "sv_7", -0.031988 AS "sv_8", -0.075636 AS "sv_9"
     UNION ALL
     SELECT 13 AS "sv_idx", 1.000000 AS "coeff", -0.052738 AS "sv_0", 0.050680 AS "sv_1", -0.018062 AS "sv_2", 0.080401 AS "sv_3", 0.089244 AS "sv_4", 0.107662 AS "sv_5", -0.039719 AS "sv_6", 0.108111 AS "sv_7", 0.036060 AS "sv_8", -0.042499 AS "sv_9"
     UNION ALL
     SELECT 14 AS "sv_idx", -1.000000 AS "coeff", 0.070769 AS "sv_0", 0.050680 AS "sv_1", 0.012117 AS "sv_2", 0.056301 AS "sv_3", 0.034206 AS "sv_4", 0.049416 AS "sv_5", -0.039719 AS "sv_6", 0.034309 AS "sv_7", 0.027364 AS "sv_8", -0.001078 AS "sv_9"
     UNION ALL
     SELECT 15 AS "sv_idx", -1.000000 AS "coeff", -0.038207 AS "sv_0", -0.044642 AS "sv_1", -0.010517 AS "sv_2", -0.036656 AS "sv_3", -0.037344 AS "sv_4", -0.019476 AS "sv_5", -0.028674 AS "sv_6", -0.002592 AS "sv_7", -0.018114 AS "sv_8", -0.017646 AS "sv_9"
     UNION ALL
     SELECT 16 AS "sv_idx", 1.000000 AS "coeff", -0.027310 AS "sv_0", -0.044642 AS "sv_1", -0.018062 AS "sv_2", -0.040099 AS "sv_3", -0.002945 AS "sv_4", -0.011335 AS "sv_5", 0.037595 AS "sv_6", -0.039493 AS "sv_7", -0.008943 AS "sv_8", -0.054925 AS "sv_9"
     UNION ALL
     SELECT 17 AS "sv_idx", -1.000000 AS "coeff", -0.049105 AS "sv_0", -0.044642 AS "sv_1", -0.056863 AS "sv_2", -0.043542 AS "sv_3", -0.045599 AS "sv_4", -0.043276 AS "sv_5", 0.000779 AS "sv_6", -0.039493 AS "sv_7", -0.011897 AS "sv_8", 0.015491 AS "sv_9"
     UNION ALL
     SELECT 18 AS "sv_idx", -1.000000 AS "coeff", -0.085430 AS "sv_0", 0.050680 AS "sv_1", -0.022373 AS "sv_2", 0.001215 AS "sv_3", -0.037344 AS "sv_4", -0.026366 AS "sv_5", 0.015505 AS "sv_6", -0.039493 AS "sv_7", -0.072133 AS "sv_8", -0.017646 AS "sv_9"
     UNION ALL
     SELECT 19 AS "sv_idx", -1.000000 AS "coeff", -0.085430 AS "sv_0", -0.044642 AS "sv_1", -0.004050 AS "sv_2", -0.009113 AS "sv_3", -0.002945 AS "sv_4", 0.007767 AS "sv_5", 0.022869 AS "sv_6", -0.039493 AS "sv_7", -0.061176 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 20 AS "sv_idx", 1.000000 AS "coeff", 0.045341 AS "sv_0", 0.050680 AS "sv_1", 0.060618 AS "sv_2", 0.031065 AS "sv_3", 0.028702 AS "sv_4", -0.047347 AS "sv_5", -0.054446 AS "sv_6", 0.071210 AS "sv_7", 0.133597 AS "sv_8", 0.135612 AS "sv_9"
     UNION ALL
     SELECT 21 AS "sv_idx", 1.000000 AS "coeff", -0.063635 AS "sv_0", -0.044642 AS "sv_1", 0.035829 AS "sv_2", -0.022885 AS "sv_3", -0.030464 AS "sv_4", -0.018850 AS "sv_5", -0.006584 AS "sv_6", -0.002592 AS "sv_7", -0.025953 AS "sv_8", -0.054925 AS "sv_9"
     UNION ALL
     SELECT 22 AS "sv_idx", 1.000000 AS "coeff", -0.067268 AS "sv_0", 0.050680 AS "sv_1", -0.012673 AS "sv_2", -0.040099 AS "sv_3", -0.015328 AS "sv_4", 0.004636 AS "sv_5", -0.058127 AS "sv_6", 0.034309 AS "sv_7", 0.019196 AS "sv_8", -0.034215 AS "sv_9"
     UNION ALL
     SELECT 23 AS "sv_idx", 1.000000 AS "coeff", -0.107226 AS "sv_0", -0.044642 AS "sv_1", -0.077342 AS "sv_2", -0.026328 AS "sv_3", -0.089630 AS "sv_4", -0.096198 AS "sv_5", 0.026550 AS "sv_6", -0.076395 AS "sv_7", -0.042571 AS "sv_8", -0.005220 AS "sv_9"
     UNION ALL
     SELECT 24 AS "sv_idx", -1.000000 AS "coeff", -0.023677 AS "sv_0", -0.044642 AS "sv_1", 0.059541 AS "sv_2", -0.040099 AS "sv_3", -0.042848 AS "sv_4", -0.043589 AS "sv_5", 0.011824 AS "sv_6", -0.039493 AS "sv_7", -0.015999 AS "sv_8", 0.040343 AS "sv_9"
     UNION ALL
     SELECT 25 AS "sv_idx", 1.000000 AS "coeff", 0.067136 AS "sv_0", 0.050680 AS "sv_1", -0.006206 AS "sv_2", 0.063187 AS "sv_3", -0.042848 AS "sv_4", -0.095885 AS "sv_5", 0.052322 AS "sv_6", -0.076395 AS "sv_7", 0.059424 AS "sv_8", 0.052770 AS "sv_9"
     UNION ALL
     SELECT 26 AS "sv_idx", -1.000000 AS "coeff", -0.023677 AS "sv_0", -0.044642 AS "sv_1", -0.065486 AS "sv_2", -0.081413 AS "sv_3", -0.038720 AS "sv_4", -0.053610 AS "sv_5", 0.059685 AS "sv_6", -0.076395 AS "sv_7", -0.037129 AS "sv_8", -0.042499 AS "sv_9"
     UNION ALL
     SELECT 27 AS "sv_idx", 1.000000 AS "coeff", 0.034443 AS "sv_0", 0.050680 AS "sv_1", 0.125287 AS "sv_2", 0.028758 AS "sv_3", -0.053855 AS "sv_4", -0.012900 AS "sv_5", -0.102307 AS "sv_6", 0.108111 AS "sv_7", 0.000272 AS "sv_8", 0.027917 AS "sv_9"
     UNION ALL
     SELECT 28 AS "sv_idx", -1.000000 AS "coeff", 0.030811 AS "sv_0", -0.044642 AS "sv_1", -0.050396 AS "sv_2", -0.002228 AS "sv_3", -0.044223 AS "sv_4", -0.089935 AS "sv_5", 0.118591 AS "sv_6", -0.076395 AS "sv_7", -0.018114 AS "sv_8", 0.003064 AS "sv_9"
     UNION ALL
     SELECT 29 AS "sv_idx", -1.000000 AS "coeff", 0.016281 AS "sv_0", -0.044642 AS "sv_1", -0.063330 AS "sv_2", -0.057313 AS "sv_3", -0.057983 AS "sv_4", -0.048912 AS "sv_5", 0.008142 AS "sv_6", -0.039493 AS "sv_7", -0.059471 AS "sv_8", -0.067351 AS "sv_9"
     UNION ALL
     SELECT 30 AS "sv_idx", -1.000000 AS "coeff", 0.048974 AS "sv_0", 0.050680 AS "sv_1", -0.030996 AS "sv_2", -0.049291 AS "sv_3", 0.049341 AS "sv_4", -0.004132 AS "sv_5", 0.133318 AS "sv_6", -0.053516 AS "sv_7", 0.021311 AS "sv_8", 0.019633 AS "sv_9"
     UNION ALL
     SELECT 31 AS "sv_idx", 1.000000 AS "coeff", 0.012648 AS "sv_0", -0.044642 AS "sv_1", 0.022895 AS "sv_2", 0.052858 AS "sv_3", 0.008063 AS "sv_4", -0.028558 AS "sv_5", 0.037595 AS "sv_6", -0.039493 AS "sv_7", 0.054720 AS "sv_8", -0.025930 AS "sv_9"
     UNION ALL
     SELECT 32 AS "sv_idx", 1.000000 AS "coeff", -0.009147 AS "sv_0", -0.044642 AS "sv_1", 0.011039 AS "sv_2", -0.057313 AS "sv_3", -0.024960 AS "sv_4", -0.042963 AS "sv_5", 0.030232 AS "sv_6", -0.039493 AS "sv_7", 0.017036 AS "sv_8", -0.005220 AS "sv_9"
     UNION ALL
     SELECT 33 AS "sv_idx", 1.000000 AS "coeff", -0.001882 AS "sv_0", 0.050680 AS "sv_1", 0.071397 AS "sv_2", 0.097615 AS "sv_3", 0.087868 AS "sv_4", 0.075407 AS "sv_5", -0.021311 AS "sv_6", 0.071210 AS "sv_7", 0.071429 AS "sv_8", 0.023775 AS "sv_9"
     UNION ALL
     SELECT 34 AS "sv_idx", -1.000000 AS "coeff", -0.001882 AS "sv_0", 0.050680 AS "sv_1", 0.014272 AS "sv_2", -0.074527 AS "sv_3", 0.002559 AS "sv_4", 0.006202 AS "sv_5", -0.013948 AS "sv_6", -0.002592 AS "sv_7", 0.019196 AS "sv_8", 0.003064 AS "sv_9"
     UNION ALL
     SELECT 35 AS "sv_idx", -1.000000 AS "coeff", 0.005383 AS "sv_0", 0.050680 AS "sv_1", -0.008362 AS "sv_2", 0.021872 AS "sv_3", 0.054845 AS "sv_4", 0.073215 AS "sv_5", -0.024993 AS "sv_6", 0.034309 AS "sv_7", 0.012551 AS "sv_8", 0.094191 AS "sv_9"
     UNION ALL
     SELECT 36 AS "sv_idx", -1.000000 AS "coeff", -0.099961 AS "sv_0", -0.044642 AS "sv_1", -0.067641 AS "sv_2", -0.108956 AS "sv_3", -0.074494 AS "sv_4", -0.072712 AS "sv_5", 0.015505 AS "sv_6", -0.039493 AS "sv_7", -0.049872 AS "sv_8", -0.009362 AS "sv_9"
     UNION ALL
     SELECT 37 AS "sv_idx", -1.000000 AS "coeff", -0.060003 AS "sv_0", 0.050680 AS "sv_1", -0.010517 AS "sv_2", -0.014863 AS "sv_3", -0.049727 AS "sv_4", -0.023547 AS "sv_5", -0.058127 AS "sv_6", 0.015858 AS "sv_7", -0.009919 AS "sv_8", -0.034215 AS "sv_9"
     UNION ALL
     SELECT 38 AS "sv_idx", -1.000000 AS "coeff", 0.019913 AS "sv_0", -0.044642 AS "sv_1", -0.023451 AS "sv_2", -0.071085 AS "sv_3", 0.020446 AS "sv_4", -0.010082 AS "sv_5", 0.118591 AS "sv_6", -0.076395 AS "sv_7", -0.042571 AS "sv_8", 0.073480 AS "sv_9"
     UNION ALL
     SELECT 39 AS "sv_idx", 1.000000 AS "coeff", 0.045341 AS "sv_0", 0.050680 AS "sv_1", 0.068163 AS "sv_2", 0.008101 AS "sv_3", -0.016704 AS "sv_4", 0.004636 AS "sv_5", -0.076536 AS "sv_6", 0.071210 AS "sv_7", 0.032432 AS "sv_8", -0.017646 AS "sv_9"
     UNION ALL
     SELECT 40 AS "sv_idx", -1.000000 AS "coeff", 0.027178 AS "sv_0", 0.050680 AS "sv_1", -0.035307 AS "sv_2", 0.032201 AS "sv_3", -0.011201 AS "sv_4", 0.001504 AS "sv_5", -0.010266 AS "sv_6", -0.002592 AS "sv_7", -0.014960 AS "sv_8", -0.050783 AS "sv_9"
     UNION ALL
     SELECT 41 AS "sv_idx", 1.000000 AS "coeff", -0.056370 AS "sv_0", -0.044642 AS "sv_1", -0.011595 AS "sv_2", -0.033213 AS "sv_3", -0.046975 AS "sv_4", -0.047660 AS "sv_5", 0.004460 AS "sv_6", -0.039493 AS "sv_7", -0.007977 AS "sv_8", -0.088062 AS "sv_9"
     UNION ALL
     SELECT 42 AS "sv_idx", 1.000000 AS "coeff", -0.078165 AS "sv_0", -0.044642 AS "sv_1", -0.073030 AS "sv_2", -0.057313 AS "sv_3", -0.084126 AS "sv_4", -0.074277 AS "sv_5", -0.024993 AS "sv_6", -0.039493 AS "sv_7", -0.018114 AS "sv_8", -0.083920 AS "sv_9"
     UNION ALL
     SELECT 43 AS "sv_idx", -1.000000 AS "coeff", 0.067136 AS "sv_0", 0.050680 AS "sv_1", -0.041774 AS "sv_2", 0.011544 AS "sv_3", 0.002559 AS "sv_4", 0.005889 AS "sv_5", 0.041277 AS "sv_6", -0.039493 AS "sv_7", -0.059471 AS "sv_8", -0.021788 AS "sv_9"
     UNION ALL
     SELECT 44 AS "sv_idx", -1.000000 AS "coeff", -0.041840 AS "sv_0", 0.050680 AS "sv_1", 0.014272 AS "sv_2", -0.005670 AS "sv_3", -0.012577 AS "sv_4", 0.006202 AS "sv_5", -0.072854 AS "sv_6", 0.071210 AS "sv_7", 0.035459 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 45 AS "sv_idx", 1.000000 AS "coeff", 0.034443 AS "sv_0", -0.044642 AS "sv_1", -0.007284 AS "sv_2", 0.014987 AS "sv_3", -0.044223 AS "sv_4", -0.037326 AS "sv_5", -0.002903 AS "sv_6", -0.039493 AS "sv_7", -0.021395 AS "sv_8", 0.007207 AS "sv_9"
     UNION ALL
     SELECT 46 AS "sv_idx", 1.000000 AS "coeff", 0.059871 AS "sv_0", 0.050680 AS "sv_1", 0.016428 AS "sv_2", 0.028758 AS "sv_3", -0.041472 AS "sv_4", -0.029184 AS "sv_5", -0.028674 AS "sv_6", -0.002592 AS "sv_7", -0.002398 AS "sv_8", -0.021788 AS "sv_9"
     UNION ALL
     SELECT 47 AS "sv_idx", -1.000000 AS "coeff", -0.052738 AS "sv_0", -0.044642 AS "sv_1", -0.009439 AS "sv_2", -0.005670 AS "sv_3", 0.039710 AS "sv_4", 0.044719 AS "sv_5", 0.026550 AS "sv_6", -0.002592 AS "sv_7", -0.018114 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 48 AS "sv_idx", -1.000000 AS "coeff", -0.009147 AS "sv_0", -0.044642 AS "sv_1", -0.015906 AS "sv_2", 0.070072 AS "sv_3", 0.012191 AS "sv_4", 0.022172 AS "sv_5", 0.015505 AS "sv_6", -0.002592 AS "sv_7", -0.033246 AS "sv_8", 0.048628 AS "sv_9"
     UNION ALL
     SELECT 49 AS "sv_idx", 1.000000 AS "coeff", -0.049105 AS "sv_0", -0.044642 AS "sv_1", 0.025051 AS "sv_2", 0.008101 AS "sv_3", 0.020446 AS "sv_4", 0.017788 AS "sv_5", 0.052322 AS "sv_6", -0.039493 AS "sv_7", -0.041176 AS "sv_8", 0.007207 AS "sv_9"
     UNION ALL
     SELECT 50 AS "sv_idx", 1.000000 AS "coeff", -0.041840 AS "sv_0", -0.044642 AS "sv_1", -0.049318 AS "sv_2", -0.036656 AS "sv_3", -0.007073 AS "sv_4", -0.022608 AS "sv_5", 0.085456 AS "sv_6", -0.039493 AS "sv_7", -0.066490 AS "sv_8", 0.007207 AS "sv_9"
     UNION ALL
     SELECT 51 AS "sv_idx", -1.000000 AS "coeff", -0.041840 AS "sv_0", -0.044642 AS "sv_1", 0.041218 AS "sv_2", -0.026328 AS "sv_3", -0.031840 AS "sv_4", -0.030437 AS "sv_5", -0.036038 AS "sv_6", 0.002943 AS "sv_7", 0.033654 AS "sv_8", -0.017646 AS "sv_9"
     UNION ALL
     SELECT 52 AS "sv_idx", -1.000000 AS "coeff", -0.027310 AS "sv_0", -0.044642 AS "sv_1", -0.063330 AS "sv_2", -0.050427 AS "sv_3", -0.089630 AS "sv_4", -0.104340 AS "sv_5", 0.052322 AS "sv_6", -0.076395 AS "sv_7", -0.056153 AS "sv_8", -0.067351 AS "sv_9"
     UNION ALL
     SELECT 53 AS "sv_idx", 1.000000 AS "coeff", 0.041708 AS "sv_0", -0.044642 AS "sv_1", -0.064408 AS "sv_2", 0.035644 AS "sv_3", 0.012191 AS "sv_4", -0.057994 AS "sv_5", 0.181179 AS "sv_6", -0.076395 AS "sv_7", -0.000612 AS "sv_8", -0.050783 AS "sv_9"
     UNION ALL
     SELECT 54 AS "sv_idx", -1.000000 AS "coeff", -0.070900 AS "sv_0", -0.044642 AS "sv_1", -0.004050 AS "sv_2", -0.040099 AS "sv_3", -0.066239 AS "sv_4", -0.078662 AS "sv_5", 0.052322 AS "sv_6", -0.076395 AS "sv_7", -0.051404 AS "sv_8", -0.034215 AS "sv_9"
     UNION ALL
     SELECT 55 AS "sv_idx", -1.000000 AS "coeff", -0.027310 AS "sv_0", 0.050680 AS "sv_1", -0.007284 AS "sv_2", -0.040099 AS "sv_3", -0.011201 AS "sv_4", -0.013840 AS "sv_5", 0.059685 AS "sv_6", -0.039493 AS "sv_7", -0.082379 AS "sv_8", -0.025930 AS "sv_9"
     UNION ALL
     SELECT 56 AS "sv_idx", -1.000000 AS "coeff", 0.067136 AS "sv_0", 0.050680 AS "sv_1", -0.025607 AS "sv_2", -0.040099 AS "sv_3", -0.063487 AS "sv_4", -0.059873 AS "sv_5", -0.002903 AS "sv_6", -0.039493 AS "sv_7", -0.019198 AS "sv_8", 0.011349 AS "sv_9"
     UNION ALL
     SELECT 57 AS "sv_idx", -1.000000 AS "coeff", 0.041708 AS "sv_0", 0.050680 AS "sv_1", -0.014828 AS "sv_2", -0.017135 AS "sv_3", -0.005697 AS "sv_4", 0.008394 AS "sv_5", -0.013948 AS "sv_6", -0.001854 AS "sv_7", -0.011897 AS "sv_8", 0.003064 AS "sv_9"
     UNION ALL
     SELECT 58 AS "sv_idx", 1.000000 AS "coeff", 0.038076 AS "sv_0", 0.050680 AS "sv_1", -0.029918 AS "sv_2", -0.040099 AS "sv_3", -0.033216 AS "sv_4", -0.024174 AS "sv_5", -0.010266 AS "sv_6", -0.002592 AS "sv_7", -0.012909 AS "sv_8", 0.003064 AS "sv_9"
     UNION ALL
     SELECT 59 AS "sv_idx", 1.000000 AS "coeff", 0.016281 AS "sv_0", -0.044642 AS "sv_1", -0.046085 AS "sv_2", -0.005670 AS "sv_3", -0.075870 AS "sv_4", -0.061438 AS "sv_5", -0.013948 AS "sv_6", -0.039493 AS "sv_7", -0.051404 AS "sv_8", 0.019633 AS "sv_9"
     UNION ALL
     SELECT 60 AS "sv_idx", -1.000000 AS "coeff", -0.001882 AS "sv_0", -0.044642 AS "sv_1", -0.069797 AS "sv_2", -0.012556 AS "sv_3", -0.000193 AS "sv_4", -0.009143 AS "sv_5", 0.070730 AS "sv_6", -0.039493 AS "sv_7", -0.062917 AS "sv_8", 0.040343 AS "sv_9"
     UNION ALL
     SELECT 61 AS "sv_idx", 1.000000 AS "coeff", -0.001882 AS "sv_0", -0.044642 AS "sv_1", 0.033673 AS "sv_2", 0.125158 AS "sv_3", 0.024574 AS "sv_4", 0.026243 AS "sv_5", -0.010266 AS "sv_6", -0.002592 AS "sv_7", 0.026717 AS "sv_8", 0.061054 AS "sv_9"
     UNION ALL
     SELECT 62 AS "sv_idx", 1.000000 AS "coeff", 0.063504 AS "sv_0", 0.050680 AS "sv_1", -0.004050 AS "sv_2", -0.012556 AS "sv_3", 0.103003 AS "sv_4", 0.048790 AS "sv_5", 0.056003 AS "sv_6", -0.002592 AS "sv_7", 0.084492 AS "sv_8", -0.017646 AS "sv_9"
     UNION ALL
     SELECT 63 AS "sv_idx", -1.000000 AS "coeff", 0.012648 AS "sv_0", 0.050680 AS "sv_1", -0.020218 AS "sv_2", -0.002228 AS "sv_3", 0.038334 AS "sv_4", 0.053174 AS "sv_5", -0.006584 AS "sv_6", 0.034309 AS "sv_7", -0.005142 AS "sv_8", -0.009362 AS "sv_9"
     UNION ALL
     SELECT 64 AS "sv_idx", -1.000000 AS "coeff", 0.012648 AS "sv_0", 0.050680 AS "sv_1", 0.002417 AS "sv_2", 0.056301 AS "sv_3", 0.027326 AS "sv_4", 0.017162 AS "sv_5", 0.041277 AS "sv_6", -0.039493 AS "sv_7", 0.003709 AS "sv_8", 0.073480 AS "sv_9"
     UNION ALL
     SELECT 65 AS "sv_idx", -1.000000 AS "coeff", -0.009147 AS "sv_0", 0.050680 AS "sv_1", -0.030996 AS "sv_2", -0.026328 AS "sv_3", -0.011201 AS "sv_4", -0.001001 AS "sv_5", -0.021311 AS "sv_6", -0.002592 AS "sv_7", 0.006207 AS "sv_8", 0.027917 AS "sv_9"
     UNION ALL
     SELECT 66 AS "sv_idx", 1.000000 AS "coeff", -0.030942 AS "sv_0", 0.050680 AS "sv_1", 0.028284 AS "sv_2", 0.070072 AS "sv_3", -0.126781 AS "sv_4", -0.106845 AS "sv_5", -0.054446 AS "sv_6", -0.047981 AS "sv_7", -0.030748 AS "sv_8", 0.015491 AS "sv_9"
     UNION ALL
     SELECT 67 AS "sv_idx", 1.000000 AS "coeff", -0.096328 AS "sv_0", -0.044642 AS "sv_1", -0.036385 AS "sv_2", -0.074527 AS "sv_3", -0.038720 AS "sv_4", -0.027618 AS "sv_5", 0.015505 AS "sv_6", -0.039493 AS "sv_7", -0.074093 AS "sv_8", -0.001078 AS "sv_9"
     UNION ALL
     SELECT 68 AS "sv_idx", 1.000000 AS "coeff", 0.005383 AS "sv_0", -0.044642 AS "sv_1", -0.057941 AS "sv_2", -0.022885 AS "sv_3", -0.067615 AS "sv_4", -0.068328 AS "sv_5", -0.054446 AS "sv_6", -0.002592 AS "sv_7", 0.042897 AS "sv_8", -0.083920 AS "sv_9"
     UNION ALL
     SELECT 69 AS "sv_idx", -1.000000 AS "coeff", -0.103593 AS "sv_0", -0.044642 AS "sv_1", -0.037463 AS "sv_2", -0.026328 AS "sv_3", 0.002559 AS "sv_4", 0.019980 AS "sv_5", 0.011824 AS "sv_6", -0.002592 AS "sv_7", -0.068332 AS "sv_8", -0.025930 AS "sv_9"
     UNION ALL
     SELECT 70 AS "sv_idx", -1.000000 AS "coeff", 0.012648 AS "sv_0", 0.050680 AS "sv_1", -0.022373 AS "sv_2", -0.029770 AS "sv_3", 0.010815 AS "sv_4", 0.028435 AS "sv_5", -0.021311 AS "sv_6", 0.034309 AS "sv_7", -0.006081 AS "sv_8", -0.001078 AS "sv_9"
     UNION ALL
     SELECT 71 AS "sv_idx", -1.000000 AS "coeff", -0.016412 AS "sv_0", -0.044642 AS "sv_1", -0.035307 AS "sv_2", -0.026328 AS "sv_3", 0.032830 AS "sv_4", 0.017162 AS "sv_5", 0.100183 AS "sv_6", -0.039493 AS "sv_7", -0.070209 AS "sv_8", -0.079778 AS "sv_9"
     UNION ALL
     SELECT 72 AS "sv_idx", 1.000000 AS "coeff", -0.038207 AS "sv_0", -0.044642 AS "sv_1", 0.009961 AS "sv_2", -0.046985 AS "sv_3", -0.059359 AS "sv_4", -0.052983 AS "sv_5", -0.010266 AS "sv_6", -0.039493 AS "sv_7", -0.015999 AS "sv_8", -0.042499 AS "sv_9"
     UNION ALL
     SELECT 73 AS "sv_idx", -1.000000 AS "coeff", 0.001751 AS "sv_0", -0.044642 AS "sv_1", -0.039618 AS "sv_2", -0.100934 AS "sv_3", -0.029088 AS "sv_4", -0.030124 AS "sv_5", 0.044958 AS "sv_6", -0.050195 AS "sv_7", -0.068332 AS "sv_8", -0.129483 AS "sv_9"
     UNION ALL
     SELECT 74 AS "sv_idx", -1.000000 AS "coeff", -0.070900 AS "sv_0", 0.050680 AS "sv_1", -0.075186 AS "sv_2", -0.040099 AS "sv_3", -0.051103 AS "sv_4", -0.015092 AS "sv_5", -0.039719 AS "sv_6", -0.002592 AS "sv_7", -0.096435 AS "sv_8", -0.034215 AS "sv_9"
     UNION ALL
     SELECT 75 AS "sv_idx", -1.000000 AS "coeff", -0.052738 AS "sv_0", 0.050680 AS "sv_1", -0.040696 AS "sv_2", -0.067642 AS "sv_3", -0.031840 AS "sv_4", -0.037013 AS "sv_5", 0.037595 AS "sv_6", -0.039493 AS "sv_7", -0.034522 AS "sv_8", 0.069338 AS "sv_9"
     UNION ALL
     SELECT 76 AS "sv_idx", -1.000000 AS "coeff", -0.045472 AS "sv_0", -0.044642 AS "sv_1", -0.048241 AS "sv_2", -0.019442 AS "sv_3", -0.000193 AS "sv_4", -0.016032 AS "sv_5", 0.067048 AS "sv_6", -0.039493 AS "sv_7", -0.024795 AS "sv_8", 0.019633 AS "sv_9"
     UNION ALL
     SELECT 77 AS "sv_idx", -1.000000 AS "coeff", 0.012648 AS "sv_0", -0.044642 AS "sv_1", -0.025607 AS "sv_2", -0.040099 AS "sv_3", -0.030464 AS "sv_4", -0.045155 AS "sv_5", 0.078093 AS "sv_6", -0.076395 AS "sv_7", -0.072133 AS "sv_8", 0.011349 AS "sv_9"
     UNION ALL
     SELECT 78 AS "sv_idx", -1.000000 AS "coeff", -0.020045 AS "sv_0", -0.044642 AS "sv_1", 0.004572 AS "sv_2", 0.097615 AS "sv_3", 0.005311 AS "sv_4", -0.020729 AS "sv_5", 0.063367 AS "sv_6", -0.039493 AS "sv_7", 0.012551 AS "sv_8", 0.011349 AS "sv_9"
     UNION ALL
     SELECT 79 AS "sv_idx", -1.000000 AS "coeff", -0.049105 AS "sv_0", -0.044642 AS "sv_1", -0.064408 AS "sv_2", -0.102070 AS "sv_3", -0.002945 AS "sv_4", -0.015406 AS "sv_5", 0.063367 AS "sv_6", -0.047243 AS "sv_7", -0.033246 AS "sv_8", -0.054925 AS "sv_9"
     UNION ALL
     SELECT 80 AS "sv_idx", -1.000000 AS "coeff", -0.078165 AS "sv_0", -0.044642 AS "sv_1", -0.016984 AS "sv_2", -0.012556 AS "sv_3", -0.000193 AS "sv_4", -0.013527 AS "sv_5", 0.070730 AS "sv_6", -0.039493 AS "sv_7", -0.041176 AS "sv_8", -0.092204 AS "sv_9"
     UNION ALL
     SELECT 81 AS "sv_idx", 1.000000 AS "coeff", -0.070900 AS "sv_0", -0.044642 AS "sv_1", -0.057941 AS "sv_2", -0.081413 AS "sv_3", -0.045599 AS "sv_4", -0.028871 AS "sv_5", -0.043401 AS "sv_6", -0.002592 AS "sv_7", 0.001148 AS "sv_8", -0.005220 AS "sv_9"
     UNION ALL
     SELECT 82 AS "sv_idx", -1.000000 AS "coeff", 0.056239 AS "sv_0", 0.050680 AS "sv_1", 0.009961 AS "sv_2", 0.049415 AS "sv_3", -0.004321 AS "sv_4", -0.012274 AS "sv_5", -0.043401 AS "sv_6", 0.034309 AS "sv_7", 0.060791 AS "sv_8", 0.032059 AS "sv_9"
     UNION ALL
     SELECT 83 AS "sv_idx", 1.000000 AS "coeff", -0.027310 AS "sv_0", -0.044642 AS "sv_1", 0.088642 AS "sv_2", -0.025191 AS "sv_3", 0.021822 AS "sv_4", 0.042527 AS "sv_5", -0.032356 AS "sv_6", 0.034309 AS "sv_7", 0.002861 AS "sv_8", 0.077622 AS "sv_9"
     UNION ALL
     SELECT 84 AS "sv_idx", -1.000000 AS "coeff", 0.001751 AS "sv_0", 0.050680 AS "sv_1", -0.005128 AS "sv_2", -0.012556 AS "sv_3", -0.015328 AS "sv_4", -0.013840 AS "sv_5", 0.008142 AS "sv_6", -0.039493 AS "sv_7", -0.006081 AS "sv_8", -0.067351 AS "sv_9"
     UNION ALL
     SELECT 85 AS "sv_idx", -1.000000 AS "coeff", -0.001882 AS "sv_0", -0.044642 AS "sv_1", -0.064408 AS "sv_2", 0.011544 AS "sv_3", 0.027326 AS "sv_4", 0.037517 AS "sv_5", -0.013948 AS "sv_6", 0.034309 AS "sv_7", 0.011785 AS "sv_8", -0.054925 AS "sv_9"
     UNION ALL
     SELECT 86 AS "sv_idx", -1.000000 AS "coeff", 0.016281 AS "sv_0", -0.044642 AS "sv_1", 0.017506 AS "sv_2", -0.022885 AS "sv_3", 0.060349 AS "sv_4", 0.044406 AS "sv_5", 0.030232 AS "sv_6", -0.002592 AS "sv_7", 0.037236 AS "sv_8", -0.001078 AS "sv_9"
     UNION ALL
     SELECT 87 AS "sv_idx", -1.000000 AS "coeff", 0.016281 AS "sv_0", 0.050680 AS "sv_1", -0.045007 AS "sv_2", 0.063187 AS "sv_3", 0.010815 AS "sv_4", -0.000374 AS "sv_5", 0.063367 AS "sv_6", -0.039493 AS "sv_7", -0.030748 AS "sv_8", 0.036201 AS "sv_9"
     UNION ALL
     SELECT 88 AS "sv_idx", 1.000000 AS "coeff", -0.092695 AS "sv_0", -0.044642 AS "sv_1", 0.028284 AS "sv_2", -0.015999 AS "sv_3", 0.036958 AS "sv_4", 0.024991 AS "sv_5", 0.056003 AS "sv_6", -0.039493 AS "sv_7", -0.005142 AS "sv_8", -0.001078 AS "sv_9"
     UNION ALL
     SELECT 89 AS "sv_idx", 1.000000 AS "coeff", 0.059871 AS "sv_0", 0.050680 AS "sv_1", 0.041218 AS "sv_2", 0.011544 AS "sv_3", 0.041086 AS "sv_4", 0.070710 AS "sv_5", -0.036038 AS "sv_6", 0.034309 AS "sv_7", -0.010903 AS "sv_8", -0.030072 AS "sv_9"
     UNION ALL
     SELECT 90 AS "sv_idx", -1.000000 AS "coeff", -0.027310 AS "sv_0", -0.044642 AS "sv_1", 0.064930 AS "sv_2", -0.002228 AS "sv_3", -0.024960 AS "sv_4", -0.017284 AS "sv_5", 0.022869 AS "sv_6", -0.039493 AS "sv_7", -0.061176 AS "sv_8", -0.063209 AS "sv_9"
     UNION ALL
     SELECT 91 AS "sv_idx", -1.000000 AS "coeff", 0.023546 AS "sv_0", 0.050680 AS "sv_1", -0.032073 AS "sv_2", -0.040099 AS "sv_3", -0.031840 AS "sv_4", -0.021669 AS "sv_5", -0.013948 AS "sv_6", -0.002592 AS "sv_7", -0.010903 AS "sv_8", 0.019633 AS "sv_9"
     UNION ALL
     SELECT 92 AS "sv_idx", 1.000000 AS "coeff", -0.096328 AS "sv_0", -0.044642 AS "sv_1", -0.076264 AS "sv_2", -0.043542 AS "sv_3", -0.045599 AS "sv_4", -0.034821 AS "sv_5", 0.008142 AS "sv_6", -0.039493 AS "sv_7", -0.059471 AS "sv_8", -0.083920 AS "sv_9"
     UNION ALL
     SELECT 93 AS "sv_idx", 1.000000 AS "coeff", 0.019913 AS "sv_0", 0.050680 AS "sv_1", 0.045529 AS "sv_2", 0.029894 AS "sv_3", -0.062111 AS "sv_4", -0.055802 AS "sv_5", -0.072854 AS "sv_6", 0.026929 AS "sv_7", 0.045604 AS "sv_8", 0.040343 AS "sv_9"
     UNION ALL
     SELECT 94 AS "sv_idx", -1.000000 AS "coeff", 0.038076 AS "sv_0", 0.050680 AS "sv_1", -0.009439 AS "sv_2", 0.002351 AS "sv_3", 0.001183 AS "sv_4", 0.037517 AS "sv_5", -0.054446 AS "sv_6", 0.050176 AS "sv_7", -0.025953 AS "sv_8", 0.106617 AS "sv_9"
     UNION ALL
     SELECT 95 AS "sv_idx", -0.500000 AS "coeff", 0.041708 AS "sv_0", 0.050680 AS "sv_1", -0.032073 AS "sv_2", -0.022885 AS "sv_3", -0.049727 AS "sv_4", -0.040144 AS "sv_5", 0.030232 AS "sv_6", -0.039493 AS "sv_7", -0.126097 AS "sv_8", 0.015491 AS "sv_9"
     UNION ALL
     SELECT 96 AS "sv_idx", -1.000000 AS "coeff", 0.019913 AS "sv_0", -0.044642 AS "sv_1", 0.004572 AS "sv_2", -0.026328 AS "sv_3", 0.023198 AS "sv_4", 0.010273 AS "sv_5", 0.067048 AS "sv_6", -0.039493 AS "sv_7", -0.023647 AS "sv_8", -0.046641 AS "sv_9"
     UNION ALL
     SELECT 97 AS "sv_idx", 1.000000 AS "coeff", -0.085430 AS "sv_0", -0.044642 AS "sv_1", 0.020739 AS "sv_2", -0.026328 AS "sv_3", 0.005311 AS "sv_4", 0.019667 AS "sv_5", -0.002903 AS "sv_6", -0.002592 AS "sv_7", -0.023647 AS "sv_8", 0.003064 AS "sv_9"
     UNION ALL
     SELECT 98 AS "sv_idx", 1.000000 AS "coeff", 0.019913 AS "sv_0", 0.050680 AS "sv_1", 0.014272 AS "sv_2", 0.063187 AS "sv_3", 0.014942 AS "sv_4", 0.020293 AS "sv_5", -0.047082 AS "sv_6", 0.034309 AS "sv_7", 0.046662 AS "sv_8", 0.090049 AS "sv_9"
     UNION ALL
     SELECT 99 AS "sv_idx", 1.000000 AS "coeff", 0.023546 AS "sv_0", -0.044642 AS "sv_1", 0.110198 AS "sv_2", 0.063187 AS "sv_3", 0.013567 AS "sv_4", -0.032942 AS "sv_5", -0.024993 AS "sv_6", 0.020655 AS "sv_7", 0.099241 AS "sv_8", 0.023775 AS "sv_9"
     UNION ALL
     SELECT 100 AS "sv_idx", 1.000000 AS "coeff", 0.048974 AS "sv_0", 0.050680 AS "sv_1", 0.058463 AS "sv_2", 0.070072 AS "sv_3", 0.013567 AS "sv_4", 0.020607 AS "sv_5", -0.021311 AS "sv_6", 0.034309 AS "sv_7", 0.022004 AS "sv_8", 0.027917 AS "sv_9"
     UNION ALL
     SELECT 101 AS "sv_idx", 1.000000 AS "coeff", 0.059871 AS "sv_0", -0.044642 AS "sv_1", -0.021295 AS "sv_2", 0.087287 AS "sv_3", 0.045213 AS "sv_4", 0.031567 AS "sv_5", -0.047082 AS "sv_6", 0.071210 AS "sv_7", 0.079122 AS "sv_8", 0.135612 AS "sv_9"
     UNION ALL
     SELECT 102 AS "sv_idx", 1.000000 AS "coeff", 0.009016 AS "sv_0", -0.044642 AS "sv_1", 0.016428 AS "sv_2", 0.004658 AS "sv_3", 0.009439 AS "sv_4", 0.010586 AS "sv_5", -0.028674 AS "sv_6", 0.034309 AS "sv_7", 0.038968 AS "sv_8", 0.119043 AS "sv_9"
     UNION ALL
     SELECT 103 AS "sv_idx", 1.000000 AS "coeff", -0.063635 AS "sv_0", 0.050680 AS "sv_1", 0.096186 AS "sv_2", 0.104501 AS "sv_3", -0.002945 AS "sv_4", -0.004759 AS "sv_5", -0.006584 AS "sv_6", -0.002592 AS "sv_7", 0.022688 AS "sv_8", 0.073480 AS "sv_9"
     UNION ALL
     SELECT 104 AS "sv_idx", -1.000000 AS "coeff", -0.074533 AS "sv_0", -0.044642 AS "sv_1", 0.043373 AS "sv_2", -0.033213 AS "sv_3", 0.012191 AS "sv_4", 0.000252 AS "sv_5", 0.063367 AS "sv_6", -0.039493 AS "sv_7", -0.027129 AS "sv_8", -0.046641 AS "sv_9"
     UNION ALL
     SELECT 105 AS "sv_idx", 1.000000 AS "coeff", -0.005515 AS "sv_0", -0.044642 AS "sv_1", 0.056307 AS "sv_2", -0.036656 AS "sv_3", -0.048351 AS "sv_4", -0.042963 AS "sv_5", -0.072854 AS "sv_6", 0.037999 AS "sv_7", 0.050782 AS "sv_8", 0.056912 AS "sv_9"
     UNION ALL
     SELECT 106 AS "sv_idx", -1.000000 AS "coeff", -0.092695 AS "sv_0", -0.044642 AS "sv_1", -0.081653 AS "sv_2", -0.057313 AS "sv_3", -0.060735 AS "sv_4", -0.068015 AS "sv_5", 0.048640 AS "sv_6", -0.076395 AS "sv_7", -0.066490 AS "sv_8", -0.021788 AS "sv_9"
     UNION ALL
     SELECT 107 AS "sv_idx", 1.000000 AS "coeff", 0.005383 AS "sv_0", -0.044642 AS "sv_1", 0.049840 AS "sv_2", 0.097615 AS "sv_3", -0.015328 AS "sv_4", -0.016345 AS "sv_5", -0.006584 AS "sv_6", -0.002592 AS "sv_7", 0.017036 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 108 AS "sv_idx", 1.000000 AS "coeff", 0.034443 AS "sv_0", 0.050680 AS "sv_1", 0.111276 AS "sv_2", 0.076958 AS "sv_3", -0.031840 AS "sv_4", -0.033881 AS "sv_5", -0.021311 AS "sv_6", -0.002592 AS "sv_7", 0.028020 AS "sv_8", 0.073480 AS "sv_9"
     UNION ALL
     SELECT 109 AS "sv_idx", 1.000000 AS "coeff", 0.023546 AS "sv_0", -0.044642 AS "sv_1", 0.061696 AS "sv_2", 0.052858 AS "sv_3", -0.034592 AS "sv_4", -0.048912 AS "sv_5", -0.028674 AS "sv_6", -0.002592 AS "sv_7", 0.054720 AS "sv_8", -0.005220 AS "sv_9"
     UNION ALL
     SELECT 110 AS "sv_idx", 1.000000 AS "coeff", -0.027310 AS "sv_0", -0.044642 AS "sv_1", 0.047685 AS "sv_2", -0.046985 AS "sv_3", 0.034206 AS "sv_4", 0.057245 AS "sv_5", -0.080217 AS "sv_6", 0.130252 AS "sv_7", 0.045067 AS "sv_8", 0.131470 AS "sv_9"
     UNION ALL
     SELECT 111 AS "sv_idx", 1.000000 AS "coeff", 0.041708 AS "sv_0", 0.050680 AS "sv_1", 0.012117 AS "sv_2", 0.039087 AS "sv_3", 0.054845 AS "sv_4", 0.044406 AS "sv_5", 0.004460 AS "sv_6", -0.002592 AS "sv_7", 0.045604 AS "sv_8", -0.001078 AS "sv_9"
     UNION ALL
     SELECT 112 AS "sv_idx", -1.000000 AS "coeff", -0.030942 AS "sv_0", -0.044642 AS "sv_1", 0.005650 AS "sv_2", -0.009113 AS "sv_3", 0.019070 AS "sv_4", 0.006828 AS "sv_5", 0.074412 AS "sv_6", -0.039493 AS "sv_7", -0.041176 AS "sv_8", -0.042499 AS "sv_9"
     UNION ALL
     SELECT 113 AS "sv_idx", 1.000000 AS "coeff", -0.041840 AS "sv_0", -0.044642 AS "sv_1", 0.128521 AS "sv_2", 0.063187 AS "sv_3", -0.033216 AS "sv_4", -0.032629 AS "sv_5", 0.011824 AS "sv_6", -0.039493 AS "sv_7", -0.015999 AS "sv_8", -0.050783 AS "sv_9"
     UNION ALL
     SELECT 114 AS "sv_idx", -1.000000 AS "coeff", -0.056370 AS "sv_0", -0.044642 AS "sv_1", 0.092953 AS "sv_2", -0.019442 AS "sv_3", 0.014942 AS "sv_4", 0.023425 AS "sv_5", -0.028674 AS "sv_6", 0.025453 AS "sv_7", 0.026061 AS "sv_8", 0.040343 AS "sv_9"
     UNION ALL
     SELECT 115 AS "sv_idx", 1.000000 AS "coeff", 0.023546 AS "sv_0", -0.044642 AS "sv_1", 0.070319 AS "sv_2", 0.025315 AS "sv_3", -0.034592 AS "sv_4", -0.014466 AS "sv_5", -0.032356 AS "sv_6", -0.002592 AS "sv_7", -0.019198 AS "sv_8", -0.009362 AS "sv_9"
     UNION ALL
     SELECT 116 AS "sv_idx", -1.000000 AS "coeff", 0.001751 AS "sv_0", -0.044642 AS "sv_1", -0.004050 AS "sv_2", -0.005670 AS "sv_3", -0.008449 AS "sv_4", -0.023861 AS "sv_5", 0.052322 AS "sv_6", -0.039493 AS "sv_7", -0.008943 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 117 AS "sv_idx", 1.000000 AS "coeff", -0.034575 AS "sv_0", 0.050680 AS "sv_1", -0.000817 AS "sv_2", 0.070072 AS "sv_3", 0.039710 AS "sv_4", 0.066952 AS "sv_5", -0.065491 AS "sv_6", 0.108111 AS "sv_7", 0.026717 AS "sv_8", 0.073480 AS "sv_9"
     UNION ALL
     SELECT 118 AS "sv_idx", -1.000000 AS "coeff", -0.016412 AS "sv_0", -0.044642 AS "sv_1", -0.010517 AS "sv_2", 0.001215 AS "sv_3", -0.037344 AS "sv_4", -0.035760 AS "sv_5", 0.011824 AS "sv_6", -0.039493 AS "sv_7", -0.021395 AS "sv_8", -0.034215 AS "sv_9"
     UNION ALL
     SELECT 119 AS "sv_idx", -1.000000 AS "coeff", -0.009147 AS "sv_0", -0.044642 AS "sv_1", -0.062252 AS "sv_2", -0.074527 AS "sv_3", -0.023584 AS "sv_4", -0.013214 AS "sv_5", 0.004460 AS "sv_6", -0.039493 AS "sv_7", -0.035816 AS "sv_8", -0.046641 AS "sv_9"
     UNION ALL
     SELECT 120 AS "sv_idx", -1.000000 AS "coeff", -0.041840 AS "sv_0", -0.044642 AS "sv_1", -0.066563 AS "sv_2", -0.046985 AS "sv_3", -0.037344 AS "sv_4", -0.043276 AS "sv_5", 0.048640 AS "sv_6", -0.039493 AS "sv_7", -0.056153 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 121 AS "sv_idx", 1.000000 AS "coeff", 0.001751 AS "sv_0", 0.050680 AS "sv_1", 0.059541 AS "sv_2", -0.002228 AS "sv_3", 0.061725 AS "sv_4", 0.063195 AS "sv_5", -0.058127 AS "sv_6", 0.108111 AS "sv_7", 0.068986 AS "sv_8", 0.127328 AS "sv_9"
     UNION ALL
     SELECT 122 AS "sv_idx", 1.000000 AS "coeff", 0.041708 AS "sv_0", 0.050680 AS "sv_1", 0.071397 AS "sv_2", 0.008101 AS "sv_3", 0.038334 AS "sv_4", 0.015909 AS "sv_5", -0.017629 AS "sv_6", 0.034309 AS "sv_7", 0.073407 AS "sv_8", 0.085907 AS "sv_9"
     UNION ALL
     SELECT 123 AS "sv_idx", 1.000000 AS "coeff", 0.045341 AS "sv_0", 0.050680 AS "sv_1", 0.019662 AS "sv_2", 0.039087 AS "sv_3", 0.020446 AS "sv_4", 0.025930 AS "sv_5", 0.008142 AS "sv_6", -0.002592 AS "sv_7", -0.003301 AS "sv_8", 0.019633 AS "sv_9"
     UNION ALL
     SELECT 124 AS "sv_idx", -1.000000 AS "coeff", 0.048974 AS "sv_0", -0.044642 AS "sv_1", -0.042852 AS "sv_2", -0.053870 AS "sv_3", 0.045213 AS "sv_4", 0.050042 AS "sv_5", 0.033914 AS "sv_6", -0.002592 AS "sv_7", -0.025953 AS "sv_8", -0.063209 AS "sv_9"
     UNION ALL
     SELECT 125 AS "sv_idx", 1.000000 AS "coeff", 0.016281 AS "sv_0", -0.044642 AS "sv_1", 0.023973 AS "sv_2", -0.022885 AS "sv_3", -0.024960 AS "sv_4", -0.026053 AS "sv_5", -0.032356 AS "sv_6", -0.002592 AS "sv_7", 0.037236 AS "sv_8", 0.032059 AS "sv_9"
     UNION ALL
     SELECT 126 AS "sv_idx", -1.000000 AS "coeff", -0.074533 AS "sv_0", 0.050680 AS "sv_1", -0.018062 AS "sv_2", 0.008101 AS "sv_3", -0.019456 AS "sv_4", -0.024800 AS "sv_5", -0.065491 AS "sv_6", 0.034309 AS "sv_7", 0.067318 AS "sv_8", -0.017646 AS "sv_9"
     UNION ALL
     SELECT 127 AS "sv_idx", -1.000000 AS "coeff", -0.001882 AS "sv_0", -0.044642 AS "sv_1", -0.066563 AS "sv_2", 0.001215 AS "sv_3", -0.002945 AS "sv_4", 0.003070 AS "sv_5", 0.011824 AS "sv_6", -0.002592 AS "sv_7", -0.020292 AS "sv_8", -0.025930 AS "sv_9"
     UNION ALL
     SELECT 128 AS "sv_idx", 1.000000 AS "coeff", 0.009016 AS "sv_0", -0.044642 AS "sv_1", -0.012673 AS "sv_2", 0.028758 AS "sv_3", -0.018080 AS "sv_4", -0.005072 AS "sv_5", -0.047082 AS "sv_6", 0.034309 AS "sv_7", 0.023371 AS "sv_8", -0.005220 AS "sv_9"
     UNION ALL
     SELECT 129 AS "sv_idx", -1.000000 AS "coeff", -0.034575 AS "sv_0", 0.050680 AS "sv_1", -0.055785 AS "sv_2", -0.015999 AS "sv_3", -0.009825 AS "sv_4", -0.007890 AS "sv_5", 0.037595 AS "sv_6", -0.039493 AS "sv_7", -0.052963 AS "sv_8", 0.027917 AS "sv_9"
     UNION ALL
     SELECT 130 AS "sv_idx", 1.000000 AS "coeff", 0.110727 AS "sv_0", 0.050680 AS "sv_1", 0.006728 AS "sv_2", 0.028758 AS "sv_3", -0.027712 AS "sv_4", -0.007264 AS "sv_5", -0.047082 AS "sv_6", 0.034309 AS "sv_7", 0.002004 AS "sv_8", 0.077622 AS "sv_9"
     UNION ALL
     SELECT 131 AS "sv_idx", -1.000000 AS "coeff", -0.030942 AS "sv_0", -0.044642 AS "sv_1", 0.046607 AS "sv_2", 0.014987 AS "sv_3", -0.016704 AS "sv_4", -0.047034 AS "sv_5", 0.000779 AS "sv_6", -0.002592 AS "sv_7", 0.063453 AS "sv_8", -0.025930 AS "sv_9"
     UNION ALL
     SELECT 132 AS "sv_idx", -1.000000 AS "coeff", 0.038076 AS "sv_0", 0.050680 AS "sv_1", -0.018062 AS "sv_2", 0.066629 AS "sv_3", -0.051103 AS "sv_4", -0.016658 AS "sv_5", -0.076536 AS "sv_6", 0.034309 AS "sv_7", -0.011897 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 133 AS "sv_idx", -1.000000 AS "coeff", 0.092564 AS "sv_0", -0.044642 AS "sv_1", 0.036907 AS "sv_2", 0.021872 AS "sv_3", -0.024960 AS "sv_4", -0.016658 AS "sv_5", 0.000779 AS "sv_6", -0.039493 AS "sv_7", -0.022517 AS "sv_8", -0.021788 AS "sv_9"
     UNION ALL
     SELECT 134 AS "sv_idx", -1.000000 AS "coeff", 0.067136 AS "sv_0", -0.044642 AS "sv_1", 0.003494 AS "sv_2", 0.035644 AS "sv_3", 0.049341 AS "sv_4", 0.031254 AS "sv_5", 0.070730 AS "sv_6", -0.039493 AS "sv_7", -0.000612 AS "sv_8", 0.019633 AS "sv_9"
     UNION ALL
     SELECT 135 AS "sv_idx", -1.000000 AS "coeff", 0.001751 AS "sv_0", -0.044642 AS "sv_1", -0.070875 AS "sv_2", -0.022885 AS "sv_3", -0.001569 AS "sv_4", -0.001001 AS "sv_5", 0.026550 AS "sv_6", -0.039493 AS "sv_7", -0.022517 AS "sv_8", 0.007207 AS "sv_9"
     UNION ALL
     SELECT 136 AS "sv_idx", -1.000000 AS "coeff", 0.030811 AS "sv_0", -0.044642 AS "sv_1", -0.033151 AS "sv_2", -0.022885 AS "sv_3", -0.046975 AS "sv_4", -0.081167 AS "sv_5", 0.103865 AS "sv_6", -0.076395 AS "sv_7", -0.039809 AS "sv_8", -0.054925 AS "sv_9"
     UNION ALL
     SELECT 137 AS "sv_idx", 1.000000 AS "coeff", 0.027178 AS "sv_0", 0.050680 AS "sv_1", 0.094031 AS "sv_2", 0.097615 AS "sv_3", -0.034592 AS "sv_4", -0.032002 AS "sv_5", -0.043401 AS "sv_6", -0.002592 AS "sv_7", 0.036644 AS "sv_8", 0.106617 AS "sv_9"
     UNION ALL
     SELECT 138 AS "sv_idx", 1.000000 AS "coeff", 0.012648 AS "sv_0", 0.050680 AS "sv_1", 0.035829 AS "sv_2", 0.049415 AS "sv_3", 0.053469 AS "sv_4", 0.074155 AS "sv_5", -0.069172 AS "sv_6", 0.145012 AS "sv_7", 0.045604 AS "sv_8", 0.048628 AS "sv_9"
     UNION ALL
     SELECT 139 AS "sv_idx", 1.000000 AS "coeff", 0.074401 AS "sv_0", -0.044642 AS "sv_1", 0.031517 AS "sv_2", 0.101058 AS "sv_3", 0.046589 AS "sv_4", 0.036890 AS "sv_5", 0.015505 AS "sv_6", -0.002592 AS "sv_7", 0.033654 AS "sv_8", 0.044485 AS "sv_9"
     UNION ALL
     SELECT 140 AS "sv_idx", -1.000000 AS "coeff", -0.045472 AS "sv_0", -0.044642 AS "sv_1", -0.038540 AS "sv_2", -0.026328 AS "sv_3", -0.015328 AS "sv_4", 0.000878 AS "sv_5", -0.032356 AS "sv_6", -0.002592 AS "sv_7", 0.001148 AS "sv_8", -0.038357 AS "sv_9"
     UNION ALL
     SELECT 141 AS "sv_idx", 1.000000 AS "coeff", -0.023677 AS "sv_0", 0.050680 AS "sv_1", -0.025607 AS "sv_2", 0.042529 AS "sv_3", -0.053855 AS "sv_4", -0.047660 AS "sv_5", -0.021311 AS "sv_6", -0.039493 AS "sv_7", 0.001148 AS "sv_8", 0.019633 AS "sv_9"
     UNION ALL
     SELECT 142 AS "sv_idx", -1.000000 AS "coeff", -0.027310 AS "sv_0", -0.044642 AS "sv_1", -0.066563 AS "sv_2", -0.112399 AS "sv_3", -0.049727 AS "sv_4", -0.041397 AS "sv_5", 0.000779 AS "sv_6", -0.039493 AS "sv_7", -0.035816 AS "sv_8", -0.009362 AS "sv_9"
     UNION ALL
     SELECT 143 AS "sv_idx", 1.000000 AS "coeff", 0.012648 AS "sv_0", 0.050680 AS "sv_1", 0.000261 AS "sv_2", -0.011420 AS "sv_3", 0.039710 AS "sv_4", 0.057245 AS "sv_5", -0.039719 AS "sv_6", 0.056081 AS "sv_7", 0.024055 AS "sv_8", 0.032059 AS "sv_9"
     UNION ALL
     SELECT 144 AS "sv_idx", 1.000000 AS "coeff", 0.045341 AS "sv_0", -0.044642 AS "sv_1", 0.039062 AS "sv_2", 0.045972 AS "sv_3", 0.006687 AS "sv_4", -0.024174 AS "sv_5", 0.008142 AS "sv_6", -0.012556 AS "sv_7", 0.064328 AS "sv_8", 0.056912 AS "sv_9"
     UNION ALL
     SELECT 145 AS "sv_idx", -1.000000 AS "coeff", 0.027178 AS "sv_0", -0.044642 AS "sv_1", 0.006728 AS "sv_2", 0.035644 AS "sv_3", 0.079612 AS "sv_4", 0.070710 AS "sv_5", 0.015505 AS "sv_6", 0.034309 AS "sv_7", 0.040673 AS "sv_8", 0.011349 AS "sv_9"
     UNION ALL
     SELECT 146 AS "sv_idx", 1.000000 AS "coeff", 0.034443 AS "sv_0", 0.050680 AS "sv_1", -0.009439 AS "sv_2", 0.059744 AS "sv_3", -0.035968 AS "sv_4", -0.007577 AS "sv_5", -0.076536 AS "sv_6", 0.071210 AS "sv_7", 0.011011 AS "sv_8", -0.021788 AS "sv_9"
     UNION ALL
     SELECT 147 AS "sv_idx", 1.000000 AS "coeff", 0.023546 AS "sv_0", -0.044642 AS "sv_1", 0.019662 AS "sv_2", -0.012556 AS "sv_3", 0.083740 AS "sv_4", 0.038769 AS "sv_5", 0.063367 AS "sv_6", -0.002592 AS "sv_7", 0.066051 AS "sv_8", 0.048628 AS "sv_9"
     UNION ALL
     SELECT 148 AS "sv_idx", 1.000000 AS "coeff", 0.048974 AS "sv_0", 0.050680 AS "sv_1", 0.074630 AS "sv_2", 0.066629 AS "sv_3", -0.009825 AS "sv_4", -0.002253 AS "sv_5", -0.043401 AS "sv_6", 0.034309 AS "sv_7", 0.033654 AS "sv_8", 0.019633 AS "sv_9"
     UNION ALL
     SELECT 149 AS "sv_idx", -1.000000 AS "coeff", 0.016281 AS "sv_0", 0.050680 AS "sv_1", -0.046085 AS "sv_2", 0.011544 AS "sv_3", -0.033216 AS "sv_4", -0.016032 AS "sv_5", -0.010266 AS "sv_6", -0.002592 AS "sv_7", -0.043984 AS "sv_8", -0.042499 AS "sv_9"
     UNION ALL
     SELECT 150 AS "sv_idx", -1.000000 AS "coeff", 0.041708 AS "sv_0", -0.044642 AS "sv_1", -0.032073 AS "sv_2", -0.061892 AS "sv_3", 0.079612 AS "sv_4", 0.050982 AS "sv_5", 0.056003 AS "sv_6", -0.009972 AS "sv_7", 0.045067 AS "sv_8", -0.059067 AS "sv_9"
     UNION ALL
     SELECT 151 AS "sv_idx", -1.000000 AS "coeff", -0.081798 AS "sv_0", -0.044642 AS "sv_1", -0.081653 AS "sv_2", -0.040099 AS "sv_3", 0.002559 AS "sv_4", -0.018537 AS "sv_5", 0.070730 AS "sv_6", -0.039493 AS "sv_7", -0.010903 AS "sv_8", -0.092204 AS "sv_9"
     UNION ALL
     SELECT 152 AS "sv_idx", 1.000000 AS "coeff", -0.041840 AS "sv_0", -0.044642 AS "sv_1", 0.047685 AS "sv_2", 0.059744 AS "sv_3", 0.127771 AS "sv_4", 0.128016 AS "sv_5", -0.024993 AS "sv_6", 0.108111 AS "sv_7", 0.063890 AS "sv_8", 0.040343 AS "sv_9"
     UNION ALL
     SELECT 153 AS "sv_idx", 1.000000 AS "coeff", 0.067136 AS "sv_0", -0.044642 AS "sv_1", 0.056307 AS "sv_2", 0.073515 AS "sv_3", -0.013953 AS "sv_4", -0.039205 AS "sv_5", -0.032356 AS "sv_6", -0.002592 AS "sv_7", 0.075741 AS "sv_8", 0.036201 AS "sv_9"
     UNION ALL
     SELECT 154 AS "sv_idx", 1.000000 AS "coeff", -0.052738 AS "sv_0", 0.050680 AS "sv_1", 0.098342 AS "sv_2", 0.087287 AS "sv_3", 0.060349 AS "sv_4", 0.048790 AS "sv_5", -0.058127 AS "sv_6", 0.108111 AS "sv_7", 0.084492 AS "sv_8", 0.040343 AS "sv_9"
     UNION ALL
     SELECT 155 AS "sv_idx", -1.000000 AS "coeff", 0.005383 AS "sv_0", -0.044642 AS "sv_1", 0.059541 AS "sv_2", -0.056177 AS "sv_3", 0.024574 AS "sv_4", 0.052861 AS "sv_5", -0.043401 AS "sv_6", 0.050914 AS "sv_7", -0.004222 AS "sv_8", -0.030072 AS "sv_9"
     UNION ALL
     SELECT 156 AS "sv_idx", 1.000000 AS "coeff", 0.030811 AS "sv_0", 0.050680 AS "sv_1", 0.056307 AS "sv_2", 0.076958 AS "sv_3", 0.049341 AS "sv_4", -0.012274 AS "sv_5", -0.036038 AS "sv_6", 0.071210 AS "sv_7", 0.120051 AS "sv_8", 0.090049 AS "sv_9"
     UNION ALL
     SELECT 157 AS "sv_idx", 1.000000 AS "coeff", -0.049105 AS "sv_0", -0.044642 AS "sv_1", 0.160855 AS "sv_2", -0.046985 AS "sv_3", -0.029088 AS "sv_4", -0.019790 AS "sv_5", -0.047082 AS "sv_6", 0.034309 AS "sv_7", 0.028020 AS "sv_8", 0.011349 AS "sv_9"
     UNION ALL
     SELECT 158 AS "sv_idx", -1.000000 AS "coeff", 0.012648 AS "sv_0", -0.044642 AS "sv_1", -0.036385 AS "sv_2", 0.042529 AS "sv_3", -0.013953 AS "sv_4", 0.012934 AS "sv_5", -0.026833 AS "sv_6", 0.005157 AS "sv_7", -0.043984 AS "sv_8", 0.007207 AS "sv_9"
     UNION ALL
     SELECT 159 AS "sv_idx", -1.000000 AS "coeff", 0.041708 AS "sv_0", -0.044642 AS "sv_1", -0.008362 AS "sv_2", -0.057313 AS "sv_3", 0.008063 AS "sv_4", -0.031376 AS "sv_5", 0.151726 AS "sv_6", -0.076395 AS "sv_7", -0.080237 AS "sv_8", -0.017646 AS "sv_9"
     UNION ALL
     SELECT 160 AS "sv_idx", 1.000000 AS "coeff", -0.016412 AS "sv_0", 0.050680 AS "sv_1", 0.127443 AS "sv_2", 0.097615 AS "sv_3", 0.016318 AS "sv_4", 0.017475 AS "sv_5", -0.021311 AS "sv_6", 0.034309 AS "sv_7", 0.034866 AS "sv_8", 0.003064 AS "sv_9"
     UNION ALL
     SELECT 161 AS "sv_idx", -1.000000 AS "coeff", -0.052738 AS "sv_0", 0.050680 AS "sv_1", -0.062252 AS "sv_2", 0.011544 AS "sv_3", -0.008449 AS "sv_4", -0.036700 AS "sv_5", 0.122273 AS "sv_6", -0.076395 AS "sv_7", -0.086827 AS "sv_8", 0.003064 AS "sv_9"
     UNION ALL
     SELECT 162 AS "sv_idx", 1.000000 AS "coeff", 0.063504 AS "sv_0", 0.050680 AS "sv_1", 0.088642 AS "sv_2", 0.070072 AS "sv_3", 0.020446 AS "sv_4", 0.037517 AS "sv_5", -0.050764 AS "sv_6", 0.071210 AS "sv_7", 0.029297 AS "sv_8", 0.073480 AS "sv_9"
     UNION ALL
     SELECT 163 AS "sv_idx", 1.000000 AS "coeff", 0.074401 AS "sv_0", 0.050680 AS "sv_1", -0.020218 AS "sv_2", 0.045972 AS "sv_3", 0.074108 AS "sv_4", 0.032819 AS "sv_5", -0.036038 AS "sv_6", 0.071210 AS "sv_7", 0.106351 AS "sv_8", 0.036201 AS "sv_9"
     UNION ALL
     SELECT 164 AS "sv_idx", -1.000000 AS "coeff", 0.016281 AS "sv_0", -0.044642 AS "sv_1", -0.024529 AS "sv_2", 0.035644 AS "sv_3", -0.007073 AS "sv_4", -0.003193 AS "sv_5", -0.013948 AS "sv_6", -0.002592 AS "sv_7", 0.015568 AS "sv_8", 0.015491 AS "sv_9"
     UNION ALL
     SELECT 165 AS "sv_idx", 1.000000 AS "coeff", 0.012648 AS "sv_0", -0.044642 AS "sv_1", 0.026128 AS "sv_2", 0.063187 AS "sv_3", 0.125019 AS "sv_4", 0.091691 AS "sv_5", 0.063367 AS "sv_6", -0.002592 AS "sv_7", 0.057573 AS "sv_8", -0.021788 AS "sv_9"
     UNION ALL
     SELECT 166 AS "sv_idx", 1.000000 AS "coeff", 0.009016 AS "sv_0", 0.050680 AS "sv_1", 0.018584 AS "sv_2", 0.039087 AS "sv_3", 0.017694 AS "sv_4", 0.010586 AS "sv_5", 0.019187 AS "sv_6", -0.002592 AS "sv_7", 0.016307 AS "sv_8", -0.017646 AS "sv_9"
     UNION ALL
     SELECT 167 AS "sv_idx", 0.500000 AS "coeff", 0.070769 AS "sv_0", -0.044642 AS "sv_1", -0.005128 AS "sv_2", -0.005670 AS "sv_3", 0.087868 AS "sv_4", 0.102965 AS "sv_5", 0.011824 AS "sv_6", 0.034309 AS "sv_7", -0.008943 AS "sv_8", 0.027917 AS "sv_9"
     UNION ALL
     SELECT 168 AS "sv_idx", -1.000000 AS "coeff", -0.074533 AS "sv_0", 0.050680 AS "sv_1", 0.055229 AS "sv_2", -0.040099 AS "sv_3", 0.053469 AS "sv_4", 0.053174 AS "sv_5", -0.043401 AS "sv_6", 0.071210 AS "sv_7", 0.061238 AS "sv_8", -0.034215 AS "sv_9"
     UNION ALL
     SELECT 169 AS "sv_idx", 1.000000 AS "coeff", 0.059871 AS "sv_0", 0.050680 AS "sv_1", 0.076786 AS "sv_2", 0.025315 AS "sv_3", 0.001183 AS "sv_4", 0.016849 AS "sv_5", -0.054446 AS "sv_6", 0.034309 AS "sv_7", 0.029935 AS "sv_8", 0.044485 AS "sv_9"
     UNION ALL
     SELECT 170 AS "sv_idx", 1.000000 AS "coeff", 0.074401 AS "sv_0", -0.044642 AS "sv_1", 0.018584 AS "sv_2", 0.063187 AS "sv_3", 0.061725 AS "sv_4", 0.042840 AS "sv_5", 0.008142 AS "sv_6", -0.002592 AS "sv_7", 0.058038 AS "sv_8", -0.059067 AS "sv_9"
     UNION ALL
     SELECT 171 AS "sv_idx", -1.000000 AS "coeff", 0.023546 AS "sv_0", 0.050680 AS "sv_1", -0.030996 AS "sv_2", -0.005670 AS "sv_3", -0.016704 AS "sv_4", 0.017788 AS "sv_5", -0.032356 AS "sv_6", -0.002592 AS "sv_7", -0.074093 AS "sv_8", -0.034215 AS "sv_9"
     UNION ALL
     SELECT 172 AS "sv_idx", -1.000000 AS "coeff", 0.001751 AS "sv_0", -0.044642 AS "sv_1", -0.008362 AS "sv_2", -0.064199 AS "sv_3", -0.038720 AS "sv_4", -0.024487 AS "sv_5", 0.004460 AS "sv_6", -0.039493 AS "sv_7", -0.064685 AS "sv_8", -0.054925 AS "sv_9"
     UNION ALL
     SELECT 173 AS "sv_idx", -1.000000 AS "coeff", 0.038076 AS "sv_0", 0.050680 AS "sv_1", -0.013751 AS "sv_2", -0.015999 AS "sv_3", -0.035968 AS "sv_4", -0.021982 AS "sv_5", -0.013948 AS "sv_6", -0.002592 AS "sv_7", -0.025953 AS "sv_8", -0.001078 AS "sv_9"
     UNION ALL
     SELECT 174 AS "sv_idx", 1.000000 AS "coeff", 0.016281 AS "sv_0", -0.044642 AS "sv_1", 0.073552 AS "sv_2", -0.041235 AS "sv_3", -0.004321 AS "sv_4", -0.013527 AS "sv_5", -0.013948 AS "sv_6", -0.001116 AS "sv_7", 0.042897 AS "sv_8", 0.044485 AS "sv_9"
     UNION ALL
     SELECT 175 AS "sv_idx", -1.000000 AS "coeff", -0.001882 AS "sv_0", 0.050680 AS "sv_1", -0.024529 AS "sv_2", 0.052858 AS "sv_3", 0.027326 AS "sv_4", 0.030001 AS "sv_5", 0.030232 AS "sv_6", -0.002592 AS "sv_7", -0.021395 AS "sv_8", 0.036201 AS "sv_9"
     UNION ALL
     SELECT 176 AS "sv_idx", 1.000000 AS "coeff", 0.041708 AS "sv_0", 0.050680 AS "sv_1", -0.038540 AS "sv_2", 0.052858 AS "sv_3", 0.076860 AS "sv_4", 0.116430 AS "sv_5", -0.039719 AS "sv_6", 0.071210 AS "sv_7", -0.022517 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 177 AS "sv_idx", -1.000000 AS "coeff", 0.009016 AS "sv_0", 0.050680 AS "sv_1", -0.001895 AS "sv_2", 0.021872 AS "sv_3", -0.038720 AS "sv_4", -0.024800 AS "sv_5", -0.006584 AS "sv_6", -0.039493 AS "sv_7", -0.039809 AS "sv_8", -0.013504 AS "sv_9"
     UNION ALL
     SELECT 178 AS "sv_idx", 1.000000 AS "coeff", 0.023546 AS "sv_0", 0.050680 AS "sv_1", 0.061696 AS "sv_2", 0.062050 AS "sv_3", 0.024574 AS "sv_4", -0.036073 AS "sv_5", -0.091262 AS "sv_6", 0.155345 AS "sv_7", 0.133397 AS "sv_8", 0.081764 AS "sv_9"
     UNION ALL
     SELECT 179 AS "sv_idx", 1.000000 AS "coeff", 0.070769 AS "sv_0", 0.050680 AS "sv_1", -0.007284 AS "sv_2", 0.049415 AS "sv_3", 0.060349 AS "sv_4", -0.004445 AS "sv_5", -0.054446 AS "sv_6", 0.108111 AS "sv_7", 0.129021 AS "sv_8", 0.056912 AS "sv_9"
     UNION ALL
     SELECT 180 AS "sv_idx", 1.000000 AS "coeff", 0.030811 AS "sv_0", -0.044642 AS "sv_1", 0.005650 AS "sv_2", 0.011544 AS "sv_3", 0.078236 AS "sv_4", 0.077913 AS "sv_5", -0.043401 AS "sv_6", 0.108111 AS "sv_7", 0.066051 AS "sv_8", 0.019633 AS "sv_9"
     UNION ALL
     SELECT 181 AS "sv_idx", 1.000000 AS "coeff", 0.074401 AS "sv_0", -0.044642 AS "sv_1", 0.114509 AS "sv_2", 0.028758 AS "sv_3", 0.024574 AS "sv_4", 0.024991 AS "sv_5", 0.019187 AS "sv_6", -0.002592 AS "sv_7", -0.000612 AS "sv_8", -0.005220 AS "sv_9"
     UNION ALL
     SELECT 182 AS "sv_idx", -1.000000 AS "coeff", -0.038207 AS "sv_0", -0.044642 AS "sv_1", 0.067085 AS "sv_2", -0.060756 AS "sv_3", -0.029088 AS "sv_4", -0.023234 AS "sv_5", -0.010266 AS "sv_6", -0.002592 AS "sv_7", -0.001496 AS "sv_8", 0.019633 AS "sv_9"
     UNION ALL
     SELECT 183 AS "sv_idx", 1.000000 AS "coeff", 0.009016 AS "sv_0", 0.050680 AS "sv_1", 0.030440 AS "sv_2", 0.042529 AS "sv_3", -0.002945 AS "sv_4", 0.036890 AS "sv_5", -0.065491 AS "sv_6", 0.071210 AS "sv_7", -0.023647 AS "sv_8", 0.015491 AS "sv_9"
     UNION ALL
     SELECT 184 AS "sv_idx", 1.000000 AS "coeff", 0.030811 AS "sv_0", -0.044642 AS "sv_1", 0.104809 AS "sv_2", 0.076958 AS "sv_3", -0.011201 AS "sv_4", -0.011335 AS "sv_5", -0.058127 AS "sv_6", 0.034309 AS "sv_7", 0.057108 AS "sv_8", 0.036201 AS "sv_9"
     UNION ALL
     SELECT 185 AS "sv_idx", 1.000000 AS "coeff", -0.020045 AS "sv_0", -0.044642 AS "sv_1", 0.085408 AS "sv_2", -0.036656 AS "sv_3", 0.091996 AS "sv_4", 0.089499 AS "sv_5", -0.061809 AS "sv_6", 0.145012 AS "sv_7", 0.080946 AS "sv_8", 0.052770 AS "sv_9"
     UNION ALL
     SELECT 186 AS "sv_idx", -1.000000 AS "coeff", 0.019913 AS "sv_0", 0.050680 AS "sv_1", -0.012673 AS "sv_2", 0.070072 AS "sv_3", -0.011201 AS "sv_4", 0.007141 AS "sv_5", -0.039719 AS "sv_6", 0.034309 AS "sv_7", 0.005386 AS "sv_8", 0.003064 AS "sv_9"
     UNION ALL
     SELECT 187 AS "sv_idx", 1.000000 AS "coeff", 0.030811 AS "sv_0", 0.050680 AS "sv_1", 0.059541 AS "sv_2", 0.056301 AS "sv_3", -0.022208 AS "sv_4", 0.001191 AS "sv_5", -0.032356 AS "sv_6", -0.002592 AS "sv_7", -0.024795 AS "sv_8", -0.017646 AS "sv_9"
     UNION ALL
     SELECT 188 AS "sv_idx", 1.000000 AS "coeff", -0.027310 AS "sv_0", 0.050680 AS "sv_1", 0.060618 AS "sv_2", 0.107944 AS "sv_3", 0.012191 AS "sv_4", -0.017598 AS "sv_5", -0.002903 AS "sv_6", -0.002592 AS "sv_7", 0.070207 AS "sv_8", 0.135612 AS "sv_9"
     UNION ALL
     SELECT 189 AS "sv_idx", 1.000000 AS "coeff", -0.023677 AS "sv_0", 0.050680 AS "sv_1", 0.045529 AS "sv_2", 0.021872 AS "sv_3", 0.109883 AS "sv_4", 0.088873 AS "sv_5", 0.000779 AS "sv_6", 0.034309 AS "sv_7", 0.074191 AS "sv_8", 0.061054 AS "sv_9"
     UNION ALL
     SELECT 190 AS "sv_idx", -1.000000 AS "coeff", -0.074533 AS "sv_0", 0.050680 AS "sv_1", -0.009439 AS "sv_2", 0.014987 AS "sv_3", -0.037344 AS "sv_4", -0.021669 AS "sv_5", -0.013948 AS "sv_6", -0.002592 AS "sv_7", -0.033246 AS "sv_8", 0.011349 AS "sv_9"
     UNION ALL
     SELECT 191 AS "sv_idx", 1.000000 AS "coeff", 0.038076 AS "sv_0", 0.050680 AS "sv_1", 0.005650 AS "sv_2", 0.032201 AS "sv_3", 0.006687 AS "sv_4", 0.017475 AS "sv_5", -0.024993 AS "sv_6", 0.034309 AS "sv_7", 0.014821 AS "sv_8", 0.061054 AS "sv_9"
     UNION ALL
     SELECT 192 AS "sv_idx", 1.000000 AS "coeff", 0.016281 AS "sv_0", -0.044642 AS "sv_1", 0.020739 AS "sv_2", 0.021872 AS "sv_3", -0.013953 AS "sv_4", -0.013214 AS "sv_5", -0.006584 AS "sv_6", -0.002592 AS "sv_7", 0.013317 AS "sv_8", 0.040343 AS "sv_9"
     UNION ALL
     SELECT 193 AS "sv_idx", 1.000000 AS "coeff", 0.019913 AS "sv_0", 0.050680 AS "sv_1", 0.104809 AS "sv_2", 0.070072 AS "sv_3", -0.035968 AS "sv_4", -0.026679 AS "sv_5", -0.024993 AS "sv_6", -0.002592 AS "sv_7", 0.003709 AS "sv_8", 0.040343 AS "sv_9"
     UNION ALL
     SELECT 194 AS "sv_idx", -1.000000 AS "coeff", -0.049105 AS "sv_0", 0.050680 AS "sv_1", -0.024529 AS "sv_2", 0.000079 AS "sv_3", -0.046975 AS "sv_4", -0.028245 AS "sv_5", -0.065491 AS "sv_6", 0.028405 AS "sv_7", 0.019196 AS "sv_8", 0.011349 AS "sv_9"
     UNION ALL
     SELECT 195 AS "sv_idx", 1.000000 AS "coeff", 0.001751 AS "sv_0", 0.050680 AS "sv_1", -0.006206 AS "sv_2", -0.019442 AS "sv_3", -0.009825 AS "sv_4", 0.004949 AS "sv_5", -0.039719 AS "sv_6", 0.034309 AS "sv_7", 0.014821 AS "sv_8", 0.098333 AS "sv_9"
     UNION ALL
     SELECT 196 AS "sv_idx", 1.000000 AS "coeff", -0.009147 AS "sv_0", 0.050680 AS "sv_1", 0.170555 AS "sv_2", 0.014987 AS "sv_3", 0.030078 AS "sv_4", 0.033759 AS "sv_5", -0.021311 AS "sv_6", 0.034309 AS "sv_7", 0.033654 AS "sv_8", 0.032059 AS "sv_9"
     UNION ALL
     SELECT 197 AS "sv_idx", 1.000000 AS "coeff", 0.019913 AS "sv_0", 0.050680 AS "sv_1", 0.009961 AS "sv_2", 0.018430 AS "sv_3", 0.014942 AS "sv_4", 0.044719 AS "sv_5", -0.061809 AS "sv_6", 0.071210 AS "sv_7", 0.009434 AS "sv_8", -0.063209 AS "sv_9"
     UNION ALL
     SELECT 198 AS "sv_idx", 1.000000 AS "coeff", 0.016281 AS "sv_0", 0.050680 AS "sv_1", 0.002417 AS "sv_2", -0.005670 AS "sv_3", -0.005697 AS "sv_4", 0.010899 AS "sv_5", -0.050764 AS "sv_6", 0.034309 AS "sv_7", 0.022688 AS "sv_8", -0.038357 AS "sv_9"
     UNION ALL
     SELECT 199 AS "sv_idx", -1.000000 AS "coeff", -0.001882 AS "sv_0", -0.044642 AS "sv_1", -0.038540 AS "sv_2", 0.021872 AS "sv_3", -0.108893 AS "sv_4", -0.115613 AS "sv_5", 0.022869 AS "sv_6", -0.076395 AS "sv_7", -0.046883 AS "sv_8", 0.023775 AS "sv_9"
     UNION ALL
     SELECT 200 AS "sv_idx", -1.000000 AS "coeff", 0.016281 AS "sv_0", -0.044642 AS "sv_1", 0.026128 AS "sv_2", 0.058608 AS "sv_3", -0.060735 AS "sv_4", -0.044215 AS "sv_5", -0.013948 AS "sv_6", -0.033958 AS "sv_7", -0.051404 AS "sv_8", -0.025930 AS "sv_9"
     UNION ALL
     SELECT 201 AS "sv_idx", -1.000000 AS "coeff", 0.034443 AS "sv_0", 0.050680 AS "sv_1", -0.029918 AS "sv_2", 0.004658 AS "sv_3", 0.093372 AS "sv_4", 0.086994 AS "sv_5", 0.033914 AS "sv_6", -0.002592 AS "sv_7", 0.024055 AS "sv_8", -0.038357 AS "sv_9"
     UNION ALL
     SELECT 202 AS "sv_idx", -1.000000 AS "coeff", -0.005515 AS "sv_0", 0.050680 AS "sv_1", 0.001339 AS "sv_2", -0.084856 AS "sv_3", -0.011201 AS "sv_4", -0.016658 AS "sv_5", 0.048640 AS "sv_6", -0.039493 AS "sv_7", -0.041176 AS "sv_8", -0.088062 AS "sv_9"
     UNION ALL
     SELECT 203 AS "sv_idx", 1.000000 AS "coeff", 0.009016 AS "sv_0", 0.050680 AS "sv_1", 0.069241 AS "sv_2", 0.059744 AS "sv_3", 0.017694 AS "sv_4", -0.023234 AS "sv_5", -0.047082 AS "sv_6", 0.034309 AS "sv_7", 0.103297 AS "sv_8", 0.073480 AS "sv_9"
     UNION ALL
     SELECT 204 AS "sv_idx", -1.000000 AS "coeff", -0.074533 AS "sv_0", -0.044642 AS "sv_1", -0.046085 AS "sv_2", -0.043542 AS "sv_3", -0.029088 AS "sv_4", -0.023234 AS "sv_5", 0.015505 AS "sv_6", -0.039493 AS "sv_7", -0.039809 AS "sv_8", -0.021788 AS "sv_9"
     UNION ALL
     SELECT 205 AS "sv_idx", 1.000000 AS "coeff", 0.034443 AS "sv_0", -0.044642 AS "sv_1", 0.018584 AS "sv_2", 0.056301 AS "sv_3", 0.012191 AS "sv_4", -0.054549 AS "sv_5", -0.069172 AS "sv_6", 0.071210 AS "sv_7", 0.130079 AS "sv_8", 0.007207 AS "sv_9"
     UNION ALL
     SELECT 206 AS "sv_idx", 1.000000 AS "coeff", -0.060003 AS "sv_0", -0.044642 AS "sv_1", 0.001339 AS "sv_2", -0.029770 AS "sv_3", -0.007073 AS "sv_4", -0.021669 AS "sv_5", 0.011824 AS "sv_6", -0.002592 AS "sv_7", 0.031812 AS "sv_8", -0.054925 AS "sv_9"
     UNION ALL
     SELECT 207 AS "sv_idx", -1.000000 AS "coeff", -0.085430 AS "sv_0", 0.050680 AS "sv_1", -0.030996 AS "sv_2", -0.022885 AS "sv_3", -0.063487 AS "sv_4", -0.054236 AS "sv_5", 0.019187 AS "sv_6", -0.039493 AS "sv_7", -0.096435 AS "sv_8", -0.034215 AS "sv_9"
     UNION ALL
     SELECT 208 AS "sv_idx", 1.000000 AS "coeff", 0.012648 AS "sv_0", -0.044642 AS "sv_1", 0.015350 AS "sv_2", -0.033213 AS "sv_3", 0.041086 AS "sv_4", 0.032193 AS "sv_5", -0.002903 AS "sv_6", -0.002592 AS "sv_7", 0.045067 AS "sv_8", -0.067351 AS "sv_9"
     UNION ALL
     SELECT 209 AS "sv_idx", 1.000000 AS "coeff", -0.020045 AS "sv_0", -0.044642 AS "sv_1", 0.097264 AS "sv_2", -0.005670 AS "sv_3", -0.005697 AS "sv_4", -0.023861 AS "sv_5", -0.021311 AS "sv_6", -0.002592 AS "sv_7", 0.061684 AS "sv_8", 0.040343 AS "sv_9"
     UNION ALL
     SELECT 210 AS "sv_idx", 1.000000 AS "coeff", -0.016412 AS "sv_0", -0.044642 AS "sv_1", 0.054152 AS "sv_2", 0.070072 AS "sv_3", -0.033216 AS "sv_4", -0.027931 AS "sv_5", 0.008142 AS "sv_6", -0.039493 AS "sv_7", -0.027129 AS "sv_8", -0.009362 AS "sv_9"
     UNION ALL
     SELECT 211 AS "sv_idx", 1.000000 AS "coeff", 0.048974 AS "sv_0", 0.050680 AS "sv_1", 0.123131 AS "sv_2", 0.083844 AS "sv_3", -0.104765 AS "sv_4", -0.100895 AS "sv_5", -0.069172 AS "sv_6", -0.002592 AS "sv_7", 0.036644 AS "sv_8", -0.030072 AS "sv_9"
     UNION ALL
     SELECT 212 AS "sv_idx", 1.000000 AS "coeff", 0.074401 AS "sv_0", -0.044642 AS "sv_1", 0.085408 AS "sv_2", 0.063187 AS "sv_3", 0.014942 AS "sv_4", 0.013091 AS "sv_5", 0.015505 AS "sv_6", -0.002592 AS "sv_7", 0.006207 AS "sv_8", 0.085907 AS "sv_9"
     UNION ALL
     SELECT 213 AS "sv_idx", 1.000000 AS "coeff", -0.027310 AS "sv_0", -0.044642 AS "sv_1", 0.080019 AS "sv_2", 0.098751 AS "sv_3", -0.002945 AS "sv_4", 0.018101 AS "sv_5", -0.017629 AS "sv_6", 0.003312 AS "sv_7", -0.029526 AS "sv_8", 0.036201 AS "sv_9"
     UNION ALL
     SELECT 214 AS "sv_idx", -1.000000 AS "coeff", -0.052738 AS "sv_0", -0.044642 AS "sv_1", 0.071397 AS "sv_2", -0.074527 AS "sv_3", -0.015328 AS "sv_4", -0.001314 AS "sv_5", 0.004460 AS "sv_6", -0.021412 AS "sv_7", -0.046883 AS "sv_8", 0.003064 AS "sv_9"
     UNION ALL
     SELECT 215 AS "sv_idx", -1.000000 AS "coeff", -0.020045 AS "sv_0", -0.044642 AS "sv_1", -0.054707 AS "sv_2", -0.053870 AS "sv_3", -0.066239 AS "sv_4", -0.057367 AS "sv_5", 0.011824 AS "sv_6", -0.039493 AS "sv_7", -0.074093 AS "sv_8", -0.005220 AS "sv_9"
     UNION ALL
     SELECT 216 AS "sv_idx", 1.000000 AS "coeff", 0.048974 AS "sv_0", 0.050680 AS "sv_1", 0.088642 AS "sv_2", 0.087287 AS "sv_3", 0.035582 AS "sv_4", 0.021546 AS "sv_5", -0.024993 AS "sv_6", 0.034309 AS "sv_7", 0.066051 AS "sv_8", 0.131470 AS "sv_9"
     UNION ALL
     SELECT 217 AS "sv_idx", -1.000000 AS "coeff", 0.070769 AS "sv_0", 0.050680 AS "sv_1", -0.030996 AS "sv_2", 0.021872 AS "sv_3", -0.037344 AS "sv_4", -0.047034 AS "sv_5", 0.033914 AS "sv_6", -0.039493 AS "sv_7", -0.014960 AS "sv_8", -0.001078 AS "sv_9"
     UNION ALL
     SELECT 218 AS "sv_idx", -1.000000 AS "coeff", 0.016281 AS "sv_0", -0.044642 AS "sv_1", 0.001339 AS "sv_2", 0.008101 AS "sv_3", 0.005311 AS "sv_4", 0.010899 AS "sv_5", 0.030232 AS "sv_6", -0.039493 AS "sv_7", -0.045424 AS "sv_8", 0.032059 AS "sv_9"
     UNION ALL
     SELECT 219 AS "sv_idx", -1.000000 AS "coeff", -0.012780 AS "sv_0", -0.044642 AS "sv_1", -0.023451 AS "sv_2", -0.040099 AS "sv_3", -0.016704 AS "sv_4", 0.004636 AS "sv_5", -0.017629 AS "sv_6", -0.002592 AS "sv_7", -0.038460 AS "sv_8", -0.038357 AS "sv_9"
     UNION ALL
     SELECT 220 AS "sv_idx", -1.000000 AS "coeff", -0.056370 AS "sv_0", -0.044642 AS "sv_1", -0.074108 AS "sv_2", -0.050427 AS "sv_3", -0.024960 AS "sv_4", -0.047034 AS "sv_5", 0.092820 AS "sv_6", -0.076395 AS "sv_7", -0.061176 AS "sv_8", -0.046641 AS "sv_9"
     UNION ALL
     SELECT 221 AS "sv_idx", -1.000000 AS "coeff", -0.045472 AS "sv_0", -0.044642 AS "sv_1", -0.073030 AS "sv_2", -0.081413 AS "sv_3", 0.083740 AS "sv_4", 0.027809 AS "sv_5", 0.173816 AS "sv_6", -0.039493 AS "sv_7", -0.004222 AS "sv_8", 0.003064 AS "sv_9"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -174.561066 AS dot_product
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
