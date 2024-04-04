WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_31" < 0.131135) THEN CASE WHEN (t."X_49" < -0.057512) THEN CASE WHEN (t."X_42" < -0.518000) THEN 7 ELSE CASE WHEN (t."X_64" < 0.407277) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_79" < 1.895574) THEN CASE WHEN (t."X_42" < 0.520968) THEN 17 ELSE 18 END ELSE 10 END END ELSE CASE WHEN (t."X_64" < -0.921869) THEN CASE WHEN (t."X_8" < -0.688667) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_30" < -0.997787) THEN 13 ELSE CASE WHEN (t."X_8" < 0.818181) THEN 19 ELSE 20 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 7 AS nid,  -0.027829 AS "P_0", 0.091323 AS "P_1", 0.073295 AS "P_2", -0.132694 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.106889 AS "P_0", 0.335045 AS "P_1", -0.107980 AS "P_2", -0.107980 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  -0.106889 AS "P_0", 0.335045 AS "P_1", -0.107980 AS "P_2", -0.107980 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.121058 AS "P_0", -0.114486 AS "P_1", -0.003639 AS "P_2", 0.233495 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  -0.106889 AS "P_0", 0.044594 AS "P_1", 0.031706 AS "P_2", 0.031706 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  -0.162074 AS "P_0", -0.155309 AS "P_1", -0.163269 AS "P_2", 0.470359 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  -0.027829 AS "P_0", -0.016736 AS "P_1", -0.029700 AS "P_2", 0.073295 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.162074 AS "P_0", -0.155309 AS "P_1", 0.470359 AS "P_2", -0.163269 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  0.033563 AS "P_0", -0.100631 AS "P_1", 0.031706 AS "P_2", 0.031706 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  0.491461 AS "P_0", -0.160335 AS "P_1", -0.168238 AS "P_2", -0.168238 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  0.033563 AS "P_0", 0.044594 AS "P_1", 0.031706 AS "P_2", -0.107980 AS "P_3"
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
    CASE WHEN (t."X_49" < -0.057512) THEN CASE WHEN (t."X_31" < 0.131135) THEN CASE WHEN (t."X_81" < -1.034436) THEN 7 ELSE CASE WHEN (t."X_2" < -0.601494) THEN 15 ELSE CASE WHEN (t."X_4" < 0.282560) THEN 19 ELSE 20 END END END ELSE CASE WHEN (t."X_14" < -0.489611) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_79" < 1.895574) THEN CASE WHEN (t."X_76" < 0.775320) THEN CASE WHEN (t."X_62" < 1.288845) THEN CASE WHEN (t."X_5" < 0.781963) THEN 21 ELSE 22 END ELSE 18 END ELSE 12 END ELSE CASE WHEN (t."X_11" < -0.783076) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 7 AS nid,  -0.024263 AS "P_0", -0.022324 AS "P_1", 0.169913 AS "P_2", -0.129487 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  -0.098628 AS "P_0", -0.096507 AS "P_1", -0.107945 AS "P_2", 0.277386 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  0.300261 AS "P_0", -0.131045 AS "P_1", -0.137302 AS "P_2", -0.137302 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  0.150341 AS "P_0", -0.127599 AS "P_1", 0.086301 AS "P_2", -0.140601 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  0.192340 AS "P_0", -0.106991 AS "P_1", -0.115565 AS "P_2", 0.003878 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  -0.122987 AS "P_0", 0.322320 AS "P_1", -0.123973 AS "P_2", -0.123973 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  -0.101291 AS "P_0", 0.196281 AS "P_1", -0.104811 AS "P_2", 0.013912 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  -0.126696 AS "P_0", 0.186856 AS "P_1", 0.057995 AS "P_2", -0.125570 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  -0.146141 AS "P_0", -0.140803 AS "P_1", -0.147063 AS "P_2", 0.324689 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  0.043630 AS "P_0", -0.098550 AS "P_1", -0.104811 AS "P_2", 0.148615 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  -0.139144 AS "P_0", -0.132243 AS "P_1", 0.315014 AS "P_2", -0.140088 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  -0.101032 AS "P_0", -0.095672 AS "P_1", 0.142783 AS "P_2", 0.036918 AS "P_3"
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
    CASE WHEN (t."X_49" < -0.057512) THEN CASE WHEN (t."X_14" < 0.922489) THEN CASE WHEN (t."X_21" < -0.578401) THEN 7 ELSE CASE WHEN (t."X_81" < -1.034436) THEN 13 ELSE CASE WHEN (t."X_40" < -1.016007) THEN 19 ELSE 20 END END END ELSE 4 END ELSE CASE WHEN (t."X_79" < 0.411511) THEN CASE WHEN (t."X_10" < -0.933886) THEN CASE WHEN (t."X_29" < 0.406000) THEN 15 ELSE 16 END ELSE 10 END ELSE CASE WHEN (t."X_46" < -0.132053) THEN CASE WHEN (t."X_10" < 0.631553) THEN 17 ELSE 18 END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 4 AS nid,  0.276326 AS "P_0", -0.110653 AS "P_1", -0.120156 AS "P_2", -0.117181 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  -0.116606 AS "P_0", 0.206773 AS "P_1", -0.124990 AS "P_2", 0.027134 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.144147 AS "P_0", -0.139768 AS "P_1", 0.308794 AS "P_2", -0.143352 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  0.235836 AS "P_0", -0.114803 AS "P_1", -0.056692 AS "P_2", -0.123870 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  -0.025258 AS "P_0", -0.110587 AS "P_1", 0.219744 AS "P_2", -0.105831 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  -0.001061 AS "P_0", -0.093586 AS "P_1", 0.150422 AS "P_2", -0.101276 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  -0.012257 AS "P_0", 0.120874 AS "P_1", -0.123224 AS "P_2", 0.019761 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.111911 AS "P_0", 0.199249 AS "P_1", -0.023582 AS "P_2", -0.114456 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  -0.097817 AS "P_0", 0.151072 AS "P_1", -0.101545 AS "P_2", 0.035799 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  0.135835 AS "P_0", -0.109830 AS "P_1", -0.116604 AS "P_2", 0.038318 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  -0.145697 AS "P_0", -0.141906 AS "P_1", -0.146062 AS "P_2", 0.292564 AS "P_3"
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
    CASE WHEN (t."X_66" < 2.605181) THEN CASE WHEN (t."X_49" < -0.057512) THEN CASE WHEN (t."X_42" < -0.518000) THEN 7 ELSE CASE WHEN (t."X_78" < 0.683709) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_75" < -1.039145) THEN 9 ELSE CASE WHEN (t."X_64" < 0.407277) THEN CASE WHEN (t."X_21" < 0.282229) THEN 17 ELSE 18 END ELSE 16 END END END ELSE CASE WHEN (t."X_32" < 0.561165) THEN CASE WHEN (t."X_70" < 0.749721) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 6 AS nid,  -0.106536 AS "P_0", -0.106160 AS "P_1", -0.106831 AS "P_2", 0.225125 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.023247 AS "P_0", 0.054941 AS "P_1", 0.031811 AS "P_2", -0.122260 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  0.173203 AS "P_0", -0.104129 AS "P_1", -0.007013 AS "P_2", -0.101666 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  0.246974 AS "P_0", -0.126611 AS "P_1", -0.140242 AS "P_2", -0.133659 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.017232 AS "P_0", -0.090744 AS "P_1", 0.102246 AS "P_2", -0.010552 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  -0.129792 AS "P_0", -0.121944 AS "P_1", -0.125432 AS "P_2", 0.235837 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  -0.096766 AS "P_0", 0.032109 AS "P_1", 0.024355 AS "P_2", 0.030028 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  -0.118075 AS "P_0", -0.119595 AS "P_1", 0.178727 AS "P_2", -0.026058 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.126238 AS "P_0", 0.025999 AS "P_1", 0.154735 AS "P_2", -0.121557 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  -0.116048 AS "P_0", 0.262560 AS "P_1", -0.124132 AS "P_2", -0.120046 AS "P_3"
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
    CASE WHEN (t."X_35" < -2.201298) THEN 1 ELSE CASE WHEN (t."X_49" < 1.580971) THEN CASE WHEN (t."X_60" < -0.430162) THEN CASE WHEN (t."X_14" < -0.489611) THEN 9 ELSE CASE WHEN (t."X_49" < -0.724980) THEN CASE WHEN (t."X_47" < 0.217660) THEN 23 ELSE 24 END ELSE 18 END END ELSE CASE WHEN (t."X_28" < -0.557758) THEN CASE WHEN (t."X_87" < -0.382564) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_54" < -0.349915) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_79" < 1.895574) THEN CASE WHEN (t."X_48" < -0.689314) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_13" < 0.706600) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  -0.110332 AS "P_0", -0.109370 AS "P_1", 0.220418 AS "P_2", -0.111680 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  -0.094821 AS "P_0", -0.092581 AS "P_1", -0.096331 AS "P_2", 0.182890 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  0.007315 AS "P_0", -0.090799 AS "P_1", 0.116624 AS "P_2", -0.089760 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  -0.114271 AS "P_0", -0.099428 AS "P_1", 0.219837 AS "P_2", -0.101945 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  -0.091750 AS "P_0", 0.122714 AS "P_1", -0.096334 AS "P_2", 0.023638 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  0.128723 AS "P_0", 0.007166 AS "P_1", -0.089163 AS "P_2", -0.088925 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  0.080529 AS "P_0", 0.092832 AS "P_1", -0.103918 AS "P_2", -0.092161 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  -0.096072 AS "P_0", -0.094136 AS "P_1", 0.173831 AS "P_2", -0.025680 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  0.004854 AS "P_0", -0.105467 AS "P_1", -0.122094 AS "P_2", 0.162245 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  -0.103908 AS "P_0", 0.269182 AS "P_1", -0.114890 AS "P_2", -0.109334 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  -0.093403 AS "P_0", 0.006469 AS "P_1", -0.102300 AS "P_2", 0.133383 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  0.220845 AS "P_0", -0.105189 AS "P_1", -0.113161 AS "P_2", -0.110608 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  0.084013 AS "P_0", -0.085762 AS "P_1", -0.089911 AS "P_2", 0.049575 AS "P_3"
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
"DT_node_lookup_5" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_31" < 0.131135) THEN CASE WHEN (t."X_35" < 0.980873) THEN CASE WHEN (t."X_60" < 0.400503) THEN CASE WHEN (t."X_8" < -0.098030) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_39" < -0.434619) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_45" < 0.326653) THEN CASE WHEN (t."X_4" < 0.143986) THEN 17 ELSE 18 END ELSE 10 END END ELSE CASE WHEN (t."X_92" < -0.844159) THEN 5 ELSE CASE WHEN (t."X_70" < -0.301521) THEN CASE WHEN (t."X_30" < -0.026976) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_80" < -0.233117) THEN 21 ELSE 22 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 5 AS nid,  -0.099491 AS "P_0", -0.094987 AS "P_1", 0.125068 AS "P_2", 0.022362 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  0.165887 AS "P_0", -0.005471 AS "P_1", -0.106060 AS "P_2", -0.092993 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  -0.105551 AS "P_0", -0.102321 AS "P_1", 0.133401 AS "P_2", 0.027494 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  -0.098765 AS "P_0", 0.008126 AS "P_1", -0.110836 AS "P_2", 0.152810 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  -0.090206 AS "P_0", 0.101337 AS "P_1", 0.062438 AS "P_2", -0.101307 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  -0.106993 AS "P_0", -0.104806 AS "P_1", 0.181587 AS "P_2", -0.104329 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.094991 AS "P_0", -0.093918 AS "P_1", -0.095576 AS "P_2", 0.165155 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  -0.089098 AS "P_0", 0.066934 AS "P_1", 0.001538 AS "P_2", 0.008848 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  -0.089562 AS "P_0", 0.186491 AS "P_1", -0.091232 AS "P_2", -0.090191 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  0.124038 AS "P_0", 0.016495 AS "P_1", -0.096459 AS "P_2", -0.093446 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  0.059349 AS "P_0", -0.089832 AS "P_1", -0.089882 AS "P_2", 0.079712 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  0.190239 AS "P_0", -0.096587 AS "P_1", -0.111316 AS "P_2", -0.108157 AS "P_3"
  ) AS "Values")
,
"DT_output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_5" AS t1
   LEFT OUTER JOIN
   "DT_node_data_5" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_6" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_72" < 0.066864) THEN CASE WHEN (t."X_35" < 0.255580) THEN CASE WHEN (t."X_16" < 0.303157) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_89" < -0.446715) THEN 9 ELSE CASE WHEN (t."X_71" < -0.363385) THEN 13 ELSE CASE WHEN (t."X_18" < -0.277823) THEN 17 ELSE 18 END END END END ELSE CASE WHEN (t."X_12" < -0.509224) THEN 5 ELSE CASE WHEN (t."X_71" < 0.542830) THEN CASE WHEN (t."X_94" < -0.679581) THEN 15 ELSE 16 END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 5 AS nid,  -0.011857 AS "P_0", -0.106248 AS "P_1", 0.075313 AS "P_2", 0.016462 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  -0.104702 AS "P_0", -0.018173 AS "P_1", 0.151080 AS "P_2", -0.108071 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.103498 AS "P_0", -0.096034 AS "P_1", -0.068557 AS "P_2", 0.173447 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  0.001936 AS "P_0", -0.108237 AS "P_1", -0.063186 AS "P_2", 0.123740 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  0.016651 AS "P_0", -0.091579 AS "P_1", 0.086934 AS "P_2", -0.044280 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  0.056155 AS "P_0", -0.085343 AS "P_1", 0.078952 AS "P_2", -0.099206 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  -0.102781 AS "P_0", 0.213598 AS "P_1", -0.112300 AS "P_2", -0.110129 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  -0.086605 AS "P_0", 0.118652 AS "P_1", -0.087781 AS "P_2", 0.013068 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  0.084245 AS "P_0", -0.008281 AS "P_1", -0.090433 AS "P_2", -0.000145 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  0.163870 AS "P_0", -0.086368 AS "P_1", -0.089838 AS "P_2", -0.093615 AS "P_3"
  ) AS "Values")
