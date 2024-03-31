WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -43.158489 + 0.000000 * X_0 + 19.632570 * X_1 + -1.497880 * X_2 + 1.003589 * X_3 + 0.923052 * X_4 + 0.860025 * X_5 + -0.345810 * X_6 + -0.128569 * X_7 + 0.000000 * X_8 + 3.068665 * X_9 + 0.163576 * X_10 + -0.370190 * X_11 + 0.125932 * X_12 + -0.629184 * X_13 + -0.580049 * X_14 + 0.539003 * X_15 + 0.000000 * X_16 + -3.637224 * X_17 + 4.728627 * X_18 + -0.479570 * X_19 + -0.086604 * X_20 + -0.982034 * X_21 + -0.487607 * X_22 + 0.000000 * X_23 + 0.000000 * X_24 + -2.106989 * X_25 + -0.559134 * X_26 + 0.711718 * X_27 + -4.148492 * X_28 + 0.254058 * X_29 + -4.447741 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -0.783379 * X_33 + -0.344632 * X_34 + 2.226249 * X_35 + 0.314687 * X_36 + -1.526011 * X_37 + 0.872741 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 0.186223 * X_41 + -1.136976 * X_42 + 1.783186 * X_43 + 0.874379 * X_44 + -0.283081 * X_45 + -0.547848 * X_46 + 0.000000 * X_47 + 0.000000 * X_48 + -5.322760 * X_49 + 3.229949 * X_50 + 0.858756 * X_51 + -0.578543 * X_52 + -0.267856 * X_53 + 0.789972 * X_54 + -0.407654 * X_55 + 0.000000 * X_56 + 20.876719 * X_57 + 0.412305 * X_58 + -2.054986 * X_59 + 1.666284 * X_60 + -0.209945 * X_61 + 0.550333 * X_62 + -0.337834 * X_63 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -28.158890 + 0.000000 * X_0 + -13.867838 * X_1 + 7.810869 * X_2 + -0.262935 * X_3 + 0.304572 * X_4 + 1.077815 * X_5 + 0.863464 * X_6 + 1.023539 * X_7 + 0.000000 * X_8 + -1.539509 * X_9 + -0.911787 * X_10 + 0.182737 * X_11 + -0.236336 * X_12 + 0.125823 * X_13 + 0.304622 * X_14 + 3.687079 * X_15 + 0.000000 * X_16 + 1.702952 * X_17 + -1.317002 * X_18 + 4.234421 * X_19 + -0.144494 * X_20 + 0.917906 * X_21 + 0.491232 * X_22 + 0.000000 * X_23 + 0.000000 * X_24 + 3.239829 * X_25 + -1.029766 * X_26 + -0.747394 * X_27 + 1.967162 * X_28 + -3.182262 * X_29 + 2.841766 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 0.047894 * X_33 + -0.570636 * X_34 + -0.545492 * X_35 + -0.523701 * X_36 + 0.631097 * X_37 + -0.316824 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 0.157579 * X_41 + -0.171311 * X_42 + -0.866722 * X_43 + -0.568119 * X_44 + 0.233044 * X_45 + 1.458899 * X_46 + 0.000000 * X_47 + 0.000000 * X_48 + -0.045284 * X_49 + -1.492940 * X_50 + 1.318399 * X_51 + -0.651791 * X_52 + 0.600391 * X_53 + -0.339866 * X_54 + -14.202880 * X_55 + 0.000000 * X_56 + -13.038352 * X_57 + -0.595456 * X_58 + 1.184803 * X_59 + -0.753825 * X_60 + 1.135951 * X_61 + -1.387271 * X_62 + -2.449749 * X_63 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   34.747604 + 0.000000 * X_0 + -8.919848 * X_1 + -4.586308 * X_2 + 2.012600 * X_3 + -0.754928 * X_4 + -0.836670 * X_5 + 0.409335 * X_6 + -1.379739 * X_7 + 0.000000 * X_8 + 0.647079 * X_9 + -0.366694 * X_10 + -0.152832 * X_11 + 0.431037 * X_12 + 0.627368 * X_13 + 1.861337 * X_14 + -3.830960 * X_15 + 0.000000 * X_16 + 2.533419 * X_17 + -3.854491 * X_18 + 0.874815 * X_19 + 0.228456 * X_20 + -0.246836 * X_21 + -0.744458 * X_22 + 0.000000 * X_23 + 0.000000 * X_24 + 0.867679 * X_25 + 0.863951 * X_26 + -0.054376 * X_27 + -1.524467 * X_28 + 0.154151 * X_29 + -1.271524 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -0.682177 * X_33 + 0.221160 * X_34 + -0.538860 * X_35 + -0.165292 * X_36 + 0.693949 * X_37 + -0.146965 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -1.244849 * X_41 + -0.328832 * X_42 + -1.071534 * X_43 + 0.106222 * X_44 + 1.258921 * X_45 + 0.436118 * X_46 + 0.000000 * X_47 + 0.000000 * X_48 + 4.540814 * X_49 + 0.333357 * X_50 + 0.157692 * X_51 + -0.219837 * X_52 + -0.089720 * X_53 + -0.019389 * X_54 + 5.754574 * X_55 + 0.000000 * X_56 + -8.505154 * X_57 + 1.959763 * X_58 + 0.199088 * X_59 + -1.017744 * X_60 + 0.696026 * X_61 + -0.931326 * X_62 + 1.360002 * X_63 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   51.005718 + 0.000000 * X_0 + -8.939165 * X_1 + 2.449948 * X_2 + -0.726363 * X_3 + 0.074482 * X_4 + -0.006229 * X_5 + 0.066524 * X_6 + -0.640546 * X_7 + 0.000000 * X_8 + -2.294885 * X_9 + 1.409464 * X_10 + -0.004478 * X_11 + -0.527920 * X_12 + 0.434871 * X_13 + -0.030244 * X_14 + -1.613408 * X_15 + 0.000000 * X_16 + 1.775068 * X_17 + -3.217394 * X_18 + -0.732023 * X_19 + 0.029790 * X_20 + 0.033243 * X_21 + -0.114384 * X_22 + 0.000000 * X_23 + 0.000000 * X_24 + 2.056089 * X_25 + 0.597105 * X_26 + -0.356004 * X_27 + 1.057473 * X_28 + -0.886606 * X_29 + 1.898637 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 0.359551 * X_33 + 0.129470 * X_34 + -0.628720 * X_35 + -0.033115 * X_36 + 0.374511 * X_37 + -0.597790 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -0.439899 * X_41 + 0.578630 * X_42 + -0.225112 * X_43 + -0.474393 * X_44 + -0.698230 * X_45 + 0.024491 * X_46 + 0.000000 * X_47 + 0.000000 * X_48 + 3.306078 * X_49 + -0.825879 * X_50 + -1.066698 * X_51 + 0.046715 * X_52 + -0.805926 * X_53 + -0.510395 * X_54 + -0.143496 * X_55 + 0.000000 * X_56 + -8.524449 * X_57 + -1.213671 * X_58 + 0.500393 * X_59 + -0.099980 * X_60 + -0.274701 * X_61 + 0.028244 * X_62 + -0.114515 * X_63 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3",
   44.265545 + 0.000000 * X_0 + 5.903325 * X_1 + -6.123075 * X_2 + 2.581363 * X_3 + -0.782294 * X_4 + -0.573270 * X_5 + 0.017516 * X_6 + -0.322995 * X_7 + 0.000000 * X_8 + -0.319155 * X_9 + -1.222328 * X_10 + -0.192419 * X_11 + -0.373400 * X_12 + 0.810729 * X_13 + 0.289448 * X_14 + -0.660734 * X_15 + 0.000000 * X_16 + 2.423113 * X_17 + -0.364018 * X_18 + 1.183649 * X_19 + 0.015559 * X_20 + 1.137209 * X_21 + 0.295846 * X_22 + 0.000000 * X_23 + 0.000000 * X_24 + -0.015388 * X_25 + 0.080360 * X_26 + 0.260006 * X_27 + -1.341312 * X_28 + -1.691519 * X_29 + -1.468088 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -2.619165 * X_33 + -0.229035 * X_34 + 0.303698 * X_35 + -0.055896 * X_36 + -0.516568 * X_37 + 0.289330 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 1.495674 * X_41 + -0.102928 * X_42 + -0.721968 * X_43 + -0.205725 * X_44 + 0.110031 * X_45 + 0.219050 * X_46 + 0.000000 * X_47 + 0.000000 * X_48 + -3.707443 * X_49 + -0.830721 * X_50 + -1.274960 * X_51 + -0.193607 * X_52 + -0.144070 * X_53 + 0.718021 * X_54 + 1.790203 * X_55 + 0.000000 * X_56 + 6.317941 * X_57 + 1.884587 * X_58 + -0.576269 * X_59 + 0.881253 * X_60 + -0.106226 * X_61 + -0.026524 * X_62 + 0.368911 * X_63 AS "Score_4", CAST(NULL AS FLOAT) AS "Proba_4", CAST(NULL AS FLOAT) AS "LogProba_4",
   138.517166 + 0.000000 * X_0 + -7.581316 * X_1 + -11.311668 * X_2 + -1.711746 * X_3 + -0.653131 * X_4 + -1.693564 * X_5 + -0.943669 * X_6 + -1.261563 * X_7 + 0.000000 * X_8 + 1.275109 * X_9 + 0.318981 * X_10 + -0.198807 * X_11 + 0.386508 * X_12 + -0.277252 * X_13 + -0.636071 * X_14 + -7.791733 * X_15 + 0.000000 * X_16 + 2.930969 * X_17 + -2.879639 * X_18 + -2.387623 * X_19 + 0.321762 * X_20 + -0.162699 * X_21 + -0.030661 * X_22 + 0.000000 * X_23 + 0.000000 * X_24 + -0.727057 * X_25 + -0.182197 * X_26 + 1.104478 * X_27 + -1.438622 * X_28 + 1.888850 * X_29 + 0.194536 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -0.963977 * X_33 + 0.225004 * X_34 + -0.833723 * X_35 + -0.343251 * X_36 + -0.446250 * X_37 + 1.065260 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -1.530908 * X_41 + 0.279945 * X_42 + -1.856295 * X_43 + -0.802241 * X_44 + 0.290558 * X_45 + 0.819057 * X_46 + 0.000000 * X_47 + 0.000000 * X_48 + 12.202333 * X_49 + -3.387255 * X_50 + -0.527496 * X_51 + 1.459877 * X_52 + 3.153577 * X_53 + 2.979064 * X_54 + 9.865434 * X_55 + 0.000000 * X_56 + -6.337293 * X_57 + 1.837969 * X_58 + 1.564008 * X_59 + -2.785338 * X_60 + -3.810443 * X_61 + 2.635870 * X_62 + 2.230439 * X_63 AS "Score_5", CAST(NULL AS FLOAT) AS "Proba_5", CAST(NULL AS FLOAT) AS "LogProba_5",
   -10.779532 + 0.000000 * X_0 + 18.209957 * X_1 + -2.110596 * X_2 + -0.914124 * X_3 + 0.225634 * X_4 + 0.675203 * X_5 + 0.256769 * X_6 + 1.155926 * X_7 + 0.000000 * X_8 + 1.494827 * X_9 + 0.495336 * X_10 + -0.328071 * X_11 + -0.352368 * X_12 + -0.052976 * X_13 + -0.680209 * X_14 + 4.084245 * X_15 + 0.000000 * X_16 + -1.892001 * X_17 + 3.484683 * X_18 + -0.867150 * X_19 + -0.108588 * X_20 + 0.050611 * X_21 + -0.320324 * X_22 + 0.000000 * X_23 + 0.000000 * X_24 + -1.864759 * X_25 + -0.691067 * X_26 + -0.439267 * X_27 + 2.229364 * X_28 + -1.579019 * X_29 + 1.596220 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 1.402406 * X_33 + -0.613978 * X_34 + -0.375822 * X_35 + 0.052947 * X_36 + 0.386410 * X_37 + -1.570449 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 1.880685 * X_41 + 0.255342 * X_42 + 0.208323 * X_43 + 0.091794 * X_44 + -1.204298 * X_45 + -0.094026 * X_46 + 0.000000 * X_47 + 0.000000 * X_48 + -5.895102 * X_49 + 0.132221 * X_50 + 0.263336 * X_51 + 0.326088 * X_52 + -0.020342 * X_53 + 0.267636 * X_54 + 0.166686 * X_55 + 0.000000 * X_56 + 19.039223 * X_57 + -0.094112 * X_58 + -0.651545 * X_59 + 1.043190 * X_60 + -0.390612 * X_61 + 0.535501 * X_62 + -0.115609 * X_63 AS "Score_6", CAST(NULL AS FLOAT) AS "Proba_6", CAST(NULL AS FLOAT) AS "LogProba_6",
   -192.439148 + 0.000000 * X_0 + -4.437694 * X_1 + 15.368718 * X_2 + -1.982383 * X_3 + 0.662612 * X_4 + 0.496689 * X_5 + -0.324129 * X_6 + 1.553946 * X_7 + 0.000000 * X_8 + -2.332130 * X_9 + 0.113450 * X_10 + 1.064060 * X_11 + 0.546547 * X_12 + -1.039379 * X_13 + -0.528834 * X_14 + 5.586504 * X_15 + 0.000000 * X_16 + -5.836297 * X_17 + 3.419236 * X_18 + -1.826518 * X_19 + -0.255881 * X_20 + -0.747401 * X_21 + 0.910356 * X_22 + 0.000000 * X_23 + 0.000000 * X_24 + -1.449404 * X_25 + 0.920748 * X_26 + -0.479161 * X_27 + 3.198895 * X_28 + 5.042346 * X_29 + 0.656192 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 3.238847 * X_33 + 1.182647 * X_34 + 0.392672 * X_35 + 0.753621 * X_36 + 0.402864 * X_37 + 0.404699 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -0.504504 * X_41 + 0.626129 * X_42 + 2.750122 * X_43 + 0.978084 * X_44 + 0.293054 * X_45 + -2.315740 * X_46 + 0.000000 * X_47 + 0.000000 * X_48 + -5.078635 * X_49 + 2.841266 * X_50 + 0.270971 * X_51 + -0.188901 * X_52 + -2.426054 * X_53 + -3.885043 * X_54 + -2.822866 * X_55 + 0.000000 * X_56 + -9.828636 * X_57 + -4.191386 * X_58 + -0.165493 * X_59 + 1.066162 * X_60 + 2.959950 * X_61 + -1.404826 * X_62 + -0.941644 * X_63 AS "Score_7", CAST(NULL AS FLOAT) AS "Proba_7", CAST(NULL AS FLOAT) AS "LogProba_7"
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
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX(t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1.*,
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" + t1."Exp_Score_4" + t1."Exp_Score_5" + t1."Exp_Score_6" + t1."Exp_Score_7" ) AS "Sum_Exp"
  FROM
   ( SELECT t.*,
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2",
        EXP(t."Score_3" - t."Greatest_Score") as "Exp_Score_3",
        EXP(t."Score_4" - t."Greatest_Score") as "Exp_Score_4",
        EXP(t."Score_5" - t."Greatest_Score") as "Exp_Score_5",
        EXP(t."Score_6" - t."Greatest_Score") as "Exp_Score_6",
        EXP(t."Score_7" - t."Greatest_Score") as "Exp_Score_7"
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
    t1."Score_7" AS "Score_7"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3", t."Proba_4", t."Proba_5", t."Proba_6", t."Proba_7" ) AS "Max_Proba"
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
   CASE WHEN(t."Proba_7" = t."Max_Proba") THEN 7 else NULL END AS "max_idx_7"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3", t."max_idx_4", t."max_idx_5", t."max_idx_6", t."max_idx_7" ) AS argmax_class_idx
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
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte