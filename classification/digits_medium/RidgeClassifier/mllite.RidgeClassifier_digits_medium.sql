WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -87.806221 + 0.000000 * X_0 + -0.546449 * X_1 + 1.440529 * X_2 + -1.872203 * X_3 + 1.763045 * X_4 + -0.179402 * X_5 + 0.703154 * X_6 + -3.765399 * X_7 + 210.394974 * X_8 + -2.904976 * X_9 + 3.873835 * X_10 + 0.843555 * X_11 + -0.240771 * X_12 + -2.475919 * X_13 + 0.403897 * X_14 + -4.783888 * X_15 + 0.000000 * X_16 + -3.091937 * X_17 + -12.406755 * X_18 + -0.006557 * X_19 + 0.661673 * X_20 + -0.783704 * X_21 + -0.129135 * X_22 + -27.252594 * X_23 + 142.091614 * X_24 + -10.045660 * X_25 + 20.416174 * X_26 + -4.865044 * X_27 + 3.413050 * X_28 + -0.197302 * X_29 + 0.250859 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -2.111059 * X_33 + -8.025738 * X_34 + 3.959944 * X_35 + -3.597184 * X_36 + 3.118628 * X_37 + -0.404765 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 1.983188 * X_41 + 5.055405 * X_42 + 0.104497 * X_43 + 3.198810 * X_44 + -8.381689 * X_45 + -3.447044 * X_46 + 23.182833 * X_47 + -12.705712 * X_48 + 5.974145 * X_49 + -2.403768 * X_50 + 0.615999 * X_51 + -3.709065 * X_52 + 14.259531 * X_53 + 0.640965 * X_54 + 10.316894 * X_55 + -36.855717 * X_56 + 6.224093 * X_57 + -1.148685 * X_58 + 4.683264 * X_59 + -0.537089 * X_60 + -4.260852 * X_61 + -2.073262 * X_62 + -5.733956 * X_63 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -49.446644 + 0.000000 * X_0 + 8.002492 * X_1 + -1.567608 * X_2 + -0.058475 * X_3 + 0.554817 * X_4 + -0.206609 * X_5 + 0.853954 * X_6 + -2.700867 * X_7 + 90.804703 * X_8 + -10.174161 * X_9 + 3.593164 * X_10 + -0.193848 * X_11 + -0.131344 * X_12 + -1.229017 * X_13 + -0.645964 * X_14 + 1.300293 * X_15 + 0.000000 * X_16 + 2.481654 * X_17 + -5.508163 * X_18 + 0.378773 * X_19 + 0.295244 * X_20 + -0.437626 * X_21 + -0.173413 * X_22 + -12.924611 * X_23 + 32.825352 * X_24 + -4.699439 * X_25 + 7.424623 * X_26 + -1.050348 * X_27 + 0.195889 * X_28 + -0.270655 * X_29 + -0.180483 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -0.629273 * X_33 + -2.580671 * X_34 + 1.114932 * X_35 + -0.142343 * X_36 + 1.303021 * X_37 + 0.165635 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 1.386504 * X_41 + 0.915195 * X_42 + -0.035997 * X_43 + 0.606704 * X_44 + -2.662324 * X_45 + 0.379186 * X_46 + -21.174339 * X_47 + 2.215747 * X_48 + 1.376894 * X_49 + -0.852272 * X_50 + 0.277207 * X_51 + -0.611907 * X_52 + 4.328734 * X_53 + -4.282883 * X_54 + 12.677853 * X_55 + 7.938146 * X_56 + -0.169349 * X_57 + 1.639309 * X_58 + 2.107996 * X_59 + -0.423344 * X_60 + 0.889171 * X_61 + 2.044876 * X_62 + -9.674739 * X_63 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   91.909332 + 0.000000 * X_0 + 2.625620 * X_1 + 0.370681 * X_2 + 1.087975 * X_3 + -1.472381 * X_4 + -0.042627 * X_5 + 0.403453 * X_6 + -0.417721 * X_7 + -356.460205 * X_8 + 14.795719 * X_9 + -6.465413 * X_10 + 0.848871 * X_11 + -1.578945 * X_12 + 4.242263 * X_13 + -0.414698 * X_14 + 12.839314 * X_15 + 0.000000 * X_16 + -3.800611 * X_17 + 17.851669 * X_18 + -0.858292 * X_19 + -1.926532 * X_20 + 0.634299 * X_21 + -0.248467 * X_22 + 50.758961 * X_23 + -177.820435 * X_24 + 17.592583 * X_25 + -29.049610 * X_26 + 8.260113 * X_27 + -3.101695 * X_28 + -0.391324 * X_29 + -2.373400 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 0.879097 * X_33 + 13.150111 * X_34 + -6.524035 * X_35 + 4.013347 * X_36 + -1.638171 * X_37 + 0.782414 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 1.516918 * X_41 + -7.703872 * X_42 + 1.625952 * X_43 + 2.031765 * X_44 + 0.377490 * X_45 + 10.642589 * X_46 + -58.781158 * X_47 + 24.572939 * X_48 + -10.479496 * X_49 + 1.425370 * X_50 + -1.282495 * X_51 + -2.787007 * X_52 + 3.717488 * X_53 + -11.880969 * X_54 + -5.101152 * X_55 + 62.302254 * X_56 + -5.957394 * X_57 + -4.230248 * X_58 + -4.879518 * X_59 + 1.833642 * X_60 + -9.533207 * X_61 + 26.583775 * X_62 + -56.273811 * X_63 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   168.327194 + 0.000000 * X_0 + 12.642943 * X_1 + 4.401004 * X_2 + -2.238927 * X_3 + 0.236454 * X_4 + -2.571805 * X_5 + 2.833467 * X_6 + -4.504818 * X_7 + -367.550323 * X_8 + 12.243106 * X_9 + -10.053086 * X_10 + 1.034774 * X_11 + -1.748504 * X_12 + 4.144776 * X_13 + -0.107554 * X_14 + 16.796532 * X_15 + 0.000000 * X_16 + 1.126354 * X_17 + 20.323896 * X_18 + -2.950847 * X_19 + -3.208864 * X_20 + -2.415762 * X_21 + 2.308794 * X_22 + 46.147217 * X_23 + -279.440826 * X_24 + 19.005138 * X_25 + -34.200596 * X_26 + 7.656297 * X_27 + -0.514268 * X_28 + -0.192805 * X_29 + -3.319482 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -0.385061 * X_33 + 15.325189 * X_34 + -7.033431 * X_35 + 1.308546 * X_36 + -0.177430 * X_37 + -0.319663 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 2.158333 * X_41 + -6.698771 * X_42 + 3.935186 * X_43 + 4.001249 * X_44 + -5.432713 * X_45 + 5.084865 * X_46 + 42.410095 * X_47 + 2.603250 * X_48 + -3.881937 * X_49 + -0.297036 * X_50 + -0.852780 * X_51 + -3.435706 * X_52 + 11.388740 * X_53 + -1.310434 * X_54 + -10.432526 * X_55 + 9.128072 * X_56 + -18.556278 * X_57 + -4.796556 * X_58 + -5.309567 * X_59 + 0.394073 * X_60 + -5.932565 * X_61 + -2.605572 * X_62 + 0.070866 * X_63 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3",
   -68.733673 + 0.000000 * X_0 + -7.067880 * X_1 + -3.285182 * X_2 + 1.574588 * X_3 + -0.611949 * X_4 + 1.109299 * X_5 + -2.213134 * X_6 + 3.607099 * X_7 + 206.087006 * X_8 + -10.147526 * X_9 + 5.678275 * X_10 + -1.267465 * X_11 + 1.348849 * X_12 + -2.726605 * X_13 + 0.391940 * X_14 + -9.396336 * X_15 + 0.000000 * X_16 + 2.112845 * X_17 + -11.445745 * X_18 + 1.912090 * X_19 + 1.989345 * X_20 + 1.240899 * X_21 + -1.164699 * X_22 + -30.681723 * X_23 + 121.488747 * X_24 + -9.540257 * X_25 + 18.316074 * X_26 + -4.881622 * X_27 + -0.018994 * X_28 + 0.412740 * X_29 + 2.278380 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -0.386645 * X_33 + -8.606030 * X_34 + 3.945879 * X_35 + -0.478151 * X_36 + -0.844464 * X_37 + -0.371450 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -2.993469 * X_41 + 3.963935 * X_42 + -2.539163 * X_43 + -4.564883 * X_44 + 7.015332 * X_45 + -3.710635 * X_46 + -17.844007 * X_47 + -4.495533 * X_48 + 3.157053 * X_49 + 0.991038 * X_50 + 0.978372 * X_51 + 4.551984 * X_52 + -14.854895 * X_53 + 3.066619 * X_54 + 8.340963 * X_55 + -12.222039 * X_56 + 8.052513 * X_57 + 5.038137 * X_58 + 2.160571 * X_59 + -0.524131 * X_60 + 9.911542 * X_61 + -10.259604 * X_62 + 29.961754 * X_63 AS "Score_4", CAST(NULL AS FLOAT) AS "Proba_4", CAST(NULL AS FLOAT) AS "LogProba_4",
   -72.465187 + 0.000000 * X_0 + -33.008995 * X_1 + 2.588887 * X_2 + 0.079505 * X_3 + -0.207067 * X_4 + 1.118314 * X_5 + -3.247744 * X_6 + 6.080814 * X_7 + 138.137207 * X_8 + 18.977991 * X_9 + -0.200685 * X_10 + 2.249838 * X_11 + -0.333635 * X_12 + -2.065653 * X_13 + 2.592734 * X_14 + -18.664915 * X_15 + 0.000000 * X_16 + -10.131787 * X_17 + -9.621214 * X_18 + 0.886764 * X_19 + 1.353711 * X_20 + 1.374127 * X_21 + -2.209684 * X_22 + -13.909049 * X_23 + 238.172348 * X_24 + -8.210949 * X_25 + 19.397007 * X_26 + -5.985395 * X_27 + 2.239520 * X_28 + 1.083526 * X_29 + 3.118468 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -1.416216 * X_33 + -8.948363 * X_34 + 3.767925 * X_35 + -1.202870 * X_36 + -1.392813 * X_37 + 0.356653 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -2.549393 * X_41 + 5.689363 * X_42 + -2.919717 * X_43 + -1.570347 * X_44 + 3.853241 * X_45 + -2.063677 * X_46 + -18.814493 * X_47 + -13.065801 * X_48 + 1.133598 * X_49 + 0.861757 * X_50 + 1.204318 * X_51 + 0.860432 * X_52 + -7.225425 * X_53 + 0.778212 * X_54 + 15.681780 * X_55 + -37.911861 * X_56 + 19.226965 * X_57 + -1.926415 * X_58 + 3.616512 * X_59 + -1.574143 * X_60 + 5.974698 * X_61 + -9.261403 * X_62 + 18.895411 * X_63 AS "Score_5", CAST(NULL AS FLOAT) AS "Proba_5", CAST(NULL AS FLOAT) AS "LogProba_5",
   -110.782784 + 0.000000 * X_0 + 6.394371 * X_1 + -1.936957 * X_2 + -0.222507 * X_3 + 1.346899 * X_4 + 1.328838 * X_5 + 0.728262 * X_6 + -1.486585 * X_7 + 228.631836 * X_8 + -13.047225 * X_9 + 6.342348 * X_10 + -0.913734 * X_11 + 1.432863 * X_12 + -1.670940 * X_13 + -1.220365 * X_14 + -4.516413 * X_15 + 0.000000 * X_16 + 1.047510 * X_17 + -11.194582 * X_18 + 0.723492 * X_19 + 1.552319 * X_20 + 0.309397 * X_21 + -0.010435 * X_22 + -24.886728 * X_23 + 139.758286 * X_24 + -12.582506 * X_25 + 18.239511 * X_26 + -2.945692 * X_27 + 0.701343 * X_28 + -0.366367 * X_29 + 0.911442 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 1.981730 * X_33 + -7.896329 * X_34 + 3.898020 * X_35 + -1.711108 * X_36 + 1.822224 * X_37 + 1.207803 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 1.481137 * X_41 + 3.301471 * X_42 + -0.241560 * X_43 + 0.684221 * X_44 + -3.828797 * X_45 + -7.697337 * X_46 + 35.853516 * X_47 + -4.993019 * X_48 + 5.315067 * X_49 + -1.907836 * X_50 + -0.986569 * X_51 + -0.755920 * X_52 + 7.659731 * X_53 + 8.246139 * X_54 + -18.667210 * X_55 + -13.712215 * X_56 + 5.807115 * X_57 + 0.859964 * X_58 + 3.638322 * X_59 + 0.090542 * X_60 + -7.249748 * X_61 + 9.937422 * X_62 + -23.559935 * X_63 AS "Score_6", CAST(NULL AS FLOAT) AS "Proba_6", CAST(NULL AS FLOAT) AS "LogProba_6",
   97.479515 + 0.000000 * X_0 + 5.395800 * X_1 + -2.697375 * X_2 + 2.505042 * X_3 + -2.197716 * X_4 + 0.153903 * X_5 + -1.435530 * X_6 + 4.557963 * X_7 + -127.616684 * X_8 + -8.646882 * X_9 + -1.263814 * X_10 + -2.485156 * X_11 + 1.353222 * X_12 + 1.176029 * X_13 + -0.475117 * X_14 + 4.137067 * X_15 + 0.000000 * X_16 + 8.241490 * X_17 + 8.778732 * X_18 + 0.682385 * X_19 + -0.108516 * X_20 + 0.825546 * X_21 + 0.626860 * X_22 + 8.396857 * X_23 + -175.930313 * X_24 + 8.340484 * X_25 + -15.917093 * X_26 + 2.867656 * X_27 + -3.317274 * X_28 + 0.108152 * X_29 + -0.047379 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 1.167587 * X_33 + 5.717546 * X_34 + -2.587370 * X_35 + 2.473536 * X_36 + -2.836852 * X_37 + -1.355966 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -4.006278 * X_41 + -3.740286 * X_42 + -0.736042 * X_43 + -5.793258 * X_44 + 11.758936 * X_45 + 1.837577 * X_46 + -12.180374 * X_47 + 8.702889 * X_48 + -3.128610 * X_49 + 2.946159 * X_50 + 0.265515 * X_51 + 6.739524 * X_52 + -23.871185 * X_53 + 2.432371 * X_54 + -6.606752 * X_55 + 27.379494 * X_56 + -10.175920 * X_57 + 4.982822 * X_58 + -5.365057 * X_59 + 0.798560 * X_60 + 11.934998 * X_61 + -12.071403 * X_62 + 43.767349 * X_63 AS "Score_7", CAST(NULL AS FLOAT) AS "Proba_7", CAST(NULL AS FLOAT) AS "LogProba_7",
   38.088226 + 0.000000 * X_0 + 6.551461 * X_1 + 0.019198 * X_2 + -0.335351 * X_3 + 0.012037 * X_4 + -0.674112 * X_5 + 1.058556 * X_6 + -1.129648 * X_7 + -45.532864 * X_8 + -2.731742 * X_9 + -1.259716 * X_10 + -0.523419 * X_11 + -0.219937 * X_12 + 0.549419 * X_13 + -0.561297 * X_14 + 3.885346 * X_15 + 0.000000 * X_16 + 2.953961 * X_17 + 3.967497 * X_18 + -0.334522 * X_19 + -0.550916 * X_20 + -0.628774 * X_21 + 0.773516 * X_22 + 5.061908 * X_23 + -69.482613 * X_24 + 2.016705 * X_25 + -6.519752 * X_26 + 1.143223 * X_27 + -0.290868 * X_28 + -0.061643 * X_29 + -0.711500 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 0.401679 * X_33 + 2.620188 * X_34 + -0.691960 * X_35 + 0.177405 * X_36 + -0.021724 * X_37 + -0.233055 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 0.463257 * X_41 + -1.402810 * X_42 + 0.313911 * X_43 + 0.341832 * X_44 + -0.521269 * X_45 + 0.984512 * X_46 + 5.573206 * X_47 + 1.577769 * X_48 + -0.737667 * X_49 + -0.146372 * X_50 + 0.218257 * X_51 + -0.044391 * X_52 + 0.625658 * X_53 + -0.716270 * X_54 + 0.783571 * X_55 + 5.951169 * X_56 + -5.730453 * X_57 + 0.532195 * X_58 + -1.284610 * X_59 + 0.176722 * X_60 + 0.783265 * X_61 + -2.910836 * X_62 + 5.921494 * X_63 AS "Score_8", CAST(NULL AS FLOAT) AS "Proba_8", CAST(NULL AS FLOAT) AS "LogProba_8",
   -14.569659 + 0.000000 * X_0 + -0.989189 * X_1 + 0.666806 * X_2 + -0.519635 * X_3 + 0.575859 * X_4 + -0.035793 * X_5 + 0.315573 * X_6 + -0.240844 * X_7 + 23.105122 * X_8 + 1.635481 * X_9 + -0.244866 * X_10 + 0.406563 * X_11 + 0.118215 * X_12 + 0.055639 * X_13 + 0.036401 * X_14 + -1.596966 * X_15 + 0.000000 * X_16 + -0.939377 * X_17 + -0.745359 * X_18 + -0.433280 * X_19 + -0.057457 * X_20 + -0.118397 * X_21 + 0.226672 * X_22 + -0.710353 * X_23 + 28.337189 * X_24 + -1.876155 * X_25 + 1.893661 * X_26 + -0.199185 * X_27 + 0.693280 * X_28 + -0.124329 * X_29 + 0.073093 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 0.498188 * X_33 + -0.755915 * X_34 + 0.150100 * X_35 + -0.841176 * X_36 + 0.667585 * X_37 + 0.172387 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 0.559793 * X_41 + 0.620358 * X_42 + 0.492929 * X_43 + 1.063886 * X_44 + -2.178175 * X_45 + -2.010045 * X_46 + 21.774706 * X_47 + -4.412495 * X_48 + 1.270968 * X_49 + -0.617038 * X_50 + -0.437822 * X_51 + -0.807919 * X_52 + 3.971563 * X_53 + 3.026269 * X_54 + -6.993497 * X_55 + -11.996962 * X_56 + 1.278628 * X_57 + -0.950491 * X_58 + 0.632071 * X_59 + -0.234818 * X_60 + -2.517281 * X_61 + 0.616025 * X_62 + -3.374390 * X_63 AS "Score_9", CAST(NULL AS FLOAT) AS "Proba_9", CAST(NULL AS FLOAT) AS "LogProba_9"
  FROM model_input
 ),
soft_max_orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   t."Score_2" AS "Score_2",
   t."Proba_2" AS "Proba_2",
   t."LogProba_2" AS "LogProba_2",
   t."Score_3" AS "Score_3",
   t."Proba_3" AS "Proba_3",
   t."LogProba_3" AS "LogProba_3",
   t."Score_4" AS "Score_4",
   t."Proba_4" AS "Proba_4",
   t."LogProba_4" AS "LogProba_4",
   t."Score_5" AS "Score_5",
   t."Proba_5" AS "Proba_5",
   t."LogProba_5" AS "LogProba_5",
   t."Score_6" AS "Score_6",
   t."Proba_6" AS "Proba_6",
   t."LogProba_6" AS "LogProba_6",
   t."Score_7" AS "Score_7",
   t."Proba_7" AS "Proba_7",
   t."LogProba_7" AS "LogProba_7",
   t."Score_8" AS "Score_8",
   t."Proba_8" AS "Proba_8",
   t."LogProba_8" AS "LogProba_8",
   t."Score_9" AS "Score_9",
   t."Proba_9" AS "Proba_9",
   t."LogProba_9" AS "LogProba_9",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX(t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7", t."Score_8", t."Score_9") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1.*,
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" + t1."Exp_Score_4" + t1."Exp_Score_5" + t1."Exp_Score_6" + t1."Exp_Score_7" + t1."Exp_Score_8" + t1."Exp_Score_9" ) AS "Sum_Exp"
  FROM
   ( SELECT t.*,
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2",
        EXP(t."Score_3" - t."Greatest_Score") as "Exp_Score_3",
        EXP(t."Score_4" - t."Greatest_Score") as "Exp_Score_4",
        EXP(t."Score_5" - t."Greatest_Score") as "Exp_Score_5",
        EXP(t."Score_6" - t."Greatest_Score") as "Exp_Score_6",
        EXP(t."Score_7" - t."Greatest_Score") as "Exp_Score_7",
        EXP(t."Score_8" - t."Greatest_Score") as "Exp_Score_8",
        EXP(t."Score_9" - t."Greatest_Score") as "Exp_Score_9"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    CAST(NULL AS FLOAT) AS "LogProba_2",
    t1."Exp_Score_2" / t1."Sum_Exp" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    CAST(NULL AS FLOAT) AS "LogProba_3",
    t1."Exp_Score_3" / t1."Sum_Exp" AS "Proba_3",
    t1."Score_3" AS "Score_3",
    CAST(NULL AS FLOAT) AS "LogProba_4",
    t1."Exp_Score_4" / t1."Sum_Exp" AS "Proba_4",
    t1."Score_4" AS "Score_4",
    CAST(NULL AS FLOAT) AS "LogProba_5",
    t1."Exp_Score_5" / t1."Sum_Exp" AS "Proba_5",
    t1."Score_5" AS "Score_5",
    CAST(NULL AS FLOAT) AS "LogProba_6",
    t1."Exp_Score_6" / t1."Sum_Exp" AS "Proba_6",
    t1."Score_6" AS "Score_6",
    CAST(NULL AS FLOAT) AS "LogProba_7",
    t1."Exp_Score_7" / t1."Sum_Exp" AS "Proba_7",
    t1."Score_7" AS "Score_7",
    CAST(NULL AS FLOAT) AS "LogProba_8",
    t1."Exp_Score_8" / t1."Sum_Exp" AS "Proba_8",
    t1."Score_8" AS "Score_8",
    CAST(NULL AS FLOAT) AS "LogProba_9",
    t1."Exp_Score_9" / t1."Sum_Exp" AS "Proba_9",
    t1."Score_9" AS "Score_9"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3", t."Proba_4", t."Proba_5", t."Proba_6", t."Proba_7", t."Proba_8", t."Proba_9" ) AS "Max_Proba"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t.*,
   CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
   CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
   CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
   CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
   CASE WHEN(t."Proba_4" = t."Max_Proba") THEN 4 else NULL END AS "max_idx_4",
   CASE WHEN(t."Proba_5" = t."Max_Proba") THEN 5 else NULL END AS "max_idx_5",
   CASE WHEN(t."Proba_6" = t."Max_Proba") THEN 6 else NULL END AS "max_idx_6",
   CASE WHEN(t."Proba_7" = t."Max_Proba") THEN 7 else NULL END AS "max_idx_7",
   CASE WHEN(t."Proba_8" = t."Max_Proba") THEN 8 else NULL END AS "max_idx_8",
   CASE WHEN(t."Proba_9" = t."Max_Proba") THEN 9 else NULL END AS "max_idx_9"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3", t."max_idx_4", t."max_idx_5", t."max_idx_6", t."max_idx_7", t."max_idx_8", t."max_idx_9" ) AS argmax_class_idx
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
  arg_max_cte."Score_2" AS "Score_2",
  arg_max_cte."Proba_2" AS "Proba_2",
  CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN LN( arg_max_cte."Proba_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
  arg_max_cte."Score_3" AS "Score_3",
  arg_max_cte."Proba_3" AS "Proba_3",
  CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN LN( arg_max_cte."Proba_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
  arg_max_cte."Score_4" AS "Score_4",
  arg_max_cte."Proba_4" AS "Proba_4",
  CASE WHEN (arg_max_cte."Proba_4" IS NULL OR arg_max_cte."Proba_4" > 0.0) THEN LN( arg_max_cte."Proba_4" ) ELSE -1.79769313486231e+308 END AS "LogProba_4",
  arg_max_cte."Score_5" AS "Score_5",
  arg_max_cte."Proba_5" AS "Proba_5",
  CASE WHEN (arg_max_cte."Proba_5" IS NULL OR arg_max_cte."Proba_5" > 0.0) THEN LN( arg_max_cte."Proba_5" ) ELSE -1.79769313486231e+308 END AS "LogProba_5",
  arg_max_cte."Score_6" AS "Score_6",
  arg_max_cte."Proba_6" AS "Proba_6",
  CASE WHEN (arg_max_cte."Proba_6" IS NULL OR arg_max_cte."Proba_6" > 0.0) THEN LN( arg_max_cte."Proba_6" ) ELSE -1.79769313486231e+308 END AS "LogProba_6",
  arg_max_cte."Score_7" AS "Score_7",
  arg_max_cte."Proba_7" AS "Proba_7",
  CASE WHEN (arg_max_cte."Proba_7" IS NULL OR arg_max_cte."Proba_7" > 0.0) THEN LN( arg_max_cte."Proba_7" ) ELSE -1.79769313486231e+308 END AS "LogProba_7",
  arg_max_cte."Score_8" AS "Score_8",
  arg_max_cte."Proba_8" AS "Proba_8",
  CASE WHEN (arg_max_cte."Proba_8" IS NULL OR arg_max_cte."Proba_8" > 0.0) THEN LN( arg_max_cte."Proba_8" ) ELSE -1.79769313486231e+308 END AS "LogProba_8",
  arg_max_cte."Score_9" AS "Score_9",
  arg_max_cte."Proba_9" AS "Proba_9",
  CASE WHEN (arg_max_cte."Proba_9" IS NULL OR arg_max_cte."Proba_9" > 0.0) THEN LN( arg_max_cte."Proba_9" ) ELSE -1.79769313486231e+308 END AS "LogProba_9",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte