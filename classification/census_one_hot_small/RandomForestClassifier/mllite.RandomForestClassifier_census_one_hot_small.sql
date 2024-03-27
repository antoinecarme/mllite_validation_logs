WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_2", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_44" > 0.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_36" > 0.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_36" <= 0.500000) AND (t."X_3" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_36" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_50" <= 0.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_36" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_27" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_36" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_12" > 0.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_36" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_39" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_36" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_17" <= 0.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_36" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_17" > 0.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_12" > 0.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_12" <= 0.500000) AND (t."X_2" <= 0.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_12" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_28" > 0.500000) AND (t."X_17" > 0.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_12" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_28" > 0.500000) AND (t."X_17" <= 0.500000) AND (t."X_11" <= 0.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_12" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_28" > 0.500000) AND (t."X_17" <= 0.500000) AND (t."X_11" > 0.500000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_12" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_11" > 0.500000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_12" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_35" > 0.500000)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_12" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_8" <= 310694.000000)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_12" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_8" > 310694.000000)) THEN 34 ELSE NULL END AS Leaf_34
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
    SELECT 0 AS nid,  0.796875 AS "P_0", 0.203125 AS "P_1", 0 AS "D", 0.796875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.864407 AS "P_0", 0.135593 AS "P_1", 0 AS "D", 0.864407 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.930233 AS "P_0", 0.069767 AS "P_1", 0 AS "D", 0.930233 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.687500 AS "P_0", 0.312500 AS "P_1", 0 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.583333 AS "P_0", 0.416667 AS "P_1", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.903226 AS "P_0", 0.096774 AS "P_1", 0 AS "D", 0.903226 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.880000 AS "P_0", 0.120000 AS "P_1", 0 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.954545 AS "P_0", 0.045455 AS "P_1", 0 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_11" > 0.500000) AND (t."X_0" <= 0.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_11" > 0.500000) AND (t."X_0" > 0.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_13" > 0.500000) AND (t."X_1" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_13" > 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_0" <= 3.000000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_13" > 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_0" > 3.000000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_28" > 0.500000) AND (t."X_16" <= 15.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_28" > 0.500000) AND (t."X_16" > 15.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_45" > 2.500000) AND (t."X_0" > 2.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_45" > 2.500000) AND (t."X_0" <= 2.500000) AND (t."X_8" <= 168984.000000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_45" > 2.500000) AND (t."X_0" <= 2.500000) AND (t."X_8" > 168984.000000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_8" > 107546.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_8" <= 107546.500000) AND (t."X_0" <= 2.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_8" <= 107546.500000) AND (t."X_0" > 2.500000) AND (t."X_14" > 0.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_8" <= 107546.500000) AND (t."X_0" > 2.500000) AND (t."X_14" <= 0.500000) AND (t."X_0" <= 3.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_8" <= 107546.500000) AND (t."X_0" > 2.500000) AND (t."X_14" <= 0.500000) AND (t."X_0" > 3.500000)) THEN 28 ELSE NULL END AS Leaf_28
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
    SELECT 0 AS nid,  0.703125 AS "P_0", 0.296875 AS "P_1", 0 AS "D", 0.703125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.767857 AS "P_0", 0.232143 AS "P_1", 0 AS "D", 0.767857 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.803922 AS "P_0", 0.196078 AS "P_1", 0 AS "D", 0.803922 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.847826 AS "P_0", 0.152174 AS "P_1", 0 AS "D", 0.847826 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_6", t1."Leaf_8", t1."Leaf_10", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_34" > 0.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_41" <= 0.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_20" > 0.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_35" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_3" > 0.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 0.500000) AND (t."X_0" > 1.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_45" > 2.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_45" <= 2.500000) AND (t."X_8" <= 310694.000000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_45" <= 2.500000) AND (t."X_8" > 310694.000000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 0.500000) AND (t."X_36" > 0.500000) AND (t."X_8" <= 171309.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 0.500000) AND (t."X_36" > 0.500000) AND (t."X_8" > 171309.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_45" <= 2.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_45" > 2.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_13" > 0.500000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_13" <= 0.500000) AND (t."X_45" > 2.500000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_13" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_11" <= 0.500000)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_13" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_11" > 0.500000)) THEN 32 ELSE NULL END AS Leaf_32
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
    SELECT 0 AS nid,  0.796875 AS "P_0", 0.203125 AS "P_1", 0 AS "D", 0.796875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.754717 AS "P_0", 0.245283 AS "P_1", 0 AS "D", 0.754717 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.711111 AS "P_0", 0.288889 AS "P_1", 0 AS "D", 0.711111 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.638889 AS "P_0", 0.361111 AS "P_1", 0 AS "D", 0.638889 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.606061 AS "P_0", 0.393939 AS "P_1", 0 AS "D", 0.606061 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_6", t1."Leaf_7", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_50" <= 0.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_50" > 0.500000) AND (t."X_16" > 14.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_50" > 0.500000) AND (t."X_16" <= 14.500000) AND (t."X_18" <= 0.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_50" > 0.500000) AND (t."X_16" <= 14.500000) AND (t."X_18" > 0.500000) AND (t."X_16" > 13.500000) AND (t."X_8" <= 208787.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_50" > 0.500000) AND (t."X_16" <= 14.500000) AND (t."X_18" > 0.500000) AND (t."X_16" > 13.500000) AND (t."X_8" > 208787.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_50" > 0.500000) AND (t."X_16" <= 14.500000) AND (t."X_18" > 0.500000) AND (t."X_16" <= 13.500000) AND (t."X_5" <= 0.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_50" > 0.500000) AND (t."X_16" <= 14.500000) AND (t."X_18" > 0.500000) AND (t."X_16" <= 13.500000) AND (t."X_5" > 0.500000) AND (t."X_15" <= 0.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_50" > 0.500000) AND (t."X_16" <= 14.500000) AND (t."X_18" > 0.500000) AND (t."X_16" <= 13.500000) AND (t."X_5" > 0.500000) AND (t."X_15" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_16" <= 11.500000) AND (t."X_5" > 0.500000) AND (t."X_8" <= 575098.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_16" <= 11.500000) AND (t."X_5" > 0.500000) AND (t."X_8" > 575098.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_16" <= 11.500000) AND (t."X_5" <= 0.500000) AND (t."X_16" <= 8.000000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_16" <= 11.500000) AND (t."X_5" <= 0.500000) AND (t."X_16" > 8.000000) AND (t."X_31" <= 0.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_16" <= 11.500000) AND (t."X_5" <= 0.500000) AND (t."X_16" > 8.000000) AND (t."X_31" > 0.500000) AND (t."X_8" <= 109013.500000) AND (t."X_30" <= 0.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_16" <= 11.500000) AND (t."X_5" <= 0.500000) AND (t."X_16" > 8.000000) AND (t."X_31" > 0.500000) AND (t."X_8" <= 109013.500000) AND (t."X_30" > 0.500000) AND (t."X_16" <= 9.500000)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_16" <= 11.500000) AND (t."X_5" <= 0.500000) AND (t."X_16" > 8.000000) AND (t."X_31" > 0.500000) AND (t."X_8" <= 109013.500000) AND (t."X_30" > 0.500000) AND (t."X_16" > 9.500000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_16" <= 11.500000) AND (t."X_5" <= 0.500000) AND (t."X_16" > 8.000000) AND (t."X_31" > 0.500000) AND (t."X_8" > 109013.500000) AND (t."X_8" <= 179697.000000)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_16" <= 11.500000) AND (t."X_5" <= 0.500000) AND (t."X_16" > 8.000000) AND (t."X_31" > 0.500000) AND (t."X_8" > 109013.500000) AND (t."X_8" > 179697.000000) AND (t."X_50" <= 0.500000)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_16" <= 11.500000) AND (t."X_5" <= 0.500000) AND (t."X_16" > 8.000000) AND (t."X_31" > 0.500000) AND (t."X_8" > 109013.500000) AND (t."X_8" > 179697.000000) AND (t."X_50" > 0.500000) AND (t."X_8" <= 223547.500000)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_16" <= 11.500000) AND (t."X_5" <= 0.500000) AND (t."X_16" > 8.000000) AND (t."X_31" > 0.500000) AND (t."X_8" > 109013.500000) AND (t."X_8" > 179697.000000) AND (t."X_50" > 0.500000) AND (t."X_8" > 223547.500000)) THEN 36 ELSE NULL END AS Leaf_36
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
    SELECT 0 AS nid,  0.765625 AS "P_0", 0.234375 AS "P_1", 0 AS "D", 0.765625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.860000 AS "P_0", 0.140000 AS "P_1", 0 AS "D", 0.860000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.853659 AS "P_0", 0.146341 AS "P_1", 0 AS "D", 0.853659 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.684211 AS "P_0", 0.315789 AS "P_1", 0 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_6", t1."Leaf_8", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_15" > 0.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" > 0.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" <= 0.500000) AND (t."X_39" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_35" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" > 3.500000) AND (t."X_4" > 0.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" > 3.500000) AND (t."X_4" <= 0.500000) AND (t."X_5" <= 0.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" > 3.500000) AND (t."X_4" <= 0.500000) AND (t."X_5" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_35" <= 0.500000) AND (t."X_4" > 0.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_1" > 0.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_35" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_2" <= 0.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_35" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_34" <= 0.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_35" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_34" > 0.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_1" <= 0.500000) AND (t."X_34" > 0.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_1" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_35" > 0.500000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_1" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" <= 0.500000)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_1" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_36" > 0.500000)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_1" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_50" <= 0.500000)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_1" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" <= 1.500000)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_15" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_1" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_45" > 1.500000)) THEN 36 ELSE NULL END AS Leaf_36
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
    SELECT 0 AS nid,  0.765625 AS "P_0", 0.234375 AS "P_1", 0 AS "D", 0.765625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.722222 AS "P_0", 0.277778 AS "P_1", 0 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.535714 AS "P_0", 0.464286 AS "P_1", 0 AS "D", 0.535714 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.458333 AS "P_0", 0.541667 AS "P_1", 1 AS "D", 0.541667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.380952 AS "P_0", 0.619048 AS "P_1", 1 AS "D", 0.619048 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.960000 AS "P_0", 0.040000 AS "P_1", 0 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_18", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_44" > 0.500000) AND (t."X_30" <= 0.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_44" > 0.500000) AND (t."X_30" > 0.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_28" > 0.500000) AND (t."X_20" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_28" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_2" <= 0.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_28" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_41" <= 0.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_28" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_41" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" <= 1.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_45" > 2.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_45" <= 2.500000) AND (t."X_4" > 0.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_45" <= 2.500000) AND (t."X_4" <= 0.500000) AND (t."X_29" > 0.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_45" <= 2.500000) AND (t."X_4" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_26" > 0.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_45" <= 2.500000) AND (t."X_4" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_0" <= 2.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_45" <= 2.500000) AND (t."X_4" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_41" <= 0.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_45" <= 2.500000) AND (t."X_4" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_41" > 0.500000) AND (t."X_20" > 0.500000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_45" <= 2.500000) AND (t."X_4" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_25" > 0.500000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_45" <= 2.500000) AND (t."X_4" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_31" <= 0.500000)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_44" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_45" <= 2.500000) AND (t."X_4" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_41" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_31" > 0.500000)) THEN 32 ELSE NULL END AS Leaf_32
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
    SELECT 0 AS nid,  0.843750 AS "P_0", 0.156250 AS "P_1", 0 AS "D", 0.843750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.912281 AS "P_0", 0.087719 AS "P_1", 0 AS "D", 0.912281 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.863636 AS "P_0", 0.136364 AS "P_1", 0 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" > 0.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_11" > 0.500000) AND (t."X_43" <= 1.000000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_11" > 0.500000) AND (t."X_43" > 1.000000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" <= 1.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 3.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_10" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_10" <= 0.500000) AND (t."X_50" <= 0.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_10" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_8" <= 86113.000000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_10" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_8" > 86113.000000) AND (t."X_4" <= 0.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_10" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_8" > 86113.000000) AND (t."X_4" > 0.500000)) THEN 18 ELSE NULL END AS Leaf_18
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
    SELECT 0 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.825397 AS "P_0", 0.174603 AS "P_1", 0 AS "D", 0.825397 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.851852 AS "P_0", 0.148148 AS "P_1", 0 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.578947 AS "P_0", 0.421053 AS "P_1", 0 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" <= 0.500000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_52" > 0.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_52" <= 0.500000) AND (t."X_18" <= 0.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_52" <= 0.500000) AND (t."X_18" > 0.500000) AND (t."X_43" <= 1.000000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_52" <= 0.500000) AND (t."X_18" > 0.500000) AND (t."X_43" > 1.000000) AND (t."X_29" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_52" <= 0.500000) AND (t."X_18" > 0.500000) AND (t."X_43" > 1.000000) AND (t."X_29" <= 0.500000) AND (t."X_43" <= 3.000000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_52" <= 0.500000) AND (t."X_18" > 0.500000) AND (t."X_43" > 1.000000) AND (t."X_29" <= 0.500000) AND (t."X_43" > 3.000000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_44" > 1.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_44" <= 1.500000) AND (t."X_3" > 0.500000) AND (t."X_8" <= 179697.000000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_44" <= 1.500000) AND (t."X_3" > 0.500000) AND (t."X_8" > 179697.000000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_44" <= 1.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" > 11.500000) AND (t."X_8" <= 290143.000000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_44" <= 1.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" > 11.500000) AND (t."X_8" > 290143.000000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_44" <= 1.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" <= 11.500000) AND (t."X_2" <= 0.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_44" <= 1.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" <= 11.500000) AND (t."X_2" > 0.500000) AND (t."X_52" > 0.500000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_44" <= 1.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" <= 11.500000) AND (t."X_2" > 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_8" > 120335.000000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_44" <= 1.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" <= 11.500000) AND (t."X_2" > 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_8" <= 120335.000000) AND (t."X_16" <= 9.500000)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_44" <= 1.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" <= 11.500000) AND (t."X_2" > 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_8" <= 120335.000000) AND (t."X_16" > 9.500000)) THEN 32 ELSE NULL END AS Leaf_32
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
    SELECT 0 AS nid,  0.765625 AS "P_0", 0.234375 AS "P_1", 0 AS "D", 0.765625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.716981 AS "P_0", 0.283019 AS "P_1", 0 AS "D", 0.716981 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.868421 AS "P_0", 0.131579 AS "P_1", 0 AS "D", 0.868421 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.891892 AS "P_0", 0.108108 AS "P_1", 0 AS "D", 0.891892 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.939394 AS "P_0", 0.060606 AS "P_1", 0 AS "D", 0.939394 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.964286 AS "P_0", 0.035714 AS "P_1", 0 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_13" > 0.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_12" > 0.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" > 416176.500000) AND (t."X_17" <= 0.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" > 416176.500000) AND (t."X_17" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_2" <= 0.500000) AND (t."X_3" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_2" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" > 11.000000) AND (t."X_5" <= 0.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_2" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" > 11.000000) AND (t."X_5" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_2" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" <= 11.000000) AND (t."X_8" > 129636.000000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_2" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" <= 11.000000) AND (t."X_8" <= 129636.000000) AND (t."X_45" <= 2.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_2" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" <= 11.000000) AND (t."X_8" <= 129636.000000) AND (t."X_45" > 2.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_2" > 0.500000) AND (t."X_8" > 98443.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_2" > 0.500000) AND (t."X_8" <= 98443.500000) AND (t."X_14" <= 0.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_2" > 0.500000) AND (t."X_8" <= 98443.500000) AND (t."X_14" > 0.500000)) THEN 24 ELSE NULL END AS Leaf_24
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
    SELECT 0 AS nid,  0.781250 AS "P_0", 0.218750 AS "P_1", 0 AS "D", 0.781250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.819672 AS "P_0", 0.180328 AS "P_1", 0 AS "D", 0.819672 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.784314 AS "P_0", 0.215686 AS "P_1", 0 AS "D", 0.784314 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.829787 AS "P_0", 0.170213 AS "P_1", 0 AS "D", 0.829787 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.961538 AS "P_0", 0.038462 AS "P_1", 0 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_10", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_44" > 1.000000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_44" <= 1.000000) AND (t."X_1" > 0.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_44" <= 1.000000) AND (t."X_1" <= 0.500000) AND (t."X_6" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_44" <= 1.000000) AND (t."X_1" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" > 0.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_44" <= 1.000000) AND (t."X_1" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_5" <= 0.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_44" <= 1.000000) AND (t."X_1" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_5" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_44" <= 1.000000) AND (t."X_1" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_45" > 2.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_44" <= 1.000000) AND (t."X_1" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_43" > 1.000000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_44" <= 1.000000) AND (t."X_1" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_43" <= 1.000000) AND (t."X_18" <= 0.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_44" <= 1.000000) AND (t."X_1" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_42" <= 0.500000) AND (t."X_45" <= 1.000000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_44" <= 1.000000) AND (t."X_1" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_43" <= 1.000000) AND (t."X_18" > 0.500000) AND (t."X_16" > 13.000000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_44" <= 1.000000) AND (t."X_1" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_43" <= 1.000000) AND (t."X_18" > 0.500000) AND (t."X_16" <= 13.000000) AND (t."X_8" <= 130240.000000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_44" <= 1.000000) AND (t."X_1" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_43" <= 1.000000) AND (t."X_18" > 0.500000) AND (t."X_16" <= 13.000000) AND (t."X_8" > 130240.000000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_44" <= 1.000000) AND (t."X_1" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_42" <= 0.500000) AND (t."X_45" > 1.000000) AND (t."X_24" > 0.500000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_44" <= 1.000000) AND (t."X_1" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_42" <= 0.500000) AND (t."X_45" > 1.000000) AND (t."X_24" <= 0.500000) AND (t."X_16" <= 13.000000)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_44" <= 1.000000) AND (t."X_1" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_42" <= 0.500000) AND (t."X_45" > 1.000000) AND (t."X_24" <= 0.500000) AND (t."X_16" > 13.000000)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_0" <= 1.500000) AND (t."X_20" > 0.500000)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_0" <= 1.500000) AND (t."X_20" <= 0.500000) AND (t."X_8" > 140015.500000)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_0" <= 1.500000) AND (t."X_20" <= 0.500000) AND (t."X_8" <= 140015.500000) AND (t."X_16" <= 11.500000)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_0" <= 1.500000) AND (t."X_20" <= 0.500000) AND (t."X_8" <= 140015.500000) AND (t."X_16" > 11.500000)) THEN 38 ELSE NULL END AS Leaf_38
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
    SELECT 0 AS nid,  0.718750 AS "P_0", 0.281250 AS "P_1", 0 AS "D", 0.718750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.962963 AS "P_0", 0.037037 AS "P_1", 0 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.540541 AS "P_0", 0.459459 AS "P_1", 0 AS "D", 0.540541 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.565217 AS "P_0", 0.434783 AS "P_1", 0 AS "D", 0.565217 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.357143 AS "P_0", 0.642857 AS "P_1", 1 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_5", t1."Leaf_10", t1."Leaf_15", t1."Leaf_17", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" > 0.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" > 0.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" <= 1.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" > 0.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_30" <= 0.500000) AND (t."X_41" <= 0.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_30" > 0.500000) AND (t."X_18" <= 0.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_30" > 0.500000) AND (t."X_18" > 0.500000) AND (t."X_36" > 0.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_30" > 0.500000) AND (t."X_18" > 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_8" <= 575098.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_30" > 0.500000) AND (t."X_18" > 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_8" > 575098.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_18" <= 0.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" > 0.500000) AND (t."X_5" > 0.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" > 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_8" <= 144421.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" > 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_8" > 144421.500000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_18" > 0.500000) AND (t."X_12" > 0.500000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_18" > 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_30" <= 0.500000)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_18" > 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_8" <= 178059.000000)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_18" > 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_8" > 178059.000000)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_30" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_13" > 0.500000)) THEN 38 ELSE NULL END AS Leaf_38,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_30" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_15" <= 0.500000)) THEN 39 ELSE NULL END AS Leaf_39,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_30" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_15" > 0.500000)) THEN 40 ELSE NULL END AS Leaf_40,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_30" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_31" <= 0.500000) AND (t."X_1" > 0.500000)) THEN 42 ELSE NULL END AS Leaf_42,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_30" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_31" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_8" <= 178957.500000)) THEN 43 ELSE NULL END AS Leaf_43,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_52" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_30" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_31" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_8" > 178957.500000)) THEN 44 ELSE NULL END AS Leaf_44
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
    SELECT 0 AS nid,  0.718750 AS "P_0", 0.281250 AS "P_1", 0 AS "D", 0.718750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.590909 AS "P_0", 0.409091 AS "P_1", 0 AS "D", 0.590909 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.560976 AS "P_0", 0.439024 AS "P_1", 0 AS "D", 0.560976 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.448276 AS "P_0", 0.551724 AS "P_1", 1 AS "D", 0.551724 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.520000 AS "P_0", 0.480000 AS "P_1", 0 AS "D", 0.520000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_6", t1."Leaf_7", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_45" <= 1.500000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 0.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 0.500000) AND (t."X_8" <= 81886.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 0.500000) AND (t."X_8" > 81886.500000) AND (t."X_45" > 3.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 0.500000) AND (t."X_8" > 81886.500000) AND (t."X_45" <= 3.500000) AND (t."X_8" > 207536.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 0.500000) AND (t."X_8" > 81886.500000) AND (t."X_45" <= 3.500000) AND (t."X_8" <= 207536.500000) AND (t."X_0" <= 2.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 0.500000) AND (t."X_8" > 81886.500000) AND (t."X_45" <= 3.500000) AND (t."X_8" <= 207536.500000) AND (t."X_0" > 2.500000) AND (t."X_3" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 0.500000) AND (t."X_8" > 81886.500000) AND (t."X_45" <= 3.500000) AND (t."X_8" <= 207536.500000) AND (t."X_0" > 2.500000) AND (t."X_3" <= 0.500000) AND (t."X_5" > 0.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 0.500000) AND (t."X_8" > 81886.500000) AND (t."X_45" <= 3.500000) AND (t."X_8" <= 207536.500000) AND (t."X_0" > 2.500000) AND (t."X_3" <= 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_29" > 0.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 0.500000) AND (t."X_8" > 81886.500000) AND (t."X_45" <= 3.500000) AND (t."X_8" <= 207536.500000) AND (t."X_0" > 2.500000) AND (t."X_3" <= 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_12" <= 0.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 0.500000) AND (t."X_8" > 81886.500000) AND (t."X_45" <= 3.500000) AND (t."X_8" <= 207536.500000) AND (t."X_0" > 2.500000) AND (t."X_3" <= 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_12" > 0.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_31" > 0.500000) AND (t."X_50" <= 0.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_31" <= 0.500000) AND (t."X_1" <= 0.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_31" <= 0.500000) AND (t."X_1" > 0.500000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_31" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_30" > 0.500000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_31" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_30" <= 0.500000) AND (t."X_5" > 0.500000)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_31" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_30" <= 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_8" <= 264567.500000)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_31" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_30" <= 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_8" > 264567.500000)) THEN 34 ELSE NULL END AS Leaf_34
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
    SELECT 0 AS nid,  0.765625 AS "P_0", 0.234375 AS "P_1", 0 AS "D", 0.765625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.722222 AS "P_0", 0.277778 AS "P_1", 0 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.869565 AS "P_0", 0.130435 AS "P_1", 0 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.612903 AS "P_0", 0.387097 AS "P_1", 0 AS "D", 0.612903 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.520000 AS "P_0", 0.480000 AS "P_1", 0 AS "D", 0.520000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.368421 AS "P_0", 0.631579 AS "P_1", 1 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_24", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" > 0.500000) AND (t."X_26" <= 0.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_3" > 0.500000) AND (t."X_26" > 0.500000) AND (t."X_8" <= 138706.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_3" > 0.500000) AND (t."X_26" > 0.500000) AND (t."X_8" > 138706.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" > 0.500000) AND (t."X_32" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" > 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_8" <= 120773.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" > 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_8" > 120773.500000) AND (t."X_8" <= 186532.000000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" > 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_8" > 120773.500000) AND (t."X_8" > 186532.000000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" > 416176.500000) AND (t."X_8" <= 726985.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" > 416176.500000) AND (t."X_8" > 726985.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_5" > 0.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_5" <= 0.500000) AND (t."X_47" > 0.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_5" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_45" <= 1.000000) AND (t."X_8" <= 103504.000000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_5" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_45" <= 1.000000) AND (t."X_8" > 103504.000000) AND (t."X_1" <= 0.500000)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_5" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_45" <= 1.000000) AND (t."X_8" > 103504.000000) AND (t."X_1" > 0.500000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_5" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_45" > 1.000000) AND (t."X_32" > 0.500000)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_5" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_45" > 1.000000) AND (t."X_32" <= 0.500000) AND (t."X_50" <= 0.500000)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_5" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_45" > 1.000000) AND (t."X_32" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_29" > 0.500000) AND (t."X_45" <= 2.500000)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_5" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_45" > 1.000000) AND (t."X_32" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_29" > 0.500000) AND (t."X_45" > 2.500000)) THEN 38 ELSE NULL END AS Leaf_38,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_5" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_45" > 1.000000) AND (t."X_32" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_39" > 0.500000)) THEN 40 ELSE NULL END AS Leaf_40,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_5" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_45" > 1.000000) AND (t."X_32" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_42" <= 0.500000)) THEN 41 ELSE NULL END AS Leaf_41,
      CASE WHEN((t."X_3" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_5" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_45" > 1.000000) AND (t."X_32" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_42" > 0.500000)) THEN 42 ELSE NULL END AS Leaf_42
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
    SELECT 0 AS nid,  0.687500 AS "P_0", 0.312500 AS "P_1", 0 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.708333 AS "P_0", 0.291667 AS "P_1", 0 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.794872 AS "P_0", 0.205128 AS "P_1", 0 AS "D", 0.794872 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 0.500000) AND (t."X_0" <= 0.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_2" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_16" <= 11.000000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_2" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_16" > 11.000000) AND (t."X_8" <= 135666.000000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_2" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_16" > 11.000000) AND (t."X_8" > 135666.000000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_2" > 0.500000) AND (t."X_43" > 3.000000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_2" > 0.500000) AND (t."X_43" <= 3.000000) AND (t."X_16" > 15.000000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_2" > 0.500000) AND (t."X_43" <= 3.000000) AND (t."X_16" <= 15.000000) AND (t."X_15" <= 0.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_2" > 0.500000) AND (t."X_43" <= 3.000000) AND (t."X_16" <= 15.000000) AND (t."X_15" > 0.500000) AND (t."X_8" <= 340863.000000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_2" > 0.500000) AND (t."X_43" <= 3.000000) AND (t."X_16" <= 15.000000) AND (t."X_15" > 0.500000) AND (t."X_8" > 340863.000000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_2" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_50" <= 0.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_2" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_50" > 0.500000) AND (t."X_8" <= 218465.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_2" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_50" > 0.500000) AND (t."X_8" > 218465.500000)) THEN 22 ELSE NULL END AS Leaf_22
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
    SELECT 0 AS nid,  0.703125 AS "P_0", 0.296875 AS "P_1", 0 AS "D", 0.703125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.440000 AS "P_0", 0.560000 AS "P_1", 1 AS "D", 0.560000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.871795 AS "P_0", 0.128205 AS "P_1", 0 AS "D", 0.871795 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.918919 AS "P_0", 0.081081 AS "P_1", 0 AS "D", 0.918919 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_6", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_44" > 1.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_13" > 0.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_12" > 0.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_1" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_50" <= 0.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_0" > 2.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_43" > 2.000000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_43" <= 2.000000) AND (t."X_15" <= 0.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_43" <= 2.000000) AND (t."X_15" > 0.500000) AND (t."X_5" > 0.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_43" <= 2.000000) AND (t."X_15" > 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_17" <= 0.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_43" <= 2.000000) AND (t."X_15" > 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_17" > 0.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_5" > 0.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_2" <= 0.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_39" > 0.500000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_17" > 0.500000)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_17" <= 0.500000) AND (t."X_8" <= 109013.500000)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_13" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_17" <= 0.500000) AND (t."X_8" > 109013.500000)) THEN 34 ELSE NULL END AS Leaf_34
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
    SELECT 0 AS nid,  0.796875 AS "P_0", 0.203125 AS "P_1", 0 AS "D", 0.796875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.822581 AS "P_0", 0.177419 AS "P_1", 0 AS "D", 0.822581 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.804878 AS "P_0", 0.195122 AS "P_1", 0 AS "D", 0.804878 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.740741 AS "P_0", 0.259259 AS "P_1", 0 AS "D", 0.740741 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.611111 AS "P_0", 0.388889 AS "P_1", 0 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.562500 AS "P_0", 0.437500 AS "P_1", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.533333 AS "P_0", 0.466667 AS "P_1", 0 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_2" <= 0.500000) AND (t."X_16" <= 15.000000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_2" <= 0.500000) AND (t."X_16" > 15.000000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_2" > 0.500000) AND (t."X_16" > 14.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_2" > 0.500000) AND (t."X_16" <= 14.500000) AND (t."X_18" <= 0.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_16" <= 11.500000) AND (t."X_18" <= 0.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_16" <= 11.500000) AND (t."X_18" > 0.500000) AND (t."X_2" > 0.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_16" <= 11.500000) AND (t."X_18" > 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_0" <= 3.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_16" <= 11.500000) AND (t."X_18" > 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_0" > 3.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_2" > 0.500000) AND (t."X_16" <= 14.500000) AND (t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_8" <= 264567.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_2" > 0.500000) AND (t."X_16" <= 14.500000) AND (t."X_18" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_8" > 264567.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_2" > 0.500000) AND (t."X_16" <= 14.500000) AND (t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_11" <= 0.500000) AND (t."X_8" <= 188434.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_2" > 0.500000) AND (t."X_16" <= 14.500000) AND (t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_11" <= 0.500000) AND (t."X_8" > 188434.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_2" > 0.500000) AND (t."X_16" <= 14.500000) AND (t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_11" > 0.500000) AND (t."X_48" <= 0.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_16" > 11.500000) AND (t."X_2" > 0.500000) AND (t."X_16" <= 14.500000) AND (t."X_18" > 0.500000) AND (t."X_16" > 12.500000) AND (t."X_11" > 0.500000) AND (t."X_48" > 0.500000)) THEN 26 ELSE NULL END AS Leaf_26
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
    SELECT 0 AS nid,  0.734375 AS "P_0", 0.265625 AS "P_1", 0 AS "D", 0.734375 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.904762 AS "P_0", 0.095238 AS "P_1", 0 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.409091 AS "P_0", 0.590909 AS "P_1", 1 AS "D", 0.590909 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_45" > 2.500000) AND (t."X_0" > 3.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_45" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 0.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_45" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 0.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_15" > 0.500000) AND (t."X_0" <= 3.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_15" > 0.500000) AND (t."X_0" > 3.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_15" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_2" <= 0.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_15" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_41" <= 0.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_15" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_41" > 0.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_15" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_2" > 0.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_15" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_0" <= 3.000000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_15" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_0" > 3.000000) AND (t."X_11" <= 0.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_15" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_0" > 3.000000) AND (t."X_11" > 0.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 0.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_11" > 0.500000) AND (t."X_18" <= 0.500000)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_11" > 0.500000) AND (t."X_18" > 0.500000)) THEN 30 ELSE NULL END AS Leaf_30
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
    SELECT 0 AS nid,  0.859375 AS "P_0", 0.140625 AS "P_1", 0 AS "D", 0.859375 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.896552 AS "P_0", 0.103448 AS "P_1", 0 AS "D", 0.896552 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.962963 AS "P_0", 0.037037 AS "P_1", 0 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.838710 AS "P_0", 0.161290 AS "P_1", 0 AS "D", 0.838710 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_9", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_13" > 0.500000) AND (t."X_28" <= 0.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_13" > 0.500000) AND (t."X_28" > 0.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_30" > 0.500000) AND (t."X_31" <= 0.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_30" <= 0.500000) AND (t."X_0" > 2.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_30" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_0" > 3.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_30" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_29" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_30" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_29" <= 0.500000) AND (t."X_28" <= 0.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_30" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_29" <= 0.500000) AND (t."X_28" > 0.500000) AND (t."X_34" > 0.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_30" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_29" <= 0.500000) AND (t."X_28" > 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_31" <= 0.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_30" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_29" <= 0.500000) AND (t."X_28" > 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_31" > 0.500000) AND (t."X_38" <= 0.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_30" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_29" <= 0.500000) AND (t."X_28" > 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_31" > 0.500000) AND (t."X_38" > 0.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_30" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 2.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_30" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_3" > 0.500000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_30" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_3" <= 0.500000) AND (t."X_6" > 0.500000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_30" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_3" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_8" <= 130240.000000)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_30" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_3" <= 0.500000) AND (t."X_6" <= 0.500000) AND (t."X_8" > 130240.000000)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_8" > 140015.500000)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_8" <= 140015.500000) AND (t."X_30" > 0.500000)) THEN 38 ELSE NULL END AS Leaf_38,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_8" <= 140015.500000) AND (t."X_30" <= 0.500000) AND (t."X_8" <= 119046.500000)) THEN 39 ELSE NULL END AS Leaf_39,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_8" <= 140015.500000) AND (t."X_30" <= 0.500000) AND (t."X_8" > 119046.500000)) THEN 40 ELSE NULL END AS Leaf_40
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
    SELECT 0 AS nid,  0.718750 AS "P_0", 0.281250 AS "P_1", 0 AS "D", 0.718750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.737705 AS "P_0", 0.262295 AS "P_1", 0 AS "D", 0.737705 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.760000 AS "P_0", 0.240000 AS "P_1", 0 AS "D", 0.760000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" > 0.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_3" > 0.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" > 3.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_10" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_10" <= 0.500000) AND (t."X_50" <= 0.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_10" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_16" > 12.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_10" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_0" > 1.500000) AND (t."X_30" <= 0.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_10" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_0" > 1.500000) AND (t."X_30" > 0.500000) AND (t."X_16" <= 9.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_10" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_0" > 1.500000) AND (t."X_30" > 0.500000) AND (t."X_16" > 9.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_10" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_16" <= 11.000000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_10" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_16" > 11.000000) AND (t."X_8" <= 264567.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_20" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_10" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_16" <= 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_16" > 11.000000) AND (t."X_8" > 264567.500000)) THEN 22 ELSE NULL END AS Leaf_22
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
    SELECT 0 AS nid,  0.671875 AS "P_0", 0.328125 AS "P_1", 0 AS "D", 0.671875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.580000 AS "P_0", 0.420000 AS "P_1", 0 AS "D", 0.580000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.644444 AS "P_0", 0.355556 AS "P_1", 0 AS "D", 0.644444 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.466667 AS "P_0", 0.533333 AS "P_1", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.360000 AS "P_0", 0.640000 AS "P_1", 1 AS "D", 0.640000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_14", t1."Leaf_16", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_18" <= 0.500000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_39" > 0.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_45" <= 3.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_45" > 3.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" > 0.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" <= 0.500000) AND (t."X_16" <= 9.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" <= 0.500000) AND (t."X_16" > 9.500000) AND (t."X_43" > 1.000000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" <= 0.500000) AND (t."X_16" > 9.500000) AND (t."X_43" <= 1.000000) AND (t."X_5" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" <= 0.500000) AND (t."X_16" > 9.500000) AND (t."X_43" <= 1.000000) AND (t."X_5" <= 0.500000) AND (t."X_3" > 0.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" <= 0.500000) AND (t."X_16" > 9.500000) AND (t."X_43" <= 1.000000) AND (t."X_5" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" > 12.000000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" <= 0.500000) AND (t."X_16" > 9.500000) AND (t."X_43" <= 1.000000) AND (t."X_5" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" <= 12.000000) AND (t."X_8" <= 109013.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_37" <= 0.500000) AND (t."X_16" > 9.500000) AND (t."X_43" <= 1.000000) AND (t."X_5" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" <= 12.000000) AND (t."X_8" > 109013.500000)) THEN 22 ELSE NULL END AS Leaf_22
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
    SELECT 0 AS nid,  0.828125 AS "P_0", 0.171875 AS "P_1", 0 AS "D", 0.828125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.717949 AS "P_0", 0.282051 AS "P_1", 0 AS "D", 0.717949 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.756757 AS "P_0", 0.243243 AS "P_1", 0 AS "D", 0.756757 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.619048 AS "P_0", 0.380952 AS "P_1", 0 AS "D", 0.619048 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.578947 AS "P_0", 0.421053 AS "P_1", 0 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_6", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_26" > 0.500000) AND (t."X_42" <= 0.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_26" > 0.500000) AND (t."X_42" > 0.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_29" > 0.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_30" <= 0.500000) AND (t."X_27" > 0.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_30" <= 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_31" <= 0.500000) AND (t."X_15" <= 0.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_30" <= 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_31" <= 0.500000) AND (t."X_15" > 0.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_30" <= 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_31" > 0.500000) AND (t."X_15" <= 0.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_30" <= 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_31" > 0.500000) AND (t."X_15" > 0.500000) AND (t."X_52" <= 0.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_30" <= 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_31" > 0.500000) AND (t."X_15" > 0.500000) AND (t."X_52" > 0.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_31" <= 0.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_5" > 0.500000) AND (t."X_0" <= 1.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_5" > 0.500000) AND (t."X_0" > 1.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_15" <= 0.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_15" > 0.500000) AND (t."X_0" <= 3.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_30" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_15" > 0.500000) AND (t."X_0" > 3.500000)) THEN 28 ELSE NULL END AS Leaf_28
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
    SELECT 0 AS nid,  0.843750 AS "P_0", 0.156250 AS "P_1", 0 AS "D", 0.843750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.892857 AS "P_0", 0.107143 AS "P_1", 0 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.872340 AS "P_0", 0.127660 AS "P_1", 0 AS "D", 0.872340 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.925926 AS "P_0", 0.074074 AS "P_1", 0 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.692308 AS "P_0", 0.307692 AS "P_1", 0 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.882353 AS "P_0", 0.117647 AS "P_1", 0 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_10", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_45" > 2.500000) AND (t."X_30" > 0.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_45" > 2.500000) AND (t."X_30" <= 0.500000) AND (t."X_3" > 0.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_31" > 0.500000) AND (t."X_37" > 0.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_31" > 0.500000) AND (t."X_37" <= 0.500000) AND (t."X_52" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_31" > 0.500000) AND (t."X_37" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_30" <= 0.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_31" > 0.500000) AND (t."X_37" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_30" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_31" > 0.500000) AND (t."X_37" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_2" <= 0.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_31" > 0.500000) AND (t."X_37" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_43" <= 1.000000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_31" > 0.500000) AND (t."X_37" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_43" > 1.000000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_45" > 2.500000) AND (t."X_30" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_14" > 0.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_45" > 2.500000) AND (t."X_30" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_26" <= 0.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_45" > 2.500000) AND (t."X_30" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_26" > 0.500000) AND (t."X_32" <= 0.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_45" > 2.500000) AND (t."X_30" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_26" > 0.500000) AND (t."X_32" > 0.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_31" <= 0.500000) AND (t."X_41" <= 0.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_31" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_26" > 0.500000) AND (t."X_32" <= 0.500000)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_31" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_26" > 0.500000) AND (t."X_32" > 0.500000)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_31" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_42" > 0.500000)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_31" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_42" <= 0.500000) AND (t."X_1" > 0.500000)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_31" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_42" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_32" <= 0.500000)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_31" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_42" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_32" > 0.500000) AND (t."X_27" <= 0.500000)) THEN 39 ELSE NULL END AS Leaf_39,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_31" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_42" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_32" > 0.500000) AND (t."X_27" > 0.500000)) THEN 40 ELSE NULL END AS Leaf_40
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
    SELECT 0 AS nid,  0.671875 AS "P_0", 0.328125 AS "P_1", 0 AS "D", 0.671875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.760870 AS "P_0", 0.239130 AS "P_1", 0 AS "D", 0.760870 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.882353 AS "P_0", 0.117647 AS "P_1", 0 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.416667 AS "P_0", 0.583333 AS "P_1", 1 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.958333 AS "P_0", 0.041667 AS "P_1", 0 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > 244594.000000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_8" <= 244594.000000) AND (t."X_0" > 1.500000) AND (t."X_8" <= 87811.000000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_8" <= 244594.000000) AND (t."X_0" > 1.500000) AND (t."X_8" > 87811.000000) AND (t."X_24" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_8" <= 244594.000000) AND (t."X_0" > 1.500000) AND (t."X_8" > 87811.000000) AND (t."X_24" <= 0.500000) AND (t."X_8" <= 119208.000000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_8" <= 244594.000000) AND (t."X_0" > 1.500000) AND (t."X_8" > 87811.000000) AND (t."X_24" <= 0.500000) AND (t."X_8" > 119208.000000) AND (t."X_0" <= 2.500000) AND (t."X_8" > 175245.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_8" <= 244594.000000) AND (t."X_0" > 1.500000) AND (t."X_8" > 87811.000000) AND (t."X_24" <= 0.500000) AND (t."X_8" > 119208.000000) AND (t."X_0" <= 2.500000) AND (t."X_8" <= 175245.500000) AND (t."X_8" <= 163428.000000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_8" <= 244594.000000) AND (t."X_0" > 1.500000) AND (t."X_8" > 87811.000000) AND (t."X_24" <= 0.500000) AND (t."X_8" > 119208.000000) AND (t."X_0" <= 2.500000) AND (t."X_8" <= 175245.500000) AND (t."X_8" > 163428.000000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_8" <= 244594.000000) AND (t."X_0" > 1.500000) AND (t."X_8" > 87811.000000) AND (t."X_24" <= 0.500000) AND (t."X_8" > 119208.000000) AND (t."X_0" > 2.500000) AND (t."X_39" > 0.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_8" <= 244594.000000) AND (t."X_0" > 1.500000) AND (t."X_8" > 87811.000000) AND (t."X_24" <= 0.500000) AND (t."X_8" > 119208.000000) AND (t."X_0" > 2.500000) AND (t."X_39" <= 0.500000) AND (t."X_2" > 0.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_8" <= 244594.000000) AND (t."X_0" > 1.500000) AND (t."X_8" > 87811.000000) AND (t."X_24" <= 0.500000) AND (t."X_8" > 119208.000000) AND (t."X_0" > 2.500000) AND (t."X_39" <= 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_4" <= 0.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_8" <= 244594.000000) AND (t."X_0" > 1.500000) AND (t."X_8" > 87811.000000) AND (t."X_24" <= 0.500000) AND (t."X_8" > 119208.000000) AND (t."X_0" > 2.500000) AND (t."X_39" <= 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_4" > 0.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_8" <= 244594.000000) AND (t."X_0" <= 1.500000) AND (t."X_26" > 0.500000) AND (t."X_32" <= 0.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_8" <= 244594.000000) AND (t."X_0" <= 1.500000) AND (t."X_26" > 0.500000) AND (t."X_32" > 0.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_8" <= 244594.000000) AND (t."X_0" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" > 136209.500000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_8" <= 244594.000000) AND (t."X_0" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" <= 136209.500000) AND (t."X_2" <= 0.500000)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_8" <= 244594.000000) AND (t."X_0" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" <= 136209.500000) AND (t."X_2" > 0.500000) AND (t."X_11" <= 0.500000)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_8" <= 244594.000000) AND (t."X_0" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" <= 136209.500000) AND (t."X_2" > 0.500000) AND (t."X_11" > 0.500000)) THEN 32 ELSE NULL END AS Leaf_32
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
    SELECT 0 AS nid,  0.796875 AS "P_0", 0.203125 AS "P_1", 0 AS "D", 0.796875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.754717 AS "P_0", 0.245283 AS "P_1", 0 AS "D", 0.754717 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.925926 AS "P_0", 0.074074 AS "P_1", 0 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.576923 AS "P_0", 0.423077 AS "P_1", 0 AS "D", 0.576923 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.421053 AS "P_0", 0.578947 AS "P_1", 1 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.388889 AS "P_0", 0.611111 AS "P_1", 1 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.538462 AS "P_0", 0.461538 AS "P_1", 0 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.960000 AS "P_0", 0.040000 AS "P_1", 0 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_26" > 0.500000) AND (t."X_43" <= 0.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_26" > 0.500000) AND (t."X_43" > 0.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_11" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_31" <= 0.500000) AND (t."X_26" > 0.500000) AND (t."X_20" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_31" <= 0.500000) AND (t."X_26" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_0" <= 2.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_31" <= 0.500000) AND (t."X_26" > 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_0" > 2.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 3.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_50" <= 0.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_50" > 0.500000) AND (t."X_0" <= 0.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_50" > 0.500000) AND (t."X_0" > 0.500000) AND (t."X_39" > 0.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_50" > 0.500000) AND (t."X_0" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_15" <= 0.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_50" > 0.500000) AND (t."X_0" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_15" > 0.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_50" > 0.500000) AND (t."X_0" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 2.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_50" > 0.500000) AND (t."X_0" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_29" <= 0.500000)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_50" > 0.500000) AND (t."X_0" > 0.500000) AND (t."X_39" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_29" > 0.500000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_31" <= 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_14" > 0.500000)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_31" <= 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_32" <= 0.500000)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_31" <= 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_32" > 0.500000) AND (t."X_42" > 0.500000)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_31" <= 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_32" > 0.500000) AND (t."X_42" <= 0.500000) AND (t."X_0" <= 3.000000)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_31" <= 0.500000) AND (t."X_26" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_32" > 0.500000) AND (t."X_42" <= 0.500000) AND (t."X_0" > 3.000000)) THEN 38 ELSE NULL END AS Leaf_38
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
    SELECT 0 AS nid,  0.781250 AS "P_0", 0.218750 AS "P_1", 0 AS "D", 0.781250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.914286 AS "P_0", 0.085714 AS "P_1", 0 AS "D", 0.914286 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.620690 AS "P_0", 0.379310 AS "P_1", 0 AS "D", 0.620690 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.809524 AS "P_0", 0.190476 AS "P_1", 0 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.850000 AS "P_0", 0.150000 AS "P_1", 0 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.966667 AS "P_0", 0.033333 AS "P_1", 0 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.954545 AS "P_0", 0.045455 AS "P_1", 0 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_31" <= 0.500000) AND (t."X_1" > 0.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_3" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_4" > 0.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_5" <= 0.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_5" > 0.500000) AND (t."X_50" <= 0.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_5" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_11" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_5" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_44" <= 1.000000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_3" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_5" > 0.500000) AND (t."X_50" > 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_44" > 1.000000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_25" > 0.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_50" <= 0.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_29" > 0.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_8" <= 140015.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_8" > 140015.500000) AND (t."X_13" <= 0.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_8" > 140015.500000) AND (t."X_13" > 0.500000) AND (t."X_8" <= 188434.500000)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_31" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_8" > 140015.500000) AND (t."X_13" > 0.500000) AND (t."X_8" > 188434.500000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_31" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_2" <= 0.500000)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_31" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_32" <= 0.500000)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_31" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_32" > 0.500000) AND (t."X_8" > 203976.500000)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_31" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_32" > 0.500000) AND (t."X_8" <= 203976.500000) AND (t."X_11" > 0.500000)) THEN 38 ELSE NULL END AS Leaf_38,
      CASE WHEN((t."X_31" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_32" > 0.500000) AND (t."X_8" <= 203976.500000) AND (t."X_11" <= 0.500000) AND (t."X_12" <= 0.500000)) THEN 39 ELSE NULL END AS Leaf_39,
      CASE WHEN((t."X_31" <= 0.500000) AND (t."X_1" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_32" > 0.500000) AND (t."X_8" <= 203976.500000) AND (t."X_11" <= 0.500000) AND (t."X_12" > 0.500000)) THEN 40 ELSE NULL END AS Leaf_40
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
    SELECT 0 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.678571 AS "P_0", 0.321429 AS "P_1", 0 AS "D", 0.678571 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.970588 AS "P_0", 0.029412 AS "P_1", 0 AS "D", 0.970588 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.964286 AS "P_0", 0.035714 AS "P_1", 0 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_45" <= 0.500000) AND (t."X_0" > 3.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_45" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 1.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_45" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 1.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" > 0.500000) AND (t."X_0" > 2.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_35" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_35" <= 0.500000) AND (t."X_8" <= 290143.000000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_35" <= 0.500000) AND (t."X_8" > 290143.000000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_8" > 176454.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_8" <= 176454.500000) AND (t."X_2" <= 0.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_45" > 2.500000) AND (t."X_8" <= 176454.500000) AND (t."X_2" > 0.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_0" <= 2.000000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_0" > 2.000000) AND (t."X_8" <= 111713.000000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_0" > 2.000000) AND (t."X_8" > 111713.000000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_32" > 0.500000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_42" <= 0.500000)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_34" > 0.500000)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_11" <= 0.500000)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_11" > 0.500000)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_0" <= 1.500000)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_0" > 1.500000) AND (t."X_8" <= 186532.000000)) THEN 39 ELSE NULL END AS Leaf_39,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_0" > 1.500000) AND (t."X_8" > 186532.000000) AND (t."X_8" <= 188434.500000)) THEN 41 ELSE NULL END AS Leaf_41,
      CASE WHEN((t."X_45" > 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_0" > 1.500000) AND (t."X_8" > 186532.000000) AND (t."X_8" > 188434.500000)) THEN 42 ELSE NULL END AS Leaf_42
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
    SELECT 0 AS nid,  0.765625 AS "P_0", 0.234375 AS "P_1", 0 AS "D", 0.765625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.789474 AS "P_0", 0.210526 AS "P_1", 0 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.826923 AS "P_0", 0.173077 AS "P_1", 0 AS "D", 0.826923 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.861111 AS "P_0", 0.138889 AS "P_1", 0 AS "D", 0.861111 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.814815 AS "P_0", 0.185185 AS "P_1", 0 AS "D", 0.814815 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.687500 AS "P_0", 0.312500 AS "P_1", 0 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_13" > 0.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_44" > 2.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" > 1.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 1.500000) AND (t."X_20" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 1.500000) AND (t."X_20" <= 0.500000) AND (t."X_42" <= 0.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 1.500000) AND (t."X_20" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_29" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 1.500000) AND (t."X_20" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_45" <= 0.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 1.500000) AND (t."X_20" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_45" > 0.500000) AND (t."X_52" > 0.500000) AND (t."X_3" <= 0.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 1.500000) AND (t."X_20" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_45" > 0.500000) AND (t."X_52" > 0.500000) AND (t."X_3" > 0.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 1.500000) AND (t."X_20" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_45" > 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_4" > 0.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 1.500000) AND (t."X_20" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_45" > 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_30" > 0.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 1.500000) AND (t."X_20" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_45" > 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_30" <= 0.500000) AND (t."X_8" <= 110090.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 1.500000) AND (t."X_20" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_45" > 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_30" <= 0.500000) AND (t."X_8" > 110090.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 1.500000) AND (t."X_20" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_45" > 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_5" > 0.500000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 1.500000) AND (t."X_20" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_45" > 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_45" <= 3.000000)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_44" <= 2.500000) AND (t."X_43" <= 1.500000) AND (t."X_20" <= 0.500000) AND (t."X_42" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_45" > 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_14" > 0.500000) AND (t."X_5" <= 0.500000) AND (t."X_45" > 3.000000)) THEN 30 ELSE NULL END AS Leaf_30
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
    SELECT 0 AS nid,  0.703125 AS "P_0", 0.296875 AS "P_1", 0 AS "D", 0.703125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.775862 AS "P_0", 0.224138 AS "P_1", 0 AS "D", 0.775862 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.761905 AS "P_0", 0.238095 AS "P_1", 0 AS "D", 0.761905 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.696970 AS "P_0", 0.303030 AS "P_1", 0 AS "D", 0.696970 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.655172 AS "P_0", 0.344828 AS "P_1", 0 AS "D", 0.655172 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.730769 AS "P_0", 0.269231 AS "P_1", 0 AS "D", 0.730769 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.583333 AS "P_0", 0.416667 AS "P_1", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_13" > 0.500000) AND (t."X_2" <= 0.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_13" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_45" <= 2.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_13" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_45" > 2.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_14" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_50" <= 0.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_31" <= 0.500000) AND (t."X_16" <= 14.000000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_31" <= 0.500000) AND (t."X_16" > 14.000000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_45" <= 1.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_45" > 1.500000) AND (t."X_3" > 0.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_45" > 1.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" <= 12.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_13" <= 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_31" > 0.500000) AND (t."X_45" > 1.500000) AND (t."X_3" <= 0.500000) AND (t."X_16" > 12.500000)) THEN 20 ELSE NULL END AS Leaf_20
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
    SELECT 0 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.859649 AS "P_0", 0.140351 AS "P_1", 0 AS "D", 0.859649 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.783784 AS "P_0", 0.216216 AS "P_1", 0 AS "D", 0.783784 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.741935 AS "P_0", 0.258065 AS "P_1", 0 AS "D", 0.741935 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_6", t1."Leaf_7", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_45" <= 1.500000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" > 188434.500000) AND (t."X_9" > 0.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" > 188434.500000) AND (t."X_9" <= 0.500000) AND (t."X_8" <= 207536.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" > 188434.500000) AND (t."X_9" <= 0.500000) AND (t."X_8" > 207536.500000) AND (t."X_28" > 0.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" > 188434.500000) AND (t."X_9" <= 0.500000) AND (t."X_8" > 207536.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" > 416176.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" > 188434.500000) AND (t."X_9" <= 0.500000) AND (t."X_8" > 207536.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_14" > 0.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" > 188434.500000) AND (t."X_9" <= 0.500000) AND (t."X_8" > 207536.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_14" <= 0.500000) AND (t."X_1" <= 0.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" > 188434.500000) AND (t."X_9" <= 0.500000) AND (t."X_8" > 207536.500000) AND (t."X_28" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_14" <= 0.500000) AND (t."X_1" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" <= 188434.500000) AND (t."X_6" > 0.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" <= 188434.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" > 0.500000) AND (t."X_12" <= 0.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" <= 188434.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" > 0.500000) AND (t."X_12" > 0.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" <= 188434.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_28" > 0.500000) AND (t."X_16" <= 15.000000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" <= 188434.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_28" > 0.500000) AND (t."X_16" > 15.000000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" <= 188434.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_25" <= 0.500000)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" <= 188434.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_25" > 0.500000) AND (t."X_11" <= 0.500000)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" <= 188434.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_25" > 0.500000) AND (t."X_11" > 0.500000)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" <= 188434.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_16" <= 9.500000)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" <= 188434.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_16" > 9.500000) AND (t."X_8" > 162702.000000)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" <= 188434.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_16" > 9.500000) AND (t."X_8" <= 162702.000000) AND (t."X_45" <= 2.500000)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_8" <= 188434.500000) AND (t."X_6" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_16" > 9.500000) AND (t."X_8" <= 162702.000000) AND (t."X_45" > 2.500000)) THEN 38 ELSE NULL END AS Leaf_38
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
    SELECT 0 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.686275 AS "P_0", 0.313726 AS "P_1", 0 AS "D", 0.686275 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.843750 AS "P_0", 0.156250 AS "P_1", 0 AS "D", 0.843750 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.421053 AS "P_0", 0.578947 AS "P_1", 1 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.388889 AS "P_0", 0.611111 AS "P_1", 1 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.538462 AS "P_0", 0.461538 AS "P_1", 0 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.880000 AS "P_0", 0.120000 AS "P_1", 0 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.882353 AS "P_0", 0.117647 AS "P_1", 0 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_44" > 1.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" > 0.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" > 0.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_43" > 1.000000) AND (t."X_8" <= 174714.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_43" > 1.000000) AND (t."X_8" > 174714.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_43" <= 1.000000) AND (t."X_3" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_43" <= 1.000000) AND (t."X_3" <= 0.500000) AND (t."X_4" > 0.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_43" <= 1.000000) AND (t."X_3" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_36" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_43" <= 1.000000) AND (t."X_3" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_32" > 0.500000) AND (t."X_28" <= 0.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_43" <= 1.000000) AND (t."X_3" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_32" > 0.500000) AND (t."X_28" > 0.500000) AND (t."X_42" <= 0.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_43" <= 1.000000) AND (t."X_3" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_32" > 0.500000) AND (t."X_28" > 0.500000) AND (t."X_42" > 0.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_43" <= 1.000000) AND (t."X_3" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_25" > 0.500000) AND (t."X_0" > 2.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_43" <= 1.000000) AND (t."X_3" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_25" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_8" <= 264567.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_43" <= 1.000000) AND (t."X_3" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_25" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_8" > 264567.500000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_43" <= 1.000000) AND (t."X_3" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_52" > 0.500000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_43" <= 1.000000) AND (t."X_3" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_8" > 194794.500000)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_43" <= 1.000000) AND (t."X_3" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_8" <= 194794.500000) AND (t."X_8" <= 86113.000000)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_44" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" <= 0.500000) AND (t."X_43" <= 1.000000) AND (t."X_3" <= 0.500000) AND (t."X_4" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_32" <= 0.500000) AND (t."X_25" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_8" <= 194794.500000) AND (t."X_8" > 86113.000000)) THEN 34 ELSE NULL END AS Leaf_34
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
    SELECT 0 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.781818 AS "P_0", 0.218182 AS "P_1", 0 AS "D", 0.781818 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.733333 AS "P_0", 0.266667 AS "P_1", 0 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.842105 AS "P_0", 0.157895 AS "P_1", 0 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.806452 AS "P_0", 0.193548 AS "P_1", 0 AS "D", 0.806452 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_24", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 0.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" > 1.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_13" <= 0.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_13" > 0.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" > 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_44" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" > 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_44" <= 0.500000) AND (t."X_8" <= 125180.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" > 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_44" <= 0.500000) AND (t."X_8" > 125180.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" > 416176.500000) AND (t."X_8" <= 726985.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" > 416176.500000) AND (t."X_8" > 726985.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_35" > 0.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" <= 1.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_47" > 0.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_47" <= 0.500000) AND (t."X_12" > 0.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_47" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" <= 116773.500000) AND (t."X_30" <= 0.500000)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_47" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" <= 116773.500000) AND (t."X_30" > 0.500000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_47" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" > 116773.500000) AND (t."X_8" <= 175728.500000)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_47" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" > 116773.500000) AND (t."X_8" > 175728.500000) AND (t."X_30" > 0.500000) AND (t."X_8" <= 223547.500000)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_47" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" > 116773.500000) AND (t."X_8" > 175728.500000) AND (t."X_30" > 0.500000) AND (t."X_8" > 223547.500000)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_47" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" > 116773.500000) AND (t."X_8" > 175728.500000) AND (t."X_30" <= 0.500000) AND (t."X_8" <= 207536.500000)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_27" <= 0.500000) AND (t."X_43" <= 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_8" <= 416176.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_47" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_8" > 116773.500000) AND (t."X_8" > 175728.500000) AND (t."X_30" <= 0.500000) AND (t."X_8" > 207536.500000)) THEN 38 ELSE NULL END AS Leaf_38
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
    SELECT 0 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.793103 AS "P_0", 0.206897 AS "P_1", 0 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.821429 AS "P_0", 0.178571 AS "P_1", 0 AS "D", 0.821429 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.891304 AS "P_0", 0.108696 AS "P_1", 0 AS "D", 0.891304 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.891892 AS "P_0", 0.108108 AS "P_1", 0 AS "D", 0.891892 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.809524 AS "P_0", 0.190476 AS "P_1", 0 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_41" <= 0.500000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_41" > 0.500000) AND (t."X_18" <= 0.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_41" > 0.500000) AND (t."X_18" > 0.500000) AND (t."X_0" > 1.500000) AND (t."X_8" > 224241.000000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_41" > 0.500000) AND (t."X_18" > 0.500000) AND (t."X_0" > 1.500000) AND (t."X_8" <= 224241.000000) AND (t."X_24" > 0.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_41" > 0.500000) AND (t."X_18" > 0.500000) AND (t."X_0" > 1.500000) AND (t."X_8" <= 224241.000000) AND (t."X_24" <= 0.500000) AND (t."X_8" <= 86113.000000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_41" > 0.500000) AND (t."X_18" > 0.500000) AND (t."X_0" > 1.500000) AND (t."X_8" <= 224241.000000) AND (t."X_24" <= 0.500000) AND (t."X_8" > 86113.000000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_41" > 0.500000) AND (t."X_18" > 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_42" <= 0.500000) AND (t."X_44" <= 0.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_41" > 0.500000) AND (t."X_18" > 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_42" <= 0.500000) AND (t."X_44" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_41" > 0.500000) AND (t."X_18" > 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_2" <= 0.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_41" > 0.500000) AND (t."X_18" > 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_8" <= 310694.000000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_41" > 0.500000) AND (t."X_18" > 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_42" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_8" > 310694.000000)) THEN 20 ELSE NULL END AS Leaf_20
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
    SELECT 0 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
