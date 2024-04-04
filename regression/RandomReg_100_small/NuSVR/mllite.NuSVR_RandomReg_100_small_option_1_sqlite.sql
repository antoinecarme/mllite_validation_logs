WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 )
,"SV_data" AS
 ( SELECT 
   "Values"."sv_idx" AS "sv_idx",
   "Values"."coeff" AS "coeff",
   "Values"."sv_0" AS "sv_0",
   "Values"."sv_1" AS "sv_1",
   "Values"."sv_2" AS "sv_2",
   "Values"."sv_3" AS "sv_3",
   "Values"."sv_4" AS "sv_4",
   "Values"."sv_5" AS "sv_5",
   "Values"."sv_6" AS "sv_6",
   "Values"."sv_7" AS "sv_7",
   "Values"."sv_8" AS "sv_8",
   "Values"."sv_9" AS "sv_9",
   "Values"."sv_10" AS "sv_10",
   "Values"."sv_11" AS "sv_11",
   "Values"."sv_12" AS "sv_12",
   "Values"."sv_13" AS "sv_13",
   "Values"."sv_14" AS "sv_14",
   "Values"."sv_15" AS "sv_15",
   "Values"."sv_16" AS "sv_16",
   "Values"."sv_17" AS "sv_17",
   "Values"."sv_18" AS "sv_18",
   "Values"."sv_19" AS "sv_19",
   "Values"."sv_20" AS "sv_20",
   "Values"."sv_21" AS "sv_21",
   "Values"."sv_22" AS "sv_22",
   "Values"."sv_23" AS "sv_23",
   "Values"."sv_24" AS "sv_24",
   "Values"."sv_25" AS "sv_25",
   "Values"."sv_26" AS "sv_26",
   "Values"."sv_27" AS "sv_27",
   "Values"."sv_28" AS "sv_28",
   "Values"."sv_29" AS "sv_29",
   "Values"."sv_30" AS "sv_30",
   "Values"."sv_31" AS "sv_31",
   "Values"."sv_32" AS "sv_32",
   "Values"."sv_33" AS "sv_33",
   "Values"."sv_34" AS "sv_34",
   "Values"."sv_35" AS "sv_35",
   "Values"."sv_36" AS "sv_36",
   "Values"."sv_37" AS "sv_37",
   "Values"."sv_38" AS "sv_38",
   "Values"."sv_39" AS "sv_39",
   "Values"."sv_40" AS "sv_40",
   "Values"."sv_41" AS "sv_41",
   "Values"."sv_42" AS "sv_42",
   "Values"."sv_43" AS "sv_43",
   "Values"."sv_44" AS "sv_44",
   "Values"."sv_45" AS "sv_45",
   "Values"."sv_46" AS "sv_46",
   "Values"."sv_47" AS "sv_47",
   "Values"."sv_48" AS "sv_48",
   "Values"."sv_49" AS "sv_49",
   "Values"."sv_50" AS "sv_50",
   "Values"."sv_51" AS "sv_51",
   "Values"."sv_52" AS "sv_52",
   "Values"."sv_53" AS "sv_53",
   "Values"."sv_54" AS "sv_54",
   "Values"."sv_55" AS "sv_55",
   "Values"."sv_56" AS "sv_56",
   "Values"."sv_57" AS "sv_57",
   "Values"."sv_58" AS "sv_58",
   "Values"."sv_59" AS "sv_59",
   "Values"."sv_60" AS "sv_60",
   "Values"."sv_61" AS "sv_61",
   "Values"."sv_62" AS "sv_62",
   "Values"."sv_63" AS "sv_63",
   "Values"."sv_64" AS "sv_64",
   "Values"."sv_65" AS "sv_65",
   "Values"."sv_66" AS "sv_66",
   "Values"."sv_67" AS "sv_67",
   "Values"."sv_68" AS "sv_68",
   "Values"."sv_69" AS "sv_69",
   "Values"."sv_70" AS "sv_70",
   "Values"."sv_71" AS "sv_71",
   "Values"."sv_72" AS "sv_72",
   "Values"."sv_73" AS "sv_73",
   "Values"."sv_74" AS "sv_74",
   "Values"."sv_75" AS "sv_75",
   "Values"."sv_76" AS "sv_76",
   "Values"."sv_77" AS "sv_77",
   "Values"."sv_78" AS "sv_78",
   "Values"."sv_79" AS "sv_79",
   "Values"."sv_80" AS "sv_80",
   "Values"."sv_81" AS "sv_81",
   "Values"."sv_82" AS "sv_82",
   "Values"."sv_83" AS "sv_83",
   "Values"."sv_84" AS "sv_84",
   "Values"."sv_85" AS "sv_85",
   "Values"."sv_86" AS "sv_86",
   "Values"."sv_87" AS "sv_87",
   "Values"."sv_88" AS "sv_88",
   "Values"."sv_89" AS "sv_89",
   "Values"."sv_90" AS "sv_90",
   "Values"."sv_91" AS "sv_91",
   "Values"."sv_92" AS "sv_92",
   "Values"."sv_93" AS "sv_93",
   "Values"."sv_94" AS "sv_94",
   "Values"."sv_95" AS "sv_95",
   "Values"."sv_96" AS "sv_96",
   "Values"."sv_97" AS "sv_97",
   "Values"."sv_98" AS "sv_98",
   "Values"."sv_99" AS "sv_99"
  FROM
  (
     SELECT 0 AS "sv_idx", 1.000000 AS "coeff", 0.652203 AS "sv_0", 0.436045 AS "sv_1", -0.138883 AS "sv_2", -0.625626 AS "sv_3", -1.052697 AS "sv_4", 0.681542 AS "sv_5", -0.938536 AS "sv_6", 0.946532 AS "sv_7", 0.423996 AS "sv_8", -0.031088 AS "sv_9", -1.727926 AS "sv_10", 1.619766 AS "sv_11", 1.061490 AS "sv_12", -1.602632 AS "sv_13", 0.775221 AS "sv_14", 0.747878 AS "sv_15", 0.543018 AS "sv_16", 1.949929 AS "sv_17", -0.390970 AS "sv_18", -1.283426 AS "sv_19", -1.193047 AS "sv_20", 0.809933 AS "sv_21", 1.838850 AS "sv_22", -0.689319 AS "sv_23", -0.992610 AS "sv_24", 1.657792 AS "sv_25", 0.705457 AS "sv_26", -1.009920 AS "sv_27", 0.537567 AS "sv_28", 0.197217 AS "sv_29", 0.774661 AS "sv_30", 0.600213 AS "sv_31", 1.250723 AS "sv_32", -0.004769 AS "sv_33", 0.879051 AS "sv_34", -1.091502 AS "sv_35", -0.567888 AS "sv_36", -0.870715 AS "sv_37", 0.797927 AS "sv_38", -0.228577 AS "sv_39", 1.046873 AS "sv_40", -1.456435 AS "sv_41", -1.760875 AS "sv_42", -0.190029 AS "sv_43", -0.428558 AS "sv_44", 0.136273 AS "sv_45", 2.166094 AS "sv_46", 0.707097 AS "sv_47", 0.136510 AS "sv_48", -1.140066 AS "sv_49", -0.649436 AS "sv_50", -0.394823 AS "sv_51", -1.051403 AS "sv_52", 1.562724 AS "sv_53", -0.434697 AS "sv_54", -0.922369 AS "sv_55", 0.174495 AS "sv_56", 0.583298 AS "sv_57", -0.225387 AS "sv_58", 0.840166 AS "sv_59", 0.633278 AS "sv_60", 0.409356 AS "sv_61", 0.811317 AS "sv_62", 0.442499 AS "sv_63", 1.060244 AS "sv_64", 0.125624 AS "sv_65", 0.748346 AS "sv_66", -0.296961 AS "sv_67", -0.784845 AS "sv_68", -0.522191 AS "sv_69", 1.101961 AS "sv_70", -0.816511 AS "sv_71", 0.646203 AS "sv_72", 2.240576 AS "sv_73", -0.864095 AS "sv_74", 0.441238 AS "sv_75", 0.236171 AS "sv_76", 1.744468 AS "sv_77", 0.308703 AS "sv_78", 0.277589 AS "sv_79", -1.059889 AS "sv_80", -0.917680 AS "sv_81", 0.749258 AS "sv_82", 0.005080 AS "sv_83", -1.013675 AS "sv_84", -0.563921 AS "sv_85", -0.145915 AS "sv_86", -0.779168 AS "sv_87", -1.108434 AS "sv_88", 0.444275 AS "sv_89", -0.859430 AS "sv_90", 0.591170 AS "sv_91", 0.075764 AS "sv_92", 0.594485 AS "sv_93", 0.335600 AS "sv_94", -0.893353 AS "sv_95", -1.488198 AS "sv_96", 0.620222 AS "sv_97", -0.172713 AS "sv_98", 0.919309 AS "sv_99"
     UNION ALL
     SELECT 1 AS "sv_idx", 1.000000 AS "coeff", 1.188539 AS "sv_0", -1.250136 AS "sv_1", -1.027288 AS "sv_2", 0.918846 AS "sv_3", -0.954316 AS "sv_4", 0.548053 AS "sv_5", -0.281864 AS "sv_6", 0.961725 AS "sv_7", 0.130901 AS "sv_8", -0.002005 AS "sv_9", 1.620184 AS "sv_10", 0.552014 AS "sv_11", 0.958100 AS "sv_12", 1.148207 AS "sv_13", -0.388085 AS "sv_14", 0.033469 AS "sv_15", 0.348906 AS "sv_16", 1.667911 AS "sv_17", -0.517155 AS "sv_18", 1.500237 AS "sv_19", -0.721696 AS "sv_20", 0.757986 AS "sv_21", 0.142960 AS "sv_22", 0.978339 AS "sv_23", 0.375944 AS "sv_24", -2.155619 AS "sv_25", 1.056578 AS "sv_26", 1.498774 AS "sv_27", 0.083207 AS "sv_28", 0.092960 AS "sv_29", 1.434398 AS "sv_30", -0.882482 AS "sv_31", 2.725686 AS "sv_32", -1.150549 AS "sv_33", -1.409628 AS "sv_34", -0.134606 AS "sv_35", -0.185542 AS "sv_36", -0.050296 AS "sv_37", 1.132250 AS "sv_38", -0.616449 AS "sv_39", -1.295441 AS "sv_40", -0.200460 AS "sv_41", 1.161690 AS "sv_42", -0.116769 AS "sv_43", -0.381539 AS "sv_44", -0.690765 AS "sv_45", 1.507999 AS "sv_46", -1.394765 AS "sv_47", -0.565123 AS "sv_48", 0.132223 AS "sv_49", -0.661427 AS "sv_50", -0.066379 AS "sv_51", -0.043534 AS "sv_52", 1.535401 AS "sv_53", 0.216322 AS "sv_54", -0.512967 AS "sv_55", -0.211845 AS "sv_56", -0.406935 AS "sv_57", 1.487546 AS "sv_58", -0.231149 AS "sv_59", -1.349181 AS "sv_60", 0.075628 AS "sv_61", 1.157210 AS "sv_62", -1.687230 AS "sv_63", 0.011681 AS "sv_64", 0.144008 AS "sv_65", -0.027436 AS "sv_66", -0.101655 AS "sv_67", 0.505094 AS "sv_68", -0.491673 AS "sv_69", -1.628911 AS "sv_70", -0.945251 AS "sv_71", -2.098376 AS "sv_72", -1.270595 AS "sv_73", 0.876920 AS "sv_74", -0.927536 AS "sv_75", 1.650905 AS "sv_76", -0.293083 AS "sv_77", -1.702209 AS "sv_78", 1.012037 AS "sv_79", -1.901319 AS "sv_80", -0.465234 AS "sv_81", -0.264693 AS "sv_82", 0.455037 AS "sv_83", -1.586466 AS "sv_84", -0.302469 AS "sv_85", -1.146767 AS "sv_86", -2.078484 AS "sv_87", -0.098387 AS "sv_88", 0.254454 AS "sv_89", 1.692565 AS "sv_90", 1.066601 AS "sv_91", 0.765892 AS "sv_92", 0.447516 AS "sv_93", 1.219288 AS "sv_94", -0.342645 AS "sv_95", 0.976481 AS "sv_96", -1.316489 AS "sv_97", 0.531235 AS "sv_98", -1.526836 AS "sv_99"
     UNION ALL
     SELECT 2 AS "sv_idx", -1.000000 AS "coeff", -0.183233 AS "sv_0", 0.167641 AS "sv_1", -1.018050 AS "sv_2", -1.111411 AS "sv_3", -0.609679 AS "sv_4", -1.203273 AS "sv_5", -0.913514 AS "sv_6", -1.728868 AS "sv_7", 1.452580 AS "sv_8", -0.750345 AS "sv_9", -0.981697 AS "sv_10", 2.486418 AS "sv_11", 0.291976 AS "sv_12", 0.760840 AS "sv_13", 0.026738 AS "sv_14", 0.019659 AS "sv_15", 1.771432 AS "sv_16", 0.107315 AS "sv_17", 1.501484 AS "sv_18", 0.046694 AS "sv_19", 0.014993 AS "sv_20", 2.290341 AS "sv_21", -1.532756 AS "sv_22", 0.225128 AS "sv_23", 0.130133 AS "sv_24", -1.395831 AS "sv_25", 0.477327 AS "sv_26", -2.448051 AS "sv_27", -1.034129 AS "sv_28", -0.364481 AS "sv_29", -0.275402 AS "sv_30", -0.067014 AS "sv_31", -0.417635 AS "sv_32", 1.159317 AS "sv_33", 0.364668 AS "sv_34", 0.513427 AS "sv_35", -1.980565 AS "sv_36", -1.264230 AS "sv_37", 0.180946 AS "sv_38", 0.091433 AS "sv_39", -0.754874 AS "sv_40", 0.250950 AS "sv_41", -0.384122 AS "sv_42", -1.548646 AS "sv_43", -0.017366 AS "sv_44", 1.348810 AS "sv_45", -2.097035 AS "sv_46", 0.540929 AS "sv_47", -0.697016 AS "sv_48", 0.100160 AS "sv_49", -0.345064 AS "sv_50", 0.577616 AS "sv_51", 2.323311 AS "sv_52", -1.069281 AS "sv_53", -0.672330 AS "sv_54", -0.880210 AS "sv_55", 0.677673 AS "sv_56", -0.981727 AS "sv_57", 1.567180 AS "sv_58", -1.077151 AS "sv_59", 0.693288 AS "sv_60", -0.299013 AS "sv_61", 0.710935 AS "sv_62", -0.617862 AS "sv_63", 0.132902 AS "sv_64", -1.357962 AS "sv_65", 0.825821 AS "sv_66", 0.206335 AS "sv_67", 0.693721 AS "sv_68", -0.231655 AS "sv_69", 1.601441 AS "sv_70", -0.333891 AS "sv_71", -0.524633 AS "sv_72", 1.293261 AS "sv_73", 0.242750 AS "sv_74", -0.841970 AS "sv_75", -1.894732 AS "sv_76", -0.317770 AS "sv_77", 0.011854 AS "sv_78", 1.039814 AS "sv_79", 1.187268 AS "sv_80", 0.569628 AS "sv_81", 0.770424 AS "sv_82", 0.049539 AS "sv_83", -1.278216 AS "sv_84", -0.578683 AS "sv_85", 0.807994 AS "sv_86", 1.936536 AS "sv_87", 1.032505 AS "sv_88", 0.628856 AS "sv_89", -1.874937 AS "sv_90", 0.493701 AS "sv_91", 0.645847 AS "sv_92", 0.737805 AS "sv_93", 0.231928 AS "sv_94", -1.233055 AS "sv_95", 0.833308 AS "sv_96", 0.131021 AS "sv_97", -0.518277 AS "sv_98", -0.467736 AS "sv_99"
     UNION ALL
     SELECT 3 AS "sv_idx", 0.199998 AS "coeff", 0.660499 AS "sv_0", 0.581524 AS "sv_1", 0.070756 AS "sv_2", -0.218228 AS "sv_3", 1.199209 AS "sv_4", -3.235125 AS "sv_5", 0.145599 AS "sv_6", 1.443290 AS "sv_7", -0.075926 AS "sv_8", 0.230686 AS "sv_9", -0.251108 AS "sv_10", -1.655020 AS "sv_11", 0.393410 AS "sv_12", 0.797244 AS "sv_13", -0.066429 AS "sv_14", -1.006527 AS "sv_15", -0.931958 AS "sv_16", -2.100874 AS "sv_17", 0.271910 AS "sv_18", -1.454119 AS "sv_19", 1.313061 AS "sv_20", -0.481753 AS "sv_21", 1.153057 AS "sv_22", -0.519160 AS "sv_23", 3.150853 AS "sv_24", 0.904995 AS "sv_25", 1.648275 AS "sv_26", 0.529020 AS "sv_27", 0.457860 AS "sv_28", -1.106981 AS "sv_29", 1.971927 AS "sv_30", 0.057526 AS "sv_31", -0.606246 AS "sv_32", -1.857585 AS "sv_33", -0.644509 AS "sv_34", -2.830120 AS "sv_35", 0.191785 AS "sv_36", -0.328490 AS "sv_37", 0.416132 AS "sv_38", 0.699229 AS "sv_39", -1.193020 AS "sv_40", 1.630623 AS "sv_41", 0.399848 AS "sv_42", -0.688544 AS "sv_43", 0.959183 AS "sv_44", -1.374058 AS "sv_45", 0.245264 AS "sv_46", 0.166230 AS "sv_47", -1.654936 AS "sv_48", 1.166388 AS "sv_49", -0.354817 AS "sv_50", -0.556658 AS "sv_51", 0.299521 AS "sv_52", -0.279748 AS "sv_53", -0.461943 AS "sv_54", -0.321682 AS "sv_55", 1.957196 AS "sv_56", 1.204291 AS "sv_57", 1.079766 AS "sv_58", 0.169245 AS "sv_59", -1.957922 AS "sv_60", 0.941995 AS "sv_61", 1.495759 AS "sv_62", 1.139851 AS "sv_63", 0.813052 AS "sv_64", 1.310823 AS "sv_65", 0.664798 AS "sv_66", -0.109497 AS "sv_67", -0.298849 AS "sv_68", 0.333821 AS "sv_69", 2.050789 AS "sv_70", -1.337050 AS "sv_71", -0.176241 AS "sv_72", -0.161846 AS "sv_73", 0.363453 AS "sv_74", 1.639207 AS "sv_75", -0.618981 AS "sv_76", 1.036478 AS "sv_77", -1.654612 AS "sv_78", 0.622187 AS "sv_79", -1.447915 AS "sv_80", 0.986111 AS "sv_81", -1.408779 AS "sv_82", 1.213769 AS "sv_83", -0.339735 AS "sv_84", 0.109503 AS "sv_85", 1.365720 AS "sv_86", -0.488587 AS "sv_87", 0.762606 AS "sv_88", 0.186171 AS "sv_89", 1.744672 AS "sv_90", -0.073262 AS "sv_91", -1.787908 AS "sv_92", 0.419166 AS "sv_93", 1.868613 AS "sv_94", 0.111793 AS "sv_95", 0.576868 AS "sv_96", -0.170008 AS "sv_97", -0.333881 AS "sv_98", -1.197093 AS "sv_99"
     UNION ALL
     SELECT 4 AS "sv_idx", 1.000000 AS "coeff", 0.995895 AS "sv_0", 1.410650 AS "sv_1", -0.691038 AS "sv_2", -0.431900 AS "sv_3", -1.421014 AS "sv_4", -0.529644 AS "sv_5", -1.891326 AS "sv_6", 0.828205 AS "sv_7", 1.068633 AS "sv_8", 0.097220 AS "sv_9", 1.991603 AS "sv_10", 0.553031 AS "sv_11", 0.578352 AS "sv_12", 1.227973 AS "sv_13", -0.426870 AS "sv_14", 0.766076 AS "sv_15", 0.762397 AS "sv_16", -0.446181 AS "sv_17", -0.875342 AS "sv_18", -0.426731 AS "sv_19", 0.279260 AS "sv_20", -0.870450 AS "sv_21", 0.852332 AS "sv_22", 0.990250 AS "sv_23", -1.020914 AS "sv_24", -0.118365 AS "sv_25", 0.665824 AS "sv_26", 1.671001 AS "sv_27", 2.581375 AS "sv_28", -0.300133 AS "sv_29", 0.093734 AS "sv_30", -0.461553 AS "sv_31", 0.650970 AS "sv_32", -0.438297 AS "sv_33", -0.201589 AS "sv_34", -0.526599 AS "sv_35", -0.023763 AS "sv_36", -0.869447 AS "sv_37", 2.721346 AS "sv_38", 1.407410 AS "sv_39", -0.894308 AS "sv_40", -0.184726 AS "sv_41", 0.633405 AS "sv_42", -0.592115 AS "sv_43", -0.682447 AS "sv_44", 0.870223 AS "sv_45", 1.898648 AS "sv_46", -1.744029 AS "sv_47", -0.742214 AS "sv_48", 2.160258 AS "sv_49", -0.567226 AS "sv_50", 1.376753 AS "sv_51", -0.286619 AS "sv_52", 0.090755 AS "sv_53", 0.184294 AS "sv_54", 0.127964 AS "sv_55", 2.000394 AS "sv_56", -1.227615 AS "sv_57", -0.020790 AS "sv_58", 1.349521 AS "sv_59", 0.373800 AS "sv_60", -0.444858 AS "sv_61", 0.668952 AS "sv_62", 2.350593 AS "sv_63", -0.074774 AS "sv_64", -0.117554 AS "sv_65", -0.912328 AS "sv_66", -0.299215 AS "sv_67", 0.804925 AS "sv_68", 0.918597 AS "sv_69", -1.230780 AS "sv_70", -0.413904 AS "sv_71", -2.000705 AS "sv_72", -1.188308 AS "sv_73", 0.318296 AS "sv_74", 0.791347 AS "sv_75", 0.084383 AS "sv_76", -0.225166 AS "sv_77", -1.677569 AS "sv_78", -0.436005 AS "sv_79", 0.310988 AS "sv_80", -0.668077 AS "sv_81", -1.214357 AS "sv_82", 0.568894 AS "sv_83", -1.634450 AS "sv_84", -0.561149 AS "sv_85", -2.514299 AS "sv_86", -0.145323 AS "sv_87", 1.147949 AS "sv_88", -0.576700 AS "sv_89", -1.053546 AS "sv_90", -1.235619 AS "sv_91", 0.288467 AS "sv_92", 1.713583 AS "sv_93", -2.339566 AS "sv_94", 1.609968 AS "sv_95", 0.320424 AS "sv_96", 0.895979 AS "sv_97", -0.447231 AS "sv_98", -0.721592 AS "sv_99"
     UNION ALL
     SELECT 5 AS "sv_idx", -1.000000 AS "coeff", 0.499214 AS "sv_0", 0.651670 AS "sv_1", 0.422139 AS "sv_2", -0.855079 AS "sv_3", 0.592367 AS "sv_4", 0.193360 AS "sv_5", -0.872889 AS "sv_6", -0.756423 AS "sv_7", -1.640989 AS "sv_8", 0.291232 AS "sv_9", 0.516146 AS "sv_10", -0.313370 AS "sv_11", -1.023212 AS "sv_12", -0.796493 AS "sv_13", 0.197562 AS "sv_14", -0.661282 AS "sv_15", -0.809589 AS "sv_16", 0.987320 AS "sv_17", 0.605554 AS "sv_18", -0.391999 AS "sv_19", 1.346438 AS "sv_20", -1.193163 AS "sv_21", -0.109700 AS "sv_22", 1.316441 AS "sv_23", 0.922307 AS "sv_24", -2.350298 AS "sv_25", -0.550551 AS "sv_26", 0.306675 AS "sv_27", 0.753694 AS "sv_28", -0.560831 AS "sv_29", -2.305629 AS "sv_30", 0.226800 AS "sv_31", -0.542422 AS "sv_32", -1.502366 AS "sv_33", -2.033430 AS "sv_34", 0.525607 AS "sv_35", -0.964565 AS "sv_36", -0.063373 AS "sv_37", -0.061464 AS "sv_38", -0.420803 AS "sv_39", 0.075649 AS "sv_40", -0.153049 AS "sv_41", 0.528991 AS "sv_42", -0.305689 AS "sv_43", 1.459319 AS "sv_44", -1.503331 AS "sv_45", -0.035906 AS "sv_46", 0.122044 AS "sv_47", 0.517290 AS "sv_48", 0.959138 AS "sv_49", -0.515870 AS "sv_50", 0.171464 AS "sv_51", -0.519628 AS "sv_52", -1.364366 AS "sv_53", -0.478834 AS "sv_54", -1.538115 AS "sv_55", 0.561358 AS "sv_56", 0.283576 AS "sv_57", -0.677203 AS "sv_58", -0.006668 AS "sv_59", -0.443466 AS "sv_60", 0.073080 AS "sv_61", -0.575583 AS "sv_62", 0.037075 AS "sv_63", -1.129610 AS "sv_64", 0.576057 AS "sv_65", 0.583890 AS "sv_66", 1.050908 AS "sv_67", 1.189485 AS "sv_68", 1.613948 AS "sv_69", -1.242952 AS "sv_70", 0.503736 AS "sv_71", -0.609213 AS "sv_72", -0.155682 AS "sv_73", -0.973641 AS "sv_74", 0.097235 AS "sv_75", 0.223544 AS "sv_76", -0.618380 AS "sv_77", -0.126742 AS "sv_78", -1.084247 AS "sv_79", -1.281376 AS "sv_80", 1.796409 AS "sv_81", 0.204060 AS "sv_82", 0.429708 AS "sv_83", 1.051554 AS "sv_84", 1.216811 AS "sv_85", -0.265880 AS "sv_86", 0.789872 AS "sv_87", -0.633835 AS "sv_88", 0.984969 AS "sv_89", 0.194696 AS "sv_90", -0.539249 AS "sv_91", 1.260835 AS "sv_92", 0.858015 AS "sv_93", 1.147515 AS "sv_94", -0.592243 AS "sv_95", 0.096409 AS "sv_96", -0.242191 AS "sv_97", -0.909932 AS "sv_98", 1.443042 AS "sv_99"
     UNION ALL
     SELECT 6 AS "sv_idx", -1.000000 AS "coeff", 2.242008 AS "sv_0", -0.812484 AS "sv_1", -0.757112 AS "sv_2", -0.080097 AS "sv_3", 0.083209 AS "sv_4", -0.497771 AS "sv_5", 0.163168 AS "sv_6", 0.521025 AS "sv_7", -1.150834 AS "sv_8", -1.095474 AS "sv_9", 1.061150 AS "sv_10", -0.585891 AS "sv_11", -1.521394 AS "sv_12", -1.845360 AS "sv_13", 0.696397 AS "sv_14", 0.486222 AS "sv_15", -0.650246 AS "sv_16", -0.877406 AS "sv_17", 0.670586 AS "sv_18", -0.253966 AS "sv_19", 0.162760 AS "sv_20", -1.228708 AS "sv_21", -0.721649 AS "sv_22", -2.402580 AS "sv_23", -1.975309 AS "sv_24", 1.368595 AS "sv_25", -0.243886 AS "sv_26", -0.977387 AS "sv_27", 1.427144 AS "sv_28", -1.210120 AS "sv_29", -2.663585 AS "sv_30", -1.491597 AS "sv_31", 0.621685 AS "sv_32", -1.474528 AS "sv_33", -0.833874 AS "sv_34", -1.562560 AS "sv_35", 0.127478 AS "sv_36", 0.336409 AS "sv_37", -0.146782 AS "sv_38", 0.005760 AS "sv_39", -2.374196 AS "sv_40", -1.420931 AS "sv_41", -1.681227 AS "sv_42", 0.491631 AS "sv_43", -1.524440 AS "sv_44", -0.563227 AS "sv_45", -0.788315 AS "sv_46", 0.419013 AS "sv_47", 2.024898 AS "sv_48", -0.597120 AS "sv_49", -0.528429 AS "sv_50", -1.124538 AS "sv_51", -2.795290 AS "sv_52", 1.062082 AS "sv_53", 0.949054 AS "sv_54", 0.347123 AS "sv_55", 0.743307 AS "sv_56", -0.320549 AS "sv_57", 1.210992 AS "sv_58", -0.037587 AS "sv_59", -1.036556 AS "sv_60", -0.975152 AS "sv_61", -1.760391 AS "sv_62", 0.524375 AS "sv_63", 0.627003 AS "sv_64", 1.661075 AS "sv_65", -0.731997 AS "sv_66", -2.800673 AS "sv_67", 0.272237 AS "sv_68", 1.200768 AS "sv_69", -0.685329 AS "sv_70", 0.675416 AS "sv_71", 0.098367 AS "sv_72", -0.007768 AS "sv_73", 1.031817 AS "sv_74", -0.270365 AS "sv_75", 0.216764 AS "sv_76", -1.297488 AS "sv_77", -1.091759 AS "sv_78", -0.203800 AS "sv_79", 0.976126 AS "sv_80", 1.300384 AS "sv_81", 0.112618 AS "sv_82", -0.630170 AS "sv_83", -0.715671 AS "sv_84", 1.120093 AS "sv_85", 0.385278 AS "sv_86", -0.920911 AS "sv_87", 1.124128 AS "sv_88", -0.597292 AS "sv_89", 1.836516 AS "sv_90", -0.081087 AS "sv_91", -0.052629 AS "sv_92", -1.391916 AS "sv_93", 0.340428 AS "sv_94", -0.772400 AS "sv_95", 0.623189 AS "sv_96", 1.726301 AS "sv_97", -0.589369 AS "sv_98", -0.171224 AS "sv_99"
     UNION ALL
     SELECT 7 AS "sv_idx", -0.199998 AS "coeff", -0.205714 AS "sv_0", 0.403836 AS "sv_1", 0.452041 AS "sv_2", 0.008365 AS "sv_3", -0.843933 AS "sv_4", 0.900946 AS "sv_5", 1.069667 AS "sv_6", -0.103234 AS "sv_7", 0.481234 AS "sv_8", -0.078200 AS "sv_9", 1.338291 AS "sv_10", 0.006002 AS "sv_11", -0.993234 AS "sv_12", 0.403839 AS "sv_13", 0.367786 AS "sv_14", 1.412539 AS "sv_15", 0.318922 AS "sv_16", 0.479516 AS "sv_17", 0.580131 AS "sv_18", -0.897017 AS "sv_19", 0.371131 AS "sv_20", -0.258494 AS "sv_21", -0.419700 AS "sv_22", 0.379916 AS "sv_23", -2.154129 AS "sv_24", 0.374189 AS "sv_25", 1.184411 AS "sv_26", 0.511572 AS "sv_27", 0.192555 AS "sv_28", 1.594586 AS "sv_29", -0.888542 AS "sv_30", 0.437673 AS "sv_31", -1.406800 AS "sv_32", -0.670204 AS "sv_33", 0.264466 AS "sv_34", 0.344441 AS "sv_35", -0.646859 AS "sv_36", 1.688010 AS "sv_37", -1.123240 AS "sv_38", 0.510680 AS "sv_39", -1.717029 AS "sv_40", -0.264321 AS "sv_41", -0.005945 AS "sv_42", 1.054088 AS "sv_43", -1.447843 AS "sv_44", -0.427246 AS "sv_45", -1.260534 AS "sv_46", 0.466896 AS "sv_47", -0.285438 AS "sv_48", 0.142343 AS "sv_49", 1.820591 AS "sv_50", 0.426129 AS "sv_51", 2.645737 AS "sv_52", -0.315870 AS "sv_53", 0.589650 AS "sv_54", -0.523674 AS "sv_55", -0.145117 AS "sv_56", -1.146113 AS "sv_57", -0.046670 AS "sv_58", -0.824898 AS "sv_59", -1.312408 AS "sv_60", 1.384737 AS "sv_61", -1.097019 AS "sv_62", -0.063702 AS "sv_63", -0.183233 AS "sv_64", -0.655146 AS "sv_65", 2.602723 AS "sv_66", 0.535547 AS "sv_67", -1.982171 AS "sv_68", -1.953369 AS "sv_69", 0.116266 AS "sv_70", 0.743952 AS "sv_71", 1.383616 AS "sv_72", 0.142718 AS "sv_73", -0.327572 AS "sv_74", 0.494399 AS "sv_75", 0.296705 AS "sv_76", 0.334081 AS "sv_77", 0.158101 AS "sv_78", 0.280647 AS "sv_79", 0.021289 AS "sv_80", 0.600151 AS "sv_81", 0.447386 AS "sv_82", -0.691302 AS "sv_83", -1.434124 AS "sv_84", 1.161341 AS "sv_85", 0.357548 AS "sv_86", -0.085639 AS "sv_87", -1.109192 AS "sv_88", -1.388162 AS "sv_89", 1.108939 AS "sv_90", -0.259823 AS "sv_91", 0.541134 AS "sv_92", -1.051415 AS "sv_93", -1.152692 AS "sv_94", -1.014193 AS "sv_95", 0.835575 AS "sv_96", -1.847369 AS "sv_97", 2.011399 AS "sv_98", -0.893038 AS "sv_99"
   ) AS "Values"
 )
,"Kernel_DotProd" AS
 ( SELECT
    dp."index" as "index",
    dp."dot_product" AS "Estimator"
   FROM
    (SELECT
      full_join_data_sv."index" AS "index",
      sum(CAST(full_join_data_sv.dot_prod AS FLOAT)) - 7.643539 AS dot_product
     FROM
       (SELECT
          model_input."index" AS "index",
          "SV_data"."coeff" *  EXP( MIN( MAX( CAST(-32.0 AS FLOAT), -0.009945 * (power(model_input."X_0" - "SV_data".sv_0, 2) + power(model_input."X_1" - "SV_data".sv_1, 2) + power(model_input."X_2" - "SV_data".sv_2, 2) + power(model_input."X_3" - "SV_data".sv_3, 2) + power(model_input."X_4" - "SV_data".sv_4, 2) + power(model_input."X_5" - "SV_data".sv_5, 2) + power(model_input."X_6" - "SV_data".sv_6, 2) + power(model_input."X_7" - "SV_data".sv_7, 2) + power(model_input."X_8" - "SV_data".sv_8, 2) + power(model_input."X_9" - "SV_data".sv_9, 2) + power(model_input."X_10" - "SV_data".sv_10, 2) + power(model_input."X_11" - "SV_data".sv_11, 2) + power(model_input."X_12" - "SV_data".sv_12, 2) + power(model_input."X_13" - "SV_data".sv_13, 2) + power(model_input."X_14" - "SV_data".sv_14, 2) + power(model_input."X_15" - "SV_data".sv_15, 2) + power(model_input."X_16" - "SV_data".sv_16, 2) + power(model_input."X_17" - "SV_data".sv_17, 2) + power(model_input."X_18" - "SV_data".sv_18, 2) + power(model_input."X_19" - "SV_data".sv_19, 2) + power(model_input."X_20" - "SV_data".sv_20, 2) + power(model_input."X_21" - "SV_data".sv_21, 2) + power(model_input."X_22" - "SV_data".sv_22, 2) + power(model_input."X_23" - "SV_data".sv_23, 2) + power(model_input."X_24" - "SV_data".sv_24, 2) + power(model_input."X_25" - "SV_data".sv_25, 2) + power(model_input."X_26" - "SV_data".sv_26, 2) + power(model_input."X_27" - "SV_data".sv_27, 2) + power(model_input."X_28" - "SV_data".sv_28, 2) + power(model_input."X_29" - "SV_data".sv_29, 2) + power(model_input."X_30" - "SV_data".sv_30, 2) + power(model_input."X_31" - "SV_data".sv_31, 2) + power(model_input."X_32" - "SV_data".sv_32, 2) + power(model_input."X_33" - "SV_data".sv_33, 2) + power(model_input."X_34" - "SV_data".sv_34, 2) + power(model_input."X_35" - "SV_data".sv_35, 2) + power(model_input."X_36" - "SV_data".sv_36, 2) + power(model_input."X_37" - "SV_data".sv_37, 2) + power(model_input."X_38" - "SV_data".sv_38, 2) + power(model_input."X_39" - "SV_data".sv_39, 2) + power(model_input."X_40" - "SV_data".sv_40, 2) + power(model_input."X_41" - "SV_data".sv_41, 2) + power(model_input."X_42" - "SV_data".sv_42, 2) + power(model_input."X_43" - "SV_data".sv_43, 2) + power(model_input."X_44" - "SV_data".sv_44, 2) + power(model_input."X_45" - "SV_data".sv_45, 2) + power(model_input."X_46" - "SV_data".sv_46, 2) + power(model_input."X_47" - "SV_data".sv_47, 2) + power(model_input."X_48" - "SV_data".sv_48, 2) + power(model_input."X_49" - "SV_data".sv_49, 2) + power(model_input."X_50" - "SV_data".sv_50, 2) + power(model_input."X_51" - "SV_data".sv_51, 2) + power(model_input."X_52" - "SV_data".sv_52, 2) + power(model_input."X_53" - "SV_data".sv_53, 2) + power(model_input."X_54" - "SV_data".sv_54, 2) + power(model_input."X_55" - "SV_data".sv_55, 2) + power(model_input."X_56" - "SV_data".sv_56, 2) + power(model_input."X_57" - "SV_data".sv_57, 2) + power(model_input."X_58" - "SV_data".sv_58, 2) + power(model_input."X_59" - "SV_data".sv_59, 2) + power(model_input."X_60" - "SV_data".sv_60, 2) + power(model_input."X_61" - "SV_data".sv_61, 2) + power(model_input."X_62" - "SV_data".sv_62, 2) + power(model_input."X_63" - "SV_data".sv_63, 2) + power(model_input."X_64" - "SV_data".sv_64, 2) + power(model_input."X_65" - "SV_data".sv_65, 2) + power(model_input."X_66" - "SV_data".sv_66, 2) + power(model_input."X_67" - "SV_data".sv_67, 2) + power(model_input."X_68" - "SV_data".sv_68, 2) + power(model_input."X_69" - "SV_data".sv_69, 2) + power(model_input."X_70" - "SV_data".sv_70, 2) + power(model_input."X_71" - "SV_data".sv_71, 2) + power(model_input."X_72" - "SV_data".sv_72, 2) + power(model_input."X_73" - "SV_data".sv_73, 2) + power(model_input."X_74" - "SV_data".sv_74, 2) + power(model_input."X_75" - "SV_data".sv_75, 2) + power(model_input."X_76" - "SV_data".sv_76, 2) + power(model_input."X_77" - "SV_data".sv_77, 2) + power(model_input."X_78" - "SV_data".sv_78, 2) + power(model_input."X_79" - "SV_data".sv_79, 2) + power(model_input."X_80" - "SV_data".sv_80, 2) + power(model_input."X_81" - "SV_data".sv_81, 2) + power(model_input."X_82" - "SV_data".sv_82, 2) + power(model_input."X_83" - "SV_data".sv_83, 2) + power(model_input."X_84" - "SV_data".sv_84, 2) + power(model_input."X_85" - "SV_data".sv_85, 2) + power(model_input."X_86" - "SV_data".sv_86, 2) + power(model_input."X_87" - "SV_data".sv_87, 2) + power(model_input."X_88" - "SV_data".sv_88, 2) + power(model_input."X_89" - "SV_data".sv_89, 2) + power(model_input."X_90" - "SV_data".sv_90, 2) + power(model_input."X_91" - "SV_data".sv_91, 2) + power(model_input."X_92" - "SV_data".sv_92, 2) + power(model_input."X_93" - "SV_data".sv_93, 2) + power(model_input."X_94" - "SV_data".sv_94, 2) + power(model_input."X_95" - "SV_data".sv_95, 2) + power(model_input."X_96" - "SV_data".sv_96, 2) + power(model_input."X_97" - "SV_data".sv_97, 2) + power(model_input."X_98" - "SV_data".sv_98, 2) + power(model_input."X_99" - "SV_data".sv_99, 2)) ), CAST(32.0 AS FLOAT) ) )  AS "dot_prod" 
        FROM
          model_input, "SV_data"
       ) AS full_join_data_sv
     GROUP BY full_join_data_sv."index"
    ) AS dp )
SELECT
  t."index" as "index",
  t."Estimator" as "Estimator"
FROM "Kernel_DotProd" AS t
