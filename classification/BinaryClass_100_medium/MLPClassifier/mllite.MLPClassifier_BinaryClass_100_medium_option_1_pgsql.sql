WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
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
    -0.183438 + -0.053637 * t."OUT_0"  + -0.034277 * t."OUT_1"  + 0.169044 * t."OUT_2"  + 0.246108 * t."OUT_3"  + 0.047366 * t."OUT_4"  + 0.175241 * t."OUT_5"  + -0.055231 * t."OUT_6"  + 0.030794 * t."OUT_7"  + -0.016267 * t."OUT_8"  + -0.108776 * t."OUT_9"  + -0.141539 * t."OUT_10"  + -0.206363 * t."OUT_11"  + 0.093024 * t."OUT_12"  + 0.111389 * t."OUT_13"  + 0.036269 * t."OUT_14"  + -0.178100 * t."OUT_15"  + -0.129789 * t."OUT_16"  + 0.252641 * t."OUT_17"  + -0.034494 * t."OUT_18"  + 0.132606 * t."OUT_19"  + 0.075765 * t."OUT_20"  + -0.199922 * t."OUT_21"  + -0.133547 * t."OUT_22"  + 0.049361 * t."OUT_23"  + 0.092350 * t."OUT_24"  + 0.091508 * t."OUT_25"  + 0.208673 * t."OUT_26"  + -0.130104 * t."OUT_27"  + 0.130649 * t."OUT_28"  + 0.054752 * t."OUT_29"  + 0.208080 * t."OUT_30"  + -0.133619 * t."OUT_31"  + 0.100087 * t."OUT_32"  + 0.160482 * t."OUT_33"  + -0.138861 * t."OUT_34"  + -0.144302 * t."OUT_35"  + -0.076780 * t."OUT_36"  + -0.086130 * t."OUT_37"  + -0.019486 * t."OUT_38"  + -0.173518 * t."OUT_39"  + 0.086152 * t."OUT_40"  + -0.049041 * t."OUT_41"  + -0.165528 * t."OUT_42"  + 0.034337 * t."OUT_43"  + 0.186815 * t."OUT_44"  + 0.141726 * t."OUT_45"  + 0.085149 * t."OUT_46"  + 0.124836 * t."OUT_47"  + 0.178324 * t."OUT_48"  + -0.225359 * t."OUT_49"  + -0.064571 * t."OUT_50"  + 0.205872 * t."OUT_51"  + 0.081033 * t."OUT_52"  + 0.054307 * t."OUT_53"  + -0.092899 * t."OUT_54"  + -0.042389 * t."OUT_55"  + -0.120408 * t."OUT_56"  + -0.221203 * t."OUT_57"  + 0.013382 * t."OUT_58"  + -0.079391 * t."OUT_59"  + -0.020221 * t."OUT_60"  + -0.034638 * t."OUT_61"  + 0.108551 * t."OUT_62"  + 0.133099 * t."OUT_63"  + 0.084462 * t."OUT_64"  + 0.113486 * t."OUT_65"  + 0.070614 * t."OUT_66"  + 0.132423 * t."OUT_67"  + 0.163842 * t."OUT_68"  + 0.057692 * t."OUT_69"  + 0.113615 * t."OUT_70"  + 0.096827 * t."OUT_71"  + 0.107861 * t."OUT_72"  + -0.095986 * t."OUT_73"  + -0.225361 * t."OUT_74"  + 0.096605 * t."OUT_75"  + -0.084012 * t."OUT_76"  + -0.064983 * t."OUT_77"  + 0.170902 * t."OUT_78"  + 0.092392 * t."OUT_79"  + -0.050304 * t."OUT_80"  + 0.055348 * t."OUT_81"  + -0.201802 * t."OUT_82"  + 0.083400 * t."OUT_83"  + 0.199022 * t."OUT_84"  + 0.002641 * t."OUT_85"  + -0.141675 * t."OUT_86"  + -0.043688 * t."OUT_87"  + -0.141460 * t."OUT_88"  + -0.069398 * t."OUT_89"  + -0.113264 * t."OUT_90"  + 0.230044 * t."OUT_91"  + 0.069423 * t."OUT_92"  + -0.160617 * t."OUT_93"  + -0.188215 * t."OUT_94"  + 0.034768 * t."OUT_95"  + -0.135715 * t."OUT_96"  + 0.030020 * t."OUT_97"  + -0.178528 * t."OUT_98"  + -0.240085 * t."OUT_99" AS "OUT_0",
    0.104836 + 0.155604 * t."OUT_0"  + -0.092343 * t."OUT_1"  + 0.019038 * t."OUT_2"  + -0.265589 * t."OUT_3"  + -0.038628 * t."OUT_4"  + -0.199559 * t."OUT_5"  + -0.252591 * t."OUT_6"  + -0.047837 * t."OUT_7"  + 0.131941 * t."OUT_8"  + 0.169867 * t."OUT_9"  + 0.173819 * t."OUT_10"  + -0.197567 * t."OUT_11"  + 0.201276 * t."OUT_12"  + 0.192133 * t."OUT_13"  + 0.042275 * t."OUT_14"  + 0.088456 * t."OUT_15"  + 0.235135 * t."OUT_16"  + 0.231296 * t."OUT_17"  + 0.291245 * t."OUT_18"  + 0.100525 * t."OUT_19"  + 0.158319 * t."OUT_20"  + 0.168564 * t."OUT_21"  + -0.155188 * t."OUT_22"  + -0.093940 * t."OUT_23"  + -0.028137 * t."OUT_24"  + -0.136464 * t."OUT_25"  + 0.205261 * t."OUT_26"  + -0.020073 * t."OUT_27"  + -0.008226 * t."OUT_28"  + -0.087029 * t."OUT_29"  + 0.071432 * t."OUT_30"  + 0.030288 * t."OUT_31"  + -0.254130 * t."OUT_32"  + -0.215377 * t."OUT_33"  + -0.132215 * t."OUT_34"  + -0.122780 * t."OUT_35"  + -0.264999 * t."OUT_36"  + 0.110035 * t."OUT_37"  + 0.157536 * t."OUT_38"  + -0.145177 * t."OUT_39"  + -0.174138 * t."OUT_40"  + 0.090036 * t."OUT_41"  + 0.148493 * t."OUT_42"  + 0.133066 * t."OUT_43"  + 0.161204 * t."OUT_44"  + 0.048202 * t."OUT_45"  + 0.052714 * t."OUT_46"  + 0.208867 * t."OUT_47"  + -0.122751 * t."OUT_48"  + -0.172870 * t."OUT_49"  + -0.074147 * t."OUT_50"  + 0.056583 * t."OUT_51"  + 0.139337 * t."OUT_52"  + -0.053540 * t."OUT_53"  + -0.054385 * t."OUT_54"  + -0.256661 * t."OUT_55"  + 0.162049 * t."OUT_56"  + 0.232891 * t."OUT_57"  + 0.278093 * t."OUT_58"  + 0.274473 * t."OUT_59"  + -0.053048 * t."OUT_60"  + 0.036541 * t."OUT_61"  + 0.029452 * t."OUT_62"  + -0.083402 * t."OUT_63"  + -0.122800 * t."OUT_64"  + 0.090819 * t."OUT_65"  + -0.227945 * t."OUT_66"  + 0.097770 * t."OUT_67"  + -0.083936 * t."OUT_68"  + 0.210125 * t."OUT_69"  + 0.292095 * t."OUT_70"  + 0.142627 * t."OUT_71"  + 0.272621 * t."OUT_72"  + 0.081948 * t."OUT_73"  + 0.102484 * t."OUT_74"  + -0.245638 * t."OUT_75"  + 0.036287 * t."OUT_76"  + 0.220245 * t."OUT_77"  + -0.288420 * t."OUT_78"  + -0.193959 * t."OUT_79"  + 0.191644 * t."OUT_80"  + 0.064484 * t."OUT_81"  + -0.174108 * t."OUT_82"  + 0.146813 * t."OUT_83"  + -0.144461 * t."OUT_84"  + 0.007466 * t."OUT_85"  + 0.165302 * t."OUT_86"  + -0.025159 * t."OUT_87"  + -0.167712 * t."OUT_88"  + -0.040200 * t."OUT_89"  + -0.123563 * t."OUT_90"  + -0.119756 * t."OUT_91"  + -0.043260 * t."OUT_92"  + 0.073735 * t."OUT_93"  + -0.017850 * t."OUT_94"  + -0.127367 * t."OUT_95"  + -0.069812 * t."OUT_96"  + 0.076550 * t."OUT_97"  + 0.112218 * t."OUT_98"  + -0.016761 * t."OUT_99" AS "OUT_1",
    0.167006 + -0.058434 * t."OUT_0"  + -0.050853 * t."OUT_1"  + 0.255198 * t."OUT_2"  + -0.063648 * t."OUT_3"  + -0.236176 * t."OUT_4"  + -0.045840 * t."OUT_5"  + -0.127587 * t."OUT_6"  + -0.263229 * t."OUT_7"  + -0.061952 * t."OUT_8"  + -0.267987 * t."OUT_9"  + 0.073198 * t."OUT_10"  + 0.047358 * t."OUT_11"  + 0.139595 * t."OUT_12"  + -0.159440 * t."OUT_13"  + 0.131948 * t."OUT_14"  + 0.022894 * t."OUT_15"  + -0.097211 * t."OUT_16"  + -0.046540 * t."OUT_17"  + -0.167281 * t."OUT_18"  + 0.188870 * t."OUT_19"  + 0.097008 * t."OUT_20"  + -0.022266 * t."OUT_21"  + 0.001326 * t."OUT_22"  + -0.064359 * t."OUT_23"  + -0.090638 * t."OUT_24"  + -0.115735 * t."OUT_25"  + 0.244267 * t."OUT_26"  + -0.031743 * t."OUT_27"  + 0.138897 * t."OUT_28"  + -0.078792 * t."OUT_29"  + -0.237602 * t."OUT_30"  + 0.126252 * t."OUT_31"  + -0.184249 * t."OUT_32"  + -0.011194 * t."OUT_33"  + -0.027274 * t."OUT_34"  + -0.168480 * t."OUT_35"  + -0.008298 * t."OUT_36"  + 0.043412 * t."OUT_37"  + 0.248461 * t."OUT_38"  + 0.081119 * t."OUT_39"  + 0.219513 * t."OUT_40"  + -0.120243 * t."OUT_41"  + 0.027434 * t."OUT_42"  + -0.043309 * t."OUT_43"  + -0.038625 * t."OUT_44"  + -0.042660 * t."OUT_45"  + -0.206422 * t."OUT_46"  + -0.001011 * t."OUT_47"  + -0.061510 * t."OUT_48"  + -0.114940 * t."OUT_49"  + -0.180153 * t."OUT_50"  + 0.029497 * t."OUT_51"  + 0.030276 * t."OUT_52"  + -0.137663 * t."OUT_53"  + 0.041446 * t."OUT_54"  + 0.236784 * t."OUT_55"  + 0.105518 * t."OUT_56"  + 0.290635 * t."OUT_57"  + 0.070287 * t."OUT_58"  + -0.200308 * t."OUT_59"  + 0.128121 * t."OUT_60"  + -0.284906 * t."OUT_61"  + -0.233430 * t."OUT_62"  + -0.096849 * t."OUT_63"  + 0.015870 * t."OUT_64"  + 0.173048 * t."OUT_65"  + -0.000454 * t."OUT_66"  + 0.222489 * t."OUT_67"  + -0.005914 * t."OUT_68"  + -0.115598 * t."OUT_69"  + -0.024963 * t."OUT_70"  + 0.140661 * t."OUT_71"  + 0.021819 * t."OUT_72"  + -0.192668 * t."OUT_73"  + 0.079908 * t."OUT_74"  + -0.171218 * t."OUT_75"  + -0.037136 * t."OUT_76"  + 0.156833 * t."OUT_77"  + 0.125970 * t."OUT_78"  + -0.220345 * t."OUT_79"  + -0.255101 * t."OUT_80"  + 0.169725 * t."OUT_81"  + -0.111967 * t."OUT_82"  + -0.062635 * t."OUT_83"  + -0.017305 * t."OUT_84"  + -0.075063 * t."OUT_85"  + 0.056008 * t."OUT_86"  + 0.218682 * t."OUT_87"  + -0.154336 * t."OUT_88"  + -0.123749 * t."OUT_89"  + 0.160325 * t."OUT_90"  + 0.057776 * t."OUT_91"  + -0.222904 * t."OUT_92"  + -0.176962 * t."OUT_93"  + 0.138554 * t."OUT_94"  + 0.203595 * t."OUT_95"  + -0.016639 * t."OUT_96"  + 0.217846 * t."OUT_97"  + -0.109192 * t."OUT_98"  + 0.245871 * t."OUT_99" AS "OUT_2",
    0.198036 + 0.051124 * t."OUT_0"  + 0.076265 * t."OUT_1"  + 0.026276 * t."OUT_2"  + 0.027659 * t."OUT_3"  + -0.112912 * t."OUT_4"  + 0.016787 * t."OUT_5"  + 0.172621 * t."OUT_6"  + 0.013531 * t."OUT_7"  + 0.056464 * t."OUT_8"  + 0.176457 * t."OUT_9"  + 0.189740 * t."OUT_10"  + 0.145192 * t."OUT_11"  + -0.102687 * t."OUT_12"  + 0.117201 * t."OUT_13"  + 0.139189 * t."OUT_14"  + 0.112133 * t."OUT_15"  + -0.288473 * t."OUT_16"  + -0.130530 * t."OUT_17"  + 0.116681 * t."OUT_18"  + -0.121926 * t."OUT_19"  + -0.015046 * t."OUT_20"  + -0.058586 * t."OUT_21"  + 0.267478 * t."OUT_22"  + -0.149284 * t."OUT_23"  + -0.077810 * t."OUT_24"  + 0.158697 * t."OUT_25"  + 0.161497 * t."OUT_26"  + 0.215054 * t."OUT_27"  + 0.123791 * t."OUT_28"  + -0.152954 * t."OUT_29"  + 0.039284 * t."OUT_30"  + -0.103793 * t."OUT_31"  + 0.225153 * t."OUT_32"  + -0.205006 * t."OUT_33"  + -0.064132 * t."OUT_34"  + -0.010132 * t."OUT_35"  + 0.031485 * t."OUT_36"  + -0.110214 * t."OUT_37"  + -0.070127 * t."OUT_38"  + -0.170369 * t."OUT_39"  + 0.179099 * t."OUT_40"  + 0.189302 * t."OUT_41"  + -0.145167 * t."OUT_42"  + -0.020710 * t."OUT_43"  + 0.023707 * t."OUT_44"  + 0.204191 * t."OUT_45"  + -0.097657 * t."OUT_46"  + -0.021966 * t."OUT_47"  + 0.200325 * t."OUT_48"  + -0.158685 * t."OUT_49"  + 0.096409 * t."OUT_50"  + 0.118569 * t."OUT_51"  + 0.076018 * t."OUT_52"  + -0.216378 * t."OUT_53"  + -0.063743 * t."OUT_54"  + -0.074980 * t."OUT_55"  + 0.150326 * t."OUT_56"  + 0.152567 * t."OUT_57"  + 0.070282 * t."OUT_58"  + -0.193741 * t."OUT_59"  + 0.205555 * t."OUT_60"  + -0.079009 * t."OUT_61"  + -0.079025 * t."OUT_62"  + -0.024492 * t."OUT_63"  + 0.158612 * t."OUT_64"  + 0.150218 * t."OUT_65"  + -0.215612 * t."OUT_66"  + 0.184311 * t."OUT_67"  + 0.142903 * t."OUT_68"  + 0.132813 * t."OUT_69"  + 0.089546 * t."OUT_70"  + -0.233391 * t."OUT_71"  + 0.225893 * t."OUT_72"  + 0.106654 * t."OUT_73"  + 0.034222 * t."OUT_74"  + -0.101952 * t."OUT_75"  + -0.119499 * t."OUT_76"  + -0.150694 * t."OUT_77"  + -0.045694 * t."OUT_78"  + -0.017860 * t."OUT_79"  + -0.194653 * t."OUT_80"  + 0.183033 * t."OUT_81"  + 0.039220 * t."OUT_82"  + -0.051165 * t."OUT_83"  + -0.098975 * t."OUT_84"  + -0.113484 * t."OUT_85"  + -0.100584 * t."OUT_86"  + 0.005676 * t."OUT_87"  + 0.101957 * t."OUT_88"  + -0.019146 * t."OUT_89"  + -0.067241 * t."OUT_90"  + -0.111003 * t."OUT_91"  + -0.130684 * t."OUT_92"  + 0.120971 * t."OUT_93"  + -0.039712 * t."OUT_94"  + -0.170598 * t."OUT_95"  + 0.129985 * t."OUT_96"  + 0.043940 * t."OUT_97"  + 0.151079 * t."OUT_98"  + -0.074389 * t."OUT_99" AS "OUT_3"
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
    0.012038 + -0.343141 * t."OUT_0"  + 0.135486 * t."OUT_1"  + 0.777323 * t."OUT_2"  + -0.262708 * t."OUT_3" AS "OUT_0",
    -0.698682 + -0.037938 * t."OUT_0"  + -0.613663 * t."OUT_1"  + 0.424899 * t."OUT_2"  + -0.037324 * t."OUT_3" AS "OUT_1",
    0.501455 + 0.661130 * t."OUT_0"  + -0.355074 * t."OUT_1"  + -0.399377 * t."OUT_2"  + -0.679998 * t."OUT_3" AS "OUT_2",
    -0.709646 + 0.523891 * t."OUT_0"  + -0.677234 * t."OUT_1"  + -0.062253 * t."OUT_2"  + -0.184395 * t."OUT_3" AS "OUT_3",
    -0.070194 + 0.493627 * t."OUT_0"  + -0.162480 * t."OUT_1"  + 0.466979 * t."OUT_2"  + -0.184824 * t."OUT_3" AS "OUT_4",
    -0.081050 + -0.156269 * t."OUT_0"  + -0.204379 * t."OUT_1"  + -0.602057 * t."OUT_2"  + 0.260430 * t."OUT_3" AS "OUT_5",
    0.365997 + -0.256468 * t."OUT_0"  + 0.075584 * t."OUT_1"  + -0.355524 * t."OUT_2"  + -0.032650 * t."OUT_3" AS "OUT_6",
    -0.715675 + -0.270716 * t."OUT_0"  + -0.172387 * t."OUT_1"  + 0.084536 * t."OUT_2"  + 0.474475 * t."OUT_3" AS "OUT_7"
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
    0.576599 + -0.122321 * t."OUT_0"  + 0.623014 * t."OUT_1"  + 0.381608 * t."OUT_2"  + 0.055879 * t."OUT_3"  + -0.306725 * t."OUT_4"  + 0.455736 * t."OUT_5"  + -0.347468 * t."OUT_6"  + -0.046567 * t."OUT_7" AS "OUT_0",
    -0.617634 + 0.458683 * t."OUT_0"  + 0.512057 * t."OUT_1"  + 0.096048 * t."OUT_2"  + -0.194039 * t."OUT_3"  + -0.517570 * t."OUT_4"  + -0.007913 * t."OUT_5"  + 0.526500 * t."OUT_6"  + 0.428545 * t."OUT_7" AS "OUT_1",
    -0.385581 + 0.315163 * t."OUT_0"  + -0.292892 * t."OUT_1"  + 0.087906 * t."OUT_2"  + -0.413525 * t."OUT_3"  + -0.342955 * t."OUT_4"  + 0.195216 * t."OUT_5"  + 0.710438 * t."OUT_6"  + 0.250026 * t."OUT_7" AS "OUT_2",
    0.678850 + -0.403646 * t."OUT_0"  + 0.401468 * t."OUT_1"  + -0.049108 * t."OUT_2"  + 0.106997 * t."OUT_3"  + -0.299544 * t."OUT_4"  + 0.122418 * t."OUT_5"  + 0.344013 * t."OUT_6"  + -0.122359 * t."OUT_7" AS "OUT_3",
    -0.308239 + 0.609757 * t."OUT_0"  + 0.550588 * t."OUT_1"  + -0.123425 * t."OUT_2"  + 0.597540 * t."OUT_3"  + -0.063471 * t."OUT_4"  + 0.057084 * t."OUT_5"  + 0.119455 * t."OUT_6"  + -0.108061 * t."OUT_7" AS "OUT_4",
    0.654290 + 0.034037 * t."OUT_0"  + 0.491183 * t."OUT_1"  + 0.077555 * t."OUT_2"  + -0.169126 * t."OUT_3"  + -0.183390 * t."OUT_4"  + 0.097387 * t."OUT_5"  + 0.263400 * t."OUT_6"  + -0.633936 * t."OUT_7" AS "OUT_5"
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
    -0.653346 + -0.453674 * t."OUT_0"  + 0.805256 * t."OUT_1"  + 0.326001 * t."OUT_2"  + 0.866355 * t."OUT_3"  + -0.724292 * t."OUT_4"  + 0.612780 * t."OUT_5" AS "OUT_0"
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