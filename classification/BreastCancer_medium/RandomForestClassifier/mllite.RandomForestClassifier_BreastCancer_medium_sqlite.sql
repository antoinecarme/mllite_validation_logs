WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" > 0.160300) AND (t."X_6" <= 0.293150)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" > 0.160300) AND (t."X_6" > 0.293150)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_23" > 865.699951) AND (t."X_6" > 0.072140)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_23" > 865.699951) AND (t."X_6" <= 0.072140) AND (t."X_25" > 0.162800) AND (t."X_15" <= 0.012025)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_23" > 865.699951) AND (t."X_6" <= 0.072140) AND (t."X_25" > 0.162800) AND (t."X_15" > 0.012025)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_23" > 865.699951) AND (t."X_6" <= 0.072140) AND (t."X_25" <= 0.162800) AND (t."X_15" <= 0.009452)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_23" > 865.699951) AND (t."X_6" <= 0.072140) AND (t."X_25" <= 0.162800) AND (t."X_15" > 0.009452) AND (t."X_27" <= 0.125850)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_23" > 865.699951) AND (t."X_6" <= 0.072140) AND (t."X_25" <= 0.162800) AND (t."X_15" > 0.009452) AND (t."X_27" > 0.125850)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_25" > 0.301100) AND (t."X_24" <= 0.140100)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_25" > 0.301100) AND (t."X_24" > 0.140100) AND (t."X_29" <= 0.103150)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_25" > 0.301100) AND (t."X_24" > 0.140100) AND (t."X_29" > 0.103150) AND (t."X_15" <= 0.031735)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_25" > 0.301100) AND (t."X_24" > 0.140100) AND (t."X_29" > 0.103150) AND (t."X_15" > 0.031735)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_25" <= 0.301100) AND (t."X_26" <= 0.214550)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_25" <= 0.301100) AND (t."X_26" > 0.214550) AND (t."X_15" <= 0.012390)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_25" <= 0.301100) AND (t."X_26" > 0.214550) AND (t."X_15" > 0.012390) AND (t."X_29" <= 0.068765)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_25" <= 0.301100) AND (t."X_26" > 0.214550) AND (t."X_15" > 0.012390) AND (t."X_29" > 0.068765)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.391304 AS "P_0", 0.608696 AS "P_1", 1 AS "D", 0.608696 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.007634 AS "P_0", 0.992366 AS "P_1", 1 AS "D", 0.992366 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.040816 AS "P_0", 0.959184 AS "P_1", 1 AS "D", 0.959184 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.020833 AS "P_0", 0.979167 AS "P_1", 1 AS "D", 0.979167 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" > 0.145550) AND (t."X_24" <= 0.135050) AND (t."X_29" <= 0.072555)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" > 0.145550) AND (t."X_24" <= 0.135050) AND (t."X_29" > 0.072555)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" > 0.145550) AND (t."X_24" > 0.135050) AND (t."X_23" <= 416.400024)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" > 0.145550) AND (t."X_24" > 0.135050) AND (t."X_23" > 416.400024) AND (t."X_29" > 0.102100)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" > 0.145550) AND (t."X_24" > 0.135050) AND (t."X_23" > 416.400024) AND (t."X_29" <= 0.102100) AND (t."X_23" <= 677.800049)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" > 0.145550) AND (t."X_24" > 0.135050) AND (t."X_23" > 416.400024) AND (t."X_29" <= 0.102100) AND (t."X_23" > 677.800049)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" <= 0.145550) AND (t."X_27" > 0.110850) AND (t."X_5" > 0.085300)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" <= 0.145550) AND (t."X_27" > 0.110850) AND (t."X_5" <= 0.085300) AND (t."X_29" <= 0.077920)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" <= 0.145550) AND (t."X_27" > 0.110850) AND (t."X_5" <= 0.085300) AND (t."X_29" > 0.077920)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" <= 0.145550) AND (t."X_27" <= 0.110850) AND (t."X_29" <= 0.057180)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_23" > 936.200012) AND (t."X_23" > 1017.000000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_23" > 936.200012) AND (t."X_23" <= 1017.000000) AND (t."X_29" <= 0.068080)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_23" > 936.200012) AND (t."X_23" <= 1017.000000) AND (t."X_29" > 0.068080)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" <= 0.145550) AND (t."X_27" <= 0.110850) AND (t."X_29" > 0.057180) AND (t."X_24" <= 0.141700)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" <= 0.145550) AND (t."X_27" <= 0.110850) AND (t."X_29" > 0.057180) AND (t."X_24" > 0.141700) AND (t."X_24" <= 0.142150)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_23" <= 936.200012) AND (t."X_27" <= 0.145550) AND (t."X_27" <= 0.110850) AND (t."X_29" > 0.057180) AND (t."X_24" > 0.141700) AND (t."X_24" > 0.142150)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 5 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.935484 AS "P_0", 0.064516 AS "P_1", 0 AS "D", 0.935484 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.966667 AS "P_0", 0.033333 AS "P_1", 0 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.010239 AS "P_0", 0.989761 AS "P_1", 1 AS "D", 0.989761 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.205882 AS "P_0", 0.794118 AS "P_1", 1 AS "D", 0.794118 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.006849 AS "P_0", 0.993151 AS "P_1", 1 AS "D", 0.993151 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.142350) AND (t."X_16" <= 0.116380)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.142350) AND (t."X_16" > 0.116380)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_26" <= 0.216200) AND (t."X_26" <= 0.160500)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_26" <= 0.216200) AND (t."X_26" > 0.160500) AND (t."X_20" <= 19.570000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_26" <= 0.216200) AND (t."X_26" > 0.160500) AND (t."X_20" > 19.570000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.142350) AND (t."X_29" <= 0.056735)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_26" > 0.216200) AND (t."X_20" > 17.719999)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_26" > 0.216200) AND (t."X_20" <= 17.719999) AND (t."X_28" <= 0.279350)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_26" > 0.216200) AND (t."X_20" <= 17.719999) AND (t."X_28" > 0.279350)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.056735) AND (t."X_26" <= 0.213800)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.056735) AND (t."X_26" > 0.213800) AND (t."X_5" <= 0.066670) AND (t."X_27" <= 0.071505)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.056735) AND (t."X_26" > 0.213800) AND (t."X_5" <= 0.066670) AND (t."X_27" > 0.071505)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.056735) AND (t."X_26" > 0.213800) AND (t."X_5" > 0.066670) AND (t."X_16" <= 0.017795)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.056735) AND (t."X_26" > 0.213800) AND (t."X_5" > 0.066670) AND (t."X_16" > 0.017795) AND (t."X_20" <= 15.990000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.056735) AND (t."X_26" > 0.213800) AND (t."X_5" > 0.066670) AND (t."X_16" > 0.017795) AND (t."X_20" > 15.990000) AND (t."X_16" > 0.053370)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.056735) AND (t."X_26" > 0.213800) AND (t."X_5" > 0.066670) AND (t."X_16" > 0.017795) AND (t."X_20" > 15.990000) AND (t."X_16" <= 0.053370) AND (t."X_29" > 0.082150)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.056735) AND (t."X_26" > 0.213800) AND (t."X_5" > 0.066670) AND (t."X_16" > 0.017795) AND (t."X_20" > 15.990000) AND (t."X_16" <= 0.053370) AND (t."X_29" <= 0.082150) AND (t."X_16" <= 0.024595)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.056735) AND (t."X_26" > 0.213800) AND (t."X_5" > 0.066670) AND (t."X_16" > 0.017795) AND (t."X_20" > 15.990000) AND (t."X_16" <= 0.053370) AND (t."X_29" <= 0.082150) AND (t."X_16" > 0.024595)) THEN 34 ELSE NULL END AS "Leaf_34"
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
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.970930 AS "P_0", 0.029070 AS "P_1", 0 AS "D", 0.970930 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.023179 AS "P_0", 0.976821 AS "P_1", 1 AS "D", 0.976821 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.093333 AS "P_0", 0.906667 AS "P_1", 1 AS "D", 0.906667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.042857 AS "P_0", 0.957143 AS "P_1", 1 AS "D", 0.957143 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.028986 AS "P_0", 0.971014 AS "P_1", 1 AS "D", 0.971014 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" > 804.900024) AND (t."X_8" <= 0.151650)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" > 804.900024) AND (t."X_8" > 0.151650) AND (t."X_28" <= 0.232050)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" > 804.900024) AND (t."X_8" > 0.151650) AND (t."X_28" > 0.232050)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_27" > 0.151000) AND (t."X_13" > 18.334999)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_27" > 0.151000) AND (t."X_13" <= 18.334999) AND (t."X_27" <= 0.213700)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_27" > 0.151000) AND (t."X_13" <= 18.334999) AND (t."X_27" > 0.213700)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" > 0.132350) AND (t."X_13" > 33.290001)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" > 0.132350) AND (t."X_13" <= 33.290001) AND (t."X_27" <= 0.133200)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" > 0.132350) AND (t."X_13" <= 33.290001) AND (t."X_27" > 0.133200) AND (t."X_8" > 0.168300)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" > 0.132350) AND (t."X_13" <= 33.290001) AND (t."X_27" > 0.133200) AND (t."X_8" <= 0.168300) AND (t."X_27" <= 0.137000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" > 0.132350) AND (t."X_13" <= 33.290001) AND (t."X_27" > 0.133200) AND (t."X_8" <= 0.168300) AND (t."X_27" > 0.137000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" <= 0.132350) AND (t."X_28" <= 0.163850)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" <= 0.132350) AND (t."X_28" > 0.163850) AND (t."X_13" > 35.855003) AND (t."X_27" > 0.111350)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" <= 0.132350) AND (t."X_28" > 0.163850) AND (t."X_13" > 35.855003) AND (t."X_27" <= 0.111350) AND (t."X_28" <= 0.321450)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" <= 0.132350) AND (t."X_28" > 0.163850) AND (t."X_13" > 35.855003) AND (t."X_27" <= 0.111350) AND (t."X_28" > 0.321450)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" <= 0.132350) AND (t."X_28" > 0.163850) AND (t."X_13" <= 35.855003) AND (t."X_26" <= 0.214550)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" <= 0.132350) AND (t."X_28" > 0.163850) AND (t."X_13" <= 35.855003) AND (t."X_26" > 0.214550) AND (t."X_5" > 0.059955)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" <= 0.132350) AND (t."X_28" > 0.163850) AND (t."X_13" <= 35.855003) AND (t."X_26" > 0.214550) AND (t."X_5" <= 0.059955) AND (t."X_29" <= 0.076325)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_27" <= 0.151000) AND (t."X_3" <= 804.900024) AND (t."X_27" <= 0.132350) AND (t."X_28" > 0.163850) AND (t."X_13" <= 35.855003) AND (t."X_26" > 0.214550) AND (t."X_5" <= 0.059955) AND (t."X_29" > 0.076325)) THEN 36 ELSE NULL END AS "Leaf_36"
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
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.022508 AS "P_0", 0.977492 AS "P_1", 1 AS "D", 0.977492 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.019355 AS "P_0", 0.980645 AS "P_1", 1 AS "D", 0.980645 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.006757 AS "P_0", 0.993243 AS "P_1", 1 AS "D", 0.993243 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.030769 AS "P_0", 0.969231 AS "P_1", 1 AS "D", 0.969231 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" > 0.160300) AND (t."X_20" <= 12.025000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" > 17.025002) AND (t."X_27" <= 0.104100) AND (t."X_8" <= 0.151150)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" > 17.025002) AND (t."X_27" <= 0.104100) AND (t."X_8" > 0.151150)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" > 0.160300) AND (t."X_20" > 12.025000) AND (t."X_27" > 0.171750)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" > 0.160300) AND (t."X_20" > 12.025000) AND (t."X_27" <= 0.171750) AND (t."X_27" <= 0.169050)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" > 0.160300) AND (t."X_20" > 12.025000) AND (t."X_27" <= 0.171750) AND (t."X_27" > 0.169050)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" <= 0.160300) AND (t."X_29" <= 0.055995)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" <= 0.160300) AND (t."X_29" > 0.055995) AND (t."X_24" > 0.178250) AND (t."X_29" <= 0.122850)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" <= 0.160300) AND (t."X_29" > 0.055995) AND (t."X_24" > 0.178250) AND (t."X_29" > 0.122850)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" <= 0.160300) AND (t."X_29" > 0.055995) AND (t."X_24" <= 0.178250) AND (t."X_20" <= 16.205000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" <= 0.160300) AND (t."X_29" > 0.055995) AND (t."X_24" <= 0.178250) AND (t."X_20" > 16.205000) AND (t."X_24" <= 0.124150)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" <= 0.160300) AND (t."X_29" > 0.055995) AND (t."X_24" <= 0.178250) AND (t."X_20" > 16.205000) AND (t."X_24" > 0.124150) AND (t."X_20" <= 16.619999)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_20" <= 17.025002) AND (t."X_27" <= 0.160300) AND (t."X_29" > 0.055995) AND (t."X_24" <= 0.178250) AND (t."X_20" > 16.205000) AND (t."X_24" > 0.124150) AND (t."X_20" > 16.619999)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_20" > 17.025002) AND (t."X_27" > 0.104100) AND (t."X_27" > 0.114450)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_20" > 17.025002) AND (t."X_27" > 0.104100) AND (t."X_27" <= 0.114450) AND (t."X_27" <= 0.111400)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_20" > 17.025002) AND (t."X_27" > 0.104100) AND (t."X_27" <= 0.114450) AND (t."X_27" > 0.111400)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.994012 AS "P_0", 0.005988 AS "P_1", 0 AS "D", 0.994012 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.019608 AS "P_0", 0.980392 AS "P_1", 1 AS "D", 0.980392 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.013245 AS "P_0", 0.986755 AS "P_1", 1 AS "D", 0.986755 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_13" <= 18.334999) AND (t."X_29" > 0.130150)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_13" <= 18.334999) AND (t."X_29" <= 0.130150) AND (t."X_27" <= 0.143800)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_13" <= 18.334999) AND (t."X_29" <= 0.130150) AND (t."X_27" > 0.143800) AND (t."X_16" <= 0.023940)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_13" <= 18.334999) AND (t."X_29" <= 0.130150) AND (t."X_27" > 0.143800) AND (t."X_16" > 0.023940)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_13" > 18.334999) AND (t."X_16" > 0.135650)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" > 0.113250) AND (t."X_29" <= 0.079965) AND (t."X_13" > 41.489998)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" > 0.113250) AND (t."X_29" <= 0.079965) AND (t."X_13" <= 41.489998) AND (t."X_11" <= 1.490000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" > 0.113250) AND (t."X_29" <= 0.079965) AND (t."X_13" <= 41.489998) AND (t."X_11" > 1.490000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" > 0.113250) AND (t."X_29" > 0.079965) AND (t."X_29" <= 0.095330)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" > 0.113250) AND (t."X_29" > 0.079965) AND (t."X_29" > 0.095330) AND (t."X_29" <= 0.098765)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" > 0.113250) AND (t."X_29" > 0.079965) AND (t."X_29" > 0.095330) AND (t."X_29" > 0.098765) AND (t."X_11" <= 0.626850)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" > 0.113250) AND (t."X_29" > 0.079965) AND (t."X_29" > 0.095330) AND (t."X_29" > 0.098765) AND (t."X_11" > 0.626850)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" <= 0.113250) AND (t."X_13" > 40.220001) AND (t."X_11" <= 1.707000) AND (t."X_29" <= 0.060180)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" <= 0.113250) AND (t."X_13" > 40.220001) AND (t."X_11" <= 1.707000) AND (t."X_29" > 0.060180) AND (t."X_29" <= 0.088300)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" <= 0.113250) AND (t."X_13" > 40.220001) AND (t."X_11" <= 1.707000) AND (t."X_29" > 0.060180) AND (t."X_29" > 0.088300)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" <= 0.113250) AND (t."X_13" > 40.220001) AND (t."X_11" > 1.707000) AND (t."X_11" <= 2.082500)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" <= 0.113250) AND (t."X_13" > 40.220001) AND (t."X_11" > 1.707000) AND (t."X_11" > 2.082500) AND (t."X_11" <= 2.199000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" <= 0.113250) AND (t."X_13" > 40.220001) AND (t."X_11" > 1.707000) AND (t."X_11" > 2.082500) AND (t."X_11" > 2.199000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" <= 0.113250) AND (t."X_13" <= 40.220001) AND (t."X_28" > 0.426300)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_13" > 18.334999) AND (t."X_16" <= 0.135650) AND (t."X_27" > 0.145450)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_13" > 18.334999) AND (t."X_16" <= 0.135650) AND (t."X_27" <= 0.145450) AND (t."X_11" <= 1.175500)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_13" > 18.334999) AND (t."X_16" <= 0.135650) AND (t."X_27" <= 0.145450) AND (t."X_11" > 1.175500)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" <= 0.113250) AND (t."X_13" <= 40.220001) AND (t."X_28" <= 0.426300) AND (t."X_27" <= 0.092980)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" <= 0.113250) AND (t."X_13" <= 40.220001) AND (t."X_28" <= 0.426300) AND (t."X_27" > 0.092980) AND (t."X_27" <= 0.094695)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_27" <= 0.113250) AND (t."X_13" <= 40.220001) AND (t."X_28" <= 0.426300) AND (t."X_27" > 0.092980) AND (t."X_27" > 0.094695)) THEN 48 ELSE NULL END AS "Leaf_48"
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
    SELECT 0 AS nid,  0.412109 AS "P_0", 0.587891 AS "P_1", 1 AS "D", 0.587891 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.103125 AS "P_0", 0.896875 AS "P_1", 1 AS "D", 0.896875 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.927083 AS "P_0", 0.072917 AS "P_1", 0 AS "D", 0.927083 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.983146 AS "P_0", 0.016854 AS "P_1", 0 AS "D", 0.983146 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.994318 AS "P_0", 0.005682 AS "P_1", 0 AS "D", 0.994318 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.060837 AS "P_0", 0.939164 AS "P_1", 1 AS "D", 0.939164 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.298246 AS "P_0", 0.701754 AS "P_1", 1 AS "D", 0.701754 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.684211 AS "P_0", 0.315789 AS "P_1", 0 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.105263 AS "P_0", 0.894737 AS "P_1", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.016667 AS "P_0", 0.983333 AS "P_1", 1 AS "D", 0.983333 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.521739 AS "P_0", 0.478261 AS "P_1", 0 AS "D", 0.521739 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.008403 AS "P_0", 0.991597 AS "P_1", 1 AS "D", 0.991597 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.044444 AS "P_0", 0.955556 AS "P_1", 1 AS "D", 0.955556 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_54" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.101950) AND (t."X_27" > 0.107600) AND (t."X_1" <= 19.365000) AND (t."X_27" <= 0.125150)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" <= 0.101950) AND (t."X_27" > 0.107600) AND (t."X_1" <= 19.365000) AND (t."X_27" > 0.125150) AND (t."X_26" <= 0.206100)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 0.101950) AND (t."X_27" > 0.107600) AND (t."X_1" <= 19.365000) AND (t."X_27" > 0.125150) AND (t."X_26" > 0.206100) AND (t."X_21" <= 19.750000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" <= 0.101950) AND (t."X_27" > 0.107600) AND (t."X_1" <= 19.365000) AND (t."X_27" > 0.125150) AND (t."X_26" > 0.206100) AND (t."X_21" > 19.750000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" > 0.101950) AND (t."X_21" > 27.270000) AND (t."X_24" <= 0.112950)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" > 0.101950) AND (t."X_21" > 27.270000) AND (t."X_24" > 0.112950) AND (t."X_27" > 0.132100)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" > 0.101950) AND (t."X_21" > 27.270000) AND (t."X_24" > 0.112950) AND (t."X_27" <= 0.132100) AND (t."X_8" <= 0.157900)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" > 0.101950) AND (t."X_21" > 27.270000) AND (t."X_24" > 0.112950) AND (t."X_27" <= 0.132100) AND (t."X_8" > 0.157900)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" > 0.101950) AND (t."X_21" <= 27.270000) AND (t."X_27" <= 0.159800) AND (t."X_26" <= 0.273650)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" > 0.101950) AND (t."X_21" <= 27.270000) AND (t."X_27" <= 0.159800) AND (t."X_26" > 0.273650) AND (t."X_29" > 0.082935)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" > 0.101950) AND (t."X_21" <= 27.270000) AND (t."X_27" <= 0.159800) AND (t."X_26" > 0.273650) AND (t."X_29" <= 0.082935) AND (t."X_8" <= 0.162950)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" > 0.101950) AND (t."X_21" <= 27.270000) AND (t."X_27" <= 0.159800) AND (t."X_26" > 0.273650) AND (t."X_29" <= 0.082935) AND (t."X_8" > 0.162950) AND (t."X_29" > 0.078215)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" > 0.101950) AND (t."X_21" <= 27.270000) AND (t."X_27" <= 0.159800) AND (t."X_26" > 0.273650) AND (t."X_29" <= 0.082935) AND (t."X_8" > 0.162950) AND (t."X_29" <= 0.078215) AND (t."X_8" <= 0.176150)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_5" > 0.101950) AND (t."X_21" <= 27.270000) AND (t."X_27" <= 0.159800) AND (t."X_26" > 0.273650) AND (t."X_29" <= 0.082935) AND (t."X_8" > 0.162950) AND (t."X_29" <= 0.078215) AND (t."X_8" > 0.176150)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_5" <= 0.101950) AND (t."X_27" <= 0.107600) AND (t."X_29" <= 0.055995)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" <= 0.101950) AND (t."X_27" > 0.107600) AND (t."X_1" > 19.365000) AND (t."X_21" <= 31.764999)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" <= 0.101950) AND (t."X_27" > 0.107600) AND (t."X_1" > 19.365000) AND (t."X_21" > 31.764999) AND (t."X_21" <= 32.320000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_5" <= 0.101950) AND (t."X_27" > 0.107600) AND (t."X_1" > 19.365000) AND (t."X_21" > 31.764999) AND (t."X_21" > 32.320000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_5" > 0.101950) AND (t."X_21" <= 27.270000) AND (t."X_27" > 0.159800) AND (t."X_24" <= 0.153350)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_5" > 0.101950) AND (t."X_21" <= 27.270000) AND (t."X_27" > 0.159800) AND (t."X_24" > 0.153350) AND (t."X_27" <= 0.191000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_5" > 0.101950) AND (t."X_21" <= 27.270000) AND (t."X_27" > 0.159800) AND (t."X_24" > 0.153350) AND (t."X_27" > 0.191000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_5" <= 0.101950) AND (t."X_27" <= 0.107600) AND (t."X_29" > 0.055995) AND (t."X_27" <= 0.065675)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_5" <= 0.101950) AND (t."X_27" <= 0.107600) AND (t."X_29" > 0.055995) AND (t."X_27" > 0.065675) AND (t."X_21" > 30.875000) AND (t."X_21" > 37.395000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_5" <= 0.101950) AND (t."X_27" <= 0.107600) AND (t."X_29" > 0.055995) AND (t."X_27" > 0.065675) AND (t."X_21" > 30.875000) AND (t."X_21" <= 37.395000) AND (t."X_26" <= 0.117800)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_5" <= 0.101950) AND (t."X_27" <= 0.107600) AND (t."X_29" > 0.055995) AND (t."X_27" > 0.065675) AND (t."X_21" > 30.875000) AND (t."X_21" <= 37.395000) AND (t."X_26" > 0.117800) AND (t."X_24" <= 0.143600)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_5" <= 0.101950) AND (t."X_27" <= 0.107600) AND (t."X_29" > 0.055995) AND (t."X_27" > 0.065675) AND (t."X_21" > 30.875000) AND (t."X_21" <= 37.395000) AND (t."X_26" > 0.117800) AND (t."X_24" > 0.143600)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_5" <= 0.101950) AND (t."X_27" <= 0.107600) AND (t."X_29" > 0.055995) AND (t."X_27" > 0.065675) AND (t."X_21" <= 30.875000) AND (t."X_26" <= 0.061755)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_5" <= 0.101950) AND (t."X_27" <= 0.107600) AND (t."X_29" > 0.055995) AND (t."X_27" > 0.065675) AND (t."X_21" <= 30.875000) AND (t."X_26" > 0.061755)) THEN 54 ELSE NULL END AS "Leaf_54"
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
    SELECT 0 AS nid,  0.367188 AS "P_0", 0.632812 AS "P_1", 1 AS "D", 0.632812 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.132653 AS "P_0", 0.867347 AS "P_1", 1 AS "D", 0.867347 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.683486 AS "P_0", 0.316514 AS "P_1", 0 AS "D", 0.683486 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.433962 AS "P_0", 0.566038 AS "P_1", 1 AS "D", 0.566038 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.919643 AS "P_0", 0.080357 AS "P_1", 0 AS "D", 0.919643 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.106061 AS "P_0", 0.893939 AS "P_1", 1 AS "D", 0.893939 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.975000 AS "P_0", 0.025000 AS "P_1", 0 AS "D", 0.975000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.042969 AS "P_0", 0.957031 AS "P_1", 1 AS "D", 0.957031 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.736842 AS "P_0", 0.263158 AS "P_1", 0 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.961538 AS "P_0", 0.038462 AS "P_1", 0 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.962617 AS "P_0", 0.037383 AS "P_1", 0 AS "D", 0.962617 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.259259 AS "P_0", 0.740741 AS "P_1", 1 AS "D", 0.740741 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.027778 AS "P_0", 0.972222 AS "P_1", 1 AS "D", 0.972222 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.060870 AS "P_0", 0.939130 AS "P_1", 1 AS "D", 0.939130 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.009615 AS "P_0", 0.990385 AS "P_1", 1 AS "D", 0.990385 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" <= 117.449997) AND (t."X_26" <= 0.313600) AND (t."X_27" <= 0.088455)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" <= 117.449997) AND (t."X_26" <= 0.313600) AND (t."X_27" > 0.088455) AND (t."X_26" <= 0.262400)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" <= 117.449997) AND (t."X_26" <= 0.313600) AND (t."X_27" > 0.088455) AND (t."X_26" > 0.262400) AND (t."X_10" <= 0.355150)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" <= 117.449997) AND (t."X_26" <= 0.313600) AND (t."X_27" > 0.088455) AND (t."X_26" > 0.262400) AND (t."X_10" > 0.355150)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" <= 117.449997) AND (t."X_26" > 0.313600) AND (t."X_1" <= 14.770000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" > 0.172450) AND (t."X_29" <= 0.117700)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" > 0.172450) AND (t."X_29" > 0.117700)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" <= 117.449997) AND (t."X_26" > 0.313600) AND (t."X_1" > 14.770000) AND (t."X_29" > 0.090485)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" <= 117.449997) AND (t."X_26" > 0.313600) AND (t."X_1" > 14.770000) AND (t."X_29" <= 0.090485) AND (t."X_10" <= 0.384750)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" <= 117.449997) AND (t."X_26" > 0.313600) AND (t."X_1" > 14.770000) AND (t."X_29" <= 0.090485) AND (t."X_10" > 0.384750)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.172450) AND (t."X_10" > 0.972550)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.172450) AND (t."X_10" <= 0.972550) AND (t."X_27" > 0.135050) AND (t."X_29" <= 0.078375)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.172450) AND (t."X_10" <= 0.972550) AND (t."X_27" > 0.135050) AND (t."X_29" > 0.078375) AND (t."X_10" <= 0.345650)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.172450) AND (t."X_10" <= 0.972550) AND (t."X_27" > 0.135050) AND (t."X_29" > 0.078375) AND (t."X_10" > 0.345650)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.172450) AND (t."X_10" <= 0.972550) AND (t."X_27" <= 0.135050) AND (t."X_10" > 0.643100) AND (t."X_10" <= 0.670750)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.172450) AND (t."X_10" <= 0.972550) AND (t."X_27" <= 0.135050) AND (t."X_10" > 0.643100) AND (t."X_10" > 0.670750)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" > 117.449997) AND (t."X_22" > 120.350006)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" > 117.449997) AND (t."X_22" <= 120.350006) AND (t."X_29" <= 0.069225)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" > 117.449997) AND (t."X_22" <= 120.350006) AND (t."X_29" > 0.069225)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.172450) AND (t."X_10" <= 0.972550) AND (t."X_27" <= 0.135050) AND (t."X_10" <= 0.643100) AND (t."X_27" <= 0.093225)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.172450) AND (t."X_10" <= 0.972550) AND (t."X_27" <= 0.135050) AND (t."X_10" <= 0.643100) AND (t."X_27" > 0.093225) AND (t."X_1" <= 21.170000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.172450) AND (t."X_10" <= 0.972550) AND (t."X_27" <= 0.135050) AND (t."X_10" <= 0.643100) AND (t."X_27" > 0.093225) AND (t."X_1" > 21.170000) AND (t."X_27" <= 0.111900)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.172450) AND (t."X_10" <= 0.972550) AND (t."X_27" <= 0.135050) AND (t."X_10" <= 0.643100) AND (t."X_27" > 0.093225) AND (t."X_1" > 21.170000) AND (t."X_27" > 0.111900)) THEN 44 ELSE NULL END AS "Leaf_44"
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
    SELECT 0 AS nid,  0.404297 AS "P_0", 0.595703 AS "P_1", 1 AS "D", 0.595703 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.041237 AS "P_0", 0.958763 AS "P_1", 1 AS "D", 0.958763 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.882353 AS "P_0", 0.117647 AS "P_1", 0 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.509804 AS "P_0", 0.490196 AS "P_1", 0 AS "D", 0.509804 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.994118 AS "P_0", 0.005882 AS "P_1", 0 AS "D", 0.994118 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.233333 AS "P_0", 0.766667 AS "P_1", 1 AS "D", 0.766667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.904762 AS "P_0", 0.095238 AS "P_1", 0 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.115385 AS "P_0", 0.884615 AS "P_1", 1 AS "D", 0.884615 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.021127 AS "P_0", 0.978873 AS "P_1", 1 AS "D", 0.978873 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.017668 AS "P_0", 0.982332 AS "P_1", 1 AS "D", 0.982332 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.010949 AS "P_0", 0.989051 AS "P_1", 1 AS "D", 0.989051 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.007380 AS "P_0", 0.992620 AS "P_1", 1 AS "D", 0.992620 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.035088 AS "P_0", 0.964912 AS "P_1", 1 AS "D", 0.964912 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_13" > 35.435001) AND (t."X_26" <= 0.223450) AND (t."X_25" <= 0.081710)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_13" > 35.435001) AND (t."X_26" > 0.223450) AND (t."X_27" <= 0.087930)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_13" > 35.435001) AND (t."X_26" > 0.223450) AND (t."X_27" > 0.087930) AND (t."X_29" <= 0.085975)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_13" > 35.435001) AND (t."X_26" > 0.223450) AND (t."X_27" > 0.087930) AND (t."X_29" > 0.085975)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_13" > 35.435001) AND (t."X_26" <= 0.223450) AND (t."X_25" > 0.081710) AND (t."X_28" > 0.323550)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_26" > 1.178500)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_26" <= 1.178500) AND (t."X_13" <= 13.930000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_13" > 35.435001) AND (t."X_26" <= 0.223450) AND (t."X_25" > 0.081710) AND (t."X_28" <= 0.323550) AND (t."X_5" > 0.069395)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_13" > 35.435001) AND (t."X_26" <= 0.223450) AND (t."X_25" > 0.081710) AND (t."X_28" <= 0.323550) AND (t."X_5" <= 0.069395) AND (t."X_5" <= 0.062535)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_13" > 35.435001) AND (t."X_26" <= 0.223450) AND (t."X_25" > 0.081710) AND (t."X_28" <= 0.323550) AND (t."X_5" <= 0.069395) AND (t."X_5" > 0.062535)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_13" <= 35.435001) AND (t."X_28" > 0.426300)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_26" <= 1.178500) AND (t."X_13" > 13.930000) AND (t."X_28" > 0.270200)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_26" <= 1.178500) AND (t."X_13" > 13.930000) AND (t."X_28" <= 0.270200) AND (t."X_29" <= 0.076410)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_26" <= 1.178500) AND (t."X_13" > 13.930000) AND (t."X_28" <= 0.270200) AND (t."X_29" > 0.076410) AND (t."X_13" <= 29.580000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_26" <= 1.178500) AND (t."X_13" > 13.930000) AND (t."X_28" <= 0.270200) AND (t."X_29" > 0.076410) AND (t."X_13" > 29.580000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_13" <= 35.435001) AND (t."X_28" <= 0.426300) AND (t."X_28" > 0.340600) AND (t."X_28" <= 0.350950)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_13" <= 35.435001) AND (t."X_28" <= 0.426300) AND (t."X_28" > 0.340600) AND (t."X_28" > 0.350950)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_13" <= 35.435001) AND (t."X_28" <= 0.426300) AND (t."X_28" <= 0.340600) AND (t."X_4" <= 0.078680) AND (t."X_4" <= 0.078290)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_13" <= 35.435001) AND (t."X_28" <= 0.426300) AND (t."X_28" <= 0.340600) AND (t."X_4" <= 0.078680) AND (t."X_4" > 0.078290)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_13" <= 35.435001) AND (t."X_28" <= 0.426300) AND (t."X_28" <= 0.340600) AND (t."X_4" > 0.078680) AND (t."X_29" <= 0.102350)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_13" <= 35.435001) AND (t."X_28" <= 0.426300) AND (t."X_28" <= 0.340600) AND (t."X_4" > 0.078680) AND (t."X_29" > 0.102350) AND (t."X_29" <= 0.103150)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_13" <= 35.435001) AND (t."X_28" <= 0.426300) AND (t."X_28" <= 0.340600) AND (t."X_4" > 0.078680) AND (t."X_29" > 0.102350) AND (t."X_29" > 0.103150)) THEN 42 ELSE NULL END AS "Leaf_42"
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
    SELECT 0 AS nid,  0.398438 AS "P_0", 0.601562 AS "P_1", 1 AS "D", 0.601562 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.111446 AS "P_0", 0.888554 AS "P_1", 1 AS "D", 0.888554 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.927778 AS "P_0", 0.072222 AS "P_1", 0 AS "D", 0.927778 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.025271 AS "P_0", 0.974729 AS "P_1", 1 AS "D", 0.974729 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.178571 AS "P_0", 0.821429 AS "P_1", 1 AS "D", 0.821429 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.925926 AS "P_0", 0.074074 AS "P_1", 0 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.115385 AS "P_0", 0.884615 AS "P_1", 1 AS "D", 0.884615 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.961538 AS "P_0", 0.038462 AS "P_1", 0 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.080000 AS "P_0", 0.920000 AS "P_1", 1 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.943503 AS "P_0", 0.056497 AS "P_1", 0 AS "D", 0.943503 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.970930 AS "P_0", 0.029070 AS "P_1", 0 AS "D", 0.970930 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.018182 AS "P_0", 0.981818 AS "P_1", 1 AS "D", 0.981818 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.861111 AS "P_0", 0.138889 AS "P_1", 0 AS "D", 0.861111 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.011321 AS "P_0", 0.988679 AS "P_1", 1 AS "D", 0.988679 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.064516 AS "P_0", 0.935484 AS "P_1", 1 AS "D", 0.935484 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.004274 AS "P_0", 0.995726 AS "P_1", 1 AS "D", 0.995726 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_2" <= 71.815002)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_10" > 0.378650) AND (t."X_29" > 0.084625)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_10" > 0.378650) AND (t."X_29" <= 0.084625) AND (t."X_2" > 90.604996) AND (t."X_2" > 107.949997)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_10" > 0.378650) AND (t."X_29" <= 0.084625) AND (t."X_2" > 90.604996) AND (t."X_2" <= 107.949997) AND (t."X_27" <= 0.139850)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_10" > 0.378650) AND (t."X_29" <= 0.084625) AND (t."X_2" > 90.604996) AND (t."X_2" <= 107.949997) AND (t."X_27" > 0.139850)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_10" > 0.378650) AND (t."X_29" <= 0.084625) AND (t."X_2" <= 90.604996) AND (t."X_25" > 0.081710)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_10" > 0.378650) AND (t."X_29" <= 0.084625) AND (t."X_2" <= 90.604996) AND (t."X_25" <= 0.081710) AND (t."X_2" <= 76.645004)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_10" > 0.378650) AND (t."X_29" <= 0.084625) AND (t."X_2" <= 90.604996) AND (t."X_25" <= 0.081710) AND (t."X_2" > 76.645004)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_10" <= 0.378650) AND (t."X_2" > 98.474998) AND (t."X_2" <= 101.000000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_10" <= 0.378650) AND (t."X_2" > 98.474998) AND (t."X_2" > 101.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_2" > 71.815002) AND (t."X_26" <= 0.206100)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_2" > 71.815002) AND (t."X_26" > 0.206100) AND (t."X_10" <= 0.178400)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_10" <= 0.378650) AND (t."X_2" <= 98.474998) AND (t."X_26" <= 0.378750)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_10" <= 0.378650) AND (t."X_2" <= 98.474998) AND (t."X_26" > 0.378750) AND (t."X_29" <= 0.080370)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_10" <= 0.378650) AND (t."X_2" <= 98.474998) AND (t."X_26" > 0.378750) AND (t."X_29" > 0.080370)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_2" > 71.815002) AND (t."X_26" > 0.206100) AND (t."X_10" > 0.178400) AND (t."X_10" <= 0.206950) AND (t."X_2" <= 85.184998)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_2" > 71.815002) AND (t."X_26" > 0.206100) AND (t."X_10" > 0.178400) AND (t."X_10" <= 0.206950) AND (t."X_2" > 85.184998)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_2" > 71.815002) AND (t."X_26" > 0.206100) AND (t."X_10" > 0.178400) AND (t."X_10" > 0.206950) AND (t."X_10" > 0.241250)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_2" > 71.815002) AND (t."X_26" > 0.206100) AND (t."X_10" > 0.178400) AND (t."X_10" > 0.206950) AND (t."X_10" <= 0.241250) AND (t."X_2" <= 93.785004)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_2" > 71.815002) AND (t."X_26" > 0.206100) AND (t."X_10" > 0.178400) AND (t."X_10" > 0.206950) AND (t."X_10" <= 0.241250) AND (t."X_2" > 93.785004)) THEN 38 ELSE NULL END AS "Leaf_38"
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
    SELECT 0 AS nid,  0.394531 AS "P_0", 0.605469 AS "P_1", 1 AS "D", 0.605469 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.070552 AS "P_0", 0.929448 AS "P_1", 1 AS "D", 0.929448 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.962366 AS "P_0", 0.037634 AS "P_1", 0 AS "D", 0.962366 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.978142 AS "P_0", 0.021858 AS "P_1", 0 AS "D", 0.978142 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.021505 AS "P_0", 0.978495 AS "P_1", 1 AS "D", 0.978495 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.361702 AS "P_0", 0.638298 AS "P_1", 1 AS "D", 0.638298 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.472222 AS "P_0", 0.527778 AS "P_1", 1 AS "D", 0.527778 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.007407 AS "P_0", 0.992593 AS "P_1", 1 AS "D", 0.992593 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.983516 AS "P_0", 0.016484 AS "P_1", 0 AS "D", 0.983516 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.988950 AS "P_0", 0.011050 AS "P_1", 0 AS "D", 0.988950 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.994382 AS "P_0", 0.005618 AS "P_1", 0 AS "D", 0.994382 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 98.430000) AND (t."X_11" > 0.519650)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" > 98.430000) AND (t."X_11" <= 0.519650) AND (t."X_29" <= 0.070840)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" > 98.430000) AND (t."X_11" <= 0.519650) AND (t."X_29" > 0.070840)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" <= 98.430000) AND (t."X_27" > 0.156300) AND (t."X_21" > 24.605000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" <= 98.430000) AND (t."X_27" > 0.156300) AND (t."X_21" <= 24.605000) AND (t."X_2" <= 86.849998)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" <= 98.430000) AND (t."X_27" > 0.156300) AND (t."X_21" <= 24.605000) AND (t."X_2" > 86.849998)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" <= 98.430000) AND (t."X_27" <= 0.156300) AND (t."X_27" <= 0.118250)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" <= 98.430000) AND (t."X_27" <= 0.156300) AND (t."X_27" > 0.118250) AND (t."X_29" <= 0.081370) AND (t."X_2" <= 87.610001)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" <= 98.430000) AND (t."X_27" <= 0.156300) AND (t."X_27" > 0.118250) AND (t."X_29" > 0.081370) AND (t."X_28" <= 0.344950)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" <= 98.430000) AND (t."X_27" <= 0.156300) AND (t."X_27" > 0.118250) AND (t."X_29" > 0.081370) AND (t."X_28" > 0.344950)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" <= 98.430000) AND (t."X_27" <= 0.156300) AND (t."X_27" > 0.118250) AND (t."X_29" <= 0.081370) AND (t."X_2" > 87.610001) AND (t."X_21" > 28.225000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" <= 98.430000) AND (t."X_27" <= 0.156300) AND (t."X_27" > 0.118250) AND (t."X_29" <= 0.081370) AND (t."X_2" > 87.610001) AND (t."X_21" <= 28.225000) AND (t."X_29" <= 0.078215)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_2" <= 98.430000) AND (t."X_27" <= 0.156300) AND (t."X_27" > 0.118250) AND (t."X_29" <= 0.081370) AND (t."X_2" > 87.610001) AND (t."X_21" <= 28.225000) AND (t."X_29" > 0.078215)) THEN 24 ELSE NULL END AS "Leaf_24"
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
    SELECT 0 AS nid,  0.333984 AS "P_0", 0.666016 AS "P_1", 1 AS "D", 0.666016 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.101333 AS "P_0", 0.898667 AS "P_1", 1 AS "D", 0.898667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.970803 AS "P_0", 0.029197 AS "P_1", 0 AS "D", 0.970803 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.031700 AS "P_0", 0.968300 AS "P_1", 1 AS "D", 0.968300 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.964286 AS "P_0", 0.035714 AS "P_1", 0 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.282051 AS "P_0", 0.717949 AS "P_1", 1 AS "D", 0.717949 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.074074 AS "P_0", 0.925926 AS "P_1", 1 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_29", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" > 0.142350) AND (t."X_4" <= 0.090575)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" > 0.142350) AND (t."X_4" > 0.090575) AND (t."X_29" > 0.085095)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" > 0.142350) AND (t."X_4" > 0.090575) AND (t."X_29" <= 0.085095) AND (t."X_4" <= 0.095850)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" > 0.142350) AND (t."X_4" > 0.090575) AND (t."X_29" <= 0.085095) AND (t."X_4" > 0.095850)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_20" > 16.980000) AND (t."X_5" > 0.084895)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" > 16.980000) AND (t."X_5" <= 0.084895) AND (t."X_28" <= 0.253850)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_20" > 16.980000) AND (t."X_5" <= 0.084895) AND (t."X_28" > 0.253850) AND (t."X_15" <= 0.015045)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" > 16.980000) AND (t."X_5" <= 0.084895) AND (t."X_28" > 0.253850) AND (t."X_15" > 0.015045) AND (t."X_29" <= 0.073640)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_20" > 16.980000) AND (t."X_5" <= 0.084895) AND (t."X_28" > 0.253850) AND (t."X_15" > 0.015045) AND (t."X_29" > 0.073640)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" <= 0.142350) AND (t."X_29" <= 0.055995)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_20" > 16.799999) AND (t."X_5" <= 0.122000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_20" > 16.799999) AND (t."X_5" > 0.122000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_20" <= 16.799999) AND (t."X_27" > 0.111000) AND (t."X_5" <= 0.067800)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_20" <= 16.799999) AND (t."X_27" > 0.111000) AND (t."X_5" > 0.067800) AND (t."X_29" <= 0.068815)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_20" <= 16.799999) AND (t."X_27" > 0.111000) AND (t."X_5" > 0.067800) AND (t."X_29" > 0.068815) AND (t."X_24" <= 0.145850)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_20" <= 16.799999) AND (t."X_27" > 0.111000) AND (t."X_5" > 0.067800) AND (t."X_29" > 0.068815) AND (t."X_24" > 0.145850) AND (t."X_29" <= 0.082550)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_20" <= 16.799999) AND (t."X_27" > 0.111000) AND (t."X_5" > 0.067800) AND (t."X_29" > 0.068815) AND (t."X_24" > 0.145850) AND (t."X_29" > 0.082550)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_20" <= 16.799999) AND (t."X_27" <= 0.111000) AND (t."X_28" <= 0.198250) AND (t."X_15" > 0.011925)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_20" <= 16.799999) AND (t."X_27" <= 0.111000) AND (t."X_28" <= 0.198250) AND (t."X_15" <= 0.011925) AND (t."X_5" <= 0.048440)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_20" <= 16.799999) AND (t."X_27" <= 0.111000) AND (t."X_28" <= 0.198250) AND (t."X_15" <= 0.011925) AND (t."X_5" > 0.048440)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_20" <= 16.799999) AND (t."X_27" <= 0.111000) AND (t."X_28" > 0.198250) AND (t."X_27" <= 0.093205)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_20" <= 16.799999) AND (t."X_27" <= 0.111000) AND (t."X_28" > 0.198250) AND (t."X_27" > 0.093205) AND (t."X_27" <= 0.093610)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_20" <= 16.980000) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_20" <= 16.799999) AND (t."X_27" <= 0.111000) AND (t."X_28" > 0.198250) AND (t."X_27" > 0.093205) AND (t."X_27" > 0.093610)) THEN 44 ELSE NULL END AS "Leaf_44"
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
    SELECT 0 AS nid,  0.371094 AS "P_0", 0.628906 AS "P_1", 1 AS "D", 0.628906 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.081633 AS "P_0", 0.918367 AS "P_1", 1 AS "D", 0.918367 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.958580 AS "P_0", 0.041420 AS "P_1", 0 AS "D", 0.958580 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.028302 AS "P_0", 0.971698 AS "P_1", 1 AS "D", 0.971698 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.760000 AS "P_0", 0.240000 AS "P_1", 0 AS "D", 0.760000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.904762 AS "P_0", 0.095238 AS "P_1", 0 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.022152 AS "P_0", 0.977848 AS "P_1", 1 AS "D", 0.977848 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.016026 AS "P_0", 0.983974 AS "P_1", 1 AS "D", 0.983974 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.007042 AS "P_0", 0.992958 AS "P_1", 1 AS "D", 0.992958 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.107143 AS "P_0", 0.892857 AS "P_1", 1 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.074074 AS "P_0", 0.925926 AS "P_1", 1 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.038462 AS "P_0", 0.961538 AS "P_1", 1 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.003650 AS "P_0", 0.996350 AS "P_1", 1 AS "D", 0.996350 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.024390 AS "P_0", 0.975610 AS "P_1", 1 AS "D", 0.975610 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 888.849976) AND (t."X_27" > 0.160300) AND (t."X_23" > 656.300049)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_23" <= 888.849976) AND (t."X_27" > 0.160300) AND (t."X_23" <= 656.300049) AND (t."X_29" <= 0.102300)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_23" <= 888.849976) AND (t."X_27" > 0.160300) AND (t."X_23" <= 656.300049) AND (t."X_29" > 0.102300)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_23" > 888.849976) AND (t."X_20" > 18.224998)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_23" > 888.849976) AND (t."X_20" <= 18.224998) AND (t."X_1" > 19.485001)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_23" > 888.849976) AND (t."X_20" <= 18.224998) AND (t."X_1" <= 19.485001) AND (t."X_29" <= 0.090065)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_23" > 888.849976) AND (t."X_20" <= 18.224998) AND (t."X_1" <= 19.485001) AND (t."X_29" > 0.090065)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_23" <= 888.849976) AND (t."X_27" <= 0.160300) AND (t."X_27" > 0.134900) AND (t."X_27" <= 0.137650)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_23" <= 888.849976) AND (t."X_27" <= 0.160300) AND (t."X_27" > 0.134900) AND (t."X_27" > 0.137650) AND (t."X_1" > 20.785000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_23" <= 888.849976) AND (t."X_27" <= 0.160300) AND (t."X_27" > 0.134900) AND (t."X_27" > 0.137650) AND (t."X_1" <= 20.785000) AND (t."X_27" > 0.139500)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_23" <= 888.849976) AND (t."X_27" <= 0.160300) AND (t."X_27" > 0.134900) AND (t."X_27" > 0.137650) AND (t."X_1" <= 20.785000) AND (t."X_27" <= 0.139500) AND (t."X_18" <= 0.013055)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_23" <= 888.849976) AND (t."X_27" <= 0.160300) AND (t."X_27" > 0.134900) AND (t."X_27" > 0.137650) AND (t."X_1" <= 20.785000) AND (t."X_27" <= 0.139500) AND (t."X_18" > 0.013055)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_23" <= 888.849976) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.134900) AND (t."X_18" <= 0.009216)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_23" <= 888.849976) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.134900) AND (t."X_18" > 0.009216) AND (t."X_27" > 0.111200) AND (t."X_29" <= 0.068815)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_23" <= 888.849976) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.134900) AND (t."X_18" > 0.009216) AND (t."X_27" > 0.111200) AND (t."X_29" > 0.068815)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_23" <= 888.849976) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.134900) AND (t."X_18" > 0.009216) AND (t."X_27" <= 0.111200) AND (t."X_18" > 0.015775)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_23" <= 888.849976) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.134900) AND (t."X_18" > 0.009216) AND (t."X_27" <= 0.111200) AND (t."X_18" <= 0.015775) AND (t."X_18" <= 0.015715)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_23" <= 888.849976) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.134900) AND (t."X_18" > 0.009216) AND (t."X_27" <= 0.111200) AND (t."X_18" <= 0.015775) AND (t."X_18" > 0.015715)) THEN 34 ELSE NULL END AS "Leaf_34"
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
    SELECT 0 AS nid,  0.357422 AS "P_0", 0.642578 AS "P_1", 1 AS "D", 0.642578 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.090395 AS "P_0", 0.909605 AS "P_1", 1 AS "D", 0.909605 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.955696 AS "P_0", 0.044304 AS "P_1", 0 AS "D", 0.955696 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.036036 AS "P_0", 0.963964 AS "P_1", 1 AS "D", 0.963964 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.013245 AS "P_0", 0.986755 AS "P_1", 1 AS "D", 0.986755 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.258065 AS "P_0", 0.741935 AS "P_1", 1 AS "D", 0.741935 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.148148 AS "P_0", 0.851852 AS "P_1", 1 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.041667 AS "P_0", 0.958333 AS "P_1", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.009967 AS "P_0", 0.990033 AS "P_1", 1 AS "D", 0.990033 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.003636 AS "P_0", 0.996364 AS "P_1", 1 AS "D", 0.996364 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.013158 AS "P_0", 0.986842 AS "P_1", 1 AS "D", 0.986842 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_27", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 0.142000) AND (t."X_7" <= 0.044685)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_27" <= 0.142000) AND (t."X_28" <= 0.169300)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_27" <= 0.142000) AND (t."X_28" > 0.169300) AND (t."X_0" > 15.055000) AND (t."X_1" > 19.735001)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_27" <= 0.142000) AND (t."X_28" > 0.169300) AND (t."X_0" > 15.055000) AND (t."X_1" <= 19.735001) AND (t."X_26" <= 0.236850)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_27" <= 0.142000) AND (t."X_28" > 0.169300) AND (t."X_0" > 15.055000) AND (t."X_1" <= 19.735001) AND (t."X_26" > 0.236850)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_27" > 0.142000) AND (t."X_7" > 0.044685) AND (t."X_27" <= 0.145450) AND (t."X_1" <= 20.119999)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_27" > 0.142000) AND (t."X_7" > 0.044685) AND (t."X_27" <= 0.145450) AND (t."X_1" > 20.119999)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" <= 0.142000) AND (t."X_28" > 0.169300) AND (t."X_0" <= 15.055000) AND (t."X_28" <= 0.198250) AND (t."X_27" <= 0.067280)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" <= 0.142000) AND (t."X_28" > 0.169300) AND (t."X_0" <= 15.055000) AND (t."X_28" <= 0.198250) AND (t."X_27" > 0.067280) AND (t."X_1" <= 22.994999)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_27" <= 0.142000) AND (t."X_28" > 0.169300) AND (t."X_0" <= 15.055000) AND (t."X_28" <= 0.198250) AND (t."X_27" > 0.067280) AND (t."X_1" > 22.994999)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_27" <= 0.142000) AND (t."X_28" > 0.169300) AND (t."X_0" <= 15.055000) AND (t."X_28" > 0.198250) AND (t."X_27" <= 0.093225)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_27" <= 0.142000) AND (t."X_28" > 0.169300) AND (t."X_0" <= 15.055000) AND (t."X_28" > 0.198250) AND (t."X_27" > 0.093225) AND (t."X_27" <= 0.093610)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" <= 0.142000) AND (t."X_28" > 0.169300) AND (t."X_0" <= 15.055000) AND (t."X_28" > 0.198250) AND (t."X_27" > 0.093225) AND (t."X_27" > 0.093610) AND (t."X_0" <= 13.350000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_27" <= 0.142000) AND (t."X_28" > 0.169300) AND (t."X_0" <= 15.055000) AND (t."X_28" > 0.198250) AND (t."X_27" > 0.093225) AND (t."X_27" > 0.093610) AND (t."X_0" > 13.350000) AND (t."X_29" > 0.075905)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_27" <= 0.142000) AND (t."X_28" > 0.169300) AND (t."X_0" <= 15.055000) AND (t."X_28" > 0.198250) AND (t."X_27" > 0.093225) AND (t."X_27" > 0.093610) AND (t."X_0" > 13.350000) AND (t."X_29" <= 0.075905) AND (t."X_27" <= 0.106450)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_27" <= 0.142000) AND (t."X_28" > 0.169300) AND (t."X_0" <= 15.055000) AND (t."X_28" > 0.198250) AND (t."X_27" > 0.093225) AND (t."X_27" > 0.093610) AND (t."X_0" > 13.350000) AND (t."X_29" <= 0.075905) AND (t."X_27" > 0.106450)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_27" > 0.142000) AND (t."X_7" > 0.044685) AND (t."X_27" > 0.145450) AND (t."X_27" > 0.171200)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_27" > 0.142000) AND (t."X_7" > 0.044685) AND (t."X_27" > 0.145450) AND (t."X_27" <= 0.171200) AND (t."X_26" > 0.474700) AND (t."X_29" <= 0.133050)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_27" > 0.142000) AND (t."X_7" > 0.044685) AND (t."X_27" > 0.145450) AND (t."X_27" <= 0.171200) AND (t."X_26" > 0.474700) AND (t."X_29" > 0.133050)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_27" > 0.142000) AND (t."X_7" > 0.044685) AND (t."X_27" > 0.145450) AND (t."X_27" <= 0.171200) AND (t."X_26" <= 0.474700) AND (t."X_7" > 0.055670)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_27" > 0.142000) AND (t."X_7" > 0.044685) AND (t."X_27" > 0.145450) AND (t."X_27" <= 0.171200) AND (t."X_26" <= 0.474700) AND (t."X_7" <= 0.055670) AND (t."X_1" <= 17.654999)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_27" > 0.142000) AND (t."X_7" > 0.044685) AND (t."X_27" > 0.145450) AND (t."X_27" <= 0.171200) AND (t."X_26" <= 0.474700) AND (t."X_7" <= 0.055670) AND (t."X_1" > 17.654999)) THEN 42 ELSE NULL END AS "Leaf_42"
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
    SELECT 0 AS nid,  0.423828 AS "P_0", 0.576172 AS "P_1", 1 AS "D", 0.576172 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.955882 AS "P_0", 0.044118 AS "P_1", 0 AS "D", 0.955882 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.975000 AS "P_0", 0.025000 AS "P_1", 0 AS "D", 0.975000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.062295 AS "P_0", 0.937705 AS "P_1", 1 AS "D", 0.937705 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.031142 AS "P_0", 0.968858 AS "P_1", 1 AS "D", 0.968858 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.984456 AS "P_0", 0.015544 AS "P_1", 0 AS "D", 0.984456 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.021818 AS "P_0", 0.978182 AS "P_1", 1 AS "D", 0.978182 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.080000 AS "P_0", 0.920000 AS "P_1", 1 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.054795 AS "P_0", 0.945205 AS "P_1", 1 AS "D", 0.945205 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.943396 AS "P_0", 0.056604 AS "P_1", 0 AS "D", 0.943396 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.980000 AS "P_0", 0.020000 AS "P_1", 0 AS "D", 0.980000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" > 784.150024) AND (t."X_26" <= 0.260500) AND (t."X_29" > 0.072290) AND (t."X_23" <= 1039.099976)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_23" > 784.150024) AND (t."X_26" <= 0.260500) AND (t."X_29" > 0.072290) AND (t."X_23" > 1039.099976)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_23" > 784.150024) AND (t."X_26" <= 0.260500) AND (t."X_29" <= 0.072290) AND (t."X_26" <= 0.182050) AND (t."X_27" <= 0.082880)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_23" > 784.150024) AND (t."X_26" <= 0.260500) AND (t."X_29" <= 0.072290) AND (t."X_26" <= 0.182050) AND (t."X_27" > 0.082880)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_23" > 784.150024) AND (t."X_26" <= 0.260500) AND (t."X_29" <= 0.072290) AND (t."X_26" > 0.182050) AND (t."X_24" <= 0.113650)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_23" > 784.150024) AND (t."X_26" <= 0.260500) AND (t."X_29" <= 0.072290) AND (t."X_26" > 0.182050) AND (t."X_24" > 0.113650) AND (t."X_6" <= 0.067600)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_23" > 784.150024) AND (t."X_26" <= 0.260500) AND (t."X_29" <= 0.072290) AND (t."X_26" > 0.182050) AND (t."X_24" > 0.113650) AND (t."X_6" > 0.067600)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_23" <= 784.150024) AND (t."X_27" > 0.167000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_23" > 784.150024) AND (t."X_26" > 0.260500) AND (t."X_24" <= 0.111550) AND (t."X_29" <= 0.070020)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_23" > 784.150024) AND (t."X_26" > 0.260500) AND (t."X_24" <= 0.111550) AND (t."X_29" > 0.070020)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_23" <= 784.150024) AND (t."X_27" <= 0.167000) AND (t."X_24" > 0.190550)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_23" <= 784.150024) AND (t."X_27" <= 0.167000) AND (t."X_24" <= 0.190550) AND (t."X_29" <= 0.055125)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_23" > 784.150024) AND (t."X_26" > 0.260500) AND (t."X_24" > 0.111550) AND (t."X_6" > 0.080880)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_23" > 784.150024) AND (t."X_26" > 0.260500) AND (t."X_24" > 0.111550) AND (t."X_6" <= 0.080880) AND (t."X_6" > 0.077785)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_23" > 784.150024) AND (t."X_26" > 0.260500) AND (t."X_24" > 0.111550) AND (t."X_6" <= 0.080880) AND (t."X_6" <= 0.077785) AND (t."X_24" <= 0.130550)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_23" > 784.150024) AND (t."X_26" > 0.260500) AND (t."X_24" > 0.111550) AND (t."X_6" <= 0.080880) AND (t."X_6" <= 0.077785) AND (t."X_24" > 0.130550)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_23" <= 784.150024) AND (t."X_27" <= 0.167000) AND (t."X_24" <= 0.190550) AND (t."X_29" > 0.055125) AND (t."X_24" > 0.178250) AND (t."X_24" <= 0.184350)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_23" <= 784.150024) AND (t."X_27" <= 0.167000) AND (t."X_24" <= 0.190550) AND (t."X_29" > 0.055125) AND (t."X_24" > 0.178250) AND (t."X_24" > 0.184350)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_23" <= 784.150024) AND (t."X_27" <= 0.167000) AND (t."X_24" <= 0.190550) AND (t."X_29" > 0.055125) AND (t."X_24" <= 0.178250) AND (t."X_27" <= 0.093225)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_23" <= 784.150024) AND (t."X_27" <= 0.167000) AND (t."X_24" <= 0.190550) AND (t."X_29" > 0.055125) AND (t."X_24" <= 0.178250) AND (t."X_27" > 0.093225) AND (t."X_27" <= 0.093610)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_23" <= 784.150024) AND (t."X_27" <= 0.167000) AND (t."X_24" <= 0.190550) AND (t."X_29" > 0.055125) AND (t."X_24" <= 0.178250) AND (t."X_27" > 0.093225) AND (t."X_27" > 0.093610)) THEN 40 ELSE NULL END AS "Leaf_40"
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
    SELECT 0 AS nid,  0.419922 AS "P_0", 0.580078 AS "P_1", 1 AS "D", 0.580078 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.046263 AS "P_0", 0.953737 AS "P_1", 1 AS "D", 0.953737 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.874459 AS "P_0", 0.125541 AS "P_1", 0 AS "D", 0.874459 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.425000 AS "P_0", 0.575000 AS "P_1", 1 AS "D", 0.575000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.968586 AS "P_0", 0.031414 AS "P_1", 0 AS "D", 0.968586 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.014706 AS "P_0", 0.985294 AS "P_1", 1 AS "D", 0.985294 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.989130 AS "P_0", 0.010870 AS "P_1", 0 AS "D", 0.989130 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.011070 AS "P_0", 0.988930 AS "P_1", 1 AS "D", 0.988930 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.007407 AS "P_0", 0.992593 AS "P_1", 1 AS "D", 0.992593 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.003745 AS "P_0", 0.996255 AS "P_1", 1 AS "D", 0.996255 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.016129 AS "P_0", 0.983871 AS "P_1", 1 AS "D", 0.983871 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_7", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_0" > 16.924999)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_0" <= 16.924999) AND (t."X_27" > 0.115750) AND (t."X_29" <= 0.069585)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_0" <= 16.924999) AND (t."X_27" > 0.115750) AND (t."X_29" > 0.069585) AND (t."X_8" <= 0.168650) AND (t."X_0" <= 13.335000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_0" <= 16.924999) AND (t."X_27" > 0.115750) AND (t."X_29" > 0.069585) AND (t."X_8" <= 0.168650) AND (t."X_0" > 13.335000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_0" <= 16.924999) AND (t."X_27" > 0.115750) AND (t."X_29" > 0.069585) AND (t."X_8" > 0.168650) AND (t."X_27" <= 0.121850)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_0" <= 16.924999) AND (t."X_27" > 0.115750) AND (t."X_29" > 0.069585) AND (t."X_8" > 0.168650) AND (t."X_27" > 0.121850)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_28" <= 0.271600) AND (t."X_0" <= 14.760000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_28" <= 0.271600) AND (t."X_0" > 14.760000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_28" > 0.271600) AND (t."X_0" <= 10.340500)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_0" <= 16.924999) AND (t."X_27" <= 0.115750) AND (t."X_29" <= 0.055125)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_0" <= 16.924999) AND (t."X_27" <= 0.115750) AND (t."X_29" > 0.055125) AND (t."X_0" > 15.085000) AND (t."X_28" <= 0.263150)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_0" <= 16.924999) AND (t."X_27" <= 0.115750) AND (t."X_29" > 0.055125) AND (t."X_0" > 15.085000) AND (t."X_28" > 0.263150) AND (t."X_8" <= 0.179350)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_0" <= 16.924999) AND (t."X_27" <= 0.115750) AND (t."X_29" > 0.055125) AND (t."X_0" > 15.085000) AND (t."X_28" > 0.263150) AND (t."X_8" > 0.179350)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_0" <= 16.924999) AND (t."X_27" <= 0.115750) AND (t."X_29" > 0.055125) AND (t."X_0" <= 15.085000) AND (t."X_29" > 0.071640)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_0" <= 16.924999) AND (t."X_27" <= 0.115750) AND (t."X_29" > 0.055125) AND (t."X_0" <= 15.085000) AND (t."X_29" <= 0.071640) AND (t."X_29" > 0.071365)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_0" <= 16.924999) AND (t."X_27" <= 0.115750) AND (t."X_29" > 0.055125) AND (t."X_0" <= 15.085000) AND (t."X_29" <= 0.071640) AND (t."X_29" <= 0.071365) AND (t."X_28" > 0.198300)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_0" <= 16.924999) AND (t."X_27" <= 0.115750) AND (t."X_29" > 0.055125) AND (t."X_0" <= 15.085000) AND (t."X_29" <= 0.071640) AND (t."X_29" <= 0.071365) AND (t."X_28" <= 0.198300) AND (t."X_28" <= 0.194750)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_0" <= 16.924999) AND (t."X_27" <= 0.115750) AND (t."X_29" > 0.055125) AND (t."X_0" <= 15.085000) AND (t."X_29" <= 0.071640) AND (t."X_29" <= 0.071365) AND (t."X_28" <= 0.198300) AND (t."X_28" > 0.194750)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_28" > 0.271600) AND (t."X_0" > 10.340500) AND (t."X_25" <= 0.475800)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_28" > 0.271600) AND (t."X_0" > 10.340500) AND (t."X_25" > 0.475800) AND (t."X_25" <= 0.480900)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_28" > 0.271600) AND (t."X_0" > 10.340500) AND (t."X_25" > 0.475800) AND (t."X_25" > 0.480900)) THEN 40 ELSE NULL END AS "Leaf_40"
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
    SELECT 0 AS nid,  0.380859 AS "P_0", 0.619141 AS "P_1", 1 AS "D", 0.619141 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.077844 AS "P_0", 0.922156 AS "P_1", 1 AS "D", 0.922156 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.949438 AS "P_0", 0.050562 AS "P_1", 0 AS "D", 0.949438 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.055215 AS "P_0", 0.944785 AS "P_1", 1 AS "D", 0.944785 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.020478 AS "P_0", 0.979522 AS "P_1", 1 AS "D", 0.979522 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.986014 AS "P_0", 0.013986 AS "P_1", 0 AS "D", 0.986014 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.992958 AS "P_0", 0.007042 AS "P_1", 0 AS "D", 0.992958 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.017123 AS "P_0", 0.982877 AS "P_1", 1 AS "D", 0.982877 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.010638 AS "P_0", 0.989362 AS "P_1", 1 AS "D", 0.989362 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.027027 AS "P_0", 0.972973 AS "P_1", 1 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.009174 AS "P_0", 0.990826 AS "P_1", 1 AS "D", 0.990826 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.968750 AS "P_0", 0.031250 AS "P_1", 0 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_14", t1."Leaf_15", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" > 0.135800) AND (t."X_28" > 0.355900)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" > 0.135800) AND (t."X_28" <= 0.355900) AND (t."X_27" > 0.160400) AND (t."X_28" <= 0.347050)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" > 0.135800) AND (t."X_28" <= 0.355900) AND (t."X_27" > 0.160400) AND (t."X_28" > 0.347050)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" > 0.135800) AND (t."X_28" <= 0.355900) AND (t."X_27" <= 0.160400) AND (t."X_29" <= 0.072595)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" > 0.135800) AND (t."X_28" <= 0.355900) AND (t."X_27" <= 0.160400) AND (t."X_29" > 0.072595) AND (t."X_24" > 0.178250)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" > 0.135800) AND (t."X_28" <= 0.355900) AND (t."X_27" <= 0.160400) AND (t."X_29" > 0.072595) AND (t."X_24" <= 0.178250) AND (t."X_27" <= 0.139000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_0" > 15.050000) AND (t."X_25" <= 0.195600) AND (t."X_29" > 0.069150)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_0" > 15.050000) AND (t."X_25" <= 0.195600) AND (t."X_29" <= 0.069150) AND (t."X_26" <= 0.112950)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_0" > 15.050000) AND (t."X_25" <= 0.195600) AND (t."X_29" <= 0.069150) AND (t."X_26" > 0.112950) AND (t."X_24" <= 0.112850)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_0" > 15.050000) AND (t."X_25" <= 0.195600) AND (t."X_29" <= 0.069150) AND (t."X_26" > 0.112950) AND (t."X_24" > 0.112850) AND (t."X_28" > 0.242300)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_0" > 15.050000) AND (t."X_25" <= 0.195600) AND (t."X_29" <= 0.069150) AND (t."X_26" > 0.112950) AND (t."X_24" > 0.112850) AND (t."X_28" <= 0.242300) AND (t."X_0" <= 16.959999)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_0" > 15.050000) AND (t."X_25" <= 0.195600) AND (t."X_29" <= 0.069150) AND (t."X_26" > 0.112950) AND (t."X_24" > 0.112850) AND (t."X_28" <= 0.242300) AND (t."X_0" > 16.959999)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" > 0.135800) AND (t."X_28" <= 0.355900) AND (t."X_27" <= 0.160400) AND (t."X_29" > 0.072595) AND (t."X_24" <= 0.178250) AND (t."X_27" > 0.139000) AND (t."X_24" <= 0.142950)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" > 0.135800) AND (t."X_28" <= 0.355900) AND (t."X_27" <= 0.160400) AND (t."X_29" > 0.072595) AND (t."X_24" <= 0.178250) AND (t."X_27" > 0.139000) AND (t."X_24" > 0.142950) AND (t."X_27" <= 0.149050)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" > 0.135800) AND (t."X_28" <= 0.355900) AND (t."X_27" <= 0.160400) AND (t."X_29" > 0.072595) AND (t."X_24" <= 0.178250) AND (t."X_27" > 0.139000) AND (t."X_24" > 0.142950) AND (t."X_27" > 0.149050)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_0" > 15.050000) AND (t."X_25" > 0.195600) AND (t."X_0" > 15.110001)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_0" > 15.050000) AND (t."X_25" > 0.195600) AND (t."X_0" <= 15.110001) AND (t."X_29" <= 0.078260)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_0" > 15.050000) AND (t."X_25" > 0.195600) AND (t."X_0" <= 15.110001) AND (t."X_29" > 0.078260)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" <= 0.135800) AND (t."X_26" > 0.316000) AND (t."X_25" <= 0.214650)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" <= 0.135800) AND (t."X_26" > 0.316000) AND (t."X_25" > 0.214650) AND (t."X_28" <= 0.338900)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" <= 0.135800) AND (t."X_26" > 0.316000) AND (t."X_25" > 0.214650) AND (t."X_28" > 0.338900)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" <= 0.135800) AND (t."X_26" <= 0.316000) AND (t."X_28" <= 0.198300) AND (t."X_28" <= 0.194350)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" <= 0.135800) AND (t."X_26" <= 0.316000) AND (t."X_28" <= 0.198300) AND (t."X_28" > 0.194350)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" <= 0.135800) AND (t."X_26" <= 0.316000) AND (t."X_28" > 0.198300) AND (t."X_26" <= 0.213950)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" <= 0.135800) AND (t."X_26" <= 0.316000) AND (t."X_28" > 0.198300) AND (t."X_26" > 0.213950) AND (t."X_25" > 0.164800)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" <= 0.135800) AND (t."X_26" <= 0.316000) AND (t."X_28" > 0.198300) AND (t."X_26" > 0.213950) AND (t."X_25" <= 0.164800) AND (t."X_29" <= 0.076325)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_0" <= 15.050000) AND (t."X_27" <= 0.135800) AND (t."X_26" <= 0.316000) AND (t."X_28" > 0.198300) AND (t."X_26" > 0.213950) AND (t."X_25" <= 0.164800) AND (t."X_29" > 0.076325)) THEN 52 ELSE NULL END AS "Leaf_52"
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
    SELECT 0 AS nid,  0.380859 AS "P_0", 0.619141 AS "P_1", 1 AS "D", 0.619141 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.144444 AS "P_0", 0.855556 AS "P_1", 1 AS "D", 0.855556 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.940789 AS "P_0", 0.059211 AS "P_1", 0 AS "D", 0.940789 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.030000 AS "P_0", 0.970000 AS "P_1", 1 AS "D", 0.970000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.716667 AS "P_0", 0.283333 AS "P_1", 0 AS "D", 0.716667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.540541 AS "P_0", 0.459459 AS "P_1", 0 AS "D", 0.540541 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.650000 AS "P_0", 0.350000 AS "P_1", 0 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.984848 AS "P_0", 0.015152 AS "P_1", 0 AS "D", 0.984848 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.764706 AS "P_0", 0.235294 AS "P_1", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.866667 AS "P_0", 0.133333 AS "P_1", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.014440 AS "P_0", 0.985560 AS "P_1", 1 AS "D", 0.985560 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.217391 AS "P_0", 0.782609 AS "P_1", 1 AS "D", 0.782609 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.007663 AS "P_0", 0.992337 AS "P_1", 1 AS "D", 0.992337 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.036364 AS "P_0", 0.963636 AS "P_1", 1 AS "D", 0.963636 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40", t1."Leaf_42", t1."Leaf_43", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48", t1."Leaf_51", t1."Leaf_53", t1."Leaf_54", t1."Leaf_56", t1."Leaf_57", t1."Leaf_59", t1."Leaf_60" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_26" > 0.260500) AND (t."X_21" <= 23.740000) AND (t."X_27" > 0.178850)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_26" > 0.260500) AND (t."X_21" <= 23.740000) AND (t."X_27" <= 0.178850) AND (t."X_29" <= 0.082490) AND (t."X_21" <= 20.560001)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_26" > 0.260500) AND (t."X_21" <= 23.740000) AND (t."X_27" <= 0.178850) AND (t."X_29" <= 0.082490) AND (t."X_21" > 20.560001) AND (t."X_18" <= 0.012515)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_26" > 0.260500) AND (t."X_21" <= 23.740000) AND (t."X_27" <= 0.178850) AND (t."X_29" <= 0.082490) AND (t."X_21" > 20.560001) AND (t."X_18" > 0.012515)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_26" <= 0.260500) AND (t."X_27" > 0.111200) AND (t."X_21" <= 19.389999) AND (t."X_29" <= 0.067405)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_26" <= 0.260500) AND (t."X_27" > 0.111200) AND (t."X_21" <= 19.389999) AND (t."X_29" > 0.067405)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_26" <= 0.260500) AND (t."X_27" > 0.111200) AND (t."X_21" > 19.389999) AND (t."X_26" > 0.250050) AND (t."X_15" <= 0.029940)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_26" <= 0.260500) AND (t."X_27" > 0.111200) AND (t."X_21" > 19.389999) AND (t."X_26" > 0.250050) AND (t."X_15" > 0.029940)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_26" <= 0.260500) AND (t."X_27" > 0.111200) AND (t."X_21" > 19.389999) AND (t."X_26" <= 0.250050) AND (t."X_29" <= 0.080995)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_26" <= 0.260500) AND (t."X_27" > 0.111200) AND (t."X_21" > 19.389999) AND (t."X_26" <= 0.250050) AND (t."X_29" > 0.080995) AND (t."X_29" <= 0.085765)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_26" <= 0.260500) AND (t."X_27" > 0.111200) AND (t."X_21" > 19.389999) AND (t."X_26" <= 0.250050) AND (t."X_29" > 0.080995) AND (t."X_29" > 0.085765)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_26" > 0.260500) AND (t."X_21" > 23.740000) AND (t."X_28" <= 0.283100) AND (t."X_21" > 29.994999)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_26" > 0.260500) AND (t."X_21" > 23.740000) AND (t."X_28" <= 0.283100) AND (t."X_21" <= 29.994999) AND (t."X_26" <= 0.286700)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_26" > 0.260500) AND (t."X_21" > 23.740000) AND (t."X_28" <= 0.283100) AND (t."X_21" <= 29.994999) AND (t."X_26" > 0.286700) AND (t."X_27" <= 0.166550)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_26" > 0.260500) AND (t."X_21" > 23.740000) AND (t."X_28" <= 0.283100) AND (t."X_21" <= 29.994999) AND (t."X_26" > 0.286700) AND (t."X_27" > 0.166550)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_26" > 0.260500) AND (t."X_21" > 23.740000) AND (t."X_28" > 0.283100) AND (t."X_27" <= 0.114900)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_26" > 0.260500) AND (t."X_21" <= 23.740000) AND (t."X_27" <= 0.178850) AND (t."X_29" > 0.082490) AND (t."X_28" <= 0.332250)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_26" > 0.260500) AND (t."X_21" <= 23.740000) AND (t."X_27" <= 0.178850) AND (t."X_29" > 0.082490) AND (t."X_28" > 0.332250) AND (t."X_28" <= 0.347100)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_26" > 0.260500) AND (t."X_21" <= 23.740000) AND (t."X_27" <= 0.178850) AND (t."X_29" > 0.082490) AND (t."X_28" > 0.332250) AND (t."X_28" > 0.347100)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_26" <= 0.260500) AND (t."X_27" <= 0.111200) AND (t."X_28" > 0.414050)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_26" <= 0.260500) AND (t."X_27" <= 0.111200) AND (t."X_28" <= 0.414050) AND (t."X_18" <= 0.010410)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_26" > 0.260500) AND (t."X_21" > 23.740000) AND (t."X_28" > 0.283100) AND (t."X_27" > 0.114900) AND (t."X_28" > 0.284900)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_26" > 0.260500) AND (t."X_21" > 23.740000) AND (t."X_28" > 0.283100) AND (t."X_27" > 0.114900) AND (t."X_28" <= 0.284900) AND (t."X_28" <= 0.284450)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_26" > 0.260500) AND (t."X_21" > 23.740000) AND (t."X_28" > 0.283100) AND (t."X_27" > 0.114900) AND (t."X_28" <= 0.284900) AND (t."X_28" > 0.284450)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_26" <= 0.260500) AND (t."X_27" <= 0.111200) AND (t."X_28" <= 0.414050) AND (t."X_18" > 0.010410) AND (t."X_26" > 0.213950) AND (t."X_15" <= 0.012950)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_26" <= 0.260500) AND (t."X_27" <= 0.111200) AND (t."X_28" <= 0.414050) AND (t."X_18" > 0.010410) AND (t."X_26" > 0.213950) AND (t."X_15" > 0.012950) AND (t."X_29" <= 0.068730)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_26" <= 0.260500) AND (t."X_27" <= 0.111200) AND (t."X_28" <= 0.414050) AND (t."X_18" > 0.010410) AND (t."X_26" > 0.213950) AND (t."X_15" > 0.012950) AND (t."X_29" > 0.068730)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_26" <= 0.260500) AND (t."X_27" <= 0.111200) AND (t."X_28" <= 0.414050) AND (t."X_18" > 0.010410) AND (t."X_26" <= 0.213950) AND (t."X_29" > 0.065185)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_26" <= 0.260500) AND (t."X_27" <= 0.111200) AND (t."X_28" <= 0.414050) AND (t."X_18" > 0.010410) AND (t."X_26" <= 0.213950) AND (t."X_29" <= 0.065185) AND (t."X_21" <= 30.244999)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_26" <= 0.260500) AND (t."X_27" <= 0.111200) AND (t."X_28" <= 0.414050) AND (t."X_18" > 0.010410) AND (t."X_26" <= 0.213950) AND (t."X_29" <= 0.065185) AND (t."X_21" > 30.244999) AND (t."X_28" <= 0.239850)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_26" <= 0.260500) AND (t."X_27" <= 0.111200) AND (t."X_28" <= 0.414050) AND (t."X_18" > 0.010410) AND (t."X_26" <= 0.213950) AND (t."X_29" <= 0.065185) AND (t."X_21" > 30.244999) AND (t."X_28" > 0.239850)) THEN 60 ELSE NULL END AS "Leaf_60"
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
    SELECT 0 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.079038 AS "P_0", 0.920962 AS "P_1", 1 AS "D", 0.920962 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.764706 AS "P_0", 0.235294 AS "P_1", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.377358 AS "P_0", 0.622642 AS "P_1", 1 AS "D", 0.622642 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.886905 AS "P_0", 0.113095 AS "P_1", 0 AS "D", 0.886905 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.034483 AS "P_0", 0.965517 AS "P_1", 1 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.030418 AS "P_0", 0.969582 AS "P_1", 1 AS "D", 0.969582 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.535714 AS "P_0", 0.464286 AS "P_1", 0 AS "D", 0.535714 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.681818 AS "P_0", 0.318182 AS "P_1", 0 AS "D", 0.681818 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.959677 AS "P_0", 0.040323 AS "P_1", 0 AS "D", 0.959677 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.461538 AS "P_0", 0.538462 AS "P_1", 1 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.991667 AS "P_0", 0.008333 AS "P_1", 0 AS "D", 0.991667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.026718 AS "P_0", 0.973282 AS "P_1", 1 AS "D", 0.973282 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.019231 AS "P_0", 0.980769 AS "P_1", 1 AS "D", 0.980769 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.008734 AS "P_0", 0.991266 AS "P_1", 1 AS "D", 0.991266 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.096774 AS "P_0", 0.903226 AS "P_1", 1 AS "D", 0.903226 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.034483 AS "P_0", 0.965517 AS "P_1", 1 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.046512 AS "P_0", 0.953488 AS "P_1", 1 AS "D", 0.953488 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_1" <= 16.110001) AND (t."X_27" <= 0.149950)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_1" <= 16.110001) AND (t."X_27" > 0.149950)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.145600) AND (t."X_20" <= 12.799999)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.145600) AND (t."X_20" > 12.799999) AND (t."X_29" > 0.118050)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.145600) AND (t."X_20" > 12.799999) AND (t."X_29" <= 0.118050) AND (t."X_1" <= 16.395000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.145600) AND (t."X_20" > 12.799999) AND (t."X_29" <= 0.118050) AND (t."X_1" > 16.395000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.145600) AND (t."X_29" <= 0.055125)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.055125) AND (t."X_27" > 0.110850) AND (t."X_29" <= 0.072025) AND (t."X_20" <= 15.469999)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.055125) AND (t."X_27" > 0.110850) AND (t."X_29" <= 0.072025) AND (t."X_20" > 15.469999)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.055125) AND (t."X_27" > 0.110850) AND (t."X_29" > 0.072025) AND (t."X_20" <= 15.795000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.055125) AND (t."X_27" > 0.110850) AND (t."X_29" > 0.072025) AND (t."X_20" > 15.795000) AND (t."X_1" > 16.795000) AND (t."X_17" <= 0.013460)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.055125) AND (t."X_27" > 0.110850) AND (t."X_29" > 0.072025) AND (t."X_20" > 15.795000) AND (t."X_1" > 16.795000) AND (t."X_17" > 0.013460)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.055125) AND (t."X_27" > 0.110850) AND (t."X_29" > 0.072025) AND (t."X_20" > 15.795000) AND (t."X_1" <= 16.795000) AND (t."X_29" <= 0.095320)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.055125) AND (t."X_27" > 0.110850) AND (t."X_29" > 0.072025) AND (t."X_20" > 15.795000) AND (t."X_1" <= 16.795000) AND (t."X_29" > 0.095320)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_1" > 16.110001) AND (t."X_26" > 0.179750)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_1" > 16.110001) AND (t."X_26" <= 0.179750) AND (t."X_29" <= 0.064920)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_1" > 16.110001) AND (t."X_26" <= 0.179750) AND (t."X_29" > 0.064920)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.055125) AND (t."X_27" <= 0.110850) AND (t."X_17" <= 0.014265)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.055125) AND (t."X_27" <= 0.110850) AND (t."X_17" > 0.014265) AND (t."X_17" <= 0.014410)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.055125) AND (t."X_27" <= 0.110850) AND (t."X_17" > 0.014265) AND (t."X_17" > 0.014410)) THEN 38 ELSE NULL END AS "Leaf_38"
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
    SELECT 0 AS nid,  0.400391 AS "P_0", 0.599609 AS "P_1", 1 AS "D", 0.599609 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.081250 AS "P_0", 0.918750 AS "P_1", 1 AS "D", 0.918750 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.932292 AS "P_0", 0.067708 AS "P_1", 0 AS "D", 0.932292 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.368421 AS "P_0", 0.631579 AS "P_1", 1 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.994220 AS "P_0", 0.005780 AS "P_1", 0 AS "D", 0.994220 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.030405 AS "P_0", 0.969595 AS "P_1", 1 AS "D", 0.969595 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.708333 AS "P_0", 0.291667 AS "P_1", 0 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.850000 AS "P_0", 0.150000 AS "P_1", 0 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.023810 AS "P_0", 0.976190 AS "P_1", 1 AS "D", 0.976190 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.003922 AS "P_0", 0.996078 AS "P_1", 1 AS "D", 0.996078 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.085714 AS "P_0", 0.914286 AS "P_1", 1 AS "D", 0.914286 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= 0.102800) AND (t."X_27" > 0.143050) AND (t."X_8" > 0.153750)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" <= 0.102800) AND (t."X_27" > 0.143050) AND (t."X_8" <= 0.153750) AND (t."X_29" <= 0.083295)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_6" <= 0.102800) AND (t."X_27" > 0.143050) AND (t."X_8" <= 0.153750) AND (t."X_29" > 0.083295)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_6" > 0.102800) AND (t."X_9" > 0.082520)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_6" > 0.102800) AND (t."X_9" <= 0.082520) AND (t."X_19" > 0.015380)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" > 0.102800) AND (t."X_9" <= 0.082520) AND (t."X_19" <= 0.015380) AND (t."X_26" <= 0.224000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" <= 0.102800) AND (t."X_27" <= 0.143050) AND (t."X_27" > 0.110850) AND (t."X_9" > 0.059975)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" <= 0.102800) AND (t."X_27" <= 0.143050) AND (t."X_27" > 0.110850) AND (t."X_9" <= 0.059975) AND (t."X_27" > 0.126700) AND (t."X_29" <= 0.068765)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_6" <= 0.102800) AND (t."X_27" <= 0.143050) AND (t."X_27" > 0.110850) AND (t."X_9" <= 0.059975) AND (t."X_27" > 0.126700) AND (t."X_29" > 0.068765)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_6" <= 0.102800) AND (t."X_27" <= 0.143050) AND (t."X_27" > 0.110850) AND (t."X_9" <= 0.059975) AND (t."X_27" <= 0.126700) AND (t."X_6" > 0.055995)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" <= 0.102800) AND (t."X_27" <= 0.143050) AND (t."X_27" > 0.110850) AND (t."X_9" <= 0.059975) AND (t."X_27" <= 0.126700) AND (t."X_6" <= 0.055995) AND (t."X_6" <= 0.043050)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" <= 0.102800) AND (t."X_27" <= 0.143050) AND (t."X_27" > 0.110850) AND (t."X_9" <= 0.059975) AND (t."X_27" <= 0.126700) AND (t."X_6" <= 0.055995) AND (t."X_6" > 0.043050)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" > 0.102800) AND (t."X_9" <= 0.082520) AND (t."X_19" <= 0.015380) AND (t."X_26" > 0.224000) AND (t."X_24" <= 0.118250) AND (t."X_29" <= 0.071770)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_6" > 0.102800) AND (t."X_9" <= 0.082520) AND (t."X_19" <= 0.015380) AND (t."X_26" > 0.224000) AND (t."X_24" <= 0.118250) AND (t."X_29" > 0.071770) AND (t."X_27" <= 0.155450)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" > 0.102800) AND (t."X_9" <= 0.082520) AND (t."X_19" <= 0.015380) AND (t."X_26" > 0.224000) AND (t."X_24" <= 0.118250) AND (t."X_29" > 0.071770) AND (t."X_27" > 0.155450)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" > 0.102800) AND (t."X_9" <= 0.082520) AND (t."X_19" <= 0.015380) AND (t."X_26" > 0.224000) AND (t."X_24" > 0.118250) AND (t."X_6" > 0.119600)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_6" > 0.102800) AND (t."X_9" <= 0.082520) AND (t."X_19" <= 0.015380) AND (t."X_26" > 0.224000) AND (t."X_24" > 0.118250) AND (t."X_6" <= 0.119600) AND (t."X_6" > 0.118550)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_6" > 0.102800) AND (t."X_9" <= 0.082520) AND (t."X_19" <= 0.015380) AND (t."X_26" > 0.224000) AND (t."X_24" > 0.118250) AND (t."X_6" <= 0.119600) AND (t."X_6" <= 0.118550) AND (t."X_25" <= 0.474850)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" > 0.102800) AND (t."X_9" <= 0.082520) AND (t."X_19" <= 0.015380) AND (t."X_26" > 0.224000) AND (t."X_24" > 0.118250) AND (t."X_6" <= 0.119600) AND (t."X_6" <= 0.118550) AND (t."X_25" > 0.474850) AND (t."X_6" <= 0.111450)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_6" > 0.102800) AND (t."X_9" <= 0.082520) AND (t."X_19" <= 0.015380) AND (t."X_26" > 0.224000) AND (t."X_24" > 0.118250) AND (t."X_6" <= 0.119600) AND (t."X_6" <= 0.118550) AND (t."X_25" > 0.474850) AND (t."X_6" > 0.111450)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_6" <= 0.102800) AND (t."X_27" <= 0.143050) AND (t."X_27" <= 0.110850) AND (t."X_26" <= 0.225050)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" <= 0.102800) AND (t."X_27" <= 0.143050) AND (t."X_27" <= 0.110850) AND (t."X_26" > 0.225050) AND (t."X_26" <= 0.226350)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_6" <= 0.102800) AND (t."X_27" <= 0.143050) AND (t."X_27" <= 0.110850) AND (t."X_26" > 0.225050) AND (t."X_26" > 0.226350)) THEN 44 ELSE NULL END AS "Leaf_44"
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
    SELECT 0 AS nid,  0.388672 AS "P_0", 0.611328 AS "P_1", 1 AS "D", 0.611328 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.092308 AS "P_0", 0.907692 AS "P_1", 1 AS "D", 0.907692 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.903743 AS "P_0", 0.096257 AS "P_1", 0 AS "D", 0.903743 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.036304 AS "P_0", 0.963696 AS "P_1", 1 AS "D", 0.963696 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.863636 AS "P_0", 0.136364 AS "P_1", 0 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.923497 AS "P_0", 0.076503 AS "P_1", 0 AS "D", 0.923497 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.938889 AS "P_0", 0.061111 AS "P_1", 0 AS "D", 0.938889 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.960227 AS "P_0", 0.039773 AS "P_1", 0 AS "D", 0.960227 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.007407 AS "P_0", 0.992593 AS "P_1", 1 AS "D", 0.992593 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.975904 AS "P_0", 0.024096 AS "P_1", 0 AS "D", 0.975904 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.878788 AS "P_0", 0.121212 AS "P_1", 0 AS "D", 0.878788 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.935484 AS "P_0", 0.064516 AS "P_1", 0 AS "D", 0.935484 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.040000 AS "P_0", 0.960000 AS "P_1", 1 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 0.142400) AND (t."X_23" <= 710.200012) AND (t."X_27" <= 0.180750)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_27" > 0.142400) AND (t."X_23" <= 710.200012) AND (t."X_27" > 0.180750)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_27" <= 0.142400) AND (t."X_26" > 0.208200) AND (t."X_23" > 960.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_27" <= 0.142400) AND (t."X_26" > 0.208200) AND (t."X_23" <= 960.500000) AND (t."X_25" > 0.205550)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_27" <= 0.142400) AND (t."X_26" > 0.208200) AND (t."X_23" <= 960.500000) AND (t."X_25" <= 0.205550) AND (t."X_26" > 0.253250)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_27" <= 0.142400) AND (t."X_26" > 0.208200) AND (t."X_23" <= 960.500000) AND (t."X_25" <= 0.205550) AND (t."X_26" <= 0.253250) AND (t."X_15" <= 0.012240)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_27" <= 0.142400) AND (t."X_26" > 0.208200) AND (t."X_23" <= 960.500000) AND (t."X_25" <= 0.205550) AND (t."X_26" <= 0.253250) AND (t."X_15" > 0.012240)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" <= 0.142400) AND (t."X_26" <= 0.208200) AND (t."X_29" <= 0.065185) AND (t."X_23" > 1125.000000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_27" <= 0.142400) AND (t."X_26" <= 0.208200) AND (t."X_29" <= 0.065185) AND (t."X_23" <= 1125.000000) AND (t."X_23" <= 886.099976)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_27" <= 0.142400) AND (t."X_26" <= 0.208200) AND (t."X_29" <= 0.065185) AND (t."X_23" <= 1125.000000) AND (t."X_23" > 886.099976) AND (t."X_15" <= 0.016160)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_27" <= 0.142400) AND (t."X_26" <= 0.208200) AND (t."X_29" <= 0.065185) AND (t."X_23" <= 1125.000000) AND (t."X_23" > 886.099976) AND (t."X_15" > 0.016160)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_27" > 0.142400) AND (t."X_23" > 710.200012) AND (t."X_23" > 767.900024)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_27" > 0.142400) AND (t."X_23" > 710.200012) AND (t."X_23" <= 767.900024) AND (t."X_29" <= 0.086505)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_27" > 0.142400) AND (t."X_23" > 710.200012) AND (t."X_23" <= 767.900024) AND (t."X_29" > 0.086505)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_27" <= 0.142400) AND (t."X_26" <= 0.208200) AND (t."X_29" > 0.065185) AND (t."X_28" > 0.198300)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_27" <= 0.142400) AND (t."X_26" <= 0.208200) AND (t."X_29" > 0.065185) AND (t."X_28" <= 0.198300) AND (t."X_27" <= 0.067280)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_27" <= 0.142400) AND (t."X_26" <= 0.208200) AND (t."X_29" > 0.065185) AND (t."X_28" <= 0.198300) AND (t."X_27" > 0.067280)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.390625 AS "P_0", 0.609375 AS "P_1", 1 AS "D", 0.609375 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.075988 AS "P_0", 0.924012 AS "P_1", 1 AS "D", 0.924012 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.956284 AS "P_0", 0.043716 AS "P_1", 0 AS "D", 0.956284 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.461538 AS "P_0", 0.538462 AS "P_1", 1 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.994118 AS "P_0", 0.005882 AS "P_1", 0 AS "D", 0.994118 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.016598 AS "P_0", 0.983402 AS "P_1", 1 AS "D", 0.983402 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.238636 AS "P_0", 0.761364 AS "P_1", 1 AS "D", 0.761364 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.082192 AS "P_0", 0.917808 AS "P_1", 1 AS "D", 0.917808 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.085714 AS "P_0", 0.914286 AS "P_1", 1 AS "D", 0.914286 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.004854 AS "P_0", 0.995146 AS "P_1", 1 AS "D", 0.995146 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.030303 AS "P_0", 0.969697 AS "P_1", 1 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.171750) AND (t."X_2" <= 68.184998)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.171750) AND (t."X_2" > 68.184998)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_26" <= 0.218050) AND (t."X_26" <= 0.160500)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_26" <= 0.218050) AND (t."X_26" > 0.160500)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.171750) AND (t."X_20" > 15.690001) AND (t."X_26" > 0.259350) AND (t."X_20" > 16.445000) AND (t."X_8" <= 0.178700)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.171750) AND (t."X_20" > 15.690001) AND (t."X_26" > 0.259350) AND (t."X_20" > 16.445000) AND (t."X_8" > 0.178700)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.171750) AND (t."X_20" > 15.690001) AND (t."X_26" > 0.259350) AND (t."X_20" <= 16.445000) AND (t."X_29" <= 0.072645)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.171750) AND (t."X_20" > 15.690001) AND (t."X_26" > 0.259350) AND (t."X_20" <= 16.445000) AND (t."X_29" > 0.072645) AND (t."X_29" <= 0.088575)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.171750) AND (t."X_20" > 15.690001) AND (t."X_26" > 0.259350) AND (t."X_20" <= 16.445000) AND (t."X_29" > 0.072645) AND (t."X_29" > 0.088575)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.171750) AND (t."X_20" > 15.690001) AND (t."X_26" <= 0.259350) AND (t."X_20" > 16.020000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.171750) AND (t."X_20" > 15.690001) AND (t."X_26" <= 0.259350) AND (t."X_20" <= 16.020000) AND (t."X_8" <= 0.174900)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.171750) AND (t."X_20" > 15.690001) AND (t."X_26" <= 0.259350) AND (t."X_20" <= 16.020000) AND (t."X_8" > 0.174900)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_26" > 0.218050) AND (t."X_20" > 17.285000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_26" > 0.218050) AND (t."X_20" <= 17.285000) AND (t."X_28" <= 0.274850)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_26" > 0.218050) AND (t."X_20" <= 17.285000) AND (t."X_28" > 0.274850)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.171750) AND (t."X_20" <= 15.690001) AND (t."X_27" > 0.093225) AND (t."X_27" <= 0.093610)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.171750) AND (t."X_20" <= 15.690001) AND (t."X_27" > 0.093225) AND (t."X_27" > 0.093610) AND (t."X_2" > 72.529999)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.171750) AND (t."X_20" <= 15.690001) AND (t."X_27" > 0.093225) AND (t."X_27" > 0.093610) AND (t."X_2" <= 72.529999) AND (t."X_29" <= 0.096540)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.171750) AND (t."X_20" <= 15.690001) AND (t."X_27" > 0.093225) AND (t."X_27" > 0.093610) AND (t."X_2" <= 72.529999) AND (t."X_29" > 0.096540)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.171750) AND (t."X_20" <= 15.690001) AND (t."X_27" <= 0.093225) AND (t."X_25" > 0.081340)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.171750) AND (t."X_20" <= 15.690001) AND (t."X_27" <= 0.093225) AND (t."X_25" <= 0.081340) AND (t."X_25" <= 0.078750)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.171750) AND (t."X_20" <= 15.690001) AND (t."X_27" <= 0.093225) AND (t."X_25" <= 0.081340) AND (t."X_25" > 0.078750)) THEN 42 ELSE NULL END AS "Leaf_42"
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
    SELECT 0 AS nid,  0.363281 AS "P_0", 0.636719 AS "P_1", 1 AS "D", 0.636719 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.086705 AS "P_0", 0.913295 AS "P_1", 1 AS "D", 0.913295 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.939759 AS "P_0", 0.060241 AS "P_1", 0 AS "D", 0.939759 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.051205 AS "P_0", 0.948795 AS "P_1", 1 AS "D", 0.948795 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.974359 AS "P_0", 0.025641 AS "P_1", 0 AS "D", 0.974359 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.013841 AS "P_0", 0.986159 AS "P_1", 1 AS "D", 0.986159 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.302326 AS "P_0", 0.697674 AS "P_1", 1 AS "D", 0.697674 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.041667 AS "P_0", 0.958333 AS "P_1", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.631579 AS "P_0", 0.368421 AS "P_1", 0 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.004651 AS "P_0", 0.995349 AS "P_1", 1 AS "D", 0.995349 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.040541 AS "P_0", 0.959459 AS "P_1", 1 AS "D", 0.959459 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.013889 AS "P_0", 0.986111 AS "P_1", 1 AS "D", 0.986111 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.030303 AS "P_0", 0.969697 AS "P_1", 1 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 699.650024) AND (t."X_27" > 0.149300) AND (t."X_28" <= 0.274900)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" > 699.650024) AND (t."X_10" <= 0.221600) AND (t."X_29" <= 0.093660)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" > 699.650024) AND (t."X_10" <= 0.221600) AND (t."X_29" > 0.093660)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" <= 699.650024) AND (t."X_27" > 0.149300) AND (t."X_28" > 0.274900) AND (t."X_26" > 1.178500)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_3" <= 699.650024) AND (t."X_27" > 0.149300) AND (t."X_28" > 0.274900) AND (t."X_26" <= 1.178500) AND (t."X_13" <= 13.475000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_3" <= 699.650024) AND (t."X_27" > 0.149300) AND (t."X_28" > 0.274900) AND (t."X_26" <= 1.178500) AND (t."X_13" > 13.475000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" > 699.650024) AND (t."X_10" > 0.221600) AND (t."X_26" > 0.190700)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_3" > 699.650024) AND (t."X_10" > 0.221600) AND (t."X_26" <= 0.190700) AND (t."X_27" <= 0.082880)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_3" > 699.650024) AND (t."X_10" > 0.221600) AND (t."X_26" <= 0.190700) AND (t."X_27" > 0.082880)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_3" <= 699.650024) AND (t."X_27" <= 0.149300) AND (t."X_27" > 0.118250) AND (t."X_29" <= 0.079530) AND (t."X_28" <= 0.259250)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_3" <= 699.650024) AND (t."X_27" <= 0.149300) AND (t."X_27" > 0.118250) AND (t."X_29" <= 0.079530) AND (t."X_28" > 0.259250) AND (t."X_10" <= 0.222300)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_3" <= 699.650024) AND (t."X_27" <= 0.149300) AND (t."X_27" > 0.118250) AND (t."X_29" <= 0.079530) AND (t."X_28" > 0.259250) AND (t."X_10" > 0.222300)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_3" <= 699.650024) AND (t."X_27" <= 0.149300) AND (t."X_27" > 0.118250) AND (t."X_29" > 0.079530) AND (t."X_25" <= 0.414950)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_3" <= 699.650024) AND (t."X_27" <= 0.149300) AND (t."X_27" > 0.118250) AND (t."X_29" > 0.079530) AND (t."X_25" > 0.414950) AND (t."X_29" <= 0.113150)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_3" <= 699.650024) AND (t."X_27" <= 0.149300) AND (t."X_27" > 0.118250) AND (t."X_29" > 0.079530) AND (t."X_25" > 0.414950) AND (t."X_29" > 0.113150)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_3" <= 699.650024) AND (t."X_27" <= 0.149300) AND (t."X_27" <= 0.118250) AND (t."X_28" <= 0.282800)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_3" <= 699.650024) AND (t."X_27" <= 0.149300) AND (t."X_27" <= 0.118250) AND (t."X_28" > 0.282800) AND (t."X_28" > 0.283500)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_3" <= 699.650024) AND (t."X_27" <= 0.149300) AND (t."X_27" <= 0.118250) AND (t."X_28" > 0.282800) AND (t."X_28" <= 0.283500) AND (t."X_25" <= 0.185950)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_3" <= 699.650024) AND (t."X_27" <= 0.149300) AND (t."X_27" <= 0.118250) AND (t."X_28" > 0.282800) AND (t."X_28" <= 0.283500) AND (t."X_25" > 0.185950)) THEN 36 ELSE NULL END AS "Leaf_36"
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
    SELECT 0 AS nid,  0.359375 AS "P_0", 0.640625 AS "P_1", 1 AS "D", 0.640625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.133515 AS "P_0", 0.866485 AS "P_1", 1 AS "D", 0.866485 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.931035 AS "P_0", 0.068966 AS "P_1", 0 AS "D", 0.931035 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.031153 AS "P_0", 0.968847 AS "P_1", 1 AS "D", 0.968847 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.847826 AS "P_0", 0.152174 AS "P_1", 0 AS "D", 0.847826 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.970803 AS "P_0", 0.029197 AS "P_1", 0 AS "D", 0.970803 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.951219 AS "P_0", 0.048780 AS "P_1", 0 AS "D", 0.951219 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.003472 AS "P_0", 0.996528 AS "P_1", 1 AS "D", 0.996528 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.010204 AS "P_0", 0.989796 AS "P_1", 1 AS "D", 0.989796 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" > 0.162650) AND (t."X_17" <= 0.027780)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" > 0.162650) AND (t."X_17" > 0.027780)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_20" > 16.830000) AND (t."X_22" > 117.449997)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_20" > 16.830000) AND (t."X_22" <= 117.449997) AND (t."X_28" > 0.316600)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_20" > 16.830000) AND (t."X_22" <= 117.449997) AND (t."X_28" <= 0.316600) AND (t."X_17" <= 0.006273)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_20" > 16.830000) AND (t."X_22" <= 117.449997) AND (t."X_28" <= 0.316600) AND (t."X_17" > 0.006273) AND (t."X_26" <= 0.316000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_20" > 16.830000) AND (t."X_22" <= 117.449997) AND (t."X_28" <= 0.316600) AND (t."X_17" > 0.006273) AND (t."X_26" > 0.316000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" <= 0.162650) AND (t."X_27" > 0.135800) AND (t."X_26" <= 0.340950) AND (t."X_20" > 15.930000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" <= 0.162650) AND (t."X_27" > 0.135800) AND (t."X_26" <= 0.340950) AND (t."X_20" <= 15.930000) AND (t."X_13" <= 30.430000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" <= 0.162650) AND (t."X_27" > 0.135800) AND (t."X_26" <= 0.340950) AND (t."X_20" <= 15.930000) AND (t."X_13" > 30.430000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" <= 0.162650) AND (t."X_27" > 0.135800) AND (t."X_26" > 0.340950) AND (t."X_28" <= 0.285400)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" <= 0.162650) AND (t."X_27" > 0.135800) AND (t."X_26" > 0.340950) AND (t."X_28" > 0.285400) AND (t."X_28" <= 0.300850)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" <= 0.162650) AND (t."X_27" > 0.135800) AND (t."X_26" > 0.340950) AND (t."X_28" > 0.285400) AND (t."X_28" > 0.300850)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.135800) AND (t."X_13" > 79.824997)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.135800) AND (t."X_13" <= 79.824997) AND (t."X_13" > 48.974998) AND (t."X_17" <= 0.015060)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.135800) AND (t."X_13" <= 79.824997) AND (t."X_13" > 48.974998) AND (t."X_17" > 0.015060)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.135800) AND (t."X_13" <= 79.824997) AND (t."X_13" <= 48.974998) AND (t."X_26" <= 0.208200)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.135800) AND (t."X_13" <= 79.824997) AND (t."X_13" <= 48.974998) AND (t."X_26" > 0.208200) AND (t."X_26" <= 0.219650) AND (t."X_17" <= 0.015400)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.135800) AND (t."X_13" <= 79.824997) AND (t."X_13" <= 48.974998) AND (t."X_26" > 0.208200) AND (t."X_26" <= 0.219650) AND (t."X_17" > 0.015400)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.135800) AND (t."X_13" <= 79.824997) AND (t."X_13" <= 48.974998) AND (t."X_26" > 0.208200) AND (t."X_26" > 0.219650) AND (t."X_29" > 0.070220)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.135800) AND (t."X_13" <= 79.824997) AND (t."X_13" <= 48.974998) AND (t."X_26" > 0.208200) AND (t."X_26" > 0.219650) AND (t."X_29" <= 0.070220) AND (t."X_17" <= 0.011877)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_20" <= 16.830000) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.135800) AND (t."X_13" <= 79.824997) AND (t."X_13" <= 48.974998) AND (t."X_26" > 0.208200) AND (t."X_26" > 0.219650) AND (t."X_29" <= 0.070220) AND (t."X_17" > 0.011877)) THEN 42 ELSE NULL END AS "Leaf_42"
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
    SELECT 0 AS nid,  0.376953 AS "P_0", 0.623047 AS "P_1", 1 AS "D", 0.623047 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.093023 AS "P_0", 0.906977 AS "P_1", 1 AS "D", 0.906977 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.958333 AS "P_0", 0.041667 AS "P_1", 0 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.043077 AS "P_0", 0.956923 AS "P_1", 1 AS "D", 0.956923 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.631579 AS "P_0", 0.368421 AS "P_1", 0 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.023102 AS "P_0", 0.976898 AS "P_1", 1 AS "D", 0.976898 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.318182 AS "P_0", 0.681818 AS "P_1", 1 AS "D", 0.681818 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    UNION ALL
    SELECT 27 AS nid,  0.019868 AS "P_0", 0.980132 AS "P_1", 1 AS "D", 0.980132 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.013605 AS "P_0", 0.986395 AS "P_1", 1 AS "D", 0.986395 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.016667 AS "P_0", 0.983333 AS "P_1", 1 AS "D", 0.983333 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_35", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_42", t1."Leaf_45", t1."Leaf_46", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_58", t1."Leaf_59", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" > 0.150950) AND (t."X_12" <= 1.540000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" > 0.150950) AND (t."X_12" > 1.540000) AND (t."X_26" > 1.178500)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_12" > 2.836500) AND (t."X_18" > 0.030415) AND (t."X_18" > 0.042805)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_12" > 2.836500) AND (t."X_18" > 0.030415) AND (t."X_18" <= 0.042805) AND (t."X_27" <= 0.103400)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_12" > 2.836500) AND (t."X_18" <= 0.030415) AND (t."X_26" <= 0.220850) AND (t."X_29" <= 0.056875)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_12" > 2.836500) AND (t."X_18" <= 0.030415) AND (t."X_26" <= 0.220850) AND (t."X_29" > 0.056875) AND (t."X_28" <= 0.315650)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_12" > 2.836500) AND (t."X_18" <= 0.030415) AND (t."X_26" <= 0.220850) AND (t."X_29" > 0.056875) AND (t."X_28" > 0.315650)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" > 0.150950) AND (t."X_12" > 1.540000) AND (t."X_26" <= 1.178500) AND (t."X_12" > 2.770500)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_12" > 2.836500) AND (t."X_18" > 0.030415) AND (t."X_18" <= 0.042805) AND (t."X_27" > 0.103400) AND (t."X_17" <= 0.025035)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_12" > 2.836500) AND (t."X_18" > 0.030415) AND (t."X_18" <= 0.042805) AND (t."X_27" > 0.103400) AND (t."X_17" > 0.025035) AND (t."X_29" <= 0.090910)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_12" > 2.836500) AND (t."X_18" > 0.030415) AND (t."X_18" <= 0.042805) AND (t."X_27" > 0.103400) AND (t."X_17" > 0.025035) AND (t."X_29" > 0.090910)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" > 0.150950) AND (t."X_12" > 1.540000) AND (t."X_26" <= 1.178500) AND (t."X_12" <= 2.770500) AND (t."X_17" <= 0.014760)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" > 0.150950) AND (t."X_12" > 1.540000) AND (t."X_26" <= 1.178500) AND (t."X_12" <= 2.770500) AND (t."X_17" > 0.014760) AND (t."X_17" <= 0.016530)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" > 0.150950) AND (t."X_12" > 1.540000) AND (t."X_26" <= 1.178500) AND (t."X_12" <= 2.770500) AND (t."X_17" > 0.014760) AND (t."X_17" > 0.016530)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" <= 0.150950) AND (t."X_27" > 0.121550) AND (t."X_17" <= 0.009290)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" <= 0.150950) AND (t."X_27" > 0.121550) AND (t."X_17" > 0.009290) AND (t."X_29" <= 0.069495)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" <= 0.150950) AND (t."X_27" > 0.121550) AND (t."X_17" > 0.009290) AND (t."X_29" > 0.069495) AND (t."X_17" > 0.011740)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" <= 0.150950) AND (t."X_27" > 0.121550) AND (t."X_17" > 0.009290) AND (t."X_29" > 0.069495) AND (t."X_17" <= 0.011740) AND (t."X_26" <= 0.401350)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" <= 0.150950) AND (t."X_27" > 0.121550) AND (t."X_17" > 0.009290) AND (t."X_29" > 0.069495) AND (t."X_17" <= 0.011740) AND (t."X_26" > 0.401350)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" <= 0.150950) AND (t."X_27" <= 0.121550) AND (t."X_28" > 0.440250)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_12" > 2.836500) AND (t."X_18" <= 0.030415) AND (t."X_26" > 0.220850) AND (t."X_4" <= 0.083075) AND (t."X_29" <= 0.086890)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_12" > 2.836500) AND (t."X_18" <= 0.030415) AND (t."X_26" > 0.220850) AND (t."X_4" <= 0.083075) AND (t."X_29" > 0.086890)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" <= 0.150950) AND (t."X_27" <= 0.121550) AND (t."X_28" <= 0.440250) AND (t."X_18" <= 0.010340) AND (t."X_29" <= 0.071515)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" <= 0.150950) AND (t."X_27" <= 0.121550) AND (t."X_28" <= 0.440250) AND (t."X_18" <= 0.010340) AND (t."X_29" > 0.071515)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_12" > 2.836500) AND (t."X_18" <= 0.030415) AND (t."X_26" > 0.220850) AND (t."X_4" > 0.083075) AND (t."X_16" <= 0.043265)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_12" > 2.836500) AND (t."X_18" <= 0.030415) AND (t."X_26" > 0.220850) AND (t."X_4" > 0.083075) AND (t."X_16" > 0.043265) AND (t."X_26" > 0.328400)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_12" > 2.836500) AND (t."X_18" <= 0.030415) AND (t."X_26" > 0.220850) AND (t."X_4" > 0.083075) AND (t."X_16" > 0.043265) AND (t."X_26" <= 0.328400) AND (t."X_17" <= 0.018125)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_12" > 2.836500) AND (t."X_18" <= 0.030415) AND (t."X_26" > 0.220850) AND (t."X_4" > 0.083075) AND (t."X_16" > 0.043265) AND (t."X_26" <= 0.328400) AND (t."X_17" > 0.018125)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" <= 0.150950) AND (t."X_27" <= 0.121550) AND (t."X_28" <= 0.440250) AND (t."X_18" > 0.010340) AND (t."X_18" > 0.016490)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" <= 0.150950) AND (t."X_27" <= 0.121550) AND (t."X_28" <= 0.440250) AND (t."X_18" > 0.010340) AND (t."X_18" <= 0.016490) AND (t."X_28" <= 0.280350)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" <= 0.150950) AND (t."X_27" <= 0.121550) AND (t."X_28" <= 0.440250) AND (t."X_18" > 0.010340) AND (t."X_18" <= 0.016490) AND (t."X_28" > 0.280350) AND (t."X_17" <= 0.008640)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_12" <= 2.836500) AND (t."X_27" <= 0.150950) AND (t."X_27" <= 0.121550) AND (t."X_28" <= 0.440250) AND (t."X_18" > 0.010340) AND (t."X_18" <= 0.016490) AND (t."X_28" > 0.280350) AND (t."X_17" > 0.008640)) THEN 62 ELSE NULL END AS "Leaf_62"
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
    SELECT 0 AS nid,  0.376953 AS "P_0", 0.623047 AS "P_1", 1 AS "D", 0.623047 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.135135 AS "P_0", 0.864865 AS "P_1", 1 AS "D", 0.864865 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.826816 AS "P_0", 0.173184 AS "P_1", 0 AS "D", 0.826816 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.044218 AS "P_0", 0.955782 AS "P_1", 1 AS "D", 0.955782 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.820513 AS "P_0", 0.179487 AS "P_1", 0 AS "D", 0.820513 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.905405 AS "P_0", 0.094595 AS "P_1", 0 AS "D", 0.905405 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.451613 AS "P_0", 0.548387 AS "P_1", 1 AS "D", 0.548387 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.291667 AS "P_0", 0.708333 AS "P_1", 1 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.963235 AS "P_0", 0.036765 AS "P_1", 0 AS "D", 0.963235 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.969697 AS "P_0", 0.030303 AS "P_1", 0 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.015267 AS "P_0", 0.984733 AS "P_1", 1 AS "D", 0.984733 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.281250 AS "P_0", 0.718750 AS "P_1", 1 AS "D", 0.718750 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.178571 AS "P_0", 0.821429 AS "P_1", 1 AS "D", 0.821429 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.115385 AS "P_0", 0.884615 AS "P_1", 1 AS "D", 0.884615 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.011494 AS "P_0", 0.988506 AS "P_1", 1 AS "D", 0.988506 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.976744 AS "P_0", 0.023256 AS "P_1", 0 AS "D", 0.976744 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.007722 AS "P_0", 0.992278 AS "P_1", 1 AS "D", 0.992278 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.938776 AS "P_0", 0.061224 AS "P_1", 0 AS "D", 0.938776 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.027778 AS "P_0", 0.972222 AS "P_1", 1 AS "D", 0.972222 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 0.115750) AND (t."X_22" <= 105.150002) AND (t."X_29" > 0.133100)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_27" > 0.115750) AND (t."X_22" <= 105.150002) AND (t."X_29" <= 0.133100) AND (t."X_29" <= 0.074210)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_27" > 0.115750) AND (t."X_22" <= 105.150002) AND (t."X_29" <= 0.133100) AND (t."X_29" > 0.074210) AND (t."X_17" > 0.011005)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_27" > 0.115750) AND (t."X_22" <= 105.150002) AND (t."X_29" <= 0.133100) AND (t."X_29" > 0.074210) AND (t."X_17" <= 0.011005) AND (t."X_29" <= 0.094660)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_27" > 0.115750) AND (t."X_22" <= 105.150002) AND (t."X_29" <= 0.133100) AND (t."X_29" > 0.074210) AND (t."X_17" <= 0.011005) AND (t."X_29" > 0.094660)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_27" > 0.115750) AND (t."X_22" > 105.150002) AND (t."X_7" <= 0.043560) AND (t."X_27" <= 0.126700)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_27" > 0.115750) AND (t."X_22" > 105.150002) AND (t."X_7" <= 0.043560) AND (t."X_27" > 0.126700)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" > 0.115750) AND (t."X_22" > 105.150002) AND (t."X_7" > 0.043560) AND (t."X_26" <= 0.212250)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_27" <= 0.115750) AND (t."X_29" <= 0.055125)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" <= 0.115750) AND (t."X_29" > 0.055125) AND (t."X_28" > 0.440250)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_27" <= 0.115750) AND (t."X_29" > 0.055125) AND (t."X_28" <= 0.440250) AND (t."X_23" > 919.000000) AND (t."X_7" <= 0.030020)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" <= 0.115750) AND (t."X_29" > 0.055125) AND (t."X_28" <= 0.440250) AND (t."X_23" > 919.000000) AND (t."X_7" > 0.030020)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_27" > 0.115750) AND (t."X_22" > 105.150002) AND (t."X_7" > 0.043560) AND (t."X_26" > 0.212250) AND (t."X_7" > 0.063210)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_27" > 0.115750) AND (t."X_22" > 105.150002) AND (t."X_7" > 0.043560) AND (t."X_26" > 0.212250) AND (t."X_7" <= 0.063210) AND (t."X_28" <= 0.257300)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_27" > 0.115750) AND (t."X_22" > 105.150002) AND (t."X_7" > 0.043560) AND (t."X_26" > 0.212250) AND (t."X_7" <= 0.063210) AND (t."X_28" > 0.257300) AND (t."X_17" <= 0.014705)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_27" > 0.115750) AND (t."X_22" > 105.150002) AND (t."X_7" > 0.043560) AND (t."X_26" > 0.212250) AND (t."X_7" <= 0.063210) AND (t."X_28" > 0.257300) AND (t."X_17" > 0.014705) AND (t."X_29" <= 0.072645)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_27" > 0.115750) AND (t."X_22" > 105.150002) AND (t."X_7" > 0.043560) AND (t."X_26" > 0.212250) AND (t."X_7" <= 0.063210) AND (t."X_28" > 0.257300) AND (t."X_17" > 0.014705) AND (t."X_29" > 0.072645)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_27" <= 0.115750) AND (t."X_29" > 0.055125) AND (t."X_28" <= 0.440250) AND (t."X_23" <= 919.000000) AND (t."X_27" <= 0.093225)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_27" <= 0.115750) AND (t."X_29" > 0.055125) AND (t."X_28" <= 0.440250) AND (t."X_23" <= 919.000000) AND (t."X_27" > 0.093225) AND (t."X_27" <= 0.094225)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_27" <= 0.115750) AND (t."X_29" > 0.055125) AND (t."X_28" <= 0.440250) AND (t."X_23" <= 919.000000) AND (t."X_27" > 0.093225) AND (t."X_27" > 0.094225)) THEN 38 ELSE NULL END AS "Leaf_38"
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
    SELECT 0 AS nid,  0.392578 AS "P_0", 0.607422 AS "P_1", 1 AS "D", 0.607422 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.027304 AS "P_0", 0.972696 AS "P_1", 1 AS "D", 0.972696 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.881279 AS "P_0", 0.118721 AS "P_1", 0 AS "D", 0.881279 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.291667 AS "P_0", 0.708333 AS "P_1", 1 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.953846 AS "P_0", 0.046154 AS "P_1", 0 AS "D", 0.953846 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.150000 AS "P_0", 0.850000 AS "P_1", 1 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.973545 AS "P_0", 0.026455 AS "P_1", 0 AS "D", 0.973545 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.978723 AS "P_0", 0.021277 AS "P_1", 0 AS "D", 0.978723 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.023973 AS "P_0", 0.976027 AS "P_1", 1 AS "D", 0.976027 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.020619 AS "P_0", 0.979381 AS "P_1", 1 AS "D", 0.979381 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.003559 AS "P_0", 0.996441 AS "P_1", 1 AS "D", 0.996441 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.840000 AS "P_0", 0.160000 AS "P_1", 0 AS "D", 0.840000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.913043 AS "P_0", 0.086957 AS "P_1", 0 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.018868 AS "P_0", 0.981132 AS "P_1", 1 AS "D", 0.981132 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > 0.051315) AND (t."X_22" <= 91.559998) AND (t."X_27" <= 0.142000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_7" > 0.051315) AND (t."X_22" <= 91.559998) AND (t."X_27" > 0.142000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_7" > 0.051315) AND (t."X_22" > 91.559998) AND (t."X_22" > 114.449997)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_7" > 0.051315) AND (t."X_22" > 91.559998) AND (t."X_22" <= 114.449997) AND (t."X_27" > 0.151300)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_7" > 0.051315) AND (t."X_22" > 91.559998) AND (t."X_22" <= 114.449997) AND (t."X_27" <= 0.151300) AND (t."X_7" <= 0.056485) AND (t."X_29" <= 0.080810)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_7" > 0.051315) AND (t."X_22" > 91.559998) AND (t."X_22" <= 114.449997) AND (t."X_27" <= 0.151300) AND (t."X_7" <= 0.056485) AND (t."X_29" > 0.080810)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_7" > 0.051315) AND (t."X_22" > 91.559998) AND (t."X_22" <= 114.449997) AND (t."X_27" <= 0.151300) AND (t."X_7" > 0.056485) AND (t."X_14" > 0.005145)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_7" > 0.051315) AND (t."X_22" > 91.559998) AND (t."X_22" <= 114.449997) AND (t."X_27" <= 0.151300) AND (t."X_7" > 0.056485) AND (t."X_14" <= 0.005145) AND (t."X_29" <= 0.094095)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_7" > 0.051315) AND (t."X_22" > 91.559998) AND (t."X_22" <= 114.449997) AND (t."X_27" <= 0.151300) AND (t."X_7" > 0.056485) AND (t."X_14" <= 0.005145) AND (t."X_29" > 0.094095)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_7" <= 0.051315) AND (t."X_27" > 0.115750) AND (t."X_27" <= 0.120100)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_7" <= 0.051315) AND (t."X_27" > 0.115750) AND (t."X_27" > 0.120100) AND (t."X_10" > 0.377200)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_7" <= 0.051315) AND (t."X_27" > 0.115750) AND (t."X_27" > 0.120100) AND (t."X_10" <= 0.377200) AND (t."X_28" > 0.270950)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" <= 0.051315) AND (t."X_27" > 0.115750) AND (t."X_27" > 0.120100) AND (t."X_10" <= 0.377200) AND (t."X_28" <= 0.270950) AND (t."X_19" <= 0.003303)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_7" <= 0.051315) AND (t."X_27" > 0.115750) AND (t."X_27" > 0.120100) AND (t."X_10" <= 0.377200) AND (t."X_28" <= 0.270950) AND (t."X_19" > 0.003303)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_7" <= 0.051315) AND (t."X_27" <= 0.115750) AND (t."X_22" > 109.099998) AND (t."X_7" <= 0.030020)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_7" <= 0.051315) AND (t."X_27" <= 0.115750) AND (t."X_22" > 109.099998) AND (t."X_7" > 0.030020)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_7" <= 0.051315) AND (t."X_27" <= 0.115750) AND (t."X_22" <= 109.099998) AND (t."X_27" <= 0.093205)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_7" <= 0.051315) AND (t."X_27" <= 0.115750) AND (t."X_22" <= 109.099998) AND (t."X_27" > 0.093205) AND (t."X_27" <= 0.094225)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_7" <= 0.051315) AND (t."X_27" <= 0.115750) AND (t."X_22" <= 109.099998) AND (t."X_27" > 0.093205) AND (t."X_27" > 0.094225)) THEN 36 ELSE NULL END AS "Leaf_36"
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
    SELECT 0 AS nid,  0.386719 AS "P_0", 0.613281 AS "P_1", 1 AS "D", 0.613281 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.051948 AS "P_0", 0.948052 AS "P_1", 1 AS "D", 0.948052 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.892157 AS "P_0", 0.107843 AS "P_1", 0 AS "D", 0.892157 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.937824 AS "P_0", 0.062176 AS "P_1", 0 AS "D", 0.937824 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.017857 AS "P_0", 0.982143 AS "P_1", 1 AS "D", 0.982143 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.392857 AS "P_0", 0.607143 AS "P_1", 1 AS "D", 0.607143 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.227273 AS "P_0", 0.772727 AS "P_1", 1 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.003663 AS "P_0", 0.996337 AS "P_1", 1 AS "D", 0.996337 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.020833 AS "P_0", 0.979167 AS "P_1", 1 AS "D", 0.979167 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_13" <= 31.299999) AND (t."X_27" > 0.142000) AND (t."X_13" <= 22.570000) AND (t."X_28" <= 0.274900)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_13" <= 31.299999) AND (t."X_27" > 0.142000) AND (t."X_13" <= 22.570000) AND (t."X_28" > 0.274900) AND (t."X_29" <= 0.112300)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_13" <= 31.299999) AND (t."X_27" > 0.142000) AND (t."X_13" <= 22.570000) AND (t."X_28" > 0.274900) AND (t."X_29" > 0.112300)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_13" > 31.299999) AND (t."X_3" <= 654.400024) AND (t."X_6" > 0.093200) AND (t."X_26" <= 0.264100)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_13" > 31.299999) AND (t."X_3" <= 654.400024) AND (t."X_6" > 0.093200) AND (t."X_26" > 0.264100) AND (t."X_3" <= 388.799988)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_13" > 31.299999) AND (t."X_3" <= 654.400024) AND (t."X_6" > 0.093200) AND (t."X_26" > 0.264100) AND (t."X_3" > 388.799988)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_13" > 31.299999) AND (t."X_3" <= 654.400024) AND (t."X_6" <= 0.093200) AND (t."X_13" > 48.974998) AND (t."X_3" <= 469.250000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_13" > 31.299999) AND (t."X_3" <= 654.400024) AND (t."X_6" <= 0.093200) AND (t."X_13" > 48.974998) AND (t."X_3" > 469.250000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_13" <= 31.299999) AND (t."X_27" > 0.142000) AND (t."X_13" > 22.570000) AND (t."X_19" > 0.011530)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_13" <= 31.299999) AND (t."X_27" > 0.142000) AND (t."X_13" > 22.570000) AND (t."X_19" <= 0.011530) AND (t."X_26" <= 0.225800)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_13" <= 31.299999) AND (t."X_27" > 0.142000) AND (t."X_13" > 22.570000) AND (t."X_19" <= 0.011530) AND (t."X_26" > 0.225800)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_13" > 31.299999) AND (t."X_3" <= 654.400024) AND (t."X_6" <= 0.093200) AND (t."X_13" <= 48.974998) AND (t."X_27" <= 0.113550)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_13" > 31.299999) AND (t."X_3" <= 654.400024) AND (t."X_6" <= 0.093200) AND (t."X_13" <= 48.974998) AND (t."X_27" > 0.113550) AND (t."X_3" <= 611.950012)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_13" > 31.299999) AND (t."X_3" <= 654.400024) AND (t."X_6" <= 0.093200) AND (t."X_13" <= 48.974998) AND (t."X_27" > 0.113550) AND (t."X_3" > 611.950012)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_13" > 31.299999) AND (t."X_3" > 654.400024) AND (t."X_27" > 0.103250)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_13" > 31.299999) AND (t."X_3" > 654.400024) AND (t."X_27" <= 0.103250) AND (t."X_26" <= 0.160500)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_13" > 31.299999) AND (t."X_3" > 654.400024) AND (t."X_27" <= 0.103250) AND (t."X_26" > 0.160500)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_13" <= 31.299999) AND (t."X_27" <= 0.142000) AND (t."X_28" > 0.440250)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_13" <= 31.299999) AND (t."X_27" <= 0.142000) AND (t."X_28" <= 0.440250) AND (t."X_3" > 714.199951) AND (t."X_3" <= 721.049988)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_13" <= 31.299999) AND (t."X_27" <= 0.142000) AND (t."X_28" <= 0.440250) AND (t."X_3" > 714.199951) AND (t."X_3" > 721.049988)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_13" <= 31.299999) AND (t."X_27" <= 0.142000) AND (t."X_28" <= 0.440250) AND (t."X_3" <= 714.199951) AND (t."X_27" <= 0.138100)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_13" <= 31.299999) AND (t."X_27" <= 0.142000) AND (t."X_28" <= 0.440250) AND (t."X_3" <= 714.199951) AND (t."X_27" > 0.138100) AND (t."X_29" <= 0.097850)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_13" <= 31.299999) AND (t."X_27" <= 0.142000) AND (t."X_28" <= 0.440250) AND (t."X_3" <= 714.199951) AND (t."X_27" > 0.138100) AND (t."X_29" > 0.097850)) THEN 44 ELSE NULL END AS "Leaf_44"
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
    SELECT 0 AS nid,  0.404297 AS "P_0", 0.595703 AS "P_1", 1 AS "D", 0.595703 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.088525 AS "P_0", 0.911475 AS "P_1", 1 AS "D", 0.911475 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.869565 AS "P_0", 0.130435 AS "P_1", 0 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.014706 AS "P_0", 0.985294 AS "P_1", 1 AS "D", 0.985294 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.696970 AS "P_0", 0.303030 AS "P_1", 0 AS "D", 0.696970 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.894737 AS "P_0", 0.105263 AS "P_1", 0 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.965116 AS "P_0", 0.034884 AS "P_1", 0 AS "D", 0.965116 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.150000 AS "P_0", 0.850000 AS "P_1", 1 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.733333 AS "P_0", 0.266667 AS "P_1", 0 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.538462 AS "P_0", 0.461538 AS "P_1", 0 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.011070 AS "P_0", 0.988930 AS "P_1", 1 AS "D", 0.988930 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.003788 AS "P_0", 0.996212 AS "P_1", 1 AS "D", 0.996212 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_18", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 94.229996) AND (t."X_27" > 0.136550) AND (t."X_13" <= 22.275002) AND (t."X_28" <= 0.277550)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" <= 94.229996) AND (t."X_27" > 0.136550) AND (t."X_13" <= 22.275002) AND (t."X_28" > 0.277550) AND (t."X_25" <= 0.450800)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" <= 94.229996) AND (t."X_27" > 0.136550) AND (t."X_13" <= 22.275002) AND (t."X_28" > 0.277550) AND (t."X_25" > 0.450800) AND (t."X_29" <= 0.120950)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" <= 94.229996) AND (t."X_27" > 0.136550) AND (t."X_13" <= 22.275002) AND (t."X_28" > 0.277550) AND (t."X_25" > 0.450800) AND (t."X_29" > 0.120950)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > 94.229996) AND (t."X_27" > 0.145400)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" > 94.229996) AND (t."X_27" <= 0.145400) AND (t."X_3" > 696.250000) AND (t."X_28" > 0.278500)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" > 94.229996) AND (t."X_27" <= 0.145400) AND (t."X_3" > 696.250000) AND (t."X_28" <= 0.278500) AND (t."X_5" > 0.084245)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" > 94.229996) AND (t."X_27" <= 0.145400) AND (t."X_3" > 696.250000) AND (t."X_28" <= 0.278500) AND (t."X_5" <= 0.084245) AND (t."X_27" > 0.084545)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" > 94.229996) AND (t."X_27" <= 0.145400) AND (t."X_3" > 696.250000) AND (t."X_28" <= 0.278500) AND (t."X_5" <= 0.084245) AND (t."X_27" <= 0.084545) AND (t."X_29" <= 0.056875)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_2" > 94.229996) AND (t."X_27" <= 0.145400) AND (t."X_3" > 696.250000) AND (t."X_28" <= 0.278500) AND (t."X_5" <= 0.084245) AND (t."X_27" <= 0.084545) AND (t."X_29" > 0.056875)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" > 94.229996) AND (t."X_27" <= 0.145400) AND (t."X_3" <= 696.250000) AND (t."X_2" <= 94.455002)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" > 94.229996) AND (t."X_27" <= 0.145400) AND (t."X_3" <= 696.250000) AND (t."X_2" > 94.455002)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_2" <= 94.229996) AND (t."X_27" > 0.136550) AND (t."X_13" > 22.275002) AND (t."X_3" <= 637.099976)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" <= 94.229996) AND (t."X_27" > 0.136550) AND (t."X_13" > 22.275002) AND (t."X_3" > 637.099976)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_2" <= 94.229996) AND (t."X_27" <= 0.136550) AND (t."X_28" > 0.346950) AND (t."X_27" <= 0.117050)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" <= 94.229996) AND (t."X_27" <= 0.136550) AND (t."X_28" > 0.346950) AND (t."X_27" > 0.117050)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_2" <= 94.229996) AND (t."X_27" <= 0.136550) AND (t."X_28" <= 0.346950) AND (t."X_3" <= 562.549988)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_2" <= 94.229996) AND (t."X_27" <= 0.136550) AND (t."X_28" <= 0.346950) AND (t."X_3" > 562.549988) AND (t."X_27" <= 0.109950)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" <= 94.229996) AND (t."X_27" <= 0.136550) AND (t."X_28" <= 0.346950) AND (t."X_3" > 562.549988) AND (t."X_27" > 0.109950)) THEN 36 ELSE NULL END AS "Leaf_36"
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
    SELECT 0 AS nid,  0.427734 AS "P_0", 0.572266 AS "P_1", 1 AS "D", 0.572266 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.127389 AS "P_0", 0.872611 AS "P_1", 1 AS "D", 0.872611 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.904040 AS "P_0", 0.095960 AS "P_1", 0 AS "D", 0.904040 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.018587 AS "P_0", 0.981413 AS "P_1", 1 AS "D", 0.981413 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.966667 AS "P_0", 0.033333 AS "P_1", 0 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.720000 AS "P_0", 0.280000 AS "P_1", 0 AS "D", 0.720000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.416667 AS "P_0", 0.583333 AS "P_1", 1 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.011364 AS "P_0", 0.988636 AS "P_1", 1 AS "D", 0.988636 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.073171 AS "P_0", 0.926829 AS "P_1", 1 AS "D", 0.926829 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" > 0.143500) AND (t."X_21" <= 23.470001) AND (t."X_28" <= 0.291900)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" > 0.143500) AND (t."X_21" <= 23.470001) AND (t."X_28" > 0.291900) AND (t."X_28" <= 0.347050)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" > 0.143500) AND (t."X_21" <= 23.470001) AND (t."X_28" > 0.291900) AND (t."X_28" > 0.347050)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" > 0.143500) AND (t."X_21" > 23.470001) AND (t."X_2" <= 72.514999)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" > 0.143500) AND (t."X_21" > 23.470001) AND (t."X_2" > 72.514999)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > 99.790001) AND (t."X_26" > 0.210350)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" > 99.790001) AND (t."X_26" <= 0.210350) AND (t."X_1" <= 19.275002)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" > 99.790001) AND (t."X_26" <= 0.210350) AND (t."X_1" > 19.275002)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" <= 0.143500) AND (t."X_28" <= 0.160850)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" <= 0.143500) AND (t."X_28" > 0.160850) AND (t."X_27" > 0.111000) AND (t."X_29" <= 0.075880) AND (t."X_1" <= 17.969999)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" <= 0.143500) AND (t."X_28" > 0.160850) AND (t."X_27" > 0.111000) AND (t."X_29" <= 0.075880) AND (t."X_1" > 17.969999)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" <= 0.143500) AND (t."X_28" > 0.160850) AND (t."X_27" > 0.111000) AND (t."X_29" > 0.075880) AND (t."X_28" > 0.343350) AND (t."X_2" <= 87.389999)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" <= 0.143500) AND (t."X_28" > 0.160850) AND (t."X_27" > 0.111000) AND (t."X_29" > 0.075880) AND (t."X_28" > 0.343350) AND (t."X_2" > 87.389999)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" <= 0.143500) AND (t."X_28" > 0.160850) AND (t."X_27" > 0.111000) AND (t."X_29" > 0.075880) AND (t."X_28" <= 0.343350) AND (t."X_29" > 0.079815)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" <= 0.143500) AND (t."X_28" > 0.160850) AND (t."X_27" > 0.111000) AND (t."X_29" > 0.075880) AND (t."X_28" <= 0.343350) AND (t."X_29" <= 0.079815) AND (t."X_26" <= 0.286050)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" <= 0.143500) AND (t."X_28" > 0.160850) AND (t."X_27" > 0.111000) AND (t."X_29" > 0.075880) AND (t."X_28" <= 0.343350) AND (t."X_29" <= 0.079815) AND (t."X_26" > 0.286050)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" <= 0.143500) AND (t."X_28" > 0.160850) AND (t."X_27" <= 0.111000) AND (t."X_21" > 33.105000) AND (t."X_21" <= 33.559998)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" <= 0.143500) AND (t."X_28" > 0.160850) AND (t."X_27" <= 0.111000) AND (t."X_21" > 33.105000) AND (t."X_21" > 33.559998)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" <= 0.143500) AND (t."X_28" > 0.160850) AND (t."X_27" <= 0.111000) AND (t."X_21" <= 33.105000) AND (t."X_28" > 0.198250)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" <= 0.143500) AND (t."X_28" > 0.160850) AND (t."X_27" <= 0.111000) AND (t."X_21" <= 33.105000) AND (t."X_28" <= 0.198250) AND (t."X_28" <= 0.194350)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_2" <= 99.790001) AND (t."X_27" <= 0.143500) AND (t."X_28" > 0.160850) AND (t."X_27" <= 0.111000) AND (t."X_21" <= 33.105000) AND (t."X_28" <= 0.198250) AND (t."X_28" > 0.194350)) THEN 40 ELSE NULL END AS "Leaf_40"
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
    SELECT 0 AS nid,  0.394531 AS "P_0", 0.605469 AS "P_1", 1 AS "D", 0.605469 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.139665 AS "P_0", 0.860335 AS "P_1", 1 AS "D", 0.860335 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.987013 AS "P_0", 0.012987 AS "P_1", 0 AS "D", 0.987013 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.028846 AS "P_0", 0.971154 AS "P_1", 1 AS "D", 0.971154 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.891304 AS "P_0", 0.108696 AS "P_1", 0 AS "D", 0.891304 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.974359 AS "P_0", 0.025641 AS "P_1", 0 AS "D", 0.974359 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.025723 AS "P_0", 0.974277 AS "P_1", 1 AS "D", 0.974277 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.007491 AS "P_0", 0.992509 AS "P_1", 1 AS "D", 0.992509 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.136364 AS "P_0", 0.863636 AS "P_1", 1 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.051282 AS "P_0", 0.948718 AS "P_1", 1 AS "D", 0.948718 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.027027 AS "P_0", 0.972973 AS "P_1", 1 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.003984 AS "P_0", 0.996016 AS "P_1", 1 AS "D", 0.996016 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" > 0.158900)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_23" > 884.549988) AND (t."X_15" <= 0.008690)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.122150) AND (t."X_20" > 15.545000) AND (t."X_14" > 0.006910)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.122150) AND (t."X_20" > 15.545000) AND (t."X_14" <= 0.006910) AND (t."X_28" > 0.331150)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.122150) AND (t."X_20" > 15.545000) AND (t."X_14" <= 0.006910) AND (t."X_28" <= 0.331150) AND (t."X_23" > 820.450012)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.122150) AND (t."X_20" > 15.545000) AND (t."X_14" <= 0.006910) AND (t."X_28" <= 0.331150) AND (t."X_23" <= 820.450012) AND (t."X_29" <= 0.093865)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.122150) AND (t."X_20" > 15.545000) AND (t."X_14" <= 0.006910) AND (t."X_28" <= 0.331150) AND (t."X_23" <= 820.450012) AND (t."X_29" > 0.093865)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_23" > 884.549988) AND (t."X_15" > 0.008690) AND (t."X_11" <= 0.473150)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.122150) AND (t."X_20" <= 15.545000) AND (t."X_25" > 0.273500)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.122150) AND (t."X_20" <= 15.545000) AND (t."X_25" <= 0.273500) AND (t."X_29" <= 0.094105)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.122150) AND (t."X_20" <= 15.545000) AND (t."X_25" <= 0.273500) AND (t."X_29" > 0.094105)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_23" > 884.549988) AND (t."X_15" > 0.008690) AND (t."X_11" > 0.473150) AND (t."X_14" <= 0.003657) AND (t."X_14" <= 0.003291)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_23" > 884.549988) AND (t."X_15" > 0.008690) AND (t."X_11" > 0.473150) AND (t."X_14" <= 0.003657) AND (t."X_14" > 0.003291)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_23" > 884.549988) AND (t."X_15" > 0.008690) AND (t."X_11" > 0.473150) AND (t."X_14" > 0.003657) AND (t."X_26" > 0.182050)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_23" > 884.549988) AND (t."X_15" > 0.008690) AND (t."X_11" > 0.473150) AND (t."X_14" > 0.003657) AND (t."X_26" <= 0.182050) AND (t."X_20" <= 18.345001)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_23" > 884.549988) AND (t."X_15" > 0.008690) AND (t."X_11" > 0.473150) AND (t."X_14" > 0.003657) AND (t."X_26" <= 0.182050) AND (t."X_20" > 18.345001)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.122150) AND (t."X_27" <= 0.093225)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.122150) AND (t."X_27" > 0.093225) AND (t."X_29" <= 0.064430)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.122150) AND (t."X_27" > 0.093225) AND (t."X_29" > 0.064430) AND (t."X_15" > 0.012265)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.122150) AND (t."X_27" > 0.093225) AND (t."X_29" > 0.064430) AND (t."X_15" <= 0.012265) AND (t."X_29" <= 0.078450)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.122150) AND (t."X_27" > 0.093225) AND (t."X_29" > 0.064430) AND (t."X_15" <= 0.012265) AND (t."X_29" > 0.078450)) THEN 40 ELSE NULL END AS "Leaf_40"
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
    SELECT 0 AS nid,  0.414062 AS "P_0", 0.585938 AS "P_1", 1 AS "D", 0.585938 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.108761 AS "P_0", 0.891239 AS "P_1", 1 AS "D", 0.891239 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.972376 AS "P_0", 0.027624 AS "P_1", 0 AS "D", 0.972376 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.042208 AS "P_0", 0.957792 AS "P_1", 1 AS "D", 0.957792 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.983240 AS "P_0", 0.016760 AS "P_1", 0 AS "D", 0.983240 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.007576 AS "P_0", 0.992424 AS "P_1", 1 AS "D", 0.992424 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.476190 AS "P_0", 0.523810 AS "P_1", 1 AS "D", 0.523810 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.988764 AS "P_0", 0.011236 AS "P_1", 0 AS "D", 0.988764 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.994220 AS "P_0", 0.005780 AS "P_1", 0 AS "D", 0.994220 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.040816 AS "P_0", 0.959184 AS "P_1", 1 AS "D", 0.959184 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.020833 AS "P_0", 0.979167 AS "P_1", 1 AS "D", 0.979167 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" <= 116.050003) AND (t."X_29" > 0.092920) AND (t."X_22" <= 114.449997)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" <= 116.050003) AND (t."X_29" > 0.092920) AND (t."X_22" > 114.449997)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" <= 116.050003) AND (t."X_29" <= 0.092920) AND (t."X_28" > 0.319800)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" <= 116.050003) AND (t."X_29" <= 0.092920) AND (t."X_28" <= 0.319800) AND (t."X_26" > 0.318000) AND (t."X_26" <= 0.355200)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" <= 116.050003) AND (t."X_29" <= 0.092920) AND (t."X_28" <= 0.319800) AND (t."X_26" > 0.318000) AND (t."X_26" > 0.355200)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" <= 116.050003) AND (t."X_29" <= 0.092920) AND (t."X_28" <= 0.319800) AND (t."X_26" <= 0.318000) AND (t."X_14" <= 0.003049)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" <= 116.050003) AND (t."X_29" <= 0.092920) AND (t."X_28" <= 0.319800) AND (t."X_26" <= 0.318000) AND (t."X_14" > 0.003049) AND (t."X_14" <= 0.008638)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" <= 116.050003) AND (t."X_29" <= 0.092920) AND (t."X_28" <= 0.319800) AND (t."X_26" <= 0.318000) AND (t."X_14" > 0.003049) AND (t."X_14" > 0.008638)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" > 0.134700) AND (t."X_14" <= 0.005832)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" > 0.134700) AND (t."X_14" > 0.005832) AND (t."X_26" > 1.178500)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" > 0.134700) AND (t."X_14" > 0.005832) AND (t."X_26" <= 1.178500) AND (t."X_14" > 0.008438)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" > 116.050003) AND (t."X_19" <= 0.001547)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" > 0.134700) AND (t."X_14" > 0.005832) AND (t."X_26" <= 1.178500) AND (t."X_14" <= 0.008438) AND (t."X_29" > 0.103750)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" > 0.134700) AND (t."X_14" > 0.005832) AND (t."X_26" <= 1.178500) AND (t."X_14" <= 0.008438) AND (t."X_29" <= 0.103750) AND (t."X_29" <= 0.098830)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" > 0.134700) AND (t."X_14" > 0.005832) AND (t."X_26" <= 1.178500) AND (t."X_14" <= 0.008438) AND (t."X_29" <= 0.103750) AND (t."X_29" > 0.098830)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.134700) AND (t."X_29" <= 0.055125)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" > 116.050003) AND (t."X_19" > 0.001547) AND (t."X_22" > 117.449997)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" > 116.050003) AND (t."X_19" > 0.001547) AND (t."X_22" <= 117.449997) AND (t."X_29" <= 0.069200)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_22" > 105.150002) AND (t."X_22" > 116.050003) AND (t."X_19" > 0.001547) AND (t."X_22" <= 117.449997) AND (t."X_29" > 0.069200)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.134700) AND (t."X_29" > 0.055125) AND (t."X_14" <= 0.003294) AND (t."X_14" <= 0.003272)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.134700) AND (t."X_29" > 0.055125) AND (t."X_14" <= 0.003294) AND (t."X_14" > 0.003272)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.134700) AND (t."X_29" > 0.055125) AND (t."X_14" > 0.003294) AND (t."X_28" <= 0.198250) AND (t."X_9" <= 0.062080)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.134700) AND (t."X_29" > 0.055125) AND (t."X_14" > 0.003294) AND (t."X_28" <= 0.198250) AND (t."X_9" > 0.062080) AND (t."X_14" <= 0.010278)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.134700) AND (t."X_29" > 0.055125) AND (t."X_14" > 0.003294) AND (t."X_28" <= 0.198250) AND (t."X_9" > 0.062080) AND (t."X_14" > 0.010278)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.134700) AND (t."X_29" > 0.055125) AND (t."X_14" > 0.003294) AND (t."X_28" > 0.198250) AND (t."X_27" <= 0.093205)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.134700) AND (t."X_29" > 0.055125) AND (t."X_14" > 0.003294) AND (t."X_28" > 0.198250) AND (t."X_27" > 0.093205) AND (t."X_27" <= 0.093610)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_22" <= 105.150002) AND (t."X_27" <= 0.134700) AND (t."X_29" > 0.055125) AND (t."X_14" > 0.003294) AND (t."X_28" > 0.198250) AND (t."X_27" > 0.093205) AND (t."X_27" > 0.093610)) THEN 52 ELSE NULL END AS "Leaf_52"
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
    SELECT 0 AS nid,  0.400391 AS "P_0", 0.599609 AS "P_1", 1 AS "D", 0.599609 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.054054 AS "P_0", 0.945946 AS "P_1", 1 AS "D", 0.945946 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.578947 AS "P_0", 0.421053 AS "P_1", 0 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.981132 AS "P_0", 0.018868 AS "P_1", 0 AS "D", 0.981132 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.290323 AS "P_0", 0.709677 AS "P_1", 1 AS "D", 0.709677 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.047619 AS "P_0", 0.952381 AS "P_1", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.018248 AS "P_0", 0.981752 AS "P_1", 1 AS "D", 0.981752 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.687500 AS "P_0", 0.312500 AS "P_1", 0 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.993631 AS "P_0", 0.006369 AS "P_1", 0 AS "D", 0.993631 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.014652 AS "P_0", 0.985348 AS "P_1", 1 AS "D", 0.985348 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.011152 AS "P_0", 0.988848 AS "P_1", 1 AS "D", 0.988848 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.003876 AS "P_0", 0.996124 AS "P_1", 1 AS "D", 0.996124 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.022727 AS "P_0", 0.977273 AS "P_1", 1 AS "D", 0.977273 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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