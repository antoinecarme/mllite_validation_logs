WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"SV_data" AS
 ( SELECT 
   "Values"."sv_idx" AS "sv_idx",
   CAST("Values"."sv_0" AS FLOAT) AS "sv_0",
   CAST("Values"."sv_1" AS FLOAT) AS "sv_1",
   CAST("Values"."sv_2" AS FLOAT) AS "sv_2",
   CAST("Values"."sv_3" AS FLOAT) AS "sv_3",
   CAST("Values"."sv_4" AS FLOAT) AS "sv_4",
   CAST("Values"."sv_5" AS FLOAT) AS "sv_5",
   CAST("Values"."sv_6" AS FLOAT) AS "sv_6",
   CAST("Values"."sv_7" AS FLOAT) AS "sv_7",
   CAST("Values"."sv_8" AS FLOAT) AS "sv_8",
   CAST("Values"."sv_9" AS FLOAT) AS "sv_9",
   CAST("Values"."sv_10" AS FLOAT) AS "sv_10",
   CAST("Values"."sv_11" AS FLOAT) AS "sv_11",
   CAST("Values"."sv_12" AS FLOAT) AS "sv_12",
   CAST("Values"."sv_13" AS FLOAT) AS "sv_13",
   CAST("Values"."sv_14" AS FLOAT) AS "sv_14",
   CAST("Values"."sv_15" AS FLOAT) AS "sv_15",
   CAST("Values"."sv_16" AS FLOAT) AS "sv_16",
   CAST("Values"."sv_17" AS FLOAT) AS "sv_17",
   CAST("Values"."sv_18" AS FLOAT) AS "sv_18",
   CAST("Values"."sv_19" AS FLOAT) AS "sv_19",
   CAST("Values"."sv_20" AS FLOAT) AS "sv_20",
   CAST("Values"."sv_21" AS FLOAT) AS "sv_21",
   CAST("Values"."sv_22" AS FLOAT) AS "sv_22",
   CAST("Values"."sv_23" AS FLOAT) AS "sv_23",
   CAST("Values"."sv_24" AS FLOAT) AS "sv_24",
   CAST("Values"."sv_25" AS FLOAT) AS "sv_25",
   CAST("Values"."sv_26" AS FLOAT) AS "sv_26",
   CAST("Values"."sv_27" AS FLOAT) AS "sv_27",
   CAST("Values"."sv_28" AS FLOAT) AS "sv_28",
   CAST("Values"."sv_29" AS FLOAT) AS "sv_29"
  FROM
  (
     SELECT 0 AS "sv_idx", 15.340000 AS "sv_0", 14.260000 AS "sv_1", 102.500000 AS "sv_2", 704.400024 AS "sv_3", 0.107300 AS "sv_4", 0.213500 AS "sv_5", 0.207700 AS "sv_6", 0.097560 AS "sv_7", 0.252100 AS "sv_8", 0.070320 AS "sv_9", 0.438800 AS "sv_10", 0.709600 AS "sv_11", 3.384000 AS "sv_12", 44.910000 AS "sv_13", 0.006789 AS "sv_14", 0.053280 AS "sv_15", 0.064460 AS "sv_16", 0.022520 AS "sv_17", 0.036720 AS "sv_18", 0.004394 AS "sv_19", 18.070000 AS "sv_20", 19.080000 AS "sv_21", 125.099998 AS "sv_22", 980.900024 AS "sv_23", 0.139000 AS "sv_24", 0.595400 AS "sv_25", 0.630500 AS "sv_26", 0.239300 AS "sv_27", 0.466700 AS "sv_28", 0.099460 AS "sv_29"
     UNION ALL
     SELECT 1 AS "sv_idx", 13.730000 AS "sv_0", 22.610001 AS "sv_1", 93.599998 AS "sv_2", 578.299988 AS "sv_3", 0.113100 AS "sv_4", 0.229300 AS "sv_5", 0.212800 AS "sv_6", 0.080250 AS "sv_7", 0.206900 AS "sv_8", 0.076820 AS "sv_9", 0.212100 AS "sv_10", 1.169000 AS "sv_11", 2.061000 AS "sv_12", 19.209999 AS "sv_13", 0.006429 AS "sv_14", 0.059360 AS "sv_15", 0.055010 AS "sv_16", 0.016280 AS "sv_17", 0.019610 AS "sv_18", 0.008093 AS "sv_19", 15.030000 AS "sv_20", 32.009998 AS "sv_21", 108.800003 AS "sv_22", 697.700012 AS "sv_23", 0.165100 AS "sv_24", 0.772500 AS "sv_25", 0.694300 AS "sv_26", 0.220800 AS "sv_27", 0.359600 AS "sv_28", 0.143100 AS "sv_29"
     UNION ALL
     SELECT 2 AS "sv_idx", 14.450000 AS "sv_0", 20.219999 AS "sv_1", 94.489998 AS "sv_2", 642.700012 AS "sv_3", 0.098720 AS "sv_4", 0.120600 AS "sv_5", 0.118000 AS "sv_6", 0.059800 AS "sv_7", 0.195000 AS "sv_8", 0.064660 AS "sv_9", 0.209200 AS "sv_10", 0.650900 AS "sv_11", 1.446000 AS "sv_12", 19.420000 AS "sv_13", 0.004044 AS "sv_14", 0.015970 AS "sv_15", 0.020000 AS "sv_16", 0.007303 AS "sv_17", 0.015220 AS "sv_18", 0.001976 AS "sv_19", 18.330000 AS "sv_20", 30.120001 AS "sv_21", 117.900002 AS "sv_22", 1044.000000 AS "sv_23", 0.155200 AS "sv_24", 0.405600 AS "sv_25", 0.496700 AS "sv_26", 0.183800 AS "sv_27", 0.475300 AS "sv_28", 0.101300 AS "sv_29"
     UNION ALL
     SELECT 3 AS "sv_idx", 11.420000 AS "sv_0", 20.379999 AS "sv_1", 77.580002 AS "sv_2", 386.100006 AS "sv_3", 0.142500 AS "sv_4", 0.283900 AS "sv_5", 0.241400 AS "sv_6", 0.105200 AS "sv_7", 0.259700 AS "sv_8", 0.097440 AS "sv_9", 0.495600 AS "sv_10", 1.156000 AS "sv_11", 3.445000 AS "sv_12", 27.230000 AS "sv_13", 0.009110 AS "sv_14", 0.074580 AS "sv_15", 0.056610 AS "sv_16", 0.018670 AS "sv_17", 0.059630 AS "sv_18", 0.009208 AS "sv_19", 14.910000 AS "sv_20", 26.500000 AS "sv_21", 98.870003 AS "sv_22", 567.700012 AS "sv_23", 0.209800 AS "sv_24", 0.866300 AS "sv_25", 0.686900 AS "sv_26", 0.257500 AS "sv_27", 0.663800 AS "sv_28", 0.173000 AS "sv_29"
     UNION ALL
     SELECT 4 AS "sv_idx", 15.320000 AS "sv_0", 17.270000 AS "sv_1", 103.199997 AS "sv_2", 713.299988 AS "sv_3", 0.133500 AS "sv_4", 0.228400 AS "sv_5", 0.244800 AS "sv_6", 0.124200 AS "sv_7", 0.239800 AS "sv_8", 0.075960 AS "sv_9", 0.659200 AS "sv_10", 1.059000 AS "sv_11", 4.061000 AS "sv_12", 59.459999 AS "sv_13", 0.010150 AS "sv_14", 0.045880 AS "sv_15", 0.049830 AS "sv_16", 0.021270 AS "sv_17", 0.018840 AS "sv_18", 0.008660 AS "sv_19", 17.730000 AS "sv_20", 22.660000 AS "sv_21", 119.800003 AS "sv_22", 928.799988 AS "sv_23", 0.176500 AS "sv_24", 0.450300 AS "sv_25", 0.442900 AS "sv_26", 0.222900 AS "sv_27", 0.325800 AS "sv_28", 0.119100 AS "sv_29"
     UNION ALL
     SELECT 5 AS "sv_idx", 14.480000 AS "sv_0", 21.459999 AS "sv_1", 94.250000 AS "sv_2", 648.200012 AS "sv_3", 0.094440 AS "sv_4", 0.099470 AS "sv_5", 0.120400 AS "sv_6", 0.049380 AS "sv_7", 0.207500 AS "sv_8", 0.056360 AS "sv_9", 0.420400 AS "sv_10", 2.220000 AS "sv_11", 3.301000 AS "sv_12", 38.869999 AS "sv_13", 0.009369 AS "sv_14", 0.029830 AS "sv_15", 0.053710 AS "sv_16", 0.017610 AS "sv_17", 0.024180 AS "sv_18", 0.003249 AS "sv_19", 16.209999 AS "sv_20", 29.250000 AS "sv_21", 108.400002 AS "sv_22", 808.900024 AS "sv_23", 0.130600 AS "sv_24", 0.197600 AS "sv_25", 0.334900 AS "sv_26", 0.122500 AS "sv_27", 0.302000 AS "sv_28", 0.068460 AS "sv_29"
     UNION ALL
     SELECT 6 AS "sv_idx", 14.860000 AS "sv_0", 23.209999 AS "sv_1", 100.400002 AS "sv_2", 671.400024 AS "sv_3", 0.104400 AS "sv_4", 0.198000 AS "sv_5", 0.169700 AS "sv_6", 0.088780 AS "sv_7", 0.173700 AS "sv_8", 0.066720 AS "sv_9", 0.279600 AS "sv_10", 0.962200 AS "sv_11", 3.591000 AS "sv_12", 25.200001 AS "sv_13", 0.008081 AS "sv_14", 0.051220 AS "sv_15", 0.055510 AS "sv_16", 0.018830 AS "sv_17", 0.025450 AS "sv_18", 0.004312 AS "sv_19", 16.080000 AS "sv_20", 27.780001 AS "sv_21", 118.599998 AS "sv_22", 784.700012 AS "sv_23", 0.131600 AS "sv_24", 0.464800 AS "sv_25", 0.458900 AS "sv_26", 0.172700 AS "sv_27", 0.300000 AS "sv_28", 0.087010 AS "sv_29"
     UNION ALL
     SELECT 7 AS "sv_idx", 13.610000 AS "sv_0", 24.980000 AS "sv_1", 88.050003 AS "sv_2", 582.700012 AS "sv_3", 0.094880 AS "sv_4", 0.085110 AS "sv_5", 0.086250 AS "sv_6", 0.044890 AS "sv_7", 0.160900 AS "sv_8", 0.058710 AS "sv_9", 0.456500 AS "sv_10", 1.290000 AS "sv_11", 2.861000 AS "sv_12", 43.139999 AS "sv_13", 0.005872 AS "sv_14", 0.014880 AS "sv_15", 0.026470 AS "sv_16", 0.009921 AS "sv_17", 0.014650 AS "sv_18", 0.002355 AS "sv_19", 16.990000 AS "sv_20", 35.270000 AS "sv_21", 108.599998 AS "sv_22", 906.500000 AS "sv_23", 0.126500 AS "sv_24", 0.194300 AS "sv_25", 0.316900 AS "sv_26", 0.118400 AS "sv_27", 0.265100 AS "sv_28", 0.073970 AS "sv_29"
     UNION ALL
     SELECT 8 AS "sv_idx", 12.680000 AS "sv_0", 23.840000 AS "sv_1", 82.690002 AS "sv_2", 499.000000 AS "sv_3", 0.112200 AS "sv_4", 0.126200 AS "sv_5", 0.112800 AS "sv_6", 0.068730 AS "sv_7", 0.190500 AS "sv_8", 0.065900 AS "sv_9", 0.425500 AS "sv_10", 1.178000 AS "sv_11", 2.927000 AS "sv_12", 36.459999 AS "sv_13", 0.007781 AS "sv_14", 0.026480 AS "sv_15", 0.029730 AS "sv_16", 0.012900 AS "sv_17", 0.016350 AS "sv_18", 0.003601 AS "sv_19", 17.090000 AS "sv_20", 33.470001 AS "sv_21", 111.800003 AS "sv_22", 888.299988 AS "sv_23", 0.185100 AS "sv_24", 0.406100 AS "sv_25", 0.402400 AS "sv_26", 0.171600 AS "sv_27", 0.338300 AS "sv_28", 0.103100 AS "sv_29"
     UNION ALL
     SELECT 9 AS "sv_idx", 16.020000 AS "sv_0", 23.240000 AS "sv_1", 102.699997 AS "sv_2", 797.799988 AS "sv_3", 0.082060 AS "sv_4", 0.066690 AS "sv_5", 0.032990 AS "sv_6", 0.033230 AS "sv_7", 0.152800 AS "sv_8", 0.056970 AS "sv_9", 0.379500 AS "sv_10", 1.187000 AS "sv_11", 2.466000 AS "sv_12", 40.509998 AS "sv_13", 0.004029 AS "sv_14", 0.009269 AS "sv_15", 0.011010 AS "sv_16", 0.007591 AS "sv_17", 0.014600 AS "sv_18", 0.003042 AS "sv_19", 19.190001 AS "sv_20", 33.880001 AS "sv_21", 123.800003 AS "sv_22", 1150.000000 AS "sv_23", 0.118100 AS "sv_24", 0.155100 AS "sv_25", 0.145900 AS "sv_26", 0.099750 AS "sv_27", 0.294800 AS "sv_28", 0.084520 AS "sv_29"
     UNION ALL
     SELECT 10 AS "sv_idx", 13.770000 AS "sv_0", 22.290001 AS "sv_1", 90.629997 AS "sv_2", 588.900024 AS "sv_3", 0.120000 AS "sv_4", 0.126700 AS "sv_5", 0.138500 AS "sv_6", 0.065260 AS "sv_7", 0.183400 AS "sv_8", 0.068770 AS "sv_9", 0.619100 AS "sv_10", 2.112000 AS "sv_11", 4.906000 AS "sv_12", 49.700001 AS "sv_13", 0.013800 AS "sv_14", 0.033480 AS "sv_15", 0.046650 AS "sv_16", 0.020600 AS "sv_17", 0.026890 AS "sv_18", 0.004306 AS "sv_19", 16.389999 AS "sv_20", 34.009998 AS "sv_21", 111.599998 AS "sv_22", 806.900024 AS "sv_23", 0.173700 AS "sv_24", 0.312200 AS "sv_25", 0.380900 AS "sv_26", 0.167300 AS "sv_27", 0.308000 AS "sv_28", 0.093330 AS "sv_29"
     UNION ALL
     SELECT 11 AS "sv_idx", 15.100000 AS "sv_0", 22.020000 AS "sv_1", 97.260002 AS "sv_2", 712.799988 AS "sv_3", 0.090560 AS "sv_4", 0.070810 AS "sv_5", 0.052530 AS "sv_6", 0.033340 AS "sv_7", 0.161600 AS "sv_8", 0.056840 AS "sv_9", 0.310500 AS "sv_10", 0.833900 AS "sv_11", 2.097000 AS "sv_12", 29.910000 AS "sv_13", 0.004675 AS "sv_14", 0.010300 AS "sv_15", 0.016030 AS "sv_16", 0.009222 AS "sv_17", 0.010950 AS "sv_18", 0.001629 AS "sv_19", 18.100000 AS "sv_20", 31.690001 AS "sv_21", 117.699997 AS "sv_22", 1030.000000 AS "sv_23", 0.138900 AS "sv_24", 0.205700 AS "sv_25", 0.271200 AS "sv_26", 0.153000 AS "sv_27", 0.267500 AS "sv_28", 0.078730 AS "sv_29"
     UNION ALL
     SELECT 12 AS "sv_idx", 13.810000 AS "sv_0", 23.750000 AS "sv_1", 91.559998 AS "sv_2", 597.799988 AS "sv_3", 0.132300 AS "sv_4", 0.176800 AS "sv_5", 0.155800 AS "sv_6", 0.091760 AS "sv_7", 0.225100 AS "sv_8", 0.074210 AS "sv_9", 0.564800 AS "sv_10", 1.930000 AS "sv_11", 3.909000 AS "sv_12", 52.720001 AS "sv_13", 0.008824 AS "sv_14", 0.031080 AS "sv_15", 0.031120 AS "sv_16", 0.012910 AS "sv_17", 0.019980 AS "sv_18", 0.004506 AS "sv_19", 19.200001 AS "sv_20", 41.849998 AS "sv_21", 128.500000 AS "sv_22", 1153.000000 AS "sv_23", 0.222600 AS "sv_24", 0.520900 AS "sv_25", 0.464600 AS "sv_26", 0.201300 AS "sv_27", 0.443200 AS "sv_28", 0.108600 AS "sv_29"
     UNION ALL
     SELECT 13 AS "sv_idx", 13.800000 AS "sv_0", 15.790000 AS "sv_1", 90.430000 AS "sv_2", 584.099976 AS "sv_3", 0.100700 AS "sv_4", 0.128000 AS "sv_5", 0.077890 AS "sv_6", 0.050690 AS "sv_7", 0.166200 AS "sv_8", 0.065660 AS "sv_9", 0.278700 AS "sv_10", 0.620500 AS "sv_11", 1.957000 AS "sv_12", 23.350000 AS "sv_13", 0.004717 AS "sv_14", 0.020650 AS "sv_15", 0.017590 AS "sv_16", 0.009206 AS "sv_17", 0.012200 AS "sv_18", 0.003130 AS "sv_19", 16.570000 AS "sv_20", 20.860001 AS "sv_21", 110.300003 AS "sv_22", 812.400024 AS "sv_23", 0.141100 AS "sv_24", 0.354200 AS "sv_25", 0.277900 AS "sv_26", 0.138300 AS "sv_27", 0.258900 AS "sv_28", 0.103000 AS "sv_29"
     UNION ALL
     SELECT 14 AS "sv_idx", 23.510000 AS "sv_0", 24.270000 AS "sv_1", 155.100006 AS "sv_2", 1747.000000 AS "sv_3", 0.106900 AS "sv_4", 0.128300 AS "sv_5", 0.230800 AS "sv_6", 0.141000 AS "sv_7", 0.179700 AS "sv_8", 0.055060 AS "sv_9", 1.009000 AS "sv_10", 0.924500 AS "sv_11", 6.462000 AS "sv_12", 164.100006 AS "sv_13", 0.006292 AS "sv_14", 0.019710 AS "sv_15", 0.035820 AS "sv_16", 0.013010 AS "sv_17", 0.014790 AS "sv_18", 0.003118 AS "sv_19", 30.670000 AS "sv_20", 30.730000 AS "sv_21", 202.399994 AS "sv_22", 2906.000000 AS "sv_23", 0.151500 AS "sv_24", 0.267800 AS "sv_25", 0.481900 AS "sv_26", 0.208900 AS "sv_27", 0.259300 AS "sv_28", 0.077380 AS "sv_29"
     UNION ALL
     SELECT 15 AS "sv_idx", 14.900000 AS "sv_0", 22.530001 AS "sv_1", 102.099998 AS "sv_2", 685.000000 AS "sv_3", 0.099470 AS "sv_4", 0.222500 AS "sv_5", 0.273300 AS "sv_6", 0.097110 AS "sv_7", 0.204100 AS "sv_8", 0.068980 AS "sv_9", 0.253000 AS "sv_10", 0.874900 AS "sv_11", 3.466000 AS "sv_12", 24.190001 AS "sv_13", 0.006965 AS "sv_14", 0.062130 AS "sv_15", 0.079260 AS "sv_16", 0.022340 AS "sv_17", 0.014990 AS "sv_18", 0.005784 AS "sv_19", 16.350000 AS "sv_20", 27.570000 AS "sv_21", 125.400002 AS "sv_22", 832.700012 AS "sv_23", 0.141900 AS "sv_24", 0.709000 AS "sv_25", 0.901900 AS "sv_26", 0.247500 AS "sv_27", 0.286600 AS "sv_28", 0.115500 AS "sv_29"
     UNION ALL
     SELECT 16 AS "sv_idx", 13.980000 AS "sv_0", 19.620001 AS "sv_1", 91.120003 AS "sv_2", 599.500000 AS "sv_3", 0.106000 AS "sv_4", 0.113300 AS "sv_5", 0.112600 AS "sv_6", 0.064630 AS "sv_7", 0.166900 AS "sv_8", 0.065440 AS "sv_9", 0.220800 AS "sv_10", 0.953300 AS "sv_11", 1.602000 AS "sv_12", 18.850000 AS "sv_13", 0.005314 AS "sv_14", 0.017910 AS "sv_15", 0.021850 AS "sv_16", 0.009567 AS "sv_17", 0.012230 AS "sv_18", 0.002846 AS "sv_19", 17.040001 AS "sv_20", 30.799999 AS "sv_21", 113.900002 AS "sv_22", 869.299988 AS "sv_23", 0.161300 AS "sv_24", 0.356800 AS "sv_25", 0.406900 AS "sv_26", 0.182700 AS "sv_27", 0.317900 AS "sv_28", 0.105500 AS "sv_29"
     UNION ALL
     SELECT 17 AS "sv_idx", 13.870000 AS "sv_0", 20.700001 AS "sv_1", 89.769997 AS "sv_2", 584.799988 AS "sv_3", 0.095780 AS "sv_4", 0.101800 AS "sv_5", 0.036880 AS "sv_6", 0.023690 AS "sv_7", 0.162000 AS "sv_8", 0.066880 AS "sv_9", 0.272000 AS "sv_10", 1.047000 AS "sv_11", 2.076000 AS "sv_12", 23.120001 AS "sv_13", 0.006298 AS "sv_14", 0.021720 AS "sv_15", 0.026150 AS "sv_16", 0.009061 AS "sv_17", 0.014900 AS "sv_18", 0.003599 AS "sv_19", 15.050000 AS "sv_20", 24.750000 AS "sv_21", 99.169998 AS "sv_22", 688.599976 AS "sv_23", 0.126400 AS "sv_24", 0.203700 AS "sv_25", 0.137700 AS "sv_26", 0.068450 AS "sv_27", 0.224900 AS "sv_28", 0.084920 AS "sv_29"
     UNION ALL
     SELECT 18 AS "sv_idx", 14.620000 AS "sv_0", 24.020000 AS "sv_1", 94.570000 AS "sv_2", 662.700012 AS "sv_3", 0.089740 AS "sv_4", 0.086060 AS "sv_5", 0.031020 AS "sv_6", 0.029570 AS "sv_7", 0.168500 AS "sv_8", 0.058660 AS "sv_9", 0.372100 AS "sv_10", 1.111000 AS "sv_11", 2.279000 AS "sv_12", 33.759998 AS "sv_13", 0.004868 AS "sv_14", 0.018180 AS "sv_15", 0.011210 AS "sv_16", 0.008606 AS "sv_17", 0.020850 AS "sv_18", 0.002893 AS "sv_19", 16.110001 AS "sv_20", 29.110001 AS "sv_21", 102.900002 AS "sv_22", 803.700012 AS "sv_23", 0.111500 AS "sv_24", 0.176600 AS "sv_25", 0.091890 AS "sv_26", 0.069460 AS "sv_27", 0.252200 AS "sv_28", 0.072460 AS "sv_29"
     UNION ALL
     SELECT 19 AS "sv_idx", 12.100000 AS "sv_0", 17.719999 AS "sv_1", 78.070000 AS "sv_2", 446.200012 AS "sv_3", 0.102900 AS "sv_4", 0.097580 AS "sv_5", 0.047830 AS "sv_6", 0.033260 AS "sv_7", 0.193700 AS "sv_8", 0.061610 AS "sv_9", 0.284100 AS "sv_10", 1.652000 AS "sv_11", 1.869000 AS "sv_12", 22.219999 AS "sv_13", 0.008146 AS "sv_14", 0.016310 AS "sv_15", 0.018430 AS "sv_16", 0.007513 AS "sv_17", 0.020150 AS "sv_18", 0.001798 AS "sv_19", 13.560000 AS "sv_20", 25.799999 AS "sv_21", 88.330002 AS "sv_22", 559.500000 AS "sv_23", 0.143200 AS "sv_24", 0.177300 AS "sv_25", 0.160300 AS "sv_26", 0.062660 AS "sv_27", 0.304900 AS "sv_28", 0.070810 AS "sv_29"
     UNION ALL
     SELECT 20 AS "sv_idx", 14.340000 AS "sv_0", 13.470000 AS "sv_1", 92.510002 AS "sv_2", 641.200012 AS "sv_3", 0.099060 AS "sv_4", 0.076240 AS "sv_5", 0.057240 AS "sv_6", 0.046030 AS "sv_7", 0.207500 AS "sv_8", 0.054480 AS "sv_9", 0.522000 AS "sv_10", 0.812100 AS "sv_11", 3.763000 AS "sv_12", 48.290001 AS "sv_13", 0.007089 AS "sv_14", 0.014280 AS "sv_15", 0.023600 AS "sv_16", 0.012860 AS "sv_17", 0.022660 AS "sv_18", 0.001463 AS "sv_19", 16.770000 AS "sv_20", 16.900000 AS "sv_21", 110.400002 AS "sv_22", 873.200012 AS "sv_23", 0.129700 AS "sv_24", 0.152500 AS "sv_25", 0.163200 AS "sv_26", 0.108700 AS "sv_27", 0.306200 AS "sv_28", 0.060720 AS "sv_29"
     UNION ALL
     SELECT 21 AS "sv_idx", 13.850000 AS "sv_0", 19.600000 AS "sv_1", 88.680000 AS "sv_2", 592.599976 AS "sv_3", 0.086840 AS "sv_4", 0.063300 AS "sv_5", 0.013420 AS "sv_6", 0.022930 AS "sv_7", 0.155500 AS "sv_8", 0.056730 AS "sv_9", 0.341900 AS "sv_10", 1.678000 AS "sv_11", 2.331000 AS "sv_12", 29.629999 AS "sv_13", 0.005836 AS "sv_14", 0.010950 AS "sv_15", 0.005812 AS "sv_16", 0.007039 AS "sv_17", 0.020140 AS "sv_18", 0.002326 AS "sv_19", 15.630000 AS "sv_20", 28.010000 AS "sv_21", 100.900002 AS "sv_22", 749.099976 AS "sv_23", 0.111800 AS "sv_24", 0.114100 AS "sv_25", 0.047530 AS "sv_26", 0.058900 AS "sv_27", 0.251300 AS "sv_28", 0.069110 AS "sv_29"
     UNION ALL
     SELECT 22 AS "sv_idx", 13.850000 AS "sv_0", 15.180000 AS "sv_1", 88.989998 AS "sv_2", 587.400024 AS "sv_3", 0.095160 AS "sv_4", 0.076880 AS "sv_5", 0.044790 AS "sv_6", 0.037110 AS "sv_7", 0.211000 AS "sv_8", 0.058530 AS "sv_9", 0.247900 AS "sv_10", 0.919500 AS "sv_11", 1.830000 AS "sv_12", 19.410000 AS "sv_13", 0.004235 AS "sv_14", 0.015410 AS "sv_15", 0.014570 AS "sv_16", 0.010430 AS "sv_17", 0.015280 AS "sv_18", 0.001593 AS "sv_19", 14.980000 AS "sv_20", 21.740000 AS "sv_21", 98.370003 AS "sv_22", 670.000000 AS "sv_23", 0.118500 AS "sv_24", 0.172400 AS "sv_25", 0.145600 AS "sv_26", 0.099930 AS "sv_27", 0.295500 AS "sv_28", 0.069120 AS "sv_29"
     UNION ALL
     SELECT 23 AS "sv_idx", 13.000000 AS "sv_0", 20.780001 AS "sv_1", 83.510002 AS "sv_2", 519.400024 AS "sv_3", 0.113500 AS "sv_4", 0.075890 AS "sv_5", 0.031360 AS "sv_6", 0.026450 AS "sv_7", 0.254000 AS "sv_8", 0.060870 AS "sv_9", 0.420200 AS "sv_10", 1.322000 AS "sv_11", 2.873000 AS "sv_12", 34.779999 AS "sv_13", 0.007017 AS "sv_14", 0.011420 AS "sv_15", 0.019490 AS "sv_16", 0.011530 AS "sv_17", 0.029510 AS "sv_18", 0.001533 AS "sv_19", 14.160000 AS "sv_20", 24.110001 AS "sv_21", 90.820000 AS "sv_22", 616.700012 AS "sv_23", 0.129700 AS "sv_24", 0.110500 AS "sv_25", 0.081120 AS "sv_26", 0.062960 AS "sv_27", 0.319600 AS "sv_28", 0.064350 AS "sv_29"
     UNION ALL
     SELECT 24 AS "sv_idx", 12.540000 AS "sv_0", 18.070000 AS "sv_1", 79.419998 AS "sv_2", 491.899994 AS "sv_3", 0.074360 AS "sv_4", 0.026500 AS "sv_5", 0.001194 AS "sv_6", 0.005449 AS "sv_7", 0.152800 AS "sv_8", 0.051850 AS "sv_9", 0.351100 AS "sv_10", 0.952700 AS "sv_11", 2.329000 AS "sv_12", 28.299999 AS "sv_13", 0.005783 AS "sv_14", 0.004693 AS "sv_15", 0.000793 AS "sv_16", 0.003617 AS "sv_17", 0.020430 AS "sv_18", 0.001058 AS "sv_19", 13.720000 AS "sv_20", 20.980000 AS "sv_21", 86.820000 AS "sv_22", 585.700012 AS "sv_23", 0.092930 AS "sv_24", 0.043270 AS "sv_25", 0.003581 AS "sv_26", 0.016350 AS "sv_27", 0.223300 AS "sv_28", 0.055210 AS "sv_29"
     UNION ALL
     SELECT 25 AS "sv_idx", 12.860000 AS "sv_0", 18.000000 AS "sv_1", 83.190002 AS "sv_2", 506.299988 AS "sv_3", 0.099340 AS "sv_4", 0.095460 AS "sv_5", 0.038890 AS "sv_6", 0.023150 AS "sv_7", 0.171800 AS "sv_8", 0.059970 AS "sv_9", 0.265500 AS "sv_10", 1.095000 AS "sv_11", 1.778000 AS "sv_12", 20.350000 AS "sv_13", 0.005293 AS "sv_14", 0.016610 AS "sv_15", 0.020710 AS "sv_16", 0.008179 AS "sv_17", 0.017480 AS "sv_18", 0.002848 AS "sv_19", 14.240000 AS "sv_20", 24.820000 AS "sv_21", 91.879997 AS "sv_22", 622.099976 AS "sv_23", 0.128900 AS "sv_24", 0.214100 AS "sv_25", 0.173100 AS "sv_26", 0.079260 AS "sv_27", 0.277900 AS "sv_28", 0.079180 AS "sv_29"
     UNION ALL
     SELECT 26 AS "sv_idx", 14.760000 AS "sv_0", 14.740000 AS "sv_1", 94.870003 AS "sv_2", 668.700012 AS "sv_3", 0.088750 AS "sv_4", 0.077800 AS "sv_5", 0.046080 AS "sv_6", 0.035280 AS "sv_7", 0.152100 AS "sv_8", 0.059120 AS "sv_9", 0.342800 AS "sv_10", 0.398100 AS "sv_11", 2.537000 AS "sv_12", 29.059999 AS "sv_13", 0.004732 AS "sv_14", 0.015060 AS "sv_15", 0.018550 AS "sv_16", 0.010670 AS "sv_17", 0.021630 AS "sv_18", 0.002783 AS "sv_19", 17.270000 AS "sv_20", 17.930000 AS "sv_21", 114.199997 AS "sv_22", 880.799988 AS "sv_23", 0.122000 AS "sv_24", 0.200900 AS "sv_25", 0.215100 AS "sv_26", 0.125100 AS "sv_27", 0.310900 AS "sv_28", 0.081870 AS "sv_29"
     UNION ALL
     SELECT 27 AS "sv_idx", 16.299999 AS "sv_0", 15.700000 AS "sv_1", 104.699997 AS "sv_2", 819.799988 AS "sv_3", 0.094270 AS "sv_4", 0.067120 AS "sv_5", 0.055260 AS "sv_6", 0.045630 AS "sv_7", 0.171100 AS "sv_8", 0.056570 AS "sv_9", 0.206700 AS "sv_10", 0.470600 AS "sv_11", 1.146000 AS "sv_12", 20.670000 AS "sv_13", 0.007394 AS "sv_14", 0.012030 AS "sv_15", 0.024700 AS "sv_16", 0.014310 AS "sv_17", 0.013440 AS "sv_18", 0.002569 AS "sv_19", 17.320000 AS "sv_20", 17.760000 AS "sv_21", 109.800003 AS "sv_22", 928.200012 AS "sv_23", 0.135400 AS "sv_24", 0.136100 AS "sv_25", 0.194700 AS "sv_26", 0.135700 AS "sv_27", 0.230000 AS "sv_28", 0.072300 AS "sv_29"
     UNION ALL
     SELECT 28 AS "sv_idx", 16.840000 AS "sv_0", 19.459999 AS "sv_1", 108.400002 AS "sv_2", 880.200012 AS "sv_3", 0.074450 AS "sv_4", 0.072230 AS "sv_5", 0.051500 AS "sv_6", 0.027710 AS "sv_7", 0.184400 AS "sv_8", 0.052680 AS "sv_9", 0.478900 AS "sv_10", 2.060000 AS "sv_11", 3.479000 AS "sv_12", 46.610001 AS "sv_13", 0.003443 AS "sv_14", 0.026610 AS "sv_15", 0.030560 AS "sv_16", 0.011100 AS "sv_17", 0.015200 AS "sv_18", 0.001519 AS "sv_19", 18.219999 AS "sv_20", 28.070000 AS "sv_21", 120.300003 AS "sv_22", 1032.000000 AS "sv_23", 0.087740 AS "sv_24", 0.171000 AS "sv_25", 0.188200 AS "sv_26", 0.084360 AS "sv_27", 0.252700 AS "sv_28", 0.059720 AS "sv_29"
     UNION ALL
     SELECT 29 AS "sv_idx", 13.900000 AS "sv_0", 19.240000 AS "sv_1", 88.730003 AS "sv_2", 602.900024 AS "sv_3", 0.079910 AS "sv_4", 0.053260 AS "sv_5", 0.029950 AS "sv_6", 0.020700 AS "sv_7", 0.157900 AS "sv_8", 0.055940 AS "sv_9", 0.331600 AS "sv_10", 0.926400 AS "sv_11", 2.056000 AS "sv_12", 28.410000 AS "sv_13", 0.003704 AS "sv_14", 0.010820 AS "sv_15", 0.015300 AS "sv_16", 0.006275 AS "sv_17", 0.010620 AS "sv_18", 0.002217 AS "sv_19", 16.410000 AS "sv_20", 26.420000 AS "sv_21", 104.400002 AS "sv_22", 830.500000 AS "sv_23", 0.106400 AS "sv_24", 0.141500 AS "sv_25", 0.167300 AS "sv_26", 0.081500 AS "sv_27", 0.235600 AS "sv_28", 0.076030 AS "sv_29"
     UNION ALL
     SELECT 30 AS "sv_idx", 11.620000 AS "sv_0", 18.180000 AS "sv_1", 76.379997 AS "sv_2", 408.799988 AS "sv_3", 0.117500 AS "sv_4", 0.148300 AS "sv_5", 0.102000 AS "sv_6", 0.055640 AS "sv_7", 0.195700 AS "sv_8", 0.072550 AS "sv_9", 0.410100 AS "sv_10", 1.740000 AS "sv_11", 3.027000 AS "sv_12", 27.850000 AS "sv_13", 0.014590 AS "sv_14", 0.032060 AS "sv_15", 0.049610 AS "sv_16", 0.018410 AS "sv_17", 0.018070 AS "sv_18", 0.005217 AS "sv_19", 13.360000 AS "sv_20", 25.400000 AS "sv_21", 88.139999 AS "sv_22", 528.099976 AS "sv_23", 0.178000 AS "sv_24", 0.287800 AS "sv_25", 0.318600 AS "sv_26", 0.141600 AS "sv_27", 0.266000 AS "sv_28", 0.092700 AS "sv_29"
     UNION ALL
     SELECT 31 AS "sv_idx", 12.270000 AS "sv_0", 29.969999 AS "sv_1", 77.419998 AS "sv_2", 465.399994 AS "sv_3", 0.076990 AS "sv_4", 0.033980 AS "sv_5", 0.000000 AS "sv_6", 0.000000 AS "sv_7", 0.170100 AS "sv_8", 0.059600 AS "sv_9", 0.445500 AS "sv_10", 3.647000 AS "sv_11", 2.884000 AS "sv_12", 35.130001 AS "sv_13", 0.007339 AS "sv_14", 0.008243 AS "sv_15", 0.000000 AS "sv_16", 0.000000 AS "sv_17", 0.031410 AS "sv_18", 0.003136 AS "sv_19", 13.450000 AS "sv_20", 38.049999 AS "sv_21", 85.080002 AS "sv_22", 558.900024 AS "sv_23", 0.094220 AS "sv_24", 0.052130 AS "sv_25", 0.000000 AS "sv_26", 0.000000 AS "sv_27", 0.240900 AS "sv_28", 0.067430 AS "sv_29"
     UNION ALL
     SELECT 32 AS "sv_idx", 12.400000 AS "sv_0", 17.680000 AS "sv_1", 81.470001 AS "sv_2", 467.799988 AS "sv_3", 0.105400 AS "sv_4", 0.131600 AS "sv_5", 0.077410 AS "sv_6", 0.027990 AS "sv_7", 0.181100 AS "sv_8", 0.071020 AS "sv_9", 0.176700 AS "sv_10", 1.460000 AS "sv_11", 2.204000 AS "sv_12", 15.430000 AS "sv_13", 0.010000 AS "sv_14", 0.032950 AS "sv_15", 0.048610 AS "sv_16", 0.011670 AS "sv_17", 0.021870 AS "sv_18", 0.006005 AS "sv_19", 12.880000 AS "sv_20", 22.910000 AS "sv_21", 89.610001 AS "sv_22", 515.799988 AS "sv_23", 0.145000 AS "sv_24", 0.262900 AS "sv_25", 0.240300 AS "sv_26", 0.073700 AS "sv_27", 0.255600 AS "sv_28", 0.093590 AS "sv_29"
   ) AS "Values"
 ),
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
           EXP( LEAST( GREATEST( CAST(-32.0 AS FLOAT), -0.000001 * (power(model_input."X_0" - "SV_data"."sv_0", 2) + power(model_input."X_1" - "SV_data"."sv_1", 2) + power(model_input."X_2" - "SV_data"."sv_2", 2) + power(model_input."X_3" - "SV_data"."sv_3", 2) + power(model_input."X_4" - "SV_data"."sv_4", 2) + power(model_input."X_5" - "SV_data"."sv_5", 2) + power(model_input."X_6" - "SV_data"."sv_6", 2) + power(model_input."X_7" - "SV_data"."sv_7", 2) + power(model_input."X_8" - "SV_data"."sv_8", 2) + power(model_input."X_9" - "SV_data"."sv_9", 2) + power(model_input."X_10" - "SV_data"."sv_10", 2) + power(model_input."X_11" - "SV_data"."sv_11", 2) + power(model_input."X_12" - "SV_data"."sv_12", 2) + power(model_input."X_13" - "SV_data"."sv_13", 2) + power(model_input."X_14" - "SV_data"."sv_14", 2) + power(model_input."X_15" - "SV_data"."sv_15", 2) + power(model_input."X_16" - "SV_data"."sv_16", 2) + power(model_input."X_17" - "SV_data"."sv_17", 2) + power(model_input."X_18" - "SV_data"."sv_18", 2) + power(model_input."X_19" - "SV_data"."sv_19", 2) + power(model_input."X_20" - "SV_data"."sv_20", 2) + power(model_input."X_21" - "SV_data"."sv_21", 2) + power(model_input."X_22" - "SV_data"."sv_22", 2) + power(model_input."X_23" - "SV_data"."sv_23", 2) + power(model_input."X_24" - "SV_data"."sv_24", 2) + power(model_input."X_25" - "SV_data"."sv_25", 2) + power(model_input."X_26" - "SV_data"."sv_26", 2) + power(model_input."X_27" - "SV_data"."sv_27", 2) + power(model_input."X_28" - "SV_data"."sv_28", 2) + power(model_input."X_29" - "SV_data"."sv_29", 2)) ), CAST(32.0 AS FLOAT) ) )  AS "kernel_value" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index", full_join_data_sv."sv_idx"
    ) AS kvt
 ),
