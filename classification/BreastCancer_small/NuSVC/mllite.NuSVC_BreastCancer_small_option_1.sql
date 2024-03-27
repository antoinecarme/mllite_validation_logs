WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 )
,
"SV_data" AS
 ( SELECT 
   "Values".sv_idx AS sv_idx,
   CAST("Values".sv_0 AS FLOAT) sv_0,
   CAST("Values".sv_1 AS FLOAT) sv_1,
   CAST("Values".sv_2 AS FLOAT) sv_2,
   CAST("Values".sv_3 AS FLOAT) sv_3,
   CAST("Values".sv_4 AS FLOAT) sv_4,
   CAST("Values".sv_5 AS FLOAT) sv_5,
   CAST("Values".sv_6 AS FLOAT) sv_6,
   CAST("Values".sv_7 AS FLOAT) sv_7,
   CAST("Values".sv_8 AS FLOAT) sv_8,
   CAST("Values".sv_9 AS FLOAT) sv_9,
   CAST("Values".sv_10 AS FLOAT) sv_10,
   CAST("Values".sv_11 AS FLOAT) sv_11,
   CAST("Values".sv_12 AS FLOAT) sv_12,
   CAST("Values".sv_13 AS FLOAT) sv_13,
   CAST("Values".sv_14 AS FLOAT) sv_14,
   CAST("Values".sv_15 AS FLOAT) sv_15,
   CAST("Values".sv_16 AS FLOAT) sv_16,
   CAST("Values".sv_17 AS FLOAT) sv_17,
   CAST("Values".sv_18 AS FLOAT) sv_18,
   CAST("Values".sv_19 AS FLOAT) sv_19,
   CAST("Values".sv_20 AS FLOAT) sv_20,
   CAST("Values".sv_21 AS FLOAT) sv_21,
   CAST("Values".sv_22 AS FLOAT) sv_22,
   CAST("Values".sv_23 AS FLOAT) sv_23,
   CAST("Values".sv_24 AS FLOAT) sv_24,
   CAST("Values".sv_25 AS FLOAT) sv_25,
   CAST("Values".sv_26 AS FLOAT) sv_26,
   CAST("Values".sv_27 AS FLOAT) sv_27,
   CAST("Values".sv_28 AS FLOAT) sv_28,
   CAST("Values".sv_29 AS FLOAT) sv_29
  FROM
  (
     SELECT 0 AS sv_idx, 15.660000 AS sv_0, 23.200001 AS sv_1, 110.199997 AS sv_2, 773.500000 AS sv_3, 0.110900 AS sv_4, 0.311400 AS sv_5, 0.317600 AS sv_6, 0.137700 AS sv_7, 0.249500 AS sv_8, 0.081040 AS sv_9, 1.292000 AS sv_10, 2.454000 AS sv_11, 10.120000 AS sv_12, 138.500000 AS sv_13, 0.012360 AS sv_14, 0.059950 AS sv_15, 0.082320 AS sv_16, 0.030240 AS sv_17, 0.023370 AS sv_18, 0.006042 AS sv_19, 19.850000 AS sv_20, 31.639999 AS sv_21, 143.699997 AS sv_22, 1226.000000 AS sv_23, 0.150400 AS sv_24, 0.517200 AS sv_25, 0.618100 AS sv_26, 0.246200 AS sv_27, 0.327700 AS sv_28, 0.101900 AS sv_29
     UNION ALL
     SELECT 1 AS sv_idx, 13.730000 AS sv_0, 22.610001 AS sv_1, 93.599998 AS sv_2, 578.299988 AS sv_3, 0.113100 AS sv_4, 0.229300 AS sv_5, 0.212800 AS sv_6, 0.080250 AS sv_7, 0.206900 AS sv_8, 0.076820 AS sv_9, 0.212100 AS sv_10, 1.169000 AS sv_11, 2.061000 AS sv_12, 19.209999 AS sv_13, 0.006429 AS sv_14, 0.059360 AS sv_15, 0.055010 AS sv_16, 0.016280 AS sv_17, 0.019610 AS sv_18, 0.008093 AS sv_19, 15.030000 AS sv_20, 32.009998 AS sv_21, 108.800003 AS sv_22, 697.700012 AS sv_23, 0.165100 AS sv_24, 0.772500 AS sv_25, 0.694300 AS sv_26, 0.220800 AS sv_27, 0.359600 AS sv_28, 0.143100 AS sv_29
     UNION ALL
     SELECT 2 AS sv_idx, 11.420000 AS sv_0, 20.379999 AS sv_1, 77.580002 AS sv_2, 386.100006 AS sv_3, 0.142500 AS sv_4, 0.283900 AS sv_5, 0.241400 AS sv_6, 0.105200 AS sv_7, 0.259700 AS sv_8, 0.097440 AS sv_9, 0.495600 AS sv_10, 1.156000 AS sv_11, 3.445000 AS sv_12, 27.230000 AS sv_13, 0.009110 AS sv_14, 0.074580 AS sv_15, 0.056610 AS sv_16, 0.018670 AS sv_17, 0.059630 AS sv_18, 0.009208 AS sv_19, 14.910000 AS sv_20, 26.500000 AS sv_21, 98.870003 AS sv_22, 567.700012 AS sv_23, 0.209800 AS sv_24, 0.866300 AS sv_25, 0.686900 AS sv_26, 0.257500 AS sv_27, 0.663800 AS sv_28, 0.173000 AS sv_29
     UNION ALL
     SELECT 3 AS sv_idx, 14.480000 AS sv_0, 21.459999 AS sv_1, 94.250000 AS sv_2, 648.200012 AS sv_3, 0.094440 AS sv_4, 0.099470 AS sv_5, 0.120400 AS sv_6, 0.049380 AS sv_7, 0.207500 AS sv_8, 0.056360 AS sv_9, 0.420400 AS sv_10, 2.220000 AS sv_11, 3.301000 AS sv_12, 38.869999 AS sv_13, 0.009369 AS sv_14, 0.029830 AS sv_15, 0.053710 AS sv_16, 0.017610 AS sv_17, 0.024180 AS sv_18, 0.003249 AS sv_19, 16.209999 AS sv_20, 29.250000 AS sv_21, 108.400002 AS sv_22, 808.900024 AS sv_23, 0.130600 AS sv_24, 0.197600 AS sv_25, 0.334900 AS sv_26, 0.122500 AS sv_27, 0.302000 AS sv_28, 0.068460 AS sv_29
     UNION ALL
     SELECT 4 AS sv_idx, 14.860000 AS sv_0, 23.209999 AS sv_1, 100.400002 AS sv_2, 671.400024 AS sv_3, 0.104400 AS sv_4, 0.198000 AS sv_5, 0.169700 AS sv_6, 0.088780 AS sv_7, 0.173700 AS sv_8, 0.066720 AS sv_9, 0.279600 AS sv_10, 0.962200 AS sv_11, 3.591000 AS sv_12, 25.200001 AS sv_13, 0.008081 AS sv_14, 0.051220 AS sv_15, 0.055510 AS sv_16, 0.018830 AS sv_17, 0.025450 AS sv_18, 0.004312 AS sv_19, 16.080000 AS sv_20, 27.780001 AS sv_21, 118.599998 AS sv_22, 784.700012 AS sv_23, 0.131600 AS sv_24, 0.464800 AS sv_25, 0.458900 AS sv_26, 0.172700 AS sv_27, 0.300000 AS sv_28, 0.087010 AS sv_29
     UNION ALL
     SELECT 5 AS sv_idx, 17.570000 AS sv_0, 15.050000 AS sv_1, 115.000000 AS sv_2, 955.099976 AS sv_3, 0.098470 AS sv_4, 0.115700 AS sv_5, 0.098750 AS sv_6, 0.079530 AS sv_7, 0.173900 AS sv_8, 0.061490 AS sv_9, 0.600300 AS sv_10, 0.822500 AS sv_11, 4.655000 AS sv_12, 61.099998 AS sv_13, 0.005627 AS sv_14, 0.030330 AS sv_15, 0.034070 AS sv_16, 0.013540 AS sv_17, 0.019250 AS sv_18, 0.003742 AS sv_19, 20.010000 AS sv_20, 19.520000 AS sv_21, 134.899994 AS sv_22, 1227.000000 AS sv_23, 0.125500 AS sv_24, 0.281200 AS sv_25, 0.248900 AS sv_26, 0.145600 AS sv_27, 0.275600 AS sv_28, 0.079190 AS sv_29
     UNION ALL
     SELECT 6 AS sv_idx, 16.020000 AS sv_0, 23.240000 AS sv_1, 102.699997 AS sv_2, 797.799988 AS sv_3, 0.082060 AS sv_4, 0.066690 AS sv_5, 0.032990 AS sv_6, 0.033230 AS sv_7, 0.152800 AS sv_8, 0.056970 AS sv_9, 0.379500 AS sv_10, 1.187000 AS sv_11, 2.466000 AS sv_12, 40.509998 AS sv_13, 0.004029 AS sv_14, 0.009269 AS sv_15, 0.011010 AS sv_16, 0.007591 AS sv_17, 0.014600 AS sv_18, 0.003042 AS sv_19, 19.190001 AS sv_20, 33.880001 AS sv_21, 123.800003 AS sv_22, 1150.000000 AS sv_23, 0.118100 AS sv_24, 0.155100 AS sv_25, 0.145900 AS sv_26, 0.099750 AS sv_27, 0.294800 AS sv_28, 0.084520 AS sv_29
     UNION ALL
     SELECT 7 AS sv_idx, 17.190001 AS sv_0, 22.070000 AS sv_1, 111.599998 AS sv_2, 928.299988 AS sv_3, 0.097260 AS sv_4, 0.089950 AS sv_5, 0.090610 AS sv_6, 0.065270 AS sv_7, 0.186700 AS sv_8, 0.055800 AS sv_9, 0.420300 AS sv_10, 0.738300 AS sv_11, 2.819000 AS sv_12, 45.419998 AS sv_13, 0.004493 AS sv_14, 0.012060 AS sv_15, 0.020480 AS sv_16, 0.009875 AS sv_17, 0.011440 AS sv_18, 0.001575 AS sv_19, 21.580000 AS sv_20, 29.330000 AS sv_21, 140.500000 AS sv_22, 1436.000000 AS sv_23, 0.155800 AS sv_24, 0.256700 AS sv_25, 0.388900 AS sv_26, 0.198400 AS sv_27, 0.321600 AS sv_28, 0.075700 AS sv_29
     UNION ALL
     SELECT 8 AS sv_idx, 13.800000 AS sv_0, 15.790000 AS sv_1, 90.430000 AS sv_2, 584.099976 AS sv_3, 0.100700 AS sv_4, 0.128000 AS sv_5, 0.077890 AS sv_6, 0.050690 AS sv_7, 0.166200 AS sv_8, 0.065660 AS sv_9, 0.278700 AS sv_10, 0.620500 AS sv_11, 1.957000 AS sv_12, 23.350000 AS sv_13, 0.004717 AS sv_14, 0.020650 AS sv_15, 0.017590 AS sv_16, 0.009206 AS sv_17, 0.012200 AS sv_18, 0.003130 AS sv_19, 16.570000 AS sv_20, 20.860001 AS sv_21, 110.300003 AS sv_22, 812.400024 AS sv_23, 0.141100 AS sv_24, 0.354200 AS sv_25, 0.277900 AS sv_26, 0.138300 AS sv_27, 0.258900 AS sv_28, 0.103000 AS sv_29
     UNION ALL
     SELECT 9 AS sv_idx, 13.870000 AS sv_0, 20.700001 AS sv_1, 89.769997 AS sv_2, 584.799988 AS sv_3, 0.095780 AS sv_4, 0.101800 AS sv_5, 0.036880 AS sv_6, 0.023690 AS sv_7, 0.162000 AS sv_8, 0.066880 AS sv_9, 0.272000 AS sv_10, 1.047000 AS sv_11, 2.076000 AS sv_12, 23.120001 AS sv_13, 0.006298 AS sv_14, 0.021720 AS sv_15, 0.026150 AS sv_16, 0.009061 AS sv_17, 0.014900 AS sv_18, 0.003599 AS sv_19, 15.050000 AS sv_20, 24.750000 AS sv_21, 99.169998 AS sv_22, 688.599976 AS sv_23, 0.126400 AS sv_24, 0.203700 AS sv_25, 0.137700 AS sv_26, 0.068450 AS sv_27, 0.224900 AS sv_28, 0.084920 AS sv_29
     UNION ALL
     SELECT 10 AS sv_idx, 12.100000 AS sv_0, 17.719999 AS sv_1, 78.070000 AS sv_2, 446.200012 AS sv_3, 0.102900 AS sv_4, 0.097580 AS sv_5, 0.047830 AS sv_6, 0.033260 AS sv_7, 0.193700 AS sv_8, 0.061610 AS sv_9, 0.284100 AS sv_10, 1.652000 AS sv_11, 1.869000 AS sv_12, 22.219999 AS sv_13, 0.008146 AS sv_14, 0.016310 AS sv_15, 0.018430 AS sv_16, 0.007513 AS sv_17, 0.020150 AS sv_18, 0.001798 AS sv_19, 13.560000 AS sv_20, 25.799999 AS sv_21, 88.330002 AS sv_22, 559.500000 AS sv_23, 0.143200 AS sv_24, 0.177300 AS sv_25, 0.160300 AS sv_26, 0.062660 AS sv_27, 0.304900 AS sv_28, 0.070810 AS sv_29
     UNION ALL
     SELECT 11 AS sv_idx, 14.340000 AS sv_0, 13.470000 AS sv_1, 92.510002 AS sv_2, 641.200012 AS sv_3, 0.099060 AS sv_4, 0.076240 AS sv_5, 0.057240 AS sv_6, 0.046030 AS sv_7, 0.207500 AS sv_8, 0.054480 AS sv_9, 0.522000 AS sv_10, 0.812100 AS sv_11, 3.763000 AS sv_12, 48.290001 AS sv_13, 0.007089 AS sv_14, 0.014280 AS sv_15, 0.023600 AS sv_16, 0.012860 AS sv_17, 0.022660 AS sv_18, 0.001463 AS sv_19, 16.770000 AS sv_20, 16.900000 AS sv_21, 110.400002 AS sv_22, 873.200012 AS sv_23, 0.129700 AS sv_24, 0.152500 AS sv_25, 0.163200 AS sv_26, 0.108700 AS sv_27, 0.306200 AS sv_28, 0.060720 AS sv_29
     UNION ALL
     SELECT 12 AS sv_idx, 13.850000 AS sv_0, 19.600000 AS sv_1, 88.680000 AS sv_2, 592.599976 AS sv_3, 0.086840 AS sv_4, 0.063300 AS sv_5, 0.013420 AS sv_6, 0.022930 AS sv_7, 0.155500 AS sv_8, 0.056730 AS sv_9, 0.341900 AS sv_10, 1.678000 AS sv_11, 2.331000 AS sv_12, 29.629999 AS sv_13, 0.005836 AS sv_14, 0.010950 AS sv_15, 0.005812 AS sv_16, 0.007039 AS sv_17, 0.020140 AS sv_18, 0.002326 AS sv_19, 15.630000 AS sv_20, 28.010000 AS sv_21, 100.900002 AS sv_22, 749.099976 AS sv_23, 0.111800 AS sv_24, 0.114100 AS sv_25, 0.047530 AS sv_26, 0.058900 AS sv_27, 0.251300 AS sv_28, 0.069110 AS sv_29
     UNION ALL
     SELECT 13 AS sv_idx, 12.860000 AS sv_0, 18.000000 AS sv_1, 83.190002 AS sv_2, 506.299988 AS sv_3, 0.099340 AS sv_4, 0.095460 AS sv_5, 0.038890 AS sv_6, 0.023150 AS sv_7, 0.171800 AS sv_8, 0.059970 AS sv_9, 0.265500 AS sv_10, 1.095000 AS sv_11, 1.778000 AS sv_12, 20.350000 AS sv_13, 0.005293 AS sv_14, 0.016610 AS sv_15, 0.020710 AS sv_16, 0.008179 AS sv_17, 0.017480 AS sv_18, 0.002848 AS sv_19, 14.240000 AS sv_20, 24.820000 AS sv_21, 91.879997 AS sv_22, 622.099976 AS sv_23, 0.128900 AS sv_24, 0.214100 AS sv_25, 0.173100 AS sv_26, 0.079260 AS sv_27, 0.277900 AS sv_28, 0.079180 AS sv_29
     UNION ALL
     SELECT 14 AS sv_idx, 14.760000 AS sv_0, 14.740000 AS sv_1, 94.870003 AS sv_2, 668.700012 AS sv_3, 0.088750 AS sv_4, 0.077800 AS sv_5, 0.046080 AS sv_6, 0.035280 AS sv_7, 0.152100 AS sv_8, 0.059120 AS sv_9, 0.342800 AS sv_10, 0.398100 AS sv_11, 2.537000 AS sv_12, 29.059999 AS sv_13, 0.004732 AS sv_14, 0.015060 AS sv_15, 0.018550 AS sv_16, 0.010670 AS sv_17, 0.021630 AS sv_18, 0.002783 AS sv_19, 17.270000 AS sv_20, 17.930000 AS sv_21, 114.199997 AS sv_22, 880.799988 AS sv_23, 0.122000 AS sv_24, 0.200900 AS sv_25, 0.215100 AS sv_26, 0.125100 AS sv_27, 0.310900 AS sv_28, 0.081870 AS sv_29
     UNION ALL
     SELECT 15 AS sv_idx, 16.840000 AS sv_0, 19.459999 AS sv_1, 108.400002 AS sv_2, 880.200012 AS sv_3, 0.074450 AS sv_4, 0.072230 AS sv_5, 0.051500 AS sv_6, 0.027710 AS sv_7, 0.184400 AS sv_8, 0.052680 AS sv_9, 0.478900 AS sv_10, 2.060000 AS sv_11, 3.479000 AS sv_12, 46.610001 AS sv_13, 0.003443 AS sv_14, 0.026610 AS sv_15, 0.030560 AS sv_16, 0.011100 AS sv_17, 0.015200 AS sv_18, 0.001519 AS sv_19, 18.219999 AS sv_20, 28.070000 AS sv_21, 120.300003 AS sv_22, 1032.000000 AS sv_23, 0.087740 AS sv_24, 0.171000 AS sv_25, 0.188200 AS sv_26, 0.084360 AS sv_27, 0.252700 AS sv_28, 0.059720 AS sv_29
     UNION ALL
     SELECT 16 AS sv_idx, 13.900000 AS sv_0, 19.240000 AS sv_1, 88.730003 AS sv_2, 602.900024 AS sv_3, 0.079910 AS sv_4, 0.053260 AS sv_5, 0.029950 AS sv_6, 0.020700 AS sv_7, 0.157900 AS sv_8, 0.055940 AS sv_9, 0.331600 AS sv_10, 0.926400 AS sv_11, 2.056000 AS sv_12, 28.410000 AS sv_13, 0.003704 AS sv_14, 0.010820 AS sv_15, 0.015300 AS sv_16, 0.006275 AS sv_17, 0.010620 AS sv_18, 0.002217 AS sv_19, 16.410000 AS sv_20, 26.420000 AS sv_21, 104.400002 AS sv_22, 830.500000 AS sv_23, 0.106400 AS sv_24, 0.141500 AS sv_25, 0.167300 AS sv_26, 0.081500 AS sv_27, 0.235600 AS sv_28, 0.076030 AS sv_29
     UNION ALL
     SELECT 17 AS sv_idx, 11.620000 AS sv_0, 18.180000 AS sv_1, 76.379997 AS sv_2, 408.799988 AS sv_3, 0.117500 AS sv_4, 0.148300 AS sv_5, 0.102000 AS sv_6, 0.055640 AS sv_7, 0.195700 AS sv_8, 0.072550 AS sv_9, 0.410100 AS sv_10, 1.740000 AS sv_11, 3.027000 AS sv_12, 27.850000 AS sv_13, 0.014590 AS sv_14, 0.032060 AS sv_15, 0.049610 AS sv_16, 0.018410 AS sv_17, 0.018070 AS sv_18, 0.005217 AS sv_19, 13.360000 AS sv_20, 25.400000 AS sv_21, 88.139999 AS sv_22, 528.099976 AS sv_23, 0.178000 AS sv_24, 0.287800 AS sv_25, 0.318600 AS sv_26, 0.141600 AS sv_27, 0.266000 AS sv_28, 0.092700 AS sv_29
   ) AS "Values"
 )
,
"Kernel_RBF" AS
 ( SELECT
    kvt."index" as "index",
    kvt."sv_idx" as "sv_idx",
    kvt."kernel_value" AS "kernel_value"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      full_join_data_sv."sv_idx" AS "sv_idx",
      sum(CAST(full_join_data_sv."kernel_value" AS FLOAT)) AS "kernel_value"
     FROM
       (SELECT
          model_input."index" as "index",
          "SV_data"."sv_idx" AS "sv_idx",
           exp(min(max(-32.0, -0.000001 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2) + power(model_input."X_10" - "SV_data".sv_10, 2) + power(model_input."X_11" - "SV_data".sv_11, 2) + power(model_input."X_12" - "SV_data".sv_12, 2) + power(model_input."X_13" - "SV_data".sv_13, 2) + power(model_input."X_14" - "SV_data".sv_14, 2) + power(model_input."X_15" - "SV_data".sv_15, 2) + power(model_input."X_16" - "SV_data".sv_16, 2) + power(model_input."X_17" - "SV_data".sv_17, 2) + power(model_input."X_18" - "SV_data".sv_18, 2) + power(model_input."X_19" - "SV_data".sv_19, 2) + power(model_input."X_20" - "SV_data".sv_20, 2) + power(model_input."X_21" - "SV_data".sv_21, 2) + power(model_input."X_22" - "SV_data".sv_22, 2) + power(model_input."X_23" - "SV_data".sv_23, 2) + power(model_input."X_24" - "SV_data".sv_24, 2) + power(model_input."X_25" - "SV_data".sv_25, 2) + power(model_input."X_26" - "SV_data".sv_26, 2) + power(model_input."X_27" - "SV_data".sv_27, 2) + power(model_input."X_28" - "SV_data".sv_28, 2) + power(model_input."X_29" - "SV_data".sv_29, 2))), 32.0))  AS "kernel_value" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index", full_join_data_sv."sv_idx"
    ) AS kvt
 ),
