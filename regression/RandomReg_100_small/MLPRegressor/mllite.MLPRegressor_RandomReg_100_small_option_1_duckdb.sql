WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "RandomReg_100_small" AS "ADS" 
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
    -0.096140 + -0.048890 * t."OUT_0"  + 0.020157 * t."OUT_1"  + 0.233051 * t."OUT_2"  + 0.263288 * t."OUT_3"  + 0.157289 * t."OUT_4"  + 0.093680 * t."OUT_5"  + -0.023484 * t."OUT_6"  + -0.045745 * t."OUT_7"  + -0.102238 * t."OUT_8"  + -0.156850 * t."OUT_9"  + -0.145773 * t."OUT_10"  + -0.178427 * t."OUT_11"  + 0.131897 * t."OUT_12"  + 0.175530 * t."OUT_13"  + 0.103981 * t."OUT_14"  + -0.236798 * t."OUT_15"  + -0.170990 * t."OUT_16"  + 0.244604 * t."OUT_17"  + 0.006610 * t."OUT_18"  + 0.091153 * t."OUT_19"  + 0.132839 * t."OUT_20"  + -0.240032 * t."OUT_21"  + -0.201104 * t."OUT_22"  + 0.037694 * t."OUT_23"  + 0.110559 * t."OUT_24"  + 0.091855 * t."OUT_25"  + 0.127795 * t."OUT_26"  + -0.069372 * t."OUT_27"  + 0.150830 * t."OUT_28"  + 0.014806 * t."OUT_29"  + 0.095559 * t."OUT_30"  + -0.183291 * t."OUT_31"  + 0.082744 * t."OUT_32"  + 0.225559 * t."OUT_33"  + -0.213263 * t."OUT_34"  + -0.126303 * t."OUT_35"  + -0.141089 * t."OUT_36"  + -0.012508 * t."OUT_37"  + -0.009221 * t."OUT_38"  + -0.237405 * t."OUT_39"  + 0.068938 * t."OUT_40"  + -0.143568 * t."OUT_41"  + -0.173536 * t."OUT_42"  + 0.143410 * t."OUT_43"  + 0.233713 * t."OUT_44"  + 0.162769 * t."OUT_45"  + 0.053700 * t."OUT_46"  + 0.228058 * t."OUT_47"  + 0.186830 * t."OUT_48"  + -0.190794 * t."OUT_49"  + -0.065904 * t."OUT_50"  + 0.196326 * t."OUT_51"  + -0.008864 * t."OUT_52"  + 0.079580 * t."OUT_53"  + -0.161686 * t."OUT_54"  + -0.070563 * t."OUT_55"  + -0.025407 * t."OUT_56"  + -0.183806 * t."OUT_57"  + 0.014955 * t."OUT_58"  + -0.114025 * t."OUT_59"  + -0.053842 * t."OUT_60"  + 0.049803 * t."OUT_61"  + 0.035919 * t."OUT_62"  + 0.156714 * t."OUT_63"  + 0.055864 * t."OUT_64"  + 0.102297 * t."OUT_65"  + 0.047127 * t."OUT_66"  + 0.119366 * t."OUT_67"  + 0.192798 * t."OUT_68"  + 0.117084 * t."OUT_69"  + 0.095005 * t."OUT_70"  + 0.171197 * t."OUT_71"  + 0.056156 * t."OUT_72"  + -0.101984 * t."OUT_73"  + -0.199100 * t."OUT_74"  + 0.096022 * t."OUT_75"  + -0.134591 * t."OUT_76"  + -0.087352 * t."OUT_77"  + 0.141503 * t."OUT_78"  + 0.028110 * t."OUT_79"  + -0.048844 * t."OUT_80"  + 0.137042 * t."OUT_81"  + -0.176221 * t."OUT_82"  + 0.095658 * t."OUT_83"  + 0.258581 * t."OUT_84"  + -0.013958 * t."OUT_85"  + -0.058852 * t."OUT_86"  + -0.040735 * t."OUT_87"  + -0.219032 * t."OUT_88"  + -0.082344 * t."OUT_89"  + -0.207334 * t."OUT_90"  + 0.215822 * t."OUT_91"  + 0.157154 * t."OUT_92"  + -0.253367 * t."OUT_93"  + -0.243223 * t."OUT_94"  + -0.051333 * t."OUT_95"  + -0.146425 * t."OUT_96"  + 0.004338 * t."OUT_97"  + -0.183274 * t."OUT_98"  + -0.165543 * t."OUT_99" AS "OUT_0",
    0.038545 + 0.110885 * t."OUT_0"  + -0.144481 * t."OUT_1"  + 0.051493 * t."OUT_2"  + -0.237155 * t."OUT_3"  + -0.145196 * t."OUT_4"  + -0.262805 * t."OUT_5"  + -0.185561 * t."OUT_6"  + 0.030587 * t."OUT_7"  + 0.119643 * t."OUT_8"  + 0.242679 * t."OUT_9"  + 0.158028 * t."OUT_10"  + -0.154280 * t."OUT_11"  + 0.233953 * t."OUT_12"  + 0.214018 * t."OUT_13"  + 0.043188 * t."OUT_14"  + 0.058444 * t."OUT_15"  + 0.195304 * t."OUT_16"  + 0.230819 * t."OUT_17"  + 0.200010 * t."OUT_18"  + 0.171762 * t."OUT_19"  + 0.157679 * t."OUT_20"  + 0.128465 * t."OUT_21"  + -0.200143 * t."OUT_22"  + -0.021510 * t."OUT_23"  + -0.062764 * t."OUT_24"  + -0.170140 * t."OUT_25"  + 0.225514 * t."OUT_26"  + 0.004261 * t."OUT_27"  + -0.007947 * t."OUT_28"  + -0.052529 * t."OUT_29"  + 0.166915 * t."OUT_30"  + 0.031969 * t."OUT_31"  + -0.199859 * t."OUT_32"  + -0.125130 * t."OUT_33"  + -0.197756 * t."OUT_34"  + -0.174227 * t."OUT_35"  + -0.158931 * t."OUT_36"  + 0.078644 * t."OUT_37"  + 0.206307 * t."OUT_38"  + -0.112342 * t."OUT_39"  + -0.103261 * t."OUT_40"  + 0.091361 * t."OUT_41"  + 0.112023 * t."OUT_42"  + 0.083687 * t."OUT_43"  + 0.173535 * t."OUT_44"  + 0.048787 * t."OUT_45"  + 0.126269 * t."OUT_46"  + 0.108723 * t."OUT_47"  + -0.090777 * t."OUT_48"  + -0.135269 * t."OUT_49"  + -0.027935 * t."OUT_50"  + 0.067390 * t."OUT_51"  + 0.138187 * t."OUT_52"  + -0.085785 * t."OUT_53"  + -0.109845 * t."OUT_54"  + -0.220654 * t."OUT_55"  + 0.115582 * t."OUT_56"  + 0.182630 * t."OUT_57"  + 0.269802 * t."OUT_58"  + 0.244503 * t."OUT_59"  + -0.044253 * t."OUT_60"  + -0.070201 * t."OUT_61"  + 0.068284 * t."OUT_62"  + -0.117150 * t."OUT_63"  + -0.146333 * t."OUT_64"  + 0.122557 * t."OUT_65"  + -0.184576 * t."OUT_66"  + 0.038200 * t."OUT_67"  + -0.123718 * t."OUT_68"  + 0.230515 * t."OUT_69"  + 0.218818 * t."OUT_70"  + 0.113942 * t."OUT_71"  + 0.209731 * t."OUT_72"  + 0.060644 * t."OUT_73"  + 0.165295 * t."OUT_74"  + -0.183673 * t."OUT_75"  + 0.117373 * t."OUT_76"  + 0.182487 * t."OUT_77"  + -0.232004 * t."OUT_78"  + -0.124593 * t."OUT_79"  + 0.244963 * t."OUT_80"  + -0.006263 * t."OUT_81"  + -0.134181 * t."OUT_82"  + 0.092603 * t."OUT_83"  + -0.201529 * t."OUT_84"  + -0.096622 * t."OUT_85"  + 0.117499 * t."OUT_86"  + -0.010423 * t."OUT_87"  + -0.130162 * t."OUT_88"  + -0.071355 * t."OUT_89"  + -0.052259 * t."OUT_90"  + -0.105713 * t."OUT_91"  + -0.142846 * t."OUT_92"  + 0.068683 * t."OUT_93"  + 0.016505 * t."OUT_94"  + -0.057839 * t."OUT_95"  + -0.066919 * t."OUT_96"  + 0.107206 * t."OUT_97"  + 0.117870 * t."OUT_98"  + -0.028510 * t."OUT_99" AS "OUT_1",
    0.097718 + -0.079321 * t."OUT_0"  + 0.052072 * t."OUT_1"  + 0.185730 * t."OUT_2"  + -0.088060 * t."OUT_3"  + -0.149053 * t."OUT_4"  + -0.069777 * t."OUT_5"  + -0.091814 * t."OUT_6"  + -0.222404 * t."OUT_7"  + -0.033552 * t."OUT_8"  + -0.149970 * t."OUT_9"  + 0.089764 * t."OUT_10"  + 0.111303 * t."OUT_11"  + 0.182523 * t."OUT_12"  + -0.139573 * t."OUT_13"  + 0.062343 * t."OUT_14"  + 0.111318 * t."OUT_15"  + -0.106883 * t."OUT_16"  + -0.032189 * t."OUT_17"  + -0.191819 * t."OUT_18"  + 0.223251 * t."OUT_19"  + 0.169151 * t."OUT_20"  + 0.026919 * t."OUT_21"  + -0.115194 * t."OUT_22"  + -0.068977 * t."OUT_23"  + -0.079320 * t."OUT_24"  + -0.050924 * t."OUT_25"  + 0.182485 * t."OUT_26"  + 0.060316 * t."OUT_27"  + 0.113334 * t."OUT_28"  + -0.040328 * t."OUT_29"  + -0.148917 * t."OUT_30"  + 0.023315 * t."OUT_31"  + -0.190704 * t."OUT_32"  + -0.065355 * t."OUT_33"  + -0.067133 * t."OUT_34"  + -0.228440 * t."OUT_35"  + 0.050179 * t."OUT_36"  + 0.056945 * t."OUT_37"  + 0.231431 * t."OUT_38"  + 0.081873 * t."OUT_39"  + 0.222158 * t."OUT_40"  + -0.148483 * t."OUT_41"  + 0.049900 * t."OUT_42"  + -0.006248 * t."OUT_43"  + -0.097168 * t."OUT_44"  + -0.002371 * t."OUT_45"  + -0.156809 * t."OUT_46"  + -0.098127 * t."OUT_47"  + 0.061401 * t."OUT_48"  + -0.109420 * t."OUT_49"  + -0.191724 * t."OUT_50"  + -0.007318 * t."OUT_51"  + 0.022138 * t."OUT_52"  + -0.040048 * t."OUT_53"  + 0.096206 * t."OUT_54"  + 0.231012 * t."OUT_55"  + 0.113428 * t."OUT_56"  + 0.197482 * t."OUT_57"  + 0.182869 * t."OUT_58"  + -0.221645 * t."OUT_59"  + 0.091791 * t."OUT_60"  + -0.151260 * t."OUT_61"  + -0.188309 * t."OUT_62"  + -0.015814 * t."OUT_63"  + 0.003592 * t."OUT_64"  + 0.171167 * t."OUT_65"  + 0.001606 * t."OUT_66"  + 0.223110 * t."OUT_67"  + 0.035629 * t."OUT_68"  + -0.133982 * t."OUT_69"  + 0.010122 * t."OUT_70"  + 0.131547 * t."OUT_71"  + 0.040569 * t."OUT_72"  + -0.193218 * t."OUT_73"  + 0.019304 * t."OUT_74"  + -0.187134 * t."OUT_75"  + -0.013705 * t."OUT_76"  + 0.134718 * t."OUT_77"  + 0.172639 * t."OUT_78"  + -0.147852 * t."OUT_79"  + -0.196588 * t."OUT_80"  + 0.150197 * t."OUT_81"  + -0.197699 * t."OUT_82"  + -0.096692 * t."OUT_83"  + -0.090490 * t."OUT_84"  + -0.068059 * t."OUT_85"  + 0.055713 * t."OUT_86"  + 0.229098 * t."OUT_87"  + -0.227862 * t."OUT_88"  + -0.199381 * t."OUT_89"  + 0.219356 * t."OUT_90"  + 0.106438 * t."OUT_91"  + -0.176766 * t."OUT_92"  + -0.227672 * t."OUT_93"  + 0.223718 * t."OUT_94"  + 0.205828 * t."OUT_95"  + 0.019964 * t."OUT_96"  + 0.145459 * t."OUT_97"  + -0.152624 * t."OUT_98"  + 0.190490 * t."OUT_99" AS "OUT_2",
    0.215979 + -0.050413 * t."OUT_0"  + -0.017962 * t."OUT_1"  + -0.012444 * t."OUT_2"  + 0.060702 * t."OUT_3"  + -0.189263 * t."OUT_4"  + 0.037625 * t."OUT_5"  + 0.190397 * t."OUT_6"  + -0.016054 * t."OUT_7"  + 0.121854 * t."OUT_8"  + 0.135730 * t."OUT_9"  + 0.190211 * t."OUT_10"  + 0.111673 * t."OUT_11"  + -0.127759 * t."OUT_12"  + 0.083253 * t."OUT_13"  + 0.107651 * t."OUT_14"  + 0.155901 * t."OUT_15"  + -0.248910 * t."OUT_16"  + -0.173126 * t."OUT_17"  + 0.090585 * t."OUT_18"  + -0.105001 * t."OUT_19"  + -0.020821 * t."OUT_20"  + -0.051425 * t."OUT_21"  + 0.241456 * t."OUT_22"  + -0.224736 * t."OUT_23"  + -0.014823 * t."OUT_24"  + 0.104298 * t."OUT_25"  + 0.150719 * t."OUT_26"  + 0.133555 * t."OUT_27"  + 0.135695 * t."OUT_28"  + -0.090294 * t."OUT_29"  + 0.104565 * t."OUT_30"  + -0.069081 * t."OUT_31"  + 0.195321 * t."OUT_32"  + -0.187004 * t."OUT_33"  + -0.036370 * t."OUT_34"  + 0.018999 * t."OUT_35"  + 0.058164 * t."OUT_36"  + -0.189254 * t."OUT_37"  + -0.066817 * t."OUT_38"  + -0.166857 * t."OUT_39"  + 0.239045 * t."OUT_40"  + 0.209683 * t."OUT_41"  + -0.158511 * t."OUT_42"  + -0.137111 * t."OUT_43"  + -0.003448 * t."OUT_44"  + 0.217823 * t."OUT_45"  + -0.008612 * t."OUT_46"  + -0.043235 * t."OUT_47"  + 0.167036 * t."OUT_48"  + -0.153417 * t."OUT_49"  + 0.119227 * t."OUT_50"  + 0.104258 * t."OUT_51"  + 0.170184 * t."OUT_52"  + -0.204044 * t."OUT_53"  + -0.062907 * t."OUT_54"  + -0.123084 * t."OUT_55"  + 0.078412 * t."OUT_56"  + 0.202724 * t."OUT_57"  + 0.094935 * t."OUT_58"  + -0.198139 * t."OUT_59"  + 0.222412 * t."OUT_60"  + -0.112245 * t."OUT_61"  + -0.055249 * t."OUT_62"  + -0.072682 * t."OUT_63"  + 0.174993 * t."OUT_64"  + 0.134115 * t."OUT_65"  + -0.136928 * t."OUT_66"  + 0.115169 * t."OUT_67"  + 0.116450 * t."OUT_68"  + 0.162925 * t."OUT_69"  + 0.118349 * t."OUT_70"  + -0.257298 * t."OUT_71"  + 0.213570 * t."OUT_72"  + 0.082815 * t."OUT_73"  + -0.018710 * t."OUT_74"  + -0.099559 * t."OUT_75"  + -0.103967 * t."OUT_76"  + -0.070211 * t."OUT_77"  + -0.031665 * t."OUT_78"  + 0.069272 * t."OUT_79"  + -0.144380 * t."OUT_80"  + 0.122329 * t."OUT_81"  + 0.086885 * t."OUT_82"  + 0.048529 * t."OUT_83"  + -0.082878 * t."OUT_84"  + -0.111447 * t."OUT_85"  + -0.099715 * t."OUT_86"  + -0.002418 * t."OUT_87"  + 0.136798 * t."OUT_88"  + 0.061857 * t."OUT_89"  + -0.167108 * t."OUT_90"  + -0.124661 * t."OUT_91"  + -0.115977 * t."OUT_92"  + 0.234100 * t."OUT_93"  + -0.005604 * t."OUT_94"  + -0.147158 * t."OUT_95"  + 0.147411 * t."OUT_96"  + 0.095572 * t."OUT_97"  + 0.103750 * t."OUT_98"  + -0.118276 * t."OUT_99" AS "OUT_3"
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
    -0.034045 + -0.357031 * t."OUT_0"  + 0.167081 * t."OUT_1"  + 0.726493 * t."OUT_2"  + -0.350682 * t."OUT_3" AS "OUT_0",
    -0.680868 + 0.001583 * t."OUT_0"  + -0.615445 * t."OUT_1"  + 0.442042 * t."OUT_2"  + -0.013590 * t."OUT_3" AS "OUT_1",
    0.566292 + 0.737802 * t."OUT_0"  + -0.285019 * t."OUT_1"  + -0.344834 * t."OUT_2"  + -0.676035 * t."OUT_3" AS "OUT_2",
    -0.615544 + 0.612739 * t."OUT_0"  + -0.628914 * t."OUT_1"  + 0.033686 * t."OUT_2"  + -0.142690 * t."OUT_3" AS "OUT_3",
    -0.053849 + 0.554585 * t."OUT_0"  + -0.188597 * t."OUT_1"  + 0.368208 * t."OUT_2"  + -0.206234 * t."OUT_3" AS "OUT_4",
    -0.056645 + -0.175860 * t."OUT_0"  + -0.241610 * t."OUT_1"  + -0.667393 * t."OUT_2"  + 0.272885 * t."OUT_3" AS "OUT_5",
    0.278678 + -0.307614 * t."OUT_0"  + -0.009093 * t."OUT_1"  + -0.354700 * t."OUT_2"  + -0.145981 * t."OUT_3" AS "OUT_6",
    -0.737064 + -0.281262 * t."OUT_0"  + -0.150714 * t."OUT_1"  + 0.013265 * t."OUT_2"  + 0.441545 * t."OUT_3" AS "OUT_7"
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
    0.611737 + -0.197785 * t."OUT_0"  + 0.600255 * t."OUT_1"  + 0.464600 * t."OUT_2"  + 0.109529 * t."OUT_3"  + -0.267739 * t."OUT_4"  + 0.488240 * t."OUT_5"  + -0.277502 * t."OUT_6"  + -0.102827 * t."OUT_7" AS "OUT_0",
    -0.519849 + 0.567257 * t."OUT_0"  + 0.542298 * t."OUT_1"  + 0.093171 * t."OUT_2"  + -0.194039 * t."OUT_3"  + -0.417539 * t."OUT_4"  + -0.007913 * t."OUT_5"  + 0.552646 * t."OUT_6"  + 0.419923 * t."OUT_7" AS "OUT_1",
    -0.300466 + 0.427882 * t."OUT_0"  + -0.276248 * t."OUT_1"  + 0.093660 * t."OUT_2"  + -0.413525 * t."OUT_3"  + -0.240519 * t."OUT_4"  + 0.178315 * t."OUT_5"  + 0.666333 * t."OUT_6"  + 0.234538 * t."OUT_7" AS "OUT_2",
    0.631220 + -0.338763 * t."OUT_0"  + 0.443908 * t."OUT_1"  + -0.124356 * t."OUT_2"  + 0.060991 * t."OUT_3"  + -0.349731 * t."OUT_4"  + 0.086388 * t."OUT_5"  + 0.270398 * t."OUT_6"  + -0.067416 * t."OUT_7" AS "OUT_3",
    -0.397815 + 0.453098 * t."OUT_0"  + 0.553764 * t."OUT_1"  + -0.086977 * t."OUT_2"  + 0.632200 * t."OUT_3"  + -0.097382 * t."OUT_4"  + 0.057084 * t."OUT_5"  + 0.112850 * t."OUT_6"  + -0.149565 * t."OUT_7" AS "OUT_4",
    0.619794 + 0.176490 * t."OUT_0"  + 0.513991 * t."OUT_1"  + -0.006951 * t."OUT_2"  + -0.221634 * t."OUT_3"  + -0.215225 * t."OUT_4"  + 0.060747 * t."OUT_5"  + 0.189546 * t."OUT_6"  + -0.557871 * t."OUT_7" AS "OUT_5"
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
    -0.686831 + -0.498856 * t."OUT_0"  + 0.880066 * t."OUT_1"  + 0.377459 * t."OUT_2"  + 0.804455 * t."OUT_3"  + -0.570761 * t."OUT_4"  + 0.571001 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
