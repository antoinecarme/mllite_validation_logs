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
     SELECT 0 AS "sv_idx", -1.000000 AS "coeff", -122.300003 AS "sv_0", 37.810001 AS "sv_1", 52.000000 AS "sv_2", 572.000000 AS "sv_3", 109.000000 AS "sv_4", 274.000000 AS "sv_5", 82.000000 AS "sv_6", 1.851600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 1 AS "sv_idx", -1.000000 AS "coeff", -122.290001 AS "sv_0", 37.810001 AS "sv_1", 46.000000 AS "sv_2", 12.000000 AS "sv_3", 4.000000 AS "sv_4", 18.000000 AS "sv_5", 7.000000 AS "sv_6", 0.499900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 2 AS "sv_idx", -1.000000 AS "coeff", -122.290001 AS "sv_0", 37.810001 AS "sv_1", 20.000000 AS "sv_2", 835.000000 AS "sv_3", 161.000000 AS "sv_4", 290.000000 AS "sv_5", 133.000000 AS "sv_6", 2.483000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 3 AS "sv_idx", -1.000000 AS "coeff", -122.269997 AS "sv_0", 37.810001 AS "sv_1", 40.000000 AS "sv_2", 880.000000 AS "sv_3", 451.000000 AS "sv_4", 582.000000 AS "sv_5", 380.000000 AS "sv_6", 0.977000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "coeff", -122.269997 AS "sv_0", 37.799999 AS "sv_1", 52.000000 AS "sv_2", 249.000000 AS "sv_3", 78.000000 AS "sv_4", 396.000000 AS "sv_5", 85.000000 AS "sv_6", 1.243400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 5 AS "sv_idx", -1.000000 AS "coeff", -122.260002 AS "sv_0", 37.810001 AS "sv_1", 29.000000 AS "sv_2", 335.000000 AS "sv_3", 107.000000 AS "sv_4", 202.000000 AS "sv_5", 91.000000 AS "sv_6", 2.006200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.000000 AS "coeff", -122.209999 AS "sv_0", 37.810001 AS "sv_1", 52.000000 AS "sv_2", 1389.000000 AS "sv_3", 212.000000 AS "sv_4", 510.000000 AS "sv_5", 224.000000 AS "sv_6", 5.240200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 7 AS "sv_idx", -1.000000 AS "coeff", -122.230003 AS "sv_0", 37.799999 AS "sv_1", 52.000000 AS "sv_2", 2033.000000 AS "sv_3", 486.000000 AS "sv_4", 787.000000 AS "sv_5", 459.000000 AS "sv_6", 3.160300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 8 AS "sv_idx", -1.000000 AS "coeff", -122.190002 AS "sv_0", 37.779999 AS "sv_1", 49.000000 AS "sv_2", 1183.000000 AS "sv_3", 205.000000 AS "sv_4", 496.000000 AS "sv_5", 209.000000 AS "sv_6", 5.232800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 9 AS "sv_idx", -1.000000 AS "coeff", -122.300003 AS "sv_0", 37.880001 AS "sv_1", 52.000000 AS "sv_2", 409.000000 AS "sv_3", 97.000000 AS "sv_4", 208.000000 AS "sv_5", 98.000000 AS "sv_6", 1.697100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 10 AS "sv_idx", 1.000000 AS "coeff", -122.250000 AS "sv_0", 37.869999 AS "sv_1", 52.000000 AS "sv_2", 609.000000 AS "sv_3", 236.000000 AS "sv_4", 1349.000000 AS "sv_5", 250.000000 AS "sv_6", 1.169600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 11 AS "sv_idx", -1.000000 AS "coeff", -122.269997 AS "sv_0", 37.869999 AS "sv_1", 35.000000 AS "sv_2", 3218.000000 AS "sv_3", 1108.000000 AS "sv_4", 1675.000000 AS "sv_5", 1000.000000 AS "sv_6", 1.746400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 12 AS "sv_idx", -1.000000 AS "coeff", -122.269997 AS "sv_0", 37.849998 AS "sv_1", 52.000000 AS "sv_2", 335.000000 AS "sv_3", 83.000000 AS "sv_4", 152.000000 AS "sv_5", 77.000000 AS "sv_6", 2.284100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 13 AS "sv_idx", -1.000000 AS "coeff", -122.150002 AS "sv_0", 37.740002 AS "sv_1", 52.000000 AS "sv_2", 1394.000000 AS "sv_3", 223.000000 AS "sv_4", 545.000000 AS "sv_5", 230.000000 AS "sv_6", 3.950000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 14 AS "sv_idx", -1.000000 AS "coeff", -122.150002 AS "sv_0", 37.730000 AS "sv_1", 52.000000 AS "sv_2", 1028.000000 AS "sv_3", 129.000000 AS "sv_4", 317.000000 AS "sv_5", 143.000000 AS "sv_6", 4.913500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 15 AS "sv_idx", -1.000000 AS "coeff", -122.150002 AS "sv_0", 37.730000 AS "sv_1", 28.000000 AS "sv_2", 2215.000000 AS "sv_3", 587.000000 AS "sv_4", 830.000000 AS "sv_5", 573.000000 AS "sv_6", 2.189800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 16 AS "sv_idx", -1.000000 AS "coeff", -122.089996 AS "sv_0", 37.680000 AS "sv_1", 43.000000 AS "sv_2", 1415.000000 AS "sv_3", 348.000000 AS "sv_4", 569.000000 AS "sv_5", 293.000000 AS "sv_6", 2.515600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 17 AS "sv_idx", -1.000000 AS "coeff", -122.120003 AS "sv_0", 37.650002 AS "sv_1", 26.000000 AS "sv_2", 162.000000 AS "sv_3", 27.000000 AS "sv_4", 86.000000 AS "sv_5", 25.000000 AS "sv_6", 2.375000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 18 AS "sv_idx", -1.000000 AS "coeff", -121.919998 AS "sv_0", 37.639999 AS "sv_1", 46.000000 AS "sv_2", 1280.000000 AS "sv_3", 209.000000 AS "sv_4", 512.000000 AS "sv_5", 208.000000 AS "sv_6", 5.140600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 19 AS "sv_idx", -1.000000 AS "coeff", -121.610001 AS "sv_0", 37.770000 AS "sv_1", 32.000000 AS "sv_2", 404.000000 AS "sv_3", 74.000000 AS "sv_4", 144.000000 AS "sv_5", 58.000000 AS "sv_6", 4.208300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 20 AS "sv_idx", -1.000000 AS "coeff", -120.800003 AS "sv_0", 38.509998 AS "sv_1", 23.000000 AS "sv_2", 1001.000000 AS "sv_3", 195.000000 AS "sv_4", 369.000000 AS "sv_5", 157.000000 AS "sv_6", 3.125000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 21 AS "sv_idx", -1.000000 AS "coeff", -120.690002 AS "sv_0", 38.439999 AS "sv_1", 13.000000 AS "sv_2", 1473.000000 AS "sv_3", 265.000000 AS "sv_4", 597.000000 AS "sv_5", 228.000000 AS "sv_6", 4.291700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 22 AS "sv_idx", -1.000000 AS "coeff", -121.570000 AS "sv_0", 39.480000 AS "sv_1", 15.000000 AS "sv_2", 202.000000 AS "sv_3", 54.000000 AS "sv_4", 145.000000 AS "sv_5", 40.000000 AS "sv_6", 0.825200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 23 AS "sv_idx", -1.000000 AS "coeff", -121.519997 AS "sv_0", 39.500000 AS "sv_1", 33.000000 AS "sv_2", 1462.000000 AS "sv_3", 241.000000 AS "sv_4", 569.000000 AS "sv_5", 231.000000 AS "sv_6", 3.283300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 24 AS "sv_idx", -1.000000 AS "coeff", -121.389999 AS "sv_0", 39.389999 AS "sv_1", 52.000000 AS "sv_2", 189.000000 AS "sv_3", 34.000000 AS "sv_4", 121.000000 AS "sv_5", 37.000000 AS "sv_6", 3.020800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 25 AS "sv_idx", -1.000000 AS "coeff", -121.650002 AS "sv_0", 39.320000 AS "sv_1", 40.000000 AS "sv_2", 812.000000 AS "sv_3", 154.000000 AS "sv_4", 374.000000 AS "sv_5", 142.000000 AS "sv_6", 2.789100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 26 AS "sv_idx", -1.000000 AS "coeff", -121.790001 AS "sv_0", 39.480000 AS "sv_1", 39.000000 AS "sv_2", 1105.000000 AS "sv_3", 180.000000 AS "sv_4", 408.000000 AS "sv_5", 166.000000 AS "sv_6", 3.392900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 27 AS "sv_idx", -1.000000 AS "coeff", -120.459999 AS "sv_0", 38.150002 AS "sv_1", 16.000000 AS "sv_2", 4221.000000 AS "sv_3", 781.000000 AS "sv_4", 1516.000000 AS "sv_5", 697.000000 AS "sv_6", 2.381600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 28 AS "sv_idx", -1.000000 AS "coeff", -122.330002 AS "sv_0", 39.099998 AS "sv_1", 10.000000 AS "sv_2", 266.000000 AS "sv_3", 62.000000 AS "sv_4", 154.000000 AS "sv_5", 49.000000 AS "sv_6", 2.250000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 29 AS "sv_idx", -1.000000 AS "coeff", -122.199997 AS "sv_0", 39.150002 AS "sv_1", 33.000000 AS "sv_2", 1064.000000 AS "sv_3", 174.000000 AS "sv_4", 434.000000 AS "sv_5", 147.000000 AS "sv_6", 3.125000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 30 AS "sv_idx", -1.000000 AS "coeff", -121.959999 AS "sv_0", 39.299999 AS "sv_1", 39.000000 AS "sv_2", 701.000000 AS "sv_3", 130.000000 AS "sv_4", 271.000000 AS "sv_5", 89.000000 AS "sv_6", 2.184500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 31 AS "sv_idx", -1.000000 AS "coeff", -122.059998 AS "sv_0", 37.990002 AS "sv_1", 17.000000 AS "sv_2", 1319.000000 AS "sv_3", 316.000000 AS "sv_4", 384.000000 AS "sv_5", 269.000000 AS "sv_6", 1.822900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 32 AS "sv_idx", -1.000000 AS "coeff", -122.019997 AS "sv_0", 37.980000 AS "sv_1", 40.000000 AS "sv_2", 1797.000000 AS "sv_3", 401.000000 AS "sv_4", 756.000000 AS "sv_5", 369.000000 AS "sv_6", 2.845600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 33 AS "sv_idx", 1.000000 AS "coeff", -121.970001 AS "sv_0", 37.869999 AS "sv_1", 4.000000 AS "sv_2", 1029.000000 AS "sv_3", 126.000000 AS "sv_4", 416.000000 AS "sv_5", 122.000000 AS "sv_6", 13.488300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 34 AS "sv_idx", -1.000000 AS "coeff", -122.080002 AS "sv_0", 37.869999 AS "sv_1", 26.000000 AS "sv_2", 2405.000000 AS "sv_3", 564.000000 AS "sv_4", 680.000000 AS "sv_5", 531.000000 AS "sv_6", 2.489600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 35 AS "sv_idx", 1.000000 AS "coeff", -122.080002 AS "sv_0", 37.840000 AS "sv_1", 17.000000 AS "sv_2", 1320.000000 AS "sv_3", 159.000000 AS "sv_4", 1722.000000 AS "sv_5", 141.000000 AS "sv_6", 11.706400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 36 AS "sv_idx", -1.000000 AS "coeff", -121.949997 AS "sv_0", 37.939999 AS "sv_1", 27.000000 AS "sv_2", 1469.000000 AS "sv_3", 216.000000 AS "sv_4", 578.000000 AS "sv_5", 219.000000 AS "sv_6", 5.934600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 37 AS "sv_idx", -1.000000 AS "coeff", -122.279999 AS "sv_0", 37.959999 AS "sv_1", 35.000000 AS "sv_2", 1579.000000 AS "sv_3", 243.000000 AS "sv_4", 734.000000 AS "sv_5", 264.000000 AS "sv_6", 5.500000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 38 AS "sv_idx", -1.000000 AS "coeff", -122.360001 AS "sv_0", 37.959999 AS "sv_1", 39.000000 AS "sv_2", 246.000000 AS "sv_3", 57.000000 AS "sv_4", 316.000000 AS "sv_5", 52.000000 AS "sv_6", 0.716000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 39 AS "sv_idx", -1.000000 AS "coeff", -122.370003 AS "sv_0", 37.950001 AS "sv_1", 35.000000 AS "sv_2", 215.000000 AS "sv_3", 45.000000 AS "sv_4", 100.000000 AS "sv_5", 34.000000 AS "sv_6", 1.602300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 40 AS "sv_idx", -1.000000 AS "coeff", -119.980003 AS "sv_0", 38.939999 AS "sv_1", 25.000000 AS "sv_2", 1339.000000 AS "sv_3", 328.000000 AS "sv_4", 503.000000 AS "sv_5", 219.000000 AS "sv_6", 1.901800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 41 AS "sv_idx", -1.000000 AS "coeff", -120.010002 AS "sv_0", 38.930000 AS "sv_1", 22.000000 AS "sv_2", 3080.000000 AS "sv_3", 610.000000 AS "sv_4", 1045.000000 AS "sv_5", 425.000000 AS "sv_6", 2.996000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 42 AS "sv_idx", -1.000000 AS "coeff", -120.000000 AS "sv_0", 38.919998 AS "sv_1", 26.000000 AS "sv_2", 529.000000 AS "sv_3", 116.000000 AS "sv_4", 191.000000 AS "sv_5", 83.000000 AS "sv_6", 3.500000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 43 AS "sv_idx", -1.000000 AS "coeff", -119.980003 AS "sv_0", 38.900002 AS "sv_1", 16.000000 AS "sv_2", 3109.000000 AS "sv_3", 572.000000 AS "sv_4", 885.000000 AS "sv_5", 334.000000 AS "sv_6", 3.500000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 44 AS "sv_idx", -1.000000 AS "coeff", -119.959999 AS "sv_0", 38.840000 AS "sv_1", 17.000000 AS "sv_2", 2722.000000 AS "sv_3", 512.000000 AS "sv_4", 828.000000 AS "sv_5", 289.000000 AS "sv_6", 3.571400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 45 AS "sv_idx", -1.000000 AS "coeff", -120.040001 AS "sv_0", 38.860001 AS "sv_1", 16.000000 AS "sv_2", 2708.000000 AS "sv_3", 481.000000 AS "sv_4", 712.000000 AS "sv_5", 261.000000 AS "sv_6", 3.789100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 46 AS "sv_idx", -1.000000 AS "coeff", -120.779999 AS "sv_0", 38.720001 AS "sv_1", 19.000000 AS "sv_2", 4414.000000 AS "sv_3", 767.000000 AS "sv_4", 1865.000000 AS "sv_5", 699.000000 AS "sv_6", 3.640600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 47 AS "sv_idx", -1.000000 AS "coeff", -120.589996 AS "sv_0", 38.529999 AS "sv_1", 15.000000 AS "sv_2", 432.000000 AS "sv_3", 87.000000 AS "sv_4", 208.000000 AS "sv_5", 73.000000 AS "sv_6", 3.612500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 48 AS "sv_idx", -1.000000 AS "coeff", -119.820000 AS "sv_0", 36.720001 AS "sv_1", 17.000000 AS "sv_2", 1276.000000 AS "sv_3", 242.000000 AS "sv_4", 927.000000 AS "sv_5", 238.000000 AS "sv_6", 2.617600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 49 AS "sv_idx", -1.000000 AS "coeff", -119.830002 AS "sv_0", 36.720001 AS "sv_1", 28.000000 AS "sv_2", 60.000000 AS "sv_3", 10.000000 AS "sv_4", 46.000000 AS "sv_5", 13.000000 AS "sv_6", 4.350000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 50 AS "sv_idx", -1.000000 AS "coeff", -119.809998 AS "sv_0", 36.700001 AS "sv_1", 52.000000 AS "sv_2", 314.000000 AS "sv_3", 57.000000 AS "sv_4", 178.000000 AS "sv_5", 66.000000 AS "sv_6", 1.240400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 51 AS "sv_idx", -1.000000 AS "coeff", -119.690002 AS "sv_0", 36.709999 AS "sv_1", 25.000000 AS "sv_2", 556.000000 AS "sv_3", 79.000000 AS "sv_4", 249.000000 AS "sv_5", 71.000000 AS "sv_6", 4.458300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 52 AS "sv_idx", -1.000000 AS "coeff", -119.730003 AS "sv_0", 36.730000 AS "sv_1", 9.000000 AS "sv_2", 1621.000000 AS "sv_3", 428.000000 AS "sv_4", 678.000000 AS "sv_5", 394.000000 AS "sv_6", 2.243700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 53 AS "sv_idx", -1.000000 AS "coeff", -119.889999 AS "sv_0", 36.730000 AS "sv_1", 43.000000 AS "sv_2", 524.000000 AS "sv_3", 93.000000 AS "sv_4", 302.000000 AS "sv_5", 93.000000 AS "sv_6", 2.614600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 54 AS "sv_idx", -1.000000 AS "coeff", -119.849998 AS "sv_0", 36.740002 AS "sv_1", 35.000000 AS "sv_2", 1191.000000 AS "sv_3", 190.000000 AS "sv_4", 537.000000 AS "sv_5", 182.000000 AS "sv_6", 3.537500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 55 AS "sv_idx", -1.000000 AS "coeff", -119.800003 AS "sv_0", 36.759998 AS "sv_1", 52.000000 AS "sv_2", 2224.000000 AS "sv_3", 418.000000 AS "sv_4", 832.000000 AS "sv_5", 406.000000 AS "sv_6", 2.395200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 56 AS "sv_idx", -1.000000 AS "coeff", -119.750000 AS "sv_0", 36.779999 AS "sv_1", 33.000000 AS "sv_2", 1145.000000 AS "sv_3", 197.000000 AS "sv_4", 508.000000 AS "sv_5", 198.000000 AS "sv_6", 2.333300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 57 AS "sv_idx", -1.000000 AS "coeff", -119.800003 AS "sv_0", 36.790001 AS "sv_1", 45.000000 AS "sv_2", 1337.000000 AS "sv_3", 187.000000 AS "sv_4", 471.000000 AS "sv_5", 187.000000 AS "sv_6", 5.187000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 58 AS "sv_idx", -1.000000 AS "coeff", -119.610001 AS "sv_0", 36.590000 AS "sv_1", 10.000000 AS "sv_2", 2842.000000 AS "sv_3", 620.000000 AS "sv_4", 1443.000000 AS "sv_5", 576.000000 AS "sv_6", 2.272700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 59 AS "sv_idx", -1.000000 AS "coeff", -120.430000 AS "sv_0", 36.180000 AS "sv_1", 29.000000 AS "sv_2", 579.000000 AS "sv_3", 116.000000 AS "sv_4", 218.000000 AS "sv_5", 99.000000 AS "sv_6", 2.145800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 60 AS "sv_idx", -1.000000 AS "coeff", -119.550003 AS "sv_0", 36.509998 AS "sv_1", 46.000000 AS "sv_2", 55.000000 AS "sv_3", 11.000000 AS "sv_4", 26.000000 AS "sv_5", 5.000000 AS "sv_6", 4.125000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 61 AS "sv_idx", -1.000000 AS "coeff", -122.160004 AS "sv_0", 39.779999 AS "sv_1", 32.000000 AS "sv_2", 1288.000000 AS "sv_3", 221.000000 AS "sv_4", 562.000000 AS "sv_5", 203.000000 AS "sv_6", 2.325000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 62 AS "sv_idx", -1.000000 AS "coeff", -122.739998 AS "sv_0", 39.709999 AS "sv_1", 16.000000 AS "sv_2", 255.000000 AS "sv_3", 73.000000 AS "sv_4", 85.000000 AS "sv_5", 38.000000 AS "sv_6", 1.660700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 63 AS "sv_idx", -1.000000 AS "coeff", -122.379997 AS "sv_0", 39.680000 AS "sv_1", 21.000000 AS "sv_2", 1155.000000 AS "sv_3", 210.000000 AS "sv_4", 510.000000 AS "sv_5", 175.000000 AS "sv_6", 2.385100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 64 AS "sv_idx", -1.000000 AS "coeff", -122.139999 AS "sv_0", 39.650002 AS "sv_1", 33.000000 AS "sv_2", 419.000000 AS "sv_3", 77.000000 AS "sv_4", 190.000000 AS "sv_5", 67.000000 AS "sv_6", 3.642900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 65 AS "sv_idx", -1.000000 AS "coeff", -122.099998 AS "sv_0", 39.470001 AS "sv_1", 43.000000 AS "sv_2", 1320.000000 AS "sv_3", 215.000000 AS "sv_4", 512.000000 AS "sv_5", 197.000000 AS "sv_6", 2.491700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 66 AS "sv_idx", -1.000000 AS "coeff", -124.089996 AS "sv_0", 40.860001 AS "sv_1", 25.000000 AS "sv_2", 1322.000000 AS "sv_3", 387.000000 AS "sv_4", 794.000000 AS "sv_5", 379.000000 AS "sv_6", 1.174200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 67 AS "sv_idx", -1.000000 AS "coeff", -124.139999 AS "sv_0", 41.060001 AS "sv_1", 32.000000 AS "sv_2", 1020.000000 AS "sv_3", 215.000000 AS "sv_4", 421.000000 AS "sv_5", 198.000000 AS "sv_6", 3.020800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 68 AS "sv_idx", -1.000000 AS "coeff", -124.050003 AS "sv_0", 40.939999 AS "sv_1", 14.000000 AS "sv_2", 1452.000000 AS "sv_3", 217.000000 AS "sv_4", 516.000000 AS "sv_5", 181.000000 AS "sv_6", 5.032900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 69 AS "sv_idx", -1.000000 AS "coeff", -124.110001 AS "sv_0", 40.570000 AS "sv_1", 33.000000 AS "sv_2", 1348.000000 AS "sv_3", 234.000000 AS "sv_4", 573.000000 AS "sv_5", 236.000000 AS "sv_6", 2.489600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 70 AS "sv_idx", -1.000000 AS "coeff", -115.599998 AS "sv_0", 33.040001 AS "sv_1", 31.000000 AS "sv_2", 314.000000 AS "sv_3", 61.000000 AS "sv_4", 152.000000 AS "sv_5", 56.000000 AS "sv_6", 3.347200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 71 AS "sv_idx", -1.000000 AS "coeff", -115.730003 AS "sv_0", 32.799999 AS "sv_1", 44.000000 AS "sv_2", 472.000000 AS "sv_3", 81.000000 AS "sv_4", 206.000000 AS "sv_5", 57.000000 AS "sv_6", 2.208300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 72 AS "sv_idx", -1.000000 AS "coeff", -115.639999 AS "sv_0", 32.750000 AS "sv_1", 19.000000 AS "sv_2", 377.000000 AS "sv_3", 69.000000 AS "sv_4", 198.000000 AS "sv_5", 55.000000 AS "sv_6", 1.625000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 73 AS "sv_idx", -1.000000 AS "coeff", -115.580002 AS "sv_0", 32.790001 AS "sv_1", 14.000000 AS "sv_2", 1687.000000 AS "sv_3", 507.000000 AS "sv_4", 762.000000 AS "sv_5", 451.000000 AS "sv_6", 1.663500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 74 AS "sv_idx", -1.000000 AS "coeff", -115.910004 AS "sv_0", 33.360001 AS "sv_1", 15.000000 AS "sv_2", 459.000000 AS "sv_3", 95.000000 AS "sv_4", 160.000000 AS "sv_5", 73.000000 AS "sv_6", 0.922000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 75 AS "sv_idx", -1.000000 AS "coeff", -117.900002 AS "sv_0", 36.950001 AS "sv_1", 19.000000 AS "sv_2", 99.000000 AS "sv_3", 26.000000 AS "sv_4", 51.000000 AS "sv_5", 22.000000 AS "sv_6", 1.729200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 76 AS "sv_idx", -1.000000 AS "coeff", -118.309998 AS "sv_0", 36.939999 AS "sv_1", 35.000000 AS "sv_2", 2563.000000 AS "sv_3", 530.000000 AS "sv_4", 861.000000 AS "sv_5", 371.000000 AS "sv_6", 2.325000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 77 AS "sv_idx", -1.000000 AS "coeff", -119.089996 AS "sv_0", 35.430000 AS "sv_1", 28.000000 AS "sv_2", 254.000000 AS "sv_3", 35.000000 AS "sv_4", 118.000000 AS "sv_5", 37.000000 AS "sv_6", 4.857100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 78 AS "sv_idx", -1.000000 AS "coeff", -119.080002 AS "sv_0", 35.349998 AS "sv_1", 20.000000 AS "sv_2", 892.000000 AS "sv_3", 129.000000 AS "sv_4", 331.000000 AS "sv_5", 135.000000 AS "sv_6", 7.183700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 79 AS "sv_idx", -1.000000 AS "coeff", -119.040001 AS "sv_0", 35.320000 AS "sv_1", 20.000000 AS "sv_2", 37.000000 AS "sv_3", 11.000000 AS "sv_4", 34.000000 AS "sv_5", 8.000000 AS "sv_6", 1.200000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 80 AS "sv_idx", -1.000000 AS "coeff", -119.360001 AS "sv_0", 35.549999 AS "sv_1", 29.000000 AS "sv_2", 510.000000 AS "sv_3", 84.000000 AS "sv_4", 236.000000 AS "sv_5", 73.000000 AS "sv_6", 2.700000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 81 AS "sv_idx", -1.000000 AS "coeff", -119.250000 AS "sv_0", 35.790001 AS "sv_1", 8.000000 AS "sv_2", 3271.000000 AS "sv_3", 797.000000 AS "sv_4", 2700.000000 AS "sv_5", 688.000000 AS "sv_6", 1.741800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 82 AS "sv_idx", -1.000000 AS "coeff", -117.980003 AS "sv_0", 35.099998 AS "sv_1", 4.000000 AS "sv_2", 923.000000 AS "sv_3", 166.000000 AS "sv_4", 352.000000 AS "sv_5", 135.000000 AS "sv_6", 4.572400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 83 AS "sv_idx", -1.000000 AS "coeff", -119.830002 AS "sv_0", 36.369999 AS "sv_1", 25.000000 AS "sv_2", 1549.000000 AS "sv_3", 269.000000 AS "sv_4", 819.000000 AS "sv_5", 272.000000 AS "sv_6", 2.715900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 84 AS "sv_idx", -1.000000 AS "coeff", -119.820000 AS "sv_0", 36.320000 AS "sv_1", 18.000000 AS "sv_2", 942.000000 AS "sv_3", 193.000000 AS "sv_4", 424.000000 AS "sv_5", 174.000000 AS "sv_6", 2.067300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 85 AS "sv_idx", -1.000000 AS "coeff", -119.669998 AS "sv_0", 36.349998 AS "sv_1", 10.000000 AS "sv_2", 1090.000000 AS "sv_3", 164.000000 AS "sv_4", 470.000000 AS "sv_5", 158.000000 AS "sv_6", 4.943200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 86 AS "sv_idx", -1.000000 AS "coeff", -119.680000 AS "sv_0", 36.310001 AS "sv_1", 12.000000 AS "sv_2", 2739.000000 AS "sv_3", 535.000000 AS "sv_4", 1859.000000 AS "sv_5", 498.000000 AS "sv_6", 2.993600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 87 AS "sv_idx", -1.000000 AS "coeff", -120.129997 AS "sv_0", 35.869999 AS "sv_1", 26.000000 AS "sv_2", 48.000000 AS "sv_3", 8.000000 AS "sv_4", 13.000000 AS "sv_5", 8.000000 AS "sv_6", 2.375000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 88 AS "sv_idx", -1.000000 AS "coeff", -120.000000 AS "sv_0", 35.910000 AS "sv_1", 16.000000 AS "sv_2", 259.000000 AS "sv_3", 53.000000 AS "sv_4", 131.000000 AS "sv_5", 38.000000 AS "sv_6", 3.125000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 89 AS "sv_idx", -1.000000 AS "coeff", -122.910004 AS "sv_0", 39.169998 AS "sv_1", 44.000000 AS "sv_2", 202.000000 AS "sv_3", 42.000000 AS "sv_4", 142.000000 AS "sv_5", 39.000000 AS "sv_6", 4.350000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 90 AS "sv_idx", -1.000000 AS "coeff", -123.070000 AS "sv_0", 39.119999 AS "sv_1", 24.000000 AS "sv_2", 1098.000000 AS "sv_3", 193.000000 AS "sv_4", 353.000000 AS "sv_5", 145.000000 AS "sv_6", 3.833300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 91 AS "sv_idx", -1.000000 AS "coeff", -122.919998 AS "sv_0", 39.080002 AS "sv_1", 24.000000 AS "sv_2", 341.000000 AS "sv_3", 64.000000 AS "sv_4", 146.000000 AS "sv_5", 57.000000 AS "sv_6", 4.000000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 92 AS "sv_idx", -1.000000 AS "coeff", -122.699997 AS "sv_0", 39.139999 AS "sv_1", 13.000000 AS "sv_2", 532.000000 AS "sv_3", 111.000000 AS "sv_4", 214.000000 AS "sv_5", 62.000000 AS "sv_6", 3.392900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 93 AS "sv_idx", -1.000000 AS "coeff", -122.790001 AS "sv_0", 39.080002 AS "sv_1", 23.000000 AS "sv_2", 952.000000 AS "sv_3", 200.000000 AS "sv_4", 321.000000 AS "sv_5", 128.000000 AS "sv_6", 1.520800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 94 AS "sv_idx", -1.000000 AS "coeff", -122.690002 AS "sv_0", 38.939999 AS "sv_1", 9.000000 AS "sv_2", 1245.000000 AS "sv_3", 234.000000 AS "sv_4", 517.000000 AS "sv_5", 187.000000 AS "sv_6", 3.125000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 95 AS "sv_idx", -1.000000 AS "coeff", -122.599998 AS "sv_0", 38.900002 AS "sv_1", 23.000000 AS "sv_2", 292.000000 AS "sv_3", 56.000000 AS "sv_4", 92.000000 AS "sv_5", 41.000000 AS "sv_6", 2.958300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 96 AS "sv_idx", -1.000000 AS "coeff", -122.519997 AS "sv_0", 38.700001 AS "sv_1", 26.000000 AS "sv_2", 102.000000 AS "sv_3", 17.000000 AS "sv_4", 43.000000 AS "sv_5", 13.000000 AS "sv_6", 0.536000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 97 AS "sv_idx", -1.000000 AS "coeff", -120.349998 AS "sv_0", 40.630001 AS "sv_1", 33.000000 AS "sv_2", 240.000000 AS "sv_3", 49.000000 AS "sv_4", 63.000000 AS "sv_5", 22.000000 AS "sv_6", 3.625000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 98 AS "sv_idx", -1.000000 AS "coeff", -118.370003 AS "sv_0", 34.160000 AS "sv_1", 11.000000 AS "sv_2", 2901.000000 AS "sv_3", 871.000000 AS "sv_4", 1659.000000 AS "sv_5", 789.000000 AS "sv_6", 3.110600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 99 AS "sv_idx", 1.000000 AS "coeff", -118.349998 AS "sv_0", 34.150002 AS "sv_1", 35.000000 AS "sv_2", 2245.000000 AS "sv_3", 393.000000 AS "sv_4", 783.000000 AS "sv_5", 402.000000 AS "sv_6", 4.154400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 100 AS "sv_idx", 1.000000 AS "coeff", -118.430000 AS "sv_0", 34.169998 AS "sv_1", 42.000000 AS "sv_2", 777.000000 AS "sv_3", 102.000000 AS "sv_4", 284.000000 AS "sv_5", 113.000000 AS "sv_6", 11.209300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 101 AS "sv_idx", -1.000000 AS "coeff", -118.610001 AS "sv_0", 34.160000 AS "sv_1", 29.000000 AS "sv_2", 4364.000000 AS "sv_3", 647.000000 AS "sv_4", 1550.000000 AS "sv_5", 624.000000 AS "sv_6", 6.810700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 102 AS "sv_idx", 1.000000 AS "coeff", -118.470001 AS "sv_0", 34.150002 AS "sv_1", 43.000000 AS "sv_2", 804.000000 AS "sv_3", 117.000000 AS "sv_4", 267.000000 AS "sv_5", 110.000000 AS "sv_6", 8.226900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 103 AS "sv_idx", 1.000000 AS "coeff", -118.339996 AS "sv_0", 34.130001 AS "sv_1", 45.000000 AS "sv_2", 2375.000000 AS "sv_3", 417.000000 AS "sv_4", 751.000000 AS "sv_5", 410.000000 AS "sv_6", 6.673900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 104 AS "sv_idx", 1.000000 AS "coeff", -118.360001 AS "sv_0", 34.099998 AS "sv_1", 52.000000 AS "sv_2", 1096.000000 AS "sv_3", 247.000000 AS "sv_4", 423.000000 AS "sv_5", 230.000000 AS "sv_6", 3.017900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 105 AS "sv_idx", -1.000000 AS "coeff", -118.300003 AS "sv_0", 34.099998 AS "sv_1", 29.000000 AS "sv_2", 3403.000000 AS "sv_3", 1367.000000 AS "sv_4", 3432.000000 AS "sv_5", 1174.000000 AS "sv_6", 1.708300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 106 AS "sv_idx", 1.000000 AS "coeff", -118.330002 AS "sv_0", 34.080002 AS "sv_1", 52.000000 AS "sv_2", 1777.000000 AS "sv_3", 454.000000 AS "sv_4", 671.000000 AS "sv_5", 439.000000 AS "sv_6", 3.508300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 107 AS "sv_idx", 1.000000 AS "coeff", -118.370003 AS "sv_0", 34.099998 AS "sv_1", 37.000000 AS "sv_2", 407.000000 AS "sv_3", 67.000000 AS "sv_4", 100.000000 AS "sv_5", 47.000000 AS "sv_6", 15.000100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 108 AS "sv_idx", 1.000000 AS "coeff", -118.389999 AS "sv_0", 34.090000 AS "sv_1", 41.000000 AS "sv_2", 730.000000 AS "sv_3", 126.000000 AS "sv_4", 230.000000 AS "sv_5", 125.000000 AS "sv_6", 4.321400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 109 AS "sv_idx", -1.000000 AS "coeff", -118.160004 AS "sv_0", 34.070000 AS "sv_1", 41.000000 AS "sv_2", 247.000000 AS "sv_3", 55.000000 AS "sv_4", 925.000000 AS "sv_5", 50.000000 AS "sv_6", 3.576900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 110 AS "sv_idx", -1.000000 AS "coeff", -118.209999 AS "sv_0", 34.020000 AS "sv_1", 52.000000 AS "sv_2", 22.000000 AS "sv_3", 7.000000 AS "sv_4", 55.000000 AS "sv_5", 7.000000 AS "sv_6", 7.575200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 111 AS "sv_idx", 1.000000 AS "coeff", -118.260002 AS "sv_0", 34.049999 AS "sv_1", 52.000000 AS "sv_2", 58.000000 AS "sv_3", 52.000000 AS "sv_4", 41.000000 AS "sv_5", 27.000000 AS "sv_6", 4.097200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 112 AS "sv_idx", 1.000000 AS "coeff", -118.320000 AS "sv_0", 34.060001 AS "sv_1", 52.000000 AS "sv_2", 983.000000 AS "sv_3", 246.000000 AS "sv_4", 578.000000 AS "sv_5", 204.000000 AS "sv_6", 5.739300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 113 AS "sv_idx", 1.000000 AS "coeff", -118.320000 AS "sv_0", 34.060001 AS "sv_1", 52.000000 AS "sv_2", 955.000000 AS "sv_3", 100.000000 AS "sv_4", 457.000000 AS "sv_5", 120.000000 AS "sv_6", 15.000100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 114 AS "sv_idx", 1.000000 AS "coeff", -118.309998 AS "sv_0", 34.060001 AS "sv_1", 24.000000 AS "sv_2", 1336.000000 AS "sv_3", 453.000000 AS "sv_4", 1268.000000 AS "sv_5", 426.000000 AS "sv_6", 2.820200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 115 AS "sv_idx", 1.000000 AS "coeff", -118.339996 AS "sv_0", 34.080002 AS "sv_1", 52.000000 AS "sv_2", 1421.000000 AS "sv_3", 163.000000 AS "sv_4", 495.000000 AS "sv_5", 167.000000 AS "sv_6", 10.586000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 116 AS "sv_idx", 1.000000 AS "coeff", -118.339996 AS "sv_0", 34.070000 AS "sv_1", 52.000000 AS "sv_2", 1621.000000 AS "sv_3", 284.000000 AS "sv_4", 588.000000 AS "sv_5", 272.000000 AS "sv_6", 6.222300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 117 AS "sv_idx", 1.000000 AS "coeff", -118.339996 AS "sv_0", 34.070000 AS "sv_1", 52.000000 AS "sv_2", 3421.000000 AS "sv_3", 598.000000 AS "sv_4", 1203.000000 AS "sv_5", 564.000000 AS "sv_6", 4.161800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 118 AS "sv_idx", 1.000000 AS "coeff", -118.339996 AS "sv_0", 34.080002 AS "sv_1", 52.000000 AS "sv_2", 2756.000000 AS "sv_3", 542.000000 AS "sv_4", 971.000000 AS "sv_5", 510.000000 AS "sv_6", 5.587100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 119 AS "sv_idx", -1.000000 AS "coeff", -118.339996 AS "sv_0", 34.070000 AS "sv_1", 52.000000 AS "sv_2", 3175.000000 AS "sv_3", 1057.000000 AS "sv_4", 1594.000000 AS "sv_5", 997.000000 AS "sv_6", 3.176600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 120 AS "sv_idx", 1.000000 AS "coeff", -118.339996 AS "sv_0", 34.060001 AS "sv_1", 52.000000 AS "sv_2", 1314.000000 AS "sv_3", 170.000000 AS "sv_4", 629.000000 AS "sv_5", 214.000000 AS "sv_6", 7.166900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 121 AS "sv_idx", 1.000000 AS "coeff", -118.360001 AS "sv_0", 34.060001 AS "sv_1", 52.000000 AS "sv_2", 2130.000000 AS "sv_3", 455.000000 AS "sv_4", 921.000000 AS "sv_5", 395.000000 AS "sv_6", 2.960500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 122 AS "sv_idx", 1.000000 AS "coeff", -118.370003 AS "sv_0", 34.060001 AS "sv_1", 52.000000 AS "sv_2", 1608.000000 AS "sv_3", 289.000000 AS "sv_4", 630.000000 AS "sv_5", 252.000000 AS "sv_6", 5.559600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 123 AS "sv_idx", 1.000000 AS "coeff", -118.370003 AS "sv_0", 34.060001 AS "sv_1", 52.000000 AS "sv_2", 2402.000000 AS "sv_3", 506.000000 AS "sv_4", 878.000000 AS "sv_5", 464.000000 AS "sv_6", 4.021700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 124 AS "sv_idx", 1.000000 AS "coeff", -118.379997 AS "sv_0", 34.049999 AS "sv_1", 35.000000 AS "sv_2", 3517.000000 AS "sv_3", 879.000000 AS "sv_4", 1632.000000 AS "sv_5", 784.000000 AS "sv_6", 3.095600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 125 AS "sv_idx", 1.000000 AS "coeff", -118.279999 AS "sv_0", 34.020000 AS "sv_1", 29.000000 AS "sv_2", 515.000000 AS "sv_3", 229.000000 AS "sv_4", 2690.000000 AS "sv_5", 217.000000 AS "sv_6", 0.499900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 126 AS "sv_idx", -1.000000 AS "coeff", -118.260002 AS "sv_0", 34.029999 AS "sv_1", 49.000000 AS "sv_2", 299.000000 AS "sv_3", 90.000000 AS "sv_4", 287.000000 AS "sv_5", 68.000000 AS "sv_6", 1.209600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 127 AS "sv_idx", -1.000000 AS "coeff", -118.330002 AS "sv_0", 34.009998 AS "sv_1", 44.000000 AS "sv_2", 1762.000000 AS "sv_3", 463.000000 AS "sv_4", 786.000000 AS "sv_5", 445.000000 AS "sv_6", 1.923100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 128 AS "sv_idx", 1.000000 AS "coeff", -118.419998 AS "sv_0", 34.060001 AS "sv_1", 44.000000 AS "sv_2", 533.000000 AS "sv_3", 90.000000 AS "sv_4", 291.000000 AS "sv_5", 97.000000 AS "sv_6", 10.804500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 129 AS "sv_idx", 1.000000 AS "coeff", -118.430000 AS "sv_0", 33.970001 AS "sv_1", 16.000000 AS "sv_2", 70.000000 AS "sv_3", 7.000000 AS "sv_4", 17.000000 AS "sv_5", 4.000000 AS "sv_6", 7.719700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 130 AS "sv_idx", -1.000000 AS "coeff", -117.709999 AS "sv_0", 34.099998 AS "sv_1", 52.000000 AS "sv_2", 567.000000 AS "sv_3", 152.000000 AS "sv_4", 2688.000000 AS "sv_5", 126.000000 AS "sv_6", 1.875000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 131 AS "sv_idx", 1.000000 AS "coeff", -118.040001 AS "sv_0", 34.130001 AS "sv_1", 35.000000 AS "sv_2", 249.000000 AS "sv_3", 31.000000 AS "sv_4", 268.000000 AS "sv_5", 29.000000 AS "sv_6", 15.000100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 132 AS "sv_idx", 1.000000 AS "coeff", -118.150002 AS "sv_0", 34.150002 AS "sv_1", 52.000000 AS "sv_2", 275.000000 AS "sv_3", 123.000000 AS "sv_4", 273.000000 AS "sv_5", 111.000000 AS "sv_6", 1.166700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 133 AS "sv_idx", 1.000000 AS "coeff", -118.080002 AS "sv_0", 34.150002 AS "sv_1", 28.000000 AS "sv_2", 238.000000 AS "sv_3", 58.000000 AS "sv_4", 142.000000 AS "sv_5", 31.000000 AS "sv_6", 0.499900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 134 AS "sv_idx", 1.000000 AS "coeff", -118.430000 AS "sv_0", 33.860001 AS "sv_1", 34.000000 AS "sv_2", 358.000000 AS "sv_3", 87.000000 AS "sv_4", 162.000000 AS "sv_5", 84.000000 AS "sv_6", 7.126400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 135 AS "sv_idx", 1.000000 AS "coeff", -118.410004 AS "sv_0", 33.750000 AS "sv_1", 4.000000 AS "sv_2", 311.000000 AS "sv_3", 51.000000 AS "sv_4", 128.000000 AS "sv_5", 46.000000 AS "sv_6", 9.809100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 136 AS "sv_idx", 1.000000 AS "coeff", -118.400002 AS "sv_0", 34.070000 AS "sv_1", 22.000000 AS "sv_2", 2170.000000 AS "sv_3", 593.000000 AS "sv_4", 850.000000 AS "sv_5", 520.000000 AS "sv_6", 2.910700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 137 AS "sv_idx", 1.000000 AS "coeff", -118.449997 AS "sv_0", 34.060001 AS "sv_1", 52.000000 AS "sv_2", 204.000000 AS "sv_3", 34.000000 AS "sv_4", 1154.000000 AS "sv_5", 28.000000 AS "sv_6", 9.337000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 138 AS "sv_idx", 1.000000 AS "coeff", -118.690002 AS "sv_0", 34.080002 AS "sv_1", 23.000000 AS "sv_2", 204.000000 AS "sv_3", 40.000000 AS "sv_4", 117.000000 AS "sv_5", 41.000000 AS "sv_6", 9.764600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 139 AS "sv_idx", 1.000000 AS "coeff", -118.680000 AS "sv_0", 34.080002 AS "sv_1", 18.000000 AS "sv_2", 102.000000 AS "sv_3", 17.000000 AS "sv_4", 55.000000 AS "sv_5", 21.000000 AS "sv_6", 3.993400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 140 AS "sv_idx", 1.000000 AS "coeff", -118.739998 AS "sv_0", 34.049999 AS "sv_1", 19.000000 AS "sv_2", 3487.000000 AS "sv_3", 686.000000 AS "sv_4", 2782.000000 AS "sv_5", 584.000000 AS "sv_6", 7.918400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 141 AS "sv_idx", 1.000000 AS "coeff", -122.519997 AS "sv_0", 37.950001 AS "sv_1", 37.000000 AS "sv_2", 350.000000 AS "sv_3", 57.000000 AS "sv_4", 179.000000 AS "sv_5", 69.000000 AS "sv_6", 6.286200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 142 AS "sv_idx", 1.000000 AS "coeff", -122.639999 AS "sv_0", 37.959999 AS "sv_1", 29.000000 AS "sv_2", 377.000000 AS "sv_3", 58.000000 AS "sv_4", 151.000000 AS "sv_5", 67.000000 AS "sv_6", 9.555100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 143 AS "sv_idx", 1.000000 AS "coeff", -122.519997 AS "sv_0", 37.919998 AS "sv_1", 24.000000 AS "sv_2", 421.000000 AS "sv_3", 64.000000 AS "sv_4", 163.000000 AS "sv_5", 75.000000 AS "sv_6", 14.583300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 144 AS "sv_idx", 1.000000 AS "coeff", -122.489998 AS "sv_0", 37.849998 AS "sv_1", 38.000000 AS "sv_2", 240.000000 AS "sv_3", 29.000000 AS "sv_4", 63.000000 AS "sv_5", 34.000000 AS "sv_6", 12.254700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 145 AS "sv_idx", -1.000000 AS "coeff", -120.989998 AS "sv_0", 39.130001 AS "sv_1", 14.000000 AS "sv_2", 770.000000 AS "sv_3", 116.000000 AS "sv_4", 285.000000 AS "sv_5", 116.000000 AS "sv_6", 3.643400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 146 AS "sv_idx", 1.000000 AS "coeff", -117.760002 AS "sv_0", 33.810001 AS "sv_1", 2.000000 AS "sv_2", 582.000000 AS "sv_3", 70.000000 AS "sv_4", 199.000000 AS "sv_5", 64.000000 AS "sv_6", 7.119300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 147 AS "sv_idx", 1.000000 AS "coeff", -117.699997 AS "sv_0", 33.720001 AS "sv_1", 6.000000 AS "sv_2", 211.000000 AS "sv_3", 51.000000 AS "sv_4", 125.000000 AS "sv_5", 44.000000 AS "sv_6", 1.965900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 148 AS "sv_idx", 1.000000 AS "coeff", -117.849998 AS "sv_0", 33.610001 AS "sv_1", 14.000000 AS "sv_2", 4340.000000 AS "sv_3", 741.000000 AS "sv_4", 1505.000000 AS "sv_5", 670.000000 AS "sv_6", 7.567400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 149 AS "sv_idx", 1.000000 AS "coeff", -117.910004 AS "sv_0", 33.610001 AS "sv_1", 36.000000 AS "sv_2", 3082.000000 AS "sv_3", 455.000000 AS "sv_4", 771.000000 AS "sv_5", 365.000000 AS "sv_6", 11.216000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 150 AS "sv_idx", -1.000000 AS "coeff", -117.910004 AS "sv_0", 33.740002 AS "sv_1", 15.000000 AS "sv_2", 715.000000 AS "sv_3", 214.000000 AS "sv_4", 1394.000000 AS "sv_5", 244.000000 AS "sv_6", 3.384600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 151 AS "sv_idx", -1.000000 AS "coeff", -120.449997 AS "sv_0", 39.799999 AS "sv_1", 47.000000 AS "sv_2", 2149.000000 AS "sv_3", 456.000000 AS "sv_4", 965.000000 AS "sv_5", 419.000000 AS "sv_6", 1.782900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 152 AS "sv_idx", -1.000000 AS "coeff", -121.239998 AS "sv_0", 40.310001 AS "sv_1", 36.000000 AS "sv_2", 1597.000000 AS "sv_3", 301.000000 AS "sv_4", 632.000000 AS "sv_5", 262.000000 AS "sv_6", 3.596200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 153 AS "sv_idx", 1.000000 AS "coeff", -117.550003 AS "sv_0", 33.830002 AS "sv_1", 6.000000 AS "sv_2", 502.000000 AS "sv_3", 76.000000 AS "sv_4", 228.000000 AS "sv_5", 65.000000 AS "sv_6", 4.238600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 154 AS "sv_idx", 1.000000 AS "coeff", -117.220001 AS "sv_0", 33.869999 AS "sv_1", 16.000000 AS "sv_2", 56.000000 AS "sv_3", 7.000000 AS "sv_4", 39.000000 AS "sv_5", 14.000000 AS "sv_6", 2.625000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 155 AS "sv_idx", 1.000000 AS "coeff", -117.180000 AS "sv_0", 33.509998 AS "sv_1", 13.000000 AS "sv_2", 270.000000 AS "sv_3", 42.000000 AS "sv_4", 120.000000 AS "sv_5", 42.000000 AS "sv_6", 6.993000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 156 AS "sv_idx", -1.000000 AS "coeff", -116.889999 AS "sv_0", 33.750000 AS "sv_1", 23.000000 AS "sv_2", 2719.000000 AS "sv_3", 538.000000 AS "sv_4", 930.000000 AS "sv_5", 485.000000 AS "sv_6", 2.015400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 157 AS "sv_idx", -1.000000 AS "coeff", -121.449997 AS "sv_0", 38.580002 AS "sv_1", 44.000000 AS "sv_2", 2314.000000 AS "sv_3", 415.000000 AS "sv_4", 796.000000 AS "sv_5", 388.000000 AS "sv_6", 3.491400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 158 AS "sv_idx", -1.000000 AS "coeff", -121.419998 AS "sv_0", 38.599998 AS "sv_1", 36.000000 AS "sv_2", 1327.000000 AS "sv_3", 209.000000 AS "sv_4", 613.000000 AS "sv_5", 230.000000 AS "sv_6", 3.867200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 159 AS "sv_idx", -1.000000 AS "coeff", -121.379997 AS "sv_0", 38.610001 AS "sv_1", 27.000000 AS "sv_2", 2375.000000 AS "sv_3", 537.000000 AS "sv_4", 863.000000 AS "sv_5", 452.000000 AS "sv_6", 3.008600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 160 AS "sv_idx", 1.000000 AS "coeff", -117.779999 AS "sv_0", 33.970001 AS "sv_1", 2.000000 AS "sv_2", 556.000000 AS "sv_3", 63.000000 AS "sv_4", 179.000000 AS "sv_5", 54.000000 AS "sv_6", 8.441100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 161 AS "sv_idx", -1.000000 AS "coeff", -117.300003 AS "sv_0", 34.150002 AS "sv_1", 33.000000 AS "sv_2", 1607.000000 AS "sv_3", 282.000000 AS "sv_4", 608.000000 AS "sv_5", 260.000000 AS "sv_6", 4.343800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 162 AS "sv_idx", -1.000000 AS "coeff", -117.320000 AS "sv_0", 34.070000 AS "sv_1", 26.000000 AS "sv_2", 971.000000 AS "sv_3", 245.000000 AS "sv_4", 592.000000 AS "sv_5", 207.000000 AS "sv_6", 2.112500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 163 AS "sv_idx", 1.000000 AS "coeff", -117.080002 AS "sv_0", 34.080002 AS "sv_1", 34.000000 AS "sv_2", 45.000000 AS "sv_3", 11.000000 AS "sv_4", 39.000000 AS "sv_5", 14.000000 AS "sv_6", 3.062500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 164 AS "sv_idx", -1.000000 AS "coeff", -117.180000 AS "sv_0", 34.299999 AS "sv_1", 33.000000 AS "sv_2", 399.000000 AS "sv_3", 87.000000 AS "sv_4", 71.000000 AS "sv_5", 27.000000 AS "sv_6", 1.875000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 165 AS "sv_idx", 1.000000 AS "coeff", -117.300003 AS "sv_0", 32.849998 AS "sv_1", 28.000000 AS "sv_2", 2334.000000 AS "sv_3", 694.000000 AS "sv_4", 770.000000 AS "sv_5", 552.000000 AS "sv_6", 3.132400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 166 AS "sv_idx", -1.000000 AS "coeff", -117.040001 AS "sv_0", 32.799999 AS "sv_1", 11.000000 AS "sv_2", 1802.000000 AS "sv_3", 440.000000 AS "sv_4", 630.000000 AS "sv_5", 428.000000 AS "sv_6", 2.033700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 167 AS "sv_idx", 1.000000 AS "coeff", -117.209999 AS "sv_0", 33.020000 AS "sv_1", 26.000000 AS "sv_2", 3194.000000 AS "sv_3", 454.000000 AS "sv_4", 1032.000000 AS "sv_5", 406.000000 AS "sv_6", 10.156000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 168 AS "sv_idx", 1.000000 AS "coeff", -122.419998 AS "sv_0", 37.810001 AS "sv_1", 52.000000 AS "sv_2", 1314.000000 AS "sv_3", 317.000000 AS "sv_4", 473.000000 AS "sv_5", 250.000000 AS "sv_6", 4.347200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 169 AS "sv_idx", 1.000000 AS "coeff", -122.410004 AS "sv_0", 37.799999 AS "sv_1", 52.000000 AS "sv_2", 1288.000000 AS "sv_3", 309.000000 AS "sv_4", 437.000000 AS "sv_5", 272.000000 AS "sv_6", 6.324500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 170 AS "sv_idx", 1.000000 AS "coeff", -122.410004 AS "sv_0", 37.790001 AS "sv_1", 52.000000 AS "sv_2", 2909.000000 AS "sv_3", 851.000000 AS "sv_4", 1711.000000 AS "sv_5", 830.000000 AS "sv_6", 3.029600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 171 AS "sv_idx", 1.000000 AS "coeff", -122.410004 AS "sv_0", 37.799999 AS "sv_1", 52.000000 AS "sv_2", 3260.000000 AS "sv_3", 1535.000000 AS "sv_4", 3260.000000 AS "sv_5", 1457.000000 AS "sv_6", 0.900000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 172 AS "sv_idx", 1.000000 AS "coeff", -122.419998 AS "sv_0", 37.779999 AS "sv_1", 26.000000 AS "sv_2", 812.000000 AS "sv_3", 507.000000 AS "sv_4", 628.000000 AS "sv_5", 445.000000 AS "sv_6", 2.330400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 173 AS "sv_idx", 1.000000 AS "coeff", -122.440002 AS "sv_0", 37.799999 AS "sv_1", 52.000000 AS "sv_2", 1580.000000 AS "sv_3", 470.000000 AS "sv_4", 714.000000 AS "sv_5", 448.000000 AS "sv_6", 3.244700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 174 AS "sv_idx", 1.000000 AS "coeff", -122.440002 AS "sv_0", 37.799999 AS "sv_1", 52.000000 AS "sv_2", 1603.000000 AS "sv_3", 487.000000 AS "sv_4", 727.000000 AS "sv_5", 464.000000 AS "sv_6", 3.985600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 175 AS "sv_idx", 1.000000 AS "coeff", -122.430000 AS "sv_0", 37.799999 AS "sv_1", 52.000000 AS "sv_2", 1380.000000 AS "sv_3", 322.000000 AS "sv_4", 553.000000 AS "sv_5", 288.000000 AS "sv_6", 4.041700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 176 AS "sv_idx", 1.000000 AS "coeff", -122.440002 AS "sv_0", 37.790001 AS "sv_1", 52.000000 AS "sv_2", 1817.000000 AS "sv_3", 535.000000 AS "sv_4", 800.000000 AS "sv_5", 487.000000 AS "sv_6", 3.975000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 177 AS "sv_idx", 1.000000 AS "coeff", -122.430000 AS "sv_0", 37.790001 AS "sv_1", 50.000000 AS "sv_2", 3312.000000 AS "sv_3", 1095.000000 AS "sv_4", 1475.000000 AS "sv_5", 997.000000 AS "sv_6", 2.716500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 178 AS "sv_idx", 1.000000 AS "coeff", -122.449997 AS "sv_0", 37.790001 AS "sv_1", 46.000000 AS "sv_2", 2009.000000 AS "sv_3", 464.000000 AS "sv_4", 761.000000 AS "sv_5", 453.000000 AS "sv_6", 3.718800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 179 AS "sv_idx", 1.000000 AS "coeff", -122.449997 AS "sv_0", 37.759998 AS "sv_1", 51.000000 AS "sv_2", 2564.000000 AS "sv_3", 457.000000 AS "sv_4", 810.000000 AS "sv_5", 442.000000 AS "sv_6", 5.623500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 180 AS "sv_idx", 1.000000 AS "coeff", -122.430000 AS "sv_0", 37.759998 AS "sv_1", 52.000000 AS "sv_2", 2242.000000 AS "sv_3", 459.000000 AS "sv_4", 751.000000 AS "sv_5", 464.000000 AS "sv_6", 4.750000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 181 AS "sv_idx", 1.000000 AS "coeff", -122.470001 AS "sv_0", 37.790001 AS "sv_1", 52.000000 AS "sv_2", 2844.000000 AS "sv_3", 623.000000 AS "sv_4", 1380.000000 AS "sv_5", 596.000000 AS "sv_6", 4.750000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 182 AS "sv_idx", 1.000000 AS "coeff", -122.470001 AS "sv_0", 37.790001 AS "sv_1", 52.000000 AS "sv_2", 437.000000 AS "sv_3", 105.000000 AS "sv_4", 194.000000 AS "sv_5", 87.000000 AS "sv_6", 2.812500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 183 AS "sv_idx", 1.000000 AS "coeff", -122.500000 AS "sv_0", 37.790001 AS "sv_1", 52.000000 AS "sv_2", 8.000000 AS "sv_3", 1.000000 AS "sv_4", 13.000000 AS "sv_5", 1.000000 AS "sv_6", 15.000100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 184 AS "sv_idx", -1.000000 AS "coeff", -121.309998 AS "sv_0", 37.980000 AS "sv_1", 47.000000 AS "sv_2", 3386.000000 AS "sv_3", 663.000000 AS "sv_4", 1228.000000 AS "sv_5", 619.000000 AS "sv_6", 3.062500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 185 AS "sv_idx", -1.000000 AS "coeff", -121.300003 AS "sv_0", 37.970001 AS "sv_1", 52.000000 AS "sv_2", 2259.000000 AS "sv_3", 417.000000 AS "sv_4", 766.000000 AS "sv_5", 385.000000 AS "sv_6", 2.298100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 186 AS "sv_idx", -1.000000 AS "coeff", -121.330002 AS "sv_0", 38.009998 AS "sv_1", 36.000000 AS "sv_2", 1383.000000 AS "sv_3", 207.000000 AS "sv_4", 531.000000 AS "sv_5", 203.000000 AS "sv_6", 5.919100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 187 AS "sv_idx", -1.000000 AS "coeff", -121.269997 AS "sv_0", 38.130001 AS "sv_1", 52.000000 AS "sv_2", 1081.000000 AS "sv_3", 257.000000 AS "sv_4", 437.000000 AS "sv_5", 225.000000 AS "sv_6", 2.197900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 188 AS "sv_idx", 1.000000 AS "coeff", -122.370003 AS "sv_0", 37.580002 AS "sv_1", 34.000000 AS "sv_2", 2697.000000 AS "sv_3", 313.000000 AS "sv_4", 810.000000 AS "sv_5", 279.000000 AS "sv_6", 12.429100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 189 AS "sv_idx", 1.000000 AS "coeff", -122.260002 AS "sv_0", 37.549999 AS "sv_1", 17.000000 AS "sv_2", 1321.000000 AS "sv_3", 425.000000 AS "sv_4", 683.000000 AS "sv_5", 408.000000 AS "sv_6", 4.704500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 190 AS "sv_idx", 1.000000 AS "coeff", -122.279999 AS "sv_0", 37.470001 AS "sv_1", 44.000000 AS "sv_2", 863.000000 AS "sv_3", 114.000000 AS "sv_4", 281.000000 AS "sv_5", 99.000000 AS "sv_6", 6.887900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 191 AS "sv_idx", 1.000000 AS "coeff", -122.239998 AS "sv_0", 37.490002 AS "sv_1", 19.000000 AS "sv_2", 322.000000 AS "sv_3", 112.000000 AS "sv_4", 191.000000 AS "sv_5", 102.000000 AS "sv_6", 2.583300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 192 AS "sv_idx", 1.000000 AS "coeff", -122.139999 AS "sv_0", 37.500000 AS "sv_1", 46.000000 AS "sv_2", 30.000000 AS "sv_3", 4.000000 AS "sv_4", 13.000000 AS "sv_5", 5.000000 AS "sv_6", 15.000100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 193 AS "sv_idx", 1.000000 AS "coeff", -122.169998 AS "sv_0", 37.450001 AS "sv_1", 33.000000 AS "sv_2", 1828.000000 AS "sv_3", 396.000000 AS "sv_4", 766.000000 AS "sv_5", 378.000000 AS "sv_6", 4.453100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 194 AS "sv_idx", 1.000000 AS "coeff", -122.169998 AS "sv_0", 37.450001 AS "sv_1", 35.000000 AS "sv_2", 1025.000000 AS "sv_3", 242.000000 AS "sv_4", 388.000000 AS "sv_5", 232.000000 AS "sv_6", 5.199500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 195 AS "sv_idx", 1.000000 AS "coeff", -122.209999 AS "sv_0", 37.439999 AS "sv_1", 35.000000 AS "sv_2", 1140.000000 AS "sv_3", 193.000000 AS "sv_4", 486.000000 AS "sv_5", 199.000000 AS "sv_6", 4.690800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 196 AS "sv_idx", 1.000000 AS "coeff", -122.209999 AS "sv_0", 37.430000 AS "sv_1", 33.000000 AS "sv_2", 1606.000000 AS "sv_3", 254.000000 AS "sv_4", 727.000000 AS "sv_5", 271.000000 AS "sv_6", 8.696300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 197 AS "sv_idx", 1.000000 AS "coeff", -122.190002 AS "sv_0", 37.419998 AS "sv_1", 47.000000 AS "sv_2", 932.000000 AS "sv_3", 167.000000 AS "sv_4", 295.000000 AS "sv_5", 116.000000 AS "sv_6", 8.437500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 198 AS "sv_idx", 1.000000 AS "coeff", -122.209999 AS "sv_0", 37.430000 AS "sv_1", 20.000000 AS "sv_2", 975.000000 AS "sv_3", 134.000000 AS "sv_4", 324.000000 AS "sv_5", 146.000000 AS "sv_6", 9.779600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 199 AS "sv_idx", 1.000000 AS "coeff", -122.209999 AS "sv_0", 37.419998 AS "sv_1", 28.000000 AS "sv_2", 564.000000 AS "sv_3", 72.000000 AS "sv_4", 191.000000 AS "sv_5", 79.000000 AS "sv_6", 11.966600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 200 AS "sv_idx", 1.000000 AS "coeff", -122.199997 AS "sv_0", 37.400002 AS "sv_1", 37.000000 AS "sv_2", 1296.000000 AS "sv_3", 194.000000 AS "sv_4", 540.000000 AS "sv_5", 192.000000 AS "sv_6", 8.278200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 201 AS "sv_idx", 1.000000 AS "coeff", -122.209999 AS "sv_0", 37.369999 AS "sv_1", 34.000000 AS "sv_2", 1476.000000 AS "sv_3", 217.000000 AS "sv_4", 613.000000 AS "sv_5", 223.000000 AS "sv_6", 8.288300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 202 AS "sv_idx", 1.000000 AS "coeff", -122.269997 AS "sv_0", 37.450001 AS "sv_1", 41.000000 AS "sv_2", 830.000000 AS "sv_3", 136.000000 AS "sv_4", 353.000000 AS "sv_5", 153.000000 AS "sv_6", 6.382400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 203 AS "sv_idx", 1.000000 AS "coeff", -122.250000 AS "sv_0", 37.389999 AS "sv_1", 33.000000 AS "sv_2", 370.000000 AS "sv_3", 42.000000 AS "sv_4", 153.000000 AS "sv_5", 53.000000 AS "sv_6", 10.651400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 204 AS "sv_idx", 1.000000 AS "coeff", -122.260002 AS "sv_0", 37.380001 AS "sv_1", 28.000000 AS "sv_2", 1103.000000 AS "sv_3", 164.000000 AS "sv_4", 415.000000 AS "sv_5", 154.000000 AS "sv_6", 7.863300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 205 AS "sv_idx", 1.000000 AS "coeff", -122.330002 AS "sv_0", 37.389999 AS "sv_1", 52.000000 AS "sv_2", 573.000000 AS "sv_3", 102.000000 AS "sv_4", 232.000000 AS "sv_5", 92.000000 AS "sv_6", 6.226300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 206 AS "sv_idx", 1.000000 AS "coeff", -119.669998 AS "sv_0", 34.470001 AS "sv_1", 35.000000 AS "sv_2", 2700.000000 AS "sv_3", 422.000000 AS "sv_4", 1995.000000 AS "sv_5", 383.000000 AS "sv_6", 4.975700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 207 AS "sv_idx", 1.000000 AS "coeff", -119.610001 AS "sv_0", 34.430000 AS "sv_1", 16.000000 AS "sv_2", 2665.000000 AS "sv_3", 391.000000 AS "sv_4", 794.000000 AS "sv_5", 311.000000 AS "sv_6", 9.026700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 208 AS "sv_idx", 1.000000 AS "coeff", -119.500000 AS "sv_0", 34.349998 AS "sv_1", 39.000000 AS "sv_2", 308.000000 AS "sv_3", 38.000000 AS "sv_4", 59.000000 AS "sv_5", 21.000000 AS "sv_6", 11.779400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 209 AS "sv_idx", 1.000000 AS "coeff", -120.160004 AS "sv_0", 34.610001 AS "sv_1", 17.000000 AS "sv_2", 921.000000 AS "sv_3", 189.000000 AS "sv_4", 434.000000 AS "sv_5", 219.000000 AS "sv_6", 3.018500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 210 AS "sv_idx", -1.000000 AS "coeff", -121.900002 AS "sv_0", 37.340000 AS "sv_1", 52.000000 AS "sv_2", 241.000000 AS "sv_3", 69.000000 AS "sv_4", 385.000000 AS "sv_5", 64.000000 AS "sv_6", 2.619000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 211 AS "sv_idx", 1.000000 AS "coeff", -121.900002 AS "sv_0", 37.389999 AS "sv_1", 42.000000 AS "sv_2", 42.000000 AS "sv_3", 14.000000 AS "sv_4", 26.000000 AS "sv_5", 14.000000 AS "sv_6", 1.736100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 212 AS "sv_idx", 1.000000 AS "coeff", -121.870003 AS "sv_0", 37.459999 AS "sv_1", 43.000000 AS "sv_2", 91.000000 AS "sv_3", 12.000000 AS "sv_4", 58.000000 AS "sv_5", 16.000000 AS "sv_6", 15.000100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 213 AS "sv_idx", 1.000000 AS "coeff", -121.980003 AS "sv_0", 37.250000 AS "sv_1", 19.000000 AS "sv_2", 755.000000 AS "sv_3", 93.000000 AS "sv_4", 267.000000 AS "sv_5", 99.000000 AS "sv_6", 15.000000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 214 AS "sv_idx", 1.000000 AS "coeff", -122.029999 AS "sv_0", 37.270000 AS "sv_1", 32.000000 AS "sv_2", 4350.000000 AS "sv_3", 645.000000 AS "sv_4", 1551.000000 AS "sv_5", 609.000000 AS "sv_6", 7.827900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 215 AS "sv_idx", 1.000000 AS "coeff", -122.070000 AS "sv_0", 37.310001 AS "sv_1", 24.000000 AS "sv_2", 4401.000000 AS "sv_3", 698.000000 AS "sv_4", 1818.000000 AS "sv_5", 685.000000 AS "sv_6", 7.298600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 216 AS "sv_idx", 1.000000 AS "coeff", -122.029999 AS "sv_0", 37.369999 AS "sv_1", 16.000000 AS "sv_2", 3402.000000 AS "sv_3", 1193.000000 AS "sv_4", 1479.000000 AS "sv_5", 1043.000000 AS "sv_6", 3.586100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 217 AS "sv_idx", -1.000000 AS "coeff", -122.080002 AS "sv_0", 37.400002 AS "sv_1", 19.000000 AS "sv_2", 3565.000000 AS "sv_3", 858.000000 AS "sv_4", 1639.000000 AS "sv_5", 744.000000 AS "sv_6", 4.154400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 218 AS "sv_idx", 1.000000 AS "coeff", -122.089996 AS "sv_0", 37.369999 AS "sv_1", 27.000000 AS "sv_2", 1269.000000 AS "sv_3", 186.000000 AS "sv_4", 464.000000 AS "sv_5", 182.000000 AS "sv_6", 6.837400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 219 AS "sv_idx", 1.000000 AS "coeff", -122.089996 AS "sv_0", 37.360001 AS "sv_1", 37.000000 AS "sv_2", 1550.000000 AS "sv_3", 238.000000 AS "sv_4", 805.000000 AS "sv_5", 250.000000 AS "sv_6", 5.022200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 220 AS "sv_idx", 1.000000 AS "coeff", -122.070000 AS "sv_0", 37.340000 AS "sv_1", 33.000000 AS "sv_2", 1208.000000 AS "sv_3", 198.000000 AS "sv_4", 495.000000 AS "sv_5", 216.000000 AS "sv_6", 5.465900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 221 AS "sv_idx", 1.000000 AS "coeff", -122.070000 AS "sv_0", 37.340000 AS "sv_1", 35.000000 AS "sv_2", 1172.000000 AS "sv_3", 184.000000 AS "sv_4", 512.000000 AS "sv_5", 175.000000 AS "sv_6", 7.356100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 222 AS "sv_idx", 1.000000 AS "coeff", -122.070000 AS "sv_0", 37.349998 AS "sv_1", 35.000000 AS "sv_2", 1447.000000 AS "sv_3", 205.000000 AS "sv_4", 619.000000 AS "sv_5", 206.000000 AS "sv_6", 9.814400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 223 AS "sv_idx", 1.000000 AS "coeff", -122.080002 AS "sv_0", 37.349998 AS "sv_1", 35.000000 AS "sv_2", 1347.000000 AS "sv_3", 207.000000 AS "sv_4", 548.000000 AS "sv_5", 189.000000 AS "sv_6", 7.706800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 224 AS "sv_idx", 1.000000 AS "coeff", -122.110001 AS "sv_0", 37.369999 AS "sv_1", 49.000000 AS "sv_2", 1068.000000 AS "sv_3", 190.000000 AS "sv_4", 410.000000 AS "sv_5", 171.000000 AS "sv_6", 7.204500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 225 AS "sv_idx", 1.000000 AS "coeff", -122.120003 AS "sv_0", 37.380001 AS "sv_1", 34.000000 AS "sv_2", 1443.000000 AS "sv_3", 218.000000 AS "sv_4", 504.000000 AS "sv_5", 200.000000 AS "sv_6", 8.470900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 226 AS "sv_idx", 1.000000 AS "coeff", -122.129997 AS "sv_0", 37.450001 AS "sv_1", 37.000000 AS "sv_2", 1287.000000 AS "sv_3", 197.000000 AS "sv_4", 510.000000 AS "sv_5", 206.000000 AS "sv_6", 7.902900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 227 AS "sv_idx", 1.000000 AS "coeff", -122.150002 AS "sv_0", 37.459999 AS "sv_1", 39.000000 AS "sv_2", 906.000000 AS "sv_3", 109.000000 AS "sv_4", 353.000000 AS "sv_5", 112.000000 AS "sv_6", 10.394200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 228 AS "sv_idx", 1.000000 AS "coeff", -122.150002 AS "sv_0", 37.450001 AS "sv_1", 52.000000 AS "sv_2", 568.000000 AS "sv_3", 91.000000 AS "sv_4", 219.000000 AS "sv_5", 75.000000 AS "sv_6", 6.157500 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 229 AS "sv_idx", 1.000000 AS "coeff", -122.150002 AS "sv_0", 37.439999 AS "sv_1", 52.000000 AS "sv_2", 1400.000000 AS "sv_3", 217.000000 AS "sv_4", 522.000000 AS "sv_5", 227.000000 AS "sv_6", 4.986100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 230 AS "sv_idx", 1.000000 AS "coeff", -122.139999 AS "sv_0", 37.430000 AS "sv_1", 52.000000 AS "sv_2", 1327.000000 AS "sv_3", 190.000000 AS "sv_4", 467.000000 AS "sv_5", 189.000000 AS "sv_6", 12.590200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 231 AS "sv_idx", 1.000000 AS "coeff", -122.139999 AS "sv_0", 37.430000 AS "sv_1", 52.000000 AS "sv_2", 1383.000000 AS "sv_3", 227.000000 AS "sv_4", 551.000000 AS "sv_5", 249.000000 AS "sv_6", 6.582900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 232 AS "sv_idx", 1.000000 AS "coeff", -122.180000 AS "sv_0", 37.410000 AS "sv_1", 21.000000 AS "sv_2", 1034.000000 AS "sv_3", 117.000000 AS "sv_4", 323.000000 AS "sv_5", 117.000000 AS "sv_6", 10.723700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 233 AS "sv_idx", 1.000000 AS "coeff", -122.110001 AS "sv_0", 37.310001 AS "sv_1", 7.000000 AS "sv_2", 189.000000 AS "sv_3", 26.000000 AS "sv_4", 84.000000 AS "sv_5", 29.000000 AS "sv_6", 13.809300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 234 AS "sv_idx", 1.000000 AS "coeff", -122.120003 AS "sv_0", 37.290001 AS "sv_1", 11.000000 AS "sv_2", 436.000000 AS "sv_3", 70.000000 AS "sv_4", 212.000000 AS "sv_5", 75.000000 AS "sv_6", 8.619600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 235 AS "sv_idx", 1.000000 AS "coeff", -122.080002 AS "sv_0", 37.240002 AS "sv_1", 21.000000 AS "sv_2", 427.000000 AS "sv_3", 63.000000 AS "sv_4", 182.000000 AS "sv_5", 70.000000 AS "sv_6", 11.328300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 236 AS "sv_idx", 1.000000 AS "coeff", -121.870003 AS "sv_0", 37.209999 AS "sv_1", 18.000000 AS "sv_2", 1080.000000 AS "sv_3", 122.000000 AS "sv_4", 382.000000 AS "sv_5", 121.000000 AS "sv_6", 9.080000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 237 AS "sv_idx", 1.000000 AS "coeff", -121.760002 AS "sv_0", 37.259998 AS "sv_1", 17.000000 AS "sv_2", 250.000000 AS "sv_3", 52.000000 AS "sv_4", 141.000000 AS "sv_5", 51.000000 AS "sv_6", 4.645800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 238 AS "sv_idx", 1.000000 AS "coeff", -121.739998 AS "sv_0", 37.189999 AS "sv_1", 11.000000 AS "sv_2", 1290.000000 AS "sv_3", 197.000000 AS "sv_4", 881.000000 AS "sv_5", 191.000000 AS "sv_6", 4.203900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 239 AS "sv_idx", 1.000000 AS "coeff", -121.739998 AS "sv_0", 37.349998 AS "sv_1", 34.000000 AS "sv_2", 440.000000 AS "sv_3", 90.000000 AS "sv_4", 217.000000 AS "sv_5", 93.000000 AS "sv_6", 5.232700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 240 AS "sv_idx", 1.000000 AS "coeff", -122.019997 AS "sv_0", 37.009998 AS "sv_1", 20.000000 AS "sv_2", 1005.000000 AS "sv_3", 138.000000 AS "sv_4", 345.000000 AS "sv_5", 129.000000 AS "sv_6", 10.096800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 241 AS "sv_idx", -1.000000 AS "coeff", -122.389999 AS "sv_0", 40.590000 AS "sv_1", 26.000000 AS "sv_2", 1279.000000 AS "sv_3", 438.000000 AS "sv_4", 1276.000000 AS "sv_5", 420.000000 AS "sv_6", 1.240400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 242 AS "sv_idx", -1.000000 AS "coeff", -122.309998 AS "sv_0", 40.889999 AS "sv_1", 18.000000 AS "sv_2", 754.000000 AS "sv_3", 161.000000 AS "sv_4", 247.000000 AS "sv_5", 107.000000 AS "sv_6", 2.258300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 243 AS "sv_idx", -1.000000 AS "coeff", -122.000000 AS "sv_0", 38.349998 AS "sv_1", 24.000000 AS "sv_2", 745.000000 AS "sv_3", 116.000000 AS "sv_4", 300.000000 AS "sv_5", 115.000000 AS "sv_6", 3.617600 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 244 AS "sv_idx", -1.000000 AS "coeff", -120.940002 AS "sv_0", 37.700001 AS "sv_1", 25.000000 AS "sv_2", 1005.000000 AS "sv_3", 159.000000 AS "sv_4", 390.000000 AS "sv_5", 139.000000 AS "sv_6", 4.400000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 245 AS "sv_idx", -1.000000 AS "coeff", -121.309998 AS "sv_0", 37.439999 AS "sv_1", 33.000000 AS "sv_2", 69.000000 AS "sv_3", 28.000000 AS "sv_4", 47.000000 AS "sv_5", 14.000000 AS "sv_6", 0.536000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 246 AS "sv_idx", -1.000000 AS "coeff", -119.349998 AS "sv_0", 36.419998 AS "sv_1", 18.000000 AS "sv_2", 1115.000000 AS "sv_3", 193.000000 AS "sv_4", 1742.000000 AS "sv_5", 176.000000 AS "sv_6", 2.796900 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 247 AS "sv_idx", -1.000000 AS "coeff", -119.000000 AS "sv_0", 36.060001 AS "sv_1", 41.000000 AS "sv_2", 937.000000 AS "sv_3", 158.000000 AS "sv_4", 396.000000 AS "sv_5", 142.000000 AS "sv_6", 4.083300 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 248 AS "sv_idx", 1.000000 AS "coeff", -119.309998 AS "sv_0", 34.439999 AS "sv_1", 5.000000 AS "sv_2", 403.000000 AS "sv_3", 48.000000 AS "sv_4", 208.000000 AS "sv_5", 54.000000 AS "sv_6", 12.632000 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 249 AS "sv_idx", 1.000000 AS "coeff", -119.169998 AS "sv_0", 34.310001 AS "sv_1", 21.000000 AS "sv_2", 259.000000 AS "sv_3", 38.000000 AS "sv_4", 142.000000 AS "sv_5", 45.000000 AS "sv_6", 5.268100 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 250 AS "sv_idx", 1.000000 AS "coeff", -119.139999 AS "sv_0", 34.230000 AS "sv_1", 8.000000 AS "sv_2", 243.000000 AS "sv_3", 75.000000 AS "sv_4", 102.000000 AS "sv_5", 80.000000 AS "sv_6", 2.571400 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 251 AS "sv_idx", 1.000000 AS "coeff", -118.940002 AS "sv_0", 34.160000 AS "sv_1", 3.000000 AS "sv_2", 1170.000000 AS "sv_3", 148.000000 AS "sv_4", 493.000000 AS "sv_5", 142.000000 AS "sv_6", 8.042800 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 252 AS "sv_idx", 1.000000 AS "coeff", -118.830002 AS "sv_0", 34.139999 AS "sv_1", 16.000000 AS "sv_2", 1316.000000 AS "sv_3", 194.000000 AS "sv_4", 450.000000 AS "sv_5", 173.000000 AS "sv_6", 10.159700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 253 AS "sv_idx", 1.000000 AS "coeff", -118.900002 AS "sv_0", 34.139999 AS "sv_1", 35.000000 AS "sv_2", 1503.000000 AS "sv_3", 263.000000 AS "sv_4", 576.000000 AS "sv_5", 216.000000 AS "sv_6", 5.145700 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 254 AS "sv_idx", 1.000000 AS "coeff", -118.690002 AS "sv_0", 34.180000 AS "sv_1", 11.000000 AS "sv_2", 1177.000000 AS "sv_3", 138.000000 AS "sv_4", 415.000000 AS "sv_5", 119.000000 AS "sv_6", 10.047200 AS "sv_7", 0.000000 AS "sv_8"
     UNION ALL
     SELECT 255 AS "sv_idx", 1.000000 AS "coeff", -118.849998 AS "sv_0", 34.270000 AS "sv_1", 50.000000 AS "sv_2", 187.000000 AS "sv_3", 33.000000 AS "sv_4", 130.000000 AS "sv_5", 35.000000 AS "sv_6", 3.343800 AS "sv_7", 0.000000 AS "sv_8"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - -257500.156250 AS dot_product
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
