WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "RandomReg_100_sampled" AS "ADS" 
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
    -0.112137 + -0.052754 * t."OUT_0"  + 0.012361 * t."OUT_1"  + 0.186467 * t."OUT_2"  + 0.267864 * t."OUT_3"  + 0.152026 * t."OUT_4"  + 0.074287 * t."OUT_5"  + -0.071734 * t."OUT_6"  + -0.047562 * t."OUT_7"  + -0.100660 * t."OUT_8"  + -0.181344 * t."OUT_9"  + -0.143898 * t."OUT_10"  + -0.178346 * t."OUT_11"  + 0.132779 * t."OUT_12"  + 0.175825 * t."OUT_13"  + 0.103995 * t."OUT_14"  + -0.236799 * t."OUT_15"  + -0.170537 * t."OUT_16"  + 0.249347 * t."OUT_17"  + 0.007631 * t."OUT_18"  + 0.078566 * t."OUT_19"  + 0.131514 * t."OUT_20"  + -0.240382 * t."OUT_21"  + -0.206828 * t."OUT_22"  + -0.013443 * t."OUT_23"  + 0.111167 * t."OUT_24"  + 0.077052 * t."OUT_25"  + 0.128360 * t."OUT_26"  + -0.069563 * t."OUT_27"  + 0.150795 * t."OUT_28"  + 0.040036 * t."OUT_29"  + 0.094182 * t."OUT_30"  + -0.182768 * t."OUT_31"  + 0.079674 * t."OUT_32"  + 0.188959 * t."OUT_33"  + -0.213580 * t."OUT_34"  + -0.128820 * t."OUT_35"  + -0.188106 * t."OUT_36"  + -0.064524 * t."OUT_37"  + -0.039962 * t."OUT_38"  + -0.237569 * t."OUT_39"  + 0.072798 * t."OUT_40"  + -0.143352 * t."OUT_41"  + -0.172408 * t."OUT_42"  + 0.142213 * t."OUT_43"  + 0.233043 * t."OUT_44"  + 0.163509 * t."OUT_45"  + 0.053173 * t."OUT_46"  + 0.167975 * t."OUT_47"  + 0.197918 * t."OUT_48"  + -0.193089 * t."OUT_49"  + -0.065306 * t."OUT_50"  + 0.195374 * t."OUT_51"  + -0.007890 * t."OUT_52"  + 0.091735 * t."OUT_53"  + -0.153065 * t."OUT_54"  + -0.071381 * t."OUT_55"  + -0.031505 * t."OUT_56"  + -0.183274 * t."OUT_57"  + -0.005695 * t."OUT_58"  + -0.114314 * t."OUT_59"  + -0.037727 * t."OUT_60"  + 0.077313 * t."OUT_61"  + 0.043606 * t."OUT_62"  + 0.131600 * t."OUT_63"  + 0.053859 * t."OUT_64"  + 0.103921 * t."OUT_65"  + 0.055057 * t."OUT_66"  + 0.119752 * t."OUT_67"  + 0.210935 * t."OUT_68"  + 0.119456 * t."OUT_69"  + 0.097430 * t."OUT_70"  + 0.168746 * t."OUT_71"  + 0.055548 * t."OUT_72"  + -0.100334 * t."OUT_73"  + -0.200424 * t."OUT_74"  + 0.110821 * t."OUT_75"  + -0.184442 * t."OUT_76"  + -0.087899 * t."OUT_77"  + 0.096983 * t."OUT_78"  + 0.058710 * t."OUT_79"  + -0.045146 * t."OUT_80"  + 0.135339 * t."OUT_81"  + -0.178178 * t."OUT_82"  + 0.097043 * t."OUT_83"  + 0.258490 * t."OUT_84"  + 0.008246 * t."OUT_85"  + -0.017529 * t."OUT_86"  + -0.041549 * t."OUT_87"  + -0.163772 * t."OUT_88"  + -0.085290 * t."OUT_89"  + -0.209608 * t."OUT_90"  + 0.209717 * t."OUT_91"  + 0.157601 * t."OUT_92"  + -0.191232 * t."OUT_93"  + -0.255070 * t."OUT_94"  + -0.034111 * t."OUT_95"  + -0.156922 * t."OUT_96"  + 0.005446 * t."OUT_97"  + -0.137132 * t."OUT_98"  + -0.141240 * t."OUT_99" AS "OUT_0",
    0.037433 + 0.117979 * t."OUT_0"  + -0.151288 * t."OUT_1"  + 0.073935 * t."OUT_2"  + -0.238057 * t."OUT_3"  + -0.143226 * t."OUT_4"  + -0.258622 * t."OUT_5"  + -0.188946 * t."OUT_6"  + 0.011765 * t."OUT_7"  + 0.120635 * t."OUT_8"  + 0.242505 * t."OUT_9"  + 0.161385 * t."OUT_10"  + -0.154674 * t."OUT_11"  + 0.236378 * t."OUT_12"  + 0.169374 * t."OUT_13"  + 0.041055 * t."OUT_14"  + 0.057298 * t."OUT_15"  + 0.143763 * t."OUT_16"  + 0.261483 * t."OUT_17"  + 0.199294 * t."OUT_18"  + 0.168894 * t."OUT_19"  + 0.142025 * t."OUT_20"  + 0.142166 * t."OUT_21"  + -0.196508 * t."OUT_22"  + -0.021639 * t."OUT_23"  + -0.043542 * t."OUT_24"  + -0.176848 * t."OUT_25"  + 0.230013 * t."OUT_26"  + -0.008666 * t."OUT_27"  + 0.017828 * t."OUT_28"  + -0.070865 * t."OUT_29"  + 0.166915 * t."OUT_30"  + 0.030948 * t."OUT_31"  + -0.197293 * t."OUT_32"  + -0.125515 * t."OUT_33"  + -0.182352 * t."OUT_34"  + -0.158772 * t."OUT_35"  + -0.161303 * t."OUT_36"  + 0.076303 * t."OUT_37"  + 0.173541 * t."OUT_38"  + -0.104261 * t."OUT_39"  + -0.100885 * t."OUT_40"  + 0.093151 * t."OUT_41"  + 0.114928 * t."OUT_42"  + 0.081654 * t."OUT_43"  + 0.175171 * t."OUT_44"  + 0.027023 * t."OUT_45"  + 0.128293 * t."OUT_46"  + 0.108410 * t."OUT_47"  + -0.093489 * t."OUT_48"  + -0.110127 * t."OUT_49"  + -0.031323 * t."OUT_50"  + 0.030720 * t."OUT_51"  + 0.128569 * t."OUT_52"  + -0.099932 * t."OUT_53"  + -0.110807 * t."OUT_54"  + -0.221815 * t."OUT_55"  + 0.114050 * t."OUT_56"  + 0.150467 * t."OUT_57"  + 0.269570 * t."OUT_58"  + 0.244130 * t."OUT_59"  + -0.039273 * t."OUT_60"  + -0.069475 * t."OUT_61"  + 0.068633 * t."OUT_62"  + -0.072292 * t."OUT_63"  + -0.148088 * t."OUT_64"  + 0.122286 * t."OUT_65"  + -0.152843 * t."OUT_66"  + 0.028703 * t."OUT_67"  + -0.104221 * t."OUT_68"  + 0.201511 * t."OUT_69"  + 0.261934 * t."OUT_70"  + 0.093664 * t."OUT_71"  + 0.184569 * t."OUT_72"  + 0.069847 * t."OUT_73"  + 0.165955 * t."OUT_74"  + -0.181075 * t."OUT_75"  + 0.071565 * t."OUT_76"  + 0.181728 * t."OUT_77"  + -0.230871 * t."OUT_78"  + -0.168427 * t."OUT_79"  + 0.245790 * t."OUT_80"  + -0.008132 * t."OUT_81"  + -0.160760 * t."OUT_82"  + 0.074506 * t."OUT_83"  + -0.201073 * t."OUT_84"  + -0.067685 * t."OUT_85"  + 0.111417 * t."OUT_86"  + -0.014838 * t."OUT_87"  + -0.145905 * t."OUT_88"  + -0.041650 * t."OUT_89"  + -0.051556 * t."OUT_90"  + -0.106026 * t."OUT_91"  + -0.142230 * t."OUT_92"  + 0.058174 * t."OUT_93"  + -0.014719 * t."OUT_94"  + -0.056836 * t."OUT_95"  + -0.077768 * t."OUT_96"  + 0.105780 * t."OUT_97"  + 0.118509 * t."OUT_98"  + -0.027458 * t."OUT_99" AS "OUT_1",
    0.096235 + -0.092384 * t."OUT_0"  + 0.080692 * t."OUT_1"  + 0.182105 * t."OUT_2"  + -0.085102 * t."OUT_3"  + -0.130321 * t."OUT_4"  + -0.070166 * t."OUT_5"  + -0.091524 * t."OUT_6"  + -0.225709 * t."OUT_7"  + -0.028453 * t."OUT_8"  + -0.148956 * t."OUT_9"  + 0.085951 * t."OUT_10"  + 0.110565 * t."OUT_11"  + 0.195544 * t."OUT_12"  + -0.159846 * t."OUT_13"  + 0.049155 * t."OUT_14"  + 0.100877 * t."OUT_15"  + -0.108199 * t."OUT_16"  + 0.000225 * t."OUT_17"  + -0.197812 * t."OUT_18"  + 0.202035 * t."OUT_19"  + 0.149531 * t."OUT_20"  + 0.033321 * t."OUT_21"  + -0.099991 * t."OUT_22"  + -0.056046 * t."OUT_23"  + -0.117186 * t."OUT_24"  + -0.049522 * t."OUT_25"  + 0.179221 * t."OUT_26"  + 0.040588 * t."OUT_27"  + 0.111475 * t."OUT_28"  + -0.058265 * t."OUT_29"  + -0.136973 * t."OUT_30"  + 0.032096 * t."OUT_31"  + -0.185936 * t."OUT_32"  + -0.068933 * t."OUT_33"  + -0.055370 * t."OUT_34"  + -0.224190 * t."OUT_35"  + 0.048977 * t."OUT_36"  + 0.022790 * t."OUT_37"  + 0.267031 * t."OUT_38"  + 0.085915 * t."OUT_39"  + 0.218700 * t."OUT_40"  + -0.140676 * t."OUT_41"  + 0.059087 * t."OUT_42"  + -0.018122 * t."OUT_43"  + -0.068090 * t."OUT_44"  + -0.014946 * t."OUT_45"  + -0.197535 * t."OUT_46"  + -0.096584 * t."OUT_47"  + 0.018370 * t."OUT_48"  + -0.103780 * t."OUT_49"  + -0.223527 * t."OUT_50"  + 0.005923 * t."OUT_51"  + -0.008668 * t."OUT_52"  + -0.040788 * t."OUT_53"  + 0.080713 * t."OUT_54"  + 0.242608 * t."OUT_55"  + 0.103053 * t."OUT_56"  + 0.183994 * t."OUT_57"  + 0.144281 * t."OUT_58"  + -0.233846 * t."OUT_59"  + 0.095325 * t."OUT_60"  + -0.165923 * t."OUT_61"  + -0.190262 * t."OUT_62"  + 0.013594 * t."OUT_63"  + -0.010369 * t."OUT_64"  + 0.150189 * t."OUT_65"  + -0.003908 * t."OUT_66"  + 0.221658 * t."OUT_67"  + 0.059117 * t."OUT_68"  + -0.128473 * t."OUT_69"  + 0.019003 * t."OUT_70"  + 0.126114 * t."OUT_71"  + 0.018375 * t."OUT_72"  + -0.167274 * t."OUT_73"  + 0.026147 * t."OUT_74"  + -0.169640 * t."OUT_75"  + -0.014280 * t."OUT_76"  + 0.154355 * t."OUT_77"  + 0.190355 * t."OUT_78"  + -0.147229 * t."OUT_79"  + -0.187397 * t."OUT_80"  + 0.138837 * t."OUT_81"  + -0.213614 * t."OUT_82"  + -0.099491 * t."OUT_83"  + -0.093029 * t."OUT_84"  + -0.072892 * t."OUT_85"  + 0.025452 * t."OUT_86"  + 0.239002 * t."OUT_87"  + -0.232112 * t."OUT_88"  + -0.152649 * t."OUT_89"  + 0.216491 * t."OUT_90"  + 0.092001 * t."OUT_91"  + -0.177123 * t."OUT_92"  + -0.239719 * t."OUT_93"  + 0.204943 * t."OUT_94"  + 0.203527 * t."OUT_95"  + 0.033914 * t."OUT_96"  + 0.155716 * t."OUT_97"  + -0.164949 * t."OUT_98"  + 0.177225 * t."OUT_99" AS "OUT_2",
    0.244284 + -0.047651 * t."OUT_0"  + 0.010064 * t."OUT_1"  + -0.045605 * t."OUT_2"  + 0.059059 * t."OUT_3"  + -0.215197 * t."OUT_4"  + -0.008636 * t."OUT_5"  + 0.169257 * t."OUT_6"  + 0.039560 * t."OUT_7"  + 0.133440 * t."OUT_8"  + 0.099008 * t."OUT_9"  + 0.193773 * t."OUT_10"  + 0.105099 * t."OUT_11"  + -0.129790 * t."OUT_12"  + 0.098561 * t."OUT_13"  + 0.104525 * t."OUT_14"  + 0.148813 * t."OUT_15"  + -0.252026 * t."OUT_16"  + -0.176545 * t."OUT_17"  + 0.064053 * t."OUT_18"  + -0.089308 * t."OUT_19"  + -0.035446 * t."OUT_20"  + -0.079603 * t."OUT_21"  + 0.244533 * t."OUT_22"  + -0.204227 * t."OUT_23"  + -0.077700 * t."OUT_24"  + 0.105504 * t."OUT_25"  + 0.127750 * t."OUT_26"  + 0.138096 * t."OUT_27"  + 0.135631 * t."OUT_28"  + -0.095700 * t."OUT_29"  + 0.106243 * t."OUT_30"  + -0.078555 * t."OUT_31"  + 0.179717 * t."OUT_32"  + -0.198347 * t."OUT_33"  + -0.023946 * t."OUT_34"  + 0.017722 * t."OUT_35"  + 0.074276 * t."OUT_36"  + -0.180388 * t."OUT_37"  + -0.066788 * t."OUT_38"  + -0.215252 * t."OUT_39"  + 0.250069 * t."OUT_40"  + 0.208423 * t."OUT_41"  + -0.162956 * t."OUT_42"  + -0.078016 * t."OUT_43"  + -0.001196 * t."OUT_44"  + 0.249623 * t."OUT_45"  + -0.008717 * t."OUT_46"  + -0.046125 * t."OUT_47"  + 0.170055 * t."OUT_48"  + -0.130500 * t."OUT_49"  + 0.121028 * t."OUT_50"  + 0.075983 * t."OUT_51"  + 0.173668 * t."OUT_52"  + -0.222265 * t."OUT_53"  + -0.065553 * t."OUT_54"  + -0.124817 * t."OUT_55"  + 0.130407 * t."OUT_56"  + 0.207695 * t."OUT_57"  + 0.096271 * t."OUT_58"  + -0.197442 * t."OUT_59"  + 0.220322 * t."OUT_60"  + -0.138395 * t."OUT_61"  + -0.053681 * t."OUT_62"  + -0.072061 * t."OUT_63"  + 0.193871 * t."OUT_64"  + 0.193475 * t."OUT_65"  + -0.149146 * t."OUT_66"  + 0.103860 * t."OUT_67"  + 0.115720 * t."OUT_68"  + 0.185233 * t."OUT_69"  + 0.112814 * t."OUT_70"  + -0.264019 * t."OUT_71"  + 0.224122 * t."OUT_72"  + 0.059227 * t."OUT_73"  + -0.019252 * t."OUT_74"  + -0.093031 * t."OUT_75"  + -0.047139 * t."OUT_76"  + -0.073181 * t."OUT_77"  + -0.026945 * t."OUT_78"  + 0.082113 * t."OUT_79"  + -0.150546 * t."OUT_80"  + 0.124478 * t."OUT_81"  + 0.086463 * t."OUT_82"  + 0.045728 * t."OUT_83"  + -0.106412 * t."OUT_84"  + -0.114444 * t."OUT_85"  + -0.094853 * t."OUT_86"  + -0.004595 * t."OUT_87"  + 0.137194 * t."OUT_88"  + 0.004475 * t."OUT_89"  + -0.175164 * t."OUT_90"  + -0.131358 * t."OUT_91"  + -0.108152 * t."OUT_92"  + 0.238964 * t."OUT_93"  + 0.031487 * t."OUT_94"  + -0.148857 * t."OUT_95"  + 0.157829 * t."OUT_96"  + 0.096589 * t."OUT_97"  + 0.117344 * t."OUT_98"  + -0.128214 * t."OUT_99" AS "OUT_3"
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
    -0.057549 + -0.352024 * t."OUT_0"  + 0.131106 * t."OUT_1"  + 0.726221 * t."OUT_2"  + -0.373135 * t."OUT_3" AS "OUT_0",
    -0.684436 + -0.009062 * t."OUT_0"  + -0.612170 * t."OUT_1"  + 0.438604 * t."OUT_2"  + -0.015946 * t."OUT_3" AS "OUT_1",
    0.535299 + 0.729380 * t."OUT_0"  + -0.299855 * t."OUT_1"  + -0.378654 * t."OUT_2"  + -0.654848 * t."OUT_3" AS "OUT_2",
    -0.660744 + 0.577600 * t."OUT_0"  + -0.628341 * t."OUT_1"  + -0.022522 * t."OUT_2"  + -0.102973 * t."OUT_3" AS "OUT_3",
    -0.033327 + 0.571456 * t."OUT_0"  + -0.187543 * t."OUT_1"  + 0.379094 * t."OUT_2"  + -0.176412 * t."OUT_3" AS "OUT_4",
    -0.054340 + -0.175749 * t."OUT_0"  + -0.197875 * t."OUT_1"  + -0.610250 * t."OUT_2"  + 0.277486 * t."OUT_3" AS "OUT_5",
    0.295538 + -0.307609 * t."OUT_0"  + -0.037954 * t."OUT_1"  + -0.399570 * t."OUT_2"  + -0.147817 * t."OUT_3" AS "OUT_6",
    -0.673363 + -0.275944 * t."OUT_0"  + -0.088350 * t."OUT_1"  + 0.071880 * t."OUT_2"  + 0.505509 * t."OUT_3" AS "OUT_7"
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
    0.611633 + -0.196437 * t."OUT_0"  + 0.572620 * t."OUT_1"  + 0.428603 * t."OUT_2"  + 0.096103 * t."OUT_3"  + -0.266752 * t."OUT_4"  + 0.491997 * t."OUT_5"  + -0.275063 * t."OUT_6"  + -0.094386 * t."OUT_7" AS "OUT_0",
    -0.515332 + 0.567148 * t."OUT_0"  + 0.540037 * t."OUT_1"  + 0.096048 * t."OUT_2"  + -0.194039 * t."OUT_3"  + -0.413895 * t."OUT_4"  + 0.016806 * t."OUT_5"  + 0.552646 * t."OUT_6"  + 0.445129 * t."OUT_7" AS "OUT_1",
    -0.305741 + 0.427140 * t."OUT_0"  + -0.257750 * t."OUT_1"  + 0.090075 * t."OUT_2"  + -0.413525 * t."OUT_3"  + -0.240849 * t."OUT_4"  + 0.176489 * t."OUT_5"  + 0.651237 * t."OUT_6"  + 0.233980 * t."OUT_7" AS "OUT_2",
    0.631022 + -0.345775 * t."OUT_0"  + 0.446476 * t."OUT_1"  + -0.098580 * t."OUT_2"  + 0.060428 * t."OUT_3"  + -0.351527 * t."OUT_4"  + 0.082709 * t."OUT_5"  + 0.268118 * t."OUT_6"  + -0.075862 * t."OUT_7" AS "OUT_3",
    -0.435580 + 0.454722 * t."OUT_0"  + 0.527891 * t."OUT_1"  + -0.103910 * t."OUT_2"  + 0.611848 * t."OUT_3"  + -0.150468 * t."OUT_4"  + 0.057084 * t."OUT_5"  + 0.112850 * t."OUT_6"  + -0.141034 * t."OUT_7" AS "OUT_4",
    0.619451 + 0.178802 * t."OUT_0"  + 0.542602 * t."OUT_1"  + 0.028504 * t."OUT_2"  + -0.208401 * t."OUT_3"  + -0.215820 * t."OUT_4"  + -0.007527 * t."OUT_5"  + 0.187292 * t."OUT_6"  + -0.625356 * t."OUT_7" AS "OUT_5"
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
    -0.686867 + -0.491751 * t."OUT_0"  + 0.880325 * t."OUT_1"  + 0.378076 * t."OUT_2"  + 0.804889 * t."OUT_3"  + -0.570584 * t."OUT_4"  + 0.570686 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
