WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "BinaryClass_100_small" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_61" < -0.108359) THEN CASE WHEN (t."X_28" < -0.762158) THEN CASE WHEN (t."X_2" < -0.470138) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_23" < 0.941049) THEN CASE WHEN (t."X_82" < -1.058259) THEN 9 ELSE CASE WHEN (t."X_2" < 0.987961) THEN 11 ELSE 12 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.262132 AS "P_0", -0.262132 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.188005 AS "P_0", -0.188005 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.169160 AS "P_0", -0.169160 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.191684 AS "P_0", 0.191683 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.048879 AS "P_0", -0.048879 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.293212 AS "P_0", 0.293212 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.071402 AS "P_0", 0.071402 AS "P_1"
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
    CASE WHEN (t."X_61" < -0.108359) THEN CASE WHEN (t."X_28" < -0.762158) THEN CASE WHEN (t."X_2" < -0.470138) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_23" < 0.941049) THEN CASE WHEN (t."X_17" < -1.473411) THEN 9 ELSE CASE WHEN (t."X_24" < -0.689671) THEN 11 ELSE 12 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.210412 AS "P_0", -0.210412 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.157234 AS "P_0", -0.157234 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.143491 AS "P_0", -0.143491 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.158444 AS "P_0", 0.158444 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.068353 AS "P_0", -0.068353 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.040380 AS "P_0", 0.040380 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.231877 AS "P_0", 0.231877 AS "P_1"
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
    CASE WHEN (t."X_61" < -0.108359) THEN CASE WHEN (t."X_47" < -0.803302) THEN 3 ELSE CASE WHEN (t."X_6" < 0.999390) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_23" < 0.941049) THEN CASE WHEN (t."X_17" < -1.473411) THEN 9 ELSE CASE WHEN (t."X_44" < 0.889010) THEN 11 ELSE 12 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.060557 AS "P_0", 0.060557 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.136264 AS "P_0", -0.136264 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.185517 AS "P_0", -0.185517 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.020358 AS "P_0", -0.020358 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.056110 AS "P_0", -0.056110 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.197452 AS "P_0", 0.197452 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.013405 AS "P_0", 0.013405 AS "P_1"
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
    CASE WHEN (t."X_1" < -0.352168) THEN CASE WHEN (t."X_7" < 0.965276) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_82" < -0.669734) THEN CASE WHEN (t."X_0" < -0.101766) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_67" < 1.028347) THEN CASE WHEN (t."X_95" < -1.337310) THEN 11 ELSE 12 END ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.172402 AS "P_0", -0.172402 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.007289 AS "P_0", -0.007289 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.156273 AS "P_0", -0.156273 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.061828 AS "P_0", 0.061828 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.040846 AS "P_0", -0.040846 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.033713 AS "P_0", 0.033713 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.180784 AS "P_0", 0.180784 AS "P_1"
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
    CASE WHEN (t."X_1" < -0.352168) THEN CASE WHEN (t."X_38" < -1.387512) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_93" < -0.997243) THEN CASE WHEN (t."X_0" < -0.270000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_23" < 0.664795) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.003388 AS "P_0", -0.003388 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.157098 AS "P_0", -0.157098 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.047386 AS "P_0", 0.047386 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.124253 AS "P_0", -0.124253 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.158981 AS "P_0", 0.158981 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.012528 AS "P_0", -0.012528 AS "P_1"
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
"DT_node_lookup_5" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_61" < -0.108359) THEN CASE WHEN (t."X_28" < -0.762158) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_23" < 0.941049) THEN CASE WHEN (t."X_63" < -0.487732) THEN 7 ELSE CASE WHEN (t."X_46" < 0.842426) THEN 9 ELSE 10 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.035129 AS "P_0", 0.035129 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.148842 AS "P_0", -0.148842 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.108343 AS "P_0", -0.108343 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.042603 AS "P_0", -0.042603 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.155848 AS "P_0", 0.155848 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.014154 AS "P_0", 0.014154 AS "P_1"
  ) AS "Values")
,
"DT_output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_1" < -0.352168) THEN CASE WHEN (t."X_30" < 0.649971) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_82" < -0.669734) THEN CASE WHEN (t."X_14" < 0.416609) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_67" < 1.028347) THEN CASE WHEN (t."X_80" < -0.830148) THEN 11 ELSE 12 END ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.137821 AS "P_0", -0.137821 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.000303 AS "P_0", 0.000303 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.121239 AS "P_0", -0.121239 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.015460 AS "P_0", 0.015460 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.025968 AS "P_0", -0.025968 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.033869 AS "P_0", 0.033869 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.143131 AS "P_0", 0.143131 AS "P_1"
  ) AS "Values")
,
"DT_output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_61" < -0.108359) THEN CASE WHEN (t."X_28" < -0.762158) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_84" < 0.369371) THEN CASE WHEN (t."X_77" < 0.938430) THEN CASE WHEN (t."X_8" < -0.307022) THEN 9 ELSE 10 END ELSE 8 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.028127 AS "P_0", 0.028127 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.132352 AS "P_0", -0.132352 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.130312 AS "P_0", 0.130312 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.096960 AS "P_0", 0.096960 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.116662 AS "P_0", -0.116662 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.016305 AS "P_0", -0.016305 AS "P_1"
  ) AS "Values")
,
"DT_output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_55" < -0.778074) THEN 1 ELSE CASE WHEN (t."X_1" < 0.449524) THEN CASE WHEN (t."X_31" < -0.053499) THEN CASE WHEN (t."X_49" < -0.393391) THEN 9 ELSE 10 END ELSE 6 END ELSE CASE WHEN (t."X_44" < 0.692297) THEN 7 ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  -0.102194 AS "P_0", 0.102194 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.133378 AS "P_0", -0.133378 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.106952 AS "P_0", 0.106952 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.048448 AS "P_0", -0.048448 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.042774 AS "P_0", -0.042774 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.031802 AS "P_0", 0.031802 AS "P_1"
  ) AS "Values")
,
"DT_output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_1" < -0.352168) THEN CASE WHEN (t."X_10" < 0.746586) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_93" < -1.244322) THEN 5 ELSE CASE WHEN (t."X_73" < 0.419017) THEN 7 ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.113180 AS "P_0", -0.113180 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.009168 AS "P_0", -0.009168 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.067224 AS "P_0", -0.067224 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.126092 AS "P_0", 0.126092 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.012874 AS "P_0", -0.012874 AS "P_1"
  ) AS "Values")
,
"DT_output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_61" < -1.019468) THEN 1 ELSE CASE WHEN (t."X_82" < -0.669734) THEN 3 ELSE CASE WHEN (t."X_58" < 0.836824) THEN CASE WHEN (t."X_0" < 0.184385) THEN 7 ELSE 8 END ELSE 6 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.102043 AS "P_0", -0.102043 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.064481 AS "P_0", -0.064481 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.038979 AS "P_0", -0.038979 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.121106 AS "P_0", 0.121105 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.024002 AS "P_0", 0.024002 AS "P_1"
  ) AS "Values")
,
"DT_output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_1" < -0.352168) THEN CASE WHEN (t."X_6" < 0.103194) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_93" < -0.997243) THEN 5 ELSE CASE WHEN (t."X_73" < 0.419017) THEN 7 ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.017262 AS "P_0", -0.017262 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.096061 AS "P_0", -0.096061 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.053279 AS "P_0", -0.053279 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.111247 AS "P_0", 0.111247 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.002242 AS "P_0", -0.002242 AS "P_1"
  ) AS "Values")
,
"DT_output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_61" < -0.108359) THEN CASE WHEN (t."X_28" < -0.762158) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_84" < 0.369371) THEN CASE WHEN (t."X_49" < -0.492479) THEN 7 ELSE 8 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.026531 AS "P_0", 0.026531 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.103455 AS "P_0", -0.103455 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.099280 AS "P_0", 0.099280 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.080893 AS "P_0", -0.080893 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.040975 AS "P_0", 0.040975 AS "P_1"
  ) AS "Values")
,
"DT_output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_23" < -0.494365) THEN CASE WHEN (t."X_61" < -0.108359) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_13" < -0.474001) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.010460 AS "P_0", -0.010460 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.089229 AS "P_0", 0.089229 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.044112 AS "P_0", 0.044112 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.085842 AS "P_0", -0.085842 AS "P_1"
  ) AS "Values")
,
"DT_output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_55" < -0.778074) THEN 1 ELSE CASE WHEN (t."X_77" < 0.938430) THEN CASE WHEN (t."X_24" < 0.526687) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  -0.070556 AS "P_0", 0.070556 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.052044 AS "P_0", 0.052044 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.087331 AS "P_0", -0.087331 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.004637 AS "P_0", 0.004637 AS "P_1"
  ) AS "Values")
,
"DT_output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_61" < -0.108359) THEN CASE WHEN (t."X_28" < -0.455894) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_84" < 0.369371) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.017524 AS "P_0", 0.017524 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.088398 AS "P_0", -0.088398 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.011574 AS "P_0", -0.011574 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.087269 AS "P_0", 0.087269 AS "P_1"
  ) AS "Values")
