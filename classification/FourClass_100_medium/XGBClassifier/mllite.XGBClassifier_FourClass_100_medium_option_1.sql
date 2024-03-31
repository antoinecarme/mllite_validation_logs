WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_31" < -0.210214) THEN CASE WHEN (t."X_62" < 0.349293) THEN CASE WHEN (t."X_60" < -0.181820) THEN CASE WHEN (t."X_11" < 0.757797) THEN CASE WHEN (t."X_8" < -0.038456) THEN 31 ELSE 32 END ELSE 16 END ELSE CASE WHEN (t."X_49" < -0.339188) THEN CASE WHEN (t."X_35" < 1.088304) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_17" < -0.044225) THEN 35 ELSE 36 END END END ELSE CASE WHEN (t."X_66" < -1.853760) THEN CASE WHEN (t."X_53" < 0.208092) THEN CASE WHEN (t."X_9" < 0.022803) THEN 37 ELSE 38 END ELSE 20 END ELSE CASE WHEN (t."X_60" < -0.181820) THEN CASE WHEN (t."X_18" < 0.114315) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_49" < -0.339188) THEN CASE WHEN (t."X_17" < 0.199541) THEN 47 ELSE 48 END ELSE 42 END END END END ELSE CASE WHEN (t."X_49" < 0.246988) THEN CASE WHEN (t."X_62" < -1.298988) THEN CASE WHEN (t."X_79" < 2.118776) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_79" < -2.608295) THEN 25 ELSE CASE WHEN (t."X_4" < -0.849381) THEN CASE WHEN (t."X_65" < -0.043616) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_82" < -0.852338) THEN 51 ELSE 52 END END END END ELSE CASE WHEN (t."X_46" < 0.139348) THEN CASE WHEN (t."X_31" < 0.818610) THEN 27 ELSE 28 END ELSE CASE WHEN (t."X_62" < 1.407761) THEN CASE WHEN (t."X_11" < -1.632451) THEN 45 ELSE 46 END ELSE 30 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 16 AS nid,  -0.150725 AS "P_0", -0.178786 AS "P_1", -0.177405 AS "P_2", 0.505646 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  0.090108 AS "P_0", 0.020478 AS "P_1", 0.024113 AS "P_2", -0.135652 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  -0.089292 AS "P_0", -0.127980 AS "P_1", -0.169577 AS "P_2", 0.385025 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  0.254886 AS "P_0", -0.167554 AS "P_1", -0.166136 AS "P_2", 0.071633 AS "P_3"
    UNION ALL
    SELECT 25 AS nid,  -0.013460 AS "P_0", 0.162215 AS "P_1", -0.004029 AS "P_2", -0.143825 AS "P_3"
    UNION ALL
    SELECT 27 AS nid,  -0.138292 AS "P_0", 0.137016 AS "P_1", 0.181286 AS "P_2", -0.174322 AS "P_3"
    UNION ALL
    SELECT 28 AS nid,  -0.069185 AS "P_0", 0.371118 AS "P_1", -0.149547 AS "P_2", -0.151964 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  0.318507 AS "P_0", -0.057214 AS "P_1", -0.093767 AS "P_2", -0.174322 AS "P_3"
    UNION ALL
    SELECT 31 AS nid,  0.019771 AS "P_0", -0.007406 AS "P_1", -0.072673 AS "P_2", 0.058781 AS "P_3"
    UNION ALL
    SELECT 32 AS nid,  -0.089292 AS "P_0", -0.127980 AS "P_1", -0.169577 AS "P_2", 0.385025 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  -0.170188 AS "P_0", 0.073262 AS "P_1", -0.020044 AS "P_2", 0.119586 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.150725 AS "P_0", -0.178786 AS "P_1", -0.082447 AS "P_2", 0.412238 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  -0.135045 AS "P_0", -0.131619 AS "P_1", 0.448262 AS "P_2", -0.173010 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  -0.173605 AS "P_0", -0.170986 AS "P_1", 0.221859 AS "P_2", 0.128141 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  -0.171994 AS "P_0", -0.169367 AS "P_1", 0.521270 AS "P_2", -0.169941 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  -0.170188 AS "P_0", -0.071228 AS "P_1", 0.418234 AS "P_2", -0.168130 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  -0.170188 AS "P_0", -0.071228 AS "P_1", -0.117439 AS "P_2", 0.359350 AS "P_3"
    UNION ALL
    SELECT 40 AS nid,  0.064991 AS "P_0", 0.031662 AS "P_1", -0.088463 AS "P_2", -0.010463 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  -0.175052 AS "P_0", 0.154123 AS "P_1", 0.159257 AS "P_2", -0.132374 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  -0.075727 AS "P_0", 0.025099 AS "P_1", -0.068741 AS "P_2", 0.119586 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  -0.101250 AS "P_0", -0.040916 AS "P_1", 0.302280 AS "P_2", -0.153644 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  -0.170188 AS "P_0", 0.410405 AS "P_1", -0.166136 AS "P_2", -0.072225 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  -0.135045 AS "P_0", 0.480686 AS "P_1", -0.171036 AS "P_2", -0.173010 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  0.302116 AS "P_0", -0.167554 AS "P_1", -0.117439 AS "P_2", -0.024272 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  0.113194 AS "P_0", 0.121425 AS "P_1", -0.117439 AS "P_2", -0.120177 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  0.247958 AS "P_0", 0.044044 AS "P_1", -0.169577 AS "P_2", -0.128744 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  0.470710 AS "P_0", -0.165441 AS "P_1", -0.176773 AS "P_2", -0.140605 AS "P_3"
  ) AS "Values")
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_0" AS t1
   LEFT OUTER JOIN
   "DT_node_data_0" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_1" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_31" < -0.210214) THEN CASE WHEN (t."X_62" < 0.349293) THEN CASE WHEN (t."X_60" < -0.181820) THEN CASE WHEN (t."X_65" < 0.609327) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_49" < -0.821284) THEN 17 ELSE CASE WHEN (t."X_26" < -0.503999) THEN 27 ELSE CASE WHEN (t."X_81" < -0.215834) THEN 37 ELSE 38 END END END END ELSE CASE WHEN (t."X_66" < -0.779222) THEN CASE WHEN (t."X_46" < 0.638314) THEN CASE WHEN (t."X_51" < 0.524022) THEN CASE WHEN (t."X_37" < 0.077746) THEN 39 ELSE 40 END ELSE 30 END ELSE 20 END ELSE CASE WHEN (t."X_79" < -2.608295) THEN 21 ELSE CASE WHEN (t."X_60" < -0.181820) THEN 31 ELSE 32 END END END END ELSE CASE WHEN (t."X_49" < -1.346308) THEN CASE WHEN (t."X_72" < -0.858378) THEN 11 ELSE CASE WHEN (t."X_22" < 0.234639) THEN 23 ELSE 24 END END ELSE CASE WHEN (t."X_62" < -1.298988) THEN 13 ELSE CASE WHEN (t."X_11" < 1.844347) THEN CASE WHEN (t."X_53" < 0.834857) THEN CASE WHEN (t."X_95" < -0.530653) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_85" < -0.050340) THEN 43 ELSE 44 END END ELSE CASE WHEN (t."X_80" < -0.330203) THEN 35 ELSE 36 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 11 AS nid,  0.170033 AS "P_0", -0.173050 AS "P_1", -0.166487 AS "P_2", 0.117142 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  -0.093596 AS "P_0", -0.065892 AS "P_1", -0.031077 AS "P_2", 0.174627 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  -0.178951 AS "P_0", -0.096259 AS "P_1", -0.090494 AS "P_2", 0.284210 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  0.055049 AS "P_0", -0.094250 AS "P_1", -0.172194 AS "P_2", 0.164069 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.135031 AS "P_0", -0.070400 AS "P_1", -0.138366 AS "P_2", 0.271043 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  0.089887 AS "P_0", 0.032153 AS "P_1", -0.047948 AS "P_2", -0.077340 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  -0.166953 AS "P_0", 0.417704 AS "P_1", -0.168468 AS "P_2", -0.168536 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  0.365258 AS "P_0", -0.158927 AS "P_1", -0.150697 AS "P_2", -0.157901 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  0.153457 AS "P_0", -0.039741 AS "P_1", -0.063431 AS "P_2", -0.082357 AS "P_3"
    UNION ALL
    SELECT 27 AS nid,  -0.161427 AS "P_0", -0.116233 AS "P_1", 0.353240 AS "P_2", -0.133343 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  -0.164397 AS "P_0", 0.111832 AS "P_1", 0.136087 AS "P_2", -0.112064 AS "P_3"
    UNION ALL
    SELECT 31 AS nid,  0.017264 AS "P_0", -0.110817 AS "P_1", -0.098739 AS "P_2", 0.170019 AS "P_3"
    UNION ALL
    SELECT 32 AS nid,  -0.138484 AS "P_0", 0.200777 AS "P_1", -0.048599 AS "P_2", -0.074888 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  -0.175858 AS "P_0", 0.319356 AS "P_1", -0.021485 AS "P_2", -0.158804 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  0.060209 AS "P_0", 0.187811 AS "P_1", -0.121696 AS "P_2", -0.159690 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  -0.110607 AS "P_0", -0.110790 AS "P_1", 0.208728 AS "P_2", -0.031921 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  -0.160959 AS "P_0", -0.113808 AS "P_1", 0.020477 AS "P_2", 0.211449 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  -0.119928 AS "P_0", -0.069389 AS "P_1", 0.291217 AS "P_2", -0.158692 AS "P_3"
    UNION ALL
    SELECT 40 AS nid,  -0.159814 AS "P_0", -0.165386 AS "P_1", 0.354437 AS "P_2", -0.111755 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  0.013070 AS "P_0", -0.138928 AS "P_1", 0.177510 AS "P_2", -0.049412 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  -0.045306 AS "P_0", 0.205989 AS "P_1", -0.029891 AS "P_2", -0.143290 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  0.340966 AS "P_0", -0.126416 AS "P_1", -0.141157 AS "P_2", -0.138563 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  0.085822 AS "P_0", -0.005591 AS "P_1", -0.006244 AS "P_2", -0.091857 AS "P_3"
  ) AS "Values")
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_1" AS t1
   LEFT OUTER JOIN
   "DT_node_data_1" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_2" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_62" < -0.061923) THEN CASE WHEN (t."X_60" < 0.291455) THEN CASE WHEN (t."X_46" < -0.784039) THEN 7 ELSE CASE WHEN (t."X_53" < 1.890931) THEN CASE WHEN (t."X_35" < 0.011316) THEN CASE WHEN (t."X_50" < 0.004721) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_7" < 0.242713) THEN 35 ELSE 36 END END ELSE 16 END END ELSE CASE WHEN (t."X_49" < -0.339188) THEN 9 ELSE CASE WHEN (t."X_31" < -1.298842) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_31" < -0.670421) THEN CASE WHEN (t."X_49" < -0.821284) THEN CASE WHEN (t."X_35" < 1.088304) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_65" < 0.609327) THEN CASE WHEN (t."X_83" < 0.100022) THEN 29 ELSE 30 END ELSE 22 END END ELSE CASE WHEN (t."X_49" < 1.481301) THEN CASE WHEN (t."X_60" < 1.282545) THEN CASE WHEN (t."X_49" < -1.346308) THEN CASE WHEN (t."X_49" < -2.043981) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_58" < -0.359959) THEN 39 ELSE 40 END END ELSE 24 END ELSE CASE WHEN (t."X_52" < 0.237070) THEN 25 ELSE 26 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 7 AS nid,  -0.136029 AS "P_0", 0.219876 AS "P_1", -0.015607 AS "P_2", -0.062136 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  -0.076818 AS "P_0", -0.132647 AS "P_1", -0.078314 AS "P_2", 0.204840 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  0.131699 AS "P_0", -0.055866 AS "P_1", -0.050600 AS "P_2", -0.056249 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.113401 AS "P_0", -0.112986 AS "P_1", 0.092205 AS "P_2", 0.074415 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  -0.108052 AS "P_0", -0.051315 AS "P_1", 0.283354 AS "P_2", -0.175346 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  -0.164805 AS "P_0", 0.300456 AS "P_1", -0.119670 AS "P_2", -0.114590 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  -0.117919 AS "P_0", 0.040456 AS "P_1", -0.123121 AS "P_2", 0.171895 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  -0.070617 AS "P_0", 0.111492 AS "P_1", -0.059449 AS "P_2", 0.008756 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  -0.030236 AS "P_0", 0.266821 AS "P_1", -0.135353 AS "P_2", -0.164176 AS "P_3"
    UNION ALL
    SELECT 25 AS nid,  -0.036321 AS "P_0", -0.103268 AS "P_1", 0.223571 AS "P_2", -0.110027 AS "P_3"
    UNION ALL
    SELECT 26 AS nid,  -0.089093 AS "P_0", 0.245702 AS "P_1", -0.097152 AS "P_2", -0.123322 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  -0.109703 AS "P_0", -0.155913 AS "P_1", 0.321406 AS "P_2", -0.168953 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  -0.085174 AS "P_0", -0.131961 AS "P_1", 0.118420 AS "P_2", 0.071830 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  -0.140133 AS "P_0", -0.165917 AS "P_1", -0.161366 AS "P_2", 0.338153 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.132961 AS "P_0", -0.018790 AS "P_1", -0.157405 AS "P_2", 0.249216 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  -0.038808 AS "P_0", -0.146003 AS "P_1", -0.026729 AS "P_2", 0.158923 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  0.212477 AS "P_0", -0.111505 AS "P_1", -0.156140 AS "P_2", 0.000753 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  0.267528 AS "P_0", -0.148813 AS "P_1", -0.167084 AS "P_2", -0.079378 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  0.145367 AS "P_0", -0.117291 AS "P_1", 0.072458 AS "P_2", -0.158455 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  0.008303 AS "P_0", 0.100822 AS "P_1", -0.058728 AS "P_2", -0.069459 AS "P_3"
    UNION ALL
    SELECT 40 AS nid,  0.220225 AS "P_0", -0.024902 AS "P_1", -0.103374 AS "P_2", -0.155545 AS "P_3"
  ) AS "Values")
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_2" AS t1
   LEFT OUTER JOIN
   "DT_node_data_2" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_3" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_31" < -0.670421) THEN CASE WHEN (t."X_46" < 0.139348) THEN CASE WHEN (t."X_66" < 0.415461) THEN CASE WHEN (t."X_53" < -0.188129) THEN 15 ELSE CASE WHEN (t."X_99" < -0.010712) THEN 25 ELSE 26 END END ELSE 8 END ELSE CASE WHEN (t."X_62" < 1.407761) THEN CASE WHEN (t."X_35" < 0.011316) THEN 17 ELSE CASE WHEN (t."X_3" < -0.590541) THEN 27 ELSE CASE WHEN (t."X_50" < 0.477706) THEN 33 ELSE 34 END END END ELSE 10 END END ELSE CASE WHEN (t."X_62" < -1.298988) THEN CASE WHEN (t."X_53" < -0.733834) THEN 11 ELSE CASE WHEN (t."X_65" < -0.043616) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_49" < 1.481301) THEN CASE WHEN (t."X_79" < -1.512125) THEN CASE WHEN (t."X_60" < 0.798198) THEN CASE WHEN (t."X_66" < -0.779222) THEN 35 ELSE 36 END ELSE 30 END ELSE CASE WHEN (t."X_27" < -0.606454) THEN CASE WHEN (t."X_60" < -1.368411) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_65" < -0.043616) THEN 39 ELSE 40 END END END ELSE CASE WHEN (t."X_79" < 2.118776) THEN 23 ELSE 24 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 8 AS nid,  -0.087662 AS "P_0", 0.126073 AS "P_1", -0.121018 AS "P_2", 0.037016 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.010337 AS "P_0", 0.120598 AS "P_1", -0.067262 AS "P_2", -0.084867 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  -0.170060 AS "P_0", -0.113816 AS "P_1", -0.152058 AS "P_2", 0.288037 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  -0.122640 AS "P_0", -0.106792 AS "P_1", 0.247943 AS "P_2", -0.171218 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.158854 AS "P_0", 0.091161 AS "P_1", -0.053124 AS "P_2", 0.080516 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  0.120980 AS "P_0", 0.033079 AS "P_1", 0.012797 AS "P_2", -0.169420 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  0.013144 AS "P_0", -0.104280 AS "P_1", -0.016250 AS "P_2", 0.075151 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  -0.102549 AS "P_0", -0.038426 AS "P_1", 0.192828 AS "P_2", -0.093152 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  -0.047893 AS "P_0", 0.198687 AS "P_1", -0.123423 AS "P_2", -0.090961 AS "P_3"
    UNION ALL
    SELECT 25 AS nid,  -0.112064 AS "P_0", -0.062974 AS "P_1", 0.195949 AS "P_2", -0.074274 AS "P_3"
    UNION ALL
    SELECT 26 AS nid,  -0.109603 AS "P_0", -0.069015 AS "P_1", 0.022841 AS "P_2", 0.124369 AS "P_3"
    UNION ALL
    SELECT 27 AS nid,  -0.105565 AS "P_0", -0.157175 AS "P_1", 0.137667 AS "P_2", 0.068514 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  -0.164157 AS "P_0", 0.300182 AS "P_1", -0.123861 AS "P_2", -0.152146 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  -0.162762 AS "P_0", -0.123471 AS "P_1", -0.098014 AS "P_2", 0.260099 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.021672 AS "P_0", -0.113052 AS "P_1", -0.165686 AS "P_2", 0.214704 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  -0.068814 AS "P_0", 0.015672 AS "P_1", 0.184931 AS "P_2", -0.151037 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  0.177656 AS "P_0", -0.018858 AS "P_1", -0.154165 AS "P_2", -0.078960 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  0.005469 AS "P_0", -0.154966 AS "P_1", -0.152094 AS "P_2", 0.242076 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  0.155655 AS "P_0", -0.028189 AS "P_1", -0.116783 AS "P_2", -0.090932 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  0.257248 AS "P_0", -0.163944 AS "P_1", -0.071205 AS "P_2", -0.147820 AS "P_3"
    UNION ALL
    SELECT 40 AS nid,  0.057935 AS "P_0", 0.095841 AS "P_1", -0.051177 AS "P_2", -0.143897 AS "P_3"
  ) AS "Values")
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_3" AS t1
   LEFT OUTER JOIN
   "DT_node_data_3" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_4" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_60" < -0.181820) THEN CASE WHEN (t."X_46" < -0.784039) THEN CASE WHEN (t."X_86" < 0.202495) THEN CASE WHEN (t."X_98" < 0.146438) THEN 15 ELSE 16 END ELSE 8 END ELSE CASE WHEN (t."X_62" < 2.169005) THEN CASE WHEN (t."X_31" < 0.238207) THEN CASE WHEN (t."X_82" < 0.447960) THEN CASE WHEN (t."X_13" < 0.262475) THEN 33 ELSE 34 END ELSE 26 END ELSE CASE WHEN (t."X_27" < -1.436091) THEN 27 ELSE CASE WHEN (t."X_79" < 0.428439) THEN 35 ELSE 36 END END END ELSE 10 END END ELSE CASE WHEN (t."X_49" < -0.821284) THEN CASE WHEN (t."X_31" < 0.818610) THEN CASE WHEN (t."X_62" < -0.647473) THEN 19 ELSE CASE WHEN (t."X_50" < 0.004721) THEN 29 ELSE 30 END END ELSE 12 END ELSE CASE WHEN (t."X_66" < 1.304021) THEN CASE WHEN (t."X_27" < -0.606454) THEN 21 ELSE CASE WHEN (t."X_53" < 1.369587) THEN CASE WHEN (t."X_46" < 1.050428) THEN 37 ELSE 38 END ELSE 32 END END ELSE CASE WHEN (t."X_62" < 1.407761) THEN 23 ELSE 24 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 8 AS nid,  -0.138650 AS "P_0", 0.279413 AS "P_1", -0.096983 AS "P_2", -0.121461 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  0.191823 AS "P_0", -0.022235 AS "P_1", -0.097794 AS "P_2", -0.162957 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  0.136887 AS "P_0", -0.056202 AS "P_1", -0.099357 AS "P_2", -0.053209 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  -0.013574 AS "P_0", 0.152791 AS "P_1", -0.014269 AS "P_2", -0.161728 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  0.037729 AS "P_0", -0.139019 AS "P_1", 0.093154 AS "P_2", 0.011627 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  -0.105284 AS "P_0", -0.101652 AS "P_1", -0.106350 AS "P_2", 0.179763 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  -0.164926 AS "P_0", 0.151671 AS "P_1", 0.093944 AS "P_2", -0.164194 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  -0.068595 AS "P_0", 0.133776 AS "P_1", -0.044663 AS "P_2", -0.025283 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  0.182532 AS "P_0", -0.079604 AS "P_1", -0.072813 AS "P_2", -0.097377 AS "P_3"
    UNION ALL
    SELECT 26 AS nid,  -0.083972 AS "P_0", 0.065554 AS "P_1", -0.171435 AS "P_2", 0.155484 AS "P_3"
    UNION ALL
    SELECT 27 AS nid,  0.058614 AS "P_0", -0.123998 AS "P_1", -0.156459 AS "P_2", 0.142824 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  -0.165543 AS "P_0", 0.108753 AS "P_1", -0.113417 AS "P_2", 0.104823 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  -0.149541 AS "P_0", 0.249471 AS "P_1", -0.109662 AS "P_2", -0.159877 AS "P_3"
    UNION ALL
    SELECT 32 AS nid,  0.039342 AS "P_0", -0.066875 AS "P_1", 0.027526 AS "P_2", -0.011064 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  0.071165 AS "P_0", -0.144623 AS "P_1", -0.108940 AS "P_2", 0.102263 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.149923 AS "P_0", -0.127148 AS "P_1", -0.078423 AS "P_2", 0.234698 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  0.002822 AS "P_0", 0.034039 AS "P_1", -0.045855 AS "P_2", 0.003749 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  0.209782 AS "P_0", -0.084237 AS "P_1", -0.102454 AS "P_2", -0.167246 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  -0.167931 AS "P_0", -0.153235 AS "P_1", 0.279673 AS "P_2", -0.123195 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  -0.038375 AS "P_0", 0.001939 AS "P_1", 0.081873 AS "P_2", -0.074479 AS "P_3"
  ) AS "Values")
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 )
,
union_of_trees AS 
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1", scu."P_2" AS "P_2", scu."P_3" AS "P_3"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_4" AS t
  ) AS scu
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.279297 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.244141 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   0.224609 + SUM(t."P_2") AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   0.251953 + SUM(t."P_3") AS "Score_3",
   CAST(NULL AS FLOAT) AS "Proba_3",
   CAST(NULL AS FLOAT) AS "LogProba_3"
  FROM "union_of_trees" t
  GROUP BY t."index"
 ),