"ClassProblems" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."c_1" AS "c_1", t."c_2" AS "c_2", t."sv_idx" AS "sv_idx", t."Coeff" AS "Coeff"
   FROM
   (
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 0 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 1 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 2 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 3 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 4 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 5 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 6 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 7 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 8 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 9 AS "sv_idx", 0.348048 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 10 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 11 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 12 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 13 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 14 AS "sv_idx", 0.533339 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 15 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 16 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 17 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 18 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 19 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 20 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 21 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 22 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 23 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 24 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 25 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 26 AS "sv_idx", 0.348048 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 27 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 28 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 29 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 30 AS "sv_idx", 1.000000 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 31 AS "sv_idx", 0.533339 AS "Coeff"
     UNION ALL
     SELECT 0 AS "prob_idx", 0 AS "c_1", 1 AS "c_2", 32 AS "sv_idx", 1.000000 AS "Coeff"
   ) AS t
  ),
"SV_Rho" AS
 ( SELECT
    t."prob_idx" AS "prob_idx", t."rho" AS "rho", t."probA" AS "probA", t."probB" AS "probB" 
   FROM
   (
     SELECT 0 AS "prob_idx", -0.283617 AS "rho", -2.167978 AS "probA", -0.240831 AS "probB"
   ) AS t
  ),
"Competition" AS
( SELECT 
   t1."index" AS "index",
   t2."prob_idx" AS "prob_idx",
   t2."c_1" AS "c_1",
   t2."c_2" AS "c_2",
   ANY_VALUE(-t3."rho") + SUM( t2."Coeff" * t1."kernel_value" ) AS "prob_score"
  FROM 
    "Kernel_RBF" AS t1
    LEFT OUTER JOIN
    "ClassProblems" AS t2
    ON (t1."sv_idx" = t2."sv_idx")
    LEFT OUTER JOIN
    "SV_Rho" AS t3
    ON (t3."prob_idx" = t2."prob_idx")
    GROUP BY t1."index", t2."prob_idx", t2."c_1", t2."c_2"
),
"model_scores_cte" AS
( SELECT 
   t1."index" AS "index",
   SUM( CASE WHEN (t1."c_1" == 0 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 0 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   SUM( CASE WHEN (t1."c_1" == 1 and (t1."prob_score" > 0)) THEN 1 ELSE 0 END ) + SUM( CASE WHEN (t1."c_2" == 1 and (t1."prob_score" <= 0)) THEN 1 ELSE 0 END ) AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM 
    "Competition" AS t1
    GROUP BY t1."index"
),
orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   GREATEST( t."Score_0", t."Score_1" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    GREATEST( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1" ) AS "Max_Score"
  FROM
     "orig_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    t."Max_Proba" AS "Max_Proba",
    t."Max_Score" AS "Max_Score"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
( SELECT t."index" as "index",
     t."Proba_0" AS "Proba_0",
     t."Score_0" AS "Score_0",
     t."Proba_1" AS "Proba_1",
     t."Score_1" AS "Score_1",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1" ) AS argmax_class_idx
   FROM
     "arg_max_cte_with_max_proba_idx" AS t
)
SELECT arg_max_cte."index" AS "index",
  arg_max_cte."Score_0" AS "Score_0",
  arg_max_cte."Proba_0" AS "Proba_0",
  CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN LN( arg_max_cte."Proba_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
  arg_max_cte."Score_1" AS "Score_1",
  arg_max_cte."Proba_1" AS "Proba_1",
  CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN LN( arg_max_cte."Proba_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte