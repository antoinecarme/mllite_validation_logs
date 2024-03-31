WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -0.148333 + 0.000000 * X_0 + 10.257131 * X_1 + 0.812787 * X_2 + 2.445566 * X_3 + -0.451078 * X_4 + 1.612755 * X_5 + -1.578122 * X_6 + 0.751604 * X_7 + -2.100856 * X_8 + -4.324389 * X_9 + -0.756977 * X_10 + -0.709880 * X_11 + 1.198216 * X_12 + -0.997752 * X_13 + 1.289839 * X_14 + 3.321393 * X_15 + -6.231643 * X_16 + 3.424100 * X_17 + -0.298536 * X_18 + -0.272079 * X_19 + 0.271164 * X_20 + -0.308234 * X_21 + -0.824233 * X_22 + 3.952650 * X_23 + 0.000000 * X_24 + 1.906898 * X_25 + -0.469070 * X_26 + -1.111655 * X_27 + 0.811181 * X_28 + -0.328656 * X_29 + 0.176870 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -1.832933 * X_33 + 0.706377 * X_34 + -0.694546 * X_35 + -1.679560 * X_36 + -0.586708 * X_37 + -0.345301 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -1.073432 * X_41 + 0.441161 * X_42 + 0.463790 * X_43 + 0.214231 * X_44 + 1.077856 * X_45 + -0.094941 * X_46 + 0.000000 * X_47 + -8.353028 * X_48 + 5.843174 * X_49 + -0.386500 * X_50 + -0.234675 * X_51 + 1.502084 * X_52 + -0.762834 * X_53 + 0.366885 * X_54 + -2.283455 * X_55 + -24.045835 * X_56 + -7.950914 * X_57 + -1.677591 * X_58 + -0.102724 * X_59 + -0.317111 * X_60 + 0.818143 * X_61 + 0.791075 * X_62 + 1.225148 * X_63 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -16.389236 + 0.000000 * X_0 + 3.166997 * X_1 + -3.030457 * X_2 + 0.387714 * X_3 + 2.124525 * X_4 + -1.114474 * X_5 + 1.378758 * X_6 + 0.800785 * X_7 + 1.718190 * X_8 + 3.280632 * X_9 + 1.376118 * X_10 + -0.271735 * X_11 + 0.386129 * X_12 + 0.091730 * X_13 + -1.560004 * X_14 + 3.291213 * X_15 + 1.745240 * X_16 + -7.064883 * X_17 + -0.594438 * X_18 + 0.499651 * X_19 + -0.072363 * X_20 + 1.338975 * X_21 + -0.075363 * X_22 + 2.308561 * X_23 + 0.000000 * X_24 + 2.122401 * X_25 + 2.081082 * X_26 + 1.165604 * X_27 + -1.766467 * X_28 + 0.411782 * X_29 + -0.666974 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -3.222043 * X_33 + -0.516689 * X_34 + -0.057963 * X_35 + 0.188360 * X_36 + 0.322745 * X_37 + 0.491160 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 1.260100 * X_41 + 0.599581 * X_42 + -0.469286 * X_43 + 0.157942 * X_44 + -1.638143 * X_45 + -0.673422 * X_46 + 0.000000 * X_47 + -4.640734 * X_48 + -3.695179 * X_49 + -0.207084 * X_50 + -0.262985 * X_51 + -0.890690 * X_52 + 1.011602 * X_53 + 0.693448 * X_54 + 2.511549 * X_55 + -13.077177 * X_56 + 18.470600 * X_57 + 1.387805 * X_58 + -0.492986 * X_59 + 0.018085 * X_60 + -0.954508 * X_61 + -2.307695 * X_62 + 6.443555 * X_63 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   3.458225 + 0.000000 * X_0 + -1.497760 * X_1 + -0.459191 * X_2 + -1.076337 * X_3 + 0.358708 * X_4 + -0.603492 * X_5 + 0.693908 * X_6 + -0.604159 * X_7 + 2.947137 * X_8 + 2.255976 * X_9 + 0.095778 * X_10 + 0.289439 * X_11 + -0.596934 * X_12 + 0.147681 * X_13 + -0.813485 * X_14 + -1.101332 * X_15 + 4.541236 * X_16 + -2.182636 * X_17 + 0.589104 * X_18 + -0.091241 * X_19 + -0.252001 * X_20 + 0.177265 * X_21 + 0.794464 * X_22 + -0.775505 * X_23 + 0.000000 * X_24 + -1.540032 * X_25 + -0.094127 * X_26 + 0.528891 * X_27 + -0.095560 * X_28 + 0.110347 * X_29 + -0.739531 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 0.607540 * X_33 + 0.315333 * X_34 + -0.559406 * X_35 + 0.474367 * X_36 + 0.626235 * X_37 + 0.518022 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 0.626878 * X_41 + -0.324358 * X_42 + -0.094458 * X_43 + 0.110690 * X_44 + -1.379864 * X_45 + -0.880348 * X_46 + 0.000000 * X_47 + 2.292338 * X_48 + -0.377492 * X_49 + 0.075839 * X_50 + 0.292489 * X_51 + -0.745829 * X_52 + 1.200504 * X_53 + -0.377331 * X_54 + -0.448069 * X_55 + -3.256680 * X_56 + -2.653192 * X_57 + 0.693338 * X_58 + 0.323383 * X_59 + 0.217377 * X_60 + -0.717923 * X_61 + 0.850259 * X_62 + -1.993214 * X_63 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   33.676350 + 0.000000 * X_0 + -12.896371 * X_1 + 2.198319 * X_2 + -2.226829 * X_3 + 0.218418 * X_4 + -1.274741 * X_5 + 2.233369 * X_6 + -1.330799 * X_7 + -2.135732 * X_8 + 4.758698 * X_9 + -1.293257 * X_10 + 0.296746 * X_11 + -0.748412 * X_12 + 1.135280 * X_13 + -0.492532 * X_14 + -3.458945 * X_15 + -5.286148 * X_16 + -0.411185 * X_17 + 1.975210 * X_18 + -0.536989 * X_19 + -0.586078 * X_20 + -1.085045 * X_21 + 1.297930 * X_22 + 9.038708 * X_23 + 0.000000 * X_24 + -2.402351 * X_25 + -1.688538 * X_26 + -0.301608 * X_27 + 1.372321 * X_28 + -0.327340 * X_29 + -0.224953 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 2.876857 * X_33 + 0.527181 * X_34 + -0.107494 * X_35 + -0.184791 * X_36 + 0.248338 * X_37 + -0.798151 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 0.460576 * X_41 + -0.210836 * X_42 + 0.147002 * X_43 + -0.043984 * X_44 + 0.361354 * X_45 + -0.035978 * X_46 + 0.000000 * X_47 + 5.229381 * X_48 + -2.480350 * X_49 + 0.046066 * X_50 + 0.769552 * X_51 + -1.115331 * X_52 + 0.324158 * X_53 + 0.624447 * X_54 + 1.229929 * X_55 + 16.194733 * X_56 + 0.045066 * X_57 + -0.797252 * X_58 + -0.326985 * X_59 + -0.952245 * X_60 + 0.176563 * X_61 + -0.720440 * X_62 + 0.417616 * X_63 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3",
   -8.586842 + 0.000000 * X_0 + 9.381593 * X_1 + -6.031996 * X_2 + 2.115582 * X_3 + 0.435934 * X_4 + -0.631357 * X_5 + -0.608243 * X_6 + 0.893078 * X_7 + 3.258295 * X_8 + 2.784596 * X_9 + 1.519210 * X_10 + 0.773275 * X_11 + -0.384391 * X_12 + -0.551316 * X_13 + -0.843081 * X_14 + 3.923343 * X_15 + 4.148955 * X_16 + -9.307059 * X_17 + -2.751818 * X_18 + 0.953098 * X_19 + 0.825951 * X_20 + 1.792800 * X_21 + -2.099804 * X_22 + -15.185624 * X_23 + 0.000000 * X_24 + 6.599575 * X_25 + 2.764846 * X_26 + 1.940713 * X_27 + -3.538649 * X_28 + 1.337533 * X_29 + -0.405723 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -6.333735 * X_33 + -1.001187 * X_34 + -0.372598 * X_35 + 1.378847 * X_36 + -0.514427 * X_37 + 2.129424 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -0.244251 * X_41 + 0.690009 * X_42 + -1.662112 * X_43 + -0.213865 * X_44 + -0.471196 * X_45 + -0.460761 * X_46 + 0.000000 * X_47 + -8.997521 * X_48 + 1.094735 * X_49 + -0.628667 * X_50 + -0.289099 * X_51 + -0.276837 * X_52 + -0.363022 * X_53 + -1.869435 * X_54 + 1.525587 * X_55 + -25.809860 * X_56 + 11.992013 * X_57 + 3.340072 * X_58 + -0.162122 * X_59 + 1.197125 * X_60 + -0.363692 * X_61 + -0.133946 * X_62 + -1.056391 * X_63 AS "Score_4", CAST(NULL AS FLOAT) AS "Proba_4", CAST(NULL AS FLOAT) AS "LogProba_4",
   -16.351198 + 0.000000 * X_0 + 2.824394 * X_1 + 7.755404 * X_2 + 1.122873 * X_3 + -1.245931 * X_4 + 1.019385 * X_5 + -0.620213 * X_6 + -0.502147 * X_7 + -1.247462 * X_8 + -3.689113 * X_9 + -1.886173 * X_10 + -0.534075 * X_11 + 0.048361 * X_12 + 0.466379 * X_13 + 0.238321 * X_14 + 0.093485 * X_15 + -5.539653 * X_16 + 5.030211 * X_17 + -0.108181 * X_18 + -1.371490 * X_19 + 0.974474 * X_20 + -0.286103 * X_21 + 0.782673 * X_22 + -13.379651 * X_23 + 0.000000 * X_24 + 4.352321 * X_25 + -0.891830 * X_26 + -0.482574 * X_27 + 0.965757 * X_28 + -1.547041 * X_29 + 1.191577 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -0.214215 * X_33 + 0.862745 * X_34 + -0.423444 * X_35 + 0.452114 * X_36 + 0.167784 * X_37 + 0.026023 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -2.575248 * X_41 + 0.638339 * X_42 + 1.670173 * X_43 + -0.381867 * X_44 + 1.538266 * X_45 + 0.821148 * X_46 + 0.000000 * X_47 + 7.464957 * X_48 + 2.162375 * X_49 + 0.498176 * X_50 + -0.705643 * X_51 + 1.373539 * X_52 + -1.696441 * X_53 + -0.209802 * X_54 + -0.709353 * X_55 + 23.914639 * X_56 + -10.270124 * X_57 + -6.198964 * X_58 + 0.016234 * X_59 + -0.633841 * X_60 + 1.080962 * X_61 + 1.530108 * X_62 + -1.295396 * X_63 AS "Score_5", CAST(NULL AS FLOAT) AS "Proba_5", CAST(NULL AS FLOAT) AS "LogProba_5",
   -20.424404 + 0.000000 * X_0 + 5.082394 * X_1 + -5.673357 * X_2 + 0.953765 * X_3 + 0.243988 * X_4 + 0.031496 * X_5 + -0.573309 * X_6 + 1.080427 * X_7 + 4.752993 * X_8 + 0.935205 * X_9 + 2.572768 * X_10 + 0.228015 * X_11 + -0.280464 * X_12 + -0.170653 * X_13 + -0.624620 * X_14 + 4.485555 * X_15 + 7.138270 * X_16 + -5.670537 * X_17 + -1.982654 * X_18 + 1.654324 * X_19 + 0.838486 * X_20 + 1.538881 * X_21 + -1.248466 * X_22 + -9.825907 * X_23 + 0.000000 * X_24 + 2.327991 * X_25 + 2.775210 * X_26 + 0.521333 * X_27 + -2.252542 * X_28 + 0.400475 * X_29 + 0.801436 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -3.406774 * X_33 + -1.978496 * X_34 + 1.158531 * X_35 + 0.530551 * X_36 + -0.063829 * X_37 + 0.278092 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 2.246207 * X_41 + 0.674143 * X_42 + -1.918411 * X_43 + 0.182529 * X_44 + -1.335107 * X_45 + -0.070472 * X_46 + 0.000000 * X_47 + -3.733838 * X_48 + -1.574205 * X_49 + -1.505305 * X_50 + -0.070643 * X_51 + -0.234628 * X_52 + 0.492636 * X_53 + 1.226343 * X_54 + -0.253779 * X_55 + -10.018894 * X_56 + 12.308145 * X_57 + 3.720962 * X_58 + -0.135878 * X_59 + 1.366297 * X_60 + -1.291163 * X_61 + -0.740781 * X_62 + -1.112625 * X_63 AS "Score_6", CAST(NULL AS FLOAT) AS "Proba_6", CAST(NULL AS FLOAT) AS "LogProba_6",
   0.953847 + 0.000000 * X_0 + 2.814344 * X_1 + -2.129237 * X_2 + -0.720005 * X_3 + 0.622272 * X_4 + -0.918206 * X_5 + 0.698176 * X_6 + 0.878397 * X_7 + 6.876025 * X_8 + 2.312027 * X_9 + 1.403149 * X_10 + 0.637075 * X_11 + -1.115827 * X_12 + -0.001739 * X_13 + -1.270175 * X_14 + -7.675356 * X_15 + 11.722459 * X_16 + -5.113575 * X_17 + -0.518471 * X_18 + 1.112572 * X_19 + -0.112302 * X_20 + 0.994867 * X_21 + 0.402518 * X_22 + -10.767503 * X_23 + 0.000000 * X_24 + -0.064979 * X_25 + 0.561318 * X_26 + 1.218526 * X_27 + -1.572348 * X_28 + 0.569860 * X_29 + -0.791153 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -0.551574 * X_33 + -0.509525 * X_34 + 0.448312 * X_35 + 0.969867 * X_36 + 0.418231 * X_37 + 0.811551 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 1.632758 * X_41 + -0.737731 * X_42 + -0.918413 * X_43 + -0.139817 * X_44 + -1.464448 * X_45 + -0.243235 * X_46 + 0.000000 * X_47 + 2.298743 * X_48 + -2.395185 * X_49 + 0.026118 * X_50 + 0.161456 * X_51 + -1.177631 * X_52 + 0.719713 * X_53 + -1.177506 * X_54 + 0.242669 * X_55 + 7.909637 * X_56 + 4.276649 * X_57 + 1.598305 * X_58 + 0.155657 * X_59 + 0.954279 * X_60 + -0.826971 * X_61 + -0.204653 * X_62 + -2.054453 * X_63 AS "Score_7", CAST(NULL AS FLOAT) AS "Proba_7", CAST(NULL AS FLOAT) AS "LogProba_7",
   8.925086 + 0.000000 * X_0 + -9.274024 * X_1 + 1.702325 * X_2 + -2.038422 * X_3 + -0.741528 * X_4 + -0.316742 * X_5 + 0.089714 * X_6 + -1.620123 * X_7 + -6.917729 * X_8 + -0.829063 * X_9 + -0.615438 * X_10 + 0.110958 * X_11 + -0.334440 * X_12 + 0.381537 * X_13 + 0.903472 * X_14 + -3.260460 * X_15 + 4.769972 * X_16 + 5.106354 * X_17 + 1.125285 * X_18 + -0.258179 * X_19 + -0.693037 * X_20 + -1.199448 * X_21 + 0.352182 * X_22 + 5.726140 * X_23 + 0.000000 * X_24 + -4.265100 * X_25 + -1.754177 * X_26 + -0.294508 * X_27 + 1.098533 * X_28 + 0.241369 * X_29 + -0.032347 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 4.577151 * X_33 + 0.250060 * X_34 + 0.636489 * X_35 + 0.494747 * X_36 + -0.254518 * X_37 + -0.268434 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -0.549478 * X_41 + -1.022277 * X_42 + 0.566195 * X_43 + -0.363466 * X_44 + 0.991833 * X_45 + 0.456124 * X_46 + 0.000000 * X_47 + 7.982080 * X_48 + -2.095542 * X_49 + 1.032975 * X_50 + 0.247899 * X_51 + -0.198575 * X_52 + -0.317862 * X_53 + -0.774937 * X_54 + 0.387246 * X_55 + 25.466013 * X_56 + -6.295415 * X_57 + 0.064929 * X_58 + 0.453868 * X_59 + -0.291153 * X_60 + 0.658025 * X_61 + 0.041945 * X_62 + -1.760796 * X_63 AS "Score_8", CAST(NULL AS FLOAT) AS "Proba_8", CAST(NULL AS FLOAT) AS "LogProba_8",
   6.886523 + 0.000000 * X_0 + -9.858706 * X_1 + 4.855401 * X_2 + -0.963908 * X_3 + -1.565306 * X_4 + 2.195372 * X_5 + -1.714030 * X_6 + -0.347066 * X_7 + -7.150856 * X_8 + -7.484556 * X_9 + -2.415178 * X_10 + -0.819818 * X_11 + 1.827762 * X_12 + -0.501146 * X_13 + 3.172261 * X_14 + 0.381117 * X_15 + -17.008705 * X_16 + 16.189198 * X_17 + 2.564500 * X_18 + -1.689666 * X_19 + -1.194295 * X_20 + -2.963955 * X_21 + 0.618099 * X_22 + 28.908134 * X_23 + 0.000000 * X_24 + -9.036716 * X_25 + -3.284713 * X_26 + -3.184717 * X_27 + 4.977773 * X_28 + -0.868327 * X_29 + 0.690797 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 7.499717 * X_33 + 1.344203 * X_34 + -0.027882 * X_35 + -2.624502 * X_36 + -0.363851 * X_37 + -2.842386 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -1.784108 * X_41 + -0.748030 * X_42 + 2.215521 * X_43 + 0.477606 * X_44 + 2.319445 * X_45 + 1.181884 * X_46 + 0.000000 * X_47 + 0.457619 * X_48 + 3.517662 * X_49 + 1.048381 * X_50 + 0.091651 * X_51 + 1.763894 * X_52 + -0.608453 * X_53 + 1.497888 * X_54 + -2.202321 * X_55 + 2.723392 * X_56 + -19.922804 * X_57 + -2.131600 * X_58 + 0.271551 * X_59 + -1.558814 * X_60 + 1.420563 * X_61 + 0.894125 * X_62 + 1.186564 * X_63 AS "Score_9", CAST(NULL AS FLOAT) AS "Proba_9", CAST(NULL AS FLOAT) AS "LogProba_9"
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