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
    -0.137016 + 0.010415 * t."OUT_0"  + 0.013493 * t."OUT_1"  + 0.176375 * t."OUT_2"  + 0.266013 * t."OUT_3"  + 0.092734 * t."OUT_4"  + 0.132853 * t."OUT_5"  + -0.073456 * t."OUT_6"  + 0.014772 * t."OUT_7"  + -0.056060 * t."OUT_8"  + -0.188638 * t."OUT_9"  + -0.167782 * t."OUT_10"  + -0.179945 * t."OUT_11"  + 0.141966 * t."OUT_12"  + 0.173567 * t."OUT_13"  + 0.047232 * t."OUT_14"  + -0.230522 * t."OUT_15"  + -0.182291 * t."OUT_16"  + 0.235313 * t."OUT_17"  + 0.008849 * t."OUT_18"  + 0.110199 * t."OUT_19"  + 0.128865 * t."OUT_20"  + -0.208535 * t."OUT_21"  + -0.144395 * t."OUT_22"  + 0.039850 * t."OUT_23"  + 0.052900 * t."OUT_24"  + 0.129498 * t."OUT_25"  + 0.150420 * t."OUT_26"  + -0.070685 * t."OUT_27"  + 0.123491 * t."OUT_28"  + 0.072070 * t."OUT_29"  + 0.102071 * t."OUT_30"  + -0.177887 * t."OUT_31"  + 0.119094 * t."OUT_32"  + 0.197420 * t."OUT_33"  + -0.159058 * t."OUT_34"  + -0.184613 * t."OUT_35"  + -0.185131 * t."OUT_36"  + -0.005347 * t."OUT_37"  + -0.026577 * t."OUT_38"  + -0.174774 * t."OUT_39"  + 0.048235 * t."OUT_40"  + -0.076744 * t."OUT_41"  + -0.174794 * t."OUT_42"  + 0.141811 * t."OUT_43"  + 0.187482 * t."OUT_44"  + 0.100421 * t."OUT_45"  + 0.080427 * t."OUT_46"  + 0.186346 * t."OUT_47"  + 0.139681 * t."OUT_48"  + -0.249576 * t."OUT_49"  + -0.111755 * t."OUT_50"  + 0.238390 * t."OUT_51"  + 0.055782 * t."OUT_52"  + 0.074644 * t."OUT_53"  + -0.098873 * t."OUT_54"  + -0.072830 * t."OUT_55"  + -0.026329 * t."OUT_56"  + -0.183459 * t."OUT_57"  + 0.033076 * t."OUT_58"  + -0.078231 * t."OUT_59"  + 0.006822 * t."OUT_60"  + 0.015196 * t."OUT_61"  + 0.095945 * t."OUT_62"  + 0.126407 * t."OUT_63"  + 0.059680 * t."OUT_64"  + 0.092817 * t."OUT_65"  + 0.051450 * t."OUT_66"  + 0.112342 * t."OUT_67"  + 0.244283 * t."OUT_68"  + 0.071138 * t."OUT_69"  + 0.100791 * t."OUT_70"  + 0.172049 * t."OUT_71"  + 0.115507 * t."OUT_72"  + -0.048144 * t."OUT_73"  + -0.252584 * t."OUT_74"  + 0.131967 * t."OUT_75"  + -0.136705 * t."OUT_76"  + -0.078440 * t."OUT_77"  + 0.160170 * t."OUT_78"  + 0.054112 * t."OUT_79"  + -0.108094 * t."OUT_80"  + 0.136504 * t."OUT_81"  + -0.169725 * t."OUT_82"  + 0.098576 * t."OUT_83"  + 0.198303 * t."OUT_84"  + -0.024006 * t."OUT_85"  + -0.077812 * t."OUT_86"  + -0.094697 * t."OUT_87"  + -0.160500 * t."OUT_88"  + -0.087414 * t."OUT_89"  + -0.153528 * t."OUT_90"  + 0.266994 * t."OUT_91"  + 0.100031 * t."OUT_92"  + -0.257904 * t."OUT_93"  + -0.252198 * t."OUT_94"  + -0.075722 * t."OUT_95"  + -0.120976 * t."OUT_96"  + -0.002722 * t."OUT_97"  + -0.125467 * t."OUT_98"  + -0.207745 * t."OUT_99" AS "OUT_0",
    0.057013 + 0.153779 * t."OUT_0"  + -0.141482 * t."OUT_1"  + 0.067529 * t."OUT_2"  + -0.188971 * t."OUT_3"  + -0.089175 * t."OUT_4"  + -0.266055 * t."OUT_5"  + -0.238761 * t."OUT_6"  + -0.026033 * t."OUT_7"  + 0.087715 * t."OUT_8"  + 0.195577 * t."OUT_9"  + 0.151538 * t."OUT_10"  + -0.207760 * t."OUT_11"  + 0.233990 * t."OUT_12"  + 0.179911 * t."OUT_13"  + -0.008909 * t."OUT_14"  + 0.048477 * t."OUT_15"  + 0.171522 * t."OUT_16"  + 0.216850 * t."OUT_17"  + 0.249204 * t."OUT_18"  + 0.168952 * t."OUT_19"  + 0.144175 * t."OUT_20"  + 0.101909 * t."OUT_21"  + -0.204309 * t."OUT_22"  + -0.075341 * t."OUT_23"  + -0.047136 * t."OUT_24"  + -0.147319 * t."OUT_25"  + 0.205121 * t."OUT_26"  + -0.005302 * t."OUT_27"  + -0.030930 * t."OUT_28"  + -0.100122 * t."OUT_29"  + 0.130295 * t."OUT_30"  + -0.026260 * t."OUT_31"  + -0.230304 * t."OUT_32"  + -0.135565 * t."OUT_33"  + -0.184806 * t."OUT_34"  + -0.191777 * t."OUT_35"  + -0.185216 * t."OUT_36"  + 0.075682 * t."OUT_37"  + 0.174079 * t."OUT_38"  + -0.090413 * t."OUT_39"  + -0.108830 * t."OUT_40"  + 0.151482 * t."OUT_41"  + 0.147672 * t."OUT_42"  + 0.134527 * t."OUT_43"  + 0.226458 * t."OUT_44"  + 0.001292 * t."OUT_45"  + 0.074293 * t."OUT_46"  + 0.107343 * t."OUT_47"  + -0.103552 * t."OUT_48"  + -0.102492 * t."OUT_49"  + 0.019612 * t."OUT_50"  + 0.013340 * t."OUT_51"  + 0.093677 * t."OUT_52"  + -0.124757 * t."OUT_53"  + -0.172464 * t."OUT_54"  + -0.229664 * t."OUT_55"  + 0.090595 * t."OUT_56"  + 0.165292 * t."OUT_57"  + 0.218759 * t."OUT_58"  + 0.194919 * t."OUT_59"  + -0.021084 * t."OUT_60"  + -0.010720 * t."OUT_61"  + 0.070865 * t."OUT_62"  + -0.083479 * t."OUT_63"  + -0.095716 * t."OUT_64"  + 0.125017 * t."OUT_65"  + -0.145360 * t."OUT_66"  + 0.026112 * t."OUT_67"  + -0.098591 * t."OUT_68"  + 0.195441 * t."OUT_69"  + 0.269165 * t."OUT_70"  + 0.136492 * t."OUT_71"  + 0.230087 * t."OUT_72"  + 0.054247 * t."OUT_73"  + 0.164234 * t."OUT_74"  + -0.182981 * t."OUT_75"  + 0.115031 * t."OUT_76"  + 0.175595 * t."OUT_77"  + -0.175239 * t."OUT_78"  + -0.158550 * t."OUT_79"  + 0.198437 * t."OUT_80"  + 0.025366 * t."OUT_81"  + -0.152759 * t."OUT_82"  + 0.119322 * t."OUT_83"  + -0.148249 * t."OUT_84"  + -0.047653 * t."OUT_85"  + 0.147072 * t."OUT_86"  + 0.040402 * t."OUT_87"  + -0.141535 * t."OUT_88"  + -0.057956 * t."OUT_89"  + -0.051114 * t."OUT_90"  + -0.161350 * t."OUT_91"  + -0.135824 * t."OUT_92"  + 0.086346 * t."OUT_93"  + -0.017281 * t."OUT_94"  + -0.115340 * t."OUT_95"  + -0.078253 * t."OUT_96"  + 0.062829 * t."OUT_97"  + 0.083829 * t."OUT_98"  + -0.055530 * t."OUT_99" AS "OUT_1",
    0.109481 + -0.112536 * t."OUT_0"  + 0.058448 * t."OUT_1"  + 0.210116 * t."OUT_2"  + -0.094692 * t."OUT_3"  + -0.134448 * t."OUT_4"  + -0.056298 * t."OUT_5"  + -0.125866 * t."OUT_6"  + -0.205498 * t."OUT_7"  + -0.024157 * t."OUT_8"  + -0.153071 * t."OUT_9"  + 0.062588 * t."OUT_10"  + 0.065476 * t."OUT_11"  + 0.188751 * t."OUT_12"  + -0.156142 * t."OUT_13"  + 0.056250 * t."OUT_14"  + 0.097277 * t."OUT_15"  + -0.136304 * t."OUT_16"  + -0.006454 * t."OUT_17"  + -0.159373 * t."OUT_18"  + 0.199714 * t."OUT_19"  + 0.152420 * t."OUT_20"  + -0.005690 * t."OUT_21"  + -0.108722 * t."OUT_22"  + -0.081133 * t."OUT_23"  + -0.090428 * t."OUT_24"  + -0.089068 * t."OUT_25"  + 0.150079 * t."OUT_26"  + 0.072760 * t."OUT_27"  + 0.140193 * t."OUT_28"  + -0.092719 * t."OUT_29"  + -0.181664 * t."OUT_30"  + 0.056061 * t."OUT_31"  + -0.217735 * t."OUT_32"  + -0.061974 * t."OUT_33"  + -0.074035 * t."OUT_34"  + -0.233061 * t."OUT_35"  + 0.072245 * t."OUT_36"  + 0.009786 * t."OUT_37"  + 0.260005 * t."OUT_38"  + 0.081935 * t."OUT_39"  + 0.248693 * t."OUT_40"  + -0.098579 * t."OUT_41"  + 0.051994 * t."OUT_42"  + -0.016243 * t."OUT_43"  + -0.098238 * t."OUT_44"  + -0.023097 * t."OUT_45"  + -0.145515 * t."OUT_46"  + -0.043392 * t."OUT_47"  + 0.049143 * t."OUT_48"  + -0.111177 * t."OUT_49"  + -0.169344 * t."OUT_50"  + -0.016409 * t."OUT_51"  + -0.005197 * t."OUT_52"  + -0.095100 * t."OUT_53"  + 0.057376 * t."OUT_54"  + 0.232422 * t."OUT_55"  + 0.106018 * t."OUT_56"  + 0.191770 * t."OUT_57"  + 0.126475 * t."OUT_58"  + -0.220257 * t."OUT_59"  + 0.080755 * t."OUT_60"  + -0.159643 * t."OUT_61"  + -0.195841 * t."OUT_62"  + -0.026842 * t."OUT_63"  + 0.021894 * t."OUT_64"  + 0.160900 * t."OUT_65"  + -0.022101 * t."OUT_66"  + 0.211365 * t."OUT_67"  + 0.072687 * t."OUT_68"  + -0.103616 * t."OUT_69"  + 0.014636 * t."OUT_70"  + 0.156783 * t."OUT_71"  + 0.037126 * t."OUT_72"  + -0.167490 * t."OUT_73"  + -0.016309 * t."OUT_74"  + -0.196154 * t."OUT_75"  + -0.015731 * t."OUT_76"  + 0.127126 * t."OUT_77"  + 0.197399 * t."OUT_78"  + -0.156881 * t."OUT_79"  + -0.222381 * t."OUT_80"  + 0.190968 * t."OUT_81"  + -0.225940 * t."OUT_82"  + -0.088672 * t."OUT_83"  + -0.052657 * t."OUT_84"  + -0.055311 * t."OUT_85"  + 0.047054 * t."OUT_86"  + 0.219746 * t."OUT_87"  + -0.176101 * t."OUT_88"  + -0.164181 * t."OUT_89"  + 0.213149 * t."OUT_90"  + 0.076080 * t."OUT_91"  + -0.150278 * t."OUT_92"  + -0.240150 * t."OUT_93"  + 0.219783 * t."OUT_94"  + 0.166026 * t."OUT_95"  + 0.002379 * t."OUT_96"  + 0.178378 * t."OUT_97"  + -0.139241 * t."OUT_98"  + 0.207586 * t."OUT_99" AS "OUT_2",
    0.197422 + -0.047269 * t."OUT_0"  + -0.023744 * t."OUT_1"  + -0.064854 * t."OUT_2"  + 0.062086 * t."OUT_3"  + -0.217728 * t."OUT_4"  + -0.016735 * t."OUT_5"  + 0.221515 * t."OUT_6"  + 0.042347 * t."OUT_7"  + 0.077215 * t."OUT_8"  + 0.156356 * t."OUT_9"  + 0.196919 * t."OUT_10"  + 0.111672 * t."OUT_11"  + -0.177987 * t."OUT_12"  + 0.078758 * t."OUT_13"  + 0.148301 * t."OUT_14"  + 0.122466 * t."OUT_15"  + -0.246781 * t."OUT_16"  + -0.201405 * t."OUT_17"  + 0.064387 * t."OUT_18"  + -0.132853 * t."OUT_19"  + 0.000810 * t."OUT_20"  + -0.023352 * t."OUT_21"  + 0.219951 * t."OUT_22"  + -0.193205 * t."OUT_23"  + -0.071545 * t."OUT_24"  + 0.145666 * t."OUT_25"  + 0.159418 * t."OUT_26"  + 0.187493 * t."OUT_27"  + 0.166614 * t."OUT_28"  + -0.152236 * t."OUT_29"  + 0.052870 * t."OUT_30"  + -0.073275 * t."OUT_31"  + 0.183077 * t."OUT_32"  + -0.157505 * t."OUT_33"  + -0.077901 * t."OUT_34"  + 0.017998 * t."OUT_35"  + 0.103519 * t."OUT_36"  + -0.174381 * t."OUT_37"  + -0.053071 * t."OUT_38"  + -0.229515 * t."OUT_39"  + 0.235076 * t."OUT_40"  + 0.148006 * t."OUT_41"  + -0.124499 * t."OUT_42"  + -0.104837 * t."OUT_43"  + 0.004371 * t."OUT_44"  + 0.248301 * t."OUT_45"  + -0.042980 * t."OUT_46"  + -0.088600 * t."OUT_47"  + 0.165910 * t."OUT_48"  + -0.100768 * t."OUT_49"  + 0.132173 * t."OUT_50"  + 0.119022 * t."OUT_51"  + 0.126261 * t."OUT_52"  + -0.221219 * t."OUT_53"  + -0.010412 * t."OUT_54"  + -0.065039 * t."OUT_55"  + 0.126441 * t."OUT_56"  + 0.161247 * t."OUT_57"  + 0.093279 * t."OUT_58"  + -0.250364 * t."OUT_59"  + 0.224174 * t."OUT_60"  + -0.171533 * t."OUT_61"  + -0.024450 * t."OUT_62"  + -0.017782 * t."OUT_63"  + 0.145502 * t."OUT_64"  + 0.140793 * t."OUT_65"  + -0.140900 * t."OUT_66"  + 0.092249 * t."OUT_67"  + 0.120488 * t."OUT_68"  + 0.190096 * t."OUT_69"  + 0.101904 * t."OUT_70"  + -0.261128 * t."OUT_71"  + 0.161102 * t."OUT_72"  + 0.075904 * t."OUT_73"  + -0.018678 * t."OUT_74"  + -0.099607 * t."OUT_75"  + -0.094946 * t."OUT_76"  + -0.120251 * t."OUT_77"  + -0.082157 * t."OUT_78"  + 0.037459 * t."OUT_79"  + -0.142719 * t."OUT_80"  + 0.175499 * t."OUT_81"  + 0.030532 * t."OUT_82"  + 0.000130 * t."OUT_83"  + -0.048411 * t."OUT_84"  + -0.095318 * t."OUT_85"  + -0.109487 * t."OUT_86"  + 0.024699 * t."OUT_87"  + 0.118152 * t."OUT_88"  + 0.000365 * t."OUT_89"  + -0.165785 * t."OUT_90"  + -0.122800 * t."OUT_91"  + -0.096203 * t."OUT_92"  + 0.179261 * t."OUT_93"  + 0.011864 * t."OUT_94"  + -0.091890 * t."OUT_95"  + 0.142450 * t."OUT_96"  + 0.104376 * t."OUT_97"  + 0.103165 * t."OUT_98"  + -0.161030 * t."OUT_99" AS "OUT_3"
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
    -0.072199 + -0.328424 * t."OUT_0"  + 0.126732 * t."OUT_1"  + 0.719492 * t."OUT_2"  + -0.315829 * t."OUT_3" AS "OUT_0",
    -0.689042 + -0.010732 * t."OUT_0"  + -0.628781 * t."OUT_1"  + 0.433066 * t."OUT_2"  + -0.022527 * t."OUT_3" AS "OUT_1",
    0.528832 + 0.719847 * t."OUT_0"  + -0.272039 * t."OUT_1"  + -0.363374 * t."OUT_2"  + -0.635108 * t."OUT_3" AS "OUT_2",
    -0.640265 + 0.592066 * t."OUT_0"  + -0.638019 * t."OUT_1"  + 0.001239 * t."OUT_2"  + -0.118322 * t."OUT_3" AS "OUT_3",
    -0.025182 + 0.558131 * t."OUT_0"  + -0.130392 * t."OUT_1"  + 0.433478 * t."OUT_2"  + -0.173640 * t."OUT_3" AS "OUT_4",
    -0.054924 + -0.126734 * t."OUT_0"  + -0.252410 * t."OUT_1"  + -0.635901 * t."OUT_2"  + 0.279799 * t."OUT_3" AS "OUT_5",
    0.294709 + -0.310187 * t."OUT_0"  + -0.005548 * t."OUT_1"  + -0.350644 * t."OUT_2"  + -0.102977 * t."OUT_3" AS "OUT_6",
    -0.679045 + -0.274628 * t."OUT_0"  + -0.109006 * t."OUT_1"  + 0.078759 * t."OUT_2"  + 0.500366 * t."OUT_3" AS "OUT_7"
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
    0.611370 + -0.196286 * t."OUT_0"  + 0.593632 * t."OUT_1"  + 0.412126 * t."OUT_2"  + 0.091632 * t."OUT_3"  + -0.275371 * t."OUT_4"  + 0.503106 * t."OUT_5"  + -0.276679 * t."OUT_6"  + -0.039850 * t."OUT_7" AS "OUT_0",
    -0.546197 + 0.503869 * t."OUT_0"  + 0.534146 * t."OUT_1"  + 0.096048 * t."OUT_2"  + -0.164715 * t."OUT_3"  + -0.413105 * t."OUT_4"  + -0.007913 * t."OUT_5"  + 0.521585 * t."OUT_6"  + 0.389170 * t."OUT_7" AS "OUT_1",
    -0.333119 + 0.363732 * t."OUT_0"  + -0.242096 * t."OUT_1"  + 0.090075 * t."OUT_2"  + -0.382792 * t."OUT_3"  + -0.241123 * t."OUT_4"  + 0.146345 * t."OUT_5"  + 0.620027 * t."OUT_6"  + 0.172933 * t."OUT_7" AS "OUT_2",
    0.629999 + -0.343753 * t."OUT_0"  + 0.444435 * t."OUT_1"  + -0.081244 * t."OUT_2"  + 0.076480 * t."OUT_3"  + -0.342029 * t."OUT_4"  + 0.071259 * t."OUT_5"  + 0.269634 * t."OUT_6"  + -0.130708 * t."OUT_7" AS "OUT_3",
    -0.427186 + 0.455463 * t."OUT_0"  + 0.493703 * t."OUT_1"  + -0.082095 * t."OUT_2"  + 0.601015 * t."OUT_3"  + -0.127475 * t."OUT_4"  + 0.057084 * t."OUT_5"  + 0.112850 * t."OUT_6"  + -0.149565 * t."OUT_7" AS "OUT_4",
    0.618492 + 0.110793 * t."OUT_0"  + 0.520562 * t."OUT_1"  + 0.045296 * t."OUT_2"  + -0.204158 * t."OUT_3"  + -0.207327 * t."OUT_4"  + 0.043865 * t."OUT_5"  + 0.188789 * t."OUT_6"  + -0.621759 * t."OUT_7" AS "OUT_5"
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
    -0.687561 + -0.490577 * t."OUT_0"  + 0.813462 * t."OUT_1"  + 0.312507 * t."OUT_2"  + 0.803760 * t."OUT_3"  + -0.574701 * t."OUT_4"  + 0.569225 * t."OUT_5" AS "OUT_0"
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
   MAX( t."Score_0", t."Score_1" ) AS "Greatest_Score"
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
    MAX( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1" ) AS "Max_Score"
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