WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "RandomReg_100_original" AS "ADS" 
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
    0.113925 + 0.014979 * t."OUT_0"  + 0.144857 * t."OUT_1"  + 0.073054 * t."OUT_2"  + 0.374429 * t."OUT_3"  + 0.153688 * t."OUT_4"  + 0.078827 * t."OUT_5"  + -0.247858 * t."OUT_6"  + -0.052520 * t."OUT_7"  + 0.090721 * t."OUT_8"  + -0.340997 * t."OUT_9"  + -0.175847 * t."OUT_10"  + -0.207110 * t."OUT_11"  + 0.227002 * t."OUT_12"  + 0.160457 * t."OUT_13"  + 0.199434 * t."OUT_14"  + -0.267515 * t."OUT_15"  + -0.162692 * t."OUT_16"  + 0.253314 * t."OUT_17"  + -0.096277 * t."OUT_18"  + 0.134259 * t."OUT_19"  + 0.089713 * t."OUT_20"  + -0.204293 * t."OUT_21"  + -0.426411 * t."OUT_22"  + -0.054325 * t."OUT_23"  + 0.065126 * t."OUT_24"  + -0.090239 * t."OUT_25"  + -0.002511 * t."OUT_26"  + -0.127217 * t."OUT_27"  + 0.077258 * t."OUT_28"  + 0.237438 * t."OUT_29"  + -0.120859 * t."OUT_30"  + -0.000191 * t."OUT_31"  + -0.122500 * t."OUT_32"  + 0.067967 * t."OUT_33"  + -0.272621 * t."OUT_34"  + -0.036692 * t."OUT_35"  + -0.389681 * t."OUT_36"  + -0.043427 * t."OUT_37"  + 0.027232 * t."OUT_38"  + -0.320744 * t."OUT_39"  + 0.147308 * t."OUT_40"  + 0.037736 * t."OUT_41"  + -0.287993 * t."OUT_42"  + -0.041420 * t."OUT_43"  + 0.185211 * t."OUT_44"  + 0.159855 * t."OUT_45"  + -0.167079 * t."OUT_46"  + 0.081051 * t."OUT_47"  + 0.287545 * t."OUT_48"  + -0.382825 * t."OUT_49"  + 0.060021 * t."OUT_50"  + 0.256364 * t."OUT_51"  + 0.202302 * t."OUT_52"  + 0.034950 * t."OUT_53"  + -0.213298 * t."OUT_54"  + 0.016392 * t."OUT_55"  + 0.004075 * t."OUT_56"  + -0.186599 * t."OUT_57"  + -0.029453 * t."OUT_58"  + -0.315782 * t."OUT_59"  + 0.179014 * t."OUT_60"  + 0.101557 * t."OUT_61"  + 0.232073 * t."OUT_62"  + 0.227852 * t."OUT_63"  + 0.155496 * t."OUT_64"  + -0.060306 * t."OUT_65"  + 0.196580 * t."OUT_66"  + 0.149726 * t."OUT_67"  + 0.226560 * t."OUT_68"  + 0.113733 * t."OUT_69"  + 0.105321 * t."OUT_70"  + 0.202264 * t."OUT_71"  + 0.052398 * t."OUT_72"  + -0.139574 * t."OUT_73"  + -0.305259 * t."OUT_74"  + 0.142129 * t."OUT_75"  + -0.191739 * t."OUT_76"  + -0.308348 * t."OUT_77"  + 0.160450 * t."OUT_78"  + 0.071964 * t."OUT_79"  + 0.004365 * t."OUT_80"  + 0.230705 * t."OUT_81"  + -0.135899 * t."OUT_82"  + 0.012478 * t."OUT_83"  + 0.347738 * t."OUT_84"  + -0.037254 * t."OUT_85"  + -0.145511 * t."OUT_86"  + -0.094283 * t."OUT_87"  + -0.154654 * t."OUT_88"  + -0.037660 * t."OUT_89"  + -0.434226 * t."OUT_90"  + 0.439563 * t."OUT_91"  + 0.239690 * t."OUT_92"  + -0.128072 * t."OUT_93"  + -0.228000 * t."OUT_94"  + -0.255026 * t."OUT_95"  + -0.179480 * t."OUT_96"  + -0.103031 * t."OUT_97"  + -0.269371 * t."OUT_98"  + -0.181138 * t."OUT_99" AS "OUT_0",
    0.242922 + -0.003568 * t."OUT_0"  + -0.281942 * t."OUT_1"  + 0.105146 * t."OUT_2"  + -0.353546 * t."OUT_3"  + -0.151937 * t."OUT_4"  + -0.296565 * t."OUT_5"  + -0.066579 * t."OUT_6"  + 0.093753 * t."OUT_7"  + -0.107594 * t."OUT_8"  + 0.323585 * t."OUT_9"  + 0.083900 * t."OUT_10"  + -0.118200 * t."OUT_11"  + 0.328994 * t."OUT_12"  + 0.274127 * t."OUT_13"  + -0.017753 * t."OUT_14"  + 0.099320 * t."OUT_15"  + 0.173496 * t."OUT_16"  + 0.173160 * t."OUT_17"  + 0.320153 * t."OUT_18"  + 0.240336 * t."OUT_19"  + 0.249827 * t."OUT_20"  + 0.075627 * t."OUT_21"  + -0.018310 * t."OUT_22"  + -0.133100 * t."OUT_23"  + -0.227934 * t."OUT_24"  + -0.153523 * t."OUT_25"  + 0.225994 * t."OUT_26"  + 0.010643 * t."OUT_27"  + -0.041431 * t."OUT_28"  + -0.042766 * t."OUT_29"  + 0.408282 * t."OUT_30"  + 0.075232 * t."OUT_31"  + 0.024121 * t."OUT_32"  + -0.010209 * t."OUT_33"  + -0.159837 * t."OUT_34"  + -0.131953 * t."OUT_35"  + 0.053751 * t."OUT_36"  + -0.005523 * t."OUT_37"  + 0.144449 * t."OUT_38"  + 0.079264 * t."OUT_39"  + -0.233427 * t."OUT_40"  + 0.087985 * t."OUT_41"  + 0.104341 * t."OUT_42"  + 0.058781 * t."OUT_43"  + 0.271484 * t."OUT_44"  + 0.064324 * t."OUT_45"  + 0.365524 * t."OUT_46"  + 0.056112 * t."OUT_47"  + -0.081988 * t."OUT_48"  + -0.114030 * t."OUT_49"  + -0.059938 * t."OUT_50"  + -0.053526 * t."OUT_51"  + 0.103330 * t."OUT_52"  + 0.033977 * t."OUT_53"  + -0.122853 * t."OUT_54"  + -0.234173 * t."OUT_55"  + 0.060127 * t."OUT_56"  + 0.204215 * t."OUT_57"  + 0.347271 * t."OUT_58"  + 0.470026 * t."OUT_59"  + -0.122416 * t."OUT_60"  + 0.070373 * t."OUT_61"  + 0.081963 * t."OUT_62"  + -0.263208 * t."OUT_63"  + -0.145426 * t."OUT_64"  + 0.129981 * t."OUT_65"  + -0.170513 * t."OUT_66"  + -0.079741 * t."OUT_67"  + -0.161988 * t."OUT_68"  + 0.130379 * t."OUT_69"  + 0.097910 * t."OUT_70"  + 0.064127 * t."OUT_71"  + 0.188182 * t."OUT_72"  + 0.103280 * t."OUT_73"  + 0.024916 * t."OUT_74"  + -0.101333 * t."OUT_75"  + 0.121648 * t."OUT_76"  + 0.422470 * t."OUT_77"  + -0.122299 * t."OUT_78"  + -0.225863 * t."OUT_79"  + 0.127244 * t."OUT_80"  + 0.035354 * t."OUT_81"  + -0.212456 * t."OUT_82"  + 0.191195 * t."OUT_83"  + -0.184088 * t."OUT_84"  + -0.010767 * t."OUT_85"  + 0.048902 * t."OUT_86"  + -0.031019 * t."OUT_87"  + -0.281949 * t."OUT_88"  + -0.186325 * t."OUT_89"  + 0.118713 * t."OUT_90"  + -0.080097 * t."OUT_91"  + -0.143216 * t."OUT_92"  + 0.026449 * t."OUT_93"  + 0.181215 * t."OUT_94"  + 0.111691 * t."OUT_95"  + -0.125189 * t."OUT_96"  + 0.032864 * t."OUT_97"  + 0.126317 * t."OUT_98"  + -0.011435 * t."OUT_99" AS "OUT_1",
    0.294584 + -0.003792 * t."OUT_0"  + 0.104891 * t."OUT_1"  + 0.148464 * t."OUT_2"  + 0.008385 * t."OUT_3"  + -0.063533 * t."OUT_4"  + 0.014158 * t."OUT_5"  + -0.154606 * t."OUT_6"  + -0.265158 * t."OUT_7"  + 0.008134 * t."OUT_8"  + -0.305937 * t."OUT_9"  + 0.091345 * t."OUT_10"  + 0.043989 * t."OUT_11"  + 0.062307 * t."OUT_12"  + -0.123567 * t."OUT_13"  + 0.061099 * t."OUT_14"  + 0.061634 * t."OUT_15"  + -0.115832 * t."OUT_16"  + -0.003576 * t."OUT_17"  + -0.200843 * t."OUT_18"  + 0.097091 * t."OUT_19"  + 0.121351 * t."OUT_20"  + 0.011529 * t."OUT_21"  + -0.287133 * t."OUT_22"  + -0.095467 * t."OUT_23"  + -0.158412 * t."OUT_24"  + -0.199604 * t."OUT_25"  + 0.078262 * t."OUT_26"  + 0.096860 * t."OUT_27"  + 0.069404 * t."OUT_28"  + 0.040319 * t."OUT_29"  + -0.426300 * t."OUT_30"  + 0.097685 * t."OUT_31"  + -0.447553 * t."OUT_32"  + -0.199055 * t."OUT_33"  + -0.031203 * t."OUT_34"  + -0.128406 * t."OUT_35"  + -0.209314 * t."OUT_36"  + 0.055036 * t."OUT_37"  + 0.281323 * t."OUT_38"  + 0.012035 * t."OUT_39"  + 0.201110 * t."OUT_40"  + -0.107314 * t."OUT_41"  + 0.183505 * t."OUT_42"  + -0.015861 * t."OUT_43"  + -0.031159 * t."OUT_44"  + 0.010847 * t."OUT_45"  + -0.430935 * t."OUT_46"  + -0.122104 * t."OUT_47"  + -0.055297 * t."OUT_48"  + -0.112078 * t."OUT_49"  + -0.205438 * t."OUT_50"  + 0.159369 * t."OUT_51"  + 0.025864 * t."OUT_52"  + -0.066708 * t."OUT_53"  + 0.083362 * t."OUT_54"  + 0.221539 * t."OUT_55"  + 0.052641 * t."OUT_56"  + 0.289603 * t."OUT_57"  + 0.107369 * t."OUT_58"  + -0.422850 * t."OUT_59"  + 0.169904 * t."OUT_60"  + -0.238149 * t."OUT_61"  + -0.211542 * t."OUT_62"  + 0.143324 * t."OUT_63"  + 0.061954 * t."OUT_64"  + 0.194345 * t."OUT_65"  + 0.045326 * t."OUT_66"  + 0.163410 * t."OUT_67"  + 0.143017 * t."OUT_68"  + -0.061235 * t."OUT_69"  + -0.026278 * t."OUT_70"  + 0.176962 * t."OUT_71"  + 0.087707 * t."OUT_72"  + -0.096106 * t."OUT_73"  + -0.012804 * t."OUT_74"  + -0.226499 * t."OUT_75"  + -0.118069 * t."OUT_76"  + -0.136610 * t."OUT_77"  + 0.047263 * t."OUT_78"  + -0.128526 * t."OUT_79"  + -0.113443 * t."OUT_80"  + 0.270432 * t."OUT_81"  + -0.116816 * t."OUT_82"  + -0.110807 * t."OUT_83"  + -0.015270 * t."OUT_84"  + 0.053068 * t."OUT_85"  + 0.047351 * t."OUT_86"  + 0.278230 * t."OUT_87"  + -0.105582 * t."OUT_88"  + -0.092305 * t."OUT_89"  + 0.048535 * t."OUT_90"  + 0.147788 * t."OUT_91"  + -0.113004 * t."OUT_92"  + -0.149224 * t."OUT_93"  + 0.097707 * t."OUT_94"  + 0.026507 * t."OUT_95"  + 0.014962 * t."OUT_96"  + 0.154861 * t."OUT_97"  + -0.188361 * t."OUT_98"  + 0.237976 * t."OUT_99" AS "OUT_2",
    0.112132 + -0.027754 * t."OUT_0"  + 0.096809 * t."OUT_1"  + 0.052370 * t."OUT_2"  + 0.017144 * t."OUT_3"  + -0.111519 * t."OUT_4"  + 0.072315 * t."OUT_5"  + 0.144359 * t."OUT_6"  + 0.005413 * t."OUT_7"  + 0.013583 * t."OUT_8"  + 0.214862 * t."OUT_9"  + 0.180155 * t."OUT_10"  + 0.081550 * t."OUT_11"  + -0.052377 * t."OUT_12"  + 0.026909 * t."OUT_13"  + 0.109714 * t."OUT_14"  + 0.120975 * t."OUT_15"  + -0.212122 * t."OUT_16"  + -0.118040 * t."OUT_17"  + 0.065673 * t."OUT_18"  + -0.065770 * t."OUT_19"  + 0.021067 * t."OUT_20"  + -0.092149 * t."OUT_21"  + 0.379097 * t."OUT_22"  + -0.147471 * t."OUT_23"  + -0.027413 * t."OUT_24"  + 0.133708 * t."OUT_25"  + 0.155830 * t."OUT_26"  + 0.195567 * t."OUT_27"  + 0.223711 * t."OUT_28"  + -0.142241 * t."OUT_29"  + 0.271677 * t."OUT_30"  + -0.116060 * t."OUT_31"  + 0.336604 * t."OUT_32"  + -0.111886 * t."OUT_33"  + 0.028624 * t."OUT_34"  + -0.017095 * t."OUT_35"  + 0.205163 * t."OUT_36"  + -0.116948 * t."OUT_37"  + -0.085846 * t."OUT_38"  + -0.074196 * t."OUT_39"  + 0.208066 * t."OUT_40"  + 0.155888 * t."OUT_41"  + -0.178699 * t."OUT_42"  + -0.064602 * t."OUT_43"  + 0.016577 * t."OUT_44"  + 0.167241 * t."OUT_45"  + 0.157481 * t."OUT_46"  + -0.005435 * t."OUT_47"  + 0.172057 * t."OUT_48"  + -0.044971 * t."OUT_49"  + 0.062086 * t."OUT_50"  + 0.078107 * t."OUT_51"  + 0.128994 * t."OUT_52"  + -0.194694 * t."OUT_53"  + -0.028221 * t."OUT_54"  + -0.113856 * t."OUT_55"  + 0.059248 * t."OUT_56"  + 0.059027 * t."OUT_57"  + 0.078342 * t."OUT_58"  + -0.093345 * t."OUT_59"  + 0.081613 * t."OUT_60"  + -0.123693 * t."OUT_61"  + -0.054050 * t."OUT_62"  + -0.118338 * t."OUT_63"  + 0.191834 * t."OUT_64"  + 0.123006 * t."OUT_65"  + -0.203714 * t."OUT_66"  + 0.163516 * t."OUT_67"  + 0.069963 * t."OUT_68"  + 0.129324 * t."OUT_69"  + 0.109114 * t."OUT_70"  + -0.205485 * t."OUT_71"  + 0.148826 * t."OUT_72"  + -0.028268 * t."OUT_73"  + -0.001110 * t."OUT_74"  + -0.077716 * t."OUT_75"  + -0.032070 * t."OUT_76"  + 0.101979 * t."OUT_77"  + 0.019018 * t."OUT_78"  + 0.026065 * t."OUT_79"  + -0.179426 * t."OUT_80"  + 0.072553 * t."OUT_81"  + 0.091150 * t."OUT_82"  + -0.066087 * t."OUT_83"  + -0.115278 * t."OUT_84"  + -0.057820 * t."OUT_85"  + -0.097081 * t."OUT_86"  + 0.009580 * t."OUT_87"  + 0.123938 * t."OUT_88"  + 0.084637 * t."OUT_89"  + 0.020539 * t."OUT_90"  + -0.178283 * t."OUT_91"  + -0.110952 * t."OUT_92"  + 0.110730 * t."OUT_93"  + -0.118390 * t."OUT_94"  + -0.019345 * t."OUT_95"  + 0.221122 * t."OUT_96"  + 0.174455 * t."OUT_97"  + 0.162157 * t."OUT_98"  + -0.080444 * t."OUT_99" AS "OUT_3"
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
    0.163488 + -0.131863 * t."OUT_0"  + 0.328867 * t."OUT_1"  + 0.804634 * t."OUT_2"  + -0.207096 * t."OUT_3" AS "OUT_0",
    -0.452055 + 0.271398 * t."OUT_0"  + -0.512959 * t."OUT_1"  + 0.667561 * t."OUT_2"  + 0.100482 * t."OUT_3" AS "OUT_1",
    0.666318 + 0.991850 * t."OUT_0"  + -0.373289 * t."OUT_1"  + -0.083479 * t."OUT_2"  + -0.628626 * t."OUT_3" AS "OUT_2",
    -0.349859 + 0.878062 * t."OUT_0"  + -0.427314 * t."OUT_1"  + 0.299139 * t."OUT_2"  + 0.022602 * t."OUT_3" AS "OUT_3",
    0.069915 + 0.580794 * t."OUT_0"  + -0.211382 * t."OUT_1"  + 0.587664 * t."OUT_2"  + -0.221835 * t."OUT_3" AS "OUT_4",
    -0.026857 + -0.195779 * t."OUT_0"  + -0.203390 * t."OUT_1"  + -0.645757 * t."OUT_2"  + 0.308812 * t."OUT_3" AS "OUT_5",
    0.532789 + -0.189213 * t."OUT_0"  + 0.240977 * t."OUT_1"  + -0.327647 * t."OUT_2"  + 0.116639 * t."OUT_3" AS "OUT_6",
    -0.696892 + -0.282160 * t."OUT_0"  + -0.040664 * t."OUT_1"  + 0.074983 * t."OUT_2"  + 0.482935 * t."OUT_3" AS "OUT_7"
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
    0.592668 + -0.104403 * t."OUT_0"  + 0.847905 * t."OUT_1"  + 0.695296 * t."OUT_2"  + 0.375401 * t."OUT_3"  + -0.030279 * t."OUT_4"  + 0.365677 * t."OUT_5"  + -0.508821 * t."OUT_6"  + -0.201651 * t."OUT_7" AS "OUT_0",
    -0.397551 + 0.595717 * t."OUT_0"  + 0.354471 * t."OUT_1"  + 0.082634 * t."OUT_2"  + -0.341738 * t."OUT_3"  + -0.654076 * t."OUT_4"  + 0.097910 * t."OUT_5"  + 0.753398 * t."OUT_6"  + 0.486950 * t."OUT_7" AS "OUT_1",
    -0.112307 + 0.527344 * t."OUT_0"  + -0.436054 * t."OUT_1"  + 0.233728 * t."OUT_2"  + -0.394755 * t."OUT_3"  + -0.442384 * t."OUT_4"  + 0.324073 * t."OUT_5"  + 0.932008 * t."OUT_6"  + 0.360141 * t."OUT_7" AS "OUT_2",
    0.777144 + -0.217051 * t."OUT_0"  + 0.283676 * t."OUT_1"  + -0.121726 * t."OUT_2"  + -0.063736 * t."OUT_3"  + -0.482097 * t."OUT_4"  + 0.210636 * t."OUT_5"  + 0.517237 * t."OUT_6"  + 0.034189 * t."OUT_7" AS "OUT_3",
    -0.283675 + 0.572319 * t."OUT_0"  + 0.801782 * t."OUT_1"  + 0.211252 * t."OUT_2"  + 0.936705 * t."OUT_3"  + 0.152618 * t."OUT_4"  + -0.033756 * t."OUT_5"  + -0.044784 * t."OUT_6"  + -0.156313 * t."OUT_7" AS "OUT_4",
    0.735643 + 0.121189 * t."OUT_0"  + 0.298815 * t."OUT_1"  + -0.093028 * t."OUT_2"  + -0.387988 * t."OUT_3"  + -0.393718 * t."OUT_4"  + 0.184928 * t."OUT_5"  + 0.436866 * t."OUT_6"  + -0.475300 * t."OUT_7" AS "OUT_5"
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
    -0.632102 + -0.670908 * t."OUT_0"  + 0.997409 * t."OUT_1"  + 0.580476 * t."OUT_2"  + 1.001998 * t."OUT_3"  + -0.867873 * t."OUT_4"  + 0.718517 * t."OUT_5" AS "OUT_0"
   FROM "Hidden_Layer_3_Activation" AS t
 )
 SELECT
    t."index" AS "index",
    t.OUT_0 AS "Estimator"
  FROM "Output_Layer_BA" AS t
