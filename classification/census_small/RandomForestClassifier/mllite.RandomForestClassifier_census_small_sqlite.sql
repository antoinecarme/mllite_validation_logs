WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "census_small" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_2", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" > 3.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 116773.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 116773.500000) AND (t."X_2" <= 165823.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 116773.500000) AND (t."X_2" > 165823.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 184900.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_0" > 3.500000) AND (t."X_12" <= 1.000000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_0" > 3.500000) AND (t."X_12" > 1.000000) AND (t."X_2" <= 133859.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_0" > 3.500000) AND (t."X_12" > 1.000000) AND (t."X_2" > 133859.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 184900.000000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 274409.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 184900.000000) AND (t."X_0" > 1.500000) AND (t."X_2" > 274409.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 184900.000000) AND (t."X_0" <= 1.500000) AND (t."X_12" > 2.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 184900.000000) AND (t."X_0" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_2" <= 215147.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 184900.000000) AND (t."X_0" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_2" > 215147.500000) AND (t."X_2" <= 256953.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 184900.000000) AND (t."X_0" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_2" > 215147.500000) AND (t."X_2" > 256953.000000) AND (t."X_2" <= 352499.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 184900.000000) AND (t."X_0" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_2" > 215147.500000) AND (t."X_2" > 256953.000000) AND (t."X_2" > 352499.500000)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.796875 AS "P_0", 0.203125 AS "P_1", 0 AS "D", 0.796875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.779661 AS "P_0", 0.220339 AS "P_1", 0 AS "D", 0.779661 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.837209 AS "P_0", 0.162791 AS "P_1", 0 AS "D", 0.837209 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.681818 AS "P_0", 0.318182 AS "P_1", 0 AS "D", 0.681818 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_13", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_2" <= 174714.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_2" > 174714.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" > 0.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" > 239512.000000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 239512.000000) AND (t."X_2" <= 77085.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 239512.000000) AND (t."X_2" > 77085.000000) AND (t."X_2" > 119208.000000) AND (t."X_2" <= 185331.000000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 239512.000000) AND (t."X_2" > 77085.000000) AND (t."X_2" > 119208.000000) AND (t."X_2" > 185331.000000) AND (t."X_2" <= 196604.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 239512.000000) AND (t."X_2" > 77085.000000) AND (t."X_2" > 119208.000000) AND (t."X_2" > 185331.000000) AND (t."X_2" > 196604.000000) AND (t."X_2" <= 225324.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 239512.000000) AND (t."X_2" > 77085.000000) AND (t."X_2" > 119208.000000) AND (t."X_2" > 185331.000000) AND (t."X_2" > 196604.000000) AND (t."X_2" > 225324.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 239512.000000) AND (t."X_2" > 77085.000000) AND (t."X_2" <= 119208.000000) AND (t."X_2" <= 91665.500000) AND (t."X_2" <= 78783.000000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 239512.000000) AND (t."X_2" > 77085.000000) AND (t."X_2" <= 119208.000000) AND (t."X_2" <= 91665.500000) AND (t."X_2" > 78783.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 239512.000000) AND (t."X_2" > 77085.000000) AND (t."X_2" <= 119208.000000) AND (t."X_2" > 91665.500000) AND (t."X_2" <= 107546.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 239512.000000) AND (t."X_2" > 77085.000000) AND (t."X_2" <= 119208.000000) AND (t."X_2" > 91665.500000) AND (t."X_2" > 107546.500000) AND (t."X_2" <= 112680.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 239512.000000) AND (t."X_2" > 77085.000000) AND (t."X_2" <= 119208.000000) AND (t."X_2" > 91665.500000) AND (t."X_2" > 107546.500000) AND (t."X_2" > 112680.500000)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.703125 AS "P_0", 0.296875 AS "P_1", 0 AS "D", 0.703125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.754386 AS "P_0", 0.245614 AS "P_1", 0 AS "D", 0.754386 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.650000 AS "P_0", 0.350000 AS "P_1", 0 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.575758 AS "P_0", 0.424242 AS "P_1", 0 AS "D", 0.575758 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_6", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" > 0.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" <= 0.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" > 1.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 180554.500000) AND (t."X_2" <= 196604.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 180554.500000) AND (t."X_2" > 196604.000000) AND (t."X_11" > 0.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 180554.500000) AND (t."X_2" > 196604.000000) AND (t."X_11" <= 0.500000) AND (t."X_2" <= 388499.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 180554.500000) AND (t."X_2" > 196604.000000) AND (t."X_11" <= 0.500000) AND (t."X_2" > 388499.500000) AND (t."X_4" <= 11.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 180554.500000) AND (t."X_2" > 196604.000000) AND (t."X_11" <= 0.500000) AND (t."X_2" > 388499.500000) AND (t."X_4" > 11.000000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" <= 180554.500000) AND (t."X_11" > 0.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" <= 180554.500000) AND (t."X_11" <= 0.500000) AND (t."X_12" > 3.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" <= 180554.500000) AND (t."X_11" <= 0.500000) AND (t."X_12" <= 3.500000) AND (t."X_0" <= 3.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" <= 180554.500000) AND (t."X_11" <= 0.500000) AND (t."X_12" <= 3.500000) AND (t."X_0" > 3.500000) AND (t."X_12" <= 1.000000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" <= 180554.500000) AND (t."X_11" <= 0.500000) AND (t."X_12" <= 3.500000) AND (t."X_0" > 3.500000) AND (t."X_12" > 1.000000) AND (t."X_4" <= 11.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" <= 180554.500000) AND (t."X_11" <= 0.500000) AND (t."X_12" <= 3.500000) AND (t."X_0" > 3.500000) AND (t."X_12" > 1.000000) AND (t."X_4" > 11.500000)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.796875 AS "P_0", 0.203125 AS "P_1", 0 AS "D", 0.796875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.790323 AS "P_0", 0.209677 AS "P_1", 0 AS "D", 0.790323 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.759259 AS "P_0", 0.240741 AS "P_1", 0 AS "D", 0.759259 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.788462 AS "P_0", 0.211538 AS "P_1", 0 AS "D", 0.788462 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.896552 AS "P_0", 0.103448 AS "P_1", 0 AS "D", 0.896552 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.652174 AS "P_0", 0.347826 AS "P_1", 0 AS "D", 0.652174 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.882353 AS "P_0", 0.117647 AS "P_1", 0 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.892857 AS "P_0", 0.107143 AS "P_1", 0 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.925926 AS "P_0", 0.074074 AS "P_1", 0 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_20", t1."Leaf_21", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" > 3.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 119208.000000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 119208.000000) AND (t."X_2" <= 176454.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 119208.000000) AND (t."X_2" > 176454.500000) AND (t."X_4" <= 9.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 119208.000000) AND (t."X_2" > 176454.500000) AND (t."X_4" > 9.500000) AND (t."X_0" <= 2.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 119208.000000) AND (t."X_2" > 176454.500000) AND (t."X_4" > 9.500000) AND (t."X_0" > 2.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 91665.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" > 1.500000) AND (t."X_4" > 11.500000) AND (t."X_4" > 14.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 0.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" <= 3.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" > 3.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" > 1.500000) AND (t."X_4" > 11.500000) AND (t."X_4" <= 14.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 149857.000000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" > 1.500000) AND (t."X_4" > 11.500000) AND (t."X_4" <= 14.500000) AND (t."X_0" > 2.500000) AND (t."X_2" > 149857.000000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" > 1.500000) AND (t."X_4" > 11.500000) AND (t."X_4" <= 14.500000) AND (t."X_0" <= 2.500000) AND (t."X_4" > 13.000000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" > 1.500000) AND (t."X_4" > 11.500000) AND (t."X_4" <= 14.500000) AND (t."X_0" <= 2.500000) AND (t."X_4" <= 13.000000) AND (t."X_2" <= 290143.000000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" > 1.500000) AND (t."X_4" > 11.500000) AND (t."X_4" <= 14.500000) AND (t."X_0" <= 2.500000) AND (t."X_4" <= 13.000000) AND (t."X_2" > 290143.000000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" > 1.500000) AND (t."X_4" <= 11.500000) AND (t."X_0" <= 2.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" > 1.500000) AND (t."X_4" <= 11.500000) AND (t."X_0" > 2.500000) AND (t."X_0" > 3.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" > 1.500000) AND (t."X_4" <= 11.500000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 111713.000000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" > 1.500000) AND (t."X_4" <= 11.500000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 111713.000000)) THEN 40 ELSE NULL END AS "Leaf_40"
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
    SELECT 0 AS nid,  0.765625 AS "P_0", 0.234375 AS "P_1", 0 AS "D", 0.765625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.816327 AS "P_0", 0.183673 AS "P_1", 0 AS "D", 0.816327 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.775000 AS "P_0", 0.225000 AS "P_1", 0 AS "D", 0.775000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.781250 AS "P_0", 0.218750 AS "P_1", 0 AS "D", 0.781250 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_8", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" <= 9.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" > 13.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" > 162702.000000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" <= 162702.000000) AND (t."X_4" > 12.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" <= 162702.000000) AND (t."X_4" <= 12.000000) AND (t."X_2" <= 75344.000000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" <= 162702.000000) AND (t."X_4" <= 12.000000) AND (t."X_2" > 75344.000000) AND (t."X_2" <= 111713.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" <= 162702.000000) AND (t."X_4" <= 12.000000) AND (t."X_2" > 75344.000000) AND (t."X_2" > 111713.000000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_0" <= 1.500000) AND (t."X_10" > 2.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_0" <= 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_4" <= 13.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_0" <= 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_4" > 13.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" > 2.500000) AND (t."X_4" > 12.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" > 2.500000) AND (t."X_4" <= 12.000000) AND (t."X_2" <= 141160.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" > 2.500000) AND (t."X_4" <= 12.000000) AND (t."X_2" > 141160.500000) AND (t."X_2" <= 176454.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" > 2.500000) AND (t."X_4" <= 12.000000) AND (t."X_2" > 141160.500000) AND (t."X_2" > 176454.500000)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.765625 AS "P_0", 0.234375 AS "P_1", 0 AS "D", 0.765625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.935484 AS "P_0", 0.064516 AS "P_1", 0 AS "D", 0.935484 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.606061 AS "P_0", 0.393939 AS "P_1", 0 AS "D", 0.606061 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.480000 AS "P_0", 0.520000 AS "P_1", 1 AS "D", 0.520000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.647059 AS "P_0", 0.352941 AS "P_1", 0 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.966667 AS "P_0", 0.033333 AS "P_1", 0 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_13", t1."Leaf_16", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" > 2.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 3.500000) AND (t."X_12" <= 1.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 3.500000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 261699.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 3.500000) AND (t."X_12" > 1.500000) AND (t."X_2" > 261699.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 91665.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 91665.500000) AND (t."X_0" <= 0.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 91665.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 104774.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 91665.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 104774.500000) AND (t."X_0" > 2.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 91665.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 104774.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 256953.000000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 91665.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 104774.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 256953.000000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 203824.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 91665.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 104774.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 256953.000000) AND (t."X_0" > 1.500000) AND (t."X_2" > 203824.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 91665.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 104774.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 256953.000000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 207155.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 91665.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 104774.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 256953.000000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 207155.500000) AND (t."X_2" > 136209.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 91665.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 104774.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 256953.000000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 207155.500000) AND (t."X_2" <= 136209.500000) AND (t."X_2" <= 121335.000000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 91665.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 104774.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 256953.000000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 207155.500000) AND (t."X_2" <= 136209.500000) AND (t."X_2" > 121335.000000)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.843750 AS "P_0", 0.156250 AS "P_1", 0 AS "D", 0.843750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.787234 AS "P_0", 0.212766 AS "P_1", 0 AS "D", 0.787234 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.806452 AS "P_0", 0.193548 AS "P_1", 0 AS "D", 0.806452 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_6", t1."Leaf_8", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" <= 9.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_4" > 9.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 3.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_4" > 9.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_4" > 15.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_4" > 9.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_4" <= 15.500000) AND (t."X_0" <= 2.500000) AND (t."X_4" > 12.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_4" > 9.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_4" <= 15.500000) AND (t."X_0" <= 2.500000) AND (t."X_4" <= 12.000000) AND (t."X_2" > 169739.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_4" > 9.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_4" <= 15.500000) AND (t."X_0" <= 2.500000) AND (t."X_4" <= 12.000000) AND (t."X_2" <= 169739.500000) AND (t."X_12" <= 2.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_4" > 9.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_4" <= 15.500000) AND (t."X_0" <= 2.500000) AND (t."X_4" <= 12.000000) AND (t."X_2" <= 169739.500000) AND (t."X_12" > 2.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_4" > 9.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_4" <= 15.500000) AND (t."X_0" > 2.500000) AND (t."X_12" <= 1.000000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_4" > 9.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_4" <= 15.500000) AND (t."X_0" > 2.500000) AND (t."X_12" > 1.000000) AND (t."X_2" <= 111713.000000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_4" > 9.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_4" <= 15.500000) AND (t."X_0" > 2.500000) AND (t."X_12" > 1.000000) AND (t."X_2" > 111713.000000) AND (t."X_12" <= 2.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_4" > 9.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_4" <= 15.500000) AND (t."X_0" > 2.500000) AND (t."X_12" > 1.000000) AND (t."X_2" > 111713.000000) AND (t."X_12" > 2.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_4" > 9.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" <= 12.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_4" > 9.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_2" > 150858.000000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_4" > 9.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_2" <= 150858.000000) AND (t."X_0" <= 0.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_4" > 9.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_2" <= 150858.000000) AND (t."X_0" > 0.500000)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.684211 AS "P_0", 0.315789 AS "P_1", 0 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.421053 AS "P_0", 0.578947 AS "P_1", 1 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.352941 AS "P_0", 0.647059 AS "P_1", 1 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_4" > 15.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" > 266556.000000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" <= 266556.000000) AND (t."X_4" > 14.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" <= 266556.000000) AND (t."X_4" <= 14.500000) AND (t."X_2" <= 174714.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" <= 266556.000000) AND (t."X_4" <= 14.500000) AND (t."X_2" > 174714.500000) AND (t."X_0" <= 3.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" <= 266556.000000) AND (t."X_4" <= 14.500000) AND (t."X_2" > 174714.500000) AND (t."X_0" > 3.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_2" > 184637.500000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_2" > 184637.500000) AND (t."X_0" > 2.500000) AND (t."X_0" > 3.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_2" > 184637.500000) AND (t."X_0" <= 2.500000) AND (t."X_4" <= 11.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_2" > 184637.500000) AND (t."X_0" <= 2.500000) AND (t."X_4" > 11.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_2" <= 184637.500000) AND (t."X_4" <= 9.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_2" <= 184637.500000) AND (t."X_4" > 9.500000) AND (t."X_4" > 10.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_2" <= 184637.500000) AND (t."X_4" > 9.500000) AND (t."X_4" <= 10.500000) AND (t."X_0" <= 1.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_2" <= 184637.500000) AND (t."X_4" > 9.500000) AND (t."X_4" <= 10.500000) AND (t."X_0" > 1.000000) AND (t."X_2" <= 121907.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_2" <= 184637.500000) AND (t."X_4" > 9.500000) AND (t."X_4" <= 10.500000) AND (t."X_0" > 1.000000) AND (t."X_2" > 121907.500000)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.765625 AS "P_0", 0.234375 AS "P_1", 0 AS "D", 0.765625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.895833 AS "P_0", 0.104167 AS "P_1", 0 AS "D", 0.895833 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.935484 AS "P_0", 0.064516 AS "P_1", 0 AS "D", 0.935484 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.823529 AS "P_0", 0.176471 AS "P_1", 0 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_9", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 416176.500000) AND (t."X_0" <= 1.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_2" > 416176.500000) AND (t."X_0" > 1.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" <= 0.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 119208.000000) AND (t."X_2" <= 81886.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 119208.000000) AND (t."X_11" > 0.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 119208.000000) AND (t."X_2" > 81886.500000) AND (t."X_11" > 1.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 119208.000000) AND (t."X_2" > 81886.500000) AND (t."X_11" <= 1.000000) AND (t."X_0" <= 2.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 119208.000000) AND (t."X_2" > 81886.500000) AND (t."X_11" <= 1.000000) AND (t."X_0" > 2.000000) AND (t."X_2" > 103504.000000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 119208.000000) AND (t."X_2" > 81886.500000) AND (t."X_11" <= 1.000000) AND (t."X_0" > 2.000000) AND (t."X_2" <= 103504.000000) AND (t."X_0" <= 3.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 119208.000000) AND (t."X_2" > 81886.500000) AND (t."X_11" <= 1.000000) AND (t."X_0" > 2.000000) AND (t."X_2" <= 103504.000000) AND (t."X_0" > 3.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 119208.000000) AND (t."X_11" <= 0.500000) AND (t."X_12" <= 2.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 119208.000000) AND (t."X_11" <= 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" > 197142.000000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 119208.000000) AND (t."X_11" <= 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 197142.000000) AND (t."X_2" <= 154502.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 119208.000000) AND (t."X_11" <= 0.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 197142.000000) AND (t."X_2" > 154502.000000)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.781250 AS "P_0", 0.218750 AS "P_1", 0 AS "D", 0.781250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.816667 AS "P_0", 0.183333 AS "P_1", 0 AS "D", 0.816667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.755556 AS "P_0", 0.244444 AS "P_1", 0 AS "D", 0.755556 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.925926 AS "P_0", 0.074074 AS "P_1", 0 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" > 3.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 3.500000) AND (t."X_4" <= 11.000000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 3.500000) AND (t."X_4" > 11.000000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 87811.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 87811.000000) AND (t."X_2" <= 121907.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 87811.000000) AND (t."X_2" > 121907.500000) AND (t."X_0" > 2.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 87811.000000) AND (t."X_2" > 121907.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 307101.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 87811.000000) AND (t."X_2" > 121907.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 307101.000000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 136209.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 136209.500000) AND (t."X_0" <= 0.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 136209.500000) AND (t."X_0" > 0.500000)) THEN 20 ELSE NULL END AS "Leaf_20"
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
    SELECT 0 AS nid,  0.718750 AS "P_0", 0.281250 AS "P_1", 0 AS "D", 0.718750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.709677 AS "P_0", 0.290323 AS "P_1", 0 AS "D", 0.709677 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.962963 AS "P_0", 0.037037 AS "P_1", 0 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.514286 AS "P_0", 0.485714 AS "P_1", 0 AS "D", 0.514286 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_10", t1."Leaf_12", t1."Leaf_15", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 201441.000000) AND (t."X_11" <= 0.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_2" > 201441.000000) AND (t."X_11" > 0.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_2" <= 201441.000000) AND (t."X_0" <= 0.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" <= 201441.000000) AND (t."X_0" > 0.500000) AND (t."X_12" <= 1.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" <= 201441.000000) AND (t."X_0" > 0.500000) AND (t."X_12" > 1.500000) AND (t."X_2" > 186109.000000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" <= 201441.000000) AND (t."X_0" > 0.500000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 186109.000000) AND (t."X_0" > 3.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" <= 201441.000000) AND (t."X_0" > 0.500000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 186109.000000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 102486.000000) AND (t."X_0" <= 1.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" <= 201441.000000) AND (t."X_0" > 0.500000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 186109.000000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 102486.000000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 2.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" <= 201441.000000) AND (t."X_0" > 0.500000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 186109.000000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 102486.000000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 86113.000000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" <= 201441.000000) AND (t."X_0" > 0.500000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 186109.000000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 102486.000000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_2" > 86113.000000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" <= 201441.000000) AND (t."X_0" > 0.500000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 186109.000000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 102486.000000) AND (t."X_11" > 1.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" <= 201441.000000) AND (t."X_0" > 0.500000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 186109.000000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 102486.000000) AND (t."X_11" <= 1.000000) AND (t."X_0" > 2.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" <= 201441.000000) AND (t."X_0" > 0.500000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 186109.000000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 102486.000000) AND (t."X_11" <= 1.000000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 152111.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" <= 201441.000000) AND (t."X_0" > 0.500000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 186109.000000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 102486.000000) AND (t."X_11" <= 1.000000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 152111.000000) AND (t."X_0" <= 1.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" <= 201441.000000) AND (t."X_0" > 0.500000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 186109.000000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 102486.000000) AND (t."X_11" <= 1.000000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 152111.000000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 163428.000000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_2" <= 201441.000000) AND (t."X_0" > 0.500000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 186109.000000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 102486.000000) AND (t."X_11" <= 1.000000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 152111.000000) AND (t."X_0" > 1.500000) AND (t."X_2" > 163428.000000)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 0 AS nid,  0.718750 AS "P_0", 0.281250 AS "P_1", 0 AS "D", 0.718750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.622222 AS "P_0", 0.377778 AS "P_1", 0 AS "D", 0.622222 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.564103 AS "P_0", 0.435897 AS "P_1", 0 AS "D", 0.564103 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.653846 AS "P_0", 0.346154 AS "P_1", 0 AS "D", 0.653846 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.680000 AS "P_0", 0.320000 AS "P_1", 0 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.823529 AS "P_0", 0.176471 AS "P_1", 0 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_13", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 72858.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > 72858.500000) AND (t."X_10" > 1.000000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_2" > 72858.500000) AND (t."X_10" <= 1.000000) AND (t."X_2" <= 119208.000000) AND (t."X_12" > 2.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > 72858.500000) AND (t."X_10" <= 1.000000) AND (t."X_2" > 119208.000000) AND (t."X_2" <= 184900.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" > 72858.500000) AND (t."X_10" <= 1.000000) AND (t."X_2" > 119208.000000) AND (t."X_2" > 184900.000000) AND (t."X_2" <= 196604.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" > 72858.500000) AND (t."X_10" <= 1.000000) AND (t."X_2" <= 119208.000000) AND (t."X_12" <= 2.500000) AND (t."X_12" <= 1.000000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" > 72858.500000) AND (t."X_10" <= 1.000000) AND (t."X_2" <= 119208.000000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 1.000000) AND (t."X_2" > 106984.000000) AND (t."X_2" <= 110090.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" > 72858.500000) AND (t."X_10" <= 1.000000) AND (t."X_2" <= 119208.000000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 1.000000) AND (t."X_2" > 106984.000000) AND (t."X_2" > 110090.500000) AND (t."X_4" <= 11.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" > 72858.500000) AND (t."X_10" <= 1.000000) AND (t."X_2" <= 119208.000000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 1.000000) AND (t."X_2" > 106984.000000) AND (t."X_2" > 110090.500000) AND (t."X_4" > 11.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" > 72858.500000) AND (t."X_10" <= 1.000000) AND (t."X_2" <= 119208.000000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 1.000000) AND (t."X_2" <= 106984.000000) AND (t."X_4" <= 11.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" > 72858.500000) AND (t."X_10" <= 1.000000) AND (t."X_2" <= 119208.000000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 1.000000) AND (t."X_2" <= 106984.000000) AND (t."X_4" > 11.500000) AND (t."X_2" <= 96163.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_2" > 72858.500000) AND (t."X_10" <= 1.000000) AND (t."X_2" <= 119208.000000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 1.000000) AND (t."X_2" <= 106984.000000) AND (t."X_4" > 11.500000) AND (t."X_2" > 96163.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" > 72858.500000) AND (t."X_10" <= 1.000000) AND (t."X_2" > 119208.000000) AND (t."X_2" > 184900.000000) AND (t."X_2" > 196604.000000) AND (t."X_12" > 2.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_2" > 72858.500000) AND (t."X_10" <= 1.000000) AND (t."X_2" > 119208.000000) AND (t."X_2" > 184900.000000) AND (t."X_2" > 196604.000000) AND (t."X_12" <= 2.500000) AND (t."X_4" <= 11.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" > 72858.500000) AND (t."X_10" <= 1.000000) AND (t."X_2" > 119208.000000) AND (t."X_2" > 184900.000000) AND (t."X_2" > 196604.000000) AND (t."X_12" <= 2.500000) AND (t."X_4" > 11.500000)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.765625 AS "P_0", 0.234375 AS "P_1", 0 AS "D", 0.765625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.740741 AS "P_0", 0.259259 AS "P_1", 0 AS "D", 0.740741 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.795455 AS "P_0", 0.204545 AS "P_1", 0 AS "D", 0.795455 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.653846 AS "P_0", 0.346154 AS "P_1", 0 AS "D", 0.653846 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.894737 AS "P_0", 0.105263 AS "P_1", 0 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" > 0.500000) AND (t."X_10" <= 1.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_10" > 0.500000) AND (t."X_10" > 1.500000) AND (t."X_0" <= 3.000000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_10" > 0.500000) AND (t."X_10" > 1.500000) AND (t."X_0" > 3.000000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 102941.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 102941.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 175245.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 102941.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 175245.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 340179.000000) AND (t."X_2" <= 726985.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 340179.000000) AND (t."X_2" > 726985.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 340179.000000) AND (t."X_2" > 93458.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 340179.000000) AND (t."X_2" <= 93458.000000) AND (t."X_2" <= 67325.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 340179.000000) AND (t."X_2" <= 93458.000000) AND (t."X_2" > 67325.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 102941.500000) AND (t."X_0" > 2.500000) AND (t."X_0" > 3.500000) AND (t."X_2" <= 127046.000000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 102941.500000) AND (t."X_0" > 2.500000) AND (t."X_0" > 3.500000) AND (t."X_2" > 127046.000000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 102941.500000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 114074.000000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 102941.500000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 114074.000000) AND (t."X_2" <= 175728.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 102941.500000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 114074.000000) AND (t."X_2" > 175728.500000)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.687500 AS "P_0", 0.312500 AS "P_1", 0 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.672414 AS "P_0", 0.327586 AS "P_1", 0 AS "D", 0.672414 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.583333 AS "P_0", 0.416667 AS "P_1", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.764706 AS "P_0", 0.235294 AS "P_1", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" <= 0.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" > 3.500000) AND (t."X_4" <= 11.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" > 3.500000) AND (t."X_4" > 11.500000) AND (t."X_4" <= 13.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" > 3.500000) AND (t."X_4" > 11.500000) AND (t."X_4" > 13.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 11.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 11.500000) AND (t."X_4" <= 9.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 11.500000) AND (t."X_4" > 9.500000) AND (t."X_4" > 10.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 11.500000) AND (t."X_4" > 9.500000) AND (t."X_4" <= 10.500000) AND (t."X_2" <= 119208.000000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 11.500000) AND (t."X_4" > 9.500000) AND (t."X_4" <= 10.500000) AND (t."X_2" > 119208.000000) AND (t."X_2" <= 176454.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 11.500000) AND (t."X_4" > 9.500000) AND (t."X_4" <= 10.500000) AND (t."X_2" > 119208.000000) AND (t."X_2" > 176454.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" > 110621.000000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" <= 110621.000000) AND (t."X_2" <= 67325.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" <= 110621.000000) AND (t."X_2" > 67325.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" > 9.500000) AND (t."X_2" > 313735.000000) AND (t."X_2" <= 726985.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" > 9.500000) AND (t."X_2" > 313735.000000) AND (t."X_2" > 726985.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" > 9.500000) AND (t."X_2" <= 313735.000000) AND (t."X_2" > 140015.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" > 9.500000) AND (t."X_2" <= 313735.000000) AND (t."X_2" <= 140015.500000) AND (t."X_2" <= 119046.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" > 9.500000) AND (t."X_2" <= 313735.000000) AND (t."X_2" <= 140015.500000) AND (t."X_2" > 119046.500000)) THEN 34 ELSE NULL END AS "Leaf_34"
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
    SELECT 0 AS nid,  0.703125 AS "P_0", 0.296875 AS "P_1", 0 AS "D", 0.703125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.654545 AS "P_0", 0.345455 AS "P_1", 0 AS "D", 0.654545 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.627907 AS "P_0", 0.372093 AS "P_1", 0 AS "D", 0.627907 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.650000 AS "P_0", 0.350000 AS "P_1", 0 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.608696 AS "P_0", 0.391304 AS "P_1", 0 AS "D", 0.608696 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.588235 AS "P_0", 0.411765 AS "P_1", 0 AS "D", 0.588235 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.692308 AS "P_0", 0.307692 AS "P_1", 0 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_7", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_11" > 1.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_11" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_11" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 184900.000000) AND (t."X_2" <= 199645.000000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_11" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 184900.000000) AND (t."X_2" > 199645.000000) AND (t."X_0" > 1.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_11" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 184900.000000) AND (t."X_2" > 199645.000000) AND (t."X_0" <= 1.500000) AND (t."X_11" > 0.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_11" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 184900.000000) AND (t."X_2" > 199645.000000) AND (t."X_0" <= 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_12" > 2.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_11" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 184900.000000) AND (t."X_2" > 199645.000000) AND (t."X_0" <= 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" <= 11.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_11" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 184900.000000) AND (t."X_2" > 199645.000000) AND (t."X_0" <= 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" > 11.000000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_11" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 184900.000000) AND (t."X_12" <= 1.500000) AND (t."X_0" <= 3.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_11" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 184900.000000) AND (t."X_12" <= 1.500000) AND (t."X_0" > 3.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_11" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 184900.000000) AND (t."X_12" > 1.500000) AND (t."X_2" > 112379.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_11" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 184900.000000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 112379.000000) AND (t."X_0" > 3.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_11" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 184900.000000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 112379.000000) AND (t."X_0" <= 3.500000) AND (t."X_4" <= 9.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_11" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 184900.000000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 112379.000000) AND (t."X_0" <= 3.500000) AND (t."X_4" > 9.500000) AND (t."X_0" <= 2.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_11" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 184900.000000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 112379.000000) AND (t."X_0" <= 3.500000) AND (t."X_4" > 9.500000) AND (t."X_0" > 2.500000)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 5 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.562500 AS "P_0", 0.437500 AS "P_1", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" > 15.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 15.500000) AND (t."X_4" > 12.500000) AND (t."X_2" > 150858.000000) AND (t."X_2" <= 188434.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 15.500000) AND (t."X_4" > 12.500000) AND (t."X_2" > 150858.000000) AND (t."X_2" > 188434.500000) AND (t."X_2" <= 285099.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 15.500000) AND (t."X_4" > 12.500000) AND (t."X_2" > 150858.000000) AND (t."X_2" > 188434.500000) AND (t."X_2" > 285099.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 15.500000) AND (t."X_4" > 12.500000) AND (t."X_2" <= 150858.000000) AND (t."X_2" <= 96163.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 15.500000) AND (t."X_4" > 12.500000) AND (t."X_2" <= 150858.000000) AND (t."X_2" > 96163.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 15.500000) AND (t."X_4" <= 12.500000) AND (t."X_2" <= 107546.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 15.500000) AND (t."X_4" <= 12.500000) AND (t."X_2" > 107546.500000) AND (t."X_2" <= 264567.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 15.500000) AND (t."X_4" <= 12.500000) AND (t."X_2" > 107546.500000) AND (t."X_2" > 264567.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_4" > 9.500000) AND (t."X_2" > 194101.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_4" > 9.500000) AND (t."X_2" <= 194101.000000) AND (t."X_2" > 181364.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_4" > 9.500000) AND (t."X_2" <= 194101.000000) AND (t."X_2" <= 181364.500000) AND (t."X_2" > 119208.000000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_4" > 9.500000) AND (t."X_2" <= 194101.000000) AND (t."X_2" <= 181364.500000) AND (t."X_2" <= 119208.000000) AND (t."X_2" <= 85538.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_4" > 9.500000) AND (t."X_2" <= 194101.000000) AND (t."X_2" <= 181364.500000) AND (t."X_2" <= 119208.000000) AND (t."X_2" > 85538.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" > 78783.000000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" <= 78783.000000) AND (t."X_2" <= 67325.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" <= 78783.000000) AND (t."X_2" > 67325.500000)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.734375 AS "P_0", 0.265625 AS "P_1", 0 AS "D", 0.734375 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.904762 AS "P_0", 0.095238 AS "P_1", 0 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.409091 AS "P_0", 0.590909 AS "P_1", 1 AS "D", 0.590909 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.380952 AS "P_0", 0.619048 AS "P_1", 1 AS "D", 0.619048 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.437500 AS "P_0", 0.562500 AS "P_1", 1 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.965517 AS "P_0", 0.034483 AS "P_1", 0 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_15", t1."Leaf_17", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" > 3.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_12" > 3.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_12" <= 3.500000) AND (t."X_11" > 1.000000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_12" <= 3.500000) AND (t."X_11" <= 1.000000) AND (t."X_2" <= 121842.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_12" <= 3.500000) AND (t."X_11" <= 1.000000) AND (t."X_2" > 121842.000000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" > 0.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_2" <= 136002.000000) AND (t."X_2" <= 91665.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_2" <= 136002.000000) AND (t."X_2" > 91665.500000) AND (t."X_2" <= 98443.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_2" <= 136002.000000) AND (t."X_2" > 91665.500000) AND (t."X_2" > 98443.500000) AND (t."X_2" > 128273.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_2" <= 136002.000000) AND (t."X_2" > 91665.500000) AND (t."X_2" > 98443.500000) AND (t."X_2" <= 128273.500000) AND (t."X_2" > 112379.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_2" <= 136002.000000) AND (t."X_2" > 91665.500000) AND (t."X_2" > 98443.500000) AND (t."X_2" <= 128273.500000) AND (t."X_2" <= 112379.000000) AND (t."X_2" <= 103504.000000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_2" <= 136002.000000) AND (t."X_2" > 91665.500000) AND (t."X_2" > 98443.500000) AND (t."X_2" <= 128273.500000) AND (t."X_2" <= 112379.000000) AND (t."X_2" > 103504.000000) AND (t."X_2" <= 107546.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_2" <= 136002.000000) AND (t."X_2" > 91665.500000) AND (t."X_2" > 98443.500000) AND (t."X_2" <= 128273.500000) AND (t."X_2" <= 112379.000000) AND (t."X_2" > 103504.000000) AND (t."X_2" > 107546.500000) AND (t."X_2" <= 110090.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_2" <= 136002.000000) AND (t."X_2" > 91665.500000) AND (t."X_2" > 98443.500000) AND (t."X_2" <= 128273.500000) AND (t."X_2" <= 112379.000000) AND (t."X_2" > 103504.000000) AND (t."X_2" > 107546.500000) AND (t."X_2" > 110090.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_2" > 136002.000000) AND (t."X_2" <= 190244.000000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_2" > 136002.000000) AND (t."X_2" > 190244.000000) AND (t."X_2" <= 207536.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_2" > 136002.000000) AND (t."X_2" > 190244.000000) AND (t."X_2" > 207536.500000)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 5 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.890909 AS "P_0", 0.109091 AS "P_1", 0 AS "D", 0.890909 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.948718 AS "P_0", 0.051282 AS "P_1", 0 AS "D", 0.948718 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" > 3.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_2" > 201441.000000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_2" <= 201441.000000) AND (t."X_12" > 2.500000) AND (t."X_2" > 154502.000000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_2" <= 201441.000000) AND (t."X_12" <= 2.500000) AND (t."X_2" > 184900.000000) AND (t."X_4" <= 14.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_2" <= 201441.000000) AND (t."X_12" <= 2.500000) AND (t."X_2" > 184900.000000) AND (t."X_4" > 14.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_2" <= 201441.000000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 154502.000000) AND (t."X_4" <= 9.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_2" <= 201441.000000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 154502.000000) AND (t."X_4" > 9.500000) AND (t."X_2" <= 119208.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_2" <= 201441.000000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 154502.000000) AND (t."X_4" > 9.500000) AND (t."X_2" > 119208.000000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_2" <= 201441.000000) AND (t."X_12" <= 2.500000) AND (t."X_2" <= 184900.000000) AND (t."X_2" > 162702.000000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_2" <= 201441.000000) AND (t."X_12" <= 2.500000) AND (t."X_2" <= 184900.000000) AND (t."X_2" <= 162702.000000) AND (t."X_4" <= 9.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_2" <= 201441.000000) AND (t."X_12" <= 2.500000) AND (t."X_2" <= 184900.000000) AND (t."X_2" <= 162702.000000) AND (t."X_4" > 9.500000) AND (t."X_2" <= 65446.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_2" <= 201441.000000) AND (t."X_12" <= 2.500000) AND (t."X_2" <= 184900.000000) AND (t."X_2" <= 162702.000000) AND (t."X_4" > 9.500000) AND (t."X_2" > 65446.500000) AND (t."X_4" > 12.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_2" <= 201441.000000) AND (t."X_12" <= 2.500000) AND (t."X_2" <= 184900.000000) AND (t."X_2" <= 162702.000000) AND (t."X_4" > 9.500000) AND (t."X_2" > 65446.500000) AND (t."X_4" <= 12.500000) AND (t."X_2" <= 107546.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_2" <= 201441.000000) AND (t."X_12" <= 2.500000) AND (t."X_2" <= 184900.000000) AND (t."X_2" <= 162702.000000) AND (t."X_4" > 9.500000) AND (t."X_2" > 65446.500000) AND (t."X_4" <= 12.500000) AND (t."X_2" > 107546.500000)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.718750 AS "P_0", 0.281250 AS "P_1", 0 AS "D", 0.718750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.685714 AS "P_0", 0.314286 AS "P_1", 0 AS "D", 0.685714 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.461538 AS "P_0", 0.538462 AS "P_1", 1 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.793103 AS "P_0", 0.206897 AS "P_1", 0 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.684211 AS "P_0", 0.315789 AS "P_1", 0 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_12" > 2.500000) AND (t."X_11" > 1.000000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_12" > 2.500000) AND (t."X_11" <= 1.000000) AND (t."X_2" <= 121938.000000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_12" > 2.500000) AND (t."X_11" <= 1.000000) AND (t."X_2" > 121938.000000) AND (t."X_0" <= 2.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_12" > 2.500000) AND (t."X_11" <= 1.000000) AND (t."X_2" > 121938.000000) AND (t."X_0" > 2.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" > 15.500000) AND (t."X_2" <= 105475.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" > 15.500000) AND (t."X_2" > 105475.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" <= 96163.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" > 96163.500000) AND (t."X_4" > 13.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" > 96163.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" <= 107546.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" > 96163.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" > 107546.500000) AND (t."X_12" <= 1.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" > 96163.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" > 107546.500000) AND (t."X_12" > 1.500000) AND (t."X_0" <= 0.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" > 96163.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" > 107546.500000) AND (t."X_12" > 1.500000) AND (t."X_0" > 0.500000) AND (t."X_4" > 12.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" > 96163.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" > 107546.500000) AND (t."X_12" > 1.500000) AND (t."X_0" > 0.500000) AND (t."X_4" <= 12.500000) AND (t."X_2" <= 264567.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" > 96163.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" > 107546.500000) AND (t."X_12" > 1.500000) AND (t."X_0" > 0.500000) AND (t."X_4" <= 12.500000) AND (t."X_2" > 264567.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_12" <= 2.500000) AND (t."X_0" <= 2.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_12" <= 2.500000) AND (t."X_0" > 2.500000) AND (t."X_4" <= 9.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_12" <= 2.500000) AND (t."X_0" > 2.500000) AND (t."X_4" > 9.500000) AND (t."X_0" <= 3.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_12" <= 2.500000) AND (t."X_0" > 2.500000) AND (t."X_4" > 9.500000) AND (t."X_0" > 3.500000)) THEN 34 ELSE NULL END AS "Leaf_34"
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
    SELECT 0 AS nid,  0.671875 AS "P_0", 0.328125 AS "P_1", 0 AS "D", 0.671875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.809524 AS "P_0", 0.190476 AS "P_1", 0 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.409091 AS "P_0", 0.590909 AS "P_1", 1 AS "D", 0.590909 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.969697 AS "P_0", 0.030303 AS "P_1", 0 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 119208.000000) AND (t."X_4" > 11.000000) AND (t."X_2" <= 96163.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" <= 119208.000000) AND (t."X_4" > 11.000000) AND (t."X_2" > 96163.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" > 119208.000000) AND (t."X_2" > 194794.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > 119208.000000) AND (t."X_2" <= 194794.500000) AND (t."X_4" > 13.500000) AND (t."X_12" <= 2.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" > 119208.000000) AND (t."X_2" <= 194794.500000) AND (t."X_4" > 13.500000) AND (t."X_12" > 2.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > 119208.000000) AND (t."X_2" <= 194794.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" <= 186109.000000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" > 119208.000000) AND (t."X_2" <= 194794.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" > 186109.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" <= 119208.000000) AND (t."X_4" <= 11.000000) AND (t."X_4" <= 9.500000) AND (t."X_2" <= 72858.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" <= 119208.000000) AND (t."X_4" <= 11.000000) AND (t."X_4" <= 9.500000) AND (t."X_2" > 72858.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" <= 119208.000000) AND (t."X_4" <= 11.000000) AND (t."X_4" > 9.500000) AND (t."X_12" > 2.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" <= 119208.000000) AND (t."X_4" <= 11.000000) AND (t."X_4" > 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_2" <= 76494.000000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" <= 119208.000000) AND (t."X_4" <= 11.000000) AND (t."X_4" > 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_2" > 76494.000000) AND (t."X_0" <= 2.000000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_2" <= 119208.000000) AND (t."X_4" <= 11.000000) AND (t."X_4" > 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_2" > 76494.000000) AND (t."X_0" > 2.000000)) THEN 24 ELSE NULL END AS "Leaf_24"
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
    SELECT 0 AS nid,  0.828125 AS "P_0", 0.171875 AS "P_1", 0 AS "D", 0.828125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.550000 AS "P_0", 0.450000 AS "P_1", 0 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.954545 AS "P_0", 0.045455 AS "P_1", 0 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.583333 AS "P_0", 0.416667 AS "P_1", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" <= 0.500000) AND (t."X_4" <= 10.000000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_12" <= 0.500000) AND (t."X_4" > 10.000000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_2" > 196604.000000) AND (t."X_2" <= 416176.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_2" > 196604.000000) AND (t."X_2" > 416176.500000) AND (t."X_4" <= 11.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_2" > 196604.000000) AND (t."X_2" > 416176.500000) AND (t."X_4" > 11.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_2" <= 196604.000000) AND (t."X_10" > 0.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_2" <= 196604.000000) AND (t."X_10" <= 0.500000) AND (t."X_2" > 182457.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_2" <= 196604.000000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 182457.000000) AND (t."X_11" > 1.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_2" <= 196604.000000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 182457.000000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 78783.000000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_2" <= 196604.000000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 182457.000000) AND (t."X_11" <= 1.500000) AND (t."X_2" <= 78783.000000) AND (t."X_11" > 0.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_2" <= 196604.000000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 182457.000000) AND (t."X_11" <= 1.500000) AND (t."X_2" <= 78783.000000) AND (t."X_11" <= 0.500000) AND (t."X_2" <= 77085.000000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_2" <= 196604.000000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 182457.000000) AND (t."X_11" <= 1.500000) AND (t."X_2" <= 78783.000000) AND (t."X_11" <= 0.500000) AND (t."X_2" > 77085.000000)) THEN 22 ELSE NULL END AS "Leaf_22"
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
    SELECT 0 AS nid,  0.843750 AS "P_0", 0.156250 AS "P_1", 0 AS "D", 0.843750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.852459 AS "P_0", 0.147541 AS "P_1", 0 AS "D", 0.852459 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.789474 AS "P_0", 0.210526 AS "P_1", 0 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.965517 AS "P_0", 0.034483 AS "P_1", 0 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 183428.500000) AND (t."X_2" <= 201441.000000) AND (t."X_0" <= 3.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" > 183428.500000) AND (t."X_2" <= 201441.000000) AND (t."X_0" > 3.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" > 183428.500000) AND (t."X_2" > 201441.000000) AND (t."X_2" > 388499.500000) AND (t."X_2" <= 470754.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" > 183428.500000) AND (t."X_2" > 201441.000000) AND (t."X_2" > 388499.500000) AND (t."X_2" > 470754.000000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" <= 183428.500000) AND (t."X_0" <= 0.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" <= 183428.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 95746.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" <= 183428.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 95746.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" <= 183428.500000) AND (t."X_0" > 0.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 2.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" <= 183428.500000) AND (t."X_0" > 0.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_2" > 114074.000000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" <= 183428.500000) AND (t."X_0" > 0.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 114074.000000) AND (t."X_0" <= 3.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" <= 183428.500000) AND (t."X_0" > 0.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 114074.000000) AND (t."X_0" > 3.500000) AND (t."X_2" <= 102941.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_2" <= 183428.500000) AND (t."X_0" > 0.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 114074.000000) AND (t."X_0" > 3.500000) AND (t."X_2" > 102941.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" > 183428.500000) AND (t."X_2" > 201441.000000) AND (t."X_2" <= 388499.500000) AND (t."X_0" <= 0.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" > 183428.500000) AND (t."X_2" > 201441.000000) AND (t."X_2" <= 388499.500000) AND (t."X_0" > 0.500000) AND (t."X_0" > 1.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_2" > 183428.500000) AND (t."X_2" > 201441.000000) AND (t."X_2" <= 388499.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 244632.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" > 183428.500000) AND (t."X_2" > 201441.000000) AND (t."X_2" <= 388499.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 244632.500000) AND (t."X_11" <= 0.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" > 183428.500000) AND (t."X_2" > 201441.000000) AND (t."X_2" <= 388499.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 244632.500000) AND (t."X_11" > 0.500000)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.671875 AS "P_0", 0.328125 AS "P_1", 0 AS "D", 0.671875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.517241 AS "P_0", 0.482759 AS "P_1", 0 AS "D", 0.517241 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.736842 AS "P_0", 0.263158 AS "P_1", 0 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.730769 AS "P_0", 0.269231 AS "P_1", 0 AS "D", 0.730769 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.823529 AS "P_0", 0.176471 AS "P_1", 0 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 1.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 3.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 3.500000) AND (t."X_11" > 1.000000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 3.500000) AND (t."X_11" <= 1.000000) AND (t."X_4" <= 9.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 3.500000) AND (t."X_11" <= 1.000000) AND (t."X_4" > 9.500000) AND (t."X_4" > 12.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 3.500000) AND (t."X_11" <= 1.000000) AND (t."X_4" > 9.500000) AND (t."X_4" <= 12.000000) AND (t."X_2" <= 154502.000000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 3.500000) AND (t."X_11" <= 1.000000) AND (t."X_4" > 9.500000) AND (t."X_4" <= 12.000000) AND (t."X_2" > 154502.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_2" > 136002.000000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_2" <= 136002.000000) AND (t."X_2" <= 69244.000000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_2" <= 136002.000000) AND (t."X_2" > 69244.000000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_12" > 1.500000) AND (t."X_11" > 0.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_12" > 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_4" > 12.500000) AND (t."X_2" <= 166759.500000) AND (t."X_2" <= 68800.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_12" > 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_4" > 12.500000) AND (t."X_2" <= 166759.500000) AND (t."X_2" > 68800.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_12" > 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_4" > 12.500000) AND (t."X_2" > 166759.500000) AND (t."X_4" <= 15.000000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_12" > 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_4" > 12.500000) AND (t."X_2" > 166759.500000) AND (t."X_4" > 15.000000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_12" > 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_4" <= 12.500000) AND (t."X_0" <= 2.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_12" > 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_4" <= 12.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 120335.000000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_12" > 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_4" <= 12.500000) AND (t."X_0" > 2.500000) AND (t."X_2" > 120335.000000)) THEN 34 ELSE NULL END AS "Leaf_34"
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
    SELECT 0 AS nid,  0.796875 AS "P_0", 0.203125 AS "P_1", 0 AS "D", 0.796875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.840000 AS "P_0", 0.160000 AS "P_1", 0 AS "D", 0.840000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.878049 AS "P_0", 0.121951 AS "P_1", 0 AS "D", 0.878049 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.964286 AS "P_0", 0.035714 AS "P_1", 0 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_11" > 0.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_10" > 2.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_10" <= 2.500000) AND (t."X_2" > 416176.500000) AND (t."X_2" <= 421191.000000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_10" <= 2.500000) AND (t."X_2" > 416176.500000) AND (t."X_2" > 421191.000000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_10" <= 2.500000) AND (t."X_2" <= 416176.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 178488.000000) AND (t."X_2" <= 207536.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_10" <= 2.500000) AND (t."X_2" <= 416176.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 178488.000000) AND (t."X_2" > 207536.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_10" <= 2.500000) AND (t."X_2" <= 416176.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 178488.000000) AND (t."X_0" <= 2.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_10" <= 2.500000) AND (t."X_2" <= 416176.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 178488.000000) AND (t."X_0" > 2.500000) AND (t."X_0" > 3.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_10" <= 2.500000) AND (t."X_2" <= 416176.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 178488.000000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 109013.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_10" <= 2.500000) AND (t."X_2" <= 416176.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 178488.000000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 109013.500000) AND (t."X_12" <= 2.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_10" <= 2.500000) AND (t."X_2" <= 416176.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 178488.000000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 109013.500000) AND (t."X_12" > 2.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_10" <= 2.500000) AND (t."X_2" <= 416176.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_10" <= 2.500000) AND (t."X_2" <= 416176.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 95746.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_10" <= 2.500000) AND (t."X_2" <= 416176.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 95746.500000) AND (t."X_12" <= 3.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_10" <= 2.500000) AND (t."X_2" <= 416176.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 95746.500000) AND (t."X_12" > 3.500000)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.781250 AS "P_0", 0.218750 AS "P_1", 0 AS "D", 0.781250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.877193 AS "P_0", 0.122807 AS "P_1", 0 AS "D", 0.877193 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.892857 AS "P_0", 0.107143 AS "P_1", 0 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.905660 AS "P_0", 0.094340 AS "P_1", 0 AS "D", 0.905660 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.958333 AS "P_0", 0.041667 AS "P_1", 0 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.862069 AS "P_0", 0.137931 AS "P_1", 0 AS "D", 0.862069 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    SELECT 24 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" <= 0.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" > 3.000000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 219984.500000) AND (t."X_4" <= 12.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 219984.500000) AND (t."X_4" > 12.000000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 219984.500000) AND (t."X_2" > 95746.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 219984.500000) AND (t."X_2" <= 95746.500000) AND (t."X_2" <= 67325.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 219984.500000) AND (t."X_2" <= 95746.500000) AND (t."X_2" > 67325.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" > 1.500000) AND (t."X_0" > 3.500000) AND (t."X_2" <= 68681.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" > 1.500000) AND (t."X_0" > 3.500000) AND (t."X_2" > 68681.500000) AND (t."X_4" <= 11.000000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" > 1.500000) AND (t."X_0" > 3.500000) AND (t."X_2" > 68681.500000) AND (t."X_4" > 11.000000) AND (t."X_10" <= 1.000000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" > 1.500000) AND (t."X_0" > 3.500000) AND (t."X_2" > 68681.500000) AND (t."X_4" > 11.000000) AND (t."X_10" > 1.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_2" > 175728.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 175728.500000) AND (t."X_4" <= 11.000000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 175728.500000) AND (t."X_4" > 11.000000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_4" > 15.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" > 274409.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" <= 274409.500000) AND (t."X_4" > 12.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" <= 274409.500000) AND (t."X_4" <= 12.500000) AND (t."X_2" <= 85538.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_4" <= 15.500000) AND (t."X_2" <= 274409.500000) AND (t."X_4" <= 12.500000) AND (t."X_2" > 85538.500000)) THEN 36 ELSE NULL END AS "Leaf_36"
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
    SELECT 0 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.739130 AS "P_0", 0.260870 AS "P_1", 0 AS "D", 0.739130 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.755556 AS "P_0", 0.244444 AS "P_1", 0 AS "D", 0.755556 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    SELECT 15 AS nid,  0.647059 AS "P_0", 0.352941 AS "P_1", 0 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" <= 0.500000) AND (t."X_4" <= 10.000000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_12" <= 0.500000) AND (t."X_4" > 10.000000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_10" > 1.500000) AND (t."X_4" <= 13.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_10" > 1.500000) AND (t."X_4" > 13.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" > 13.500000) AND (t."X_4" <= 15.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" > 13.500000) AND (t."X_4" > 15.000000) AND (t."X_2" <= 105475.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" > 13.500000) AND (t."X_4" > 15.000000) AND (t."X_2" > 105475.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" <= 13.500000) AND (t."X_4" <= 9.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" <= 13.500000) AND (t."X_4" > 9.500000) AND (t."X_0" > 2.500000) AND (t."X_0" > 3.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" <= 13.500000) AND (t."X_4" > 9.500000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 157201.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" <= 13.500000) AND (t."X_4" > 9.500000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 157201.500000) AND (t."X_2" <= 109013.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" <= 13.500000) AND (t."X_4" > 9.500000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 157201.500000) AND (t."X_2" > 109013.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" <= 13.500000) AND (t."X_4" > 9.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 380646.000000) AND (t."X_0" <= 1.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" <= 13.500000) AND (t."X_4" > 9.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 380646.000000) AND (t."X_0" > 1.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" <= 13.500000) AND (t."X_4" > 9.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 380646.000000) AND (t."X_2" > 133649.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" <= 13.500000) AND (t."X_4" > 9.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 380646.000000) AND (t."X_2" <= 133649.500000) AND (t."X_2" <= 114969.000000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_12" > 0.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" <= 13.500000) AND (t."X_4" > 9.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 380646.000000) AND (t."X_2" <= 133649.500000) AND (t."X_2" > 114969.000000)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.765625 AS "P_0", 0.234375 AS "P_1", 0 AS "D", 0.765625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.789474 AS "P_0", 0.210526 AS "P_1", 0 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.843137 AS "P_0", 0.156863 AS "P_1", 0 AS "D", 0.843137 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.789474 AS "P_0", 0.210526 AS "P_1", 0 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.931035 AS "P_0", 0.068966 AS "P_1", 0 AS "D", 0.931035 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.961538 AS "P_0", 0.038462 AS "P_1", 0 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 13.500000) AND (t."X_0" > 1.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" > 13.500000) AND (t."X_4" <= 15.000000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" > 13.500000) AND (t."X_4" > 15.000000) AND (t."X_2" <= 105475.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" > 13.500000) AND (t."X_4" > 15.000000) AND (t."X_2" > 105475.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 13.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 13.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" <= 1.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_4" > 11.500000) AND (t."X_4" <= 13.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 1.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_0" > 3.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_0" <= 3.500000) AND (t."X_4" > 10.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_0" <= 3.500000) AND (t."X_4" <= 10.500000) AND (t."X_12" > 3.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_0" <= 3.500000) AND (t."X_4" <= 10.500000) AND (t."X_12" <= 3.500000) AND (t."X_4" <= 9.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_0" <= 3.500000) AND (t."X_4" <= 10.500000) AND (t."X_12" <= 3.500000) AND (t."X_4" > 9.500000) AND (t."X_12" <= 1.000000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_0" <= 3.500000) AND (t."X_4" <= 10.500000) AND (t."X_12" <= 3.500000) AND (t."X_4" > 9.500000) AND (t."X_12" > 1.000000) AND (t."X_2" > 104774.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_0" <= 3.500000) AND (t."X_4" <= 10.500000) AND (t."X_12" <= 3.500000) AND (t."X_4" > 9.500000) AND (t."X_12" > 1.000000) AND (t."X_2" <= 104774.500000) AND (t."X_0" <= 1.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_4" <= 11.500000) AND (t."X_0" <= 3.500000) AND (t."X_4" <= 10.500000) AND (t."X_12" <= 3.500000) AND (t."X_4" > 9.500000) AND (t."X_12" > 1.000000) AND (t."X_2" <= 104774.500000) AND (t."X_0" > 1.500000)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.703125 AS "P_0", 0.296875 AS "P_1", 0 AS "D", 0.703125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.291667 AS "P_0", 0.708333 AS "P_1", 1 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.352941 AS "P_0", 0.647059 AS "P_1", 1 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.894737 AS "P_0", 0.105263 AS "P_1", 0 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_7", t1."Leaf_10", t1."Leaf_11", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" <= 0.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" > 3.000000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_2" > 188434.500000) AND (t."X_2" <= 196604.000000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_2" > 188434.500000) AND (t."X_2" > 196604.000000) AND (t."X_0" > 1.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_2" > 188434.500000) AND (t."X_2" > 196604.000000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 219984.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_2" > 188434.500000) AND (t."X_2" > 196604.000000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 219984.500000) AND (t."X_12" > 2.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_2" > 188434.500000) AND (t."X_2" > 196604.000000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 219984.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" <= 12.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_2" > 188434.500000) AND (t."X_2" > 196604.000000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 219984.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" > 12.000000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_2" <= 188434.500000) AND (t."X_10" > 1.000000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_2" <= 188434.500000) AND (t."X_10" <= 1.000000) AND (t."X_12" <= 1.000000) AND (t."X_4" <= 9.000000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_2" <= 188434.500000) AND (t."X_10" <= 1.000000) AND (t."X_12" <= 1.000000) AND (t."X_4" > 9.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_2" <= 188434.500000) AND (t."X_10" <= 1.000000) AND (t."X_12" > 1.000000) AND (t."X_12" > 2.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_2" <= 188434.500000) AND (t."X_10" <= 1.000000) AND (t."X_12" > 1.000000) AND (t."X_12" <= 2.500000) AND (t."X_4" <= 12.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_2" <= 188434.500000) AND (t."X_10" <= 1.000000) AND (t."X_12" > 1.000000) AND (t."X_12" <= 2.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 3.000000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_10" <= 3.000000) AND (t."X_2" <= 188434.500000) AND (t."X_10" <= 1.000000) AND (t."X_12" > 1.000000) AND (t."X_12" <= 2.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 3.000000)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.760000 AS "P_0", 0.240000 AS "P_1", 0 AS "D", 0.760000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.791667 AS "P_0", 0.208333 AS "P_1", 0 AS "D", 0.791667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.866667 AS "P_0", 0.133333 AS "P_1", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.851852 AS "P_0", 0.148148 AS "P_1", 0 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.880000 AS "P_0", 0.120000 AS "P_1", 0 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.863636 AS "P_0", 0.136364 AS "P_1", 0 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 416176.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" <= 0.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 178577.000000) AND (t."X_2" <= 207536.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 178577.000000) AND (t."X_2" > 207536.500000) AND (t."X_0" > 1.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 178577.000000) AND (t."X_2" > 207536.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" <= 2.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 178577.000000) AND (t."X_2" > 207536.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" > 2.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_0" > 2.500000) AND (t."X_2" > 116618.000000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 116618.000000) AND (t."X_12" <= 1.000000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 116618.000000) AND (t."X_12" > 1.000000) AND (t."X_0" > 3.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 116618.000000) AND (t."X_12" > 1.000000) AND (t."X_0" <= 3.500000) AND (t."X_4" <= 9.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 116618.000000) AND (t."X_12" > 1.000000) AND (t."X_0" <= 3.500000) AND (t."X_4" > 9.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 178577.000000) AND (t."X_12" > 3.500000) AND (t."X_4" <= 9.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 178577.000000) AND (t."X_12" > 3.500000) AND (t."X_4" > 9.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 178577.000000) AND (t."X_12" <= 3.500000) AND (t."X_0" <= 1.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 178577.000000) AND (t."X_12" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 11.000000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 178577.000000) AND (t."X_12" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 11.000000) AND (t."X_4" <= 14.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" <= 416176.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 178577.000000) AND (t."X_12" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 11.000000) AND (t."X_4" > 14.500000)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.733333 AS "P_0", 0.266667 AS "P_1", 0 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.894737 AS "P_0", 0.105263 AS "P_1", 0 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_15", t1."Leaf_17", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" <= 1.500000) AND (t."X_10" > 2.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_0" > 3.500000) AND (t."X_10" > 1.000000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_0" > 3.500000) AND (t."X_10" <= 1.000000) AND (t."X_4" <= 11.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_0" > 3.500000) AND (t."X_10" <= 1.000000) AND (t."X_4" > 11.000000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_4" <= 9.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_4" > 9.500000) AND (t."X_2" <= 109013.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 98005.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 98005.500000) AND (t."X_2" <= 163428.000000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 98005.500000) AND (t."X_2" > 163428.000000) AND (t."X_4" <= 12.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 98005.500000) AND (t."X_2" > 163428.000000) AND (t."X_4" > 12.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_4" > 9.500000) AND (t."X_2" > 109013.500000) AND (t."X_12" <= 2.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_4" > 9.500000) AND (t."X_2" > 109013.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 154502.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 2.500000) AND (t."X_4" > 9.500000) AND (t."X_2" > 109013.500000) AND (t."X_12" > 2.500000) AND (t."X_2" > 154502.000000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_0" <= 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_10" > 0.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_0" <= 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_10" <= 0.500000) AND (t."X_4" <= 11.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_0" <= 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_10" <= 0.500000) AND (t."X_4" > 11.500000) AND (t."X_2" <= 302702.000000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_0" <= 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_10" <= 0.500000) AND (t."X_4" > 11.500000) AND (t."X_2" > 302702.000000)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.892857 AS "P_0", 0.107143 AS "P_1", 0 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.638889 AS "P_0", 0.361111 AS "P_1", 0 AS "D", 0.638889 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.961538 AS "P_0", 0.038462 AS "P_1", 0 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.960000 AS "P_0", 0.040000 AS "P_1", 0 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_10", t1."Leaf_11", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" > 0.500000) AND (t."X_12" <= 1.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" > 0.500000) AND (t."X_12" > 1.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" <= 0.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_0" > 3.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_12" <= 1.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_12" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 352499.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_12" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 352499.500000) AND (t."X_2" <= 726985.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_12" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 352499.500000) AND (t."X_2" > 726985.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_12" > 3.500000) AND (t."X_2" <= 121938.000000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_12" > 3.500000) AND (t."X_2" > 121938.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_12" <= 3.500000) AND (t."X_0" <= 1.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_12" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 2.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_12" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 131601.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_12" <= 3.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_2" > 131601.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_12" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 111713.000000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_12" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_2" > 111713.000000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_12" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 2.500000) AND (t."X_10" > 1.000000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_12" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 2.500000) AND (t."X_10" <= 1.000000) AND (t."X_4" <= 13.000000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_12" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 2.500000) AND (t."X_10" <= 1.000000) AND (t."X_4" > 13.000000) AND (t."X_2" <= 109187.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_12" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 2.500000) AND (t."X_10" <= 1.000000) AND (t."X_4" > 13.000000) AND (t."X_2" > 109187.500000)) THEN 38 ELSE NULL END AS "Leaf_38"
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
    SELECT 0 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.830189 AS "P_0", 0.169811 AS "P_1", 0 AS "D", 0.830189 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.877551 AS "P_0", 0.122449 AS "P_1", 0 AS "D", 0.877551 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.842105 AS "P_0", 0.157895 AS "P_1", 0 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.823529 AS "P_0", 0.176471 AS "P_1", 0 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.842105 AS "P_0", 0.157895 AS "P_1", 0 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_6", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_11" > 0.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_4" > 12.500000) AND (t."X_2" > 184900.000000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_4" > 12.500000) AND (t."X_2" <= 184900.000000) AND (t."X_0" > 3.000000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_4" > 12.500000) AND (t."X_2" <= 184900.000000) AND (t."X_0" <= 3.000000) AND (t."X_2" > 166759.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_4" > 12.500000) AND (t."X_2" <= 184900.000000) AND (t."X_0" <= 3.000000) AND (t."X_2" <= 166759.500000) AND (t."X_10" <= 1.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_4" > 12.500000) AND (t."X_2" <= 184900.000000) AND (t."X_0" <= 3.000000) AND (t."X_2" <= 166759.500000) AND (t."X_10" > 1.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_4" <= 12.500000) AND (t."X_12" <= 1.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_4" <= 12.500000) AND (t."X_12" > 1.500000) AND (t."X_12" > 2.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_4" <= 12.500000) AND (t."X_12" > 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_10" > 0.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_4" <= 12.500000) AND (t."X_12" > 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_10" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_4" <= 12.500000) AND (t."X_12" > 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_10" <= 0.500000) AND (t."X_0" > 2.500000) AND (t."X_0" > 3.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_4" <= 12.500000) AND (t."X_12" > 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_10" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" <= 388499.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_4" <= 12.500000) AND (t."X_12" > 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_10" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 388499.500000) AND (t."X_2" <= 421191.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_11" <= 0.500000) AND (t."X_4" <= 12.500000) AND (t."X_12" > 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_10" <= 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 388499.500000) AND (t."X_2" > 421191.000000)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.838710 AS "P_0", 0.161290 AS "P_1", 0 AS "D", 0.838710 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.920000 AS "P_0", 0.080000 AS "P_1", 0 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.885714 AS "P_0", 0.114286 AS "P_1", 0 AS "D", 0.885714 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.862069 AS "P_0", 0.137931 AS "P_1", 0 AS "D", 0.862069 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
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