"ClassProblems" AS
 ( SELECT
    t.prob_idx AS prob_idx, t.c_1 AS c_1, t.c_2 AS c_2, t.sv_idx AS sv_idx, t.coeff AS Coeff
   FROM
   (
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 0 AS sv_idx, 65.983002 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 1 AS sv_idx, 4855.179688 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 2 AS sv_idx, 4855.179688 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 3 AS sv_idx, 1366.541260 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 4 AS sv_idx, 2585.743408 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 5 AS sv_idx, 346.787537 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 6 AS sv_idx, 69.743660 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 7 AS sv_idx, 180.247925 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 8 AS sv_idx, 1211.160034 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 9 AS sv_idx, 65.983002 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 10 AS sv_idx, 4855.179688 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 11 AS sv_idx, 4855.179688 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 12 AS sv_idx, 1366.541260 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 13 AS sv_idx, 2585.743408 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 14 AS sv_idx, 346.787537 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 15 AS sv_idx, 69.743660 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 16 AS sv_idx, 180.247925 AS Coeff
     UNION ALL
     SELECT 0 AS prob_idx, 0 AS c_1, 1 AS c_2, 17 AS sv_idx, 1211.160034 AS Coeff
   ) AS t
  )
,
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -7.501608 AS "rho", -0.530896 AS "probA", -0.104115 AS "probB"
   ) AS t
  )
,
"Competition" AS
( SELECT 
   t1."index" AS "index",
   t2."prob_idx" AS "prob_idx",
   t2."c_1" AS "c_1",
   t2."c_2" AS "c_2",
   t3."rho" + SUM( t2."Coeff" * t1."kernel_value" ) AS "prob_score"
  FROM 
    "Kernel_RBF" AS t1
    LEFT OUTER JOIN
    "ClassProblems" AS t2
    ON (t1."sv_idx" = t2."sv_idx")
    LEFT OUTER JOIN
    "SV_Rho" AS t3
    ON (t3."prob_idx" = t2."prob_idx")
    GROUP BY t1."index", t2."prob_idx", t2."c_1", t2."c_2"
)
,"model_scores_cte" AS
( SELECT 
   t1."index" AS "index",
   SUM( CASE WHEN (t1.c_1 == 0 and (t1.prob_score > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1.c_2 == 0 and (t1.prob_score <= 0)) THEN 1 ELSE 0 END ) AS Score_0,
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   SUM( CASE WHEN (t1.c_1 == 1 and (t1.prob_score > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1.c_2 == 1 and (t1.prob_score <= 0)) THEN 1 ELSE 0 END ) AS Score_1,
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM 
    "Competition" AS t1
    GROUP BY t1."index"
)
,
orig_cte AS 
 (SELECT t."index" AS "index", 
   -t."Score_1" AS "Score_0",
   1.0 - t."Proba_1" AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba"
  FROM model_scores_cte AS t
 )
,
score_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "orig_cte"
   ) AS scu
 )
