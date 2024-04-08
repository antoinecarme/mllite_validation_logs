WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
  FROM "BreastCancer_medium" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" > 0.160300)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_23" > 865.699951) AND (t."X_6" > 0.072140)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_23" > 865.699951) AND (t."X_6" <= 0.072140) AND (t."X_23" <= 970.750000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_23" > 865.699951) AND (t."X_6" <= 0.072140) AND (t."X_23" > 970.750000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_25" > 0.301100) AND (t."X_24" <= 0.137100)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_25" > 0.301100) AND (t."X_24" > 0.137100)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_25" <= 0.301100) AND (t."X_27" > 0.128500)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_25" <= 0.301100) AND (t."X_27" <= 0.128500) AND (t."X_26" <= 0.214550)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_25" <= 0.301100) AND (t."X_27" <= 0.128500) AND (t."X_26" > 0.214550) AND (t."X_23" <= 628.349976)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_25" <= 0.301100) AND (t."X_27" <= 0.128500) AND (t."X_26" > 0.214550) AND (t."X_23" > 628.349976)) THEN 18 ELSE NULL END AS "Leaf_18"
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
    SELECT 0 AS nid,  0.410156 AS "P_0", 0.589844 AS "P_1", 1 AS "D", 0.589844 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.079872 AS "P_0", 0.920128 AS "P_1", 1 AS "D", 0.920128 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.929648 AS "P_0", 0.070352 AS "P_1", 0 AS "D", 0.929648 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.027119 AS "P_0", 0.972881 AS "P_1", 1 AS "D", 0.972881 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.391304 AS "P_0", 0.608696 AS "P_1", 1 AS "D", 0.608696 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.007634 AS "P_0", 0.992366 AS "P_1", 1 AS "D", 0.992366 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.004000 AS "P_0", 0.996000 AS "P_1", 1 AS "D", 0.996000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.025000 AS "P_0", 0.975000 AS "P_1", 1 AS "D", 0.975000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" > 0.145550) AND (t."X_24" <= 0.149250)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" <= 0.145550) AND (t."X_27" > 0.110850) AND (t."X_27" <= 0.120350)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" <= 0.145550) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.120350)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" > 0.145550) AND (t."X_24" > 0.149250) AND (t."X_29" <= 0.106900)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" > 0.145550) AND (t."X_24" > 0.149250) AND (t."X_29" > 0.106900)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_23" > 936.200012) AND (t."X_23" <= 1017.000000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_23" > 936.200012) AND (t."X_23" > 1017.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" <= 0.145550) AND (t."X_27" <= 0.110850) AND (t."X_23" <= 648.699951)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" <= 0.145550) AND (t."X_27" <= 0.110850) AND (t."X_23" > 648.699951) AND (t."X_14" <= 0.006581)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" <= 0.145550) AND (t."X_27" <= 0.110850) AND (t."X_23" > 648.699951) AND (t."X_14" > 0.006581)) THEN 18 ELSE NULL END AS "Leaf_18"
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
    SELECT 0 AS nid,  0.363281 AS "P_0", 0.636719 AS "P_1", 1 AS "D", 0.636719 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.109890 AS "P_0", 0.890110 AS "P_1", 1 AS "D", 0.890110 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.986486 AS "P_0", 0.013514 AS "P_1", 0 AS "D", 0.986486 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.030581 AS "P_0", 0.969419 AS "P_1", 1 AS "D", 0.969419 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.810811 AS "P_0", 0.189189 AS "P_1", 0 AS "D", 0.810811 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.960000 AS "P_0", 0.040000 AS "P_1", 0 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.010239 AS "P_0", 0.989761 AS "P_1", 1 AS "D", 0.989761 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.205882 AS "P_0", 0.794118 AS "P_1", 1 AS "D", 0.794118 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.042254 AS "P_0", 0.957747 AS "P_1", 1 AS "D", 0.957747 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.142350) AND (t."X_16" <= 0.046660)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.142350) AND (t."X_16" > 0.046660)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_26" <= 0.216200)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_26" > 0.216200) AND (t."X_27" <= 0.115350)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.142350) AND (t."X_20" <= 14.485000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.142350) AND (t."X_20" > 14.485000) AND (t."X_27" > 0.120300)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.142350) AND (t."X_20" > 14.485000) AND (t."X_27" <= 0.120300) AND (t."X_5" > 0.058280)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.142350) AND (t."X_20" > 14.485000) AND (t."X_27" <= 0.120300) AND (t."X_5" <= 0.058280) AND (t."X_20" <= 15.065001)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.142350) AND (t."X_20" > 14.485000) AND (t."X_27" <= 0.120300) AND (t."X_5" <= 0.058280) AND (t."X_20" > 15.065001)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_26" > 0.216200) AND (t."X_27" > 0.115350) AND (t."X_20" <= 17.334999)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_26" > 0.216200) AND (t."X_27" > 0.115350) AND (t."X_20" > 17.334999)) THEN 20 ELSE NULL END AS "Leaf_20"
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
    SELECT 0 AS nid,  0.390625 AS "P_0", 0.609375 AS "P_1", 1 AS "D", 0.609375 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.091185 AS "P_0", 0.908815 AS "P_1", 1 AS "D", 0.908815 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.928962 AS "P_0", 0.071038 AS "P_1", 0 AS "D", 0.928962 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.032787 AS "P_0", 0.967213 AS "P_1", 1 AS "D", 0.967213 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.970930 AS "P_0", 0.029070 AS "P_1", 0 AS "D", 0.970930 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.987578 AS "P_0", 0.012422 AS "P_1", 0 AS "D", 0.987578 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.121951 AS "P_0", 0.878049 AS "P_1", 1 AS "D", 0.878049 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.073529 AS "P_0", 0.926471 AS "P_1", 1 AS "D", 0.926471 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.357143 AS "P_0", 0.642857 AS "P_1", 1 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.208333 AS "P_0", 0.791667 AS "P_1", 1 AS "D", 0.791667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.357143 AS "P_0", 0.642857 AS "P_1", 1 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" > 804.900024) AND (t."X_29" <= 0.073255)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" > 804.900024) AND (t."X_29" > 0.073255)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_27" > 0.151000) AND (t."X_13" <= 18.865000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_27" > 0.151000) AND (t."X_13" > 18.865000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" > 0.132350) AND (t."X_27" <= 0.139500)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" > 0.132350) AND (t."X_27" > 0.139500)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" <= 0.132350) AND (t."X_29" <= 0.062880) AND (t."X_3" <= 491.450012)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" <= 0.132350) AND (t."X_29" <= 0.062880) AND (t."X_3" > 491.450012)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" <= 0.132350) AND (t."X_29" > 0.062880) AND (t."X_13" > 36.480003)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" <= 0.132350) AND (t."X_29" > 0.062880) AND (t."X_13" <= 36.480003) AND (t."X_27" <= 0.093205)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" <= 0.132350) AND (t."X_29" > 0.062880) AND (t."X_13" <= 36.480003) AND (t."X_27" > 0.093205)) THEN 20 ELSE NULL END AS "Leaf_20"
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
    SELECT 0 AS nid,  0.351562 AS "P_0", 0.648438 AS "P_1", 1 AS "D", 0.648438 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.089385 AS "P_0", 0.910615 AS "P_1", 1 AS "D", 0.910615 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.961039 AS "P_0", 0.038961 AS "P_1", 0 AS "D", 0.961039 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.038806 AS "P_0", 0.961194 AS "P_1", 1 AS "D", 0.961194 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.826087 AS "P_0", 0.173913 AS "P_1", 0 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.022508 AS "P_0", 0.977492 AS "P_1", 1 AS "D", 0.977492 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.384615 AS "P_0", 0.615385 AS "P_1", 1 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.013793 AS "P_0", 0.986207 AS "P_1", 1 AS "D", 0.986207 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.007194 AS "P_0", 0.992806 AS "P_1", 1 AS "D", 0.992806 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.030769 AS "P_0", 0.969231 AS "P_1", 1 AS "D", 0.969231 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" > 0.160300) AND (t."X_27" <= 0.176100)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" > 0.160300) AND (t."X_27" > 0.176100)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_20" > 17.025002) AND (t."X_27" <= 0.114450)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" > 17.025002) AND (t."X_27" > 0.114450)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" <= 0.160300) AND (t."X_20" > 16.205000) AND (t."X_24" <= 0.118550)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" <= 0.160300) AND (t."X_20" > 16.205000) AND (t."X_24" > 0.118550)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" <= 0.160300) AND (t."X_20" <= 16.205000) AND (t."X_29" <= 0.061530)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" <= 0.160300) AND (t."X_20" <= 16.205000) AND (t."X_29" > 0.061530) AND (t."X_27" <= 0.133850)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" <= 0.160300) AND (t."X_20" <= 16.205000) AND (t."X_29" > 0.061530) AND (t."X_27" > 0.133850)) THEN 16 ELSE NULL END AS "Leaf_16"
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
    SELECT 0 AS nid,  0.392578 AS "P_0", 0.607422 AS "P_1", 1 AS "D", 0.607422 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.100592 AS "P_0", 0.899408 AS "P_1", 1 AS "D", 0.899408 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.959770 AS "P_0", 0.040230 AS "P_1", 0 AS "D", 0.959770 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.025974 AS "P_0", 0.974026 AS "P_1", 1 AS "D", 0.974026 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.866667 AS "P_0", 0.133333 AS "P_1", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.461538 AS "P_0", 0.538462 AS "P_1", 1 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.013889 AS "P_0", 0.986111 AS "P_1", 1 AS "D", 0.986111 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.007194 AS "P_0", 0.992806 AS "P_1", 1 AS "D", 0.992806 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
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