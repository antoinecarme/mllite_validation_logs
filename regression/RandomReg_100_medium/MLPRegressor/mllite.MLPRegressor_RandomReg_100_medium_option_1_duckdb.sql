WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "RandomReg_100_medium" AS "ADS" 
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
    -0.017874 + 0.074652 * t."OUT_0"  + 0.105610 * t."OUT_1"  + 0.102108 * t."OUT_2"  + 0.311378 * t."OUT_3"  + 0.138274 * t."OUT_4"  + 0.087345 * t."OUT_5"  + -0.143272 * t."OUT_6"  + -0.022732 * t."OUT_7"  + -0.074583 * t."OUT_8"  + -0.236491 * t."OUT_9"  + -0.142815 * t."OUT_10"  + -0.186328 * t."OUT_11"  + 0.230070 * t."OUT_12"  + 0.207100 * t."OUT_13"  + 0.154776 * t."OUT_14"  + -0.295819 * t."OUT_15"  + -0.204030 * t."OUT_16"  + 0.195807 * t."OUT_17"  + -0.075384 * t."OUT_18"  + 0.039131 * t."OUT_19"  + 0.068914 * t."OUT_20"  + -0.256738 * t."OUT_21"  + -0.284093 * t."OUT_22"  + -0.061516 * t."OUT_23"  + 0.130088 * t."OUT_24"  + 0.015450 * t."OUT_25"  + 0.050657 * t."OUT_26"  + -0.092509 * t."OUT_27"  + 0.120853 * t."OUT_28"  + 0.131829 * t."OUT_29"  + 0.019922 * t."OUT_30"  + -0.104386 * t."OUT_31"  + 0.001018 * t."OUT_32"  + 0.113236 * t."OUT_33"  + -0.258801 * t."OUT_34"  + -0.148439 * t."OUT_35"  + -0.265726 * t."OUT_36"  + -0.029682 * t."OUT_37"  + -0.025222 * t."OUT_38"  + -0.270399 * t."OUT_39"  + 0.051034 * t."OUT_40"  + -0.074065 * t."OUT_41"  + -0.283891 * t."OUT_42"  + 0.017549 * t."OUT_43"  + 0.149341 * t."OUT_44"  + 0.080375 * t."OUT_45"  + -0.021062 * t."OUT_46"  + 0.120735 * t."OUT_47"  + 0.224690 * t."OUT_48"  + -0.307597 * t."OUT_49"  + -0.058708 * t."OUT_50"  + 0.289716 * t."OUT_51"  + 0.133781 * t."OUT_52"  + 0.044896 * t."OUT_53"  + -0.222990 * t."OUT_54"  + -0.044483 * t."OUT_55"  + 0.030050 * t."OUT_56"  + -0.117082 * t."OUT_57"  + -0.047453 * t."OUT_58"  + -0.178850 * t."OUT_59"  + 0.048958 * t."OUT_60"  + 0.134756 * t."OUT_61"  + 0.135374 * t."OUT_62"  + 0.197467 * t."OUT_63"  + 0.100503 * t."OUT_64"  + -0.015256 * t."OUT_65"  + 0.146557 * t."OUT_66"  + 0.077890 * t."OUT_67"  + 0.178020 * t."OUT_68"  + 0.134266 * t."OUT_69"  + 0.150786 * t."OUT_70"  + 0.146165 * t."OUT_71"  + 0.063341 * t."OUT_72"  + -0.189081 * t."OUT_73"  + -0.244161 * t."OUT_74"  + 0.120268 * t."OUT_75"  + -0.214060 * t."OUT_76"  + -0.163112 * t."OUT_77"  + 0.098694 * t."OUT_78"  + 0.083326 * t."OUT_79"  + -0.058399 * t."OUT_80"  + 0.125903 * t."OUT_81"  + -0.210841 * t."OUT_82"  + 0.010094 * t."OUT_83"  + 0.333128 * t."OUT_84"  + -0.007847 * t."OUT_85"  + -0.059059 * t."OUT_86"  + -0.037844 * t."OUT_87"  + -0.213049 * t."OUT_88"  + -0.035499 * t."OUT_89"  + -0.286534 * t."OUT_90"  + 0.315372 * t."OUT_91"  + 0.162238 * t."OUT_92"  + -0.230829 * t."OUT_93"  + -0.273999 * t."OUT_94"  + -0.145576 * t."OUT_95"  + -0.252850 * t."OUT_96"  + -0.081516 * t."OUT_97"  + -0.186390 * t."OUT_98"  + -0.218543 * t."OUT_99" AS "OUT_0",
    0.090907 + 0.064476 * t."OUT_0"  + -0.216481 * t."OUT_1"  + 0.021546 * t."OUT_2"  + -0.267084 * t."OUT_3"  + -0.115451 * t."OUT_4"  + -0.183635 * t."OUT_5"  + -0.239325 * t."OUT_6"  + 0.066196 * t."OUT_7"  + -0.000356 * t."OUT_8"  + 0.149116 * t."OUT_9"  + 0.195092 * t."OUT_10"  + -0.116449 * t."OUT_11"  + 0.175697 * t."OUT_12"  + 0.203715 * t."OUT_13"  + 0.001515 * t."OUT_14"  + 0.079204 * t."OUT_15"  + 0.231835 * t."OUT_16"  + 0.193229 * t."OUT_17"  + 0.267300 * t."OUT_18"  + 0.166118 * t."OUT_19"  + 0.184791 * t."OUT_20"  + 0.145080 * t."OUT_21"  + -0.123145 * t."OUT_22"  + -0.134511 * t."OUT_23"  + -0.078163 * t."OUT_24"  + -0.123933 * t."OUT_25"  + 0.287736 * t."OUT_26"  + 0.078041 * t."OUT_27"  + -0.018335 * t."OUT_28"  + -0.065462 * t."OUT_29"  + 0.237758 * t."OUT_30"  + 0.069819 * t."OUT_31"  + -0.142761 * t."OUT_32"  + -0.104585 * t."OUT_33"  + -0.091881 * t."OUT_34"  + -0.175015 * t."OUT_35"  + -0.097001 * t."OUT_36"  + -0.040742 * t."OUT_37"  + 0.138239 * t."OUT_38"  + -0.031887 * t."OUT_39"  + -0.154586 * t."OUT_40"  + 0.157550 * t."OUT_41"  + 0.192961 * t."OUT_42"  + 0.066535 * t."OUT_43"  + 0.156510 * t."OUT_44"  + 0.002422 * t."OUT_45"  + 0.206412 * t."OUT_46"  + 0.111307 * t."OUT_47"  + -0.118949 * t."OUT_48"  + -0.096818 * t."OUT_49"  + 0.009019 * t."OUT_50"  + -0.038393 * t."OUT_51"  + 0.074152 * t."OUT_52"  + -0.039947 * t."OUT_53"  + -0.055603 * t."OUT_54"  + -0.211837 * t."OUT_55"  + 0.052518 * t."OUT_56"  + 0.112437 * t."OUT_57"  + 0.302001 * t."OUT_58"  + 0.292974 * t."OUT_59"  + -0.040240 * t."OUT_60"  + -0.066965 * t."OUT_61"  + 0.073523 * t."OUT_62"  + -0.147256 * t."OUT_63"  + -0.043224 * t."OUT_64"  + 0.071973 * t."OUT_65"  + -0.215573 * t."OUT_66"  + -0.010084 * t."OUT_67"  + -0.088086 * t."OUT_68"  + 0.165798 * t."OUT_69"  + 0.235712 * t."OUT_70"  + 0.030796 * t."OUT_71"  + 0.198162 * t."OUT_72"  + 0.173726 * t."OUT_73"  + 0.119648 * t."OUT_74"  + -0.188416 * t."OUT_75"  + 0.101883 * t."OUT_76"  + 0.255112 * t."OUT_77"  + -0.127981 * t."OUT_78"  + -0.210711 * t."OUT_79"  + 0.238643 * t."OUT_80"  + 0.046367 * t."OUT_81"  + -0.110131 * t."OUT_82"  + 0.167837 * t."OUT_83"  + -0.268852 * t."OUT_84"  + 0.005912 * t."OUT_85"  + 0.053741 * t."OUT_86"  + -0.064580 * t."OUT_87"  + -0.220569 * t."OUT_88"  + -0.136580 * t."OUT_89"  + -0.041185 * t."OUT_90"  + -0.111008 * t."OUT_91"  + -0.150160 * t."OUT_92"  + 0.144062 * t."OUT_93"  + 0.005930 * t."OUT_94"  + -0.000392 * t."OUT_95"  + -0.104429 * t."OUT_96"  + 0.044762 * t."OUT_97"  + 0.112045 * t."OUT_98"  + -0.014716 * t."OUT_99" AS "OUT_1",
    0.105334 + -0.092252 * t."OUT_0"  + 0.123136 * t."OUT_1"  + 0.106328 * t."OUT_2"  + -0.190324 * t."OUT_3"  + -0.140077 * t."OUT_4"  + -0.080666 * t."OUT_5"  + -0.040754 * t."OUT_6"  + -0.316204 * t."OUT_7"  + -0.059482 * t."OUT_8"  + -0.228560 * t."OUT_9"  + 0.118665 * t."OUT_10"  + 0.101921 * t."OUT_11"  + 0.110402 * t."OUT_12"  + -0.191845 * t."OUT_13"  + 0.082485 * t."OUT_14"  + 0.040724 * t."OUT_15"  + -0.126212 * t."OUT_16"  + -0.010255 * t."OUT_17"  + -0.116736 * t."OUT_18"  + 0.205066 * t."OUT_19"  + 0.140904 * t."OUT_20"  + 0.035879 * t."OUT_21"  + -0.150655 * t."OUT_22"  + -0.076451 * t."OUT_23"  + -0.049463 * t."OUT_24"  + -0.064898 * t."OUT_25"  + 0.165309 * t."OUT_26"  + 0.150565 * t."OUT_27"  + 0.139181 * t."OUT_28"  + -0.095617 * t."OUT_29"  + -0.256723 * t."OUT_30"  + -0.008840 * t."OUT_31"  + -0.268709 * t."OUT_32"  + -0.141993 * t."OUT_33"  + -0.059979 * t."OUT_34"  + -0.163500 * t."OUT_35"  + 0.016083 * t."OUT_36"  + 0.094178 * t."OUT_37"  + 0.231274 * t."OUT_38"  + 0.028386 * t."OUT_39"  + 0.221770 * t."OUT_40"  + -0.132250 * t."OUT_41"  + 0.110498 * t."OUT_42"  + 0.057403 * t."OUT_43"  + -0.131272 * t."OUT_44"  + 0.000873 * t."OUT_45"  + -0.261533 * t."OUT_46"  + -0.098424 * t."OUT_47"  + -0.009679 * t."OUT_48"  + -0.145052 * t."OUT_49"  + -0.214735 * t."OUT_50"  + -0.038633 * t."OUT_51"  + 0.009447 * t."OUT_52"  + -0.004951 * t."OUT_53"  + 0.086181 * t."OUT_54"  + 0.180523 * t."OUT_55"  + 0.061671 * t."OUT_56"  + 0.167637 * t."OUT_57"  + 0.185343 * t."OUT_58"  + -0.341014 * t."OUT_59"  + 0.103842 * t."OUT_60"  + -0.149757 * t."OUT_61"  + -0.175887 * t."OUT_62"  + 0.000396 * t."OUT_63"  + 0.063438 * t."OUT_64"  + 0.234728 * t."OUT_65"  + -0.032971 * t."OUT_66"  + 0.145922 * t."OUT_67"  + 0.100934 * t."OUT_68"  + -0.127456 * t."OUT_69"  + -0.062250 * t."OUT_70"  + 0.132675 * t."OUT_71"  + 0.108862 * t."OUT_72"  + -0.118848 * t."OUT_73"  + 0.062326 * t."OUT_74"  + -0.201815 * t."OUT_75"  + -0.016226 * t."OUT_76"  + 0.040114 * t."OUT_77"  + 0.142090 * t."OUT_78"  + -0.165272 * t."OUT_79"  + -0.196851 * t."OUT_80"  + 0.195467 * t."OUT_81"  + -0.191862 * t."OUT_82"  + -0.049787 * t."OUT_83"  + -0.010123 * t."OUT_84"  + -0.050291 * t."OUT_85"  + 0.117477 * t."OUT_86"  + 0.292585 * t."OUT_87"  + -0.145965 * t."OUT_88"  + -0.129602 * t."OUT_89"  + 0.097069 * t."OUT_90"  + 0.043620 * t."OUT_91"  + -0.078061 * t."OUT_92"  + -0.180562 * t."OUT_93"  + 0.127382 * t."OUT_94"  + 0.100015 * t."OUT_95"  + 0.039624 * t."OUT_96"  + 0.131536 * t."OUT_97"  + -0.164326 * t."OUT_98"  + 0.231745 * t."OUT_99" AS "OUT_2",
    0.193145 + -0.036509 * t."OUT_0"  + 0.013785 * t."OUT_1"  + 0.050539 * t."OUT_2"  + 0.029166 * t."OUT_3"  + -0.181674 * t."OUT_4"  + -0.014058 * t."OUT_5"  + 0.250623 * t."OUT_6"  + -0.010908 * t."OUT_7"  + 0.103736 * t."OUT_8"  + 0.132025 * t."OUT_9"  + 0.155456 * t."OUT_10"  + 0.060023 * t."OUT_11"  + -0.091816 * t."OUT_12"  + 0.044751 * t."OUT_13"  + 0.069023 * t."OUT_14"  + 0.163873 * t."OUT_15"  + -0.171418 * t."OUT_16"  + -0.201466 * t."OUT_17"  + 0.128434 * t."OUT_18"  + -0.164048 * t."OUT_19"  + 0.047009 * t."OUT_20"  + -0.037218 * t."OUT_21"  + 0.257037 * t."OUT_22"  + -0.214398 * t."OUT_23"  + -0.094016 * t."OUT_24"  + 0.121920 * t."OUT_25"  + 0.165223 * t."OUT_26"  + 0.115261 * t."OUT_27"  + 0.153540 * t."OUT_28"  + -0.103307 * t."OUT_29"  + 0.151194 * t."OUT_30"  + -0.150150 * t."OUT_31"  + 0.240441 * t."OUT_32"  + -0.107000 * t."OUT_33"  + -0.023522 * t."OUT_34"  + 0.017022 * t."OUT_35"  + 0.066348 * t."OUT_36"  + -0.168623 * t."OUT_37"  + -0.005562 * t."OUT_38"  + -0.107510 * t."OUT_39"  + 0.184844 * t."OUT_40"  + 0.242348 * t."OUT_41"  + -0.138920 * t."OUT_42"  + -0.108456 * t."OUT_43"  + -0.036975 * t."OUT_44"  + 0.289339 * t."OUT_45"  + -0.027849 * t."OUT_46"  + -0.027622 * t."OUT_47"  + 0.202087 * t."OUT_48"  + -0.054237 * t."OUT_49"  + 0.062373 * t."OUT_50"  + 0.035707 * t."OUT_51"  + 0.146943 * t."OUT_52"  + -0.188238 * t."OUT_53"  + -0.013246 * t."OUT_54"  + -0.139798 * t."OUT_55"  + 0.048869 * t."OUT_56"  + 0.095974 * t."OUT_57"  + 0.131241 * t."OUT_58"  + -0.205932 * t."OUT_59"  + 0.105429 * t."OUT_60"  + -0.123341 * t."OUT_61"  + -0.053189 * t."OUT_62"  + -0.031357 * t."OUT_63"  + 0.158291 * t."OUT_64"  + 0.186406 * t."OUT_65"  + -0.200127 * t."OUT_66"  + 0.187177 * t."OUT_67"  + 0.093760 * t."OUT_68"  + 0.214310 * t."OUT_69"  + 0.060202 * t."OUT_70"  + -0.252044 * t."OUT_71"  + 0.233114 * t."OUT_72"  + 0.081630 * t."OUT_73"  + -0.019331 * t."OUT_74"  + -0.068148 * t."OUT_75"  + 0.019865 * t."OUT_76"  + -0.045976 * t."OUT_77"  + 0.046760 * t."OUT_78"  + 0.031248 * t."OUT_79"  + -0.164604 * t."OUT_80"  + 0.169848 * t."OUT_81"  + 0.061846 * t."OUT_82"  + -0.009504 * t."OUT_83"  + -0.133946 * t."OUT_84"  + -0.079454 * t."OUT_85"  + -0.189213 * t."OUT_86"  + 0.018855 * t."OUT_87"  + 0.088511 * t."OUT_88"  + -0.024174 * t."OUT_89"  + -0.121450 * t."OUT_90"  + -0.182070 * t."OUT_91"  + -0.179276 * t."OUT_92"  + 0.219356 * t."OUT_93"  + 0.036143 * t."OUT_94"  + -0.068494 * t."OUT_95"  + 0.242551 * t."OUT_96"  + 0.118360 * t."OUT_97"  + 0.119009 * t."OUT_98"  + -0.173017 * t."OUT_99" AS "OUT_3"
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
    -0.048210 + -0.331280 * t."OUT_0"  + 0.153989 * t."OUT_1"  + 0.728207 * t."OUT_2"  + -0.362170 * t."OUT_3" AS "OUT_0",
    -0.621718 + 0.046097 * t."OUT_0"  + -0.604201 * t."OUT_1"  + 0.509332 * t."OUT_2"  + -0.013230 * t."OUT_3" AS "OUT_1",
    0.603805 + 0.811087 * t."OUT_0"  + -0.319473 * t."OUT_1"  + -0.265833 * t."OUT_2"  + -0.689326 * t."OUT_3" AS "OUT_2",
    -0.525778 + 0.703846 * t."OUT_0"  + -0.552422 * t."OUT_1"  + 0.120303 * t."OUT_2"  + -0.062566 * t."OUT_3" AS "OUT_3",
    -0.011712 + 0.512195 * t."OUT_0"  + -0.212213 * t."OUT_1"  + 0.425989 * t."OUT_2"  + -0.214084 * t."OUT_3" AS "OUT_4",
    -0.058220 + -0.201322 * t."OUT_0"  + -0.300222 * t."OUT_1"  + -0.632764 * t."OUT_2"  + 0.280723 * t."OUT_3" AS "OUT_5",
    0.375335 + -0.336610 * t."OUT_0"  + 0.087404 * t."OUT_1"  + -0.314250 * t."OUT_2"  + -0.074905 * t."OUT_3" AS "OUT_6",
    -0.689780 + -0.265199 * t."OUT_0"  + -0.152977 * t."OUT_1"  + 0.090953 * t."OUT_2"  + 0.504726 * t."OUT_3" AS "OUT_7"
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
    0.652651 + -0.141912 * t."OUT_0"  + 0.663677 * t."OUT_1"  + 0.537087 * t."OUT_2"  + 0.196481 * t."OUT_3"  + -0.193794 * t."OUT_4"  + 0.505710 * t."OUT_5"  + -0.364613 * t."OUT_6"  + -0.073557 * t."OUT_7" AS "OUT_0",
    -0.575520 + 0.515112 * t."OUT_0"  + 0.506011 * t."OUT_1"  + 0.085966 * t."OUT_2"  + -0.215494 * t."OUT_3"  + -0.485722 * t."OUT_4"  + 0.037936 * t."OUT_5"  + 0.559322 * t."OUT_6"  + 0.461395 * t."OUT_7" AS "OUT_1",
    -0.232738 + 0.426891 * t."OUT_0"  + -0.332814 * t."OUT_1"  + 0.151818 * t."OUT_2"  + -0.413525 * t."OUT_3"  + -0.295285 * t."OUT_4"  + 0.208026 * t."OUT_5"  + 0.740924 * t."OUT_6"  + 0.266721 * t."OUT_7" AS "OUT_2",
    0.661436 + -0.361549 * t."OUT_0"  + 0.461518 * t."OUT_1"  + -0.143469 * t."OUT_2"  + -0.004945 * t."OUT_3"  + -0.387067 * t."OUT_4"  + 0.068700 * t."OUT_5"  + 0.357655 * t."OUT_6"  + -0.096627 * t."OUT_7" AS "OUT_3",
    -0.315827 + 0.575399 * t."OUT_0"  + 0.617647 * t."OUT_1"  + 0.038973 * t."OUT_2"  + 0.751044 * t."OUT_3"  + -0.004740 * t."OUT_4"  + 0.047888 * t."OUT_5"  + 0.111032 * t."OUT_6"  + -0.147877 * t."OUT_7" AS "OUT_4",
    0.607363 + 0.049486 * t."OUT_0"  + 0.455842 * t."OUT_1"  + -0.054153 * t."OUT_2"  + -0.290411 * t."OUT_3"  + -0.275788 * t."OUT_4"  + 0.022317 * t."OUT_5"  + 0.276608 * t."OUT_6"  + -0.631406 * t."OUT_7" AS "OUT_5"
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
    -0.723294 + -0.570000 * t."OUT_0"  + 0.840942 * t."OUT_1"  + 0.453743 * t."OUT_2"  + 0.861368 * t."OUT_3"  + -0.717354 * t."OUT_4"  + 0.592693 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