,
"DT_output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_6" AS t1
   LEFT OUTER JOIN
   "DT_node_data_6" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_7" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_42" < -0.210033) THEN CASE WHEN (t."X_21" < -0.578401) THEN 3 ELSE CASE WHEN (t."X_40" < 0.377986) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_62" < 0.901684) THEN CASE WHEN (t."X_64" < 1.629330) THEN CASE WHEN (t."X_47" < -0.490331) THEN 13 ELSE CASE WHEN (t."X_46" < -0.132053) THEN 15 ELSE CASE WHEN (t."X_14" < -0.209912) THEN 17 ELSE 18 END END END ELSE 10 END ELSE CASE WHEN (t."X_45" < 0.326653) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.086192 AS "P_0", 0.148790 AS "P_1", -0.021029 AS "P_2", -0.087417 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.147865 AS "P_0", -0.091347 AS "P_1", -0.050731 AS "P_2", -0.091571 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.108479 AS "P_0", -0.102549 AS "P_1", 0.185379 AS "P_2", -0.099058 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  0.144142 AS "P_0", -0.088877 AS "P_1", -0.098438 AS "P_2", -0.017215 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  0.094612 AS "P_0", -0.086618 AS "P_1", 0.001514 AS "P_2", -0.058618 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.093497 AS "P_0", 0.154690 AS "P_1", -0.035196 AS "P_2", -0.102524 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  -0.092064 AS "P_0", -0.086214 AS "P_1", 0.116395 AS "P_2", 0.008143 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  -0.094931 AS "P_0", 0.064746 AS "P_1", -0.036733 AS "P_2", 0.043658 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.096651 AS "P_0", -0.095142 AS "P_1", -0.103583 AS "P_2", 0.175778 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  0.006440 AS "P_0", -0.082116 AS "P_1", -0.085891 AS "P_2", 0.104499 AS "P_3"
  ) AS "Values")
