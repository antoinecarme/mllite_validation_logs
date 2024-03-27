WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   64.699631 + 0.000000 * X_0 + 35.347122 * X_1 + 11.394555 * X_2 + 6.953054 * X_3 + -2.690786 * X_4 + 6.712885 * X_5 + -9.007689 * X_6 + -178.924454 * X_7 + 501.489014 * X_8 + -14.922093 * X_9 + -5.520471 * X_10 + -1.459428 * X_11 + 4.140357 * X_12 + -5.206999 * X_13 + 7.073659 * X_14 + 530.954895 * X_15 + -1026.890869 * X_16 + 14.418811 * X_17 + -0.628599 * X_18 + -3.705360 * X_19 + -1.131930 * X_20 + -2.925578 * X_21 + -4.648191 * X_22 + 12.644375 * X_23 + 0.000000 * X_24 + 1.657603 * X_25 + -3.562741 * X_26 + -3.836616 * X_27 + 4.542861 * X_28 + -0.740382 * X_29 + 1.485721 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -0.577543 * X_33 + 2.643078 * X_34 + -2.121090 * X_35 + -4.760728 * X_36 + -4.344812 * X_37 + 1.132190 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -7.750238 * X_41 + -2.286082 * X_42 + 3.361180 * X_43 + -0.166977 * X_44 + 7.147630 * X_45 + -0.094749 * X_46 + 0.000000 * X_47 + -201.076691 * X_48 + 27.696899 * X_49 + 3.250828 * X_50 + -2.207176 * X_51 + 6.559566 * X_52 + -4.855795 * X_53 + -1.827793 * X_54 + -13.884045 * X_55 + 412.986633 * X_56 + -52.865051 * X_57 + -15.049545 * X_58 + 1.276331 * X_59 + -2.230702 * X_60 + 4.510204 * X_61 + 5.619611 * X_62 + -0.521454 * X_63 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -102.147148 + 0.000000 * X_0 + -7.404775 * X_1 + -24.677370 * X_2 + 0.882812 * X_3 + 4.540390 * X_4 + -6.115782 * X_5 + 10.524306 * X_6 + -142.474091 * X_7 + 423.006073 * X_8 + 18.479839 * X_9 + 9.766844 * X_10 + 2.450106 * X_11 + -3.989963 * X_12 + 5.260397 * X_13 + -8.407254 * X_14 + 463.004120 * X_15 + -842.682678 * X_16 + -26.530819 * X_17 + -2.110406 * X_18 + 8.264493 * X_19 + 4.395580 * X_20 + 6.941845 * X_21 + 0.543143 * X_22 + -16.227093 * X_23 + 0.000000 * X_24 + 7.974407 * X_25 + 9.203450 * X_26 + 3.155381 * X_27 + -9.659710 * X_28 + 1.712535 * X_29 + -1.424255 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -15.183141 * X_33 + -4.864015 * X_34 + 2.892032 * X_35 + 2.256702 * X_36 + 5.603834 * X_37 + -3.193079 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 13.394942 * X_41 + 8.059429 * X_42 + -8.971598 * X_43 + -0.658853 * X_44 + -11.321981 * X_45 + -3.553416 * X_46 + 0.000000 * X_47 + -148.433304 * X_48 + -19.255857 * X_49 + -12.738366 * X_50 + 3.184864 * X_51 + -5.907020 * X_52 + 5.804283 * X_53 + 7.028536 * X_54 + 14.659637 * X_55 + 398.717560 * X_56 + 83.574371 * X_57 + 22.568804 * X_58 + -5.235005 * X_59 + 4.693454 * X_60 + -5.062144 * X_61 + -10.077480 * X_62 + 9.658552 * X_63 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -27.245543 + 0.000000 * X_0 + -8.080043 * X_1 + -4.222646 * X_2 + -3.035575 * X_3 + 1.157862 * X_4 + -2.562529 * X_5 + 3.997625 * X_6 + -118.363831 * X_7 + 340.631042 * X_8 + 6.930255 * X_9 + 2.199646 * X_10 + 0.139188 * X_11 + -1.708580 * X_12 + 1.626119 * X_13 + -3.538706 * X_14 + 357.108215 * X_15 + -670.578979 * X_16 + -6.915915 * X_17 + 0.805278 * X_18 + 1.263649 * X_19 + 0.182344 * X_20 + 1.499446 * X_21 + 2.912067 * X_22 + -6.639061 * X_23 + 0.000000 * X_24 + -1.451531 * X_25 + 1.049012 * X_26 + 1.522278 * X_27 + -1.356654 * X_28 + 0.070068 * X_29 + -1.886361 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 0.195571 * X_33 + 0.097938 * X_34 + -0.064354 * X_35 + 1.221411 * X_36 + 2.783373 * X_37 + 0.025595 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 3.474106 * X_41 + 0.530854 * X_42 + -1.058923 * X_43 + 0.653751 * X_44 + -4.383203 * X_45 + -1.117653 * X_46 + 0.000000 * X_47 + 1700.396362 * X_48 + -7.012230 * X_49 + -1.250961 * X_50 + 1.386144 * X_51 + -2.920821 * X_52 + 3.512714 * X_53 + -0.180500 * X_54 + 3.449043 * X_55 + -5043.933105 * X_56 + 9.053607 * X_57 + 5.210101 * X_58 + 0.125665 * X_59 + 0.951383 * X_60 + -2.640891 * X_61 + 0.546516 * X_62 + -2.200592 * X_63 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   72.895508 + 0.000000 * X_0 + -33.836864 * X_1 + 9.132626 * X_2 + -6.830155 * X_3 + 1.514800 * X_4 + -3.493999 * X_5 + 5.424738 * X_6 + -93.156197 * X_7 + 254.859985 * X_8 + 6.876512 * X_9 + -4.649177 * X_10 + -1.011132 * X_11 + -0.729644 * X_12 + 2.463162 * X_13 + -2.785877 * X_14 + 254.703934 * X_15 + -504.248230 * X_16 + 0.990250 * X_17 + 5.164043 * X_18 + -3.510174 * X_19 + -2.178525 * X_20 + -3.271703 * X_21 + 6.461943 * X_22 + 12.487131 * X_23 + 0.000000 * X_24 + -4.908402 * X_25 + -4.740451 * X_26 + 0.583366 * X_27 + 4.317081 * X_28 + -1.822748 * X_29 + -0.737663 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 8.846783 * X_33 + 2.012175 * X_34 + -1.408457 * X_35 + 0.477106 * X_36 + 0.144885 * X_37 + -0.335475 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -0.583832 * X_41 + -1.874642 * X_42 + 2.972147 * X_43 + 0.820881 * X_44 + 1.520730 * X_45 + 0.580221 * X_46 + 0.000000 * X_47 + -57.322388 * X_48 + -12.690083 * X_49 + 4.107549 * X_50 + 0.746114 * X_51 + -2.834001 * X_52 + 0.675310 * X_53 + 1.088679 * X_54 + 3.381580 * X_55 + 334.554016 * X_56 + 2.832155 * X_57 + -4.379594 * X_58 + 0.899107 * X_59 + -3.324431 * X_60 + 0.053228 * X_61 + -2.172887 * X_62 + 2.987305 * X_63 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3",
   -109.208511 + 0.000000 * X_0 + 17.783607 * X_1 + -38.829777 * X_2 + 7.965043 * X_3 + 1.239608 * X_4 + -4.506094 * X_5 + 6.897426 * X_6 + -199.757278 * X_7 + 592.311890 * X_8 + 19.285366 * X_9 + 11.841699 * X_10 + 7.585642 * X_11 + -6.447846 * X_12 + 4.585627 * X_13 + -6.027770 * X_14 + 646.962402 * X_15 + -1179.896240 * X_16 + -33.704796 * X_17 + -7.315609 * X_18 + 11.755435 * X_19 + 8.217148 * X_20 + 9.521338 * X_21 + -7.207078 * X_22 + -44.338257 * X_23 + 0.000000 * X_24 + 17.646042 * X_25 + 12.738659 * X_26 + 4.270539 * X_27 + -16.325073 * X_28 + 5.305660 * X_29 + -0.756139 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -27.047188 * X_33 + -7.100202 * X_34 + 3.277756 * X_35 + 3.982089 * X_36 + 4.261566 * X_37 + -1.984882 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 13.532308 * X_41 + 10.764256 * X_42 + -14.590081 * X_43 + -3.533771 * X_44 + -11.183681 * X_45 + -4.436934 * X_46 + 0.000000 * X_47 + -245.070358 * X_48 + -0.150737 * X_49 + -19.910728 * X_50 + 3.825069 * X_51 + -3.946523 * X_52 + 3.116286 * X_53 + 4.074386 * X_54 + 12.998157 * X_55 + 448.218994 * X_56 + 77.443199 * X_57 + 33.384144 * X_58 + -7.436064 * X_59 + 9.196767 * X_60 + -3.642121 * X_61 + -7.841545 * X_62 + -1.129642 * X_63 AS "Score_4", CAST(NULL AS FLOAT) AS "Proba_4", CAST(NULL AS FLOAT) AS "LogProba_4",
   103.573242 + 0.000000 * X_0 + 25.843512 * X_1 + 42.164684 * X_2 + 1.125459 * X_3 + -2.657407 * X_4 + 6.665541 * X_5 + -9.652744 * X_6 + -275.435028 * X_7 + 761.419556 * X_8 + -21.094721 * X_9 + -12.463692 * X_10 + -4.243845 * X_11 + 4.288358 * X_12 + -5.609887 * X_13 + 5.589411 * X_14 + 775.833435 * X_15 + -1521.692627 * X_16 + 24.630182 * X_17 + 1.273726 * X_18 + -11.872971 * X_19 + -3.365932 * X_20 + -6.028478 * X_21 + 1.889338 * X_22 + -8.552494 * X_23 + 0.000000 * X_24 + 1.892570 * X_25 + -8.870980 * X_26 + -1.939766 * X_27 + 9.803208 * X_28 + -4.909842 * X_29 + 2.423678 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 10.959721 * X_33 + 6.061598 * X_34 + -4.446124 * X_35 + -1.781310 * X_36 + -5.968956 * X_37 + 5.918689 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -17.415449 * X_41 + -7.629565 * X_42 + 12.414501 * X_43 + 1.164626 * X_44 + 13.186559 * X_45 + 3.623046 * X_46 + 0.000000 * X_47 + -228.763123 * X_48 + 17.779520 * X_49 + 16.154680 * X_50 + -5.667552 * X_51 + 7.056485 * X_52 + -7.781898 * X_53 + -7.099154 * X_54 + -16.412699 * X_55 + 836.565430 * X_56 + -83.583153 * X_57 + -41.666553 * X_58 + 5.781880 * X_59 + -7.231850 * X_60 + 5.581890 * X_61 + 11.039890 * X_62 + -5.053546 * X_63 AS "Score_5", CAST(NULL AS FLOAT) AS "Proba_5", CAST(NULL AS FLOAT) AS "LogProba_5",
   -142.591400 + 0.000000 * X_0 + 6.470518 * X_1 + -38.790810 * X_2 + 5.226891 * X_3 + 0.993242 * X_4 + -3.610883 * X_5 + 7.623341 * X_6 + -198.267059 * X_7 + 592.093750 * X_8 + 17.118183 * X_9 + 15.153897 * X_10 + 4.976936 * X_11 + -6.067507 * X_12 + 5.318088 * X_13 + -6.275987 * X_14 + 651.356506 * X_15 + -1180.791992 * X_16 + -28.337618 * X_17 + -5.773452 * X_18 + 13.938547 * X_19 + 8.145741 * X_20 + 9.477250 * X_21 + -4.469316 * X_22 + -38.058960 * X_23 + 0.000000 * X_24 + 10.118064 * X_25 + 13.318121 * X_26 + 1.000383 * X_27 + -13.385832 * X_28 + 2.738824 * X_29 + 1.218033 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -21.233555 * X_33 + -9.223718 * X_34 + 6.591346 * X_35 + 1.736372 * X_36 + 6.485494 * X_37 + -5.792613 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 18.613287 * X_41 + 11.661437 * X_42 + -15.527713 * X_43 + -2.065299 * X_44 + -13.763245 * X_45 + -4.487526 * X_46 + 0.000000 * X_47 + -227.349930 * X_48 + -8.310874 * X_49 + -22.177734 * X_50 + 5.133502 * X_51 + -4.508659 * X_52 + 5.418709 * X_53 + 9.990815 * X_54 + 11.459621 * X_55 + 501.139526 * X_56 + 81.311211 * X_57 + 34.748764 * X_58 + -7.166878 * X_59 + 9.590631 * X_60 + -5.396764 * X_61 + -9.262168 * X_62 + -1.177012 * X_63 AS "Score_6", CAST(NULL AS FLOAT) AS "Proba_6", CAST(NULL AS FLOAT) AS "LogProba_6",
   -78.126701 + 0.000000 * X_0 + -2.848362 * X_1 + -16.951485 * X_2 + -1.643242 * X_3 + 2.017658 * X_4 + -4.634903 * X_5 + 7.079245 * X_6 + 1722.957153 * X_7 + 512.672729 * X_8 + 12.711460 * X_9 + 8.326294 * X_10 + 2.244681 * X_11 + -4.472504 * X_12 + 3.424583 * X_13 + -6.211375 * X_14 + -5154.267090 * X_15 + -1000.475769 * X_16 + -18.375032 * X_17 + -2.060261 * X_18 + 6.960119 * X_19 + 2.629557 * X_20 + 5.348451 * X_21 + 1.389854 * X_22 + -28.073141 * X_23 + 0.000000 * X_24 + 2.976195 * X_25 + 5.400411 * X_26 + 3.035366 * X_27 + -7.305812 * X_28 + 1.698639 * X_29 + -2.140351 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -6.972805 * X_33 + -3.090121 * X_34 + 2.888093 * X_35 + 2.862600 * X_36 + 4.646180 * X_37 + -1.311543 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 9.992690 * X_41 + 3.257209 * X_42 + -6.228557 * X_43 + -0.390222 * X_44 + -8.648806 * X_45 + -1.152481 * X_46 + 0.000000 * X_47 + -161.318878 * X_48 + -14.142841 * X_49 + -7.359137 * X_50 + 2.660916 * X_51 + -5.235073 * X_52 + 4.660486 * X_53 + 0.769159 * X_54 + 9.397623 * X_55 + 529.704163 * X_56 + 42.937286 * X_57 + 16.401321 * X_58 + -2.373937 * X_59 + 4.560740 * X_60 + -4.405226 * X_61 + -3.447279 * X_62 + -2.286133 * X_63 AS "Score_7", CAST(NULL AS FLOAT) AS "Proba_7", CAST(NULL AS FLOAT) AS "LogProba_7",
   46.489105 + 0.000000 * X_0 + -23.066013 * X_1 + 14.831062 * X_2 + -6.323420 * X_3 + -1.072666 * X_4 + 0.582120 * X_5 + -3.959040 * X_6 + -271.380249 * X_7 + -4647.511719 * X_8 + -8.620286 * X_9 + -5.862170 * X_10 + -2.421039 * X_11 + 2.664048 * X_12 + -1.717201 * X_13 + 4.078654 * X_14 + 786.948486 * X_15 + 9297.663086 * X_16 + 17.459021 * X_17 + 3.241521 * X_18 + -5.797241 * X_19 + -4.989140 * X_20 + -5.463367 * X_21 + 2.168229 * X_22 + 28.391361 * X_23 + 0.000000 * X_24 + -11.074168 * X_25 + -6.954589 * X_26 + -0.087449 * X_27 + 6.609036 * X_28 + -0.240353 * X_29 + -0.365875 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 16.506302 * X_33 + 3.483458 * X_34 + -1.660654 * X_35 + 1.044103 * X_36 + -3.376373 * X_37 + 2.429686 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -8.287161 * X_41 + -7.028951 * X_42 + 7.616787 * X_43 + 0.821100 * X_44 + 6.733465 * X_45 + 3.692586 * X_46 + 0.000000 * X_47 + -223.137466 * X_48 + -6.144914 * X_49 + 12.290731 * X_50 + -2.233913 * X_51 + 1.049626 * X_52 + -2.083979 * X_53 + -5.436077 * X_54 + -2.155621 * X_55 + 851.876953 * X_56 + -31.994164 * X_57 + -10.260324 * X_58 + 4.304818 * X_59 + -4.076536 * X_60 + 2.144806 * X_61 + 2.975603 * X_62 + -1.275498 * X_63 AS "Score_8", CAST(NULL AS FLOAT) AS "Proba_8", CAST(NULL AS FLOAT) AS "LogProba_8",
   163.661865 + 0.000000 * X_0 + -10.208759 * X_1 + 45.949142 * X_2 + -4.320870 * X_3 + -5.042691 * X_4 + 10.963629 * X_5 + -18.927177 * X_6 + -245.202667 * X_7 + 669.031738 * X_8 + -36.764481 * X_9 + -18.792858 * X_10 + -8.261103 * X_11 + 12.323275 * X_12 + -10.143875 * X_13 + 16.505226 * X_14 + 687.407043 * X_15 + -1370.415527 * X_16 + 56.365879 * X_17 + 7.403758 * X_18 + -17.296482 * X_19 + -11.904841 * X_20 + -15.099195 * X_21 + 0.960016 * X_22 + 88.366096 * X_23 + 0.000000 * X_24 + -24.830763 * X_25 + -17.580881 * X_26 + -7.703479 * X_27 + 22.760878 * X_28 + -3.812395 * X_29 + 2.183210 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 34.505821 * X_33 + 9.979800 * X_34 + -5.948551 * X_35 + -7.038337 * X_36 + -10.235182 * X_37 + 3.111421 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -24.970629 * X_41 + -15.453932 * X_42 + 20.012239 * X_43 + 3.354759 * X_44 + 20.712519 * X_45 + 6.946898 * X_46 + 0.000000 * X_47 + -207.925522 * X_48 + 22.231083 * X_49 + 27.633123 * X_50 + -6.827958 * X_51 + 10.686408 * X_52 + -8.466108 * X_53 + -8.408042 * X_54 + -22.893255 * X_55 + 730.173340 * X_56 + -128.709320 * X_57 + -40.957111 * X_58 + 9.824070 * X_59 + -12.129445 * X_60 + 8.857007 * X_61 + 12.619708 * X_62 + 0.998041 * X_63 AS "Score_9", CAST(NULL AS FLOAT) AS "Proba_9", CAST(NULL AS FLOAT) AS "LogProba_9"
  FROM model_input
 )
