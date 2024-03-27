WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 2.450000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_2" > 2.450000) AND (t."X_3" > 1.750000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_2" > 2.450000) AND (t."X_3" <= 1.750000) AND (t."X_2" > 4.950000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_2" > 2.450000) AND (t."X_3" <= 1.750000) AND (t."X_2" <= 4.950000) AND (t."X_0" <= 5.050000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_2" > 2.450000) AND (t."X_3" <= 1.750000) AND (t."X_2" <= 4.950000) AND (t."X_0" > 5.050000)) THEN 8 ELSE NULL END AS Leaf_8
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.353333 AS "P_0", 0.360000 AS "P_1", 0.286667 AS "P_2", 1 AS "D", 0.360000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.556701 AS "P_1", 0.443299 AS "P_2", 1 AS "D", 0.556701 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.964286 AS "P_1", 0.035714 AS "P_2", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.981132 AS "P_1", 0.018868 AS "P_2", 1 AS "D", 0.981132 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.250000 AS "P_2", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 0.800000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_3" > 0.800000) AND (t."X_3" <= 1.650000) AND (t."X_3" <= 1.450000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_3" > 0.800000) AND (t."X_3" <= 1.650000) AND (t."X_3" > 1.450000) AND (t."X_1" > 3.050000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_3" > 0.800000) AND (t."X_3" <= 1.650000) AND (t."X_3" > 1.450000) AND (t."X_1" <= 3.050000) AND (t."X_2" <= 5.000000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_3" > 0.800000) AND (t."X_3" <= 1.650000) AND (t."X_3" > 1.450000) AND (t."X_1" <= 3.050000) AND (t."X_2" > 5.000000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_3" > 0.800000) AND (t."X_3" > 1.650000) AND (t."X_3" <= 1.750000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_3" > 0.800000) AND (t."X_3" > 1.650000) AND (t."X_3" > 1.750000)) THEN 12 ELSE NULL END AS Leaf_12
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.360000 AS "P_0", 0.320000 AS "P_1", 0.320000 AS "P_2", 0 AS "D", 0.360000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.903846 AS "P_1", 0.096154 AS "P_2", 1 AS "D", 0.903846 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.022727 AS "P_1", 0.977273 AS "P_2", 2 AS "D", 0.977273 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.722222 AS "P_1", 0.277778 AS "P_2", 1 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.375000 AS "P_1", 0.625000 AS "P_2", 2 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 1.750000) AND (t."X_3" <= 0.800000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_3" <= 1.750000) AND (t."X_3" > 0.800000) AND (t."X_2" <= 4.950000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_3" <= 1.750000) AND (t."X_3" > 0.800000) AND (t."X_2" > 4.950000) AND (t."X_3" <= 1.650000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_3" <= 1.750000) AND (t."X_3" > 0.800000) AND (t."X_2" > 4.950000) AND (t."X_3" > 1.650000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_3" > 1.750000) AND (t."X_2" <= 4.850000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_3" > 1.750000) AND (t."X_2" > 4.850000)) THEN 10 ELSE NULL END AS Leaf_10
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.300000 AS "P_0", 0.293333 AS "P_1", 0.406667 AS "P_2", 2 AS "D", 0.406667 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.494505 AS "P_0", 0.472527 AS "P_1", 0.032967 AS "P_2", 0 AS "D", 0.494505 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.016949 AS "P_1", 0.983051 AS "P_2", 2 AS "D", 0.983051 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.934783 AS "P_1", 0.065217 AS "P_2", 1 AS "D", 0.934783 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 0.750000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_3" > 0.750000) AND (t."X_3" > 1.750000) AND (t."X_2" <= 4.850000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_3" > 0.750000) AND (t."X_3" > 1.750000) AND (t."X_2" > 4.850000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_3" > 0.750000) AND (t."X_3" <= 1.750000) AND (t."X_0" <= 6.050000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_3" > 0.750000) AND (t."X_3" <= 1.750000) AND (t."X_0" > 6.050000) AND (t."X_0" > 6.150000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_3" > 0.750000) AND (t."X_3" <= 1.750000) AND (t."X_0" > 6.050000) AND (t."X_0" <= 6.150000) AND (t."X_3" <= 1.300000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_3" > 0.750000) AND (t."X_3" <= 1.750000) AND (t."X_0" > 6.050000) AND (t."X_0" <= 6.150000) AND (t."X_3" > 1.300000)) THEN 12 ELSE NULL END AS Leaf_12
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.320000 AS "P_0", 0.366667 AS "P_1", 0.313333 AS "P_2", 1 AS "D", 0.366667 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.539216 AS "P_1", 0.460784 AS "P_2", 1 AS "D", 0.539216 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.981481 AS "P_1", 0.018519 AS "P_2", 1 AS "D", 0.981481 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.041667 AS "P_1", 0.958333 AS "P_2", 2 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.958333 AS "P_1", 0.041667 AS "P_2", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.888889 AS "P_1", 0.111111 AS "P_2", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.833333 AS "P_1", 0.166667 AS "P_2", 1 AS "D", 0.833333 AS "DP"
  ) AS "Values"),
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 2.450000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_2" > 2.450000) AND (t."X_2" > 4.800000) AND (t."X_3" > 1.750000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_2" > 2.450000) AND (t."X_2" > 4.800000) AND (t."X_3" <= 1.750000) AND (t."X_1" <= 2.900000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_2" > 2.450000) AND (t."X_2" > 4.800000) AND (t."X_3" <= 1.750000) AND (t."X_1" > 2.900000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_2" > 2.450000) AND (t."X_2" <= 4.800000) AND (t."X_2" <= 4.450000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_2" > 2.450000) AND (t."X_2" <= 4.800000) AND (t."X_2" > 4.450000) AND (t."X_1" <= 2.650000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_2" > 2.450000) AND (t."X_2" <= 4.800000) AND (t."X_2" > 4.450000) AND (t."X_1" > 2.650000)) THEN 12 ELSE NULL END AS Leaf_12
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.313333 AS "P_0", 0.373333 AS "P_1", 0.313333 AS "P_2", 1 AS "D", 0.373333 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.543689 AS "P_1", 0.456311 AS "P_2", 1 AS "D", 0.543689 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.981132 AS "P_1", 0.018868 AS "P_2", 1 AS "D", 0.981132 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.080000 AS "P_1", 0.920000 AS "P_2", 2 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.444444 AS "P_1", 0.555556 AS "P_2", 2 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.833333 AS "P_2", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.944444 AS "P_1", 0.055556 AS "P_2", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.250000 AS "P_2", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 ),
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1", scu."P_2" AS "P_2"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_4" AS t
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
   CAST(NULL AS FLOAT) AS "Score_2"
FROM "union_of_trees" AS t
GROUP BY t."index"
