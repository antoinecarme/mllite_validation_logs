WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "RandomReg_100_quantized" AS "ADS" 
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
    -0.056477 + 0.072834 * t."OUT_0"  + 0.123331 * t."OUT_1"  + 0.203272 * t."OUT_2"  + 0.414708 * t."OUT_3"  + 0.181551 * t."OUT_4"  + 0.136591 * t."OUT_5"  + -0.043665 * t."OUT_6"  + 0.028637 * t."OUT_7"  + 0.085737 * t."OUT_8"  + -0.157368 * t."OUT_9"  + -0.079707 * t."OUT_10"  + -0.132036 * t."OUT_11"  + 0.204909 * t."OUT_12"  + 0.180488 * t."OUT_13"  + 0.169975 * t."OUT_14"  + -0.144744 * t."OUT_15"  + -0.116972 * t."OUT_16"  + 0.316346 * t."OUT_17"  + 0.011049 * t."OUT_18"  + 0.151767 * t."OUT_19"  + 0.116689 * t."OUT_20"  + -0.115147 * t."OUT_21"  + -0.364827 * t."OUT_22"  + 0.063919 * t."OUT_23"  + 0.146362 * t."OUT_24"  + 0.105628 * t."OUT_25"  + 0.166410 * t."OUT_26"  + 0.054349 * t."OUT_27"  + 0.179059 * t."OUT_28"  + 0.103009 * t."OUT_29"  + -0.132263 * t."OUT_30"  + -0.063917 * t."OUT_31"  + -0.094053 * t."OUT_32"  + 0.181199 * t."OUT_33"  + -0.128923 * t."OUT_34"  + -0.091801 * t."OUT_35"  + -0.389847 * t."OUT_36"  + 0.019525 * t."OUT_37"  + 0.063492 * t."OUT_38"  + -0.163393 * t."OUT_39"  + 0.139261 * t."OUT_40"  + -0.029789 * t."OUT_41"  + -0.111803 * t."OUT_42"  + 0.168097 * t."OUT_43"  + 0.249827 * t."OUT_44"  + 0.152858 * t."OUT_45"  + -0.172023 * t."OUT_46"  + 0.253216 * t."OUT_47"  + 0.269075 * t."OUT_48"  + -0.167633 * t."OUT_49"  + 0.034991 * t."OUT_50"  + 0.286675 * t."OUT_51"  + 0.136960 * t."OUT_52"  + 0.150354 * t."OUT_53"  + -0.075216 * t."OUT_54"  + -0.032241 * t."OUT_55"  + 0.048244 * t."OUT_56"  + -0.179184 * t."OUT_57"  + 0.052281 * t."OUT_58"  + -0.294557 * t."OUT_59"  + 0.052911 * t."OUT_60"  + 0.066204 * t."OUT_61"  + 0.161863 * t."OUT_62"  + 0.249969 * t."OUT_63"  + 0.159128 * t."OUT_64"  + 0.144831 * t."OUT_65"  + 0.144108 * t."OUT_66"  + 0.190330 * t."OUT_67"  + 0.270230 * t."OUT_68"  + 0.173789 * t."OUT_69"  + 0.154745 * t."OUT_70"  + 0.206988 * t."OUT_71"  + 0.147433 * t."OUT_72"  + -0.002763 * t."OUT_73"  + -0.159163 * t."OUT_74"  + 0.142053 * t."OUT_75"  + -0.113253 * t."OUT_76"  + -0.314967 * t."OUT_77"  + 0.155267 * t."OUT_78"  + 0.147146 * t."OUT_79"  + 0.100664 * t."OUT_80"  + 0.195679 * t."OUT_81"  + -0.067352 * t."OUT_82"  + 0.117909 * t."OUT_83"  + 0.268309 * t."OUT_84"  + 0.046513 * t."OUT_85"  + -0.006565 * t."OUT_86"  + -0.018990 * t."OUT_87"  + -0.049569 * t."OUT_88"  + -0.062105 * t."OUT_89"  + -0.292538 * t."OUT_90"  + 0.327112 * t."OUT_91"  + 0.215533 * t."OUT_92"  + -0.097938 * t."OUT_93"  + -0.210623 * t."OUT_94"  + -0.155860 * t."OUT_95"  + -0.103673 * t."OUT_96"  + -0.012886 * t."OUT_97"  + -0.080253 * t."OUT_98"  + -0.097676 * t."OUT_99" AS "OUT_0",
    0.022475 + 0.065628 * t."OUT_0"  + -0.170291 * t."OUT_1"  + 0.085481 * t."OUT_2"  + -0.289373 * t."OUT_3"  + -0.121529 * t."OUT_4"  + -0.170427 * t."OUT_5"  + -0.165330 * t."OUT_6"  + -0.019710 * t."OUT_7"  + -0.058550 * t."OUT_8"  + 0.184921 * t."OUT_9"  + 0.031428 * t."OUT_10"  + -0.143191 * t."OUT_11"  + 0.246432 * t."OUT_12"  + 0.183096 * t."OUT_13"  + -0.012511 * t."OUT_14"  + 0.030352 * t."OUT_15"  + 0.135180 * t."OUT_16"  + 0.232330 * t."OUT_17"  + 0.252067 * t."OUT_18"  + 0.135812 * t."OUT_19"  + 0.146790 * t."OUT_20"  + 0.094142 * t."OUT_21"  + -0.032008 * t."OUT_22"  + -0.112851 * t."OUT_23"  + -0.088749 * t."OUT_24"  + -0.106681 * t."OUT_25"  + 0.218123 * t."OUT_26"  + 0.013060 * t."OUT_27"  + -0.012126 * t."OUT_28"  + -0.070025 * t."OUT_29"  + 0.368349 * t."OUT_30"  + -0.036668 * t."OUT_31"  + -0.008334 * t."OUT_32"  + -0.099608 * t."OUT_33"  + -0.139396 * t."OUT_34"  + -0.200654 * t."OUT_35"  + 0.030538 * t."OUT_36"  + 0.039672 * t."OUT_37"  + 0.129208 * t."OUT_38"  + -0.049737 * t."OUT_39"  + -0.112706 * t."OUT_40"  + 0.120067 * t."OUT_41"  + 0.081667 * t."OUT_42"  + 0.064946 * t."OUT_43"  + 0.201231 * t."OUT_44"  + 0.051960 * t."OUT_45"  + 0.343982 * t."OUT_46"  + 0.111298 * t."OUT_47"  + -0.136026 * t."OUT_48"  + -0.148073 * t."OUT_49"  + -0.023238 * t."OUT_50"  + 0.015341 * t."OUT_51"  + 0.043913 * t."OUT_52"  + -0.043245 * t."OUT_53"  + -0.094495 * t."OUT_54"  + -0.227158 * t."OUT_55"  + 0.064680 * t."OUT_56"  + 0.161109 * t."OUT_57"  + 0.257313 * t."OUT_58"  + 0.382400 * t."OUT_59"  + -0.013248 * t."OUT_60"  + -0.013943 * t."OUT_61"  + 0.088242 * t."OUT_62"  + -0.118598 * t."OUT_63"  + -0.071048 * t."OUT_64"  + 0.091898 * t."OUT_65"  + -0.174022 * t."OUT_66"  + 0.021595 * t."OUT_67"  + -0.142786 * t."OUT_68"  + 0.148378 * t."OUT_69"  + 0.216039 * t."OUT_70"  + 0.103850 * t."OUT_71"  + 0.211892 * t."OUT_72"  + 0.028527 * t."OUT_73"  + 0.099896 * t."OUT_74"  + -0.152020 * t."OUT_75"  + 0.035912 * t."OUT_76"  + 0.403116 * t."OUT_77"  + -0.131048 * t."OUT_78"  + -0.143778 * t."OUT_79"  + 0.099674 * t."OUT_80"  + -0.027571 * t."OUT_81"  + -0.192878 * t."OUT_82"  + 0.129328 * t."OUT_83"  + -0.174469 * t."OUT_84"  + -0.079156 * t."OUT_85"  + 0.105479 * t."OUT_86"  + -0.029329 * t."OUT_87"  + -0.233583 * t."OUT_88"  + -0.084491 * t."OUT_89"  + 0.017782 * t."OUT_90"  + -0.134425 * t."OUT_91"  + -0.118185 * t."OUT_92"  + -0.028573 * t."OUT_93"  + 0.026189 * t."OUT_94"  + 0.089911 * t."OUT_95"  + -0.137054 * t."OUT_96"  + 0.059007 * t."OUT_97"  + 0.147296 * t."OUT_98"  + -0.059401 * t."OUT_99" AS "OUT_1",
    0.170502 + -0.019647 * t."OUT_0"  + 0.116955 * t."OUT_1"  + 0.200883 * t."OUT_2"  + -0.029410 * t."OUT_3"  + -0.068106 * t."OUT_4"  + -0.027522 * t."OUT_5"  + -0.105526 * t."OUT_6"  + -0.193153 * t."OUT_7"  + 0.042575 * t."OUT_8"  + -0.148481 * t."OUT_9"  + 0.125078 * t."OUT_10"  + 0.119396 * t."OUT_11"  + 0.194216 * t."OUT_12"  + -0.125162 * t."OUT_13"  + 0.084891 * t."OUT_14"  + 0.149999 * t."OUT_15"  + -0.065687 * t."OUT_16"  + 0.013411 * t."OUT_17"  + -0.143153 * t."OUT_18"  + 0.253316 * t."OUT_19"  + 0.199264 * t."OUT_20"  + 0.081112 * t."OUT_21"  + -0.171643 * t."OUT_22"  + -0.032719 * t."OUT_23"  + -0.057969 * t."OUT_24"  + -0.081157 * t."OUT_25"  + 0.207025 * t."OUT_26"  + 0.177002 * t."OUT_27"  + 0.173341 * t."OUT_28"  + -0.018392 * t."OUT_29"  + -0.303186 * t."OUT_30"  + 0.105053 * t."OUT_31"  + -0.337234 * t."OUT_32"  + -0.100500 * t."OUT_33"  + -0.028063 * t."OUT_34"  + -0.154098 * t."OUT_35"  + -0.071174 * t."OUT_36"  + 0.067789 * t."OUT_37"  + 0.292683 * t."OUT_38"  + 0.135321 * t."OUT_39"  + 0.267359 * t."OUT_40"  + -0.044191 * t."OUT_41"  + 0.142522 * t."OUT_42"  + 0.047583 * t."OUT_43"  + -0.053489 * t."OUT_44"  + 0.009098 * t."OUT_45"  + -0.307028 * t."OUT_46"  + -0.031312 * t."OUT_47"  + 0.074455 * t."OUT_48"  + -0.093407 * t."OUT_49"  + -0.121236 * t."OUT_50"  + 0.059701 * t."OUT_51"  + 0.081656 * t."OUT_52"  + -0.022318 * t."OUT_53"  + 0.136023 * t."OUT_54"  + 0.253433 * t."OUT_55"  + 0.171805 * t."OUT_56"  + 0.236784 * t."OUT_57"  + 0.184125 * t."OUT_58"  + -0.328545 * t."OUT_59"  + 0.116443 * t."OUT_60"  + -0.149988 * t."OUT_61"  + -0.151615 * t."OUT_62"  + 0.057353 * t."OUT_63"  + 0.041085 * t."OUT_64"  + 0.219037 * t."OUT_65"  + 0.018091 * t."OUT_66"  + 0.310858 * t."OUT_67"  + 0.094541 * t."OUT_68"  + -0.058082 * t."OUT_69"  + 0.025898 * t."OUT_70"  + 0.181777 * t."OUT_71"  + 0.112367 * t."OUT_72"  + -0.089349 * t."OUT_73"  + 0.070086 * t."OUT_74"  + -0.150811 * t."OUT_75"  + 0.033950 * t."OUT_76"  + -0.008250 * t."OUT_77"  + 0.208349 * t."OUT_78"  + -0.098242 * t."OUT_79"  + -0.112357 * t."OUT_80"  + 0.216152 * t."OUT_81"  + -0.135365 * t."OUT_82"  + -0.039468 * t."OUT_83"  + -0.043290 * t."OUT_84"  + -0.040867 * t."OUT_85"  + 0.082599 * t."OUT_86"  + 0.260116 * t."OUT_87"  + -0.098599 * t."OUT_88"  + -0.130048 * t."OUT_89"  + 0.143351 * t."OUT_90"  + 0.126193 * t."OUT_91"  + -0.088652 * t."OUT_92"  + -0.116791 * t."OUT_93"  + 0.221166 * t."OUT_94"  + 0.158316 * t."OUT_95"  + 0.058433 * t."OUT_96"  + 0.162425 * t."OUT_97"  + -0.074832 * t."OUT_98"  + 0.262114 * t."OUT_99" AS "OUT_2",
    0.314123 + 0.050512 * t."OUT_0"  + 0.086113 * t."OUT_1"  + 0.092091 * t."OUT_2"  + 0.074466 * t."OUT_3"  + -0.104421 * t."OUT_4"  + 0.104710 * t."OUT_5"  + 0.320723 * t."OUT_6"  + 0.126734 * t."OUT_7"  + 0.132386 * t."OUT_8"  + 0.238438 * t."OUT_9"  + 0.281037 * t."OUT_10"  + 0.172997 * t."OUT_11"  + -0.032732 * t."OUT_12"  + 0.230056 * t."OUT_13"  + 0.215560 * t."OUT_14"  + 0.254504 * t."OUT_15"  + -0.162452 * t."OUT_16"  + -0.099732 * t."OUT_17"  + 0.195399 * t."OUT_18"  + -0.004831 * t."OUT_19"  + 0.084479 * t."OUT_20"  + 0.045379 * t."OUT_21"  + 0.436092 * t."OUT_22"  + -0.136435 * t."OUT_23"  + 0.013850 * t."OUT_24"  + 0.235400 * t."OUT_25"  + 0.260757 * t."OUT_26"  + 0.270241 * t."OUT_27"  + 0.235386 * t."OUT_28"  + -0.020232 * t."OUT_29"  + 0.327475 * t."OUT_30"  + -0.019779 * t."OUT_31"  + 0.416939 * t."OUT_32"  + -0.053574 * t."OUT_33"  + 0.052239 * t."OUT_34"  + 0.118036 * t."OUT_35"  + 0.333843 * t."OUT_36"  + -0.069435 * t."OUT_37"  + 0.043553 * t."OUT_38"  + -0.068570 * t."OUT_39"  + 0.332735 * t."OUT_40"  + 0.280944 * t."OUT_41"  + -0.075706 * t."OUT_42"  + -0.027989 * t."OUT_43"  + 0.143123 * t."OUT_44"  + 0.314439 * t."OUT_45"  + 0.216220 * t."OUT_46"  + 0.043681 * t."OUT_47"  + 0.269919 * t."OUT_48"  + -0.023395 * t."OUT_49"  + 0.260230 * t."OUT_50"  + 0.147505 * t."OUT_51"  + 0.225979 * t."OUT_52"  + -0.051124 * t."OUT_53"  + 0.069036 * t."OUT_54"  + -0.006468 * t."OUT_55"  + 0.161460 * t."OUT_56"  + 0.282687 * t."OUT_57"  + 0.167282 * t."OUT_58"  + 0.013806 * t."OUT_59"  + 0.284983 * t."OUT_60"  + -0.040286 * t."OUT_61"  + 0.033444 * t."OUT_62"  + -0.002574 * t."OUT_63"  + 0.220637 * t."OUT_64"  + 0.240931 * t."OUT_65"  + -0.104770 * t."OUT_66"  + 0.202623 * t."OUT_67"  + 0.253868 * t."OUT_68"  + 0.223416 * t."OUT_69"  + 0.175296 * t."OUT_70"  + -0.163860 * t."OUT_71"  + 0.281696 * t."OUT_72"  + 0.150966 * t."OUT_73"  + 0.090416 * t."OUT_74"  + 0.058260 * t."OUT_75"  + 0.009849 * t."OUT_76"  + 0.146262 * t."OUT_77"  + 0.039297 * t."OUT_78"  + 0.128775 * t."OUT_79"  + -0.160661 * t."OUT_80"  + 0.213803 * t."OUT_81"  + 0.124053 * t."OUT_82"  + 0.162233 * t."OUT_83"  + 0.013682 * t."OUT_84"  + 0.014470 * t."OUT_85"  + 0.011810 * t."OUT_86"  + 0.081747 * t."OUT_87"  + 0.129838 * t."OUT_88"  + 0.106821 * t."OUT_89"  + 0.035142 * t."OUT_90"  + -0.040457 * t."OUT_91"  + -0.055310 * t."OUT_92"  + 0.226489 * t."OUT_93"  + 0.107766 * t."OUT_94"  + 0.082113 * t."OUT_95"  + 0.242452 * t."OUT_96"  + 0.224286 * t."OUT_97"  + 0.240995 * t."OUT_98"  + -0.058055 * t."OUT_99" AS "OUT_3"
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
    0.000184 + -0.388739 * t."OUT_0"  + 0.243355 * t."OUT_1"  + 0.767754 * t."OUT_2"  + -0.255693 * t."OUT_3" AS "OUT_0",
    -0.555918 + 0.219906 * t."OUT_0"  + -0.615204 * t."OUT_1"  + 0.596630 * t."OUT_2"  + 0.089908 * t."OUT_3" AS "OUT_1",
    0.690599 + 0.907344 * t."OUT_0"  + -0.230828 * t."OUT_1"  + -0.179398 * t."OUT_2"  + -0.424495 * t."OUT_3" AS "OUT_2",
    -0.510508 + 0.809698 * t."OUT_0"  + -0.767066 * t."OUT_1"  + 0.209640 * t."OUT_2"  + -0.037317 * t."OUT_3" AS "OUT_3",
    0.022948 + 0.660328 * t."OUT_0"  + -0.301813 * t."OUT_1"  + 0.480231 * t."OUT_2"  + -0.168269 * t."OUT_3" AS "OUT_4",
    0.115720 + 0.066612 * t."OUT_0"  + -0.083964 * t."OUT_1"  + -0.470377 * t."OUT_2"  + 0.491960 * t."OUT_3" AS "OUT_5",
    0.274848 + -0.330222 * t."OUT_0"  + -0.037233 * t."OUT_1"  + -0.369895 * t."OUT_2"  + -0.125512 * t."OUT_3" AS "OUT_6",
    -0.588147 + -0.366672 * t."OUT_0"  + 0.114131 * t."OUT_1"  + 0.081442 * t."OUT_2"  + 0.649461 * t."OUT_3" AS "OUT_7"
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
    0.581411 + -0.258790 * t."OUT_0"  + 0.778794 * t."OUT_1"  + 0.561369 * t."OUT_2"  + 0.357936 * t."OUT_3"  + -0.011354 * t."OUT_4"  + 0.344622 * t."OUT_5"  + -0.259216 * t."OUT_6"  + -0.241063 * t."OUT_7" AS "OUT_0",
    -0.448169 + 0.602482 * t."OUT_0"  + 0.394163 * t."OUT_1"  + -0.005396 * t."OUT_2"  + -0.434590 * t."OUT_3"  + -0.714912 * t."OUT_4"  + 0.186993 * t."OUT_5"  + 0.440481 * t."OUT_6"  + 0.608117 * t."OUT_7" AS "OUT_1",
    -0.171714 + 0.471827 * t."OUT_0"  + -0.227678 * t."OUT_1"  + 0.075857 * t."OUT_2"  + -0.478660 * t."OUT_3"  + -0.410594 * t."OUT_4"  + 0.391415 * t."OUT_5"  + 0.645358 * t."OUT_6"  + 0.438688 * t."OUT_7" AS "OUT_2",
    0.693901 + -0.253250 * t."OUT_0"  + 0.307803 * t."OUT_1"  + -0.135329 * t."OUT_2"  + -0.154518 * t."OUT_3"  + -0.585091 * t."OUT_4"  + 0.250913 * t."OUT_5"  + 0.252104 * t."OUT_6"  + 0.091616 * t."OUT_7" AS "OUT_3",
    -0.318532 + 0.425841 * t."OUT_0"  + 0.748982 * t."OUT_1"  + 0.061113 * t."OUT_2"  + 0.914135 * t."OUT_3"  + 0.164068 * t."OUT_4"  + 0.071454 * t."OUT_5"  + 0.112850 * t."OUT_6"  + -0.139160 * t."OUT_7" AS "OUT_4",
    0.610642 + 0.148622 * t."OUT_0"  + 0.525205 * t."OUT_1"  + 0.039055 * t."OUT_2"  + -0.185731 * t."OUT_3"  + -0.183209 * t."OUT_4"  + 0.041149 * t."OUT_5"  + 0.171257 * t."OUT_6"  + -0.592054 * t."OUT_7" AS "OUT_5"
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
    -0.653884 + -0.593924 * t."OUT_0"  + 1.090387 * t."OUT_1"  + 0.618656 * t."OUT_2"  + 1.004321 * t."OUT_3"  + -0.897828 * t."OUT_4"  + 0.561387 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
