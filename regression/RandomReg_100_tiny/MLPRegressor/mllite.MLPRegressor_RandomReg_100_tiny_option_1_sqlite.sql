WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"Input_Layer_BA" AS
 ( SELECT
    t."index" as "index",
    t."X_0" AS "OUT_0",
    t."X_1" AS "OUT_1",
    t."X_2" AS "OUT_2",
    t."X_3" AS "OUT_3",
    t."X_4" AS "OUT_4",
    t."X_5" AS "OUT_5",
    t."X_6" AS "OUT_6",
    t."X_7" AS "OUT_7",
    t."X_8" AS "OUT_8",
    t."X_9" AS "OUT_9",
    t."X_10" AS "OUT_10",
    t."X_11" AS "OUT_11",
    t."X_12" AS "OUT_12",
    t."X_13" AS "OUT_13",
    t."X_14" AS "OUT_14",
    t."X_15" AS "OUT_15",
    t."X_16" AS "OUT_16",
    t."X_17" AS "OUT_17",
    t."X_18" AS "OUT_18",
    t."X_19" AS "OUT_19",
    t."X_20" AS "OUT_20",
    t."X_21" AS "OUT_21",
    t."X_22" AS "OUT_22",
    t."X_23" AS "OUT_23",
    t."X_24" AS "OUT_24",
    t."X_25" AS "OUT_25",
    t."X_26" AS "OUT_26",
    t."X_27" AS "OUT_27",
    t."X_28" AS "OUT_28",
    t."X_29" AS "OUT_29",
    t."X_30" AS "OUT_30",
    t."X_31" AS "OUT_31",
    t."X_32" AS "OUT_32",
    t."X_33" AS "OUT_33",
    t."X_34" AS "OUT_34",
    t."X_35" AS "OUT_35",
    t."X_36" AS "OUT_36",
    t."X_37" AS "OUT_37",
    t."X_38" AS "OUT_38",
    t."X_39" AS "OUT_39",
    t."X_40" AS "OUT_40",
    t."X_41" AS "OUT_41",
    t."X_42" AS "OUT_42",
    t."X_43" AS "OUT_43",
    t."X_44" AS "OUT_44",
    t."X_45" AS "OUT_45",
    t."X_46" AS "OUT_46",
    t."X_47" AS "OUT_47",
    t."X_48" AS "OUT_48",
    t."X_49" AS "OUT_49",
    t."X_50" AS "OUT_50",
    t."X_51" AS "OUT_51",
    t."X_52" AS "OUT_52",
    t."X_53" AS "OUT_53",
    t."X_54" AS "OUT_54",
    t."X_55" AS "OUT_55",
    t."X_56" AS "OUT_56",
    t."X_57" AS "OUT_57",
    t."X_58" AS "OUT_58",
    t."X_59" AS "OUT_59",
    t."X_60" AS "OUT_60",
    t."X_61" AS "OUT_61",
    t."X_62" AS "OUT_62",
    t."X_63" AS "OUT_63",
    t."X_64" AS "OUT_64",
    t."X_65" AS "OUT_65",
    t."X_66" AS "OUT_66",
    t."X_67" AS "OUT_67",
    t."X_68" AS "OUT_68",
    t."X_69" AS "OUT_69",
    t."X_70" AS "OUT_70",
    t."X_71" AS "OUT_71",
    t."X_72" AS "OUT_72",
    t."X_73" AS "OUT_73",
    t."X_74" AS "OUT_74",
    t."X_75" AS "OUT_75",
    t."X_76" AS "OUT_76",
    t."X_77" AS "OUT_77",
    t."X_78" AS "OUT_78",
    t."X_79" AS "OUT_79",
    t."X_80" AS "OUT_80",
    t."X_81" AS "OUT_81",
    t."X_82" AS "OUT_82",
    t."X_83" AS "OUT_83",
    t."X_84" AS "OUT_84",
    t."X_85" AS "OUT_85",
    t."X_86" AS "OUT_86",
    t."X_87" AS "OUT_87",
    t."X_88" AS "OUT_88",
    t."X_89" AS "OUT_89",
    t."X_90" AS "OUT_90",
    t."X_91" AS "OUT_91",
    t."X_92" AS "OUT_92",
    t."X_93" AS "OUT_93",
    t."X_94" AS "OUT_94",
    t."X_95" AS "OUT_95",
    t."X_96" AS "OUT_96",
    t."X_97" AS "OUT_97",
    t."X_98" AS "OUT_98",
    t."X_99" AS "OUT_99"
 FROM "model_input" AS t
),
"Hidden_Layer_1_BA" AS
 ( SELECT
    t."index" as "index",
    -0.131467 + -0.041278 * t."OUT_0"  + 0.017051 * t."OUT_1"  + 0.198621 * t."OUT_2"  + 0.264991 * t."OUT_3"  + 0.146986 * t."OUT_4"  + 0.090963 * t."OUT_5"  + -0.024559 * t."OUT_6"  + -0.035555 * t."OUT_7"  + -0.057443 * t."OUT_8"  + -0.189615 * t."OUT_9"  + -0.150691 * t."OUT_10"  + -0.170350 * t."OUT_11"  + 0.143105 * t."OUT_12"  + 0.165376 * t."OUT_13"  + 0.051363 * t."OUT_14"  + -0.229131 * t."OUT_15"  + -0.230141 * t."OUT_16"  + 0.215264 * t."OUT_17"  + -0.035793 * t."OUT_18"  + 0.132810 * t."OUT_19"  + 0.113083 * t."OUT_20"  + -0.238623 * t."OUT_21"  + -0.194944 * t."OUT_22"  + 0.036501 * t."OUT_23"  + 0.101928 * t."OUT_24"  + 0.077723 * t."OUT_25"  + 0.131363 * t."OUT_26"  + -0.081724 * t."OUT_27"  + 0.101684 * t."OUT_28"  + 0.012912 * t."OUT_29"  + 0.104969 * t."OUT_30"  + -0.172596 * t."OUT_31"  + 0.087461 * t."OUT_32"  + 0.248650 * t."OUT_33"  + -0.208895 * t."OUT_34"  + -0.135660 * t."OUT_35"  + -0.141524 * t."OUT_36"  + -0.022907 * t."OUT_37"  + -0.063323 * t."OUT_38"  + -0.194426 * t."OUT_39"  + 0.059370 * t."OUT_40"  + -0.089616 * t."OUT_41"  + -0.184884 * t."OUT_42"  + 0.139789 * t."OUT_43"  + 0.223543 * t."OUT_44"  + 0.158481 * t."OUT_45"  + 0.062623 * t."OUT_46"  + 0.172390 * t."OUT_47"  + 0.141458 * t."OUT_48"  + -0.202068 * t."OUT_49"  + -0.082728 * t."OUT_50"  + 0.235026 * t."OUT_51"  + 0.041026 * t."OUT_52"  + 0.090542 * t."OUT_53"  + -0.115600 * t."OUT_54"  + -0.077147 * t."OUT_55"  + -0.041196 * t."OUT_56"  + -0.242365 * t."OUT_57"  + 0.036085 * t."OUT_58"  + -0.105243 * t."OUT_59"  + -0.044101 * t."OUT_60"  + 0.030646 * t."OUT_61"  + 0.040785 * t."OUT_62"  + 0.148376 * t."OUT_63"  + 0.060650 * t."OUT_64"  + 0.050333 * t."OUT_65"  + 0.054580 * t."OUT_66"  + 0.115220 * t."OUT_67"  + 0.232568 * t."OUT_68"  + 0.098548 * t."OUT_69"  + 0.089159 * t."OUT_70"  + 0.161657 * t."OUT_71"  + 0.064317 * t."OUT_72"  + -0.103011 * t."OUT_73"  + -0.205088 * t."OUT_74"  + 0.089065 * t."OUT_75"  + -0.192432 * t."OUT_76"  + -0.077410 * t."OUT_77"  + 0.126873 * t."OUT_78"  + 0.050022 * t."OUT_79"  + -0.055692 * t."OUT_80"  + 0.128135 * t."OUT_81"  + -0.169800 * t."OUT_82"  + 0.037614 * t."OUT_83"  + 0.247884 * t."OUT_84"  + 0.027644 * t."OUT_85"  + -0.074089 * t."OUT_86"  + -0.048835 * t."OUT_87"  + -0.174651 * t."OUT_88"  + -0.138246 * t."OUT_89"  + -0.180433 * t."OUT_90"  + 0.211586 * t."OUT_91"  + 0.139728 * t."OUT_92"  + -0.218950 * t."OUT_93"  + -0.236172 * t."OUT_94"  + -0.023377 * t."OUT_95"  + -0.140251 * t."OUT_96"  + -0.049507 * t."OUT_97"  + -0.146735 * t."OUT_98"  + -0.191740 * t."OUT_99" AS "OUT_0",
    0.038294 + 0.132177 * t."OUT_0"  + -0.169562 * t."OUT_1"  + 0.053796 * t."OUT_2"  + -0.221305 * t."OUT_3"  + -0.120050 * t."OUT_4"  + -0.214198 * t."OUT_5"  + -0.198490 * t."OUT_6"  + 0.015606 * t."OUT_7"  + 0.090068 * t."OUT_8"  + 0.240960 * t."OUT_9"  + 0.135866 * t."OUT_10"  + -0.180080 * t."OUT_11"  + 0.218938 * t."OUT_12"  + 0.194302 * t."OUT_13"  + 0.015132 * t."OUT_14"  + 0.000103 * t."OUT_15"  + 0.173636 * t."OUT_16"  + 0.234627 * t."OUT_17"  + 0.239836 * t."OUT_18"  + 0.146888 * t."OUT_19"  + 0.154765 * t."OUT_20"  + 0.122769 * t."OUT_21"  + -0.237979 * t."OUT_22"  + -0.047231 * t."OUT_23"  + -0.091199 * t."OUT_24"  + -0.177058 * t."OUT_25"  + 0.207225 * t."OUT_26"  + 0.030195 * t."OUT_27"  + -0.008119 * t."OUT_28"  + -0.061597 * t."OUT_29"  + 0.141235 * t."OUT_30"  + -0.000492 * t."OUT_31"  + -0.225955 * t."OUT_32"  + -0.153844 * t."OUT_33"  + -0.181279 * t."OUT_34"  + -0.142676 * t."OUT_35"  + -0.215484 * t."OUT_36"  + 0.076571 * t."OUT_37"  + 0.206145 * t."OUT_38"  + -0.103728 * t."OUT_39"  + -0.127915 * t."OUT_40"  + 0.109917 * t."OUT_41"  + 0.148847 * t."OUT_42"  + 0.110823 * t."OUT_43"  + 0.232115 * t."OUT_44"  + 0.038271 * t."OUT_45"  + 0.092298 * t."OUT_46"  + 0.119076 * t."OUT_47"  + -0.114767 * t."OUT_48"  + -0.120173 * t."OUT_49"  + 0.001761 * t."OUT_50"  + 0.073832 * t."OUT_51"  + 0.102846 * t."OUT_52"  + -0.103045 * t."OUT_53"  + -0.151914 * t."OUT_54"  + -0.195991 * t."OUT_55"  + 0.088994 * t."OUT_56"  + 0.153053 * t."OUT_57"  + 0.248305 * t."OUT_58"  + 0.198512 * t."OUT_59"  + -0.011914 * t."OUT_60"  + -0.063013 * t."OUT_61"  + 0.084464 * t."OUT_62"  + -0.092674 * t."OUT_63"  + -0.153361 * t."OUT_64"  + 0.122838 * t."OUT_65"  + -0.134395 * t."OUT_66"  + 0.063607 * t."OUT_67"  + -0.129718 * t."OUT_68"  + 0.208122 * t."OUT_69"  + 0.239787 * t."OUT_70"  + 0.112390 * t."OUT_71"  + 0.202274 * t."OUT_72"  + 0.070612 * t."OUT_73"  + 0.123863 * t."OUT_74"  + -0.222115 * t."OUT_75"  + 0.102046 * t."OUT_76"  + 0.156258 * t."OUT_77"  + -0.211260 * t."OUT_78"  + -0.134455 * t."OUT_79"  + 0.214861 * t."OUT_80"  + 0.034675 * t."OUT_81"  + -0.184872 * t."OUT_82"  + 0.100675 * t."OUT_83"  + -0.178544 * t."OUT_84"  + -0.060995 * t."OUT_85"  + 0.110457 * t."OUT_86"  + 0.016377 * t."OUT_87"  + -0.085831 * t."OUT_88"  + -0.064725 * t."OUT_89"  + -0.068902 * t."OUT_90"  + -0.123136 * t."OUT_91"  + -0.089119 * t."OUT_92"  + 0.077983 * t."OUT_93"  + 0.006794 * t."OUT_94"  + -0.069623 * t."OUT_95"  + -0.093291 * t."OUT_96"  + 0.069315 * t."OUT_97"  + 0.089601 * t."OUT_98"  + -0.061895 * t."OUT_99" AS "OUT_1",
    0.123578 + -0.081306 * t."OUT_0"  + 0.082828 * t."OUT_1"  + 0.205201 * t."OUT_2"  + -0.086914 * t."OUT_3"  + -0.123437 * t."OUT_4"  + -0.052870 * t."OUT_5"  + -0.119545 * t."OUT_6"  + -0.223392 * t."OUT_7"  + -0.048327 * t."OUT_8"  + -0.179728 * t."OUT_9"  + 0.022674 * t."OUT_10"  + 0.067404 * t."OUT_11"  + 0.186879 * t."OUT_12"  + -0.142252 * t."OUT_13"  + 0.028308 * t."OUT_14"  + 0.106750 * t."OUT_15"  + -0.106793 * t."OUT_16"  + -0.023072 * t."OUT_17"  + -0.173209 * t."OUT_18"  + 0.209608 * t."OUT_19"  + 0.169561 * t."OUT_20"  + -0.002693 * t."OUT_21"  + -0.082861 * t."OUT_22"  + -0.059907 * t."OUT_23"  + -0.095960 * t."OUT_24"  + -0.088686 * t."OUT_25"  + 0.175328 * t."OUT_26"  + 0.063904 * t."OUT_27"  + 0.139654 * t."OUT_28"  + -0.069665 * t."OUT_29"  + -0.165209 * t."OUT_30"  + 0.045505 * t."OUT_31"  + -0.222118 * t."OUT_32"  + -0.100185 * t."OUT_33"  + -0.083008 * t."OUT_34"  + -0.218319 * t."OUT_35"  + 0.037937 * t."OUT_36"  + 0.023587 * t."OUT_37"  + 0.238051 * t."OUT_38"  + 0.105821 * t."OUT_39"  + 0.212166 * t."OUT_40"  + -0.091182 * t."OUT_41"  + 0.050874 * t."OUT_42"  + 0.010613 * t."OUT_43"  + -0.103253 * t."OUT_44"  + 0.003924 * t."OUT_45"  + -0.181045 * t."OUT_46"  + -0.076148 * t."OUT_47"  + 0.027447 * t."OUT_48"  + -0.147402 * t."OUT_49"  + -0.200964 * t."OUT_50"  + 0.009513 * t."OUT_51"  + 0.022770 * t."OUT_52"  + -0.067647 * t."OUT_53"  + 0.063701 * t."OUT_54"  + 0.209879 * t."OUT_55"  + 0.109790 * t."OUT_56"  + 0.210305 * t."OUT_57"  + 0.161089 * t."OUT_58"  + -0.241516 * t."OUT_59"  + 0.097886 * t."OUT_60"  + -0.156449 * t."OUT_61"  + -0.216362 * t."OUT_62"  + 0.003528 * t."OUT_63"  + -0.017345 * t."OUT_64"  + 0.168474 * t."OUT_65"  + -0.025995 * t."OUT_66"  + 0.235123 * t."OUT_67"  + 0.040398 * t."OUT_68"  + -0.124081 * t."OUT_69"  + 0.000337 * t."OUT_70"  + 0.138196 * t."OUT_71"  + 0.048315 * t."OUT_72"  + -0.170968 * t."OUT_73"  + -0.000844 * t."OUT_74"  + -0.177774 * t."OUT_75"  + -0.021565 * t."OUT_76"  + 0.151132 * t."OUT_77"  + 0.202134 * t."OUT_78"  + -0.146207 * t."OUT_79"  + -0.229744 * t."OUT_80"  + 0.179434 * t."OUT_81"  + -0.196528 * t."OUT_82"  + -0.077959 * t."OUT_83"  + -0.065501 * t."OUT_84"  + -0.078585 * t."OUT_85"  + 0.038233 * t."OUT_86"  + 0.217415 * t."OUT_87"  + -0.203432 * t."OUT_88"  + -0.179851 * t."OUT_89"  + 0.183328 * t."OUT_90"  + 0.087673 * t."OUT_91"  + -0.147711 * t."OUT_92"  + -0.213155 * t."OUT_93"  + 0.206293 * t."OUT_94"  + 0.183616 * t."OUT_95"  + 0.004557 * t."OUT_96"  + 0.146564 * t."OUT_97"  + -0.150797 * t."OUT_98"  + 0.192916 * t."OUT_99" AS "OUT_2",
    0.224685 + -0.011495 * t."OUT_0"  + 0.015480 * t."OUT_1"  + -0.041831 * t."OUT_2"  + 0.081182 * t."OUT_3"  + -0.188646 * t."OUT_4"  + 0.026165 * t."OUT_5"  + 0.190615 * t."OUT_6"  + 0.025402 * t."OUT_7"  + 0.108961 * t."OUT_8"  + 0.104710 * t."OUT_9"  + 0.208086 * t."OUT_10"  + 0.091529 * t."OUT_11"  + -0.147822 * t."OUT_12"  + 0.097999 * t."OUT_13"  + 0.147464 * t."OUT_14"  + 0.147866 * t."OUT_15"  + -0.217301 * t."OUT_16"  + -0.188501 * t."OUT_17"  + 0.092986 * t."OUT_18"  + -0.130090 * t."OUT_19"  + -0.030760 * t."OUT_20"  + -0.035310 * t."OUT_21"  + 0.225246 * t."OUT_22"  + -0.217996 * t."OUT_23"  + -0.055333 * t."OUT_24"  + 0.142996 * t."OUT_25"  + 0.135775 * t."OUT_26"  + 0.157653 * t."OUT_27"  + 0.169826 * t."OUT_28"  + -0.104829 * t."OUT_29"  + 0.085514 * t."OUT_30"  + -0.084321 * t."OUT_31"  + 0.186153 * t."OUT_32"  + -0.206246 * t."OUT_33"  + -0.048900 * t."OUT_34"  + 0.039800 * t."OUT_35"  + 0.078078 * t."OUT_36"  + -0.167678 * t."OUT_37"  + -0.027813 * t."OUT_38"  + -0.201002 * t."OUT_39"  + 0.237406 * t."OUT_40"  + 0.170308 * t."OUT_41"  + -0.142028 * t."OUT_42"  + -0.110126 * t."OUT_43"  + 0.017677 * t."OUT_44"  + 0.234151 * t."OUT_45"  + -0.026465 * t."OUT_46"  + -0.053177 * t."OUT_47"  + 0.181083 * t."OUT_48"  + -0.134313 * t."OUT_49"  + 0.140993 * t."OUT_50"  + 0.078420 * t."OUT_51"  + 0.135322 * t."OUT_52"  + -0.202261 * t."OUT_53"  + -0.043954 * t."OUT_54"  + -0.097152 * t."OUT_55"  + 0.109819 * t."OUT_56"  + 0.183792 * t."OUT_57"  + 0.051222 * t."OUT_58"  + -0.222866 * t."OUT_59"  + 0.201252 * t."OUT_60"  + -0.128527 * t."OUT_61"  + -0.032506 * t."OUT_62"  + -0.034260 * t."OUT_63"  + 0.169632 * t."OUT_64"  + 0.182946 * t."OUT_65"  + -0.160899 * t."OUT_66"  + 0.121428 * t."OUT_67"  + 0.129442 * t."OUT_68"  + 0.158934 * t."OUT_69"  + 0.098945 * t."OUT_70"  + -0.239468 * t."OUT_71"  + 0.189693 * t."OUT_72"  + 0.073714 * t."OUT_73"  + -0.001996 * t."OUT_74"  + -0.060572 * t."OUT_75"  + -0.097588 * t."OUT_76"  + -0.090856 * t."OUT_77"  + -0.080903 * t."OUT_78"  + 0.064861 * t."OUT_79"  + -0.131166 * t."OUT_80"  + 0.140943 * t."OUT_81"  + 0.065919 * t."OUT_82"  + -0.013215 * t."OUT_83"  + -0.078077 * t."OUT_84"  + -0.083280 * t."OUT_85"  + -0.128820 * t."OUT_86"  + 0.017151 * t."OUT_87"  + 0.119162 * t."OUT_88"  + 0.040060 * t."OUT_89"  + -0.149171 * t."OUT_90"  + -0.141945 * t."OUT_91"  + -0.101340 * t."OUT_92"  + 0.208244 * t."OUT_93"  + 0.009228 * t."OUT_94"  + -0.127235 * t."OUT_95"  + 0.163316 * t."OUT_96"  + 0.131356 * t."OUT_97"  + 0.109248 * t."OUT_98"  + -0.137982 * t."OUT_99" AS "OUT_3"
   FROM "Input_Layer_BA" AS t
 ),