,
"DT_output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_7" AS t1
   LEFT OUTER JOIN
   "DT_node_data_7" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_8" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_49" < -0.057512) THEN CASE WHEN (t."X_21" < -0.578401) THEN 3 ELSE CASE WHEN (t."X_31" < -0.887123) THEN CASE WHEN (t."X_38" < 0.308443) THEN 11 ELSE 12 END ELSE 8 END END ELSE CASE WHEN (t."X_82" < -0.712014) THEN 5 ELSE CASE WHEN (t."X_27" < -0.474058) THEN CASE WHEN (t."X_11" < -0.783076) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_21" < 0.282229) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.017922 AS "P_0", 0.090598 AS "P_1", -0.099622 AS "P_2", 0.001862 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.042046 AS "P_0", -0.016711 AS "P_1", -0.029742 AS "P_2", 0.080954 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.107929 AS "P_0", -0.101909 AS "P_1", -0.111387 AS "P_2", 0.022158 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  -0.087602 AS "P_0", -0.083035 AS "P_1", -0.085503 AS "P_2", 0.143034 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.088300 AS "P_0", -0.087771 AS "P_1", 0.105065 AS "P_2", 0.028130 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  0.129393 AS "P_0", 0.007372 AS "P_1", -0.106359 AS "P_2", -0.089853 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  -0.088603 AS "P_0", 0.105712 AS "P_1", 0.023104 AS "P_2", -0.088594 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  -0.028445 AS "P_0", -0.098655 AS "P_1", 0.134002 AS "P_2", -0.099753 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  -0.083931 AS "P_0", 0.034358 AS "P_1", 0.094671 AS "P_2", -0.089331 AS "P_3"
  ) AS "Values")
,
"DT_output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_8" AS t1
   LEFT OUTER JOIN
   "DT_node_data_8" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_9" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_42" < -0.210033) THEN CASE WHEN (t."X_40" < 0.377986) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_72" < 0.066864) THEN CASE WHEN (t."X_24" < 0.255599) THEN CASE WHEN (t."X_34" < -0.390330) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_53" < -0.017298) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  0.092930 AS "P_0", -0.036609 AS "P_1", -0.005666 AS "P_2", -0.094824 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  -0.108355 AS "P_0", 0.028644 AS "P_1", 0.108747 AS "P_2", -0.102412 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.096625 AS "P_0", -0.041743 AS "P_1", -0.009781 AS "P_2", -0.081046 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  0.019497 AS "P_0", -0.085315 AS "P_1", 0.007895 AS "P_2", 0.034433 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.094407 AS "P_0", 0.143425 AS "P_1", -0.102137 AS "P_2", -0.033835 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  -0.050754 AS "P_0", -0.086977 AS "P_1", 0.071664 AS "P_2", 0.033385 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.049567 AS "P_0", -0.104073 AS "P_1", -0.108810 AS "P_2", 0.160135 AS "P_3"
  ) AS "Values")
,
"DT_output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_9" AS t1
   LEFT OUTER JOIN
   "DT_node_data_9" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_10" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_25" < -1.049519) THEN CASE WHEN (t."X_90" < -0.477858) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_42" < -0.210033) THEN CASE WHEN (t."X_46" < 0.481775) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_55" < 0.494980) THEN CASE WHEN (t."X_93" < 0.023965) THEN 11 ELSE 12 END ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.086120 AS "P_0", 0.116271 AS "P_1", -0.039405 AS "P_2", -0.030482 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.099645 AS "P_0", 0.034791 AS "P_1", -0.089473 AS "P_2", -0.093128 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  -0.087964 AS "P_0", -0.016270 AS "P_1", 0.110358 AS "P_2", -0.083298 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.068868 AS "P_0", -0.084056 AS "P_1", 0.047225 AS "P_2", -0.082744 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  0.081357 AS "P_0", -0.066426 AS "P_1", -0.112734 AS "P_2", 0.047977 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  -0.044658 AS "P_0", 0.043275 AS "P_1", 0.049665 AS "P_2", -0.066176 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.116348 AS "P_0", -0.107708 AS "P_1", 0.008485 AS "P_2", 0.124780 AS "P_3"
  ) AS "Values")
,
"DT_output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_10" AS t1
   LEFT OUTER JOIN
   "DT_node_data_10" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_11" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_49" < -1.611999) THEN CASE WHEN (t."X_71" < 0.139698) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_58" < 0.013409) THEN CASE WHEN (t."X_79" < -0.534453) THEN 7 ELSE CASE WHEN (t."X_38" < -0.264055) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_87" < -0.278695) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.086649 AS "P_0", -0.008565 AS "P_1", -0.085294 AS "P_2", 0.115088 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.110051 AS "P_0", -0.035756 AS "P_1", -0.095652 AS "P_2", -0.034927 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  -0.048319 AS "P_0", -0.049423 AS "P_1", 0.108378 AS "P_2", -0.067634 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  -0.092883 AS "P_0", -0.087534 AS "P_1", 0.138848 AS "P_2", -0.048544 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  0.016216 AS "P_0", -0.071228 AS "P_1", -0.038029 AS "P_2", 0.066947 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  -0.044238 AS "P_0", 0.091024 AS "P_1", -0.041294 AS "P_2", -0.036223 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  0.050408 AS "P_0", 0.094413 AS "P_1", -0.097611 AS "P_2", -0.083708 AS "P_3"
  ) AS "Values")
,
"DT_output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_11" AS t1
   LEFT OUTER JOIN
   "DT_node_data_11" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_12" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_49" < -0.057512) THEN CASE WHEN (t."X_21" < -0.578401) THEN 3 ELSE CASE WHEN (t."X_31" < -0.887123) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_13" < 0.097917) THEN CASE WHEN (t."X_22" < 0.471746) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_11" < -0.783076) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.017645 AS "P_0", 0.078566 AS "P_1", -0.085703 AS "P_2", -0.002161 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  -0.095628 AS "P_0", -0.094103 AS "P_1", 0.018215 AS "P_2", 0.098229 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.086674 AS "P_0", -0.083982 AS "P_1", -0.093222 AS "P_2", 0.018463 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  -0.082556 AS "P_0", -0.023296 AS "P_1", 0.114536 AS "P_2", -0.082120 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.084080 AS "P_0", 0.050696 AS "P_1", -0.038970 AS "P_2", 0.050648 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  0.100696 AS "P_0", 0.027141 AS "P_1", -0.099357 AS "P_2", -0.084466 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.025809 AS "P_0", -0.017682 AS "P_1", 0.091085 AS "P_2", -0.094200 AS "P_3"
  ) AS "Values")
,
"DT_output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_12" AS t1
   LEFT OUTER JOIN
   "DT_node_data_12" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_13" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_97" < 0.033208) THEN CASE WHEN (t."X_93" < -0.691370) THEN 3 ELSE CASE WHEN (t."X_31" < 0.131135) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_83" < 0.354832) THEN CASE WHEN (t."X_73" < 0.009622) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.081836 AS "P_0", 0.078843 AS "P_1", 0.036009 AS "P_2", -0.083265 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.102035 AS "P_0", 0.030815 AS "P_1", 0.083678 AS "P_2", -0.066235 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  -0.097072 AS "P_0", -0.091266 AS "P_1", 0.008214 AS "P_2", 0.105599 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.055104 AS "P_0", -0.081532 AS "P_1", -0.088461 AS "P_2", 0.057908 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  0.115452 AS "P_0", -0.091408 AS "P_1", -0.068895 AS "P_2", -0.017701 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  0.024037 AS "P_0", 0.073194 AS "P_1", -0.039256 AS "P_2", -0.083726 AS "P_3"
  ) AS "Values")
