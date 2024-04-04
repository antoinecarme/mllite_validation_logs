WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_85" <= -1.277665) AND (t."X_99" <= -1.381750)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_85" <= -1.277665) AND (t."X_99" > -1.381750)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_85" > -1.277665) AND (t."X_52" <= -1.436350)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_85" > -1.277665) AND (t."X_52" > -1.436350) AND (t."X_31" > 0.069729) AND (t."X_94" > -0.475768) AND (t."X_92" <= -0.830954)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_85" > -1.277665) AND (t."X_52" > -1.436350) AND (t."X_31" > 0.069729) AND (t."X_94" > -0.475768) AND (t."X_92" > -0.830954)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_85" > -1.277665) AND (t."X_52" > -1.436350) AND (t."X_31" > 0.069729) AND (t."X_94" <= -0.475768) AND (t."X_52" <= -0.325375)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_85" > -1.277665) AND (t."X_52" > -1.436350) AND (t."X_31" > 0.069729) AND (t."X_94" <= -0.475768) AND (t."X_52" > -0.325375)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_85" > -1.277665) AND (t."X_52" > -1.436350) AND (t."X_31" <= 0.069729) AND (t."X_93" > 0.651038)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_85" > -1.277665) AND (t."X_52" > -1.436350) AND (t."X_31" <= 0.069729) AND (t."X_93" <= 0.651038) AND (t."X_91" > 0.564824)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_85" > -1.277665) AND (t."X_52" > -1.436350) AND (t."X_31" <= 0.069729) AND (t."X_93" <= 0.651038) AND (t."X_91" <= 0.564824) AND (t."X_92" > 0.123219) AND (t."X_99" <= -0.806878)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_85" > -1.277665) AND (t."X_52" > -1.436350) AND (t."X_31" <= 0.069729) AND (t."X_93" <= 0.651038) AND (t."X_91" <= 0.564824) AND (t."X_92" > 0.123219) AND (t."X_99" > -0.806878)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_85" > -1.277665) AND (t."X_52" > -1.436350) AND (t."X_31" <= 0.069729) AND (t."X_93" <= 0.651038) AND (t."X_91" <= 0.564824) AND (t."X_92" <= 0.123219) AND (t."X_85" <= -0.976292)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_85" > -1.277665) AND (t."X_52" > -1.436350) AND (t."X_31" <= 0.069729) AND (t."X_93" <= 0.651038) AND (t."X_91" <= 0.564824) AND (t."X_92" <= 0.123219) AND (t."X_85" > -0.976292)) THEN 24 ELSE NULL END AS "Leaf_24"
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
    SELECT 0 AS nid,  0.234375 AS "P_0", 0.109375 AS "P_1", 0.328125 AS "P_2", 0.328125 AS "P_3", 2 AS "D", 0.328125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.090909 AS "P_1", 0.000000 AS "P_2", 0.909091 AS "P_3", 3 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.283019 AS "P_0", 0.113208 AS "P_1", 0.396226 AS "P_2", 0.207547 AS "P_3", 2 AS "D", 0.396226 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.173913 AS "P_0", 0.130435 AS "P_1", 0.456522 AS "P_2", 0.239130 AS "P_3", 2 AS "D", 0.456522 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.033333 AS "P_1", 0.600000 AS "P_2", 0.366667 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.500000 AS "P_0", 0.312500 AS "P_1", 0.187500 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.833333 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.038462 AS "P_1", 0.692308 AS "P_2", 0.269231 AS "P_3", 2 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.043478 AS "P_1", 0.782609 AS "P_2", 0.173913 AS "P_3", 2 AS "D", 0.782609 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.055556 AS "P_1", 0.944444 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_30", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" <= -0.893971) AND (t."X_95" <= -0.092213)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_8" <= -0.893971) AND (t."X_95" > -0.092213)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" <= -0.455485) AND (t."X_98" <= -0.593839) AND (t."X_99" <= -1.134323)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" <= -0.455485) AND (t."X_98" <= -0.593839) AND (t."X_99" > -1.134323)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" <= -0.455485) AND (t."X_98" > -0.593839) AND (t."X_81" > 0.577142) AND (t."X_78" <= 0.548237)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" <= -0.455485) AND (t."X_98" > -0.593839) AND (t."X_81" > 0.577142) AND (t."X_78" > 0.548237)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" <= -0.455485) AND (t."X_98" > -0.593839) AND (t."X_81" <= 0.577142) AND (t."X_97" <= 2.012260)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" <= -0.455485) AND (t."X_98" > -0.593839) AND (t."X_81" <= 0.577142) AND (t."X_97" > 2.012260)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" > -0.455485) AND (t."X_92" <= -1.061060) AND (t."X_98" <= 1.027312)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" > -0.455485) AND (t."X_92" <= -1.061060) AND (t."X_98" > 1.027312)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" > -0.455485) AND (t."X_92" > -1.061060) AND (t."X_52" <= -0.766895) AND (t."X_99" <= 0.950564)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" > -0.455485) AND (t."X_92" > -1.061060) AND (t."X_52" <= -0.766895) AND (t."X_99" > 0.950564) AND (t."X_99" <= 1.136587)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" > -0.455485) AND (t."X_92" > -1.061060) AND (t."X_52" <= -0.766895) AND (t."X_99" > 0.950564) AND (t."X_99" > 1.136587)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" > -0.455485) AND (t."X_92" > -1.061060) AND (t."X_52" > -0.766895) AND (t."X_50" <= -0.794653)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" > -0.455485) AND (t."X_92" > -1.061060) AND (t."X_52" > -0.766895) AND (t."X_50" > -0.794653) AND (t."X_78" > 1.071931)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" > -0.455485) AND (t."X_92" > -1.061060) AND (t."X_52" > -0.766895) AND (t."X_50" > -0.794653) AND (t."X_78" <= 1.071931) AND (t."X_94" > 1.520436)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" > -0.455485) AND (t."X_92" > -1.061060) AND (t."X_52" > -0.766895) AND (t."X_50" > -0.794653) AND (t."X_78" <= 1.071931) AND (t."X_94" <= 1.520436) AND (t."X_78" > -0.810372)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" > -0.455485) AND (t."X_92" > -1.061060) AND (t."X_52" > -0.766895) AND (t."X_50" > -0.794653) AND (t."X_78" <= 1.071931) AND (t."X_94" <= 1.520436) AND (t."X_78" <= -0.810372) AND (t."X_99" <= 0.580761)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_8" > -0.893971) AND (t."X_89" > -0.455485) AND (t."X_92" > -1.061060) AND (t."X_52" > -0.766895) AND (t."X_50" > -0.794653) AND (t."X_78" <= 1.071931) AND (t."X_94" <= 1.520436) AND (t."X_78" <= -0.810372) AND (t."X_99" > 0.580761)) THEN 36 ELSE NULL END AS "Leaf_36"
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
    SELECT 0 AS nid,  0.265625 AS "P_0", 0.234375 AS "P_1", 0.234375 AS "P_2", 0.265625 AS "P_3", 0 AS "D", 0.265625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.533333 AS "P_1", 0.466667 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.346939 AS "P_0", 0.142857 AS "P_1", 0.163265 AS "P_2", 0.346939 AS "P_3", 0 AS "D", 0.346939 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.105263 AS "P_0", 0.105263 AS "P_1", 0.157895 AS "P_2", 0.631579 AS "P_3", 3 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.500000 AS "P_0", 0.166667 AS "P_1", 0.166667 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.133333 AS "P_0", 0.066667 AS "P_1", 0.000000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.076923 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.923077 AS "P_3", 3 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.600000 AS "P_0", 0.200000 AS "P_1", 0.160000 AS "P_2", 0.040000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.166667 AS "P_0", 0.500000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.736842 AS "P_0", 0.105263 AS "P_1", 0.105263 AS "P_2", 0.052632 AS "P_3", 0 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.823529 AS "P_0", 0.117647 AS "P_1", 0.000000 AS "P_2", 0.058824 AS "P_3", 0 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.875000 AS "P_0", 0.062500 AS "P_1", 0.000000 AS "P_2", 0.062500 AS "P_3", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.933333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.066667 AS "P_3", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_30" > 0.520866) AND (t."X_37" <= 0.159353) AND (t."X_95" <= 0.212106)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_30" > 0.520866) AND (t."X_37" <= 0.159353) AND (t."X_95" > 0.212106) AND (t."X_96" <= 0.269129)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_30" > 0.520866) AND (t."X_37" <= 0.159353) AND (t."X_95" > 0.212106) AND (t."X_96" > 0.269129)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_30" > 0.520866) AND (t."X_37" > 0.159353) AND (t."X_18" <= -0.657585)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_30" > 0.520866) AND (t."X_37" > 0.159353) AND (t."X_18" > -0.657585)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_30" <= 0.520866) AND (t."X_99" > 1.077462) AND (t."X_91" <= -1.885747)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_30" <= 0.520866) AND (t."X_99" > 1.077462) AND (t."X_91" > -1.885747)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_30" <= 0.520866) AND (t."X_99" <= 1.077462) AND (t."X_18" <= -0.568102) AND (t."X_53" > 0.353351)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_30" <= 0.520866) AND (t."X_99" <= 1.077462) AND (t."X_18" <= -0.568102) AND (t."X_53" <= 0.353351) AND (t."X_75" <= -0.486578)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_30" <= 0.520866) AND (t."X_99" <= 1.077462) AND (t."X_18" <= -0.568102) AND (t."X_53" <= 0.353351) AND (t."X_75" > -0.486578)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_30" <= 0.520866) AND (t."X_99" <= 1.077462) AND (t."X_18" > -0.568102) AND (t."X_97" > 0.102187) AND (t."X_74" <= -1.078201)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_30" <= 0.520866) AND (t."X_99" <= 1.077462) AND (t."X_18" > -0.568102) AND (t."X_97" > 0.102187) AND (t."X_74" > -1.078201) AND (t."X_99" <= 0.076673)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_30" <= 0.520866) AND (t."X_99" <= 1.077462) AND (t."X_18" > -0.568102) AND (t."X_97" > 0.102187) AND (t."X_74" > -1.078201) AND (t."X_99" > 0.076673)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_30" <= 0.520866) AND (t."X_99" <= 1.077462) AND (t."X_18" > -0.568102) AND (t."X_97" <= 0.102187) AND (t."X_97" <= -1.542257)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_30" <= 0.520866) AND (t."X_99" <= 1.077462) AND (t."X_18" > -0.568102) AND (t."X_97" <= 0.102187) AND (t."X_97" > -1.542257)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.234375 AS "P_0", 0.156250 AS "P_1", 0.343750 AS "P_2", 0.265625 AS "P_3", 2 AS "D", 0.343750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.104167 AS "P_0", 0.145833 AS "P_1", 0.437500 AS "P_2", 0.312500 AS "P_3", 2 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.625000 AS "P_0", 0.187500 AS "P_1", 0.062500 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.166667 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.900000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.108108 AS "P_0", 0.189189 AS "P_1", 0.297297 AS "P_2", 0.405405 AS "P_3", 3 AS "D", 0.405405 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.090909 AS "P_0", 0.000000 AS "P_1", 0.909091 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.214286 AS "P_0", 0.357143 AS "P_1", 0.428571 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.043478 AS "P_0", 0.086957 AS "P_1", 0.217391 AS "P_2", 0.652174 AS "P_3", 3 AS "D", 0.652174 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.062500 AS "P_2", 0.937500 AS "P_3", 3 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.142857 AS "P_0", 0.285714 AS "P_1", 0.571429 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_49" > -0.635530) AND (t."X_11" > 0.964090) AND (t."X_47" <= 1.369558)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_49" > -0.635530) AND (t."X_11" > 0.964090) AND (t."X_47" > 1.369558)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_49" <= -0.635530) AND (t."X_93" > 1.361518)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_49" <= -0.635530) AND (t."X_93" <= 1.361518) AND (t."X_94" <= -1.476453)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_49" <= -0.635530) AND (t."X_93" <= 1.361518) AND (t."X_94" > -1.476453) AND (t."X_33" > 0.374778)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_49" <= -0.635530) AND (t."X_93" <= 1.361518) AND (t."X_94" > -1.476453) AND (t."X_33" <= 0.374778) AND (t."X_95" > -1.036157)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_49" <= -0.635530) AND (t."X_93" <= 1.361518) AND (t."X_94" > -1.476453) AND (t."X_33" <= 0.374778) AND (t."X_95" <= -1.036157) AND (t."X_99" <= 0.311333)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_49" <= -0.635530) AND (t."X_93" <= 1.361518) AND (t."X_94" > -1.476453) AND (t."X_33" <= 0.374778) AND (t."X_95" <= -1.036157) AND (t."X_99" > 0.311333)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_49" > -0.635530) AND (t."X_11" <= 0.964090) AND (t."X_91" > 0.928456) AND (t."X_48" <= 0.370211)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_49" > -0.635530) AND (t."X_11" <= 0.964090) AND (t."X_91" > 0.928456) AND (t."X_48" > 0.370211)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_49" > -0.635530) AND (t."X_11" <= 0.964090) AND (t."X_91" <= 0.928456) AND (t."X_92" > -0.059243) AND (t."X_47" > 0.216486)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_49" > -0.635530) AND (t."X_11" <= 0.964090) AND (t."X_91" <= 0.928456) AND (t."X_92" > -0.059243) AND (t."X_47" <= 0.216486) AND (t."X_90" <= -0.596699)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_49" > -0.635530) AND (t."X_11" <= 0.964090) AND (t."X_91" <= 0.928456) AND (t."X_92" > -0.059243) AND (t."X_47" <= 0.216486) AND (t."X_90" > -0.596699)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_49" > -0.635530) AND (t."X_11" <= 0.964090) AND (t."X_91" <= 0.928456) AND (t."X_92" <= -0.059243) AND (t."X_91" <= 0.478352)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_49" > -0.635530) AND (t."X_11" <= 0.964090) AND (t."X_91" <= 0.928456) AND (t."X_92" <= -0.059243) AND (t."X_91" > 0.478352)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.296875 AS "P_0", 0.234375 AS "P_1", 0.218750 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.333333 AS "P_0", 0.111111 AS "P_1", 0.037037 AS "P_2", 0.518519 AS "P_3", 3 AS "D", 0.518519 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.270270 AS "P_0", 0.324324 AS "P_1", 0.351351 AS "P_2", 0.054054 AS "P_3", 2 AS "D", 0.351351 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.370370 AS "P_0", 0.111111 AS "P_1", 0.444444 AS "P_2", 0.074074 AS "P_3", 2 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.900000 AS "P_1", 0.100000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.181818 AS "P_0", 0.136364 AS "P_1", 0.045455 AS "P_2", 0.636364 AS "P_3", 3 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.210526 AS "P_0", 0.000000 AS "P_1", 0.052632 AS "P_2", 0.736842 AS "P_3", 3 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.571429 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.285714 AS "P_3", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.200000 AS "P_0", 0.150000 AS "P_1", 0.550000 AS "P_2", 0.100000 AS "P_3", 2 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.857143 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.818182 AS "P_2", 0.181818 AS "P_3", 2 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.444444 AS "P_0", 0.333333 AS "P_1", 0.222222 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.600000 AS "P_1", 0.400000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_71" <= -0.969881) AND (t."X_93" > -0.822316)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_71" <= -0.969881) AND (t."X_93" <= -0.822316) AND (t."X_99" <= -1.107147)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_71" <= -0.969881) AND (t."X_93" <= -0.822316) AND (t."X_99" > -1.107147)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_71" > -0.969881) AND (t."X_28" <= -0.254930) AND (t."X_82" > 1.364779)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_71" > -0.969881) AND (t."X_28" <= -0.254930) AND (t."X_82" <= 1.364779) AND (t."X_41" <= -0.579154) AND (t."X_99" <= -0.155041)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_71" > -0.969881) AND (t."X_28" <= -0.254930) AND (t."X_82" <= 1.364779) AND (t."X_41" <= -0.579154) AND (t."X_99" > -0.155041)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_71" > -0.969881) AND (t."X_28" > -0.254930) AND (t."X_97" > 0.905285)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_71" > -0.969881) AND (t."X_28" > -0.254930) AND (t."X_97" <= 0.905285) AND (t."X_71" <= 0.432144) AND (t."X_71" > -0.135650)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_71" > -0.969881) AND (t."X_28" > -0.254930) AND (t."X_97" <= 0.905285) AND (t."X_71" > 0.432144) AND (t."X_96" <= 1.489062)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_71" > -0.969881) AND (t."X_28" > -0.254930) AND (t."X_97" <= 0.905285) AND (t."X_71" > 0.432144) AND (t."X_96" > 1.489062)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_71" > -0.969881) AND (t."X_28" > -0.254930) AND (t."X_97" <= 0.905285) AND (t."X_71" <= 0.432144) AND (t."X_71" <= -0.135650) AND (t."X_71" <= -0.797902)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_71" > -0.969881) AND (t."X_28" > -0.254930) AND (t."X_97" <= 0.905285) AND (t."X_71" <= 0.432144) AND (t."X_71" <= -0.135650) AND (t."X_71" > -0.797902)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_71" > -0.969881) AND (t."X_28" <= -0.254930) AND (t."X_82" <= 1.364779) AND (t."X_41" > -0.579154) AND (t."X_72" <= 0.782614)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_71" > -0.969881) AND (t."X_28" <= -0.254930) AND (t."X_82" <= 1.364779) AND (t."X_41" > -0.579154) AND (t."X_72" > 0.782614) AND (t."X_99" <= 1.318038)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_71" > -0.969881) AND (t."X_28" <= -0.254930) AND (t."X_82" <= 1.364779) AND (t."X_41" > -0.579154) AND (t."X_72" > 0.782614) AND (t."X_99" > 1.318038)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.203125 AS "P_1", 0.312500 AS "P_2", 0.234375 AS "P_3", 2 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.090909 AS "P_1", 0.090909 AS "P_2", 0.818182 AS "P_3", 3 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.301887 AS "P_0", 0.226415 AS "P_1", 0.358491 AS "P_2", 0.113208 AS "P_3", 2 AS "D", 0.358491 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.240000 AS "P_0", 0.000000 AS "P_1", 0.680000 AS "P_2", 0.080000 AS "P_3", 2 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.357143 AS "P_0", 0.428571 AS "P_1", 0.071429 AS "P_2", 0.142857 AS "P_3", 1 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.095238 AS "P_0", 0.000000 AS "P_1", 0.809524 AS "P_2", 0.095238 AS "P_3", 2 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.944444 AS "P_2", 0.055556 AS "P_3", 2 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.476190 AS "P_0", 0.238095 AS "P_1", 0.095238 AS "P_2", 0.190476 AS "P_3", 0 AS "D", 0.476190 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.100000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.400000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.818182 AS "P_0", 0.000000 AS "P_1", 0.181818 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_39" <= -1.088466) AND (t."X_91" <= 0.327089)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_39" <= -1.088466) AND (t."X_91" > 0.327089)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_39" > -1.088466) AND (t."X_92" > -0.735635) AND (t."X_72" > -0.392402) AND (t."X_93" <= 0.485349) AND (t."X_95" <= -0.722289)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_39" > -1.088466) AND (t."X_92" > -0.735635) AND (t."X_72" > -0.392402) AND (t."X_93" > 0.485349) AND (t."X_55" <= 0.423662)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_39" > -1.088466) AND (t."X_92" > -0.735635) AND (t."X_72" > -0.392402) AND (t."X_93" > 0.485349) AND (t."X_55" > 0.423662) AND (t."X_39" <= -0.330937)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_39" > -1.088466) AND (t."X_92" > -0.735635) AND (t."X_72" > -0.392402) AND (t."X_93" > 0.485349) AND (t."X_55" > 0.423662) AND (t."X_39" > -0.330937)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_39" > -1.088466) AND (t."X_92" > -0.735635) AND (t."X_72" > -0.392402) AND (t."X_93" <= 0.485349) AND (t."X_95" > -0.722289) AND (t."X_93" > -0.975292)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_39" > -1.088466) AND (t."X_92" > -0.735635) AND (t."X_72" > -0.392402) AND (t."X_93" <= 0.485349) AND (t."X_95" > -0.722289) AND (t."X_93" <= -0.975292) AND (t."X_99" <= 0.632264)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_39" > -1.088466) AND (t."X_92" > -0.735635) AND (t."X_72" > -0.392402) AND (t."X_93" <= 0.485349) AND (t."X_95" > -0.722289) AND (t."X_93" <= -0.975292) AND (t."X_99" > 0.632264)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_39" > -1.088466) AND (t."X_92" > -0.735635) AND (t."X_72" <= -0.392402) AND (t."X_94" <= -0.902437)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_39" > -1.088466) AND (t."X_92" > -0.735635) AND (t."X_72" <= -0.392402) AND (t."X_94" > -0.902437) AND (t."X_96" <= 1.501147)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_39" > -1.088466) AND (t."X_92" > -0.735635) AND (t."X_72" <= -0.392402) AND (t."X_94" > -0.902437) AND (t."X_96" > 1.501147)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_39" > -1.088466) AND (t."X_92" <= -0.735635) AND (t."X_95" > -0.197963)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_39" > -1.088466) AND (t."X_92" <= -0.735635) AND (t."X_95" <= -0.197963) AND (t."X_51" <= -1.976282)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_39" > -1.088466) AND (t."X_92" <= -0.735635) AND (t."X_95" <= -0.197963) AND (t."X_51" > -1.976282)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.281250 AS "P_0", 0.109375 AS "P_1", 0.390625 AS "P_2", 0.218750 AS "P_3", 2 AS "D", 0.390625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.300000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.700000 AS "P_3", 3 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.277778 AS "P_0", 0.129630 AS "P_1", 0.462963 AS "P_2", 0.129630 AS "P_3", 2 AS "D", 0.462963 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.058824 AS "P_1", 0.882353 AS "P_2", 0.058824 AS "P_3", 2 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.405405 AS "P_0", 0.162162 AS "P_1", 0.270270 AS "P_2", 0.162162 AS "P_3", 0 AS "D", 0.405405 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.812500 AS "P_0", 0.062500 AS "P_1", 0.125000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.095238 AS "P_0", 0.238095 AS "P_1", 0.380952 AS "P_2", 0.285714 AS "P_3", 2 AS "D", 0.380952 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.076923 AS "P_0", 0.384615 AS "P_1", 0.538462 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.125000 AS "P_0", 0.000000 AS "P_1", 0.125000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.111111 AS "P_0", 0.111111 AS "P_1", 0.777778 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.937500 AS "P_2", 0.062500 AS "P_3", 2 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_49" <= -1.581441) AND (t."X_97" > 0.392964)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_49" <= -1.581441) AND (t."X_97" <= 0.392964) AND (t."X_94" <= -1.412986)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_49" <= -1.581441) AND (t."X_97" <= 0.392964) AND (t."X_94" > -1.412986)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_49" > -1.581441) AND (t."X_87" <= -0.292536) AND (t."X_20" <= -1.222178)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_49" > -1.581441) AND (t."X_87" > -0.292536) AND (t."X_97" > 0.819691) AND (t."X_6" <= 0.681418)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_49" > -1.581441) AND (t."X_87" > -0.292536) AND (t."X_97" > 0.819691) AND (t."X_6" > 0.681418)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_49" > -1.581441) AND (t."X_87" <= -0.292536) AND (t."X_20" > -1.222178) AND (t."X_20" <= 1.341886)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_49" > -1.581441) AND (t."X_87" <= -0.292536) AND (t."X_20" > -1.222178) AND (t."X_20" > 1.341886)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_49" > -1.581441) AND (t."X_87" > -0.292536) AND (t."X_97" <= 0.819691) AND (t."X_98" <= -1.250850) AND (t."X_99" <= 0.356082)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_49" > -1.581441) AND (t."X_87" > -0.292536) AND (t."X_97" <= 0.819691) AND (t."X_98" <= -1.250850) AND (t."X_99" > 0.356082)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_49" > -1.581441) AND (t."X_87" > -0.292536) AND (t."X_97" <= 0.819691) AND (t."X_98" > -1.250850) AND (t."X_71" <= -1.399969)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_49" > -1.581441) AND (t."X_87" > -0.292536) AND (t."X_97" <= 0.819691) AND (t."X_98" > -1.250850) AND (t."X_71" > -1.399969) AND (t."X_99" <= 2.106017)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_49" > -1.581441) AND (t."X_87" > -0.292536) AND (t."X_97" <= 0.819691) AND (t."X_98" > -1.250850) AND (t."X_71" > -1.399969) AND (t."X_99" > 2.106017)) THEN 24 ELSE NULL END AS "Leaf_24"
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
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.109375 AS "P_1", 0.281250 AS "P_2", 0.296875 AS "P_3", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.250000 AS "P_0", 0.083333 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.350000 AS "P_0", 0.125000 AS "P_1", 0.450000 AS "P_2", 0.075000 AS "P_3", 2 AS "D", 0.450000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.111111 AS "P_1", 0.000000 AS "P_2", 0.888889 AS "P_3", 3 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.062500 AS "P_1", 0.812500 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.583333 AS "P_0", 0.166667 AS "P_1", 0.208333 AS "P_2", 0.041667 AS "P_3", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.071429 AS "P_1", 0.928571 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.777778 AS "P_0", 0.111111 AS "P_1", 0.055556 AS "P_2", 0.055556 AS "P_3", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.875000 AS "P_0", 0.062500 AS "P_1", 0.062500 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.933333 AS "P_0", 0.000000 AS "P_1", 0.066667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_84" > 0.316996) AND (t."X_84" > 0.558190) AND (t."X_42" <= -0.080036)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_84" > 0.316996) AND (t."X_84" > 0.558190) AND (t."X_42" > -0.080036) AND (t."X_99" <= 0.358084)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_84" > 0.316996) AND (t."X_84" > 0.558190) AND (t."X_42" > -0.080036) AND (t."X_99" > 0.358084)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_84" <= 0.316996) AND (t."X_94" <= -0.571665) AND (t."X_84" <= -0.654157) AND (t."X_35" <= 0.948895)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_84" <= 0.316996) AND (t."X_94" <= -0.571665) AND (t."X_84" <= -0.654157) AND (t."X_35" > 0.948895) AND (t."X_35" <= 2.102936)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_84" <= 0.316996) AND (t."X_94" <= -0.571665) AND (t."X_84" <= -0.654157) AND (t."X_35" > 0.948895) AND (t."X_35" > 2.102936)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_84" <= 0.316996) AND (t."X_94" > -0.571665) AND (t."X_97" > 0.033583) AND (t."X_3" > -0.726260)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_84" <= 0.316996) AND (t."X_94" > -0.571665) AND (t."X_97" > 0.033583) AND (t."X_3" <= -0.726260) AND (t."X_99" <= -0.251303)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_84" <= 0.316996) AND (t."X_94" > -0.571665) AND (t."X_97" > 0.033583) AND (t."X_3" <= -0.726260) AND (t."X_99" > -0.251303)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_84" <= 0.316996) AND (t."X_94" > -0.571665) AND (t."X_97" <= 0.033583) AND (t."X_93" <= -0.757200) AND (t."X_28" <= -0.004983)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_84" <= 0.316996) AND (t."X_94" > -0.571665) AND (t."X_97" <= 0.033583) AND (t."X_93" <= -0.757200) AND (t."X_28" > -0.004983)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_84" <= 0.316996) AND (t."X_94" <= -0.571665) AND (t."X_84" > -0.654157) AND (t."X_93" <= 0.751815)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_84" <= 0.316996) AND (t."X_94" <= -0.571665) AND (t."X_84" > -0.654157) AND (t."X_93" > 0.751815)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_84" > 0.316996) AND (t."X_84" <= 0.558190) AND (t."X_95" <= -1.357865)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_84" > 0.316996) AND (t."X_84" <= 0.558190) AND (t."X_95" > -1.357865)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_84" <= 0.316996) AND (t."X_94" > -0.571665) AND (t."X_97" <= 0.033583) AND (t."X_93" > -0.757200) AND (t."X_97" <= -1.056098)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_84" <= 0.316996) AND (t."X_94" > -0.571665) AND (t."X_97" <= 0.033583) AND (t."X_93" > -0.757200) AND (t."X_97" > -1.056098)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.265625 AS "P_0", 0.218750 AS "P_1", 0.218750 AS "P_2", 0.296875 AS "P_3", 3 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.100000 AS "P_0", 0.350000 AS "P_1", 0.150000 AS "P_2", 0.400000 AS "P_3", 3 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.541667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.541667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.923077 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.076923 AS "P_3", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.090909 AS "P_0", 0.000000 AS "P_1", 0.727273 AS "P_2", 0.181818 AS "P_3", 2 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.117647 AS "P_0", 0.705882 AS "P_1", 0.058824 AS "P_2", 0.117647 AS "P_3", 1 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.086957 AS "P_0", 0.086957 AS "P_1", 0.217391 AS "P_2", 0.608696 AS "P_3", 3 AS "D", 0.608696 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.923077 AS "P_1", 0.000000 AS "P_2", 0.076923 AS "P_3", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.055556 AS "P_0", 0.055556 AS "P_1", 0.111111 AS "P_2", 0.777778 AS "P_3", 3 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.200000 AS "P_0", 0.200000 AS "P_1", 0.600000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.066667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.933333 AS "P_3", 3 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" > 0.168850) AND (t."X_50" <= 0.207534) AND (t."X_95" <= 0.408502)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" > 0.168850) AND (t."X_50" <= 0.207534) AND (t."X_95" > 0.408502) AND (t."X_35" <= 0.275896)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" > 0.168850) AND (t."X_50" <= 0.207534) AND (t."X_95" > 0.408502) AND (t."X_35" > 0.275896) AND (t."X_96" <= 0.622068)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" > 0.168850) AND (t."X_50" <= 0.207534) AND (t."X_95" > 0.408502) AND (t."X_35" > 0.275896) AND (t."X_96" > 0.622068)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_20" > 0.168850) AND (t."X_50" > 0.207534) AND (t."X_20" <= 0.354758)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_20" > 0.168850) AND (t."X_50" > 0.207534) AND (t."X_20" > 0.354758)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" <= 0.168850) AND (t."X_93" <= -0.610027) AND (t."X_92" > -0.581060)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_20" <= 0.168850) AND (t."X_93" <= -0.610027) AND (t."X_92" <= -0.581060) AND (t."X_35" <= 0.572622)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_20" <= 0.168850) AND (t."X_93" <= -0.610027) AND (t."X_92" <= -0.581060) AND (t."X_35" > 0.572622)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_20" <= 0.168850) AND (t."X_93" > -0.610027) AND (t."X_50" <= -1.621912)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_20" <= 0.168850) AND (t."X_93" > -0.610027) AND (t."X_50" > -1.621912) AND (t."X_35" > 3.910557)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_20" <= 0.168850) AND (t."X_93" > -0.610027) AND (t."X_50" > -1.621912) AND (t."X_35" <= 3.910557) AND (t."X_97" > 1.543125) AND (t."X_35" <= -0.770211)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_20" <= 0.168850) AND (t."X_93" > -0.610027) AND (t."X_50" > -1.621912) AND (t."X_35" <= 3.910557) AND (t."X_97" > 1.543125) AND (t."X_35" > -0.770211)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_20" <= 0.168850) AND (t."X_93" > -0.610027) AND (t."X_50" > -1.621912) AND (t."X_35" <= 3.910557) AND (t."X_97" <= 1.543125) AND (t."X_15" > 1.509641)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_20" <= 0.168850) AND (t."X_93" > -0.610027) AND (t."X_50" > -1.621912) AND (t."X_35" <= 3.910557) AND (t."X_97" <= 1.543125) AND (t."X_15" <= 1.509641) AND (t."X_22" <= -1.267729)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_20" <= 0.168850) AND (t."X_93" > -0.610027) AND (t."X_50" > -1.621912) AND (t."X_35" <= 3.910557) AND (t."X_97" <= 1.543125) AND (t."X_15" <= 1.509641) AND (t."X_22" > -1.267729)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 0 AS nid,  0.281250 AS "P_0", 0.078125 AS "P_1", 0.265625 AS "P_2", 0.375000 AS "P_3", 3 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.128205 AS "P_0", 0.102564 AS "P_1", 0.179487 AS "P_2", 0.589744 AS "P_3", 3 AS "D", 0.589744 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.520000 AS "P_0", 0.040000 AS "P_1", 0.400000 AS "P_2", 0.040000 AS "P_3", 0 AS "D", 0.520000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.083333 AS "P_0", 0.083333 AS "P_1", 0.750000 AS "P_2", 0.083333 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.923077 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.125000 AS "P_1", 0.375000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.032258 AS "P_0", 0.096774 AS "P_1", 0.129032 AS "P_2", 0.741935 AS "P_3", 3 AS "D", 0.741935 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.034483 AS "P_0", 0.034483 AS "P_1", 0.137931 AS "P_2", 0.793103 AS "P_3", 3 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.037037 AS "P_0", 0.037037 AS "P_1", 0.074074 AS "P_2", 0.851852 AS "P_3", 3 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.040000 AS "P_0", 0.000000 AS "P_1", 0.040000 AS "P_2", 0.920000 AS "P_3", 3 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.041667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.958333 AS "P_3", 3 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_83" > 0.959352) AND (t."X_9" <= 0.308959)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_83" > 0.959352) AND (t."X_9" > 0.308959) AND (t."X_99" <= -0.356175)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_83" > 0.959352) AND (t."X_9" > 0.308959) AND (t."X_99" > -0.356175)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_83" <= 0.959352) AND (t."X_92" <= -0.844222) AND (t."X_9" <= 0.335230)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_83" <= 0.959352) AND (t."X_92" <= -0.844222) AND (t."X_9" > 0.335230)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_83" <= 0.959352) AND (t."X_92" > -0.844222) AND (t."X_99" > 0.930915) AND (t."X_96" <= -1.746904)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_83" <= 0.959352) AND (t."X_92" > -0.844222) AND (t."X_99" > 0.930915) AND (t."X_96" > -1.746904)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_83" <= 0.959352) AND (t."X_92" > -0.844222) AND (t."X_99" <= 0.930915) AND (t."X_4" <= -1.185851) AND (t."X_37" <= -0.506504)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_83" <= 0.959352) AND (t."X_92" > -0.844222) AND (t."X_99" <= 0.930915) AND (t."X_4" <= -1.185851) AND (t."X_37" > -0.506504)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_83" <= 0.959352) AND (t."X_92" > -0.844222) AND (t."X_99" <= 0.930915) AND (t."X_4" > -1.185851) AND (t."X_98" <= -1.102829)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_83" <= 0.959352) AND (t."X_92" > -0.844222) AND (t."X_99" <= 0.930915) AND (t."X_4" > -1.185851) AND (t."X_98" > -1.102829) AND (t."X_40" > 0.862803) AND (t."X_9" <= 0.140842)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_83" <= 0.959352) AND (t."X_92" > -0.844222) AND (t."X_99" <= 0.930915) AND (t."X_4" > -1.185851) AND (t."X_98" > -1.102829) AND (t."X_40" > 0.862803) AND (t."X_9" > 0.140842)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_83" <= 0.959352) AND (t."X_92" > -0.844222) AND (t."X_99" <= 0.930915) AND (t."X_4" > -1.185851) AND (t."X_98" > -1.102829) AND (t."X_40" <= 0.862803) AND (t."X_99" <= 0.780951)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_83" <= 0.959352) AND (t."X_92" > -0.844222) AND (t."X_99" <= 0.930915) AND (t."X_4" > -1.185851) AND (t."X_98" > -1.102829) AND (t."X_40" <= 0.862803) AND (t."X_99" > 0.780951)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.281250 AS "P_0", 0.093750 AS "P_1", 0.312500 AS "P_2", 0.312500 AS "P_3", 2 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.333333 AS "P_0", 0.098039 AS "P_1", 0.392157 AS "P_2", 0.176471 AS "P_3", 2 AS "D", 0.392157 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.076923 AS "P_0", 0.076923 AS "P_1", 0.000000 AS "P_2", 0.846154 AS "P_3", 3 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.472222 AS "P_0", 0.138889 AS "P_1", 0.222222 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.472222 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.586207 AS "P_0", 0.172414 AS "P_1", 0.137931 AS "P_2", 0.103448 AS "P_3", 0 AS "D", 0.586207 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.571429 AS "P_2", 0.428571 AS "P_3", 2 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.708333 AS "P_0", 0.208333 AS "P_1", 0.000000 AS "P_2", 0.083333 AS "P_3", 0 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.809524 AS "P_0", 0.095238 AS "P_1", 0.000000 AS "P_2", 0.095238 AS "P_3", 0 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_68" <= -1.363894) AND (t."X_99" <= 1.285006)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_68" <= -1.363894) AND (t."X_99" > 1.285006)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_68" > -1.363894) AND (t."X_92" <= -0.857527) AND (t."X_96" > 0.002343)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_68" > -1.363894) AND (t."X_92" <= -0.857527) AND (t."X_96" <= 0.002343) AND (t."X_98" <= 1.065249)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_68" > -1.363894) AND (t."X_92" <= -0.857527) AND (t."X_96" <= 0.002343) AND (t."X_98" > 1.065249)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_68" > -1.363894) AND (t."X_92" > -0.857527) AND (t."X_34" <= -0.635298) AND (t."X_0" <= -1.004949)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_68" > -1.363894) AND (t."X_92" > -0.857527) AND (t."X_34" <= -0.635298) AND (t."X_0" > -1.004949) AND (t."X_0" > 1.428463)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_68" > -1.363894) AND (t."X_92" > -0.857527) AND (t."X_34" > -0.635298) AND (t."X_97" > 1.069024) AND (t."X_99" <= 0.039064)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_68" > -1.363894) AND (t."X_92" > -0.857527) AND (t."X_34" > -0.635298) AND (t."X_97" > 1.069024) AND (t."X_99" > 0.039064)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_68" > -1.363894) AND (t."X_92" > -0.857527) AND (t."X_34" <= -0.635298) AND (t."X_0" > -1.004949) AND (t."X_0" <= 1.428463) AND (t."X_97" > 0.625452)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_68" > -1.363894) AND (t."X_92" > -0.857527) AND (t."X_34" <= -0.635298) AND (t."X_0" > -1.004949) AND (t."X_0" <= 1.428463) AND (t."X_97" <= 0.625452) AND (t."X_8" <= 0.321492)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_68" > -1.363894) AND (t."X_92" > -0.857527) AND (t."X_34" <= -0.635298) AND (t."X_0" > -1.004949) AND (t."X_0" <= 1.428463) AND (t."X_97" <= 0.625452) AND (t."X_8" > 0.321492)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_68" > -1.363894) AND (t."X_92" > -0.857527) AND (t."X_34" > -0.635298) AND (t."X_97" <= 1.069024) AND (t."X_53" <= -2.228381)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_68" > -1.363894) AND (t."X_92" > -0.857527) AND (t."X_34" > -0.635298) AND (t."X_97" <= 1.069024) AND (t."X_53" > -2.228381) AND (t."X_98" <= -1.617723)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_68" > -1.363894) AND (t."X_92" > -0.857527) AND (t."X_34" > -0.635298) AND (t."X_97" <= 1.069024) AND (t."X_53" > -2.228381) AND (t."X_98" > -1.617723) AND (t."X_68" <= 1.526112)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_68" > -1.363894) AND (t."X_92" > -0.857527) AND (t."X_34" > -0.635298) AND (t."X_97" <= 1.069024) AND (t."X_53" > -2.228381) AND (t."X_98" > -1.617723) AND (t."X_68" > 1.526112)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 0 AS nid,  0.328125 AS "P_0", 0.140625 AS "P_1", 0.265625 AS "P_2", 0.265625 AS "P_3", 0 AS "D", 0.328125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.888889 AS "P_3", 3 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.381818 AS "P_0", 0.163636 AS "P_1", 0.290909 AS "P_2", 0.163636 AS "P_3", 0 AS "D", 0.381818 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.466667 AS "P_0", 0.200000 AS "P_1", 0.177778 AS "P_2", 0.155556 AS "P_3", 0 AS "D", 0.466667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.117647 AS "P_0", 0.235294 AS "P_1", 0.411765 AS "P_2", 0.235294 AS "P_3", 2 AS "D", 0.411765 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.678571 AS "P_0", 0.178571 AS "P_1", 0.035714 AS "P_2", 0.107143 AS "P_3", 0 AS "D", 0.678571 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.153846 AS "P_0", 0.307692 AS "P_1", 0.538462 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.222222 AS "P_0", 0.000000 AS "P_1", 0.777778 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.826087 AS "P_0", 0.043478 AS "P_1", 0.000000 AS "P_2", 0.130435 AS "P_3", 0 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.125000 AS "P_0", 0.000000 AS "P_1", 0.875000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.904762 AS "P_0", 0.047619 AS "P_1", 0.000000 AS "P_2", 0.047619 AS "P_3", 0 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.950000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.050000 AS "P_3", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" <= -1.185851) AND (t."X_97" <= -1.427310)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_4" <= -1.185851) AND (t."X_97" > -1.427310)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_4" > -1.185851) AND (t."X_94" <= 0.122421) AND (t."X_93" > -0.353711) AND (t."X_98" > 0.880187) AND (t."X_87" <= -0.106290)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_4" > -1.185851) AND (t."X_94" <= 0.122421) AND (t."X_93" > -0.353711) AND (t."X_98" > 0.880187) AND (t."X_87" > -0.106290) AND (t."X_99" <= -1.324327)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_4" > -1.185851) AND (t."X_94" <= 0.122421) AND (t."X_93" > -0.353711) AND (t."X_98" > 0.880187) AND (t."X_87" > -0.106290) AND (t."X_99" > -1.324327)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_4" > -1.185851) AND (t."X_94" <= 0.122421) AND (t."X_93" <= -0.353711) AND (t."X_97" > 0.819691)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_4" > -1.185851) AND (t."X_94" <= 0.122421) AND (t."X_93" <= -0.353711) AND (t."X_97" <= 0.819691) AND (t."X_4" > 0.300089)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_4" > -1.185851) AND (t."X_94" <= 0.122421) AND (t."X_93" <= -0.353711) AND (t."X_97" <= 0.819691) AND (t."X_4" <= 0.300089) AND (t."X_98" <= -1.003911)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_4" > -1.185851) AND (t."X_94" <= 0.122421) AND (t."X_93" <= -0.353711) AND (t."X_97" <= 0.819691) AND (t."X_4" <= 0.300089) AND (t."X_98" > -1.003911)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_4" > -1.185851) AND (t."X_94" > 0.122421) AND (t."X_15" <= -0.633114)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_4" > -1.185851) AND (t."X_94" > 0.122421) AND (t."X_15" > -0.633114) AND (t."X_39" > 0.055084) AND (t."X_19" > 0.116842) AND (t."X_19" <= 0.588261)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_4" > -1.185851) AND (t."X_94" > 0.122421) AND (t."X_15" > -0.633114) AND (t."X_39" > 0.055084) AND (t."X_19" > 0.116842) AND (t."X_19" > 0.588261)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_4" > -1.185851) AND (t."X_94" > 0.122421) AND (t."X_15" > -0.633114) AND (t."X_39" > 0.055084) AND (t."X_19" <= 0.116842) AND (t."X_99" <= -0.104290)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_4" > -1.185851) AND (t."X_94" > 0.122421) AND (t."X_15" > -0.633114) AND (t."X_39" > 0.055084) AND (t."X_19" <= 0.116842) AND (t."X_99" > -0.104290)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_4" > -1.185851) AND (t."X_94" > 0.122421) AND (t."X_15" > -0.633114) AND (t."X_39" <= 0.055084) AND (t."X_90" <= -0.580775)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_4" > -1.185851) AND (t."X_94" > 0.122421) AND (t."X_15" > -0.633114) AND (t."X_39" <= 0.055084) AND (t."X_90" > -0.580775)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_4" > -1.185851) AND (t."X_94" <= 0.122421) AND (t."X_93" > -0.353711) AND (t."X_98" <= 0.880187) AND (t."X_97" <= 1.543125)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_4" > -1.185851) AND (t."X_94" <= 0.122421) AND (t."X_93" > -0.353711) AND (t."X_98" <= 0.880187) AND (t."X_97" > 1.543125)) THEN 34 ELSE NULL END AS "Leaf_34"
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
    SELECT 0 AS nid,  0.281250 AS "P_0", 0.156250 AS "P_1", 0.281250 AS "P_2", 0.281250 AS "P_3", 0 AS "D", 0.281250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.909091 AS "P_2", 0.090909 AS "P_3", 2 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.339623 AS "P_0", 0.188679 AS "P_1", 0.150943 AS "P_2", 0.320755 AS "P_3", 0 AS "D", 0.339623 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.181818 AS "P_0", 0.242424 AS "P_1", 0.121212 AS "P_2", 0.454545 AS "P_3", 3 AS "D", 0.454545 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.600000 AS "P_0", 0.100000 AS "P_1", 0.200000 AS "P_2", 0.100000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.416667 AS "P_0", 0.500000 AS "P_1", 0.083333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.047619 AS "P_0", 0.095238 AS "P_1", 0.142857 AS "P_2", 0.714286 AS "P_3", 3 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.062500 AS "P_1", 0.000000 AS "P_2", 0.937500 AS "P_3", 3 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.200000 AS "P_0", 0.200000 AS "P_1", 0.600000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.625000 AS "P_0", 0.250000 AS "P_1", 0.125000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.705882 AS "P_0", 0.117647 AS "P_1", 0.058824 AS "P_2", 0.117647 AS "P_3", 0 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.200000 AS "P_0", 0.200000 AS "P_1", 0.200000 AS "P_2", 0.400000 AS "P_3", 3 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_66" <= -3.172277) AND (t."X_94" <= -1.054101)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_66" <= -3.172277) AND (t."X_94" > -1.054101) AND (t."X_98" <= 0.990504)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_66" <= -3.172277) AND (t."X_94" > -1.054101) AND (t."X_98" > 0.990504)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_66" > -3.172277) AND (t."X_73" <= -1.358930)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_66" > -3.172277) AND (t."X_73" > -1.358930) AND (t."X_56" <= -0.272241) AND (t."X_91" <= 0.489147)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_66" > -3.172277) AND (t."X_73" > -1.358930) AND (t."X_56" <= -0.272241) AND (t."X_91" > 0.489147) AND (t."X_98" <= 0.511680)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_66" > -3.172277) AND (t."X_73" > -1.358930) AND (t."X_56" <= -0.272241) AND (t."X_91" > 0.489147) AND (t."X_98" > 0.511680)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_66" > -3.172277) AND (t."X_73" > -1.358930) AND (t."X_56" > -0.272241) AND (t."X_73" <= -0.901015) AND (t."X_61" <= 0.129053)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_66" > -3.172277) AND (t."X_73" > -1.358930) AND (t."X_56" > -0.272241) AND (t."X_73" <= -0.901015) AND (t."X_61" > 0.129053)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_66" > -3.172277) AND (t."X_73" > -1.358930) AND (t."X_56" > -0.272241) AND (t."X_73" > -0.901015) AND (t."X_93" <= -0.603128) AND (t."X_61" > -0.174829)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_66" > -3.172277) AND (t."X_73" > -1.358930) AND (t."X_56" > -0.272241) AND (t."X_73" > -0.901015) AND (t."X_93" <= -0.603128) AND (t."X_61" <= -0.174829) AND (t."X_61" <= -0.847587)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_66" > -3.172277) AND (t."X_73" > -1.358930) AND (t."X_56" > -0.272241) AND (t."X_73" > -0.901015) AND (t."X_93" <= -0.603128) AND (t."X_61" <= -0.174829) AND (t."X_61" > -0.847587)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_66" > -3.172277) AND (t."X_73" > -1.358930) AND (t."X_56" > -0.272241) AND (t."X_73" > -0.901015) AND (t."X_93" > -0.603128) AND (t."X_93" > 1.361518)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_66" > -3.172277) AND (t."X_73" > -1.358930) AND (t."X_56" > -0.272241) AND (t."X_73" > -0.901015) AND (t."X_93" > -0.603128) AND (t."X_93" <= 1.361518) AND (t."X_99" <= -1.414193)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_66" > -3.172277) AND (t."X_73" > -1.358930) AND (t."X_56" > -0.272241) AND (t."X_73" > -0.901015) AND (t."X_93" > -0.603128) AND (t."X_93" <= 1.361518) AND (t."X_99" > -1.414193) AND (t."X_36" > -0.365034)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_66" > -3.172277) AND (t."X_73" > -1.358930) AND (t."X_56" > -0.272241) AND (t."X_73" > -0.901015) AND (t."X_93" > -0.603128) AND (t."X_93" <= 1.361518) AND (t."X_99" > -1.414193) AND (t."X_36" <= -0.365034) AND (t."X_99" <= -0.275204)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_66" > -3.172277) AND (t."X_73" > -1.358930) AND (t."X_56" > -0.272241) AND (t."X_73" > -0.901015) AND (t."X_93" > -0.603128) AND (t."X_93" <= 1.361518) AND (t."X_99" > -1.414193) AND (t."X_36" <= -0.365034) AND (t."X_99" > -0.275204)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.218750 AS "P_0", 0.203125 AS "P_1", 0.265625 AS "P_2", 0.312500 AS "P_3", 3 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.352941 AS "P_1", 0.647059 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.297872 AS "P_0", 0.148936 AS "P_1", 0.127660 AS "P_2", 0.425532 AS "P_3", 3 AS "D", 0.425532 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.153846 AS "P_1", 0.846154 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.333333 AS "P_0", 0.047619 AS "P_1", 0.142857 AS "P_2", 0.476190 AS "P_3", 3 AS "D", 0.476190 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.625000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.375000 AS "P_3", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.153846 AS "P_0", 0.076923 AS "P_1", 0.230769 AS "P_2", 0.538462 AS "P_3", 3 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.909091 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.090909 AS "P_3", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.136364 AS "P_0", 0.090909 AS "P_1", 0.136364 AS "P_2", 0.636364 AS "P_3", 3 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.250000 AS "P_0", 0.250000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.111111 AS "P_0", 0.055556 AS "P_1", 0.055556 AS "P_2", 0.777778 AS "P_3", 3 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.062500 AS "P_1", 0.062500 AS "P_2", 0.875000 AS "P_3", 3 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.066667 AS "P_2", 0.933333 AS "P_3", 3 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_14", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_28" <= -1.032208) AND (t."X_96" <= -1.332711)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_28" <= -1.032208) AND (t."X_96" > -1.332711) AND (t."X_93" <= -0.584337)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_28" <= -1.032208) AND (t."X_96" > -1.332711) AND (t."X_93" > -0.584337)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_68" > 0.441537) AND (t."X_99" <= -1.414263)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_68" <= 0.441537) AND (t."X_97" > -0.298261) AND (t."X_83" > 0.614903)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_68" <= 0.441537) AND (t."X_97" <= -0.298261) AND (t."X_95" <= 0.234759) AND (t."X_28" > 0.535472)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_68" <= 0.441537) AND (t."X_97" <= -0.298261) AND (t."X_95" <= 0.234759) AND (t."X_28" <= 0.535472) AND (t."X_4" <= 0.685956)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_68" <= 0.441537) AND (t."X_97" <= -0.298261) AND (t."X_95" <= 0.234759) AND (t."X_28" <= 0.535472) AND (t."X_4" > 0.685956)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_68" <= 0.441537) AND (t."X_97" <= -0.298261) AND (t."X_95" > 0.234759) AND (t."X_99" <= 0.603828)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_68" <= 0.441537) AND (t."X_97" <= -0.298261) AND (t."X_95" > 0.234759) AND (t."X_99" > 0.603828)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_68" <= 0.441537) AND (t."X_97" > -0.298261) AND (t."X_83" <= 0.614903) AND (t."X_99" <= -1.290684)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_68" <= 0.441537) AND (t."X_97" > -0.298261) AND (t."X_83" <= 0.614903) AND (t."X_99" > -1.290684) AND (t."X_99" <= 1.341137)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_68" <= 0.441537) AND (t."X_97" > -0.298261) AND (t."X_83" <= 0.614903) AND (t."X_99" > -1.290684) AND (t."X_99" > 1.341137)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_68" > 0.441537) AND (t."X_99" > -1.414263) AND (t."X_9" <= -0.759770) AND (t."X_97" <= -0.129040)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_68" > 0.441537) AND (t."X_99" > -1.414263) AND (t."X_9" <= -0.759770) AND (t."X_97" > -0.129040)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_68" > 0.441537) AND (t."X_99" > -1.414263) AND (t."X_9" > -0.759770) AND (t."X_95" <= 0.860738)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_68" > 0.441537) AND (t."X_99" > -1.414263) AND (t."X_9" > -0.759770) AND (t."X_95" > 0.860738) AND (t."X_4" <= -0.426160)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_68" > 0.441537) AND (t."X_99" > -1.414263) AND (t."X_9" > -0.759770) AND (t."X_95" > 0.860738) AND (t."X_4" > -0.426160)) THEN 34 ELSE NULL END AS "Leaf_34"
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
    SELECT 0 AS nid,  0.296875 AS "P_0", 0.187500 AS "P_1", 0.250000 AS "P_2", 0.265625 AS "P_3", 0 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.307692 AS "P_2", 0.692308 AS "P_3", 3 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.372549 AS "P_0", 0.235294 AS "P_1", 0.235294 AS "P_2", 0.156863 AS "P_3", 0 AS "D", 0.372549 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.900000 AS "P_3", 3 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.166667 AS "P_0", 0.400000 AS "P_1", 0.233333 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.238095 AS "P_2", 0.095238 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.777778 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.333333 AS "P_0", 0.083333 AS "P_1", 0.083333 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.055556 AS "P_0", 0.611111 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.076923 AS "P_0", 0.846154 AS "P_1", 0.076923 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.916667 AS "P_1", 0.083333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.866667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.133333 AS "P_3", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_62" > 0.654100) AND (t."X_94" > -0.553546) AND (t."X_81" > -0.506130)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_62" > 0.654100) AND (t."X_94" > -0.553546) AND (t."X_81" <= -0.506130) AND (t."X_98" > -0.771958)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_62" > 0.654100) AND (t."X_94" > -0.553546) AND (t."X_81" <= -0.506130) AND (t."X_98" <= -0.771958) AND (t."X_81" <= -0.967240)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_62" > 0.654100) AND (t."X_94" > -0.553546) AND (t."X_81" <= -0.506130) AND (t."X_98" <= -0.771958) AND (t."X_81" > -0.967240)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_62" > 0.654100) AND (t."X_94" <= -0.553546) AND (t."X_99" <= 0.215726)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_62" > 0.654100) AND (t."X_94" <= -0.553546) AND (t."X_99" > 0.215726)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_62" <= 0.654100) AND (t."X_93" <= -0.514077) AND (t."X_95" <= 0.923504)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_62" <= 0.654100) AND (t."X_93" <= -0.514077) AND (t."X_95" > 0.923504)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_62" <= 0.654100) AND (t."X_93" > -0.514077) AND (t."X_81" <= -1.049037) AND (t."X_99" <= -1.197742)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_62" <= 0.654100) AND (t."X_93" > -0.514077) AND (t."X_81" <= -1.049037) AND (t."X_99" > -1.197742)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_62" <= 0.654100) AND (t."X_93" > -0.514077) AND (t."X_81" > -1.049037) AND (t."X_86" > 1.055518) AND (t."X_81" <= -0.299988)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_62" <= 0.654100) AND (t."X_93" > -0.514077) AND (t."X_81" > -1.049037) AND (t."X_86" > 1.055518) AND (t."X_81" > -0.299988) AND (t."X_99" <= 0.471582)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_62" <= 0.654100) AND (t."X_93" > -0.514077) AND (t."X_81" > -1.049037) AND (t."X_86" > 1.055518) AND (t."X_81" > -0.299988) AND (t."X_99" > 0.471582)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_62" <= 0.654100) AND (t."X_93" > -0.514077) AND (t."X_81" > -1.049037) AND (t."X_86" <= 1.055518) AND (t."X_98" <= -0.798900)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_62" <= 0.654100) AND (t."X_93" > -0.514077) AND (t."X_81" > -1.049037) AND (t."X_86" <= 1.055518) AND (t."X_98" > -0.798900) AND (t."X_22" <= 1.956772)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_62" <= 0.654100) AND (t."X_93" > -0.514077) AND (t."X_81" > -1.049037) AND (t."X_86" <= 1.055518) AND (t."X_98" > -0.798900) AND (t."X_22" > 1.956772)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.187500 AS "P_1", 0.234375 AS "P_2", 0.265625 AS "P_3", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.282051 AS "P_0", 0.025641 AS "P_1", 0.282051 AS "P_2", 0.410256 AS "P_3", 3 AS "D", 0.410256 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.360000 AS "P_0", 0.440000 AS "P_1", 0.160000 AS "P_2", 0.040000 AS "P_3", 1 AS "D", 0.440000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.533333 AS "P_0", 0.133333 AS "P_1", 0.266667 AS "P_2", 0.066667 AS "P_3", 0 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.285714 AS "P_1", 0.571429 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.125000 AS "P_1", 0.875000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.354839 AS "P_0", 0.000000 AS "P_1", 0.129032 AS "P_2", 0.516129 AS "P_3", 3 AS "D", 0.516129 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.875000 AS "P_0", 0.000000 AS "P_1", 0.125000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.173913 AS "P_0", 0.000000 AS "P_1", 0.130435 AS "P_2", 0.695652 AS "P_3", 3 AS "D", 0.695652 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.058824 AS "P_0", 0.000000 AS "P_1", 0.058824 AS "P_2", 0.882353 AS "P_3", 3 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.062500 AS "P_2", 0.937500 AS "P_3", 3 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_96" <= -0.323536) AND (t."X_52" <= 0.647478) AND (t."X_94" > 0.232416) AND (t."X_96" <= -1.170672)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_96" <= -0.323536) AND (t."X_52" <= 0.647478) AND (t."X_94" > 0.232416) AND (t."X_96" > -1.170672)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_96" <= -0.323536) AND (t."X_52" <= 0.647478) AND (t."X_94" <= 0.232416) AND (t."X_99" <= 2.102394)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_96" <= -0.323536) AND (t."X_52" <= 0.647478) AND (t."X_94" <= 0.232416) AND (t."X_99" > 2.102394)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_96" <= -0.323536) AND (t."X_52" > 0.647478) AND (t."X_52" <= 1.806936)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_96" <= -0.323536) AND (t."X_52" > 0.647478) AND (t."X_52" > 1.806936)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_96" > -0.323536) AND (t."X_1" > 0.036753) AND (t."X_1" <= 1.011125)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_96" > -0.323536) AND (t."X_1" > 0.036753) AND (t."X_1" > 1.011125) AND (t."X_96" <= 0.917259)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_96" > -0.323536) AND (t."X_1" > 0.036753) AND (t."X_1" > 1.011125) AND (t."X_96" > 0.917259)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_96" > -0.323536) AND (t."X_1" <= 0.036753) AND (t."X_92" <= -0.830954)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_96" > -0.323536) AND (t."X_1" <= 0.036753) AND (t."X_92" > -0.830954) AND (t."X_1" > -0.812516) AND (t."X_64" <= -1.125237)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_96" > -0.323536) AND (t."X_1" <= 0.036753) AND (t."X_92" > -0.830954) AND (t."X_1" > -0.812516) AND (t."X_64" > -1.125237)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_96" > -0.323536) AND (t."X_1" <= 0.036753) AND (t."X_92" > -0.830954) AND (t."X_1" <= -0.812516) AND (t."X_99" <= 0.087422)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_96" > -0.323536) AND (t."X_1" <= 0.036753) AND (t."X_92" > -0.830954) AND (t."X_1" <= -0.812516) AND (t."X_99" > 0.087422)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.218750 AS "P_0", 0.187500 AS "P_1", 0.328125 AS "P_2", 0.265625 AS "P_3", 2 AS "D", 0.328125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.071429 AS "P_0", 0.000000 AS "P_1", 0.535714 AS "P_2", 0.392857 AS "P_3", 2 AS "D", 0.535714 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.166667 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.111111 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.555556 AS "P_3", 3 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.900000 AS "P_2", 0.100000 AS "P_3", 2 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.440000 AS "P_0", 0.160000 AS "P_1", 0.240000 AS "P_2", 0.160000 AS "P_3", 0 AS "D", 0.440000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.090909 AS "P_0", 0.727273 AS "P_1", 0.000000 AS "P_2", 0.181818 AS "P_3", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.578947 AS "P_0", 0.210526 AS "P_1", 0.000000 AS "P_2", 0.210526 AS "P_3", 0 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_60" <= -1.507570) AND (t."X_96" > 1.548918)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_60" <= -1.507570) AND (t."X_96" <= 1.548918) AND (t."X_97" <= 0.093918)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_60" <= -1.507570) AND (t."X_96" <= 1.548918) AND (t."X_97" > 0.093918)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_60" > -1.507570) AND (t."X_19" > 1.929397)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_60" > -1.507570) AND (t."X_19" <= 1.929397) AND (t."X_22" <= -0.794009) AND (t."X_96" > 0.381511)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_60" > -1.507570) AND (t."X_19" <= 1.929397) AND (t."X_22" <= -0.794009) AND (t."X_96" <= 0.381511) AND (t."X_98" <= 0.497753)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_60" > -1.507570) AND (t."X_19" <= 1.929397) AND (t."X_22" <= -0.794009) AND (t."X_96" <= 0.381511) AND (t."X_98" > 0.497753)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_60" > -1.507570) AND (t."X_19" <= 1.929397) AND (t."X_22" > -0.794009) AND (t."X_60" <= -0.237426) AND (t."X_97" <= -0.695115)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_60" > -1.507570) AND (t."X_19" <= 1.929397) AND (t."X_22" > -0.794009) AND (t."X_60" <= -0.237426) AND (t."X_97" > -0.695115) AND (t."X_2" <= 0.916990)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_60" > -1.507570) AND (t."X_19" <= 1.929397) AND (t."X_22" > -0.794009) AND (t."X_60" <= -0.237426) AND (t."X_97" > -0.695115) AND (t."X_2" > 0.916990)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_60" > -1.507570) AND (t."X_19" <= 1.929397) AND (t."X_22" > -0.794009) AND (t."X_60" > -0.237426) AND (t."X_92" > 0.998367) AND (t."X_88" <= 0.948663)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_60" > -1.507570) AND (t."X_19" <= 1.929397) AND (t."X_22" > -0.794009) AND (t."X_60" > -0.237426) AND (t."X_92" > 0.998367) AND (t."X_88" > 0.948663)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_60" > -1.507570) AND (t."X_19" <= 1.929397) AND (t."X_22" > -0.794009) AND (t."X_60" > -0.237426) AND (t."X_92" <= 0.998367) AND (t."X_98" <= -1.859584)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_60" > -1.507570) AND (t."X_19" <= 1.929397) AND (t."X_22" > -0.794009) AND (t."X_60" > -0.237426) AND (t."X_92" <= 0.998367) AND (t."X_98" > -1.859584)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.265625 AS "P_0", 0.281250 AS "P_1", 0.281250 AS "P_2", 0.171875 AS "P_3", 1 AS "D", 0.281250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.750000 AS "P_0", 0.125000 AS "P_1", 0.000000 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.104167 AS "P_0", 0.333333 AS "P_1", 0.375000 AS "P_2", 0.187500 AS "P_3", 2 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.857143 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.142857 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.125000 AS "P_0", 0.200000 AS "P_1", 0.450000 AS "P_2", 0.225000 AS "P_3", 2 AS "D", 0.450000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.307692 AS "P_1", 0.153846 AS "P_2", 0.538462 AS "P_3", 3 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.185185 AS "P_0", 0.148148 AS "P_1", 0.592593 AS "P_2", 0.074074 AS "P_3", 2 AS "D", 0.592593 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.222222 AS "P_2", 0.777778 AS "P_3", 3 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.500000 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.095238 AS "P_0", 0.142857 AS "P_1", 0.761905 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.761905 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.111111 AS "P_1", 0.888889 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_6", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_61" <= -1.198629) AND (t."X_99" <= -0.621013)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_61" <= -1.198629) AND (t."X_99" > -0.621013)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_61" > -1.198629) AND (t."X_92" > 1.295759)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_61" > -1.198629) AND (t."X_92" <= 1.295759) AND (t."X_93" <= -0.603128) AND (t."X_78" > 0.293744)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_61" > -1.198629) AND (t."X_92" <= 1.295759) AND (t."X_93" <= -0.603128) AND (t."X_78" <= 0.293744) AND (t."X_9" > 0.152583)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_61" > -1.198629) AND (t."X_92" <= 1.295759) AND (t."X_93" <= -0.603128) AND (t."X_78" <= 0.293744) AND (t."X_9" <= 0.152583) AND (t."X_93" <= -0.992840)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_61" > -1.198629) AND (t."X_92" <= 1.295759) AND (t."X_93" <= -0.603128) AND (t."X_78" <= 0.293744) AND (t."X_9" <= 0.152583) AND (t."X_93" > -0.992840)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_61" > -1.198629) AND (t."X_92" <= 1.295759) AND (t."X_93" > -0.603128) AND (t."X_98" <= -1.882145)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_61" > -1.198629) AND (t."X_92" <= 1.295759) AND (t."X_93" > -0.603128) AND (t."X_98" > -1.882145) AND (t."X_43" > 0.752478) AND (t."X_78" > 0.187677)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_61" > -1.198629) AND (t."X_92" <= 1.295759) AND (t."X_93" > -0.603128) AND (t."X_98" > -1.882145) AND (t."X_43" > 0.752478) AND (t."X_78" <= 0.187677) AND (t."X_99" <= -1.032281)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_61" > -1.198629) AND (t."X_92" <= 1.295759) AND (t."X_93" > -0.603128) AND (t."X_98" > -1.882145) AND (t."X_43" > 0.752478) AND (t."X_78" <= 0.187677) AND (t."X_99" > -1.032281)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_61" > -1.198629) AND (t."X_92" <= 1.295759) AND (t."X_93" > -0.603128) AND (t."X_98" > -1.882145) AND (t."X_43" <= 0.752478) AND (t."X_90" > 0.863818) AND (t."X_99" <= 0.057453)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_61" > -1.198629) AND (t."X_92" <= 1.295759) AND (t."X_93" > -0.603128) AND (t."X_98" > -1.882145) AND (t."X_43" <= 0.752478) AND (t."X_90" > 0.863818) AND (t."X_99" > 0.057453)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_61" > -1.198629) AND (t."X_92" <= 1.295759) AND (t."X_93" > -0.603128) AND (t."X_98" > -1.882145) AND (t."X_43" <= 0.752478) AND (t."X_90" <= 0.863818) AND (t."X_63" <= -1.528360)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_61" > -1.198629) AND (t."X_92" <= 1.295759) AND (t."X_93" > -0.603128) AND (t."X_98" > -1.882145) AND (t."X_43" <= 0.752478) AND (t."X_90" <= 0.863818) AND (t."X_63" > -1.528360) AND (t."X_78" <= 0.840424)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_61" > -1.198629) AND (t."X_92" <= 1.295759) AND (t."X_93" > -0.603128) AND (t."X_98" > -1.882145) AND (t."X_43" <= 0.752478) AND (t."X_90" <= 0.863818) AND (t."X_63" > -1.528360) AND (t."X_78" > 0.840424) AND (t."X_99" <= -0.275204)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_61" > -1.198629) AND (t."X_92" <= 1.295759) AND (t."X_93" > -0.603128) AND (t."X_98" > -1.882145) AND (t."X_43" <= 0.752478) AND (t."X_90" <= 0.863818) AND (t."X_63" > -1.528360) AND (t."X_78" > 0.840424) AND (t."X_99" > -0.275204)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.296875 AS "P_0", 0.140625 AS "P_1", 0.187500 AS "P_2", 0.375000 AS "P_3", 3 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.214286 AS "P_0", 0.142857 AS "P_1", 0.214286 AS "P_2", 0.428571 AS "P_3", 3 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.153846 AS "P_0", 0.153846 AS "P_1", 0.230769 AS "P_2", 0.461538 AS "P_3", 3 AS "D", 0.461538 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.142857 AS "P_0", 0.285714 AS "P_1", 0.571429 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.157895 AS "P_0", 0.105263 AS "P_1", 0.105263 AS "P_2", 0.631579 AS "P_3", 3 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.171429 AS "P_0", 0.028571 AS "P_1", 0.114286 AS "P_2", 0.685714 AS "P_3", 3 AS "D", 0.685714 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.040000 AS "P_0", 0.040000 AS "P_1", 0.080000 AS "P_2", 0.840000 AS "P_3", 3 AS "D", 0.840000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.300000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.714286 AS "P_0", 0.000000 AS "P_1", 0.285714 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.043478 AS "P_1", 0.043478 AS "P_2", 0.913043 AS "P_3", 3 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.045455 AS "P_2", 0.954545 AS "P_3", 3 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_75" <= -1.302809)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_75" > -1.302809) AND (t."X_96" <= -1.230379) AND (t."X_27" <= 3.779728)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_75" > -1.302809) AND (t."X_96" <= -1.230379) AND (t."X_27" > 3.779728)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_75" > -1.302809) AND (t."X_96" > -1.230379) AND (t."X_92" <= -1.142678)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_75" > -1.302809) AND (t."X_96" > -1.230379) AND (t."X_92" > -1.142678) AND (t."X_25" <= -1.172864) AND (t."X_92" > -0.031209)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_75" > -1.302809) AND (t."X_96" > -1.230379) AND (t."X_92" > -1.142678) AND (t."X_25" <= -1.172864) AND (t."X_92" <= -0.031209) AND (t."X_99" <= -0.856004)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_75" > -1.302809) AND (t."X_96" > -1.230379) AND (t."X_92" > -1.142678) AND (t."X_25" <= -1.172864) AND (t."X_92" <= -0.031209) AND (t."X_99" > -0.856004)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_75" > -1.302809) AND (t."X_96" > -1.230379) AND (t."X_92" > -1.142678) AND (t."X_25" > -1.172864) AND (t."X_4" <= -1.185851) AND (t."X_56" <= -1.222439)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_75" > -1.302809) AND (t."X_96" > -1.230379) AND (t."X_92" > -1.142678) AND (t."X_25" > -1.172864) AND (t."X_4" <= -1.185851) AND (t."X_56" > -1.222439)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_75" > -1.302809) AND (t."X_96" > -1.230379) AND (t."X_92" > -1.142678) AND (t."X_25" > -1.172864) AND (t."X_4" > -1.185851) AND (t."X_91" <= -0.572484) AND (t."X_27" <= 0.131363)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_75" > -1.302809) AND (t."X_96" > -1.230379) AND (t."X_92" > -1.142678) AND (t."X_25" > -1.172864) AND (t."X_4" > -1.185851) AND (t."X_91" <= -0.572484) AND (t."X_27" > 0.131363)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_75" > -1.302809) AND (t."X_96" > -1.230379) AND (t."X_92" > -1.142678) AND (t."X_25" > -1.172864) AND (t."X_4" > -1.185851) AND (t."X_91" > -0.572484) AND (t."X_97" > 0.039886)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_75" > -1.302809) AND (t."X_96" > -1.230379) AND (t."X_92" > -1.142678) AND (t."X_25" > -1.172864) AND (t."X_4" > -1.185851) AND (t."X_91" > -0.572484) AND (t."X_97" <= 0.039886) AND (t."X_4" <= -0.560134)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_75" > -1.302809) AND (t."X_96" > -1.230379) AND (t."X_92" > -1.142678) AND (t."X_25" > -1.172864) AND (t."X_4" > -1.185851) AND (t."X_91" > -0.572484) AND (t."X_97" <= 0.039886) AND (t."X_4" > -0.560134)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.343750 AS "P_0", 0.171875 AS "P_1", 0.171875 AS "P_2", 0.312500 AS "P_3", 0 AS "D", 0.343750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.222222 AS "P_0", 0.203704 AS "P_1", 0.203704 AS "P_2", 0.370370 AS "P_3", 3 AS "D", 0.370370 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.875000 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.260870 AS "P_0", 0.239130 AS "P_1", 0.086957 AS "P_2", 0.413043 AS "P_3", 3 AS "D", 0.413043 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.333333 AS "P_0", 0.305556 AS "P_1", 0.111111 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.230769 AS "P_0", 0.692308 AS "P_1", 0.076923 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.391304 AS "P_0", 0.086957 AS "P_1", 0.130435 AS "P_2", 0.391304 AS "P_3", 0 AS "D", 0.391304 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.473684 AS "P_0", 0.105263 AS "P_1", 0.000000 AS "P_2", 0.421053 AS "P_3", 0 AS "D", 0.473684 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.692308 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.307692 AS "P_3", 0 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_28" <= -1.032208) AND (t."X_91" <= -0.940949)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_28" <= -1.032208) AND (t."X_91" > -0.940949)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_20" > 0.714374) AND (t."X_20" <= 1.341886)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_20" > 0.714374) AND (t."X_20" > 1.341886) AND (t."X_99" <= -0.265274)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_20" > 0.714374) AND (t."X_20" > 1.341886) AND (t."X_99" > -0.265274)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_20" <= 0.714374) AND (t."X_90" <= -0.580775) AND (t."X_75" <= -0.195896)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_20" <= 0.714374) AND (t."X_90" <= -0.580775) AND (t."X_75" > -0.195896) AND (t."X_34" > 0.241115)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_20" <= 0.714374) AND (t."X_90" <= -0.580775) AND (t."X_75" > -0.195896) AND (t."X_34" <= 0.241115) AND (t."X_99" <= 0.710904)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_20" <= 0.714374) AND (t."X_90" <= -0.580775) AND (t."X_75" > -0.195896) AND (t."X_34" <= 0.241115) AND (t."X_99" > 0.710904)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_20" <= 0.714374) AND (t."X_90" > -0.580775) AND (t."X_94" <= -0.591095) AND (t."X_5" > -0.468413)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_20" <= 0.714374) AND (t."X_90" > -0.580775) AND (t."X_94" <= -0.591095) AND (t."X_5" <= -0.468413) AND (t."X_20" <= -0.165458)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_20" <= 0.714374) AND (t."X_90" > -0.580775) AND (t."X_94" <= -0.591095) AND (t."X_5" <= -0.468413) AND (t."X_20" > -0.165458)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_20" <= 0.714374) AND (t."X_90" > -0.580775) AND (t."X_94" > -0.591095) AND (t."X_98" > 0.731529)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_20" <= 0.714374) AND (t."X_90" > -0.580775) AND (t."X_94" > -0.591095) AND (t."X_98" <= 0.731529) AND (t."X_96" <= -1.499401)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_20" <= 0.714374) AND (t."X_90" > -0.580775) AND (t."X_94" > -0.591095) AND (t."X_98" <= 0.731529) AND (t."X_96" > -1.499401) AND (t."X_87" <= 1.406177)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_28" > -1.032208) AND (t."X_20" <= 0.714374) AND (t."X_90" > -0.580775) AND (t."X_94" > -0.591095) AND (t."X_98" <= 0.731529) AND (t."X_96" > -1.499401) AND (t."X_87" > 1.406177)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 0 AS nid,  0.234375 AS "P_0", 0.218750 AS "P_1", 0.218750 AS "P_2", 0.328125 AS "P_3", 3 AS "D", 0.328125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.923077 AS "P_3", 3 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.294118 AS "P_0", 0.274510 AS "P_1", 0.254902 AS "P_2", 0.176471 AS "P_3", 0 AS "D", 0.294118 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.384615 AS "P_0", 0.333333 AS "P_1", 0.102564 AS "P_2", 0.179487 AS "P_3", 0 AS "D", 0.384615 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.083333 AS "P_1", 0.750000 AS "P_2", 0.166667 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.066667 AS "P_2", 0.266667 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.625000 AS "P_0", 0.125000 AS "P_1", 0.125000 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.166667 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.166667 AS "P_0", 0.500000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.777778 AS "P_0", 0.000000 AS "P_1", 0.055556 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.875000 AS "P_0", 0.000000 AS "P_1", 0.062500 AS "P_2", 0.062500 AS "P_3", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.933333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.066667 AS "P_3", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_91" <= 0.204260) AND (t."X_98" <= -0.049874) AND (t."X_93" > 0.589335)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_91" <= 0.204260) AND (t."X_98" <= -0.049874) AND (t."X_93" <= 0.589335) AND (t."X_91" > -0.437754)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_91" <= 0.204260) AND (t."X_98" <= -0.049874) AND (t."X_93" <= 0.589335) AND (t."X_91" <= -0.437754) AND (t."X_79" <= 4.710173)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_91" <= 0.204260) AND (t."X_98" <= -0.049874) AND (t."X_93" <= 0.589335) AND (t."X_91" <= -0.437754) AND (t."X_79" > 4.710173)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_91" > 0.204260) AND (t."X_79" <= -1.378509) AND (t."X_97" <= 0.518262)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_91" > 0.204260) AND (t."X_79" <= -1.378509) AND (t."X_97" > 0.518262)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_91" > 0.204260) AND (t."X_79" > -1.378509) AND (t."X_55" <= -0.173446) AND (t."X_95" > 1.113263) AND (t."X_91" <= 0.390823)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_91" > 0.204260) AND (t."X_79" > -1.378509) AND (t."X_55" <= -0.173446) AND (t."X_95" > 1.113263) AND (t."X_91" > 0.390823)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_91" > 0.204260) AND (t."X_79" > -1.378509) AND (t."X_55" <= -0.173446) AND (t."X_95" <= 1.113263) AND (t."X_99" <= 0.146103)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_91" > 0.204260) AND (t."X_79" > -1.378509) AND (t."X_55" <= -0.173446) AND (t."X_95" <= 1.113263) AND (t."X_99" > 0.146103)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_91" <= 0.204260) AND (t."X_98" > -0.049874) AND (t."X_79" <= 3.851230)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_91" <= 0.204260) AND (t."X_98" > -0.049874) AND (t."X_79" > 3.851230)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_91" > 0.204260) AND (t."X_79" > -1.378509) AND (t."X_55" > -0.173446) AND (t."X_86" <= -1.409363)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_91" > 0.204260) AND (t."X_79" > -1.378509) AND (t."X_55" > -0.173446) AND (t."X_86" > -1.409363) AND (t."X_98" <= -1.180854)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_91" > 0.204260) AND (t."X_79" > -1.378509) AND (t."X_55" > -0.173446) AND (t."X_86" > -1.409363) AND (t."X_98" > -1.180854)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.203125 AS "P_0", 0.218750 AS "P_1", 0.265625 AS "P_2", 0.312500 AS "P_3", 3 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.100000 AS "P_0", 0.433333 AS "P_1", 0.333333 AS "P_2", 0.133333 AS "P_3", 1 AS "D", 0.433333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.294118 AS "P_0", 0.029412 AS "P_1", 0.205882 AS "P_2", 0.470588 AS "P_3", 3 AS "D", 0.470588 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.105263 AS "P_0", 0.157895 AS "P_1", 0.526316 AS "P_2", 0.210526 AS "P_3", 2 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.133333 AS "P_0", 0.200000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.833333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.333333 AS "P_0", 0.037037 AS "P_1", 0.037037 AS "P_2", 0.592593 AS "P_3", 3 AS "D", 0.592593 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.083333 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.066667 AS "P_0", 0.066667 AS "P_1", 0.000000 AS "P_2", 0.866667 AS "P_3", 3 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.888889 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.071429 AS "P_1", 0.000000 AS "P_2", 0.928571 AS "P_3", 3 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_28" <= -0.361208) AND (t."X_92" > 0.143700)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_28" <= -0.361208) AND (t."X_92" <= 0.143700) AND (t."X_94" > 1.079759)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_28" <= -0.361208) AND (t."X_92" <= 0.143700) AND (t."X_94" <= 1.079759) AND (t."X_57" > -0.502447)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_28" <= -0.361208) AND (t."X_92" <= 0.143700) AND (t."X_94" <= 1.079759) AND (t."X_57" <= -0.502447) AND (t."X_99" <= 0.272341)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_28" <= -0.361208) AND (t."X_92" <= 0.143700) AND (t."X_94" <= 1.079759) AND (t."X_57" <= -0.502447) AND (t."X_99" > 0.272341)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_28" > -0.361208) AND (t."X_72" > 0.666045) AND (t."X_98" > 0.833524)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_28" > -0.361208) AND (t."X_72" > 0.666045) AND (t."X_98" <= 0.833524) AND (t."X_27" > 1.159310)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_28" > -0.361208) AND (t."X_72" > 0.666045) AND (t."X_98" <= 0.833524) AND (t."X_27" <= 1.159310) AND (t."X_98" <= -0.389359)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_28" > -0.361208) AND (t."X_72" > 0.666045) AND (t."X_98" <= 0.833524) AND (t."X_27" <= 1.159310) AND (t."X_98" > -0.389359) AND (t."X_27" <= -2.255873)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_28" > -0.361208) AND (t."X_72" > 0.666045) AND (t."X_98" <= 0.833524) AND (t."X_27" <= 1.159310) AND (t."X_98" > -0.389359) AND (t."X_27" > -2.255873) AND (t."X_99" <= 0.019067)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_28" > -0.361208) AND (t."X_72" > 0.666045) AND (t."X_98" <= 0.833524) AND (t."X_27" <= 1.159310) AND (t."X_98" > -0.389359) AND (t."X_27" > -2.255873) AND (t."X_99" > 0.019067)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_28" > -0.361208) AND (t."X_72" <= 0.666045) AND (t."X_57" <= -2.036085)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_28" > -0.361208) AND (t."X_72" <= 0.666045) AND (t."X_57" > -2.036085) AND (t."X_75" <= 1.445330)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_28" > -0.361208) AND (t."X_72" <= 0.666045) AND (t."X_57" > -2.036085) AND (t."X_75" > 1.445330)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.171875 AS "P_1", 0.312500 AS "P_2", 0.265625 AS "P_3", 2 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.100000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.400000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.382353 AS "P_0", 0.323529 AS "P_1", 0.147059 AS "P_2", 0.147059 AS "P_3", 0 AS "D", 0.382353 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.714286 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.833333 AS "P_2", 0.166667 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.800000 AS "P_0", 0.133333 AS "P_1", 0.066667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.052632 AS "P_0", 0.473684 AS "P_1", 0.210526 AS "P_2", 0.263158 AS "P_3", 1 AS "D", 0.473684 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.090909 AS "P_0", 0.090909 AS "P_1", 0.363636 AS "P_2", 0.454545 AS "P_3", 3 AS "D", 0.454545 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.142857 AS "P_0", 0.142857 AS "P_1", 0.571429 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.923077 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_66" > 0.716127) AND (t."X_70" > 1.262600)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_66" > 0.716127) AND (t."X_70" <= 1.262600) AND (t."X_97" <= -0.047997) AND (t."X_46" <= 0.504759)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_66" > 0.716127) AND (t."X_70" <= 1.262600) AND (t."X_97" <= -0.047997) AND (t."X_46" > 0.504759) AND (t."X_38" <= 0.928388)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_66" > 0.716127) AND (t."X_70" <= 1.262600) AND (t."X_97" <= -0.047997) AND (t."X_46" > 0.504759) AND (t."X_38" > 0.928388) AND (t."X_40" <= 0.134605)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_66" > 0.716127) AND (t."X_70" <= 1.262600) AND (t."X_97" <= -0.047997) AND (t."X_46" > 0.504759) AND (t."X_38" > 0.928388) AND (t."X_40" > 0.134605)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_66" > 0.716127) AND (t."X_70" <= 1.262600) AND (t."X_97" > -0.047997) AND (t."X_98" <= -1.617723)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_66" > 0.716127) AND (t."X_70" <= 1.262600) AND (t."X_97" > -0.047997) AND (t."X_98" > -1.617723)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_66" <= 0.716127) AND (t."X_97" > 1.000996)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_66" <= 0.716127) AND (t."X_97" <= 1.000996) AND (t."X_38" <= -1.027551) AND (t."X_96" <= -1.969968)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_66" <= 0.716127) AND (t."X_97" <= 1.000996) AND (t."X_38" <= -1.027551) AND (t."X_96" > -1.969968)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_66" <= 0.716127) AND (t."X_97" <= 1.000996) AND (t."X_38" > -1.027551) AND (t."X_88" > 1.011642) AND (t."X_95" <= -0.464215)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_66" <= 0.716127) AND (t."X_97" <= 1.000996) AND (t."X_38" > -1.027551) AND (t."X_88" > 1.011642) AND (t."X_95" > -0.464215)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_66" <= 0.716127) AND (t."X_97" <= 1.000996) AND (t."X_38" > -1.027551) AND (t."X_88" <= 1.011642) AND (t."X_91" <= -0.901089) AND (t."X_40" <= 1.165455)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_66" <= 0.716127) AND (t."X_97" <= 1.000996) AND (t."X_38" > -1.027551) AND (t."X_88" <= 1.011642) AND (t."X_91" <= -0.901089) AND (t."X_40" > 1.165455)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_66" <= 0.716127) AND (t."X_97" <= 1.000996) AND (t."X_38" > -1.027551) AND (t."X_88" <= 1.011642) AND (t."X_91" > -0.901089) AND (t."X_60" > -0.029300)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_66" <= 0.716127) AND (t."X_97" <= 1.000996) AND (t."X_38" > -1.027551) AND (t."X_88" <= 1.011642) AND (t."X_91" > -0.901089) AND (t."X_60" <= -0.029300) AND (t."X_95" <= -0.297457)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_66" <= 0.716127) AND (t."X_97" <= 1.000996) AND (t."X_38" > -1.027551) AND (t."X_88" <= 1.011642) AND (t."X_91" > -0.901089) AND (t."X_60" <= -0.029300) AND (t."X_95" > -0.297457)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.156250 AS "P_1", 0.312500 AS "P_2", 0.343750 AS "P_3", 3 AS "D", 0.343750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.028571 AS "P_0", 0.257143 AS "P_1", 0.542857 AS "P_2", 0.171429 AS "P_3", 2 AS "D", 0.542857 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.379310 AS "P_0", 0.034483 AS "P_1", 0.034483 AS "P_2", 0.551724 AS "P_3", 3 AS "D", 0.551724 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.578947 AS "P_0", 0.052632 AS "P_1", 0.052632 AS "P_2", 0.315789 AS "P_3", 0 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.300000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.600000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.200000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.032258 AS "P_0", 0.161290 AS "P_1", 0.612903 AS "P_2", 0.193548 AS "P_3", 2 AS "D", 0.612903 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.857143 AS "P_3", 3 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.041667 AS "P_0", 0.208333 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.052632 AS "P_0", 0.052632 AS "P_1", 0.894737 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.058824 AS "P_1", 0.941176 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_79" <= -1.388367) AND (t."X_94" <= -0.719952) AND (t."X_97" <= 0.397410)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_79" <= -1.388367) AND (t."X_94" <= -0.719952) AND (t."X_97" > 0.397410)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_79" <= -1.388367) AND (t."X_94" > -0.719952) AND (t."X_99" <= 0.710904)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_79" <= -1.388367) AND (t."X_94" > -0.719952) AND (t."X_99" > 0.710904)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_79" > -1.388367) AND (t."X_47" > 1.576357)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_79" > -1.388367) AND (t."X_47" <= 1.576357) AND (t."X_97" > 0.039886) AND (t."X_98" > -0.741491) AND (t."X_91" <= -0.037191)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_79" > -1.388367) AND (t."X_47" <= 1.576357) AND (t."X_97" > 0.039886) AND (t."X_98" > -0.741491) AND (t."X_91" > -0.037191)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_79" > -1.388367) AND (t."X_47" <= 1.576357) AND (t."X_97" > 0.039886) AND (t."X_98" <= -0.741491) AND (t."X_59" <= 1.672199)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_79" > -1.388367) AND (t."X_47" <= 1.576357) AND (t."X_97" > 0.039886) AND (t."X_98" <= -0.741491) AND (t."X_59" > 1.672199)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_79" > -1.388367) AND (t."X_47" <= 1.576357) AND (t."X_97" <= 0.039886) AND (t."X_74" <= -0.833794) AND (t."X_95" <= 1.146471)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_79" > -1.388367) AND (t."X_47" <= 1.576357) AND (t."X_97" <= 0.039886) AND (t."X_74" <= -0.833794) AND (t."X_95" > 1.146471)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_79" > -1.388367) AND (t."X_47" <= 1.576357) AND (t."X_97" <= 0.039886) AND (t."X_74" > -0.833794) AND (t."X_91" > -0.359846)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_79" > -1.388367) AND (t."X_47" <= 1.576357) AND (t."X_97" <= 0.039886) AND (t."X_74" > -0.833794) AND (t."X_91" <= -0.359846) AND (t."X_59" > 0.011528)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_79" > -1.388367) AND (t."X_47" <= 1.576357) AND (t."X_97" <= 0.039886) AND (t."X_74" > -0.833794) AND (t."X_91" <= -0.359846) AND (t."X_59" <= 0.011528) AND (t."X_92" <= 0.492449)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_79" > -1.388367) AND (t."X_47" <= 1.576357) AND (t."X_97" <= 0.039886) AND (t."X_74" > -0.833794) AND (t."X_91" <= -0.359846) AND (t."X_59" <= 0.011528) AND (t."X_92" > 0.492449)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.234375 AS "P_0", 0.125000 AS "P_1", 0.343750 AS "P_2", 0.296875 AS "P_3", 2 AS "D", 0.343750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.181818 AS "P_1", 0.636364 AS "P_2", 0.181818 AS "P_3", 2 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.357143 AS "P_0", 0.095238 AS "P_1", 0.190476 AS "P_2", 0.357143 AS "P_3", 0 AS "D", 0.357143 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.428571 AS "P_1", 0.000000 AS "P_2", 0.571429 AS "P_3", 3 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.066667 AS "P_1", 0.933333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.270270 AS "P_0", 0.108108 AS "P_1", 0.216216 AS "P_2", 0.405405 AS "P_3", 3 AS "D", 0.405405 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.142857 AS "P_0", 0.047619 AS "P_1", 0.095238 AS "P_2", 0.714286 AS "P_3", 3 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.437500 AS "P_0", 0.187500 AS "P_1", 0.375000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.142857 AS "P_1", 0.857143 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.055556 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_7", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_66" <= -5.141452)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_66" > -5.141452) AND (t."X_97" > -0.047997) AND (t."X_97" > 1.069024) AND (t."X_99" <= 0.719161)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_66" > -5.141452) AND (t."X_97" > -0.047997) AND (t."X_97" > 1.069024) AND (t."X_99" > 0.719161)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_66" > -5.141452) AND (t."X_97" > -0.047997) AND (t."X_97" <= 1.069024) AND (t."X_44" > 0.399879) AND (t."X_92" > 0.050259)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_66" > -5.141452) AND (t."X_97" > -0.047997) AND (t."X_97" <= 1.069024) AND (t."X_44" > 0.399879) AND (t."X_92" <= 0.050259) AND (t."X_58" <= -0.102849)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_66" > -5.141452) AND (t."X_97" > -0.047997) AND (t."X_97" <= 1.069024) AND (t."X_44" > 0.399879) AND (t."X_92" <= 0.050259) AND (t."X_58" > -0.102849)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_66" > -5.141452) AND (t."X_97" <= -0.047997) AND (t."X_66" <= -1.373342) AND (t."X_97" <= -0.793868)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_66" > -5.141452) AND (t."X_97" <= -0.047997) AND (t."X_66" <= -1.373342) AND (t."X_97" > -0.793868) AND (t."X_99" <= 0.365804)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_66" > -5.141452) AND (t."X_97" <= -0.047997) AND (t."X_66" <= -1.373342) AND (t."X_97" > -0.793868) AND (t."X_99" > 0.365804)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_66" > -5.141452) AND (t."X_97" > -0.047997) AND (t."X_97" <= 1.069024) AND (t."X_44" <= 0.399879) AND (t."X_44" <= -1.599933)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_66" > -5.141452) AND (t."X_97" > -0.047997) AND (t."X_97" <= 1.069024) AND (t."X_44" <= 0.399879) AND (t."X_44" > -1.599933)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_66" > -5.141452) AND (t."X_97" <= -0.047997) AND (t."X_66" > -1.373342) AND (t."X_92" > 1.139524) AND (t."X_99" <= 0.119139)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_66" > -5.141452) AND (t."X_97" <= -0.047997) AND (t."X_66" > -1.373342) AND (t."X_92" > 1.139524) AND (t."X_99" > 0.119139)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_66" > -5.141452) AND (t."X_97" <= -0.047997) AND (t."X_66" > -1.373342) AND (t."X_92" <= 1.139524) AND (t."X_56" > 1.141103)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_66" > -5.141452) AND (t."X_97" <= -0.047997) AND (t."X_66" > -1.373342) AND (t."X_92" <= 1.139524) AND (t."X_56" <= 1.141103) AND (t."X_98" <= 2.004357)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_66" > -5.141452) AND (t."X_97" <= -0.047997) AND (t."X_66" > -1.373342) AND (t."X_92" <= 1.139524) AND (t."X_56" <= 1.141103) AND (t."X_98" > 2.004357)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 0 AS nid,  0.281250 AS "P_0", 0.140625 AS "P_1", 0.234375 AS "P_2", 0.343750 AS "P_3", 3 AS "D", 0.343750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.333333 AS "P_0", 0.166667 AS "P_1", 0.092593 AS "P_2", 0.407407 AS "P_3", 3 AS "D", 0.407407 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.137931 AS "P_0", 0.068966 AS "P_1", 0.103448 AS "P_2", 0.689655 AS "P_3", 3 AS "D", 0.689655 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.560000 AS "P_0", 0.280000 AS "P_1", 0.080000 AS "P_2", 0.080000 AS "P_3", 0 AS "D", 0.560000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.736842 AS "P_0", 0.105263 AS "P_1", 0.105263 AS "P_2", 0.052632 AS "P_3", 0 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.833333 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.933333 AS "P_0", 0.000000 AS "P_1", 0.066667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.600000 AS "P_0", 0.200000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.041667 AS "P_0", 0.041667 AS "P_1", 0.083333 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.090909 AS "P_2", 0.909091 AS "P_3", 3 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.047619 AS "P_2", 0.952381 AS "P_3", 3 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_46" <= 0.653621) AND (t."X_91" > 0.284884) AND (t."X_63" <= -0.354557)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_46" <= 0.653621) AND (t."X_91" > 0.284884) AND (t."X_63" > -0.354557) AND (t."X_99" <= -0.281927)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_46" <= 0.653621) AND (t."X_91" > 0.284884) AND (t."X_63" > -0.354557) AND (t."X_99" > -0.281927)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_46" > 0.653621) AND (t."X_25" <= -1.298937) AND (t."X_25" <= -1.712918)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_46" > 0.653621) AND (t."X_25" <= -1.298937) AND (t."X_25" > -1.712918)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_46" <= 0.653621) AND (t."X_91" <= 0.284884) AND (t."X_98" <= -1.492711)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_46" > 0.653621) AND (t."X_25" > -1.298937) AND (t."X_94" > 0.552887) AND (t."X_92" > -0.934594)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_46" > 0.653621) AND (t."X_25" > -1.298937) AND (t."X_94" > 0.552887) AND (t."X_92" <= -0.934594) AND (t."X_99" <= 0.040209)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_46" > 0.653621) AND (t."X_25" > -1.298937) AND (t."X_94" > 0.552887) AND (t."X_92" <= -0.934594) AND (t."X_99" > 0.040209)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_46" > 0.653621) AND (t."X_25" > -1.298937) AND (t."X_94" <= 0.552887) AND (t."X_63" <= 1.508422)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_46" > 0.653621) AND (t."X_25" > -1.298937) AND (t."X_94" <= 0.552887) AND (t."X_63" > 1.508422)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_46" <= 0.653621) AND (t."X_91" <= 0.284884) AND (t."X_98" > -1.492711) AND (t."X_87" <= 1.083287)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_46" <= 0.653621) AND (t."X_91" <= 0.284884) AND (t."X_98" > -1.492711) AND (t."X_87" > 1.083287) AND (t."X_76" <= -1.215297)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_46" <= 0.653621) AND (t."X_91" <= 0.284884) AND (t."X_98" > -1.492711) AND (t."X_87" > 1.083287) AND (t."X_76" > -1.215297)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.125000 AS "P_0", 0.125000 AS "P_1", 0.359375 AS "P_2", 0.390625 AS "P_3", 3 AS "D", 0.390625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.025641 AS "P_0", 0.153846 AS "P_1", 0.564103 AS "P_2", 0.256410 AS "P_3", 2 AS "D", 0.564103 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.280000 AS "P_0", 0.080000 AS "P_1", 0.040000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.076923 AS "P_1", 0.846154 AS "P_2", 0.076923 AS "P_3", 2 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.076923 AS "P_0", 0.307692 AS "P_1", 0.000000 AS "P_2", 0.615385 AS "P_3", 3 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.157895 AS "P_0", 0.000000 AS "P_1", 0.052632 AS "P_2", 0.789474 AS "P_3", 3 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.083333 AS "P_1", 0.916667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.066667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.933333 AS "P_3", 3 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_17", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_72" <= -0.405646) AND (t."X_98" > 0.326080) AND (t."X_64" > 0.052656)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_72" <= -0.405646) AND (t."X_98" > 0.326080) AND (t."X_64" <= 0.052656) AND (t."X_99" <= -1.347887)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_72" <= -0.405646) AND (t."X_98" > 0.326080) AND (t."X_64" <= 0.052656) AND (t."X_99" > -1.347887)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_72" <= -0.405646) AND (t."X_98" <= 0.326080) AND (t."X_99" <= -1.284048)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_72" <= -0.405646) AND (t."X_98" <= 0.326080) AND (t."X_99" > -1.284048)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_72" > -0.405646) AND (t."X_25" <= -1.197486)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_72" > -0.405646) AND (t."X_25" > -1.197486) AND (t."X_2" <= -1.230871)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_72" > -0.405646) AND (t."X_25" > -1.197486) AND (t."X_2" > -1.230871) AND (t."X_93" <= 0.083728) AND (t."X_38" <= -0.838669)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_72" > -0.405646) AND (t."X_25" > -1.197486) AND (t."X_2" > -1.230871) AND (t."X_93" <= 0.083728) AND (t."X_38" > -0.838669) AND (t."X_84" <= -0.994113) AND (t."X_99" <= 0.408060)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_72" > -0.405646) AND (t."X_25" > -1.197486) AND (t."X_2" > -1.230871) AND (t."X_93" <= 0.083728) AND (t."X_38" > -0.838669) AND (t."X_84" <= -0.994113) AND (t."X_99" > 0.408060)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_72" > -0.405646) AND (t."X_25" > -1.197486) AND (t."X_2" > -1.230871) AND (t."X_93" <= 0.083728) AND (t."X_38" > -0.838669) AND (t."X_84" > -0.994113) AND (t."X_38" > 1.156102)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_72" > -0.405646) AND (t."X_25" > -1.197486) AND (t."X_2" > -1.230871) AND (t."X_93" <= 0.083728) AND (t."X_38" > -0.838669) AND (t."X_84" > -0.994113) AND (t."X_38" <= 1.156102) AND (t."X_98" <= 0.631591)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_72" > -0.405646) AND (t."X_25" > -1.197486) AND (t."X_2" > -1.230871) AND (t."X_93" <= 0.083728) AND (t."X_38" > -0.838669) AND (t."X_84" > -0.994113) AND (t."X_38" <= 1.156102) AND (t."X_98" > 0.631591)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_72" > -0.405646) AND (t."X_25" > -1.197486) AND (t."X_2" > -1.230871) AND (t."X_93" > 0.083728) AND (t."X_94" <= 1.905408)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_72" > -0.405646) AND (t."X_25" > -1.197486) AND (t."X_2" > -1.230871) AND (t."X_93" > 0.083728) AND (t."X_94" > 1.905408)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.218750 AS "P_1", 0.296875 AS "P_2", 0.234375 AS "P_3", 2 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.583333 AS "P_0", 0.041667 AS "P_1", 0.291667 AS "P_2", 0.083333 AS "P_3", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.050000 AS "P_0", 0.325000 AS "P_1", 0.300000 AS "P_2", 0.325000 AS "P_3", 1 AS "D", 0.325000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.181818 AS "P_0", 0.000000 AS "P_1", 0.636364 AS "P_2", 0.181818 AS "P_3", 2 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.060606 AS "P_0", 0.181818 AS "P_1", 0.363636 AS "P_2", 0.393939 AS "P_3", 3 AS "D", 0.393939 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.074074 AS "P_0", 0.222222 AS "P_1", 0.222222 AS "P_2", 0.481481 AS "P_3", 3 AS "D", 0.481481 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.142857 AS "P_0", 0.428571 AS "P_1", 0.357143 AS "P_2", 0.071429 AS "P_3", 1 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.923077 AS "P_3", 3 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.222222 AS "P_0", 0.111111 AS "P_1", 0.555556 AS "P_2", 0.111111 AS "P_3", 2 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.142857 AS "P_0", 0.142857 AS "P_1", 0.714286 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.833333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_10", t1."Leaf_11", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_48" > 0.818738) AND (t."X_37" <= -0.688739)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_48" > 0.818738) AND (t."X_37" > -0.688739) AND (t."X_99" <= -0.518995)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_48" > 0.818738) AND (t."X_37" > -0.688739) AND (t."X_99" > -0.518995)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_48" <= 0.818738) AND (t."X_99" <= -0.100207) AND (t."X_78" > 0.799919)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_48" <= 0.818738) AND (t."X_99" <= -0.100207) AND (t."X_78" <= 0.799919) AND (t."X_25" <= 0.151464)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_48" <= 0.818738) AND (t."X_99" <= -0.100207) AND (t."X_78" <= 0.799919) AND (t."X_25" > 0.151464) AND (t."X_99" > -0.415481)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_48" <= 0.818738) AND (t."X_99" <= -0.100207) AND (t."X_78" <= 0.799919) AND (t."X_25" > 0.151464) AND (t."X_99" <= -0.415481) AND (t."X_70" <= -0.987719)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_48" <= 0.818738) AND (t."X_99" <= -0.100207) AND (t."X_78" <= 0.799919) AND (t."X_25" > 0.151464) AND (t."X_99" <= -0.415481) AND (t."X_70" > -0.987719)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_48" <= 0.818738) AND (t."X_99" > -0.100207) AND (t."X_95" > -0.337239) AND (t."X_70" > 0.275545)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_48" <= 0.818738) AND (t."X_99" > -0.100207) AND (t."X_95" > -0.337239) AND (t."X_70" <= 0.275545) AND (t."X_97" <= -0.965845)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_48" <= 0.818738) AND (t."X_99" > -0.100207) AND (t."X_95" > -0.337239) AND (t."X_70" <= 0.275545) AND (t."X_97" > -0.965845)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_48" <= 0.818738) AND (t."X_99" > -0.100207) AND (t."X_95" <= -0.337239) AND (t."X_94" <= -0.882645)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_48" <= 0.818738) AND (t."X_99" > -0.100207) AND (t."X_95" <= -0.337239) AND (t."X_94" > -0.882645) AND (t."X_48" <= 0.786031)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_48" <= 0.818738) AND (t."X_99" > -0.100207) AND (t."X_95" <= -0.337239) AND (t."X_94" > -0.882645) AND (t."X_48" > 0.786031)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.328125 AS "P_0", 0.171875 AS "P_1", 0.328125 AS "P_2", 0.171875 AS "P_3", 0 AS "D", 0.328125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.420000 AS "P_0", 0.220000 AS "P_1", 0.300000 AS "P_2", 0.060000 AS "P_3", 0 AS "D", 0.420000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.428571 AS "P_2", 0.571429 AS "P_3", 3 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.888889 AS "P_3", 3 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.400000 AS "P_0", 0.440000 AS "P_1", 0.080000 AS "P_2", 0.080000 AS "P_3", 1 AS "D", 0.440000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.440000 AS "P_0", 0.000000 AS "P_1", 0.520000 AS "P_2", 0.040000 AS "P_3", 2 AS "D", 0.520000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.555556 AS "P_0", 0.222222 AS "P_1", 0.111111 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.090909 AS "P_0", 0.000000 AS "P_1", 0.818182 AS "P_2", 0.090909 AS "P_3", 2 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.714286 AS "P_0", 0.000000 AS "P_1", 0.285714 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.909091 AS "P_0", 0.000000 AS "P_1", 0.090909 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.100000 AS "P_0", 0.000000 AS "P_1", 0.900000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" > 0.392668) AND (t."X_12" > 0.073461) AND (t."X_7" <= 0.557712)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" > 0.392668) AND (t."X_12" > 0.073461) AND (t."X_7" > 0.557712)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_20" > 0.392668) AND (t."X_12" <= 0.073461) AND (t."X_97" <= 1.069024)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" > 0.392668) AND (t."X_12" <= 0.073461) AND (t."X_97" > 1.069024)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_20" <= 0.392668) AND (t."X_94" <= -1.352091)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" <= 0.392668) AND (t."X_94" > -1.352091) AND (t."X_90" > 1.038483)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" <= 0.392668) AND (t."X_94" > -1.352091) AND (t."X_90" <= 1.038483) AND (t."X_49" > 1.622648) AND (t."X_12" <= -0.061138)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" <= 0.392668) AND (t."X_94" > -1.352091) AND (t."X_90" <= 1.038483) AND (t."X_49" > 1.622648) AND (t."X_12" > -0.061138) AND (t."X_99" <= 1.167840)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_20" <= 0.392668) AND (t."X_94" > -1.352091) AND (t."X_90" <= 1.038483) AND (t."X_49" > 1.622648) AND (t."X_12" > -0.061138) AND (t."X_99" > 1.167840)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_20" <= 0.392668) AND (t."X_94" > -1.352091) AND (t."X_90" <= 1.038483) AND (t."X_49" <= 1.622648) AND (t."X_94" <= -1.215936)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_20" <= 0.392668) AND (t."X_94" > -1.352091) AND (t."X_90" <= 1.038483) AND (t."X_49" <= 1.622648) AND (t."X_94" > -1.215936) AND (t."X_41" <= -1.504705)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_20" <= 0.392668) AND (t."X_94" > -1.352091) AND (t."X_90" <= 1.038483) AND (t."X_49" <= 1.622648) AND (t."X_94" > -1.215936) AND (t."X_41" > -1.504705) AND (t."X_94" <= 1.196757)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" <= 0.392668) AND (t."X_94" > -1.352091) AND (t."X_90" <= 1.038483) AND (t."X_49" <= 1.622648) AND (t."X_94" > -1.215936) AND (t."X_41" > -1.504705) AND (t."X_94" > 1.196757) AND (t."X_12" <= -0.553051)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_20" <= 0.392668) AND (t."X_94" > -1.352091) AND (t."X_90" <= 1.038483) AND (t."X_49" <= 1.622648) AND (t."X_94" > -1.215936) AND (t."X_41" > -1.504705) AND (t."X_94" > 1.196757) AND (t."X_12" > -0.553051)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.187500 AS "P_1", 0.187500 AS "P_2", 0.312500 AS "P_3", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.100000 AS "P_0", 0.175000 AS "P_1", 0.225000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.666667 AS "P_0", 0.208333 AS "P_1", 0.125000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.117647 AS "P_0", 0.029412 AS "P_1", 0.264706 AS "P_2", 0.588235 AS "P_3", 3 AS "D", 0.588235 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.137931 AS "P_0", 0.034483 AS "P_1", 0.137931 AS "P_2", 0.689655 AS "P_3", 3 AS "D", 0.689655 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.120000 AS "P_0", 0.000000 AS "P_1", 0.080000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.250000 AS "P_0", 0.250000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.130435 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.869565 AS "P_3", 3 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.047619 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.952381 AS "P_3", 3 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_93" > 0.646607) AND (t."X_66" <= -5.858720)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_93" > 0.646607) AND (t."X_66" > -5.858720)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_93" <= 0.646607) AND (t."X_92" > -0.868581) AND (t."X_35" <= -2.280635)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_93" <= 0.646607) AND (t."X_92" > -0.868581) AND (t."X_35" > -2.280635) AND (t."X_99" > -0.191714) AND (t."X_97" > -0.076506) AND (t."X_93" <= -0.602133)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_93" <= 0.646607) AND (t."X_92" > -0.868581) AND (t."X_35" > -2.280635) AND (t."X_99" > -0.191714) AND (t."X_97" > -0.076506) AND (t."X_93" > -0.602133)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_93" <= 0.646607) AND (t."X_92" > -0.868581) AND (t."X_35" > -2.280635) AND (t."X_99" > -0.191714) AND (t."X_97" <= -0.076506) AND (t."X_8" <= 1.075283)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_93" <= 0.646607) AND (t."X_92" > -0.868581) AND (t."X_35" > -2.280635) AND (t."X_99" > -0.191714) AND (t."X_97" <= -0.076506) AND (t."X_8" > 1.075283)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_93" <= 0.646607) AND (t."X_92" > -0.868581) AND (t."X_35" > -2.280635) AND (t."X_99" <= -0.191714) AND (t."X_93" <= -0.457533)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_93" <= 0.646607) AND (t."X_92" > -0.868581) AND (t."X_35" > -2.280635) AND (t."X_99" <= -0.191714) AND (t."X_93" > -0.457533) AND (t."X_3" <= -1.105416)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_93" <= 0.646607) AND (t."X_92" > -0.868581) AND (t."X_35" > -2.280635) AND (t."X_99" <= -0.191714) AND (t."X_93" > -0.457533) AND (t."X_3" > -1.105416)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_93" <= 0.646607) AND (t."X_92" <= -0.868581) AND (t."X_95" <= -0.111575)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_93" <= 0.646607) AND (t."X_92" <= -0.868581) AND (t."X_95" > -0.111575) AND (t."X_99" <= -0.407732)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_93" <= 0.646607) AND (t."X_92" <= -0.868581) AND (t."X_95" > -0.111575) AND (t."X_99" > -0.407732)) THEN 24 ELSE NULL END AS "Leaf_24"
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
    SELECT 0 AS nid,  0.265625 AS "P_0", 0.140625 AS "P_1", 0.234375 AS "P_2", 0.359375 AS "P_3", 3 AS "D", 0.359375 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.333333 AS "P_0", 0.176471 AS "P_1", 0.274510 AS "P_2", 0.215686 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.923077 AS "P_3", 3 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.900000 AS "P_2", 0.100000 AS "P_3", 2 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.414634 AS "P_0", 0.219512 AS "P_1", 0.121951 AS "P_2", 0.243902 AS "P_3", 0 AS "D", 0.414634 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.472222 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.277778 AS "P_3", 0 AS "D", 0.472222 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.800000 AS "P_0", 0.133333 AS "P_1", 0.000000 AS "P_2", 0.066667 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.238095 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.428571 AS "P_3", 3 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.181818 AS "P_1", 0.000000 AS "P_2", 0.818182 AS "P_3", 3 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.923077 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.076923 AS "P_3", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_52" > 0.467101) AND (t."X_52" > 0.950373) AND (t."X_53" <= 0.906673)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_52" > 0.467101) AND (t."X_52" > 0.950373) AND (t."X_53" > 0.906673)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_52" <= 0.467101) AND (t."X_97" <= -0.083897) AND (t."X_94" > 0.384100) AND (t."X_29" > 0.159581)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_52" <= 0.467101) AND (t."X_97" <= -0.083897) AND (t."X_94" > 0.384100) AND (t."X_29" <= 0.159581) AND (t."X_94" <= 0.687870)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_52" <= 0.467101) AND (t."X_97" <= -0.083897) AND (t."X_94" > 0.384100) AND (t."X_29" <= 0.159581) AND (t."X_94" > 0.687870) AND (t."X_67" <= 1.319064)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_52" <= 0.467101) AND (t."X_97" <= -0.083897) AND (t."X_94" > 0.384100) AND (t."X_29" <= 0.159581) AND (t."X_94" > 0.687870) AND (t."X_67" > 1.319064)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_52" <= 0.467101) AND (t."X_97" <= -0.083897) AND (t."X_94" <= 0.384100) AND (t."X_94" <= -1.302346)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_52" <= 0.467101) AND (t."X_97" > -0.083897) AND (t."X_15" > 1.018123) AND (t."X_95" <= 0.346618)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_52" <= 0.467101) AND (t."X_97" > -0.083897) AND (t."X_15" > 1.018123) AND (t."X_95" > 0.346618)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_52" <= 0.467101) AND (t."X_97" <= -0.083897) AND (t."X_94" <= 0.384100) AND (t."X_94" > -1.302346) AND (t."X_98" <= 2.004357)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_52" <= 0.467101) AND (t."X_97" <= -0.083897) AND (t."X_94" <= 0.384100) AND (t."X_94" > -1.302346) AND (t."X_98" > 2.004357)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_52" > 0.467101) AND (t."X_52" <= 0.950373) AND (t."X_97" <= -0.781261)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_52" > 0.467101) AND (t."X_52" <= 0.950373) AND (t."X_97" > -0.781261) AND (t."X_82" <= -0.661724)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_52" > 0.467101) AND (t."X_52" <= 0.950373) AND (t."X_97" > -0.781261) AND (t."X_82" > -0.661724)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_52" <= 0.467101) AND (t."X_97" > -0.083897) AND (t."X_15" <= 1.018123) AND (t."X_29" <= 0.780877)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_52" <= 0.467101) AND (t."X_97" > -0.083897) AND (t."X_15" <= 1.018123) AND (t."X_29" > 0.780877)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 0 AS nid,  0.359375 AS "P_0", 0.078125 AS "P_1", 0.281250 AS "P_2", 0.281250 AS "P_3", 0 AS "D", 0.359375 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.488889 AS "P_0", 0.044444 AS "P_1", 0.133333 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.488889 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.052632 AS "P_0", 0.157895 AS "P_1", 0.631579 AS "P_2", 0.157895 AS "P_3", 2 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.071429 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.071429 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.600000 AS "P_1", 0.000000 AS "P_2", 0.400000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.240000 AS "P_0", 0.080000 AS "P_1", 0.120000 AS "P_2", 0.560000 AS "P_3", 3 AS "D", 0.560000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.150000 AS "P_2", 0.050000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.125000 AS "P_1", 0.062500 AS "P_2", 0.812500 AS "P_3", 3 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.222222 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.071429 AS "P_2", 0.928571 AS "P_3", 3 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.937500 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.062500 AS "P_3", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.923077 AS "P_2", 0.076923 AS "P_3", 2 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_46" > 0.578388) AND (t."X_8" <= -0.626147) AND (t."X_97" <= -0.265875)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_46" > 0.578388) AND (t."X_8" <= -0.626147) AND (t."X_97" > -0.265875)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_46" <= 0.578388) AND (t."X_97" > 0.990323) AND (t."X_46" <= -1.116965)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_46" <= 0.578388) AND (t."X_97" > 0.990323) AND (t."X_46" > -1.116965)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_46" <= 0.578388) AND (t."X_97" <= 0.990323) AND (t."X_95" > 0.663148) AND (t."X_46" <= -0.434716)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_46" <= 0.578388) AND (t."X_97" <= 0.990323) AND (t."X_95" > 0.663148) AND (t."X_46" > -0.434716)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_46" > 0.578388) AND (t."X_8" > -0.626147) AND (t."X_57" > 0.148934) AND (t."X_8" > -0.098467)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_46" > 0.578388) AND (t."X_8" > -0.626147) AND (t."X_57" > 0.148934) AND (t."X_8" <= -0.098467) AND (t."X_99" > 1.328103)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_46" > 0.578388) AND (t."X_8" > -0.626147) AND (t."X_57" > 0.148934) AND (t."X_8" <= -0.098467) AND (t."X_99" <= 1.328103) AND (t."X_46" <= 2.408813)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_46" > 0.578388) AND (t."X_8" > -0.626147) AND (t."X_57" > 0.148934) AND (t."X_8" <= -0.098467) AND (t."X_99" <= 1.328103) AND (t."X_46" > 2.408813)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_46" > 0.578388) AND (t."X_8" > -0.626147) AND (t."X_57" <= 0.148934) AND (t."X_97" > -0.772529)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_46" > 0.578388) AND (t."X_8" > -0.626147) AND (t."X_57" <= 0.148934) AND (t."X_97" <= -0.772529) AND (t."X_99" <= -0.737853)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_46" > 0.578388) AND (t."X_8" > -0.626147) AND (t."X_57" <= 0.148934) AND (t."X_97" <= -0.772529) AND (t."X_99" > -0.737853)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_46" <= 0.578388) AND (t."X_97" <= 0.990323) AND (t."X_95" <= 0.663148) AND (t."X_93" > 1.200178)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_46" <= 0.578388) AND (t."X_97" <= 0.990323) AND (t."X_95" <= 0.663148) AND (t."X_93" <= 1.200178) AND (t."X_33" <= -0.469258)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_46" <= 0.578388) AND (t."X_97" <= 0.990323) AND (t."X_95" <= 0.663148) AND (t."X_93" <= 1.200178) AND (t."X_33" > -0.469258) AND (t."X_91" > -0.901089)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_46" <= 0.578388) AND (t."X_97" <= 0.990323) AND (t."X_95" <= 0.663148) AND (t."X_93" <= 1.200178) AND (t."X_33" > -0.469258) AND (t."X_91" <= -0.901089) AND (t."X_46" <= 0.200263)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_46" <= 0.578388) AND (t."X_97" <= 0.990323) AND (t."X_95" <= 0.663148) AND (t."X_93" <= 1.200178) AND (t."X_33" > -0.469258) AND (t."X_91" <= -0.901089) AND (t."X_46" > 0.200263)) THEN 34 ELSE NULL END AS "Leaf_34"
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
    SELECT 0 AS nid,  0.265625 AS "P_0", 0.093750 AS "P_1", 0.265625 AS "P_2", 0.375000 AS "P_3", 3 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.115385 AS "P_0", 0.153846 AS "P_1", 0.615385 AS "P_2", 0.115385 AS "P_3", 2 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.368421 AS "P_0", 0.052632 AS "P_1", 0.026316 AS "P_2", 0.552632 AS "P_3", 3 AS "D", 0.552632 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.233333 AS "P_0", 0.033333 AS "P_1", 0.033333 AS "P_2", 0.700000 AS "P_3", 3 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.714286 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.111111 AS "P_0", 0.000000 AS "P_1", 0.833333 AS "P_2", 0.055556 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.100000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.900000 AS "P_3", 3 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.100000 AS "P_1", 0.100000 AS "P_2", 0.300000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.200000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.058824 AS "P_0", 0.000000 AS "P_1", 0.882353 AS "P_2", 0.058824 AS "P_3", 2 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.062500 AS "P_0", 0.000000 AS "P_1", 0.937500 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
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
    MAX( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Max_Score"
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