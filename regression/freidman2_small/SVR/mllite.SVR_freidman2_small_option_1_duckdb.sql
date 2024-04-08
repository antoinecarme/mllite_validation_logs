WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "freidman2_small" AS "ADS" 
 )
,"SV_data" AS
 ( SELECT 
   "Values"."sv_idx" AS "sv_idx",
   "Values"."coeff" AS "coeff",
   "Values"."sv_0" AS "sv_0",
   "Values"."sv_1" AS "sv_1",
   "Values"."sv_2" AS "sv_2",
   "Values"."sv_3" AS "sv_3"
  FROM
  (
     SELECT 0 AS "sv_idx", -2.000000 AS "coeff", 17.761709 AS "sv_0", 423.498322 AS "sv_1", 0.135270 AS "sv_2", 10.148129 AS "sv_3"
     UNION ALL
     SELECT 1 AS "sv_idx", -2.000000 AS "coeff", 45.437614 AS "sv_0", 168.841202 AS "sv_1", 0.343817 AS "sv_2", 3.279963 AS "sv_3"
     UNION ALL
     SELECT 2 AS "sv_idx", -2.000000 AS "coeff", 69.792320 AS "sv_0", 473.447937 AS "sv_1", 0.233546 AS "sv_2", 3.411072 AS "sv_3"
     UNION ALL
     SELECT 3 AS "sv_idx", 2.000000 AS "coeff", 67.667091 AS "sv_0", 938.672607 AS "sv_1", 0.652046 AS "sv_2", 9.523154 AS "sv_3"
     UNION ALL
     SELECT 4 AS "sv_idx", 2.000000 AS "coeff", 55.118420 AS "sv_0", 1002.086060 AS "sv_1", 0.726658 AS "sv_2", 4.570618 AS "sv_3"
     UNION ALL
     SELECT 5 AS "sv_idx", -2.000000 AS "coeff", 52.067585 AS "sv_0", 534.256165 AS "sv_1", 0.155164 AS "sv_2", 8.526538 AS "sv_3"
     UNION ALL
     SELECT 6 AS "sv_idx", -2.000000 AS "coeff", 50.992905 AS "sv_0", 814.561340 AS "sv_1", 0.257439 AS "sv_2", 5.994627 AS "sv_3"
     UNION ALL
     SELECT 7 AS "sv_idx", -2.000000 AS "coeff", 34.347893 AS "sv_0", 205.928116 AS "sv_1", 0.720020 AS "sv_2", 9.414678 AS "sv_3"
     UNION ALL
     SELECT 8 AS "sv_idx", -2.000000 AS "coeff", 63.010204 AS "sv_0", 221.354385 AS "sv_1", 0.814630 AS "sv_2", 5.897069 AS "sv_3"
     UNION ALL
     SELECT 9 AS "sv_idx", 2.000000 AS "coeff", 22.605108 AS "sv_0", 1660.837036 AS "sv_1", 0.731124 AS "sv_2", 9.374556 AS "sv_3"
     UNION ALL
     SELECT 10 AS "sv_idx", -2.000000 AS "coeff", 13.280704 AS "sv_0", 643.716797 AS "sv_1", 0.520814 AS "sv_2", 4.842079 AS "sv_3"
     UNION ALL
     SELECT 11 AS "sv_idx", 2.000000 AS "coeff", 7.606344 AS "sv_0", 1112.226562 AS "sv_1", 0.732761 AS "sv_2", 6.140375 AS "sv_3"
     UNION ALL
     SELECT 12 AS "sv_idx", 2.000000 AS "coeff", 51.401745 AS "sv_0", 1161.331543 AS "sv_1", 0.618557 AS "sv_2", 2.218271 AS "sv_3"
     UNION ALL
     SELECT 13 AS "sv_idx", 2.000000 AS "coeff", 94.566437 AS "sv_0", 663.266418 AS "sv_1", 0.852323 AS "sv_2", 6.919084 AS "sv_3"
     UNION ALL
     SELECT 14 AS "sv_idx", 2.000000 AS "coeff", 14.282172 AS "sv_0", 1575.160400 AS "sv_1", 0.428596 AS "sv_2", 4.169882 AS "sv_3"
     UNION ALL
     SELECT 15 AS "sv_idx", -2.000000 AS "coeff", 38.088467 AS "sv_0", 1321.297485 AS "sv_1", 0.052941 AS "sv_2", 10.429984 AS "sv_3"
     UNION ALL
     SELECT 16 AS "sv_idx", 2.000000 AS "coeff", 97.111717 AS "sv_0", 715.890503 AS "sv_1", 0.509773 AS "sv_2", 4.410513 AS "sv_3"
     UNION ALL
     SELECT 17 AS "sv_idx", 2.000000 AS "coeff", 74.947220 AS "sv_0", 1754.316162 AS "sv_1", 0.366207 AS "sv_2", 1.961987 AS "sv_3"
     UNION ALL
     SELECT 18 AS "sv_idx", -2.000000 AS "coeff", 75.648438 AS "sv_0", 442.560303 AS "sv_1", 0.035123 AS "sv_2", 1.334146 AS "sv_3"
     UNION ALL
     SELECT 19 AS "sv_idx", -2.000000 AS "coeff", 80.410118 AS "sv_0", 294.009796 AS "sv_1", 0.728795 AS "sv_2", 1.686282 AS "sv_3"
     UNION ALL
     SELECT 20 AS "sv_idx", -2.000000 AS "coeff", 15.123654 AS "sv_0", 486.957489 AS "sv_1", 0.123542 AS "sv_2", 2.365677 AS "sv_3"
     UNION ALL
     SELECT 21 AS "sv_idx", -2.000000 AS "coeff", 55.340031 AS "sv_0", 215.592316 AS "sv_1", 0.588332 AS "sv_2", 4.610499 AS "sv_3"
     UNION ALL
     SELECT 22 AS "sv_idx", 2.000000 AS "coeff", 2.070305 AS "sv_0", 957.545105 AS "sv_1", 0.737876 AS "sv_2", 2.535709 AS "sv_3"
     UNION ALL
     SELECT 23 AS "sv_idx", -2.000000 AS "coeff", 85.409492 AS "sv_0", 865.747681 AS "sv_1", 0.002107 AS "sv_2", 1.657108 AS "sv_3"
     UNION ALL
     SELECT 24 AS "sv_idx", 2.000000 AS "coeff", 7.737632 AS "sv_0", 682.638123 AS "sv_1", 0.943330 AS "sv_2", 1.569080 AS "sv_3"
     UNION ALL
     SELECT 25 AS "sv_idx", 2.000000 AS "coeff", 22.116344 AS "sv_0", 1162.774048 AS "sv_1", 0.675740 AS "sv_2", 4.934592 AS "sv_3"
     UNION ALL
     SELECT 26 AS "sv_idx", 2.000000 AS "coeff", 35.417500 AS "sv_0", 933.556885 AS "sv_1", 0.674758 AS "sv_2", 8.628964 AS "sv_3"
     UNION ALL
     SELECT 27 AS "sv_idx", 2.000000 AS "coeff", 65.455681 AS "sv_0", 755.864746 AS "sv_1", 0.990681 AS "sv_2", 3.455762 AS "sv_3"
     UNION ALL
     SELECT 28 AS "sv_idx", -2.000000 AS "coeff", 42.679214 AS "sv_0", 472.756287 AS "sv_1", 0.481987 AS "sv_2", 2.150893 AS "sv_3"
     UNION ALL
     SELECT 29 AS "sv_idx", -2.000000 AS "coeff", 11.179132 AS "sv_0", 444.204834 AS "sv_1", 0.202220 AS "sv_2", 7.809537 AS "sv_3"
     UNION ALL
     SELECT 30 AS "sv_idx", -2.000000 AS "coeff", 14.083336 AS "sv_0", 1134.869141 AS "sv_1", 0.186105 AS "sv_2", 7.672650 AS "sv_3"
     UNION ALL
     SELECT 31 AS "sv_idx", 2.000000 AS "coeff", 95.999474 AS "sv_0", 1121.298950 AS "sv_1", 0.682591 AS "sv_2", 3.437388 AS "sv_3"
     UNION ALL
     SELECT 32 AS "sv_idx", 2.000000 AS "coeff", 91.832474 AS "sv_0", 611.998413 AS "sv_1", 0.771820 AS "sv_2", 5.897234 AS "sv_3"
     UNION ALL
     SELECT 33 AS "sv_idx", 2.000000 AS "coeff", 76.461021 AS "sv_0", 744.759766 AS "sv_1", 0.823855 AS "sv_2", 10.136035 AS "sv_3"
     UNION ALL
     SELECT 34 AS "sv_idx", 2.000000 AS "coeff", 74.577126 AS "sv_0", 1412.240356 AS "sv_1", 0.582418 AS "sv_2", 4.633062 AS "sv_3"
     UNION ALL
     SELECT 35 AS "sv_idx", -2.000000 AS "coeff", 78.244774 AS "sv_0", 702.214600 AS "sv_1", 0.183212 AS "sv_2", 9.434527 AS "sv_3"
     UNION ALL
     SELECT 36 AS "sv_idx", 2.000000 AS "coeff", 76.131752 AS "sv_0", 526.791992 AS "sv_1", 0.716619 AS "sv_2", 5.202790 AS "sv_3"
     UNION ALL
     SELECT 37 AS "sv_idx", 2.000000 AS "coeff", 18.503828 AS "sv_0", 532.344482 AS "sv_1", 0.721851 AS "sv_2", 10.655538 AS "sv_3"
     UNION ALL
     SELECT 38 AS "sv_idx", -2.000000 AS "coeff", 38.291386 AS "sv_0", 635.121277 AS "sv_1", 0.271890 AS "sv_2", 7.067709 AS "sv_3"
     UNION ALL
     SELECT 39 AS "sv_idx", -2.000000 AS "coeff", 97.541664 AS "sv_0", 130.009232 AS "sv_1", 0.366127 AS "sv_2", 5.345118 AS "sv_3"
     UNION ALL
     SELECT 40 AS "sv_idx", 2.000000 AS "coeff", 13.316919 AS "sv_0", 1592.958618 AS "sv_1", 0.993566 AS "sv_2", 7.946761 AS "sv_3"
     UNION ALL
     SELECT 41 AS "sv_idx", -2.000000 AS "coeff", 72.844986 AS "sv_0", 208.134521 AS "sv_1", 0.953115 AS "sv_2", 4.121809 AS "sv_3"
     UNION ALL
     SELECT 42 AS "sv_idx", -2.000000 AS "coeff", 44.357746 AS "sv_0", 674.885315 AS "sv_1", 0.220269 AS "sv_2", 3.032311 AS "sv_3"
     UNION ALL
     SELECT 43 AS "sv_idx", 2.000000 AS "coeff", 92.630493 AS "sv_0", 1621.621948 AS "sv_1", 0.997097 AS "sv_2", 3.905369 AS "sv_3"
     UNION ALL
     SELECT 44 AS "sv_idx", 2.000000 AS "coeff", 76.371201 AS "sv_0", 1620.264648 AS "sv_1", 0.622375 AS "sv_2", 3.062019 AS "sv_3"
     UNION ALL
     SELECT 45 AS "sv_idx", 2.000000 AS "coeff", 88.010742 AS "sv_0", 553.589050 AS "sv_1", 0.595422 AS "sv_2", 4.068089 AS "sv_3"
     UNION ALL
     SELECT 46 AS "sv_idx", 2.000000 AS "coeff", 39.016674 AS "sv_0", 895.294678 AS "sv_1", 0.992031 AS "sv_2", 3.333866 AS "sv_3"
     UNION ALL
     SELECT 47 AS "sv_idx", -2.000000 AS "coeff", 81.412109 AS "sv_0", 1254.374390 AS "sv_1", 0.194226 AS "sv_2", 8.164762 AS "sv_3"
     UNION ALL
     SELECT 48 AS "sv_idx", 2.000000 AS "coeff", 66.659485 AS "sv_0", 625.477356 AS "sv_1", 0.705919 AS "sv_2", 4.356689 AS "sv_3"
     UNION ALL
     SELECT 49 AS "sv_idx", -2.000000 AS "coeff", 40.067005 AS "sv_0", 524.247498 AS "sv_1", 0.463251 AS "sv_2", 1.522912 AS "sv_3"
     UNION ALL
     SELECT 50 AS "sv_idx", -2.000000 AS "coeff", 24.641842 AS "sv_0", 1358.054199 AS "sv_1", 0.264436 AS "sv_2", 10.968261 AS "sv_3"
     UNION ALL
     SELECT 51 AS "sv_idx", 2.000000 AS "coeff", 35.366142 AS "sv_0", 784.952942 AS "sv_1", 0.461541 AS "sv_2", 9.951669 AS "sv_3"
     UNION ALL
     SELECT 52 AS "sv_idx", -2.000000 AS "coeff", 15.098896 AS "sv_0", 889.292297 AS "sv_1", 0.382693 AS "sv_2", 8.700624 AS "sv_3"
     UNION ALL
     SELECT 53 AS "sv_idx", -2.000000 AS "coeff", 11.772216 AS "sv_0", 671.264099 AS "sv_1", 0.172757 AS "sv_2", 1.573729 AS "sv_3"
     UNION ALL
     SELECT 54 AS "sv_idx", 2.000000 AS "coeff", 67.252014 AS "sv_0", 1694.635620 AS "sv_1", 0.271050 AS "sv_2", 3.594086 AS "sv_3"
     UNION ALL
     SELECT 55 AS "sv_idx", -2.000000 AS "coeff", 39.873802 AS "sv_0", 428.048248 AS "sv_1", 0.235384 AS "sv_2", 2.176043 AS "sv_3"
     UNION ALL
     SELECT 56 AS "sv_idx", 2.000000 AS "coeff", 44.762737 AS "sv_0", 1255.201538 AS "sv_1", 0.591546 AS "sv_2", 2.754247 AS "sv_3"
     UNION ALL
     SELECT 57 AS "sv_idx", -2.000000 AS "coeff", 81.497955 AS "sv_0", 327.723633 AS "sv_1", 0.774569 AS "sv_2", 10.248817 AS "sv_3"
     UNION ALL
     SELECT 58 AS "sv_idx", -2.000000 AS "coeff", 85.125381 AS "sv_0", 1049.026855 AS "sv_1", 0.039136 AS "sv_2", 3.186899 AS "sv_3"
     UNION ALL
     SELECT 59 AS "sv_idx", 2.000000 AS "coeff", 82.923828 AS "sv_0", 1535.997559 AS "sv_1", 0.287537 AS "sv_2", 7.396835 AS "sv_3"
     UNION ALL
     SELECT 60 AS "sv_idx", 2.000000 AS "coeff", 17.167280 AS "sv_0", 1104.656250 AS "sv_1", 0.421381 AS "sv_2", 6.591000 AS "sv_3"
     UNION ALL
     SELECT 61 AS "sv_idx", -2.000000 AS "coeff", 48.198017 AS "sv_0", 353.104248 AS "sv_1", 0.725143 AS "sv_2", 10.405507 AS "sv_3"
     UNION ALL
     SELECT 62 AS "sv_idx", -2.000000 AS "coeff", 17.373148 AS "sv_0", 483.680237 AS "sv_1", 0.685229 AS "sv_2", 2.728044 AS "sv_3"
     UNION ALL
     SELECT 63 AS "sv_idx", 2.000000 AS "coeff", 7.321981 AS "sv_0", 487.752838 AS "sv_1", 0.993317 AS "sv_2", 5.340956 AS "sv_3"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -351.164032 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.000001 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