,
"DT_output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_13" < -0.348637) THEN CASE WHEN (t."X_12" < 0.153694) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_90" < -0.004570) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.003117 AS "P_0", -0.003117 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.075900 AS "P_0", 0.075900 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.070894 AS "P_0", -0.070894 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.016749 AS "P_0", 0.016749 AS "P_1"
  ) AS "Values")
,
"DT_output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_1" < -0.352168) THEN 1 ELSE CASE WHEN (t."X_84" < -0.058589) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.056689 AS "P_0", -0.056690 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.018083 AS "P_0", -0.018083 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.078929 AS "P_0", 0.078929 AS "P_1"
  ) AS "Values")
,
"DT_output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_78" < -0.244803) THEN 1 ELSE CASE WHEN (t."X_18" < -0.336907) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.054840 AS "P_0", -0.054840 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.022212 AS "P_0", -0.022212 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.067474 AS "P_0", 0.067475 AS "P_1"
  ) AS "Values")
,
"DT_output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_61" < -0.108359) THEN 1 ELSE CASE WHEN (t."X_43" < 0.336037) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.043934 AS "P_0", -0.043934 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  -0.065808 AS "P_0", 0.065808 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.015932 AS "P_0", -0.015932 AS "P_1"
  ) AS "Values")
,
"DT_output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_47" < -0.583155) THEN 1 ELSE CASE WHEN (t."X_23" < -0.494365) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  -0.054298 AS "P_0", 0.054298 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  -0.031287 AS "P_0", 0.031287 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.062905 AS "P_0", -0.062905 AS "P_1"
  ) AS "Values")
,
"DT_output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_95" < -0.359172) THEN 1 ELSE CASE WHEN (t."X_20" < 0.026731) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.042092 AS "P_0", -0.042092 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.015239 AS "P_0", -0.015239 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.067806 AS "P_0", 0.067806 AS "P_1"
  ) AS "Values")
,
"DT_output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_61" < -0.108359) THEN 1 ELSE CASE WHEN (t."X_84" < -0.058589) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.039697 AS "P_0", -0.039697 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.009933 AS "P_0", -0.009933 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.064347 AS "P_0", 0.064347 AS "P_1"
  ) AS "Values")
,
"DT_output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_99" < -0.145179) THEN 1 ELSE CASE WHEN (t."X_13" < -0.348637) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.043572 AS "P_0", -0.043572 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  -0.066154 AS "P_0", 0.066154 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.018268 AS "P_0", -0.018268 AS "P_1"
  ) AS "Values")
,
"DT_output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_55" < -0.240537) THEN 1 ELSE CASE WHEN (t."X_49" < 0.003210) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  -0.042949 AS "P_0", 0.042949 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.066205 AS "P_0", -0.066205 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.020519 AS "P_0", 0.020519 AS "P_1"
  ) AS "Values")
,
"DT_output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_1" < -0.352168) THEN 1 ELSE CASE WHEN (t."X_75" < 0.120246) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.043711 AS "P_0", -0.043711 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.009015 AS "P_0", -0.009015 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.054032 AS "P_0", 0.054032 AS "P_1"
  ) AS "Values")
,
"DT_output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_23" < -0.494365) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  -0.037074 AS "P_0", 0.037074 AS "P_1"
    UNION ALL
    SELECT 2 AS nid,  0.028892 AS "P_0", -0.028892 AS "P_1"
  ) AS "Values")
,
"DT_output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_61" < -0.108359) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.034238 AS "P_0", -0.034238 AS "P_1"
    UNION ALL
    SELECT 2 AS nid,  -0.031007 AS "P_0", 0.031007 AS "P_1"
  ) AS "Values")
,
"DT_output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_95" < -0.359172) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.036182 AS "P_0", -0.036182 AS "P_1"
    UNION ALL
    SELECT 2 AS nid,  -0.028936 AS "P_0", 0.028936 AS "P_1"
  ) AS "Values")
,
"DT_output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_55" < -0.240537) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  -0.036667 AS "P_0", 0.036667 AS "P_1"
    UNION ALL
    SELECT 2 AS nid,  0.028305 AS "P_0", -0.028305 AS "P_1"
  ) AS "Values")
,
"DT_output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_20" < 0.203045) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.029604 AS "P_0", -0.029605 AS "P_1"
    UNION ALL
    SELECT 2 AS nid,  -0.034479 AS "P_0", 0.034479 AS "P_1"
  ) AS "Values")
,
"DT_output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_13" < -0.348637) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  -0.032728 AS "P_0", 0.032728 AS "P_1"
    UNION ALL
    SELECT 2 AS nid,  0.026993 AS "P_0", -0.026993 AS "P_1"
  ) AS "Values")
,
"DT_output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
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
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_31" AS t
  ) AS scu
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.562500 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.437500 + SUM(t."P_1") AS "Score_1",
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