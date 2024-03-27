WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_51" <= -1.149265) AND (t."X_98" > 0.332835) AND (t."X_51" <= -1.210914)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_51" <= -1.149265) AND (t."X_98" > 0.332835) AND (t."X_51" > -1.210914)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_51" <= -1.149265) AND (t."X_98" <= 0.332835) AND (t."X_94" <= -1.793143)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_51" <= -1.149265) AND (t."X_98" <= 0.332835) AND (t."X_94" > -1.793143)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" <= -0.697241) AND (t."X_91" > 0.603807) AND (t."X_93" <= -1.185765)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" <= -0.697241) AND (t."X_91" > 0.603807) AND (t."X_93" > -1.185765)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" <= -0.697241) AND (t."X_91" <= 0.603807) AND (t."X_95" <= -1.144966)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" <= -0.697241) AND (t."X_91" <= 0.603807) AND (t."X_95" > -1.144966)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" > 0.817992) AND (t."X_22" <= 1.171409)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" > 0.817992) AND (t."X_22" > 1.171409)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" <= -0.464319) AND (t."X_96" <= 1.550064)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" <= -0.464319) AND (t."X_96" > 1.550064)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" > -0.464319) AND (t."X_51" <= -0.657294) AND (t."X_97" <= -0.068866)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" > -0.464319) AND (t."X_51" <= -0.657294) AND (t."X_97" > -0.068866)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" > -0.464319) AND (t."X_51" > -0.657294) AND (t."X_89" > 1.253035) AND (t."X_22" <= 0.528699)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" > -0.464319) AND (t."X_51" > -0.657294) AND (t."X_89" > 1.253035) AND (t."X_22" > 0.528699)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" > -0.464319) AND (t."X_51" > -0.657294) AND (t."X_89" <= 1.253035) AND (t."X_97" > 0.757327) AND (t."X_51" <= 0.623729)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" > -0.464319) AND (t."X_51" > -0.657294) AND (t."X_89" <= 1.253035) AND (t."X_97" > 0.757327) AND (t."X_51" > 0.623729)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" > -0.464319) AND (t."X_51" > -0.657294) AND (t."X_89" <= 1.253035) AND (t."X_97" <= 0.757327) AND (t."X_95" <= -1.786672)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" > -0.464319) AND (t."X_51" > -0.657294) AND (t."X_89" <= 1.253035) AND (t."X_97" <= 0.757327) AND (t."X_95" > -1.786672) AND (t."X_94" <= 1.200914)) THEN 39 ELSE NULL END AS Leaf_39,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" > -0.464319) AND (t."X_51" > -0.657294) AND (t."X_89" <= 1.253035) AND (t."X_97" <= 0.757327) AND (t."X_95" > -1.786672) AND (t."X_94" > 1.200914) AND (t."X_51" <= 0.417425)) THEN 41 ELSE NULL END AS Leaf_41,
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" > -0.464319) AND (t."X_51" > -0.657294) AND (t."X_89" <= 1.253035) AND (t."X_97" <= 0.757327) AND (t."X_95" > -1.786672) AND (t."X_94" > 1.200914) AND (t."X_51" > 0.417425)) THEN 42 ELSE NULL END AS Leaf_42
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.554688 AS "P_0", 0.445312 AS "P_1", 0 AS "D", 0.554688 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.210526 AS "P_0", 0.789474 AS "P_1", 1 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.614679 AS "P_0", 0.385321 AS "P_1", 0 AS "D", 0.614679 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.851852 AS "P_0", 0.148148 AS "P_1", 0 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.536585 AS "P_0", 0.463415 AS "P_1", 0 AS "D", 0.536585 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.954545 AS "P_0", 0.045455 AS "P_1", 0 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.463768 AS "P_0", 0.536232 AS "P_1", 1 AS "D", 0.536232 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.358491 AS "P_0", 0.641509 AS "P_1", 1 AS "D", 0.641509 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.032258 AS "P_0", 0.967742 AS "P_1", 1 AS "D", 0.967742 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_0" AS t1
   LEFT OUTER JOIN
   "DT_node_data_0" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_1" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_10", t1."Leaf_12", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_81" <= -1.253307)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" <= -1.250065) AND (t."X_78" <= 0.871657)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" <= -1.250065) AND (t."X_78" > 0.871657)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" > 1.230614)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" <= -0.457505) AND (t."X_92" > 1.971545)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" <= 1.230614) AND (t."X_15" <= 0.248759) AND (t."X_8" > -0.491425) AND (t."X_93" <= -0.666969) AND (t."X_52" <= -1.814155)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" <= 1.230614) AND (t."X_15" <= 0.248759) AND (t."X_8" > -0.491425) AND (t."X_93" <= -0.666969) AND (t."X_52" > -1.814155)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" <= 1.230614) AND (t."X_15" <= 0.248759) AND (t."X_8" > -0.491425) AND (t."X_93" > -0.666969) AND (t."X_90" <= -1.582548)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" <= 1.230614) AND (t."X_15" <= 0.248759) AND (t."X_8" > -0.491425) AND (t."X_93" > -0.666969) AND (t."X_90" > -1.582548)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" <= 1.230614) AND (t."X_15" > 0.248759) AND (t."X_93" > 1.315361)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" <= 1.230614) AND (t."X_15" <= 0.248759) AND (t."X_8" <= -0.491425) AND (t."X_52" > 0.282438)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" <= 1.230614) AND (t."X_15" <= 0.248759) AND (t."X_8" <= -0.491425) AND (t."X_52" <= 0.282438) AND (t."X_99" <= -0.596605)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" <= 1.230614) AND (t."X_15" <= 0.248759) AND (t."X_8" <= -0.491425) AND (t."X_52" <= 0.282438) AND (t."X_99" > -0.596605)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" <= -0.457505) AND (t."X_92" <= 1.971545) AND (t."X_96" > 0.225165) AND (t."X_99" > 0.824681)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" <= -0.457505) AND (t."X_92" <= 1.971545) AND (t."X_96" > 0.225165) AND (t."X_99" <= 0.824681) AND (t."X_78" <= 0.644669)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" <= -0.457505) AND (t."X_92" <= 1.971545) AND (t."X_96" > 0.225165) AND (t."X_99" <= 0.824681) AND (t."X_78" > 0.644669)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" <= -0.457505) AND (t."X_92" <= 1.971545) AND (t."X_96" <= 0.225165) AND (t."X_92" <= -1.430745)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" <= -0.457505) AND (t."X_92" <= 1.971545) AND (t."X_96" <= 0.225165) AND (t."X_92" > -1.430745)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" <= 1.230614) AND (t."X_15" > 0.248759) AND (t."X_93" <= 1.315361) AND (t."X_89" <= 0.589932)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" <= 1.230614) AND (t."X_15" > 0.248759) AND (t."X_93" <= 1.315361) AND (t."X_89" > 0.589932) AND (t."X_99" <= -1.055721)) THEN 39 ELSE NULL END AS Leaf_39,
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" <= 1.230614) AND (t."X_15" > 0.248759) AND (t."X_93" <= 1.315361) AND (t."X_89" > 0.589932) AND (t."X_99" > -1.055721)) THEN 40 ELSE NULL END AS Leaf_40
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.554688 AS "P_0", 0.445312 AS "P_1", 0 AS "D", 0.554688 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.612069 AS "P_0", 0.387931 AS "P_1", 0 AS "D", 0.612069 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.954545 AS "P_0", 0.045455 AS "P_1", 0 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.531915 AS "P_0", 0.468085 AS "P_1", 0 AS "D", 0.531915 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.766667 AS "P_0", 0.233333 AS "P_1", 0 AS "D", 0.766667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.421875 AS "P_0", 0.578125 AS "P_1", 1 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.327273 AS "P_0", 0.672727 AS "P_1", 1 AS "D", 0.672727 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.821429 AS "P_0", 0.178571 AS "P_1", 0 AS "D", 0.821429 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.120000 AS "P_0", 0.880000 AS "P_1", 1 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.235294 AS "P_0", 0.764706 AS "P_1", 1 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_1" AS t1
   LEFT OUTER JOIN
   "DT_node_data_1" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_2" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" <= -1.278909)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" > 1.230614) AND (t."X_96" <= 1.647467)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" > 1.230614) AND (t."X_96" > 1.647467)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_74" > 0.192414) AND (t."X_75" <= -1.217082) AND (t."X_53" <= -1.427503)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_74" > 0.192414) AND (t."X_75" <= -1.217082) AND (t."X_53" > -1.427503)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_74" > 0.192414) AND (t."X_75" > -1.217082) AND (t."X_97" <= -0.843068)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" <= 1.230614) AND (t."X_18" <= -1.032130) AND (t."X_96" <= 1.050505)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" <= 1.230614) AND (t."X_18" <= -1.032130) AND (t."X_96" > 1.050505)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" <= 1.230614) AND (t."X_18" > -1.032130) AND (t."X_80" <= -1.766927)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" <= 1.230614) AND (t."X_18" > -1.032130) AND (t."X_80" > -1.766927) AND (t."X_90" <= -1.843650)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_74" > 0.192414) AND (t."X_75" > -1.217082) AND (t."X_97" > -0.843068) AND (t."X_80" > -1.433922)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_74" > 0.192414) AND (t."X_75" > -1.217082) AND (t."X_97" > -0.843068) AND (t."X_80" <= -1.433922) AND (t."X_99" <= -0.492387)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_74" > 0.192414) AND (t."X_75" > -1.217082) AND (t."X_97" > -0.843068) AND (t."X_80" <= -1.433922) AND (t."X_99" > -0.492387)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" <= 1.230614) AND (t."X_18" > -1.032130) AND (t."X_80" > -1.766927) AND (t."X_90" > -1.843650) AND (t."X_69" > -1.100252)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" <= 1.230614) AND (t."X_18" > -1.032130) AND (t."X_80" > -1.766927) AND (t."X_90" > -1.843650) AND (t."X_69" <= -1.100252) AND (t."X_53" <= -0.293262)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" <= 1.230614) AND (t."X_18" > -1.032130) AND (t."X_80" > -1.766927) AND (t."X_90" > -1.843650) AND (t."X_69" <= -1.100252) AND (t."X_53" > -0.293262)) THEN 30 ELSE NULL END AS Leaf_30
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.539062 AS "P_0", 0.460938 AS "P_1", 0 AS "D", 0.539062 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.347222 AS "P_0", 0.652778 AS "P_1", 1 AS "D", 0.652778 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.265625 AS "P_0", 0.734375 AS "P_1", 1 AS "D", 0.734375 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.163636 AS "P_0", 0.836364 AS "P_1", 1 AS "D", 0.836364 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.976744 AS "P_0", 0.023256 AS "P_1", 0 AS "D", 0.976744 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.023256 AS "P_0", 0.976744 AS "P_1", 1 AS "D", 0.976744 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_2" AS t1
   LEFT OUTER JOIN
   "DT_node_data_2" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_3" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_9", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_32", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_49" > 0.224326) AND (t."X_57" > 2.458312)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_49" > 0.224326) AND (t."X_57" <= 2.458312) AND (t."X_90" <= -0.137230) AND (t."X_19" <= -0.381757)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_49" > 0.224326) AND (t."X_57" <= 2.458312) AND (t."X_90" <= -0.137230) AND (t."X_19" > -0.381757) AND (t."X_41" <= -0.193545)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_49" > 0.224326) AND (t."X_57" <= 2.458312) AND (t."X_90" <= -0.137230) AND (t."X_19" > -0.381757) AND (t."X_41" > -0.193545) AND (t."X_91" <= -0.408812)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_49" > 0.224326) AND (t."X_57" <= 2.458312) AND (t."X_90" <= -0.137230) AND (t."X_19" > -0.381757) AND (t."X_41" > -0.193545) AND (t."X_91" > -0.408812)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" <= 0.926151) AND (t."X_91" > 0.882188)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" <= 0.926151) AND (t."X_91" <= 0.882188) AND (t."X_99" > 1.648124)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" <= 0.926151) AND (t."X_91" <= 0.882188) AND (t."X_99" <= 1.648124) AND (t."X_96" <= -1.598027)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" <= 0.926151) AND (t."X_91" <= 0.882188) AND (t."X_99" <= 1.648124) AND (t."X_96" > -1.598027) AND (t."X_41" <= -1.474207)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_49" > 0.224326) AND (t."X_57" <= 2.458312) AND (t."X_90" > -0.137230) AND (t."X_97" <= 1.302189)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_49" > 0.224326) AND (t."X_57" <= 2.458312) AND (t."X_90" > -0.137230) AND (t."X_97" > 1.302189)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" > 0.926151) AND (t."X_8" <= 0.707054)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" > 0.926151) AND (t."X_8" > 0.707054) AND (t."X_99" <= 0.768420)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" > 0.926151) AND (t."X_8" > 0.707054) AND (t."X_99" > 0.768420)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" <= 0.926151) AND (t."X_91" <= 0.882188) AND (t."X_99" <= 1.648124) AND (t."X_96" > -1.598027) AND (t."X_41" > -1.474207) AND (t."X_48" <= -1.723346)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" <= 0.926151) AND (t."X_91" <= 0.882188) AND (t."X_99" <= 1.648124) AND (t."X_96" > -1.598027) AND (t."X_41" > -1.474207) AND (t."X_48" > -1.723346) AND (t."X_90" > 1.806899)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" <= 0.926151) AND (t."X_91" <= 0.882188) AND (t."X_99" <= 1.648124) AND (t."X_96" > -1.598027) AND (t."X_41" > -1.474207) AND (t."X_48" > -1.723346) AND (t."X_90" <= 1.806899) AND (t."X_8" > 1.104948)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" <= 0.926151) AND (t."X_91" <= 0.882188) AND (t."X_99" <= 1.648124) AND (t."X_96" > -1.598027) AND (t."X_41" > -1.474207) AND (t."X_48" > -1.723346) AND (t."X_90" <= 1.806899) AND (t."X_8" <= 1.104948) AND (t."X_97" > -0.937830)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" <= 0.926151) AND (t."X_91" <= 0.882188) AND (t."X_99" <= 1.648124) AND (t."X_96" > -1.598027) AND (t."X_41" > -1.474207) AND (t."X_48" > -1.723346) AND (t."X_90" <= 1.806899) AND (t."X_8" <= 1.104948) AND (t."X_97" <= -0.937830) AND (t."X_91" <= 0.351673)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" <= 0.926151) AND (t."X_91" <= 0.882188) AND (t."X_99" <= 1.648124) AND (t."X_96" > -1.598027) AND (t."X_41" > -1.474207) AND (t."X_48" > -1.723346) AND (t."X_90" <= 1.806899) AND (t."X_8" <= 1.104948) AND (t."X_97" <= -0.937830) AND (t."X_91" > 0.351673)) THEN 38 ELSE NULL END AS Leaf_38
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.460938 AS "P_0", 0.539062 AS "P_1", 1 AS "D", 0.539062 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.585366 AS "P_0", 0.414634 AS "P_1", 0 AS "D", 0.585366 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.239130 AS "P_0", 0.760870 AS "P_1", 1 AS "D", 0.760870 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.691176 AS "P_0", 0.308824 AS "P_1", 0 AS "D", 0.691176 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.186047 AS "P_0", 0.813953 AS "P_1", 1 AS "D", 0.813953 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.034483 AS "P_0", 0.965517 AS "P_1", 1 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.746032 AS "P_0", 0.253968 AS "P_1", 0 AS "D", 0.746032 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.810345 AS "P_0", 0.189655 AS "P_1", 0 AS "D", 0.810345 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.854545 AS "P_0", 0.145455 AS "P_1", 0 AS "D", 0.854545 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.921569 AS "P_0", 0.078431 AS "P_1", 0 AS "D", 0.921569 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.940000 AS "P_0", 0.060000 AS "P_1", 0 AS "D", 0.940000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.959184 AS "P_0", 0.040816 AS "P_1", 0 AS "D", 0.959184 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.979167 AS "P_0", 0.020833 AS "P_1", 0 AS "D", 0.979167 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_3" AS t1
   LEFT OUTER JOIN
   "DT_node_data_3" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_4" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_2", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_41" > 1.415085)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" <= -0.697241) AND (t."X_88" <= 0.170859)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" <= -0.697241) AND (t."X_88" > 0.170859) AND (t."X_82" > -0.065125)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" <= -0.697241) AND (t."X_88" > 0.170859) AND (t."X_82" <= -0.065125) AND (t."X_95" <= -0.108548)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" <= -0.697241) AND (t."X_88" > 0.170859) AND (t."X_82" <= -0.065125) AND (t."X_95" > -0.108548)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" <= -1.262800) AND (t."X_28" <= 0.770158)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" <= -1.262800) AND (t."X_28" > 0.770158)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" > 1.819644)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" <= 1.819644) AND (t."X_88" <= -0.222262) AND (t."X_99" > 0.801117)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" <= 1.819644) AND (t."X_88" <= -0.222262) AND (t."X_99" <= 0.801117) AND (t."X_96" <= 0.434422) AND (t."X_98" <= -1.149947)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" <= 1.819644) AND (t."X_88" <= -0.222262) AND (t."X_99" <= 0.801117) AND (t."X_96" <= 0.434422) AND (t."X_98" > -1.149947)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" <= 1.819644) AND (t."X_88" <= -0.222262) AND (t."X_99" <= 0.801117) AND (t."X_96" > 0.434422) AND (t."X_95" > 0.648743)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" <= 1.819644) AND (t."X_88" <= -0.222262) AND (t."X_99" <= 0.801117) AND (t."X_96" > 0.434422) AND (t."X_95" <= 0.648743) AND (t."X_28" <= -1.185625)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" <= 1.819644) AND (t."X_88" <= -0.222262) AND (t."X_99" <= 0.801117) AND (t."X_96" > 0.434422) AND (t."X_95" <= 0.648743) AND (t."X_28" > -1.185625)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" <= 1.819644) AND (t."X_88" > -0.222262) AND (t."X_93" <= -0.296736) AND (t."X_99" <= 0.128548)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" <= 1.819644) AND (t."X_88" > -0.222262) AND (t."X_93" <= -0.296736) AND (t."X_99" > 0.128548)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" <= 1.819644) AND (t."X_88" > -0.222262) AND (t."X_93" > -0.296736) AND (t."X_93" <= 1.362121)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" <= 1.819644) AND (t."X_88" > -0.222262) AND (t."X_93" > -0.296736) AND (t."X_93" > 1.362121) AND (t."X_99" <= 0.352411)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" <= 1.819644) AND (t."X_88" > -0.222262) AND (t."X_93" > -0.296736) AND (t."X_93" > 1.362121) AND (t."X_99" > 0.352411)) THEN 36 ELSE NULL END AS Leaf_36
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.492188 AS "P_0", 0.507812 AS "P_1", 1 AS "D", 0.507812 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.742857 AS "P_0", 0.257143 AS "P_1", 0 AS "D", 0.742857 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.317073 AS "P_0", 0.682927 AS "P_1", 1 AS "D", 0.682927 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.470588 AS "P_0", 0.529412 AS "P_1", 1 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.202899 AS "P_0", 0.797101 AS "P_1", 1 AS "D", 0.797101 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.413793 AS "P_0", 0.586207 AS "P_1", 1 AS "D", 0.586207 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.027027 AS "P_0", 0.972973 AS "P_1", 1 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_5" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_55" <= -0.805764) AND (t."X_99" > 0.853035)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_55" <= -0.805764) AND (t."X_99" <= 0.853035) AND (t."X_90" <= -1.739036)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_55" <= -0.805764) AND (t."X_99" <= 0.853035) AND (t."X_90" > -1.739036)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" > 0.643148) AND (t."X_95" <= -0.344808)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" > 0.643148) AND (t."X_95" > -0.344808) AND (t."X_39" <= -0.710812)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" > 0.643148) AND (t."X_95" > -0.344808) AND (t."X_39" > -0.710812)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" <= 0.643148) AND (t."X_87" <= -0.753132) AND (t."X_92" <= -0.142525)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" <= 0.643148) AND (t."X_87" <= -0.753132) AND (t."X_92" > -0.142525) AND (t."X_99" <= -0.016087)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" <= 0.643148) AND (t."X_87" <= -0.753132) AND (t."X_92" > -0.142525) AND (t."X_99" > -0.016087)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" <= 0.643148) AND (t."X_87" > -0.753132) AND (t."X_39" > 1.827507)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" <= 0.643148) AND (t."X_87" > -0.753132) AND (t."X_39" <= 1.827507) AND (t."X_51" <= -0.876034) AND (t."X_99" <= 0.827029)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" <= 0.643148) AND (t."X_87" > -0.753132) AND (t."X_39" <= 1.827507) AND (t."X_51" <= -0.876034) AND (t."X_99" > 0.827029) AND (t."X_87" <= -0.027427)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" <= 0.643148) AND (t."X_87" > -0.753132) AND (t."X_39" <= 1.827507) AND (t."X_51" <= -0.876034) AND (t."X_99" > 0.827029) AND (t."X_87" > -0.027427)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" <= 0.643148) AND (t."X_87" > -0.753132) AND (t."X_39" <= 1.827507) AND (t."X_51" > -0.876034) AND (t."X_16" <= -1.665123) AND (t."X_39" <= 0.287466)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" <= 0.643148) AND (t."X_87" > -0.753132) AND (t."X_39" <= 1.827507) AND (t."X_51" > -0.876034) AND (t."X_16" <= -1.665123) AND (t."X_39" > 0.287466)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" <= 0.643148) AND (t."X_87" > -0.753132) AND (t."X_39" <= 1.827507) AND (t."X_51" > -0.876034) AND (t."X_16" > -1.665123) AND (t."X_95" <= -1.440635) AND (t."X_39" <= -0.453338)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" <= 0.643148) AND (t."X_87" > -0.753132) AND (t."X_39" <= 1.827507) AND (t."X_51" > -0.876034) AND (t."X_16" > -1.665123) AND (t."X_95" <= -1.440635) AND (t."X_39" > -0.453338)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" <= 0.643148) AND (t."X_87" > -0.753132) AND (t."X_39" <= 1.827507) AND (t."X_51" > -0.876034) AND (t."X_16" > -1.665123) AND (t."X_95" > -1.440635) AND (t."X_99" > -1.203793)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" <= 0.643148) AND (t."X_87" > -0.753132) AND (t."X_39" <= 1.827507) AND (t."X_51" > -0.876034) AND (t."X_16" > -1.665123) AND (t."X_95" > -1.440635) AND (t."X_99" <= -1.203793) AND (t."X_55" <= -0.062948)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_55" > -0.805764) AND (t."X_43" <= 0.643148) AND (t."X_87" > -0.753132) AND (t."X_39" <= 1.827507) AND (t."X_51" > -0.876034) AND (t."X_16" > -1.665123) AND (t."X_95" > -1.440635) AND (t."X_99" <= -1.203793) AND (t."X_55" > -0.062948)) THEN 38 ELSE NULL END AS Leaf_38
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.554688 AS "P_0", 0.445312 AS "P_1", 0 AS "D", 0.554688 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.120000 AS "P_0", 0.880000 AS "P_1", 1 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.660194 AS "P_0", 0.339806 AS "P_1", 0 AS "D", 0.660194 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.744186 AS "P_0", 0.255814 AS "P_1", 0 AS "D", 0.744186 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.235294 AS "P_0", 0.764706 AS "P_1", 1 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.835616 AS "P_0", 0.164384 AS "P_1", 0 AS "D", 0.835616 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.871429 AS "P_0", 0.128571 AS "P_1", 0 AS "D", 0.871429 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.946429 AS "P_0", 0.053571 AS "P_1", 0 AS "D", 0.946429 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.962963 AS "P_0", 0.037037 AS "P_1", 0 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.980769 AS "P_0", 0.019231 AS "P_1", 0 AS "D", 0.980769 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_5" AS t1
   LEFT OUTER JOIN
   "DT_node_data_5" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_6" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= -0.974855)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_6" > -0.974855) AND (t."X_93" > 0.963618) AND (t."X_98" <= -1.168565)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_6" > -0.974855) AND (t."X_93" > 0.963618) AND (t."X_98" > -1.168565)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_6" > -0.974855) AND (t."X_93" <= 0.963618) AND (t."X_49" > 0.515040) AND (t."X_92" > -0.076942)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_6" > -0.974855) AND (t."X_93" <= 0.963618) AND (t."X_49" > 0.515040) AND (t."X_92" <= -0.076942) AND (t."X_11" <= 0.588183)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_6" > -0.974855) AND (t."X_93" <= 0.963618) AND (t."X_49" > 0.515040) AND (t."X_92" <= -0.076942) AND (t."X_11" > 0.588183)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_6" > -0.974855) AND (t."X_93" <= 0.963618) AND (t."X_49" <= 0.515040) AND (t."X_71" <= -1.201597) AND (t."X_90" > 0.654184)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_6" > -0.974855) AND (t."X_93" <= 0.963618) AND (t."X_49" <= 0.515040) AND (t."X_71" <= -1.201597) AND (t."X_90" <= 0.654184) AND (t."X_99" <= 1.622527)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_6" > -0.974855) AND (t."X_93" <= 0.963618) AND (t."X_49" <= 0.515040) AND (t."X_71" <= -1.201597) AND (t."X_90" <= 0.654184) AND (t."X_99" > 1.622527)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_6" > -0.974855) AND (t."X_93" <= 0.963618) AND (t."X_49" <= 0.515040) AND (t."X_71" > -1.201597) AND (t."X_71" > 1.277974)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_6" > -0.974855) AND (t."X_93" <= 0.963618) AND (t."X_49" <= 0.515040) AND (t."X_71" > -1.201597) AND (t."X_71" <= 1.277974) AND (t."X_14" > 1.534514)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_6" > -0.974855) AND (t."X_93" <= 0.963618) AND (t."X_49" <= 0.515040) AND (t."X_71" > -1.201597) AND (t."X_71" <= 1.277974) AND (t."X_14" <= 1.534514) AND (t."X_91" > 1.263771) AND (t."X_95" <= 0.486360)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_6" > -0.974855) AND (t."X_93" <= 0.963618) AND (t."X_49" <= 0.515040) AND (t."X_71" > -1.201597) AND (t."X_71" <= 1.277974) AND (t."X_14" <= 1.534514) AND (t."X_91" > 1.263771) AND (t."X_95" > 0.486360)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_6" > -0.974855) AND (t."X_93" <= 0.963618) AND (t."X_49" <= 0.515040) AND (t."X_71" > -1.201597) AND (t."X_71" <= 1.277974) AND (t."X_14" <= 1.534514) AND (t."X_91" <= 1.263771) AND (t."X_27" <= 0.910390)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_6" > -0.974855) AND (t."X_93" <= 0.963618) AND (t."X_49" <= 0.515040) AND (t."X_71" > -1.201597) AND (t."X_71" <= 1.277974) AND (t."X_14" <= 1.534514) AND (t."X_91" <= 1.263771) AND (t."X_27" > 0.910390) AND (t."X_71" <= 0.104501)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_6" > -0.974855) AND (t."X_93" <= 0.963618) AND (t."X_49" <= 0.515040) AND (t."X_71" > -1.201597) AND (t."X_71" <= 1.277974) AND (t."X_14" <= 1.534514) AND (t."X_91" <= 1.263771) AND (t."X_27" > 0.910390) AND (t."X_71" > 0.104501)) THEN 30 ELSE NULL END AS Leaf_30
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.677966 AS "P_0", 0.322034 AS "P_1", 0 AS "D", 0.677966 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.722222 AS "P_0", 0.277778 AS "P_1", 0 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.825000 AS "P_0", 0.175000 AS "P_1", 0 AS "D", 0.825000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.898551 AS "P_0", 0.101449 AS "P_1", 0 AS "D", 0.898551 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.925373 AS "P_0", 0.074627 AS "P_1", 0 AS "D", 0.925373 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.953846 AS "P_0", 0.046154 AS "P_1", 0 AS "D", 0.953846 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.983333 AS "P_0", 0.016667 AS "P_1", 0 AS "D", 0.983333 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_6" AS t1
   LEFT OUTER JOIN
   "DT_node_data_6" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_7" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" <= -0.280375)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_91" <= 0.252987) AND (t."X_71" > 0.826090)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_91" <= 0.252987) AND (t."X_71" <= 0.826090) AND (t."X_28" > 0.940305)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_91" <= 0.252987) AND (t."X_71" <= 0.826090) AND (t."X_28" <= 0.940305) AND (t."X_97" <= -1.353259)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_91" <= 0.252987) AND (t."X_71" <= 0.826090) AND (t."X_28" <= 0.940305) AND (t."X_97" > -1.353259) AND (t."X_71" <= -0.657328) AND (t."X_93" > -0.999278)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_91" <= 0.252987) AND (t."X_71" <= 0.826090) AND (t."X_28" <= 0.940305) AND (t."X_97" > -1.353259) AND (t."X_71" <= -0.657328) AND (t."X_93" <= -0.999278) AND (t."X_98" <= 0.539156)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_91" <= 0.252987) AND (t."X_71" <= 0.826090) AND (t."X_28" <= 0.940305) AND (t."X_97" > -1.353259) AND (t."X_71" <= -0.657328) AND (t."X_93" <= -0.999278) AND (t."X_98" > 0.539156)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_91" <= 0.252987) AND (t."X_71" <= 0.826090) AND (t."X_28" <= 0.940305) AND (t."X_97" > -1.353259) AND (t."X_71" > -0.657328) AND (t."X_49" <= 2.106988)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_91" <= 0.252987) AND (t."X_71" <= 0.826090) AND (t."X_28" <= 0.940305) AND (t."X_97" > -1.353259) AND (t."X_71" > -0.657328) AND (t."X_49" > 2.106988)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_91" > 0.252987) AND (t."X_99" <= -1.544500)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_91" > 0.252987) AND (t."X_99" > -1.544500)) THEN 20 ELSE NULL END AS Leaf_20
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.585938 AS "P_0", 0.414062 AS "P_1", 0 AS "D", 0.585938 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.320513 AS "P_0", 0.679487 AS "P_1", 1 AS "D", 0.679487 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.510638 AS "P_0", 0.489362 AS "P_1", 0 AS "D", 0.510638 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.032258 AS "P_0", 0.967742 AS "P_1", 1 AS "D", 0.967742 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.631579 AS "P_0", 0.368421 AS "P_1", 0 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.705882 AS "P_0", 0.294118 AS "P_1", 0 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.774194 AS "P_0", 0.225806 AS "P_1", 0 AS "D", 0.774194 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.913043 AS "P_0", 0.086957 AS "P_1", 0 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_7" AS t1
   LEFT OUTER JOIN
   "DT_node_data_7" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_8" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_82" > 0.485939) AND (t."X_20" > 1.526335)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_82" <= 0.485939) AND (t."X_93" <= -1.265949) AND (t."X_20" <= 1.968554)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_82" <= 0.485939) AND (t."X_93" <= -1.265949) AND (t."X_20" > 1.968554)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_82" > 0.485939) AND (t."X_20" <= 1.526335) AND (t."X_98" > 0.457026)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_82" > 0.485939) AND (t."X_20" <= 1.526335) AND (t."X_98" <= 0.457026) AND (t."X_24" > 0.174702) AND (t."X_90" <= -1.199260)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_82" > 0.485939) AND (t."X_20" <= 1.526335) AND (t."X_98" <= 0.457026) AND (t."X_24" > 0.174702) AND (t."X_90" > -1.199260)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_82" > 0.485939) AND (t."X_20" <= 1.526335) AND (t."X_98" <= 0.457026) AND (t."X_24" <= 0.174702) AND (t."X_91" <= -0.009756)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_82" > 0.485939) AND (t."X_20" <= 1.526335) AND (t."X_98" <= 0.457026) AND (t."X_24" <= 0.174702) AND (t."X_91" > -0.009756) AND (t."X_35" <= -0.713049)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_82" > 0.485939) AND (t."X_20" <= 1.526335) AND (t."X_98" <= 0.457026) AND (t."X_24" <= 0.174702) AND (t."X_91" > -0.009756) AND (t."X_35" > -0.713049)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_82" <= 0.485939) AND (t."X_93" > -1.265949) AND (t."X_35" <= -1.996100)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_82" <= 0.485939) AND (t."X_93" > -1.265949) AND (t."X_35" > -1.996100) AND (t."X_96" <= -1.692771)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_82" <= 0.485939) AND (t."X_93" > -1.265949) AND (t."X_35" > -1.996100) AND (t."X_96" > -1.692771) AND (t."X_98" > 1.321911) AND (t."X_35" <= -1.056613)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_82" <= 0.485939) AND (t."X_93" > -1.265949) AND (t."X_35" > -1.996100) AND (t."X_96" > -1.692771) AND (t."X_98" > 1.321911) AND (t."X_35" > -1.056613)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_82" <= 0.485939) AND (t."X_93" > -1.265949) AND (t."X_35" > -1.996100) AND (t."X_96" > -1.692771) AND (t."X_98" <= 1.321911) AND (t."X_50" > 1.584522) AND (t."X_99" <= 0.267951)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_82" <= 0.485939) AND (t."X_93" > -1.265949) AND (t."X_35" > -1.996100) AND (t."X_96" > -1.692771) AND (t."X_98" <= 1.321911) AND (t."X_50" > 1.584522) AND (t."X_99" > 0.267951)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_82" <= 0.485939) AND (t."X_93" > -1.265949) AND (t."X_35" > -1.996100) AND (t."X_96" > -1.692771) AND (t."X_98" <= 1.321911) AND (t."X_50" <= 1.584522) AND (t."X_20" <= -1.864209)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_82" <= 0.485939) AND (t."X_93" > -1.265949) AND (t."X_35" > -1.996100) AND (t."X_96" > -1.692771) AND (t."X_98" <= 1.321911) AND (t."X_50" <= 1.584522) AND (t."X_20" > -1.864209) AND (t."X_24" > 1.242990) AND (t."X_35" <= 0.307420)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_82" <= 0.485939) AND (t."X_93" > -1.265949) AND (t."X_35" > -1.996100) AND (t."X_96" > -1.692771) AND (t."X_98" <= 1.321911) AND (t."X_50" <= 1.584522) AND (t."X_20" > -1.864209) AND (t."X_24" > 1.242990) AND (t."X_35" > 0.307420)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_82" <= 0.485939) AND (t."X_93" > -1.265949) AND (t."X_35" > -1.996100) AND (t."X_96" > -1.692771) AND (t."X_98" <= 1.321911) AND (t."X_50" <= 1.584522) AND (t."X_20" > -1.864209) AND (t."X_24" <= 1.242990) AND (t."X_97" <= -1.667566)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_82" <= 0.485939) AND (t."X_93" > -1.265949) AND (t."X_35" > -1.996100) AND (t."X_96" > -1.692771) AND (t."X_98" <= 1.321911) AND (t."X_50" <= 1.584522) AND (t."X_20" > -1.864209) AND (t."X_24" <= 1.242990) AND (t."X_97" > -1.667566) AND (t."X_96" <= 0.583450)) THEN 39 ELSE NULL END AS Leaf_39,
      CASE WHEN((t."X_82" <= 0.485939) AND (t."X_93" > -1.265949) AND (t."X_35" > -1.996100) AND (t."X_96" > -1.692771) AND (t."X_98" <= 1.321911) AND (t."X_50" <= 1.584522) AND (t."X_20" > -1.864209) AND (t."X_24" <= 1.242990) AND (t."X_97" > -1.667566) AND (t."X_96" > 0.583450) AND (t."X_90" <= 0.035658)) THEN 41 ELSE NULL END AS Leaf_41,
      CASE WHEN((t."X_82" <= 0.485939) AND (t."X_93" > -1.265949) AND (t."X_35" > -1.996100) AND (t."X_96" > -1.692771) AND (t."X_98" <= 1.321911) AND (t."X_50" <= 1.584522) AND (t."X_20" > -1.864209) AND (t."X_24" <= 1.242990) AND (t."X_97" > -1.667566) AND (t."X_96" > 0.583450) AND (t."X_90" > 0.035658) AND (t."X_35" <= 0.244891)) THEN 43 ELSE NULL END AS Leaf_43,
      CASE WHEN((t."X_82" <= 0.485939) AND (t."X_93" > -1.265949) AND (t."X_35" > -1.996100) AND (t."X_96" > -1.692771) AND (t."X_98" <= 1.321911) AND (t."X_50" <= 1.584522) AND (t."X_20" > -1.864209) AND (t."X_24" <= 1.242990) AND (t."X_97" > -1.667566) AND (t."X_96" > 0.583450) AND (t."X_90" > 0.035658) AND (t."X_35" > 0.244891)) THEN 44 ELSE NULL END AS Leaf_44
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.468750 AS "P_0", 0.531250 AS "P_1", 1 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.341772 AS "P_0", 0.658228 AS "P_1", 1 AS "D", 0.658228 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.673469 AS "P_0", 0.326531 AS "P_1", 0 AS "D", 0.673469 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.590909 AS "P_0", 0.409091 AS "P_1", 0 AS "D", 0.590909 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.215385 AS "P_0", 0.784615 AS "P_1", 1 AS "D", 0.784615 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.190476 AS "P_0", 0.809524 AS "P_1", 1 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.152542 AS "P_0", 0.847458 AS "P_1", 1 AS "D", 0.847458 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.109091 AS "P_0", 0.890909 AS "P_1", 1 AS "D", 0.890909 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.078431 AS "P_0", 0.921569 AS "P_1", 1 AS "D", 0.921569 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.060000 AS "P_0", 0.940000 AS "P_1", 1 AS "D", 0.940000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_8" AS t1
   LEFT OUTER JOIN
   "DT_node_data_8" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_9" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" <= -0.664368)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_4" > -0.664368) AND (t."X_93" <= -0.654940) AND (t."X_37" <= -0.679979)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_4" > -0.664368) AND (t."X_93" <= -0.654940) AND (t."X_37" > -0.679979) AND (t."X_4" > 0.112060) AND (t."X_40" <= 1.000778)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_4" > -0.664368) AND (t."X_93" <= -0.654940) AND (t."X_37" > -0.679979) AND (t."X_4" > 0.112060) AND (t."X_40" > 1.000778)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_4" > -0.664368) AND (t."X_93" <= -0.654940) AND (t."X_37" > -0.679979) AND (t."X_4" <= 0.112060) AND (t."X_99" <= -0.991176)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_4" > -0.664368) AND (t."X_93" <= -0.654940) AND (t."X_37" > -0.679979) AND (t."X_4" <= 0.112060) AND (t."X_99" > -0.991176)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_4" > -0.664368) AND (t."X_93" > -0.654940) AND (t."X_98" <= -1.704905)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_4" > -0.664368) AND (t."X_93" > -0.654940) AND (t."X_98" > -1.704905) AND (t."X_95" > 1.883820)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_4" > -0.664368) AND (t."X_93" > -0.654940) AND (t."X_98" > -1.704905) AND (t."X_95" <= 1.883820) AND (t."X_83" > 0.817992) AND (t."X_75" <= -0.870458)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_4" > -0.664368) AND (t."X_93" > -0.654940) AND (t."X_98" > -1.704905) AND (t."X_95" <= 1.883820) AND (t."X_83" > 0.817992) AND (t."X_75" > -0.870458)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_4" > -0.664368) AND (t."X_93" > -0.654940) AND (t."X_98" > -1.704905) AND (t."X_95" <= 1.883820) AND (t."X_83" <= 0.817992) AND (t."X_97" > -0.472764)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_4" > -0.664368) AND (t."X_93" > -0.654940) AND (t."X_98" > -1.704905) AND (t."X_95" <= 1.883820) AND (t."X_83" <= 0.817992) AND (t."X_97" <= -0.472764) AND (t."X_99" <= -0.820301)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_4" > -0.664368) AND (t."X_93" > -0.654940) AND (t."X_98" > -1.704905) AND (t."X_95" <= 1.883820) AND (t."X_83" <= 0.817992) AND (t."X_97" <= -0.472764) AND (t."X_99" > -0.820301)) THEN 24 ELSE NULL END AS Leaf_24
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.484375 AS "P_0", 0.515625 AS "P_1", 1 AS "D", 0.515625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.305263 AS "P_0", 0.694737 AS "P_1", 1 AS "D", 0.694737 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.629630 AS "P_0", 0.370370 AS "P_1", 0 AS "D", 0.629630 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.176471 AS "P_0", 0.823529 AS "P_1", 1 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.151515 AS "P_0", 0.848485 AS "P_1", 1 AS "D", 0.848485 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_9" AS t1
   LEFT OUTER JOIN
   "DT_node_data_9" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_10" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_17" > 0.610171) AND (t."X_92" <= -1.334335)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_17" <= 0.610171) AND (t."X_93" <= -0.928239) AND (t."X_92" > 2.071312)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_17" <= 0.610171) AND (t."X_93" > -0.928239) AND (t."X_96" > 0.237911) AND (t."X_38" > 0.225754)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_17" <= 0.610171) AND (t."X_93" > -0.928239) AND (t."X_96" > 0.237911) AND (t."X_38" <= 0.225754) AND (t."X_98" <= -0.924909)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_17" <= 0.610171) AND (t."X_93" > -0.928239) AND (t."X_96" > 0.237911) AND (t."X_38" <= 0.225754) AND (t."X_98" > -0.924909) AND (t."X_0" <= -0.818072)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_17" <= 0.610171) AND (t."X_93" > -0.928239) AND (t."X_96" > 0.237911) AND (t."X_38" <= 0.225754) AND (t."X_98" > -0.924909) AND (t."X_0" > -0.818072) AND (t."X_91" <= -0.907529)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_17" <= 0.610171) AND (t."X_93" > -0.928239) AND (t."X_96" > 0.237911) AND (t."X_38" <= 0.225754) AND (t."X_98" > -0.924909) AND (t."X_0" > -0.818072) AND (t."X_91" > -0.907529)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_17" <= 0.610171) AND (t."X_93" > -0.928239) AND (t."X_96" <= 0.237911) AND (t."X_91" <= -0.708192) AND (t."X_8" <= -0.239490)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_17" <= 0.610171) AND (t."X_93" > -0.928239) AND (t."X_96" <= 0.237911) AND (t."X_91" <= -0.708192) AND (t."X_8" > -0.239490)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_17" > 0.610171) AND (t."X_92" > -1.334335) AND (t."X_93" <= -1.274648)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_17" > 0.610171) AND (t."X_92" > -1.334335) AND (t."X_93" > -1.274648)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_17" <= 0.610171) AND (t."X_93" > -0.928239) AND (t."X_96" <= 0.237911) AND (t."X_91" > -0.708192) AND (t."X_97" <= -1.598840)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_17" <= 0.610171) AND (t."X_93" > -0.928239) AND (t."X_96" <= 0.237911) AND (t."X_91" > -0.708192) AND (t."X_97" > -1.598840) AND (t."X_38" <= -1.755310)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_17" <= 0.610171) AND (t."X_93" > -0.928239) AND (t."X_96" <= 0.237911) AND (t."X_91" > -0.708192) AND (t."X_97" > -1.598840) AND (t."X_38" > -1.755310) AND (t."X_94" <= -1.915917)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_17" <= 0.610171) AND (t."X_93" > -0.928239) AND (t."X_96" <= 0.237911) AND (t."X_91" > -0.708192) AND (t."X_97" > -1.598840) AND (t."X_38" > -1.755310) AND (t."X_94" > -1.915917) AND (t."X_38" <= 1.429110)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_17" <= 0.610171) AND (t."X_93" > -0.928239) AND (t."X_96" <= 0.237911) AND (t."X_91" > -0.708192) AND (t."X_97" > -1.598840) AND (t."X_38" > -1.755310) AND (t."X_94" > -1.915917) AND (t."X_38" > 1.429110)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_17" <= 0.610171) AND (t."X_93" <= -0.928239) AND (t."X_92" <= 2.071312) AND (t."X_75" <= 0.434320)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_17" <= 0.610171) AND (t."X_93" <= -0.928239) AND (t."X_92" <= 2.071312) AND (t."X_75" > 0.434320) AND (t."X_99" <= -0.153931)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_17" <= 0.610171) AND (t."X_93" <= -0.928239) AND (t."X_92" <= 2.071312) AND (t."X_75" > 0.434320) AND (t."X_99" > -0.153931)) THEN 36 ELSE NULL END AS Leaf_36
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.593750 AS "P_0", 0.406250 AS "P_1", 0 AS "D", 0.593750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.489583 AS "P_0", 0.510417 AS "P_1", 1 AS "D", 0.510417 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.906250 AS "P_0", 0.093750 AS "P_1", 0 AS "D", 0.906250 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.966667 AS "P_0", 0.033333 AS "P_1", 0 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.361111 AS "P_0", 0.638889 AS "P_1", 1 AS "D", 0.638889 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.954545 AS "P_0", 0.045455 AS "P_1", 0 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.186047 AS "P_0", 0.813953 AS "P_1", 1 AS "D", 0.813953 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.620690 AS "P_0", 0.379310 AS "P_1", 0 AS "D", 0.620690 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.450000 AS "P_0", 0.550000 AS "P_1", 1 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.105263 AS "P_0", 0.894737 AS "P_1", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.081081 AS "P_0", 0.918919 AS "P_1", 1 AS "D", 0.918919 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.028571 AS "P_0", 0.971429 AS "P_1", 1 AS "D", 0.971429 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_10" AS t1
   LEFT OUTER JOIN
   "DT_node_data_10" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_11" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" <= -0.554352)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_95" <= -0.457505) AND (t."X_87" <= -1.651193)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_95" > -0.457505) AND (t."X_91" <= -0.531904) AND (t."X_90" <= 0.312065) AND (t."X_91" <= -0.610191)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_95" > -0.457505) AND (t."X_91" <= -0.531904) AND (t."X_90" <= 0.312065) AND (t."X_91" > -0.610191)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_95" > -0.457505) AND (t."X_91" <= -0.531904) AND (t."X_90" > 0.312065) AND (t."X_19" <= 1.617740)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_95" > -0.457505) AND (t."X_91" <= -0.531904) AND (t."X_90" > 0.312065) AND (t."X_19" > 1.617740)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_95" > -0.457505) AND (t."X_91" > -0.531904) AND (t."X_98" > 1.045040) AND (t."X_72" <= -0.735214)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_95" > -0.457505) AND (t."X_91" > -0.531904) AND (t."X_98" > 1.045040) AND (t."X_72" > -0.735214)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_95" <= -0.457505) AND (t."X_87" > -1.651193) AND (t."X_58" <= -1.913403)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_95" > -0.457505) AND (t."X_91" > -0.531904) AND (t."X_98" <= 1.045040) AND (t."X_96" <= 1.940700)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_95" > -0.457505) AND (t."X_91" > -0.531904) AND (t."X_98" <= 1.045040) AND (t."X_96" > 1.940700)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_95" <= -0.457505) AND (t."X_87" > -1.651193) AND (t."X_58" > -1.913403) AND (t."X_97" > 2.210611)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_95" <= -0.457505) AND (t."X_87" > -1.651193) AND (t."X_58" > -1.913403) AND (t."X_97" <= 2.210611) AND (t."X_72" > 2.027702)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_95" <= -0.457505) AND (t."X_87" > -1.651193) AND (t."X_58" > -1.913403) AND (t."X_97" <= 2.210611) AND (t."X_72" <= 2.027702) AND (t."X_96" > 1.687476)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_95" <= -0.457505) AND (t."X_87" > -1.651193) AND (t."X_58" > -1.913403) AND (t."X_97" <= 2.210611) AND (t."X_72" <= 2.027702) AND (t."X_96" <= 1.687476) AND (t."X_19" <= 0.594430)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_95" <= -0.457505) AND (t."X_87" > -1.651193) AND (t."X_58" > -1.913403) AND (t."X_97" <= 2.210611) AND (t."X_72" <= 2.027702) AND (t."X_96" <= 1.687476) AND (t."X_19" > 0.594430) AND (t."X_96" <= 0.321795)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_95" <= -0.457505) AND (t."X_87" > -1.651193) AND (t."X_58" > -1.913403) AND (t."X_97" <= 2.210611) AND (t."X_72" <= 2.027702) AND (t."X_96" <= 1.687476) AND (t."X_19" > 0.594430) AND (t."X_96" > 0.321795)) THEN 32 ELSE NULL END AS Leaf_32
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.578125 AS "P_0", 0.421875 AS "P_1", 0 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.448980 AS "P_0", 0.551020 AS "P_1", 1 AS "D", 0.551020 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.722222 AS "P_0", 0.277778 AS "P_1", 0 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.290323 AS "P_0", 0.709677 AS "P_1", 1 AS "D", 0.709677 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.029412 AS "P_0", 0.970588 AS "P_1", 1 AS "D", 0.970588 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.866667 AS "P_0", 0.133333 AS "P_1", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.896552 AS "P_0", 0.103448 AS "P_1", 0 AS "D", 0.896552 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.962963 AS "P_0", 0.037037 AS "P_1", 0 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_11" AS t1
   LEFT OUTER JOIN
   "DT_node_data_11" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_12" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_61" > 0.138369) AND (t."X_66" <= -2.329472)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_61" > 0.138369) AND (t."X_66" > -2.329472) AND (t."X_98" <= -1.676680)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_61" <= 0.138369) AND (t."X_99" > 2.083306) AND (t."X_61" <= -0.687438)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_61" <= 0.138369) AND (t."X_99" > 2.083306) AND (t."X_61" > -0.687438)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_61" <= 0.138369) AND (t."X_99" <= 2.083306) AND (t."X_97" <= -0.849608) AND (t."X_99" <= -0.381248)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_61" <= 0.138369) AND (t."X_99" <= 2.083306) AND (t."X_97" <= -0.849608) AND (t."X_99" > -0.381248)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_61" > 0.138369) AND (t."X_66" > -2.329472) AND (t."X_98" > -1.676680) AND (t."X_76" > 2.007988)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_61" > 0.138369) AND (t."X_66" > -2.329472) AND (t."X_98" > -1.676680) AND (t."X_76" <= 2.007988) AND (t."X_91" <= -2.733475)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_61" > 0.138369) AND (t."X_66" > -2.329472) AND (t."X_98" > -1.676680) AND (t."X_76" <= 2.007988) AND (t."X_91" > -2.733475)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_61" <= 0.138369) AND (t."X_99" <= 2.083306) AND (t."X_97" > -0.849608) AND (t."X_61" <= -0.671552)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_61" <= 0.138369) AND (t."X_99" <= 2.083306) AND (t."X_97" > -0.849608) AND (t."X_61" > -0.671552) AND (t."X_61" <= -0.566309)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_61" <= 0.138369) AND (t."X_99" <= 2.083306) AND (t."X_97" > -0.849608) AND (t."X_61" > -0.671552) AND (t."X_61" > -0.566309) AND (t."X_98" <= 2.042984)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_61" <= 0.138369) AND (t."X_99" <= 2.083306) AND (t."X_97" > -0.849608) AND (t."X_61" > -0.671552) AND (t."X_61" > -0.566309) AND (t."X_98" > 2.042984)) THEN 24 ELSE NULL END AS Leaf_24
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.570312 AS "P_0", 0.429688 AS "P_1", 0 AS "D", 0.570312 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.868421 AS "P_0", 0.131579 AS "P_1", 0 AS "D", 0.868421 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.134615 AS "P_0", 0.865385 AS "P_1", 1 AS "D", 0.865385 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.042553 AS "P_0", 0.957447 AS "P_1", 1 AS "D", 0.957447 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.914286 AS "P_0", 0.085714 AS "P_1", 0 AS "D", 0.914286 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.953846 AS "P_0", 0.046154 AS "P_1", 0 AS "D", 0.953846 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.021739 AS "P_0", 0.978261 AS "P_1", 1 AS "D", 0.978261 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_12" AS t1
   LEFT OUTER JOIN
   "DT_node_data_12" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_13" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" <= -0.280375) AND (t."X_99" > 2.083306)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_94" <= -1.881181)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_1" <= -0.280375) AND (t."X_99" <= 2.083306) AND (t."X_93" <= -1.444955)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_1" <= -0.280375) AND (t."X_99" <= 2.083306) AND (t."X_93" > -1.444955)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_94" > -1.881181) AND (t."X_16" <= -0.540113)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_94" > -1.881181) AND (t."X_16" > -0.540113) AND (t."X_98" <= -1.250065)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_94" > -1.881181) AND (t."X_16" > -0.540113) AND (t."X_98" > -1.250065) AND (t."X_17" <= -1.648154)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_94" > -1.881181) AND (t."X_16" > -0.540113) AND (t."X_98" > -1.250065) AND (t."X_17" > -1.648154) AND (t."X_90" <= -1.456933)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_94" > -1.881181) AND (t."X_16" > -0.540113) AND (t."X_98" > -1.250065) AND (t."X_17" > -1.648154) AND (t."X_90" > -1.456933) AND (t."X_28" <= -1.817057) AND (t."X_99" <= 1.687084)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_94" > -1.881181) AND (t."X_16" > -0.540113) AND (t."X_98" > -1.250065) AND (t."X_17" > -1.648154) AND (t."X_90" > -1.456933) AND (t."X_28" <= -1.817057) AND (t."X_99" > 1.687084)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_94" > -1.881181) AND (t."X_16" > -0.540113) AND (t."X_98" > -1.250065) AND (t."X_17" > -1.648154) AND (t."X_90" > -1.456933) AND (t."X_28" > -1.817057) AND (t."X_28" > 1.756663) AND (t."X_4" <= 0.607720)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_94" > -1.881181) AND (t."X_16" > -0.540113) AND (t."X_98" > -1.250065) AND (t."X_17" > -1.648154) AND (t."X_90" > -1.456933) AND (t."X_28" > -1.817057) AND (t."X_28" > 1.756663) AND (t."X_4" > 0.607720)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_94" > -1.881181) AND (t."X_16" > -0.540113) AND (t."X_98" > -1.250065) AND (t."X_17" > -1.648154) AND (t."X_90" > -1.456933) AND (t."X_28" > -1.817057) AND (t."X_28" <= 1.756663) AND (t."X_93" > -0.928239)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_94" > -1.881181) AND (t."X_16" > -0.540113) AND (t."X_98" > -1.250065) AND (t."X_17" > -1.648154) AND (t."X_90" > -1.456933) AND (t."X_28" > -1.817057) AND (t."X_28" <= 1.756663) AND (t."X_93" <= -0.928239) AND (t."X_99" <= 1.622719)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_1" > -0.280375) AND (t."X_94" > -1.881181) AND (t."X_16" > -0.540113) AND (t."X_98" > -1.250065) AND (t."X_17" > -1.648154) AND (t."X_90" > -1.456933) AND (t."X_28" > -1.817057) AND (t."X_28" <= 1.756663) AND (t."X_93" <= -0.928239) AND (t."X_99" > 1.622719)) THEN 28 ELSE NULL END AS Leaf_28
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.492188 AS "P_0", 0.507812 AS "P_1", 1 AS "D", 0.507812 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.938776 AS "P_0", 0.061224 AS "P_1", 0 AS "D", 0.938776 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.215190 AS "P_0", 0.784810 AS "P_1", 1 AS "D", 0.784810 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.978723 AS "P_0", 0.021277 AS "P_1", 0 AS "D", 0.978723 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.173333 AS "P_0", 0.826667 AS "P_1", 1 AS "D", 0.826667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.282609 AS "P_0", 0.717391 AS "P_1", 1 AS "D", 0.717391 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.175000 AS "P_0", 0.825000 AS "P_1", 1 AS "D", 0.825000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.108108 AS "P_0", 0.891892 AS "P_1", 1 AS "D", 0.891892 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.031250 AS "P_0", 0.968750 AS "P_1", 1 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_13" AS t1
   LEFT OUTER JOIN
   "DT_node_data_13" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_14" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_81" <= -1.044668) AND (t."X_13" <= 0.903249)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_81" <= -1.044668) AND (t."X_13" > 0.903249) AND (t."X_99" <= -0.191813)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_81" <= -1.044668) AND (t."X_13" > 0.903249) AND (t."X_99" > -0.191813)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" > 0.076575) AND (t."X_93" <= -0.960012) AND (t."X_13" > -0.310050)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" > 0.076575) AND (t."X_93" <= -0.960012) AND (t."X_13" <= -0.310050) AND (t."X_81" <= 1.372479)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" > 0.076575) AND (t."X_93" <= -0.960012) AND (t."X_13" <= -0.310050) AND (t."X_81" > 1.372479)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" > 0.076575) AND (t."X_93" > -0.960012) AND (t."X_98" <= -1.286187)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" > 0.076575) AND (t."X_93" > -0.960012) AND (t."X_98" > -1.286187) AND (t."X_97" <= -1.598840)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" > 0.076575) AND (t."X_93" > -0.960012) AND (t."X_98" > -1.286187) AND (t."X_97" > -1.598840) AND (t."X_22" <= -0.703850) AND (t."X_93" <= 0.376484)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" > 0.076575) AND (t."X_93" > -0.960012) AND (t."X_98" > -1.286187) AND (t."X_97" > -1.598840) AND (t."X_22" <= -0.703850) AND (t."X_93" > 0.376484)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" > 0.076575) AND (t."X_93" > -0.960012) AND (t."X_98" > -1.286187) AND (t."X_97" > -1.598840) AND (t."X_22" > -0.703850) AND (t."X_86" > 1.190799)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" <= 0.076575) AND (t."X_62" <= 0.534130) AND (t."X_24" <= -0.358485) AND (t."X_13" <= 0.534778)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" <= 0.076575) AND (t."X_62" <= 0.534130) AND (t."X_24" <= -0.358485) AND (t."X_13" > 0.534778)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" <= 0.076575) AND (t."X_62" <= 0.534130) AND (t."X_24" > -0.358485) AND (t."X_94" > -0.675666)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" <= 0.076575) AND (t."X_62" <= 0.534130) AND (t."X_24" > -0.358485) AND (t."X_94" <= -0.675666) AND (t."X_81" <= -0.479915)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" <= 0.076575) AND (t."X_62" <= 0.534130) AND (t."X_24" > -0.358485) AND (t."X_94" <= -0.675666) AND (t."X_81" > -0.479915)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" <= 0.076575) AND (t."X_62" > 0.534130) AND (t."X_98" <= 0.810597)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" <= 0.076575) AND (t."X_62" > 0.534130) AND (t."X_98" > 0.810597) AND (t."X_98" <= 0.991493)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" <= 0.076575) AND (t."X_62" > 0.534130) AND (t."X_98" > 0.810597) AND (t."X_98" > 0.991493)) THEN 38 ELSE NULL END AS Leaf_38,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" > 0.076575) AND (t."X_93" > -0.960012) AND (t."X_98" > -1.286187) AND (t."X_97" > -1.598840) AND (t."X_22" > -0.703850) AND (t."X_86" <= 1.190799) AND (t."X_98" > 1.478439)) THEN 40 ELSE NULL END AS Leaf_40,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" > 0.076575) AND (t."X_93" > -0.960012) AND (t."X_98" > -1.286187) AND (t."X_97" > -1.598840) AND (t."X_22" > -0.703850) AND (t."X_86" <= 1.190799) AND (t."X_98" <= 1.478439) AND (t."X_7" <= 0.416637)) THEN 41 ELSE NULL END AS Leaf_41,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" > 0.076575) AND (t."X_93" > -0.960012) AND (t."X_98" > -1.286187) AND (t."X_97" > -1.598840) AND (t."X_22" > -0.703850) AND (t."X_86" <= 1.190799) AND (t."X_98" <= 1.478439) AND (t."X_7" > 0.416637) AND (t."X_99" <= -0.010932)) THEN 43 ELSE NULL END AS Leaf_43,
      CASE WHEN((t."X_81" > -1.044668) AND (t."X_81" > 0.076575) AND (t."X_93" > -0.960012) AND (t."X_98" > -1.286187) AND (t."X_97" > -1.598840) AND (t."X_22" > -0.703850) AND (t."X_86" <= 1.190799) AND (t."X_98" <= 1.478439) AND (t."X_7" > 0.416637) AND (t."X_99" > -0.010932)) THEN 44 ELSE NULL END AS Leaf_44
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.523438 AS "P_0", 0.476562 AS "P_1", 0 AS "D", 0.523438 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.585586 AS "P_0", 0.414414 AS "P_1", 0 AS "D", 0.585586 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.772727 AS "P_0", 0.227273 AS "P_1", 0 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.462687 AS "P_0", 0.537313 AS "P_1", 1 AS "D", 0.537313 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.352941 AS "P_0", 0.647059 AS "P_1", 1 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.282609 AS "P_0", 0.717391 AS "P_1", 1 AS "D", 0.717391 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.232558 AS "P_0", 0.767442 AS "P_1", 1 AS "D", 0.767442 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.121212 AS "P_0", 0.878788 AS "P_1", 1 AS "D", 0.878788 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.064516 AS "P_0", 0.935484 AS "P_1", 1 AS "D", 0.935484 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.033333 AS "P_0", 0.966667 AS "P_1", 1 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_14" AS t1
   LEFT OUTER JOIN
   "DT_node_data_14" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_15" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" > 0.037158) AND (t."X_97" <= -0.676784) AND (t."X_52" > 0.005977)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_1" > 0.037158) AND (t."X_97" <= -0.676784) AND (t."X_52" <= 0.005977) AND (t."X_94" <= -0.782614)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_1" > 0.037158) AND (t."X_97" <= -0.676784) AND (t."X_52" <= 0.005977) AND (t."X_94" > -0.782614)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_1" > 0.037158) AND (t."X_97" > -0.676784) AND (t."X_29" <= -1.618108)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_1" <= 0.037158) AND (t."X_99" > 2.244703)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_1" > 0.037158) AND (t."X_97" > -0.676784) AND (t."X_29" > -1.618108) AND (t."X_45" <= -2.338897)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_1" > 0.037158) AND (t."X_97" > -0.676784) AND (t."X_29" > -1.618108) AND (t."X_45" > -2.338897) AND (t."X_99" <= -1.606940)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_1" > 0.037158) AND (t."X_97" > -0.676784) AND (t."X_29" > -1.618108) AND (t."X_45" > -2.338897) AND (t."X_99" > -1.606940) AND (t."X_98" <= -1.541456)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_1" > 0.037158) AND (t."X_97" > -0.676784) AND (t."X_29" > -1.618108) AND (t."X_45" > -2.338897) AND (t."X_99" > -1.606940) AND (t."X_98" > -1.541456)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_1" <= 0.037158) AND (t."X_99" <= 2.244703) AND (t."X_92" <= -1.897093) AND (t."X_52" <= 0.816003)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_1" <= 0.037158) AND (t."X_99" <= 2.244703) AND (t."X_92" <= -1.897093) AND (t."X_52" > 0.816003)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_1" <= 0.037158) AND (t."X_99" <= 2.244703) AND (t."X_92" > -1.897093) AND (t."X_96" > -0.878991)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_1" <= 0.037158) AND (t."X_99" <= 2.244703) AND (t."X_92" > -1.897093) AND (t."X_96" <= -0.878991) AND (t."X_96" <= -1.158617)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_1" <= 0.037158) AND (t."X_99" <= 2.244703) AND (t."X_92" > -1.897093) AND (t."X_96" <= -0.878991) AND (t."X_96" > -1.158617)) THEN 26 ELSE NULL END AS Leaf_26
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.531250 AS "P_0", 0.468750 AS "P_1", 0 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.943396 AS "P_0", 0.056604 AS "P_1", 0 AS "D", 0.943396 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.240000 AS "P_0", 0.760000 AS "P_1", 1 AS "D", 0.760000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.578947 AS "P_0", 0.421053 AS "P_1", 0 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.075472 AS "P_0", 0.924528 AS "P_1", 1 AS "D", 0.924528 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.961538 AS "P_0", 0.038462 AS "P_1", 0 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.057692 AS "P_0", 0.942308 AS "P_1", 1 AS "D", 0.942308 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.039216 AS "P_0", 0.960784 AS "P_1", 1 AS "D", 0.960784 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.980000 AS "P_0", 0.020000 AS "P_1", 0 AS "D", 0.980000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_15" AS t1
   LEFT OUTER JOIN
   "DT_node_data_15" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_16" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_24" > 0.467661) AND (t."X_60" > 0.008519) AND (t."X_88" <= -0.630799) AND (t."X_98" <= -0.770950)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_24" > 0.467661) AND (t."X_60" > 0.008519) AND (t."X_88" <= -0.630799) AND (t."X_98" > -0.770950)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_24" > 0.467661) AND (t."X_60" > 0.008519) AND (t."X_88" > -0.630799) AND (t."X_87" <= 1.594486)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_24" > 0.467661) AND (t."X_60" > 0.008519) AND (t."X_88" > -0.630799) AND (t."X_87" > 1.594486)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_24" > 0.467661) AND (t."X_60" <= 0.008519) AND (t."X_93" <= -1.394690)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_24" > 0.467661) AND (t."X_60" <= 0.008519) AND (t."X_93" > -1.394690)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_24" <= 0.467661) AND (t."X_93" <= -0.669516)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_24" <= 0.467661) AND (t."X_93" > -0.669516) AND (t."X_95" <= -0.534545) AND (t."X_87" <= -1.017249)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_24" <= 0.467661) AND (t."X_93" > -0.669516) AND (t."X_95" <= -0.534545) AND (t."X_87" > -1.017249)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_24" <= 0.467661) AND (t."X_93" > -0.669516) AND (t."X_95" > -0.534545) AND (t."X_98" > 1.448074)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_24" <= 0.467661) AND (t."X_93" > -0.669516) AND (t."X_95" > -0.534545) AND (t."X_98" <= 1.448074) AND (t."X_60" > 1.026471)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_24" <= 0.467661) AND (t."X_93" > -0.669516) AND (t."X_95" > -0.534545) AND (t."X_98" <= 1.448074) AND (t."X_60" <= 1.026471) AND (t."X_90" <= -1.519213) AND (t."X_88" <= 1.404301)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_24" <= 0.467661) AND (t."X_93" > -0.669516) AND (t."X_95" > -0.534545) AND (t."X_98" <= 1.448074) AND (t."X_60" <= 1.026471) AND (t."X_90" <= -1.519213) AND (t."X_88" > 1.404301)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_24" <= 0.467661) AND (t."X_93" > -0.669516) AND (t."X_95" > -0.534545) AND (t."X_98" <= 1.448074) AND (t."X_60" <= 1.026471) AND (t."X_90" > -1.519213) AND (t."X_24" > 0.103639) AND (t."X_98" <= -0.363842)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_24" <= 0.467661) AND (t."X_93" > -0.669516) AND (t."X_95" > -0.534545) AND (t."X_98" <= 1.448074) AND (t."X_60" <= 1.026471) AND (t."X_90" > -1.519213) AND (t."X_24" > 0.103639) AND (t."X_98" > -0.363842)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_24" <= 0.467661) AND (t."X_93" > -0.669516) AND (t."X_95" > -0.534545) AND (t."X_98" <= 1.448074) AND (t."X_60" <= 1.026471) AND (t."X_90" > -1.519213) AND (t."X_24" <= 0.103639) AND (t."X_99" <= -1.658985)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_24" <= 0.467661) AND (t."X_93" > -0.669516) AND (t."X_95" > -0.534545) AND (t."X_98" <= 1.448074) AND (t."X_60" <= 1.026471) AND (t."X_90" > -1.519213) AND (t."X_24" <= 0.103639) AND (t."X_99" > -1.658985)) THEN 32 ELSE NULL END AS Leaf_32
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.607143 AS "P_0", 0.392857 AS "P_1", 0 AS "D", 0.607143 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.295455 AS "P_0", 0.704545 AS "P_1", 1 AS "D", 0.704545 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.074074 AS "P_0", 0.925926 AS "P_1", 1 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.647059 AS "P_0", 0.352941 AS "P_1", 0 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.459016 AS "P_0", 0.540984 AS "P_1", 1 AS "D", 0.540984 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.372549 AS "P_0", 0.627451 AS "P_1", 1 AS "D", 0.627451 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.304348 AS "P_0", 0.695652 AS "P_1", 1 AS "D", 0.695652 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.179487 AS "P_0", 0.820513 AS "P_1", 1 AS "D", 0.820513 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.088235 AS "P_0", 0.911765 AS "P_1", 1 AS "D", 0.911765 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.032258 AS "P_0", 0.967742 AS "P_1", 1 AS "D", 0.967742 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_16" AS t1
   LEFT OUTER JOIN
   "DT_node_data_16" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_17" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_61" <= 0.053433) AND (t."X_92" > 1.906404)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_61" > 0.053433) AND (t."X_56" <= -0.950076) AND (t."X_53" <= -0.418968)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_61" > 0.053433) AND (t."X_56" <= -0.950076) AND (t."X_53" > -0.418968)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_61" > 0.053433) AND (t."X_56" > -0.950076) AND (t."X_98" <= -1.593648)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_61" <= 0.053433) AND (t."X_92" <= 1.906404) AND (t."X_90" <= -1.965057) AND (t."X_99" <= 0.798426)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_61" <= 0.053433) AND (t."X_92" <= 1.906404) AND (t."X_90" <= -1.965057) AND (t."X_99" > 0.798426)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_61" > 0.053433) AND (t."X_56" > -0.950076) AND (t."X_98" > -1.593648) AND (t."X_88" <= 1.708749)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_61" > 0.053433) AND (t."X_56" > -0.950076) AND (t."X_98" > -1.593648) AND (t."X_88" > 1.708749)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_61" <= 0.053433) AND (t."X_92" <= 1.906404) AND (t."X_90" > -1.965057) AND (t."X_63" <= -2.227960)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_61" <= 0.053433) AND (t."X_92" <= 1.906404) AND (t."X_90" > -1.965057) AND (t."X_63" > -2.227960) AND (t."X_98" > 2.217016)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_61" <= 0.053433) AND (t."X_92" <= 1.906404) AND (t."X_90" > -1.965057) AND (t."X_63" > -2.227960) AND (t."X_98" <= 2.217016) AND (t."X_23" <= 1.108888)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_61" <= 0.053433) AND (t."X_92" <= 1.906404) AND (t."X_90" > -1.965057) AND (t."X_63" > -2.227960) AND (t."X_98" <= 2.217016) AND (t."X_23" > 1.108888) AND (t."X_96" <= 0.821652)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_61" <= 0.053433) AND (t."X_92" <= 1.906404) AND (t."X_90" > -1.965057) AND (t."X_63" > -2.227960) AND (t."X_98" <= 2.217016) AND (t."X_23" > 1.108888) AND (t."X_96" > 0.821652)) THEN 24 ELSE NULL END AS Leaf_24
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.843750 AS "P_0", 0.156250 AS "P_1", 0 AS "D", 0.843750 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.156250 AS "P_0", 0.843750 AS "P_1", 1 AS "D", 0.843750 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.075472 AS "P_0", 0.924528 AS "P_1", 1 AS "D", 0.924528 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.020000 AS "P_0", 0.980000 AS "P_1", 1 AS "D", 0.980000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.946429 AS "P_0", 0.053571 AS "P_1", 0 AS "D", 0.946429 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.963636 AS "P_0", 0.036364 AS "P_1", 0 AS "D", 0.963636 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.981481 AS "P_0", 0.018519 AS "P_1", 0 AS "D", 0.981481 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_17" AS t1
   LEFT OUTER JOIN
   "DT_node_data_17" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_18" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" <= -0.554352)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_93" <= -0.654940) AND (t."X_69" > 0.104229) AND (t."X_98" <= -1.343333)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_93" <= -0.654940) AND (t."X_69" > 0.104229) AND (t."X_98" > -1.343333)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_93" > -0.654940) AND (t."X_95" > 1.822325)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_93" <= -0.654940) AND (t."X_69" <= 0.104229) AND (t."X_4" <= -0.385812)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_93" <= -0.654940) AND (t."X_69" <= 0.104229) AND (t."X_4" > -0.385812)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_93" > -0.654940) AND (t."X_95" <= 1.822325) AND (t."X_41" > 1.116560) AND (t."X_69" <= -0.064705)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_93" > -0.654940) AND (t."X_95" <= 1.822325) AND (t."X_41" > 1.116560) AND (t."X_69" > -0.064705)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_93" > -0.654940) AND (t."X_95" <= 1.822325) AND (t."X_41" <= 1.116560) AND (t."X_97" <= -1.374163)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_93" > -0.654940) AND (t."X_95" <= 1.822325) AND (t."X_41" <= 1.116560) AND (t."X_97" > -1.374163) AND (t."X_97" > 1.459459)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_93" > -0.654940) AND (t."X_95" <= 1.822325) AND (t."X_41" <= 1.116560) AND (t."X_97" > -1.374163) AND (t."X_97" <= 1.459459) AND (t."X_25" <= -1.159097)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_93" > -0.654940) AND (t."X_95" <= 1.822325) AND (t."X_41" <= 1.116560) AND (t."X_97" > -1.374163) AND (t."X_97" <= 1.459459) AND (t."X_25" > -1.159097) AND (t."X_94" <= -1.828635)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_93" > -0.654940) AND (t."X_95" <= 1.822325) AND (t."X_41" <= 1.116560) AND (t."X_97" > -1.374163) AND (t."X_97" <= 1.459459) AND (t."X_25" > -1.159097) AND (t."X_94" > -1.828635) AND (t."X_75" > -1.482552)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_93" > -0.654940) AND (t."X_95" <= 1.822325) AND (t."X_41" <= 1.116560) AND (t."X_97" > -1.374163) AND (t."X_97" <= 1.459459) AND (t."X_25" > -1.159097) AND (t."X_94" > -1.828635) AND (t."X_75" <= -1.482552) AND (t."X_99" <= -0.250639)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_4" > -0.554352) AND (t."X_93" > -0.654940) AND (t."X_95" <= 1.822325) AND (t."X_41" <= 1.116560) AND (t."X_97" > -1.374163) AND (t."X_97" <= 1.459459) AND (t."X_25" > -1.159097) AND (t."X_94" > -1.828635) AND (t."X_75" <= -1.482552) AND (t."X_99" > -0.250639)) THEN 28 ELSE NULL END AS Leaf_28
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.570312 AS "P_0", 0.429688 AS "P_1", 0 AS "D", 0.570312 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.414894 AS "P_0", 0.585106 AS "P_1", 1 AS "D", 0.585106 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.278689 AS "P_0", 0.721311 AS "P_1", 1 AS "D", 0.721311 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.169811 AS "P_0", 0.830189 AS "P_1", 1 AS "D", 0.830189 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.106383 AS "P_0", 0.893617 AS "P_1", 1 AS "D", 0.893617 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.086957 AS "P_0", 0.913043 AS "P_1", 1 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.023256 AS "P_0", 0.976744 AS "P_1", 1 AS "D", 0.976744 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_18" AS t1
   LEFT OUTER JOIN
   "DT_node_data_18" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_19" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_32" <= -0.127487) AND (t."X_96" > 2.053284)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_32" <= -0.127487) AND (t."X_96" <= 2.053284) AND (t."X_98" <= -1.200185)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_32" <= -0.127487) AND (t."X_96" <= 2.053284) AND (t."X_98" > -1.200185) AND (t."X_67" > 1.023146) AND (t."X_20" <= 1.341204)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_32" <= -0.127487) AND (t."X_96" <= 2.053284) AND (t."X_98" > -1.200185) AND (t."X_67" > 1.023146) AND (t."X_20" > 1.341204)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_32" > -0.127487) AND (t."X_67" <= -2.092234)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_32" > -0.127487) AND (t."X_67" > -2.092234) AND (t."X_90" > 1.396814)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_32" <= -0.127487) AND (t."X_96" <= 2.053284) AND (t."X_98" > -1.200185) AND (t."X_67" <= 1.023146) AND (t."X_95" <= -1.262504)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_32" <= -0.127487) AND (t."X_96" <= 2.053284) AND (t."X_98" > -1.200185) AND (t."X_67" <= 1.023146) AND (t."X_95" > -1.262504) AND (t."X_90" <= -1.588979)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_32" <= -0.127487) AND (t."X_96" <= 2.053284) AND (t."X_98" > -1.200185) AND (t."X_67" <= 1.023146) AND (t."X_95" > -1.262504) AND (t."X_90" > -1.588979)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_32" > -0.127487) AND (t."X_67" > -2.092234) AND (t."X_90" <= 1.396814) AND (t."X_75" > 0.352267) AND (t."X_95" <= 0.141807) AND (t."X_72" <= -0.373639)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_32" > -0.127487) AND (t."X_67" > -2.092234) AND (t."X_90" <= 1.396814) AND (t."X_75" > 0.352267) AND (t."X_95" <= 0.141807) AND (t."X_72" > -0.373639)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_32" > -0.127487) AND (t."X_67" > -2.092234) AND (t."X_90" <= 1.396814) AND (t."X_75" > 0.352267) AND (t."X_95" > 0.141807) AND (t."X_99" <= -0.820301)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_32" > -0.127487) AND (t."X_67" > -2.092234) AND (t."X_90" <= 1.396814) AND (t."X_75" > 0.352267) AND (t."X_95" > 0.141807) AND (t."X_99" > -0.820301)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_32" > -0.127487) AND (t."X_67" > -2.092234) AND (t."X_90" <= 1.396814) AND (t."X_75" <= 0.352267) AND (t."X_72" <= -1.923613)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_32" > -0.127487) AND (t."X_67" > -2.092234) AND (t."X_90" <= 1.396814) AND (t."X_75" <= 0.352267) AND (t."X_72" > -1.923613) AND (t."X_32" > 1.355975) AND (t."X_20" <= -0.414470)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_32" > -0.127487) AND (t."X_67" > -2.092234) AND (t."X_90" <= 1.396814) AND (t."X_75" <= 0.352267) AND (t."X_72" > -1.923613) AND (t."X_32" > 1.355975) AND (t."X_20" > -0.414470)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_32" > -0.127487) AND (t."X_67" > -2.092234) AND (t."X_90" <= 1.396814) AND (t."X_75" <= 0.352267) AND (t."X_72" > -1.923613) AND (t."X_32" <= 1.355975) AND (t."X_94" <= 1.097773)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_32" > -0.127487) AND (t."X_67" > -2.092234) AND (t."X_90" <= 1.396814) AND (t."X_75" <= 0.352267) AND (t."X_72" > -1.923613) AND (t."X_32" <= 1.355975) AND (t."X_94" > 1.097773) AND (t."X_97" <= 0.644623)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_32" > -0.127487) AND (t."X_67" > -2.092234) AND (t."X_90" <= 1.396814) AND (t."X_75" <= 0.352267) AND (t."X_72" > -1.923613) AND (t."X_32" <= 1.355975) AND (t."X_94" > 1.097773) AND (t."X_97" > 0.644623)) THEN 36 ELSE NULL END AS Leaf_36
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.546875 AS "P_0", 0.453125 AS "P_1", 0 AS "D", 0.546875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.302326 AS "P_0", 0.697674 AS "P_1", 1 AS "D", 0.697674 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.670588 AS "P_0", 0.329412 AS "P_1", 0 AS "D", 0.670588 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.064516 AS "P_0", 0.935484 AS "P_1", 1 AS "D", 0.935484 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.721519 AS "P_0", 0.278481 AS "P_1", 0 AS "D", 0.721519 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.791667 AS "P_0", 0.208333 AS "P_1", 0 AS "D", 0.791667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.033333 AS "P_0", 0.966667 AS "P_1", 1 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.978723 AS "P_0", 0.021277 AS "P_1", 0 AS "D", 0.978723 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_19" AS t1
   LEFT OUTER JOIN
   "DT_node_data_19" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_20" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" <= -0.732886)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_1" > -0.732886) AND (t."X_98" <= -1.278909)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_1" > -0.732886) AND (t."X_98" > -1.278909) AND (t."X_18" <= -1.431377) AND (t."X_91" <= -0.916272)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_1" > -0.732886) AND (t."X_98" > -1.278909) AND (t."X_18" <= -1.431377) AND (t."X_91" > -0.916272)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_1" > -0.732886) AND (t."X_98" > -1.278909) AND (t."X_18" > -1.431377) AND (t."X_54" <= -1.895962)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_1" > -0.732886) AND (t."X_98" > -1.278909) AND (t."X_18" > -1.431377) AND (t."X_54" > -1.895962) AND (t."X_96" <= -1.895704)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_1" > -0.732886) AND (t."X_98" > -1.278909) AND (t."X_18" > -1.431377) AND (t."X_54" > -1.895962) AND (t."X_96" > -1.895704) AND (t."X_79" > 1.392222) AND (t."X_99" <= 1.257586)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_1" > -0.732886) AND (t."X_98" > -1.278909) AND (t."X_18" > -1.431377) AND (t."X_54" > -1.895962) AND (t."X_96" > -1.895704) AND (t."X_79" > 1.392222) AND (t."X_99" > 1.257586)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_1" > -0.732886) AND (t."X_98" > -1.278909) AND (t."X_18" > -1.431377) AND (t."X_54" > -1.895962) AND (t."X_96" > -1.895704) AND (t."X_79" <= 1.392222) AND (t."X_98" > 1.276152) AND (t."X_55" <= -0.125007)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_1" > -0.732886) AND (t."X_98" > -1.278909) AND (t."X_18" > -1.431377) AND (t."X_54" > -1.895962) AND (t."X_96" > -1.895704) AND (t."X_79" <= 1.392222) AND (t."X_98" > 1.276152) AND (t."X_55" > -0.125007) AND (t."X_98" <= 1.958027)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_1" > -0.732886) AND (t."X_98" > -1.278909) AND (t."X_18" > -1.431377) AND (t."X_54" > -1.895962) AND (t."X_96" > -1.895704) AND (t."X_79" <= 1.392222) AND (t."X_98" > 1.276152) AND (t."X_55" > -0.125007) AND (t."X_98" > 1.958027)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_1" > -0.732886) AND (t."X_98" > -1.278909) AND (t."X_18" > -1.431377) AND (t."X_54" > -1.895962) AND (t."X_96" > -1.895704) AND (t."X_79" <= 1.392222) AND (t."X_98" <= 1.276152) AND (t."X_91" <= -2.733475)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_1" > -0.732886) AND (t."X_98" > -1.278909) AND (t."X_18" > -1.431377) AND (t."X_54" > -1.895962) AND (t."X_96" > -1.895704) AND (t."X_79" <= 1.392222) AND (t."X_98" <= 1.276152) AND (t."X_91" > -2.733475) AND (t."X_79" <= 0.922028)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_1" > -0.732886) AND (t."X_98" > -1.278909) AND (t."X_18" > -1.431377) AND (t."X_54" > -1.895962) AND (t."X_96" > -1.895704) AND (t."X_79" <= 1.392222) AND (t."X_98" <= 1.276152) AND (t."X_91" > -2.733475) AND (t."X_79" > 0.922028) AND (t."X_86" <= 1.291403)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_1" > -0.732886) AND (t."X_98" > -1.278909) AND (t."X_18" > -1.431377) AND (t."X_54" > -1.895962) AND (t."X_96" > -1.895704) AND (t."X_79" <= 1.392222) AND (t."X_98" <= 1.276152) AND (t."X_91" > -2.733475) AND (t."X_79" > 0.922028) AND (t."X_86" > 1.291403)) THEN 28 ELSE NULL END AS Leaf_28
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.468750 AS "P_0", 0.531250 AS "P_1", 1 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.298969 AS "P_0", 0.701031 AS "P_1", 1 AS "D", 0.701031 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.235955 AS "P_0", 0.764045 AS "P_1", 1 AS "D", 0.764045 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.175000 AS "P_0", 0.825000 AS "P_1", 1 AS "D", 0.825000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.131579 AS "P_0", 0.868421 AS "P_1", 1 AS "D", 0.868421 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.108108 AS "P_0", 0.891892 AS "P_1", 1 AS "D", 0.891892 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.032787 AS "P_0", 0.967213 AS "P_1", 1 AS "D", 0.967213 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.016667 AS "P_0", 0.983333 AS "P_1", 1 AS "D", 0.983333 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_20" AS t1
   LEFT OUTER JOIN
   "DT_node_data_20" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_21" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_7", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_28" > 1.370654)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_28" <= 1.370654) AND (t."X_98" > 1.233459)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_28" <= 1.370654) AND (t."X_98" <= 1.233459) AND (t."X_93" > -0.715788) AND (t."X_57" <= -0.797548)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_28" <= 1.370654) AND (t."X_98" <= 1.233459) AND (t."X_93" <= -0.715788) AND (t."X_97" <= -1.358797)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_28" <= 1.370654) AND (t."X_98" <= 1.233459) AND (t."X_93" <= -0.715788) AND (t."X_97" > -1.358797) AND (t."X_39" > -0.536113)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_28" <= 1.370654) AND (t."X_98" <= 1.233459) AND (t."X_93" <= -0.715788) AND (t."X_97" > -1.358797) AND (t."X_39" <= -0.536113) AND (t."X_98" <= -0.968289)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_28" <= 1.370654) AND (t."X_98" <= 1.233459) AND (t."X_93" <= -0.715788) AND (t."X_97" > -1.358797) AND (t."X_39" <= -0.536113) AND (t."X_98" > -0.968289)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_28" <= 1.370654) AND (t."X_98" <= 1.233459) AND (t."X_93" > -0.715788) AND (t."X_57" > -0.797548) AND (t."X_98" <= -1.311540) AND (t."X_57" <= -0.294034)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_28" <= 1.370654) AND (t."X_98" <= 1.233459) AND (t."X_93" > -0.715788) AND (t."X_57" > -0.797548) AND (t."X_98" <= -1.311540) AND (t."X_57" > -0.294034)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_28" <= 1.370654) AND (t."X_98" <= 1.233459) AND (t."X_93" > -0.715788) AND (t."X_57" > -0.797548) AND (t."X_98" > -1.311540) AND (t."X_97" > 0.710487) AND (t."X_98" > 0.685913)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_28" <= 1.370654) AND (t."X_98" <= 1.233459) AND (t."X_93" > -0.715788) AND (t."X_57" > -0.797548) AND (t."X_98" > -1.311540) AND (t."X_97" > 0.710487) AND (t."X_98" <= 0.685913) AND (t."X_8" > -0.073786)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_28" <= 1.370654) AND (t."X_98" <= 1.233459) AND (t."X_93" > -0.715788) AND (t."X_57" > -0.797548) AND (t."X_98" > -1.311540) AND (t."X_97" > 0.710487) AND (t."X_98" <= 0.685913) AND (t."X_8" <= -0.073786) AND (t."X_99" <= 0.344669)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_28" <= 1.370654) AND (t."X_98" <= 1.233459) AND (t."X_93" > -0.715788) AND (t."X_57" > -0.797548) AND (t."X_98" > -1.311540) AND (t."X_97" > 0.710487) AND (t."X_98" <= 0.685913) AND (t."X_8" <= -0.073786) AND (t."X_99" > 0.344669)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_28" <= 1.370654) AND (t."X_98" <= 1.233459) AND (t."X_93" > -0.715788) AND (t."X_57" > -0.797548) AND (t."X_98" > -1.311540) AND (t."X_97" <= 0.710487) AND (t."X_39" > -1.711946)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_28" <= 1.370654) AND (t."X_98" <= 1.233459) AND (t."X_93" > -0.715788) AND (t."X_57" > -0.797548) AND (t."X_98" > -1.311540) AND (t."X_97" <= 0.710487) AND (t."X_39" <= -1.711946) AND (t."X_27" <= -0.788428)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_28" <= 1.370654) AND (t."X_98" <= 1.233459) AND (t."X_93" > -0.715788) AND (t."X_57" > -0.797548) AND (t."X_98" > -1.311540) AND (t."X_97" <= 0.710487) AND (t."X_39" <= -1.711946) AND (t."X_27" > -0.788428)) THEN 30 ELSE NULL END AS Leaf_30
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.492188 AS "P_0", 0.507812 AS "P_1", 1 AS "D", 0.507812 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.543103 AS "P_0", 0.456897 AS "P_1", 0 AS "D", 0.543103 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.490385 AS "P_0", 0.509615 AS "P_1", 1 AS "D", 0.509615 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.766667 AS "P_0", 0.233333 AS "P_1", 0 AS "D", 0.766667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.378378 AS "P_0", 0.621622 AS "P_1", 1 AS "D", 0.621622 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.258065 AS "P_0", 0.741935 AS "P_1", 1 AS "D", 0.741935 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.851852 AS "P_0", 0.148148 AS "P_1", 0 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.196429 AS "P_0", 0.803571 AS "P_1", 1 AS "D", 0.803571 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_21" AS t1
   LEFT OUTER JOIN
   "DT_node_data_21" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_22" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_95" > -0.148019) AND (t."X_38" > 0.113341) AND (t."X_46" > 0.157533) AND (t."X_88" <= -0.649026)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_95" > -0.148019) AND (t."X_38" > 0.113341) AND (t."X_46" > 0.157533) AND (t."X_88" > -0.649026)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_95" > -0.148019) AND (t."X_38" > 0.113341) AND (t."X_46" <= 0.157533) AND (t."X_95" <= 0.139043) AND (t."X_40" <= -1.203109)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_95" > -0.148019) AND (t."X_38" > 0.113341) AND (t."X_46" <= 0.157533) AND (t."X_95" <= 0.139043) AND (t."X_40" > -1.203109)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_95" > -0.148019) AND (t."X_38" > 0.113341) AND (t."X_46" <= 0.157533) AND (t."X_95" > 0.139043) AND (t."X_99" <= -0.879409)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_95" > -0.148019) AND (t."X_38" > 0.113341) AND (t."X_46" <= 0.157533) AND (t."X_95" > 0.139043) AND (t."X_99" > -0.879409)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_95" > -0.148019) AND (t."X_38" <= 0.113341) AND (t."X_91" <= -0.698269) AND (t."X_97" <= 0.284357)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_95" > -0.148019) AND (t."X_38" <= 0.113341) AND (t."X_91" <= -0.698269) AND (t."X_97" > 0.284357)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_95" > -0.148019) AND (t."X_38" <= 0.113341) AND (t."X_91" > -0.698269) AND (t."X_60" > 1.774852)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_95" <= -0.148019) AND (t."X_40" <= -0.609657) AND (t."X_14" <= -0.473111)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_95" <= -0.148019) AND (t."X_40" <= -0.609657) AND (t."X_14" > -0.473111)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_95" <= -0.148019) AND (t."X_40" > -0.609657) AND (t."X_40" > 1.452946)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_95" <= -0.148019) AND (t."X_40" > -0.609657) AND (t."X_40" <= 1.452946) AND (t."X_8" > 1.598422)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_95" > -0.148019) AND (t."X_38" <= 0.113341) AND (t."X_91" > -0.698269) AND (t."X_60" <= 1.774852) AND (t."X_97" > 2.024811) AND (t."X_99" <= 1.034301)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_95" > -0.148019) AND (t."X_38" <= 0.113341) AND (t."X_91" > -0.698269) AND (t."X_60" <= 1.774852) AND (t."X_97" > 2.024811) AND (t."X_99" > 1.034301)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_95" > -0.148019) AND (t."X_38" <= 0.113341) AND (t."X_91" > -0.698269) AND (t."X_60" <= 1.774852) AND (t."X_97" <= 2.024811) AND (t."X_66" > 2.647617)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_95" <= -0.148019) AND (t."X_40" > -0.609657) AND (t."X_40" <= 1.452946) AND (t."X_8" <= 1.598422) AND (t."X_91" <= 0.518322)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_95" <= -0.148019) AND (t."X_40" > -0.609657) AND (t."X_40" <= 1.452946) AND (t."X_8" <= 1.598422) AND (t."X_91" > 0.518322) AND (t."X_40" <= 0.164684)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_95" <= -0.148019) AND (t."X_40" > -0.609657) AND (t."X_40" <= 1.452946) AND (t."X_8" <= 1.598422) AND (t."X_91" > 0.518322) AND (t."X_40" > 0.164684)) THEN 38 ELSE NULL END AS Leaf_38,
      CASE WHEN((t."X_95" > -0.148019) AND (t."X_38" <= 0.113341) AND (t."X_91" > -0.698269) AND (t."X_60" <= 1.774852) AND (t."X_97" <= 2.024811) AND (t."X_66" <= 2.647617) AND (t."X_95" > 0.188642)) THEN 40 ELSE NULL END AS Leaf_40,
      CASE WHEN((t."X_95" > -0.148019) AND (t."X_38" <= 0.113341) AND (t."X_91" > -0.698269) AND (t."X_60" <= 1.774852) AND (t."X_97" <= 2.024811) AND (t."X_66" <= 2.647617) AND (t."X_95" <= 0.188642) AND (t."X_99" <= 0.429688)) THEN 41 ELSE NULL END AS Leaf_41,
      CASE WHEN((t."X_95" > -0.148019) AND (t."X_38" <= 0.113341) AND (t."X_91" > -0.698269) AND (t."X_60" <= 1.774852) AND (t."X_97" <= 2.024811) AND (t."X_66" <= 2.647617) AND (t."X_95" <= 0.188642) AND (t."X_99" > 0.429688)) THEN 42 ELSE NULL END AS Leaf_42
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.531250 AS "P_0", 0.468750 AS "P_1", 0 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.775510 AS "P_0", 0.224490 AS "P_1", 0 AS "D", 0.775510 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.379747 AS "P_0", 0.620253 AS "P_1", 1 AS "D", 0.620253 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.695652 AS "P_0", 0.304348 AS "P_1", 0 AS "D", 0.695652 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.152174 AS "P_0", 0.847826 AS "P_1", 1 AS "D", 0.847826 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.113636 AS "P_0", 0.886364 AS "P_1", 1 AS "D", 0.886364 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.885714 AS "P_0", 0.114286 AS "P_1", 0 AS "D", 0.885714 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.939394 AS "P_0", 0.060606 AS "P_1", 0 AS "D", 0.939394 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.968750 AS "P_0", 0.031250 AS "P_1", 0 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.027027 AS "P_0", 0.972973 AS "P_1", 1 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_22" AS t1
   LEFT OUTER JOIN
   "DT_node_data_22" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_23" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_30", t1."Leaf_32", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_74" <= -1.068965) AND (t."X_99" > -0.376033)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_74" <= -1.068965) AND (t."X_99" <= -0.376033) AND (t."X_99" <= -0.790837)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_74" <= -1.068965) AND (t."X_99" <= -0.376033) AND (t."X_99" > -0.790837)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" > -0.148019) AND (t."X_90" > 0.683562) AND (t."X_94" <= -0.253198)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" > -0.148019) AND (t."X_90" > 0.683562) AND (t."X_94" > -0.253198)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" > -0.148019) AND (t."X_90" <= 0.683562) AND (t."X_47" <= -0.595234)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" > -0.148019) AND (t."X_90" <= 0.683562) AND (t."X_47" > -0.595234) AND (t."X_59" > 0.470777) AND (t."X_74" <= -0.946326)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" > -0.148019) AND (t."X_90" <= 0.683562) AND (t."X_47" > -0.595234) AND (t."X_59" > 0.470777) AND (t."X_74" > -0.946326)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" > -0.148019) AND (t."X_90" <= 0.683562) AND (t."X_47" > -0.595234) AND (t."X_59" <= 0.470777) AND (t."X_59" <= -1.039978)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" > -0.148019) AND (t."X_90" <= 0.683562) AND (t."X_47" > -0.595234) AND (t."X_59" <= 0.470777) AND (t."X_59" > -1.039978) AND (t."X_92" > 1.856151)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" > -0.148019) AND (t."X_90" <= 0.683562) AND (t."X_47" > -0.595234) AND (t."X_59" <= 0.470777) AND (t."X_59" > -1.039978) AND (t."X_92" <= 1.856151) AND (t."X_19" > -0.870489)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" > -0.148019) AND (t."X_90" <= 0.683562) AND (t."X_47" > -0.595234) AND (t."X_59" <= 0.470777) AND (t."X_59" > -1.039978) AND (t."X_92" <= 1.856151) AND (t."X_19" <= -0.870489) AND (t."X_92" <= 0.490415)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" > -0.148019) AND (t."X_90" <= 0.683562) AND (t."X_47" > -0.595234) AND (t."X_59" <= 0.470777) AND (t."X_59" > -1.039978) AND (t."X_92" <= 1.856151) AND (t."X_19" <= -0.870489) AND (t."X_92" > 0.490415)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" <= -0.148019) AND (t."X_79" <= -1.335987)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" <= -0.148019) AND (t."X_79" > -1.335987) AND (t."X_92" > 2.076353)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" <= -0.148019) AND (t."X_79" > -1.335987) AND (t."X_92" <= 2.076353) AND (t."X_98" > 1.958027)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" <= -0.148019) AND (t."X_79" > -1.335987) AND (t."X_92" <= 2.076353) AND (t."X_98" <= 1.958027) AND (t."X_74" > 2.167957)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" <= -0.148019) AND (t."X_79" > -1.335987) AND (t."X_92" <= 2.076353) AND (t."X_98" <= 1.958027) AND (t."X_74" <= 2.167957) AND (t."X_97" > 2.276572)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" <= -0.148019) AND (t."X_79" > -1.335987) AND (t."X_92" <= 2.076353) AND (t."X_98" <= 1.958027) AND (t."X_74" <= 2.167957) AND (t."X_97" <= 2.276572) AND (t."X_19" <= 0.973653)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" <= -0.148019) AND (t."X_79" > -1.335987) AND (t."X_92" <= 2.076353) AND (t."X_98" <= 1.958027) AND (t."X_74" <= 2.167957) AND (t."X_97" <= 2.276572) AND (t."X_19" > 0.973653) AND (t."X_99" <= 1.364702)) THEN 39 ELSE NULL END AS Leaf_39,
      CASE WHEN((t."X_74" > -1.068965) AND (t."X_95" <= -0.148019) AND (t."X_79" > -1.335987) AND (t."X_92" <= 2.076353) AND (t."X_98" <= 1.958027) AND (t."X_74" <= 2.167957) AND (t."X_97" <= 2.276572) AND (t."X_19" > 0.973653) AND (t."X_99" > 1.364702)) THEN 40 ELSE NULL END AS Leaf_40
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.531250 AS "P_0", 0.468750 AS "P_1", 0 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.594595 AS "P_0", 0.405405 AS "P_1", 0 AS "D", 0.594595 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.780488 AS "P_0", 0.219512 AS "P_1", 0 AS "D", 0.780488 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.485714 AS "P_0", 0.514286 AS "P_1", 1 AS "D", 0.514286 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.392857 AS "P_0", 0.607143 AS "P_1", 1 AS "D", 0.607143 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.488889 AS "P_0", 0.511111 AS "P_1", 1 AS "D", 0.511111 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.869565 AS "P_0", 0.130435 AS "P_1", 0 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.820513 AS "P_0", 0.179487 AS "P_1", 0 AS "D", 0.820513 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.864865 AS "P_0", 0.135135 AS "P_1", 0 AS "D", 0.864865 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.914286 AS "P_0", 0.085714 AS "P_1", 0 AS "D", 0.914286 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.969697 AS "P_0", 0.030303 AS "P_1", 0 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_23" AS t1
   LEFT OUTER JOIN
   "DT_node_data_23" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_24" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_61" > 0.169389) AND (t."X_98" <= -1.541456)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_61" <= 0.169389) AND (t."X_55" <= -0.240959) AND (t."X_61" > -0.749319) AND (t."X_99" <= 1.668489)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_61" <= 0.169389) AND (t."X_55" <= -0.240959) AND (t."X_61" > -0.749319) AND (t."X_99" > 1.668489)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_61" <= 0.169389) AND (t."X_55" <= -0.240959) AND (t."X_61" <= -0.749319) AND (t."X_98" <= 1.183067)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_61" <= 0.169389) AND (t."X_55" <= -0.240959) AND (t."X_61" <= -0.749319) AND (t."X_98" > 1.183067)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_61" > 0.169389) AND (t."X_98" > -1.541456) AND (t."X_96" > 2.085927)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_61" > 0.169389) AND (t."X_98" > -1.541456) AND (t."X_96" <= 2.085927) AND (t."X_58" > 1.880141)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_61" <= 0.169389) AND (t."X_55" > -0.240959) AND (t."X_99" <= 2.041592)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_61" <= 0.169389) AND (t."X_55" > -0.240959) AND (t."X_99" > 2.041592) AND (t."X_58" <= 0.786228)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_61" <= 0.169389) AND (t."X_55" > -0.240959) AND (t."X_99" > 2.041592) AND (t."X_58" > 0.786228)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_61" > 0.169389) AND (t."X_98" > -1.541456) AND (t."X_96" <= 2.085927) AND (t."X_58" <= 1.880141) AND (t."X_93" <= 1.428385)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_61" > 0.169389) AND (t."X_98" > -1.541456) AND (t."X_96" <= 2.085927) AND (t."X_58" <= 1.880141) AND (t."X_93" > 1.428385) AND (t."X_99" <= 1.784867)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_61" > 0.169389) AND (t."X_98" > -1.541456) AND (t."X_96" <= 2.085927) AND (t."X_58" <= 1.880141) AND (t."X_93" > 1.428385) AND (t."X_99" > 1.784867)) THEN 24 ELSE NULL END AS Leaf_24
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.460938 AS "P_0", 0.539062 AS "P_1", 1 AS "D", 0.539062 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.109375 AS "P_0", 0.890625 AS "P_1", 1 AS "D", 0.890625 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.607143 AS "P_0", 0.392857 AS "P_1", 0 AS "D", 0.607143 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.972222 AS "P_0", 0.027778 AS "P_1", 0 AS "D", 0.972222 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.033898 AS "P_0", 0.966102 AS "P_1", 1 AS "D", 0.966102 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.017241 AS "P_0", 0.982759 AS "P_1", 1 AS "D", 0.982759 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_24" AS t1
   LEFT OUTER JOIN
   "DT_node_data_24" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_25" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_92" <= -0.715198) AND (t."X_63" <= -0.276830) AND (t."X_95" <= 0.392162)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_92" <= -0.715198) AND (t."X_63" <= -0.276830) AND (t."X_95" > 0.392162)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_92" <= -0.715198) AND (t."X_63" > -0.276830) AND (t."X_87" > 0.633867)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_92" <= -0.715198) AND (t."X_63" > -0.276830) AND (t."X_87" <= 0.633867) AND (t."X_95" <= -1.235343)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_92" <= -0.715198) AND (t."X_63" > -0.276830) AND (t."X_87" <= 0.633867) AND (t."X_95" > -1.235343)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_92" > -0.715198) AND (t."X_97" > -0.068434) AND (t."X_93" <= -0.845023)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_92" > -0.715198) AND (t."X_97" > -0.068434) AND (t."X_93" > -0.845023) AND (t."X_20" <= -1.087509) AND (t."X_95" <= 0.646551)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_92" > -0.715198) AND (t."X_97" > -0.068434) AND (t."X_93" > -0.845023) AND (t."X_20" <= -1.087509) AND (t."X_95" > 0.646551)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_92" > -0.715198) AND (t."X_97" > -0.068434) AND (t."X_93" > -0.845023) AND (t."X_20" > -1.087509) AND (t."X_46" > 1.607727)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_92" > -0.715198) AND (t."X_97" <= -0.068434) AND (t."X_87" <= 0.291369)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_92" > -0.715198) AND (t."X_97" <= -0.068434) AND (t."X_87" > 0.291369) AND (t."X_96" <= -0.152162)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_92" > -0.715198) AND (t."X_97" <= -0.068434) AND (t."X_87" > 0.291369) AND (t."X_96" > -0.152162)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_92" > -0.715198) AND (t."X_97" > -0.068434) AND (t."X_93" > -0.845023) AND (t."X_20" > -1.087509) AND (t."X_46" <= 1.607727) AND (t."X_98" <= -1.714433)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_92" > -0.715198) AND (t."X_97" > -0.068434) AND (t."X_93" > -0.845023) AND (t."X_20" > -1.087509) AND (t."X_46" <= 1.607727) AND (t."X_98" > -1.714433) AND (t."X_97" > 2.227152)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_92" > -0.715198) AND (t."X_97" > -0.068434) AND (t."X_93" > -0.845023) AND (t."X_20" > -1.087509) AND (t."X_46" <= 1.607727) AND (t."X_98" > -1.714433) AND (t."X_97" <= 2.227152) AND (t."X_92" <= -0.301166)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_92" > -0.715198) AND (t."X_97" > -0.068434) AND (t."X_93" > -0.845023) AND (t."X_20" > -1.087509) AND (t."X_46" <= 1.607727) AND (t."X_98" > -1.714433) AND (t."X_97" <= 2.227152) AND (t."X_92" > -0.301166)) THEN 30 ELSE NULL END AS Leaf_30
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.570312 AS "P_0", 0.429688 AS "P_1", 0 AS "D", 0.570312 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.371429 AS "P_0", 0.628571 AS "P_1", 1 AS "D", 0.628571 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.645161 AS "P_0", 0.354839 AS "P_1", 0 AS "D", 0.645161 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.173913 AS "P_0", 0.826087 AS "P_1", 1 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.897436 AS "P_0", 0.102564 AS "P_1", 0 AS "D", 0.897436 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.462963 AS "P_0", 0.537037 AS "P_1", 1 AS "D", 0.537037 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.256410 AS "P_0", 0.743590 AS "P_1", 1 AS "D", 0.743590 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.156250 AS "P_0", 0.843750 AS "P_1", 1 AS "D", 0.843750 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.068966 AS "P_0", 0.931035 AS "P_1", 1 AS "D", 0.931035 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.035714 AS "P_0", 0.964286 AS "P_1", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_25" AS t1
   LEFT OUTER JOIN
   "DT_node_data_25" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_26" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_88" > 0.751027) AND (t."X_38" > 0.560599)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_88" > 0.751027) AND (t."X_38" <= 0.560599) AND (t."X_97" > -0.518219)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_88" > 0.751027) AND (t."X_38" <= 0.560599) AND (t."X_97" <= -0.518219) AND (t."X_25" <= 0.927091)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_88" > 0.751027) AND (t."X_38" <= 0.560599) AND (t."X_97" <= -0.518219) AND (t."X_25" > 0.927091)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_88" <= 0.751027) AND (t."X_95" > 1.112111) AND (t."X_64" > 0.795223)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_88" <= 0.751027) AND (t."X_95" > 1.112111) AND (t."X_64" <= 0.795223) AND (t."X_98" <= -1.325860)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_88" <= 0.751027) AND (t."X_95" > 1.112111) AND (t."X_64" <= 0.795223) AND (t."X_98" > -1.325860)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_88" <= 0.751027) AND (t."X_95" <= 1.112111) AND (t."X_91" > 0.445358) AND (t."X_95" <= -0.233358)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_88" <= 0.751027) AND (t."X_95" <= 1.112111) AND (t."X_91" > 0.445358) AND (t."X_95" > -0.233358) AND (t."X_25" <= -0.148147)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_88" <= 0.751027) AND (t."X_95" <= 1.112111) AND (t."X_91" > 0.445358) AND (t."X_95" > -0.233358) AND (t."X_25" > -0.148147) AND (t."X_98" <= -1.345831)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_88" <= 0.751027) AND (t."X_95" <= 1.112111) AND (t."X_91" > 0.445358) AND (t."X_95" > -0.233358) AND (t."X_25" > -0.148147) AND (t."X_98" > -1.345831)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_88" <= 0.751027) AND (t."X_95" <= 1.112111) AND (t."X_91" <= 0.445358) AND (t."X_25" <= -1.063962) AND (t."X_25" <= -1.140789)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_88" <= 0.751027) AND (t."X_95" <= 1.112111) AND (t."X_91" <= 0.445358) AND (t."X_25" <= -1.063962) AND (t."X_25" > -1.140789)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_88" <= 0.751027) AND (t."X_95" <= 1.112111) AND (t."X_91" <= 0.445358) AND (t."X_25" > -1.063962) AND (t."X_93" > 0.963618) AND (t."X_95" <= 0.381135)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_88" <= 0.751027) AND (t."X_95" <= 1.112111) AND (t."X_91" <= 0.445358) AND (t."X_25" > -1.063962) AND (t."X_93" > 0.963618) AND (t."X_95" > 0.381135)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_88" <= 0.751027) AND (t."X_95" <= 1.112111) AND (t."X_91" <= 0.445358) AND (t."X_25" > -1.063962) AND (t."X_93" <= 0.963618) AND (t."X_53" > 1.154589) AND (t."X_99" <= -0.818978)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_88" <= 0.751027) AND (t."X_95" <= 1.112111) AND (t."X_91" <= 0.445358) AND (t."X_25" > -1.063962) AND (t."X_93" <= 0.963618) AND (t."X_53" > 1.154589) AND (t."X_99" > -0.818978)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_88" <= 0.751027) AND (t."X_95" <= 1.112111) AND (t."X_91" <= 0.445358) AND (t."X_25" > -1.063962) AND (t."X_93" <= 0.963618) AND (t."X_53" <= 1.154589) AND (t."X_85" <= -1.483936)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_88" <= 0.751027) AND (t."X_95" <= 1.112111) AND (t."X_91" <= 0.445358) AND (t."X_25" > -1.063962) AND (t."X_93" <= 0.963618) AND (t."X_53" <= 1.154589) AND (t."X_85" > -1.483936)) THEN 36 ELSE NULL END AS Leaf_36
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.546875 AS "P_0", 0.453125 AS "P_1", 0 AS "D", 0.546875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.628571 AS "P_0", 0.371429 AS "P_1", 0 AS "D", 0.628571 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.173913 AS "P_0", 0.826087 AS "P_1", 1 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.095238 AS "P_0", 0.904762 AS "P_1", 1 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.722892 AS "P_0", 0.277108 AS "P_1", 0 AS "D", 0.722892 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.822581 AS "P_0", 0.177419 AS "P_1", 0 AS "D", 0.822581 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.692308 AS "P_0", 0.307692 AS "P_1", 0 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.862069 AS "P_0", 0.137931 AS "P_1", 0 AS "D", 0.862069 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.976190 AS "P_0", 0.023810 AS "P_1", 0 AS "D", 0.976190 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_26" AS t1
   LEFT OUTER JOIN
   "DT_node_data_26" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_27" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_78" > 1.308460)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_78" <= 1.308460) AND (t."X_92" > 1.492243)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_78" <= 1.308460) AND (t."X_92" <= 1.492243) AND (t."X_37" <= -1.402102)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_78" <= 1.308460) AND (t."X_92" <= 1.492243) AND (t."X_37" > -1.402102) AND (t."X_92" <= -1.287755)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_78" <= 1.308460) AND (t."X_92" <= 1.492243) AND (t."X_37" > -1.402102) AND (t."X_92" > -1.287755) AND (t."X_59" > 0.444395) AND (t."X_13" > -0.016378)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_78" <= 1.308460) AND (t."X_92" <= 1.492243) AND (t."X_37" > -1.402102) AND (t."X_92" > -1.287755) AND (t."X_59" > 0.444395) AND (t."X_13" <= -0.016378) AND (t."X_97" <= -0.863675)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_78" <= 1.308460) AND (t."X_92" <= 1.492243) AND (t."X_37" > -1.402102) AND (t."X_92" > -1.287755) AND (t."X_59" > 0.444395) AND (t."X_13" <= -0.016378) AND (t."X_97" > -0.863675)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_78" <= 1.308460) AND (t."X_92" <= 1.492243) AND (t."X_37" > -1.402102) AND (t."X_92" > -1.287755) AND (t."X_59" <= 0.444395) AND (t."X_95" > 1.439595)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_78" <= 1.308460) AND (t."X_92" <= 1.492243) AND (t."X_37" > -1.402102) AND (t."X_92" > -1.287755) AND (t."X_59" <= 0.444395) AND (t."X_95" <= 1.439595) AND (t."X_25" <= -1.295028)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_78" <= 1.308460) AND (t."X_92" <= 1.492243) AND (t."X_37" > -1.402102) AND (t."X_92" > -1.287755) AND (t."X_59" <= 0.444395) AND (t."X_95" <= 1.439595) AND (t."X_25" > -1.295028) AND (t."X_95" <= -1.563987)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_78" <= 1.308460) AND (t."X_92" <= 1.492243) AND (t."X_37" > -1.402102) AND (t."X_92" > -1.287755) AND (t."X_59" <= 0.444395) AND (t."X_95" <= 1.439595) AND (t."X_25" > -1.295028) AND (t."X_95" > -1.563987) AND (t."X_48" > 1.447934) AND (t."X_25" <= 0.119618)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_78" <= 1.308460) AND (t."X_92" <= 1.492243) AND (t."X_37" > -1.402102) AND (t."X_92" > -1.287755) AND (t."X_59" <= 0.444395) AND (t."X_95" <= 1.439595) AND (t."X_25" > -1.295028) AND (t."X_95" > -1.563987) AND (t."X_48" > 1.447934) AND (t."X_25" > 0.119618)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_78" <= 1.308460) AND (t."X_92" <= 1.492243) AND (t."X_37" > -1.402102) AND (t."X_92" > -1.287755) AND (t."X_59" <= 0.444395) AND (t."X_95" <= 1.439595) AND (t."X_25" > -1.295028) AND (t."X_95" > -1.563987) AND (t."X_48" <= 1.447934) AND (t."X_97" <= -1.256430)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_78" <= 1.308460) AND (t."X_92" <= 1.492243) AND (t."X_37" > -1.402102) AND (t."X_92" > -1.287755) AND (t."X_59" <= 0.444395) AND (t."X_95" <= 1.439595) AND (t."X_25" > -1.295028) AND (t."X_95" > -1.563987) AND (t."X_48" <= 1.447934) AND (t."X_97" > -1.256430) AND (t."X_97" > 2.533011)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_78" <= 1.308460) AND (t."X_92" <= 1.492243) AND (t."X_37" > -1.402102) AND (t."X_92" > -1.287755) AND (t."X_59" <= 0.444395) AND (t."X_95" <= 1.439595) AND (t."X_25" > -1.295028) AND (t."X_95" > -1.563987) AND (t."X_48" <= 1.447934) AND (t."X_97" > -1.256430) AND (t."X_97" <= 2.533011) AND (t."X_37" <= 1.276556)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_78" <= 1.308460) AND (t."X_92" <= 1.492243) AND (t."X_37" > -1.402102) AND (t."X_92" > -1.287755) AND (t."X_59" <= 0.444395) AND (t."X_95" <= 1.439595) AND (t."X_25" > -1.295028) AND (t."X_95" > -1.563987) AND (t."X_48" <= 1.447934) AND (t."X_97" > -1.256430) AND (t."X_97" <= 2.533011) AND (t."X_37" > 1.276556)) THEN 30 ELSE NULL END AS Leaf_30
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.585938 AS "P_0", 0.414062 AS "P_1", 0 AS "D", 0.585938 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.630252 AS "P_0", 0.369748 AS "P_1", 0 AS "D", 0.630252 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.681818 AS "P_0", 0.318182 AS "P_1", 0 AS "D", 0.681818 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.627660 AS "P_0", 0.372340 AS "P_1", 0 AS "D", 0.627660 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.678161 AS "P_0", 0.321839 AS "P_1", 0 AS "D", 0.678161 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.753623 AS "P_0", 0.246377 AS "P_1", 0 AS "D", 0.753623 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.388889 AS "P_0", 0.611111 AS "P_1", 1 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.838710 AS "P_0", 0.161290 AS "P_1", 0 AS "D", 0.838710 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.881356 AS "P_0", 0.118644 AS "P_1", 0 AS "D", 0.881356 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.924528 AS "P_0", 0.075472 AS "P_1", 0 AS "D", 0.924528 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.942308 AS "P_0", 0.057692 AS "P_1", 0 AS "D", 0.942308 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.960784 AS "P_0", 0.039216 AS "P_1", 0 AS "D", 0.960784 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
  ) AS "Values"),
"DT_output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_27" AS t1
   LEFT OUTER JOIN
   "DT_node_data_27" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_28" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_41" <= -0.887966) AND (t."X_90" > -0.092604)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_41" <= -0.887966) AND (t."X_90" <= -0.092604) AND (t."X_98" <= 1.518795)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_41" <= -0.887966) AND (t."X_90" <= -0.092604) AND (t."X_98" > 1.518795)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" > -0.234751) AND (t."X_93" <= -0.968700) AND (t."X_7" <= -1.151638)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" > -0.234751) AND (t."X_93" <= -0.968700) AND (t."X_7" > -1.151638)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" <= -0.234751) AND (t."X_20" > 2.286798)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" > -0.234751) AND (t."X_93" > -0.968700) AND (t."X_99" > -0.752417) AND (t."X_49" <= -0.296264) AND (t."X_97" <= 0.943470)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" > -0.234751) AND (t."X_93" > -0.968700) AND (t."X_99" > -0.752417) AND (t."X_49" <= -0.296264) AND (t."X_97" > 0.943470)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" > -0.234751) AND (t."X_93" > -0.968700) AND (t."X_99" > -0.752417) AND (t."X_49" > -0.296264) AND (t."X_7" > 0.532880)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" > -0.234751) AND (t."X_93" > -0.968700) AND (t."X_99" <= -0.752417) AND (t."X_97" <= 0.738406)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" > -0.234751) AND (t."X_93" > -0.968700) AND (t."X_99" <= -0.752417) AND (t."X_97" > 0.738406)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" > -0.234751) AND (t."X_93" > -0.968700) AND (t."X_99" > -0.752417) AND (t."X_49" > -0.296264) AND (t."X_7" <= 0.532880) AND (t."X_99" > 2.133275)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" > -0.234751) AND (t."X_93" > -0.968700) AND (t."X_99" > -0.752417) AND (t."X_49" > -0.296264) AND (t."X_7" <= 0.532880) AND (t."X_99" <= 2.133275) AND (t."X_13" <= 1.031335)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" > -0.234751) AND (t."X_93" > -0.968700) AND (t."X_99" > -0.752417) AND (t."X_49" > -0.296264) AND (t."X_7" <= 0.532880) AND (t."X_99" <= 2.133275) AND (t."X_13" > 1.031335) AND (t."X_99" <= 0.807427)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" > -0.234751) AND (t."X_93" > -0.968700) AND (t."X_99" > -0.752417) AND (t."X_49" > -0.296264) AND (t."X_7" <= 0.532880) AND (t."X_99" <= 2.133275) AND (t."X_13" > 1.031335) AND (t."X_99" > 0.807427)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" <= -0.234751) AND (t."X_20" <= 2.286798) AND (t."X_75" <= -2.624541)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" <= -0.234751) AND (t."X_20" <= 2.286798) AND (t."X_75" > -2.624541) AND (t."X_49" > 0.083335) AND (t."X_89" > 0.243469)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" <= -0.234751) AND (t."X_20" <= 2.286798) AND (t."X_75" > -2.624541) AND (t."X_49" > 0.083335) AND (t."X_89" <= 0.243469) AND (t."X_95" <= 0.305867)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" <= -0.234751) AND (t."X_20" <= 2.286798) AND (t."X_75" > -2.624541) AND (t."X_49" > 0.083335) AND (t."X_89" <= 0.243469) AND (t."X_95" > 0.305867)) THEN 38 ELSE NULL END AS Leaf_38,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" <= -0.234751) AND (t."X_20" <= 2.286798) AND (t."X_75" > -2.624541) AND (t."X_49" <= 0.083335) AND (t."X_94" <= 1.702999)) THEN 39 ELSE NULL END AS Leaf_39,
      CASE WHEN((t."X_41" > -0.887966) AND (t."X_15" <= -0.234751) AND (t."X_20" <= 2.286798) AND (t."X_75" > -2.624541) AND (t."X_49" <= 0.083335) AND (t."X_94" > 1.702999)) THEN 40 ELSE NULL END AS Leaf_40
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.554688 AS "P_0", 0.445312 AS "P_1", 0 AS "D", 0.554688 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.210526 AS "P_0", 0.789474 AS "P_1", 1 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.614679 AS "P_0", 0.385321 AS "P_1", 0 AS "D", 0.614679 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.773585 AS "P_0", 0.226415 AS "P_1", 0 AS "D", 0.773585 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.464286 AS "P_0", 0.535714 AS "P_1", 1 AS "D", 0.535714 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.340909 AS "P_0", 0.659091 AS "P_1", 1 AS "D", 0.659091 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.836735 AS "P_0", 0.163265 AS "P_1", 0 AS "D", 0.836735 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.482759 AS "P_0", 0.517241 AS "P_1", 1 AS "D", 0.517241 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.705882 AS "P_0", 0.294118 AS "P_1", 0 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.872340 AS "P_0", 0.127660 AS "P_1", 0 AS "D", 0.872340 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.969697 AS "P_0", 0.030303 AS "P_1", 0 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_28" AS t1
   LEFT OUTER JOIN
   "DT_node_data_28" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_29" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_39" <= -0.773716) AND (t."X_99" > 0.611661)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_39" <= -0.773716) AND (t."X_99" <= 0.611661) AND (t."X_96" <= -2.144928)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_39" <= -0.773716) AND (t."X_99" <= 0.611661) AND (t."X_96" > -2.144928) AND (t."X_8" <= -1.718645)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_39" <= -0.773716) AND (t."X_99" <= 0.611661) AND (t."X_96" > -2.144928) AND (t."X_8" > -1.718645)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" > 0.178039) AND (t."X_10" <= -0.625033) AND (t."X_99" <= 1.065592)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" > 0.178039) AND (t."X_10" <= -0.625033) AND (t."X_99" > 1.065592)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" > 0.178039) AND (t."X_10" > -0.625033) AND (t."X_10" > 0.784358) AND (t."X_79" <= -0.273758)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" > 0.178039) AND (t."X_10" > -0.625033) AND (t."X_10" > 0.784358) AND (t."X_79" > -0.273758) AND (t."X_96" <= -0.811322)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" > 0.178039) AND (t."X_10" > -0.625033) AND (t."X_10" > 0.784358) AND (t."X_79" > -0.273758) AND (t."X_96" > -0.811322)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" <= 0.178039) AND (t."X_98" <= -1.317686)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" <= 0.178039) AND (t."X_98" > -1.317686) AND (t."X_3" > 1.325107)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" <= 0.178039) AND (t."X_98" > -1.317686) AND (t."X_3" <= 1.325107) AND (t."X_99" <= -1.653141)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" > 0.178039) AND (t."X_10" > -0.625033) AND (t."X_10" <= 0.784358) AND (t."X_95" > 1.450133)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" <= 0.178039) AND (t."X_98" > -1.317686) AND (t."X_3" <= 1.325107) AND (t."X_99" > -1.653141) AND (t."X_86" <= -1.219419) AND (t."X_8" <= 0.016710)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" <= 0.178039) AND (t."X_98" > -1.317686) AND (t."X_3" <= 1.325107) AND (t."X_99" > -1.653141) AND (t."X_86" <= -1.219419) AND (t."X_8" > 0.016710)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" > 0.178039) AND (t."X_10" > -0.625033) AND (t."X_10" <= 0.784358) AND (t."X_95" <= 1.450133) AND (t."X_93" > 0.541189) AND (t."X_99" <= 0.909949)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" > 0.178039) AND (t."X_10" > -0.625033) AND (t."X_10" <= 0.784358) AND (t."X_95" <= 1.450133) AND (t."X_93" > 0.541189) AND (t."X_99" > 0.909949)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" > 0.178039) AND (t."X_10" > -0.625033) AND (t."X_10" <= 0.784358) AND (t."X_95" <= 1.450133) AND (t."X_93" <= 0.541189) AND (t."X_8" > -1.039111)) THEN 38 ELSE NULL END AS Leaf_38,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" > 0.178039) AND (t."X_10" > -0.625033) AND (t."X_10" <= 0.784358) AND (t."X_95" <= 1.450133) AND (t."X_93" <= 0.541189) AND (t."X_8" <= -1.039111) AND (t."X_8" <= -1.434632)) THEN 39 ELSE NULL END AS Leaf_39,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" > 0.178039) AND (t."X_10" > -0.625033) AND (t."X_10" <= 0.784358) AND (t."X_95" <= 1.450133) AND (t."X_93" <= 0.541189) AND (t."X_8" <= -1.039111) AND (t."X_8" > -1.434632)) THEN 40 ELSE NULL END AS Leaf_40,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" <= 0.178039) AND (t."X_98" > -1.317686) AND (t."X_3" <= 1.325107) AND (t."X_99" > -1.653141) AND (t."X_86" > -1.219419) AND (t."X_96" <= 1.427916)) THEN 41 ELSE NULL END AS Leaf_41,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" <= 0.178039) AND (t."X_98" > -1.317686) AND (t."X_3" <= 1.325107) AND (t."X_99" > -1.653141) AND (t."X_86" > -1.219419) AND (t."X_96" > 1.427916) AND (t."X_99" <= 0.604636)) THEN 43 ELSE NULL END AS Leaf_43,
      CASE WHEN((t."X_39" > -0.773716) AND (t."X_39" <= 0.178039) AND (t."X_98" > -1.317686) AND (t."X_3" <= 1.325107) AND (t."X_99" > -1.653141) AND (t."X_86" > -1.219419) AND (t."X_96" > 1.427916) AND (t."X_99" > 0.604636)) THEN 44 ELSE NULL END AS Leaf_44
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.484375 AS "P_0", 0.515625 AS "P_1", 1 AS "D", 0.515625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.411765 AS "P_0", 0.588235 AS "P_1", 1 AS "D", 0.588235 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.259259 AS "P_0", 0.740741 AS "P_1", 1 AS "D", 0.740741 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.583333 AS "P_0", 0.416667 AS "P_1", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.215686 AS "P_0", 0.784314 AS "P_1", 1 AS "D", 0.784314 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.130435 AS "P_0", 0.869565 AS "P_1", 1 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.026316 AS "P_0", 0.973684 AS "P_1", 1 AS "D", 0.973684 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_29" AS t1
   LEFT OUTER JOIN
   "DT_node_data_29" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_30" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_67" <= -2.068023)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" > 0.516072) AND (t."X_96" > 0.489880) AND (t."X_99" <= 0.005459)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" > 0.516072) AND (t."X_96" > 0.489880) AND (t."X_99" > 0.005459)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" > 0.516072) AND (t."X_96" <= 0.489880) AND (t."X_45" > 1.550854)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" <= 0.516072) AND (t."X_52" <= -1.498485) AND (t."X_99" <= -0.691773)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" <= 0.516072) AND (t."X_52" <= -1.498485) AND (t."X_99" > -0.691773)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" <= 0.516072) AND (t."X_52" > -1.498485) AND (t."X_47" <= -0.668858) AND (t."X_98" <= -0.670820)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" <= 0.516072) AND (t."X_52" > -1.498485) AND (t."X_47" <= -0.668858) AND (t."X_98" > -0.670820) AND (t."X_98" <= 0.927353)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" <= 0.516072) AND (t."X_52" > -1.498485) AND (t."X_47" <= -0.668858) AND (t."X_98" > -0.670820) AND (t."X_98" > 0.927353)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" <= 0.516072) AND (t."X_52" > -1.498485) AND (t."X_47" > -0.668858) AND (t."X_71" > 1.816616)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" <= 0.516072) AND (t."X_52" > -1.498485) AND (t."X_47" > -0.668858) AND (t."X_71" <= 1.816616) AND (t."X_47" > 1.266727)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" <= 0.516072) AND (t."X_52" > -1.498485) AND (t."X_47" > -0.668858) AND (t."X_71" <= 1.816616) AND (t."X_47" <= 1.266727) AND (t."X_99" > 2.075320)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" > 0.516072) AND (t."X_96" <= 0.489880) AND (t."X_45" <= 1.550854) AND (t."X_42" > -0.658022)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" > 0.516072) AND (t."X_96" <= 0.489880) AND (t."X_45" <= 1.550854) AND (t."X_42" <= -0.658022) AND (t."X_99" <= 0.517758)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" > 0.516072) AND (t."X_96" <= 0.489880) AND (t."X_45" <= 1.550854) AND (t."X_42" <= -0.658022) AND (t."X_99" > 0.517758)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" <= 0.516072) AND (t."X_52" > -1.498485) AND (t."X_47" > -0.668858) AND (t."X_71" <= 1.816616) AND (t."X_47" <= 1.266727) AND (t."X_99" <= 2.075320) AND (t."X_42" > 0.986409) AND (t."X_90" <= -1.212399)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" <= 0.516072) AND (t."X_52" > -1.498485) AND (t."X_47" > -0.668858) AND (t."X_71" <= 1.816616) AND (t."X_47" <= 1.266727) AND (t."X_99" <= 2.075320) AND (t."X_42" > 0.986409) AND (t."X_90" > -1.212399)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" <= 0.516072) AND (t."X_52" > -1.498485) AND (t."X_47" > -0.668858) AND (t."X_71" <= 1.816616) AND (t."X_47" <= 1.266727) AND (t."X_99" <= 2.075320) AND (t."X_42" <= 0.986409) AND (t."X_52" <= 0.740639)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" <= 0.516072) AND (t."X_52" > -1.498485) AND (t."X_47" > -0.668858) AND (t."X_71" <= 1.816616) AND (t."X_47" <= 1.266727) AND (t."X_99" <= 2.075320) AND (t."X_42" <= 0.986409) AND (t."X_52" > 0.740639) AND (t."X_53" <= 0.417603)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_67" > -2.068023) AND (t."X_91" <= 0.516072) AND (t."X_52" > -1.498485) AND (t."X_47" > -0.668858) AND (t."X_71" <= 1.816616) AND (t."X_47" <= 1.266727) AND (t."X_99" <= 2.075320) AND (t."X_42" <= 0.986409) AND (t."X_52" > 0.740639) AND (t."X_53" > 0.417603)) THEN 38 ELSE NULL END AS Leaf_38
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.554688 AS "P_0", 0.445312 AS "P_1", 0 AS "D", 0.554688 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.617391 AS "P_0", 0.382609 AS "P_1", 0 AS "D", 0.617391 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.709302 AS "P_0", 0.290698 AS "P_1", 0 AS "D", 0.709302 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.344828 AS "P_0", 0.655172 AS "P_1", 1 AS "D", 0.655172 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.470588 AS "P_0", 0.529412 AS "P_1", 1 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.852459 AS "P_0", 0.147541 AS "P_1", 0 AS "D", 0.852459 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.881356 AS "P_0", 0.118644 AS "P_1", 0 AS "D", 0.881356 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.912281 AS "P_0", 0.087719 AS "P_1", 0 AS "D", 0.912281 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.945455 AS "P_0", 0.054545 AS "P_1", 0 AS "D", 0.945455 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.979592 AS "P_0", 0.020408 AS "P_1", 0 AS "D", 0.979592 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_30" AS t1
   LEFT OUTER JOIN
   "DT_node_data_30" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_31" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_19", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_57" <= -0.798018)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_57" > -0.798018) AND (t."X_91" <= -0.713664) AND (t."X_57" <= 0.584838) AND (t."X_79" <= -1.717382)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_57" > -0.798018) AND (t."X_91" <= -0.713664) AND (t."X_57" <= 0.584838) AND (t."X_79" > -1.717382)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_57" > -0.798018) AND (t."X_91" <= -0.713664) AND (t."X_57" > 0.584838) AND (t."X_93" <= 1.130626)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_57" > -0.798018) AND (t."X_91" <= -0.713664) AND (t."X_57" > 0.584838) AND (t."X_93" > 1.130626)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_57" > -0.798018) AND (t."X_91" > -0.713664) AND (t."X_96" > 0.974826)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_57" > -0.798018) AND (t."X_91" > -0.713664) AND (t."X_96" <= 0.974826) AND (t."X_72" <= -1.475057)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_57" > -0.798018) AND (t."X_91" > -0.713664) AND (t."X_96" <= 0.974826) AND (t."X_72" > -1.475057) AND (t."X_90" <= -1.406865)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_57" > -0.798018) AND (t."X_91" > -0.713664) AND (t."X_96" <= 0.974826) AND (t."X_72" > -1.475057) AND (t."X_90" > -1.406865) AND (t."X_43" <= -0.208912) AND (t."X_90" <= 0.132369)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_57" > -0.798018) AND (t."X_91" > -0.713664) AND (t."X_96" <= 0.974826) AND (t."X_72" > -1.475057) AND (t."X_90" > -1.406865) AND (t."X_43" <= -0.208912) AND (t."X_90" > 0.132369) AND (t."X_92" <= -0.018970)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_57" > -0.798018) AND (t."X_91" > -0.713664) AND (t."X_96" <= 0.974826) AND (t."X_72" > -1.475057) AND (t."X_90" > -1.406865) AND (t."X_43" <= -0.208912) AND (t."X_90" > 0.132369) AND (t."X_92" > -0.018970) AND (t."X_79" <= -0.352562)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_57" > -0.798018) AND (t."X_91" > -0.713664) AND (t."X_96" <= 0.974826) AND (t."X_72" > -1.475057) AND (t."X_90" > -1.406865) AND (t."X_43" <= -0.208912) AND (t."X_90" > 0.132369) AND (t."X_92" > -0.018970) AND (t."X_79" > -0.352562)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_57" > -0.798018) AND (t."X_91" > -0.713664) AND (t."X_96" <= 0.974826) AND (t."X_72" > -1.475057) AND (t."X_90" > -1.406865) AND (t."X_43" > -0.208912) AND (t."X_46" <= 1.477538)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_57" > -0.798018) AND (t."X_91" > -0.713664) AND (t."X_96" <= 0.974826) AND (t."X_72" > -1.475057) AND (t."X_90" > -1.406865) AND (t."X_43" > -0.208912) AND (t."X_46" > 1.477538)) THEN 26 ELSE NULL END AS Leaf_26
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.492188 AS "P_0", 0.507812 AS "P_1", 1 AS "D", 0.507812 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.386792 AS "P_0", 0.613208 AS "P_1", 1 AS "D", 0.613208 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.708333 AS "P_0", 0.291667 AS "P_1", 0 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.292683 AS "P_0", 0.707317 AS "P_1", 1 AS "D", 0.707317 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.216216 AS "P_0", 0.783784 AS "P_1", 1 AS "D", 0.783784 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.183099 AS "P_0", 0.816901 AS "P_1", 1 AS "D", 0.816901 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.134328 AS "P_0", 0.865672 AS "P_1", 1 AS "D", 0.865672 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.275862 AS "P_0", 0.724138 AS "P_1", 1 AS "D", 0.724138 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.026316 AS "P_0", 0.973684 AS "P_1", 1 AS "D", 0.973684 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
   ON t1.node_id = t2.nid
 ),
"union_of_trees" AS
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
)
SELECT
   t."index" AS "index",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   AVG(t."P_0") AS "Proba_0",
   CAST(NULL AS FLOAT) AS "Score_0",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   AVG(t."P_1") AS "Proba_1",
   CAST(NULL AS FLOAT) AS "Score_1"
FROM "union_of_trees" AS t
GROUP BY t."index"
