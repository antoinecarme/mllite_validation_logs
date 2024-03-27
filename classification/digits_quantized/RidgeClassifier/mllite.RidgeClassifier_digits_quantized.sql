WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -6.273510 + 0.000000 * X_0 + -0.057785 * X_1 + 0.090087 * X_2 + -0.067862 * X_3 + 0.050541 * X_4 + 0.026900 * X_5 + -0.116669 * X_6 + 0.279571 * X_7 + -0.341361 * X_8 + -0.252566 * X_9 + 0.002046 * X_10 + -0.096598 * X_11 + 0.097784 * X_12 + -0.009324 * X_13 + 0.049506 * X_14 + 0.045296 * X_15 + 0.308809 * X_16 + 0.193731 * X_17 + -0.308194 * X_18 + 0.195600 * X_19 + 0.067223 * X_20 + 0.042412 * X_21 + 0.028579 * X_22 + -0.035580 * X_23 + -0.492982 * X_24 + 1.114894 * X_25 + -0.832874 * X_26 + 0.452755 * X_27 + -0.169050 * X_28 + 0.142446 * X_29 + -0.061193 * X_30 + -0.252706 * X_31 + 0.000000 * X_32 + 1.112521 * X_33 + -0.817352 * X_34 + 0.421971 * X_35 + -0.119360 * X_36 + 0.224468 * X_37 + -0.202804 * X_38 + 0.000000 * X_39 + 0.105411 * X_40 + -0.833490 * X_41 + 1.166204 * X_42 + -1.086975 * X_43 + 0.541425 * X_44 + -0.172368 * X_45 + 0.162993 * X_46 + 0.306228 * X_47 + 0.083282 * X_48 + 0.012575 * X_49 + 0.008648 * X_50 + 0.449556 * X_51 + -0.246143 * X_52 + -0.091642 * X_53 + 0.142187 * X_54 + 0.125808 * X_55 + 0.934484 * X_56 + 0.201965 * X_57 + 0.103257 * X_58 + 0.102771 * X_59 + 0.015378 * X_60 + -0.197394 * X_61 + 0.022880 * X_62 + 0.036300 * X_63 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   0.542683 + 0.000000 * X_0 + 0.102547 * X_1 + 0.318061 * X_2 + 0.132583 * X_3 + -0.053985 * X_4 + 0.061474 * X_5 + 0.001709 * X_6 + -0.037934 * X_7 + 0.397151 * X_8 + -0.523843 * X_9 + 0.499432 * X_10 + -0.031632 * X_11 + -0.113404 * X_12 + 0.122542 * X_13 + -0.092619 * X_14 + 0.026279 * X_15 + -0.197820 * X_16 + -0.297283 * X_17 + 0.052170 * X_18 + -0.129113 * X_19 + 0.105493 * X_20 + 0.040126 * X_21 + 0.057200 * X_22 + 0.088313 * X_23 + 0.518358 * X_24 + 0.048633 * X_25 + 0.114955 * X_26 + 0.030059 * X_27 + -0.107903 * X_28 + -0.117542 * X_29 + -0.067653 * X_30 + 0.113019 * X_31 + 0.000000 * X_32 + -0.333484 * X_33 + 0.122015 * X_34 + -0.117639 * X_35 + 0.016826 * X_36 + -0.025808 * X_37 + 0.044629 * X_38 + 0.000000 * X_39 + -0.112557 * X_40 + 0.199971 * X_41 + -0.308642 * X_42 + 0.340423 * X_43 + -0.248482 * X_44 + 0.011868 * X_45 + -0.019988 * X_46 + -0.050101 * X_47 + 0.009911 * X_48 + 0.086303 * X_49 + -0.345024 * X_50 + 0.167459 * X_51 + 0.166573 * X_52 + 0.110700 * X_53 + -0.033784 * X_54 + -0.076095 * X_55 + -0.491881 * X_56 + -0.006409 * X_57 + 0.077315 * X_58 + -0.758829 * X_59 + 0.297349 * X_60 + -0.124575 * X_61 + 0.051497 * X_62 + 0.004015 * X_63 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -2.314496 + 0.000000 * X_0 + 0.030894 * X_1 + -0.174808 * X_2 + -0.376459 * X_3 + -0.083934 * X_4 + 0.030267 * X_5 + 0.049738 * X_6 + -0.122490 * X_7 + -0.217406 * X_8 + 0.524901 * X_9 + -0.603301 * X_10 + -0.245874 * X_11 + 0.023056 * X_12 + -0.168192 * X_13 + -0.001043 * X_14 + -0.101684 * X_15 + -0.081165 * X_16 + 0.553161 * X_17 + -0.067258 * X_18 + 0.190755 * X_19 + -0.149007 * X_20 + -0.027386 * X_21 + -0.053966 * X_22 + 0.228343 * X_23 + 0.155902 * X_24 + -1.037708 * X_25 + 0.797985 * X_26 + -0.457414 * X_27 + 0.215050 * X_28 + 0.089891 * X_29 + 0.118699 * X_30 + -0.133333 * X_31 + 0.000000 * X_32 + -0.447546 * X_33 + 0.068243 * X_34 + -0.037332 * X_35 + 0.009164 * X_36 + -0.033390 * X_37 + 0.137793 * X_38 + 0.000000 * X_39 + 0.050358 * X_40 + 0.533156 * X_41 + -0.482335 * X_42 + 0.278212 * X_43 + -0.184007 * X_44 + 0.308279 * X_45 + -0.218724 * X_46 + -0.063696 * X_47 + -0.633540 * X_48 + -0.139971 * X_49 + 0.377710 * X_50 + 0.650475 * X_51 + -0.077228 * X_52 + -0.031186 * X_53 + -0.201504 * X_54 + 0.081973 * X_55 + -0.066325 * X_56 + -0.149569 * X_57 + -0.339839 * X_58 + 1.044039 * X_59 + -0.238245 * X_60 + 0.407108 * X_61 + -0.165549 * X_62 + -0.171966 * X_63 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   5.066629 + 0.000000 * X_0 + 0.009129 * X_1 + -0.439504 * X_2 + -0.223486 * X_3 + 0.074727 * X_4 + -0.171565 * X_5 + 0.111840 * X_6 + -0.226910 * X_7 + -0.254489 * X_8 + 0.606977 * X_9 + -0.555788 * X_10 + 0.038390 * X_11 + 0.156603 * X_12 + -0.157851 * X_13 + 0.027359 * X_14 + -0.098681 * X_15 + 0.096225 * X_16 + 0.152583 * X_17 + 0.140936 * X_18 + 0.009640 * X_19 + 0.056364 * X_20 + -0.193692 * X_21 + -0.072058 * X_22 + -0.164139 * X_23 + 0.142781 * X_24 + -1.434766 * X_25 + 1.131381 * X_26 + -0.751678 * X_27 + 0.292585 * X_28 + -0.021581 * X_29 + 0.169799 * X_30 + -0.001110 * X_31 + 0.000000 * X_32 + -0.400661 * X_33 + -0.053995 * X_34 + 0.241401 * X_35 + -0.058562 * X_36 + -0.161840 * X_37 + 0.107269 * X_38 + 0.000000 * X_39 + 0.419100 * X_40 + 0.513555 * X_41 + -0.340790 * X_42 + -0.516756 * X_43 + 0.214736 * X_44 + -0.004629 * X_45 + -0.077950 * X_46 + -0.025532 * X_47 + -0.240138 * X_48 + -0.238440 * X_49 + 0.475462 * X_50 + -0.274181 * X_51 + -0.100726 * X_52 + -0.063823 * X_53 + -0.138279 * X_54 + -0.090252 * X_55 + 0.148176 * X_56 + -0.082612 * X_57 + -0.485331 * X_58 + 1.211737 * X_59 + -0.416961 * X_60 + 0.330745 * X_61 + -0.090281 * X_62 + -0.140249 * X_63 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3",
   -3.324754 + 0.000000 * X_0 + 0.054934 * X_1 + 0.343192 * X_2 + 0.386086 * X_3 + -0.030299 * X_4 + 0.098981 * X_5 + -0.124723 * X_6 + 0.158215 * X_7 + 0.329633 * X_8 + -0.323383 * X_9 + 0.676803 * X_10 + 0.224476 * X_11 + -0.134251 * X_12 + 0.220590 * X_13 + 0.032789 * X_14 + 0.077577 * X_15 + 0.017982 * X_16 + -0.874490 * X_17 + 0.208176 * X_18 + -0.302857 * X_19 + 0.052492 * X_20 + 0.160163 * X_21 + 0.054366 * X_22 + 0.018501 * X_23 + -0.083373 * X_24 + 1.231909 * X_25 + -1.098418 * X_26 + 0.770356 * X_27 + -0.290731 * X_28 + -0.045694 * X_29 + -0.154326 * X_30 + 0.136497 * X_31 + 0.000000 * X_32 + 1.372121 * X_33 + -0.571136 * X_34 + -0.088783 * X_35 + -0.008866 * X_36 + 0.094462 * X_37 + -0.180002 * X_38 + 0.000000 * X_39 + -0.609480 * X_40 + -0.776472 * X_41 + 0.334255 * X_42 + 0.871490 * X_43 + -0.324151 * X_44 + -0.052463 * X_45 + 0.142308 * X_46 + 0.051524 * X_47 + 0.638809 * X_48 + 0.301612 * X_49 + -0.606212 * X_50 + -0.567259 * X_51 + 0.235398 * X_52 + 0.078912 * X_53 + 0.222344 * X_54 + -0.006213 * X_55 + -0.293071 * X_56 + 0.051938 * X_57 + 0.348734 * X_58 + -1.253176 * X_59 + 0.351483 * X_60 + -0.373723 * X_61 + 0.187827 * X_62 + 0.239611 * X_63 AS "Score_4", CAST(NULL AS FLOAT) AS "Proba_4", CAST(NULL AS FLOAT) AS "LogProba_4",
   -3.963940 + 0.000000 * X_0 + 0.049120 * X_1 + -0.546561 * X_2 + -0.133592 * X_3 + 0.043853 * X_4 + -0.080303 * X_5 + -0.047527 * X_6 + 0.168704 * X_7 + -0.307338 * X_8 + 0.396193 * X_9 + -0.544234 * X_10 + -0.027239 * X_11 + 0.126515 * X_12 + -0.119043 * X_13 + 0.086432 * X_14 + -0.007037 * X_15 + -0.078508 * X_16 + 0.084894 * X_17 + -0.082013 * X_18 + 0.315093 * X_19 + -0.243532 * X_20 + -0.018843 * X_21 + -0.133816 * X_22 + -0.147956 * X_23 + -0.942969 * X_24 + 1.268213 * X_25 + -0.907271 * X_26 + 0.153044 * X_27 + 0.116980 * X_28 + 0.206500 * X_29 + 0.032511 * X_30 + -0.144628 * X_31 + 0.000000 * X_32 + -0.497735 * X_33 + 0.639799 * X_34 + 0.052159 * X_35 + 0.014256 * X_36 + 0.016555 * X_37 + -0.106942 * X_38 + 0.000000 * X_39 + 0.099890 * X_40 + 0.297794 * X_41 + -0.551496 * X_42 + 0.019841 * X_43 + 0.042051 * X_44 + 0.050998 * X_45 + 0.113739 * X_46 + 0.090307 * X_47 + -0.014939 * X_48 + -0.057994 * X_49 + 0.478199 * X_50 + -0.055523 * X_51 + -0.143496 * X_52 + -0.084781 * X_53 + -0.137221 * X_54 + 0.098050 * X_55 + 0.410100 * X_56 + -0.044300 * X_57 + -0.090773 * X_58 + 1.195951 * X_59 + -0.424720 * X_60 + 0.287592 * X_61 + 0.005315 * X_62 + -0.103030 * X_63 AS "Score_5", CAST(NULL AS FLOAT) AS "Proba_5", CAST(NULL AS FLOAT) AS "LogProba_5",
   -3.072625 + 0.000000 * X_0 + 0.099536 * X_1 + 0.467289 * X_2 + 0.116602 * X_3 + -0.043155 * X_4 + 0.148410 * X_5 + -0.025629 * X_6 + 0.044914 * X_7 + 0.231670 * X_8 + -0.482978 * X_9 + 0.593840 * X_10 + -0.059330 * X_11 + -0.124805 * X_12 + 0.138571 * X_13 + -0.055323 * X_14 + 0.107545 * X_15 + 0.143610 * X_16 + -0.329515 * X_17 + 0.065363 * X_18 + -0.173220 * X_19 + 0.118082 * X_20 + 0.022722 * X_21 + 0.099294 * X_22 + 0.177178 * X_23 + 0.299182 * X_24 + 0.218606 * X_25 + -0.299471 * X_26 + 0.331104 * X_27 + -0.199585 * X_28 + -0.042832 * X_29 + -0.204987 * X_30 + -0.030556 * X_31 + 0.000000 * X_32 + 0.589836 * X_33 + -0.096817 * X_34 + -0.166307 * X_35 + 0.010422 * X_36 + 0.120481 * X_37 + -0.033680 * X_38 + 0.000000 * X_39 + -0.184488 * X_40 + -0.643902 * X_41 + 0.642510 * X_42 + -0.081276 * X_43 + 0.026694 * X_44 + -0.097381 * X_45 + 0.035075 * X_46 + -0.085110 * X_47 + 0.152684 * X_48 + 0.129695 * X_49 + -0.415852 * X_50 + 0.325955 * X_51 + 0.041359 * X_52 + 0.068395 * X_53 + 0.210436 * X_54 + -0.026309 * X_55 + 0.043247 * X_56 + 0.052872 * X_57 + 0.230068 * X_58 + -1.077276 * X_59 + 0.440970 * X_60 + -0.320714 * X_61 + 0.036171 * X_62 + 0.094415 * X_63 AS "Score_6", CAST(NULL AS FLOAT) AS "Proba_6", CAST(NULL AS FLOAT) AS "LogProba_6",
   1.303190 + 0.000000 * X_0 + -0.005608 * X_1 + 0.126245 * X_2 + -0.034598 * X_3 + -0.046373 * X_4 + 0.030228 * X_5 + 0.073670 * X_6 + -0.168257 * X_7 + 0.346799 * X_8 + -0.130005 * X_9 + 0.245037 * X_10 + -0.029584 * X_11 + -0.047584 * X_12 + 0.048538 * X_13 + -0.039098 * X_14 + -0.017407 * X_15 + -0.111925 * X_16 + -0.084531 * X_17 + 0.167140 * X_18 + -0.186675 * X_19 + 0.027324 * X_20 + 0.047912 * X_21 + 0.045988 * X_22 + 0.115132 * X_23 + 0.604045 * X_24 + -0.963623 * X_25 + 0.522962 * X_26 + -0.184664 * X_27 + 0.032845 * X_28 + -0.149357 * X_29 + 0.034355 * X_30 + 0.005923 * X_31 + 0.000000 * X_32 + 0.155712 * X_33 + 0.110539 * X_34 + -0.175739 * X_35 + 0.013287 * X_36 + -0.097446 * X_37 + 0.085116 * X_38 + 0.000000 * X_39 + -0.053319 * X_40 + 0.067564 * X_41 + -0.269724 * X_42 + 0.416652 * X_43 + -0.311526 * X_44 + 0.124563 * X_45 + -0.095486 * X_46 + -0.093728 * X_47 + -0.073288 * X_48 + 0.128356 * X_49 + -0.449879 * X_50 + 0.197714 * X_51 + 0.068382 * X_52 + 0.040773 * X_53 + -0.048921 * X_54 + -0.072698 * X_55 + -0.423453 * X_56 + -0.059757 * X_57 + 0.167370 * X_58 + -0.331550 * X_59 + 0.125621 * X_60 + 0.050599 * X_61 + -0.025579 * X_62 + 0.024164 * X_63 AS "Score_7", CAST(NULL AS FLOAT) AS "Proba_7", CAST(NULL AS FLOAT) AS "LogProba_7",
   0.377045 + 0.000000 * X_0 + -0.117776 * X_1 + 0.058737 * X_2 + 0.012617 * X_3 + 0.034887 * X_4 + -0.020168 * X_5 + 0.062525 * X_6 + -0.107518 * X_7 + -0.080450 * X_8 + 0.034249 * X_9 + -0.096151 * X_10 + 0.056276 * X_11 + -0.007020 * X_12 + -0.002665 * X_13 + -0.004657 * X_14 + -0.017348 * X_15 + 0.015125 * X_16 + 0.326727 * X_17 + -0.045937 * X_18 + -0.030627 * X_19 + -0.012032 * X_20 + -0.046105 * X_21 + 0.001963 * X_22 + 0.027816 * X_23 + 0.045051 * X_24 + -0.502075 * X_25 + 0.377634 * X_26 + -0.118831 * X_27 + 0.057132 * X_28 + -0.010805 * X_29 + 0.018245 * X_30 + 0.162162 * X_31 + 0.000000 * X_32 + -0.563138 * X_33 + 0.306794 * X_34 + -0.250652 * X_35 + 0.121067 * X_36 + -0.083262 * X_37 + 0.088047 * X_38 + 0.000000 * X_39 + 0.011739 * X_40 + 0.122195 * X_41 + 0.088761 * X_42 + 0.241468 * X_43 + -0.031407 * X_44 + -0.002458 * X_45 + -0.087858 * X_46 + -0.133042 * X_47 + -0.002309 * X_48 + -0.134260 * X_49 + 0.273992 * X_50 + -0.467006 * X_51 + 0.057170 * X_52 + 0.024984 * X_53 + -0.009209 * X_54 + 0.001171 * X_55 + -0.194544 * X_56 + 0.020451 * X_57 + -0.136015 * X_58 + 0.020305 * X_59 + -0.079895 * X_60 + -0.003742 * X_61 + -0.048570 * X_62 + 0.068246 * X_63 AS "Score_8", CAST(NULL AS FLOAT) AS "Proba_8", CAST(NULL AS FLOAT) AS "LogProba_8",
   3.659794 + 0.000000 * X_0 + -0.164992 * X_1 + -0.242745 * X_2 + 0.188106 * X_3 + 0.053736 * X_4 + -0.124220 * X_5 + 0.015063 * X_6 + 0.011706 * X_7 + -0.104213 * X_8 + 0.150463 * X_9 + -0.217697 * X_10 + 0.171113 * X_11 + 0.023105 * X_12 + -0.073172 * X_13 + -0.003350 * X_14 + -0.014539 * X_15 + -0.112334 * X_16 + 0.274731 * X_17 + -0.130385 * X_18 + 0.111406 * X_19 + -0.022408 * X_20 + -0.027309 * X_21 + -0.027545 * X_22 + -0.307609 * X_23 + -0.246001 * X_24 + 0.055914 * X_25 + 0.193120 * X_26 + -0.224735 * X_27 + 0.052677 * X_28 + -0.051020 * X_29 + 0.114542 * X_30 + 0.144734 * X_31 + 0.000000 * X_32 + -0.987654 * X_33 + 0.291935 * X_34 + 0.120909 * X_35 + 0.001773 * X_36 + -0.054221 * X_37 + 0.060579 * X_38 + 0.000000 * X_39 + 0.273348 * X_40 + 0.519635 * X_41 + -0.278743 * X_42 + -0.483081 * X_43 + 0.274668 * X_44 + -0.166413 * X_45 + 0.045890 * X_46 + 0.003147 * X_47 + 0.079523 * X_48 + -0.087877 * X_49 + 0.202960 * X_50 + -0.427189 * X_51 + -0.001290 * X_52 + -0.052331 * X_53 + -0.006055 * X_54 + -0.035437 * X_55 + -0.066726 * X_56 + 0.015420 * X_57 + 0.125213 * X_58 + -0.153952 * X_59 + -0.070985 * X_60 + -0.055892 * X_61 + 0.026287 * X_62 + -0.051504 * X_63 AS "Score_9", CAST(NULL AS FLOAT) AS "Proba_9", CAST(NULL AS FLOAT) AS "LogProba_9"
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