,
score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
    "orig_cte" AS t
    LEFT OUTER JOIN
    (SELECT score_class_union.index_u AS index_m,
      max(score_class_union."Score") AS "max_Score"
     FROM score_class_union
     GROUP BY score_class_union.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,
union_with_max AS 
 (SELECT score_class_union.index_u AS "index",
   score_class_union.class AS class,
   score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score"
  FROM
   score_class_union
   LEFT OUTER JOIN
   score_max
   ON score_class_union.index_u = score_max."index"
 )
,
arg_max_cte AS 
 (SELECT score_max."index" AS "index",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score",
   "arg_max_t_Score"."index_Score" AS "index_Score",
   "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score"
  FROM
   score_max
   LEFT OUTER JOIN
   (SELECT union_with_max."index" AS "index_Score",
     max(union_with_max.class) AS "arg_max_Score"
    FROM union_with_max
    WHERE union_with_max."max_Score" <= union_with_max."Score"
    GROUP BY union_with_max."index"
   ) AS "arg_max_t_Score"
   ON score_max."index" = "arg_max_t_Score"."index_Score"
 )
SELECT arg_max_cte."index" AS "index",
  arg_max_cte."Score_0" AS "Score_0",
  arg_max_cte."Proba_0" AS "Proba_0",
  CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN LN( arg_max_cte."Proba_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
  arg_max_cte."Score_1" AS "Score_1",
  arg_max_cte."Proba_1" AS "Proba_1",
  CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN LN( arg_max_cte."Proba_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
  arg_max_cte."arg_max_Score" AS "Decision",
  CASE
   WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0"
   WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1"
 END AS "DecisionProba"
FROM arg_max_cte