WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_44" <= 0.500000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_44" > 0.500000) AND (t."X_61" <= 5.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_44" > 0.500000) AND (t."X_61" > 5.500000) AND (t."X_35" <= 10.000000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_44" > 0.500000) AND (t."X_61" > 5.500000) AND (t."X_35" > 10.000000) AND (t."X_3" <= 10.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_44" > 0.500000) AND (t."X_61" > 5.500000) AND (t."X_35" > 10.000000) AND (t."X_3" > 10.500000)) THEN 8 ELSE NULL END AS Leaf_8
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.375000 AS "P_0", 0.125000 AS "P_1", 0.000000 AS "P_2", 0.062500 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.062500 AS "P_6", 0.375000 AS "P_7", 0 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.600000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.100000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.100000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.250000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.500000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_17" <= 1.000000) AND (t."X_59" <= 13.000000) AND (t."X_33" <= 6.000000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_17" <= 1.000000) AND (t."X_59" <= 13.000000) AND (t."X_33" > 6.000000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_17" > 1.000000) AND (t."X_49" > 2.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_17" > 1.000000) AND (t."X_49" <= 2.500000) AND (t."X_62" > 0.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_17" > 1.000000) AND (t."X_49" <= 2.500000) AND (t."X_62" <= 0.500000) AND (t."X_35" <= 8.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_17" > 1.000000) AND (t."X_49" <= 2.500000) AND (t."X_62" <= 0.500000) AND (t."X_35" > 8.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_17" <= 1.000000) AND (t."X_59" > 13.000000) AND (t."X_35" <= 11.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_17" <= 1.000000) AND (t."X_59" > 13.000000) AND (t."X_35" > 11.500000) AND (t."X_33" <= 3.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_17" <= 1.000000) AND (t."X_59" > 13.000000) AND (t."X_35" > 11.500000) AND (t."X_33" > 3.500000)) THEN 16 ELSE NULL END AS Leaf_16
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.125000 AS "P_0", 0.187500 AS "P_1", 0.000000 AS "P_2", 0.062500 AS "P_3", 0.062500 AS "P_4", 0.062500 AS "P_5", 0.250000 AS "P_6", 0.250000 AS "P_7", 6 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 0.166667 AS "P_4", 0.166667 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.400000 AS "P_6", 0.400000 AS "P_7", 6 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.500000 AS "P_4", 0.500000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.285714 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.142857 AS "P_6", 0.571429 AS "P_7", 7 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.333333 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_44" <= 0.500000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_44" > 0.500000) AND (t."X_61" <= 1.500000) AND (t."X_34" <= 9.000000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_44" > 0.500000) AND (t."X_61" <= 1.500000) AND (t."X_34" > 9.000000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_44" > 0.500000) AND (t."X_61" > 1.500000) AND (t."X_61" <= 5.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_44" > 0.500000) AND (t."X_61" > 1.500000) AND (t."X_61" > 5.500000) AND (t."X_34" > 10.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_44" > 0.500000) AND (t."X_61" > 1.500000) AND (t."X_61" > 5.500000) AND (t."X_34" <= 10.500000) AND (t."X_63" > 6.000000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_44" > 0.500000) AND (t."X_61" > 1.500000) AND (t."X_61" > 5.500000) AND (t."X_34" <= 10.500000) AND (t."X_63" <= 6.000000) AND (t."X_34" <= 7.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_44" > 0.500000) AND (t."X_61" > 1.500000) AND (t."X_61" > 5.500000) AND (t."X_34" <= 10.500000) AND (t."X_63" <= 6.000000) AND (t."X_34" > 7.500000)) THEN 14 ELSE NULL END AS Leaf_14
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.125000 AS "P_0", 0.125000 AS "P_1", 0.000000 AS "P_2", 0.062500 AS "P_3", 0.125000 AS "P_4", 0.250000 AS "P_5", 0.062500 AS "P_6", 0.250000 AS "P_7", 5 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.166667 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.083333 AS "P_3", 0.166667 AS "P_4", 0.333333 AS "P_5", 0.083333 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.800000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.285714 AS "P_0", 0.142857 AS "P_1", 0.000000 AS "P_2", 0.142857 AS "P_3", 0.285714 AS "P_4", 0.000000 AS "P_5", 0.142857 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.285714 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 0.400000 AS "P_4", 0.000000 AS "P_5", 0.200000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.333333 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.500000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_33" > 2.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_33" <= 2.500000) AND (t."X_63" > 6.000000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_33" <= 2.500000) AND (t."X_63" <= 6.000000) AND (t."X_37" > 12.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_33" <= 2.500000) AND (t."X_63" <= 6.000000) AND (t."X_37" <= 12.500000) AND (t."X_37" > 9.000000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_33" <= 2.500000) AND (t."X_63" <= 6.000000) AND (t."X_37" <= 12.500000) AND (t."X_37" <= 9.000000) AND (t."X_21" <= 13.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_33" <= 2.500000) AND (t."X_63" <= 6.000000) AND (t."X_37" <= 12.500000) AND (t."X_37" <= 9.000000) AND (t."X_21" > 13.500000) AND (t."X_37" <= 4.000000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_33" <= 2.500000) AND (t."X_63" <= 6.000000) AND (t."X_37" <= 12.500000) AND (t."X_37" <= 9.000000) AND (t."X_21" > 13.500000) AND (t."X_37" > 4.000000)) THEN 12 ELSE NULL END AS Leaf_12
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.187500 AS "P_1", 0.062500 AS "P_2", 0.062500 AS "P_3", 0.000000 AS "P_4", 0.125000 AS "P_5", 0.125000 AS "P_6", 0.187500 AS "P_7", 0 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.083333 AS "P_2", 0.083333 AS "P_3", 0.000000 AS "P_4", 0.166667 AS "P_5", 0.166667 AS "P_6", 0.250000 AS "P_7", 1 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.111111 AS "P_3", 0.000000 AS "P_4", 0.222222 AS "P_5", 0.222222 AS "P_6", 0.333333 AS "P_7", 7 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.142857 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.285714 AS "P_6", 0.428571 AS "P_7", 7 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.500000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_62" > 0.500000) AND (t."X_3" > 11.000000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_62" > 0.500000) AND (t."X_3" <= 11.000000) AND (t."X_63" <= 6.000000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_62" > 0.500000) AND (t."X_3" <= 11.000000) AND (t."X_63" > 6.000000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_62" <= 0.500000) AND (t."X_51" <= 9.000000) AND (t."X_18" <= 7.000000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_62" <= 0.500000) AND (t."X_51" <= 9.000000) AND (t."X_18" > 7.000000) AND (t."X_2" <= 2.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_62" <= 0.500000) AND (t."X_51" <= 9.000000) AND (t."X_18" > 7.000000) AND (t."X_2" > 2.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_62" <= 0.500000) AND (t."X_51" > 9.000000) AND (t."X_42" <= 7.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_62" <= 0.500000) AND (t."X_51" > 9.000000) AND (t."X_42" > 7.500000)) THEN 14 ELSE NULL END AS Leaf_14
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.125000 AS "P_1", 0.062500 AS "P_2", 0.125000 AS "P_3", 0.125000 AS "P_4", 0.062500 AS "P_5", 0.062500 AS "P_6", 0.187500 AS "P_7", 0 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 0.200000 AS "P_4", 0.100000 AS "P_5", 0.100000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.500000 AS "P_7", 7 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.400000 AS "P_3", 0.400000 AS "P_4", 0.000000 AS "P_5", 0.200000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.200000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.666667 AS "P_4", 0.000000 AS "P_5", 0.333333 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_35" <= 5.500000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_35" > 5.500000) AND (t."X_62" <= 0.500000) AND (t."X_35" <= 14.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_35" > 5.500000) AND (t."X_62" <= 0.500000) AND (t."X_35" > 14.500000) AND (t."X_25" <= 1.000000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_35" > 5.500000) AND (t."X_62" <= 0.500000) AND (t."X_35" > 14.500000) AND (t."X_25" > 1.000000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_35" > 5.500000) AND (t."X_62" > 0.500000) AND (t."X_63" <= 6.000000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_35" > 5.500000) AND (t."X_62" > 0.500000) AND (t."X_63" > 6.000000)) THEN 10 ELSE NULL END AS Leaf_10
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.375000 AS "P_0", 0.125000 AS "P_1", 0.000000 AS "P_2", 0.062500 AS "P_3", 0.000000 AS "P_4", 0.125000 AS "P_5", 0.000000 AS "P_6", 0.312500 AS "P_7", 0 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.100000 AS "P_3", 0.000000 AS "P_4", 0.200000 AS "P_5", 0.000000 AS "P_6", 0.500000 AS "P_7", 7 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 0.000000 AS "P_4", 0.500000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.833333 AS "P_7", 7 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_17" > 2.500000) AND (t."X_45" <= 13.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_17" > 2.500000) AND (t."X_45" > 13.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_17" <= 2.500000) AND (t."X_59" <= 13.000000) AND (t."X_18" <= 10.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_17" <= 2.500000) AND (t."X_59" <= 13.000000) AND (t."X_18" > 10.500000) AND (t."X_18" <= 15.000000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_17" <= 2.500000) AND (t."X_59" <= 13.000000) AND (t."X_18" > 10.500000) AND (t."X_18" > 15.000000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_17" <= 2.500000) AND (t."X_59" > 13.000000) AND (t."X_45" <= 10.000000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_17" <= 2.500000) AND (t."X_59" > 13.000000) AND (t."X_45" > 10.000000)) THEN 12 ELSE NULL END AS Leaf_12
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.125000 AS "P_0", 0.312500 AS "P_1", 0.000000 AS "P_2", 0.062500 AS "P_3", 0.000000 AS "P_4", 0.125000 AS "P_5", 0.125000 AS "P_6", 0.250000 AS "P_7", 1 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.181818 AS "P_0", 0.454545 AS "P_1", 0.000000 AS "P_2", 0.090909 AS "P_3", 0.000000 AS "P_4", 0.181818 AS "P_5", 0.090909 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.454545 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.200000 AS "P_6", 0.800000 AS "P_7", 7 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.400000 AS "P_5", 0.200000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.833333 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.333333 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_52" <= 6.000000) AND (t."X_4" <= 7.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_52" <= 6.000000) AND (t."X_4" > 7.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_52" > 6.000000) AND (t."X_18" > 12.500000) AND (t."X_22" <= 7.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_52" > 6.000000) AND (t."X_18" > 12.500000) AND (t."X_22" > 7.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_52" > 6.000000) AND (t."X_18" <= 12.500000) AND (t."X_3" <= 5.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_52" > 6.000000) AND (t."X_18" <= 12.500000) AND (t."X_3" > 5.500000) AND (t."X_19" > 10.000000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_52" > 6.000000) AND (t."X_18" <= 12.500000) AND (t."X_3" > 5.500000) AND (t."X_19" <= 10.000000) AND (t."X_22" <= 8.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_52" > 6.000000) AND (t."X_18" <= 12.500000) AND (t."X_3" > 5.500000) AND (t."X_19" <= 10.000000) AND (t."X_22" > 8.500000)) THEN 14 ELSE NULL END AS Leaf_14
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.125000 AS "P_1", 0.125000 AS "P_2", 0.062500 AS "P_3", 0.000000 AS "P_4", 0.062500 AS "P_5", 0.187500 AS "P_6", 0.250000 AS "P_7", 7 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.666667 AS "P_7", 7 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.100000 AS "P_0", 0.200000 AS "P_1", 0.200000 AS "P_2", 0.100000 AS "P_3", 0.000000 AS "P_4", 0.100000 AS "P_5", 0.300000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 0.300000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.333333 AS "P_2", 0.166667 AS "P_3", 0.000000 AS "P_4", 0.166667 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.750000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 0.000000 AS "P_4", 0.250000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0.000000 AS "P_4", 0.500000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 0.500000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_2" > 0.500000) AND (t."X_10" <= 11.500000) AND (t."X_59" <= 13.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_2" > 0.500000) AND (t."X_10" <= 11.500000) AND (t."X_59" > 13.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_2" > 0.500000) AND (t."X_10" > 11.500000) AND (t."X_10" <= 15.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_2" > 0.500000) AND (t."X_10" > 11.500000) AND (t."X_10" > 15.500000)) THEN 8 ELSE NULL END AS Leaf_8
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.187500 AS "P_5", 0.062500 AS "P_6", 0.250000 AS "P_7", 0 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.250000 AS "P_5", 0.083333 AS "P_6", 0.333333 AS "P_7", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.571429 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.428571 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.200000 AS "P_6", 0.800000 AS "P_7", 7 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 12.000000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_5" <= 12.000000) AND (t."X_63" > 6.000000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_5" <= 12.000000) AND (t."X_63" <= 6.000000) AND (t."X_27" > 6.000000) AND (t."X_3" <= 12.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_5" <= 12.000000) AND (t."X_63" <= 6.000000) AND (t."X_27" > 6.000000) AND (t."X_3" > 12.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_5" <= 12.000000) AND (t."X_63" <= 6.000000) AND (t."X_27" <= 6.000000) AND (t."X_28" <= 2.000000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_5" <= 12.000000) AND (t."X_63" <= 6.000000) AND (t."X_27" <= 6.000000) AND (t."X_28" > 2.000000)) THEN 10 ELSE NULL END AS Leaf_10
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.187500 AS "P_1", 0.062500 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.312500 AS "P_5", 0.125000 AS "P_6", 0.125000 AS "P_7", 5 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.272727 AS "P_0", 0.272727 AS "P_1", 0.090909 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.181818 AS "P_6", 0.181818 AS "P_7", 0 AS "D", 0.272727 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.375000 AS "P_0", 0.000000 AS "P_1", 0.125000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.250000 AS "P_6", 0.250000 AS "P_7", 0 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.500000 AS "P_6", 0.500000 AS "P_7", 6 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_13" <= 4.500000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_13" > 4.500000) AND (t."X_62" > 0.500000) AND (t."X_62" <= 5.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_13" > 4.500000) AND (t."X_62" > 0.500000) AND (t."X_62" > 5.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_13" > 4.500000) AND (t."X_62" <= 0.500000) AND (t."X_35" <= 7.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_13" > 4.500000) AND (t."X_62" <= 0.500000) AND (t."X_35" > 7.500000) AND (t."X_60" <= 8.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_13" > 4.500000) AND (t."X_62" <= 0.500000) AND (t."X_35" > 7.500000) AND (t."X_60" > 8.500000) AND (t."X_36" <= 14.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_13" > 4.500000) AND (t."X_62" <= 0.500000) AND (t."X_35" > 7.500000) AND (t."X_60" > 8.500000) AND (t."X_36" > 14.500000)) THEN 12 ELSE NULL END AS Leaf_12
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.187500 AS "P_1", 0.062500 AS "P_2", 0.062500 AS "P_3", 0.000000 AS "P_4", 0.125000 AS "P_5", 0.125000 AS "P_6", 0.250000 AS "P_7", 7 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.230769 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.076923 AS "P_3", 0.000000 AS "P_4", 0.153846 AS "P_5", 0.153846 AS "P_6", 0.307692 AS "P_7", 7 AS "D", 0.307692 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.375000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.125000 AS "P_3", 0.000000 AS "P_4", 0.250000 AS "P_5", 0.250000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.800000 AS "P_7", 7 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 0.000000 AS "P_4", 0.400000 AS "P_5", 0.400000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.666667 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" <= 12.000000) AND (t."X_9" <= 0.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_4" <= 12.000000) AND (t."X_9" > 0.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_4" > 12.000000) AND (t."X_37" <= 3.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_4" > 12.000000) AND (t."X_37" > 3.500000) AND (t."X_60" <= 6.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_4" > 12.000000) AND (t."X_37" > 3.500000) AND (t."X_60" > 6.500000) AND (t."X_45" > 13.000000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_4" > 12.000000) AND (t."X_37" > 3.500000) AND (t."X_60" > 6.500000) AND (t."X_45" <= 13.000000) AND (t."X_12" <= 9.000000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_4" > 12.000000) AND (t."X_37" > 3.500000) AND (t."X_60" > 6.500000) AND (t."X_45" <= 13.000000) AND (t."X_12" > 9.000000)) THEN 12 ELSE NULL END AS Leaf_12
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.062500 AS "P_0", 0.250000 AS "P_1", 0.062500 AS "P_2", 0.187500 AS "P_3", 0.000000 AS "P_4", 0.187500 AS "P_5", 0.125000 AS "P_6", 0.125000 AS "P_7", 1 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.333333 AS "P_7", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.100000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.300000 AS "P_3", 0.000000 AS "P_4", 0.300000 AS "P_5", 0.200000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 0.300000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.428571 AS "P_5", 0.285714 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.500000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_33" > 2.000000) AND (t."X_46" <= 1.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_33" > 2.000000) AND (t."X_46" > 1.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_33" <= 2.000000) AND (t."X_44" <= 11.000000) AND (t."X_2" <= 0.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_33" <= 2.000000) AND (t."X_44" <= 11.000000) AND (t."X_2" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_33" <= 2.000000) AND (t."X_44" > 11.000000) AND (t."X_35" <= 14.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_33" <= 2.000000) AND (t."X_44" > 11.000000) AND (t."X_35" > 14.500000)) THEN 10 ELSE NULL END AS Leaf_10
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.062500 AS "P_1", 0.062500 AS "P_2", 0.125000 AS "P_3", 0.000000 AS "P_4", 0.312500 AS "P_5", 0.000000 AS "P_6", 0.125000 AS "P_7", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.200000 AS "P_3", 0.000000 AS "P_4", 0.500000 AS "P_5", 0.000000 AS "P_6", 0.200000 AS "P_7", 5 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.666667 AS "P_7", 7 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.285714 AS "P_3", 0.000000 AS "P_4", 0.714286 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_43" > 15.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_43" <= 15.500000) AND (t."X_7" > 3.000000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_43" <= 15.500000) AND (t."X_7" <= 3.000000) AND (t."X_59" <= 12.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_43" <= 15.500000) AND (t."X_7" <= 3.000000) AND (t."X_59" > 12.500000) AND (t."X_53" > 14.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_43" <= 15.500000) AND (t."X_7" <= 3.000000) AND (t."X_59" > 12.500000) AND (t."X_53" <= 14.500000) AND (t."X_17" <= 1.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_43" <= 15.500000) AND (t."X_7" <= 3.000000) AND (t."X_59" > 12.500000) AND (t."X_53" <= 14.500000) AND (t."X_17" > 1.500000) AND (t."X_44" <= 6.000000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_43" <= 15.500000) AND (t."X_7" <= 3.000000) AND (t."X_59" > 12.500000) AND (t."X_53" <= 14.500000) AND (t."X_17" > 1.500000) AND (t."X_44" > 6.000000)) THEN 12 ELSE NULL END AS Leaf_12
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.125000 AS "P_1", 0.312500 AS "P_2", 0.125000 AS "P_3", 0.000000 AS "P_4", 0.125000 AS "P_5", 0.062500 AS "P_6", 0.062500 AS "P_7", 2 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.272727 AS "P_0", 0.181818 AS "P_1", 0.000000 AS "P_2", 0.181818 AS "P_3", 0.000000 AS "P_4", 0.181818 AS "P_5", 0.090909 AS "P_6", 0.090909 AS "P_7", 0 AS "D", 0.272727 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.333333 AS "P_0", 0.222222 AS "P_1", 0.000000 AS "P_2", 0.222222 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.111111 AS "P_6", 0.111111 AS "P_7", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.166667 AS "P_6", 0.166667 AS "P_7", 1 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.250000 AS "P_6", 0.250000 AS "P_7", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.500000 AS "P_6", 0.500000 AS "P_7", 6 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_62" > 0.500000) AND (t."X_52" <= 10.000000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_62" > 0.500000) AND (t."X_52" > 10.000000) AND (t."X_63" <= 6.000000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_62" > 0.500000) AND (t."X_52" > 10.000000) AND (t."X_63" > 6.000000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_62" <= 0.500000) AND (t."X_60" <= 10.500000) AND (t."X_52" <= 11.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_62" <= 0.500000) AND (t."X_60" <= 10.500000) AND (t."X_52" > 11.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_62" <= 0.500000) AND (t."X_60" > 10.500000) AND (t."X_2" <= 0.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_62" <= 0.500000) AND (t."X_60" > 10.500000) AND (t."X_2" > 0.500000) AND (t."X_58" <= 5.000000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_62" <= 0.500000) AND (t."X_60" > 10.500000) AND (t."X_2" > 0.500000) AND (t."X_58" > 5.000000)) THEN 14 ELSE NULL END AS Leaf_14
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.125000 AS "P_1", 0.125000 AS "P_2", 0.000000 AS "P_3", 0.125000 AS "P_4", 0.062500 AS "P_5", 0.062500 AS "P_6", 0.187500 AS "P_7", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.500000 AS "P_0", 0.100000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.200000 AS "P_4", 0.100000 AS "P_5", 0.100000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.500000 AS "P_7", 7 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.500000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.625000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.250000 AS "P_4", 0.000000 AS "P_5", 0.125000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.166667 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_28" <= 9.500000) AND (t."X_4" > 15.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_28" <= 9.500000) AND (t."X_4" <= 15.500000) AND (t."X_61" > 12.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_28" <= 9.500000) AND (t."X_4" <= 15.500000) AND (t."X_61" <= 12.500000) AND (t."X_33" <= 9.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_28" <= 9.500000) AND (t."X_4" <= 15.500000) AND (t."X_61" <= 12.500000) AND (t."X_33" > 9.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_28" > 9.500000) AND (t."X_19" > 12.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_28" > 9.500000) AND (t."X_19" <= 12.500000) AND (t."X_20" > 13.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_28" > 9.500000) AND (t."X_19" <= 12.500000) AND (t."X_20" <= 13.500000) AND (t."X_61" <= 10.000000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_28" > 9.500000) AND (t."X_19" <= 12.500000) AND (t."X_20" <= 13.500000) AND (t."X_61" > 10.000000)) THEN 14 ELSE NULL END AS Leaf_14
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.125000 AS "P_0", 0.125000 AS "P_1", 0.125000 AS "P_2", 0.062500 AS "P_3", 0.062500 AS "P_4", 0.187500 AS "P_5", 0.250000 AS "P_6", 0.062500 AS "P_7", 6 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0.125000 AS "P_4", 0.375000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.125000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.500000 AS "P_6", 0.125000 AS "P_7", 6 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.400000 AS "P_2", 0.000000 AS "P_3", 0.200000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.333333 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.666667 AS "P_6", 0.166667 AS "P_7", 6 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.500000 AS "P_7", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_62" > 0.500000) AND (t."X_60" <= 12.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_62" > 0.500000) AND (t."X_60" > 12.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_62" <= 0.500000) AND (t."X_18" <= 12.500000) AND (t."X_4" <= 15.000000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_62" <= 0.500000) AND (t."X_18" <= 12.500000) AND (t."X_4" > 15.000000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_62" <= 0.500000) AND (t."X_18" > 12.500000) AND (t."X_4" <= 7.000000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_62" <= 0.500000) AND (t."X_18" > 12.500000) AND (t."X_4" > 7.000000) AND (t."X_2" <= 3.000000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_62" <= 0.500000) AND (t."X_18" > 12.500000) AND (t."X_4" > 7.000000) AND (t."X_2" > 3.000000)) THEN 12 ELSE NULL END AS Leaf_12
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.000000 AS "P_1", 0.062500 AS "P_2", 0.000000 AS "P_3", 0.062500 AS "P_4", 0.125000 AS "P_5", 0.125000 AS "P_6", 0.312500 AS "P_7", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.100000 AS "P_4", 0.200000 AS "P_5", 0.200000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.833333 AS "P_7", 7 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.333333 AS "P_4", 0.666667 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.714286 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.285714 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.500000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_36" > 2.000000) AND (t."X_27" <= 2.000000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_36" <= 2.000000) AND (t."X_42" <= 5.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_36" <= 2.000000) AND (t."X_42" > 5.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_36" > 2.000000) AND (t."X_27" > 2.000000) AND (t."X_59" <= 7.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_36" > 2.000000) AND (t."X_27" > 2.000000) AND (t."X_59" > 7.500000) AND (t."X_34" <= 5.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_36" > 2.000000) AND (t."X_27" > 2.000000) AND (t."X_59" > 7.500000) AND (t."X_34" > 5.500000) AND (t."X_42" <= 3.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_36" > 2.000000) AND (t."X_27" > 2.000000) AND (t."X_59" > 7.500000) AND (t."X_34" > 5.500000) AND (t."X_42" > 3.500000) AND (t."X_34" <= 11.000000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_36" > 2.000000) AND (t."X_27" > 2.000000) AND (t."X_59" > 7.500000) AND (t."X_34" > 5.500000) AND (t."X_42" > 3.500000) AND (t."X_34" > 11.000000)) THEN 14 ELSE NULL END AS Leaf_14
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.062500 AS "P_1", 0.000000 AS "P_2", 0.062500 AS "P_3", 0.125000 AS "P_4", 0.250000 AS "P_5", 0.062500 AS "P_6", 0.125000 AS "P_7", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.166667 AS "P_7", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.100000 AS "P_1", 0.000000 AS "P_2", 0.100000 AS "P_3", 0.200000 AS "P_4", 0.400000 AS "P_5", 0.100000 AS "P_6", 0.100000 AS "P_7", 5 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 0.333333 AS "P_4", 0.000000 AS "P_5", 0.166667 AS "P_6", 0.166667 AS "P_7", 4 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.250000 AS "P_6", 0.250000 AS "P_7", 1 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.333333 AS "P_6", 0.333333 AS "P_7", 3 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.500000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_36" <= 1.500000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_36" > 1.500000) AND (t."X_59" > 15.500000) AND (t."X_63" <= 6.000000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_36" > 1.500000) AND (t."X_59" > 15.500000) AND (t."X_63" > 6.000000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_36" > 1.500000) AND (t."X_59" <= 15.500000) AND (t."X_36" <= 13.500000) AND (t."X_36" <= 8.000000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_36" > 1.500000) AND (t."X_59" <= 15.500000) AND (t."X_36" <= 13.500000) AND (t."X_36" > 8.000000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_36" > 1.500000) AND (t."X_59" <= 15.500000) AND (t."X_36" > 13.500000) AND (t."X_45" > 2.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_36" > 1.500000) AND (t."X_59" <= 15.500000) AND (t."X_36" > 13.500000) AND (t."X_45" <= 2.500000) AND (t."X_36" <= 14.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_36" > 1.500000) AND (t."X_59" <= 15.500000) AND (t."X_36" > 13.500000) AND (t."X_45" <= 2.500000) AND (t."X_36" > 14.500000)) THEN 14 ELSE NULL END AS Leaf_14
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.125000 AS "P_1", 0.062500 AS "P_2", 0.125000 AS "P_3", 0.000000 AS "P_4", 0.125000 AS "P_5", 0.250000 AS "P_6", 0.062500 AS "P_7", 0 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.083333 AS "P_2", 0.166667 AS "P_3", 0.000000 AS "P_4", 0.166667 AS "P_5", 0.333333 AS "P_6", 0.083333 AS "P_7", 6 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.142857 AS "P_1", 0.142857 AS "P_2", 0.285714 AS "P_3", 0.000000 AS "P_4", 0.285714 AS "P_5", 0.000000 AS "P_6", 0.142857 AS "P_7", 3 AS "D", 0.285714 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.800000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.333333 AS "P_7", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.500000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_46" > 6.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_46" <= 6.500000) AND (t."X_45" > 14.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_46" <= 6.500000) AND (t."X_45" <= 14.500000) AND (t."X_18" > 12.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_46" <= 6.500000) AND (t."X_45" <= 14.500000) AND (t."X_18" <= 12.500000) AND (t."X_19" <= 2.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_46" <= 6.500000) AND (t."X_45" <= 14.500000) AND (t."X_18" <= 12.500000) AND (t."X_19" > 2.500000) AND (t."X_12" <= 8.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_46" <= 6.500000) AND (t."X_45" <= 14.500000) AND (t."X_18" <= 12.500000) AND (t."X_19" > 2.500000) AND (t."X_12" > 8.500000)) THEN 10 ELSE NULL END AS Leaf_10
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.000000 AS "P_1", 0.062500 AS "P_2", 0.062500 AS "P_3", 0.000000 AS "P_4", 0.125000 AS "P_5", 0.375000 AS "P_6", 0.187500 AS "P_7", 6 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.230769 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.076923 AS "P_3", 0.000000 AS "P_4", 0.153846 AS "P_5", 0.461538 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 0.461538 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.428571 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.142857 AS "P_3", 0.000000 AS "P_4", 0.285714 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 0.000000 AS "P_4", 0.500000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.666667 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_33" > 2.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_33" <= 2.500000) AND (t."X_61" <= 1.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_33" <= 2.500000) AND (t."X_61" > 1.500000) AND (t."X_35" > 12.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_33" <= 2.500000) AND (t."X_61" > 1.500000) AND (t."X_35" <= 12.500000) AND (t."X_62" <= 5.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_33" <= 2.500000) AND (t."X_61" > 1.500000) AND (t."X_35" <= 12.500000) AND (t."X_62" > 5.500000) AND (t."X_63" <= 6.000000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_33" <= 2.500000) AND (t."X_61" > 1.500000) AND (t."X_35" <= 12.500000) AND (t."X_62" > 5.500000) AND (t."X_63" > 6.000000)) THEN 10 ELSE NULL END AS Leaf_10
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.062500 AS "P_1", 0.062500 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.250000 AS "P_5", 0.125000 AS "P_6", 0.187500 AS "P_7", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.090909 AS "P_1", 0.090909 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.363636 AS "P_5", 0.181818 AS "P_6", 0.272727 AS "P_7", 5 AS "D", 0.363636 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.142857 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.285714 AS "P_6", 0.428571 AS "P_7", 7 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.600000 AS "P_7", 7 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_5", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.500000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_5" > 0.500000) AND (t."X_37" > 11.000000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_5" > 0.500000) AND (t."X_37" <= 11.000000) AND (t."X_36" <= 1.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_5" > 0.500000) AND (t."X_37" <= 11.000000) AND (t."X_36" > 1.500000) AND (t."X_59" > 15.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_5" > 0.500000) AND (t."X_37" <= 11.000000) AND (t."X_36" > 1.500000) AND (t."X_59" <= 15.500000) AND (t."X_17" > 4.000000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_5" > 0.500000) AND (t."X_37" <= 11.000000) AND (t."X_36" > 1.500000) AND (t."X_59" <= 15.500000) AND (t."X_17" <= 4.000000) AND (t."X_27" <= 6.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_5" > 0.500000) AND (t."X_37" <= 11.000000) AND (t."X_36" > 1.500000) AND (t."X_59" <= 15.500000) AND (t."X_17" <= 4.000000) AND (t."X_27" > 6.500000)) THEN 12 ELSE NULL END AS Leaf_12
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.187500 AS "P_1", 0.062500 AS "P_2", 0.062500 AS "P_3", 0.000000 AS "P_4", 0.187500 AS "P_5", 0.187500 AS "P_6", 0.125000 AS "P_7", 0 AS "D", 0.187500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.230769 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.076923 AS "P_3", 0.000000 AS "P_4", 0.230769 AS "P_5", 0.230769 AS "P_6", 0.153846 AS "P_7", 0 AS "D", 0.230769 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.300000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.100000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.300000 AS "P_6", 0.200000 AS "P_7", 0 AS "D", 0.300000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.142857 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.428571 AS "P_6", 0.285714 AS "P_7", 6 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.500000 AS "P_7", 7 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_30" <= 1.000000) AND (t."X_9" > 3.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_30" <= 1.000000) AND (t."X_9" <= 3.500000) AND (t."X_46" <= 2.000000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_30" <= 1.000000) AND (t."X_9" <= 3.500000) AND (t."X_46" > 2.000000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_30" > 1.000000) AND (t."X_46" <= 2.000000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_30" > 1.000000) AND (t."X_46" > 2.000000) AND (t."X_59" <= 6.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_30" > 1.000000) AND (t."X_46" > 2.000000) AND (t."X_59" > 6.500000) AND (t."X_11" <= 11.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_30" > 1.000000) AND (t."X_46" > 2.000000) AND (t."X_59" > 6.500000) AND (t."X_11" > 11.500000)) THEN 12 ELSE NULL END AS Leaf_12
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.125000 AS "P_3", 0.125000 AS "P_4", 0.187500 AS "P_5", 0.062500 AS "P_6", 0.062500 AS "P_7", 1 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.571429 AS "P_1", 0.000000 AS "P_2", 0.285714 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.142857 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.222222 AS "P_4", 0.333333 AS "P_5", 0.000000 AS "P_6", 0.111111 AS "P_7", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.200000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.333333 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.166667 AS "P_7", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.250000 AS "P_7", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_37" <= 12.500000) AND (t."X_28" <= 2.000000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_37" <= 12.500000) AND (t."X_28" > 2.000000) AND (t."X_52" <= 6.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_37" <= 12.500000) AND (t."X_28" > 2.000000) AND (t."X_52" > 6.500000) AND (t."X_37" <= 7.000000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_37" <= 12.500000) AND (t."X_28" > 2.000000) AND (t."X_52" > 6.500000) AND (t."X_37" > 7.000000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_37" > 12.500000) AND (t."X_2" <= 1.000000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_37" > 12.500000) AND (t."X_2" > 1.000000)) THEN 10 ELSE NULL END AS Leaf_10
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.000000 AS "P_1", 0.062500 AS "P_2", 0.000000 AS "P_3", 0.062500 AS "P_4", 0.312500 AS "P_5", 0.062500 AS "P_6", 0.312500 AS "P_7", 5 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.300000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.100000 AS "P_6", 0.500000 AS "P_7", 7 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.166667 AS "P_4", 0.833333 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.142857 AS "P_6", 0.714286 AS "P_7", 7 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.500000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_37" > 14.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_37" <= 14.500000) AND (t."X_36" > 14.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_37" <= 14.500000) AND (t."X_36" <= 14.500000) AND (t."X_37" <= 1.000000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_37" <= 14.500000) AND (t."X_36" <= 14.500000) AND (t."X_37" > 1.000000) AND (t."X_36" <= 1.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_37" <= 14.500000) AND (t."X_36" <= 14.500000) AND (t."X_37" > 1.000000) AND (t."X_36" > 1.500000) AND (t."X_37" <= 5.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_37" <= 14.500000) AND (t."X_36" <= 14.500000) AND (t."X_37" > 1.000000) AND (t."X_36" > 1.500000) AND (t."X_37" > 5.500000)) THEN 10 ELSE NULL END AS Leaf_10
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.125000 AS "P_0", 0.125000 AS "P_1", 0.000000 AS "P_2", 0.062500 AS "P_3", 0.250000 AS "P_4", 0.312500 AS "P_5", 0.000000 AS "P_6", 0.125000 AS "P_7", 5 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.166667 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.083333 AS "P_3", 0.000000 AS "P_4", 0.416667 AS "P_5", 0.000000 AS "P_6", 0.166667 AS "P_7", 5 AS "D", 0.416667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.285714 AS "P_0", 0.285714 AS "P_1", 0.000000 AS "P_2", 0.142857 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.285714 AS "P_7", 0 AS "D", 0.285714 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.400000 AS "P_7", 0 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.666667 AS "P_7", 7 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_6", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_61" > 12.000000) AND (t."X_63" <= 6.000000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_61" > 12.000000) AND (t."X_63" > 6.000000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_61" <= 12.000000) AND (t."X_41" > 8.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_61" <= 12.000000) AND (t."X_41" <= 8.500000) AND (t."X_41" <= 0.500000) AND (t."X_5" <= 10.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_61" <= 12.000000) AND (t."X_41" <= 8.500000) AND (t."X_41" <= 0.500000) AND (t."X_5" > 10.500000) AND (t."X_5" <= 12.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_61" <= 12.000000) AND (t."X_41" <= 8.500000) AND (t."X_41" <= 0.500000) AND (t."X_5" > 10.500000) AND (t."X_5" > 12.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_61" <= 12.000000) AND (t."X_41" <= 8.500000) AND (t."X_41" > 0.500000) AND (t."X_41" <= 2.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_61" <= 12.000000) AND (t."X_41" <= 8.500000) AND (t."X_41" > 0.500000) AND (t."X_41" > 2.500000) AND (t."X_61" <= 7.000000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_61" <= 12.000000) AND (t."X_41" <= 8.500000) AND (t."X_41" > 0.500000) AND (t."X_41" > 2.500000) AND (t."X_61" > 7.000000)) THEN 16 ELSE NULL END AS Leaf_16
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.375000 AS "P_0", 0.062500 AS "P_1", 0.000000 AS "P_2", 0.062500 AS "P_3", 0.187500 AS "P_4", 0.062500 AS "P_5", 0.125000 AS "P_6", 0.125000 AS "P_7", 0 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.461538 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.076923 AS "P_3", 0.230769 AS "P_4", 0.076923 AS "P_5", 0.153846 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.461538 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.666667 AS "P_7", 7 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.600000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.100000 AS "P_3", 0.000000 AS "P_4", 0.100000 AS "P_5", 0.200000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0.000000 AS "P_4", 0.333333 AS "P_5", 0.333333 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.857143 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.142857 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.500000 AS "P_5", 0.500000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.333333 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_41" <= 0.500000) AND (t."X_17" > 3.000000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_41" <= 0.500000) AND (t."X_17" <= 3.000000) AND (t."X_26" <= 9.000000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_41" <= 0.500000) AND (t."X_17" <= 3.000000) AND (t."X_26" > 9.000000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_41" > 0.500000) AND (t."X_3" <= 6.000000) AND (t."X_41" <= 8.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_41" > 0.500000) AND (t."X_3" <= 6.000000) AND (t."X_41" > 8.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_41" > 0.500000) AND (t."X_3" > 6.000000) AND (t."X_17" <= 3.000000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_41" > 0.500000) AND (t."X_3" > 6.000000) AND (t."X_17" > 3.000000)) THEN 12 ELSE NULL END AS Leaf_12
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.375000 AS "P_0", 0.000000 AS "P_1", 0.125000 AS "P_2", 0.000000 AS "P_3", 0.062500 AS "P_4", 0.062500 AS "P_5", 0.125000 AS "P_6", 0.250000 AS "P_7", 0 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.166667 AS "P_5", 0.166667 AS "P_6", 0.666667 AS "P_7", 7 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.600000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0.100000 AS "P_4", 0.000000 AS "P_5", 0.100000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.500000 AS "P_5", 0.500000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 0.333333 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.857143 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.142857 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_46" > 4.500000) AND (t."X_37" <= 7.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_46" > 4.500000) AND (t."X_37" > 7.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_46" <= 4.500000) AND (t."X_61" <= 1.500000) AND (t."X_20" <= 9.000000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_46" <= 4.500000) AND (t."X_61" <= 1.500000) AND (t."X_20" > 9.000000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_46" <= 4.500000) AND (t."X_61" > 1.500000) AND (t."X_19" <= 10.500000) AND (t."X_18" <= 9.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_46" <= 4.500000) AND (t."X_61" > 1.500000) AND (t."X_19" <= 10.500000) AND (t."X_18" > 9.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_46" <= 4.500000) AND (t."X_61" > 1.500000) AND (t."X_19" > 10.500000) AND (t."X_63" > 6.000000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_46" <= 4.500000) AND (t."X_61" > 1.500000) AND (t."X_19" > 10.500000) AND (t."X_63" <= 6.000000) AND (t."X_20" <= 0.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_46" <= 4.500000) AND (t."X_61" > 1.500000) AND (t."X_19" > 10.500000) AND (t."X_63" <= 6.000000) AND (t."X_20" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.125000 AS "P_0", 0.187500 AS "P_1", 0.062500 AS "P_2", 0.062500 AS "P_3", 0.062500 AS "P_4", 0.187500 AS "P_5", 0.125000 AS "P_6", 0.187500 AS "P_7", 1 AS "D", 0.187500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.272727 AS "P_1", 0.090909 AS "P_2", 0.090909 AS "P_3", 0.090909 AS "P_4", 0.272727 AS "P_5", 0.181818 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.272727 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.600000 AS "P_7", 7 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.400000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.600000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.166667 AS "P_2", 0.166667 AS "P_3", 0.166667 AS "P_4", 0.000000 AS "P_5", 0.333333 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.666667 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0.333333 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0.500000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 14.000000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_27" <= 14.000000) AND (t."X_41" > 1.000000) AND (t."X_5" <= 7.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_27" <= 14.000000) AND (t."X_41" > 1.000000) AND (t."X_5" > 7.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_27" <= 14.000000) AND (t."X_41" <= 1.000000) AND (t."X_27" <= 4.000000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_27" <= 14.000000) AND (t."X_41" <= 1.000000) AND (t."X_27" > 4.000000) AND (t."X_10" <= 15.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_27" <= 14.000000) AND (t."X_41" <= 1.000000) AND (t."X_27" > 4.000000) AND (t."X_10" > 15.500000)) THEN 10 ELSE NULL END AS Leaf_10
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.312500 AS "P_1", 0.000000 AS "P_2", 0.125000 AS "P_3", 0.062500 AS "P_4", 0.125000 AS "P_5", 0.000000 AS "P_6", 0.187500 AS "P_7", 1 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.272727 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.181818 AS "P_3", 0.090909 AS "P_4", 0.181818 AS "P_5", 0.000000 AS "P_6", 0.272727 AS "P_7", 0 AS "D", 0.272727 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.285714 AS "P_3", 0.000000 AS "P_4", 0.285714 AS "P_5", 0.000000 AS "P_6", 0.428571 AS "P_7", 7 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.250000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.400000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.600000 AS "P_7", 7 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 3.000000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_6" <= 3.000000) AND (t."X_61" <= 6.000000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_6" <= 3.000000) AND (t."X_61" > 6.000000) AND (t."X_5" <= 0.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_6" <= 3.000000) AND (t."X_61" > 6.000000) AND (t."X_5" > 0.500000) AND (t."X_42" <= 3.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_6" <= 3.000000) AND (t."X_61" > 6.000000) AND (t."X_5" > 0.500000) AND (t."X_42" > 3.500000) AND (t."X_5" <= 9.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_6" <= 3.000000) AND (t."X_61" > 6.000000) AND (t."X_5" > 0.500000) AND (t."X_42" > 3.500000) AND (t."X_5" > 9.500000) AND (t."X_3" <= 8.000000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_6" <= 3.000000) AND (t."X_61" > 6.000000) AND (t."X_5" > 0.500000) AND (t."X_42" > 3.500000) AND (t."X_5" > 9.500000) AND (t."X_3" > 8.000000)) THEN 12 ELSE NULL END AS Leaf_12
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.125000 AS "P_1", 0.062500 AS "P_2", 0.062500 AS "P_3", 0.062500 AS "P_4", 0.250000 AS "P_5", 0.000000 AS "P_6", 0.250000 AS "P_7", 5 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.250000 AS "P_0", 0.166667 AS "P_1", 0.083333 AS "P_2", 0.083333 AS "P_3", 0.083333 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.333333 AS "P_7", 7 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.222222 AS "P_1", 0.111111 AS "P_2", 0.111111 AS "P_3", 0.111111 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.444444 AS "P_7", 7 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.142857 AS "P_3", 0.142857 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.571429 AS "P_7", 7 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.333333 AS "P_3", 0.333333 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_28" <= 12.500000) AND (t."X_53" <= 4.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_28" <= 12.500000) AND (t."X_53" > 4.500000) AND (t."X_35" <= 3.000000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_28" <= 12.500000) AND (t."X_53" > 4.500000) AND (t."X_35" > 3.000000) AND (t."X_34" > 9.000000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_28" <= 12.500000) AND (t."X_53" > 4.500000) AND (t."X_35" > 3.000000) AND (t."X_34" <= 9.000000) AND (t."X_35" <= 9.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_28" <= 12.500000) AND (t."X_53" > 4.500000) AND (t."X_35" > 3.000000) AND (t."X_34" <= 9.000000) AND (t."X_35" > 9.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_28" > 12.500000) AND (t."X_43" <= 7.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_28" > 12.500000) AND (t."X_43" > 7.500000)) THEN 12 ELSE NULL END AS Leaf_12
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.125000 AS "P_0", 0.062500 AS "P_1", 0.062500 AS "P_2", 0.000000 AS "P_3", 0.125000 AS "P_4", 0.250000 AS "P_5", 0.062500 AS "P_6", 0.312500 AS "P_7", 7 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.000000 AS "P_3", 0.200000 AS "P_4", 0.400000 AS "P_5", 0.100000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.833333 AS "P_7", 7 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0.333333 AS "P_4", 0.000000 AS "P_5", 0.166667 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0.500000 AS "P_4", 0.000000 AS "P_5", 0.250000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.500000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_45" > 14.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_45" <= 14.500000) AND (t."X_46" > 8.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_45" <= 14.500000) AND (t."X_46" <= 8.500000) AND (t."X_29" > 10.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_45" <= 14.500000) AND (t."X_46" <= 8.500000) AND (t."X_29" <= 10.500000) AND (t."X_51" > 10.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_45" <= 14.500000) AND (t."X_46" <= 8.500000) AND (t."X_29" <= 10.500000) AND (t."X_51" <= 10.500000) AND (t."X_29" <= 3.000000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_45" <= 14.500000) AND (t."X_46" <= 8.500000) AND (t."X_29" <= 10.500000) AND (t."X_51" <= 10.500000) AND (t."X_29" > 3.000000)) THEN 10 ELSE NULL END AS Leaf_10
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.125000 AS "P_1", 0.000000 AS "P_2", 0.062500 AS "P_3", 0.000000 AS "P_4", 0.187500 AS "P_5", 0.250000 AS "P_6", 0.187500 AS "P_7", 6 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.250000 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.083333 AS "P_3", 0.000000 AS "P_4", 0.250000 AS "P_5", 0.000000 AS "P_6", 0.250000 AS "P_7", 0 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.333333 AS "P_0", 0.222222 AS "P_1", 0.000000 AS "P_2", 0.111111 AS "P_3", 0.000000 AS "P_4", 0.333333 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.500000 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
   ON t1.node_id = t2.nid
 ),
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1", scu."P_2" AS "P_2", scu."P_3" AS "P_3", scu."P_4" AS "P_4", scu."P_5" AS "P_5", scu."P_6" AS "P_6", scu."P_7" AS "P_7"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_4" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7" FROM "DT_output_31" AS t
  ) AS scu
)
SELECT
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
   CAST(NULL AS FLOAT) AS "Score_3",
   CAST(NULL AS FLOAT) AS "LogProba_4",
   AVG(t."P_4") AS "Proba_4",
   CAST(NULL AS FLOAT) AS "Score_4",
   CAST(NULL AS FLOAT) AS "LogProba_5",
   AVG(t."P_5") AS "Proba_5",
   CAST(NULL AS FLOAT) AS "Score_5",
   CAST(NULL AS FLOAT) AS "LogProba_6",
   AVG(t."P_6") AS "Proba_6",
   CAST(NULL AS FLOAT) AS "Score_6",
   CAST(NULL AS FLOAT) AS "LogProba_7",
   AVG(t."P_7") AS "Proba_7",
   CAST(NULL AS FLOAT) AS "Score_7"
FROM "union_of_trees" AS t
GROUP BY t."index"
