WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_22" <= 0.667991) AND (t."X_90" <= -1.141129)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_22" <= 0.667991) AND (t."X_90" > -1.141129) AND (t."X_94" > 1.175978)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_22" <= 0.667991) AND (t."X_90" > -1.141129) AND (t."X_94" <= 1.175978) AND (t."X_51" > 0.534756) AND (t."X_22" <= -0.368022)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_22" <= 0.667991) AND (t."X_90" > -1.141129) AND (t."X_94" <= 1.175978) AND (t."X_51" > 0.534756) AND (t."X_22" > -0.368022)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_22" > 0.667991) AND (t."X_22" <= 1.435874)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_22" > 0.667991) AND (t."X_22" > 1.435874)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_22" <= 0.667991) AND (t."X_90" > -1.141129) AND (t."X_94" <= 1.175978) AND (t."X_51" <= 0.534756) AND (t."X_98" <= -1.592880)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_22" <= 0.667991) AND (t."X_90" > -1.141129) AND (t."X_94" <= 1.175978) AND (t."X_51" <= 0.534756) AND (t."X_98" > -1.592880) AND (t."X_94" > -1.390951)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_22" <= 0.667991) AND (t."X_90" > -1.141129) AND (t."X_94" <= 1.175978) AND (t."X_51" <= 0.534756) AND (t."X_98" > -1.592880) AND (t."X_94" <= -1.390951) AND (t."X_51" <= -0.039965)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_22" <= 0.667991) AND (t."X_90" > -1.141129) AND (t."X_94" <= 1.175978) AND (t."X_51" <= 0.534756) AND (t."X_98" > -1.592880) AND (t."X_94" <= -1.390951) AND (t."X_51" > -0.039965)) THEN 18 ELSE NULL END AS "Leaf_18"
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
    SELECT 0 AS nid,  0.578125 AS "P_0", 0.421875 AS "P_1", 0 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.422222 AS "P_0", 0.577778 AS "P_1", 1 AS "D", 0.577778 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.315789 AS "P_0", 0.684211 AS "P_1", 1 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.187500 AS "P_0", 0.812500 AS "P_1", 1 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
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
    SELECT 14 AS nid,  0.040000 AS "P_0", 0.960000 AS "P_1", 1 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_6", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_15" <= -0.678230) AND (t."X_97" <= -0.814225)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_15" <= -0.678230) AND (t."X_97" > -0.814225)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_15" > -0.678230) AND (t."X_92" > 0.826929)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_15" > -0.678230) AND (t."X_92" <= 0.826929) AND (t."X_98" > -0.037913) AND (t."X_97" > 1.008471)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_15" > -0.678230) AND (t."X_92" <= 0.826929) AND (t."X_98" <= -0.037913) AND (t."X_52" > 0.559134) AND (t."X_78" <= 0.027170)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_15" > -0.678230) AND (t."X_92" <= 0.826929) AND (t."X_98" <= -0.037913) AND (t."X_52" > 0.559134) AND (t."X_78" > 0.027170)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_15" > -0.678230) AND (t."X_92" <= 0.826929) AND (t."X_98" <= -0.037913) AND (t."X_52" <= 0.559134) AND (t."X_92" <= -1.223630)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_15" > -0.678230) AND (t."X_92" <= 0.826929) AND (t."X_98" <= -0.037913) AND (t."X_52" <= 0.559134) AND (t."X_92" > -1.223630)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_15" > -0.678230) AND (t."X_92" <= 0.826929) AND (t."X_98" > -0.037913) AND (t."X_97" <= 1.008471) AND (t."X_52" <= 1.171055)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_15" > -0.678230) AND (t."X_92" <= 0.826929) AND (t."X_98" > -0.037913) AND (t."X_97" <= 1.008471) AND (t."X_52" > 1.171055) AND (t."X_99" <= -0.758628)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_15" > -0.678230) AND (t."X_92" <= 0.826929) AND (t."X_98" > -0.037913) AND (t."X_97" <= 1.008471) AND (t."X_52" > 1.171055) AND (t."X_99" > -0.758628)) THEN 20 ELSE NULL END AS "Leaf_20"
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
    SELECT 0 AS nid,  0.578125 AS "P_0", 0.421875 AS "P_1", 0 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.431818 AS "P_0", 0.568182 AS "P_1", 1 AS "D", 0.568182 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.558824 AS "P_0", 0.441176 AS "P_1", 0 AS "D", 0.558824 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
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
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_7", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_67" > 1.038874)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_67" <= 1.038874) AND (t."X_92" > -0.645747) AND (t."X_94" <= -0.593724) AND (t."X_69" <= -2.241511)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_67" <= 1.038874) AND (t."X_92" > -0.645747) AND (t."X_94" <= -0.593724) AND (t."X_69" > -2.241511)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_67" <= 1.038874) AND (t."X_92" > -0.645747) AND (t."X_94" > -0.593724) AND (t."X_98" > -0.106025) AND (t."X_92" > 0.384667)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_67" <= 1.038874) AND (t."X_92" > -0.645747) AND (t."X_94" > -0.593724) AND (t."X_98" > -0.106025) AND (t."X_92" <= 0.384667) AND (t."X_74" <= -0.025717)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_67" <= 1.038874) AND (t."X_92" > -0.645747) AND (t."X_94" > -0.593724) AND (t."X_98" > -0.106025) AND (t."X_92" <= 0.384667) AND (t."X_74" > -0.025717)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_67" <= 1.038874) AND (t."X_92" > -0.645747) AND (t."X_94" > -0.593724) AND (t."X_98" <= -0.106025) AND (t."X_69" <= -1.024352)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_67" <= 1.038874) AND (t."X_92" > -0.645747) AND (t."X_94" > -0.593724) AND (t."X_98" <= -0.106025) AND (t."X_69" > -1.024352)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_67" <= 1.038874) AND (t."X_92" <= -0.645747) AND (t."X_37" <= 1.725689)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_67" <= 1.038874) AND (t."X_92" <= -0.645747) AND (t."X_37" > 1.725689)) THEN 18 ELSE NULL END AS "Leaf_18"
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
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.396226 AS "P_0", 0.603774 AS "P_1", 1 AS "D", 0.603774 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.540541 AS "P_0", 0.459459 AS "P_1", 0 AS "D", 0.540541 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.360000 AS "P_0", 0.640000 AS "P_1", 1 AS "D", 0.640000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_11" <= 0.678944) AND (t."X_93" > 0.240390) AND (t."X_49" <= -0.283534) AND (t."X_94" <= 0.872424)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_11" <= 0.678944) AND (t."X_93" > 0.240390) AND (t."X_49" <= -0.283534) AND (t."X_94" > 0.872424) AND (t."X_98" <= -1.170938)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_11" <= 0.678944) AND (t."X_93" > 0.240390) AND (t."X_49" <= -0.283534) AND (t."X_94" > 0.872424) AND (t."X_98" > -1.170938)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_11" <= 0.678944) AND (t."X_93" > 0.240390) AND (t."X_49" > -0.283534) AND (t."X_19" <= 2.298265)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_11" <= 0.678944) AND (t."X_93" > 0.240390) AND (t."X_49" > -0.283534) AND (t."X_19" > 2.298265)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_11" <= 0.678944) AND (t."X_93" <= 0.240390) AND (t."X_93" <= -1.985591)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_11" <= 0.678944) AND (t."X_93" <= 0.240390) AND (t."X_93" > -1.985591)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_11" > 0.678944) AND (t."X_99" <= -1.178717)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_11" > 0.678944) AND (t."X_99" > -1.178717) AND (t."X_57" <= -0.670664)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_11" > 0.678944) AND (t."X_99" > -1.178717) AND (t."X_57" > -0.670664)) THEN 18 ELSE NULL END AS "Leaf_18"
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
    SELECT 0 AS nid,  0.562500 AS "P_0", 0.437500 AS "P_1", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.723404 AS "P_0", 0.276596 AS "P_1", 0 AS "D", 0.723404 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.925926 AS "P_0", 0.074074 AS "P_1", 0 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.450000 AS "P_0", 0.550000 AS "P_1", 1 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_98" <= -1.256721)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_98" > -1.256721) AND (t."X_93" <= -0.697241) AND (t."X_63" > -0.190182)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_98" > -1.256721) AND (t."X_93" <= -0.697241) AND (t."X_63" <= -0.190182) AND (t."X_28" <= 0.316466)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_98" > -1.256721) AND (t."X_93" <= -0.697241) AND (t."X_63" <= -0.190182) AND (t."X_28" > 0.316466)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_98" > -1.256721) AND (t."X_93" > -0.697241) AND (t."X_82" <= -0.710799)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_98" > -1.256721) AND (t."X_93" > -0.697241) AND (t."X_82" > -0.710799) AND (t."X_94" > 1.202319)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_98" > -1.256721) AND (t."X_93" > -0.697241) AND (t."X_82" > -0.710799) AND (t."X_94" <= 1.202319) AND (t."X_71" <= -1.038636) AND (t."X_99" <= -0.245432)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_98" > -1.256721) AND (t."X_93" > -0.697241) AND (t."X_82" > -0.710799) AND (t."X_94" <= 1.202319) AND (t."X_71" <= -1.038636) AND (t."X_99" > -0.245432)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_98" > -1.256721) AND (t."X_93" > -0.697241) AND (t."X_82" > -0.710799) AND (t."X_94" <= 1.202319) AND (t."X_71" > -1.038636) AND (t."X_28" <= 0.713668)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_98" > -1.256721) AND (t."X_93" > -0.697241) AND (t."X_82" > -0.710799) AND (t."X_94" <= 1.202319) AND (t."X_71" > -1.038636) AND (t."X_28" > 0.713668)) THEN 18 ELSE NULL END AS "Leaf_18"
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
    SELECT 0 AS nid,  0.687500 AS "P_0", 0.312500 AS "P_1", 0 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.823529 AS "P_0", 0.176471 AS "P_1", 0 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.392857 AS "P_0", 0.607143 AS "P_1", 1 AS "D", 0.607143 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.291667 AS "P_0", 0.708333 AS "P_1", 1 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.190476 AS "P_0", 0.809524 AS "P_1", 1 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
"DT_node_lookup_5" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_55" <= -0.828176) AND (t."X_99" <= 1.825481)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_55" <= -0.828176) AND (t."X_99" > 1.825481)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_55" > -0.828176) AND (t."X_96" <= -0.714168)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_55" > -0.828176) AND (t."X_96" > -0.714168) AND (t."X_98" > 2.132058)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_55" > -0.828176) AND (t."X_96" > -0.714168) AND (t."X_98" <= 2.132058) AND (t."X_97" <= -1.353259) AND (t."X_99" <= 0.653767)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_55" > -0.828176) AND (t."X_96" > -0.714168) AND (t."X_98" <= 2.132058) AND (t."X_97" <= -1.353259) AND (t."X_99" > 0.653767)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_55" > -0.828176) AND (t."X_96" > -0.714168) AND (t."X_98" <= 2.132058) AND (t."X_97" > -1.353259) AND (t."X_48" > 1.059411) AND (t."X_39" <= -0.833228)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_55" > -0.828176) AND (t."X_96" > -0.714168) AND (t."X_98" <= 2.132058) AND (t."X_97" > -1.353259) AND (t."X_48" > 1.059411) AND (t."X_39" > -0.833228)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_55" > -0.828176) AND (t."X_96" > -0.714168) AND (t."X_98" <= 2.132058) AND (t."X_97" > -1.353259) AND (t."X_48" <= 1.059411) AND (t."X_97" > 2.533011)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_55" > -0.828176) AND (t."X_96" > -0.714168) AND (t."X_98" <= 2.132058) AND (t."X_97" > -1.353259) AND (t."X_48" <= 1.059411) AND (t."X_97" <= 2.533011) AND (t."X_90" <= 1.021651)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_55" > -0.828176) AND (t."X_96" > -0.714168) AND (t."X_98" <= 2.132058) AND (t."X_97" > -1.353259) AND (t."X_48" <= 1.059411) AND (t."X_97" <= 2.533011) AND (t."X_90" > 1.021651) AND (t."X_39" <= 0.409340)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_55" > -0.828176) AND (t."X_96" > -0.714168) AND (t."X_98" <= 2.132058) AND (t."X_97" > -1.353259) AND (t."X_48" <= 1.059411) AND (t."X_97" <= 2.533011) AND (t."X_90" > 1.021651) AND (t."X_39" > 0.409340)) THEN 22 ELSE NULL END AS "Leaf_22"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.764706 AS "P_0", 0.235294 AS "P_1", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.847826 AS "P_0", 0.152174 AS "P_1", 0 AS "D", 0.847826 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.902439 AS "P_0", 0.097561 AS "P_1", 0 AS "D", 0.902439 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.972973 AS "P_0", 0.027027 AS "P_1", 0 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_5" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_78" > -0.285732) AND (t."X_6" <= -0.523552)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_78" > -0.285732) AND (t."X_6" > -0.523552) AND (t."X_96" > 0.596707)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_78" > -0.285732) AND (t."X_6" > -0.523552) AND (t."X_96" <= 0.596707) AND (t."X_49" <= 0.234961) AND (t."X_98" <= 1.223811)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_78" > -0.285732) AND (t."X_6" > -0.523552) AND (t."X_96" <= 0.596707) AND (t."X_49" <= 0.234961) AND (t."X_98" > 1.223811)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_78" > -0.285732) AND (t."X_6" > -0.523552) AND (t."X_96" <= 0.596707) AND (t."X_49" > 0.234961) AND (t."X_27" <= -0.841065)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_78" > -0.285732) AND (t."X_6" > -0.523552) AND (t."X_96" <= 0.596707) AND (t."X_49" > 0.234961) AND (t."X_27" > -0.841065)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_78" <= -0.285732) AND (t."X_97" <= -0.854497)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_78" <= -0.285732) AND (t."X_97" > -0.854497) AND (t."X_91" <= -1.467897)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_78" <= -0.285732) AND (t."X_97" > -0.854497) AND (t."X_91" > -1.467897)) THEN 16 ELSE NULL END AS "Leaf_16"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.484375 AS "P_0", 0.515625 AS "P_1", 1 AS "D", 0.515625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.326087 AS "P_0", 0.673913 AS "P_1", 1 AS "D", 0.673913 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.483871 AS "P_0", 0.516129 AS "P_1", 1 AS "D", 0.516129 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_6" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" <= -0.320337)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_1" > -0.320337) AND (t."X_90" > -1.379504) AND (t."X_98" <= -1.480612)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_1" > -0.320337) AND (t."X_90" > -1.379504) AND (t."X_98" > -1.480612)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_1" > -0.320337) AND (t."X_90" <= -1.379504) AND (t."X_3" <= -0.498996)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_1" > -0.320337) AND (t."X_90" <= -1.379504) AND (t."X_3" > -0.498996)) THEN 8 ELSE NULL END AS "Leaf_8"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_7" AS 
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
    SELECT 2 AS nid,  0.289474 AS "P_0", 0.710526 AS "P_1", 1 AS "D", 0.710526 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_7" AS 
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_82" > -0.710799) AND (t."X_82" > 1.216766)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_82" > -0.710799) AND (t."X_82" <= 1.216766) AND (t."X_99" <= -1.614583)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_82" <= -0.710799) AND (t."X_98" <= 2.043928)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_82" <= -0.710799) AND (t."X_98" > 2.043928)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_82" > -0.710799) AND (t."X_82" <= 1.216766) AND (t."X_99" > -1.614583) AND (t."X_50" > 1.498354)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_82" > -0.710799) AND (t."X_82" <= 1.216766) AND (t."X_99" > -1.614583) AND (t."X_50" <= 1.498354) AND (t."X_91" > 1.137927) AND (t."X_99" <= 0.942077)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_82" > -0.710799) AND (t."X_82" <= 1.216766) AND (t."X_99" > -1.614583) AND (t."X_50" <= 1.498354) AND (t."X_91" > 1.137927) AND (t."X_99" > 0.942077)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_82" > -0.710799) AND (t."X_82" <= 1.216766) AND (t."X_99" > -1.614583) AND (t."X_50" <= 1.498354) AND (t."X_91" <= 1.137927) AND (t."X_82" > -0.098834)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_82" > -0.710799) AND (t."X_82" <= 1.216766) AND (t."X_99" > -1.614583) AND (t."X_50" <= 1.498354) AND (t."X_91" <= 1.137927) AND (t."X_82" <= -0.098834) AND (t."X_90" <= 0.951155)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_82" > -0.710799) AND (t."X_82" <= 1.216766) AND (t."X_99" > -1.614583) AND (t."X_50" <= 1.498354) AND (t."X_91" <= 1.137927) AND (t."X_82" <= -0.098834) AND (t."X_90" > 0.951155) AND (t."X_35" <= 0.307420)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_82" > -0.710799) AND (t."X_82" <= 1.216766) AND (t."X_99" > -1.614583) AND (t."X_50" <= 1.498354) AND (t."X_91" <= 1.137927) AND (t."X_82" <= -0.098834) AND (t."X_90" > 0.951155) AND (t."X_35" > 0.307420)) THEN 20 ELSE NULL END AS "Leaf_20"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.515625 AS "P_0", 0.484375 AS "P_1", 0 AS "D", 0.515625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.302326 AS "P_0", 0.697674 AS "P_1", 1 AS "D", 0.697674 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.210526 AS "P_0", 0.789474 AS "P_1", 1 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.064516 AS "P_0", 0.935484 AS "P_1", 1 AS "D", 0.935484 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_8" AS 
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_5", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 0.907658)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_4" <= 0.907658) AND (t."X_90" > 1.894843)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_4" <= 0.907658) AND (t."X_90" <= 1.894843) AND (t."X_4" <= -0.379084)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_4" <= 0.907658) AND (t."X_90" <= 1.894843) AND (t."X_4" > -0.379084) AND (t."X_95" > -0.596010) AND (t."X_98" <= -1.315032)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_4" <= 0.907658) AND (t."X_90" <= 1.894843) AND (t."X_4" > -0.379084) AND (t."X_95" > -0.596010) AND (t."X_98" > -1.315032) AND (t."X_81" <= 2.176513)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_4" <= 0.907658) AND (t."X_90" <= 1.894843) AND (t."X_4" > -0.379084) AND (t."X_95" > -0.596010) AND (t."X_98" > -1.315032) AND (t."X_81" > 2.176513)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_4" <= 0.907658) AND (t."X_90" <= 1.894843) AND (t."X_4" > -0.379084) AND (t."X_95" <= -0.596010) AND (t."X_75" <= -1.481395)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_4" <= 0.907658) AND (t."X_90" <= 1.894843) AND (t."X_4" > -0.379084) AND (t."X_95" <= -0.596010) AND (t."X_75" > -1.481395)) THEN 14 ELSE NULL END AS "Leaf_14"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.754717 AS "P_0", 0.245283 AS "P_1", 0 AS "D", 0.754717 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_9" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_38" > 0.675778) AND (t."X_38" <= 1.442177)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_38" > 0.675778) AND (t."X_38" > 1.442177)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_38" <= 0.675778) AND (t."X_90" > -0.053960) AND (t."X_34" <= 0.340147)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_38" <= 0.675778) AND (t."X_90" > -0.053960) AND (t."X_34" > 0.340147) AND (t."X_99" > 0.327394)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_38" <= 0.675778) AND (t."X_90" > -0.053960) AND (t."X_34" > 0.340147) AND (t."X_99" <= 0.327394) AND (t."X_8" <= -0.129228)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_38" <= 0.675778) AND (t."X_90" > -0.053960) AND (t."X_34" > 0.340147) AND (t."X_99" <= 0.327394) AND (t."X_8" > -0.129228)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_38" <= 0.675778) AND (t."X_90" <= -0.053960) AND (t."X_96" <= -0.989640) AND (t."X_99" <= -0.402573)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_38" <= 0.675778) AND (t."X_90" <= -0.053960) AND (t."X_96" <= -0.989640) AND (t."X_99" > -0.402573)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_38" <= 0.675778) AND (t."X_90" <= -0.053960) AND (t."X_96" > -0.989640) AND (t."X_75" > 2.238560)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_38" <= 0.675778) AND (t."X_90" <= -0.053960) AND (t."X_96" > -0.989640) AND (t."X_75" <= 2.238560) AND (t."X_93" <= 1.967113)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_38" <= 0.675778) AND (t."X_90" <= -0.053960) AND (t."X_96" > -0.989640) AND (t."X_75" <= 2.238560) AND (t."X_93" > 1.967113)) THEN 20 ELSE NULL END AS "Leaf_20"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.578125 AS "P_0", 0.421875 AS "P_1", 0 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.720000 AS "P_0", 0.280000 AS "P_1", 0 AS "D", 0.720000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.861111 AS "P_0", 0.138889 AS "P_1", 0 AS "D", 0.861111 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.357143 AS "P_0", 0.642857 AS "P_1", 1 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.967742 AS "P_0", 0.032258 AS "P_1", 0 AS "D", 0.967742 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_10" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > -0.275314) AND (t."X_98" <= -1.278909)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_4" > -0.275314) AND (t."X_98" > -1.278909) AND (t."X_93" <= -1.401735) AND (t."X_94" <= -0.693319)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_4" > -0.275314) AND (t."X_98" > -1.278909) AND (t."X_93" <= -1.401735) AND (t."X_94" > -0.693319)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_4" > -0.275314) AND (t."X_98" > -1.278909) AND (t."X_93" > -1.401735) AND (t."X_95" > 1.896450) AND (t."X_94" <= -0.750436)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_4" > -0.275314) AND (t."X_98" > -1.278909) AND (t."X_93" > -1.401735) AND (t."X_95" > 1.896450) AND (t."X_94" > -0.750436)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_4" > -0.275314) AND (t."X_98" > -1.278909) AND (t."X_93" > -1.401735) AND (t."X_95" <= 1.896450) AND (t."X_7" <= 0.672611)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_4" > -0.275314) AND (t."X_98" > -1.278909) AND (t."X_93" > -1.401735) AND (t."X_95" <= 1.896450) AND (t."X_7" > 0.672611) AND (t."X_98" <= -0.415067)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_4" > -0.275314) AND (t."X_98" > -1.278909) AND (t."X_93" > -1.401735) AND (t."X_95" <= 1.896450) AND (t."X_7" > 0.672611) AND (t."X_98" > -0.415067)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_4" <= -0.275314) AND (t."X_95" <= 1.181463)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_4" <= -0.275314) AND (t."X_95" > 1.181463) AND (t."X_99" <= 0.471753)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_4" <= -0.275314) AND (t."X_95" > 1.181463) AND (t."X_99" > 0.471753)) THEN 20 ELSE NULL END AS "Leaf_20"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.562500 AS "P_0", 0.437500 AS "P_1", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
  ) AS "Values"),