"Hidden_Layer_1_Activation" AS
 ( SELECT
    t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3"
   FROM "Hidden_Layer_1_BA" AS t
 ),
"Hidden_Layer_2_BA" AS
 ( SELECT
    t."index" as "index",
    -0.074717 + -0.307604 * t."OUT_0"  + 0.102515 * t."OUT_1"  + 0.693731 * t."OUT_2"  + -0.384196 * t."OUT_3" AS "OUT_0",
    -0.671386 + 0.007673 * t."OUT_0"  + -0.570701 * t."OUT_1"  + 0.450476 * t."OUT_2"  + 0.007107 * t."OUT_3" AS "OUT_1",
    0.536134 + 0.695551 * t."OUT_0"  + -0.288446 * t."OUT_1"  + -0.406871 * t."OUT_2"  + -0.669674 * t."OUT_3" AS "OUT_2",
    -0.616571 + 0.612147 * t."OUT_0"  + -0.627828 * t."OUT_1"  + -0.008341 * t."OUT_2"  + -0.136973 * t."OUT_3" AS "OUT_3",
    -0.043193 + 0.535248 * t."OUT_0"  + -0.163882 * t."OUT_1"  + 0.414631 * t."OUT_2"  + -0.224907 * t."OUT_3" AS "OUT_4",
    -0.056240 + -0.182466 * t."OUT_0"  + -0.191663 * t."OUT_1"  + -0.607136 * t."OUT_2"  + 0.272739 * t."OUT_3" AS "OUT_5",
    0.295241 + -0.316638 * t."OUT_0"  + -0.008144 * t."OUT_1"  + -0.345372 * t."OUT_2"  + -0.102713 * t."OUT_3" AS "OUT_6",
    -0.671463 + -0.272819 * t."OUT_0"  + -0.118404 * t."OUT_1"  + 0.045573 * t."OUT_2"  + 0.506332 * t."OUT_3" AS "OUT_7"
   FROM "Hidden_Layer_1_Activation" AS t
 ),
"Hidden_Layer_2_Activation" AS
 ( SELECT
    t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3",
    CASE WHEN (t."OUT_4" > 0) THEN t."OUT_4" ELSE 0 END AS "OUT_4",
    CASE WHEN (t."OUT_5" > 0) THEN t."OUT_5" ELSE 0 END AS "OUT_5",
    CASE WHEN (t."OUT_6" > 0) THEN t."OUT_6" ELSE 0 END AS "OUT_6",
    CASE WHEN (t."OUT_7" > 0) THEN t."OUT_7" ELSE 0 END AS "OUT_7"
   FROM "Hidden_Layer_2_BA" AS t
 ),
"Hidden_Layer_3_BA" AS
 ( SELECT
    t."index" as "index",
    0.610568 + -0.197431 * t."OUT_0"  + 0.604639 * t."OUT_1"  + 0.420764 * t."OUT_2"  + 0.107183 * t."OUT_3"  + -0.267930 * t."OUT_4"  + 0.487804 * t."OUT_5"  + -0.276102 * t."OUT_6"  + -0.103395 * t."OUT_7" AS "OUT_0",
    -0.570335 + 0.510647 * t."OUT_0"  + 0.541014 * t."OUT_1"  + 0.096048 * t."OUT_2"  + -0.164715 * t."OUT_3"  + -0.468411 * t."OUT_4"  + -0.007913 * t."OUT_5"  + 0.521585 * t."OUT_6"  + 0.389170 * t."OUT_7" AS "OUT_1",
    -0.340814 + 0.364766 * t."OUT_0"  + -0.242096 * t."OUT_1"  + 0.090075 * t."OUT_2"  + -0.382792 * t."OUT_3"  + -0.300714 * t."OUT_4"  + 0.178064 * t."OUT_5"  + 0.620027 * t."OUT_6"  + 0.234944 * t."OUT_7" AS "OUT_2",
    0.631205 + -0.304960 * t."OUT_0"  + 0.445937 * t."OUT_1"  + -0.091806 * t."OUT_2"  + 0.060894 * t."OUT_3"  + -0.330706 * t."OUT_4"  + 0.086804 * t."OUT_5"  + 0.269106 * t."OUT_6"  + -0.066838 * t."OUT_7" AS "OUT_3",
    -0.394977 + 0.518772 * t."OUT_0"  + 0.557145 * t."OUT_1"  + -0.082095 * t."OUT_2"  + 0.601015 * t."OUT_3"  + -0.094986 * t."OUT_4"  + 0.057084 * t."OUT_5"  + 0.112850 * t."OUT_6"  + -0.149565 * t."OUT_7" AS "OUT_4",
    0.619272 + 0.111827 * t."OUT_0"  + 0.509688 * t."OUT_1"  + 0.036397 * t."OUT_2"  + -0.219756 * t."OUT_3"  + -0.214850 * t."OUT_4"  + 0.060161 * t."OUT_5"  + 0.188269 * t."OUT_6"  + -0.559185 * t."OUT_7" AS "OUT_5"
   FROM "Hidden_Layer_2_Activation" AS t
 ),
"Hidden_Layer_3_Activation" AS
 ( SELECT
    t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3",
    CASE WHEN (t."OUT_4" > 0) THEN t."OUT_4" ELSE 0 END AS "OUT_4",
    CASE WHEN (t."OUT_5" > 0) THEN t."OUT_5" ELSE 0 END AS "OUT_5"
   FROM "Hidden_Layer_3_BA" AS t
 ),
"Output_Layer_BA" AS
 ( SELECT
    t."index" as "index",
    -0.686766 + -0.488683 * t."OUT_0"  + 0.828776 * t."OUT_1"  + 0.377069 * t."OUT_2"  + 0.803539 * t."OUT_3"  + -0.639210 * t."OUT_4"  + 0.569085 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
