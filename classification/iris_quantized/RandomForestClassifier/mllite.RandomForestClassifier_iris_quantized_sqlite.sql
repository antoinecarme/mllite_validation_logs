WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "iris_quantized" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_1" <= 0.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_1" > 0.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_0" <= 7.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_0" > 7.500000) AND (t."X_3" > 7.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_0" > 7.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" <= 3.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_0" > 7.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" > 3.500000)) THEN 14 ELSE NULL END AS "Leaf_14"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
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
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.981481 AS "P_1", 0.018519 AS "P_2", 1 AS "D", 0.981481 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.023256 AS "P_1", 0.976744 AS "P_2", 2 AS "D", 0.976744 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.058824 AS "P_1", 0.941176 AS "P_2", 2 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_0" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_3" <= 5.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_3" > 5.500000) AND (t."X_2" <= 6.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_3" > 5.500000) AND (t."X_2" > 6.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" > 7.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" <= 3.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" > 3.000000) AND (t."X_0" <= 7.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" > 3.000000) AND (t."X_0" > 7.500000)) THEN 14 ELSE NULL END AS "Leaf_14"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
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
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.052632 AS "P_1", 0.947368 AS "P_2", 2 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_1" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_2" > 7.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" > 7.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.000000) AND (t."X_2" > 6.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.000000) AND (t."X_2" <= 6.500000) AND (t."X_0" > 5.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.000000) AND (t."X_2" <= 6.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" <= 5.000000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.000000) AND (t."X_2" <= 6.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" > 5.000000)) THEN 18 ELSE NULL END AS "Leaf_18"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
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
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.419048 AS "P_1", 0.580952 AS "P_2", 2 AS "D", 0.580952 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.930233 AS "P_1", 0.069767 AS "P_2", 1 AS "D", 0.930233 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.064516 AS "P_1", 0.935484 AS "P_2", 2 AS "D", 0.935484 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.173913 AS "P_1", 0.826087 AS "P_2", 2 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.307692 AS "P_1", 0.692308 AS "P_2", 2 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.100000 AS "P_1", 0.900000 AS "P_2", 2 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.142857 AS "P_1", 0.857143 AS "P_2", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_2" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" > 7.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" > 7.500000) AND (t."X_3" <= 8.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" > 7.500000) AND (t."X_3" > 8.000000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.500000) AND (t."X_2" > 6.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.500000) AND (t."X_2" <= 6.500000) AND (t."X_1" <= 5.000000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.500000) AND (t."X_2" <= 6.500000) AND (t."X_1" > 5.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_3" <= 4.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_3" > 4.500000) AND (t."X_1" > 1.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_3" > 4.500000) AND (t."X_1" <= 1.500000) AND (t."X_2" <= 7.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_3" > 4.500000) AND (t."X_1" <= 1.500000) AND (t."X_2" > 7.500000)) THEN 20 ELSE NULL END AS "Leaf_20"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
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
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.980392 AS "P_1", 0.019608 AS "P_2", 1 AS "D", 0.980392 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.098039 AS "P_1", 0.901961 AS "P_2", 2 AS "D", 0.901961 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.294118 AS "P_1", 0.705882 AS "P_2", 2 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.833333 AS "P_2", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.600000 AS "P_1", 0.400000 AS "P_2", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.956522 AS "P_1", 0.043478 AS "P_2", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.200000 AS "P_2", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_3" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_6", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_2" > 7.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" > 3.000000) AND (t."X_1" > 5.000000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" > 3.000000) AND (t."X_1" <= 5.000000) AND (t."X_3" <= 8.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" > 3.000000) AND (t."X_1" <= 5.000000) AND (t."X_3" > 8.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" <= 3.000000) AND (t."X_3" > 6.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" <= 3.000000) AND (t."X_3" <= 6.500000) AND (t."X_1" > 1.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" <= 3.000000) AND (t."X_3" <= 6.500000) AND (t."X_1" <= 1.500000) AND (t."X_1" <= 0.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" <= 3.000000) AND (t."X_3" <= 6.500000) AND (t."X_1" <= 1.500000) AND (t."X_1" > 0.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" <= 3.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" > 3.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_0" > 1.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 4.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 4.000000)) THEN 26 ELSE NULL END AS "Leaf_26"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
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
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.963636 AS "P_1", 0.036364 AS "P_2", 1 AS "D", 0.963636 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.062500 AS "P_1", 0.937500 AS "P_2", 2 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.187500 AS "P_1", 0.812500 AS "P_2", 2 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.083333 AS "P_1", 0.916667 AS "P_2", 2 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.833333 AS "P_2", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.980769 AS "P_1", 0.019231 AS "P_2", 1 AS "D", 0.980769 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.857143 AS "P_1", 0.142857 AS "P_2", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_4" AS 
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
"DT_node_lookup_5" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_1" <= 5.000000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_1" > 5.000000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 7.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" <= 0.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" > 0.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" > 7.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" <= 7.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" > 7.500000) AND (t."X_2" <= 7.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" > 7.500000) AND (t."X_2" > 7.500000)) THEN 20 ELSE NULL END AS "Leaf_20"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.320000 AS "P_0", 0.306667 AS "P_1", 0.373333 AS "P_2", 2 AS "D", 0.373333 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.450980 AS "P_1", 0.549020 AS "P_2", 2 AS "D", 0.549020 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.811321 AS "P_1", 0.188679 AS "P_2", 1 AS "D", 0.811321 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.061224 AS "P_1", 0.938776 AS "P_2", 2 AS "D", 0.938776 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.833333 AS "P_2", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.023256 AS "P_1", 0.976744 AS "P_2", 2 AS "D", 0.976744 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.066667 AS "P_1", 0.933333 AS "P_2", 2 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 6.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" > 6.500000) AND (t."X_3" <= 8.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" > 6.500000) AND (t."X_3" > 8.000000)) THEN 12 ELSE NULL END AS "Leaf_12"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.373333 AS "P_0", 0.313333 AS "P_1", 0.313333 AS "P_2", 0 AS "D", 0.373333 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.938776 AS "P_1", 0.061224 AS "P_2", 1 AS "D", 0.938776 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.022222 AS "P_1", 0.977778 AS "P_2", 2 AS "D", 0.977778 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.058824 AS "P_1", 0.941176 AS "P_2", 2 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" <= 3.500000) AND (t."X_3" <= 2.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_0" <= 3.500000) AND (t."X_3" > 2.500000) AND (t."X_3" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_0" <= 3.500000) AND (t."X_3" > 2.500000) AND (t."X_3" > 6.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_0" > 3.500000) AND (t."X_0" > 5.500000) AND (t."X_2" > 7.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_0" > 3.500000) AND (t."X_0" > 5.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" > 7.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_0" > 3.500000) AND (t."X_0" > 5.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.500000) AND (t."X_2" <= 5.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_0" > 3.500000) AND (t."X_0" > 5.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.500000) AND (t."X_2" > 5.500000) AND (t."X_1" <= 6.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_0" > 3.500000) AND (t."X_0" > 5.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.500000) AND (t."X_2" > 5.500000) AND (t."X_1" > 6.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_0" > 3.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" <= 0.500000) AND (t."X_3" <= 4.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_0" > 3.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" <= 0.500000) AND (t."X_3" > 4.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_0" > 3.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" > 0.500000) AND (t."X_1" > 8.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_0" > 3.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" > 0.500000) AND (t."X_1" <= 8.500000) AND (t."X_3" <= 6.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_0" > 3.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" > 0.500000) AND (t."X_1" <= 8.500000) AND (t."X_3" > 6.500000) AND (t."X_1" <= 5.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_0" > 3.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" > 0.500000) AND (t."X_1" <= 8.500000) AND (t."X_3" > 6.500000) AND (t."X_1" > 5.000000)) THEN 26 ELSE NULL END AS "Leaf_26"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.286667 AS "P_0", 0.353333 AS "P_1", 0.360000 AS "P_2", 2 AS "D", 0.360000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.750000 AS "P_0", 0.214286 AS "P_1", 0.035714 AS "P_2", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.010638 AS "P_0", 0.436170 AS "P_1", 0.553191 AS "P_2", 2 AS "D", 0.553191 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.857143 AS "P_1", 0.142857 AS "P_2", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.029412 AS "P_0", 0.705882 AS "P_1", 0.264706 AS "P_2", 1 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.283333 AS "P_1", 0.716667 AS "P_2", 2 AS "D", 0.716667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.653846 AS "P_1", 0.346154 AS "P_2", 1 AS "D", 0.653846 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.357143 AS "P_1", 0.642857 AS "P_2", 2 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.100000 AS "P_1", 0.900000 AS "P_2", 2 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.033333 AS "P_0", 0.766667 AS "P_1", 0.200000 AS "P_2", 1 AS "D", 0.766667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.793103 AS "P_1", 0.206897 AS "P_2", 1 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_0" > 8.500000) AND (t."X_3" <= 5.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_0" > 8.500000) AND (t."X_3" > 5.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" > 7.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" > 7.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.500000) AND (t."X_3" > 7.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" <= 5.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" > 5.000000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_0" <= 8.500000) AND (t."X_3" <= 4.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_0" <= 8.500000) AND (t."X_3" > 4.500000) AND (t."X_1" > 2.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_0" <= 8.500000) AND (t."X_3" > 4.500000) AND (t."X_1" <= 2.500000) AND (t."X_2" > 7.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_0" <= 8.500000) AND (t."X_3" > 4.500000) AND (t."X_1" <= 2.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" <= 1.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_0" <= 8.500000) AND (t."X_3" > 4.500000) AND (t."X_1" <= 2.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" > 1.500000) AND (t."X_0" <= 7.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_0" <= 8.500000) AND (t."X_3" > 4.500000) AND (t."X_1" <= 2.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" > 1.500000) AND (t."X_0" > 7.000000)) THEN 26 ELSE NULL END AS "Leaf_26"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.353333 AS "P_0", 0.320000 AS "P_1", 0.326667 AS "P_2", 0 AS "D", 0.353333 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.494845 AS "P_1", 0.505155 AS "P_2", 2 AS "D", 0.505155 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.938776 AS "P_1", 0.061224 AS "P_2", 1 AS "D", 0.938776 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.041667 AS "P_1", 0.958333 AS "P_2", 2 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.957447 AS "P_1", 0.042553 AS "P_2", 1 AS "D", 0.957447 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.181818 AS "P_1", 0.818182 AS "P_2", 2 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.100000 AS "P_1", 0.900000 AS "P_2", 2 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.142857 AS "P_1", 0.857143 AS "P_2", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.882353 AS "P_1", 0.117647 AS "P_2", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.714286 AS "P_1", 0.285714 AS "P_2", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.833333 AS "P_1", 0.166667 AS "P_2", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_2" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" <= 0.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" > 0.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" > 7.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_2" <= 6.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_2" > 6.500000) AND (t."X_1" <= 2.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_2" > 6.500000) AND (t."X_1" > 2.500000) AND (t."X_1" > 4.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_2" > 6.500000) AND (t."X_1" > 2.500000) AND (t."X_1" <= 4.500000) AND (t."X_3" > 8.000000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_2" > 6.500000) AND (t."X_1" > 2.500000) AND (t."X_1" <= 4.500000) AND (t."X_3" <= 8.000000) AND (t."X_0" <= 6.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_2" > 6.500000) AND (t."X_1" > 2.500000) AND (t."X_1" <= 4.500000) AND (t."X_3" <= 8.000000) AND (t."X_0" > 6.500000)) THEN 22 ELSE NULL END AS "Leaf_22"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.386667 AS "P_0", 0.313333 AS "P_1", 0.300000 AS "P_2", 0 AS "D", 0.386667 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.510870 AS "P_1", 0.489130 AS "P_2", 1 AS "D", 0.510870 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.937500 AS "P_1", 0.062500 AS "P_2", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.045455 AS "P_1", 0.954545 AS "P_2", 2 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.142857 AS "P_1", 0.857143 AS "P_2", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.285714 AS "P_1", 0.714286 AS "P_2", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.400000 AS "P_1", 0.600000 AS "P_2", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" <= 2.500000) AND (t."X_3" <= 2.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_0" <= 2.500000) AND (t."X_3" > 2.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_3" <= 2.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_3" > 2.500000) AND (t."X_2" <= 6.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_1" > 1.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_1" <= 1.500000) AND (t."X_3" <= 5.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_1" <= 1.500000) AND (t."X_3" > 5.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_0" > 8.500000) AND (t."X_3" <= 6.000000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_0" > 8.500000) AND (t."X_3" > 6.000000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_0" <= 8.500000) AND (t."X_1" > 5.500000) AND (t."X_3" <= 7.000000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_0" <= 8.500000) AND (t."X_1" > 5.500000) AND (t."X_3" > 7.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_0" <= 8.500000) AND (t."X_1" <= 5.500000) AND (t."X_0" > 7.500000) AND (t."X_3" > 7.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_0" <= 8.500000) AND (t."X_1" <= 5.500000) AND (t."X_0" > 7.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" <= 1.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_0" <= 8.500000) AND (t."X_1" <= 5.500000) AND (t."X_0" > 7.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" > 1.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_0" <= 8.500000) AND (t."X_1" <= 5.500000) AND (t."X_0" <= 7.500000) AND (t."X_1" > 3.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_0" <= 8.500000) AND (t."X_1" <= 5.500000) AND (t."X_0" <= 7.500000) AND (t."X_1" <= 3.500000) AND (t."X_3" > 6.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_0" <= 8.500000) AND (t."X_1" <= 5.500000) AND (t."X_0" <= 7.500000) AND (t."X_1" <= 3.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 6.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_0" <= 8.500000) AND (t."X_1" <= 5.500000) AND (t."X_0" <= 7.500000) AND (t."X_1" <= 3.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000)) THEN 34 ELSE NULL END AS "Leaf_34"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.306667 AS "P_0", 0.400000 AS "P_1", 0.293333 AS "P_2", 1 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.816327 AS "P_0", 0.183673 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 0.816327 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.059406 AS "P_0", 0.504951 AS "P_1", 0.435644 AS "P_2", 1 AS "D", 0.504951 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.153846 AS "P_0", 0.743590 AS "P_1", 0.102564 AS "P_2", 1 AS "D", 0.743590 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.354839 AS "P_1", 0.645161 AS "P_2", 2 AS "D", 0.645161 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.878788 AS "P_1", 0.121212 AS "P_2", 1 AS "D", 0.878788 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.454545 AS "P_1", 0.545455 AS "P_2", 2 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.111111 AS "P_1", 0.888889 AS "P_2", 2 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.575758 AS "P_1", 0.424242 AS "P_2", 1 AS "D", 0.575758 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.090909 AS "P_1", 0.909091 AS "P_2", 2 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.428571 AS "P_1", 0.571429 AS "P_2", 2 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.684211 AS "P_1", 0.315789 AS "P_2", 1 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.928571 AS "P_1", 0.071429 AS "P_2", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.545455 AS "P_1", 0.454545 AS "P_2", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.250000 AS "P_2", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_2" <= 2.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_3" > 6.500000) AND (t."X_2" > 6.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_3" > 6.500000) AND (t."X_2" <= 6.500000) AND (t."X_0" <= 4.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_3" > 6.500000) AND (t."X_2" <= 6.500000) AND (t."X_0" > 4.500000) AND (t."X_1" <= 5.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" > 6.500000) AND (t."X_2" <= 6.500000) AND (t."X_0" > 4.500000) AND (t."X_1" > 5.000000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_2" > 2.500000) AND (t."X_0" > 8.500000) AND (t."X_2" <= 7.000000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_2" > 2.500000) AND (t."X_0" > 8.500000) AND (t."X_2" > 7.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_2" > 2.500000) AND (t."X_0" <= 8.500000) AND (t."X_3" <= 4.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_2" > 2.500000) AND (t."X_0" <= 8.500000) AND (t."X_3" > 4.500000) AND (t."X_2" <= 7.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_2" > 2.500000) AND (t."X_0" <= 8.500000) AND (t."X_3" > 4.500000) AND (t."X_2" > 7.500000)) THEN 18 ELSE NULL END AS "Leaf_18"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.286667 AS "P_0", 0.326667 AS "P_1", 0.386667 AS "P_2", 2 AS "D", 0.386667 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.472527 AS "P_0", 0.505495 AS "P_1", 0.021978 AS "P_2", 1 AS "D", 0.505495 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.050847 AS "P_1", 0.949153 AS "P_2", 2 AS "D", 0.949153 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.958333 AS "P_1", 0.041667 AS "P_2", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.272727 AS "P_1", 0.727273 AS "P_2", 2 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.977273 AS "P_1", 0.022727 AS "P_2", 1 AS "D", 0.977273 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.250000 AS "P_2", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.937500 AS "P_1", 0.062500 AS "P_2", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 6.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_3" <= 2.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_3" > 2.500000) AND (t."X_3" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 5.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" <= 5.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" > 5.000000)) THEN 10 ELSE NULL END AS "Leaf_10"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.280000 AS "P_0", 0.373333 AS "P_1", 0.346667 AS "P_2", 1 AS "D", 0.373333 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.420000 AS "P_0", 0.560000 AS "P_1", 0.020000 AS "P_2", 1 AS "D", 0.560000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.965517 AS "P_1", 0.034483 AS "P_2", 1 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" > 6.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_0" <= 5.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_3" <= 6.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_3" > 6.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_0" > 5.500000) AND (t."X_0" > 7.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_0" > 5.500000) AND (t."X_0" <= 7.000000) AND (t."X_1" > 4.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_0" > 5.500000) AND (t."X_0" <= 7.000000) AND (t."X_1" <= 4.000000) AND (t."X_3" <= 6.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_0" > 5.500000) AND (t."X_0" <= 7.000000) AND (t."X_1" <= 4.000000) AND (t."X_3" > 6.500000)) THEN 16 ELSE NULL END AS "Leaf_16"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.373333 AS "P_0", 0.313333 AS "P_1", 0.313333 AS "P_2", 0 AS "D", 0.373333 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.903846 AS "P_1", 0.096154 AS "P_2", 1 AS "D", 0.903846 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.975000 AS "P_1", 0.025000 AS "P_2", 1 AS "D", 0.975000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.888889 AS "P_1", 0.111111 AS "P_2", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.250000 AS "P_2", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_6", t1."Leaf_7", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" > 7.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" <= 3.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" > 3.500000) AND (t."X_1" > 5.500000) AND (t."X_2" <= 7.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" > 3.500000) AND (t."X_1" > 5.500000) AND (t."X_2" > 7.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" > 3.500000) AND (t."X_1" <= 5.500000) AND (t."X_1" > 4.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" > 3.500000) AND (t."X_1" <= 5.500000) AND (t."X_1" <= 4.500000) AND (t."X_2" <= 6.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" > 3.500000) AND (t."X_1" <= 5.500000) AND (t."X_1" <= 4.500000) AND (t."X_2" > 6.500000)) THEN 16 ELSE NULL END AS "Leaf_16"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.373333 AS "P_0", 0.320000 AS "P_1", 0.306667 AS "P_2", 0 AS "D", 0.373333 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.510638 AS "P_1", 0.489362 AS "P_2", 1 AS "D", 0.510638 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.061224 AS "P_1", 0.938776 AS "P_2", 2 AS "D", 0.938776 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.136364 AS "P_1", 0.863636 AS "P_2", 2 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.272727 AS "P_1", 0.727273 AS "P_2", 2 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.222222 AS "P_1", 0.777778 AS "P_2", 2 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_3" <= 2.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_3" > 2.500000) AND (t."X_2" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_3" > 2.500000) AND (t."X_2" > 6.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_3" > 6.500000) AND (t."X_3" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" <= 3.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" > 3.500000) AND (t."X_1" > 4.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" > 3.500000) AND (t."X_1" <= 4.500000) AND (t."X_0" <= 7.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" > 3.500000) AND (t."X_1" <= 4.500000) AND (t."X_0" > 7.500000)) THEN 14 ELSE NULL END AS "Leaf_14"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.246667 AS "P_0", 0.413333 AS "P_1", 0.340000 AS "P_2", 1 AS "D", 0.413333 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.366337 AS "P_0", 0.603960 AS "P_1", 0.029703 AS "P_2", 1 AS "D", 0.603960 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.020408 AS "P_1", 0.979592 AS "P_2", 2 AS "D", 0.979592 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.953125 AS "P_1", 0.046875 AS "P_2", 1 AS "D", 0.953125 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.047619 AS "P_1", 0.952381 AS "P_2", 2 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.111111 AS "P_1", 0.888889 AS "P_2", 2 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.125000 AS "P_1", 0.875000 AS "P_2", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_2" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" > 5.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" <= 0.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" > 0.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" > 6.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 6.500000) AND (t."X_1" <= 5.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 6.500000) AND (t."X_1" > 5.000000)) THEN 16 ELSE NULL END AS "Leaf_16"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.313333 AS "P_0", 0.333333 AS "P_1", 0.353333 AS "P_2", 2 AS "D", 0.353333 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.485437 AS "P_1", 0.514563 AS "P_2", 2 AS "D", 0.514563 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.890909 AS "P_1", 0.109091 AS "P_2", 1 AS "D", 0.890909 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.020833 AS "P_1", 0.979167 AS "P_2", 2 AS "D", 0.979167 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.142857 AS "P_1", 0.857143 AS "P_2", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.111111 AS "P_1", 0.888889 AS "P_2", 2 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_6", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" > 7.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_2" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" > 5.000000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" <= 5.000000) AND (t."X_0" <= 7.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" <= 5.000000) AND (t."X_0" > 7.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_3" <= 5.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_3" > 5.500000) AND (t."X_2" <= 7.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_3" > 5.500000) AND (t."X_2" > 7.000000)) THEN 16 ELSE NULL END AS "Leaf_16"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.306667 AS "P_0", 0.340000 AS "P_1", 0.353333 AS "P_2", 2 AS "D", 0.353333 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.490385 AS "P_1", 0.509615 AS "P_2", 2 AS "D", 0.509615 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.980000 AS "P_1", 0.020000 AS "P_2", 1 AS "D", 0.980000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.037037 AS "P_1", 0.962963 AS "P_2", 2 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.125000 AS "P_1", 0.875000 AS "P_2", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.181818 AS "P_1", 0.818182 AS "P_2", 2 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.100000 AS "P_1", 0.900000 AS "P_2", 2 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.937500 AS "P_1", 0.062500 AS "P_2", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" > 6.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" <= 5.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" > 5.000000)) THEN 10 ELSE NULL END AS "Leaf_10"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.380000 AS "P_0", 0.273333 AS "P_1", 0.346667 AS "P_2", 0 AS "D", 0.380000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.440860 AS "P_1", 0.559140 AS "P_2", 2 AS "D", 0.559140 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.891304 AS "P_1", 0.108696 AS "P_2", 1 AS "D", 0.891304 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.833333 AS "P_2", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_0" <= 4.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_0" > 4.500000) AND (t."X_1" <= 5.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_0" > 4.500000) AND (t."X_1" > 5.000000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" > 6.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_1" <= 0.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_1" > 0.500000)) THEN 14 ELSE NULL END AS "Leaf_14"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.373333 AS "P_0", 0.300000 AS "P_1", 0.326667 AS "P_2", 0 AS "D", 0.373333 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.478723 AS "P_1", 0.521277 AS "P_2", 2 AS "D", 0.521277 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.916667 AS "P_1", 0.083333 AS "P_2", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.021739 AS "P_1", 0.978261 AS "P_2", 2 AS "D", 0.978261 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" <= 3.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" > 3.000000) AND (t."X_0" <= 5.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" > 3.000000) AND (t."X_0" > 5.500000)) THEN 12 ELSE NULL END AS "Leaf_12"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.293333 AS "P_0", 0.386667 AS "P_1", 0.320000 AS "P_2", 1 AS "D", 0.386667 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.547170 AS "P_1", 0.452830 AS "P_2", 1 AS "D", 0.547170 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.920635 AS "P_1", 0.079365 AS "P_2", 1 AS "D", 0.920635 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.285714 AS "P_1", 0.714286 AS "P_2", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.400000 AS "P_1", 0.600000 AS "P_2", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" <= 2.500000) AND (t."X_3" <= 2.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_0" <= 2.500000) AND (t."X_3" > 2.500000) AND (t."X_3" <= 6.000000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_0" <= 2.500000) AND (t."X_3" > 2.500000) AND (t."X_3" > 6.000000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_3" <= 6.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" > 6.500000) AND (t."X_0" <= 4.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" > 6.500000) AND (t."X_0" > 4.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_3" <= 6.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_2" > 6.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 6.500000) AND (t."X_1" <= 4.000000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 6.500000) AND (t."X_1" > 4.000000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_3" > 6.500000) AND (t."X_1" > 4.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_3" > 6.500000) AND (t."X_1" <= 4.500000) AND (t."X_2" > 7.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_3" > 6.500000) AND (t."X_1" <= 4.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_0" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_3" > 6.500000) AND (t."X_1" <= 4.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" > 7.500000)) THEN 26 ELSE NULL END AS "Leaf_26"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.346667 AS "P_0", 0.300000 AS "P_1", 0.353333 AS "P_2", 2 AS "D", 0.353333 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.872727 AS "P_0", 0.090909 AS "P_1", 0.036364 AS "P_2", 0 AS "D", 0.872727 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.042105 AS "P_0", 0.421053 AS "P_1", 0.536842 AS "P_2", 2 AS "D", 0.536842 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.714286 AS "P_1", 0.285714 AS "P_2", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.095238 AS "P_0", 0.690476 AS "P_1", 0.214286 AS "P_2", 1 AS "D", 0.690476 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.207547 AS "P_1", 0.792453 AS "P_2", 2 AS "D", 0.792453 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.023256 AS "P_1", 0.976744 AS "P_2", 2 AS "D", 0.976744 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.756757 AS "P_1", 0.243243 AS "P_2", 1 AS "D", 0.756757 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.181818 AS "P_1", 0.818182 AS "P_2", 2 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.043478 AS "P_1", 0.956522 AS "P_2", 2 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" <= 3.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" > 3.000000) AND (t."X_0" <= 5.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" > 3.000000) AND (t."X_0" > 5.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_0" > 5.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_0" <= 5.500000) AND (t."X_2" <= 7.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_0" <= 5.500000) AND (t."X_2" > 7.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" > 7.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_2" > 7.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.000000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" > 7.000000)) THEN 24 ELSE NULL END AS "Leaf_24"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.306667 AS "P_0", 0.313333 AS "P_1", 0.380000 AS "P_2", 2 AS "D", 0.380000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.451923 AS "P_1", 0.548077 AS "P_2", 2 AS "D", 0.548077 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.918367 AS "P_1", 0.081633 AS "P_2", 1 AS "D", 0.918367 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.036364 AS "P_1", 0.963636 AS "P_2", 2 AS "D", 0.963636 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.020000 AS "P_1", 0.980000 AS "P_2", 2 AS "D", 0.980000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.047619 AS "P_1", 0.952381 AS "P_2", 2 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.100000 AS "P_1", 0.900000 AS "P_2", 2 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_1" > 1.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_1" <= 1.500000) AND (t."X_1" <= 0.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_1" <= 1.500000) AND (t."X_1" > 0.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" > 7.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.000000) AND (t."X_1" <= 5.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 7.000000) AND (t."X_1" > 5.000000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" > 7.000000) AND (t."X_1" > 4.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" > 7.000000) AND (t."X_1" <= 4.500000) AND (t."X_3" <= 8.000000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" > 7.000000) AND (t."X_1" <= 4.500000) AND (t."X_3" > 8.000000)) THEN 20 ELSE NULL END AS "Leaf_20"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.260000 AS "P_0", 0.326667 AS "P_1", 0.413333 AS "P_2", 2 AS "D", 0.413333 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.441441 AS "P_1", 0.558559 AS "P_2", 2 AS "D", 0.558559 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.937500 AS "P_1", 0.062500 AS "P_2", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.063492 AS "P_1", 0.936508 AS "P_2", 2 AS "D", 0.936508 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.173913 AS "P_1", 0.826087 AS "P_2", 2 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.111111 AS "P_1", 0.888889 AS "P_2", 2 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.400000 AS "P_1", 0.600000 AS "P_2", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_3" > 7.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" <= 7.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" > 7.000000)) THEN 12 ELSE NULL END AS "Leaf_12"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.326667 AS "P_0", 0.386667 AS "P_1", 0.286667 AS "P_2", 1 AS "D", 0.386667 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.574257 AS "P_1", 0.425743 AS "P_2", 1 AS "D", 0.574257 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.966102 AS "P_1", 0.033898 AS "P_2", 1 AS "D", 0.966102 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.023810 AS "P_1", 0.976190 AS "P_2", 2 AS "D", 0.976190 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.058824 AS "P_1", 0.941176 AS "P_2", 2 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.125000 AS "P_1", 0.875000 AS "P_2", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_3" <= 4.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_3" > 4.500000) AND (t."X_0" > 5.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_3" > 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_2" > 7.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_3" > 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_2" <= 7.500000) AND (t."X_3" <= 5.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_3" > 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_2" <= 7.500000) AND (t."X_3" > 5.500000) AND (t."X_1" <= 0.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_3" > 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_2" <= 7.500000) AND (t."X_3" > 5.500000) AND (t."X_1" > 0.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" > 6.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 6.500000) AND (t."X_1" <= 5.000000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 6.500000) AND (t."X_1" > 5.000000)) THEN 18 ELSE NULL END AS "Leaf_18"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.306667 AS "P_0", 0.380000 AS "P_1", 0.313333 AS "P_2", 1 AS "D", 0.380000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.548077 AS "P_1", 0.451923 AS "P_2", 1 AS "D", 0.548077 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.949153 AS "P_1", 0.050847 AS "P_2", 1 AS "D", 0.949153 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.022222 AS "P_1", 0.977778 AS "P_2", 2 AS "D", 0.977778 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.869565 AS "P_1", 0.130435 AS "P_2", 1 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.250000 AS "P_2", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.900000 AS "P_1", 0.100000 AS "P_2", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.833333 AS "P_1", 0.166667 AS "P_2", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.083333 AS "P_1", 0.916667 AS "P_2", 2 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_2" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" <= 0.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" > 0.500000)) THEN 10 ELSE NULL END AS "Leaf_10"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.280000 AS "P_0", 0.366667 AS "P_1", 0.353333 AS "P_2", 1 AS "D", 0.366667 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.509259 AS "P_1", 0.490741 AS "P_2", 1 AS "D", 0.509259 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.948276 AS "P_1", 0.051724 AS "P_2", 1 AS "D", 0.948276 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.400000 AS "P_1", 0.600000 AS "P_2", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_1" <= 5.000000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_1" > 5.000000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" > 6.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 7.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" > 5.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" <= 0.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" > 0.500000)) THEN 16 ELSE NULL END AS "Leaf_16"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.373333 AS "P_0", 0.353333 AS "P_1", 0.273333 AS "P_2", 0 AS "D", 0.373333 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.563830 AS "P_1", 0.436170 AS "P_2", 1 AS "D", 0.563830 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.894737 AS "P_1", 0.105263 AS "P_2", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.054054 AS "P_1", 0.945946 AS "P_2", 2 AS "D", 0.945946 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.142857 AS "P_1", 0.857143 AS "P_2", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.400000 AS "P_1", 0.600000 AS "P_2", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_0" <= 7.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_0" > 7.500000) AND (t."X_2" <= 7.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_0" > 7.500000) AND (t."X_2" > 7.500000)) THEN 10 ELSE NULL END AS "Leaf_10"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.326667 AS "P_0", 0.326667 AS "P_1", 0.346667 AS "P_2", 2 AS "D", 0.346667 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.485149 AS "P_1", 0.514852 AS "P_2", 2 AS "D", 0.514852 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.886792 AS "P_1", 0.113208 AS "P_2", 1 AS "D", 0.886792 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.041667 AS "P_1", 0.958333 AS "P_2", 2 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.083333 AS "P_1", 0.916667 AS "P_2", 2 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 5.500000) AND (t."X_3" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 5.500000) AND (t."X_3" > 6.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 6.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_0" > 5.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_0" <= 5.500000) AND (t."X_2" > 7.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_0" <= 5.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" <= 0.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_0" <= 5.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" > 0.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 5.500000) AND (t."X_3" > 6.500000) AND (t."X_3" > 7.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 5.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" <= 7.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 5.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" > 7.500000) AND (t."X_2" <= 8.000000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 5.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" > 7.500000) AND (t."X_2" > 8.000000)) THEN 22 ELSE NULL END AS "Leaf_22"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.346667 AS "P_0", 0.320000 AS "P_1", 0.333333 AS "P_2", 0 AS "D", 0.346667 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.489796 AS "P_1", 0.510204 AS "P_2", 2 AS "D", 0.510204 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.953488 AS "P_1", 0.046512 AS "P_2", 1 AS "D", 0.953488 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.127273 AS "P_1", 0.872727 AS "P_2", 2 AS "D", 0.872727 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.625000 AS "P_1", 0.375000 AS "P_2", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.042553 AS "P_1", 0.957447 AS "P_2", 2 AS "D", 0.957447 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.117647 AS "P_1", 0.882353 AS "P_2", 2 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_1" > 1.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_1" <= 1.500000) AND (t."X_3" <= 5.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_1" <= 1.500000) AND (t."X_3" > 5.500000) AND (t."X_1" <= 0.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_1" <= 1.500000) AND (t."X_3" > 5.500000) AND (t."X_1" > 0.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_1" <= 3.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_1" > 3.500000) AND (t."X_0" <= 7.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_1" > 3.500000) AND (t."X_0" > 7.500000) AND (t."X_1" > 5.000000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_1" > 3.500000) AND (t."X_0" > 7.500000) AND (t."X_1" <= 5.000000) AND (t."X_3" <= 8.000000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_1" > 3.500000) AND (t."X_0" > 7.500000) AND (t."X_1" <= 5.000000) AND (t."X_3" > 8.000000)) THEN 20 ELSE NULL END AS "Leaf_20"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.313333 AS "P_0", 0.393333 AS "P_1", 0.293333 AS "P_2", 1 AS "D", 0.393333 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.572816 AS "P_1", 0.427184 AS "P_2", 1 AS "D", 0.572816 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.933333 AS "P_1", 0.066667 AS "P_2", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.069767 AS "P_1", 0.930233 AS "P_2", 2 AS "D", 0.930233 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.428571 AS "P_1", 0.571429 AS "P_2", 2 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.600000 AS "P_1", 0.400000 AS "P_2", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_8", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 2.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" > 8.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" <= 8.500000) AND (t."X_0" > 7.500000) AND (t."X_1" <= 2.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" <= 8.500000) AND (t."X_0" > 7.500000) AND (t."X_1" > 2.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" <= 8.500000) AND (t."X_0" <= 7.500000) AND (t."X_3" > 6.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" <= 8.500000) AND (t."X_0" <= 7.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 7.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" <= 8.500000) AND (t."X_0" <= 7.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" <= 0.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" <= 8.500000) AND (t."X_0" <= 7.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" > 0.500000) AND (t."X_0" <= 5.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_0" <= 8.500000) AND (t."X_0" <= 7.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" > 0.500000) AND (t."X_0" > 5.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" > 7.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" <= 5.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_3" > 2.500000) AND (t."X_2" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_3" <= 7.500000) AND (t."X_1" > 5.000000)) THEN 26 ELSE NULL END AS "Leaf_26"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.273333 AS "P_0", 0.326667 AS "P_1", 0.400000 AS "P_2", 2 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.449541 AS "P_1", 0.550459 AS "P_2", 2 AS "D", 0.550459 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.851852 AS "P_1", 0.148148 AS "P_2", 1 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.054545 AS "P_1", 0.945455 AS "P_2", 2 AS "D", 0.945455 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.111111 AS "P_1", 0.888889 AS "P_2", 2 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.833333 AS "P_2", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.214286 AS "P_1", 0.785714 AS "P_2", 2 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.100000 AS "P_1", 0.900000 AS "P_2", 2 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.142857 AS "P_1", 0.857143 AS "P_2", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
   ON t1.node_id = t2.nid
 ),
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1", scu."P_2" AS "P_2"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_4" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_Output_31" AS t
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
   CAST(NULL AS FLOAT) AS "Score_2"
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
    MAX( t."Proba_0", t."Proba_1", t."Proba_2" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2" ) AS "Max_Score"
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
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
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
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2" ) AS argmax_class_idx
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
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte