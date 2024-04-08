WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
  FROM "BreastCancer_original" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" > 880.750000) AND (t."X_6" > 0.072140)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_23" > 880.750000) AND (t."X_6" <= 0.072140) AND (t."X_29" <= 0.073005)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_23" > 880.750000) AND (t."X_6" <= 0.072140) AND (t."X_29" > 0.073005)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_26" > 0.266450) AND (t."X_27" <= 0.121500)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_26" > 0.266450) AND (t."X_27" > 0.121500) AND (t."X_23" <= 767.900024)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_26" > 0.266450) AND (t."X_27" > 0.121500) AND (t."X_23" > 767.900024)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" > 0.160300) AND (t."X_27" <= 0.192550)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" > 0.160300) AND (t."X_27" > 0.192550)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_26" <= 0.266450) AND (t."X_29" <= 0.060960)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_26" <= 0.266450) AND (t."X_29" > 0.060960) AND (t."X_28" <= 0.198250)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_26" <= 0.266450) AND (t."X_29" > 0.060960) AND (t."X_28" > 0.198250) AND (t."X_23" <= 785.750000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_26" <= 0.266450) AND (t."X_29" > 0.060960) AND (t."X_28" > 0.198250) AND (t."X_23" > 785.750000)) THEN 22 ELSE NULL END AS "Leaf_22"
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
    SELECT 1 AS nid,  0.097257 AS "P_0", 0.902743 AS "P_1", 1 AS "D", 0.902743 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.042440 AS "P_0", 0.957560 AS "P_1", 1 AS "D", 0.957560 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.958333 AS "P_0", 0.041667 AS "P_1", 0 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.015974 AS "P_0", 0.984026 AS "P_1", 1 AS "D", 0.984026 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.171875 AS "P_0", 0.828125 AS "P_1", 1 AS "D", 0.828125 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.458333 AS "P_0", 0.541667 AS "P_1", 1 AS "D", 0.541667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.009934 AS "P_0", 0.990066 AS "P_1", 1 AS "D", 0.990066 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.003484 AS "P_0", 0.996516 AS "P_1", 1 AS "D", 0.996516 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" > 0.142350) AND (t."X_24" <= 0.140500)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_23" > 884.549988) AND (t."X_5" <= 0.085565)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_23" > 884.549988) AND (t."X_5" > 0.085565)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" > 0.142350) AND (t."X_24" > 0.140500) AND (t."X_25" <= 0.393500)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" > 0.142350) AND (t."X_24" > 0.140500) AND (t."X_25" > 0.393500)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.142350) AND (t."X_27" > 0.122300) AND (t."X_26" <= 0.263950)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.142350) AND (t."X_27" > 0.122300) AND (t."X_26" > 0.263950)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.142350) AND (t."X_27" <= 0.122300) AND (t."X_23" <= 653.449951)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.142350) AND (t."X_27" <= 0.122300) AND (t."X_23" > 653.449951) AND (t."X_14" <= 0.006595)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.142350) AND (t."X_27" <= 0.122300) AND (t."X_23" > 653.449951) AND (t."X_14" > 0.006595)) THEN 18 ELSE NULL END AS "Leaf_18"
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
    SELECT 1 AS nid,  0.118863 AS "P_0", 0.881137 AS "P_1", 1 AS "D", 0.881137 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.939560 AS "P_0", 0.060440 AS "P_1", 0 AS "D", 0.939560 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.035294 AS "P_0", 0.964706 AS "P_1", 1 AS "D", 0.964706 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.723404 AS "P_0", 0.276596 AS "P_1", 0 AS "D", 0.723404 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.476190 AS "P_0", 0.523810 AS "P_1", 1 AS "D", 0.523810 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.013115 AS "P_0", 0.986885 AS "P_1", 1 AS "D", 0.986885 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.228571 AS "P_0", 0.771429 AS "P_1", 1 AS "D", 0.771429 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.135800) AND (t."X_5" > 0.167050)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.135800) AND (t."X_5" <= 0.167050) AND (t."X_26" <= 0.330550)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.135800) AND (t."X_5" <= 0.167050) AND (t."X_26" > 0.330550)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_16" <= 0.019500)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_16" > 0.019500) AND (t."X_5" <= 0.085365)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.135800) AND (t."X_28" <= 0.198250)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.135800) AND (t."X_28" > 0.198250)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_16" > 0.019500) AND (t."X_5" > 0.085365) AND (t."X_20" <= 17.410000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_16" > 0.019500) AND (t."X_5" > 0.085365) AND (t."X_20" > 17.410000)) THEN 16 ELSE NULL END AS "Leaf_16"
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
    SELECT 1 AS nid,  0.090206 AS "P_0", 0.909794 AS "P_1", 1 AS "D", 0.909794 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.950276 AS "P_0", 0.049724 AS "P_1", 0 AS "D", 0.950276 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.008876 AS "P_0", 0.991124 AS "P_1", 1 AS "D", 0.991124 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.640000 AS "P_0", 0.360000 AS "P_1", 0 AS "D", 0.640000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.437500 AS "P_0", 0.562500 AS "P_1", 1 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.982353 AS "P_0", 0.017647 AS "P_1", 0 AS "D", 0.982353 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.993711 AS "P_0", 0.006289 AS "P_1", 0 AS "D", 0.993711 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" > 813.400024)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" > 31.170000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" <= 31.170000) AND (t."X_5" > 0.161750)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" <= 31.170000) AND (t."X_5" <= 0.161750) AND (t."X_26" <= 0.268300)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" <= 31.170000) AND (t."X_5" <= 0.161750) AND (t."X_26" > 0.268300) AND (t."X_3" <= 558.650024)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" <= 31.170000) AND (t."X_5" <= 0.161750) AND (t."X_26" > 0.268300) AND (t."X_3" > 558.650024) AND (t."X_28" <= 0.306450)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" <= 31.170000) AND (t."X_5" <= 0.161750) AND (t."X_26" > 0.268300) AND (t."X_3" > 558.650024) AND (t."X_28" > 0.306450)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" <= 813.400024) AND (t."X_27" > 0.114150)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" <= 813.400024) AND (t."X_27" <= 0.114150) AND (t."X_13" > 44.130001)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" <= 813.400024) AND (t."X_27" <= 0.114150) AND (t."X_13" <= 44.130001) AND (t."X_27" <= 0.093225)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" <= 813.400024) AND (t."X_27" <= 0.114150) AND (t."X_13" <= 44.130001) AND (t."X_27" > 0.093225) AND (t."X_5" <= 0.067535)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" <= 813.400024) AND (t."X_27" <= 0.114150) AND (t."X_13" <= 44.130001) AND (t."X_27" > 0.093225) AND (t."X_5" > 0.067535)) THEN 22 ELSE NULL END AS "Leaf_22"
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
    SELECT 1 AS nid,  0.068657 AS "P_0", 0.931343 AS "P_1", 1 AS "D", 0.931343 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.871795 AS "P_0", 0.128205 AS "P_1", 0 AS "D", 0.871795 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.022013 AS "P_0", 0.977987 AS "P_1", 1 AS "D", 0.977987 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.558824 AS "P_0", 0.441176 AS "P_1", 0 AS "D", 0.558824 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.595238 AS "P_0", 0.404762 AS "P_1", 0 AS "D", 0.595238 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.863636 AS "P_0", 0.136364 AS "P_1", 0 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.013029 AS "P_0", 0.986971 AS "P_1", 1 AS "D", 0.986971 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.006757 AS "P_0", 0.993243 AS "P_1", 1 AS "D", 0.993243 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.037736 AS "P_0", 0.962264 AS "P_1", 1 AS "D", 0.962264 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" > 0.135800) AND (t."X_24" <= 0.130300)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" > 16.799999) AND (t."X_26" <= 0.218150)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" > 0.135800) AND (t."X_24" > 0.130300) AND (t."X_29" <= 0.102300)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" > 0.135800) AND (t."X_24" > 0.130300) AND (t."X_29" > 0.102300)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.135800) AND (t."X_28" <= 0.198250)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_20" > 16.799999) AND (t."X_26" > 0.218150) AND (t."X_20" <= 17.369999)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_20" > 16.799999) AND (t."X_26" > 0.218150) AND (t."X_20" > 17.369999)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.135800) AND (t."X_28" > 0.198250) AND (t."X_20" <= 15.890000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.135800) AND (t."X_28" > 0.198250) AND (t."X_20" > 15.890000) AND (t."X_8" <= 0.171450)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.135800) AND (t."X_28" > 0.198250) AND (t."X_20" > 15.890000) AND (t."X_8" > 0.171450)) THEN 18 ELSE NULL END AS "Leaf_18"
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
    SELECT 1 AS nid,  0.093085 AS "P_0", 0.906915 AS "P_1", 1 AS "D", 0.906915 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.943005 AS "P_0", 0.056995 AS "P_1", 0 AS "D", 0.943005 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.018519 AS "P_0", 0.981481 AS "P_1", 1 AS "D", 0.981481 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.557692 AS "P_0", 0.442308 AS "P_1", 0 AS "D", 0.557692 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.764706 AS "P_0", 0.235294 AS "P_1", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.988950 AS "P_0", 0.011050 AS "P_1", 0 AS "D", 0.988950 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.009646 AS "P_0", 0.990354 AS "P_1", 1 AS "D", 0.990354 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.130435 AS "P_0", 0.869565 AS "P_1", 1 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
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