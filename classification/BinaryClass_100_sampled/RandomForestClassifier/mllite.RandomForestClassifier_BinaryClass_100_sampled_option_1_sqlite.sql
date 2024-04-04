WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_13", t1."Leaf_14", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_51" <= -1.149265) AND (t."X_98" > 0.332835) AND (t."X_51" <= -1.479991)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_51" <= -1.149265) AND (t."X_98" > 0.332835) AND (t."X_51" > -1.479991)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_51" <= -1.149265) AND (t."X_98" <= 0.332835) AND (t."X_97" <= 0.289613)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_51" <= -1.149265) AND (t."X_98" <= 0.332835) AND (t."X_97" > 0.289613)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" <= -0.697241) AND (t."X_91" > 0.603807) AND (t."X_93" <= -1.185765)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" <= -0.697241) AND (t."X_91" > 0.603807) AND (t."X_93" > -1.185765)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" <= -0.464319) AND (t."X_96" <= 1.550064)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" <= -0.464319) AND (t."X_96" > 1.550064)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" > -0.464319) AND (t."X_51" <= -0.657294) AND (t."X_99" <= -0.457235)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" > -0.464319) AND (t."X_51" <= -0.657294) AND (t."X_99" > -0.457235)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" > -0.464319) AND (t."X_51" > -0.657294) AND (t."X_89" <= 1.253035)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" <= 0.817992) AND (t."X_97" > -0.464319) AND (t."X_51" > -0.657294) AND (t."X_89" > 1.253035)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" > 0.817992) AND (t."X_52" <= 0.308229)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" > -0.697241) AND (t."X_83" > 0.817992) AND (t."X_52" > 0.308229)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" <= -0.697241) AND (t."X_91" <= 0.603807) AND (t."X_94" <= 0.789160)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_51" > -1.149265) AND (t."X_93" <= -0.697241) AND (t."X_91" <= 0.603807) AND (t."X_94" > 0.789160)) THEN 30 ELSE NULL END AS "Leaf_30"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
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
    SELECT 6 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
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
    SELECT 15 AS nid,  0.463768 AS "P_0", 0.536232 AS "P_1", 1 AS "D", 0.536232 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.358491 AS "P_0", 0.641509 AS "P_1", 1 AS "D", 0.641509 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
  ) AS "Values"),
"DT_Output_0" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_8", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_81" <= -1.253307)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" > 1.230614)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" <= -0.457505) AND (t."X_92" > 1.971545)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" <= 1.230614) AND (t."X_15" <= 0.248759) AND (t."X_8" <= -0.491425)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" <= 1.230614) AND (t."X_15" <= 0.248759) AND (t."X_8" > -0.491425)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" <= 1.230614) AND (t."X_15" > 0.248759) AND (t."X_93" <= 1.315361)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" > -0.457505) AND (t."X_98" <= 1.230614) AND (t."X_15" > 0.248759) AND (t."X_93" > 1.315361)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" <= -0.457505) AND (t."X_92" <= 1.971545) AND (t."X_96" > 0.225165) AND (t."X_99" <= 0.824681)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" <= -0.457505) AND (t."X_92" <= 1.971545) AND (t."X_96" > 0.225165) AND (t."X_99" > 0.824681)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" <= -0.457505) AND (t."X_92" <= 1.971545) AND (t."X_96" <= 0.225165) AND (t."X_50" <= 0.799972)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" > -1.250065) AND (t."X_95" <= -0.457505) AND (t."X_92" <= 1.971545) AND (t."X_96" <= 0.225165) AND (t."X_50" > 0.799972)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" <= -1.250065) AND (t."X_52" <= -0.260497)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_81" > -1.253307) AND (t."X_98" <= -1.250065) AND (t."X_52" > -0.260497)) THEN 24 ELSE NULL END AS "Leaf_24"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
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
    SELECT 5 AS nid,  0.766667 AS "P_0", 0.233333 AS "P_1", 0 AS "D", 0.766667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.421875 AS "P_0", 0.578125 AS "P_1", 1 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.327273 AS "P_0", 0.672727 AS "P_1", 1 AS "D", 0.672727 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.821429 AS "P_0", 0.178571 AS "P_1", 0 AS "D", 0.821429 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.120000 AS "P_0", 0.880000 AS "P_1", 1 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.235294 AS "P_0", 0.764706 AS "P_1", 1 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_1" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" <= -1.278909)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_74" > 0.192414) AND (t."X_75" <= -1.217082) AND (t."X_53" <= -1.427503)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_74" > 0.192414) AND (t."X_75" <= -1.217082) AND (t."X_53" > -1.427503)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_74" > 0.192414) AND (t."X_75" > -1.217082) AND (t."X_97" <= -0.843068)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" > 1.230614) AND (t."X_97" <= -0.576007)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" > 1.230614) AND (t."X_97" > -0.576007)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" <= 1.230614) AND (t."X_18" <= -1.032130) AND (t."X_96" <= 1.050505)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" <= 1.230614) AND (t."X_18" <= -1.032130) AND (t."X_96" > 1.050505)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" <= 1.230614) AND (t."X_18" > -1.032130) AND (t."X_69" <= -1.073291) AND (t."X_95" <= 0.385177)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" <= 1.230614) AND (t."X_18" > -1.032130) AND (t."X_69" <= -1.073291) AND (t."X_95" > 0.385177)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" <= 1.230614) AND (t."X_18" > -1.032130) AND (t."X_69" > -1.073291) AND (t."X_67" <= 1.026399)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_74" <= 0.192414) AND (t."X_98" > -1.278909) AND (t."X_98" <= 1.230614) AND (t."X_18" > -1.032130) AND (t."X_69" > -1.073291) AND (t."X_67" > 1.026399)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_74" > 0.192414) AND (t."X_75" > -1.217082) AND (t."X_97" > -0.843068) AND (t."X_80" <= -1.433922)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_74" > 0.192414) AND (t."X_75" > -1.217082) AND (t."X_97" > -0.843068) AND (t."X_80" > -1.433922)) THEN 26 ELSE NULL END AS "Leaf_26"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
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
    SELECT 7 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.976744 AS "P_0", 0.023256 AS "P_1", 0 AS "D", 0.976744 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.024390 AS "P_0", 0.975610 AS "P_1", 1 AS "D", 0.975610 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_2" AS 
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
    COALESCE( t1."Leaf_6", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_49" > 0.224326) AND (t."X_57" > 2.458312)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_49" > 0.224326) AND (t."X_57" <= 2.458312) AND (t."X_90" <= -0.137230) AND (t."X_19" <= -0.381757)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_49" > 0.224326) AND (t."X_57" <= 2.458312) AND (t."X_90" <= -0.137230) AND (t."X_19" > -0.381757) AND (t."X_41" <= -0.193545)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_49" > 0.224326) AND (t."X_57" <= 2.458312) AND (t."X_90" <= -0.137230) AND (t."X_19" > -0.381757) AND (t."X_41" > -0.193545)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" <= 0.926151) AND (t."X_91" > 0.882188)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" <= 0.926151) AND (t."X_91" <= 0.882188) AND (t."X_90" <= -1.965057)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" <= 0.926151) AND (t."X_91" <= 0.882188) AND (t."X_90" > -1.965057) AND (t."X_41" <= -1.474207)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" <= 0.926151) AND (t."X_91" <= 0.882188) AND (t."X_90" > -1.965057) AND (t."X_41" > -1.474207) AND (t."X_96" <= -1.598027)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" <= 0.926151) AND (t."X_91" <= 0.882188) AND (t."X_90" > -1.965057) AND (t."X_41" > -1.474207) AND (t."X_96" > -1.598027)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" > 0.926151) AND (t."X_8" <= 0.707054)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_49" <= 0.224326) AND (t."X_48" > 0.926151) AND (t."X_8" > 0.707054)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_49" > 0.224326) AND (t."X_57" <= 2.458312) AND (t."X_90" > -0.137230) AND (t."X_97" <= 1.106192)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_49" > 0.224326) AND (t."X_57" <= 2.458312) AND (t."X_90" > -0.137230) AND (t."X_97" > 1.106192)) THEN 24 ELSE NULL END AS "Leaf_24"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
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
    SELECT 13 AS nid,  0.746032 AS "P_0", 0.253968 AS "P_1", 0 AS "D", 0.746032 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.796610 AS "P_0", 0.203390 AS "P_1", 0 AS "D", 0.796610 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.854545 AS "P_0", 0.145455 AS "P_1", 0 AS "D", 0.854545 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.903846 AS "P_0", 0.096154 AS "P_1", 0 AS "D", 0.903846 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
  ) AS "Values"),
"DT_Output_3" AS 
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
    COALESCE( t1."Leaf_2", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_41" > 1.415085)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" <= -0.697241) AND (t."X_88" <= 0.170859)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" <= -0.697241) AND (t."X_88" > 0.170859) AND (t."X_82" > -0.065125)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" <= -0.697241) AND (t."X_88" > 0.170859) AND (t."X_82" <= -0.065125) AND (t."X_95" <= -0.108548)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" <= -0.697241) AND (t."X_88" > 0.170859) AND (t."X_82" <= -0.065125) AND (t."X_95" > -0.108548)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" <= -1.262800) AND (t."X_28" <= 0.361302)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" <= -1.262800) AND (t."X_28" > 0.361302)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" > 1.819644)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" <= 1.819644) AND (t."X_88" <= -0.222262) AND (t."X_99" <= 0.801117)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" <= 1.819644) AND (t."X_88" <= -0.222262) AND (t."X_99" > 0.801117)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" <= 1.819644) AND (t."X_88" > -0.222262) AND (t."X_93" <= -0.296736)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_41" <= 1.415085) AND (t."X_93" > -0.697241) AND (t."X_98" > -1.262800) AND (t."X_95" <= 1.819644) AND (t."X_88" > -0.222262) AND (t."X_93" > -0.296736)) THEN 22 ELSE NULL END AS "Leaf_22"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
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
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
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
    SELECT 21 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.027027 AS "P_0", 0.972973 AS "P_1", 1 AS "D", 0.972973 AS "DP"
  ) AS "Values"),
"DT_Output_4" AS 
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
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_4" AS t
  ) AS scu
),
"avg_proba_cte" AS
( SELECT
   t."index" AS "index",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   AVG(t."P_0") AS "Proba_0",
   CAST(NULL AS FLOAT) AS "Score_0",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   AVG(t."P_1") AS "Proba_1",
   CAST(NULL AS FLOAT) AS "Score_1"
FROM "union_of_trees" AS t
GROUP BY t."index"
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
     "avg_proba_cte" AS t
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