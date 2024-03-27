WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -88.920708 + 0.000000 * X_0 + -0.670542 * X_1 + 1.494337 * X_2 + -1.967057 * X_3 + 1.787967 * X_4 + -0.171395 * X_5 + 0.765676 * X_6 + -3.831491 * X_7 + 216.065247 * X_8 + -2.944030 * X_9 + 4.050449 * X_10 + 0.841328 * X_11 + -0.235677 * X_12 + -2.543662 * X_13 + 0.384616 * X_14 + -5.038517 * X_15 + 0.000000 * X_16 + -3.134061 * X_17 + -12.750689 * X_18 + 0.066160 * X_19 + 0.642989 * X_20 + -0.773117 * X_21 + -0.145753 * X_22 + -27.830935 * X_23 + 145.524597 * X_24 + -10.324579 * X_25 + 20.856518 * X_26 + -5.032118 * X_27 + 3.506390 * X_28 + -0.225119 * X_29 + 0.297108 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -2.004924 * X_33 + -8.328835 * X_34 + 4.155736 * X_35 + -3.764796 * X_36 + 3.243381 * X_37 + -0.495915 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 1.954607 * X_41 + 5.253123 * X_42 + -0.014583 * X_43 + 3.363061 * X_44 + -8.567188 * X_45 + -3.488415 * X_46 + 24.421045 * X_47 + -216.940430 * X_48 + 6.123938 * X_49 + -2.487543 * X_50 + 0.700022 * X_51 + -3.824208 * X_52 + 14.521391 * X_53 + 0.684159 * X_54 + 10.322698 * X_55 + 574.409790 * X_56 + 6.469813 * X_57 + -1.206468 * X_58 + 4.756980 * X_59 + -0.485347 * X_60 + -4.413680 * X_61 + -2.042284 * X_62 + -5.974003 * X_63 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -50.263561 + 0.000000 * X_0 + 8.151122 * X_1 + -1.665352 * X_2 + -0.070257 * X_3 + 0.557282 * X_4 + -0.209255 * X_5 + 0.896912 * X_6 + -2.794767 * X_7 + 92.732460 * X_8 + -10.315034 * X_9 + 3.725957 * X_10 + -0.206484 * X_11 + -0.133330 * X_12 + -1.252992 * X_13 + -0.675082 * X_14 + 1.349184 * X_15 + 0.000000 * X_16 + 2.528379 * X_17 + -5.658077 * X_18 + 0.421263 * X_19 + 0.290177 * X_20 + -0.433747 * X_21 + -0.174707 * X_22 + -13.264377 * X_23 + 33.668163 * X_24 + -4.820603 * X_25 + 7.581563 * X_26 + -1.095691 * X_27 + 0.205615 * X_28 + -0.284091 * X_29 + -0.172327 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -0.594353 * X_33 + -2.672357 * X_34 + 1.168944 * X_35 + -0.177168 * X_36 + 1.349190 * X_37 + 0.132614 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 1.391322 * X_41 + 0.964040 * X_42 + -0.072281 * X_43 + 0.651475 * X_44 + -2.724636 * X_45 + 0.400445 * X_46 + -21.652065 * X_47 + -206.015945 * X_48 + 1.418052 * X_49 + -0.884384 * X_50 + 0.305977 * X_51 + -0.628966 * X_52 + 4.402823 * X_53 + -4.339681 * X_54 + 12.911869 * X_55 + 632.919189 * X_56 + -0.172463 * X_57 + 1.713102 * X_58 + 2.118294 * X_59 + -0.399462 * X_60 + 0.871159 * X_61 + 2.097271 * X_62 + -9.934914 * X_63 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   93.202560 + 0.000000 * X_0 + 2.915261 * X_1 + 0.506283 * X_2 + 1.172386 * X_3 + -1.524308 * X_4 + -0.026706 * X_5 + 0.367808 * X_6 + -0.594875 * X_7 + -365.339996 * X_8 + 15.043559 * X_9 + -6.751418 * X_10 + 0.896574 * X_11 + -1.610714 * X_12 + 4.353117 * X_13 + -0.434962 * X_14 + 13.474024 * X_15 + 0.000000 * X_16 + -3.884492 * X_17 + 18.348709 * X_18 + -0.981599 * X_19 + -1.924584 * X_20 + 0.637749 * X_21 + -0.187999 * X_22 + 51.756798 * X_23 + -183.194244 * X_24 + 18.045332 * X_25 + -29.696508 * X_26 + 8.529292 * X_27 + -3.193248 * X_28 + -0.402710 * X_29 + -2.502259 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 0.674041 * X_33 + 13.622909 * X_34 + -6.818079 * X_35 + 4.212058 * X_36 + -1.679497 * X_37 + 0.837895 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 1.646753 * X_41 + -8.008177 * X_42 + 1.817667 * X_43 + 2.005313 * X_44 + 0.320914 * X_45 + 10.951801 * X_46 + -62.540699 * X_47 + 1866.141724 * X_48 + -10.731389 * X_49 + 1.540631 * X_50 + -1.371918 * X_51 + -2.889775 * X_52 + 3.849816 * X_53 + -12.256137 * X_54 + -4.467373 * X_55 + -5460.185059 * X_56 + -6.262058 * X_57 + -4.402605 * X_58 + -4.987016 * X_59 + 1.908760 * X_60 + -9.752469 * X_61 + 27.046778 * X_62 + -57.491764 * X_63 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   170.009094 + 0.000000 * X_0 + 13.174135 * X_1 + 4.697545 * X_2 + -2.224083 * X_3 + 0.251615 * X_4 + -2.635596 * X_5 + 2.856826 * X_6 + -4.808426 * X_7 + -376.213928 * X_8 + 12.450350 * X_9 + -10.469029 * X_10 + 1.082069 * X_11 + -1.760206 * X_12 + 4.283947 * X_13 + -0.123759 * X_14 + 17.523323 * X_15 + 0.000000 * X_16 + 1.123322 * X_17 + 20.908340 * X_18 + -3.125860 * X_19 + -3.244567 * X_20 + -2.460076 * X_21 + 2.431563 * X_22 + 46.896267 * X_23 + -286.970978 * X_24 + 19.490299 * X_25 + -34.929901 * X_26 + 7.920588 * X_27 + -0.530808 * X_28 + -0.213448 * X_29 + -3.465997 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -0.630913 * X_33 + 15.859706 * X_34 + -7.345737 * X_35 + 1.430034 * X_36 + -0.155655 * X_37 + -0.269222 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 2.303814 * X_41 + -6.988098 * X_42 + 4.170744 * X_43 + 4.015606 * X_44 + -5.576893 * X_45 + 5.240767 * X_46 + 41.453934 * X_47 + -209.374619 * X_48 + -4.025139 * X_49 + -0.202654 * X_50 + -0.967951 * X_51 + -3.540146 * X_52 + 11.586697 * X_53 + -1.454114 * X_54 + -10.384274 * X_55 + 646.504822 * X_56 + -19.244131 * X_57 + -5.015195 * X_58 + -5.372291 * X_59 + 0.421422 * X_60 + -6.074282 * X_61 + -2.486256 * X_62 + -0.151101 * X_63 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3",
   -69.629494 + 0.000000 * X_0 + -7.396494 * X_1 + -3.525318 * X_2 + 1.580679 * X_3 + -0.610532 * X_4 + 1.125091 * X_5 + -2.248667 * X_6 + 3.836703 * X_7 + 210.925659 * X_8 + -10.319380 * X_9 + 5.914998 * X_10 + -1.308003 * X_11 + 1.360032 * X_12 + -2.807352 * X_13 + 0.429981 * X_14 + -9.828911 * X_15 + 0.000000 * X_16 + 2.159859 * X_17 + -11.764299 * X_18 + 2.015668 * X_19 + 2.012814 * X_20 + 1.255124 * X_21 + -1.250787 * X_22 + -31.189394 * X_23 + 125.493073 * X_24 + -9.800731 * X_25 + 18.712503 * X_26 + -5.039811 * X_27 + -0.015606 * X_28 + 0.443588 * X_29 + 2.384498 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -0.255601 * X_33 + -8.899653 * X_34 + 4.117470 * X_35 + -0.533296 * X_36 + -0.904382 * X_37 + -0.377432 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -3.102867 * X_41 + 4.128649 * X_42 + -2.672401 * X_43 + -4.644643 * X_44 + 7.208775 * X_45 + -3.866910 * X_46 + -16.736164 * X_47 + -208.873672 * X_48 + 3.245790 * X_49 + 0.942584 * X_50 + 1.030673 * X_51 + 4.708064 * X_52 + -15.149678 * X_53 + 3.236884 * X_54 + 8.143777 * X_55 + 600.169189 * X_56 + 8.393486 * X_57 + 5.258428 * X_58 + 2.199933 * X_59 + -0.599407 * X_60 + 10.172138 * X_61 + -10.533050 * X_62 + 30.703623 * X_63 AS "Score_4", CAST(NULL AS FLOAT) AS "Proba_4", CAST(NULL AS FLOAT) AS "LogProba_4",
   -73.019753 + 0.000000 * X_0 + -34.005138 * X_1 + 2.714749 * X_2 + 0.009869 * X_3 + -0.180486 * X_4 + 1.141807 * X_5 + -3.327079 * X_6 + 6.476912 * X_7 + 142.560699 * X_8 + 19.249197 * X_9 + -0.155286 * X_10 + 2.284111 * X_11 + -0.352464 * X_12 + -2.152902 * X_13 + 2.699453 * X_14 + -19.534098 * X_15 + 0.000000 * X_16 + -10.310405 * X_17 + -9.878948 * X_18 + 0.944595 * X_19 + 1.374617 * X_20 + 1.387920 * X_21 + -2.335040 * X_22 + -13.840656 * X_23 + 244.137817 * X_24 + -8.420089 * X_25 + 19.808947 * X_26 + -6.170484 * X_27 + 2.303542 * X_28 + 1.126675 * X_29 + 3.253151 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -1.310696 * X_33 + -9.264020 * X_34 + 3.954704 * X_35 + -1.287335 * X_36 + -1.458224 * X_37 + 0.347072 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -2.657055 * X_41 + 5.891434 * X_42 + -3.072670 * X_43 + -1.568437 * X_44 + 3.979730 * X_45 + -2.125599 * X_46 + -17.775225 * X_47 + -221.738205 * X_48 + 1.167032 * X_49 + 0.834215 * X_50 + 1.261827 * X_51 + 0.906326 * X_52 + -7.362742 * X_53 + 0.858323 * X_54 + 15.658381 * X_55 + 586.230652 * X_56 + 19.982962 * X_57 + -2.038297 * X_58 + 3.758446 * X_59 + -1.688288 * X_60 + 6.142324 * X_61 + -9.467461 * X_62 + 19.295977 * X_63 AS "Score_5", CAST(NULL AS FLOAT) AS "Proba_5", CAST(NULL AS FLOAT) AS "LogProba_5",
   -111.451019 + 0.000000 * X_0 + 6.504186 * X_1 + -2.057534 * X_2 + -0.256614 * X_3 + 1.336590 * X_4 + 1.369404 * X_5 + 0.786845 * X_6 + -1.519153 * X_7 + 233.825760 * X_8 + -13.266153 * X_9 + 6.590241 * X_10 + -0.951653 * X_11 + 1.459004 * X_12 + -1.726095 * X_13 + -1.285999 * X_14 + -4.685462 * X_15 + 0.000000 * X_16 + 1.089293 * X_17 + -11.531414 * X_18 + 0.801654 * X_19 + 1.563748 * X_20 + 0.327784 * X_21 + -0.009016 * X_22 + -25.410963 * X_23 + 142.923889 * X_24 + -12.882614 * X_25 + 18.638723 * X_26 + -3.060260 * X_27 + 0.714339 * X_28 + -0.384514 * X_29 + 0.928776 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 2.139324 * X_33 + -8.186320 * X_34 + 4.065971 * X_35 + -1.813868 * X_36 + 1.901411 * X_37 + 1.169240 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 1.442099 * X_41 + 3.458943 * X_42 + -0.337559 * X_43 + 0.755330 * X_44 + -3.929369 * X_45 + -7.852672 * X_46 + 37.445351 * X_47 + -208.774399 * X_48 + 5.476828 * X_49 + -1.989695 * X_50 + -0.921724 * X_51 + -0.811871 * X_52 + 7.814085 * X_53 + 8.411753 * X_54 + -18.982100 * X_55 + 596.262268 * X_56 + 5.972301 * X_57 + 0.921139 * X_58 + 3.642108 * X_59 + 0.179291 * X_60 + -7.447568 * X_61 + 10.036280 * X_62 + -23.824202 * X_63 AS "Score_6", CAST(NULL AS FLOAT) AS "Proba_6", CAST(NULL AS FLOAT) AS "LogProba_6",
   98.240433 + 0.000000 * X_0 + 5.585784 * X_1 + -2.891570 * X_2 + 2.619646 * X_3 + -2.215553 * X_4 + 0.134134 * X_5 + -1.505949 * X_6 + 4.678796 * X_7 + -131.491898 * X_8 + -8.786341 * X_9 + -1.341466 * X_10 + -2.519276 * X_11 + 1.368734 * X_12 + 1.216755 * X_13 + -0.443262 * X_14 + 4.344777 * X_15 + 0.000000 * X_16 + 8.380045 * X_17 + 9.024899 * X_18 + 0.652253 * X_19 + -0.093683 * X_20 + 0.816416 * X_21 + 0.629494 * X_22 + 8.533200 * X_23 + -179.144669 * X_24 + 8.542253 * X_25 + -16.253252 * X_26 + 2.975855 * X_27 + -3.403646 * X_28 + 0.138543 * X_29 + -0.053581 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 1.097756 * X_33 + 5.942031 * X_34 + -2.726701 * X_35 + 2.607973 * X_36 + -2.974142 * X_37 + -1.281791 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -4.026896 * X_41 + -3.887543 * X_42 + -0.655554 * X_43 + -6.011510 * X_44 + 12.049726 * X_45 + 1.778811 * X_46 + -12.392880 * X_47 + -195.477417 * X_48 + -3.218182 * X_49 + 3.011111 * X_50 + 0.192961 * X_51 + 6.965251 * X_52 + -24.334848 * X_53 + 2.522275 * X_54 + -6.872552 * X_55 + 641.422607 * X_56 + -10.507805 * X_57 + 5.205500 * X_58 + -5.451265 * X_59 + 0.702261 * X_60 + 12.287304 * X_61 + -12.353918 * X_62 + 44.792839 * X_63 AS "Score_7", CAST(NULL AS FLOAT) AS "Proba_7", CAST(NULL AS FLOAT) AS "LogProba_7",
   38.416504 + 0.000000 * X_0 + 6.747091 * X_1 + 0.016845 * X_2 + -0.326403 * X_3 + 0.015795 * X_4 + -0.693454 * X_5 + 1.080961 * X_6 + -1.200653 * X_7 + -46.818027 * X_8 + -2.765636 * X_9 + -1.315021 * X_10 + -0.530356 * X_11 + -0.220214 * X_12 + 0.575717 * X_13 + -0.580701 * X_14 + 4.052511 * X_15 + 0.000000 * X_16 + 3.000480 * X_17 + 4.072485 * X_18 + -0.355617 * X_19 + -0.559487 * X_20 + -0.641008 * X_21 + 0.806740 * X_22 + 5.069715 * X_23 + -71.191895 * X_24 + 2.080948 * X_25 + -6.654919 * X_26 + 1.182554 * X_27 + -0.295732 * X_28 + -0.064928 * X_29 + -0.739304 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 0.369489 * X_33 + 2.713653 * X_34 + -0.738952 * X_35 + 0.195265 * X_36 + -0.019144 * X_37 + -0.226624 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 0.488287 * X_41 + -1.456146 * X_42 + 0.346367 * X_43 + 0.337979 * X_44 + -0.532246 * X_45 + 1.005310 * X_46 + 5.419240 * X_47 + -194.602066 * X_48 + -0.759757 * X_49 + -0.136363 * X_50 + 0.205292 * X_51 + -0.043913 * X_52 + 0.626689 * X_53 + -0.735254 * X_54 + 0.787006 * X_55 + 595.037964 * X_56 + -5.939497 * X_57 + 0.556149 * X_58 + -1.308659 * X_59 + 0.180770 * X_60 + 0.797422 * X_61 + -2.927737 * X_62 + 5.995490 * X_63 AS "Score_8", CAST(NULL AS FLOAT) AS "Proba_8", CAST(NULL AS FLOAT) AS "LogProba_8",
   -14.584214 + 0.000000 * X_0 + -1.005231 * X_1 + 0.709996 * X_2 + -0.538154 * X_3 + 0.581627 * X_4 + -0.034024 * X_5 + 0.326679 * X_6 + -0.243053 * X_7 + 23.754921 * X_8 + 1.653250 * X_9 + -0.249379 * X_10 + 0.411666 * X_11 + 0.124847 * X_12 + 0.053462 * X_13 + 0.029693 * X_14 + -1.656797 * X_15 + 0.000000 * X_16 + -0.952322 * X_17 + -0.771028 * X_18 + -0.438510 * X_19 + -0.062016 * X_20 + -0.117042 * X_21 + 0.235514 * X_22 + -0.719776 * X_23 + 28.753809 * X_24 + -1.910267 * X_25 + 1.936342 * X_26 + -0.209922 * X_27 + 0.709136 * X_28 + -0.134001 * X_29 + 0.069935 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 0.515901 * X_33 + -0.787127 * X_34 + 0.166650 * X_35 + -0.868862 * X_36 + 0.697064 * X_37 + 0.164158 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 0.559925 * X_41 + 0.643769 * X_42 + 0.490268 * X_43 + 1.095806 * X_44 + -2.228784 * X_45 + -2.043548 * X_46 + 22.357441 * X_47 + -204.383911 * X_48 + 1.302845 * X_49 + -0.627901 * X_50 + -0.435158 * X_51 + -0.840737 * X_52 + 4.045699 * X_53 + 3.071809 * X_54 + -7.117512 * X_55 + 587.346252 * X_56 + 1.307305 * X_57 + -0.991721 * X_58 + 0.643456 * X_59 + -0.219988 * X_60 + -2.582323 * X_61 + 0.630393 * X_62 + -3.411895 * X_63 AS "Score_9", CAST(NULL AS FLOAT) AS "Proba_9", CAST(NULL AS FLOAT) AS "LogProba_9"
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