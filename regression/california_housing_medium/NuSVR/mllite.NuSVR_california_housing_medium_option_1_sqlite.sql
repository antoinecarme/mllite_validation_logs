WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8"
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
   "Values"."sv_8" AS "sv_8"
  FROM
  (
     SELECT 0 AS "sv_idx", 1.000000 AS "coeff", -122.230003 AS "sv_0", 37.880001 AS "sv_1", 41.000000 AS "sv_2", 880.000000 AS "sv_3", 129.000000 AS "sv_4", 322.000000 AS "sv_5", 126.000000 AS "sv_6", 8.325200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 1 AS "sv_idx", -1.000000 AS "coeff", -122.279999 AS "sv_0", 37.820000 AS "sv_1", 52.000000 AS "sv_2", 1387.000000 AS "sv_3", 341.000000 AS "sv_4", 1074.000000 AS "sv_5", 304.000000 AS "sv_6", 1.217100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 2 AS "sv_idx", -1.000000 AS "coeff", -122.290001 AS "sv_0", 37.820000 AS "sv_1", 2.000000 AS "sv_2", 158.000000 AS "sv_3", 43.000000 AS "sv_4", 94.000000 AS "sv_5", 57.000000 AS "sv_6", 2.562500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.000000 AS "coeff", -122.290001 AS "sv_0", 37.830002 AS "sv_1", 52.000000 AS "sv_2", 1121.000000 AS "sv_3", 211.000000 AS "sv_4", 554.000000 AS "sv_5", 187.000000 AS "sv_6", 3.392900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 4 AS "sv_idx", -1.000000 AS "coeff", -122.290001 AS "sv_0", 37.820000 AS "sv_1", 49.000000 AS "sv_2", 135.000000 AS "sv_3", 29.000000 AS "sv_4", 86.000000 AS "sv_5", 23.000000 AS "sv_6", 6.118300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 5 AS "sv_idx", -1.000000 AS "coeff", -122.300003 AS "sv_0", 37.810001 AS "sv_1", 52.000000 AS "sv_2", 1224.000000 AS "sv_3", 237.000000 AS "sv_4", 521.000000 AS "sv_5", 159.000000 AS "sv_6", 1.191000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.000000 AS "coeff", -122.300003 AS "sv_0", 37.810001 AS "sv_1", 48.000000 AS "sv_2", 828.000000 AS "sv_3", 182.000000 AS "sv_4", 392.000000 AS "sv_5", 133.000000 AS "sv_6", 2.593800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 7 AS "sv_idx", -1.000000 AS "coeff", -122.300003 AS "sv_0", 37.810001 AS "sv_1", 52.000000 AS "sv_2", 1010.000000 AS "sv_3", 209.000000 AS "sv_4", 604.000000 AS "sv_5", 187.000000 AS "sv_6", 1.166700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 8 AS "sv_idx", -1.000000 AS "coeff", -122.290001 AS "sv_0", 37.799999 AS "sv_1", 52.000000 AS "sv_2", 1027.000000 AS "sv_3", 244.000000 AS "sv_4", 492.000000 AS "sv_5", 147.000000 AS "sv_6", 2.609400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 9 AS "sv_idx", -1.000000 AS "coeff", -122.290001 AS "sv_0", 37.810001 AS "sv_1", 49.000000 AS "sv_2", 844.000000 AS "sv_3", 204.000000 AS "sv_4", 560.000000 AS "sv_5", 152.000000 AS "sv_6", 1.750000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 10 AS "sv_idx", -1.000000 AS "coeff", -122.290001 AS "sv_0", 37.810001 AS "sv_1", 46.000000 AS "sv_2", 12.000000 AS "sv_3", 4.000000 AS "sv_4", 18.000000 AS "sv_5", 7.000000 AS "sv_6", 0.499900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 11 AS "sv_idx", 1.000000 AS "coeff", -122.269997 AS "sv_0", 37.799999 AS "sv_1", 52.000000 AS "sv_2", 249.000000 AS "sv_3", 78.000000 AS "sv_4", 396.000000 AS "sv_5", 85.000000 AS "sv_6", 1.243400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 12 AS "sv_idx", 1.000000 AS "coeff", -122.239998 AS "sv_0", 37.840000 AS "sv_1", 52.000000 AS "sv_2", 3529.000000 AS "sv_3", 574.000000 AS "sv_4", 1177.000000 AS "sv_5", 555.000000 AS "sv_6", 5.177300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 13 AS "sv_idx", 1.000000 AS "coeff", -122.239998 AS "sv_0", 37.849998 AS "sv_1", 52.000000 AS "sv_2", 2612.000000 AS "sv_3", 365.000000 AS "sv_4", 901.000000 AS "sv_5", 367.000000 AS "sv_6", 7.235400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 14 AS "sv_idx", 1.000000 AS "coeff", -122.209999 AS "sv_0", 37.830002 AS "sv_1", 40.000000 AS "sv_2", 4991.000000 AS "sv_3", 674.000000 AS "sv_4", 1616.000000 AS "sv_5", 654.000000 AS "sv_6", 7.554400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 15 AS "sv_idx", 1.000000 AS "coeff", -122.190002 AS "sv_0", 37.840000 AS "sv_1", 18.000000 AS "sv_2", 1617.000000 AS "sv_3", 210.000000 AS "sv_4", 533.000000 AS "sv_5", 194.000000 AS "sv_6", 11.601700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 16 AS "sv_idx", 1.000000 AS "coeff", -122.180000 AS "sv_0", 37.810001 AS "sv_1", 30.000000 AS "sv_2", 292.000000 AS "sv_3", 38.000000 AS "sv_4", 126.000000 AS "sv_5", 52.000000 AS "sv_6", 6.362400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 17 AS "sv_idx", 1.000000 AS "coeff", -122.220001 AS "sv_0", 37.810001 AS "sv_1", 52.000000 AS "sv_2", 2927.000000 AS "sv_3", 402.000000 AS "sv_4", 1021.000000 AS "sv_5", 380.000000 AS "sv_6", 8.156400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 18 AS "sv_idx", 1.000000 AS "coeff", -122.230003 AS "sv_0", 37.810001 AS "sv_1", 52.000000 AS "sv_2", 2315.000000 AS "sv_3", 292.000000 AS "sv_4", 861.000000 AS "sv_5", 258.000000 AS "sv_6", 8.879300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 19 AS "sv_idx", -1.000000 AS "coeff", -122.250000 AS "sv_0", 37.790001 AS "sv_1", 51.000000 AS "sv_2", 175.000000 AS "sv_3", 43.000000 AS "sv_4", 228.000000 AS "sv_5", 55.000000 AS "sv_6", 2.100000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 20 AS "sv_idx", -1.000000 AS "coeff", -122.230003 AS "sv_0", 37.770000 AS "sv_1", 52.000000 AS "sv_2", 769.000000 AS "sv_3", 206.000000 AS "sv_4", 612.000000 AS "sv_5", 183.000000 AS "sv_6", 2.570000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 21 AS "sv_idx", -1.000000 AS "coeff", -122.230003 AS "sv_0", 37.779999 AS "sv_1", 52.000000 AS "sv_2", 472.000000 AS "sv_3", 146.000000 AS "sv_4", 415.000000 AS "sv_5", 126.000000 AS "sv_6", 2.642900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 22 AS "sv_idx", -1.000000 AS "coeff", -122.230003 AS "sv_0", 37.779999 AS "sv_1", 52.000000 AS "sv_2", 862.000000 AS "sv_3", 215.000000 AS "sv_4", 994.000000 AS "sv_5", 213.000000 AS "sv_6", 3.025700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 23 AS "sv_idx", -1.000000 AS "coeff", -122.209999 AS "sv_0", 37.759998 AS "sv_1", 52.000000 AS "sv_2", 1420.000000 AS "sv_3", 314.000000 AS "sv_4", 1085.000000 AS "sv_5", 300.000000 AS "sv_6", 1.754600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 24 AS "sv_idx", -1.000000 AS "coeff", -122.209999 AS "sv_0", 37.770000 AS "sv_1", 52.000000 AS "sv_2", 591.000000 AS "sv_3", 173.000000 AS "sv_4", 353.000000 AS "sv_5", 137.000000 AS "sv_6", 4.090400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 25 AS "sv_idx", -1.000000 AS "coeff", -122.190002 AS "sv_0", 37.759998 AS "sv_1", 41.000000 AS "sv_2", 921.000000 AS "sv_3", 207.000000 AS "sv_4", 522.000000 AS "sv_5", 159.000000 AS "sv_6", 1.208300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 26 AS "sv_idx", -1.000000 AS "coeff", -122.190002 AS "sv_0", 37.759998 AS "sv_1", 45.000000 AS "sv_2", 995.000000 AS "sv_3", 238.000000 AS "sv_4", 630.000000 AS "sv_5", 237.000000 AS "sv_6", 1.925000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 27 AS "sv_idx", -1.000000 AS "coeff", -122.199997 AS "sv_0", 37.750000 AS "sv_1", 36.000000 AS "sv_2", 606.000000 AS "sv_3", 132.000000 AS "sv_4", 531.000000 AS "sv_5", 133.000000 AS "sv_6", 1.580900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 28 AS "sv_idx", -0.599895 AS "coeff", -122.190002 AS "sv_0", 37.759998 AS "sv_1", 38.000000 AS "sv_2", 1493.000000 AS "sv_3", 370.000000 AS "sv_4", 1144.000000 AS "sv_5", 351.000000 AS "sv_6", 0.768300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 29 AS "sv_idx", -1.000000 AS "coeff", -122.190002 AS "sv_0", 37.750000 AS "sv_1", 19.000000 AS "sv_2", 2207.000000 AS "sv_3", 565.000000 AS "sv_4", 1481.000000 AS "sv_5", 520.000000 AS "sv_6", 1.319400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 30 AS "sv_idx", -1.000000 AS "coeff", -122.190002 AS "sv_0", 37.730000 AS "sv_1", 44.000000 AS "sv_2", 1066.000000 AS "sv_3", 253.000000 AS "sv_4", 825.000000 AS "sv_5", 244.000000 AS "sv_6", 2.153800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 31 AS "sv_idx", -1.000000 AS "coeff", -122.180000 AS "sv_0", 37.730000 AS "sv_1", 42.000000 AS "sv_2", 909.000000 AS "sv_3", 215.000000 AS "sv_4", 646.000000 AS "sv_5", 198.000000 AS "sv_6", 2.906300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 32 AS "sv_idx", -1.000000 AS "coeff", -122.180000 AS "sv_0", 37.730000 AS "sv_1", 43.000000 AS "sv_2", 1391.000000 AS "sv_3", 293.000000 AS "sv_4", 855.000000 AS "sv_5", 285.000000 AS "sv_6", 2.519200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 33 AS "sv_idx", -1.000000 AS "coeff", -122.180000 AS "sv_0", 37.730000 AS "sv_1", 44.000000 AS "sv_2", 548.000000 AS "sv_3", 119.000000 AS "sv_4", 435.000000 AS "sv_5", 136.000000 AS "sv_6", 2.111100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 34 AS "sv_idx", -1.000000 AS "coeff", -122.180000 AS "sv_0", 37.750000 AS "sv_1", 45.000000 AS "sv_2", 330.000000 AS "sv_3", 76.000000 AS "sv_4", 282.000000 AS "sv_5", 80.000000 AS "sv_6", 4.046900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 35 AS "sv_idx", 0.599895 AS "coeff", -122.269997 AS "sv_0", 37.900002 AS "sv_1", 42.000000 AS "sv_2", 1650.000000 AS "sv_3", 274.000000 AS "sv_4", 645.000000 AS "sv_5", 256.000000 AS "sv_6", 5.622800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 36 AS "sv_idx", 1.000000 AS "coeff", -122.269997 AS "sv_0", 37.900002 AS "sv_1", 52.000000 AS "sv_2", 2041.000000 AS "sv_3", 270.000000 AS "sv_4", 671.000000 AS "sv_5", 253.000000 AS "sv_6", 6.941400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 37 AS "sv_idx", 1.000000 AS "coeff", -122.269997 AS "sv_0", 37.889999 AS "sv_1", 52.000000 AS "sv_2", 3046.000000 AS "sv_3", 373.000000 AS "sv_4", 975.000000 AS "sv_5", 365.000000 AS "sv_6", 8.834200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 38 AS "sv_idx", 1.000000 AS "coeff", -122.279999 AS "sv_0", 37.900002 AS "sv_1", 52.000000 AS "sv_2", 2003.000000 AS "sv_3", 250.000000 AS "sv_4", 658.000000 AS "sv_5", 244.000000 AS "sv_6", 10.082500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 39 AS "sv_idx", 1.000000 AS "coeff", -122.260002 AS "sv_0", 37.880001 AS "sv_1", 52.000000 AS "sv_2", 2551.000000 AS "sv_3", 417.000000 AS "sv_4", 894.000000 AS "sv_5", 404.000000 AS "sv_6", 6.242500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 40 AS "sv_idx", 1.000000 AS "coeff", -122.260002 AS "sv_0", 37.880001 AS "sv_1", 52.000000 AS "sv_2", 2255.000000 AS "sv_3", 410.000000 AS "sv_4", 823.000000 AS "sv_5", 377.000000 AS "sv_6", 5.797900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 41 AS "sv_idx", 1.000000 AS "coeff", -122.250000 AS "sv_0", 37.869999 AS "sv_1", 41.000000 AS "sv_2", 685.000000 AS "sv_3", 141.000000 AS "sv_4", 266.000000 AS "sv_5", 123.000000 AS "sv_6", 5.228900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 42 AS "sv_idx", 1.000000 AS "coeff", -122.250000 AS "sv_0", 37.869999 AS "sv_1", 52.000000 AS "sv_2", 609.000000 AS "sv_3", 236.000000 AS "sv_4", 1349.000000 AS "sv_5", 250.000000 AS "sv_6", 1.169600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 43 AS "sv_idx", 1.000000 AS "coeff", -122.250000 AS "sv_0", 37.860001 AS "sv_1", 48.000000 AS "sv_2", 2153.000000 AS "sv_3", 517.000000 AS "sv_4", 1656.000000 AS "sv_5", 459.000000 AS "sv_6", 3.041700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 44 AS "sv_idx", 1.000000 AS "coeff", -122.250000 AS "sv_0", 37.860001 AS "sv_1", 52.000000 AS "sv_2", 1389.000000 AS "sv_3", 191.000000 AS "sv_4", 514.000000 AS "sv_5", 202.000000 AS "sv_6", 7.089700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 45 AS "sv_idx", 1.000000 AS "coeff", -122.250000 AS "sv_0", 37.860001 AS "sv_1", 52.000000 AS "sv_2", 1709.000000 AS "sv_3", 318.000000 AS "sv_4", 719.000000 AS "sv_5", 295.000000 AS "sv_6", 5.046300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 46 AS "sv_idx", 1.000000 AS "coeff", -122.239998 AS "sv_0", 37.860001 AS "sv_1", 52.000000 AS "sv_2", 1668.000000 AS "sv_3", 225.000000 AS "sv_4", 517.000000 AS "sv_5", 214.000000 AS "sv_6", 7.852100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 47 AS "sv_idx", 1.000000 AS "coeff", -122.239998 AS "sv_0", 37.849998 AS "sv_1", 52.000000 AS "sv_2", 3726.000000 AS "sv_3", 474.000000 AS "sv_4", 1366.000000 AS "sv_5", 496.000000 AS "sv_6", 9.395900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 48 AS "sv_idx", 1.000000 AS "coeff", -122.250000 AS "sv_0", 37.860001 AS "sv_1", 52.000000 AS "sv_2", 4048.000000 AS "sv_3", 663.000000 AS "sv_4", 1316.000000 AS "sv_5", 590.000000 AS "sv_6", 5.379400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 49 AS "sv_idx", 1.000000 AS "coeff", -122.230003 AS "sv_0", 37.830002 AS "sv_1", 52.000000 AS "sv_2", 2990.000000 AS "sv_3", 379.000000 AS "sv_4", 947.000000 AS "sv_5", 361.000000 AS "sv_6", 7.877200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 50 AS "sv_idx", 1.000000 AS "coeff", -122.220001 AS "sv_0", 37.820000 AS "sv_1", 39.000000 AS "sv_2", 2492.000000 AS "sv_3", 310.000000 AS "sv_4", 808.000000 AS "sv_5", 315.000000 AS "sv_6", 11.860300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 51 AS "sv_idx", 1.000000 AS "coeff", -122.220001 AS "sv_0", 37.820000 AS "sv_1", 42.000000 AS "sv_2", 2991.000000 AS "sv_3", 335.000000 AS "sv_4", 1018.000000 AS "sv_5", 335.000000 AS "sv_6", 13.499000 AS "sv_7", 0.000000 AS "sv_8"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -228602.156250 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -0.000000 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
