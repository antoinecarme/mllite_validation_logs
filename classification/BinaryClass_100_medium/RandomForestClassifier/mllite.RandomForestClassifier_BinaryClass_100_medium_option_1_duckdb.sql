WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_17", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_85" > 0.879343) AND (t."X_52" > -0.426319) AND (t."X_52" > 0.842711)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_85" > 0.879343) AND (t."X_52" > -0.426319) AND (t."X_52" <= 0.842711) AND (t."X_98" > 0.399369)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_85" > 0.879343) AND (t."X_52" > -0.426319) AND (t."X_52" <= 0.842711) AND (t."X_98" <= 0.399369) AND (t."X_83" <= 0.153315)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_85" > 0.879343) AND (t."X_52" > -0.426319) AND (t."X_52" <= 0.842711) AND (t."X_98" <= 0.399369) AND (t."X_83" > 0.153315) AND (t."X_97" <= 0.177799)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_85" > 0.879343) AND (t."X_52" > -0.426319) AND (t."X_52" <= 0.842711) AND (t."X_98" <= 0.399369) AND (t."X_83" > 0.153315) AND (t."X_97" > 0.177799)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_85" <= 0.879343) AND (t."X_95" > 1.006381) AND (t."X_99" <= -0.739306)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_85" <= 0.879343) AND (t."X_95" > 1.006381) AND (t."X_99" > -0.739306) AND (t."X_68" <= -0.541402)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_85" <= 0.879343) AND (t."X_95" <= 1.006381) AND (t."X_22" > 1.135861) AND (t."X_90" <= -1.073101)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_85" <= 0.879343) AND (t."X_95" <= 1.006381) AND (t."X_22" > 1.135861) AND (t."X_90" > -1.073101) AND (t."X_52" <= -0.070624)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_85" <= 0.879343) AND (t."X_95" <= 1.006381) AND (t."X_22" > 1.135861) AND (t."X_90" > -1.073101) AND (t."X_52" > -0.070624)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_85" <= 0.879343) AND (t."X_95" <= 1.006381) AND (t."X_22" <= 1.135861) AND (t."X_83" <= 0.207117) AND (t."X_94" <= -0.836012) AND (t."X_98" <= 0.326203)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_85" <= 0.879343) AND (t."X_95" <= 1.006381) AND (t."X_22" <= 1.135861) AND (t."X_83" <= 0.207117) AND (t."X_94" <= -0.836012) AND (t."X_98" > 0.326203)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_85" <= 0.879343) AND (t."X_95" <= 1.006381) AND (t."X_22" <= 1.135861) AND (t."X_83" <= 0.207117) AND (t."X_94" > -0.836012) AND (t."X_52" <= -0.894719)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_85" <= 0.879343) AND (t."X_95" <= 1.006381) AND (t."X_22" <= 1.135861) AND (t."X_83" <= 0.207117) AND (t."X_94" > -0.836012) AND (t."X_52" > -0.894719)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_85" <= 0.879343) AND (t."X_95" <= 1.006381) AND (t."X_22" <= 1.135861) AND (t."X_83" > 0.207117) AND (t."X_68" > 1.827250)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_85" <= 0.879343) AND (t."X_95" <= 1.006381) AND (t."X_22" <= 1.135861) AND (t."X_83" > 0.207117) AND (t."X_68" <= 1.827250) AND (t."X_90" <= 0.999446)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_85" <= 0.879343) AND (t."X_95" <= 1.006381) AND (t."X_22" <= 1.135861) AND (t."X_83" > 0.207117) AND (t."X_68" <= 1.827250) AND (t."X_90" > 0.999446)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_85" > 0.879343) AND (t."X_52" <= -0.426319) AND (t."X_97" <= 0.874251)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_85" > 0.879343) AND (t."X_52" <= -0.426319) AND (t."X_97" > 0.874251)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_85" <= 0.879343) AND (t."X_95" > 1.006381) AND (t."X_99" > -0.739306) AND (t."X_68" > -0.541402) AND (t."X_97" <= -0.580311)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_85" <= 0.879343) AND (t."X_95" > 1.006381) AND (t."X_99" > -0.739306) AND (t."X_68" > -0.541402) AND (t."X_97" > -0.580311)) THEN 40 ELSE NULL END AS "Leaf_40"
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
    SELECT 0 AS nid,  0.453125 AS "P_0", 0.546875 AS "P_1", 1 AS "D", 0.546875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.503667 AS "P_0", 0.496333 AS "P_1", 0 AS "D", 0.503667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.252427 AS "P_0", 0.747573 AS "P_1", 1 AS "D", 0.747573 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.048780 AS "P_0", 0.951219 AS "P_1", 1 AS "D", 0.951219 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.387097 AS "P_0", 0.612903 AS "P_1", 1 AS "D", 0.612903 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.611111 AS "P_0", 0.388889 AS "P_1", 0 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.455331 AS "P_0", 0.544669 AS "P_1", 1 AS "D", 0.544669 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.774194 AS "P_0", 0.225806 AS "P_1", 0 AS "D", 0.774194 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.473684 AS "P_0", 0.526316 AS "P_1", 1 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.906977 AS "P_0", 0.093023 AS "P_1", 0 AS "D", 0.906977 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.969697 AS "P_0", 0.030303 AS "P_1", 0 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.415842 AS "P_0", 0.584158 AS "P_1", 1 AS "D", 0.584158 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.357143 AS "P_0", 0.642857 AS "P_1", 1 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.325444 AS "P_0", 0.674556 AS "P_1", 1 AS "D", 0.674556 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.529851 AS "P_0", 0.470149 AS "P_1", 0 AS "D", 0.529851 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.590909 AS "P_0", 0.409091 AS "P_1", 0 AS "D", 0.590909 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.232000 AS "P_0", 0.768000 AS "P_1", 1 AS "D", 0.768000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.482759 AS "P_0", 0.517241 AS "P_1", 1 AS "D", 0.517241 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.156250 AS "P_0", 0.843750 AS "P_1", 1 AS "D", 0.843750 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.564516 AS "P_0", 0.435484 AS "P_1", 0 AS "D", 0.564516 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.640777 AS "P_0", 0.359223 AS "P_1", 0 AS "D", 0.640777 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.190476 AS "P_0", 0.809524 AS "P_1", 1 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_29", t1."Leaf_30", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_40", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_54" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_78" <= -0.292736) AND (t."X_97" <= 0.019510) AND (t."X_94" > 0.989270)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_78" <= -0.292736) AND (t."X_97" <= 0.019510) AND (t."X_94" <= 0.989270) AND (t."X_94" > 0.407860)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_78" <= -0.292736) AND (t."X_97" <= 0.019510) AND (t."X_94" <= 0.989270) AND (t."X_94" <= 0.407860) AND (t."X_8" <= 0.110731) AND (t."X_97" <= -0.412223)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_78" <= -0.292736) AND (t."X_97" <= 0.019510) AND (t."X_94" <= 0.989270) AND (t."X_94" <= 0.407860) AND (t."X_8" <= 0.110731) AND (t."X_97" > -0.412223)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_78" <= -0.292736) AND (t."X_97" > 0.019510) AND (t."X_78" > -0.563072) AND (t."X_50" <= -0.235182)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_78" <= -0.292736) AND (t."X_97" > 0.019510) AND (t."X_78" > -0.563072) AND (t."X_50" > -0.235182)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_78" <= -0.292736) AND (t."X_97" > 0.019510) AND (t."X_78" <= -0.563072) AND (t."X_25" <= -0.929848)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_78" <= -0.292736) AND (t."X_97" > 0.019510) AND (t."X_78" <= -0.563072) AND (t."X_25" > -0.929848) AND (t."X_94" > -0.184199)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_78" <= -0.292736) AND (t."X_97" > 0.019510) AND (t."X_78" <= -0.563072) AND (t."X_25" > -0.929848) AND (t."X_94" <= -0.184199) AND (t."X_8" <= -0.689176)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_78" <= -0.292736) AND (t."X_97" > 0.019510) AND (t."X_78" <= -0.563072) AND (t."X_25" > -0.929848) AND (t."X_94" <= -0.184199) AND (t."X_8" > -0.689176)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_78" <= -0.292736) AND (t."X_97" <= 0.019510) AND (t."X_94" <= 0.989270) AND (t."X_94" <= 0.407860) AND (t."X_8" > 0.110731) AND (t."X_8" <= 1.127604)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_78" <= -0.292736) AND (t."X_97" <= 0.019510) AND (t."X_94" <= 0.989270) AND (t."X_94" <= 0.407860) AND (t."X_8" > 0.110731) AND (t."X_8" > 1.127604)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_78" > -0.292736) AND (t."X_89" > 0.305265) AND (t."X_94" > 0.698291) AND (t."X_92" <= 1.054806)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_78" > -0.292736) AND (t."X_89" > 0.305265) AND (t."X_94" > 0.698291) AND (t."X_92" > 1.054806)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_78" > -0.292736) AND (t."X_89" <= 0.305265) AND (t."X_97" <= -0.022399) AND (t."X_93" <= -0.477980) AND (t."X_25" <= -0.017420)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_78" > -0.292736) AND (t."X_89" <= 0.305265) AND (t."X_97" <= -0.022399) AND (t."X_93" <= -0.477980) AND (t."X_25" > -0.017420)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_78" > -0.292736) AND (t."X_89" <= 0.305265) AND (t."X_97" <= -0.022399) AND (t."X_93" > -0.477980) AND (t."X_8" <= -0.592396)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_78" > -0.292736) AND (t."X_89" <= 0.305265) AND (t."X_97" > -0.022399) AND (t."X_81" > 1.175188)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_78" > -0.292736) AND (t."X_89" <= 0.305265) AND (t."X_97" > -0.022399) AND (t."X_81" <= 1.175188) AND (t."X_92" > 0.601900) AND (t."X_89" <= -0.244781)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_78" > -0.292736) AND (t."X_89" <= 0.305265) AND (t."X_97" > -0.022399) AND (t."X_81" <= 1.175188) AND (t."X_92" > 0.601900) AND (t."X_89" > -0.244781)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_78" > -0.292736) AND (t."X_89" <= 0.305265) AND (t."X_97" > -0.022399) AND (t."X_81" <= 1.175188) AND (t."X_92" <= 0.601900) AND (t."X_94" <= 0.391435)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_78" > -0.292736) AND (t."X_89" <= 0.305265) AND (t."X_97" > -0.022399) AND (t."X_81" <= 1.175188) AND (t."X_92" <= 0.601900) AND (t."X_94" > 0.391435)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_78" > -0.292736) AND (t."X_89" <= 0.305265) AND (t."X_97" <= -0.022399) AND (t."X_93" > -0.477980) AND (t."X_8" > -0.592396) AND (t."X_93" <= 0.693979)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_78" > -0.292736) AND (t."X_89" <= 0.305265) AND (t."X_97" <= -0.022399) AND (t."X_93" > -0.477980) AND (t."X_8" > -0.592396) AND (t."X_93" > 0.693979)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_78" > -0.292736) AND (t."X_89" > 0.305265) AND (t."X_94" <= 0.698291) AND (t."X_95" <= -0.219918) AND (t."X_95" <= -1.195741)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_78" > -0.292736) AND (t."X_89" > 0.305265) AND (t."X_94" <= 0.698291) AND (t."X_95" <= -0.219918) AND (t."X_95" > -1.195741)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_78" > -0.292736) AND (t."X_89" > 0.305265) AND (t."X_94" <= 0.698291) AND (t."X_95" > -0.219918) AND (t."X_15" <= 0.221063)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_78" > -0.292736) AND (t."X_89" > 0.305265) AND (t."X_94" <= 0.698291) AND (t."X_95" > -0.219918) AND (t."X_15" > 0.221063)) THEN 54 ELSE NULL END AS "Leaf_54"
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
    SELECT 0 AS nid,  0.501953 AS "P_0", 0.498047 AS "P_1", 0 AS "D", 0.501953 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.376884 AS "P_0", 0.623116 AS "P_1", 1 AS "D", 0.623116 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.581470 AS "P_0", 0.418530 AS "P_1", 0 AS "D", 0.581470 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.245614 AS "P_0", 0.754386 AS "P_1", 1 AS "D", 0.754386 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.552941 AS "P_0", 0.447059 AS "P_1", 0 AS "D", 0.552941 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.350000 AS "P_0", 0.650000 AS "P_1", 1 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.480000 AS "P_0", 0.520000 AS "P_1", 1 AS "D", 0.520000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.102564 AS "P_0", 0.897436 AS "P_1", 1 AS "D", 0.897436 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.655172 AS "P_0", 0.344828 AS "P_1", 0 AS "D", 0.655172 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.562500 AS "P_0", 0.437500 AS "P_1", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.892857 AS "P_0", 0.107143 AS "P_1", 0 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.588235 AS "P_0", 0.411765 AS "P_1", 0 AS "D", 0.588235 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.034483 AS "P_0", 0.965517 AS "P_1", 1 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.510101 AS "P_0", 0.489899 AS "P_1", 0 AS "D", 0.510101 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.704348 AS "P_0", 0.295652 AS "P_1", 0 AS "D", 0.704348 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.804598 AS "P_0", 0.195402 AS "P_1", 0 AS "D", 0.804598 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.392857 AS "P_0", 0.607143 AS "P_1", 1 AS "D", 0.607143 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.647059 AS "P_0", 0.352941 AS "P_1", 0 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.662921 AS "P_0", 0.337079 AS "P_1", 0 AS "D", 0.662921 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.385321 AS "P_0", 0.614679 AS "P_1", 1 AS "D", 0.614679 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.419355 AS "P_0", 0.580645 AS "P_1", 1 AS "D", 0.580645 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.793103 AS "P_0", 0.206897 AS "P_1", 0 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.733333 AS "P_0", 0.266667 AS "P_1", 0 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.904762 AS "P_0", 0.095238 AS "P_1", 0 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.318681 AS "P_0", 0.681319 AS "P_1", 1 AS "D", 0.681319 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.722222 AS "P_0", 0.277778 AS "P_1", 0 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.203125 AS "P_0", 0.796875 AS "P_1", 1 AS "D", 0.796875 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.592593 AS "P_0", 0.407407 AS "P_1", 0 AS "D", 0.592593 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.411765 AS "P_0", 0.588235 AS "P_1", 1 AS "D", 0.588235 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.122449 AS "P_0", 0.877551 AS "P_1", 1 AS "D", 0.877551 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.466667 AS "P_0", 0.533333 AS "P_1", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.692308 AS "P_0", 0.307692 AS "P_1", 0 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.648649 AS "P_0", 0.351351 AS "P_1", 0 AS "D", 0.648649 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.920000 AS "P_0", 0.080000 AS "P_1", 0 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.315789 AS "P_0", 0.684211 AS "P_1", 1 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_21", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_67" <= 1.109089) AND (t."X_95" > 0.379531) AND (t."X_67" > 0.897331) AND (t."X_37" <= 0.397731)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_67" <= 1.109089) AND (t."X_95" > 0.379531) AND (t."X_67" > 0.897331) AND (t."X_37" > 0.397731)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_67" <= 1.109089) AND (t."X_95" > 0.379531) AND (t."X_67" <= 0.897331) AND (t."X_97" <= 0.428186) AND (t."X_97" <= -1.125875)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_67" <= 1.109089) AND (t."X_95" > 0.379531) AND (t."X_67" <= 0.897331) AND (t."X_97" <= 0.428186) AND (t."X_97" > -1.125875) AND (t."X_98" <= -0.233070)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_67" <= 1.109089) AND (t."X_95" > 0.379531) AND (t."X_67" <= 0.897331) AND (t."X_97" <= 0.428186) AND (t."X_97" > -1.125875) AND (t."X_98" > -0.233070)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_67" <= 1.109089) AND (t."X_95" > 0.379531) AND (t."X_67" <= 0.897331) AND (t."X_97" > 0.428186) AND (t."X_37" <= -1.446185)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_67" <= 1.109089) AND (t."X_95" > 0.379531) AND (t."X_67" <= 0.897331) AND (t."X_97" > 0.428186) AND (t."X_37" > -1.446185)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_67" <= 1.109089) AND (t."X_95" <= 0.379531) AND (t."X_91" <= -1.986306)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_67" <= 1.109089) AND (t."X_95" <= 0.379531) AND (t."X_91" > -1.986306) AND (t."X_67" > 0.903477) AND (t."X_18" <= -0.622958)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_67" <= 1.109089) AND (t."X_95" <= 0.379531) AND (t."X_91" > -1.986306) AND (t."X_67" <= 0.903477) AND (t."X_99" <= 1.057723) AND (t."X_67" <= 0.066815)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_67" <= 1.109089) AND (t."X_95" <= 0.379531) AND (t."X_91" > -1.986306) AND (t."X_67" <= 0.903477) AND (t."X_99" <= 1.057723) AND (t."X_67" > 0.066815)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_67" <= 1.109089) AND (t."X_95" <= 0.379531) AND (t."X_91" > -1.986306) AND (t."X_67" <= 0.903477) AND (t."X_99" > 1.057723) AND (t."X_98" <= 0.135194)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_67" <= 1.109089) AND (t."X_95" <= 0.379531) AND (t."X_91" > -1.986306) AND (t."X_67" <= 0.903477) AND (t."X_99" > 1.057723) AND (t."X_98" > 0.135194)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_67" <= 1.109089) AND (t."X_95" <= 0.379531) AND (t."X_91" > -1.986306) AND (t."X_67" > 0.903477) AND (t."X_18" > -0.622958) AND (t."X_91" <= -1.107529)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_67" <= 1.109089) AND (t."X_95" <= 0.379531) AND (t."X_91" > -1.986306) AND (t."X_67" > 0.903477) AND (t."X_18" > -0.622958) AND (t."X_91" > -1.107529)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_67" > 1.109089) AND (t."X_67" <= 1.348363)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_67" > 1.109089) AND (t."X_67" > 1.348363)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.513672 AS "P_0", 0.486328 AS "P_1", 0 AS "D", 0.513672 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.475687 AS "P_0", 0.524313 AS "P_1", 1 AS "D", 0.524313 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.974359 AS "P_0", 0.025641 AS "P_1", 0 AS "D", 0.974359 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.405063 AS "P_0", 0.594937 AS "P_1", 1 AS "D", 0.594937 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.617834 AS "P_0", 0.382166 AS "P_1", 0 AS "D", 0.617834 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.722222 AS "P_0", 0.277778 AS "P_1", 0 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.193548 AS "P_0", 0.806452 AS "P_1", 1 AS "D", 0.806452 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.627907 AS "P_0", 0.372093 AS "P_1", 0 AS "D", 0.627907 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.925000 AS "P_0", 0.075000 AS "P_1", 0 AS "D", 0.925000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.536232 AS "P_0", 0.463768 AS "P_1", 0 AS "D", 0.536232 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.722222 AS "P_0", 0.277778 AS "P_1", 0 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.430976 AS "P_0", 0.569024 AS "P_1", 1 AS "D", 0.569024 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.536232 AS "P_0", 0.463768 AS "P_1", 0 AS "D", 0.536232 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.188889 AS "P_0", 0.811111 AS "P_1", 1 AS "D", 0.811111 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.578947 AS "P_0", 0.421053 AS "P_1", 0 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.084507 AS "P_0", 0.915493 AS "P_1", 1 AS "D", 0.915493 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.494624 AS "P_0", 0.505376 AS "P_1", 1 AS "D", 0.505376 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.904762 AS "P_0", 0.095238 AS "P_1", 0 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.404110 AS "P_0", 0.595890 AS "P_1", 1 AS "D", 0.595890 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.825000 AS "P_0", 0.175000 AS "P_1", 0 AS "D", 0.825000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.049180 AS "P_0", 0.950820 AS "P_1", 1 AS "D", 0.950820 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_57" > 0.891162) AND (t."X_49" > 1.013062)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_57" > 0.891162) AND (t."X_49" <= 1.013062) AND (t."X_91" > 0.641985) AND (t."X_99" <= -0.802387)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_57" > 0.891162) AND (t."X_49" <= 1.013062) AND (t."X_91" > 0.641985) AND (t."X_99" > -0.802387)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_57" > 0.891162) AND (t."X_49" <= 1.013062) AND (t."X_91" <= 0.641985) AND (t."X_57" > 1.657709)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_57" <= 0.891162) AND (t."X_95" > 1.736027) AND (t."X_47" <= 0.485071)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_57" <= 0.891162) AND (t."X_95" > 1.736027) AND (t."X_47" > 0.485071)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_57" <= 0.891162) AND (t."X_95" <= 1.736027) AND (t."X_98" > 1.343142) AND (t."X_19" > 0.302014)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_57" <= 0.891162) AND (t."X_95" <= 1.736027) AND (t."X_98" > 1.343142) AND (t."X_19" <= 0.302014) AND (t."X_95" <= 0.242827)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_57" <= 0.891162) AND (t."X_95" <= 1.736027) AND (t."X_98" > 1.343142) AND (t."X_19" <= 0.302014) AND (t."X_95" > 0.242827)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_57" <= 0.891162) AND (t."X_95" <= 1.736027) AND (t."X_98" <= 1.343142) AND (t."X_91" > 1.679184)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_57" <= 0.891162) AND (t."X_95" <= 1.736027) AND (t."X_98" <= 1.343142) AND (t."X_91" <= 1.679184) AND (t."X_8" > 0.064805) AND (t."X_91" <= -1.070592)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_57" <= 0.891162) AND (t."X_95" <= 1.736027) AND (t."X_98" <= 1.343142) AND (t."X_91" <= 1.679184) AND (t."X_8" > 0.064805) AND (t."X_91" > -1.070592)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_57" <= 0.891162) AND (t."X_95" <= 1.736027) AND (t."X_98" <= 1.343142) AND (t."X_91" <= 1.679184) AND (t."X_8" <= 0.064805) AND (t."X_93" <= 0.394350)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_57" <= 0.891162) AND (t."X_95" <= 1.736027) AND (t."X_98" <= 1.343142) AND (t."X_91" <= 1.679184) AND (t."X_8" <= 0.064805) AND (t."X_93" > 0.394350)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_57" > 0.891162) AND (t."X_49" <= 1.013062) AND (t."X_91" <= 0.641985) AND (t."X_57" <= 1.657709) AND (t."X_11" <= 0.580452)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_57" > 0.891162) AND (t."X_49" <= 1.013062) AND (t."X_91" <= 0.641985) AND (t."X_57" <= 1.657709) AND (t."X_11" > 0.580452)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.460808 AS "P_0", 0.539192 AS "P_1", 1 AS "D", 0.539192 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.681319 AS "P_0", 0.318681 AS "P_1", 0 AS "D", 0.681319 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.737500 AS "P_0", 0.262500 AS "P_1", 0 AS "D", 0.737500 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.850000 AS "P_0", 0.150000 AS "P_1", 0 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.975610 AS "P_0", 0.024390 AS "P_1", 0 AS "D", 0.975610 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.578947 AS "P_0", 0.421053 AS "P_1", 0 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.432225 AS "P_0", 0.567775 AS "P_1", 1 AS "D", 0.567775 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.408333 AS "P_0", 0.591667 AS "P_1", 1 AS "D", 0.591667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.709677 AS "P_0", 0.290323 AS "P_1", 0 AS "D", 0.709677 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.423977 AS "P_0", 0.576023 AS "P_1", 1 AS "D", 0.576023 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.514852 AS "P_0", 0.485149 AS "P_1", 0 AS "D", 0.514852 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.292857 AS "P_0", 0.707143 AS "P_1", 1 AS "D", 0.707143 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.551724 AS "P_0", 0.448276 AS "P_1", 0 AS "D", 0.551724 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.225225 AS "P_0", 0.774775 AS "P_1", 1 AS "D", 0.774775 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.424242 AS "P_0", 0.575758 AS "P_1", 1 AS "D", 0.575758 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.685714 AS "P_0", 0.314286 AS "P_1", 0 AS "D", 0.685714 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_92" > 1.165721) AND (t."X_72" > 0.468018)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_92" > 1.165721) AND (t."X_72" <= 0.468018) AND (t."X_99" <= -0.810666)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_92" > 1.165721) AND (t."X_72" <= 0.468018) AND (t."X_99" > -0.810666) AND (t."X_28" <= -0.591138)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_92" > 1.165721) AND (t."X_72" <= 0.468018) AND (t."X_99" > -0.810666) AND (t."X_28" > -0.591138) AND (t."X_94" <= 0.498730)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_92" > 1.165721) AND (t."X_72" <= 0.468018) AND (t."X_99" > -0.810666) AND (t."X_28" > -0.591138) AND (t."X_94" > 0.498730)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" > 1.793433) AND (t."X_95" <= 0.231163)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" > 1.793433) AND (t."X_95" > 0.231163)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" <= 1.793433) AND (t."X_63" > 0.279385) AND (t."X_94" > -0.383827) AND (t."X_98" <= 0.941522) AND (t."X_82" <= 0.782738)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" <= 1.793433) AND (t."X_63" > 0.279385) AND (t."X_94" > -0.383827) AND (t."X_98" <= 0.941522) AND (t."X_82" > 0.782738)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" <= 1.793433) AND (t."X_63" > 0.279385) AND (t."X_94" <= -0.383827) AND (t."X_88" > -0.345841) AND (t."X_98" <= 0.599632)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" <= 1.793433) AND (t."X_63" > 0.279385) AND (t."X_94" <= -0.383827) AND (t."X_88" > -0.345841) AND (t."X_98" > 0.599632)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" <= 1.793433) AND (t."X_63" <= 0.279385) AND (t."X_63" <= -0.723192) AND (t."X_41" > 0.975097)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" <= 1.793433) AND (t."X_63" <= 0.279385) AND (t."X_63" <= -0.723192) AND (t."X_41" <= 0.975097) AND (t."X_72" <= -0.774859)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" <= 1.793433) AND (t."X_63" <= 0.279385) AND (t."X_63" <= -0.723192) AND (t."X_41" <= 0.975097) AND (t."X_72" > -0.774859)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" <= 1.793433) AND (t."X_63" <= 0.279385) AND (t."X_63" > -0.723192) AND (t."X_90" <= 0.163610) AND (t."X_91" <= 0.545081)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" <= 1.793433) AND (t."X_63" <= 0.279385) AND (t."X_63" > -0.723192) AND (t."X_90" <= 0.163610) AND (t."X_91" > 0.545081)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" <= 1.793433) AND (t."X_63" <= 0.279385) AND (t."X_63" > -0.723192) AND (t."X_90" > 0.163610) AND (t."X_92" <= -0.897077)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" <= 1.793433) AND (t."X_63" <= 0.279385) AND (t."X_63" > -0.723192) AND (t."X_90" > 0.163610) AND (t."X_92" > -0.897077)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" <= 1.793433) AND (t."X_63" > 0.279385) AND (t."X_94" > -0.383827) AND (t."X_98" > 0.941522) AND (t."X_93" <= 0.400623)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" <= 1.793433) AND (t."X_63" > 0.279385) AND (t."X_94" > -0.383827) AND (t."X_98" > 0.941522) AND (t."X_93" > 0.400623)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" <= 1.793433) AND (t."X_63" > 0.279385) AND (t."X_94" <= -0.383827) AND (t."X_88" <= -0.345841) AND (t."X_95" <= 0.662027)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_92" <= 1.165721) AND (t."X_91" <= 1.793433) AND (t."X_63" > 0.279385) AND (t."X_94" <= -0.383827) AND (t."X_88" <= -0.345841) AND (t."X_95" > 0.662027)) THEN 42 ELSE NULL END AS "Leaf_42"
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
    SELECT 0 AS nid,  0.464844 AS "P_0", 0.535156 AS "P_1", 1 AS "D", 0.535156 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.501129 AS "P_0", 0.498871 AS "P_1", 0 AS "D", 0.501129 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.231884 AS "P_0", 0.768116 AS "P_1", 1 AS "D", 0.768116 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.320000 AS "P_0", 0.680000 AS "P_1", 1 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.421053 AS "P_0", 0.578947 AS "P_1", 1 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.523923 AS "P_0", 0.476077 AS "P_1", 0 AS "D", 0.523923 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.120000 AS "P_0", 0.880000 AS "P_1", 1 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.594488 AS "P_0", 0.405512 AS "P_1", 0 AS "D", 0.594488 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.414634 AS "P_0", 0.585366 AS "P_1", 1 AS "D", 0.585366 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.237288 AS "P_0", 0.762712 AS "P_1", 1 AS "D", 0.762712 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.514286 AS "P_0", 0.485714 AS "P_1", 0 AS "D", 0.514286 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.423529 AS "P_0", 0.576471 AS "P_1", 1 AS "D", 0.576471 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.352113 AS "P_0", 0.647887 AS "P_1", 1 AS "D", 0.647887 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.074074 AS "P_0", 0.925926 AS "P_1", 1 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.440476 AS "P_0", 0.559524 AS "P_1", 1 AS "D", 0.559524 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.670588 AS "P_0", 0.329412 AS "P_1", 0 AS "D", 0.670588 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.521127 AS "P_0", 0.478873 AS "P_1", 0 AS "D", 0.521127 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.433333 AS "P_0", 0.566667 AS "P_1", 1 AS "D", 0.566667 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.552083 AS "P_0", 0.447917 AS "P_1", 0 AS "D", 0.552083 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.824324 AS "P_0", 0.175676 AS "P_1", 0 AS "D", 0.824324 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.533333 AS "P_0", 0.466667 AS "P_1", 0 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.898305 AS "P_0", 0.101695 AS "P_1", 0 AS "D", 0.898305 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
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
    GREATEST( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1" ) AS "Max_Score"
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