,
"DT_output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_13" AS t1
   LEFT OUTER JOIN
   "DT_node_data_13" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_14" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_20" < 0.448063) THEN CASE WHEN (t."X_62" < 0.675807) THEN CASE WHEN (t."X_66" < -1.650104) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_56" < -0.206286) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_33" < -0.342532) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 5 AS nid,  0.098838 AS "P_0", 0.011154 AS "P_1", -0.099092 AS "P_2", -0.051187 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  0.015087 AS "P_0", -0.029623 AS "P_1", 0.056969 AS "P_2", -0.061151 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  -0.029355 AS "P_0", -0.051235 AS "P_1", 0.092197 AS "P_2", -0.051688 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.044446 AS "P_0", -0.100014 AS "P_1", -0.041983 AS "P_2", 0.108755 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  -0.047336 AS "P_0", 0.100088 AS "P_1", -0.041548 AS "P_2", -0.047196 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.034353 AS "P_0", 0.036387 AS "P_1", 0.028198 AS "P_2", -0.043618 AS "P_3"
  ) AS "Values")
,
"DT_output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_14" AS t1
   LEFT OUTER JOIN
   "DT_node_data_14" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_15" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_25" < -0.303264) THEN CASE WHEN (t."X_78" < -0.050237) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_97" < 0.033208) THEN 5 ELSE CASE WHEN (t."X_60" < -0.430162) THEN 7 ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  0.049025 AS "P_0", -0.055403 AS "P_1", -0.016211 AS "P_2", 0.006761 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  -0.036384 AS "P_0", 0.121538 AS "P_1", -0.075253 AS "P_2", -0.068477 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.079468 AS "P_0", -0.046925 AS "P_1", -0.003689 AS "P_2", 0.087467 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.095850 AS "P_0", -0.020939 AS "P_1", -0.027113 AS "P_2", -0.087828 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.053908 AS "P_0", -0.085953 AS "P_1", 0.105737 AS "P_2", -0.028858 AS "P_3"
  ) AS "Values")
,
"DT_output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_15" AS t1
   LEFT OUTER JOIN
   "DT_node_data_15" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_16" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_72" < 0.066864) THEN CASE WHEN (t."X_79" < -0.534453) THEN 3 ELSE CASE WHEN (t."X_48" < 0.448653) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_98" < -0.368866) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.011384 AS "P_0", -0.088137 AS "P_1", 0.093397 AS "P_2", -0.044361 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.046148 AS "P_0", -0.000006 AS "P_1", 0.055665 AS "P_2", -0.028084 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.020681 AS "P_0", 0.088984 AS "P_1", -0.076559 AS "P_2", -0.015349 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.087357 AS "P_0", -0.038151 AS "P_1", -0.071477 AS "P_2", -0.021476 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.085145 AS "P_0", -0.023373 AS "P_1", -0.027572 AS "P_2", 0.092871 AS "P_3"
  ) AS "Values")
,
"DT_output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_16" AS t1
   LEFT OUTER JOIN
   "DT_node_data_16" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_17" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_40" < -0.223326) THEN 1 ELSE CASE WHEN (t."X_35" < 1.507729) THEN CASE WHEN (t."X_25" < -0.303264) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  0.021569 AS "P_0", -0.101881 AS "P_1", 0.009980 AS "P_2", 0.033385 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.060887 AS "P_0", -0.019180 AS "P_1", -0.063641 AS "P_2", 0.000240 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.052234 AS "P_0", 0.095499 AS "P_1", -0.072954 AS "P_2", -0.012254 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.088166 AS "P_0", -0.006831 AS "P_1", 0.086323 AS "P_2", -0.047425 AS "P_3"
  ) AS "Values")
,
"DT_output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_17" AS t1
   LEFT OUTER JOIN
   "DT_node_data_17" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_18" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_49" < -0.057512) THEN CASE WHEN (t."X_94" < -0.999712) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_5" < 0.133159) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.029966 AS "P_0", 0.052401 AS "P_1", -0.044758 AS "P_2", 0.013575 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.025799 AS "P_0", -0.094500 AS "P_1", -0.046642 AS "P_2", 0.060822 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  0.031193 AS "P_0", -0.073707 AS "P_1", 0.063889 AS "P_2", -0.060076 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.059186 AS "P_0", 0.074464 AS "P_1", 0.004630 AS "P_2", -0.052648 AS "P_3"
  ) AS "Values")
,
"DT_output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_18" AS t1
   LEFT OUTER JOIN
   "DT_node_data_18" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_19" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < -0.557034) THEN CASE WHEN (t."X_48" < -0.689314) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_31" < 0.131135) THEN CASE WHEN (t."X_82" < 0.028874) THEN 7 ELSE 8 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.020980 AS "P_0", 0.044574 AS "P_1", -0.023936 AS "P_2", -0.002178 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  -0.064660 AS "P_0", -0.019586 AS "P_1", -0.064420 AS "P_2", 0.099081 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  0.079680 AS "P_0", -0.035856 AS "P_1", -0.016003 AS "P_2", -0.065369 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  -0.040699 AS "P_0", -0.080554 AS "P_1", 0.079412 AS "P_2", -0.006195 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.046029 AS "P_0", 0.063360 AS "P_1", -0.006974 AS "P_2", -0.027612 AS "P_3"
  ) AS "Values")
