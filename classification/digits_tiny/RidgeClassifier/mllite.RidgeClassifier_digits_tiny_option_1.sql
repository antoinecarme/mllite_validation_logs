WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -40253.796875 + 0.000000 * X_0 + 19683.875000 * X_1 + -1647.265747 * X_2 + 1225.496826 * X_3 + 988.603699 * X_4 + 1006.010986 * X_5 + -383.621002 * X_6 + 61.354042 * X_7 + 0.000000 * X_8 + 3118.747559 * X_9 + 95.935593 * X_10 + -424.743866 * X_11 + -117.846367 * X_12 + -698.725830 * X_13 + -800.310486 * X_14 + 1129.293335 * X_15 + 0.000000 * X_16 + -3943.364014 * X_17 + 4328.140625 * X_18 + -469.984467 * X_19 + -69.189400 * X_20 + -1076.982178 * X_21 + -503.085266 * X_22 + 0.000000 * X_23 + 0.000000 * X_24 + -2112.563965 * X_25 + -593.884583 * X_26 + 779.098206 * X_27 + -3977.593018 * X_28 + 377.303314 * X_29 + -4586.909668 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -652.238342 * X_33 + -272.895203 * X_34 + 2354.678223 * X_35 + 273.443207 * X_36 + -1560.732422 * X_37 + 826.850830 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 251.650589 * X_41 + -1231.217407 * X_42 + 1807.259644 * X_43 + 870.811890 * X_44 + -168.866867 * X_45 + -433.812958 * X_46 + 0.000000 * X_47 + 0.000000 * X_48 + -5841.065918 * X_49 + 3249.945801 * X_50 + 842.438782 * X_51 + -621.339111 * X_52 + -252.550690 * X_53 + 808.264954 * X_54 + -793.390259 * X_55 + 0.000000 * X_56 + 20984.123047 * X_57 + 562.500732 * X_58 + -2086.145020 * X_59 + 1728.324219 * X_60 + -143.609772 * X_61 + 504.040497 * X_62 + -436.092590 * X_63 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   -29925.437500 + 0.000000 * X_0 + -14701.732422 * X_1 + 7774.279785 * X_2 + -212.867950 * X_3 + 341.969574 * X_4 + 1116.889404 * X_5 + 888.231628 * X_6 + 1007.760010 * X_7 + 0.000000 * X_8 + -1513.895508 * X_9 + -907.973816 * X_10 + 214.559647 * X_11 + -215.266388 * X_12 + 133.959412 * X_13 + 249.424377 * X_14 + 3629.335449 * X_15 + 0.000000 * X_16 + 1740.750732 * X_17 + -1341.782471 * X_18 + 4188.003906 * X_19 + -152.929413 * X_20 + 960.770874 * X_21 + 414.951385 * X_22 + 0.000000 * X_23 + 0.000000 * X_24 + 3383.196777 * X_25 + -1110.561890 * X_26 + -777.211487 * X_27 + 1979.572754 * X_28 + -3146.848389 * X_29 + 2932.113770 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 53.799931 * X_33 + -583.590149 * X_34 + -483.448883 * X_35 + -526.335083 * X_36 + 672.262207 * X_37 + -147.966873 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 258.313843 * X_41 + -173.030014 * X_42 + -926.054443 * X_43 + -560.212952 * X_44 + 195.596817 * X_45 + 1388.704712 * X_46 + 0.000000 * X_47 + 0.000000 * X_48 + -39.270603 * X_49 + -1436.332397 * X_50 + 1260.712280 * X_51 + -671.307983 * X_52 + 647.168884 * X_53 + -373.948914 * X_54 + -14126.086914 * X_55 + 0.000000 * X_56 + -14037.071289 * X_57 + -575.431946 * X_58 + 1178.026489 * X_59 + -743.699341 * X_60 + 1183.755371 * X_61 + -1375.624512 * X_62 + -2430.598145 * X_63 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   37163.000000 + 0.000000 * X_0 + -10203.621094 * X_1 + -4332.174805 * X_2 + 1792.921021 * X_3 + -814.590332 * X_4 + -952.391113 * X_5 + 438.642273 * X_6 + -1980.280273 * X_7 + 0.000000 * X_8 + 903.727295 * X_9 + -306.581329 * X_10 + -251.528503 * X_11 + 638.005737 * X_12 + 798.274719 * X_13 + 2290.522217 * X_14 + -5606.143555 * X_15 + 0.000000 * X_16 + 2642.596191 * X_17 + -3309.871582 * X_18 + 899.325439 * X_19 + 279.064667 * X_20 + -285.005920 * X_21 + -708.696716 * X_22 + 0.000000 * X_23 + 0.000000 * X_24 + 903.727905 * X_25 + 975.227478 * X_26 + -76.860992 * X_27 + -1673.809692 * X_28 + 26.195042 * X_29 + -1270.877563 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -807.617798 * X_33 + 159.803375 * X_34 + -676.332336 * X_35 + -127.822632 * X_36 + 740.126160 * X_37 + 4.115818 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -1407.504272 * X_41 + -342.669983 * X_42 + -1049.742676 * X_43 + 98.973572 * X_44 + 1074.978271 * X_45 + 232.753769 * X_46 + 0.000000 * X_47 + 0.000000 * X_48 + 4519.818848 * X_49 + 142.326126 * X_50 + -106.945923 * X_51 + -158.702789 * X_52 + -53.976261 * X_53 + -9.841842 * X_54 + 5910.976074 * X_55 + 0.000000 * X_56 + -9731.886719 * X_57 + 1803.872437 * X_58 + 191.214951 * X_59 + -1113.807129 * X_60 + 628.235535 * X_61 + -896.714844 * X_62 + 1400.517090 * X_63 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   52035.457031 + 0.000000 * X_0 + -9052.252930 * X_1 + 2467.692627 * X_2 + -821.236450 * X_3 + 64.632103 * X_4 + -49.078522 * X_5 + 86.218552 * X_6 + -720.706055 * X_7 + 0.000000 * X_8 + -2432.872559 * X_9 + 1392.755615 * X_10 + -59.137115 * X_11 + -501.091339 * X_12 + 467.051941 * X_13 + 26.495905 * X_14 + -1842.855591 * X_15 + 0.000000 * X_16 + 1944.281982 * X_17 + -3043.020264 * X_18 + -697.357300 * X_19 + 31.708441 * X_20 + 45.805801 * X_21 + -123.819992 * X_22 + 0.000000 * X_23 + 0.000000 * X_24 + 2107.486816 * X_25 + 637.177856 * X_26 + -354.980957 * X_27 + 1021.640808 * X_28 + -903.378540 * X_29 + 1923.368530 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 293.247375 * X_33 + 97.138107 * X_34 + -654.974487 * X_35 + -5.418335 * X_36 + 417.869171 * X_37 + -583.029053 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -461.739899 * X_41 + 611.542236 * X_42 + -229.722549 * X_43 + -484.513367 * X_44 + -756.286133 * X_45 + -25.747761 * X_46 + 0.000000 * X_47 + 0.000000 * X_48 + 3717.816162 * X_49 + -808.455811 * X_50 + -1030.300415 * X_51 + 61.705521 * X_52 + -845.223022 * X_53 + -513.286438 * X_54 + -34.855335 * X_55 + 0.000000 * X_56 + -8638.495117 * X_57 + -1285.312256 * X_58 + 499.621185 * X_59 + -163.577850 * X_60 + -312.572144 * X_61 + 64.586594 * X_62 + -87.397888 * X_63 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3",
   43883.226562 + 0.000000 * X_0 + 6183.941406 * X_1 + -6113.265137 * X_2 + 2582.040283 * X_3 + -833.886902 * X_4 + -615.521484 * X_5 + 37.627193 * X_6 + -193.014847 * X_7 + 0.000000 * X_8 + -412.553955 * X_9 + -1176.313599 * X_10 + -187.390045 * X_11 + -366.496338 * X_12 + 821.200867 * X_13 + 300.394135 * X_14 + -257.587158 * X_15 + 0.000000 * X_16 + 2481.689453 * X_17 + -324.403931 * X_18 + 1159.189331 * X_19 + 10.918359 * X_20 + 1189.535400 * X_21 + 319.511841 * X_22 + 0.000000 * X_23 + 0.000000 * X_24 + -3.309302 * X_25 + 88.318398 * X_26 + 254.072464 * X_27 + -1355.510498 * X_28 + -1717.575806 * X_29 + -1511.506470 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -2672.489746 * X_33 + -254.228394 * X_34 + 277.410370 * X_35 + -44.007687 * X_36 + -551.276123 * X_37 + 163.593842 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 1432.044922 * X_41 + -88.444649 * X_42 + -718.446960 * X_43 + -202.023621 * X_44 + 140.109650 * X_45 + 257.812408 * X_46 + 0.000000 * X_47 + 0.000000 * X_48 + -3573.107666 * X_49 + -807.213562 * X_50 + -1161.282593 * X_51 + -181.136627 * X_52 + -169.026901 * X_53 + 733.237671 * X_54 + 1722.571167 * X_55 + 0.000000 * X_56 + 6677.423828 * X_57 + 1895.530640 * X_58 + -517.860107 * X_59 + 872.453369 * X_60 + -140.699219 * X_61 + -44.707848 * X_62 + 351.585419 * X_63 AS "Score_4", CAST(NULL AS FLOAT) AS "Proba_4", CAST(NULL AS FLOAT) AS "LogProba_4",
   137235.250000 + 0.000000 * X_0 + -9187.819336 * X_1 + -11338.010742 * X_2 + -1783.378784 * X_3 + -669.686951 * X_4 + -1741.682495 * X_5 + -898.355591 * X_6 + -1089.115356 * X_7 + 0.000000 * X_8 + 1270.743042 * X_9 + 356.018799 * X_10 + -193.649445 * X_11 + 423.301727 * X_12 + -286.995697 * X_13 + -595.933411 * X_14 + -7354.994629 * X_15 + 0.000000 * X_16 + 2980.948730 * X_17 + -2881.329590 * X_18 + -2377.052002 * X_19 + 376.589203 * X_20 + -173.029831 * X_21 + 8.833610 * X_22 + 0.000000 * X_23 + 0.000000 * X_24 + -667.738403 * X_25 + -192.185776 * X_26 + 1173.886230 * X_27 + -1414.871826 * X_28 + 1901.403687 * X_29 + 221.587814 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + -1010.673096 * X_33 + 227.292587 * X_34 + -839.054993 * X_35 + -342.140045 * X_36 + -489.237274 * X_37 + 981.348877 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -1520.817871 * X_41 + 300.311981 * X_42 + -1895.840576 * X_43 + -831.493591 * X_44 + 255.894424 * X_45 + 809.251648 * X_46 + 0.000000 * X_47 + 0.000000 * X_48 + 12518.868164 * X_49 + -3313.745117 * X_50 + -545.396240 * X_51 + 1511.704956 * X_52 + 3235.078857 * X_53 + 3019.854004 * X_54 + 9654.937500 * X_55 + 0.000000 * X_56 + -8189.823730 * X_57 + 1831.879150 * X_58 + 1507.270386 * X_59 + -2699.121094 * X_60 + -3722.702148 * X_61 + 2656.966797 * X_62 + 2178.615479 * X_63 AS "Score_5", CAST(NULL AS FLOAT) AS "Proba_5", CAST(NULL AS FLOAT) AS "LogProba_5",
   -7467.562012 + 0.000000 * X_0 + 18471.867188 * X_1 + -2123.979248 * X_2 + -763.306091 * X_3 + 215.605179 * X_4 + 751.760681 * X_5 + 246.096741 * X_6 + 1113.065308 * X_7 + 0.000000 * X_8 + 1667.207520 * X_9 + 406.088470 * X_10 + -316.973633 * X_11 + -454.235931 * X_12 + -50.247849 * X_13 + -787.948730 * X_14 + 3949.926514 * X_15 + 0.000000 * X_16 + -2023.649292 * X_17 + 3300.280518 * X_18 + -861.378479 * X_19 + -115.127846 * X_20 + 23.880745 * X_21 + -396.901459 * X_22 + 0.000000 * X_23 + 0.000000 * X_24 + -1820.868408 * X_25 + -743.229004 * X_26 + -462.463287 * X_27 + 2279.643555 * X_28 + -1502.640137 * X_29 + 1691.349854 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 1518.547607 * X_33 + -589.736633 * X_34 + -298.717102 * X_35 + 26.672478 * X_36 + 376.446289 * X_37 + -1376.475342 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + 1968.494995 * X_41 + 221.352127 * X_42 + 164.366852 * X_43 + 87.972412 * X_44 + -1280.175171 * X_45 + -183.429001 * X_46 + 0.000000 * X_47 + 0.000000 * X_48 + -6346.088379 * X_49 + 171.150131 * X_50 + 164.122101 * X_51 + 330.628052 * X_52 + 15.842085 * X_53 + 233.907669 * X_54 + 176.803925 * X_55 + 0.000000 * X_56 + 19320.908203 * X_57 + -7.110055 * X_58 + -676.081909 * X_59 + 1000.847168 * X_60 + -355.755249 * X_61 + 542.912903 * X_62 + -113.862999 * X_63 AS "Score_6", CAST(NULL AS FLOAT) AS "Proba_6", CAST(NULL AS FLOAT) AS "LogProba_6",
   -192676.218750 + 0.000000 * X_0 + -1194.268066 * X_1 + 15312.724609 * X_2 + -2019.669067 * X_3 + 707.353455 * X_4 + 484.012299 * X_5 + -414.839691 * X_6 + 1800.937744 * X_7 + 0.000000 * X_8 + -2601.102539 * X_9 + 140.070145 * X_10 + 1218.863770 * X_11 + 593.629211 * X_12 + -1184.517822 * X_13 + -682.645081 * X_14 + 6353.024902 * X_15 + 0.000000 * X_16 + -5823.254395 * X_17 + 3271.986816 * X_18 + -1840.747437 * X_19 + -361.034149 * X_20 + -684.974915 * X_21 + 989.206299 * X_22 + 0.000000 * X_23 + 0.000000 * X_24 + -1789.930664 * X_25 + 939.137695 * X_26 + -535.539856 * X_27 + 3140.926758 * X_28 + 4965.541504 * X_29 + 600.873108 * X_30 + 0.000000 * X_31 + 0.000000 * X_32 + 3277.424072 * X_33 + 1216.215698 * X_34 + 320.438202 * X_35 + 745.608398 * X_36 + 394.542542 * X_37 + 131.561676 * X_38 + 0.000000 * X_39 + 0.000000 * X_40 + -520.441162 * X_41 + 702.155884 * X_42 + 2848.180664 * X_43 + 1020.486267 * X_44 + 538.748596 * X_45 + -2045.532471 * X_46 + 0.000000 * X_47 + 0.000000 * X_48 + -4956.969727 * X_49 + 2802.324951 * X_50 + 576.652405 * X_51 + -271.552216 * X_52 + -2577.312744 * X_53 + -3898.187012 * X_54 + -2510.957031 * X_55 + 0.000000 * X_56 + -6385.175781 * X_57 + -4225.927246 * X_58 + -96.046013 * X_59 + 1118.582153 * X_60 + 2863.345947 * X_61 + -1451.458374 * X_62 + -862.766235 * X_63 AS "Score_7", CAST(NULL AS FLOAT) AS "Proba_7", CAST(NULL AS FLOAT) AS "LogProba_7"
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
    t1."Score_7" AS "Score_7"
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
 END AS "DecisionProba"
FROM arg_max_cte