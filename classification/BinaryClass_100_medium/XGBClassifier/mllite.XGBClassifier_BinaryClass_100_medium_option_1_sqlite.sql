WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_61" < 0.391591) THEN CASE WHEN (t."X_1" < -0.479853) THEN CASE WHEN (t."X_69" < 0.971975) THEN CASE WHEN (t."X_15" < 1.298821) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_39" < 0.189472) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_67" < 1.017314) THEN CASE WHEN (t."X_67" < 0.777994) THEN CASE WHEN (t."X_67" < 0.153388) THEN CASE WHEN (t."X_32" < -0.161997) THEN 31 ELSE 32 END ELSE CASE WHEN (t."X_95" < 0.300220) THEN 33 ELSE 34 END END ELSE CASE WHEN (t."X_59" < 0.098510) THEN CASE WHEN (t."X_5" < 0.210086) THEN 35 ELSE 36 END ELSE CASE WHEN (t."X_38" < -0.458885) THEN 37 ELSE 38 END END END ELSE 10 END END ELSE CASE WHEN (t."X_1" < 0.015178) THEN CASE WHEN (t."X_65" < -0.310588) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_61" < 0.828688) THEN CASE WHEN (t."X_45" < 0.300555) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_96" < -1.222901) THEN 23 ELSE CASE WHEN (t."X_62" < 1.145470) THEN 29 ELSE 30 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 10 AS nid,  0.272093 AS "P_0", -0.272093 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.050000 AS "P_0", -0.050000 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.250000 AS "P_0", 0.250000 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.289565 AS "P_0", -0.289565 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.150000 AS "P_0", -0.150000 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.236842 AS "P_0", -0.236842 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.000000 AS "P_0", -0.000000 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.233333 AS "P_0", 0.233333 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.020000 AS "P_0", 0.020000 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.171429 AS "P_0", 0.171429 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.295122 AS "P_0", 0.295122 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  -0.187500 AS "P_0", 0.187500 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.123529 AS "P_0", -0.123529 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.132000 AS "P_0", 0.132000 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  0.270000 AS "P_0", -0.270000 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  0.020000 AS "P_0", -0.020000 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.128571 AS "P_0", 0.128571 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  0.150000 AS "P_0", -0.150000 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  -0.100000 AS "P_0", 0.100000 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.260000 AS "P_0", 0.260000 AS "P_1"
  ) AS "Values")
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_61" < 0.391591) THEN CASE WHEN (t."X_4" < -0.640287) THEN 3 ELSE CASE WHEN (t."X_67" < 1.017314) THEN CASE WHEN (t."X_51" < 0.834518) THEN CASE WHEN (t."X_61" < -0.080115) THEN CASE WHEN (t."X_34" < 0.861716) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_57" < 0.034492) THEN 25 ELSE 26 END END ELSE CASE WHEN (t."X_68" < -0.507692) THEN 19 ELSE CASE WHEN (t."X_58" < 0.021797) THEN 27 ELSE 28 END END END ELSE 8 END END ELSE CASE WHEN (t."X_12" < -1.183949) THEN CASE WHEN (t."X_8" < -0.656028) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_76" < -1.345022) THEN 11 ELSE CASE WHEN (t."X_22" < 0.508510) THEN 15 ELSE CASE WHEN (t."X_55" < 0.002876) THEN 21 ELSE CASE WHEN (t."X_34" < 0.030387) THEN 29 ELSE 30 END END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.229869 AS "P_0", -0.229869 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.216746 AS "P_0", -0.216746 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.051237 AS "P_0", -0.051237 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.199792 AS "P_0", 0.199792 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.104876 AS "P_0", 0.104876 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.232724 AS "P_0", 0.232724 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.065858 AS "P_0", -0.065858 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.228259 AS "P_0", 0.228259 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.145625 AS "P_0", -0.145625 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.056924 AS "P_0", 0.056924 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.064766 AS "P_0", -0.064766 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.204769 AS "P_0", 0.204769 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.083582 AS "P_0", 0.083582 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.253718 AS "P_0", 0.253718 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.202518 AS "P_0", 0.202518 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.111669 AS "P_0", -0.111669 AS "P_1"
  ) AS "Values")
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_61" < 0.391591) THEN CASE WHEN (t."X_4" < -0.346475) THEN CASE WHEN (t."X_63" < -1.242133) THEN 7 ELSE CASE WHEN (t."X_75" < -1.218813) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_67" < 1.017314) THEN CASE WHEN (t."X_41" < 0.761610) THEN CASE WHEN (t."X_20" < 0.147611) THEN CASE WHEN (t."X_41" < 0.166845) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_54" < 0.900104) THEN 31 ELSE 32 END END ELSE CASE WHEN (t."X_93" < -0.025755) THEN 25 ELSE 26 END END ELSE 10 END END ELSE CASE WHEN (t."X_61" < 0.828688) THEN CASE WHEN (t."X_37" < -0.250216) THEN 11 ELSE CASE WHEN (t."X_8" < -0.656028) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_79" < 1.345956) THEN CASE WHEN (t."X_66" < 0.844213) THEN 21 ELSE CASE WHEN (t."X_88" < 0.048199) THEN 27 ELSE 28 END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  0.050032 AS "P_0", -0.050032 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.182179 AS "P_0", -0.182179 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.038105 AS "P_0", -0.038106 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.069027 AS "P_0", 0.069027 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.045395 AS "P_0", -0.045395 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.204427 AS "P_0", -0.204427 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.061199 AS "P_0", 0.061199 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.201294 AS "P_0", 0.201294 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.201585 AS "P_0", 0.201585 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.241589 AS "P_0", 0.241589 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.048459 AS "P_0", 0.048459 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.043329 AS "P_0", 0.043329 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.176221 AS "P_0", 0.176221 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.095070 AS "P_0", 0.095070 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.112804 AS "P_0", -0.112804 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.178087 AS "P_0", -0.178087 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.052440 AS "P_0", 0.052440 AS "P_1"
  ) AS "Values")
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_61" < -0.080115) THEN CASE WHEN (t."X_4" < -0.640287) THEN 3 ELSE CASE WHEN (t."X_67" < 1.017314) THEN CASE WHEN (t."X_51" < 0.834518) THEN CASE WHEN (t."X_46" < 0.138645) THEN CASE WHEN (t."X_34" < 0.861716) THEN 25 ELSE 26 END ELSE CASE WHEN (t."X_78" < -0.226678) THEN 27 ELSE 28 END END ELSE 12 END ELSE 8 END END ELSE CASE WHEN (t."X_4" < -0.346475) THEN 5 ELSE CASE WHEN (t."X_16" < 0.056296) THEN CASE WHEN (t."X_61" < 0.828688) THEN CASE WHEN (t."X_49" < 0.290385) THEN CASE WHEN (t."X_93" < -0.307937) THEN 29 ELSE 30 END ELSE 20 END ELSE CASE WHEN (t."X_51" < -0.804084) THEN 21 ELSE 22 END END ELSE CASE WHEN (t."X_25" < -0.610721) THEN CASE WHEN (t."X_39" < -0.351654) THEN 23 ELSE 24 END ELSE 16 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.177052 AS "P_0", -0.177052 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.057835 AS "P_0", -0.057835 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.162755 AS "P_0", -0.162755 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.110541 AS "P_0", 0.110541 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.199411 AS "P_0", 0.199411 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.144288 AS "P_0", 0.144288 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.045802 AS "P_0", 0.045802 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.166920 AS "P_0", 0.166920 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.006425 AS "P_0", -0.006425 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.150564 AS "P_0", 0.150564 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.062275 AS "P_0", -0.062275 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.142074 AS "P_0", 0.142074 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.079836 AS "P_0", -0.079836 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.191788 AS "P_0", -0.191788 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.030787 AS "P_0", 0.030787 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.173276 AS "P_0", -0.173276 AS "P_1"
  ) AS "Values")
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_61" < 0.391591) THEN CASE WHEN (t."X_4" < -0.640287) THEN 3 ELSE CASE WHEN (t."X_67" < 1.017314) THEN CASE WHEN (t."X_23" < 1.334402) THEN CASE WHEN (t."X_15" < -1.197603) THEN 19 ELSE CASE WHEN (t."X_54" < -0.886608) THEN 23 ELSE 24 END END ELSE 14 END ELSE 8 END END ELSE CASE WHEN (t."X_63" < -0.484063) THEN CASE WHEN (t."X_75" < 0.554739) THEN CASE WHEN (t."X_67" < -0.460775) THEN 15 ELSE 16 END ELSE 10 END ELSE CASE WHEN (t."X_1" < 0.015178) THEN 11 ELSE CASE WHEN (t."X_61" < 0.828688) THEN CASE WHEN (t."X_98" < -0.292213) THEN 21 ELSE 22 END ELSE 18 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.162969 AS "P_0", -0.162969 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.149552 AS "P_0", -0.149552 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.065163 AS "P_0", -0.065163 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.023614 AS "P_0", 0.023614 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.151131 AS "P_0", -0.151131 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.161638 AS "P_0", 0.161638 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.064171 AS "P_0", 0.064171 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.175684 AS "P_0", 0.175684 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.113908 AS "P_0", -0.113908 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.015601 AS "P_0", -0.015601 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.172218 AS "P_0", 0.172218 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.074657 AS "P_0", -0.074657 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.062055 AS "P_0", 0.062055 AS "P_1"
  ) AS "Values")
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 )
,
union_of_trees AS 
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_4" AS t
  ) AS scu
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.500000 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.500000 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
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
),
arg_max_cte_with_max_proba AS 
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