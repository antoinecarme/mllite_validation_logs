WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_4" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_52" > 0.769524)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_52" <= 0.769524) AND (t."X_95" <= -0.032295)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_52" <= 0.769524) AND (t."X_95" > -0.032295)) THEN 4 ELSE NULL END AS "Leaf_4"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.437500 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.555556 AS "P_0", 0.000000 AS "P_1", 0.444444 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_52" > 0.464079) AND (t."X_78" <= -0.092076)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_52" > 0.464079) AND (t."X_78" > -0.092076)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_52" <= 0.464079) AND (t."X_99" > 0.837587)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_52" <= 0.464079) AND (t."X_99" <= 0.837587) AND (t."X_99" <= -1.040129)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_52" <= 0.464079) AND (t."X_99" <= 0.837587) AND (t."X_99" > -1.040129)) THEN 8 ELSE NULL END AS "Leaf_8"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.250000 AS "P_1", 0.375000 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.600000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_30" <= -1.469569)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_30" > -1.469569) AND (t."X_98" > 0.320817)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_30" > -1.469569) AND (t."X_98" <= 0.320817) AND (t."X_69" <= -0.644402)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_30" > -1.469569) AND (t."X_98" <= 0.320817) AND (t."X_69" > -0.644402) AND (t."X_99" <= 1.690603)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_30" > -1.469569) AND (t."X_98" <= 0.320817) AND (t."X_69" > -0.644402) AND (t."X_99" > 1.690603)) THEN 8 ELSE NULL END AS "Leaf_8"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.250000 AS "P_1", 0.187500 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.416667 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.416667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.625000 AS "P_0", 0.000000 AS "P_1", 0.375000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_49" <= -1.724105)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_49" > -1.724105) AND (t."X_96" <= 0.028232) AND (t."X_99" <= -1.198143)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_49" > -1.724105) AND (t."X_96" <= 0.028232) AND (t."X_99" > -1.198143) AND (t."X_48" <= 0.328632)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_49" > -1.724105) AND (t."X_96" <= 0.028232) AND (t."X_99" > -1.198143) AND (t."X_48" > 0.328632)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_49" > -1.724105) AND (t."X_96" > 0.028232) AND (t."X_91" <= -0.753296)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_49" > -1.724105) AND (t."X_96" > 0.028232) AND (t."X_91" > -0.753296)) THEN 10 ELSE NULL END AS "Leaf_10"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.125000 AS "P_1", 0.375000 AS "P_2", 0.187500 AS "P_3", 2 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.083333 AS "P_0", 0.166667 AS "P_1", 0.500000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.200000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.142857 AS "P_1", 0.857143 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_92" <= -0.549046) AND (t."X_97" <= 0.837257)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_92" <= -0.549046) AND (t."X_97" > 0.837257)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_92" > -0.549046) AND (t."X_95" > 0.373348)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_92" > -0.549046) AND (t."X_95" <= 0.373348) AND (t."X_96" > 0.028232)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_92" > -0.549046) AND (t."X_95" <= 0.373348) AND (t."X_96" <= 0.028232) AND (t."X_28" <= -1.412366)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_92" > -0.549046) AND (t."X_95" <= 0.373348) AND (t."X_96" <= 0.028232) AND (t."X_28" > -1.412366)) THEN 10 ELSE NULL END AS "Leaf_10"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.187500 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.400000 AS "P_2", 0.100000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.166667 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_39" <= -0.284560)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_39" > -0.284560) AND (t."X_99" > 0.064091)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_39" > -0.284560) AND (t."X_99" <= 0.064091) AND (t."X_39" <= 0.804368)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_39" > -0.284560) AND (t."X_99" <= 0.064091) AND (t."X_39" > 0.804368)) THEN 6 ELSE NULL END AS "Leaf_6"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.187500 AS "P_1", 0.250000 AS "P_2", 0.062500 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.375000 AS "P_1", 0.500000 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_11" > 0.841887) AND (t."X_27" <= 0.001163)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_11" > 0.841887) AND (t."X_27" > 0.001163) AND (t."X_99" <= 0.212057)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_11" > 0.841887) AND (t."X_27" > 0.001163) AND (t."X_99" > 0.212057)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_11" <= 0.841887) AND (t."X_99" > -0.126241)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_11" <= 0.841887) AND (t."X_99" <= -0.126241) AND (t."X_71" <= 0.650049)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_11" <= 0.841887) AND (t."X_99" <= -0.126241) AND (t."X_71" > 0.650049)) THEN 10 ELSE NULL END AS "Leaf_10"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.187500 AS "P_1", 0.437500 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.222222 AS "P_0", 0.000000 AS "P_1", 0.777778 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.285714 AS "P_0", 0.428571 AS "P_1", 0.000000 AS "P_2", 0.285714 AS "P_3", 1 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_42" <= -0.520143)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_42" > -0.520143) AND (t."X_90" <= -1.187725) AND (t."X_35" <= 0.206918)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_42" > -0.520143) AND (t."X_90" <= -1.187725) AND (t."X_35" > 0.206918)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_42" > -0.520143) AND (t."X_90" > -1.187725) AND (t."X_98" <= 0.052236)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_42" > -0.520143) AND (t."X_90" > -1.187725) AND (t."X_98" > 0.052236)) THEN 8 ELSE NULL END AS "Leaf_8"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.125000 AS "P_1", 0.250000 AS "P_2", 0.312500 AS "P_3", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.416667 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.416667 AS "P_3", 0 AS "D", 0.416667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_15" <= -0.441793)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_15" > -0.441793) AND (t."X_97" > 0.636345)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_15" > -0.441793) AND (t."X_97" <= 0.636345) AND (t."X_96" <= -0.330724)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_15" > -0.441793) AND (t."X_97" <= 0.636345) AND (t."X_96" > -0.330724)) THEN 6 ELSE NULL END AS "Leaf_6"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.375000 AS "P_1", 0.125000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.111111 AS "P_0", 0.666667 AS "P_1", 0.222222 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_83" > 0.746918)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_83" <= 0.746918) AND (t."X_97" > 0.715181)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_83" <= 0.746918) AND (t."X_97" <= 0.715181) AND (t."X_75" <= 0.516701)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_83" <= 0.746918) AND (t."X_97" <= 0.715181) AND (t."X_75" > 0.516701)) THEN 6 ELSE NULL END AS "Leaf_6"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.250000 AS "P_1", 0.312500 AS "P_2", 0.187500 AS "P_3", 2 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.416667 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.416667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.625000 AS "P_2", 0.375000 AS "P_3", 2 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_53" > 1.506322) AND (t."X_8" <= -1.048849)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_53" > 1.506322) AND (t."X_8" > -1.048849)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_53" <= 1.506322) AND (t."X_90" <= -1.341457) AND (t."X_99" <= 0.423794)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_53" <= 1.506322) AND (t."X_90" <= -1.341457) AND (t."X_99" > 0.423794)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_53" <= 1.506322) AND (t."X_90" > -1.341457) AND (t."X_8" <= -1.105034)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_53" <= 1.506322) AND (t."X_90" > -1.341457) AND (t."X_8" > -1.105034)) THEN 10 ELSE NULL END AS "Leaf_10"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.437500 AS "P_0", 0.250000 AS "P_1", 0.187500 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.636364 AS "P_0", 0.000000 AS "P_1", 0.181818 AS "P_2", 0.181818 AS "P_3", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.875000 AS "P_0", 0.000000 AS "P_1", 0.125000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_72" <= -0.150176)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_72" > -0.150176) AND (t."X_97" <= 0.573355)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_72" > -0.150176) AND (t."X_97" > 0.573355) AND (t."X_87" <= -1.059330)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_72" > -0.150176) AND (t."X_97" > 0.573355) AND (t."X_87" > -1.059330)) THEN 6 ELSE NULL END AS "Leaf_6"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.187500 AS "P_1", 0.250000 AS "P_2", 0.062500 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.375000 AS "P_1", 0.500000 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_66" > 2.123984)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_66" <= 2.123984) AND (t."X_97" > 0.837257)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_66" <= 2.123984) AND (t."X_97" <= 0.837257) AND (t."X_61" <= 1.125223)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_66" <= 2.123984) AND (t."X_97" <= 0.837257) AND (t."X_61" > 1.125223)) THEN 6 ELSE NULL END AS "Leaf_6"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.250000 AS "P_1", 0.125000 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_94" > -0.810193) AND (t."X_68" > 1.080074)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_94" > -0.810193) AND (t."X_68" <= 1.080074) AND (t."X_94" <= 1.653287)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_94" > -0.810193) AND (t."X_68" <= 1.080074) AND (t."X_94" > 1.653287)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_94" <= -0.810193) AND (t."X_99" <= -0.735335)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_94" <= -0.810193) AND (t."X_99" > -0.735335)) THEN 8 ELSE NULL END AS "Leaf_8"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.125000 AS "P_1", 0.250000 AS "P_2", 0.437500 AS "P_3", 3 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.125000 AS "P_1", 0.000000 AS "P_2", 0.875000 AS "P_3", 3 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.375000 AS "P_0", 0.125000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_62" > 0.555288) AND (t."X_81" <= -0.096864)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_62" > 0.555288) AND (t."X_81" > -0.096864) AND (t."X_97" <= 0.445488)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_62" > 0.555288) AND (t."X_81" > -0.096864) AND (t."X_97" > 0.445488)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_62" <= 0.555288) AND (t."X_99" <= 0.471582)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_62" <= 0.555288) AND (t."X_99" > 0.471582)) THEN 8 ELSE NULL END AS "Leaf_8"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.125000 AS "P_0", 0.187500 AS "P_1", 0.250000 AS "P_2", 0.437500 AS "P_3", 3 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.125000 AS "P_2", 0.875000 AS "P_3", 3 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.250000 AS "P_0", 0.375000 AS "P_1", 0.375000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_52" > -0.100338) AND (t."X_45" <= -0.182493)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_52" <= -0.100338) AND (t."X_95" <= 0.368011)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_52" <= -0.100338) AND (t."X_95" > 0.368011)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_52" > -0.100338) AND (t."X_45" > -0.182493) AND (t."X_97" <= 0.693074)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_52" > -0.100338) AND (t."X_45" > -0.182493) AND (t."X_97" > 0.693074)) THEN 8 ELSE NULL END AS "Leaf_8"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.375000 AS "P_2", 0.375000 AS "P_3", 2 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.857143 AS "P_3", 3 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_97" > 0.715181)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_97" <= 0.715181) AND (t."X_99" <= 0.079655)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_97" <= 0.715181) AND (t."X_99" > 0.079655) AND (t."X_87" <= 0.410246)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_97" <= 0.715181) AND (t."X_99" > 0.079655) AND (t."X_87" > 0.410246)) THEN 6 ELSE NULL END AS "Leaf_6"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.125000 AS "P_0", 0.375000 AS "P_1", 0.312500 AS "P_2", 0.187500 AS "P_3", 1 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.300000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.285714 AS "P_0", 0.000000 AS "P_1", 0.714286 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_88" > -0.269806) AND (t."X_53" > 0.653162)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_88" > -0.269806) AND (t."X_53" <= 0.653162) AND (t."X_92" <= -0.456385)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_88" > -0.269806) AND (t."X_53" <= 0.653162) AND (t."X_92" > -0.456385)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_88" <= -0.269806) AND (t."X_99" <= 1.025599)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_88" <= -0.269806) AND (t."X_99" > 1.025599)) THEN 8 ELSE NULL END AS "Leaf_8"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.187500 AS "P_1", 0.250000 AS "P_2", 0.312500 AS "P_3", 3 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.400000 AS "P_0", 0.300000 AS "P_1", 0.300000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.571429 AS "P_0", 0.000000 AS "P_1", 0.428571 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_25" > 0.211866)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_25" <= 0.211866) AND (t."X_90" > 0.015284)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_25" <= 0.211866) AND (t."X_90" <= 0.015284) AND (t."X_56" <= -0.305111)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_25" <= 0.211866) AND (t."X_90" <= 0.015284) AND (t."X_56" > -0.305111)) THEN 6 ELSE NULL END AS "Leaf_6"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.250000 AS "P_1", 0.312500 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.454545 AS "P_0", 0.363636 AS "P_1", 0.000000 AS "P_2", 0.181818 AS "P_3", 0 AS "D", 0.454545 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_28" <= -0.468844) AND (t."X_96" <= -0.032124)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_28" <= -0.468844) AND (t."X_96" > -0.032124)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_28" > -0.468844) AND (t."X_75" <= 0.232310)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_28" > -0.468844) AND (t."X_75" > 0.232310)) THEN 6 ELSE NULL END AS "Leaf_6"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.125000 AS "P_0", 0.375000 AS "P_1", 0.375000 AS "P_2", 0.125000 AS "P_3", 1 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" > 0.043515) AND (t."X_95" <= -0.421977)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_10" > 0.043515) AND (t."X_95" > -0.421977)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_10" <= 0.043515) AND (t."X_96" <= 0.028232)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_10" <= 0.043515) AND (t."X_96" > 0.028232) AND (t."X_91" <= -0.753296)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_10" <= 0.043515) AND (t."X_96" > 0.028232) AND (t."X_91" > -0.753296)) THEN 8 ELSE NULL END AS "Leaf_8"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.187500 AS "P_1", 0.312500 AS "P_2", 0.187500 AS "P_3", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.111111 AS "P_1", 0.555556 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.833333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_72" <= -0.150176)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_72" > -0.150176) AND (t."X_99" > 0.064091)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_72" > -0.150176) AND (t."X_99" <= 0.064091) AND (t."X_27" <= 2.046837)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_72" > -0.150176) AND (t."X_99" <= 0.064091) AND (t."X_27" > 2.046837)) THEN 6 ELSE NULL END AS "Leaf_6"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.250000 AS "P_1", 0.375000 AS "P_2", 0.062500 AS "P_3", 2 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.363636 AS "P_1", 0.545455 AS "P_2", 0.090909 AS "P_3", 2 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_40" > 0.491441)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_40" <= 0.491441) AND (t."X_93" <= -0.448477) AND (t."X_99" <= -0.879260)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_40" <= 0.491441) AND (t."X_93" <= -0.448477) AND (t."X_99" > -0.879260)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_40" <= 0.491441) AND (t."X_93" > -0.448477) AND (t."X_98" <= -1.223900)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_40" <= 0.491441) AND (t."X_93" > -0.448477) AND (t."X_98" > -1.223900)) THEN 8 ELSE NULL END AS "Leaf_8"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.437500 AS "P_0", 0.062500 AS "P_1", 0.312500 AS "P_2", 0.187500 AS "P_3", 0 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.636364 AS "P_0", 0.090909 AS "P_1", 0.000000 AS "P_2", 0.272727 AS "P_3", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.875000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_74" <= -0.469696) AND (t."X_97" > 0.715181)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_74" <= -0.469696) AND (t."X_97" <= 0.715181) AND (t."X_99" <= 0.031868)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_74" <= -0.469696) AND (t."X_97" <= 0.715181) AND (t."X_99" > 0.031868)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_74" > -0.469696) AND (t."X_95" <= -0.825862)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_74" > -0.469696) AND (t."X_95" > -0.825862)) THEN 8 ELSE NULL END AS "Leaf_8"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.375000 AS "P_0", 0.250000 AS "P_1", 0.125000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.444444 AS "P_1", 0.111111 AS "P_2", 0.444444 AS "P_3", 1 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.857143 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_58" > 0.219063)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_58" <= 0.219063) AND (t."X_99" <= -0.361224)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_58" <= 0.219063) AND (t."X_99" > -0.361224) AND (t."X_58" <= -0.487554)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_58" <= 0.219063) AND (t."X_99" > -0.361224) AND (t."X_58" > -0.487554)) THEN 6 ELSE NULL END AS "Leaf_6"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.562500 AS "P_0", 0.062500 AS "P_1", 0.062500 AS "P_2", 0.312500 AS "P_3", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.142857 AS "P_1", 0.142857 AS "P_2", 0.714286 AS "P_3", 3 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_46" <= 0.420933) AND (t."X_97" > 0.636345)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_46" > 0.420933) AND (t."X_76" <= -0.313763)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_46" > 0.420933) AND (t."X_76" > -0.313763)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_46" <= 0.420933) AND (t."X_97" <= 0.636345) AND (t."X_96" <= -0.303527)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_46" <= 0.420933) AND (t."X_97" <= 0.636345) AND (t."X_96" > -0.303527)) THEN 8 ELSE NULL END AS "Leaf_8"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.125000 AS "P_0", 0.250000 AS "P_1", 0.312500 AS "P_2", 0.312500 AS "P_3", 2 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.100000 AS "P_0", 0.400000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.833333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_84" > 0.507413)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_84" <= 0.507413) AND (t."X_97" > 0.837257)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_84" <= 0.507413) AND (t."X_97" <= 0.837257) AND (t."X_0" <= -0.236015)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_84" <= 0.507413) AND (t."X_97" <= 0.837257) AND (t."X_0" > -0.236015)) THEN 6 ELSE NULL END AS "Leaf_6"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.125000 AS "P_0", 0.312500 AS "P_1", 0.312500 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.181818 AS "P_0", 0.454545 AS "P_1", 0.000000 AS "P_2", 0.363636 AS "P_3", 1 AS "D", 0.454545 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_25" > -0.745417) AND (t."X_57" > 0.231975)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_25" > -0.745417) AND (t."X_57" <= 0.231975) AND (t."X_99" <= -0.217300)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_25" > -0.745417) AND (t."X_57" <= 0.231975) AND (t."X_99" > -0.217300) AND (t."X_13" <= -0.800182)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_25" > -0.745417) AND (t."X_57" <= 0.231975) AND (t."X_99" > -0.217300) AND (t."X_13" > -0.800182)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_25" <= -0.745417) AND (t."X_98" <= 0.347269)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_25" <= -0.745417) AND (t."X_98" > 0.347269)) THEN 10 ELSE NULL END AS "Leaf_10"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.375000 AS "P_0", 0.125000 AS "P_1", 0.187500 AS "P_2", 0.312500 AS "P_3", 0 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.100000 AS "P_0", 0.200000 AS "P_1", 0.300000 AS "P_2", 0.400000 AS "P_3", 3 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.142857 AS "P_0", 0.285714 AS "P_1", 0.000000 AS "P_2", 0.571429 AS "P_3", 3 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 0.063527)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_20" > 0.063527) AND (t."X_99" > 1.690603)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_20" > 0.063527) AND (t."X_99" <= 1.690603) AND (t."X_12" <= 1.037996)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" > 0.063527) AND (t."X_99" <= 1.690603) AND (t."X_12" > 1.037996) AND (t."X_99" <= 0.321025)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" > 0.063527) AND (t."X_99" <= 1.690603) AND (t."X_12" > 1.037996) AND (t."X_99" > 0.321025)) THEN 8 ELSE NULL END AS "Leaf_8"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.437500 AS "P_0", 0.062500 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.583333 AS "P_0", 0.083333 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.777778 AS "P_0", 0.111111 AS "P_1", 0.111111 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_66" > -0.291961) AND (t."X_51" <= -0.488159)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_66" > -0.291961) AND (t."X_51" > -0.488159)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_66" <= -0.291961) AND (t."X_97" <= 0.636345)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_66" <= -0.291961) AND (t."X_97" > 0.636345)) THEN 6 ELSE NULL END AS "Leaf_6"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.250000 AS "P_1", 0.187500 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.571429 AS "P_1", 0.428571 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.555556 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.444444 AS "P_3", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_15" <= -0.257724)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_15" > -0.257724) AND (t."X_96" > 1.298127) AND (t."X_99" <= -0.800413)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_15" > -0.257724) AND (t."X_96" > 1.298127) AND (t."X_99" > -0.800413)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_15" > -0.257724) AND (t."X_96" <= 1.298127) AND (t."X_52" <= 0.031932)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_15" > -0.257724) AND (t."X_96" <= 1.298127) AND (t."X_52" > 0.031932)) THEN 8 ELSE NULL END AS "Leaf_8"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.437500 AS "P_0", 0.062500 AS "P_1", 0.062500 AS "P_2", 0.437500 AS "P_3", 0 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.100000 AS "P_0", 0.100000 AS "P_1", 0.100000 AS "P_2", 0.700000 AS "P_3", 3 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.125000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.875000 AS "P_3", 3 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_72" <= -0.149419) AND (t."X_96" <= -0.096666)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_72" <= -0.149419) AND (t."X_96" > -0.096666)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_72" > -0.149419) AND (t."X_33" <= -0.164566)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_72" > -0.149419) AND (t."X_33" > -0.164566)) THEN 6 ELSE NULL END AS "Leaf_6"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.187500 AS "P_1", 0.437500 AS "P_2", 0.187500 AS "P_3", 2 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.300000 AS "P_1", 0.700000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
   ON t1.node_id = t2.nid
 ),
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1", scu."P_2" AS "P_2", scu."P_3" AS "P_3"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_4" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_31" AS t
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
   CAST(NULL AS FLOAT) AS "Score_1",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   AVG(t."P_2") AS "Proba_2",
   CAST(NULL AS FLOAT) AS "Score_2",
   CAST(NULL AS FLOAT) AS "LogProba_3",
   AVG(t."P_3") AS "Proba_3",
   CAST(NULL AS FLOAT) AS "Score_3"
FROM "union_of_trees" AS t
GROUP BY t."index"
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
    GREATEST( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Max_Score"
  FROM
     "avg_proba_cte" AS t
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