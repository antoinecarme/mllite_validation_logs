WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_21", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" > 0.160300) AND (t."X_6" <= 0.293150)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" > 0.160300) AND (t."X_6" > 0.293150)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_23" > 880.750000) AND (t."X_6" > 0.072140)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_23" > 880.750000) AND (t."X_6" <= 0.072140) AND (t."X_29" <= 0.073005) AND (t."X_6" > 0.049180)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_23" > 880.750000) AND (t."X_6" <= 0.072140) AND (t."X_29" <= 0.073005) AND (t."X_6" <= 0.049180) AND (t."X_29" <= 0.060180)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_23" > 880.750000) AND (t."X_6" <= 0.072140) AND (t."X_29" <= 0.073005) AND (t."X_6" <= 0.049180) AND (t."X_29" > 0.060180)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_23" > 880.750000) AND (t."X_6" <= 0.072140) AND (t."X_29" > 0.073005) AND (t."X_28" <= 0.241200)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_23" > 880.750000) AND (t."X_6" <= 0.072140) AND (t."X_29" > 0.073005) AND (t."X_28" > 0.241200)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_28" <= 0.160850)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_28" > 0.160850) AND (t."X_26" > 0.266450) AND (t."X_27" <= 0.121500)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_28" > 0.160850) AND (t."X_26" > 0.266450) AND (t."X_27" > 0.121500) AND (t."X_23" > 767.900024) AND (t."X_23" <= 851.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_28" > 0.160850) AND (t."X_26" > 0.266450) AND (t."X_27" > 0.121500) AND (t."X_23" > 767.900024) AND (t."X_23" > 851.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_28" > 0.160850) AND (t."X_26" > 0.266450) AND (t."X_27" > 0.121500) AND (t."X_23" <= 767.900024) AND (t."X_27" <= 0.138450)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_28" > 0.160850) AND (t."X_26" > 0.266450) AND (t."X_27" > 0.121500) AND (t."X_23" <= 767.900024) AND (t."X_27" > 0.138450)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_28" > 0.160850) AND (t."X_26" <= 0.266450) AND (t."X_15" > 0.011030)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_28" > 0.160850) AND (t."X_26" <= 0.266450) AND (t."X_15" <= 0.011030) AND (t."X_15" > 0.011005)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_28" > 0.160850) AND (t."X_26" <= 0.266450) AND (t."X_15" <= 0.011030) AND (t."X_15" <= 0.011005) AND (t."X_27" <= 0.070605)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_28" > 0.160850) AND (t."X_26" <= 0.266450) AND (t."X_15" <= 0.011030) AND (t."X_15" <= 0.011005) AND (t."X_27" > 0.070605) AND (t."X_28" <= 0.200250)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_23" <= 880.750000) AND (t."X_27" <= 0.160300) AND (t."X_28" > 0.160850) AND (t."X_26" <= 0.266450) AND (t."X_15" <= 0.011030) AND (t."X_15" <= 0.011005) AND (t."X_27" > 0.070605) AND (t."X_28" > 0.200250)) THEN 36 ELSE NULL END AS "Leaf_36"
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
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.037333 AS "P_0", 0.962667 AS "P_1", 1 AS "D", 0.962667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.009646 AS "P_0", 0.990354 AS "P_1", 1 AS "D", 0.990354 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.171875 AS "P_0", 0.828125 AS "P_1", 1 AS "D", 0.828125 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.458333 AS "P_0", 0.541667 AS "P_1", 1 AS "D", 0.541667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.033333 AS "P_0", 0.966667 AS "P_1", 1 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.022472 AS "P_0", 0.977528 AS "P_1", 1 AS "D", 0.977528 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" > 0.142350) AND (t."X_24" <= 0.140500) AND (t."X_29" <= 0.072555)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" > 0.142350) AND (t."X_24" <= 0.140500) AND (t."X_29" > 0.072555) AND (t."X_28" <= 0.298100)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" > 0.142350) AND (t."X_24" <= 0.140500) AND (t."X_29" > 0.072555) AND (t."X_28" > 0.298100)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" > 0.142350) AND (t."X_24" > 0.140500) AND (t."X_23" > 849.349976)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_23" > 884.549988) AND (t."X_5" > 0.085565)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_23" > 884.549988) AND (t."X_5" <= 0.085565) AND (t."X_28" <= 0.242300)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_23" > 884.549988) AND (t."X_5" <= 0.085565) AND (t."X_28" > 0.242300) AND (t."X_23" <= 970.750000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_23" > 884.549988) AND (t."X_5" <= 0.085565) AND (t."X_28" > 0.242300) AND (t."X_23" > 970.750000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" > 0.142350) AND (t."X_24" > 0.140500) AND (t."X_23" <= 849.349976) AND (t."X_14" > 0.004890)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" > 0.142350) AND (t."X_24" > 0.140500) AND (t."X_23" <= 849.349976) AND (t."X_14" <= 0.004890) AND (t."X_29" <= 0.091415)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" > 0.142350) AND (t."X_24" > 0.140500) AND (t."X_23" <= 849.349976) AND (t."X_14" <= 0.004890) AND (t."X_29" > 0.091415)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.142350) AND (t."X_29" <= 0.055995)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_23" > 727.099976) AND (t."X_24" > 0.130000) AND (t."X_15" > 0.035840)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_23" > 727.099976) AND (t."X_24" > 0.130000) AND (t."X_15" <= 0.035840) AND (t."X_27" <= 0.122300)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_23" > 727.099976) AND (t."X_24" > 0.130000) AND (t."X_15" <= 0.035840) AND (t."X_27" > 0.122300)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_23" > 727.099976) AND (t."X_24" <= 0.130000) AND (t."X_29" > 0.063755)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_23" > 727.099976) AND (t."X_24" <= 0.130000) AND (t."X_29" <= 0.063755) AND (t."X_23" <= 858.650024)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_23" > 727.099976) AND (t."X_24" <= 0.130000) AND (t."X_29" <= 0.063755) AND (t."X_23" > 858.650024)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_23" <= 727.099976) AND (t."X_27" <= 0.093205)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_23" <= 727.099976) AND (t."X_27" > 0.093205) AND (t."X_27" <= 0.094225)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_23" <= 884.549988) AND (t."X_27" <= 0.142350) AND (t."X_29" > 0.055995) AND (t."X_23" <= 727.099976) AND (t."X_27" > 0.093205) AND (t."X_27" > 0.094225)) THEN 40 ELSE NULL END AS "Leaf_40"
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
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.967742 AS "P_0", 0.032258 AS "P_1", 0 AS "D", 0.967742 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.476190 AS "P_0", 0.523810 AS "P_1", 1 AS "D", 0.523810 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.029586 AS "P_0", 0.970414 AS "P_1", 1 AS "D", 0.970414 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.003509 AS "P_0", 0.996491 AS "P_1", 1 AS "D", 0.996491 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.169811 AS "P_0", 0.830189 AS "P_1", 1 AS "D", 0.830189 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.027778 AS "P_0", 0.972222 AS "P_1", 1 AS "D", 0.972222 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.470588 AS "P_0", 0.529412 AS "P_1", 1 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.017857 AS "P_0", 0.982143 AS "P_1", 1 AS "D", 0.982143 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.135800) AND (t."X_5" > 0.167050)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.135800) AND (t."X_5" <= 0.167050) AND (t."X_28" <= 0.259300)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.135800) AND (t."X_5" <= 0.167050) AND (t."X_28" > 0.259300) AND (t."X_20" <= 15.335000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.135800) AND (t."X_5" <= 0.167050) AND (t."X_28" > 0.259300) AND (t."X_20" > 15.335000) AND (t."X_26" <= 0.289900)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.135800) AND (t."X_5" <= 0.167050) AND (t."X_28" > 0.259300) AND (t."X_20" > 15.335000) AND (t."X_26" > 0.289900) AND (t."X_5" > 0.152600)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.135800) AND (t."X_5" <= 0.167050) AND (t."X_28" > 0.259300) AND (t."X_20" > 15.335000) AND (t."X_26" > 0.289900) AND (t."X_5" <= 0.152600) AND (t."X_20" <= 16.400000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" > 0.135800) AND (t."X_5" <= 0.167050) AND (t."X_28" > 0.259300) AND (t."X_20" > 15.335000) AND (t."X_26" > 0.289900) AND (t."X_5" <= 0.152600) AND (t."X_20" > 16.400000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_16" <= 0.019005) AND (t."X_16" <= 0.018135)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_16" <= 0.019005) AND (t."X_16" > 0.018135)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_16" > 0.019005) AND (t."X_26" <= 0.209800) AND (t."X_28" <= 0.288000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_16" > 0.019005) AND (t."X_26" <= 0.209800) AND (t."X_28" > 0.288000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.135800) AND (t."X_29" <= 0.055125)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_16" > 0.019005) AND (t."X_26" > 0.209800) AND (t."X_20" > 17.025002)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_16" > 0.019005) AND (t."X_26" > 0.209800) AND (t."X_20" <= 17.025002) AND (t."X_20" <= 17.000000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_20" > 16.790001) AND (t."X_16" > 0.019005) AND (t."X_26" > 0.209800) AND (t."X_20" <= 17.025002) AND (t."X_20" > 17.000000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_28" > 0.198250)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_28" <= 0.198250) AND (t."X_20" <= 13.350000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_28" <= 0.198250) AND (t."X_20" > 13.350000) AND (t."X_29" <= 0.071170)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_20" <= 16.790001) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_28" <= 0.198250) AND (t."X_20" > 13.350000) AND (t."X_29" > 0.071170)) THEN 36 ELSE NULL END AS "Leaf_36"
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
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.982456 AS "P_0", 0.017544 AS "P_1", 0 AS "D", 0.982456 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.994012 AS "P_0", 0.005988 AS "P_1", 0 AS "D", 0.994012 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.005935 AS "P_0", 0.994065 AS "P_1", 1 AS "D", 0.994065 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" > 813.400024) AND (t."X_29" <= 0.060415)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" > 813.400024) AND (t."X_29" > 0.060415)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" > 31.170000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" <= 31.170000) AND (t."X_26" <= 0.268300)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" <= 31.170000) AND (t."X_26" > 0.268300) AND (t."X_3" <= 558.650024) AND (t."X_28" > 0.361000) AND (t."X_3" <= 341.250000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" <= 31.170000) AND (t."X_26" > 0.268300) AND (t."X_3" <= 558.650024) AND (t."X_28" > 0.361000) AND (t."X_3" > 341.250000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" <= 31.170000) AND (t."X_26" > 0.268300) AND (t."X_3" <= 558.650024) AND (t."X_28" <= 0.361000) AND (t."X_3" <= 380.250000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" <= 31.170000) AND (t."X_26" > 0.268300) AND (t."X_3" <= 558.650024) AND (t."X_28" <= 0.361000) AND (t."X_3" > 380.250000) AND (t."X_27" <= 0.184250)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" <= 31.170000) AND (t."X_26" > 0.268300) AND (t."X_3" <= 558.650024) AND (t."X_28" <= 0.361000) AND (t."X_3" > 380.250000) AND (t."X_27" > 0.184250)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" <= 31.170000) AND (t."X_26" > 0.268300) AND (t."X_3" > 558.650024) AND (t."X_29" <= 0.077780) AND (t."X_27" <= 0.153750)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" <= 31.170000) AND (t."X_26" > 0.268300) AND (t."X_3" > 558.650024) AND (t."X_29" <= 0.077780) AND (t."X_27" > 0.153750)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" <= 31.170000) AND (t."X_26" > 0.268300) AND (t."X_3" > 558.650024) AND (t."X_29" > 0.077780) AND (t."X_26" > 0.370200)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" <= 31.170000) AND (t."X_26" > 0.268300) AND (t."X_3" > 558.650024) AND (t."X_29" > 0.077780) AND (t."X_26" <= 0.370200) AND (t."X_8" <= 0.178750)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_27" > 0.121050) AND (t."X_13" <= 31.170000) AND (t."X_26" > 0.268300) AND (t."X_3" > 558.650024) AND (t."X_29" > 0.077780) AND (t."X_26" <= 0.370200) AND (t."X_8" > 0.178750)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" <= 813.400024) AND (t."X_27" > 0.115750) AND (t."X_5" <= 0.088645)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" <= 813.400024) AND (t."X_27" > 0.115750) AND (t."X_5" > 0.088645)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" <= 813.400024) AND (t."X_27" <= 0.115750) AND (t."X_3" > 715.650024) AND (t."X_27" <= 0.084625)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" <= 813.400024) AND (t."X_27" <= 0.115750) AND (t."X_3" > 715.650024) AND (t."X_27" > 0.084625)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" <= 813.400024) AND (t."X_27" <= 0.115750) AND (t."X_3" <= 715.650024) AND (t."X_28" <= 0.198300) AND (t."X_28" <= 0.194750)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" <= 813.400024) AND (t."X_27" <= 0.115750) AND (t."X_3" <= 715.650024) AND (t."X_28" <= 0.198300) AND (t."X_28" > 0.194750)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" <= 813.400024) AND (t."X_27" <= 0.115750) AND (t."X_3" <= 715.650024) AND (t."X_28" > 0.198300) AND (t."X_27" <= 0.093225)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" <= 813.400024) AND (t."X_27" <= 0.115750) AND (t."X_3" <= 715.650024) AND (t."X_28" > 0.198300) AND (t."X_27" > 0.093225) AND (t."X_27" <= 0.093610)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_27" <= 0.121050) AND (t."X_3" <= 813.400024) AND (t."X_27" <= 0.115750) AND (t."X_3" <= 715.650024) AND (t."X_28" > 0.198300) AND (t."X_27" > 0.093225) AND (t."X_27" > 0.093610)) THEN 44 ELSE NULL END AS "Leaf_44"
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
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.558824 AS "P_0", 0.441176 AS "P_1", 0 AS "D", 0.558824 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.690909 AS "P_0", 0.309091 AS "P_1", 0 AS "D", 0.690909 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.440000 AS "P_0", 0.560000 AS "P_1", 1 AS "D", 0.560000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.012945 AS "P_0", 0.987055 AS "P_1", 1 AS "D", 0.987055 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.009901 AS "P_0", 0.990099 AS "P_1", 1 AS "D", 0.990099 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.006849 AS "P_0", 0.993151 AS "P_1", 1 AS "D", 0.993151 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.037037 AS "P_0", 0.962963 AS "P_1", 1 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" > 0.135800) AND (t."X_24" <= 0.130300) AND (t."X_29" <= 0.075950)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" > 0.135800) AND (t."X_24" <= 0.130300) AND (t."X_29" > 0.075950)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" > 0.135800) AND (t."X_24" > 0.130300) AND (t."X_20" <= 11.575001)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" > 0.135800) AND (t."X_24" > 0.130300) AND (t."X_20" > 11.575001) AND (t."X_29" > 0.102300)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" > 0.135800) AND (t."X_24" > 0.130300) AND (t."X_20" > 11.575001) AND (t."X_29" <= 0.102300) AND (t."X_8" > 0.193400)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" > 0.135800) AND (t."X_24" > 0.130300) AND (t."X_20" > 11.575001) AND (t."X_29" <= 0.102300) AND (t."X_8" <= 0.193400) AND (t."X_20" > 15.045000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" > 0.135800) AND (t."X_24" > 0.130300) AND (t."X_20" > 11.575001) AND (t."X_29" <= 0.102300) AND (t."X_8" <= 0.193400) AND (t."X_20" <= 15.045000) AND (t."X_8" <= 0.185050)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" > 0.135800) AND (t."X_24" > 0.130300) AND (t."X_20" > 11.575001) AND (t."X_29" <= 0.102300) AND (t."X_8" <= 0.193400) AND (t."X_20" <= 15.045000) AND (t."X_8" > 0.185050)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_20" > 16.799999) AND (t."X_26" <= 0.218150) AND (t."X_28" <= 0.242300)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_20" > 16.799999) AND (t."X_26" <= 0.218150) AND (t."X_28" > 0.242300) AND (t."X_20" <= 19.009998)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" > 16.799999) AND (t."X_26" <= 0.218150) AND (t."X_28" > 0.242300) AND (t."X_20" > 19.009998)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.135800) AND (t."X_29" <= 0.055125)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_20" > 16.799999) AND (t."X_26" > 0.218150) AND (t."X_20" > 17.244999)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_20" > 16.799999) AND (t."X_26" > 0.218150) AND (t."X_20" <= 17.244999) AND (t."X_28" > 0.274850)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_20" > 16.799999) AND (t."X_26" > 0.218150) AND (t."X_20" <= 17.244999) AND (t."X_28" <= 0.274850) AND (t."X_8" <= 0.164800)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_20" > 16.799999) AND (t."X_26" > 0.218150) AND (t."X_20" <= 17.244999) AND (t."X_28" <= 0.274850) AND (t."X_8" > 0.164800)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_26" > 0.334650) AND (t."X_26" <= 0.344200)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_26" > 0.334650) AND (t."X_26" > 0.344200)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_26" <= 0.334650) AND (t."X_28" <= 0.198250) AND (t."X_27" <= 0.057330)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_26" <= 0.334650) AND (t."X_28" <= 0.198250) AND (t."X_27" > 0.057330) AND (t."X_29" <= 0.073555)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_26" <= 0.334650) AND (t."X_28" <= 0.198250) AND (t."X_27" > 0.057330) AND (t."X_29" > 0.073555)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_26" <= 0.334650) AND (t."X_28" > 0.198250) AND (t."X_27" <= 0.110850)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_26" <= 0.334650) AND (t."X_28" > 0.198250) AND (t."X_27" > 0.110850) AND (t."X_27" <= 0.111900)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_26" <= 0.334650) AND (t."X_28" > 0.198250) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.111900)) THEN 46 ELSE NULL END AS "Leaf_46"
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
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.988950 AS "P_0", 0.011050 AS "P_1", 0 AS "D", 0.988950 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.012422 AS "P_0", 0.987578 AS "P_1", 1 AS "D", 0.987578 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.006452 AS "P_0", 0.993548 AS "P_1", 1 AS "D", 0.993548 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.003344 AS "P_0", 0.996656 AS "P_1", 1 AS "D", 0.996656 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.040000 AS "P_0", 0.960000 AS "P_1", 1 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_6", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_13" <= 14.180000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_28" > 0.426300)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_28" <= 0.426300) AND (t."X_13" > 40.220001) AND (t."X_11" > 1.707500) AND (t."X_27" <= 0.038360)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_28" <= 0.426300) AND (t."X_13" > 40.220001) AND (t."X_11" > 1.707500) AND (t."X_27" > 0.038360)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_28" <= 0.426300) AND (t."X_13" > 40.220001) AND (t."X_11" <= 1.707500) AND (t."X_29" <= 0.061185)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_28" <= 0.426300) AND (t."X_13" > 40.220001) AND (t."X_11" <= 1.707500) AND (t."X_29" > 0.061185) AND (t."X_29" <= 0.088300)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_28" <= 0.426300) AND (t."X_13" > 40.220001) AND (t."X_11" <= 1.707500) AND (t."X_29" > 0.061185) AND (t."X_29" > 0.088300)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_13" > 14.180000) AND (t."X_26" <= 0.203400)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_13" > 14.180000) AND (t."X_26" > 0.203400) AND (t."X_16" > 0.135650)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_28" <= 0.426300) AND (t."X_13" <= 40.220001) AND (t."X_27" > 0.110850) AND (t."X_29" <= 0.072025) AND (t."X_11" <= 0.821000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_28" <= 0.426300) AND (t."X_13" <= 40.220001) AND (t."X_27" > 0.110850) AND (t."X_29" <= 0.072025) AND (t."X_11" > 0.821000) AND (t."X_13" <= 20.365002)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_28" <= 0.426300) AND (t."X_13" <= 40.220001) AND (t."X_27" > 0.110850) AND (t."X_29" <= 0.072025) AND (t."X_11" > 0.821000) AND (t."X_13" > 20.365002)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_28" <= 0.426300) AND (t."X_13" <= 40.220001) AND (t."X_27" > 0.110850) AND (t."X_29" > 0.072025) AND (t."X_28" > 0.340600)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_28" <= 0.426300) AND (t."X_13" <= 40.220001) AND (t."X_27" > 0.110850) AND (t."X_29" > 0.072025) AND (t."X_28" <= 0.340600) AND (t."X_26" <= 0.399450)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_28" <= 0.426300) AND (t."X_13" <= 40.220001) AND (t."X_27" > 0.110850) AND (t."X_29" > 0.072025) AND (t."X_28" <= 0.340600) AND (t."X_26" > 0.399450) AND (t."X_27" <= 0.135950)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_28" <= 0.426300) AND (t."X_13" <= 40.220001) AND (t."X_27" > 0.110850) AND (t."X_29" > 0.072025) AND (t."X_28" <= 0.340600) AND (t."X_26" > 0.399450) AND (t."X_27" > 0.135950)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_13" > 14.180000) AND (t."X_26" > 0.203400) AND (t."X_16" <= 0.135650) AND (t."X_28" > 0.270200)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_13" > 14.180000) AND (t."X_26" > 0.203400) AND (t."X_16" <= 0.135650) AND (t."X_28" <= 0.270200) AND (t."X_28" > 0.269000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_13" > 14.180000) AND (t."X_26" > 0.203400) AND (t."X_16" <= 0.135650) AND (t."X_28" <= 0.270200) AND (t."X_28" <= 0.269000) AND (t."X_13" <= 23.795000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_27" > 0.142350) AND (t."X_13" > 14.180000) AND (t."X_26" > 0.203400) AND (t."X_16" <= 0.135650) AND (t."X_28" <= 0.270200) AND (t."X_28" <= 0.269000) AND (t."X_13" > 23.795000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_28" <= 0.426300) AND (t."X_13" <= 40.220001) AND (t."X_27" <= 0.110850) AND (t."X_27" <= 0.093225)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_28" <= 0.426300) AND (t."X_13" <= 40.220001) AND (t."X_27" <= 0.110850) AND (t."X_27" > 0.093225) AND (t."X_27" <= 0.093610)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_27" <= 0.142350) AND (t."X_28" <= 0.426300) AND (t."X_13" <= 40.220001) AND (t."X_27" <= 0.110850) AND (t."X_27" > 0.093225) AND (t."X_27" > 0.093610)) THEN 44 ELSE NULL END AS "Leaf_44"
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
    SELECT 0 AS nid,  0.372583 AS "P_0", 0.627416 AS "P_1", 1 AS "D", 0.627416 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.098701 AS "P_0", 0.901299 AS "P_1", 1 AS "D", 0.901299 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.945652 AS "P_0", 0.054348 AS "P_1", 0 AS "D", 0.945652 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.972067 AS "P_0", 0.027933 AS "P_1", 0 AS "D", 0.972067 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.084433 AS "P_0", 0.915567 AS "P_1", 1 AS "D", 0.915567 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.031609 AS "P_0", 0.968391 AS "P_1", 1 AS "D", 0.968391 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.677419 AS "P_0", 0.322581 AS "P_1", 0 AS "D", 0.677419 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.983051 AS "P_0", 0.016949 AS "P_1", 0 AS "D", 0.983051 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.988636 AS "P_0", 0.011364 AS "P_1", 0 AS "D", 0.988636 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.003425 AS "P_0", 0.996575 AS "P_1", 1 AS "D", 0.996575 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.178571 AS "P_0", 0.821429 AS "P_1", 1 AS "D", 0.821429 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.065217 AS "P_0", 0.934783 AS "P_1", 1 AS "D", 0.934783 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.044444 AS "P_0", 0.955556 AS "P_1", 1 AS "D", 0.955556 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.962963 AS "P_0", 0.037037 AS "P_1", 0 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.023256 AS "P_0", 0.976744 AS "P_1", 1 AS "D", 0.976744 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_9", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_46", t1."Leaf_49", t1."Leaf_51", t1."Leaf_53", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_59", t1."Leaf_60" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.102150) AND (t."X_27" > 0.110950) AND (t."X_1" <= 16.190001)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" <= 0.102150) AND (t."X_27" > 0.110950) AND (t."X_1" > 16.190001) AND (t."X_29" > 0.082335) AND (t."X_27" <= 0.123500)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 0.102150) AND (t."X_27" > 0.110950) AND (t."X_1" > 16.190001) AND (t."X_29" > 0.082335) AND (t."X_27" > 0.123500)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" > 0.102150) AND (t."X_21" <= 25.735001) AND (t."X_27" <= 0.144150) AND (t."X_29" > 0.079965)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" > 0.102150) AND (t."X_21" <= 25.735001) AND (t."X_27" <= 0.144150) AND (t."X_29" <= 0.079965) AND (t."X_5" <= 0.124250)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" > 0.102150) AND (t."X_21" <= 25.735001) AND (t."X_27" <= 0.144150) AND (t."X_29" <= 0.079965) AND (t."X_5" > 0.124250)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" > 0.102150) AND (t."X_21" <= 25.735001) AND (t."X_27" > 0.144150) AND (t."X_24" > 0.154050)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" > 0.102150) AND (t."X_21" <= 25.735001) AND (t."X_27" > 0.144150) AND (t."X_24" <= 0.154050) AND (t."X_29" > 0.111900)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" > 0.102150) AND (t."X_21" <= 25.735001) AND (t."X_27" > 0.144150) AND (t."X_24" <= 0.154050) AND (t."X_29" <= 0.111900) AND (t."X_24" <= 0.153350)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" > 0.102150) AND (t."X_21" <= 25.735001) AND (t."X_27" > 0.144150) AND (t."X_24" <= 0.154050) AND (t."X_29" <= 0.111900) AND (t."X_24" > 0.153350)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" > 0.102150) AND (t."X_21" > 25.735001) AND (t."X_24" <= 0.115950) AND (t."X_27" <= 0.137850)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" > 0.102150) AND (t."X_21" > 25.735001) AND (t."X_24" <= 0.115950) AND (t."X_27" > 0.137850)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" <= 0.102150) AND (t."X_27" > 0.110950) AND (t."X_1" > 16.190001) AND (t."X_29" <= 0.082335) AND (t."X_21" <= 31.764999)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" <= 0.102150) AND (t."X_27" > 0.110950) AND (t."X_1" > 16.190001) AND (t."X_29" <= 0.082335) AND (t."X_21" > 31.764999) AND (t."X_29" <= 0.071570)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_5" <= 0.102150) AND (t."X_27" > 0.110950) AND (t."X_1" > 16.190001) AND (t."X_29" <= 0.082335) AND (t."X_21" > 31.764999) AND (t."X_29" > 0.071570)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_5" > 0.102150) AND (t."X_21" > 25.735001) AND (t."X_24" > 0.115950) AND (t."X_1" <= 20.705000) AND (t."X_1" > 20.690001)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_5" > 0.102150) AND (t."X_21" > 25.735001) AND (t."X_24" > 0.115950) AND (t."X_1" <= 20.705000) AND (t."X_1" <= 20.690001) AND (t."X_5" > 0.115800)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_5" > 0.102150) AND (t."X_21" > 25.735001) AND (t."X_24" > 0.115950) AND (t."X_1" <= 20.705000) AND (t."X_1" <= 20.690001) AND (t."X_5" <= 0.115800) AND (t."X_27" <= 0.156000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_5" > 0.102150) AND (t."X_21" > 25.735001) AND (t."X_24" > 0.115950) AND (t."X_1" <= 20.705000) AND (t."X_1" <= 20.690001) AND (t."X_5" <= 0.115800) AND (t."X_27" > 0.156000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_5" > 0.102150) AND (t."X_21" > 25.735001) AND (t."X_24" > 0.115950) AND (t."X_1" > 20.705000) AND (t."X_27" > 0.131000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_5" > 0.102150) AND (t."X_21" > 25.735001) AND (t."X_24" > 0.115950) AND (t."X_1" > 20.705000) AND (t."X_27" <= 0.131000) AND (t."X_21" <= 29.900000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_5" > 0.102150) AND (t."X_21" > 25.735001) AND (t."X_24" > 0.115950) AND (t."X_1" > 20.705000) AND (t."X_27" <= 0.131000) AND (t."X_21" > 29.900000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_5" <= 0.102150) AND (t."X_27" <= 0.110950) AND (t."X_28" > 0.426300)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_5" <= 0.102150) AND (t."X_27" <= 0.110950) AND (t."X_28" <= 0.426300) AND (t."X_27" > 0.082255) AND (t."X_27" <= 0.082490)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_5" <= 0.102150) AND (t."X_27" <= 0.110950) AND (t."X_28" <= 0.426300) AND (t."X_27" > 0.082255) AND (t."X_27" > 0.082490) AND (t."X_21" <= 30.275000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_5" <= 0.102150) AND (t."X_27" <= 0.110950) AND (t."X_28" <= 0.426300) AND (t."X_27" > 0.082255) AND (t."X_27" > 0.082490) AND (t."X_21" > 30.275000) AND (t."X_28" <= 0.245450)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_5" <= 0.102150) AND (t."X_27" <= 0.110950) AND (t."X_28" <= 0.426300) AND (t."X_27" > 0.082255) AND (t."X_27" > 0.082490) AND (t."X_21" > 30.275000) AND (t."X_28" > 0.245450) AND (t."X_8" <= 0.159300)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_5" <= 0.102150) AND (t."X_27" <= 0.110950) AND (t."X_28" <= 0.426300) AND (t."X_27" > 0.082255) AND (t."X_27" > 0.082490) AND (t."X_21" > 30.275000) AND (t."X_28" > 0.245450) AND (t."X_8" > 0.159300)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_5" <= 0.102150) AND (t."X_27" <= 0.110950) AND (t."X_28" <= 0.426300) AND (t."X_27" <= 0.082255) AND (t."X_1" <= 29.619999)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_5" <= 0.102150) AND (t."X_27" <= 0.110950) AND (t."X_28" <= 0.426300) AND (t."X_27" <= 0.082255) AND (t."X_1" > 29.619999) AND (t."X_29" <= 0.064540)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_5" <= 0.102150) AND (t."X_27" <= 0.110950) AND (t."X_28" <= 0.426300) AND (t."X_27" <= 0.082255) AND (t."X_1" > 29.619999) AND (t."X_29" > 0.064540)) THEN 60 ELSE NULL END AS "Leaf_60"
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
    SELECT 0 AS nid,  0.388401 AS "P_0", 0.611599 AS "P_1", 1 AS "D", 0.611599 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.105611 AS "P_0", 0.894389 AS "P_1", 1 AS "D", 0.894389 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.710526 AS "P_0", 0.289474 AS "P_1", 0 AS "D", 0.710526 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.432432 AS "P_0", 0.567568 AS "P_1", 1 AS "D", 0.567568 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.909677 AS "P_0", 0.090323 AS "P_1", 0 AS "D", 0.909677 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.067797 AS "P_0", 0.932203 AS "P_1", 1 AS "D", 0.932203 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.029740 AS "P_0", 0.970260 AS "P_1", 1 AS "D", 0.970260 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.705882 AS "P_0", 0.294118 AS "P_1", 0 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    SELECT 19 AS nid,  0.757576 AS "P_0", 0.242424 AS "P_1", 0 AS "D", 0.757576 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.961538 AS "P_0", 0.038462 AS "P_1", 0 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.938356 AS "P_0", 0.061644 AS "P_1", 0 AS "D", 0.938356 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.973684 AS "P_0", 0.026316 AS "P_1", 0 AS "D", 0.973684 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.896552 AS "P_0", 0.103448 AS "P_1", 0 AS "D", 0.896552 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.026119 AS "P_0", 0.973881 AS "P_1", 1 AS "D", 0.973881 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.005000 AS "P_0", 0.995000 AS "P_1", 1 AS "D", 0.995000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.088235 AS "P_0", 0.911765 AS "P_1", 1 AS "D", 0.911765 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.046154 AS "P_0", 0.953846 AS "P_1", 1 AS "D", 0.953846 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_22" <= 113.149994) AND (t."X_27" > 0.147050) AND (t."X_1" > 18.080000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_22" <= 113.149994) AND (t."X_27" > 0.147050) AND (t."X_1" <= 18.080000) AND (t."X_26" > 0.654100)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_22" <= 113.149994) AND (t."X_27" > 0.147050) AND (t."X_1" <= 18.080000) AND (t."X_26" <= 0.654100) AND (t."X_10" <= 0.280150)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_22" <= 113.149994) AND (t."X_27" > 0.147050) AND (t."X_1" <= 18.080000) AND (t."X_26" <= 0.654100) AND (t."X_10" > 0.280150)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_22" > 113.149994) AND (t."X_1" <= 13.745000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_22" > 113.149994) AND (t."X_1" > 13.745000) AND (t."X_26" <= 0.220000) AND (t."X_10" <= 0.361150)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_22" > 113.149994) AND (t."X_1" > 13.745000) AND (t."X_26" <= 0.220000) AND (t."X_10" > 0.361150)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_22" <= 113.149994) AND (t."X_27" <= 0.147050) AND (t."X_29" <= 0.055125)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_22" <= 113.149994) AND (t."X_27" <= 0.147050) AND (t."X_29" > 0.055125) AND (t."X_10" > 0.403150) AND (t."X_22" > 107.599998) AND (t."X_10" <= 0.489800)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_22" <= 113.149994) AND (t."X_27" <= 0.147050) AND (t."X_29" > 0.055125) AND (t."X_10" > 0.403150) AND (t."X_22" > 107.599998) AND (t."X_10" > 0.489800)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_22" <= 113.149994) AND (t."X_27" <= 0.147050) AND (t."X_29" > 0.055125) AND (t."X_10" > 0.403150) AND (t."X_22" <= 107.599998) AND (t."X_28" <= 0.207850) AND (t."X_29" <= 0.071290)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_22" <= 113.149994) AND (t."X_27" <= 0.147050) AND (t."X_29" > 0.055125) AND (t."X_10" > 0.403150) AND (t."X_22" <= 107.599998) AND (t."X_28" <= 0.207850) AND (t."X_29" > 0.071290)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_22" <= 113.149994) AND (t."X_27" <= 0.147050) AND (t."X_29" > 0.055125) AND (t."X_10" > 0.403150) AND (t."X_22" <= 107.599998) AND (t."X_28" > 0.207850) AND (t."X_10" > 0.417950)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_22" <= 113.149994) AND (t."X_27" <= 0.147050) AND (t."X_29" > 0.055125) AND (t."X_10" > 0.403150) AND (t."X_22" <= 107.599998) AND (t."X_28" > 0.207850) AND (t."X_10" <= 0.417950) AND (t."X_27" <= 0.119200)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_22" <= 113.149994) AND (t."X_27" <= 0.147050) AND (t."X_29" > 0.055125) AND (t."X_10" > 0.403150) AND (t."X_22" <= 107.599998) AND (t."X_28" > 0.207850) AND (t."X_10" <= 0.417950) AND (t."X_27" > 0.119200)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_22" <= 113.149994) AND (t."X_27" <= 0.147050) AND (t."X_29" > 0.055125) AND (t."X_10" <= 0.403150) AND (t."X_27" <= 0.135950)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_22" <= 113.149994) AND (t."X_27" <= 0.147050) AND (t."X_29" > 0.055125) AND (t."X_10" <= 0.403150) AND (t."X_27" > 0.135950) AND (t."X_1" <= 20.785000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_22" <= 113.149994) AND (t."X_27" <= 0.147050) AND (t."X_29" > 0.055125) AND (t."X_10" <= 0.403150) AND (t."X_27" > 0.135950) AND (t."X_1" > 20.785000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_22" > 113.149994) AND (t."X_1" > 13.745000) AND (t."X_26" > 0.220000) AND (t."X_29" <= 0.124450)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_22" > 113.149994) AND (t."X_1" > 13.745000) AND (t."X_26" > 0.220000) AND (t."X_29" > 0.124450) AND (t."X_29" <= 0.126200)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_22" > 113.149994) AND (t."X_1" > 13.745000) AND (t."X_26" > 0.220000) AND (t."X_29" > 0.124450) AND (t."X_29" > 0.126200)) THEN 40 ELSE NULL END AS "Leaf_40"
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
    SELECT 0 AS nid,  0.360281 AS "P_0", 0.639719 AS "P_1", 1 AS "D", 0.639719 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.077519 AS "P_0", 0.922481 AS "P_1", 1 AS "D", 0.922481 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.961538 AS "P_0", 0.038462 AS "P_1", 0 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.035714 AS "P_0", 0.964286 AS "P_1", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.739130 AS "P_0", 0.260870 AS "P_1", 0 AS "D", 0.739130 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.972222 AS "P_0", 0.027778 AS "P_1", 0 AS "D", 0.972222 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.994220 AS "P_0", 0.005780 AS "P_1", 0 AS "D", 0.994220 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.030387 AS "P_0", 0.969613 AS "P_1", 1 AS "D", 0.969613 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.006410 AS "P_0", 0.993590 AS "P_1", 1 AS "D", 0.993590 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.180000 AS "P_0", 0.820000 AS "P_1", 1 AS "D", 0.820000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.093023 AS "P_0", 0.906977 AS "P_1", 1 AS "D", 0.906977 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.025641 AS "P_0", 0.974359 AS "P_1", 1 AS "D", 0.974359 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_37", t1."Leaf_39", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" > 53.845001) AND (t."X_5" <= 0.158050)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" > 53.845001) AND (t."X_5" > 0.158050)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_27" > 0.143600) AND (t."X_27" > 0.175750)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_27" > 0.143600) AND (t."X_27" <= 0.175750) AND (t."X_26" > 0.470750) AND (t."X_13" > 30.900000) AND (t."X_5" <= 0.159700)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_27" > 0.143600) AND (t."X_27" <= 0.175750) AND (t."X_26" > 0.470750) AND (t."X_13" > 30.900000) AND (t."X_5" > 0.159700)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_27" > 0.143600) AND (t."X_27" <= 0.175750) AND (t."X_26" > 0.470750) AND (t."X_13" <= 30.900000) AND (t."X_27" <= 0.145600)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_27" > 0.143600) AND (t."X_27" <= 0.175750) AND (t."X_26" > 0.470750) AND (t."X_13" <= 30.900000) AND (t."X_27" > 0.145600)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" > 0.143600) AND (t."X_27" <= 0.175750) AND (t."X_26" <= 0.470750) AND (t."X_13" > 25.035000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_27" > 0.143600) AND (t."X_27" <= 0.175750) AND (t."X_26" <= 0.470750) AND (t."X_13" <= 25.035000) AND (t."X_5" <= 0.133200)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" > 0.143600) AND (t."X_27" <= 0.175750) AND (t."X_26" <= 0.470750) AND (t."X_13" <= 25.035000) AND (t."X_5" > 0.133200)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" <= 53.845001) AND (t."X_13" > 36.465000) AND (t."X_27" > 0.111350) AND (t."X_29" <= 0.082105)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" <= 53.845001) AND (t."X_13" > 36.465000) AND (t."X_27" > 0.111350) AND (t."X_29" > 0.082105)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" <= 53.845001) AND (t."X_13" > 36.465000) AND (t."X_27" <= 0.111350) AND (t."X_5" > 0.067380)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" <= 53.845001) AND (t."X_13" > 36.465000) AND (t."X_27" <= 0.111350) AND (t."X_5" <= 0.067380) AND (t."X_27" <= 0.060610)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" <= 53.845001) AND (t."X_13" > 36.465000) AND (t."X_27" <= 0.111350) AND (t."X_5" <= 0.067380) AND (t."X_27" > 0.060610) AND (t."X_4" <= 0.080220)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" <= 53.845001) AND (t."X_13" > 36.465000) AND (t."X_27" <= 0.111350) AND (t."X_5" <= 0.067380) AND (t."X_27" > 0.060610) AND (t."X_4" > 0.080220)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" <= 53.845001) AND (t."X_13" <= 36.465000) AND (t."X_27" > 0.110850) AND (t."X_27" <= 0.112050)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" <= 53.845001) AND (t."X_13" <= 36.465000) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.112050) AND (t."X_26" <= 0.271650)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" <= 53.845001) AND (t."X_13" <= 36.465000) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.112050) AND (t."X_26" > 0.271650) AND (t."X_27" <= 0.122200)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" <= 53.845001) AND (t."X_13" <= 36.465000) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.112050) AND (t."X_26" > 0.271650) AND (t."X_27" > 0.122200) AND (t."X_25" <= 0.333500)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" <= 53.845001) AND (t."X_13" <= 36.465000) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.112050) AND (t."X_26" > 0.271650) AND (t."X_27" > 0.122200) AND (t."X_25" > 0.333500) AND (t."X_26" <= 0.318050)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" <= 53.845001) AND (t."X_13" <= 36.465000) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.112050) AND (t."X_26" > 0.271650) AND (t."X_27" > 0.122200) AND (t."X_25" > 0.333500) AND (t."X_26" > 0.318050)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" <= 53.845001) AND (t."X_13" <= 36.465000) AND (t."X_27" <= 0.110850) AND (t."X_26" <= 0.225050)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" <= 53.845001) AND (t."X_13" <= 36.465000) AND (t."X_27" <= 0.110850) AND (t."X_26" > 0.225050) AND (t."X_29" <= 0.069780)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_13" <= 53.845001) AND (t."X_13" <= 36.465000) AND (t."X_27" <= 0.110850) AND (t."X_26" > 0.225050) AND (t."X_29" > 0.069780)) THEN 48 ELSE NULL END AS "Leaf_48"
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
    SELECT 0 AS nid,  0.372583 AS "P_0", 0.627416 AS "P_1", 1 AS "D", 0.627416 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.114286 AS "P_0", 0.885714 AS "P_1", 1 AS "D", 0.885714 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.913043 AS "P_0", 0.086957 AS "P_1", 0 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.073569 AS "P_0", 0.926431 AS "P_1", 1 AS "D", 0.926431 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.771429 AS "P_0", 0.228571 AS "P_1", 0 AS "D", 0.771429 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.039514 AS "P_0", 0.960486 AS "P_1", 1 AS "D", 0.960486 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.368421 AS "P_0", 0.631579 AS "P_1", 1 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.192308 AS "P_0", 0.807692 AS "P_1", 1 AS "D", 0.807692 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.011029 AS "P_0", 0.988971 AS "P_1", 1 AS "D", 0.988971 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.175439 AS "P_0", 0.824561 AS "P_1", 1 AS "D", 0.824561 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.129630 AS "P_0", 0.870370 AS "P_1", 1 AS "D", 0.870370 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.304348 AS "P_0", 0.695652 AS "P_1", 1 AS "D", 0.695652 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.538462 AS "P_0", 0.461538 AS "P_1", 0 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.060000 AS "P_0", 0.940000 AS "P_1", 1 AS "D", 0.940000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 0.141700) AND (t."X_10" <= 0.205850)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_27" <= 0.141700) AND (t."X_27" > 0.109400) AND (t."X_29" <= 0.080805) AND (t."X_10" > 0.320000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_27" <= 0.141700) AND (t."X_27" > 0.109400) AND (t."X_29" <= 0.080805) AND (t."X_10" <= 0.320000) AND (t."X_24" <= 0.112800)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_27" <= 0.141700) AND (t."X_27" > 0.109400) AND (t."X_29" <= 0.080805) AND (t."X_10" <= 0.320000) AND (t."X_24" > 0.112800) AND (t."X_29" <= 0.076635)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_27" <= 0.141700) AND (t."X_27" > 0.109400) AND (t."X_29" <= 0.080805) AND (t."X_10" <= 0.320000) AND (t."X_24" > 0.112800) AND (t."X_29" > 0.076635)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_27" <= 0.141700) AND (t."X_27" > 0.109400) AND (t."X_29" > 0.080805) AND (t."X_27" <= 0.125150)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_27" <= 0.141700) AND (t."X_27" > 0.109400) AND (t."X_29" > 0.080805) AND (t."X_27" > 0.125150) AND (t."X_26" > 0.399450)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_27" <= 0.141700) AND (t."X_27" > 0.109400) AND (t."X_29" > 0.080805) AND (t."X_27" > 0.125150) AND (t."X_26" <= 0.399450) AND (t."X_29" <= 0.095330)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" <= 0.141700) AND (t."X_27" > 0.109400) AND (t."X_29" > 0.080805) AND (t."X_27" > 0.125150) AND (t."X_26" <= 0.399450) AND (t."X_29" > 0.095330)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_27" <= 0.141700) AND (t."X_27" <= 0.109400) AND (t."X_2" > 96.464996) AND (t."X_28" <= 0.242300)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_27" <= 0.141700) AND (t."X_27" <= 0.109400) AND (t."X_2" > 96.464996) AND (t."X_28" > 0.242300) AND (t."X_24" <= 0.100300)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" <= 0.141700) AND (t."X_27" <= 0.109400) AND (t."X_2" > 96.464996) AND (t."X_28" > 0.242300) AND (t."X_24" > 0.100300)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_27" > 0.141700) AND (t."X_10" > 0.205850) AND (t."X_26" <= 0.212900)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_27" > 0.141700) AND (t."X_10" > 0.205850) AND (t."X_26" > 0.212900) AND (t."X_27" <= 0.145600) AND (t."X_2" <= 90.864998)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_27" > 0.141700) AND (t."X_10" > 0.205850) AND (t."X_26" > 0.212900) AND (t."X_27" <= 0.145600) AND (t."X_2" > 90.864998)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_27" > 0.141700) AND (t."X_10" > 0.205850) AND (t."X_26" > 0.212900) AND (t."X_27" > 0.145600) AND (t."X_10" > 0.248450)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_27" > 0.141700) AND (t."X_10" > 0.205850) AND (t."X_26" > 0.212900) AND (t."X_27" > 0.145600) AND (t."X_10" <= 0.248450) AND (t."X_24" <= 0.143400)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_27" > 0.141700) AND (t."X_10" > 0.205850) AND (t."X_26" > 0.212900) AND (t."X_27" > 0.145600) AND (t."X_10" <= 0.248450) AND (t."X_24" > 0.143400)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_27" <= 0.141700) AND (t."X_27" <= 0.109400) AND (t."X_2" <= 96.464996) AND (t."X_26" <= 0.215000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_27" <= 0.141700) AND (t."X_27" <= 0.109400) AND (t."X_2" <= 96.464996) AND (t."X_26" > 0.215000) AND (t."X_26" <= 0.223750)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_27" <= 0.141700) AND (t."X_27" <= 0.109400) AND (t."X_2" <= 96.464996) AND (t."X_26" > 0.215000) AND (t."X_26" > 0.223750)) THEN 40 ELSE NULL END AS "Leaf_40"
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
    SELECT 0 AS nid,  0.377856 AS "P_0", 0.622144 AS "P_1", 1 AS "D", 0.622144 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.079787 AS "P_0", 0.920213 AS "P_1", 1 AS "D", 0.920213 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.958549 AS "P_0", 0.041451 AS "P_1", 0 AS "D", 0.958549 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.984043 AS "P_0", 0.015957 AS "P_1", 0 AS "D", 0.984043 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.021944 AS "P_0", 0.978056 AS "P_1", 1 AS "D", 0.978056 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.403509 AS "P_0", 0.596491 AS "P_1", 1 AS "D", 0.596491 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.096774 AS "P_0", 0.903226 AS "P_1", 1 AS "D", 0.903226 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.003257 AS "P_0", 0.996743 AS "P_1", 1 AS "D", 0.996743 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.989305 AS "P_0", 0.010695 AS "P_1", 0 AS "D", 0.989305 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.994413 AS "P_0", 0.005587 AS "P_1", 0 AS "D", 0.994413 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.026316 AS "P_0", 0.973684 AS "P_1", 1 AS "D", 0.973684 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 90.369995) AND (t."X_21" <= 19.415001) AND (t."X_29" <= 0.096540)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" > 90.369995) AND (t."X_21" <= 19.415001) AND (t."X_29" > 0.096540)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" <= 90.369995) AND (t."X_27" > 0.158900) AND (t."X_21" <= 24.605000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" <= 90.369995) AND (t."X_27" > 0.158900) AND (t."X_21" > 24.605000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" > 90.369995) AND (t."X_21" > 19.415001) AND (t."X_24" <= 0.115500) AND (t."X_27" > 0.105700) AND (t."X_2" <= 100.764999)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" > 90.369995) AND (t."X_21" > 19.415001) AND (t."X_24" <= 0.115500) AND (t."X_27" > 0.105700) AND (t."X_2" > 100.764999)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" > 90.369995) AND (t."X_21" > 19.415001) AND (t."X_24" <= 0.115500) AND (t."X_27" <= 0.105700) AND (t."X_28" <= 0.376450)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" > 90.369995) AND (t."X_21" > 19.415001) AND (t."X_24" <= 0.115500) AND (t."X_27" <= 0.105700) AND (t."X_28" > 0.376450)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" <= 90.369995) AND (t."X_27" <= 0.158900) AND (t."X_28" > 0.444450)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" > 90.369995) AND (t."X_21" > 19.415001) AND (t."X_24" > 0.115500) AND (t."X_2" > 97.145004)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" > 90.369995) AND (t."X_21" > 19.415001) AND (t."X_24" > 0.115500) AND (t."X_2" <= 97.145004) AND (t."X_24" > 0.135400)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" > 90.369995) AND (t."X_21" > 19.415001) AND (t."X_24" > 0.115500) AND (t."X_2" <= 97.145004) AND (t."X_24" <= 0.135400) AND (t."X_29" > 0.076590)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_2" > 90.369995) AND (t."X_21" > 19.415001) AND (t."X_24" > 0.115500) AND (t."X_2" <= 97.145004) AND (t."X_24" <= 0.135400) AND (t."X_29" <= 0.076590) AND (t."X_11" <= 1.444150)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" > 90.369995) AND (t."X_21" > 19.415001) AND (t."X_24" > 0.115500) AND (t."X_2" <= 97.145004) AND (t."X_24" <= 0.135400) AND (t."X_29" <= 0.076590) AND (t."X_11" > 1.444150)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_2" <= 90.369995) AND (t."X_27" <= 0.158900) AND (t."X_28" <= 0.444450) AND (t."X_27" <= 0.110850)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_2" <= 90.369995) AND (t."X_27" <= 0.158900) AND (t."X_28" <= 0.444450) AND (t."X_27" > 0.110850) AND (t."X_29" <= 0.075415)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" <= 90.369995) AND (t."X_27" <= 0.158900) AND (t."X_28" <= 0.444450) AND (t."X_27" > 0.110850) AND (t."X_29" > 0.075415) AND (t."X_24" <= 0.183850)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_2" <= 90.369995) AND (t."X_27" <= 0.158900) AND (t."X_28" <= 0.444450) AND (t."X_27" > 0.110850) AND (t."X_29" > 0.075415) AND (t."X_24" > 0.183850)) THEN 34 ELSE NULL END AS "Leaf_34"
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
    SELECT 0 AS nid,  0.384886 AS "P_0", 0.615114 AS "P_1", 1 AS "D", 0.615114 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.057927 AS "P_0", 0.942073 AS "P_1", 1 AS "D", 0.942073 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.829876 AS "P_0", 0.170124 AS "P_1", 0 AS "D", 0.829876 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.920188 AS "P_0", 0.079812 AS "P_1", 0 AS "D", 0.920188 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.022222 AS "P_0", 0.977778 AS "P_1", 1 AS "D", 0.977778 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.409091 AS "P_0", 0.590909 AS "P_1", 1 AS "D", 0.590909 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.979058 AS "P_0", 0.020942 AS "P_1", 0 AS "D", 0.979058 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.015974 AS "P_0", 0.984026 AS "P_1", 1 AS "D", 0.984026 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.156250 AS "P_0", 0.843750 AS "P_1", 1 AS "D", 0.843750 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.035714 AS "P_0", 0.964286 AS "P_1", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_20", t1."Leaf_21", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_31", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.158900)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_4" <= 0.074710)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_4" > 0.074710) AND (t."X_20" > 17.719999)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_4" > 0.074710) AND (t."X_20" <= 17.719999) AND (t."X_26" <= 0.231600) AND (t."X_5" <= 0.056585)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_4" > 0.074710) AND (t."X_20" <= 17.719999) AND (t."X_26" <= 0.231600) AND (t."X_5" > 0.056585)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_4" > 0.074710) AND (t."X_20" <= 17.719999) AND (t."X_26" > 0.231600) AND (t."X_28" > 0.260400)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_4" > 0.074710) AND (t."X_20" <= 17.719999) AND (t."X_26" > 0.231600) AND (t."X_28" <= 0.260400) AND (t."X_5" <= 0.107935)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_4" > 0.074710) AND (t."X_20" <= 17.719999) AND (t."X_26" > 0.231600) AND (t."X_28" <= 0.260400) AND (t."X_5" > 0.107935)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.134900) AND (t."X_24" > 0.165900)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.134900) AND (t."X_24" <= 0.165900) AND (t."X_29" <= 0.072610)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.134900) AND (t."X_24" <= 0.165900) AND (t."X_29" > 0.072610) AND (t."X_20" > 16.490000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.134900) AND (t."X_24" <= 0.165900) AND (t."X_29" > 0.072610) AND (t."X_20" <= 16.490000) AND (t."X_27" <= 0.137650)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.134900) AND (t."X_24" <= 0.165900) AND (t."X_29" > 0.072610) AND (t."X_20" <= 16.490000) AND (t."X_27" > 0.137650)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.134900) AND (t."X_29" <= 0.055125)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.134900) AND (t."X_29" > 0.055125) AND (t."X_20" > 15.890000) AND (t."X_20" <= 15.970000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.134900) AND (t."X_29" > 0.055125) AND (t."X_20" > 15.890000) AND (t."X_20" > 15.970000) AND (t."X_26" <= 0.328400)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.134900) AND (t."X_29" > 0.055125) AND (t."X_20" > 15.890000) AND (t."X_20" > 15.970000) AND (t."X_26" > 0.328400) AND (t."X_4" <= 0.091405)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.134900) AND (t."X_29" > 0.055125) AND (t."X_20" > 15.890000) AND (t."X_20" > 15.970000) AND (t."X_26" > 0.328400) AND (t."X_4" > 0.091405)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.134900) AND (t."X_29" > 0.055125) AND (t."X_20" <= 15.890000) AND (t."X_28" <= 0.198300) AND (t."X_28" <= 0.194350)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.134900) AND (t."X_29" > 0.055125) AND (t."X_20" <= 15.890000) AND (t."X_28" <= 0.198300) AND (t."X_28" > 0.194350)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.134900) AND (t."X_29" > 0.055125) AND (t."X_20" <= 15.890000) AND (t."X_28" > 0.198300) AND (t."X_20" <= 14.485000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.134900) AND (t."X_29" > 0.055125) AND (t."X_20" <= 15.890000) AND (t."X_28" > 0.198300) AND (t."X_20" > 14.485000) AND (t."X_26" <= 0.205600)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.134900) AND (t."X_29" > 0.055125) AND (t."X_20" <= 15.890000) AND (t."X_28" > 0.198300) AND (t."X_20" > 14.485000) AND (t."X_26" > 0.205600) AND (t."X_5" <= 0.066545)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.134900) AND (t."X_29" > 0.055125) AND (t."X_20" <= 15.890000) AND (t."X_28" > 0.198300) AND (t."X_20" > 14.485000) AND (t."X_26" > 0.205600) AND (t."X_5" > 0.066545)) THEN 46 ELSE NULL END AS "Leaf_46"
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
    SELECT 0 AS nid,  0.363796 AS "P_0", 0.636204 AS "P_1", 1 AS "D", 0.636204 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.070866 AS "P_0", 0.929134 AS "P_1", 1 AS "D", 0.929134 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.957447 AS "P_0", 0.042553 AS "P_1", 0 AS "D", 0.957447 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.032787 AS "P_0", 0.967213 AS "P_1", 1 AS "D", 0.967213 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.972973 AS "P_0", 0.027027 AS "P_1", 0 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.821429 AS "P_0", 0.178571 AS "P_1", 0 AS "D", 0.821429 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    SELECT 17 AS nid,  0.014925 AS "P_0", 0.985075 AS "P_1", 1 AS "D", 0.985075 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.225806 AS "P_0", 0.774194 AS "P_1", 1 AS "D", 0.774194 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.040000 AS "P_0", 0.960000 AS "P_1", 1 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.011976 AS "P_0", 0.988024 AS "P_1", 1 AS "D", 0.988024 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.006472 AS "P_0", 0.993528 AS "P_1", 1 AS "D", 0.993528 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.080000 AS "P_0", 0.920000 AS "P_1", 1 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.041667 AS "P_0", 0.958333 AS "P_1", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.003413 AS "P_0", 0.996587 AS "P_1", 1 AS "D", 0.996587 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.016129 AS "P_0", 0.983871 AS "P_1", 1 AS "D", 0.983871 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.162200) AND (t."X_23" > 656.300049)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.162200) AND (t."X_23" <= 656.300049) AND (t."X_27" <= 0.180750)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.162200) AND (t."X_23" <= 656.300049) AND (t."X_27" > 0.180750)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_1" <= 14.990000) AND (t."X_20" <= 17.889999)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_1" <= 14.990000) AND (t."X_20" > 17.889999)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.162200) AND (t."X_27" > 0.135800) AND (t."X_28" <= 0.258950)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.162200) AND (t."X_27" > 0.135800) AND (t."X_28" > 0.258950) AND (t."X_1" > 20.785000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.162200) AND (t."X_27" > 0.135800) AND (t."X_28" > 0.258950) AND (t."X_1" <= 20.785000) AND (t."X_27" <= 0.137650)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.162200) AND (t."X_27" > 0.135800) AND (t."X_28" > 0.258950) AND (t."X_1" <= 20.785000) AND (t."X_27" > 0.137650)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_1" > 14.990000) AND (t."X_26" > 0.216200)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_1" > 14.990000) AND (t."X_26" <= 0.216200) AND (t."X_1" <= 19.275002)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_1" > 14.990000) AND (t."X_26" <= 0.216200) AND (t."X_1" > 19.275002)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.162200) AND (t."X_27" <= 0.135800) AND (t."X_1" <= 21.434999)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.162200) AND (t."X_27" <= 0.135800) AND (t."X_1" > 21.434999) AND (t."X_27" > 0.121500) AND (t."X_29" <= 0.068815)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.162200) AND (t."X_27" <= 0.135800) AND (t."X_1" > 21.434999) AND (t."X_27" > 0.121500) AND (t."X_29" > 0.068815)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.162200) AND (t."X_27" <= 0.135800) AND (t."X_1" > 21.434999) AND (t."X_27" <= 0.121500) AND (t."X_20" <= 14.430000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.162200) AND (t."X_27" <= 0.135800) AND (t."X_1" > 21.434999) AND (t."X_27" <= 0.121500) AND (t."X_20" > 14.430000) AND (t."X_1" <= 22.575001)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.162200) AND (t."X_27" <= 0.135800) AND (t."X_1" > 21.434999) AND (t."X_27" <= 0.121500) AND (t."X_20" > 14.430000) AND (t."X_1" > 22.575001)) THEN 34 ELSE NULL END AS "Leaf_34"
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
    SELECT 0 AS nid,  0.384886 AS "P_0", 0.615114 AS "P_1", 1 AS "D", 0.615114 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.088000 AS "P_0", 0.912000 AS "P_1", 1 AS "D", 0.912000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.958763 AS "P_0", 0.041237 AS "P_1", 0 AS "D", 0.958763 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.034188 AS "P_0", 0.965812 AS "P_1", 1 AS "D", 0.965812 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.989189 AS "P_0", 0.010811 AS "P_1", 0 AS "D", 0.989189 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.006211 AS "P_0", 0.993789 AS "P_1", 1 AS "D", 0.993789 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.344828 AS "P_0", 0.655172 AS "P_1", 1 AS "D", 0.655172 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.173913 AS "P_0", 0.826087 AS "P_1", 1 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.033898 AS "P_0", 0.966102 AS "P_1", 1 AS "D", 0.966102 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.018182 AS "P_0", 0.981818 AS "P_1", 1 AS "D", 0.981818 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > 0.050100) AND (t."X_27" <= 0.147200) AND (t."X_29" > 0.079815) AND (t."X_1" > 20.785000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_7" > 0.050100) AND (t."X_27" <= 0.147200) AND (t."X_29" <= 0.079815) AND (t."X_27" <= 0.098920)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_7" > 0.050100) AND (t."X_27" <= 0.147200) AND (t."X_29" <= 0.079815) AND (t."X_27" > 0.098920) AND (t."X_27" <= 0.144900)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_7" > 0.050100) AND (t."X_27" <= 0.147200) AND (t."X_29" <= 0.079815) AND (t."X_27" > 0.098920) AND (t."X_27" > 0.144900)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_7" > 0.050100) AND (t."X_27" > 0.147200) AND (t."X_19" > 0.021340)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_7" > 0.050100) AND (t."X_27" <= 0.147200) AND (t."X_29" > 0.079815) AND (t."X_1" <= 20.785000) AND (t."X_26" <= 0.269150)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_7" > 0.050100) AND (t."X_27" <= 0.147200) AND (t."X_29" > 0.079815) AND (t."X_1" <= 20.785000) AND (t."X_26" > 0.269150) AND (t."X_19" > 0.004325)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_7" > 0.050100) AND (t."X_27" <= 0.147200) AND (t."X_29" > 0.079815) AND (t."X_1" <= 20.785000) AND (t."X_26" > 0.269150) AND (t."X_19" <= 0.004325) AND (t."X_28" <= 0.257300)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_7" > 0.050100) AND (t."X_27" <= 0.147200) AND (t."X_29" > 0.079815) AND (t."X_1" <= 20.785000) AND (t."X_26" > 0.269150) AND (t."X_19" <= 0.004325) AND (t."X_28" > 0.257300)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_7" <= 0.050100) AND (t."X_27" > 0.110850) AND (t."X_27" <= 0.113700)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_7" <= 0.050100) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.113700) AND (t."X_0" > 15.059999)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" <= 0.050100) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.113700) AND (t."X_0" <= 15.059999) AND (t."X_25" <= 0.162850)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_7" <= 0.050100) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.113700) AND (t."X_0" <= 15.059999) AND (t."X_25" > 0.162850) AND (t."X_1" <= 24.709999)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_7" <= 0.050100) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.113700) AND (t."X_0" <= 15.059999) AND (t."X_25" > 0.162850) AND (t."X_1" > 24.709999) AND (t."X_29" <= 0.088135)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_7" <= 0.050100) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.113700) AND (t."X_0" <= 15.059999) AND (t."X_25" > 0.162850) AND (t."X_1" > 24.709999) AND (t."X_29" > 0.088135)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_7" <= 0.050100) AND (t."X_27" <= 0.110850) AND (t."X_0" > 14.980000) AND (t."X_29" > 0.067975)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_7" <= 0.050100) AND (t."X_27" <= 0.110850) AND (t."X_0" > 14.980000) AND (t."X_29" <= 0.067975) AND (t."X_1" <= 19.215000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_7" <= 0.050100) AND (t."X_27" <= 0.110850) AND (t."X_0" > 14.980000) AND (t."X_29" <= 0.067975) AND (t."X_1" > 19.215000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_7" <= 0.050100) AND (t."X_27" <= 0.110850) AND (t."X_0" <= 14.980000) AND (t."X_7" <= 0.026780)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_7" <= 0.050100) AND (t."X_27" <= 0.110850) AND (t."X_0" <= 14.980000) AND (t."X_7" > 0.026780) AND (t."X_28" <= 0.198250)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_7" <= 0.050100) AND (t."X_27" <= 0.110850) AND (t."X_0" <= 14.980000) AND (t."X_7" > 0.026780) AND (t."X_28" > 0.198250) AND (t."X_7" <= 0.027210)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_7" <= 0.050100) AND (t."X_27" <= 0.110850) AND (t."X_0" <= 14.980000) AND (t."X_7" > 0.026780) AND (t."X_28" > 0.198250) AND (t."X_7" > 0.027210)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_7" > 0.050100) AND (t."X_27" > 0.147200) AND (t."X_19" <= 0.021340) AND (t."X_27" > 0.171000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_7" > 0.050100) AND (t."X_27" > 0.147200) AND (t."X_19" <= 0.021340) AND (t."X_27" <= 0.171000) AND (t."X_26" <= 0.457400)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_7" > 0.050100) AND (t."X_27" > 0.147200) AND (t."X_19" <= 0.021340) AND (t."X_27" <= 0.171000) AND (t."X_26" > 0.457400)) THEN 48 ELSE NULL END AS "Leaf_48"
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
    SELECT 0 AS nid,  0.430580 AS "P_0", 0.569420 AS "P_1", 1 AS "D", 0.569420 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.056604 AS "P_0", 0.943396 AS "P_1", 1 AS "D", 0.943396 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.904382 AS "P_0", 0.095618 AS "P_1", 0 AS "D", 0.904382 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.980676 AS "P_0", 0.019324 AS "P_1", 0 AS "D", 0.980676 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.260870 AS "P_0", 0.739130 AS "P_1", 1 AS "D", 0.739130 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.105263 AS "P_0", 0.894737 AS "P_1", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.995098 AS "P_0", 0.004902 AS "P_1", 0 AS "D", 0.995098 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.018382 AS "P_0", 0.981618 AS "P_1", 1 AS "D", 0.981618 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.282609 AS "P_0", 0.717391 AS "P_1", 1 AS "D", 0.717391 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.131579 AS "P_0", 0.868421 AS "P_1", 1 AS "D", 0.868421 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.029412 AS "P_0", 0.970588 AS "P_1", 1 AS "D", 0.970588 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.007491 AS "P_0", 0.992509 AS "P_1", 1 AS "D", 0.992509 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.029412 AS "P_0", 0.970588 AS "P_1", 1 AS "D", 0.970588 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.014925 AS "P_0", 0.985075 AS "P_1", 1 AS "D", 0.985075 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.980392 AS "P_0", 0.019608 AS "P_1", 0 AS "D", 0.980392 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" > 0.160300)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_27" > 0.135050) AND (t."X_27" <= 0.138550)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_27" > 0.135050) AND (t."X_27" > 0.138550) AND (t."X_24" <= 0.140850)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_27" > 0.135050) AND (t."X_27" > 0.138550) AND (t."X_24" > 0.140850) AND (t."X_29" <= 0.090090)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_27" > 0.135050) AND (t."X_27" > 0.138550) AND (t."X_24" > 0.140850) AND (t."X_29" > 0.090090)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_23" > 865.699951) AND (t."X_26" <= 0.201350) AND (t."X_28" > 0.283550)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_23" > 865.699951) AND (t."X_26" <= 0.201350) AND (t."X_28" <= 0.283550) AND (t."X_26" <= 0.146000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_23" > 865.699951) AND (t."X_26" <= 0.201350) AND (t."X_28" <= 0.283550) AND (t."X_26" > 0.146000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_23" > 865.699951) AND (t."X_26" > 0.201350) AND (t."X_6" > 0.055995)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_23" > 865.699951) AND (t."X_26" > 0.201350) AND (t."X_6" <= 0.055995) AND (t."X_29" <= 0.073175)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_23" > 865.699951) AND (t."X_26" > 0.201350) AND (t."X_6" <= 0.055995) AND (t."X_29" > 0.073175)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.135050) AND (t."X_23" > 785.000000) AND (t."X_27" <= 0.110350)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.135050) AND (t."X_23" > 785.000000) AND (t."X_27" > 0.110350) AND (t."X_28" <= 0.276400)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.135050) AND (t."X_23" > 785.000000) AND (t."X_27" > 0.110350) AND (t."X_28" > 0.276400)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.135050) AND (t."X_23" <= 785.000000) AND (t."X_28" <= 0.156550)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.135050) AND (t."X_23" <= 785.000000) AND (t."X_28" > 0.156550) AND (t."X_28" <= 0.198850) AND (t."X_23" <= 550.150024)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.135050) AND (t."X_23" <= 785.000000) AND (t."X_28" > 0.156550) AND (t."X_28" <= 0.198850) AND (t."X_23" > 550.150024) AND (t."X_24" <= 0.114950)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.135050) AND (t."X_23" <= 785.000000) AND (t."X_28" > 0.156550) AND (t."X_28" <= 0.198850) AND (t."X_23" > 550.150024) AND (t."X_24" > 0.114950)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.135050) AND (t."X_23" <= 785.000000) AND (t."X_28" > 0.156550) AND (t."X_28" > 0.198850) AND (t."X_27" <= 0.092980)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.135050) AND (t."X_23" <= 785.000000) AND (t."X_28" > 0.156550) AND (t."X_28" > 0.198850) AND (t."X_27" > 0.092980) AND (t."X_27" <= 0.094225)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_23" <= 865.699951) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.135050) AND (t."X_23" <= 785.000000) AND (t."X_28" > 0.156550) AND (t."X_28" > 0.198850) AND (t."X_27" > 0.092980) AND (t."X_27" > 0.094225)) THEN 40 ELSE NULL END AS "Leaf_40"
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
    SELECT 0 AS nid,  0.386643 AS "P_0", 0.613357 AS "P_1", 1 AS "D", 0.613357 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.096859 AS "P_0", 0.903141 AS "P_1", 1 AS "D", 0.903141 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.978610 AS "P_0", 0.021390 AS "P_1", 0 AS "D", 0.978610 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.044321 AS "P_0", 0.955679 AS "P_1", 1 AS "D", 0.955679 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.023669 AS "P_0", 0.976331 AS "P_1", 1 AS "D", 0.976331 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.347826 AS "P_0", 0.652174 AS "P_1", 1 AS "D", 0.652174 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.994413 AS "P_0", 0.005587 AS "P_1", 0 AS "D", 0.994413 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    SELECT 23 AS nid,  0.015528 AS "P_0", 0.984472 AS "P_1", 1 AS "D", 0.984472 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.187500 AS "P_0", 0.812500 AS "P_1", 1 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.009375 AS "P_0", 0.990625 AS "P_1", 1 AS "D", 0.990625 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.003205 AS "P_0", 0.996795 AS "P_1", 1 AS "D", 0.996795 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.018519 AS "P_0", 0.981481 AS "P_1", 1 AS "D", 0.981481 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_17", t1."Leaf_19", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" <= 0.145450) AND (t."X_0" > 15.790000) AND (t."X_25" <= 0.175150) AND (t."X_28" <= 0.254700)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_27" <= 0.145450) AND (t."X_0" > 15.790000) AND (t."X_25" <= 0.175150) AND (t."X_28" > 0.254700)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_27" <= 0.145450) AND (t."X_0" > 15.790000) AND (t."X_25" > 0.175150) AND (t."X_28" <= 0.313100)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_27" <= 0.145450) AND (t."X_0" > 15.790000) AND (t."X_25" > 0.175150) AND (t."X_28" > 0.313100) AND (t."X_0" <= 16.165001)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_27" <= 0.145450) AND (t."X_0" > 15.790000) AND (t."X_25" > 0.175150) AND (t."X_28" > 0.313100) AND (t."X_0" > 16.165001)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_27" <= 0.145450) AND (t."X_0" <= 15.790000) AND (t."X_27" > 0.115750) AND (t."X_0" <= 13.285000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_27" <= 0.145450) AND (t."X_0" <= 15.790000) AND (t."X_27" > 0.115750) AND (t."X_0" > 13.285000) AND (t."X_8" <= 0.168800)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_27" <= 0.145450) AND (t."X_0" <= 15.790000) AND (t."X_27" > 0.115750) AND (t."X_0" > 13.285000) AND (t."X_8" > 0.168800) AND (t."X_28" <= 0.298700)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" <= 0.145450) AND (t."X_0" <= 15.790000) AND (t."X_27" > 0.115750) AND (t."X_0" > 13.285000) AND (t."X_8" > 0.168800) AND (t."X_28" > 0.298700) AND (t."X_27" > 0.139400)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_27" <= 0.145450) AND (t."X_0" <= 15.790000) AND (t."X_27" > 0.115750) AND (t."X_0" > 13.285000) AND (t."X_8" > 0.168800) AND (t."X_28" > 0.298700) AND (t."X_27" <= 0.139400) AND (t."X_29" <= 0.090935)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_27" <= 0.145450) AND (t."X_0" <= 15.790000) AND (t."X_27" > 0.115750) AND (t."X_0" > 13.285000) AND (t."X_8" > 0.168800) AND (t."X_28" > 0.298700) AND (t."X_27" <= 0.139400) AND (t."X_29" > 0.090935)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_27" > 0.145450) AND (t."X_28" <= 0.270450) AND (t."X_28" > 0.269000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_27" > 0.145450) AND (t."X_28" <= 0.270450) AND (t."X_28" <= 0.269000) AND (t."X_0" <= 13.025000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_27" > 0.145450) AND (t."X_28" <= 0.270450) AND (t."X_28" <= 0.269000) AND (t."X_0" > 13.025000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_27" <= 0.145450) AND (t."X_0" <= 15.790000) AND (t."X_27" <= 0.115750) AND (t."X_14" <= 0.002856)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_27" > 0.145450) AND (t."X_28" > 0.270450) AND (t."X_0" > 13.525000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_27" > 0.145450) AND (t."X_28" > 0.270450) AND (t."X_0" <= 13.525000) AND (t."X_0" <= 13.309999)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_27" > 0.145450) AND (t."X_28" > 0.270450) AND (t."X_0" <= 13.525000) AND (t."X_0" > 13.309999)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_27" <= 0.145450) AND (t."X_0" <= 15.790000) AND (t."X_27" <= 0.115750) AND (t."X_14" > 0.002856) AND (t."X_27" <= 0.111400)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_27" <= 0.145450) AND (t."X_0" <= 15.790000) AND (t."X_27" <= 0.115750) AND (t."X_14" > 0.002856) AND (t."X_27" > 0.111400) AND (t."X_0" <= 14.985001)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_27" <= 0.145450) AND (t."X_0" <= 15.790000) AND (t."X_27" <= 0.115750) AND (t."X_14" > 0.002856) AND (t."X_27" > 0.111400) AND (t."X_0" > 14.985001)) THEN 40 ELSE NULL END AS "Leaf_40"
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
    SELECT 0 AS nid,  0.362039 AS "P_0", 0.637961 AS "P_1", 1 AS "D", 0.637961 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.082474 AS "P_0", 0.917526 AS "P_1", 1 AS "D", 0.917526 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.961326 AS "P_0", 0.038674 AS "P_1", 0 AS "D", 0.961326 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.033149 AS "P_0", 0.966851 AS "P_1", 1 AS "D", 0.966851 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.006154 AS "P_0", 0.993846 AS "P_1", 1 AS "D", 0.993846 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.270270 AS "P_0", 0.729730 AS "P_1", 1 AS "D", 0.729730 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.434783 AS "P_0", 0.565217 AS "P_1", 1 AS "D", 0.565217 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.277778 AS "P_0", 0.722222 AS "P_1", 1 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.853659 AS "P_0", 0.146341 AS "P_1", 0 AS "D", 0.853659 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.992857 AS "P_0", 0.007143 AS "P_1", 0 AS "D", 0.992857 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.897436 AS "P_0", 0.102564 AS "P_1", 0 AS "D", 0.897436 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.003086 AS "P_0", 0.996914 AS "P_1", 1 AS "D", 0.996914 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" > 0.132350) AND (t."X_24" <= 0.130300)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" > 0.132350) AND (t."X_24" > 0.130300) AND (t."X_28" <= 0.268200) AND (t."X_0" <= 13.655001)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" > 0.132350) AND (t."X_24" > 0.130300) AND (t."X_28" <= 0.268200) AND (t."X_0" > 13.655001)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" > 0.132350) AND (t."X_24" > 0.130300) AND (t."X_28" > 0.268200) AND (t."X_26" <= 0.278400)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" > 0.132350) AND (t."X_24" > 0.130300) AND (t."X_28" > 0.268200) AND (t."X_26" > 0.278400) AND (t."X_0" <= 10.054501)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_0" > 15.025000) AND (t."X_25" <= 0.107880)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_0" > 15.025000) AND (t."X_25" > 0.107880) AND (t."X_0" <= 15.740000) AND (t."X_28" <= 0.262000) AND (t."X_29" <= 0.072140)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_0" > 15.025000) AND (t."X_25" > 0.107880) AND (t."X_0" <= 15.740000) AND (t."X_28" <= 0.262000) AND (t."X_29" > 0.072140)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_0" > 15.025000) AND (t."X_25" > 0.107880) AND (t."X_0" <= 15.740000) AND (t."X_28" > 0.262000) AND (t."X_0" <= 15.705000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_0" > 15.025000) AND (t."X_25" > 0.107880) AND (t."X_0" <= 15.740000) AND (t."X_28" > 0.262000) AND (t."X_0" > 15.705000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" <= 0.132350) AND (t."X_29" <= 0.057180)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" > 0.132350) AND (t."X_24" > 0.130300) AND (t."X_28" > 0.268200) AND (t."X_26" > 0.278400) AND (t."X_0" > 10.054501) AND (t."X_26" > 0.362300)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" > 0.132350) AND (t."X_24" > 0.130300) AND (t."X_28" > 0.268200) AND (t."X_26" > 0.278400) AND (t."X_0" > 10.054501) AND (t."X_26" <= 0.362300) AND (t."X_29" <= 0.098415)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" > 0.132350) AND (t."X_24" > 0.130300) AND (t."X_28" > 0.268200) AND (t."X_26" > 0.278400) AND (t."X_0" > 10.054501) AND (t."X_26" <= 0.362300) AND (t."X_29" > 0.098415)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" <= 0.132350) AND (t."X_29" > 0.057180) AND (t."X_27" > 0.122150) AND (t."X_29" <= 0.068815)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" <= 0.132350) AND (t."X_29" > 0.057180) AND (t."X_27" > 0.122150) AND (t."X_29" > 0.068815)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_0" > 15.025000) AND (t."X_25" > 0.107880) AND (t."X_0" > 15.740000) AND (t."X_25" > 0.173600)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_0" > 15.025000) AND (t."X_25" > 0.107880) AND (t."X_0" > 15.740000) AND (t."X_25" <= 0.173600) AND (t."X_25" <= 0.159750)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_0" > 15.025000) AND (t."X_25" > 0.107880) AND (t."X_0" > 15.740000) AND (t."X_25" <= 0.173600) AND (t."X_25" > 0.159750)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" <= 0.132350) AND (t."X_29" > 0.057180) AND (t."X_27" <= 0.122150) AND (t."X_28" <= 0.198850) AND (t."X_28" <= 0.194750)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" <= 0.132350) AND (t."X_29" > 0.057180) AND (t."X_27" <= 0.122150) AND (t."X_28" <= 0.198850) AND (t."X_28" > 0.194750)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" <= 0.132350) AND (t."X_29" > 0.057180) AND (t."X_27" <= 0.122150) AND (t."X_28" > 0.198850) AND (t."X_27" > 0.111000) AND (t."X_29" <= 0.077095)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" <= 0.132350) AND (t."X_29" > 0.057180) AND (t."X_27" <= 0.122150) AND (t."X_28" > 0.198850) AND (t."X_27" > 0.111000) AND (t."X_29" > 0.077095)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" <= 0.132350) AND (t."X_29" > 0.057180) AND (t."X_27" <= 0.122150) AND (t."X_28" > 0.198850) AND (t."X_27" <= 0.111000) AND (t."X_24" <= 0.141850)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" <= 0.132350) AND (t."X_29" > 0.057180) AND (t."X_27" <= 0.122150) AND (t."X_28" > 0.198850) AND (t."X_27" <= 0.111000) AND (t."X_24" > 0.141850) AND (t."X_24" > 0.142150)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" <= 0.132350) AND (t."X_29" > 0.057180) AND (t."X_27" <= 0.122150) AND (t."X_28" > 0.198850) AND (t."X_27" <= 0.111000) AND (t."X_24" > 0.141850) AND (t."X_24" <= 0.142150) AND (t."X_29" <= 0.086380)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_0" <= 15.025000) AND (t."X_27" <= 0.132350) AND (t."X_29" > 0.057180) AND (t."X_27" <= 0.122150) AND (t."X_28" > 0.198850) AND (t."X_27" <= 0.111000) AND (t."X_24" > 0.141850) AND (t."X_24" <= 0.142150) AND (t."X_29" > 0.086380)) THEN 52 ELSE NULL END AS "Leaf_52"
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
    SELECT 0 AS nid,  0.393673 AS "P_0", 0.606327 AS "P_1", 1 AS "D", 0.606327 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.960894 AS "P_0", 0.039106 AS "P_1", 0 AS "D", 0.960894 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.018349 AS "P_0", 0.981651 AS "P_1", 1 AS "D", 0.981651 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.730159 AS "P_0", 0.269841 AS "P_1", 0 AS "D", 0.730159 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.851852 AS "P_0", 0.148148 AS "P_1", 0 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.977778 AS "P_0", 0.022222 AS "P_1", 0 AS "D", 0.977778 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.966292 AS "P_0", 0.033708 AS "P_1", 0 AS "D", 0.966292 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.772727 AS "P_0", 0.227273 AS "P_1", 0 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.993590 AS "P_0", 0.006410 AS "P_1", 0 AS "D", 0.993590 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.015337 AS "P_0", 0.984663 AS "P_1", 1 AS "D", 0.984663 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.009404 AS "P_0", 0.990596 AS "P_1", 1 AS "D", 0.990596 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.006515 AS "P_0", 0.993485 AS "P_1", 1 AS "D", 0.993485 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.003401 AS "P_0", 0.996599 AS "P_1", 1 AS "D", 0.996599 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.016129 AS "P_0", 0.983871 AS "P_1", 1 AS "D", 0.983871 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_43", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_26" > 0.230850) AND (t."X_21" <= 22.814999) AND (t."X_27" > 0.161900)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_26" > 0.230850) AND (t."X_21" <= 22.814999) AND (t."X_27" <= 0.161900) AND (t."X_27" <= 0.133100)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_26" > 0.230850) AND (t."X_21" <= 22.814999) AND (t."X_27" <= 0.161900) AND (t."X_27" > 0.133100) AND (t."X_21" <= 20.174999)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_26" > 0.230850) AND (t."X_21" <= 22.814999) AND (t."X_27" <= 0.161900) AND (t."X_27" > 0.133100) AND (t."X_21" > 20.174999) AND (t."X_29" <= 0.103150)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_26" > 0.230850) AND (t."X_21" <= 22.814999) AND (t."X_27" <= 0.161900) AND (t."X_27" > 0.133100) AND (t."X_21" > 20.174999) AND (t."X_29" > 0.103150)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_26" > 0.230850) AND (t."X_21" > 22.814999) AND (t."X_28" <= 0.271100) AND (t."X_21" <= 28.790001) AND (t."X_29" > 0.072950) AND (t."X_27" <= 0.148400)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_26" > 0.230850) AND (t."X_21" > 22.814999) AND (t."X_28" <= 0.271100) AND (t."X_21" <= 28.790001) AND (t."X_29" <= 0.072950) AND (t."X_26" <= 0.248600)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_26" > 0.230850) AND (t."X_21" > 22.814999) AND (t."X_28" <= 0.271100) AND (t."X_21" <= 28.790001) AND (t."X_29" <= 0.072950) AND (t."X_26" > 0.248600)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_26" > 0.230850) AND (t."X_21" > 22.814999) AND (t."X_28" <= 0.271100) AND (t."X_21" <= 28.790001) AND (t."X_29" > 0.072950) AND (t."X_27" > 0.148400) AND (t."X_26" <= 0.448200)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_26" > 0.230850) AND (t."X_21" > 22.814999) AND (t."X_28" <= 0.271100) AND (t."X_21" <= 28.790001) AND (t."X_29" > 0.072950) AND (t."X_27" > 0.148400) AND (t."X_26" > 0.448200)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_26" > 0.230850) AND (t."X_21" > 22.814999) AND (t."X_28" <= 0.271100) AND (t."X_21" > 28.790001) AND (t."X_28" <= 0.213600)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_26" > 0.230850) AND (t."X_21" > 22.814999) AND (t."X_28" <= 0.271100) AND (t."X_21" > 28.790001) AND (t."X_28" > 0.213600)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_26" > 0.230850) AND (t."X_21" > 22.814999) AND (t."X_28" > 0.271100) AND (t."X_27" > 0.141550)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_26" > 0.230850) AND (t."X_21" > 22.814999) AND (t."X_28" > 0.271100) AND (t."X_27" <= 0.141550) AND (t."X_29" > 0.082375)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_26" > 0.230850) AND (t."X_21" > 22.814999) AND (t."X_28" > 0.271100) AND (t."X_27" <= 0.141550) AND (t."X_29" <= 0.082375) AND (t."X_26" <= 0.244500)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_26" > 0.230850) AND (t."X_21" > 22.814999) AND (t."X_28" > 0.271100) AND (t."X_27" <= 0.141550) AND (t."X_29" <= 0.082375) AND (t."X_26" > 0.244500)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_26" <= 0.230850) AND (t."X_27" > 0.163300)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_26" <= 0.230850) AND (t."X_27" <= 0.163300) AND (t."X_29" <= 0.058210) AND (t."X_15" <= 0.007817)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_26" <= 0.230850) AND (t."X_27" <= 0.163300) AND (t."X_29" <= 0.058210) AND (t."X_15" > 0.007817)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_26" <= 0.230850) AND (t."X_27" <= 0.163300) AND (t."X_29" > 0.058210) AND (t."X_27" <= 0.065675)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_26" <= 0.230850) AND (t."X_27" <= 0.163300) AND (t."X_29" > 0.058210) AND (t."X_27" > 0.065675) AND (t."X_21" > 30.915001) AND (t."X_29" <= 0.066965)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_26" <= 0.230850) AND (t."X_27" <= 0.163300) AND (t."X_29" > 0.058210) AND (t."X_27" > 0.065675) AND (t."X_21" > 30.915001) AND (t."X_29" > 0.066965) AND (t."X_29" <= 0.078465)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_26" <= 0.230850) AND (t."X_27" <= 0.163300) AND (t."X_29" > 0.058210) AND (t."X_27" > 0.065675) AND (t."X_21" > 30.915001) AND (t."X_29" > 0.066965) AND (t."X_29" > 0.078465) AND (t."X_15" <= 0.019690)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_26" <= 0.230850) AND (t."X_27" <= 0.163300) AND (t."X_29" > 0.058210) AND (t."X_27" > 0.065675) AND (t."X_21" > 30.915001) AND (t."X_29" > 0.066965) AND (t."X_29" > 0.078465) AND (t."X_15" > 0.019690)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_26" <= 0.230850) AND (t."X_27" <= 0.163300) AND (t."X_29" > 0.058210) AND (t."X_27" > 0.065675) AND (t."X_21" <= 30.915001) AND (t."X_25" <= 0.081710)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_26" <= 0.230850) AND (t."X_27" <= 0.163300) AND (t."X_29" > 0.058210) AND (t."X_27" > 0.065675) AND (t."X_21" <= 30.915001) AND (t."X_25" > 0.081710) AND (t."X_27" <= 0.109150)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_26" <= 0.230850) AND (t."X_27" <= 0.163300) AND (t."X_29" > 0.058210) AND (t."X_27" > 0.065675) AND (t."X_21" <= 30.915001) AND (t."X_25" > 0.081710) AND (t."X_27" > 0.109150) AND (t."X_15" > 0.015045)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_26" <= 0.230850) AND (t."X_27" <= 0.163300) AND (t."X_29" > 0.058210) AND (t."X_27" > 0.065675) AND (t."X_21" <= 30.915001) AND (t."X_25" > 0.081710) AND (t."X_27" > 0.109150) AND (t."X_15" <= 0.015045) AND (t."X_28" <= 0.278300)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_26" <= 0.230850) AND (t."X_27" <= 0.163300) AND (t."X_29" > 0.058210) AND (t."X_27" > 0.065675) AND (t."X_21" <= 30.915001) AND (t."X_25" > 0.081710) AND (t."X_27" > 0.109150) AND (t."X_15" <= 0.015045) AND (t."X_28" > 0.278300)) THEN 56 ELSE NULL END AS "Leaf_56"
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
    SELECT 0 AS nid,  0.404218 AS "P_0", 0.595782 AS "P_1", 1 AS "D", 0.595782 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.068493 AS "P_0", 0.931507 AS "P_1", 1 AS "D", 0.931507 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.758123 AS "P_0", 0.241877 AS "P_1", 0 AS "D", 0.758123 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.367347 AS "P_0", 0.632653 AS "P_1", 1 AS "D", 0.632653 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.842105 AS "P_0", 0.157895 AS "P_1", 0 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.114286 AS "P_0", 0.885714 AS "P_1", 1 AS "D", 0.885714 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.629630 AS "P_0", 0.370370 AS "P_1", 0 AS "D", 0.629630 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.908046 AS "P_0", 0.091954 AS "P_1", 0 AS "D", 0.908046 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.472222 AS "P_0", 0.527778 AS "P_1", 1 AS "D", 0.527778 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.260870 AS "P_0", 0.739130 AS "P_1", 1 AS "D", 0.739130 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.466667 AS "P_0", 0.533333 AS "P_1", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.052448 AS "P_0", 0.947552 AS "P_1", 1 AS "D", 0.947552 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.102740 AS "P_0", 0.897260 AS "P_1", 1 AS "D", 0.897260 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.032000 AS "P_0", 0.968000 AS "P_1", 1 AS "D", 0.968000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.523810 AS "P_0", 0.476190 AS "P_1", 0 AS "D", 0.523810 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.016260 AS "P_0", 0.983740 AS "P_1", 1 AS "D", 0.983740 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" > 0.162650) AND (t."X_17" > 0.027780)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" > 0.162650) AND (t."X_17" <= 0.027780) AND (t."X_29" > 0.102300)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" > 0.162650) AND (t."X_17" <= 0.027780) AND (t."X_29" <= 0.102300) AND (t."X_17" <= 0.016330)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" > 0.162650) AND (t."X_17" <= 0.027780) AND (t."X_29" <= 0.102300) AND (t."X_17" > 0.016330)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_20" > 16.799999) AND (t."X_1" <= 13.745000) AND (t."X_29" <= 0.091405)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_20" > 16.799999) AND (t."X_1" <= 13.745000) AND (t."X_29" > 0.091405)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.162650) AND (t."X_27" > 0.122300) AND (t."X_1" > 19.709999) AND (t."X_7" <= 0.042190)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.162650) AND (t."X_27" > 0.122300) AND (t."X_1" > 19.709999) AND (t."X_7" > 0.042190) AND (t."X_26" <= 0.522750)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.162650) AND (t."X_27" > 0.122300) AND (t."X_1" > 19.709999) AND (t."X_7" > 0.042190) AND (t."X_26" > 0.522750)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.162650) AND (t."X_27" > 0.122300) AND (t."X_1" <= 19.709999) AND (t."X_27" > 0.137650)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.162650) AND (t."X_27" > 0.122300) AND (t."X_1" <= 19.709999) AND (t."X_27" <= 0.137650) AND (t."X_26" <= 0.289100)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.162650) AND (t."X_27" > 0.122300) AND (t."X_1" <= 19.709999) AND (t."X_27" <= 0.137650) AND (t."X_26" > 0.289100)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.122300) AND (t."X_29" <= 0.055125)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.122300) AND (t."X_29" > 0.055125) AND (t."X_28" <= 0.198250) AND (t."X_7" <= 0.030575)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.122300) AND (t."X_29" > 0.055125) AND (t."X_28" <= 0.198250) AND (t."X_7" > 0.030575)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_20" > 16.799999) AND (t."X_1" > 13.745000) AND (t."X_26" > 0.201350)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_20" > 16.799999) AND (t."X_1" > 13.745000) AND (t."X_26" <= 0.201350) AND (t."X_17" <= 0.012770)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_20" > 16.799999) AND (t."X_1" > 13.745000) AND (t."X_26" <= 0.201350) AND (t."X_17" > 0.012770)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.122300) AND (t."X_29" > 0.055125) AND (t."X_28" > 0.198250) AND (t."X_27" > 0.111000) AND (t."X_17" <= 0.007593)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.122300) AND (t."X_29" > 0.055125) AND (t."X_28" > 0.198250) AND (t."X_27" > 0.111000) AND (t."X_17" > 0.007593)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.122300) AND (t."X_29" > 0.055125) AND (t."X_28" > 0.198250) AND (t."X_27" <= 0.111000) AND (t."X_26" <= 0.215000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.122300) AND (t."X_29" > 0.055125) AND (t."X_28" > 0.198250) AND (t."X_27" <= 0.111000) AND (t."X_26" > 0.215000) AND (t."X_25" > 0.173000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.122300) AND (t."X_29" > 0.055125) AND (t."X_28" > 0.198250) AND (t."X_27" <= 0.111000) AND (t."X_26" > 0.215000) AND (t."X_25" <= 0.173000) AND (t."X_17" <= 0.007151)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_20" <= 16.799999) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.122300) AND (t."X_29" > 0.055125) AND (t."X_28" > 0.198250) AND (t."X_27" <= 0.111000) AND (t."X_26" > 0.215000) AND (t."X_25" <= 0.173000) AND (t."X_17" > 0.007151)) THEN 46 ELSE NULL END AS "Leaf_46"
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
    SELECT 0 AS nid,  0.405975 AS "P_0", 0.594025 AS "P_1", 1 AS "D", 0.594025 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.090164 AS "P_0", 0.909836 AS "P_1", 1 AS "D", 0.909836 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.975369 AS "P_0", 0.024631 AS "P_1", 0 AS "D", 0.975369 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.048851 AS "P_0", 0.951149 AS "P_1", 1 AS "D", 0.951149 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.994898 AS "P_0", 0.005102 AS "P_1", 0 AS "D", 0.994898 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.016502 AS "P_0", 0.983498 AS "P_1", 1 AS "D", 0.983498 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.035714 AS "P_0", 0.964286 AS "P_1", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.647059 AS "P_0", 0.352941 AS "P_1", 0 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.013245 AS "P_0", 0.986755 AS "P_1", 1 AS "D", 0.986755 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.006803 AS "P_0", 0.993197 AS "P_1", 1 AS "D", 0.993197 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.003610 AS "P_0", 0.996390 AS "P_1", 1 AS "D", 0.996390 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.020833 AS "P_0", 0.979167 AS "P_1", 1 AS "D", 0.979167 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_25", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_45", t1."Leaf_46", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_55", t1."Leaf_56" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 0.097495) AND (t."X_19" > 0.007604) AND (t."X_9" <= 0.076055) AND (t."X_29" <= 0.084040)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_6" > 0.097495) AND (t."X_19" > 0.007604) AND (t."X_9" <= 0.076055) AND (t."X_29" > 0.084040) AND (t."X_29" <= 0.134750)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" > 0.097495) AND (t."X_19" > 0.007604) AND (t."X_9" <= 0.076055) AND (t."X_29" > 0.084040) AND (t."X_29" > 0.134750)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_6" > 0.097495) AND (t."X_19" <= 0.007604) AND (t."X_27" <= 0.126500) AND (t."X_6" <= 0.100140)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" > 0.097495) AND (t."X_19" <= 0.007604) AND (t."X_27" <= 0.126500) AND (t."X_6" > 0.100140)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_6" > 0.097495) AND (t."X_19" > 0.007604) AND (t."X_9" > 0.076055) AND (t."X_24" <= 0.174150)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" > 0.097495) AND (t."X_19" > 0.007604) AND (t."X_9" > 0.076055) AND (t."X_24" > 0.174150) AND (t."X_6" <= 0.173050)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" > 0.097495) AND (t."X_19" > 0.007604) AND (t."X_9" > 0.076055) AND (t."X_24" > 0.174150) AND (t."X_6" > 0.173050)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" <= 0.097495) AND (t."X_27" > 0.109550) AND (t."X_19" <= 0.001753)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_6" <= 0.097495) AND (t."X_27" > 0.109550) AND (t."X_19" > 0.001753) AND (t."X_26" > 0.266450) AND (t."X_28" <= 0.265850)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" <= 0.097495) AND (t."X_27" > 0.109550) AND (t."X_19" > 0.001753) AND (t."X_26" > 0.266450) AND (t."X_28" > 0.265850) AND (t."X_9" > 0.062490) AND (t."X_8" <= 0.168400)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_6" <= 0.097495) AND (t."X_27" > 0.109550) AND (t."X_19" > 0.001753) AND (t."X_26" > 0.266450) AND (t."X_28" > 0.265850) AND (t."X_9" > 0.062490) AND (t."X_8" > 0.168400)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_6" <= 0.097495) AND (t."X_27" > 0.109550) AND (t."X_19" > 0.001753) AND (t."X_26" > 0.266450) AND (t."X_28" > 0.265850) AND (t."X_9" <= 0.062490) AND (t."X_28" <= 0.292750)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" <= 0.097495) AND (t."X_27" > 0.109550) AND (t."X_19" > 0.001753) AND (t."X_26" > 0.266450) AND (t."X_28" > 0.265850) AND (t."X_9" <= 0.062490) AND (t."X_28" > 0.292750)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" <= 0.097495) AND (t."X_27" > 0.109550) AND (t."X_19" > 0.001753) AND (t."X_26" <= 0.266450) AND (t."X_9" <= 0.054705)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_6" <= 0.097495) AND (t."X_27" > 0.109550) AND (t."X_19" > 0.001753) AND (t."X_26" <= 0.266450) AND (t."X_9" > 0.054705)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_6" <= 0.097495) AND (t."X_27" <= 0.109550) AND (t."X_28" > 0.417900)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_6" > 0.097495) AND (t."X_19" <= 0.007604) AND (t."X_27" > 0.126500) AND (t."X_27" <= 0.142000) AND (t."X_9" <= 0.067825)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_6" > 0.097495) AND (t."X_19" <= 0.007604) AND (t."X_27" > 0.126500) AND (t."X_27" <= 0.142000) AND (t."X_9" > 0.067825)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_6" <= 0.097495) AND (t."X_27" <= 0.109550) AND (t."X_28" <= 0.417900) AND (t."X_27" <= 0.082255)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" <= 0.097495) AND (t."X_27" <= 0.109550) AND (t."X_28" <= 0.417900) AND (t."X_27" > 0.082255) AND (t."X_9" <= 0.054455) AND (t."X_29" <= 0.063605)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_6" <= 0.097495) AND (t."X_27" <= 0.109550) AND (t."X_28" <= 0.417900) AND (t."X_27" > 0.082255) AND (t."X_9" <= 0.054455) AND (t."X_29" > 0.063605)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_6" <= 0.097495) AND (t."X_27" <= 0.109550) AND (t."X_28" <= 0.417900) AND (t."X_27" > 0.082255) AND (t."X_9" > 0.054455) AND (t."X_8" > 0.159300)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_6" <= 0.097495) AND (t."X_27" <= 0.109550) AND (t."X_28" <= 0.417900) AND (t."X_27" > 0.082255) AND (t."X_9" > 0.054455) AND (t."X_8" <= 0.159300) AND (t."X_28" <= 0.266750)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_6" <= 0.097495) AND (t."X_27" <= 0.109550) AND (t."X_28" <= 0.417900) AND (t."X_27" > 0.082255) AND (t."X_9" > 0.054455) AND (t."X_8" <= 0.159300) AND (t."X_28" > 0.266750) AND (t."X_8" <= 0.152700)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_6" <= 0.097495) AND (t."X_27" <= 0.109550) AND (t."X_28" <= 0.417900) AND (t."X_27" > 0.082255) AND (t."X_9" > 0.054455) AND (t."X_8" <= 0.159300) AND (t."X_28" > 0.266750) AND (t."X_8" > 0.152700)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_6" > 0.097495) AND (t."X_19" <= 0.007604) AND (t."X_27" > 0.126500) AND (t."X_27" > 0.142000) AND (t."X_25" <= 0.475800)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_6" > 0.097495) AND (t."X_19" <= 0.007604) AND (t."X_27" > 0.126500) AND (t."X_27" > 0.142000) AND (t."X_25" > 0.475800) AND (t."X_25" <= 0.491850)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_6" > 0.097495) AND (t."X_19" <= 0.007604) AND (t."X_27" > 0.126500) AND (t."X_27" > 0.142000) AND (t."X_25" > 0.475800) AND (t."X_25" > 0.491850)) THEN 56 ELSE NULL END AS "Leaf_56"
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
    SELECT 0 AS nid,  0.391916 AS "P_0", 0.608084 AS "P_1", 1 AS "D", 0.608084 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.098592 AS "P_0", 0.901408 AS "P_1", 1 AS "D", 0.901408 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.878505 AS "P_0", 0.121495 AS "P_1", 0 AS "D", 0.878505 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.315789 AS "P_0", 0.684211 AS "P_1", 1 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.983696 AS "P_0", 0.016304 AS "P_1", 0 AS "D", 0.983696 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.027027 AS "P_0", 0.972973 AS "P_1", 1 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.457627 AS "P_0", 0.542373 AS "P_1", 1 AS "D", 0.542373 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.304348 AS "P_0", 0.695652 AS "P_1", 1 AS "D", 0.695652 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.565217 AS "P_0", 0.434783 AS "P_1", 0 AS "D", 0.565217 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.017065 AS "P_0", 0.982935 AS "P_1", 1 AS "D", 0.982935 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.994286 AS "P_0", 0.005714 AS "P_1", 0 AS "D", 0.994286 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.023529 AS "P_0", 0.976471 AS "P_1", 1 AS "D", 0.976471 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.974359 AS "P_0", 0.025641 AS "P_1", 0 AS "D", 0.974359 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 0.131000) AND (t."X_27" <= 0.145450) AND (t."X_28" > 0.305400) AND (t."X_23" > 814.799988)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_27" > 0.131000) AND (t."X_27" <= 0.145450) AND (t."X_28" > 0.305400) AND (t."X_23" <= 814.799988) AND (t."X_28" <= 0.355450)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_27" > 0.131000) AND (t."X_27" <= 0.145450) AND (t."X_28" > 0.305400) AND (t."X_23" <= 814.799988) AND (t."X_28" > 0.355450)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_27" > 0.131000) AND (t."X_27" <= 0.145450) AND (t."X_28" <= 0.305400) AND (t."X_29" <= 0.071785)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_27" > 0.131000) AND (t."X_27" <= 0.145450) AND (t."X_28" <= 0.305400) AND (t."X_29" > 0.071785) AND (t."X_14" > 0.004823)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_27" > 0.131000) AND (t."X_27" <= 0.145450) AND (t."X_28" <= 0.305400) AND (t."X_29" > 0.071785) AND (t."X_14" <= 0.004823) AND (t."X_27" <= 0.139850)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_27" > 0.131000) AND (t."X_27" <= 0.145450) AND (t."X_28" <= 0.305400) AND (t."X_29" > 0.071785) AND (t."X_14" <= 0.004823) AND (t."X_27" > 0.139850)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" > 0.131000) AND (t."X_27" > 0.145450) AND (t."X_23" <= 444.299988)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_27" > 0.131000) AND (t."X_27" > 0.145450) AND (t."X_23" > 444.299988) AND (t."X_23" > 767.900024)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_27" > 0.131000) AND (t."X_27" > 0.145450) AND (t."X_23" > 444.299988) AND (t."X_23" <= 767.900024) AND (t."X_28" <= 0.274900)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_27" > 0.131000) AND (t."X_27" > 0.145450) AND (t."X_23" > 444.299988) AND (t."X_23" <= 767.900024) AND (t."X_28" > 0.274900)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_27" <= 0.131000) AND (t."X_28" <= 0.162750) AND (t."X_27" <= 0.014495)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" <= 0.131000) AND (t."X_28" <= 0.162750) AND (t."X_27" > 0.014495)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_27" <= 0.131000) AND (t."X_28" > 0.162750) AND (t."X_26" > 0.192950) AND (t."X_15" <= 0.011700) AND (t."X_23" <= 666.000000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_27" <= 0.131000) AND (t."X_28" > 0.162750) AND (t."X_26" > 0.192950) AND (t."X_15" <= 0.011700) AND (t."X_23" > 666.000000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_27" <= 0.131000) AND (t."X_28" > 0.162750) AND (t."X_26" > 0.192950) AND (t."X_15" > 0.011700) AND (t."X_29" <= 0.068815) AND (t."X_27" <= 0.085045)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_27" <= 0.131000) AND (t."X_28" > 0.162750) AND (t."X_26" > 0.192950) AND (t."X_15" > 0.011700) AND (t."X_29" <= 0.068815) AND (t."X_27" > 0.085045)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_27" <= 0.131000) AND (t."X_28" > 0.162750) AND (t."X_26" > 0.192950) AND (t."X_15" > 0.011700) AND (t."X_29" > 0.068815) AND (t."X_29" <= 0.069830) AND (t."X_29" <= 0.069355)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_27" <= 0.131000) AND (t."X_28" > 0.162750) AND (t."X_26" > 0.192950) AND (t."X_15" > 0.011700) AND (t."X_29" > 0.068815) AND (t."X_29" <= 0.069830) AND (t."X_29" > 0.069355)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_27" <= 0.131000) AND (t."X_28" > 0.162750) AND (t."X_26" > 0.192950) AND (t."X_15" > 0.011700) AND (t."X_29" > 0.068815) AND (t."X_29" > 0.069830) AND (t."X_26" <= 0.331750)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_27" <= 0.131000) AND (t."X_28" > 0.162750) AND (t."X_26" > 0.192950) AND (t."X_15" > 0.011700) AND (t."X_29" > 0.068815) AND (t."X_29" > 0.069830) AND (t."X_26" > 0.331750) AND (t."X_23" <= 854.349976)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_27" <= 0.131000) AND (t."X_28" > 0.162750) AND (t."X_26" > 0.192950) AND (t."X_15" > 0.011700) AND (t."X_29" > 0.068815) AND (t."X_29" > 0.069830) AND (t."X_26" > 0.331750) AND (t."X_23" > 854.349976)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_27" <= 0.131000) AND (t."X_28" > 0.162750) AND (t."X_26" <= 0.192950) AND (t."X_23" <= 1091.000000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_27" <= 0.131000) AND (t."X_28" > 0.162750) AND (t."X_26" <= 0.192950) AND (t."X_23" > 1091.000000) AND (t."X_29" <= 0.071615)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_27" <= 0.131000) AND (t."X_28" > 0.162750) AND (t."X_26" <= 0.192950) AND (t."X_23" > 1091.000000) AND (t."X_29" > 0.071615)) THEN 48 ELSE NULL END AS "Leaf_48"
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
    SELECT 0 AS nid,  0.356766 AS "P_0", 0.643234 AS "P_1", 1 AS "D", 0.643234 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.044199 AS "P_0", 0.955801 AS "P_1", 1 AS "D", 0.955801 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.903382 AS "P_0", 0.096618 AS "P_1", 0 AS "D", 0.903382 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.966480 AS "P_0", 0.033520 AS "P_1", 0 AS "D", 0.966480 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.977401 AS "P_0", 0.022599 AS "P_1", 0 AS "D", 0.977401 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.038997 AS "P_0", 0.961003 AS "P_1", 1 AS "D", 0.961003 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.003968 AS "P_0", 0.996032 AS "P_1", 1 AS "D", 0.996032 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.121495 AS "P_0", 0.878505 AS "P_1", 1 AS "D", 0.878505 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.060606 AS "P_0", 0.939394 AS "P_1", 1 AS "D", 0.939394 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.031579 AS "P_0", 0.968421 AS "P_1", 1 AS "D", 0.968421 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.021739 AS "P_0", 0.978261 AS "P_1", 1 AS "D", 0.978261 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_26" <= 0.218150) AND (t."X_28" <= 0.242300)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_26" <= 0.218150) AND (t."X_28" > 0.242300) AND (t."X_20" <= 18.705000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_26" <= 0.218150) AND (t."X_28" > 0.242300) AND (t."X_20" > 18.705000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.158900) AND (t."X_8" > 0.198600)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.158900) AND (t."X_8" <= 0.198600) AND (t."X_8" <= 0.184400)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.158900) AND (t."X_8" <= 0.198600) AND (t."X_8" > 0.184400)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.135950) AND (t."X_20" <= 15.215000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.135950) AND (t."X_20" > 15.215000) AND (t."X_27" > 0.143700)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.135950) AND (t."X_20" > 15.215000) AND (t."X_27" <= 0.143700) AND (t."X_2" > 93.959999)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.135950) AND (t."X_20" > 15.215000) AND (t."X_27" <= 0.143700) AND (t."X_2" <= 93.959999) AND (t."X_29" <= 0.085080)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.135950) AND (t."X_20" > 15.215000) AND (t."X_27" <= 0.143700) AND (t."X_2" <= 93.959999) AND (t."X_29" > 0.085080)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.135950) AND (t."X_28" <= 0.198300) AND (t."X_8" <= 0.154550)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.135950) AND (t."X_28" <= 0.198300) AND (t."X_8" > 0.154550)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_26" > 0.218150) AND (t."X_20" > 17.049999)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_26" > 0.218150) AND (t."X_20" <= 17.049999) AND (t."X_20" <= 16.950001)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_26" > 0.218150) AND (t."X_20" <= 17.049999) AND (t."X_20" > 16.950001)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.135950) AND (t."X_28" > 0.198300) AND (t."X_20" > 15.890000) AND (t."X_16" > 0.043750)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.135950) AND (t."X_28" > 0.198300) AND (t."X_20" > 15.890000) AND (t."X_16" <= 0.043750) AND (t."X_20" <= 15.955000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.135950) AND (t."X_28" > 0.198300) AND (t."X_20" > 15.890000) AND (t."X_16" <= 0.043750) AND (t."X_20" > 15.955000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.135950) AND (t."X_28" > 0.198300) AND (t."X_20" <= 15.890000) AND (t."X_27" <= 0.093205)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.135950) AND (t."X_28" > 0.198300) AND (t."X_20" <= 15.890000) AND (t."X_27" > 0.093205) AND (t."X_25" > 0.155250)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.135950) AND (t."X_28" > 0.198300) AND (t."X_20" <= 15.890000) AND (t."X_27" > 0.093205) AND (t."X_25" <= 0.155250) AND (t."X_29" <= 0.080455)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.135950) AND (t."X_28" > 0.198300) AND (t."X_20" <= 15.890000) AND (t."X_27" > 0.093205) AND (t."X_25" <= 0.155250) AND (t."X_29" > 0.080455)) THEN 44 ELSE NULL END AS "Leaf_44"
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
    SELECT 0 AS nid,  0.374341 AS "P_0", 0.625659 AS "P_1", 1 AS "D", 0.625659 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.081794 AS "P_0", 0.918206 AS "P_1", 1 AS "D", 0.918206 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.957895 AS "P_0", 0.042105 AS "P_1", 0 AS "D", 0.957895 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.036111 AS "P_0", 0.963889 AS "P_1", 1 AS "D", 0.963889 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.416667 AS "P_0", 0.583333 AS "P_1", 1 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.994382 AS "P_0", 0.005618 AS "P_1", 0 AS "D", 0.994382 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.015060 AS "P_0", 0.984940 AS "P_1", 1 AS "D", 0.984940 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.470588 AS "P_0", 0.529412 AS "P_1", 1 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.009231 AS "P_0", 0.990769 AS "P_1", 1 AS "D", 0.990769 AS "DP"
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
    SELECT 33 AS nid,  0.003333 AS "P_0", 0.996667 AS "P_1", 1 AS "D", 0.996667 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.080000 AS "P_0", 0.920000 AS "P_1", 1 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.041667 AS "P_0", 0.958333 AS "P_1", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.012987 AS "P_0", 0.987013 AS "P_1", 1 AS "D", 0.987013 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" > 0.151750) AND (t."X_28" <= 0.267350)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" > 696.250000) AND (t."X_13" <= 22.005001) AND (t."X_29" <= 0.089765)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" > 696.250000) AND (t."X_13" <= 22.005001) AND (t."X_29" > 0.089765)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" > 0.151750) AND (t."X_28" > 0.267350) AND (t."X_10" <= 0.764050)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" > 0.151750) AND (t."X_28" > 0.267350) AND (t."X_10" > 0.764050) AND (t."X_28" <= 0.326100)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" > 0.151750) AND (t."X_28" > 0.267350) AND (t."X_10" > 0.764050) AND (t."X_28" > 0.326100)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" > 696.250000) AND (t."X_13" > 22.005001) AND (t."X_27" > 0.091520)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_3" > 696.250000) AND (t."X_13" > 22.005001) AND (t."X_27" <= 0.091520) AND (t."X_27" <= 0.082880)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_3" > 696.250000) AND (t."X_13" > 22.005001) AND (t."X_27" <= 0.091520) AND (t."X_27" > 0.082880) AND (t."X_10" <= 0.284350)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_3" > 696.250000) AND (t."X_13" > 22.005001) AND (t."X_27" <= 0.091520) AND (t."X_27" > 0.082880) AND (t."X_10" > 0.284350)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" <= 0.151750) AND (t."X_27" > 0.135800) AND (t."X_25" <= 0.280800) AND (t."X_27" <= 0.140750)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" <= 0.151750) AND (t."X_27" > 0.135800) AND (t."X_25" <= 0.280800) AND (t."X_27" > 0.140750)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" <= 0.151750) AND (t."X_27" > 0.135800) AND (t."X_25" > 0.280800) AND (t."X_28" <= 0.258950)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" <= 0.151750) AND (t."X_27" > 0.135800) AND (t."X_25" > 0.280800) AND (t."X_28" > 0.258950) AND (t."X_28" <= 0.355450)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" <= 0.151750) AND (t."X_27" > 0.135800) AND (t."X_25" > 0.280800) AND (t."X_28" > 0.258950) AND (t."X_28" > 0.355450)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" <= 0.151750) AND (t."X_27" <= 0.135800) AND (t."X_27" > 0.111000) AND (t."X_10" > 0.424300)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" <= 0.151750) AND (t."X_27" <= 0.135800) AND (t."X_27" > 0.111000) AND (t."X_10" <= 0.424300) AND (t."X_29" > 0.072025)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" <= 0.151750) AND (t."X_27" <= 0.135800) AND (t."X_27" > 0.111000) AND (t."X_10" <= 0.424300) AND (t."X_29" <= 0.072025) AND (t."X_29" <= 0.070315)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" <= 0.151750) AND (t."X_27" <= 0.135800) AND (t."X_27" > 0.111000) AND (t."X_10" <= 0.424300) AND (t."X_29" <= 0.072025) AND (t."X_29" > 0.070315)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" <= 0.151750) AND (t."X_27" <= 0.135800) AND (t."X_27" <= 0.111000) AND (t."X_13" > 48.974998) AND (t."X_25" <= 0.163470)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" <= 0.151750) AND (t."X_27" <= 0.135800) AND (t."X_27" <= 0.111000) AND (t."X_13" > 48.974998) AND (t."X_25" > 0.163470)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" <= 0.151750) AND (t."X_27" <= 0.135800) AND (t."X_27" <= 0.111000) AND (t."X_13" <= 48.974998) AND (t."X_28" <= 0.282400)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" <= 0.151750) AND (t."X_27" <= 0.135800) AND (t."X_27" <= 0.111000) AND (t."X_13" <= 48.974998) AND (t."X_28" > 0.282400) AND (t."X_28" > 0.283500)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" <= 0.151750) AND (t."X_27" <= 0.135800) AND (t."X_27" <= 0.111000) AND (t."X_13" <= 48.974998) AND (t."X_28" > 0.282400) AND (t."X_28" <= 0.283500) AND (t."X_29" <= 0.084495)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_3" <= 696.250000) AND (t."X_27" <= 0.151750) AND (t."X_27" <= 0.135800) AND (t."X_27" <= 0.111000) AND (t."X_13" <= 48.974998) AND (t."X_28" > 0.282400) AND (t."X_28" <= 0.283500) AND (t."X_29" > 0.084495)) THEN 48 ELSE NULL END AS "Leaf_48"
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
    SELECT 0 AS nid,  0.374341 AS "P_0", 0.625659 AS "P_1", 1 AS "D", 0.625659 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.118388 AS "P_0", 0.881612 AS "P_1", 1 AS "D", 0.881612 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.965116 AS "P_0", 0.034884 AS "P_1", 0 AS "D", 0.965116 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.036011 AS "P_0", 0.963989 AS "P_1", 1 AS "D", 0.963989 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.971429 AS "P_0", 0.028571 AS "P_1", 0 AS "D", 0.971429 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.987879 AS "P_0", 0.012121 AS "P_1", 0 AS "D", 0.987879 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
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
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.020528 AS "P_0", 0.979472 AS "P_1", 1 AS "D", 0.979472 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.012739 AS "P_0", 0.987261 AS "P_1", 1 AS "D", 0.987261 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.040000 AS "P_0", 0.960000 AS "P_1", 1 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.006452 AS "P_0", 0.993548 AS "P_1", 1 AS "D", 0.993548 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.020833 AS "P_0", 0.979167 AS "P_1", 1 AS "D", 0.979167 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_19", t1."Leaf_20", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.158900) AND (t."X_13" <= 13.475000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.158900) AND (t."X_13" > 13.475000) AND (t."X_26" <= 1.076950)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.158900) AND (t."X_13" > 13.475000) AND (t."X_26" > 1.076950)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_16" <= 0.019045) AND (t."X_16" > 0.018140)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_16" <= 0.019045) AND (t."X_16" <= 0.018140) AND (t."X_13" <= 47.680000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_16" <= 0.019045) AND (t."X_16" <= 0.018140) AND (t."X_13" > 47.680000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.122150) AND (t."X_13" > 32.574997) AND (t."X_17" <= 0.020095)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.122150) AND (t."X_13" > 32.574997) AND (t."X_17" > 0.020095)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.122150) AND (t."X_13" <= 32.574997) AND (t."X_29" > 0.095690) AND (t."X_20" > 15.665000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.122150) AND (t."X_13" <= 32.574997) AND (t."X_29" > 0.095690) AND (t."X_20" <= 15.665000) AND (t."X_29" <= 0.099680)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.122150) AND (t."X_13" <= 32.574997) AND (t."X_29" > 0.095690) AND (t."X_20" <= 15.665000) AND (t."X_29" > 0.099680)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_16" > 0.019045) AND (t."X_27" <= 0.094530) AND (t."X_17" <= 0.010093)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_16" > 0.019045) AND (t."X_27" <= 0.094530) AND (t."X_17" > 0.010093)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.122150) AND (t."X_13" <= 32.574997) AND (t."X_29" <= 0.095690) AND (t."X_26" <= 0.399450)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.122150) AND (t."X_13" <= 32.574997) AND (t."X_29" <= 0.095690) AND (t."X_26" > 0.399450) AND (t."X_17" <= 0.015220)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" > 0.122150) AND (t."X_13" <= 32.574997) AND (t."X_29" <= 0.095690) AND (t."X_26" > 0.399450) AND (t."X_17" > 0.015220)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_16" > 0.019045) AND (t."X_27" > 0.094530) AND (t."X_27" > 0.145400)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_16" > 0.019045) AND (t."X_27" > 0.094530) AND (t."X_27" <= 0.145400) AND (t."X_29" <= 0.081695)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_16" > 0.019045) AND (t."X_27" > 0.094530) AND (t."X_27" <= 0.145400) AND (t."X_29" > 0.081695)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.122150) AND (t."X_28" <= 0.198300) AND (t."X_13" <= 39.224998)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.122150) AND (t."X_28" <= 0.198300) AND (t."X_13" > 39.224998)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.122150) AND (t."X_28" > 0.198300) AND (t."X_26" <= 0.215000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.122150) AND (t."X_28" > 0.198300) AND (t."X_26" > 0.215000) AND (t."X_16" > 0.023335)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.122150) AND (t."X_28" > 0.198300) AND (t."X_26" > 0.215000) AND (t."X_16" <= 0.023335) AND (t."X_27" <= 0.087255)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.158900) AND (t."X_27" <= 0.122150) AND (t."X_28" > 0.198300) AND (t."X_26" > 0.215000) AND (t."X_16" <= 0.023335) AND (t."X_27" > 0.087255)) THEN 48 ELSE NULL END AS "Leaf_48"
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
    SELECT 0 AS nid,  0.381371 AS "P_0", 0.618629 AS "P_1", 1 AS "D", 0.618629 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.097368 AS "P_0", 0.902632 AS "P_1", 1 AS "D", 0.902632 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.047619 AS "P_0", 0.952381 AS "P_1", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.869565 AS "P_0", 0.130435 AS "P_1", 0 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.977778 AS "P_0", 0.022222 AS "P_1", 0 AS "D", 0.977778 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.009709 AS "P_0", 0.990291 AS "P_1", 1 AS "D", 0.990291 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.291667 AS "P_0", 0.708333 AS "P_1", 1 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.157895 AS "P_0", 0.842105 AS "P_1", 1 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.988701 AS "P_0", 0.011299 AS "P_1", 0 AS "D", 0.988701 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.006579 AS "P_0", 0.993421 AS "P_1", 1 AS "D", 0.993421 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.036364 AS "P_0", 0.963636 AS "P_1", 1 AS "D", 0.963636 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_16", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_43", t1."Leaf_44", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_55", t1."Leaf_56", t1."Leaf_58", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" > 0.145600) AND (t."X_16" > 0.079505)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_12" > 2.762000) AND (t."X_4" <= 0.083020) AND (t."X_12" <= 3.792500)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_12" > 2.762000) AND (t."X_4" <= 0.083020) AND (t."X_12" > 3.792500)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_12" > 2.762000) AND (t."X_4" > 0.083020) AND (t."X_27" <= 0.143400) AND (t."X_18" <= 0.016450)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_12" > 2.762000) AND (t."X_4" > 0.083020) AND (t."X_27" <= 0.143400) AND (t."X_18" > 0.016450) AND (t."X_17" > 0.033900)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_12" > 2.762000) AND (t."X_4" > 0.083020) AND (t."X_27" <= 0.143400) AND (t."X_18" > 0.016450) AND (t."X_17" <= 0.033900) AND (t."X_29" <= 0.070170) AND (t."X_16" > 0.024245)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_12" > 2.762000) AND (t."X_4" > 0.083020) AND (t."X_27" <= 0.143400) AND (t."X_18" > 0.016450) AND (t."X_17" <= 0.033900) AND (t."X_29" <= 0.070170) AND (t."X_16" <= 0.024245) AND (t."X_17" <= 0.011380)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_12" > 2.762000) AND (t."X_4" > 0.083020) AND (t."X_27" <= 0.143400) AND (t."X_18" > 0.016450) AND (t."X_17" <= 0.033900) AND (t."X_29" <= 0.070170) AND (t."X_16" <= 0.024245) AND (t."X_17" > 0.011380)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" > 0.145600) AND (t."X_16" <= 0.079505) AND (t."X_28" > 0.270450)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" > 0.145600) AND (t."X_16" <= 0.079505) AND (t."X_28" <= 0.270450) AND (t."X_29" <= 0.072555)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" > 0.145600) AND (t."X_16" <= 0.079505) AND (t."X_28" <= 0.270450) AND (t."X_29" > 0.072555)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" <= 0.145600) AND (t."X_29" <= 0.057900)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_12" > 2.762000) AND (t."X_4" > 0.083020) AND (t."X_27" <= 0.143400) AND (t."X_18" > 0.016450) AND (t."X_17" <= 0.033900) AND (t."X_29" > 0.070170) AND (t."X_27" <= 0.118550)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_12" > 2.762000) AND (t."X_4" > 0.083020) AND (t."X_27" <= 0.143400) AND (t."X_18" > 0.016450) AND (t."X_17" <= 0.033900) AND (t."X_29" > 0.070170) AND (t."X_27" > 0.118550) AND (t."X_27" <= 0.127900)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_12" > 2.762000) AND (t."X_4" > 0.083020) AND (t."X_27" <= 0.143400) AND (t."X_18" > 0.016450) AND (t."X_17" <= 0.033900) AND (t."X_29" > 0.070170) AND (t."X_27" > 0.118550) AND (t."X_27" > 0.127900)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.057900) AND (t."X_18" <= 0.010335) AND (t."X_17" <= 0.006273)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.057900) AND (t."X_18" <= 0.010335) AND (t."X_17" > 0.006273)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.057900) AND (t."X_18" > 0.010335) AND (t."X_27" > 0.110850) AND (t."X_27" <= 0.112450)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.057900) AND (t."X_18" > 0.010335) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.112450) AND (t."X_17" <= 0.008475) AND (t."X_29" <= 0.092025)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.057900) AND (t."X_18" > 0.010335) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.112450) AND (t."X_17" <= 0.008475) AND (t."X_29" > 0.092025)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.057900) AND (t."X_18" > 0.010335) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.112450) AND (t."X_17" > 0.008475) AND (t."X_12" > 2.550000) AND (t."X_16" <= 0.034740)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.057900) AND (t."X_18" > 0.010335) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.112450) AND (t."X_17" > 0.008475) AND (t."X_12" > 2.550000) AND (t."X_16" > 0.034740)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.057900) AND (t."X_18" > 0.010335) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.112450) AND (t."X_17" > 0.008475) AND (t."X_12" <= 2.550000) AND (t."X_26" <= 0.401350)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.057900) AND (t."X_18" > 0.010335) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.112450) AND (t."X_17" > 0.008475) AND (t."X_12" <= 2.550000) AND (t."X_26" > 0.401350) AND (t."X_27" <= 0.132100)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.057900) AND (t."X_18" > 0.010335) AND (t."X_27" > 0.110850) AND (t."X_27" > 0.112450) AND (t."X_17" > 0.008475) AND (t."X_12" <= 2.550000) AND (t."X_26" > 0.401350) AND (t."X_27" > 0.132100)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_12" > 2.762000) AND (t."X_4" > 0.083020) AND (t."X_27" > 0.143400) AND (t."X_26" <= 0.805400)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_12" > 2.762000) AND (t."X_4" > 0.083020) AND (t."X_27" > 0.143400) AND (t."X_26" > 0.805400) AND (t."X_17" <= 0.038795)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_12" > 2.762000) AND (t."X_4" > 0.083020) AND (t."X_27" > 0.143400) AND (t."X_26" > 0.805400) AND (t."X_17" > 0.038795)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.057900) AND (t."X_18" > 0.010335) AND (t."X_27" <= 0.110850) AND (t."X_4" > 0.082335)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.057900) AND (t."X_18" > 0.010335) AND (t."X_27" <= 0.110850) AND (t."X_4" <= 0.082335) AND (t."X_28" > 0.397950)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.057900) AND (t."X_18" > 0.010335) AND (t."X_27" <= 0.110850) AND (t."X_4" <= 0.082335) AND (t."X_28" <= 0.397950) AND (t."X_4" <= 0.081990)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_12" <= 2.762000) AND (t."X_27" <= 0.145600) AND (t."X_29" > 0.057900) AND (t."X_18" > 0.010335) AND (t."X_27" <= 0.110850) AND (t."X_4" <= 0.082335) AND (t."X_28" <= 0.397950) AND (t."X_4" > 0.081990)) THEN 62 ELSE NULL END AS "Leaf_62"
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
    SELECT 0 AS nid,  0.355009 AS "P_0", 0.644991 AS "P_1", 1 AS "D", 0.644991 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.123626 AS "P_0", 0.876374 AS "P_1", 1 AS "D", 0.876374 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.765854 AS "P_0", 0.234146 AS "P_1", 0 AS "D", 0.765854 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.882353 AS "P_0", 0.117647 AS "P_1", 0 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.967742 AS "P_0", 0.032258 AS "P_1", 0 AS "D", 0.967742 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.827027 AS "P_0", 0.172973 AS "P_1", 0 AS "D", 0.827027 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.436364 AS "P_0", 0.563636 AS "P_1", 1 AS "D", 0.563636 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.992308 AS "P_0", 0.007692 AS "P_1", 0 AS "D", 0.992308 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.279070 AS "P_0", 0.720930 AS "P_1", 1 AS "D", 0.720930 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.205128 AS "P_0", 0.794872 AS "P_1", 1 AS "D", 0.794872 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.538462 AS "P_0", 0.461538 AS "P_1", 0 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.038462 AS "P_0", 0.961538 AS "P_1", 1 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.036697 AS "P_0", 0.963303 AS "P_1", 1 AS "D", 0.963303 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.030864 AS "P_0", 0.969136 AS "P_1", 1 AS "D", 0.969136 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.007273 AS "P_0", 0.992727 AS "P_1", 1 AS "D", 0.992727 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.163265 AS "P_0", 0.836735 AS "P_1", 1 AS "D", 0.836735 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.088889 AS "P_0", 0.911111 AS "P_1", 1 AS "D", 0.911111 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.047619 AS "P_0", 0.952381 AS "P_1", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.025641 AS "P_0", 0.974359 AS "P_1", 1 AS "D", 0.974359 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.029412 AS "P_0", 0.970588 AS "P_1", 1 AS "D", 0.970588 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.014925 AS "P_0", 0.985075 AS "P_1", 1 AS "D", 0.985075 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 0.146350) AND (t."X_7" <= 0.050005) AND (t."X_29" <= 0.081725)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_27" > 0.146350) AND (t."X_7" <= 0.050005) AND (t."X_29" > 0.081725)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" > 0.111000) AND (t."X_22" > 101.800003) AND (t."X_23" > 957.450012)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" > 0.111000) AND (t."X_22" > 101.800003) AND (t."X_23" <= 957.450012) AND (t."X_26" <= 0.263950) AND (t."X_22" <= 102.650002)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" > 0.111000) AND (t."X_22" > 101.800003) AND (t."X_23" <= 957.450012) AND (t."X_26" <= 0.263950) AND (t."X_22" > 102.650002)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" > 0.111000) AND (t."X_22" > 101.800003) AND (t."X_23" <= 957.450012) AND (t."X_26" > 0.263950) AND (t."X_29" > 0.104205)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" > 0.111000) AND (t."X_22" > 101.800003) AND (t."X_23" <= 957.450012) AND (t."X_26" > 0.263950) AND (t."X_29" <= 0.104205) AND (t."X_7" <= 0.061750)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" > 0.111000) AND (t."X_22" > 101.800003) AND (t."X_23" <= 957.450012) AND (t."X_26" > 0.263950) AND (t."X_29" <= 0.104205) AND (t."X_7" > 0.061750)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" > 0.111000) AND (t."X_22" <= 101.800003) AND (t."X_27" <= 0.142000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" > 0.111000) AND (t."X_22" <= 101.800003) AND (t."X_27" > 0.142000) AND (t."X_29" <= 0.086460)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" > 0.111000) AND (t."X_22" <= 101.800003) AND (t."X_27" > 0.142000) AND (t."X_29" > 0.086460)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" <= 0.111000) AND (t."X_29" <= 0.055125)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" <= 0.111000) AND (t."X_29" > 0.055125) AND (t."X_22" > 127.199997)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_27" > 0.146350) AND (t."X_7" > 0.050005) AND (t."X_22" > 97.154999)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_27" > 0.146350) AND (t."X_7" > 0.050005) AND (t."X_22" <= 97.154999) AND (t."X_22" <= 94.294998)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_27" > 0.146350) AND (t."X_7" > 0.050005) AND (t."X_22" <= 97.154999) AND (t."X_22" > 94.294998)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" <= 0.111000) AND (t."X_29" > 0.055125) AND (t."X_22" <= 127.199997) AND (t."X_26" > 0.215000) AND (t."X_22" > 115.000000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" <= 0.111000) AND (t."X_29" > 0.055125) AND (t."X_22" <= 127.199997) AND (t."X_26" > 0.215000) AND (t."X_22" <= 115.000000) AND (t."X_26" <= 0.219650)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" <= 0.111000) AND (t."X_29" > 0.055125) AND (t."X_22" <= 127.199997) AND (t."X_26" > 0.215000) AND (t."X_22" <= 115.000000) AND (t."X_26" > 0.219650)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" <= 0.111000) AND (t."X_29" > 0.055125) AND (t."X_22" <= 127.199997) AND (t."X_26" <= 0.215000) AND (t."X_28" > 0.322150) AND (t."X_29" <= 0.063435)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" <= 0.111000) AND (t."X_29" > 0.055125) AND (t."X_22" <= 127.199997) AND (t."X_26" <= 0.215000) AND (t."X_28" > 0.322150) AND (t."X_29" > 0.063435)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" <= 0.111000) AND (t."X_29" > 0.055125) AND (t."X_22" <= 127.199997) AND (t."X_26" <= 0.215000) AND (t."X_28" <= 0.322150) AND (t."X_17" <= 0.014080)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" <= 0.111000) AND (t."X_29" > 0.055125) AND (t."X_22" <= 127.199997) AND (t."X_26" <= 0.215000) AND (t."X_28" <= 0.322150) AND (t."X_17" > 0.014080) AND (t."X_17" <= 0.014515)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_27" <= 0.146350) AND (t."X_27" <= 0.111000) AND (t."X_29" > 0.055125) AND (t."X_22" <= 127.199997) AND (t."X_26" <= 0.215000) AND (t."X_28" <= 0.322150) AND (t."X_17" > 0.014080) AND (t."X_17" > 0.014515)) THEN 46 ELSE NULL END AS "Leaf_46"
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
    SELECT 0 AS nid,  0.367311 AS "P_0", 0.632689 AS "P_1", 1 AS "D", 0.632689 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.106329 AS "P_0", 0.893671 AS "P_1", 1 AS "D", 0.893671 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.959770 AS "P_0", 0.040230 AS "P_1", 0 AS "D", 0.959770 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.994012 AS "P_0", 0.005988 AS "P_1", 0 AS "D", 0.994012 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.038922 AS "P_0", 0.961078 AS "P_1", 1 AS "D", 0.961078 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.475410 AS "P_0", 0.524590 AS "P_1", 1 AS "D", 0.524590 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.717949 AS "P_0", 0.282051 AS "P_1", 0 AS "D", 0.717949 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.521739 AS "P_0", 0.478261 AS "P_1", 0 AS "D", 0.521739 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.033133 AS "P_0", 0.966867 AS "P_1", 1 AS "D", 0.966867 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.021341 AS "P_0", 0.978659 AS "P_1", 1 AS "D", 0.978659 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.011070 AS "P_0", 0.988930 AS "P_1", 1 AS "D", 0.988930 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.070175 AS "P_0", 0.929825 AS "P_1", 1 AS "D", 0.929825 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.053571 AS "P_0", 0.946429 AS "P_1", 1 AS "D", 0.946429 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.003906 AS "P_0", 0.996094 AS "P_1", 1 AS "D", 0.996094 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > 0.055920) AND (t."X_22" <= 103.250000) AND (t."X_28" <= 0.290600)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_7" > 0.055920) AND (t."X_22" <= 103.250000) AND (t."X_28" > 0.290600) AND (t."X_29" <= 0.089615)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_7" > 0.055920) AND (t."X_22" <= 103.250000) AND (t."X_28" > 0.290600) AND (t."X_29" > 0.089615)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" > 0.109550) AND (t."X_25" <= 0.211350) AND (t."X_10" > 0.373050)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" > 0.109550) AND (t."X_25" <= 0.211350) AND (t."X_10" <= 0.373050) AND (t."X_7" <= 0.033590)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" > 0.109550) AND (t."X_25" <= 0.211350) AND (t."X_10" <= 0.373050) AND (t."X_7" > 0.033590)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" > 0.109550) AND (t."X_25" > 0.211350) AND (t."X_28" <= 0.316900)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" > 0.109550) AND (t."X_25" > 0.211350) AND (t."X_28" > 0.316900) AND (t."X_28" <= 0.322100)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" > 0.109550) AND (t."X_25" > 0.211350) AND (t."X_28" > 0.316900) AND (t."X_28" > 0.322100) AND (t."X_19" <= 0.002126)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" > 0.109550) AND (t."X_25" > 0.211350) AND (t."X_28" > 0.316900) AND (t."X_28" > 0.322100) AND (t."X_19" > 0.002126)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" <= 0.109550) AND (t."X_14" <= 0.002832)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_7" > 0.055920) AND (t."X_22" > 103.250000) AND (t."X_19" > 0.012350)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" > 0.055920) AND (t."X_22" > 103.250000) AND (t."X_19" <= 0.012350) AND (t."X_22" > 114.449997)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_7" > 0.055920) AND (t."X_22" > 103.250000) AND (t."X_19" <= 0.012350) AND (t."X_22" <= 114.449997) AND (t."X_26" <= 0.264100)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_7" > 0.055920) AND (t."X_22" > 103.250000) AND (t."X_19" <= 0.012350) AND (t."X_22" <= 114.449997) AND (t."X_26" > 0.264100) AND (t."X_22" <= 113.899994)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_7" > 0.055920) AND (t."X_22" > 103.250000) AND (t."X_19" <= 0.012350) AND (t."X_22" <= 114.449997) AND (t."X_26" > 0.264100) AND (t."X_22" > 113.899994)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" <= 0.109550) AND (t."X_14" > 0.002832) AND (t."X_27" <= 0.065675)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" <= 0.109550) AND (t."X_14" > 0.002832) AND (t."X_27" > 0.065675) AND (t."X_27" <= 0.066195)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" <= 0.109550) AND (t."X_14" > 0.002832) AND (t."X_27" > 0.065675) AND (t."X_27" > 0.066195) AND (t."X_22" > 122.050003) AND (t."X_19" <= 0.001443)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" <= 0.109550) AND (t."X_14" > 0.002832) AND (t."X_27" > 0.065675) AND (t."X_27" > 0.066195) AND (t."X_22" > 122.050003) AND (t."X_19" > 0.001443)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" <= 0.109550) AND (t."X_14" > 0.002832) AND (t."X_27" > 0.065675) AND (t."X_27" > 0.066195) AND (t."X_22" <= 122.050003) AND (t."X_26" <= 0.061755)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" <= 0.109550) AND (t."X_14" > 0.002832) AND (t."X_27" > 0.065675) AND (t."X_27" > 0.066195) AND (t."X_22" <= 122.050003) AND (t."X_26" > 0.061755) AND (t."X_25" > 0.152400)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" <= 0.109550) AND (t."X_14" > 0.002832) AND (t."X_27" > 0.065675) AND (t."X_27" > 0.066195) AND (t."X_22" <= 122.050003) AND (t."X_26" > 0.061755) AND (t."X_25" <= 0.152400) AND (t."X_14" <= 0.007444)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" <= 0.109550) AND (t."X_14" > 0.002832) AND (t."X_27" > 0.065675) AND (t."X_27" > 0.066195) AND (t."X_22" <= 122.050003) AND (t."X_26" > 0.061755) AND (t."X_25" <= 0.152400) AND (t."X_14" > 0.007444) AND (t."X_26" <= 0.181050)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_7" <= 0.055920) AND (t."X_27" <= 0.109550) AND (t."X_14" > 0.002832) AND (t."X_27" > 0.065675) AND (t."X_27" > 0.066195) AND (t."X_22" <= 122.050003) AND (t."X_26" > 0.061755) AND (t."X_25" <= 0.152400) AND (t."X_14" > 0.007444) AND (t."X_26" > 0.181050)) THEN 48 ELSE NULL END AS "Leaf_48"
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
    SELECT 0 AS nid,  0.386643 AS "P_0", 0.613357 AS "P_1", 1 AS "D", 0.613357 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.936585 AS "P_0", 0.063415 AS "P_1", 0 AS "D", 0.936585 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.437500 AS "P_0", 0.562500 AS "P_1", 1 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.978836 AS "P_0", 0.021164 AS "P_1", 0 AS "D", 0.978836 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.030201 AS "P_0", 0.969799 AS "P_1", 1 AS "D", 0.969799 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.287879 AS "P_0", 0.712121 AS "P_1", 1 AS "D", 0.712121 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.652174 AS "P_0", 0.347826 AS "P_1", 0 AS "D", 0.652174 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.093023 AS "P_0", 0.906977 AS "P_1", 1 AS "D", 0.906977 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.235294 AS "P_0", 0.764706 AS "P_1", 1 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.020339 AS "P_0", 0.979661 AS "P_1", 1 AS "D", 0.979661 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.984043 AS "P_0", 0.015957 AS "P_1", 0 AS "D", 0.984043 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.911765 AS "P_0", 0.088235 AS "P_1", 0 AS "D", 0.911765 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.968750 AS "P_0", 0.031250 AS "P_1", 0 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.040268 AS "P_0", 0.959732 AS "P_1", 1 AS "D", 0.959732 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.033784 AS "P_0", 0.966216 AS "P_1", 1 AS "D", 0.966216 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.020690 AS "P_0", 0.979310 AS "P_1", 1 AS "D", 0.979310 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.013889 AS "P_0", 0.986111 AS "P_1", 1 AS "D", 0.986111 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_22", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 0.089390) AND (t."X_3" <= 349.950012)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_6" > 0.089390) AND (t."X_3" > 349.950012) AND (t."X_27" <= 0.142350) AND (t."X_3" > 728.599976)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_6" > 0.089390) AND (t."X_3" > 349.950012) AND (t."X_27" <= 0.142350) AND (t."X_3" <= 728.599976) AND (t."X_19" <= 0.003364)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" > 0.089390) AND (t."X_3" > 349.950012) AND (t."X_27" <= 0.142350) AND (t."X_3" <= 728.599976) AND (t."X_19" > 0.003364)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_6" <= 0.089390) AND (t."X_27" > 0.110550) AND (t."X_19" <= 0.001912)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" <= 0.089390) AND (t."X_27" > 0.110550) AND (t."X_19" > 0.001912) AND (t."X_29" > 0.096625)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" <= 0.089390) AND (t."X_27" > 0.110550) AND (t."X_19" > 0.001912) AND (t."X_29" <= 0.096625) AND (t."X_13" <= 36.559998)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" <= 0.089390) AND (t."X_27" > 0.110550) AND (t."X_19" > 0.001912) AND (t."X_29" <= 0.096625) AND (t."X_13" > 36.559998)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" <= 0.089390) AND (t."X_27" <= 0.110550) AND (t."X_29" <= 0.055995)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" <= 0.089390) AND (t."X_27" <= 0.110550) AND (t."X_29" > 0.055995) AND (t."X_28" > 0.417900)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_6" <= 0.089390) AND (t."X_27" <= 0.110550) AND (t."X_29" > 0.055995) AND (t."X_28" <= 0.417900) AND (t."X_3" > 715.650024) AND (t."X_6" <= 0.043270)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" <= 0.089390) AND (t."X_27" <= 0.110550) AND (t."X_29" > 0.055995) AND (t."X_28" <= 0.417900) AND (t."X_3" > 715.650024) AND (t."X_6" > 0.043270) AND (t."X_28" <= 0.288000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" <= 0.089390) AND (t."X_27" <= 0.110550) AND (t."X_29" > 0.055995) AND (t."X_28" <= 0.417900) AND (t."X_3" > 715.650024) AND (t."X_6" > 0.043270) AND (t."X_28" > 0.288000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" > 0.089390) AND (t."X_3" > 349.950012) AND (t."X_27" > 0.142350) AND (t."X_26" > 0.748450) AND (t."X_28" <= 0.269400)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" > 0.089390) AND (t."X_3" > 349.950012) AND (t."X_27" > 0.142350) AND (t."X_26" > 0.748450) AND (t."X_28" > 0.269400)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" > 0.089390) AND (t."X_3" > 349.950012) AND (t."X_27" > 0.142350) AND (t."X_26" <= 0.748450) AND (t."X_13" <= 14.965000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_6" > 0.089390) AND (t."X_3" > 349.950012) AND (t."X_27" > 0.142350) AND (t."X_26" <= 0.748450) AND (t."X_13" > 14.965000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_6" <= 0.089390) AND (t."X_27" <= 0.110550) AND (t."X_29" > 0.055995) AND (t."X_28" <= 0.417900) AND (t."X_3" <= 715.650024) AND (t."X_28" <= 0.198250) AND (t."X_13" <= 35.940002)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" <= 0.089390) AND (t."X_27" <= 0.110550) AND (t."X_29" > 0.055995) AND (t."X_28" <= 0.417900) AND (t."X_3" <= 715.650024) AND (t."X_28" <= 0.198250) AND (t."X_13" > 35.940002)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_6" <= 0.089390) AND (t."X_27" <= 0.110550) AND (t."X_29" > 0.055995) AND (t."X_28" <= 0.417900) AND (t."X_3" <= 715.650024) AND (t."X_28" > 0.198250) AND (t."X_27" <= 0.093205)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_6" <= 0.089390) AND (t."X_27" <= 0.110550) AND (t."X_29" > 0.055995) AND (t."X_28" <= 0.417900) AND (t."X_3" <= 715.650024) AND (t."X_28" > 0.198250) AND (t."X_27" > 0.093205) AND (t."X_3" <= 486.200012)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" <= 0.089390) AND (t."X_27" <= 0.110550) AND (t."X_29" > 0.055995) AND (t."X_28" <= 0.417900) AND (t."X_3" <= 715.650024) AND (t."X_28" > 0.198250) AND (t."X_27" > 0.093205) AND (t."X_3" > 486.200012) AND (t."X_27" <= 0.094625)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_6" <= 0.089390) AND (t."X_27" <= 0.110550) AND (t."X_29" > 0.055995) AND (t."X_28" <= 0.417900) AND (t."X_3" <= 715.650024) AND (t."X_28" > 0.198250) AND (t."X_27" > 0.093205) AND (t."X_3" > 486.200012) AND (t."X_27" > 0.094625)) THEN 44 ELSE NULL END AS "Leaf_44"
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
    SELECT 0 AS nid,  0.388401 AS "P_0", 0.611599 AS "P_1", 1 AS "D", 0.611599 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.069565 AS "P_0", 0.930435 AS "P_1", 1 AS "D", 0.930435 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.879464 AS "P_0", 0.120536 AS "P_1", 0 AS "D", 0.879464 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.912037 AS "P_0", 0.087963 AS "P_1", 0 AS "D", 0.912037 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.983696 AS "P_0", 0.016304 AS "P_1", 0 AS "D", 0.983696 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.157895 AS "P_0", 0.842105 AS "P_1", 1 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.027027 AS "P_0", 0.972973 AS "P_1", 1 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.326531 AS "P_0", 0.673469 AS "P_1", 1 AS "D", 0.673469 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.175000 AS "P_0", 0.825000 AS "P_1", 1 AS "D", 0.825000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.108108 AS "P_0", 0.891892 AS "P_1", 1 AS "D", 0.891892 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.023729 AS "P_0", 0.976271 AS "P_1", 1 AS "D", 0.976271 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.020408 AS "P_0", 0.979592 AS "P_1", 1 AS "D", 0.979592 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.007067 AS "P_0", 0.992933 AS "P_1", 1 AS "D", 0.992933 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.993976 AS "P_0", 0.006024 AS "P_1", 0 AS "D", 0.993976 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.003610 AS "P_0", 0.996390 AS "P_1", 1 AS "D", 0.996390 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.035714 AS "P_0", 0.964286 AS "P_1", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_27", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 695.700012) AND (t."X_27" > 0.142350) AND (t."X_13" <= 21.945000) AND (t."X_28" > 0.361000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_3" <= 695.700012) AND (t."X_27" > 0.142350) AND (t."X_13" <= 21.945000) AND (t."X_28" <= 0.361000) AND (t."X_27" <= 0.142550)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" <= 695.700012) AND (t."X_27" > 0.142350) AND (t."X_13" <= 21.945000) AND (t."X_28" <= 0.361000) AND (t."X_27" > 0.142550)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" <= 695.700012) AND (t."X_27" > 0.142350) AND (t."X_13" > 21.945000) AND (t."X_2" <= 97.339996)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_3" <= 695.700012) AND (t."X_27" > 0.142350) AND (t."X_13" > 21.945000) AND (t."X_2" > 97.339996) AND (t."X_29" <= 0.107350)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_3" <= 695.700012) AND (t."X_27" > 0.142350) AND (t."X_13" > 21.945000) AND (t."X_2" > 97.339996) AND (t."X_29" > 0.107350)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" > 695.700012) AND (t."X_13" <= 22.005001)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_3" > 695.700012) AND (t."X_13" > 22.005001) AND (t."X_26" > 0.190700)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_3" > 695.700012) AND (t."X_13" > 22.005001) AND (t."X_26" <= 0.190700) AND (t."X_27" <= 0.082880)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_3" > 695.700012) AND (t."X_13" > 22.005001) AND (t."X_26" <= 0.190700) AND (t."X_27" > 0.082880) AND (t."X_29" <= 0.077615)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_3" > 695.700012) AND (t."X_13" > 22.005001) AND (t."X_26" <= 0.190700) AND (t."X_27" > 0.082880) AND (t."X_29" > 0.077615)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_3" <= 695.700012) AND (t."X_27" <= 0.142350) AND (t."X_26" > 0.262000) AND (t."X_25" <= 0.200350)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_3" <= 695.700012) AND (t."X_27" <= 0.142350) AND (t."X_26" > 0.262000) AND (t."X_25" > 0.200350) AND (t."X_2" <= 87.389999)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_3" <= 695.700012) AND (t."X_27" <= 0.142350) AND (t."X_26" > 0.262000) AND (t."X_25" > 0.200350) AND (t."X_2" > 87.389999) AND (t."X_28" > 0.301100)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_3" <= 695.700012) AND (t."X_27" <= 0.142350) AND (t."X_26" > 0.262000) AND (t."X_25" > 0.200350) AND (t."X_2" > 87.389999) AND (t."X_28" <= 0.301100) AND (t."X_13" <= 18.950001)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_3" <= 695.700012) AND (t."X_27" <= 0.142350) AND (t."X_26" > 0.262000) AND (t."X_25" > 0.200350) AND (t."X_2" > 87.389999) AND (t."X_28" <= 0.301100) AND (t."X_13" > 18.950001)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_3" <= 695.700012) AND (t."X_27" <= 0.142350) AND (t."X_26" <= 0.262000) AND (t."X_29" <= 0.080640)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_3" <= 695.700012) AND (t."X_27" <= 0.142350) AND (t."X_26" <= 0.262000) AND (t."X_29" > 0.080640) AND (t."X_29" <= 0.080750)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_3" <= 695.700012) AND (t."X_27" <= 0.142350) AND (t."X_26" <= 0.262000) AND (t."X_29" > 0.080640) AND (t."X_29" > 0.080750)) THEN 36 ELSE NULL END AS "Leaf_36"
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
    SELECT 0 AS nid,  0.362039 AS "P_0", 0.637961 AS "P_1", 1 AS "D", 0.637961 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.110276 AS "P_0", 0.889724 AS "P_1", 1 AS "D", 0.889724 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.952941 AS "P_0", 0.047059 AS "P_1", 0 AS "D", 0.952941 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.022535 AS "P_0", 0.977465 AS "P_1", 1 AS "D", 0.977465 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.975904 AS "P_0", 0.024096 AS "P_1", 0 AS "D", 0.975904 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.003367 AS "P_0", 0.996633 AS "P_1", 1 AS "D", 0.996633 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.120690 AS "P_0", 0.879310 AS "P_1", 1 AS "D", 0.879310 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.011905 AS "P_0", 0.988095 AS "P_1", 1 AS "D", 0.988095 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" > 0.160300)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_2" > 98.755005) AND (t."X_26" > 0.216200)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" > 98.755005) AND (t."X_26" <= 0.216200) AND (t."X_1" <= 21.385000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" > 98.755005) AND (t."X_26" <= 0.216200) AND (t."X_1" > 21.385000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" > 0.118250) AND (t."X_21" > 27.435001) AND (t."X_29" <= 0.088010)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" > 0.118250) AND (t."X_21" > 27.435001) AND (t."X_29" > 0.088010) AND (t."X_28" <= 0.320100)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" > 0.118250) AND (t."X_21" > 27.435001) AND (t."X_29" > 0.088010) AND (t."X_28" > 0.320100)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" > 0.118250) AND (t."X_21" <= 27.435001) AND (t."X_28" > 0.259300)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" > 0.118250) AND (t."X_21" <= 27.435001) AND (t."X_28" <= 0.259300) AND (t."X_26" <= 0.377900)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" > 0.118250) AND (t."X_21" <= 27.435001) AND (t."X_28" <= 0.259300) AND (t."X_26" > 0.377900)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.118250) AND (t."X_29" <= 0.055995)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.118250) AND (t."X_29" > 0.055995) AND (t."X_27" > 0.111000) AND (t."X_27" <= 0.112900)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.118250) AND (t."X_29" > 0.055995) AND (t."X_27" > 0.111000) AND (t."X_27" > 0.112900)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.118250) AND (t."X_29" > 0.055995) AND (t."X_27" <= 0.111000) AND (t."X_2" > 96.464996) AND (t."X_2" <= 97.464996)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.118250) AND (t."X_29" > 0.055995) AND (t."X_27" <= 0.111000) AND (t."X_2" > 96.464996) AND (t."X_2" > 97.464996)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.118250) AND (t."X_29" > 0.055995) AND (t."X_27" <= 0.111000) AND (t."X_2" <= 96.464996) AND (t."X_21" > 33.349998) AND (t."X_27" <= 0.092290)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.118250) AND (t."X_29" > 0.055995) AND (t."X_27" <= 0.111000) AND (t."X_2" <= 96.464996) AND (t."X_21" > 33.349998) AND (t."X_27" > 0.092290) AND (t."X_2" <= 78.119995)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.118250) AND (t."X_29" > 0.055995) AND (t."X_27" <= 0.111000) AND (t."X_2" <= 96.464996) AND (t."X_21" > 33.349998) AND (t."X_27" > 0.092290) AND (t."X_2" > 78.119995)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.118250) AND (t."X_29" > 0.055995) AND (t."X_27" <= 0.111000) AND (t."X_2" <= 96.464996) AND (t."X_21" <= 33.349998) AND (t."X_26" > 0.061665)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.118250) AND (t."X_29" > 0.055995) AND (t."X_27" <= 0.111000) AND (t."X_2" <= 96.464996) AND (t."X_21" <= 33.349998) AND (t."X_26" <= 0.061665) AND (t."X_26" <= 0.058220)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_2" <= 98.755005) AND (t."X_27" <= 0.160300) AND (t."X_27" <= 0.118250) AND (t."X_29" > 0.055995) AND (t."X_27" <= 0.111000) AND (t."X_2" <= 96.464996) AND (t."X_21" <= 33.349998) AND (t."X_26" <= 0.061665) AND (t."X_26" > 0.058220)) THEN 40 ELSE NULL END AS "Leaf_40"
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
    SELECT 0 AS nid,  0.374341 AS "P_0", 0.625659 AS "P_1", 1 AS "D", 0.625659 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.125313 AS "P_0", 0.874687 AS "P_1", 1 AS "D", 0.874687 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.958824 AS "P_0", 0.041176 AS "P_1", 0 AS "D", 0.958824 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.061828 AS "P_0", 0.938172 AS "P_1", 1 AS "D", 0.938172 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.018405 AS "P_0", 0.981595 AS "P_1", 1 AS "D", 0.981595 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.369565 AS "P_0", 0.630435 AS "P_1", 1 AS "D", 0.630435 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.015385 AS "P_0", 0.984615 AS "P_1", 1 AS "D", 0.984615 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.009554 AS "P_0", 0.990446 AS "P_1", 1 AS "D", 0.990446 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.006431 AS "P_0", 0.993569 AS "P_1", 1 AS "D", 0.993569 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.003472 AS "P_0", 0.996528 AS "P_1", 1 AS "D", 0.996528 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.019608 AS "P_0", 0.980392 AS "P_1", 1 AS "D", 0.980392 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_10", t1."Leaf_12", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" > 739.750000) AND (t."X_15" <= 0.013940) AND (t."X_29" > 0.078415)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_23" > 739.750000) AND (t."X_15" <= 0.013940) AND (t."X_29" <= 0.078415) AND (t."X_27" > 0.155650)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_23" > 739.750000) AND (t."X_15" <= 0.013940) AND (t."X_29" <= 0.078415) AND (t."X_27" <= 0.155650) AND (t."X_20" > 19.834999)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_23" <= 739.750000) AND (t."X_27" > 0.180750)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_23" > 739.750000) AND (t."X_15" > 0.013940) AND (t."X_23" <= 925.799988) AND (t."X_25" <= 0.300250) AND (t."X_29" > 0.069470)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_23" > 739.750000) AND (t."X_15" > 0.013940) AND (t."X_23" <= 925.799988) AND (t."X_25" <= 0.300250) AND (t."X_29" <= 0.069470) AND (t."X_27" <= 0.095805)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_23" > 739.750000) AND (t."X_15" > 0.013940) AND (t."X_23" <= 925.799988) AND (t."X_25" <= 0.300250) AND (t."X_29" <= 0.069470) AND (t."X_27" > 0.095805)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_23" > 739.750000) AND (t."X_15" > 0.013940) AND (t."X_23" <= 925.799988) AND (t."X_25" > 0.300250) AND (t."X_14" > 0.004647)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_23" > 739.750000) AND (t."X_15" > 0.013940) AND (t."X_23" <= 925.799988) AND (t."X_25" > 0.300250) AND (t."X_14" <= 0.004647) AND (t."X_20" <= 17.145000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_23" > 739.750000) AND (t."X_15" > 0.013940) AND (t."X_23" <= 925.799988) AND (t."X_25" > 0.300250) AND (t."X_14" <= 0.004647) AND (t."X_20" > 17.145000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_23" > 739.750000) AND (t."X_15" <= 0.013940) AND (t."X_29" <= 0.078415) AND (t."X_27" <= 0.155650) AND (t."X_20" <= 19.834999) AND (t."X_27" <= 0.085265)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_23" > 739.750000) AND (t."X_15" <= 0.013940) AND (t."X_29" <= 0.078415) AND (t."X_27" <= 0.155650) AND (t."X_20" <= 19.834999) AND (t."X_27" > 0.085265) AND (t."X_29" <= 0.068925)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_23" > 739.750000) AND (t."X_15" <= 0.013940) AND (t."X_29" <= 0.078415) AND (t."X_27" <= 0.155650) AND (t."X_20" <= 19.834999) AND (t."X_27" > 0.085265) AND (t."X_29" > 0.068925)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_23" > 739.750000) AND (t."X_15" > 0.013940) AND (t."X_23" > 925.799988) AND (t."X_11" <= 1.995500)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_23" > 739.750000) AND (t."X_15" > 0.013940) AND (t."X_23" > 925.799988) AND (t."X_11" > 1.995500) AND (t."X_20" <= 19.520000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_23" > 739.750000) AND (t."X_15" > 0.013940) AND (t."X_23" > 925.799988) AND (t."X_11" > 1.995500) AND (t."X_20" > 19.520000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_23" <= 739.750000) AND (t."X_27" <= 0.180750) AND (t."X_11" > 2.097500) AND (t."X_20" <= 13.344999)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_23" <= 739.750000) AND (t."X_27" <= 0.180750) AND (t."X_11" > 2.097500) AND (t."X_20" > 13.344999) AND (t."X_28" <= 0.219100)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_23" <= 739.750000) AND (t."X_27" <= 0.180750) AND (t."X_11" > 2.097500) AND (t."X_20" > 13.344999) AND (t."X_28" > 0.219100)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_23" <= 739.750000) AND (t."X_27" <= 0.180750) AND (t."X_11" <= 2.097500) AND (t."X_26" <= 0.213800)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_23" <= 739.750000) AND (t."X_27" <= 0.180750) AND (t."X_11" <= 2.097500) AND (t."X_26" > 0.213800) AND (t."X_15" <= 0.012920)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_23" <= 739.750000) AND (t."X_27" <= 0.180750) AND (t."X_11" <= 2.097500) AND (t."X_26" > 0.213800) AND (t."X_15" > 0.012920) AND (t."X_29" > 0.083580)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_23" <= 739.750000) AND (t."X_27" <= 0.180750) AND (t."X_11" <= 2.097500) AND (t."X_26" > 0.213800) AND (t."X_15" > 0.012920) AND (t."X_29" <= 0.083580) AND (t."X_11" <= 1.680500)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_23" <= 739.750000) AND (t."X_27" <= 0.180750) AND (t."X_11" <= 2.097500) AND (t."X_26" > 0.213800) AND (t."X_15" > 0.012920) AND (t."X_29" <= 0.083580) AND (t."X_11" > 1.680500)) THEN 46 ELSE NULL END AS "Leaf_46"
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
    SELECT 0 AS nid,  0.376098 AS "P_0", 0.623902 AS "P_1", 1 AS "D", 0.623902 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.033435 AS "P_0", 0.966565 AS "P_1", 1 AS "D", 0.966565 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.845833 AS "P_0", 0.154167 AS "P_1", 0 AS "D", 0.845833 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.940000 AS "P_0", 0.060000 AS "P_1", 0 AS "D", 0.940000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.107143 AS "P_0", 0.892857 AS "P_1", 1 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.038462 AS "P_0", 0.961538 AS "P_1", 1 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.012422 AS "P_0", 0.987578 AS "P_1", 1 AS "D", 0.987578 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.765957 AS "P_0", 0.234043 AS "P_1", 0 AS "D", 0.765957 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.993464 AS "P_0", 0.006536 AS "P_1", 0 AS "D", 0.993464 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.968750 AS "P_0", 0.031250 AS "P_1", 0 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.006645 AS "P_0", 0.993355 AS "P_1", 1 AS "D", 0.993355 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.095238 AS "P_0", 0.904762 AS "P_1", 1 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.033898 AS "P_0", 0.966102 AS "P_1", 1 AS "D", 0.966102 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.017241 AS "P_0", 0.982759 AS "P_1", 1 AS "D", 0.982759 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_22" <= 109.449997) AND (t."X_27" > 0.162650) AND (t."X_14" <= 0.008760)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_22" <= 109.449997) AND (t."X_27" > 0.162650) AND (t."X_14" > 0.008760)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_22" > 109.449997) AND (t."X_22" <= 114.399994) AND (t."X_29" > 0.092920)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_22" > 109.449997) AND (t."X_22" <= 114.399994) AND (t."X_29" <= 0.092920) AND (t."X_25" <= 0.215100)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_22" > 109.449997) AND (t."X_22" <= 114.399994) AND (t."X_29" <= 0.092920) AND (t."X_25" > 0.215100)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_22" > 109.449997) AND (t."X_22" > 114.399994) AND (t."X_19" > 0.001547)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_22" > 109.449997) AND (t."X_22" > 114.399994) AND (t."X_19" <= 0.001547) AND (t."X_14" <= 0.003135)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_22" > 109.449997) AND (t."X_22" > 114.399994) AND (t."X_19" <= 0.001547) AND (t."X_14" > 0.003135)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_22" <= 109.449997) AND (t."X_27" <= 0.162650) AND (t."X_27" > 0.135200) AND (t."X_14" <= 0.005910)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_22" <= 109.449997) AND (t."X_27" <= 0.162650) AND (t."X_27" > 0.135200) AND (t."X_14" > 0.005910) AND (t."X_28" <= 0.267900)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_22" <= 109.449997) AND (t."X_27" <= 0.162650) AND (t."X_27" > 0.135200) AND (t."X_14" > 0.005910) AND (t."X_28" > 0.267900) AND (t."X_14" <= 0.010034)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_22" <= 109.449997) AND (t."X_27" <= 0.162650) AND (t."X_27" > 0.135200) AND (t."X_14" > 0.005910) AND (t."X_28" > 0.267900) AND (t."X_14" > 0.010034)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_22" <= 109.449997) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.135200) AND (t."X_29" <= 0.055995)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_22" <= 109.449997) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.135200) AND (t."X_29" > 0.055995) AND (t."X_27" <= 0.110850)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_22" <= 109.449997) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.135200) AND (t."X_29" > 0.055995) AND (t."X_27" > 0.110850) AND (t."X_14" <= 0.003549)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_22" <= 109.449997) AND (t."X_27" <= 0.162650) AND (t."X_27" <= 0.135200) AND (t."X_29" > 0.055995) AND (t."X_27" > 0.110850) AND (t."X_14" > 0.003549)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 0 AS nid,  0.374341 AS "P_0", 0.625659 AS "P_1", 1 AS "D", 0.625659 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.070845 AS "P_0", 0.929155 AS "P_1", 1 AS "D", 0.929155 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.925743 AS "P_0", 0.074257 AS "P_1", 0 AS "D", 0.925743 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.025862 AS "P_0", 0.974138 AS "P_1", 1 AS "D", 0.974138 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.894737 AS "P_0", 0.105263 AS "P_1", 0 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.535714 AS "P_0", 0.464286 AS "P_1", 0 AS "D", 0.535714 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.988506 AS "P_0", 0.011494 AS "P_1", 0 AS "D", 0.988506 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.187500 AS "P_0", 0.812500 AS "P_1", 1 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.009231 AS "P_0", 0.990769 AS "P_1", 1 AS "D", 0.990769 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.260870 AS "P_0", 0.739130 AS "P_1", 1 AS "D", 0.739130 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.006173 AS "P_0", 0.993827 AS "P_1", 1 AS "D", 0.993827 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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