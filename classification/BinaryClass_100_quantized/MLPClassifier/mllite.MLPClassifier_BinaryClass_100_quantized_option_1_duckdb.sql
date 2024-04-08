WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "BinaryClass_100_quantized" AS "ADS" 
 ),
"Input_Layer_BA" AS
 ( SELECT t."index" as "index",
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
 ( SELECT t."index" as "index",
    -0.137156 + -0.050356 * t."OUT_0"  + 0.018008 * t."OUT_1"  + 0.185515 * t."OUT_2"  + 0.233143 * t."OUT_3"  + 0.101093 * t."OUT_4"  + 0.110971 * t."OUT_5"  + -0.071255 * t."OUT_6"  + -0.028240 * t."OUT_7"  + -0.072525 * t."OUT_8"  + -0.160158 * t."OUT_9"  + -0.181320 * t."OUT_10"  + -0.147636 * t."OUT_11"  + 0.142572 * t."OUT_12"  + 0.122556 * t."OUT_13"  + 0.079394 * t."OUT_14"  + -0.220691 * t."OUT_15"  + -0.230680 * t."OUT_16"  + 0.225201 * t."OUT_17"  + -0.034426 * t."OUT_18"  + 0.085891 * t."OUT_19"  + 0.099289 * t."OUT_20"  + -0.226642 * t."OUT_21"  + -0.171485 * t."OUT_22"  + 0.009489 * t."OUT_23"  + 0.065379 * t."OUT_24"  + 0.095893 * t."OUT_25"  + 0.148843 * t."OUT_26"  + -0.134215 * t."OUT_27"  + 0.118382 * t."OUT_28"  + 0.012688 * t."OUT_29"  + 0.114431 * t."OUT_30"  + -0.147357 * t."OUT_31"  + 0.102773 * t."OUT_32"  + 0.182367 * t."OUT_33"  + -0.210029 * t."OUT_34"  + -0.177996 * t."OUT_35"  + -0.169942 * t."OUT_36"  + -0.079288 * t."OUT_37"  + -0.067518 * t."OUT_38"  + -0.230923 * t."OUT_39"  + 0.065421 * t."OUT_40"  + -0.106948 * t."OUT_41"  + -0.212878 * t."OUT_42"  + 0.087170 * t."OUT_43"  + 0.188488 * t."OUT_44"  + 0.117711 * t."OUT_45"  + 0.059372 * t."OUT_46"  + 0.183414 * t."OUT_47"  + 0.155596 * t."OUT_48"  + -0.222432 * t."OUT_49"  + -0.114219 * t."OUT_50"  + 0.221107 * t."OUT_51"  + 0.034446 * t."OUT_52"  + 0.110991 * t."OUT_53"  + -0.163960 * t."OUT_54"  + -0.120148 * t."OUT_55"  + -0.067347 * t."OUT_56"  + -0.212953 * t."OUT_57"  + 0.006705 * t."OUT_58"  + -0.101551 * t."OUT_59"  + -0.032616 * t."OUT_60"  + 0.019554 * t."OUT_61"  + 0.061650 * t."OUT_62"  + 0.139630 * t."OUT_63"  + 0.077825 * t."OUT_64"  + 0.063253 * t."OUT_65"  + 0.076611 * t."OUT_66"  + 0.075787 * t."OUT_67"  + 0.204091 * t."OUT_68"  + 0.079986 * t."OUT_69"  + 0.088264 * t."OUT_70"  + 0.110218 * t."OUT_71"  + 0.072981 * t."OUT_72"  + -0.085874 * t."OUT_73"  + -0.226484 * t."OUT_74"  + 0.098567 * t."OUT_75"  + -0.192306 * t."OUT_76"  + -0.076725 * t."OUT_77"  + 0.109863 * t."OUT_78"  + 0.062557 * t."OUT_79"  + -0.092111 * t."OUT_80"  + 0.103883 * t."OUT_81"  + -0.158472 * t."OUT_82"  + 0.064973 * t."OUT_83"  + 0.207432 * t."OUT_84"  + -0.023862 * t."OUT_85"  + -0.062663 * t."OUT_86"  + -0.080176 * t."OUT_87"  + -0.196489 * t."OUT_88"  + -0.147505 * t."OUT_89"  + -0.200089 * t."OUT_90"  + 0.218661 * t."OUT_91"  + 0.100194 * t."OUT_92"  + -0.236353 * t."OUT_93"  + -0.243042 * t."OUT_94"  + -0.064228 * t."OUT_95"  + -0.158790 * t."OUT_96"  + -0.036738 * t."OUT_97"  + -0.167396 * t."OUT_98"  + -0.208269 * t."OUT_99" AS "OUT_0",
    0.056741 + 0.154035 * t."OUT_0"  + -0.125023 * t."OUT_1"  + 0.038249 * t."OUT_2"  + -0.166243 * t."OUT_3"  + -0.082982 * t."OUT_4"  + -0.201123 * t."OUT_5"  + -0.246012 * t."OUT_6"  + 0.018351 * t."OUT_7"  + 0.110653 * t."OUT_8"  + 0.213890 * t."OUT_9"  + 0.155509 * t."OUT_10"  + -0.157911 * t."OUT_11"  + 0.224266 * t."OUT_12"  + 0.211038 * t."OUT_13"  + 0.066201 * t."OUT_14"  + 0.065947 * t."OUT_15"  + 0.192964 * t."OUT_16"  + 0.278561 * t."OUT_17"  + 0.259050 * t."OUT_18"  + 0.117112 * t."OUT_19"  + 0.208405 * t."OUT_20"  + 0.106101 * t."OUT_21"  + -0.186645 * t."OUT_22"  + -0.016500 * t."OUT_23"  + -0.048704 * t."OUT_24"  + -0.163263 * t."OUT_25"  + 0.190928 * t."OUT_26"  + 0.048906 * t."OUT_27"  + 0.020114 * t."OUT_28"  + -0.071811 * t."OUT_29"  + 0.166085 * t."OUT_30"  + 0.002220 * t."OUT_31"  + -0.185608 * t."OUT_32"  + -0.135140 * t."OUT_33"  + -0.169787 * t."OUT_34"  + -0.125754 * t."OUT_35"  + -0.165078 * t."OUT_36"  + 0.108860 * t."OUT_37"  + 0.181560 * t."OUT_38"  + -0.100901 * t."OUT_39"  + -0.094282 * t."OUT_40"  + 0.154102 * t."OUT_41"  + 0.168070 * t."OUT_42"  + 0.114436 * t."OUT_43"  + 0.218156 * t."OUT_44"  + 0.055377 * t."OUT_45"  + 0.132742 * t."OUT_46"  + 0.160848 * t."OUT_47"  + -0.096757 * t."OUT_48"  + -0.093237 * t."OUT_49"  + 0.056643 * t."OUT_50"  + 0.063249 * t."OUT_51"  + 0.138196 * t."OUT_52"  + -0.061088 * t."OUT_53"  + -0.079173 * t."OUT_54"  + -0.191137 * t."OUT_55"  + 0.100294 * t."OUT_56"  + 0.179051 * t."OUT_57"  + 0.287742 * t."OUT_58"  + 0.240857 * t."OUT_59"  + 0.045946 * t."OUT_60"  + 0.015821 * t."OUT_61"  + 0.098116 * t."OUT_62"  + -0.035546 * t."OUT_63"  + -0.122881 * t."OUT_64"  + 0.187349 * t."OUT_65"  + -0.145254 * t."OUT_66"  + 0.072126 * t."OUT_67"  + -0.128200 * t."OUT_68"  + 0.233008 * t."OUT_69"  + 0.260080 * t."OUT_70"  + 0.147858 * t."OUT_71"  + 0.243473 * t."OUT_72"  + 0.149631 * t."OUT_73"  + 0.114616 * t."OUT_74"  + -0.155564 * t."OUT_75"  + 0.104517 * t."OUT_76"  + 0.162374 * t."OUT_77"  + -0.204595 * t."OUT_78"  + -0.094325 * t."OUT_79"  + 0.253424 * t."OUT_80"  + 0.052644 * t."OUT_81"  + -0.155032 * t."OUT_82"  + 0.123347 * t."OUT_83"  + -0.134775 * t."OUT_84"  + -0.009642 * t."OUT_85"  + 0.125771 * t."OUT_86"  + 0.047199 * t."OUT_87"  + -0.069168 * t."OUT_88"  + -0.032020 * t."OUT_89"  + -0.089665 * t."OUT_90"  + -0.137047 * t."OUT_91"  + -0.094719 * t."OUT_92"  + 0.070779 * t."OUT_93"  + 0.011049 * t."OUT_94"  + -0.049719 * t."OUT_95"  + -0.074749 * t."OUT_96"  + 0.096486 * t."OUT_97"  + 0.118645 * t."OUT_98"  + -0.021137 * t."OUT_99" AS "OUT_1",
    0.105388 + -0.110585 * t."OUT_0"  + 0.097351 * t."OUT_1"  + 0.199248 * t."OUT_2"  + -0.120860 * t."OUT_3"  + -0.103013 * t."OUT_4"  + -0.036472 * t."OUT_5"  + -0.151885 * t."OUT_6"  + -0.228940 * t."OUT_7"  + -0.068434 * t."OUT_8"  + -0.200395 * t."OUT_9"  + 0.043928 * t."OUT_10"  + 0.070529 * t."OUT_11"  + 0.157853 * t."OUT_12"  + -0.157427 * t."OUT_13"  + 0.018528 * t."OUT_14"  + 0.084361 * t."OUT_15"  + -0.151549 * t."OUT_16"  + -0.064092 * t."OUT_17"  + -0.173342 * t."OUT_18"  + 0.209285 * t."OUT_19"  + 0.142290 * t."OUT_20"  + -0.012800 * t."OUT_21"  + -0.095474 * t."OUT_22"  + -0.073701 * t."OUT_23"  + -0.127474 * t."OUT_24"  + -0.096588 * t."OUT_25"  + 0.159139 * t."OUT_26"  + 0.066435 * t."OUT_27"  + 0.125834 * t."OUT_28"  + -0.082052 * t."OUT_29"  + -0.184308 * t."OUT_30"  + 0.018643 * t."OUT_31"  + -0.252285 * t."OUT_32"  + -0.095417 * t."OUT_33"  + -0.104971 * t."OUT_34"  + -0.229249 * t."OUT_35"  + 0.036973 * t."OUT_36"  + 0.000508 * t."OUT_37"  + 0.228653 * t."OUT_38"  + 0.080481 * t."OUT_39"  + 0.212750 * t."OUT_40"  + -0.144089 * t."OUT_41"  + 0.042419 * t."OUT_42"  + -0.000350 * t."OUT_43"  + -0.103280 * t."OUT_44"  + -0.021786 * t."OUT_45"  + -0.171404 * t."OUT_46"  + -0.099790 * t."OUT_47"  + 0.026727 * t."OUT_48"  + -0.153824 * t."OUT_49"  + -0.231928 * t."OUT_50"  + -0.011994 * t."OUT_51"  + -0.003525 * t."OUT_52"  + -0.084467 * t."OUT_53"  + 0.044088 * t."OUT_54"  + 0.171954 * t."OUT_55"  + 0.102248 * t."OUT_56"  + 0.180030 * t."OUT_57"  + 0.139837 * t."OUT_58"  + -0.264881 * t."OUT_59"  + 0.078219 * t."OUT_60"  + -0.121624 * t."OUT_61"  + -0.223059 * t."OUT_62"  + -0.030478 * t."OUT_63"  + 0.001185 * t."OUT_64"  + 0.137003 * t."OUT_65"  + -0.043589 * t."OUT_66"  + 0.224900 * t."OUT_67"  + 0.045757 * t."OUT_68"  + -0.140897 * t."OUT_69"  + -0.031046 * t."OUT_70"  + 0.130898 * t."OUT_71"  + 0.041889 * t."OUT_72"  + -0.185654 * t."OUT_73"  + 0.002540 * t."OUT_74"  + -0.157425 * t."OUT_75"  + -0.012364 * t."OUT_76"  + 0.122465 * t."OUT_77"  + 0.183030 * t."OUT_78"  + -0.134640 * t."OUT_79"  + -0.239315 * t."OUT_80"  + 0.153120 * t."OUT_81"  + -0.224098 * t."OUT_82"  + -0.070712 * t."OUT_83"  + -0.091605 * t."OUT_84"  + -0.100690 * t."OUT_85"  + 0.004358 * t."OUT_86"  + 0.207543 * t."OUT_87"  + -0.212357 * t."OUT_88"  + -0.199069 * t."OUT_89"  + 0.177664 * t."OUT_90"  + 0.078070 * t."OUT_91"  + -0.141289 * t."OUT_92"  + -0.249572 * t."OUT_93"  + 0.180393 * t."OUT_94"  + 0.160431 * t."OUT_95"  + -0.020005 * t."OUT_96"  + 0.119452 * t."OUT_97"  + -0.149358 * t."OUT_98"  + 0.185147 * t."OUT_99" AS "OUT_2",
    0.222623 + -0.015304 * t."OUT_0"  + 0.060326 * t."OUT_1"  + 0.019593 * t."OUT_2"  + 0.052596 * t."OUT_3"  + -0.133675 * t."OUT_4"  + 0.004328 * t."OUT_5"  + 0.264171 * t."OUT_6"  + 0.024233 * t."OUT_7"  + 0.101215 * t."OUT_8"  + 0.160922 * t."OUT_9"  + 0.227029 * t."OUT_10"  + 0.076957 * t."OUT_11"  + -0.145479 * t."OUT_12"  + 0.137818 * t."OUT_13"  + 0.111575 * t."OUT_14"  + 0.131305 * t."OUT_15"  + -0.223673 * t."OUT_16"  + -0.254536 * t."OUT_17"  + 0.102178 * t."OUT_18"  + -0.053491 * t."OUT_19"  + -0.078542 * t."OUT_20"  + 0.003465 * t."OUT_21"  + 0.172917 * t."OUT_22"  + -0.237571 * t."OUT_23"  + -0.039616 * t."OUT_24"  + 0.160490 * t."OUT_25"  + 0.187578 * t."OUT_26"  + 0.160593 * t."OUT_27"  + 0.155164 * t."OUT_28"  + -0.115098 * t."OUT_29"  + 0.070295 * t."OUT_30"  + -0.078329 * t."OUT_31"  + 0.152386 * t."OUT_32"  + -0.169108 * t."OUT_33"  + -0.064253 * t."OUT_34"  + 0.011448 * t."OUT_35"  + 0.098713 * t."OUT_36"  + -0.205813 * t."OUT_37"  + 0.007107 * t."OUT_38"  + -0.160101 * t."OUT_39"  + 0.205199 * t."OUT_40"  + 0.174562 * t."OUT_41"  + -0.143136 * t."OUT_42"  + -0.071364 * t."OUT_43"  + 0.034885 * t."OUT_44"  + 0.209226 * t."OUT_45"  + -0.065590 * t."OUT_46"  + -0.073233 * t."OUT_47"  + 0.192116 * t."OUT_48"  + -0.150732 * t."OUT_49"  + 0.088878 * t."OUT_50"  + 0.079263 * t."OUT_51"  + 0.149531 * t."OUT_52"  + -0.217203 * t."OUT_53"  + -0.084536 * t."OUT_54"  + -0.077765 * t."OUT_55"  + 0.120912 * t."OUT_56"  + 0.195476 * t."OUT_57"  + 0.031646 * t."OUT_58"  + -0.220628 * t."OUT_59"  + 0.139199 * t."OUT_60"  + -0.099098 * t."OUT_61"  + -0.010158 * t."OUT_62"  + -0.068428 * t."OUT_63"  + 0.216213 * t."OUT_64"  + 0.131591 * t."OUT_65"  + -0.161744 * t."OUT_66"  + 0.130302 * t."OUT_67"  + 0.177759 * t."OUT_68"  + 0.188288 * t."OUT_69"  + 0.088436 * t."OUT_70"  + -0.238877 * t."OUT_71"  + 0.184325 * t."OUT_72"  + 0.011212 * t."OUT_73"  + 0.069819 * t."OUT_74"  + -0.107602 * t."OUT_75"  + -0.052449 * t."OUT_76"  + -0.092802 * t."OUT_77"  + -0.011586 * t."OUT_78"  + 0.008584 * t."OUT_79"  + -0.158392 * t."OUT_80"  + 0.116224 * t."OUT_81"  + 0.081451 * t."OUT_82"  + 0.014000 * t."OUT_83"  + -0.066604 * t."OUT_84"  + -0.151318 * t."OUT_85"  + -0.067114 * t."OUT_86"  + -0.012150 * t."OUT_87"  + 0.101663 * t."OUT_88"  + 0.056905 * t."OUT_89"  + -0.114982 * t."OUT_90"  + -0.107074 * t."OUT_91"  + -0.102668 * t."OUT_92"  + 0.232492 * t."OUT_93"  + 0.024719 * t."OUT_94"  + -0.135844 * t."OUT_95"  + 0.155186 * t."OUT_96"  + 0.147802 * t."OUT_97"  + 0.107704 * t."OUT_98"  + -0.161640 * t."OUT_99" AS "OUT_3"
 FROM "Input_Layer_BA" AS t
),
"Hidden_Layer_1_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3"
 FROM "Hidden_Layer_1_BA" AS t
),
"Hidden_Layer_2_BA" AS
 ( SELECT t."index" as "index",
    -0.059470 + -0.312714 * t."OUT_0"  + 0.121879 * t."OUT_1"  + 0.689473 * t."OUT_2"  + -0.388467 * t."OUT_3" AS "OUT_0",
    -0.668457 + 0.017880 * t."OUT_0"  + -0.603689 * t."OUT_1"  + 0.448840 * t."OUT_2"  + -0.003134 * t."OUT_3" AS "OUT_1",
    0.539409 + 0.684409 * t."OUT_0"  + -0.293565 * t."OUT_1"  + -0.375561 * t."OUT_2"  + -0.663418 * t."OUT_3" AS "OUT_2",
    -0.664425 + 0.564183 * t."OUT_0"  + -0.669076 * t."OUT_1"  + -0.002960 * t."OUT_2"  + -0.148373 * t."OUT_3" AS "OUT_3",
    -0.042090 + 0.525477 * t."OUT_0"  + -0.167059 * t."OUT_1"  + 0.408644 * t."OUT_2"  + -0.214941 * t."OUT_3" AS "OUT_4",
    -0.064640 + -0.171631 * t."OUT_0"  + -0.250500 * t."OUT_1"  + -0.619990 * t."OUT_2"  + 0.284024 * t."OUT_3" AS "OUT_5",
    0.327592 + -0.296301 * t."OUT_0"  + 0.020755 * t."OUT_1"  + -0.415846 * t."OUT_2"  + -0.159442 * t."OUT_3" AS "OUT_6",
    -0.698397 + -0.347999 * t."OUT_0"  + -0.119230 * t."OUT_1"  + 0.050930 * t."OUT_2"  + 0.478224 * t."OUT_3" AS "OUT_7"
 FROM "Hidden_Layer_1_Activation" AS t
),
"Hidden_Layer_2_Activation" AS
 ( SELECT t."index" as "index",
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
 ( SELECT t."index" as "index",
    0.597354 + -0.265415 * t."OUT_0"  + 0.573700 * t."OUT_1"  + 0.413008 * t."OUT_2"  + 0.058255 * t."OUT_3"  + -0.317732 * t."OUT_4"  + 0.515966 * t."OUT_5"  + -0.306931 * t."OUT_6"  + -0.059864 * t."OUT_7" AS "OUT_0",
    -0.529845 + 0.553628 * t."OUT_0"  + 0.559709 * t."OUT_1"  + 0.096048 * t."OUT_2"  + -0.188116 * t."OUT_3"  + -0.446625 * t."OUT_4"  + -0.009729 * t."OUT_5"  + 0.609814 * t."OUT_6"  + 0.422472 * t."OUT_7" AS "OUT_1",
    -0.284540 + 0.415973 * t."OUT_0"  + -0.283243 * t."OUT_1"  + 0.090075 * t."OUT_2"  + -0.407705 * t."OUT_3"  + -0.281657 * t."OUT_4"  + 0.146457 * t."OUT_5"  + 0.723081 * t."OUT_6"  + 0.219511 * t."OUT_7" AS "OUT_2",
    0.650753 + -0.264362 * t."OUT_0"  + 0.457459 * t."OUT_1"  + -0.078903 * t."OUT_2"  + 0.110360 * t."OUT_3"  + -0.299607 * t."OUT_4"  + 0.057528 * t."OUT_5"  + 0.329461 * t."OUT_6"  + -0.111487 * t."OUT_7" AS "OUT_3",
    -0.471025 + 0.463964 * t."OUT_0"  + 0.526202 * t."OUT_1"  + -0.096363 * t."OUT_2"  + 0.617842 * t."OUT_3"  + -0.140020 * t."OUT_4"  + 0.047891 * t."OUT_5"  + 0.048592 * t."OUT_6"  + -0.137342 * t."OUT_7" AS "OUT_4",
    0.674937 + 0.166797 * t."OUT_0"  + 0.540932 * t."OUT_1"  + 0.047415 * t."OUT_2"  + -0.173490 * t."OUT_3"  + -0.163907 * t."OUT_4"  + 0.047754 * t."OUT_5"  + 0.248672 * t."OUT_6"  + -0.604640 * t."OUT_7" AS "OUT_5"
 FROM "Hidden_Layer_2_Activation" AS t
),
"Hidden_Layer_3_Activation" AS
 ( SELECT t."index" as "index",
    CASE WHEN (t."OUT_0" > 0) THEN t."OUT_0" ELSE 0 END AS "OUT_0",
    CASE WHEN (t."OUT_1" > 0) THEN t."OUT_1" ELSE 0 END AS "OUT_1",
    CASE WHEN (t."OUT_2" > 0) THEN t."OUT_2" ELSE 0 END AS "OUT_2",
    CASE WHEN (t."OUT_3" > 0) THEN t."OUT_3" ELSE 0 END AS "OUT_3",
    CASE WHEN (t."OUT_4" > 0) THEN t."OUT_4" ELSE 0 END AS "OUT_4",
    CASE WHEN (t."OUT_5" > 0) THEN t."OUT_5" ELSE 0 END AS "OUT_5"
 FROM "Hidden_Layer_3_BA" AS t
),
"Output_Layer_BA" AS
 ( SELECT t."index" as "index",
    -0.670226 + -0.484233 * t."OUT_0"  + 0.846148 * t."OUT_1"  + 0.352707 * t."OUT_2"  + 0.831349 * t."OUT_3"  + -0.572208 * t."OUT_4"  + 0.653311 * t."OUT_5" AS "OUT_0"
 FROM "Hidden_Layer_3_Activation" AS t
),
model_scores_cte AS 
( SELECT t."index" AS "index",
   -0.5 * t."OUT_0" AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.5 * t."OUT_0" AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM "Output_Layer_BA" AS t ),
soft_max_orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   GREATEST( t."Score_0", t."Score_1" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1."index" as "index",
    t1."Proba_0" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_0" AS "Exp_Score_0",
    t1."Proba_1" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    t1."Exp_Score_1" AS "Exp_Score_1",
    ( t1."Exp_Score_0" + t1."Exp_Score_1" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    GREATEST( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1" ) AS "Max_Score"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    t."Max_Proba" AS "Max_Proba",
    t."Max_Score" AS "Max_Score"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
( SELECT t."index" as "index",
     t."Proba_0" AS "Proba_0",
     t."Score_0" AS "Score_0",
     t."Proba_1" AS "Proba_1",
     t."Score_1" AS "Score_1",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1" ) AS argmax_class_idx
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
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte