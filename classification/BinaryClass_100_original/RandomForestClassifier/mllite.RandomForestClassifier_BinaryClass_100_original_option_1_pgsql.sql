WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_91" > 1.783512) AND (t."X_86" <= 0.070762)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_91" > 1.783512) AND (t."X_86" > 0.070762)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_91" <= 1.783512) AND (t."X_92" > 1.637666) AND (t."X_51" <= 0.112483)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_91" <= 1.783512) AND (t."X_92" > 1.637666) AND (t."X_51" > 0.112483)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_91" <= 1.783512) AND (t."X_92" <= 1.637666) AND (t."X_98" <= -1.550590) AND (t."X_93" <= -0.355108)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_91" <= 1.783512) AND (t."X_92" <= 1.637666) AND (t."X_98" <= -1.550590) AND (t."X_93" > -0.355108)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_91" <= 1.783512) AND (t."X_92" <= 1.637666) AND (t."X_98" > -1.550590) AND (t."X_85" > 0.641803) AND (t."X_93" > 0.639105) AND (t."X_93" <= 0.902282)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_91" <= 1.783512) AND (t."X_92" <= 1.637666) AND (t."X_98" > -1.550590) AND (t."X_85" > 0.641803) AND (t."X_93" > 0.639105) AND (t."X_93" > 0.902282)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_91" <= 1.783512) AND (t."X_92" <= 1.637666) AND (t."X_98" > -1.550590) AND (t."X_85" > 0.641803) AND (t."X_93" <= 0.639105) AND (t."X_96" <= 1.165766)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_91" <= 1.783512) AND (t."X_92" <= 1.637666) AND (t."X_98" > -1.550590) AND (t."X_85" > 0.641803) AND (t."X_93" <= 0.639105) AND (t."X_96" > 1.165766)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_91" <= 1.783512) AND (t."X_92" <= 1.637666) AND (t."X_98" > -1.550590) AND (t."X_85" <= 0.641803) AND (t."X_95" > 1.010342) AND (t."X_91" <= -0.555726)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_91" <= 1.783512) AND (t."X_92" <= 1.637666) AND (t."X_98" > -1.550590) AND (t."X_85" <= 0.641803) AND (t."X_95" > 1.010342) AND (t."X_91" > -0.555726)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_91" <= 1.783512) AND (t."X_92" <= 1.637666) AND (t."X_98" > -1.550590) AND (t."X_85" <= 0.641803) AND (t."X_95" <= 1.010342) AND (t."X_91" <= 0.356225)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_91" <= 1.783512) AND (t."X_92" <= 1.637666) AND (t."X_98" > -1.550590) AND (t."X_85" <= 0.641803) AND (t."X_95" <= 1.010342) AND (t."X_91" > 0.356225)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.515625 AS "P_0", 0.484375 AS "P_1", 0 AS "D", 0.515625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.531027 AS "P_0", 0.468973 AS "P_1", 0 AS "D", 0.531027 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.146341 AS "P_0", 0.853659 AS "P_1", 1 AS "D", 0.853659 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.548180 AS "P_0", 0.451820 AS "P_1", 0 AS "D", 0.548180 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.204082 AS "P_0", 0.795918 AS "P_1", 1 AS "D", 0.795918 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.040000 AS "P_0", 0.960000 AS "P_1", 1 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.564920 AS "P_0", 0.435080 AS "P_1", 0 AS "D", 0.564920 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.604863 AS "P_0", 0.395137 AS "P_1", 0 AS "D", 0.604863 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.445455 AS "P_0", 0.554545 AS "P_1", 1 AS "D", 0.554545 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.514970 AS "P_0", 0.485030 AS "P_1", 0 AS "D", 0.514970 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.226415 AS "P_0", 0.773585 AS "P_1", 1 AS "D", 0.773585 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.387097 AS "P_0", 0.612903 AS "P_1", 1 AS "D", 0.612903 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.580882 AS "P_0", 0.419118 AS "P_1", 0 AS "D", 0.580882 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.225806 AS "P_0", 0.774194 AS "P_1", 1 AS "D", 0.774194 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.558712 AS "P_0", 0.441288 AS "P_1", 0 AS "D", 0.558712 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.792308 AS "P_0", 0.207692 AS "P_1", 0 AS "D", 0.792308 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.938776 AS "P_0", 0.061224 AS "P_1", 0 AS "D", 0.938776 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.703704 AS "P_0", 0.296296 AS "P_1", 0 AS "D", 0.703704 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.627507 AS "P_0", 0.372493 AS "P_1", 0 AS "D", 0.627507 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.424581 AS "P_0", 0.575419 AS "P_1", 1 AS "D", 0.575419 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_27", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_78" <= -1.499241) AND (t."X_96" <= 0.046553)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_78" <= -1.499241) AND (t."X_96" > 0.046553)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" <= -0.108927) AND (t."X_93" <= -1.523024)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" <= -0.108927) AND (t."X_93" > -1.523024) AND (t."X_92" > 0.680249) AND (t."X_25" > -0.297293) AND (t."X_94" <= 0.592360)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" <= -0.108927) AND (t."X_93" > -1.523024) AND (t."X_92" > 0.680249) AND (t."X_25" > -0.297293) AND (t."X_94" > 0.592360)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" <= -0.108927) AND (t."X_93" > -1.523024) AND (t."X_92" > 0.680249) AND (t."X_25" <= -0.297293) AND (t."X_50" <= 0.561270)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" <= -0.108927) AND (t."X_93" > -1.523024) AND (t."X_92" > 0.680249) AND (t."X_25" <= -0.297293) AND (t."X_50" > 0.561270)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" <= -0.108927) AND (t."X_93" > -1.523024) AND (t."X_92" <= 0.680249) AND (t."X_52" > -0.875697) AND (t."X_91" <= -0.531201)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" <= -0.108927) AND (t."X_93" > -1.523024) AND (t."X_92" <= 0.680249) AND (t."X_52" > -0.875697) AND (t."X_91" > -0.531201)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" <= -0.108927) AND (t."X_93" > -1.523024) AND (t."X_92" <= 0.680249) AND (t."X_52" <= -0.875697) AND (t."X_50" <= -0.040478)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" <= -0.108927) AND (t."X_93" > -1.523024) AND (t."X_92" <= 0.680249) AND (t."X_52" <= -0.875697) AND (t."X_50" > -0.040478)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" > -0.108927) AND (t."X_8" > -0.001447) AND (t."X_98" <= -0.384168) AND (t."X_22" <= -0.220425)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" > -0.108927) AND (t."X_8" > -0.001447) AND (t."X_98" > -0.384168) AND (t."X_97" > 0.124931) AND (t."X_22" <= 0.011299)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" > -0.108927) AND (t."X_8" > -0.001447) AND (t."X_98" > -0.384168) AND (t."X_97" > 0.124931) AND (t."X_22" > 0.011299)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" > -0.108927) AND (t."X_8" > -0.001447) AND (t."X_98" > -0.384168) AND (t."X_97" <= 0.124931) AND (t."X_96" <= 0.306506)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" > -0.108927) AND (t."X_8" > -0.001447) AND (t."X_98" > -0.384168) AND (t."X_97" <= 0.124931) AND (t."X_96" > 0.306506)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" > -0.108927) AND (t."X_8" <= -0.001447) AND (t."X_25" <= -1.053432)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" > -0.108927) AND (t."X_8" <= -0.001447) AND (t."X_25" > -1.053432) AND (t."X_90" <= -0.926717)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" > -0.108927) AND (t."X_8" <= -0.001447) AND (t."X_25" > -1.053432) AND (t."X_90" > -0.926717) AND (t."X_92" <= -0.100911)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" > -0.108927) AND (t."X_8" <= -0.001447) AND (t."X_25" > -1.053432) AND (t."X_90" > -0.926717) AND (t."X_92" > -0.100911)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" > -0.108927) AND (t."X_8" > -0.001447) AND (t."X_98" <= -0.384168) AND (t."X_22" > -0.220425) AND (t."X_22" <= 0.400817)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_78" > -1.499241) AND (t."X_52" > -0.108927) AND (t."X_8" > -0.001447) AND (t."X_98" <= -0.384168) AND (t."X_22" > -0.220425) AND (t."X_22" > 0.400817)) THEN 42 ELSE NULL END AS "Leaf_42"
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
    SELECT 0 AS nid,  0.521484 AS "P_0", 0.478516 AS "P_1", 0 AS "D", 0.521484 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.289855 AS "P_0", 0.710145 AS "P_1", 1 AS "D", 0.710145 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.538220 AS "P_0", 0.461780 AS "P_1", 0 AS "D", 0.538220 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.464126 AS "P_0", 0.535874 AS "P_1", 1 AS "D", 0.535874 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.603143 AS "P_0", 0.396857 AS "P_1", 0 AS "D", 0.603143 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.047619 AS "P_0", 0.952381 AS "P_1", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.484706 AS "P_0", 0.515294 AS "P_1", 1 AS "D", 0.515294 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.549383 AS "P_0", 0.450617 AS "P_1", 0 AS "D", 0.549383 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.277228 AS "P_0", 0.722772 AS "P_1", 1 AS "D", 0.722772 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.116279 AS "P_0", 0.883721 AS "P_1", 1 AS "D", 0.883721 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.396552 AS "P_0", 0.603448 AS "P_1", 1 AS "D", 0.603448 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.136364 AS "P_0", 0.863636 AS "P_1", 1 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.654930 AS "P_0", 0.345070 AS "P_1", 0 AS "D", 0.654930 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.467033 AS "P_0", 0.532967 AS "P_1", 1 AS "D", 0.532967 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.656250 AS "P_0", 0.343750 AS "P_1", 0 AS "D", 0.656250 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.364407 AS "P_0", 0.635593 AS "P_1", 1 AS "D", 0.635593 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.783784 AS "P_0", 0.216216 AS "P_1", 0 AS "D", 0.783784 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.514706 AS "P_0", 0.485294 AS "P_1", 0 AS "D", 0.514706 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.679715 AS "P_0", 0.320285 AS "P_1", 0 AS "D", 0.679715 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.508772 AS "P_0", 0.491228 AS "P_1", 0 AS "D", 0.508772 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.712329 AS "P_0", 0.287671 AS "P_1", 0 AS "D", 0.712329 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.412903 AS "P_0", 0.587097 AS "P_1", 1 AS "D", 0.587097 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.531250 AS "P_0", 0.468750 AS "P_1", 0 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.853659 AS "P_0", 0.146341 AS "P_1", 0 AS "D", 0.853659 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.533333 AS "P_0", 0.466667 AS "P_1", 0 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.246154 AS "P_0", 0.753846 AS "P_1", 1 AS "D", 0.753846 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.521739 AS "P_0", 0.478261 AS "P_1", 0 AS "D", 0.521739 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.095238 AS "P_0", 0.904762 AS "P_1", 1 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.370370 AS "P_0", 0.629630 AS "P_1", 1 AS "D", 0.629630 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.384615 AS "P_0", 0.615385 AS "P_1", 1 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.459459 AS "P_0", 0.540541 AS "P_1", 1 AS "D", 0.540541 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.775610 AS "P_0", 0.224390 AS "P_1", 0 AS "D", 0.775610 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.676190 AS "P_0", 0.323810 AS "P_1", 0 AS "D", 0.676190 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.880000 AS "P_0", 0.120000 AS "P_1", 0 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_67" <= 1.117746) AND (t."X_95" > 1.884493) AND (t."X_75" <= 0.540630)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_67" <= 1.117746) AND (t."X_95" > 1.884493) AND (t."X_75" > 0.540630)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_67" <= 1.117746) AND (t."X_95" <= 1.884493) AND (t."X_95" > 1.497088) AND (t."X_80" <= 0.092519)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_67" <= 1.117746) AND (t."X_95" <= 1.884493) AND (t."X_95" > 1.497088) AND (t."X_80" > 0.092519)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_67" <= 1.117746) AND (t."X_95" <= 1.884493) AND (t."X_95" <= 1.497088) AND (t."X_91" > 0.566667) AND (t."X_67" > 0.927045) AND (t."X_18" <= -0.378236)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_67" <= 1.117746) AND (t."X_95" <= 1.884493) AND (t."X_95" <= 1.497088) AND (t."X_91" > 0.566667) AND (t."X_67" > 0.927045) AND (t."X_18" > -0.378236)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_67" <= 1.117746) AND (t."X_95" <= 1.884493) AND (t."X_95" <= 1.497088) AND (t."X_91" > 0.566667) AND (t."X_67" <= 0.927045) AND (t."X_99" <= -0.020539)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_67" <= 1.117746) AND (t."X_95" <= 1.884493) AND (t."X_95" <= 1.497088) AND (t."X_91" > 0.566667) AND (t."X_67" <= 0.927045) AND (t."X_99" > -0.020539)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_67" <= 1.117746) AND (t."X_95" <= 1.884493) AND (t."X_95" <= 1.497088) AND (t."X_91" <= 0.566667) AND (t."X_91" > 0.320018) AND (t."X_67" <= 0.889927)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_67" <= 1.117746) AND (t."X_95" <= 1.884493) AND (t."X_95" <= 1.497088) AND (t."X_91" <= 0.566667) AND (t."X_91" > 0.320018) AND (t."X_67" > 0.889927)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_67" <= 1.117746) AND (t."X_95" <= 1.884493) AND (t."X_95" <= 1.497088) AND (t."X_91" <= 0.566667) AND (t."X_91" <= 0.320018) AND (t."X_98" <= 0.186750)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_67" <= 1.117746) AND (t."X_95" <= 1.884493) AND (t."X_95" <= 1.497088) AND (t."X_91" <= 0.566667) AND (t."X_91" <= 0.320018) AND (t."X_98" > 0.186750)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_67" > 1.117746) AND (t."X_69" <= -0.732459)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_67" > 1.117746) AND (t."X_69" > -0.732459)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.528320 AS "P_0", 0.471680 AS "P_1", 0 AS "D", 0.528320 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.484459 AS "P_0", 0.515541 AS "P_1", 1 AS "D", 0.515541 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.978022 AS "P_0", 0.021978 AS "P_1", 0 AS "D", 0.978022 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.470588 AS "P_0", 0.529412 AS "P_1", 1 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.734694 AS "P_0", 0.265306 AS "P_1", 0 AS "D", 0.734694 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.476190 AS "P_0", 0.523810 AS "P_1", 1 AS "D", 0.523810 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.486358 AS "P_0", 0.513642 AS "P_1", 1 AS "D", 0.513642 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.146341 AS "P_0", 0.853659 AS "P_1", 1 AS "D", 0.853659 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.521886 AS "P_0", 0.478114 AS "P_1", 0 AS "D", 0.521886 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.401606 AS "P_0", 0.598394 AS "P_1", 1 AS "D", 0.598394 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.105263 AS "P_0", 0.894737 AS "P_1", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.369048 AS "P_0", 0.630952 AS "P_1", 1 AS "D", 0.630952 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.490157 AS "P_0", 0.509843 AS "P_1", 1 AS "D", 0.509843 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.709302 AS "P_0", 0.290698 AS "P_1", 0 AS "D", 0.709302 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.430034 AS "P_0", 0.569966 AS "P_1", 1 AS "D", 0.569966 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.572093 AS "P_0", 0.427907 AS "P_1", 0 AS "D", 0.572093 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_91" > 0.583475) AND (t."X_8" > 0.880975) AND (t."X_99" <= -0.085895)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_91" > 0.583475) AND (t."X_8" > 0.880975) AND (t."X_99" > -0.085895)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_91" > 0.583475) AND (t."X_8" <= 0.880975) AND (t."X_93" <= -0.982704) AND (t."X_90" <= -0.530744)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_91" > 0.583475) AND (t."X_8" <= 0.880975) AND (t."X_93" <= -0.982704) AND (t."X_90" > -0.530744)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_91" > 0.583475) AND (t."X_8" <= 0.880975) AND (t."X_93" > -0.982704) AND (t."X_57" > -0.985920) AND (t."X_11" <= -0.875217)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_91" > 0.583475) AND (t."X_8" <= 0.880975) AND (t."X_93" > -0.982704) AND (t."X_57" > -0.985920) AND (t."X_11" > -0.875217) AND (t."X_97" <= -0.290541)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_91" > 0.583475) AND (t."X_8" <= 0.880975) AND (t."X_93" > -0.982704) AND (t."X_57" > -0.985920) AND (t."X_11" > -0.875217) AND (t."X_97" > -0.290541)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_91" <= 0.583475) AND (t."X_99" > 2.235927)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_91" <= 0.583475) AND (t."X_99" <= 2.235927) AND (t."X_8" > 1.019055) AND (t."X_33" > 0.883821)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_91" <= 0.583475) AND (t."X_99" <= 2.235927) AND (t."X_8" > 1.019055) AND (t."X_33" <= 0.883821) AND (t."X_93" > 0.227070)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_91" <= 0.583475) AND (t."X_99" <= 2.235927) AND (t."X_8" > 1.019055) AND (t."X_33" <= 0.883821) AND (t."X_93" <= 0.227070) AND (t."X_99" <= 0.589459)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_91" <= 0.583475) AND (t."X_99" <= 2.235927) AND (t."X_8" > 1.019055) AND (t."X_33" <= 0.883821) AND (t."X_93" <= 0.227070) AND (t."X_99" > 0.589459)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_91" > 0.583475) AND (t."X_8" <= 0.880975) AND (t."X_93" > -0.982704) AND (t."X_57" <= -0.985920) AND (t."X_98" <= 0.021462)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_91" > 0.583475) AND (t."X_8" <= 0.880975) AND (t."X_93" > -0.982704) AND (t."X_57" <= -0.985920) AND (t."X_98" > 0.021462)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_91" <= 0.583475) AND (t."X_99" <= 2.235927) AND (t."X_8" <= 1.019055) AND (t."X_92" <= -0.602680) AND (t."X_48" > -0.241375) AND (t."X_48" <= 0.392767)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_91" <= 0.583475) AND (t."X_99" <= 2.235927) AND (t."X_8" <= 1.019055) AND (t."X_92" <= -0.602680) AND (t."X_48" > -0.241375) AND (t."X_48" > 0.392767)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_91" <= 0.583475) AND (t."X_99" <= 2.235927) AND (t."X_8" <= 1.019055) AND (t."X_92" <= -0.602680) AND (t."X_48" <= -0.241375) AND (t."X_95" <= -0.623736)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_91" <= 0.583475) AND (t."X_99" <= 2.235927) AND (t."X_8" <= 1.019055) AND (t."X_92" <= -0.602680) AND (t."X_48" <= -0.241375) AND (t."X_95" > -0.623736)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_91" <= 0.583475) AND (t."X_99" <= 2.235927) AND (t."X_8" <= 1.019055) AND (t."X_92" > -0.602680) AND (t."X_11" > 1.499975)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_91" <= 0.583475) AND (t."X_99" <= 2.235927) AND (t."X_8" <= 1.019055) AND (t."X_92" > -0.602680) AND (t."X_11" <= 1.499975) AND (t."X_48" <= -0.755027)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_91" <= 0.583475) AND (t."X_99" <= 2.235927) AND (t."X_8" <= 1.019055) AND (t."X_92" > -0.602680) AND (t."X_11" <= 1.499975) AND (t."X_48" > -0.755027)) THEN 40 ELSE NULL END AS "Leaf_40"
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
    SELECT 0 AS nid,  0.502930 AS "P_0", 0.497070 AS "P_1", 0 AS "D", 0.502930 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.548252 AS "P_0", 0.451748 AS "P_1", 0 AS "D", 0.548252 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.398058 AS "P_0", 0.601942 AS "P_1", 1 AS "D", 0.601942 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.352713 AS "P_0", 0.647287 AS "P_1", 1 AS "D", 0.647287 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.627451 AS "P_0", 0.372549 AS "P_1", 0 AS "D", 0.627451 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.150943 AS "P_0", 0.849057 AS "P_1", 1 AS "D", 0.849057 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.404878 AS "P_0", 0.595122 AS "P_1", 1 AS "D", 0.595122 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.258065 AS "P_0", 0.741935 AS "P_1", 1 AS "D", 0.741935 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.351515 AS "P_0", 0.648485 AS "P_1", 1 AS "D", 0.648485 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.552632 AS "P_0", 0.447368 AS "P_1", 0 AS "D", 0.552632 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.291339 AS "P_0", 0.708661 AS "P_1", 1 AS "D", 0.708661 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.511628 AS "P_0", 0.488372 AS "P_1", 0 AS "D", 0.511628 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.178571 AS "P_0", 0.821429 AS "P_1", 1 AS "D", 0.821429 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.564140 AS "P_0", 0.435860 AS "P_1", 0 AS "D", 0.564140 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.172414 AS "P_0", 0.827586 AS "P_1", 1 AS "D", 0.827586 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.367925 AS "P_0", 0.632075 AS "P_1", 1 AS "D", 0.632075 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.493151 AS "P_0", 0.506849 AS "P_1", 1 AS "D", 0.506849 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.674419 AS "P_0", 0.325581 AS "P_1", 0 AS "D", 0.674419 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.233333 AS "P_0", 0.766667 AS "P_1", 1 AS "D", 0.766667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.826087 AS "P_0", 0.173913 AS "P_1", 0 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.550000 AS "P_0", 0.450000 AS "P_1", 0 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.706897 AS "P_0", 0.293103 AS "P_1", 0 AS "D", 0.706897 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.554187 AS "P_0", 0.445813 AS "P_1", 0 AS "D", 0.554187 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.835443 AS "P_0", 0.164557 AS "P_1", 0 AS "D", 0.835443 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.406250 AS "P_0", 0.593750 AS "P_1", 1 AS "D", 0.593750 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.698413 AS "P_0", 0.301587 AS "P_1", 0 AS "D", 0.698413 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.896552 AS "P_0", 0.103448 AS "P_1", 0 AS "D", 0.896552 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.577428 AS "P_0", 0.422572 AS "P_1", 0 AS "D", 0.577428 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.434783 AS "P_0", 0.565217 AS "P_1", 1 AS "D", 0.565217 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.622837 AS "P_0", 0.377163 AS "P_1", 0 AS "D", 0.622837 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_71" > 1.700790) AND (t."X_63" <= -0.145272)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_71" > 1.700790) AND (t."X_63" > -0.145272)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_71" <= 1.700790) AND (t."X_91" > 1.797986) AND (t."X_28" <= -0.070277)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_71" <= 1.700790) AND (t."X_91" > 1.797986) AND (t."X_28" > -0.070277)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_71" <= 1.700790) AND (t."X_91" <= 1.797986) AND (t."X_99" > 2.246606)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_71" <= 1.700790) AND (t."X_91" <= 1.797986) AND (t."X_99" <= 2.246606) AND (t."X_93" > 1.606063) AND (t."X_93" <= 1.863126)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_71" <= 1.700790) AND (t."X_91" <= 1.797986) AND (t."X_99" <= 2.246606) AND (t."X_93" > 1.606063) AND (t."X_93" > 1.863126)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_71" <= 1.700790) AND (t."X_91" <= 1.797986) AND (t."X_99" <= 2.246606) AND (t."X_93" <= 1.606063) AND (t."X_28" <= -1.253089) AND (t."X_63" <= 0.202454)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_71" <= 1.700790) AND (t."X_91" <= 1.797986) AND (t."X_99" <= 2.246606) AND (t."X_93" <= 1.606063) AND (t."X_28" <= -1.253089) AND (t."X_63" > 0.202454)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_71" <= 1.700790) AND (t."X_91" <= 1.797986) AND (t."X_99" <= 2.246606) AND (t."X_93" <= 1.606063) AND (t."X_28" > -1.253089) AND (t."X_92" <= 0.025807)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_71" <= 1.700790) AND (t."X_91" <= 1.797986) AND (t."X_99" <= 2.246606) AND (t."X_93" <= 1.606063) AND (t."X_28" > -1.253089) AND (t."X_92" > 0.025807)) THEN 20 ELSE NULL END AS "Leaf_20"
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
    SELECT 0 AS nid,  0.515625 AS "P_0", 0.484375 AS "P_1", 0 AS "D", 0.515625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.531697 AS "P_0", 0.468303 AS "P_1", 0 AS "D", 0.531697 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.173913 AS "P_0", 0.826087 AS "P_1", 1 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.040000 AS "P_0", 0.960000 AS "P_1", 1 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.545842 AS "P_0", 0.454158 AS "P_1", 0 AS "D", 0.545842 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.555799 AS "P_0", 0.444201 AS "P_1", 0 AS "D", 0.555799 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.570431 AS "P_0", 0.429569 AS "P_1", 0 AS "D", 0.570431 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.327273 AS "P_0", 0.672727 AS "P_1", 1 AS "D", 0.672727 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.096774 AS "P_0", 0.903226 AS "P_1", 1 AS "D", 0.903226 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.361702 AS "P_0", 0.638298 AS "P_1", 1 AS "D", 0.638298 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.596078 AS "P_0", 0.403922 AS "P_1", 0 AS "D", 0.596078 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.562500 AS "P_0", 0.437500 AS "P_1", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.152174 AS "P_0", 0.847826 AS "P_1", 1 AS "D", 0.847826 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.657431 AS "P_0", 0.342569 AS "P_1", 0 AS "D", 0.657431 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.529891 AS "P_0", 0.470109 AS "P_1", 0 AS "D", 0.529891 AS "DP"
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