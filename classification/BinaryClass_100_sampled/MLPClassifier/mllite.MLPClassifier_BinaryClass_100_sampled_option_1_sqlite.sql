WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "BinaryClass_100_sampled" AS "ADS" 
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
    -0.145242 + -0.051674 * t."OUT_0"  + 0.015171 * t."OUT_1"  + 0.173794 * t."OUT_2"  + 0.270256 * t."OUT_3"  + 0.097114 * t."OUT_4"  + 0.107546 * t."OUT_5"  + -0.068408 * t."OUT_6"  + -0.033954 * t."OUT_7"  + -0.089372 * t."OUT_8"  + -0.167732 * t."OUT_9"  + -0.205955 * t."OUT_10"  + -0.183095 * t."OUT_11"  + 0.128169 * t."OUT_12"  + 0.174629 * t."OUT_13"  + 0.043633 * t."OUT_14"  + -0.229527 * t."OUT_15"  + -0.176786 * t."OUT_16"  + 0.266809 * t."OUT_17"  + -0.038092 * t."OUT_18"  + 0.074369 * t."OUT_19"  + 0.119615 * t."OUT_20"  + -0.244681 * t."OUT_21"  + -0.148755 * t."OUT_22"  + 0.038856 * t."OUT_23"  + 0.110840 * t."OUT_24"  + 0.118897 * t."OUT_25"  + 0.181667 * t."OUT_26"  + -0.068015 * t."OUT_27"  + 0.134659 * t."OUT_28"  + 0.051827 * t."OUT_29"  + 0.156455 * t."OUT_30"  + -0.136839 * t."OUT_31"  + 0.100100 * t."OUT_32"  + 0.191277 * t."OUT_33"  + -0.155498 * t."OUT_34"  + -0.162789 * t."OUT_35"  + -0.160999 * t."OUT_36"  + -0.070290 * t."OUT_37"  + -0.012027 * t."OUT_38"  + -0.172943 * t."OUT_39"  + 0.051388 * t."OUT_40"  + -0.082764 * t."OUT_41"  + -0.171294 * t."OUT_42"  + 0.127764 * t."OUT_43"  + 0.229311 * t."OUT_44"  + 0.110465 * t."OUT_45"  + 0.115726 * t."OUT_46"  + 0.168791 * t."OUT_47"  + 0.140229 * t."OUT_48"  + -0.251036 * t."OUT_49"  + -0.068012 * t."OUT_50"  + 0.221447 * t."OUT_51"  + 0.050523 * t."OUT_52"  + 0.138552 * t."OUT_53"  + -0.099870 * t."OUT_54"  + -0.071563 * t."OUT_55"  + -0.050420 * t."OUT_56"  + -0.240714 * t."OUT_57"  + 0.040529 * t."OUT_58"  + -0.056331 * t."OUT_59"  + 0.003480 * t."OUT_60"  + 0.014580 * t."OUT_61"  + 0.051720 * t."OUT_62"  + 0.118995 * t."OUT_63"  + 0.054954 * t."OUT_64"  + 0.051473 * t."OUT_65"  + 0.047646 * t."OUT_66"  + 0.118081 * t."OUT_67"  + 0.190753 * t."OUT_68"  + 0.058257 * t."OUT_69"  + 0.141530 * t."OUT_70"  + 0.119302 * t."OUT_71"  + 0.119544 * t."OUT_72"  + -0.061730 * t."OUT_73"  + -0.209536 * t."OUT_74"  + 0.083996 * t."OUT_75"  + -0.138901 * t."OUT_76"  + -0.084358 * t."OUT_77"  + 0.097660 * t."OUT_78"  + 0.044229 * t."OUT_79"  + -0.106259 * t."OUT_80"  + 0.137384 * t."OUT_81"  + -0.175347 * t."OUT_82"  + 0.037558 * t."OUT_83"  + 0.198718 * t."OUT_84"  + -0.024957 * t."OUT_85"  + -0.080691 * t."OUT_86"  + -0.047847 * t."OUT_87"  + -0.190035 * t."OUT_88"  + -0.093542 * t."OUT_89"  + -0.155663 * t."OUT_90"  + 0.203902 * t."OUT_91"  + 0.152393 * t."OUT_92"  + -0.251821 * t."OUT_93"  + -0.207701 * t."OUT_94"  + -0.068579 * t."OUT_95"  + -0.126477 * t."OUT_96"  + 0.003471 * t."OUT_97"  + -0.143491 * t."OUT_98"  + -0.177839 * t."OUT_99" AS "OUT_0",
    0.035203 + 0.097391 * t."OUT_0"  + -0.138217 * t."OUT_1"  + 0.019339 * t."OUT_2"  + -0.236520 * t."OUT_3"  + -0.084978 * t."OUT_4"  + -0.227870 * t."OUT_5"  + -0.250439 * t."OUT_6"  + -0.003184 * t."OUT_7"  + 0.096601 * t."OUT_8"  + 0.240009 * t."OUT_9"  + 0.163004 * t."OUT_10"  + -0.151277 * t."OUT_11"  + 0.234240 * t."OUT_12"  + 0.190667 * t."OUT_13"  + -0.013323 * t."OUT_14"  + 0.061427 * t."OUT_15"  + 0.198608 * t."OUT_16"  + 0.202781 * t."OUT_17"  + 0.259185 * t."OUT_18"  + 0.174662 * t."OUT_19"  + 0.199754 * t."OUT_20"  + 0.152404 * t."OUT_21"  + -0.196620 * t."OUT_22"  + -0.078343 * t."OUT_23"  + -0.044998 * t."OUT_24"  + -0.146192 * t."OUT_25"  + 0.180757 * t."OUT_26"  + -0.007717 * t."OUT_27"  + -0.032788 * t."OUT_28"  + -0.049726 * t."OUT_29"  + 0.106596 * t."OUT_30"  + -0.029872 * t."OUT_31"  + -0.255379 * t."OUT_32"  + -0.133806 * t."OUT_33"  + -0.214911 * t."OUT_34"  + -0.170904 * t."OUT_35"  + -0.167383 * t."OUT_36"  + 0.095004 * t."OUT_37"  + 0.192971 * t."OUT_38"  + -0.135040 * t."OUT_39"  + -0.098146 * t."OUT_40"  + 0.096013 * t."OUT_41"  + 0.172345 * t."OUT_42"  + 0.139519 * t."OUT_43"  + 0.171458 * t."OUT_44"  + 0.058349 * t."OUT_45"  + 0.096867 * t."OUT_46"  + 0.113468 * t."OUT_47"  + -0.094118 * t."OUT_48"  + -0.105871 * t."OUT_49"  + -0.035327 * t."OUT_50"  + 0.009028 * t."OUT_51"  + 0.093102 * t."OUT_52"  + -0.132688 * t."OUT_53"  + -0.176455 * t."OUT_54"  + -0.225623 * t."OUT_55"  + 0.113787 * t."OUT_56"  + 0.155586 * t."OUT_57"  + 0.210099 * t."OUT_58"  + 0.186502 * t."OUT_59"  + 0.009647 * t."OUT_60"  + -0.008068 * t."OUT_61"  + 0.120631 * t."OUT_62"  + -0.102629 * t."OUT_63"  + -0.118639 * t."OUT_64"  + 0.140201 * t."OUT_65"  + -0.193047 * t."OUT_66"  + 0.043153 * t."OUT_67"  + -0.131186 * t."OUT_68"  + 0.236849 * t."OUT_69"  + 0.242126 * t."OUT_70"  + 0.093434 * t."OUT_71"  + 0.178777 * t."OUT_72"  + 0.110799 * t."OUT_73"  + 0.111802 * t."OUT_74"  + -0.184249 * t."OUT_75"  + 0.079118 * t."OUT_76"  + 0.178651 * t."OUT_77"  + -0.173399 * t."OUT_78"  + -0.181292 * t."OUT_79"  + 0.243594 * t."OUT_80"  + -0.014471 * t."OUT_81"  + -0.130911 * t."OUT_82"  + 0.120268 * t."OUT_83"  + -0.145310 * t."OUT_84"  + -0.074831 * t."OUT_85"  + 0.145975 * t."OUT_86"  + -0.007514 * t."OUT_87"  + -0.086384 * t."OUT_88"  + -0.074371 * t."OUT_89"  + -0.047466 * t."OUT_90"  + -0.104299 * t."OUT_91"  + -0.131353 * t."OUT_92"  + 0.093679 * t."OUT_93"  + -0.021086 * t."OUT_94"  + -0.112869 * t."OUT_95"  + -0.106224 * t."OUT_96"  + 0.106175 * t."OUT_97"  + 0.131184 * t."OUT_98"  + -0.026913 * t."OUT_99" AS "OUT_1",
    0.146924 + -0.081314 * t."OUT_0"  + 0.051879 * t."OUT_1"  + 0.222915 * t."OUT_2"  + -0.113147 * t."OUT_3"  + -0.134029 * t."OUT_4"  + -0.018389 * t."OUT_5"  + -0.089547 * t."OUT_6"  + -0.218849 * t."OUT_7"  + -0.072559 * t."OUT_8"  + -0.184554 * t."OUT_9"  + 0.082916 * t."OUT_10"  + 0.080779 * t."OUT_11"  + 0.211293 * t."OUT_12"  + -0.133854 * t."OUT_13"  + 0.033084 * t."OUT_14"  + 0.078757 * t."OUT_15"  + -0.149951 * t."OUT_16"  + -0.054821 * t."OUT_17"  + -0.150506 * t."OUT_18"  + 0.181361 * t."OUT_19"  + 0.149779 * t."OUT_20"  + 0.030885 * t."OUT_21"  + -0.076462 * t."OUT_22"  + -0.086265 * t."OUT_23"  + -0.060874 * t."OUT_24"  + -0.096767 * t."OUT_25"  + 0.197720 * t."OUT_26"  + 0.047572 * t."OUT_27"  + 0.161449 * t."OUT_28"  + -0.095585 * t."OUT_29"  + -0.187517 * t."OUT_30"  + 0.064469 * t."OUT_31"  + -0.190726 * t."OUT_32"  + -0.059154 * t."OUT_33"  + -0.053160 * t."OUT_34"  + -0.242941 * t."OUT_35"  + 0.023334 * t."OUT_36"  + 0.026678 * t."OUT_37"  + 0.256844 * t."OUT_38"  + 0.069560 * t."OUT_39"  + 0.236535 * t."OUT_40"  + -0.136577 * t."OUT_41"  + 0.028942 * t."OUT_42"  + 0.024622 * t."OUT_43"  + -0.098873 * t."OUT_44"  + -0.027803 * t."OUT_45"  + -0.176487 * t."OUT_46"  + -0.037571 * t."OUT_47"  + 0.031303 * t."OUT_48"  + -0.105378 * t."OUT_49"  + -0.188330 * t."OUT_50"  + -0.013434 * t."OUT_51"  + -0.003504 * t."OUT_52"  + -0.096839 * t."OUT_53"  + 0.096501 * t."OUT_54"  + 0.199768 * t."OUT_55"  + 0.104898 * t."OUT_56"  + 0.187329 * t."OUT_57"  + 0.158437 * t."OUT_58"  + -0.266161 * t."OUT_59"  + 0.083625 * t."OUT_60"  + -0.188114 * t."OUT_61"  + -0.217758 * t."OUT_62"  + 0.006904 * t."OUT_63"  + -0.029630 * t."OUT_64"  + 0.159750 * t."OUT_65"  + 0.013177 * t."OUT_66"  + 0.242767 * t."OUT_67"  + 0.023676 * t."OUT_68"  + -0.103399 * t."OUT_69"  + 0.022777 * t."OUT_70"  + 0.171654 * t."OUT_71"  + 0.041750 * t."OUT_72"  + -0.184898 * t."OUT_73"  + 0.026003 * t."OUT_74"  + -0.166964 * t."OUT_75"  + -0.012224 * t."OUT_76"  + 0.125758 * t."OUT_77"  + 0.190755 * t."OUT_78"  + -0.171588 * t."OUT_79"  + -0.200004 * t."OUT_80"  + 0.178289 * t."OUT_81"  + -0.222926 * t."OUT_82"  + -0.079346 * t."OUT_83"  + -0.055850 * t."OUT_84"  + -0.056450 * t."OUT_85"  + 0.064260 * t."OUT_86"  + 0.197717 * t."OUT_87"  + -0.227616 * t."OUT_88"  + -0.199664 * t."OUT_89"  + 0.212125 * t."OUT_90"  + 0.098374 * t."OUT_91"  + -0.116850 * t."OUT_92"  + -0.221790 * t."OUT_93"  + 0.225199 * t."OUT_94"  + 0.200833 * t."OUT_95"  + -0.013712 * t."OUT_96"  + 0.159092 * t."OUT_97"  + -0.173011 * t."OUT_98"  + 0.229384 * t."OUT_99" AS "OUT_2",
    0.240960 + 0.005883 * t."OUT_0"  + -0.012985 * t."OUT_1"  + -0.065778 * t."OUT_2"  + 0.056858 * t."OUT_3"  + -0.199697 * t."OUT_4"  + -0.016116 * t."OUT_5"  + 0.209931 * t."OUT_6"  + 0.001892 * t."OUT_7"  + 0.124831 * t."OUT_8"  + 0.132684 * t."OUT_9"  + 0.217450 * t."OUT_10"  + 0.113937 * t."OUT_11"  + -0.168733 * t."OUT_12"  + 0.080559 * t."OUT_13"  + 0.171617 * t."OUT_14"  + 0.110383 * t."OUT_15"  + -0.226806 * t."OUT_16"  + -0.164143 * t."OUT_17"  + 0.119598 * t."OUT_18"  + -0.155659 * t."OUT_19"  + 0.005064 * t."OUT_20"  + -0.021979 * t."OUT_21"  + 0.246930 * t."OUT_22"  + -0.245253 * t."OUT_23"  + -0.078076 * t."OUT_24"  + 0.168167 * t."OUT_25"  + 0.166801 * t."OUT_26"  + 0.136272 * t."OUT_27"  + 0.133229 * t."OUT_28"  + -0.149237 * t."OUT_29"  + 0.047120 * t."OUT_30"  + -0.069358 * t."OUT_31"  + 0.152650 * t."OUT_32"  + -0.151489 * t."OUT_33"  + -0.081650 * t."OUT_34"  + 0.047742 * t."OUT_35"  + 0.060599 * t."OUT_36"  + -0.132034 * t."OUT_37"  + -0.070454 * t."OUT_38"  + -0.232956 * t."OUT_39"  + 0.226227 * t."OUT_40"  + 0.147524 * t."OUT_41"  + -0.113974 * t."OUT_42"  + -0.116070 * t."OUT_43"  + -0.002813 * t."OUT_44"  + 0.187888 * t."OUT_45"  + -0.066370 * t."OUT_46"  + -0.093290 * t."OUT_47"  + 0.176125 * t."OUT_48"  + -0.105976 * t."OUT_49"  + 0.115967 * t."OUT_50"  + 0.127139 * t."OUT_51"  + 0.176226 * t."OUT_52"  + -0.236949 * t."OUT_53"  + -0.046011 * t."OUT_54"  + -0.106538 * t."OUT_55"  + 0.135339 * t."OUT_56"  + 0.161199 * t."OUT_57"  + 0.053207 * t."OUT_58"  + -0.249598 * t."OUT_59"  + 0.187438 * t."OUT_60"  + -0.170822 * t."OUT_61"  + -0.033207 * t."OUT_62"  + -0.040196 * t."OUT_63"  + 0.181221 * t."OUT_64"  + 0.193797 * t."OUT_65"  + -0.142022 * t."OUT_66"  + 0.139577 * t."OUT_67"  + 0.164135 * t."OUT_68"  + 0.146617 * t."OUT_69"  + 0.057770 * t."OUT_70"  + -0.221152 * t."OUT_71"  + 0.214412 * t."OUT_72"  + 0.093776 * t."OUT_73"  + -0.020478 * t."OUT_74"  + -0.048509 * t."OUT_75"  + -0.103161 * t."OUT_76"  + -0.130921 * t."OUT_77"  + -0.029684 * t."OUT_78"  + 0.085955 * t."OUT_79"  + -0.136562 * t."OUT_80"  + 0.180313 * t."OUT_81"  + 0.039175 * t."OUT_82"  + 0.015474 * t."OUT_83"  + -0.045455 * t."OUT_84"  + -0.064112 * t."OUT_85"  + -0.082505 * t."OUT_86"  + -0.004976 * t."OUT_87"  + 0.098061 * t."OUT_88"  + 0.065861 * t."OUT_89"  + -0.160217 * t."OUT_90"  + -0.118225 * t."OUT_91"  + -0.153442 * t."OUT_92"  + 0.218084 * t."OUT_93"  + 0.018999 * t."OUT_94"  + -0.104142 * t."OUT_95"  + 0.143834 * t."OUT_96"  + 0.097542 * t."OUT_97"  + 0.160908 * t."OUT_98"  + -0.163396 * t."OUT_99" AS "OUT_3"
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
    -0.024620 + -0.328522 * t."OUT_0"  + 0.159928 * t."OUT_1"  + 0.727501 * t."OUT_2"  + -0.343353 * t."OUT_3" AS "OUT_0",
    -0.689399 + -0.013540 * t."OUT_0"  + -0.617090 * t."OUT_1"  + 0.432558 * t."OUT_2"  + -0.017429 * t."OUT_3" AS "OUT_1",
    0.529460 + 0.683874 * t."OUT_0"  + -0.306365 * t."OUT_1"  + -0.393665 * t."OUT_2"  + -0.625405 * t."OUT_3" AS "OUT_2",
    -0.667593 + 0.562459 * t."OUT_0"  + -0.632590 * t."OUT_1"  + -0.007203 * t."OUT_2"  + -0.108856 * t."OUT_3" AS "OUT_3",
    -0.042592 + 0.515687 * t."OUT_0"  + -0.153134 * t."OUT_1"  + 0.430200 * t."OUT_2"  + -0.178081 * t."OUT_3" AS "OUT_4",
    0.000960 + -0.134826 * t."OUT_0"  + -0.189063 * t."OUT_1"  + -0.608108 * t."OUT_2"  + 0.339272 * t."OUT_3" AS "OUT_5",
    0.293543 + -0.311076 * t."OUT_0"  + -0.025806 * t."OUT_1"  + -0.346427 * t."OUT_2"  + -0.109326 * t."OUT_3" AS "OUT_6",
    -0.672001 + -0.275270 * t."OUT_0"  + -0.085294 * t."OUT_1"  + 0.076923 * t."OUT_2"  + 0.506762 * t."OUT_3" AS "OUT_7"
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
    0.612343 + -0.198142 * t."OUT_0"  + 0.599916 * t."OUT_1"  + 0.403214 * t."OUT_2"  + 0.052157 * t."OUT_3"  + -0.319642 * t."OUT_4"  + 0.535985 * t."OUT_5"  + -0.275191 * t."OUT_6"  + -0.036010 * t."OUT_7" AS "OUT_0",
    -0.570110 + 0.526964 * t."OUT_0"  + 0.549084 * t."OUT_1"  + 0.096048 * t."OUT_2"  + -0.194039 * t."OUT_3"  + -0.462075 * t."OUT_4"  + -0.007913 * t."OUT_5"  + 0.552646 * t."OUT_6"  + 0.402048 * t."OUT_7" AS "OUT_1",
    -0.365154 + 0.362651 * t."OUT_0"  + -0.272169 * t."OUT_1"  + 0.090075 * t."OUT_2"  + -0.413525 * t."OUT_3"  + -0.303509 * t."OUT_4"  + 0.146345 * t."OUT_5"  + 0.651237 * t."OUT_6"  + 0.202362 * t."OUT_7" AS "OUT_2",
    0.629140 + -0.346921 * t."OUT_0"  + 0.433617 * t."OUT_1"  + -0.072799 * t."OUT_2"  + 0.117775 * t."OUT_3"  + -0.310566 * t."OUT_4"  + 0.038278 * t."OUT_5"  + 0.268229 * t."OUT_6"  + -0.134618 * t."OUT_7" AS "OUT_3",
    -0.395919 + 0.516836 * t."OUT_0"  + 0.522657 * t."OUT_1"  + -0.102789 * t."OUT_2"  + 0.632200 * t."OUT_3"  + -0.117150 * t."OUT_4"  + 0.057084 * t."OUT_5"  + 0.112850 * t."OUT_6"  + -0.122296 * t."OUT_7" AS "OUT_4",
    0.617767 + 0.113050 * t."OUT_0"  + 0.514429 * t."OUT_1"  + 0.054986 * t."OUT_2"  + -0.164306 * t."OUT_3"  + -0.158784 * t."OUT_4"  + 0.010868 * t."OUT_5"  + 0.187396 * t."OUT_6"  + -0.625536 * t."OUT_7" AS "OUT_5"
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
    -0.688334 + -0.491097 * t."OUT_0"  + 0.868661 * t."OUT_1"  + 0.345315 * t."OUT_2"  + 0.803597 * t."OUT_3"  + -0.641065 * t."OUT_4"  + 0.568745 * t."OUT_5" AS "OUT_0"
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