soft_max_orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   t."Score_2" AS "Score_2",
   t."Proba_2" AS "Proba_2",
   t."LogProba_2" AS "LogProba_2",
   t."Score_3" AS "Score_3",
   t."Proba_3" AS "Proba_3",
   t."LogProba_3" AS "LogProba_3",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX(t."Score_0", t."Score_1", t."Score_2", t."Score_3") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1.*,
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" ) AS "Sum_Exp"
  FROM
   ( SELECT t.*,
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2",
        EXP(t."Score_3" - t."Greatest_Score") as "Exp_Score_3"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    CAST(NULL AS FLOAT) AS "LogProba_2",
    t1."Exp_Score_2" / t1."Sum_Exp" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    CAST(NULL AS FLOAT) AS "LogProba_3",
    t1."Exp_Score_3" / t1."Sum_Exp" AS "Proba_3",
    t1."Score_3" AS "Score_3"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t.*,
   CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
   CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
   CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
   CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3" ) AS argmax_class_idx
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
  arg_max_cte."Score_2" AS "Score_2",
  arg_max_cte."Proba_2" AS "Proba_2",
  CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN LN( arg_max_cte."Proba_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
  arg_max_cte."Score_3" AS "Score_3",
  arg_max_cte."Proba_3" AS "Proba_3",
  CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN LN( arg_max_cte."Proba_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte