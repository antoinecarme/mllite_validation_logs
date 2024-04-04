WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_2", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24" ) AS node_id
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
      CASE WHEN((t."X_12" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_2" > 184900.000000) AND (t."X_0" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_2" > 215147.500000)) THEN 24 ELSE NULL END AS "Leaf_24"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16" ) AS node_id
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
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 239512.000000) AND (t."X_2" > 77085.000000) AND (t."X_2" > 119208.000000) AND (t."X_2" > 185331.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 239512.000000) AND (t."X_2" > 77085.000000) AND (t."X_2" <= 119208.000000) AND (t."X_2" <= 91665.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 239512.000000) AND (t."X_2" > 77085.000000) AND (t."X_2" <= 119208.000000) AND (t."X_2" > 91665.500000)) THEN 16 ELSE NULL END AS "Leaf_16"
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
    SELECT 15 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_6", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" > 0.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" <= 0.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" > 1.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 180554.500000) AND (t."X_2" <= 196604.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 180554.500000) AND (t."X_2" > 196604.000000) AND (t."X_11" <= 0.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" > 180554.500000) AND (t."X_2" > 196604.000000) AND (t."X_11" > 0.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" <= 180554.500000) AND (t."X_11" > 0.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" <= 180554.500000) AND (t."X_11" <= 0.500000) AND (t."X_2" <= 112379.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_10" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_2" <= 180554.500000) AND (t."X_11" <= 0.500000) AND (t."X_2" > 112379.000000)) THEN 16 ELSE NULL END AS "Leaf_16"
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
    SELECT 13 AS nid,  0.892857 AS "P_0", 0.107143 AS "P_1", 0 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_20", t1."Leaf_21", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32" ) AS node_id
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
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" > 1.500000) AND (t."X_4" > 11.500000) AND (t."X_4" <= 14.500000) AND (t."X_0" <= 2.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" > 1.500000) AND (t."X_4" > 11.500000) AND (t."X_4" <= 14.500000) AND (t."X_0" > 2.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" > 1.500000) AND (t."X_4" <= 11.500000) AND (t."X_0" <= 2.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" > 1.500000) AND (t."X_4" <= 11.500000) AND (t."X_0" > 2.500000) AND (t."X_4" <= 9.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 91665.500000) AND (t."X_12" > 1.500000) AND (t."X_4" <= 11.500000) AND (t."X_0" > 2.500000) AND (t."X_4" > 9.500000)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" <= 9.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" > 13.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" > 162702.000000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" <= 162702.000000) AND (t."X_4" <= 12.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" <= 13.500000) AND (t."X_2" <= 162702.000000) AND (t."X_4" > 12.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_0" <= 1.500000) AND (t."X_10" > 2.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" > 2.500000) AND (t."X_4" > 12.000000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" > 2.500000) AND (t."X_4" <= 12.000000) AND (t."X_12" <= 3.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" > 2.500000) AND (t."X_4" <= 12.000000) AND (t."X_12" > 3.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_0" <= 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_2" <= 222520.000000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_0" <= 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_2" > 222520.000000) AND (t."X_2" <= 244632.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_0" <= 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_2" > 222520.000000) AND (t."X_2" > 244632.500000)) THEN 22 ELSE NULL END AS "Leaf_22"
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
    SELECT 13 AS nid,  0.966667 AS "P_0", 0.033333 AS "P_1", 0 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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