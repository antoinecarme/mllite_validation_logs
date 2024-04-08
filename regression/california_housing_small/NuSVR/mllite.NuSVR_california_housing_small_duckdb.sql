WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
  FROM "california_housing_small" AS "ADS" 
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
   "Values"."sv_8" AS "sv_8"
  FROM
  (
     SELECT 0 AS "sv_idx", 1.000000 AS "coeff", -121.910004 AS "sv_0", 36.630001 AS "sv_1", 42.000000 AS "sv_2", 817.000000 AS "sv_3", 194.000000 AS "sv_4", 391.000000 AS "sv_5", 193.000000 AS "sv_6", 2.177600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 1 AS "sv_idx", -1.000000 AS "coeff", -121.430000 AS "sv_0", 38.660000 AS "sv_1", 35.000000 AS "sv_2", 1814.000000 AS "sv_3", 367.000000 AS "sv_4", 1076.000000 AS "sv_5", 372.000000 AS "sv_6", 2.717900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 2 AS "sv_idx", -1.000000 AS "coeff", -121.580002 AS "sv_0", 39.500000 AS "sv_1", 29.000000 AS "sv_2", 1947.000000 AS "sv_3", 383.000000 AS "sv_4", 925.000000 AS "sv_5", 337.000000 AS "sv_6", 2.165800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 3 AS "sv_idx", 1.000000 AS "coeff", -122.010002 AS "sv_0", 37.180000 AS "sv_1", 37.000000 AS "sv_2", 3852.000000 AS "sv_3", 652.000000 AS "sv_4", 1534.000000 AS "sv_5", 567.000000 AS "sv_6", 5.859600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "coeff", -122.440002 AS "sv_0", 37.779999 AS "sv_1", 52.000000 AS "sv_2", 1118.000000 AS "sv_3", 279.000000 AS "sv_4", 514.000000 AS "sv_5", 284.000000 AS "sv_6", 2.419600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 5 AS "sv_idx", -1.000000 AS "coeff", -118.290001 AS "sv_0", 33.930000 AS "sv_1", 32.000000 AS "sv_2", 1815.000000 AS "sv_3", 488.000000 AS "sv_4", 1715.000000 AS "sv_5", 475.000000 AS "sv_6", 1.724400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.000000 AS "coeff", -116.959999 AS "sv_0", 33.730000 AS "sv_1", 20.000000 AS "sv_2", 4735.000000 AS "sv_3", 973.000000 AS "sv_4", 2306.000000 AS "sv_5", 904.000000 AS "sv_6", 3.069000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 7 AS "sv_idx", -1.000000 AS "coeff", -121.309998 AS "sv_0", 38.259998 AS "sv_1", 22.000000 AS "sv_2", 1768.000000 AS "sv_3", 396.000000 AS "sv_4", 1005.000000 AS "sv_5", 420.000000 AS "sv_6", 1.884600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 8 AS "sv_idx", 1.000000 AS "coeff", -122.199997 AS "sv_0", 37.820000 AS "sv_1", 37.000000 AS "sv_2", 1229.000000 AS "sv_3", 181.000000 AS "sv_4", 420.000000 AS "sv_5", 176.000000 AS "sv_6", 7.017500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 9 AS "sv_idx", 1.000000 AS "coeff", -118.419998 AS "sv_0", 34.040001 AS "sv_1", 46.000000 AS "sv_2", 1508.000000 AS "sv_3", 276.000000 AS "sv_4", 639.000000 AS "sv_5", 273.000000 AS "sv_6", 4.925000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 10 AS "sv_idx", 1.000000 AS "coeff", -117.709999 AS "sv_0", 33.639999 AS "sv_1", 14.000000 AS "sv_2", 2945.000000 AS "sv_3", 356.000000 AS "sv_4", 1293.000000 AS "sv_5", 335.000000 AS "sv_6", 8.111000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.000000 AS "coeff", -118.120003 AS "sv_0", 33.939999 AS "sv_1", 33.000000 AS "sv_2", 2206.000000 AS "sv_3", 393.000000 AS "sv_4", 973.000000 AS "sv_5", 364.000000 AS "sv_6", 4.675000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 12 AS "sv_idx", -1.000000 AS "coeff", -121.430000 AS "sv_0", 38.619999 AS "sv_1", 36.000000 AS "sv_2", 1765.000000 AS "sv_3", 438.000000 AS "sv_4", 1008.000000 AS "sv_5", 382.000000 AS "sv_6", 2.063900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 13 AS "sv_idx", -1.000000 AS "coeff", -119.989998 AS "sv_0", 36.799999 AS "sv_1", 45.000000 AS "sv_2", 1270.000000 AS "sv_3", 242.000000 AS "sv_4", 598.000000 AS "sv_5", 214.000000 AS "sv_6", 3.281300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 14 AS "sv_idx", -1.000000 AS "coeff", -117.430000 AS "sv_0", 34.099998 AS "sv_1", 34.000000 AS "sv_2", 1345.000000 AS "sv_3", 265.000000 AS "sv_4", 834.000000 AS "sv_5", 290.000000 AS "sv_6", 3.701100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 15 AS "sv_idx", 1.000000 AS "coeff", -122.190002 AS "sv_0", 37.830002 AS "sv_1", 28.000000 AS "sv_2", 1326.000000 AS "sv_3", 184.000000 AS "sv_4", 463.000000 AS "sv_5", 190.000000 AS "sv_6", 8.204900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 16 AS "sv_idx", -1.000000 AS "coeff", -116.980003 AS "sv_0", 33.939999 AS "sv_1", 27.000000 AS "sv_2", 3459.000000 AS "sv_3", 640.000000 AS "sv_4", 1760.000000 AS "sv_5", 654.000000 AS "sv_6", 3.454500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 17 AS "sv_idx", -1.000000 AS "coeff", -122.599998 AS "sv_0", 38.930000 AS "sv_1", 16.000000 AS "sv_2", 1657.000000 AS "sv_3", 390.000000 AS "sv_4", 572.000000 AS "sv_5", 301.000000 AS "sv_6", 1.476700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 18 AS "sv_idx", 1.000000 AS "coeff", -117.720001 AS "sv_0", 33.430000 AS "sv_1", 5.000000 AS "sv_2", 1889.000000 AS "sv_3", 359.000000 AS "sv_4", 616.000000 AS "sv_5", 246.000000 AS "sv_6", 3.899200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 19 AS "sv_idx", 1.000000 AS "coeff", -117.169998 AS "sv_0", 32.740002 AS "sv_1", 38.000000 AS "sv_2", 5054.000000 AS "sv_3", 1168.000000 AS "sv_4", 2366.000000 AS "sv_5", 1103.000000 AS "sv_6", 2.942200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 20 AS "sv_idx", 1.000000 AS "coeff", -117.989998 AS "sv_0", 33.680000 AS "sv_1", 13.000000 AS "sv_2", 4000.000000 AS "sv_3", 883.000000 AS "sv_4", 1999.000000 AS "sv_5", 881.000000 AS "sv_6", 4.724500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 21 AS "sv_idx", -1.000000 AS "coeff", -116.209999 AS "sv_0", 33.709999 AS "sv_1", 19.000000 AS "sv_2", 3114.000000 AS "sv_3", 787.000000 AS "sv_4", 3157.000000 AS "sv_5", 772.000000 AS "sv_6", 1.708300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 22 AS "sv_idx", 1.000000 AS "coeff", -122.220001 AS "sv_0", 37.840000 AS "sv_1", 50.000000 AS "sv_2", 2935.000000 AS "sv_3", 473.000000 AS "sv_4", 1031.000000 AS "sv_5", 479.000000 AS "sv_6", 7.500000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 23 AS "sv_idx", -1.000000 AS "coeff", -117.389999 AS "sv_0", 34.070000 AS "sv_1", 26.000000 AS "sv_2", 1387.000000 AS "sv_3", 277.000000 AS "sv_4", 664.000000 AS "sv_5", 239.000000 AS "sv_6", 3.027800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 24 AS "sv_idx", -1.000000 AS "coeff", -121.440002 AS "sv_0", 38.520000 AS "sv_1", 36.000000 AS "sv_2", 3446.000000 AS "sv_3", 950.000000 AS "sv_4", 2460.000000 AS "sv_5", 847.000000 AS "sv_6", 1.652100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 25 AS "sv_idx", 1.000000 AS "coeff", -118.389999 AS "sv_0", 33.880001 AS "sv_1", 31.000000 AS "sv_2", 1448.000000 AS "sv_3", 244.000000 AS "sv_4", 607.000000 AS "sv_5", 259.000000 AS "sv_6", 8.151300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 26 AS "sv_idx", -1.000000 AS "coeff", -116.480003 AS "sv_0", 33.959999 AS "sv_1", 11.000000 AS "sv_2", 1381.000000 AS "sv_3", 300.000000 AS "sv_4", 644.000000 AS "sv_5", 248.000000 AS "sv_6", 2.338200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 27 AS "sv_idx", 1.000000 AS "coeff", -117.250000 AS "sv_0", 32.730000 AS "sv_1", 38.000000 AS "sv_2", 1840.000000 AS "sv_3", 291.000000 AS "sv_4", 633.000000 AS "sv_5", 283.000000 AS "sv_6", 4.912500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 28 AS "sv_idx", -1.000000 AS "coeff", -117.050003 AS "sv_0", 32.799999 AS "sv_1", 16.000000 AS "sv_2", 1561.000000 AS "sv_3", 378.000000 AS "sv_4", 574.000000 AS "sv_5", 350.000000 AS "sv_6", 3.003500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 29 AS "sv_idx", -1.000000 AS "coeff", -117.139999 AS "sv_0", 32.700001 AS "sv_1", 43.000000 AS "sv_2", 1126.000000 AS "sv_3", 289.000000 AS "sv_4", 1132.000000 AS "sv_5", 294.000000 AS "sv_6", 2.187500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 30 AS "sv_idx", 1.000000 AS "coeff", -117.940002 AS "sv_0", 33.889999 AS "sv_1", 30.000000 AS "sv_2", 2577.000000 AS "sv_3", 404.000000 AS "sv_4", 1076.000000 AS "sv_5", 374.000000 AS "sv_6", 6.752800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 31 AS "sv_idx", 1.000000 AS "coeff", -118.419998 AS "sv_0", 33.959999 AS "sv_1", 44.000000 AS "sv_2", 1282.000000 AS "sv_3", 216.000000 AS "sv_4", 494.000000 AS "sv_5", 209.000000 AS "sv_6", 5.618000 AS "sv_7", 0.000000 AS "sv_8"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -192125.187500 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.000000 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
