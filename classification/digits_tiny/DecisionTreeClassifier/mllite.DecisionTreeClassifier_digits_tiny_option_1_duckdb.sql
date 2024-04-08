WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "digits_tiny" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_5", t1."Leaf_7", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_29" > 15.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_29" <= 15.500000) AND (t."X_35" <= 5.000000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_29" <= 15.500000) AND (t."X_35" > 5.000000) AND (t."X_27" <= 1.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_29" <= 15.500000) AND (t."X_35" > 5.000000) AND (t."X_27" > 1.500000) AND (t."X_5" <= 1.000000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_29" <= 15.500000) AND (t."X_35" > 5.000000) AND (t."X_27" > 1.500000) AND (t."X_5" > 1.000000) AND (t."X_36" > 15.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_29" <= 15.500000) AND (t."X_35" > 5.000000) AND (t."X_27" > 1.500000) AND (t."X_5" > 1.000000) AND (t."X_36" <= 15.500000) AND (t."X_45" <= 7.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_29" <= 15.500000) AND (t."X_35" > 5.000000) AND (t."X_27" > 1.500000) AND (t."X_5" > 1.000000) AND (t."X_36" <= 15.500000) AND (t."X_45" > 7.000000)) THEN 12 ELSE NULL END AS "Leaf_12"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.125000 AS "P_1", 0.062500 AS "P_2", 0.062500 AS "P_3", 0.062500 AS "P_4", 0.187500 AS "P_5", 0.125000 AS "P_6", 0.187500 AS "P_7", 0 AS "D", 0.187500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.230769 AS "P_0", 0.153846 AS "P_1", 0.076923 AS "P_2", 0.076923 AS "P_3", 0.076923 AS "P_4", 0.230769 AS "P_5", 0.153846 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 0.230769 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 1.000000 AS "P_7", 7 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.100000 AS "P_2", 0.100000 AS "P_3", 0.100000 AS "P_4", 0.300000 AS "P_5", 0.200000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 0.300000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.285714 AS "P_1", 0.142857 AS "P_2", 0.142857 AS "P_3", 0.142857 AS "P_4", 0.000000 AS "P_5", 0.285714 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 0.285714 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.200000 AS "P_3", 0.200000 AS "P_4", 0.000000 AS "P_5", 0.400000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.333333 AS "P_3", 0.333333 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0.500000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 3 AS "D", 0.500000 AS "DP"
  ) AS "Values"),
"DT_Output" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup" AS t1
   LEFT OUTER JOIN
   "DT_node_data" AS t2
   ON t1.node_id = t2.nid
 )
SELECT
   "DT_Output"."index" AS "index",
   CAST(NULL AS FLOAT)  AS "Score_0",
   "DT_Output"."P_0" AS "Proba_0",
   CASE WHEN ("DT_Output"."P_0" IS NULL OR "DT_Output"."P_0" > 0.0) THEN LN( "DT_Output"."P_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
   CAST(NULL AS FLOAT)  AS "Score_1",
   "DT_Output"."P_1" AS "Proba_1",
   CASE WHEN ("DT_Output"."P_1" IS NULL OR "DT_Output"."P_1" > 0.0) THEN LN( "DT_Output"."P_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
   CAST(NULL AS FLOAT)  AS "Score_2",
   "DT_Output"."P_2" AS "Proba_2",
   CASE WHEN ("DT_Output"."P_2" IS NULL OR "DT_Output"."P_2" > 0.0) THEN LN( "DT_Output"."P_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
   CAST(NULL AS FLOAT)  AS "Score_3",
   "DT_Output"."P_3" AS "Proba_3",
   CASE WHEN ("DT_Output"."P_3" IS NULL OR "DT_Output"."P_3" > 0.0) THEN LN( "DT_Output"."P_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
   CAST(NULL AS FLOAT)  AS "Score_4",
   "DT_Output"."P_4" AS "Proba_4",
   CASE WHEN ("DT_Output"."P_4" IS NULL OR "DT_Output"."P_4" > 0.0) THEN LN( "DT_Output"."P_4" ) ELSE -1.79769313486231e+308 END AS "LogProba_4",
   CAST(NULL AS FLOAT)  AS "Score_5",
   "DT_Output"."P_5" AS "Proba_5",
   CASE WHEN ("DT_Output"."P_5" IS NULL OR "DT_Output"."P_5" > 0.0) THEN LN( "DT_Output"."P_5" ) ELSE -1.79769313486231e+308 END AS "LogProba_5",
   CAST(NULL AS FLOAT)  AS "Score_6",
   "DT_Output"."P_6" AS "Proba_6",
   CASE WHEN ("DT_Output"."P_6" IS NULL OR "DT_Output"."P_6" > 0.0) THEN LN( "DT_Output"."P_6" ) ELSE -1.79769313486231e+308 END AS "LogProba_6",
   CAST(NULL AS FLOAT)  AS "Score_7",
   "DT_Output"."P_7" AS "Proba_7",
   CASE WHEN ("DT_Output"."P_7" IS NULL OR "DT_Output"."P_7" > 0.0) THEN LN( "DT_Output"."P_7" ) ELSE -1.79769313486231e+308 END AS "LogProba_7",
   "DT_Output"."D" AS "Decision",
   "DT_Output"."DP" AS "DecisionProba"
FROM "DT_Output"