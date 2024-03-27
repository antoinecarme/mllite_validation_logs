WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -10.667813 + 0.000000 * X_0 + 18.878035 * X_1 + 0.192032 * X_2 + 1.871967 * X_3 + -1.046212 * X_4 + 0.291769 * X_5 + 0.712913 * X_6 + 2.818235 * X_7 + -1.773363 * X_8 + -4.480782 * X_9 + -1.351513 * X_10 + -1.620578 * X_11 + -0.060384 * X_12 + 0.413980 * X_13 + -1.700472 * X_14 + 9.890595 * X_15 + 76.507950 * X_16 + 6.866550 * X_17 + 1.065525 * X_18 + 1.011530 * X_19 + -0.777025 * X_20 + 2.728797 * X_21 + 2.607774 * X_22 + -17.245144 * X_23 + 0.000000 * X_24 + 0.786586 * X_25 + -5.046306 * X_26 + 0.568396 * X_27 + 0.249118 * X_28 + -1.072366 * X_29 + -4.409932 * X_30 + 1577.326538 * X_31 + 0.000000 * X_32 + -7.192228 * X_33 + 12.296519 * X_34 + -5.600072 * X_35 + 4.273569 * X_36 + -0.591655 * X_37 + 2.165971 * X_38 + 0.000000 * X_39 + 10.916391 * X_40 + 2.415610 * X_41 + -5.041207 * X_42 + 4.313570 * X_43 + -7.328846 * X_44 + -0.478168 * X_45 + -2.691320 * X_46 + 9.187344 * X_47 + -206.402161 * X_48 + 2.657359 * X_49 + 0.889673 * X_50 + -1.789968 * X_51 + 2.955085 * X_52 + -1.961274 * X_53 + 1.353789 * X_54 + -3.920896 * X_55 + 576.134399 * X_56 + -11.461825 * X_57 + -0.176901 * X_58 + -0.481992 * X_59 + 4.563602 * X_60 + -2.531892 * X_61 + 0.720342 * X_62 + 2.002728 * X_63 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -33.911686 + 0.000000 * X_0 + 1.173197 * X_1 + -0.515795 * X_2 + 0.081601 * X_3 + -0.253098 * X_4 + 0.311827 * X_5 + 0.433083 * X_6 + -0.662148 * X_7 + 4.880829 * X_8 + 0.411749 * X_9 + 0.802929 * X_10 + -0.562338 * X_11 + 0.281880 * X_12 + -0.068569 * X_13 + -1.077133 * X_14 + 4.977063 * X_15 + -15.847053 * X_16 + -1.187354 * X_17 + 0.176881 * X_18 + -0.081438 * X_19 + -0.259058 * X_20 + 0.522505 * X_21 + 1.230039 * X_22 + -7.836740 * X_23 + 0.000000 * X_24 + 0.804751 * X_25 + -0.909328 * X_26 + -0.017041 * X_27 + 0.682027 * X_28 + -0.573136 * X_29 + -0.373929 * X_30 + 1357.385254 * X_31 + 0.000000 * X_32 + -1.053325 * X_33 + 2.476892 * X_34 + -0.306835 * X_35 + -0.696973 * X_36 + 0.537591 * X_37 + 0.162086 * X_38 + 0.000000 * X_39 + -7.481501 * X_40 + 0.922374 * X_41 + -1.187711 * X_42 + 0.131556 * X_43 + 1.881319 * X_44 + -0.525198 * X_45 + 0.905857 * X_46 + -2.107225 * X_47 + -169.250549 * X_48 + -0.722720 * X_49 + 0.560776 * X_50 + 0.433102 * X_51 + -0.587997 * X_52 + 0.590716 * X_53 + -0.557719 * X_54 + -1.664496 * X_55 + 518.701904 * X_56 + 2.036465 * X_57 + 0.535303 * X_58 + -0.492430 * X_59 + 1.216034 * X_60 + -0.313157 * X_61 + 0.568025 * X_62 + 0.182152 * X_63 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -14.394427 + 0.000000 * X_0 + -32.244511 * X_1 + -1.201782 * X_2 + -4.725904 * X_3 + -0.420395 * X_4 + 1.974438 * X_5 + -0.164826 * X_6 + -1.391617 * X_7 + -21.462685 * X_8 + 2.502654 * X_9 + 1.063418 * X_10 + 1.613957 * X_11 + -1.740077 * X_12 + -0.338277 * X_13 + 0.155853 * X_14 + -6.500203 * X_15 + -4.509408 * X_16 + -6.800668 * X_17 + -2.317351 * X_18 + -1.939696 * X_19 + 2.770518 * X_20 + -4.562330 * X_21 + -6.898694 * X_22 + 27.174452 * X_23 + 0.000000 * X_24 + -2.943148 * X_25 + 9.133604 * X_26 + -1.289084 * X_27 + -1.642485 * X_28 + 2.846350 * X_29 + 8.905546 * X_30 + -2433.064941 * X_31 + 0.000000 * X_32 + 15.516557 * X_33 + -25.460964 * X_34 + 10.186348 * X_35 + -3.981262 * X_36 + -0.582246 * X_37 + -2.230048 * X_38 + 0.000000 * X_39 + 6.435280 * X_40 + -10.125417 * X_41 + 13.285189 * X_42 + -9.769486 * X_43 + 6.536068 * X_44 + 3.646523 * X_45 + 0.113915 * X_46 + -7.728550 * X_47 + 320.335968 * X_48 + -3.292485 * X_49 + -7.162904 * X_50 + 10.990226 * X_51 + -3.985623 * X_52 + -2.399631 * X_53 + -0.696849 * X_54 + 15.349003 * X_55 + -905.522888 * X_56 + -0.484834 * X_57 + 8.745758 * X_58 + -1.904263 * X_59 + 5.134812 * X_60 + 2.494293 * X_61 + -3.094534 * X_62 + -9.220943 * X_63 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   -2.590875 + 0.000000 * X_0 + -12.161092 * X_1 + -0.592004 * X_2 + -1.292781 * X_3 + -0.205691 * X_4 + 0.942817 * X_5 + -0.286023 * X_6 + -0.997440 * X_7 + -8.432846 * X_8 + 1.492157 * X_9 + 0.554168 * X_10 + 1.163090 * X_11 + -0.495499 * X_12 + 0.070734 * X_13 + -0.034004 * X_14 + -2.009450 * X_15 + 4.103448 * X_16 + -3.730971 * X_17 + -1.005838 * X_18 + -0.869537 * X_19 + 1.198177 * X_20 + -1.837383 * X_21 + -2.844716 * X_22 + 9.269424 * X_23 + 0.000000 * X_24 + -0.544126 * X_25 + 3.652635 * X_26 + -0.222804 * X_27 + -1.101771 * X_28 + 1.130700 * X_29 + 3.491622 * X_30 + 808.572998 * X_31 + 0.000000 * X_32 + 5.416847 * X_33 + -10.091775 * X_34 + 3.975989 * X_35 + -1.206217 * X_36 + -0.277982 * X_37 + -0.927022 * X_38 + 0.000000 * X_39 + 1.087562 * X_40 + -3.339087 * X_41 + 5.031242 * X_42 + -3.592779 * X_43 + 2.401041 * X_44 + 1.163811 * X_45 + -0.010781 * X_46 + -1.583536 * X_47 + -92.147499 * X_48 + -1.994089 * X_49 + -2.539665 * X_50 + 3.005401 * X_51 + -1.653989 * X_52 + -0.710209 * X_53 + 0.105154 * X_54 + 4.908568 * X_55 + 303.928589 * X_56 + 1.025597 * X_57 + 3.048303 * X_58 + -1.062057 * X_59 + 2.285363 * X_60 + -0.002886 * X_61 + -0.664727 * X_62 + -2.876130 * X_63 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3",
   -82.257477 + 0.000000 * X_0 + 28.043184 * X_1 + 0.454451 * X_2 + 4.270342 * X_3 + -1.412622 * X_4 + 0.098120 * X_5 + 1.434203 * X_6 + -0.832500 * X_7 + -0.184408 * X_8 + 2.074442 * X_9 + 0.004449 * X_10 + -2.250694 * X_11 + 1.470554 * X_12 + 1.207288 * X_13 + -3.920323 * X_14 + 24.685867 * X_15 + 32.315861 * X_16 + 1.852939 * X_17 + 2.586710 * X_18 + 1.147580 * X_19 + -2.499784 * X_20 + 4.996386 * X_21 + 7.778790 * X_22 + -46.276043 * X_23 + 0.000000 * X_24 + 6.106187 * X_25 + -10.199819 * X_26 + 1.373385 * X_27 + 2.284433 * X_28 + -3.280387 * X_29 + -7.955536 * X_30 + -10166.122070 * X_31 + 0.000000 * X_32 + -15.118145 * X_33 + 25.636429 * X_34 + -9.114505 * X_35 + 3.096729 * X_36 + 1.340217 * X_37 + 2.604433 * X_38 + 0.000000 * X_39 + -15.753454 * X_40 + 9.249578 * X_41 + -12.498834 * X_42 + 8.670420 * X_43 + -3.030735 * X_44 + -3.686673 * X_45 + 1.450085 * X_46 + 7.355199 * X_47 + 1260.645996 * X_48 + 1.580166 * X_49 + 5.749480 * X_50 + -6.817461 * X_51 + 1.940456 * X_52 + 2.048951 * X_53 + -0.380465 * X_54 + -15.137831 * X_55 + -3818.909912 * X_56 + -0.938026 * X_57 + -4.714076 * X_58 + -1.266312 * X_59 + 3.893996 * X_60 + -6.005783 * X_61 + 5.429273 * X_62 + 6.830184 * X_63 AS "Score_4", CAST(NULL AS FLOAT) AS "Proba_4", CAST(NULL AS FLOAT) AS "LogProba_4",
   49.009472 + 0.000000 * X_0 + 13.318373 * X_1 + 4.547533 * X_2 + 1.844990 * X_3 + 1.754928 * X_4 + -2.438678 * X_5 + -1.603781 * X_6 + 1.893367 * X_7 + -0.142788 * X_8 + -4.870926 * X_9 + -1.789140 * X_10 + 0.746938 * X_11 + 0.285075 * X_12 + -0.469964 * X_13 + 4.558456 * X_14 + -10.495205 * X_15 + -25.526592 * X_16 + 10.697598 * X_17 + 0.091182 * X_18 + 0.964307 * X_19 + -1.571653 * X_20 + 0.387776 * X_21 + -0.186876 * X_22 + 10.817783 * X_23 + 0.000000 * X_24 + -3.584306 * X_25 + -2.511770 * X_26 + -0.373407 * X_27 + 1.474817 * X_28 + -0.129029 * X_29 + -2.952621 * X_30 + 1921.615723 * X_31 + 0.000000 * X_32 + -2.980677 * X_33 + 7.580942 * X_34 + -3.531459 * X_35 + 0.324863 * X_36 + 0.438369 * X_37 + -0.112682 * X_38 + 0.000000 * X_39 + 9.695226 * X_40 + 1.709250 * X_41 + -4.163080 * X_42 + 3.618037 * X_43 + -1.493612 * X_44 + -1.275249 * X_45 + 1.102586 * X_46 + -4.082738 * X_47 + -252.766037 * X_48 + 4.266489 * X_49 + 4.326984 * X_50 + -6.442471 * X_51 + 2.409524 * X_52 + 1.507828 * X_53 + -0.927015 * X_54 + -3.601047 * X_55 + 740.013672 * X_56 + -2.494922 * X_57 + -9.310136 * X_58 + 3.230072 * X_59 + -9.650678 * X_60 + 2.918875 * X_61 + -0.107306 * X_62 + 1.923654 * X_63 AS "Score_5", CAST(NULL AS FLOAT) AS "Proba_5", CAST(NULL AS FLOAT) AS "LogProba_5",
   -85.337715 + 0.000000 * X_0 + 23.245731 * X_1 + 1.098491 * X_2 + 1.951160 * X_3 + -2.016117 * X_4 + 0.675276 * X_5 + 2.724201 * X_6 + 0.594328 * X_7 + -0.579546 * X_8 + 1.470563 * X_9 + -1.049762 * X_10 + -3.775181 * X_11 + 0.539371 * X_12 + 1.076496 * X_13 + -5.465947 * X_14 + 26.600313 * X_15 + 73.166954 * X_16 + 1.861428 * X_17 + 3.244049 * X_18 + 1.498196 * X_19 + -1.478031 * X_20 + 5.308688 * X_21 + 7.788473 * X_22 + -47.309383 * X_23 + 0.000000 * X_24 + 5.049487 * X_25 + -9.745840 * X_26 + 1.181336 * X_27 + 1.292758 * X_28 + -2.786190 * X_29 + -7.548892 * X_30 + 1470.493530 * X_31 + 0.000000 * X_32 + -14.017123 * X_33 + 24.083042 * X_34 + -8.249711 * X_35 + 4.975583 * X_36 + -0.054563 * X_37 + 3.822124 * X_38 + 0.000000 * X_39 + -8.965087 * X_40 + 8.447219 * X_41 + -10.998994 * X_42 + 6.900334 * X_43 + -7.544169 * X_44 + -1.603605 * X_45 + -1.925471 * X_46 + 10.871085 * X_47 + -196.364944 * X_48 + 1.225648 * X_49 + 2.307867 * X_50 + -1.148726 * X_51 + 2.158243 * X_52 + -0.913464 * X_53 + 0.387066 * X_54 + -10.739718 * X_55 + 552.434326 * X_56 + -8.093278 * X_57 + -1.110285 * X_58 + -0.915674 * X_59 + 8.558196 * X_60 + -5.006227 * X_61 + 3.253439 * X_62 + 4.662748 * X_63 AS "Score_6", CAST(NULL AS FLOAT) AS "Proba_6", CAST(NULL AS FLOAT) AS "LogProba_6",
   188.409332 + 0.000000 * X_0 + -16.451387 * X_1 + 3.639192 * X_2 + -2.042408 * X_3 + 5.468720 * X_4 + -6.235234 * X_5 + -0.431727 * X_6 + -1.187223 * X_7 + 76.185326 * X_8 + 7.460367 * X_9 + -1.393878 * X_10 + 0.273215 * X_11 + 0.714094 * X_12 + -1.842325 * X_13 + 5.889702 * X_14 + -38.613403 * X_15 + -191.460785 * X_16 + -11.088870 * X_17 + 2.252155 * X_18 + -0.735452 * X_19 + -0.266861 * X_20 + -1.143004 * X_21 + 2.415701 * X_22 + 31.140909 * X_23 + 0.000000 * X_24 + 3.246598 * X_25 + 2.866986 * X_26 + 1.865722 * X_27 + -0.488482 * X_28 + -1.076335 * X_29 + 0.393943 * X_30 + 1560.153442 * X_31 + 0.000000 * X_32 + 0.822959 * X_33 + -4.693960 * X_34 + 0.074321 * X_35 + -3.740636 * X_36 + -0.087165 * X_37 + -1.681742 * X_38 + 0.000000 * X_39 + -8.440630 * X_40 + 4.530141 * X_41 + -0.199049 * X_42 + -0.052917 * X_43 + 2.023525 * X_44 + -0.594884 * X_45 + 1.243683 * X_46 + -10.574892 * X_47 + -205.377899 * X_48 + 0.232686 * X_49 + 2.400839 * X_50 + -4.957135 * X_51 + 1.621309 * X_52 + 5.487844 * X_53 + -0.117468 * X_54 + -4.121412 * X_55 + 605.132202 * X_56 + 27.593460 * X_57 + -11.010762 * X_58 + 7.291575 * X_59 + -26.839930 * X_60 + 10.028391 * X_61 + -3.160353 * X_62 + 5.555415 * X_63 AS "Score_7", CAST(NULL AS FLOAT) AS "Proba_7", CAST(NULL AS FLOAT) AS "LogProba_7",
   -22.763208 + 0.000000 * X_0 + -5.593102 * X_1 + -1.830008 * X_2 + -0.759108 * X_3 + -0.629718 * X_4 + 1.239974 * X_5 + -0.762677 * X_6 + -0.957695 * X_7 + -20.866241 * X_8 + -1.533241 * X_9 + 1.168286 * X_10 + 1.131966 * X_11 + -0.110895 * X_12 + 0.239520 * X_13 + 0.341589 * X_14 + 0.455638 * X_15 + 8.388580 * X_16 + 1.597641 * X_17 + -1.748723 * X_18 + 0.021605 * X_19 + 0.496891 * X_20 + -1.896886 * X_21 + -3.191045 * X_22 + 10.134085 * X_23 + 0.000000 * X_24 + -3.137089 * X_25 + 2.911709 * X_26 + -1.221482 * X_27 + -0.210801 * X_28 + 1.558650 * X_29 + 2.576045 * X_30 + 1749.572021 * X_31 + 0.000000 * X_32 + 5.589538 * X_33 + -7.934243 * X_34 + 3.986135 * X_35 + -1.594232 * X_36 + 0.279312 * X_37 + -1.300726 * X_38 + 0.000000 * X_39 + -0.174316 * X_40 + -3.538996 * X_41 + 3.794462 * X_42 + -2.766580 * X_43 + 3.409463 * X_44 + 0.537252 * X_45 + 0.961160 * X_46 + -1.344591 * X_47 + -210.489319 * X_48 + -1.121194 * X_49 + -0.999933 * X_50 + 1.861899 * X_51 + -2.277020 * X_52 + -0.146761 * X_53 + -0.385129 * X_54 + 4.953084 * X_55 + 652.039917 * X_56 + -1.423302 * X_57 + 3.113440 * X_58 + -1.083606 * X_59 + 3.273208 * X_60 + -1.337932 * X_61 + 0.053807 * X_62 + -2.594171 * X_63 AS "Score_8", CAST(NULL AS FLOAT) AS "Proba_8", CAST(NULL AS FLOAT) AS "LogProba_8",
   6.504285 + 0.000000 * X_0 + -18.208424 * X_1 + -5.792114 * X_2 + -1.199858 * X_3 + -1.239797 * X_4 + 3.139692 * X_5 + -2.055370 * X_6 + 0.722693 * X_7 + -27.624329 * X_8 + -4.527001 * X_9 + 1.991044 * X_10 + 3.279627 * X_11 + -0.884119 * X_12 + -0.288884 * X_13 + 1.252282 * X_14 + -8.991222 * X_15 + 42.861084 * X_16 + -0.068266 * X_17 + -4.344595 * X_18 + -1.017094 * X_19 + 2.386824 * X_20 + -4.504554 * X_21 + -8.699449 * X_22 + 30.130688 * X_23 + 0.000000 * X_24 + -5.784959 * X_25 + 9.848128 * X_26 + -1.865023 * X_27 + -2.539611 * X_28 + 3.381747 * X_29 + 7.873751 * X_30 + 2154.075439 * X_31 + 0.000000 * X_32 + 13.015606 * X_33 + -23.892878 * X_34 + 8.579793 * X_35 + -1.451425 * X_36 + -1.001879 * X_37 + -2.502397 * X_38 + 0.000000 * X_39 + 12.680546 * X_40 + -10.270678 * X_41 + 11.977980 * X_42 + -7.452156 * X_43 + 3.145952 * X_44 + 2.816191 * X_45 + -1.149713 * X_46 + 0.007892 * X_47 + -248.184753 * X_48 + -2.831855 * X_49 + -5.533118 * X_50 + 4.865133 * X_51 + -2.579990 * X_52 + -3.503999 * X_53 + 1.218635 * X_54 + 13.974747 * X_55 + 776.051208 * X_56 + -5.759354 * X_57 + 10.879360 * X_58 + -3.315315 * X_59 + 7.565400 * X_60 + -0.243685 * X_61 + -2.997968 * X_62 + -6.465641 * X_63 AS "Score_9", CAST(NULL AS FLOAT) AS "Proba_9", CAST(NULL AS FLOAT) AS "LogProba_9"
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