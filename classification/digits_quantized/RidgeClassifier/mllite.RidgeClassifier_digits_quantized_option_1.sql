WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -6.282175 + 0.000000 * X_0 + -0.057921 * X_1 + 0.090951 * X_2 + -0.068693 * X_3 + 0.050642 * X_4 + 0.027481 * X_5 + -0.117448 * X_6 + 0.279948 * X_7 + -0.342737 * X_8 + -0.252907 * X_9 + 0.002172 * X_10 + -0.097190 * X_11 + 0.098254 * X_12 + -0.009747 * X_13 + 0.049870 * X_14 + 0.045221 * X_15 + 0.310307 * X_16 + 0.193322 * X_17 + -0.308649 * X_18 + 0.195843 * X_19 + 0.067870 * X_20 + 0.041922 * X_21 + 0.028797 * X_22 + -0.035589 * X_23 + -0.494370 * X_24 + 1.117070 * X_25 + -0.834127 * X_26 + 0.454351 * X_27 + -0.170156 * X_28 + 0.143217 * X_29 + -0.061117 * X_30 + -0.253699 * X_31 + 0.000000 * X_32 + 1.117123 * X_33 + -0.824433 * X_34 + 0.425208 * X_35 + -0.121046 * X_36 + 0.226332 * X_37 + -0.204320 * X_38 + 0.000000 * X_39 + 0.105540 * X_40 + -0.837974 * X_41 + 1.175140 * X_42 + -1.093832 * X_43 + 0.545509 * X_44 + -0.173944 * X_45 + 0.164368 * X_46 + 0.307374 * X_47 + 0.085588 * X_48 + 0.013200 * X_49 + 0.005415 * X_50 + 0.452766 * X_51 + -0.247898 * X_52 + -0.091431 * X_53 + 0.142924 * X_54 + 0.125892 * X_55 + 0.937624 * X_56 + 0.202429 * X_57 + 0.104744 * X_58 + 0.102014 * X_59 + 0.016262 * X_60 + -0.199229 * X_61 + 0.022944 * X_62 + 0.036877 * X_63 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   0.543952 + 0.000000 * X_0 + 0.103196 * X_1 + 0.318924 * X_2 + 0.132978 * X_3 + -0.054325 * X_4 + 0.061790 * X_5 + 0.001763 * X_6 + -0.037949 * X_7 + 0.398188 * X_8 + -0.525368 * X_9 + 0.501172 * X_10 + -0.031586 * X_11 + -0.113954 * X_12 + 0.123029 * X_13 + -0.093096 * X_14 + 0.026501 * X_15 + -0.198910 * X_16 + -0.297620 * X_17 + 0.051883 * X_18 + -0.129484 * X_19 + 0.106056 * X_20 + 0.040302 * X_21 + 0.057477 * X_22 + 0.088514 * X_23 + 0.519966 * X_24 + 0.049175 * X_25 + 0.114929 * X_26 + 0.030350 * X_27 + -0.108486 * X_28 + -0.117737 * X_29 + -0.068014 * X_30 + 0.113453 * X_31 + 0.000000 * X_32 + -0.334907 * X_33 + 0.123510 * X_34 + -0.118489 * X_35 + 0.017431 * X_36 + -0.026077 * X_37 + 0.044893 * X_38 + 0.000000 * X_39 + -0.112908 * X_40 + 0.200967 * X_41 + -0.310066 * X_42 + 0.341905 * X_43 + -0.249880 * X_44 + 0.011965 * X_45 + -0.020161 * X_46 + -0.050036 * X_47 + 0.010142 * X_48 + 0.086508 * X_49 + -0.345626 * X_50 + 0.167211 * X_51 + 0.167282 * X_52 + 0.111063 * X_53 + -0.033999 * X_54 + -0.076273 * X_55 + -0.492583 * X_56 + -0.006612 * X_57 + 0.076757 * X_58 + -0.760030 * X_59 + 0.298279 * X_60 + -0.125722 * X_61 + 0.052293 * X_62 + 0.004003 * X_63 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -2.312550 + 0.000000 * X_0 + 0.030670 * X_1 + -0.173619 * X_2 + -0.377249 * X_3 + -0.083745 * X_4 + 0.029895 * X_5 + 0.050117 * X_6 + -0.122494 * X_7 + -0.217887 * X_8 + 0.525793 * X_9 + -0.605060 * X_10 + -0.246498 * X_11 + 0.023347 * X_12 + -0.168869 * X_13 + -0.000966 * X_14 + -0.102214 * X_15 + -0.081148 * X_16 + 0.555119 * X_17 + -0.067838 * X_18 + 0.192016 * X_19 + -0.150114 * X_20 + -0.026895 * X_21 + -0.054417 * X_22 + 0.228743 * X_23 + 0.156728 * X_24 + -1.041385 * X_25 + 0.801205 * X_26 + -0.460026 * X_27 + 0.216646 * X_28 + 0.089666 * X_29 + 0.118839 * X_30 + -0.133821 * X_31 + 0.000000 * X_32 + -0.448386 * X_33 + 0.069308 * X_34 + -0.037197 * X_35 + 0.009280 * X_36 + -0.034330 * X_37 + 0.138892 * X_38 + 0.000000 * X_39 + 0.051020 * X_40 + 0.535454 * X_41 + -0.486100 * X_42 + 0.279667 * X_43 + -0.185064 * X_44 + 0.309893 * X_45 + -0.220082 * X_46 + -0.063824 * X_47 + -0.636510 * X_48 + -0.140736 * X_49 + 0.380115 * X_50 + 0.650841 * X_51 + -0.077391 * X_52 + -0.031975 * X_53 + -0.201939 * X_54 + 0.082504 * X_55 + -0.065813 * X_56 + -0.149762 * X_57 + -0.342146 * X_58 + 1.046398 * X_59 + -0.239644 * X_60 + 0.409932 * X_61 + -0.166827 * X_62 + -0.172885 * X_63 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   5.073037 + 0.000000 * X_0 + 0.008814 * X_1 + -0.439224 * X_2 + -0.224066 * X_3 + 0.075410 * X_4 + -0.172707 * X_5 + 0.112572 * X_6 + -0.227429 * X_7 + -0.255332 * X_8 + 0.608235 * X_9 + -0.557463 * X_10 + 0.038259 * X_11 + 0.157020 * X_12 + -0.158112 * X_13 + 0.027477 * X_14 + -0.098860 * X_15 + 0.096512 * X_16 + 0.154014 * X_17 + 0.140628 * X_18 + 0.010308 * X_19 + 0.056230 * X_20 + -0.194251 * X_21 + -0.072266 * X_22 + -0.164782 * X_23 + 0.143551 * X_24 + -1.439654 * X_25 + 1.136392 * X_26 + -0.755303 * X_27 + 0.294527 * X_28 + -0.021921 * X_29 + 0.170419 * X_30 + -0.001336 * X_31 + 0.000000 * X_32 + -0.400677 * X_33 + -0.054895 * X_34 + 0.243010 * X_35 + -0.059317 * X_36 + -0.162507 * X_37 + 0.107936 * X_38 + 0.000000 * X_39 + 0.420713 * X_40 + 0.515369 * X_41 + -0.343049 * X_42 + -0.517710 * X_43 + 0.215785 * X_44 + -0.004205 * X_45 + -0.078440 * X_46 + -0.025554 * X_47 + -0.242509 * X_48 + -0.239510 * X_49 + 0.478015 * X_50 + -0.274344 * X_51 + -0.101460 * X_52 + -0.064153 * X_53 + -0.138818 * X_54 + -0.090262 * X_55 + 0.149232 * X_56 + -0.082487 * X_57 + -0.487625 * X_58 + 1.214193 * X_59 + -0.418718 * X_60 + 0.333403 * X_61 + -0.091373 * X_62 + -0.140803 * X_63 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3",
   -3.327538 + 0.000000 * X_0 + 0.055155 * X_1 + 0.342641 * X_2 + 0.387181 * X_3 + -0.030950 * X_4 + 0.100018 * X_5 + -0.125413 * X_6 + 0.158461 * X_7 + 0.330564 * X_8 + -0.323603 * X_9 + 0.678307 * X_10 + 0.225536 * X_11 + -0.134751 * X_12 + 0.221171 * X_13 + 0.032919 * X_14 + 0.077558 * X_15 + 0.018079 * X_16 + -0.877504 * X_17 + 0.209664 * X_18 + -0.304929 * X_19 + 0.053187 * X_20 + 0.160441 * X_21 + 0.054524 * X_22 + 0.018859 * X_23 + -0.084096 * X_24 + 1.235906 * X_25 + -1.102875 * X_26 + 0.774537 * X_27 + -0.293058 * X_28 + -0.045326 * X_29 + -0.154714 * X_30 + 0.137063 * X_31 + 0.000000 * X_32 + 1.376017 * X_33 + -0.574055 * X_34 + -0.089163 * X_35 + -0.008527 * X_36 + 0.095151 * X_37 + -0.181098 * X_38 + 0.000000 * X_39 + -0.611693 * X_40 + -0.779493 * X_41 + 0.337057 * X_42 + 0.873643 * X_43 + -0.325816 * X_44 + -0.052722 * X_45 + 0.143129 * X_46 + 0.051796 * X_47 + 0.642325 * X_48 + 0.302921 * X_49 + -0.608932 * X_50 + -0.568626 * X_51 + 0.236644 * X_52 + 0.079197 * X_53 + 0.223009 * X_54 + -0.006500 * X_55 + -0.295370 * X_56 + 0.051725 * X_57 + 0.350528 * X_58 + -1.255888 * X_59 + 0.352939 * X_60 + -0.376527 * X_61 + 0.189280 * X_62 + 0.240723 * X_63 AS "Score_4", CAST(NULL AS FLOAT) AS "Proba_4", CAST(NULL AS FLOAT) AS "LogProba_4",
   -3.968048 + 0.000000 * X_0 + 0.049122 * X_1 + -0.549698 * X_2 + -0.133379 * X_3 + 0.044154 * X_4 + -0.080883 * X_5 + -0.047743 * X_6 + 0.169345 * X_7 + -0.307232 * X_8 + 0.398160 * X_9 + -0.546001 * X_10 + -0.027465 * X_11 + 0.126981 * X_12 + -0.119484 * X_13 + 0.086937 * X_14 + -0.006870 * X_15 + -0.078466 * X_16 + 0.083286 * X_17 + -0.080438 * X_18 + 0.315900 * X_19 + -0.245336 * X_20 + -0.018597 * X_21 + -0.134631 * X_22 + -0.148311 * X_23 + -0.946818 * X_24 + 1.273139 * X_25 + -0.912991 * X_26 + 0.153886 * X_27 + 0.117767 * X_28 + 0.206895 * X_29 + 0.033009 * X_30 + -0.144961 * X_31 + 0.000000 * X_32 + -0.501833 * X_33 + 0.645875 * X_34 + 0.050663 * X_35 + 0.014475 * X_36 + 0.016672 * X_37 + -0.107642 * X_38 + 0.000000 * X_39 + 0.099805 * X_40 + 0.299974 * X_41 + -0.556397 * X_42 + 0.022271 * X_43 + 0.041648 * X_44 + 0.051068 * X_45 + 0.114891 * X_46 + 0.089292 * X_47 + -0.015600 * X_48 + -0.058732 * X_49 + 0.481506 * X_50 + -0.056438 * X_51 + -0.143452 * X_52 + -0.084850 * X_53 + -0.138528 * X_54 + 0.098426 * X_55 + 0.408751 * X_56 + -0.044198 * X_57 + -0.090259 * X_58 + 1.198328 * X_59 + -0.426418 * X_60 + 0.289816 * X_61 + 0.004926 * X_62 + -0.103392 * X_63 AS "Score_5", CAST(NULL AS FLOAT) AS "Proba_5", CAST(NULL AS FLOAT) AS "LogProba_5",
   -3.075563 + 0.000000 * X_0 + 0.099930 * X_1 + 0.468913 * X_2 + 0.116537 * X_3 + -0.043640 * X_4 + 0.149348 * X_5 + -0.025982 * X_6 + 0.044777 * X_7 + 0.231852 * X_8 + -0.484336 * X_9 + 0.595536 * X_10 + -0.059380 * X_11 + -0.125167 * X_12 + 0.139010 * X_13 + -0.055654 * X_14 + 0.107742 * X_15 + 0.143956 * X_16 + -0.330081 * X_17 + 0.065249 * X_18 + -0.174025 * X_19 + 0.119387 * X_20 + 0.022379 * X_21 + 0.100016 * X_22 + 0.177691 * X_23 + 0.300009 * X_24 + 0.219283 * X_25 + -0.299983 * X_26 + 0.332719 * X_27 + -0.201056 * X_28 + -0.042534 * X_29 + -0.205718 * X_30 + -0.030680 * X_31 + 0.000000 * X_32 + 0.592049 * X_33 + -0.099183 * X_34 + -0.166335 * X_35 + 0.010472 * X_36 + 0.121021 * X_37 + -0.033826 * X_38 + 0.000000 * X_39 + -0.185133 * X_40 + -0.646837 * X_41 + 0.647390 * X_42 + -0.083441 * X_43 + 0.027355 * X_44 + -0.098150 * X_45 + 0.035020 * X_46 + -0.084634 * X_47 + 0.154647 * X_48 + 0.130675 * X_49 + -0.419038 * X_50 + 0.327227 * X_51 + 0.041279 * X_52 + 0.068727 * X_53 + 0.211493 * X_54 + -0.026554 * X_55 + 0.044468 * X_56 + 0.052719 * X_57 + 0.230762 * X_58 + -1.079588 * X_59 + 0.442844 * X_60 + -0.323376 * X_61 + 0.036821 * X_62 + 0.094893 * X_63 AS "Score_6", CAST(NULL AS FLOAT) AS "Proba_6", CAST(NULL AS FLOAT) AS "LogProba_6",
   1.307917 + 0.000000 * X_0 + -0.005529 * X_1 + 0.126144 * X_2 + -0.034724 * X_3 + -0.046547 * X_4 + 0.030143 * X_5 + 0.074017 * X_6 + -0.168596 * X_7 + 0.347427 * X_8 + -0.130808 * X_9 + 0.245841 * X_10 + -0.029497 * X_11 + -0.047800 * X_12 + 0.048686 * X_13 + -0.039389 * X_14 + -0.017464 * X_15 + -0.112664 * X_16 + -0.083584 * X_17 + 0.166801 * X_18 + -0.186969 * X_19 + 0.027512 * X_20 + 0.048360 * X_21 + 0.046177 * X_22 + 0.115444 * X_23 + 0.606295 * X_24 + -0.966678 * X_25 + 0.525376 * X_26 + -0.185482 * X_27 + 0.033070 * X_28 + -0.150010 * X_29 + 0.034219 * X_30 + 0.005956 * X_31 + 0.000000 * X_32 + 0.156680 * X_33 + 0.110424 * X_34 + -0.176180 * X_35 + 0.013681 * X_36 + -0.098158 * X_37 + 0.085745 * X_38 + 0.000000 * X_39 + -0.053249 * X_40 + 0.067808 * X_41 + -0.270809 * X_42 + 0.418085 * X_43 + -0.313088 * X_44 + 0.125390 * X_45 + -0.096406 * X_46 + -0.093592 * X_47 + -0.074049 * X_48 + 0.128832 * X_49 + -0.450801 * X_50 + 0.197514 * X_51 + 0.068991 * X_52 + 0.040466 * X_53 + -0.048803 * X_54 + -0.072841 * X_55 + -0.424195 * X_56 + -0.060076 * X_57 + 0.167962 * X_58 + -0.331997 * X_59 + 0.125948 * X_60 + 0.050983 * X_61 + -0.025670 * X_62 + 0.024108 * X_63 AS "Score_7", CAST(NULL AS FLOAT) AS "Proba_7", CAST(NULL AS FLOAT) AS "LogProba_7",
   0.379625 + 0.000000 * X_0 + -0.118057 * X_1 + 0.059731 * X_2 + 0.012771 * X_3 + 0.035093 * X_4 + -0.020464 * X_5 + 0.062867 * X_6 + -0.107737 * X_7 + -0.080586 * X_8 + 0.034032 * X_9 + -0.096446 * X_10 + 0.056535 * X_11 + -0.007070 * X_12 + -0.002504 * X_13 + -0.004766 * X_14 + -0.017376 * X_15 + 0.015093 * X_16 + 0.327907 * X_17 + -0.046450 * X_18 + -0.030636 * X_19 + -0.012039 * X_20 + -0.046265 * X_21 + 0.001989 * X_22 + 0.027884 * X_23 + 0.045408 * X_24 + -0.503421 * X_25 + 0.378824 * X_26 + -0.119348 * X_27 + 0.057410 * X_28 + -0.010895 * X_29 + 0.018125 * X_30 + 0.162668 * X_31 + 0.000000 * X_32 + -0.564910 * X_33 + 0.308932 * X_34 + -0.252163 * X_35 + 0.121852 * X_36 + -0.083922 * X_37 + 0.088833 * X_38 + 0.000000 * X_39 + 0.011862 * X_40 + 0.122972 * X_41 + 0.087501 * X_42 + 0.242927 * X_43 + -0.032102 * X_44 + -0.002209 * X_45 + -0.088576 * X_46 + -0.133523 * X_47 + -0.002932 * X_48 + -0.134710 * X_49 + 0.275181 * X_50 + -0.468352 * X_51 + 0.057453 * X_52 + 0.024950 * X_53 + -0.009069 * X_54 + 0.001141 * X_55 + -0.194552 * X_56 + 0.020623 * X_57 + -0.137397 * X_58 + 0.020603 * X_59 + -0.080330 * X_60 + -0.003421 * X_61 + -0.048710 * X_62 + 0.068161 * X_63 AS "Score_8", CAST(NULL AS FLOAT) AS "Proba_8", CAST(NULL AS FLOAT) AS "LogProba_8",
   3.661365 + 0.000000 * X_0 + -0.165382 * X_1 + -0.244769 * X_2 + 0.188639 * X_3 + 0.053905 * X_4 + -0.124617 * X_5 + 0.015247 * X_6 + 0.011676 * X_7 + -0.104262 * X_8 + 0.150813 * X_9 + -0.218070 * X_10 + 0.171284 * X_11 + 0.023140 * X_12 + -0.073185 * X_13 + -0.003336 * X_14 + -0.014238 * X_15 + -0.112759 * X_16 + 0.275148 * X_17 + -0.130850 * X_18 + 0.111979 * X_19 + -0.022753 * X_20 + -0.027399 * X_21 + -0.027660 * X_22 + -0.308453 * X_23 + -0.246680 * X_24 + 0.056560 * X_25 + 0.193253 * X_26 + -0.225686 * X_27 + 0.053335 * X_28 + -0.051349 * X_29 + 0.114945 * X_30 + 0.145360 * X_31 + 0.000000 * X_32 + -0.991186 * X_33 + 0.294543 * X_34 + 0.120634 * X_35 + 0.001707 * X_36 + -0.054184 * X_37 + 0.060591 * X_38 + 0.000000 * X_39 + 0.274047 * X_40 + 0.521767 * X_41 + -0.280667 * X_42 + -0.483519 * X_43 + 0.275651 * X_44 + -0.167090 * X_45 + 0.046256 * X_46 + 0.002697 * X_47 + 0.078892 * X_48 + -0.088449 * X_49 + 0.204170 * X_50 + -0.427796 * X_51 + -0.001449 * X_52 + -0.051991 * X_53 + -0.006275 * X_54 + -0.035535 * X_55 + -0.067556 * X_56 + 0.015639 * X_57 + 0.126672 * X_58 + -0.154016 * X_59 + -0.071168 * X_60 + -0.055853 * X_61 + 0.026312 * X_62 + -0.051681 * X_63 AS "Score_9", CAST(NULL AS FLOAT) AS "Proba_9", CAST(NULL AS FLOAT) AS "LogProba_9"
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