,
soft_max_orig_cte AS 
 (SELECT t."index" AS "index", 
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
   CAST(NULL AS FLOAT) AS "DecisionProba"
  FROM model_scores_cte AS t
 )
,
soft_max_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 2 AS class,  "LogProba_2" AS "LogProba", "Proba_2" AS "Proba", "Score_2" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 3 AS class,  "LogProba_3" AS "LogProba", "Proba_3" AS "Proba", "Score_3" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 4 AS class,  "LogProba_4" AS "LogProba", "Proba_4" AS "Proba", "Score_4" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 5 AS class,  "LogProba_5" AS "LogProba", "Proba_5" AS "Proba", "Score_5" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 6 AS class,  "LogProba_6" AS "LogProba", "Proba_6" AS "Proba", "Score_6" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 7 AS class,  "LogProba_7" AS "LogProba", "Proba_7" AS "Proba", "Score_7" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 8 AS class,  "LogProba_8" AS "LogProba", "Proba_8" AS "Proba", "Score_8" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 9 AS class,  "LogProba_9" AS "LogProba", "Proba_9" AS "Proba", "Score_9" AS "Score" from "soft_max_orig_cte"
   ) AS scu
 )
,soft_max_score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   t."LogProba_2" AS "LogProba_2", t."Proba_2" AS "Proba_2", t."Score_2" AS "Score_2",
   t."LogProba_3" AS "LogProba_3", t."Proba_3" AS "Proba_3", t."Score_3" AS "Score_3",
   t."LogProba_4" AS "LogProba_4", t."Proba_4" AS "Proba_4", t."Score_4" AS "Score_4",
   t."LogProba_5" AS "LogProba_5", t."Proba_5" AS "Proba_5", t."Score_5" AS "Score_5",
   t."LogProba_6" AS "LogProba_6", t."Proba_6" AS "Proba_6", t."Score_6" AS "Score_6",
   t."LogProba_7" AS "LogProba_7", t."Proba_7" AS "Proba_7", t."Score_7" AS "Score_7",
   t."LogProba_8" AS "LogProba_8", t."Proba_8" AS "Proba_8", t."Score_8" AS "Score_8",
   t."LogProba_9" AS "LogProba_9", t."Proba_9" AS "Proba_9", t."Score_9" AS "Score_9",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
 "soft_max_orig_cte" AS t
    LEFT OUTER JOIN
    (SELECT t1.index_u AS index_m,
      max(t1."Score") AS "max_Score"
     FROM soft_max_class_union t1
     GROUP BY t1.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,soft_max_deltas AS 
 (SELECT soft_max_score_max."index" AS "index",
    soft_max_score_max."Score_0" AS "Score_0",
    EXP(max(-32.0, soft_max_score_max."Score_0" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_0",
    soft_max_score_max."Score_1" AS "Score_1",
    EXP(max(-32.0, soft_max_score_max."Score_1" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_1",
    soft_max_score_max."Score_2" AS "Score_2",
    EXP(max(-32.0, soft_max_score_max."Score_2" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_2",
    soft_max_score_max."Score_3" AS "Score_3",
    EXP(max(-32.0, soft_max_score_max."Score_3" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_3",
    soft_max_score_max."Score_4" AS "Score_4",
    EXP(max(-32.0, soft_max_score_max."Score_4" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_4",
    soft_max_score_max."Score_5" AS "Score_5",
    EXP(max(-32.0, soft_max_score_max."Score_5" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_5",
    soft_max_score_max."Score_6" AS "Score_6",
    EXP(max(-32.0, soft_max_score_max."Score_6" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_6",
    soft_max_score_max."Score_7" AS "Score_7",
    EXP(max(-32.0, soft_max_score_max."Score_7" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_7",
    soft_max_score_max."Score_8" AS "Score_8",
    EXP(max(-32.0, soft_max_score_max."Score_8" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_8",
    soft_max_score_max."Score_9" AS "Score_9",
    EXP(max(-32.0, soft_max_score_max."Score_9" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_9",
    soft_max_score_max."max_Score" AS "max_Score"
  FROM soft_max_score_max
 )
,soft_max_class_union_with_delta AS 
 (SELECT soft_scu."index" AS "index",
   soft_scu.class AS class,
   soft_scu."ExpDelta_Score" AS "ExpDelta_Score"
  FROM (
    SELECT t."index" AS "index", 0 AS "class", t."ExpDelta_Score_0" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 1 AS "class", t."ExpDelta_Score_1" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 2 AS "class", t."ExpDelta_Score_2" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 3 AS "class", t."ExpDelta_Score_3" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 4 AS "class", t."ExpDelta_Score_4" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 5 AS "class", t."ExpDelta_Score_5" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 6 AS "class", t."ExpDelta_Score_6" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 7 AS "class", t."ExpDelta_Score_7" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 8 AS "class", t."ExpDelta_Score_8" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 9 AS "class", t."ExpDelta_Score_9" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
) AS soft_scu)
,
soft_max_cte AS 
 (SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."ExpDelta_Score_0" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."ExpDelta_Score_1" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    CAST(NULL AS FLOAT) AS "LogProba_2",
    t1."ExpDelta_Score_2" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    CAST(NULL AS FLOAT) AS "LogProba_3",
    t1."ExpDelta_Score_3" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_3",
    t1."Score_3" AS "Score_3",
    CAST(NULL AS FLOAT) AS "LogProba_4",
    t1."ExpDelta_Score_4" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_4",
    t1."Score_4" AS "Score_4",
    CAST(NULL AS FLOAT) AS "LogProba_5",
    t1."ExpDelta_Score_5" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_5",
    t1."Score_5" AS "Score_5",
    CAST(NULL AS FLOAT) AS "LogProba_6",
    t1."ExpDelta_Score_6" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_6",
    t1."Score_6" AS "Score_6",
    CAST(NULL AS FLOAT) AS "LogProba_7",
    t1."ExpDelta_Score_7" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_7",
    t1."Score_7" AS "Score_7",
    CAST(NULL AS FLOAT) AS "LogProba_8",
    t1."ExpDelta_Score_8" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_8",
    t1."Score_8" AS "Score_8",
    CAST(NULL AS FLOAT) AS "LogProba_9",
    t1."ExpDelta_Score_9" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_9",
    t1."Score_9" AS "Score_9"
 FROM 
   soft_max_deltas AS t1
   LEFT OUTER JOIN
   ( SELECT t3."index" AS "index",
       SUM( t3."ExpDelta_Score" ) AS "sum_ExpDelta_Score"
     FROM soft_max_class_union_with_delta AS t3
     GROUP BY t3."index"
   ) AS sum_exp_t
   ON (t1."index" = sum_exp_t."index")
 )
,
score_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 2 AS class,  "LogProba_2" AS "LogProba", "Proba_2" AS "Proba", "Score_2" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 3 AS class,  "LogProba_3" AS "LogProba", "Proba_3" AS "Proba", "Score_3" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 4 AS class,  "LogProba_4" AS "LogProba", "Proba_4" AS "Proba", "Score_4" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 5 AS class,  "LogProba_5" AS "LogProba", "Proba_5" AS "Proba", "Score_5" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 6 AS class,  "LogProba_6" AS "LogProba", "Proba_6" AS "Proba", "Score_6" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 7 AS class,  "LogProba_7" AS "LogProba", "Proba_7" AS "Proba", "Score_7" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 8 AS class,  "LogProba_8" AS "LogProba", "Proba_8" AS "Proba", "Score_8" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 9 AS class,  "LogProba_9" AS "LogProba", "Proba_9" AS "Proba", "Score_9" AS "Score" from "soft_max_cte"
   ) AS scu
 )
,
score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   t."LogProba_2" AS "LogProba_2", t."Proba_2" AS "Proba_2", t."Score_2" AS "Score_2",
   t."LogProba_3" AS "LogProba_3", t."Proba_3" AS "Proba_3", t."Score_3" AS "Score_3",
   t."LogProba_4" AS "LogProba_4", t."Proba_4" AS "Proba_4", t."Score_4" AS "Score_4",
   t."LogProba_5" AS "LogProba_5", t."Proba_5" AS "Proba_5", t."Score_5" AS "Score_5",
   t."LogProba_6" AS "LogProba_6", t."Proba_6" AS "Proba_6", t."Score_6" AS "Score_6",
   t."LogProba_7" AS "LogProba_7", t."Proba_7" AS "Proba_7", t."Score_7" AS "Score_7",
   t."LogProba_8" AS "LogProba_8", t."Proba_8" AS "Proba_8", t."Score_8" AS "Score_8",
   t."LogProba_9" AS "LogProba_9", t."Proba_9" AS "Proba_9", t."Score_9" AS "Score_9",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
    "soft_max_cte" AS t
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
   score_max."LogProba_2" AS "LogProba_2", score_max."Proba_2" AS "Proba_2", score_max."Score_2" AS "Score_2",
   score_max."LogProba_3" AS "LogProba_3", score_max."Proba_3" AS "Proba_3", score_max."Score_3" AS "Score_3",
   score_max."LogProba_4" AS "LogProba_4", score_max."Proba_4" AS "Proba_4", score_max."Score_4" AS "Score_4",
   score_max."LogProba_5" AS "LogProba_5", score_max."Proba_5" AS "Proba_5", score_max."Score_5" AS "Score_5",
   score_max."LogProba_6" AS "LogProba_6", score_max."Proba_6" AS "Proba_6", score_max."Score_6" AS "Score_6",
   score_max."LogProba_7" AS "LogProba_7", score_max."Proba_7" AS "Proba_7", score_max."Score_7" AS "Score_7",
   score_max."LogProba_8" AS "LogProba_8", score_max."Proba_8" AS "Proba_8", score_max."Score_8" AS "Score_8",
   score_max."LogProba_9" AS "LogProba_9", score_max."Proba_9" AS "Proba_9", score_max."Score_9" AS "Score_9",
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
   score_max."LogProba_2" AS "LogProba_2", score_max."Proba_2" AS "Proba_2", score_max."Score_2" AS "Score_2",
   score_max."LogProba_3" AS "LogProba_3", score_max."Proba_3" AS "Proba_3", score_max."Score_3" AS "Score_3",
   score_max."LogProba_4" AS "LogProba_4", score_max."Proba_4" AS "Proba_4", score_max."Score_4" AS "Score_4",
   score_max."LogProba_5" AS "LogProba_5", score_max."Proba_5" AS "Proba_5", score_max."Score_5" AS "Score_5",
   score_max."LogProba_6" AS "LogProba_6", score_max."Proba_6" AS "Proba_6", score_max."Score_6" AS "Score_6",
   score_max."LogProba_7" AS "LogProba_7", score_max."Proba_7" AS "Proba_7", score_max."Score_7" AS "Score_7",
   score_max."LogProba_8" AS "LogProba_8", score_max."Proba_8" AS "Proba_8", score_max."Score_8" AS "Score_8",
   score_max."LogProba_9" AS "LogProba_9", score_max."Proba_9" AS "Proba_9", score_max."Score_9" AS "Score_9",
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
  arg_max_cte."arg_max_Score" AS "Decision",
  CASE
   WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0"
   WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1"
   WHEN (arg_max_cte."arg_max_Score" = 2) THEN arg_max_cte."Proba_2"
   WHEN (arg_max_cte."arg_max_Score" = 3) THEN arg_max_cte."Proba_3"
   WHEN (arg_max_cte."arg_max_Score" = 4) THEN arg_max_cte."Proba_4"
   WHEN (arg_max_cte."arg_max_Score" = 5) THEN arg_max_cte."Proba_5"
   WHEN (arg_max_cte."arg_max_Score" = 6) THEN arg_max_cte."Proba_6"
   WHEN (arg_max_cte."arg_max_Score" = 7) THEN arg_max_cte."Proba_7"
   WHEN (arg_max_cte."arg_max_Score" = 8) THEN arg_max_cte."Proba_8"
   WHEN (arg_max_cte."arg_max_Score" = 9) THEN arg_max_cte."Proba_9"
 END AS "DecisionProba"
FROM arg_max_cte