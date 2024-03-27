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
     SELECT 0 AS "sv_idx", 2.000000 AS "coeff", -121.910004 AS "sv_0", 36.630001 AS "sv_1", 42.000000 AS "sv_2", 817.000000 AS "sv_3", 194.000000 AS "sv_4", 391.000000 AS "sv_5", 193.000000 AS "sv_6", 2.177600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 1 AS "sv_idx", -2.000000 AS "coeff", -121.430000 AS "sv_0", 38.660000 AS "sv_1", 35.000000 AS "sv_2", 1814.000000 AS "sv_3", 367.000000 AS "sv_4", 1076.000000 AS "sv_5", 372.000000 AS "sv_6", 2.717900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 2 AS "sv_idx", -2.000000 AS "coeff", -121.580002 AS "sv_0", 39.500000 AS "sv_1", 29.000000 AS "sv_2", 1947.000000 AS "sv_3", 383.000000 AS "sv_4", 925.000000 AS "sv_5", 337.000000 AS "sv_6", 2.165800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 3 AS "sv_idx", 2.000000 AS "coeff", -120.239998 AS "sv_0", 39.349998 AS "sv_1", 8.000000 AS "sv_2", 4195.000000 AS "sv_3", 725.000000 AS "sv_4", 291.000000 AS "sv_5", 115.000000 AS "sv_6", 3.479200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 4 AS "sv_idx", 2.000000 AS "coeff", -122.019997 AS "sv_0", 38.369999 AS "sv_1", 16.000000 AS "sv_2", 2495.000000 AS "sv_3", 331.000000 AS "sv_4", 1118.000000 AS "sv_5", 338.000000 AS "sv_6", 6.489400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 5 AS "sv_idx", 2.000000 AS "coeff", -122.010002 AS "sv_0", 37.180000 AS "sv_1", 37.000000 AS "sv_2", 3852.000000 AS "sv_3", 652.000000 AS "sv_4", 1534.000000 AS "sv_5", 567.000000 AS "sv_6", 5.859600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 6 AS "sv_idx", 2.000000 AS "coeff", -117.699997 AS "sv_0", 33.500000 AS "sv_1", 4.000000 AS "sv_2", 2351.000000 AS "sv_3", 445.000000 AS "sv_4", 834.000000 AS "sv_5", 397.000000 AS "sv_6", 5.567700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 7 AS "sv_idx", -2.000000 AS "coeff", -117.410004 AS "sv_0", 33.959999 AS "sv_1", 27.000000 AS "sv_2", 2341.000000 AS "sv_3", 418.000000 AS "sv_4", 1272.000000 AS "sv_5", 415.000000 AS "sv_6", 3.020800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 8 AS "sv_idx", 2.000000 AS "coeff", -122.449997 AS "sv_0", 37.669998 AS "sv_1", 36.000000 AS "sv_2", 1664.000000 AS "sv_3", 326.000000 AS "sv_4", 963.000000 AS "sv_5", 322.000000 AS "sv_6", 4.781300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 9 AS "sv_idx", -2.000000 AS "coeff", -122.730003 AS "sv_0", 38.439999 AS "sv_1", 35.000000 AS "sv_2", 1120.000000 AS "sv_3", 297.000000 AS "sv_4", 659.000000 AS "sv_5", 274.000000 AS "sv_6", 2.382400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 10 AS "sv_idx", 2.000000 AS "coeff", -121.919998 AS "sv_0", 37.480000 AS "sv_1", 23.000000 AS "sv_2", 4314.000000 AS "sv_3", 676.000000 AS "sv_4", 1972.000000 AS "sv_5", 623.000000 AS "sv_6", 5.381300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 11 AS "sv_idx", 2.000000 AS "coeff", -122.440002 AS "sv_0", 37.779999 AS "sv_1", 52.000000 AS "sv_2", 1118.000000 AS "sv_3", 279.000000 AS "sv_4", 514.000000 AS "sv_5", 284.000000 AS "sv_6", 2.419600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 12 AS "sv_idx", -2.000000 AS "coeff", -118.290001 AS "sv_0", 33.930000 AS "sv_1", 32.000000 AS "sv_2", 1815.000000 AS "sv_3", 488.000000 AS "sv_4", 1715.000000 AS "sv_5", 475.000000 AS "sv_6", 1.724400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 13 AS "sv_idx", -2.000000 AS "coeff", -121.790001 AS "sv_0", 38.000000 AS "sv_1", 34.000000 AS "sv_2", 3090.000000 AS "sv_3", 593.000000 AS "sv_4", 1588.000000 AS "sv_5", 566.000000 AS "sv_6", 3.611800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 14 AS "sv_idx", -2.000000 AS "coeff", -116.959999 AS "sv_0", 33.730000 AS "sv_1", 20.000000 AS "sv_2", 4735.000000 AS "sv_3", 973.000000 AS "sv_4", 2306.000000 AS "sv_5", 904.000000 AS "sv_6", 3.069000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 15 AS "sv_idx", -2.000000 AS "coeff", -121.309998 AS "sv_0", 38.259998 AS "sv_1", 22.000000 AS "sv_2", 1768.000000 AS "sv_3", 396.000000 AS "sv_4", 1005.000000 AS "sv_5", 420.000000 AS "sv_6", 1.884600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 16 AS "sv_idx", -2.000000 AS "coeff", -118.110001 AS "sv_0", 33.970001 AS "sv_1", 33.000000 AS "sv_2", 2125.000000 AS "sv_3", 500.000000 AS "sv_4", 1672.000000 AS "sv_5", 476.000000 AS "sv_6", 3.639700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 17 AS "sv_idx", -2.000000 AS "coeff", -118.279999 AS "sv_0", 34.040001 AS "sv_1", 19.000000 AS "sv_2", 460.000000 AS "sv_3", 241.000000 AS "sv_4", 890.000000 AS "sv_5", 229.000000 AS "sv_6", 1.608900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 18 AS "sv_idx", 2.000000 AS "coeff", -122.040001 AS "sv_0", 37.529999 AS "sv_1", 25.000000 AS "sv_2", 4458.000000 AS "sv_3", 922.000000 AS "sv_4", 2998.000000 AS "sv_5", 890.000000 AS "sv_6", 3.966700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 19 AS "sv_idx", -2.000000 AS "coeff", -121.769997 AS "sv_0", 36.709999 AS "sv_1", 18.000000 AS "sv_2", 6601.000000 AS "sv_3", 1395.000000 AS "sv_4", 3562.000000 AS "sv_5", 1299.000000 AS "sv_6", 3.512000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 20 AS "sv_idx", -2.000000 AS "coeff", -117.230003 AS "sv_0", 33.380001 AS "sv_1", 18.000000 AS "sv_2", 3339.000000 AS "sv_3", 704.000000 AS "sv_4", 1727.000000 AS "sv_5", 652.000000 AS "sv_6", 2.839300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 21 AS "sv_idx", -2.000000 AS "coeff", -122.120003 AS "sv_0", 38.009998 AS "sv_1", 50.000000 AS "sv_2", 1738.000000 AS "sv_3", 355.000000 AS "sv_4", 837.000000 AS "sv_5", 363.000000 AS "sv_6", 3.609000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 22 AS "sv_idx", 2.000000 AS "coeff", -122.199997 AS "sv_0", 37.820000 AS "sv_1", 37.000000 AS "sv_2", 1229.000000 AS "sv_3", 181.000000 AS "sv_4", 420.000000 AS "sv_5", 176.000000 AS "sv_6", 7.017500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 23 AS "sv_idx", 2.000000 AS "coeff", -118.419998 AS "sv_0", 34.040001 AS "sv_1", 46.000000 AS "sv_2", 1508.000000 AS "sv_3", 276.000000 AS "sv_4", 639.000000 AS "sv_5", 273.000000 AS "sv_6", 4.925000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 24 AS "sv_idx", 2.000000 AS "coeff", -117.709999 AS "sv_0", 33.639999 AS "sv_1", 14.000000 AS "sv_2", 2945.000000 AS "sv_3", 356.000000 AS "sv_4", 1293.000000 AS "sv_5", 335.000000 AS "sv_6", 8.111000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 25 AS "sv_idx", 2.000000 AS "coeff", -118.120003 AS "sv_0", 33.939999 AS "sv_1", 33.000000 AS "sv_2", 2206.000000 AS "sv_3", 393.000000 AS "sv_4", 973.000000 AS "sv_5", 364.000000 AS "sv_6", 4.675000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 26 AS "sv_idx", -2.000000 AS "coeff", -118.360001 AS "sv_0", 34.029999 AS "sv_1", 43.000000 AS "sv_2", 1690.000000 AS "sv_3", 379.000000 AS "sv_4", 1017.000000 AS "sv_5", 359.000000 AS "sv_6", 2.107800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 27 AS "sv_idx", 2.000000 AS "coeff", -118.339996 AS "sv_0", 33.889999 AS "sv_1", 36.000000 AS "sv_2", 2392.000000 AS "sv_3", 444.000000 AS "sv_4", 1346.000000 AS "sv_5", 445.000000 AS "sv_6", 6.008800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 28 AS "sv_idx", -2.000000 AS "coeff", -121.430000 AS "sv_0", 38.619999 AS "sv_1", 36.000000 AS "sv_2", 1765.000000 AS "sv_3", 438.000000 AS "sv_4", 1008.000000 AS "sv_5", 382.000000 AS "sv_6", 2.063900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 29 AS "sv_idx", 2.000000 AS "coeff", -121.940002 AS "sv_0", 38.360001 AS "sv_1", 2.000000 AS "sv_2", 4953.000000 AS "sv_3", 735.000000 AS "sv_4", 1791.000000 AS "sv_5", 562.000000 AS "sv_6", 5.034600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 30 AS "sv_idx", -2.000000 AS "coeff", -119.989998 AS "sv_0", 36.799999 AS "sv_1", 45.000000 AS "sv_2", 1270.000000 AS "sv_3", 242.000000 AS "sv_4", 598.000000 AS "sv_5", 214.000000 AS "sv_6", 3.281300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 31 AS "sv_idx", -2.000000 AS "coeff", -117.320000 AS "sv_0", 33.799999 AS "sv_1", 11.000000 AS "sv_2", 3196.000000 AS "sv_3", 576.000000 AS "sv_4", 1757.000000 AS "sv_5", 552.000000 AS "sv_6", 4.098200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 32 AS "sv_idx", -2.000000 AS "coeff", -117.430000 AS "sv_0", 34.099998 AS "sv_1", 34.000000 AS "sv_2", 1345.000000 AS "sv_3", 265.000000 AS "sv_4", 834.000000 AS "sv_5", 290.000000 AS "sv_6", 3.701100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 33 AS "sv_idx", -2.000000 AS "coeff", -121.430000 AS "sv_0", 37.730000 AS "sv_1", 40.000000 AS "sv_2", 1718.000000 AS "sv_3", 391.000000 AS "sv_4", 1312.000000 AS "sv_5", 388.000000 AS "sv_6", 2.995500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 34 AS "sv_idx", 2.000000 AS "coeff", -116.970001 AS "sv_0", 32.650002 AS "sv_1", 4.000000 AS "sv_2", 16450.000000 AS "sv_3", 2833.000000 AS "sv_4", 7985.000000 AS "sv_5", 2683.000000 AS "sv_6", 5.663100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 35 AS "sv_idx", 2.000000 AS "coeff", -121.480003 AS "sv_0", 38.549999 AS "sv_1", 52.000000 AS "sv_2", 1684.000000 AS "sv_3", 309.000000 AS "sv_4", 675.000000 AS "sv_5", 296.000000 AS "sv_6", 4.146700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 36 AS "sv_idx", 2.000000 AS "coeff", -122.190002 AS "sv_0", 37.830002 AS "sv_1", 28.000000 AS "sv_2", 1326.000000 AS "sv_3", 184.000000 AS "sv_4", 463.000000 AS "sv_5", 190.000000 AS "sv_6", 8.204900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 37 AS "sv_idx", -2.000000 AS "coeff", -116.980003 AS "sv_0", 33.939999 AS "sv_1", 27.000000 AS "sv_2", 3459.000000 AS "sv_3", 640.000000 AS "sv_4", 1760.000000 AS "sv_5", 654.000000 AS "sv_6", 3.454500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 38 AS "sv_idx", -2.000000 AS "coeff", -118.169998 AS "sv_0", 33.959999 AS "sv_1", 25.000000 AS "sv_2", 3297.000000 AS "sv_3", 1066.000000 AS "sv_4", 5027.000000 AS "sv_5", 1041.000000 AS "sv_6", 2.281700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 39 AS "sv_idx", 2.000000 AS "coeff", -118.199997 AS "sv_0", 33.790001 AS "sv_1", 47.000000 AS "sv_2", 767.000000 AS "sv_3", 195.000000 AS "sv_4", 569.000000 AS "sv_5", 195.000000 AS "sv_6", 2.951400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 40 AS "sv_idx", 2.000000 AS "coeff", -122.050003 AS "sv_0", 37.900002 AS "sv_1", 24.000000 AS "sv_2", 4125.000000 AS "sv_3", 1020.000000 AS "sv_4", 1699.000000 AS "sv_5", 873.000000 AS "sv_6", 2.952600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 41 AS "sv_idx", -2.000000 AS "coeff", -117.110001 AS "sv_0", 32.730000 AS "sv_1", 34.000000 AS "sv_2", 1096.000000 AS "sv_3", 221.000000 AS "sv_4", 574.000000 AS "sv_5", 223.000000 AS "sv_6", 3.835500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 42 AS "sv_idx", -2.000000 AS "coeff", -122.599998 AS "sv_0", 38.930000 AS "sv_1", 16.000000 AS "sv_2", 1657.000000 AS "sv_3", 390.000000 AS "sv_4", 572.000000 AS "sv_5", 301.000000 AS "sv_6", 1.476700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 43 AS "sv_idx", 2.000000 AS "coeff", -117.720001 AS "sv_0", 33.430000 AS "sv_1", 5.000000 AS "sv_2", 1889.000000 AS "sv_3", 359.000000 AS "sv_4", 616.000000 AS "sv_5", 246.000000 AS "sv_6", 3.899200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 44 AS "sv_idx", 2.000000 AS "coeff", -118.949997 AS "sv_0", 34.180000 AS "sv_1", 25.000000 AS "sv_2", 2237.000000 AS "sv_3", 331.000000 AS "sv_4", 1121.000000 AS "sv_5", 365.000000 AS "sv_6", 6.099400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 45 AS "sv_idx", 2.000000 AS "coeff", -117.169998 AS "sv_0", 32.740002 AS "sv_1", 38.000000 AS "sv_2", 5054.000000 AS "sv_3", 1168.000000 AS "sv_4", 2366.000000 AS "sv_5", 1103.000000 AS "sv_6", 2.942200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 46 AS "sv_idx", 2.000000 AS "coeff", -117.989998 AS "sv_0", 33.680000 AS "sv_1", 13.000000 AS "sv_2", 4000.000000 AS "sv_3", 883.000000 AS "sv_4", 1999.000000 AS "sv_5", 881.000000 AS "sv_6", 4.724500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 47 AS "sv_idx", -2.000000 AS "coeff", -116.209999 AS "sv_0", 33.709999 AS "sv_1", 19.000000 AS "sv_2", 3114.000000 AS "sv_3", 787.000000 AS "sv_4", 3157.000000 AS "sv_5", 772.000000 AS "sv_6", 1.708300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 48 AS "sv_idx", 2.000000 AS "coeff", -122.220001 AS "sv_0", 37.840000 AS "sv_1", 50.000000 AS "sv_2", 2935.000000 AS "sv_3", 473.000000 AS "sv_4", 1031.000000 AS "sv_5", 479.000000 AS "sv_6", 7.500000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 49 AS "sv_idx", -2.000000 AS "coeff", -117.400002 AS "sv_0", 34.090000 AS "sv_1", 5.000000 AS "sv_2", 6190.000000 AS "sv_3", 993.000000 AS "sv_4", 3615.000000 AS "sv_5", 963.000000 AS "sv_6", 4.403400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 50 AS "sv_idx", 2.000000 AS "coeff", -118.320000 AS "sv_0", 33.900002 AS "sv_1", 35.000000 AS "sv_2", 3189.000000 AS "sv_3", 680.000000 AS "sv_4", 1882.000000 AS "sv_5", 651.000000 AS "sv_6", 3.662500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 51 AS "sv_idx", -2.000000 AS "coeff", -117.389999 AS "sv_0", 34.070000 AS "sv_1", 26.000000 AS "sv_2", 1387.000000 AS "sv_3", 277.000000 AS "sv_4", 664.000000 AS "sv_5", 239.000000 AS "sv_6", 3.027800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 52 AS "sv_idx", -2.000000 AS "coeff", -121.440002 AS "sv_0", 38.520000 AS "sv_1", 36.000000 AS "sv_2", 3446.000000 AS "sv_3", 950.000000 AS "sv_4", 2460.000000 AS "sv_5", 847.000000 AS "sv_6", 1.652100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 53 AS "sv_idx", 2.000000 AS "coeff", -118.389999 AS "sv_0", 33.880001 AS "sv_1", 31.000000 AS "sv_2", 1448.000000 AS "sv_3", 244.000000 AS "sv_4", 607.000000 AS "sv_5", 259.000000 AS "sv_6", 8.151300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 54 AS "sv_idx", -2.000000 AS "coeff", -121.370003 AS "sv_0", 38.570000 AS "sv_1", 16.000000 AS "sv_2", 3895.000000 AS "sv_3", 896.000000 AS "sv_4", 1762.000000 AS "sv_5", 855.000000 AS "sv_6", 2.663500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 55 AS "sv_idx", -2.000000 AS "coeff", -116.480003 AS "sv_0", 33.959999 AS "sv_1", 11.000000 AS "sv_2", 1381.000000 AS "sv_3", 300.000000 AS "sv_4", 644.000000 AS "sv_5", 248.000000 AS "sv_6", 2.338200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 56 AS "sv_idx", 2.000000 AS "coeff", -117.250000 AS "sv_0", 32.730000 AS "sv_1", 38.000000 AS "sv_2", 1840.000000 AS "sv_3", 291.000000 AS "sv_4", 633.000000 AS "sv_5", 283.000000 AS "sv_6", 4.912500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 57 AS "sv_idx", -2.000000 AS "coeff", -117.050003 AS "sv_0", 32.799999 AS "sv_1", 16.000000 AS "sv_2", 1561.000000 AS "sv_3", 378.000000 AS "sv_4", 574.000000 AS "sv_5", 350.000000 AS "sv_6", 3.003500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 58 AS "sv_idx", 2.000000 AS "coeff", -118.360001 AS "sv_0", 33.880001 AS "sv_1", 26.000000 AS "sv_2", 1375.000000 AS "sv_3", 286.000000 AS "sv_4", 829.000000 AS "sv_5", 278.000000 AS "sv_6", 3.984400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 59 AS "sv_idx", 2.000000 AS "coeff", -118.209999 AS "sv_0", 34.099998 AS "sv_1", 36.000000 AS "sv_2", 2000.000000 AS "sv_3", 533.000000 AS "sv_4", 1234.000000 AS "sv_5", 535.000000 AS "sv_6", 3.743700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 60 AS "sv_idx", -2.000000 AS "coeff", -117.139999 AS "sv_0", 32.700001 AS "sv_1", 43.000000 AS "sv_2", 1126.000000 AS "sv_3", 289.000000 AS "sv_4", 1132.000000 AS "sv_5", 294.000000 AS "sv_6", 2.187500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 61 AS "sv_idx", 2.000000 AS "coeff", -117.940002 AS "sv_0", 33.889999 AS "sv_1", 30.000000 AS "sv_2", 2577.000000 AS "sv_3", 404.000000 AS "sv_4", 1076.000000 AS "sv_5", 374.000000 AS "sv_6", 6.752800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 62 AS "sv_idx", 2.000000 AS "coeff", -118.419998 AS "sv_0", 33.959999 AS "sv_1", 44.000000 AS "sv_2", 1282.000000 AS "sv_3", 216.000000 AS "sv_4", 494.000000 AS "sv_5", 209.000000 AS "sv_6", 5.618000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 63 AS "sv_idx", -2.000000 AS "coeff", -117.949997 AS "sv_0", 34.040001 AS "sv_1", 27.000000 AS "sv_2", 2610.000000 AS "sv_3", 846.000000 AS "sv_4", 2296.000000 AS "sv_5", 750.000000 AS "sv_6", 2.274000 AS "sv_7", 0.000000 AS "sv_8"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -174900.531250 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  exp(min(max(-32.0, -0.000000 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2))), 32.0))  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
