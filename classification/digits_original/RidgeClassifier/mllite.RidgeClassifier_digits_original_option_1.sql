WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
model_scores_cte AS 
 (SELECT model_input."index" AS "index",
   -36.987644 + 0.000000 * X_0 + 3.860751 * X_1 + 0.401071 * X_2 + -6.770305 * X_3 + 0.899931 * X_4 + -0.159043 * X_5 + 1.354230 * X_6 + 0.444152 * X_7 + -6.376829 * X_8 + -1.759248 * X_9 + -2.448761 * X_10 + -1.924706 * X_11 + 1.370575 * X_12 + -0.551907 * X_13 + 0.190362 * X_14 + -1.397838 * X_15 + 35.081207 * X_16 + 0.379235 * X_17 + -0.238731 * X_18 + 0.490090 * X_19 + 1.329500 * X_20 + -0.299650 * X_21 + 0.121832 * X_22 + 1.160586 * X_23 + -71.214272 * X_24 + 6.710927 * X_25 + -2.345322 * X_26 + 0.956190 * X_27 + -0.286361 * X_28 + 1.660212 * X_29 + -0.807609 * X_30 + -31.632599 * X_31 + 0.000000 * X_32 + 12.817764 * X_33 + -3.106855 * X_34 + 2.754260 * X_35 + -0.757971 * X_36 + 0.048552 * X_37 + -2.369484 * X_38 + 0.000000 * X_39 + 7.071799 * X_40 + -6.636298 * X_41 + 1.796025 * X_42 + -3.375967 * X_43 + 1.748199 * X_44 + -0.062553 * X_45 + 1.350472 * X_46 + 7.602018 * X_47 + 10.416359 * X_48 + -0.171427 * X_49 + 2.122612 * X_50 + 1.788619 * X_51 + -1.768564 * X_52 + 0.087727 * X_53 + 0.485332 * X_54 + 1.393724 * X_55 + 17.489645 * X_56 + 0.640951 * X_57 + -0.364865 * X_58 + 9.799593 * X_59 + -2.633640 * X_60 + 0.798306 * X_61 + 0.426206 * X_62 + -0.955876 * X_63 AS "Score_0", CAST(NULL AS FLOAT) AS "Proba_0", CAST(NULL AS FLOAT) AS "LogProba_0",
   54.698711 + 0.000000 * X_0 + 5.133045 * X_1 + -0.188537 * X_2 + 12.827849 * X_3 + -1.939579 * X_4 + 0.283836 * X_5 + -0.847730 * X_6 + 1.785814 * X_7 + 35.304398 * X_8 + -2.105556 * X_9 + 6.044786 * X_10 + 1.944992 * X_11 + -1.989356 * X_12 + 1.612604 * X_13 + 0.101354 * X_14 + 3.068810 * X_15 + -10.481716 * X_16 + -3.136345 * X_17 + -1.063393 * X_18 + -0.724848 * X_19 + -1.648384 * X_20 + 0.128455 * X_21 + 0.513082 * X_22 + -5.786546 * X_23 + -3.914007 * X_24 + 2.643899 * X_25 + -0.014914 * X_26 + 0.731089 * X_27 + -0.026547 * X_28 + -1.376344 * X_29 + -1.047009 * X_30 + 49.084366 * X_31 + 0.000000 * X_32 + -5.220175 * X_33 + -0.820122 * X_34 + -0.476049 * X_35 + -0.659068 * X_36 + 0.290115 * X_37 + 1.251941 * X_38 + 0.000000 * X_39 + -3.300244 * X_40 + 2.456412 * X_41 + 0.071635 * X_42 + 0.459912 * X_43 + 0.301646 * X_44 + -0.501052 * X_45 + 0.017970 * X_46 + -2.984018 * X_47 + -2.938389 * X_48 + 2.240135 * X_49 + -2.778806 * X_50 + 1.284631 * X_51 + 0.797925 * X_52 + -0.263218 * X_53 + 1.222426 * X_54 + -2.020990 * X_55 + -10.962286 * X_56 + -8.135533 * X_57 + 1.783396 * X_58 + -22.483160 * X_59 + 6.728076 * X_60 + -4.086452 * X_61 + -0.043674 * X_62 + 2.128641 * X_63 AS "Score_1", CAST(NULL AS FLOAT) AS "Proba_1", CAST(NULL AS FLOAT) AS "LogProba_1",
   -48.291885 + 0.000000 * X_0 + -7.812525 * X_1 + 0.601940 * X_2 + -8.319206 * X_3 + 0.994512 * X_4 + -0.181679 * X_5 + 0.046231 * X_6 + -2.734180 * X_7 + -34.062904 * X_8 + 2.910252 * X_9 + -4.711136 * X_10 + -1.282884 * X_11 + 0.585328 * X_12 + -1.191763 * X_13 + -0.377711 * X_14 + -0.348812 * X_15 + -19.552603 * X_16 + 4.440536 * X_17 + 1.217586 * X_18 + 0.533345 * X_19 + 0.421285 * X_20 + 0.552453 * X_21 + -0.547158 * X_22 + 6.221912 * X_23 + 31.070969 * X_24 + -5.929578 * X_25 + 1.191690 * X_26 + -1.090378 * X_27 + 0.056449 * X_28 + -0.096664 * X_29 + 2.112748 * X_30 + -37.298222 * X_31 + 0.000000 * X_32 + -8.437358 * X_33 + 4.326187 * X_34 + -2.540432 * X_35 + 1.858623 * X_36 + 0.211756 * X_37 + 1.111109 * X_38 + 0.000000 * X_39 + -2.537080 * X_40 + 4.208304 * X_41 + -2.505293 * X_42 + 3.825182 * X_43 + -2.256073 * X_44 + 1.112815 * X_45 + -1.073340 * X_46 + -4.010627 * X_47 + -7.574642 * X_48 + -3.518759 * X_49 + 2.478321 * X_50 + -1.353708 * X_51 + 0.738916 * X_52 + -0.086357 * X_53 + -2.058305 * X_54 + 1.696159 * X_55 + -5.119648 * X_56 + 7.807826 * X_57 + -1.768739 * X_58 + 15.081223 * X_59 + -3.714950 * X_60 + 3.235526 * X_61 + -0.671976 * X_62 + -0.894100 * X_63 AS "Score_2", CAST(NULL AS FLOAT) AS "Proba_2", CAST(NULL AS FLOAT) AS "LogProba_2",
   -15.712386 + 0.000000 * X_0 + -10.751398 * X_1 + -0.422240 * X_2 + -10.654829 * X_3 + 1.866174 * X_4 + -0.128934 * X_5 + -0.343611 * X_6 + -2.982237 * X_7 + -31.740746 * X_8 + 4.700069 * X_9 + -5.296927 * X_10 + -1.487523 * X_11 + 1.489896 * X_12 + -2.346207 * X_13 + -0.337029 * X_14 + -2.903296 * X_15 + -2.750119 * X_16 + 1.131420 * X_17 + 1.466124 * X_18 + 0.967522 * X_19 + 1.811533 * X_20 + -0.418725 * X_21 + -1.458547 * X_22 + 4.319975 * X_23 + 74.125359 * X_24 + -8.833755 * X_25 + 3.506082 * X_26 + -3.510015 * X_27 + 0.159962 * X_28 + 0.842715 * X_29 + 2.639025 * X_30 + -33.502720 * X_31 + 0.000000 * X_32 + -7.717361 * X_33 + 1.867429 * X_34 + 0.854327 * X_35 + 1.034258 * X_36 + -0.416479 * X_37 + 0.609298 * X_38 + 0.000000 * X_39 + 8.586581 * X_40 + 5.360595 * X_41 + 0.222472 * X_42 + -3.649247 * X_43 + -0.295260 * X_44 + -0.105678 * X_45 + -1.987518 * X_46 + -1.427073 * X_47 + -6.778192 * X_48 + -5.304724 * X_49 + 1.093593 * X_50 + -0.467511 * X_51 + -0.422636 * X_52 + -0.149821 * X_53 + -1.527393 * X_54 + 1.347860 * X_55 + 41.591793 * X_56 + 12.764166 * X_57 + -1.256644 * X_58 + 19.346127 * X_59 + -4.975121 * X_60 + 3.624672 * X_61 + -0.429701 * X_62 + -3.516475 * X_63 AS "Score_3", CAST(NULL AS FLOAT) AS "Proba_3", CAST(NULL AS FLOAT) AS "LogProba_3",
   55.604214 + 0.000000 * X_0 + 6.788124 * X_1 + 0.142061 * X_2 + 18.285276 * X_3 + -3.255663 * X_4 + 1.133573 * X_5 + 1.057158 * X_6 + 6.327574 * X_7 + 33.617725 * X_8 + -1.337263 * X_9 + 9.333271 * X_10 + 3.744930 * X_11 + -1.832330 * X_12 + 4.052439 * X_13 + -0.287579 * X_14 + 0.703968 * X_15 + 13.323513 * X_16 + -5.603190 * X_17 + -2.348903 * X_18 + -1.895342 * X_19 + -2.815019 * X_20 + -0.157731 * X_21 + 2.706657 * X_22 + -9.351563 * X_23 + -14.262749 * X_24 + 4.755561 * X_25 + -3.364028 * X_26 + 4.399168 * X_27 + 0.300687 * X_28 + -0.723720 * X_29 + -5.602705 * X_30 + 98.507256 * X_31 + 0.000000 * X_32 + 28.496887 * X_33 + -7.541247 * X_34 + 1.497808 * X_35 + -3.503242 * X_36 + -0.360741 * X_37 + -2.574205 * X_38 + 0.000000 * X_39 + -16.923447 * X_40 + -15.515315 * X_41 + 1.469767 * X_42 + 1.591854 * X_43 + 2.254930 * X_44 + -0.530781 * X_45 + 3.881693 * X_46 + 7.144463 * X_47 + 14.260453 * X_48 + 11.713148 * X_49 + -3.753181 * X_50 + 1.131171 * X_51 + -0.294825 * X_52 + 0.311606 * X_53 + 2.496088 * X_54 + -2.072358 * X_55 + -101.677872 * X_56 + -18.371658 * X_57 + 2.059244 * X_58 + -33.215759 * X_59 + 8.301123 * X_60 + -6.177245 * X_61 + 1.295888 * X_62 + 4.466901 * X_63 AS "Score_4", CAST(NULL AS FLOAT) AS "Proba_4", CAST(NULL AS FLOAT) AS "LogProba_4",
   -57.098522 + 0.000000 * X_0 + -4.494911 * X_1 + 0.729877 * X_2 + -10.900904 * X_3 + 1.715926 * X_4 + -1.466008 * X_5 + -0.236712 * X_6 + -2.104828 * X_7 + -33.180878 * X_8 + 2.759243 * X_9 + -6.442224 * X_10 + -2.015309 * X_11 + 1.415110 * X_12 + -1.246180 * X_13 + 1.495696 * X_14 + 0.224988 * X_15 + 14.469610 * X_16 + 0.106060 * X_17 + 1.251650 * X_18 + 0.723875 * X_19 + 1.555081 * X_20 + 0.152265 * X_21 + -1.093448 * X_22 + 2.744293 * X_23 + -102.970322 * X_24 + 13.014235 * X_25 + -2.772155 * X_26 + 0.680306 * X_27 + -0.711767 * X_28 + 1.124451 * X_29 + 2.007714 * X_30 + -84.313705 * X_31 + 0.000000 * X_32 + -8.646276 * X_33 + 2.546469 * X_34 + -0.142069 * X_35 + 1.270872 * X_36 + 0.223145 * X_37 + -0.483100 * X_38 + 0.000000 * X_39 + 7.091163 * X_40 + 3.866053 * X_41 + 0.369959 * X_42 + 0.229172 * X_43 + -0.829113 * X_44 + 0.562175 * X_45 + -0.090722 * X_46 + 0.719187 * X_47 + 4.122143 * X_48 + -3.212842 * X_49 + 1.904438 * X_50 + -1.243445 * X_51 + -0.295897 * X_52 + 0.174884 * X_53 + -0.831840 * X_54 + 1.770223 * X_55 + 34.767323 * X_56 + 8.161566 * X_57 + -1.356939 * X_58 + 19.940903 * X_59 + -6.227137 * X_60 + 3.765923 * X_61 + -0.067268 * X_62 + -1.494788 * X_63 AS "Score_5", CAST(NULL AS FLOAT) AS "Proba_5", CAST(NULL AS FLOAT) AS "LogProba_5",
   9.331075 + 0.000000 * X_0 + 5.521992 * X_1 + -0.191320 * X_2 + 5.281173 * X_3 + -1.098413 * X_4 + 0.770381 * X_5 + 0.387816 * X_6 + 1.485880 * X_7 + 21.609083 * X_8 + -1.798636 * X_9 + 3.715436 * X_10 + 0.442367 * X_11 + -0.616606 * X_12 + 0.952059 * X_13 + -0.555474 * X_14 + 0.912656 * X_15 + 9.410070 * X_16 + -2.552875 * X_17 + -0.601035 * X_18 + -0.642867 * X_19 + -0.901962 * X_20 + 0.169506 * X_21 + 0.948668 * X_22 + -1.381564 * X_23 + 11.387647 * X_24 + -0.314644 * X_25 + -0.395622 * X_26 + 0.961628 * X_27 + 0.269860 * X_28 + -0.559983 * X_29 + -1.545302 * X_30 + 27.182394 * X_31 + 0.000000 * X_32 + 6.305039 * X_33 + -1.281528 * X_34 + -0.168710 * X_35 + -0.833096 * X_36 + 0.118762 * X_37 + -0.201649 * X_38 + 0.000000 * X_39 + -3.515586 * X_40 + -3.772679 * X_41 + -0.359343 * X_42 + 1.189662 * X_43 + 0.415127 * X_44 + -0.070419 * X_45 + 0.632898 * X_46 + 0.540279 * X_47 + 2.478535 * X_48 + 2.144785 * X_49 + -0.416583 * X_50 + 1.217334 * X_51 + -0.154083 * X_52 + 0.009643 * X_53 + 0.793724 * X_54 + -0.911563 * X_55 + -29.293915 * X_56 + -5.689725 * X_57 + 0.712236 * X_58 + -10.602820 * X_59 + 3.736139 * X_60 + -2.383697 * X_61 + 0.331130 * X_62 + 1.627848 * X_63 AS "Score_6", CAST(NULL AS FLOAT) AS "Proba_6", CAST(NULL AS FLOAT) AS "LogProba_6",
   12.139811 + 0.000000 * X_0 + 1.764141 * X_1 + -0.207908 * X_2 + 1.277067 * X_3 + -0.174745 * X_4 + 0.175818 * X_5 + -0.211906 * X_6 + -0.438582 * X_7 + 17.144575 * X_8 + -1.221796 * X_9 + 1.675183 * X_10 + 0.341706 * X_11 + -0.440085 * X_12 + 0.361713 * X_13 + -0.690998 * X_14 + 0.212696 * X_15 + -16.294563 * X_16 + -0.381577 * X_17 + 0.196834 * X_18 + -0.459897 * X_19 + -0.504027 * X_20 + 0.118131 * X_21 + 0.443729 * X_22 + 2.050517 * X_23 + 63.211018 * X_24 + -6.293834 * X_25 + 1.481200 * X_26 + -0.390088 * X_27 + 0.392376 * X_28 + -0.788721 * X_29 + 0.026876 * X_30 + 12.485581 * X_31 + 0.000000 * X_32 + -1.101384 * X_33 + 1.136181 * X_34 + -1.501297 * X_35 + -0.019902 * X_36 + -0.367032 * X_37 + 0.585717 * X_38 + 0.000000 * X_39 + -6.038455 * X_40 + 0.561401 * X_41 + -0.905443 * X_42 + 2.445121 * X_43 + -1.237607 * X_44 + 0.292819 * X_45 + -0.414875 * X_46 + -2.642956 * X_47 + -4.647305 * X_48 + 1.643214 * X_49 + -1.874579 * X_50 + -0.131543 * X_51 + 0.875655 * X_52 + 0.250783 * X_53 + -0.197186 * X_54 + -0.537272 * X_55 + -22.772631 * X_56 + -2.312898 * X_57 + 0.476839 * X_58 + -2.416385 * X_59 + 0.397909 * X_60 + 0.287970 * X_61 + -0.166395 * X_62 + 0.213543 * X_63 AS "Score_7", CAST(NULL AS FLOAT) AS "Proba_7", CAST(NULL AS FLOAT) AS "LogProba_7",
   -12.089852 + 0.000000 * X_0 + 1.750256 * X_1 + -0.383856 * X_2 + -2.145375 * X_3 + 0.612163 * X_4 + 0.000408 * X_5 + -0.399883 * X_6 + -1.080434 * X_7 + -2.062099 * X_8 + -1.655044 * X_9 + -1.228724 * X_10 + -0.141620 * X_11 + 0.228189 * X_12 + -0.787187 * X_13 + -0.048494 * X_14 + -0.438587 * X_15 + -10.548678 * X_16 + 3.066578 * X_17 + 0.250538 * X_18 + 0.208562 * X_19 + 0.173569 * X_20 + 0.156442 * X_21 + -0.558867 * X_22 + 2.648237 * X_23 + 18.610760 * X_24 + -4.108664 * X_25 + 1.188752 * X_26 + -0.858976 * X_27 + 0.085336 * X_28 + -0.326789 * X_29 + 1.139257 * X_30 + -7.107018 * X_31 + 0.000000 * X_32 + -7.232533 * X_33 + 2.562870 * X_34 + -1.518407 * X_35 + 1.140923 * X_36 + 0.177605 * X_37 + 1.098072 * X_38 + 0.000000 * X_39 + 1.014365 * X_40 + 3.596440 * X_41 + -1.261969 * X_42 + 1.813122 * X_43 + -0.952906 * X_44 + 0.090267 * X_45 + -0.967900 * X_46 + -3.421414 * X_47 + -3.856544 * X_48 + -2.844476 * X_49 + 1.731826 * X_50 + -2.431707 * X_51 + 0.877629 * X_52 + -0.015460 * X_53 + -0.525607 * X_54 + -0.338937 * X_55 + 19.216080 * X_56 + 2.312829 * X_57 + -0.856581 * X_58 + 5.335842 * X_59 + -1.833363 * X_60 + 1.238770 * X_61 + -0.258867 * X_62 + -0.171686 * X_63 AS "Score_8", CAST(NULL AS FLOAT) AS "Proba_8", CAST(NULL AS FLOAT) AS "LogProba_8",
   30.406532 + 0.000000 * X_0 + -1.759165 * X_1 + -0.481076 * X_2 + 1.119323 * X_3 + 0.379698 * X_4 + -0.428392 * X_5 + -0.805639 * X_6 + -0.703166 * X_7 + -0.251474 * X_8 + -0.492134 * X_9 + -0.640882 * X_10 + 0.378035 * X_11 + -0.210739 * X_12 + -0.855568 * X_13 + 0.509937 * X_14 + -0.034460 * X_15 + -12.656135 * X_16 + 2.550010 * X_17 + -0.130671 * X_18 + 0.799549 * X_19 + 0.578424 * X_20 + -0.401133 * X_21 + -1.075979 * X_22 + -2.625908 * X_23 + -6.048487 * X_24 + -1.643524 * X_25 + 1.524215 * X_26 + -1.878867 * X_27 + -0.240027 * X_28 + 0.244832 * X_29 + 1.077042 * X_30 + 6.593253 * X_31 + 0.000000 * X_32 + -9.265127 * X_33 + 0.310661 * X_34 + 1.240541 * X_35 + 0.468628 * X_36 + 0.074343 * X_37 + 0.972333 * X_38 + 0.000000 * X_39 + 8.551099 * X_40 + 5.875319 * X_41 + 1.102206 * X_42 + -4.528760 * X_43 + 0.851035 * X_44 + -0.787597 * X_45 + -1.348692 * X_46 + -1.519937 * X_47 + -5.482260 * X_48 + -2.689140 * X_49 + -0.507637 * X_50 + 0.206134 * X_51 + -0.354093 * X_52 + -0.319789 * X_53 + 0.142804 * X_54 + -0.326885 * X_55 + 56.762749 * X_56 + 2.822391 * X_57 + 0.572070 * X_58 + -0.785664 * X_59 + 0.220979 * X_60 + -0.303797 * X_61 + -0.415344 * X_62 + -1.403969 * X_63 AS "Score_9", CAST(NULL AS FLOAT) AS "Proba_9", CAST(NULL AS FLOAT) AS "LogProba_9"
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