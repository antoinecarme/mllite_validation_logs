WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
  FROM "BreastCancer_quantized" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_24" <= 7.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_24" > 7.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_23" > 6.500000) AND (t."X_6" <= 4.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_23" > 6.500000) AND (t."X_6" > 4.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_23" <= 4.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_23" > 4.500000) AND (t."X_27" <= 5.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_23" > 4.500000) AND (t."X_27" > 5.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_28" <= 0.500000) AND (t."X_29" <= 1.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_28" <= 0.500000) AND (t."X_29" > 1.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_28" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_27" <= 0.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_28" > 0.500000) AND (t."X_29" <= 0.500000) AND (t."X_27" > 0.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_28" > 0.500000) AND (t."X_29" > 0.500000) AND (t."X_27" <= 4.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_28" > 0.500000) AND (t."X_29" > 0.500000) AND (t."X_27" > 4.500000)) THEN 24 ELSE NULL END AS "Leaf_24"
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
    SELECT 0 AS nid,  0.342707 AS "P_0", 0.657293 AS "P_1", 1 AS "D", 0.657293 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.129717 AS "P_0", 0.870283 AS "P_1", 1 AS "D", 0.870283 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.965517 AS "P_0", 0.034483 AS "P_1", 0 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.044855 AS "P_0", 0.955145 AS "P_1", 1 AS "D", 0.955145 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.844444 AS "P_0", 0.155556 AS "P_1", 0 AS "D", 0.844444 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.533333 AS "P_0", 0.466667 AS "P_1", 0 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.687500 AS "P_0", 0.312500 AS "P_1", 0 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.024138 AS "P_0", 0.975862 AS "P_1", 1 AS "D", 0.975862 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.112360 AS "P_0", 0.887640 AS "P_1", 1 AS "D", 0.887640 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.270270 AS "P_0", 0.729730 AS "P_1", 1 AS "D", 0.729730 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.450000 AS "P_0", 0.550000 AS "P_1", 1 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.011811 AS "P_0", 0.988189 AS "P_1", 1 AS "D", 0.988189 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.235294 AS "P_0", 0.764706 AS "P_1", 1 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.004505 AS "P_0", 0.995495 AS "P_1", 1 AS "D", 0.995495 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.029412 AS "P_0", 0.970588 AS "P_1", 1 AS "D", 0.970588 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_24" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_24" > 6.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_14" > 3.500000) AND (t."X_26" <= 5.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_14" > 3.500000) AND (t."X_26" > 5.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_23" > 6.500000) AND (t."X_5" <= 4.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_23" > 6.500000) AND (t."X_5" > 4.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_14" <= 3.500000) AND (t."X_29" <= 6.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_14" <= 3.500000) AND (t."X_29" > 6.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_29" <= 1.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 1.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_0" > 5.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_23" <= 3.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_23" > 3.500000)) THEN 24 ELSE NULL END AS "Leaf_24"
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
    SELECT 0 AS nid,  0.381371 AS "P_0", 0.618629 AS "P_1", 1 AS "D", 0.618629 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.145679 AS "P_0", 0.854321 AS "P_1", 1 AS "D", 0.854321 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.963415 AS "P_0", 0.036585 AS "P_1", 0 AS "D", 0.963415 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.065934 AS "P_0", 0.934066 AS "P_1", 1 AS "D", 0.934066 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.853659 AS "P_0", 0.146341 AS "P_1", 0 AS "D", 0.853659 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.538462 AS "P_0", 0.461538 AS "P_1", 0 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.028662 AS "P_0", 0.971338 AS "P_1", 1 AS "D", 0.971338 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.115385 AS "P_0", 0.884615 AS "P_1", 1 AS "D", 0.884615 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.011321 AS "P_0", 0.988679 AS "P_1", 1 AS "D", 0.988679 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.122449 AS "P_0", 0.877551 AS "P_1", 1 AS "D", 0.877551 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.004065 AS "P_0", 0.995935 AS "P_1", 1 AS "D", 0.995935 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.105263 AS "P_0", 0.894737 AS "P_1", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.015873 AS "P_0", 0.984127 AS "P_1", 1 AS "D", 0.984127 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" > 5.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" <= 5.500000) AND (t."X_27" <= 7.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" <= 5.500000) AND (t."X_27" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" <= 4.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" > 4.500000) AND (t."X_5" <= 6.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" > 4.500000) AND (t."X_5" > 6.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" <= 4.500000) AND (t."X_16" <= 2.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" <= 4.500000) AND (t."X_16" > 2.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_19" <= 1.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_19" > 1.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_28" > 0.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_28" <= 0.500000) AND (t."X_21" <= 2.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_28" <= 0.500000) AND (t."X_21" > 2.500000)) THEN 24 ELSE NULL END AS "Leaf_24"
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
    SELECT 0 AS nid,  0.363796 AS "P_0", 0.636204 AS "P_1", 1 AS "D", 0.636204 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.128329 AS "P_0", 0.871671 AS "P_1", 1 AS "D", 0.871671 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.987179 AS "P_0", 0.012821 AS "P_1", 0 AS "D", 0.987179 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.051075 AS "P_0", 0.948925 AS "P_1", 1 AS "D", 0.948925 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.829268 AS "P_0", 0.170732 AS "P_1", 0 AS "D", 0.829268 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.720000 AS "P_0", 0.280000 AS "P_1", 0 AS "D", 0.720000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.416667 AS "P_0", 0.583333 AS "P_1", 1 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.007168 AS "P_0", 0.992832 AS "P_1", 1 AS "D", 0.992832 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.182796 AS "P_0", 0.817204 AS "P_1", 1 AS "D", 0.817204 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.038462 AS "P_0", 0.961538 AS "P_1", 1 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.365854 AS "P_0", 0.634146 AS "P_1", 1 AS "D", 0.634146 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.206897 AS "P_0", 0.793103 AS "P_1", 1 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.095238 AS "P_0", 0.904762 AS "P_1", 1 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.894737 AS "P_0", 0.105263 AS "P_1", 0 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.060606 AS "P_0", 0.939394 AS "P_1", 1 AS "D", 0.939394 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" > 6.500000) AND (t."X_13" <= 7.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" > 6.500000) AND (t."X_13" > 7.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" <= 6.500000) AND (t."X_28" <= 4.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" <= 6.500000) AND (t."X_28" > 4.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" > 6.500000) AND (t."X_13" <= 2.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" > 6.500000) AND (t."X_13" > 2.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_14" <= 4.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_14" > 4.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" > 5.500000) AND (t."X_27" <= 6.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" > 5.500000) AND (t."X_27" > 6.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_13" > 6.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_13" <= 6.500000) AND (t."X_0" <= 3.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_13" <= 6.500000) AND (t."X_0" > 3.500000) AND (t."X_28" <= 4.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_13" <= 6.500000) AND (t."X_0" > 3.500000) AND (t."X_28" > 4.500000)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.398946 AS "P_0", 0.601054 AS "P_1", 1 AS "D", 0.601054 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.089855 AS "P_0", 0.910145 AS "P_1", 1 AS "D", 0.910145 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.031447 AS "P_0", 0.968553 AS "P_1", 1 AS "D", 0.968553 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.538462 AS "P_0", 0.461538 AS "P_1", 0 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.559322 AS "P_0", 0.440678 AS "P_1", 0 AS "D", 0.559322 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.987879 AS "P_0", 0.012121 AS "P_1", 0 AS "D", 0.987879 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.227273 AS "P_0", 0.772727 AS "P_1", 1 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.756757 AS "P_0", 0.243243 AS "P_1", 0 AS "D", 0.756757 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.913043 AS "P_0", 0.086957 AS "P_1", 0 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.011111 AS "P_0", 0.988889 AS "P_1", 1 AS "D", 0.988889 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.145833 AS "P_0", 0.854167 AS "P_1", 1 AS "D", 0.854167 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.007722 AS "P_0", 0.992278 AS "P_1", 1 AS "D", 0.992278 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.024096 AS "P_0", 0.975904 AS "P_1", 1 AS "D", 0.975904 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" <= 5.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" > 5.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_25" <= 3.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_25" > 3.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" <= 4.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" > 4.500000) AND (t."X_24" <= 5.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" > 4.500000) AND (t."X_24" > 5.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" <= 4.500000) AND (t."X_24" <= 1.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" <= 4.500000) AND (t."X_24" > 1.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_27" > 5.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_27" <= 5.500000) AND (t."X_25" > 0.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_27" <= 5.500000) AND (t."X_25" <= 0.500000) AND (t."X_26" <= 0.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_27" <= 5.500000) AND (t."X_25" <= 0.500000) AND (t."X_26" > 0.500000)) THEN 24 ELSE NULL END AS "Leaf_24"
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
    SELECT 0 AS nid,  0.381371 AS "P_0", 0.618629 AS "P_1", 1 AS "D", 0.618629 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.123737 AS "P_0", 0.876263 AS "P_1", 1 AS "D", 0.876263 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.971098 AS "P_0", 0.028902 AS "P_1", 0 AS "D", 0.971098 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.068120 AS "P_0", 0.931880 AS "P_1", 1 AS "D", 0.931880 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.827586 AS "P_0", 0.172414 AS "P_1", 0 AS "D", 0.827586 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.007634 AS "P_0", 0.992366 AS "P_1", 1 AS "D", 0.992366 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.219048 AS "P_0", 0.780952 AS "P_1", 1 AS "D", 0.780952 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.061224 AS "P_0", 0.938776 AS "P_1", 1 AS "D", 0.938776 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.357143 AS "P_0", 0.642857 AS "P_1", 1 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.611111 AS "P_0", 0.388889 AS "P_1", 0 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.236842 AS "P_0", 0.763158 AS "P_1", 1 AS "D", 0.763158 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.003984 AS "P_0", 0.996016 AS "P_1", 1 AS "D", 0.996016 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.019231 AS "P_0", 0.980769 AS "P_1", 1 AS "D", 0.980769 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
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