,
"DT_output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_19" AS t1
   LEFT OUTER JOIN
   "DT_node_data_19" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_20" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_71" < 0.139698) THEN CASE WHEN (t."X_49" < -0.057512) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_28" < -0.221475) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.066700 AS "P_0", 0.006251 AS "P_1", -0.064573 AS "P_2", 0.086449 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  -0.005218 AS "P_0", 0.064343 AS "P_1", 0.007856 AS "P_2", -0.096159 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.023237 AS "P_0", -0.085094 AS "P_1", 0.085893 AS "P_2", -0.024785 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  0.062899 AS "P_0", -0.034679 AS "P_1", -0.061601 AS "P_2", 0.004757 AS "P_3"
  ) AS "Values")
,
"DT_output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_20" AS t1
   LEFT OUTER JOIN
   "DT_node_data_20" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_21" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_20" < 0.448063) THEN CASE WHEN (t."X_62" < 0.675807) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 2 AS nid,  0.062319 AS "P_0", -0.003264 AS "P_1", -0.018470 AS "P_2", -0.062686 AS "P_3"
    UNION ALL
    SELECT 3 AS nid,  -0.041665 AS "P_0", -0.082259 AS "P_1", 0.018372 AS "P_2", 0.061969 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  -0.043912 AS "P_0", 0.065676 AS "P_1", 0.000914 AS "P_2", -0.045126 AS "P_3"
  ) AS "Values")
,
"DT_output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_21" AS t1
   LEFT OUTER JOIN
   "DT_node_data_21" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_22" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_81" < -1.034436) THEN 1 ELSE CASE WHEN (t."X_31" < -0.887123) THEN 3 ELSE CASE WHEN (t."X_94" < -0.427510) THEN 5 ELSE 6 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  0.011559 AS "P_0", 0.027741 AS "P_1", 0.036128 AS "P_2", -0.094381 AS "P_3"
    UNION ALL
    SELECT 3 AS nid,  -0.048603 AS "P_0", -0.052031 AS "P_1", -0.045047 AS "P_2", 0.096098 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.034406 AS "P_0", 0.060485 AS "P_1", 0.004689 AS "P_2", -0.048983 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  0.043005 AS "P_0", -0.058139 AS "P_1", 0.009977 AS "P_2", -0.014346 AS "P_3"
  ) AS "Values")
,
"DT_output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_22" AS t1
   LEFT OUTER JOIN
   "DT_node_data_22" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_23" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_86" < 0.064487) THEN CASE WHEN (t."X_28" < -0.221475) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_63" < 0.124405) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.078838 AS "P_0", -0.023333 AS "P_1", 0.060830 AS "P_2", 0.006103 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.019642 AS "P_0", 0.076146 AS "P_1", -0.095864 AS "P_2", -0.032388 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  0.043714 AS "P_0", -0.030537 AS "P_1", -0.061229 AS "P_2", 0.027708 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.018829 AS "P_0", -0.078302 AS "P_1", 0.068171 AS "P_2", -0.010439 AS "P_3"
  ) AS "Values")
,
"DT_output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_23" AS t1
   LEFT OUTER JOIN
   "DT_node_data_23" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_24" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_71" < 0.139698) THEN CASE WHEN (t."X_49" < -0.057512) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_60" < -0.027855) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.055595 AS "P_0", 0.006327 AS "P_1", -0.055193 AS "P_2", 0.074767 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  -0.001452 AS "P_0", 0.055365 AS "P_1", 0.005195 AS "P_2", -0.087402 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  0.069878 AS "P_0", -0.057328 AS "P_1", -0.036825 AS "P_2", -0.011440 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.058078 AS "P_0", -0.044732 AS "P_1", 0.069065 AS "P_2", -0.000963 AS "P_3"
  ) AS "Values")
,
"DT_output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_24" AS t1
   LEFT OUTER JOIN
   "DT_node_data_24" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_25" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_72" < 0.066864) THEN CASE WHEN (t."X_81" < -0.515097) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_34" < 0.126152) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  0.034261 AS "P_0", -0.023005 AS "P_1", 0.031764 AS "P_2", -0.062257 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  -0.000058 AS "P_0", -0.077665 AS "P_1", -0.022970 AS "P_2", 0.060098 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.007794 AS "P_0", 0.047258 AS "P_1", -0.042228 AS "P_2", -0.002981 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.047481 AS "P_0", 0.035052 AS "P_1", 0.023752 AS "P_2", -0.027109 AS "P_3"
  ) AS "Values")
,
"DT_output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_25" AS t1
   LEFT OUTER JOIN
   "DT_node_data_25" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_26" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < -0.557034) THEN 1 ELSE CASE WHEN (t."X_31" < 0.131135) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  -0.049177 AS "P_0", 0.018775 AS "P_1", -0.045424 AS "P_2", 0.060388 AS "P_3"
    UNION ALL
    SELECT 3 AS nid,  -0.043660 AS "P_0", 0.002415 AS "P_1", 0.042700 AS "P_2", -0.017394 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.065357 AS "P_0", -0.029457 AS "P_1", -0.011412 AS "P_2", -0.056617 AS "P_3"
  ) AS "Values")