"DT_Output_11" AS 
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_61" <= -0.011231) AND (t."X_99" > 1.782839)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_61" > -0.011231) AND (t."X_56" <= -0.796088)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_61" <= -0.011231) AND (t."X_99" <= 1.782839) AND (t."X_92" > -1.234165)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_61" <= -0.011231) AND (t."X_99" <= 1.782839) AND (t."X_92" <= -1.234165) AND (t."X_99" <= 0.884980)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_61" <= -0.011231) AND (t."X_99" <= 1.782839) AND (t."X_92" <= -1.234165) AND (t."X_99" > 0.884980)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_61" > -0.011231) AND (t."X_56" > -0.796088) AND (t."X_87" > -0.700062)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_61" > -0.011231) AND (t."X_56" > -0.796088) AND (t."X_87" <= -0.700062) AND (t."X_61" <= 0.482750)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_61" > -0.011231) AND (t."X_56" > -0.796088) AND (t."X_87" <= -0.700062) AND (t."X_61" > 0.482750)) THEN 14 ELSE NULL END AS "Leaf_14"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.453125 AS "P_0", 0.546875 AS "P_1", 1 AS "D", 0.546875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.866667 AS "P_0", 0.133333 AS "P_1", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.088235 AS "P_0", 0.911765 AS "P_1", 1 AS "D", 0.911765 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.031250 AS "P_0", 0.968750 AS "P_1", 1 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_12" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" <= -0.300742)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_1" > -0.300742) AND (t."X_93" <= -0.999278) AND (t."X_65" <= 0.588972)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_1" > -0.300742) AND (t."X_93" <= -0.999278) AND (t."X_65" > 0.588972)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_1" > -0.300742) AND (t."X_93" > -0.999278) AND (t."X_98" <= -1.621874)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_1" > -0.300742) AND (t."X_93" > -0.999278) AND (t."X_98" > -1.621874) AND (t."X_97" <= 1.007315)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_1" > -0.300742) AND (t."X_93" > -0.999278) AND (t."X_98" > -1.621874) AND (t."X_97" > 1.007315)) THEN 10 ELSE NULL END AS "Leaf_10"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.319149 AS "P_0", 0.680851 AS "P_1", 1 AS "D", 0.680851 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.866667 AS "P_0", 0.133333 AS "P_1", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.032258 AS "P_0", 0.967742 AS "P_1", 1 AS "D", 0.967742 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_13" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_62" <= 0.610538) AND (t."X_98" <= -1.278909)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_62" > 0.610538) AND (t."X_24" <= 0.371798)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_62" > 0.610538) AND (t."X_24" > 0.371798) AND (t."X_81" <= -0.797036)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_62" > 0.610538) AND (t."X_24" > 0.371798) AND (t."X_81" > -0.797036) AND (t."X_99" <= 1.289282)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_62" > 0.610538) AND (t."X_24" > 0.371798) AND (t."X_81" > -0.797036) AND (t."X_99" > 1.289282)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_62" <= 0.610538) AND (t."X_98" > -1.278909) AND (t."X_96" > 1.023966) AND (t."X_98" <= 0.046403)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_62" <= 0.610538) AND (t."X_98" > -1.278909) AND (t."X_96" > 1.023966) AND (t."X_98" > 0.046403)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_62" <= 0.610538) AND (t."X_98" > -1.278909) AND (t."X_96" <= 1.023966) AND (t."X_21" <= 0.537091)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_62" <= 0.610538) AND (t."X_98" > -1.278909) AND (t."X_96" <= 1.023966) AND (t."X_21" > 0.537091) AND (t."X_3" <= -0.279663)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_62" <= 0.610538) AND (t."X_98" > -1.278909) AND (t."X_96" <= 1.023966) AND (t."X_21" > 0.537091) AND (t."X_3" > -0.279663)) THEN 18 ELSE NULL END AS "Leaf_18"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.468750 AS "P_0", 0.531250 AS "P_1", 1 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.279070 AS "P_0", 0.720930 AS "P_1", 1 AS "D", 0.720930 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.184211 AS "P_0", 0.815789 AS "P_1", 1 AS "D", 0.815789 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_14" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" <= -0.273424) AND (t."X_98" <= 1.452243)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_1" <= -0.273424) AND (t."X_98" > 1.452243)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_1" > -0.273424) AND (t."X_45" <= -0.922130)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_1" > -0.273424) AND (t."X_45" > -0.922130) AND (t."X_93" <= -1.333889) AND (t."X_52" <= 0.401402)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_1" > -0.273424) AND (t."X_45" > -0.922130) AND (t."X_93" <= -1.333889) AND (t."X_52" > 0.401402)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_1" > -0.273424) AND (t."X_45" > -0.922130) AND (t."X_93" > -1.333889) AND (t."X_98" <= -1.256721)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_1" > -0.273424) AND (t."X_45" > -0.922130) AND (t."X_93" > -1.333889) AND (t."X_98" > -1.256721)) THEN 12 ELSE NULL END AS "Leaf_12"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.546875 AS "P_0", 0.453125 AS "P_1", 0 AS "D", 0.546875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.205882 AS "P_0", 0.794118 AS "P_1", 1 AS "D", 0.794118 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.129032 AS "P_0", 0.870968 AS "P_1", 1 AS "D", 0.870968 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.037037 AS "P_0", 0.962963 AS "P_1", 1 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_15" AS 
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
    COALESCE( t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_97" <= -0.026381) AND (t."X_91" <= -0.540742)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_97" <= -0.026381) AND (t."X_91" > -0.540742) AND (t."X_24" > -0.197023)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_97" <= -0.026381) AND (t."X_91" > -0.540742) AND (t."X_24" <= -0.197023) AND (t."X_97" <= -0.782711)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_97" <= -0.026381) AND (t."X_91" > -0.540742) AND (t."X_24" <= -0.197023) AND (t."X_97" > -0.782711)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_97" > -0.026381) AND (t."X_99" <= -0.454184) AND (t."X_98" <= 0.263524)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_97" > -0.026381) AND (t."X_99" <= -0.454184) AND (t."X_98" > 0.263524)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_97" > -0.026381) AND (t."X_99" > -0.454184) AND (t."X_94" <= 1.230682)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_97" > -0.026381) AND (t."X_99" > -0.454184) AND (t."X_94" > 1.230682)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_95" <= -0.639166) AND (t."X_96" > 1.774784)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_95" <= -0.639166) AND (t."X_96" <= 1.774784) AND (t."X_97" > 1.922756)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_95" <= -0.639166) AND (t."X_96" <= 1.774784) AND (t."X_97" <= 1.922756) AND (t."X_92" <= 0.826929)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_95" <= -0.639166) AND (t."X_96" <= 1.774784) AND (t."X_97" <= 1.922756) AND (t."X_92" > 0.826929)) THEN 22 ELSE NULL END AS "Leaf_22"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.546875 AS "P_0", 0.453125 AS "P_1", 0 AS "D", 0.546875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.350000 AS "P_0", 0.650000 AS "P_1", 1 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.578947 AS "P_0", 0.421053 AS "P_1", 0 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.913043 AS "P_0", 0.086957 AS "P_1", 0 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.954545 AS "P_0", 0.045455 AS "P_1", 0 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_16" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_61" > -0.065192) AND (t."X_56" <= -1.240358)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_61" > -0.065192) AND (t."X_56" > -1.240358)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_61" <= -0.065192) AND (t."X_99" > 2.170933)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_61" <= -0.065192) AND (t."X_99" <= 2.170933) AND (t."X_97" > -0.806169)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_61" <= -0.065192) AND (t."X_99" <= 2.170933) AND (t."X_97" <= -0.806169) AND (t."X_53" <= -0.650972)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_61" <= -0.065192) AND (t."X_99" <= 2.170933) AND (t."X_97" <= -0.806169) AND (t."X_53" > -0.650972)) THEN 10 ELSE NULL END AS "Leaf_10"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.531250 AS "P_0", 0.468750 AS "P_1", 0 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.967742 AS "P_0", 0.032258 AS "P_1", 0 AS "D", 0.967742 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_17" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" <= -0.484284)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_4" > -0.484284) AND (t."X_98" <= -1.278909)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_4" > -0.484284) AND (t."X_98" > -1.278909) AND (t."X_69" <= -1.551583) AND (t."X_99" <= 0.882307)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_4" > -0.484284) AND (t."X_98" > -1.278909) AND (t."X_69" <= -1.551583) AND (t."X_99" > 0.882307)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_4" > -0.484284) AND (t."X_98" > -1.278909) AND (t."X_69" > -1.551583) AND (t."X_41" > 1.415085)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_4" > -0.484284) AND (t."X_98" > -1.278909) AND (t."X_69" > -1.551583) AND (t."X_41" <= 1.415085) AND (t."X_94" <= -2.066455)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_4" > -0.484284) AND (t."X_98" > -1.278909) AND (t."X_69" > -1.551583) AND (t."X_41" <= 1.415085) AND (t."X_94" > -2.066455) AND (t."X_27" <= 0.600252)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_4" > -0.484284) AND (t."X_98" > -1.278909) AND (t."X_69" > -1.551583) AND (t."X_41" <= 1.415085) AND (t."X_94" > -2.066455) AND (t."X_27" > 0.600252) AND (t."X_93" <= -1.333838)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_4" > -0.484284) AND (t."X_98" > -1.278909) AND (t."X_69" > -1.551583) AND (t."X_41" <= 1.415085) AND (t."X_94" > -2.066455) AND (t."X_27" > 0.600252) AND (t."X_93" > -1.333838)) THEN 16 ELSE NULL END AS "Leaf_16"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.421875 AS "P_0", 0.578125 AS "P_1", 1 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.212766 AS "P_0", 0.787234 AS "P_1", 1 AS "D", 0.787234 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.119048 AS "P_0", 0.880952 AS "P_1", 1 AS "D", 0.880952 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.027027 AS "P_0", 0.972973 AS "P_1", 1 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_18" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" > 1.195936) AND (t."X_34" <= -1.321651)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_20" > 1.195936) AND (t."X_34" > -1.321651)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_20" <= 1.195936) AND (t."X_91" <= -1.467897)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" <= 1.195936) AND (t."X_91" > -1.467897) AND (t."X_96" <= -0.963410)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" <= 1.195936) AND (t."X_91" > -1.467897) AND (t."X_96" > -0.963410) AND (t."X_75" <= -1.212031) AND (t."X_97" <= -1.313479)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_20" <= 1.195936) AND (t."X_91" > -1.467897) AND (t."X_96" > -0.963410) AND (t."X_75" <= -1.212031) AND (t."X_97" > -1.313479)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" <= 1.195936) AND (t."X_91" > -1.467897) AND (t."X_96" > -0.963410) AND (t."X_75" > -1.212031) AND (t."X_20" <= -2.194672)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_20" <= 1.195936) AND (t."X_91" > -1.467897) AND (t."X_96" > -0.963410) AND (t."X_75" > -1.212031) AND (t."X_20" > -2.194672) AND (t."X_93" <= 1.289858)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" <= 1.195936) AND (t."X_91" > -1.467897) AND (t."X_96" > -0.963410) AND (t."X_75" > -1.212031) AND (t."X_20" > -2.194672) AND (t."X_93" > 1.289858)) THEN 16 ELSE NULL END AS "Leaf_16"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.578125 AS "P_0", 0.421875 AS "P_1", 0 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.708333 AS "P_0", 0.291667 AS "P_1", 0 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.187500 AS "P_0", 0.812500 AS "P_1", 1 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.809524 AS "P_0", 0.190476 AS "P_1", 0 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.871795 AS "P_0", 0.128205 AS "P_1", 0 AS "D", 0.871795 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.942857 AS "P_0", 0.057143 AS "P_1", 0 AS "D", 0.942857 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.970588 AS "P_0", 0.029412 AS "P_1", 0 AS "D", 0.970588 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_19" AS 
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" > 0.033130) AND (t."X_99" > 0.759689) AND (t."X_55" <= 1.291731)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_1" > 0.033130) AND (t."X_99" > 0.759689) AND (t."X_55" > 1.291731)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_1" <= 0.033130) AND (t."X_99" > 2.170933)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_1" > 0.033130) AND (t."X_99" <= 0.759689) AND (t."X_90" <= -1.877314)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_1" > 0.033130) AND (t."X_99" <= 0.759689) AND (t."X_90" > -1.877314)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_1" <= 0.033130) AND (t."X_99" <= 2.170933) AND (t."X_92" <= -1.234165) AND (t."X_91" <= 0.395815)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_1" <= 0.033130) AND (t."X_99" <= 2.170933) AND (t."X_92" <= -1.234165) AND (t."X_91" > 0.395815)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_1" <= 0.033130) AND (t."X_99" <= 2.170933) AND (t."X_92" > -1.234165) AND (t."X_94" > -1.195036)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_1" <= 0.033130) AND (t."X_99" <= 2.170933) AND (t."X_92" > -1.234165) AND (t."X_94" <= -1.195036) AND (t."X_99" <= -0.397293)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_1" <= 0.033130) AND (t."X_99" <= 2.170933) AND (t."X_92" > -1.234165) AND (t."X_94" <= -1.195036) AND (t."X_99" > -0.397293)) THEN 18 ELSE NULL END AS "Leaf_18"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.515625 AS "P_0", 0.484375 AS "P_1", 0 AS "D", 0.515625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.806452 AS "P_0", 0.193548 AS "P_1", 0 AS "D", 0.806452 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.242424 AS "P_0", 0.757576 AS "P_1", 1 AS "D", 0.757576 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.040000 AS "P_0", 0.960000 AS "P_1", 1 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.892857 AS "P_0", 0.107143 AS "P_1", 0 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.960000 AS "P_0", 0.040000 AS "P_1", 0 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_20" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_95" <= -0.457505) AND (t."X_97" <= 0.877364)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_95" <= -0.457505) AND (t."X_97" > 0.877364) AND (t."X_99" <= 0.894686)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_95" <= -0.457505) AND (t."X_97" > 0.877364) AND (t."X_99" > 0.894686)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_95" > -0.457505) AND (t."X_57" <= -0.799342)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_95" > -0.457505) AND (t."X_57" > -0.799342) AND (t."X_75" > 1.144856)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_95" > -0.457505) AND (t."X_57" > -0.799342) AND (t."X_75" <= 1.144856) AND (t."X_96" > 1.424475)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_95" > -0.457505) AND (t."X_57" > -0.799342) AND (t."X_75" <= 1.144856) AND (t."X_96" <= 1.424475) AND (t."X_75" <= -1.880552)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_95" > -0.457505) AND (t."X_57" > -0.799342) AND (t."X_75" <= 1.144856) AND (t."X_96" <= 1.424475) AND (t."X_75" > -1.880552)) THEN 14 ELSE NULL END AS "Leaf_14"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.578125 AS "P_0", 0.421875 AS "P_1", 0 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.351351 AS "P_0", 0.648649 AS "P_1", 1 AS "D", 0.648649 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.172414 AS "P_0", 0.827586 AS "P_1", 1 AS "D", 0.827586 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.040000 AS "P_0", 0.960000 AS "P_1", 1 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_21" AS 
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_14" <= -0.600293) AND (t."X_97" <= -1.571604)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_14" <= -0.600293) AND (t."X_97" > -1.571604)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_14" > -0.600293) AND (t."X_66" <= -0.869980) AND (t."X_96" <= -0.797540)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_14" > -0.600293) AND (t."X_66" <= -0.869980) AND (t."X_96" > -0.797540)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_95" <= -0.639166) AND (t."X_92" <= 0.715568)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_95" <= -0.639166) AND (t."X_92" > 0.715568)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_14" > -0.600293) AND (t."X_66" > -0.869980) AND (t."X_14" > 1.343913) AND (t."X_99" <= -0.673972)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_14" > -0.600293) AND (t."X_66" > -0.869980) AND (t."X_14" > 1.343913) AND (t."X_99" > -0.673972)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_14" > -0.600293) AND (t."X_66" > -0.869980) AND (t."X_14" <= 1.343913) AND (t."X_98" <= -1.629596)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_14" > -0.600293) AND (t."X_66" > -0.869980) AND (t."X_14" <= 1.343913) AND (t."X_98" > -1.629596) AND (t."X_95" > 1.678603)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_14" > -0.600293) AND (t."X_66" > -0.869980) AND (t."X_14" <= 1.343913) AND (t."X_98" > -1.629596) AND (t."X_95" <= 1.678603) AND (t."X_38" <= -2.395696)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_95" > -0.639166) AND (t."X_14" > -0.600293) AND (t."X_66" > -0.869980) AND (t."X_14" <= 1.343913) AND (t."X_98" > -1.629596) AND (t."X_95" <= 1.678603) AND (t."X_38" > -2.395696)) THEN 22 ELSE NULL END AS "Leaf_22"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.656250 AS "P_0", 0.343750 AS "P_1", 0 AS "D", 0.656250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.522727 AS "P_0", 0.477273 AS "P_1", 0 AS "D", 0.522727 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.269231 AS "P_0", 0.730769 AS "P_1", 1 AS "D", 0.730769 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.150000 AS "P_0", 0.850000 AS "P_1", 1 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.105263 AS "P_0", 0.894737 AS "P_1", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_22" AS 
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_10", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_79" <= -0.271951) AND (t."X_92" <= -0.522556) AND (t."X_99" <= 0.386243)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_79" <= -0.271951) AND (t."X_92" <= -0.522556) AND (t."X_99" > 0.386243)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_79" > -0.271951) AND (t."X_79" > 1.392222)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_79" > -0.271951) AND (t."X_79" <= 1.392222) AND (t."X_94" > 1.202319)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_79" > -0.271951) AND (t."X_79" <= 1.392222) AND (t."X_94" <= 1.202319) AND (t."X_92" > 0.120904) AND (t."X_99" <= -0.253883)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_79" > -0.271951) AND (t."X_79" <= 1.392222) AND (t."X_94" <= 1.202319) AND (t."X_92" > 0.120904) AND (t."X_99" > -0.253883) AND (t."X_98" <= -1.334146)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_79" > -0.271951) AND (t."X_79" <= 1.392222) AND (t."X_94" <= 1.202319) AND (t."X_92" > 0.120904) AND (t."X_99" > -0.253883) AND (t."X_98" > -1.334146)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_79" > -0.271951) AND (t."X_79" <= 1.392222) AND (t."X_94" <= 1.202319) AND (t."X_92" <= 0.120904) AND (t."X_96" <= 1.986811)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_79" > -0.271951) AND (t."X_79" <= 1.392222) AND (t."X_94" <= 1.202319) AND (t."X_92" <= 0.120904) AND (t."X_96" > 1.986811)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_79" <= -0.271951) AND (t."X_92" > -0.522556) AND (t."X_38" <= 0.672607)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_79" <= -0.271951) AND (t."X_92" > -0.522556) AND (t."X_38" > 0.672607) AND (t."X_95" <= -0.815240)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_79" <= -0.271951) AND (t."X_92" > -0.522556) AND (t."X_38" > 0.672607) AND (t."X_95" > -0.815240)) THEN 22 ELSE NULL END AS "Leaf_22"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
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
    SELECT 1 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.361111 AS "P_0", 0.638889 AS "P_1", 1 AS "D", 0.638889 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.281250 AS "P_0", 0.718750 AS "P_1", 1 AS "D", 0.718750 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.206897 AS "P_0", 0.793103 AS "P_1", 1 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_23" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_61" <= -0.968164)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_61" > -0.968164) AND (t."X_90" > 1.135400)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_61" > -0.968164) AND (t."X_90" <= 1.135400) AND (t."X_98" <= -1.278909)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_61" > -0.968164) AND (t."X_90" <= 1.135400) AND (t."X_98" > -1.278909) AND (t."X_90" <= -1.409982) AND (t."X_58" <= -0.898400)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_61" > -0.968164) AND (t."X_90" <= 1.135400) AND (t."X_98" > -1.278909) AND (t."X_90" <= -1.409982) AND (t."X_58" > -0.898400)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_61" > -0.968164) AND (t."X_90" <= 1.135400) AND (t."X_98" > -1.278909) AND (t."X_90" > -1.409982) AND (t."X_96" <= 1.986811)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_61" > -0.968164) AND (t."X_90" <= 1.135400) AND (t."X_98" > -1.278909) AND (t."X_90" > -1.409982) AND (t."X_96" > 1.986811)) THEN 12 ELSE NULL END AS "Leaf_12"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.304348 AS "P_0", 0.695652 AS "P_1", 1 AS "D", 0.695652 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.219512 AS "P_0", 0.780488 AS "P_1", 1 AS "D", 0.780488 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.135135 AS "P_0", 0.864865 AS "P_1", 1 AS "D", 0.864865 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.031250 AS "P_0", 0.968750 AS "P_1", 1 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_24" AS 
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
    COALESCE( t1."Leaf_2", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_9" > 1.108718)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_9" <= 1.108718) AND (t."X_98" > 0.862693) AND (t."X_95" <= -0.657913)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_9" <= 1.108718) AND (t."X_98" > 0.862693) AND (t."X_95" > -0.657913)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_9" <= 1.108718) AND (t."X_98" <= 0.862693) AND (t."X_30" <= -1.394306) AND (t."X_25" <= 0.644391)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_9" <= 1.108718) AND (t."X_98" <= 0.862693) AND (t."X_30" <= -1.394306) AND (t."X_25" > 0.644391)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_9" <= 1.108718) AND (t."X_98" <= 0.862693) AND (t."X_30" > -1.394306) AND (t."X_91" <= -1.136065)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_9" <= 1.108718) AND (t."X_98" <= 0.862693) AND (t."X_30" > -1.394306) AND (t."X_91" > -1.136065) AND (t."X_46" <= -2.074403)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_9" <= 1.108718) AND (t."X_98" <= 0.862693) AND (t."X_30" > -1.394306) AND (t."X_91" > -1.136065) AND (t."X_46" > -2.074403)) THEN 14 ELSE NULL END AS "Leaf_14"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.945946 AS "P_0", 0.054054 AS "P_1", 0 AS "D", 0.945946 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.972222 AS "P_0", 0.027778 AS "P_1", 0 AS "D", 0.972222 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_25" AS 
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_84" > 0.390814) AND (t."X_53" > 0.706166)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_84" > 0.390814) AND (t."X_53" <= 0.706166) AND (t."X_97" > 0.290929)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_84" > 0.390814) AND (t."X_53" <= 0.706166) AND (t."X_97" <= 0.290929) AND (t."X_64" <= 0.351429)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_84" > 0.390814) AND (t."X_53" <= 0.706166) AND (t."X_97" <= 0.290929) AND (t."X_64" > 0.351429)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_84" <= 0.390814) AND (t."X_96" <= -0.867490)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_84" <= 0.390814) AND (t."X_96" > -0.867490) AND (t."X_98" > 0.840500) AND (t."X_97" <= -0.125188)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_84" <= 0.390814) AND (t."X_96" > -0.867490) AND (t."X_98" > 0.840500) AND (t."X_97" > -0.125188)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_84" <= 0.390814) AND (t."X_96" > -0.867490) AND (t."X_98" <= 0.840500) AND (t."X_88" <= -1.557214)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_84" <= 0.390814) AND (t."X_96" > -0.867490) AND (t."X_98" <= 0.840500) AND (t."X_88" > -1.557214) AND (t."X_38" > -1.368191)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_84" <= 0.390814) AND (t."X_96" > -0.867490) AND (t."X_98" <= 0.840500) AND (t."X_88" > -1.557214) AND (t."X_38" <= -1.368191) AND (t."X_99" <= 0.710529)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_84" <= 0.390814) AND (t."X_96" > -0.867490) AND (t."X_98" <= 0.840500) AND (t."X_88" > -1.557214) AND (t."X_38" <= -1.368191) AND (t."X_99" > 0.710529)) THEN 20 ELSE NULL END AS "Leaf_20"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.318182 AS "P_0", 0.681818 AS "P_1", 1 AS "D", 0.681818 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.583333 AS "P_0", 0.416667 AS "P_1", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.939394 AS "P_0", 0.060606 AS "P_1", 0 AS "D", 0.939394 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.968750 AS "P_0", 0.031250 AS "P_1", 0 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_26" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= -0.527743) AND (t."X_96" <= -0.867490)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_2" <= -0.527743) AND (t."X_96" > -0.867490)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_2" > -0.527743) AND (t."X_2" <= -0.240099)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" > -0.527743) AND (t."X_2" > -0.240099) AND (t."X_95" <= 0.745306) AND (t."X_78" > 1.294637)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" > -0.527743) AND (t."X_2" > -0.240099) AND (t."X_95" > 0.745306) AND (t."X_95" <= 2.194940)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" > -0.527743) AND (t."X_2" > -0.240099) AND (t."X_95" > 0.745306) AND (t."X_95" > 2.194940)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > -0.527743) AND (t."X_2" > -0.240099) AND (t."X_95" <= 0.745306) AND (t."X_78" <= 1.294637) AND (t."X_48" <= 0.995579)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" > -0.527743) AND (t."X_2" > -0.240099) AND (t."X_95" <= 0.745306) AND (t."X_78" <= 1.294637) AND (t."X_48" > 0.995579) AND (t."X_99" <= -0.079219)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" > -0.527743) AND (t."X_2" > -0.240099) AND (t."X_95" <= 0.745306) AND (t."X_78" <= 1.294637) AND (t."X_48" > 0.995579) AND (t."X_99" > -0.079219)) THEN 16 ELSE NULL END AS "Leaf_16"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.531250 AS "P_0", 0.468750 AS "P_1", 0 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.413043 AS "P_0", 0.586957 AS "P_1", 1 AS "D", 0.586957 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.558824 AS "P_0", 0.441176 AS "P_1", 0 AS "D", 0.558824 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_27" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_49" <= -0.838270)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_49" > -0.838270) AND (t."X_95" <= -0.352615) AND (t."X_75" <= -0.339344)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_49" > -0.838270) AND (t."X_95" <= -0.352615) AND (t."X_75" > -0.339344) AND (t."X_15" <= 0.065761) AND (t."X_97" <= 0.877364)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_49" > -0.838270) AND (t."X_95" <= -0.352615) AND (t."X_75" > -0.339344) AND (t."X_15" <= 0.065761) AND (t."X_97" > 0.877364)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_49" > -0.838270) AND (t."X_95" <= -0.352615) AND (t."X_75" > -0.339344) AND (t."X_15" > 0.065761) AND (t."X_89" <= -1.229659)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_49" > -0.838270) AND (t."X_95" <= -0.352615) AND (t."X_75" > -0.339344) AND (t."X_15" > 0.065761) AND (t."X_89" > -1.229659)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_49" > -0.838270) AND (t."X_95" > -0.352615) AND (t."X_98" <= -1.315032)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_49" > -0.838270) AND (t."X_95" > -0.352615) AND (t."X_98" > -1.315032) AND (t."X_96" <= -2.062511)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_49" > -0.838270) AND (t."X_95" > -0.352615) AND (t."X_98" > -1.315032) AND (t."X_96" > -2.062511) AND (t."X_89" <= 1.009425)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_49" > -0.838270) AND (t."X_95" > -0.352615) AND (t."X_98" > -1.315032) AND (t."X_96" > -2.062511) AND (t."X_89" > 1.009425) AND (t."X_99" <= -0.300851)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_49" > -0.838270) AND (t."X_95" > -0.352615) AND (t."X_98" > -1.315032) AND (t."X_96" > -2.062511) AND (t."X_89" > 1.009425) AND (t."X_99" > -0.300851)) THEN 20 ELSE NULL END AS "Leaf_20"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.437500 AS "P_0", 0.562500 AS "P_1", 1 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.357143 AS "P_0", 0.642857 AS "P_1", 1 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.466667 AS "P_0", 0.533333 AS "P_1", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
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
    SELECT 14 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.034483 AS "P_0", 0.965517 AS "P_1", 1 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_28" AS 
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_7", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_66" > 0.727099)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_66" <= 0.727099) AND (t."X_90" <= -1.379504)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_66" <= 0.727099) AND (t."X_90" > -1.379504) AND (t."X_51" <= -0.019347) AND (t."X_92" <= -1.423930)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_66" <= 0.727099) AND (t."X_90" > -1.379504) AND (t."X_51" <= -0.019347) AND (t."X_92" > -1.423930) AND (t."X_98" > -0.130552)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_66" <= 0.727099) AND (t."X_90" > -1.379504) AND (t."X_51" <= -0.019347) AND (t."X_92" > -1.423930) AND (t."X_98" <= -0.130552) AND (t."X_8" > 0.098752)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_66" <= 0.727099) AND (t."X_90" > -1.379504) AND (t."X_51" <= -0.019347) AND (t."X_92" > -1.423930) AND (t."X_98" <= -0.130552) AND (t."X_8" <= 0.098752) AND (t."X_99" <= 0.703662)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_66" <= 0.727099) AND (t."X_90" > -1.379504) AND (t."X_51" <= -0.019347) AND (t."X_92" > -1.423930) AND (t."X_98" <= -0.130552) AND (t."X_8" <= 0.098752) AND (t."X_99" > 0.703662)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_66" <= 0.727099) AND (t."X_90" > -1.379504) AND (t."X_51" > -0.019347) AND (t."X_3" > 3.132718)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_66" <= 0.727099) AND (t."X_90" > -1.379504) AND (t."X_51" > -0.019347) AND (t."X_3" <= 3.132718) AND (t."X_93" <= 1.216757)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_66" <= 0.727099) AND (t."X_90" > -1.379504) AND (t."X_51" > -0.019347) AND (t."X_3" <= 3.132718) AND (t."X_93" > 1.216757) AND (t."X_99" <= -1.073317)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_66" <= 0.727099) AND (t."X_90" > -1.379504) AND (t."X_51" > -0.019347) AND (t."X_3" <= 3.132718) AND (t."X_93" > 1.216757) AND (t."X_99" > -1.073317)) THEN 20 ELSE NULL END AS "Leaf_20"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.609375 AS "P_0", 0.390625 AS "P_1", 0 AS "D", 0.609375 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.528302 AS "P_0", 0.471698 AS "P_1", 0 AS "D", 0.528302 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.418605 AS "P_0", 0.581395 AS "P_1", 1 AS "D", 0.581395 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.640000 AS "P_0", 0.360000 AS "P_1", 0 AS "D", 0.640000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.761905 AS "P_0", 0.238095 AS "P_1", 0 AS "D", 0.761905 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_29" AS 
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_42" > -0.049265) AND (t."X_53" > 0.510904) AND (t."X_67" <= 1.033261)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_42" > -0.049265) AND (t."X_53" > 0.510904) AND (t."X_67" > 1.033261)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_42" <= -0.049265) AND (t."X_95" <= -0.552997)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_42" <= -0.049265) AND (t."X_95" > -0.552997) AND (t."X_97" > 0.861244) AND (t."X_99" <= 0.315083)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_42" <= -0.049265) AND (t."X_95" > -0.552997) AND (t."X_97" > 0.861244) AND (t."X_99" > 0.315083)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_42" > -0.049265) AND (t."X_53" <= 0.510904) AND (t."X_97" <= -1.438466)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_42" > -0.049265) AND (t."X_53" <= 0.510904) AND (t."X_97" > -1.438466)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_42" <= -0.049265) AND (t."X_95" > -0.552997) AND (t."X_97" <= 0.861244) AND (t."X_52" <= -1.250654)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_42" <= -0.049265) AND (t."X_95" > -0.552997) AND (t."X_97" <= 0.861244) AND (t."X_52" > -1.250654) AND (t."X_15" > -1.435376)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_42" <= -0.049265) AND (t."X_95" > -0.552997) AND (t."X_97" <= 0.861244) AND (t."X_52" > -1.250654) AND (t."X_15" <= -1.435376) AND (t."X_99" <= 0.775867)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_42" <= -0.049265) AND (t."X_95" > -0.552997) AND (t."X_97" <= 0.861244) AND (t."X_52" > -1.250654) AND (t."X_15" <= -1.435376) AND (t."X_99" > 0.775867)) THEN 20 ELSE NULL END AS "Leaf_20"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.531250 AS "P_0", 0.468750 AS "P_1", 0 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.361111 AS "P_0", 0.638889 AS "P_1", 1 AS "D", 0.638889 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.178571 AS "P_0", 0.821429 AS "P_1", 1 AS "D", 0.821429 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_30" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_57" <= -0.787056)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_57" > -0.787056) AND (t."X_98" <= -1.304883)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_57" > -0.787056) AND (t."X_98" > -1.304883) AND (t."X_73" > 0.749203) AND (t."X_10" <= -0.722136)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_57" > -0.787056) AND (t."X_98" > -1.304883) AND (t."X_73" > 0.749203) AND (t."X_10" > -0.722136)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_57" > -0.787056) AND (t."X_98" > -1.304883) AND (t."X_73" <= 0.749203) AND (t."X_97" <= -0.006176) AND (t."X_98" <= -0.532905)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_57" > -0.787056) AND (t."X_98" > -1.304883) AND (t."X_73" <= 0.749203) AND (t."X_97" <= -0.006176) AND (t."X_98" > -0.532905) AND (t."X_99" <= -1.153999)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_57" > -0.787056) AND (t."X_98" > -1.304883) AND (t."X_73" <= 0.749203) AND (t."X_97" <= -0.006176) AND (t."X_98" > -0.532905) AND (t."X_99" > -1.153999)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_57" > -0.787056) AND (t."X_98" > -1.304883) AND (t."X_73" <= 0.749203) AND (t."X_97" > -0.006176) AND (t."X_10" > -0.921249)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_57" > -0.787056) AND (t."X_98" > -1.304883) AND (t."X_73" <= 0.749203) AND (t."X_97" > -0.006176) AND (t."X_10" <= -0.921249) AND (t."X_46" <= 1.078124)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_57" > -0.787056) AND (t."X_98" > -1.304883) AND (t."X_73" <= 0.749203) AND (t."X_97" > -0.006176) AND (t."X_10" <= -0.921249) AND (t."X_46" > 1.078124)) THEN 18 ELSE NULL END AS "Leaf_18"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_31" AS 
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
    SELECT 2 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.326531 AS "P_0", 0.673469 AS "P_1", 1 AS "D", 0.673469 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.243902 AS "P_0", 0.756098 AS "P_1", 1 AS "D", 0.756098 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_31" AS 
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
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_4" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_31" AS t
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