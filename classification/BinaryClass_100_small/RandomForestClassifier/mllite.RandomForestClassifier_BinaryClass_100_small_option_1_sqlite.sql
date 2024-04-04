WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16" ) AS node_id
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
      CASE WHEN((t."X_22" <= 0.667991) AND (t."X_90" > -1.141129) AND (t."X_94" <= 1.175978) AND (t."X_51" <= 0.534756) AND (t."X_98" > -1.592880) AND (t."X_94" <= -1.390951)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_22" <= 0.667991) AND (t."X_90" > -1.141129) AND (t."X_94" <= 1.175978) AND (t."X_51" <= 0.534756) AND (t."X_98" > -1.592880) AND (t."X_94" > -1.390951)) THEN 16 ELSE NULL END AS "Leaf_16"
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