,
"DT_output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_26" AS t1
   LEFT OUTER JOIN
   "DT_node_data_26" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_27" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_49" < 1.580971) THEN CASE WHEN (t."X_35" < 0.255580) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 2 AS nid,  -0.017167 AS "P_0", -0.019305 AS "P_1", 0.060316 AS "P_2", -0.048830 AS "P_3"
    UNION ALL
    SELECT 3 AS nid,  -0.068088 AS "P_0", 0.033288 AS "P_1", -0.000450 AS "P_2", 0.024047 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.052345 AS "P_0", -0.016608 AS "P_1", -0.067445 AS "P_2", 0.010579 AS "P_3"
  ) AS "Values")
,
"DT_output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_27" AS t1
   LEFT OUTER JOIN
   "DT_node_data_27" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_28" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_57" < -0.073201) THEN CASE WHEN (t."X_15" < 0.543486) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_25" < -0.303264) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.027868 AS "P_0", -0.078066 AS "P_1", 0.007012 AS "P_2", 0.062676 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  -0.006048 AS "P_0", 0.059154 AS "P_1", -0.053089 AS "P_2", -0.008397 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  0.036968 AS "P_0", 0.045627 AS "P_1", -0.045421 AS "P_2", -0.056232 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.004270 AS "P_0", -0.047932 AS "P_1", 0.060012 AS "P_2", -0.037515 AS "P_3"
  ) AS "Values")
,
"DT_output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_28" AS t1
   LEFT OUTER JOIN
   "DT_node_data_28" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_29" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_93" < 0.023965) THEN CASE WHEN (t."X_78" < 0.131039) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_14" < 0.246998) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.047687 AS "P_0", 0.036435 AS "P_1", 0.020496 AS "P_2", -0.023136 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.062687 AS "P_0", -0.008467 AS "P_1", -0.004276 AS "P_2", -0.066835 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.046708 AS "P_0", -0.037769 AS "P_1", -0.000648 AS "P_2", 0.064347 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  0.028961 AS "P_0", -0.005292 AS "P_1", -0.020174 AS "P_2", -0.006425 AS "P_3"
  ) AS "Values")
,
"DT_output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_29" AS t1
   LEFT OUTER JOIN
   "DT_node_data_29" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_30" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_40" < -0.223326) THEN 1 ELSE CASE WHEN (t."X_35" < 1.507729) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  0.018950 AS "P_0", -0.079577 AS "P_1", 0.007102 AS "P_2", 0.024273 AS "P_3"
    UNION ALL
    SELECT 3 AS nid,  -0.076250 AS "P_0", 0.048758 AS "P_1", 0.027176 AS "P_2", -0.029294 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.050086 AS "P_0", -0.010156 AS "P_1", -0.053613 AS "P_2", -0.002897 AS "P_3"
  ) AS "Values")
,
"DT_output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_30" AS t1
   LEFT OUTER JOIN
   "DT_node_data_30" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_31" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_42" < -0.210033) THEN 1 ELSE CASE WHEN (t."X_20" < 0.448063) THEN CASE WHEN (t."X_9" < 0.218363) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  0.010717 AS "P_0", -0.000700 AS "P_1", 0.041777 AS "P_2", -0.077919 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.052282 AS "P_0", -0.007804 AS "P_1", -0.025571 AS "P_2", -0.036040 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.034174 AS "P_0", -0.015375 AS "P_1", 0.020356 AS "P_2", 0.018909 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.051485 AS "P_0", 0.019884 AS "P_1", -0.056966 AS "P_2", 0.066726 AS "P_3"
  ) AS "Values")
,
"DT_output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
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
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_31" AS t
  ) AS scu
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.265625 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.171875 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   0.281250 + SUM(t."P_2") AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   0.281250 + SUM(t."P_3") AS "Score_3",
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
   MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Greatest_Score"
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
    t1."Proba_2" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    t1."Exp_Score_2" AS "Exp_Score_2",
    t1."Proba_3" AS "Proba_3",
    t1."Score_3" AS "Score_3",
    t1."Exp_Score_3" AS "Exp_Score_3",
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        t."Proba_2" AS "Proba_2",
        t."Score_2" AS "Score_2",
        t."Proba_3" AS "Proba_3",
        t."Score_3" AS "Score_3",
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
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    t1."Exp_Score_2" / t1."Sum_Exp" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    t1."Exp_Score_3" / t1."Sum_Exp" AS "Proba_3",
    t1."Score_3" AS "Score_3"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    MAX( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Max_Score"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
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
     t."Proba_2" AS "Proba_2",
     t."Score_2" AS "Score_2",
     t."Proba_3" AS "Proba_3",
     t."Score_3" AS "Score_3",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
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