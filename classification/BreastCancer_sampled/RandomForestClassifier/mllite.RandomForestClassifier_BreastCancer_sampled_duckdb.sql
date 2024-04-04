WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 0.071995) AND (t."X_23" <= 547.900024)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_6" > 0.071995) AND (t."X_23" > 547.900024)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_6" <= 0.071995) AND (t."X_27" > 0.144350)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" <= 0.071995) AND (t."X_27" <= 0.144350) AND (t."X_28" <= 0.290800)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_6" <= 0.071995) AND (t."X_27" <= 0.144350) AND (t."X_28" > 0.290800) AND (t."X_15" <= 0.010344)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" <= 0.071995) AND (t."X_27" <= 0.144350) AND (t."X_28" > 0.290800) AND (t."X_15" > 0.010344)) THEN 10 ELSE NULL END AS "Leaf_10"
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
    SELECT 0 AS nid,  0.535211 AS "P_0", 0.464789 AS "P_1", 0 AS "D", 0.535211 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.064516 AS "P_0", 0.935484 AS "P_1", 1 AS "D", 0.935484 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.033333 AS "P_0", 0.966667 AS "P_1", 1 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_4" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 563.300049)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_23" > 563.300049) AND (t."X_26" <= 0.232000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_23" > 563.300049) AND (t."X_26" > 0.232000)) THEN 4 ELSE NULL END AS "Leaf_4"
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
    SELECT 0 AS nid,  0.436620 AS "P_0", 0.563380 AS "P_1", 1 AS "D", 0.563380 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.794872 AS "P_0", 0.205128 AS "P_1", 0 AS "D", 0.794872 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_4" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 14.535000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_20" > 14.535000) AND (t."X_26" <= 0.221800)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_20" > 14.535000) AND (t."X_26" > 0.221800)) THEN 4 ELSE NULL END AS "Leaf_4"
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
    SELECT 0 AS nid,  0.478873 AS "P_0", 0.521127 AS "P_1", 1 AS "D", 0.521127 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.829268 AS "P_0", 0.170732 AS "P_1", 0 AS "D", 0.829268 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 0.147300)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_27" <= 0.147300) AND (t."X_26" > 0.326750)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_27" <= 0.147300) AND (t."X_26" <= 0.326750) AND (t."X_13" <= 37.595001)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_27" <= 0.147300) AND (t."X_26" <= 0.326750) AND (t."X_13" > 37.595001) AND (t."X_27" <= 0.094605)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_27" <= 0.147300) AND (t."X_26" <= 0.326750) AND (t."X_13" > 37.595001) AND (t."X_27" > 0.094605)) THEN 8 ELSE NULL END AS "Leaf_8"
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
    SELECT 0 AS nid,  0.478873 AS "P_0", 0.521127 AS "P_1", 1 AS "D", 0.521127 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.075000 AS "P_0", 0.925000 AS "P_1", 1 AS "D", 0.925000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.026316 AS "P_0", 0.973684 AS "P_1", 1 AS "D", 0.973684 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_26" > 0.232000) AND (t."X_27" > 0.143600)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_26" > 0.232000) AND (t."X_27" <= 0.143600) AND (t."X_29" <= 0.083335)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_26" > 0.232000) AND (t."X_27" <= 0.143600) AND (t."X_29" > 0.083335)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_26" <= 0.232000) AND (t."X_20" <= 18.230000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_26" <= 0.232000) AND (t."X_20" > 18.230000)) THEN 8 ELSE NULL END AS "Leaf_8"
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
    SELECT 0 AS nid,  0.535211 AS "P_0", 0.464789 AS "P_1", 0 AS "D", 0.535211 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.878049 AS "P_0", 0.121951 AS "P_1", 0 AS "D", 0.878049 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_2" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" <= 0.131700)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_27" > 0.131700)) THEN 2 ELSE NULL END AS "Leaf_2"
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
    SELECT 0 AS nid,  0.464789 AS "P_0", 0.535211 AS "P_1", 1 AS "D", 0.535211 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.103550) AND (t."X_26" > 0.305400) AND (t."X_21" <= 26.160000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" <= 0.103550) AND (t."X_26" > 0.305400) AND (t."X_21" > 26.160000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_5" > 0.103550) AND (t."X_21" <= 19.005001) AND (t."X_29" <= 0.090190)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" > 0.103550) AND (t."X_21" <= 19.005001) AND (t."X_29" > 0.090190)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" <= 0.103550) AND (t."X_26" <= 0.305400) AND (t."X_27" > 0.144350)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" > 0.103550) AND (t."X_21" > 19.005001) AND (t."X_24" > 0.177250) AND (t."X_29" <= 0.100650)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" > 0.103550) AND (t."X_21" > 19.005001) AND (t."X_24" > 0.177250) AND (t."X_29" > 0.100650)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" > 0.103550) AND (t."X_21" > 19.005001) AND (t."X_24" <= 0.177250) AND (t."X_8" > 0.255800)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" <= 0.103550) AND (t."X_26" <= 0.305400) AND (t."X_27" <= 0.144350) AND (t."X_27" <= 0.096425)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" <= 0.103550) AND (t."X_26" <= 0.305400) AND (t."X_27" <= 0.144350) AND (t."X_27" > 0.096425) AND (t."X_29" <= 0.083515)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" <= 0.103550) AND (t."X_26" <= 0.305400) AND (t."X_27" <= 0.144350) AND (t."X_27" > 0.096425) AND (t."X_29" > 0.083515)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" > 0.103550) AND (t."X_21" > 19.005001) AND (t."X_24" <= 0.177250) AND (t."X_8" <= 0.255800) AND (t."X_24" > 0.136850)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" > 0.103550) AND (t."X_21" > 19.005001) AND (t."X_24" <= 0.177250) AND (t."X_8" <= 0.255800) AND (t."X_24" <= 0.136850) AND (t."X_24" <= 0.131250)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" > 0.103550) AND (t."X_21" > 19.005001) AND (t."X_24" <= 0.177250) AND (t."X_8" <= 0.255800) AND (t."X_24" <= 0.136850) AND (t."X_24" > 0.131250)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.478873 AS "P_0", 0.521127 AS "P_1", 1 AS "D", 0.521127 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.736842 AS "P_0", 0.263158 AS "P_1", 0 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.866667 AS "P_0", 0.133333 AS "P_1", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.037037 AS "P_0", 0.962963 AS "P_1", 1 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.925926 AS "P_0", 0.074074 AS "P_1", 0 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.961538 AS "P_0", 0.038462 AS "P_1", 0 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_22" > 106.400002) AND (t."X_1" <= 13.865000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_22" > 106.400002) AND (t."X_1" > 13.865000) AND (t."X_27" <= 0.092055)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_22" > 106.400002) AND (t."X_1" > 13.865000) AND (t."X_27" > 0.092055)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_22" <= 106.400002) AND (t."X_29" <= 0.154700)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_22" <= 106.400002) AND (t."X_29" > 0.154700)) THEN 8 ELSE NULL END AS "Leaf_8"
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
    SELECT 0 AS nid,  0.450704 AS "P_0", 0.549296 AS "P_1", 1 AS "D", 0.549296 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.026316 AS "P_0", 0.973684 AS "P_1", 1 AS "D", 0.973684 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.939394 AS "P_0", 0.060606 AS "P_1", 0 AS "D", 0.939394 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.968750 AS "P_0", 0.031250 AS "P_1", 0 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 0.147300)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_27" <= 0.147300) AND (t."X_13" <= 37.000000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_27" <= 0.147300) AND (t."X_13" > 37.000000) AND (t."X_29" <= 0.064090)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_27" <= 0.147300) AND (t."X_13" > 37.000000) AND (t."X_29" > 0.064090)) THEN 6 ELSE NULL END AS "Leaf_6"
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
    SELECT 0 AS nid,  0.521127 AS "P_0", 0.478873 AS "P_1", 0 AS "D", 0.521127 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.105263 AS "P_0", 0.894737 AS "P_1", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 0.143600)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_10" <= 0.420300)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_10" > 0.420300) AND (t."X_26" <= 0.240050)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_27" <= 0.143600) AND (t."X_10" > 0.420300) AND (t."X_26" > 0.240050)) THEN 6 ELSE NULL END AS "Leaf_6"
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
    SELECT 0 AS nid,  0.422535 AS "P_0", 0.577465 AS "P_1", 1 AS "D", 0.577465 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.046512 AS "P_0", 0.953488 AS "P_1", 1 AS "D", 0.953488 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 90.099998) AND (t."X_11" <= 0.509300)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_2" > 90.099998) AND (t."X_11" > 0.509300)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_2" <= 90.099998) AND (t."X_27" <= 0.156600)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" <= 90.099998) AND (t."X_27" > 0.156600)) THEN 6 ELSE NULL END AS "Leaf_6"
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
    SELECT 0 AS nid,  0.478873 AS "P_0", 0.521127 AS "P_1", 1 AS "D", 0.521127 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.054054 AS "P_0", 0.945946 AS "P_1", 1 AS "D", 0.945946 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 17.709999) AND (t."X_26" <= 0.326750)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_20" <= 17.709999) AND (t."X_26" > 0.326750) AND (t."X_28" <= 0.299100)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" <= 17.709999) AND (t."X_26" > 0.326750) AND (t."X_28" > 0.299100)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_20" > 17.709999) AND (t."X_4" <= 0.078255)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" > 17.709999) AND (t."X_4" > 0.078255)) THEN 8 ELSE NULL END AS "Leaf_8"
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
    SELECT 0 AS nid,  0.394366 AS "P_0", 0.605634 AS "P_1", 1 AS "D", 0.605634 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 15.004999)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_20" > 15.004999) AND (t."X_26" > 0.232000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_20" > 15.004999) AND (t."X_26" <= 0.232000) AND (t."X_20" <= 18.705000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" > 15.004999) AND (t."X_26" <= 0.232000) AND (t."X_20" > 18.705000)) THEN 6 ELSE NULL END AS "Leaf_6"
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
    SELECT 0 AS nid,  0.464789 AS "P_0", 0.535211 AS "P_1", 1 AS "D", 0.535211 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" <= 0.137000) AND (t."X_27" <= 0.096425)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_27" <= 0.137000) AND (t."X_27" > 0.096425) AND (t."X_27" <= 0.099840)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_27" <= 0.137000) AND (t."X_27" > 0.096425) AND (t."X_27" > 0.099840) AND (t."X_1" <= 24.934999)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_27" <= 0.137000) AND (t."X_27" > 0.096425) AND (t."X_27" > 0.099840) AND (t."X_1" > 24.934999)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_27" > 0.137000) AND (t."X_27" > 0.147300)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_27" > 0.137000) AND (t."X_27" <= 0.147300) AND (t."X_29" <= 0.097850)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_27" > 0.137000) AND (t."X_27" <= 0.147300) AND (t."X_29" > 0.097850)) THEN 12 ELSE NULL END AS "Leaf_12"
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
    SELECT 0 AS nid,  0.450704 AS "P_0", 0.549296 AS "P_1", 1 AS "D", 0.549296 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.073171 AS "P_0", 0.926829 AS "P_1", 1 AS "D", 0.926829 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.966667 AS "P_0", 0.033333 AS "P_1", 0 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 0.106650) AND (t."X_2" <= 75.755005)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_6" > 0.106650) AND (t."X_2" > 75.755005)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_6" <= 0.106650) AND (t."X_27" <= 0.096445)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_6" <= 0.106650) AND (t."X_27" > 0.096445) AND (t."X_29" <= 0.083195)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_6" <= 0.106650) AND (t."X_27" > 0.096445) AND (t."X_29" > 0.083195)) THEN 8 ELSE NULL END AS "Leaf_8"
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
    SELECT 0 AS nid,  0.478873 AS "P_0", 0.521127 AS "P_1", 1 AS "D", 0.521127 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.028571 AS "P_0", 0.971429 AS "P_1", 1 AS "D", 0.971429 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" <= 0.122150)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_27" > 0.122150) AND (t."X_26" <= 0.232000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_27" > 0.122150) AND (t."X_26" > 0.232000) AND (t."X_14" <= 0.014195)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_27" > 0.122150) AND (t."X_26" > 0.232000) AND (t."X_14" > 0.014195)) THEN 6 ELSE NULL END AS "Leaf_6"
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
    SELECT 0 AS nid,  0.492958 AS "P_0", 0.507042 AS "P_1", 1 AS "D", 0.507042 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.945946 AS "P_0", 0.054054 AS "P_1", 0 AS "D", 0.945946 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.972222 AS "P_0", 0.027778 AS "P_1", 0 AS "D", 0.972222 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_25" > 0.289900) AND (t."X_0" <= 11.360001)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_25" > 0.289900) AND (t."X_0" > 11.360001)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_25" <= 0.289900) AND (t."X_27" > 0.109165) AND (t."X_29" <= 0.080300)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_25" <= 0.289900) AND (t."X_27" > 0.109165) AND (t."X_29" > 0.080300) AND (t."X_28" <= 0.340200)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_25" <= 0.289900) AND (t."X_27" > 0.109165) AND (t."X_29" > 0.080300) AND (t."X_28" > 0.340200)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_25" <= 0.289900) AND (t."X_27" <= 0.109165) AND (t."X_27" <= 0.096445)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_25" <= 0.289900) AND (t."X_27" <= 0.109165) AND (t."X_27" > 0.096445) AND (t."X_29" <= 0.076820)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_25" <= 0.289900) AND (t."X_27" <= 0.109165) AND (t."X_27" > 0.096445) AND (t."X_29" > 0.076820)) THEN 14 ELSE NULL END AS "Leaf_14"
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
    SELECT 0 AS nid,  0.422535 AS "P_0", 0.577465 AS "P_1", 1 AS "D", 0.577465 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.170213 AS "P_0", 0.829787 AS "P_1", 1 AS "D", 0.829787 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.027027 AS "P_0", 0.972973 AS "P_1", 1 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_26" > 0.232000) AND (t."X_15" <= 0.031925)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_26" > 0.232000) AND (t."X_15" > 0.031925) AND (t."X_27" <= 0.149000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_26" > 0.232000) AND (t."X_15" > 0.031925) AND (t."X_27" > 0.149000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_26" <= 0.232000) AND (t."X_27" <= 0.096445)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_26" <= 0.232000) AND (t."X_27" > 0.096445) AND (t."X_15" <= 0.010650)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_26" <= 0.232000) AND (t."X_27" > 0.096445) AND (t."X_15" > 0.010650)) THEN 10 ELSE NULL END AS "Leaf_10"
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
    SELECT 0 AS nid,  0.422535 AS "P_0", 0.577465 AS "P_1", 1 AS "D", 0.577465 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.027778 AS "P_0", 0.972222 AS "P_1", 1 AS "D", 0.972222 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.828571 AS "P_0", 0.171429 AS "P_1", 0 AS "D", 0.828571 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" <= 0.031400)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_7" > 0.031400) AND (t."X_20" <= 14.135000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_7" > 0.031400) AND (t."X_20" > 14.135000) AND (t."X_26" > 0.246500)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_7" > 0.031400) AND (t."X_20" > 14.135000) AND (t."X_26" <= 0.246500) AND (t."X_29" <= 0.083195)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_7" > 0.031400) AND (t."X_20" > 14.135000) AND (t."X_26" <= 0.246500) AND (t."X_29" > 0.083195)) THEN 8 ELSE NULL END AS "Leaf_8"
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
    SELECT 0 AS nid,  0.535211 AS "P_0", 0.464789 AS "P_1", 0 AS "D", 0.535211 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.904762 AS "P_0", 0.095238 AS "P_1", 0 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 0.107400)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_6" <= 0.107400) AND (t."X_27" <= 0.113550)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_6" <= 0.107400) AND (t."X_27" > 0.113550) AND (t."X_6" <= 0.096305)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_6" <= 0.107400) AND (t."X_27" > 0.113550) AND (t."X_6" > 0.096305)) THEN 6 ELSE NULL END AS "Leaf_6"
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
    SELECT 0 AS nid,  0.521127 AS "P_0", 0.478873 AS "P_1", 0 AS "D", 0.521127 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.105263 AS "P_0", 0.894737 AS "P_1", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 893.650024) AND (t."X_25" <= 0.347900)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_23" <= 893.650024) AND (t."X_25" > 0.347900) AND (t."X_27" <= 0.130050)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_23" <= 893.650024) AND (t."X_25" > 0.347900) AND (t."X_27" > 0.130050)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_23" > 893.650024) AND (t."X_27" <= 0.092055)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_23" > 893.650024) AND (t."X_27" > 0.092055)) THEN 8 ELSE NULL END AS "Leaf_8"
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
    SELECT 0 AS nid,  0.549296 AS "P_0", 0.450704 AS "P_1", 0 AS "D", 0.549296 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.088235 AS "P_0", 0.911765 AS "P_1", 1 AS "D", 0.911765 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.972973 AS "P_0", 0.027027 AS "P_1", 0 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_26" <= 0.244600) AND (t."X_20" <= 18.705000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_26" <= 0.244600) AND (t."X_20" > 18.705000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_26" > 0.244600) AND (t."X_2" <= 75.089996)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_26" > 0.244600) AND (t."X_2" > 75.089996)) THEN 6 ELSE NULL END AS "Leaf_6"
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
    SELECT 0 AS nid,  0.535211 AS "P_0", 0.464789 AS "P_1", 0 AS "D", 0.535211 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.972973 AS "P_0", 0.027027 AS "P_1", 0 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_13" <= 36.824997) AND (t."X_27" <= 0.144350)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_13" <= 36.824997) AND (t."X_27" > 0.144350)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_13" > 36.824997) AND (t."X_29" > 0.064590)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_13" > 36.824997) AND (t."X_29" <= 0.064590) AND (t."X_29" <= 0.059185)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_13" > 36.824997) AND (t."X_29" <= 0.064590) AND (t."X_29" > 0.059185)) THEN 8 ELSE NULL END AS "Leaf_8"
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
    SELECT 0 AS nid,  0.492958 AS "P_0", 0.507042 AS "P_1", 1 AS "D", 0.507042 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.195122 AS "P_0", 0.804878 AS "P_1", 1 AS "D", 0.804878 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_22" <= 104.650002)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_22" > 104.650002) AND (t."X_29" <= 0.064590)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_22" > 104.650002) AND (t."X_29" > 0.064590) AND (t."X_13" > 33.965000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_22" > 104.650002) AND (t."X_29" > 0.064590) AND (t."X_13" <= 33.965000) AND (t."X_29" <= 0.091585)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_22" > 104.650002) AND (t."X_29" > 0.064590) AND (t."X_13" <= 33.965000) AND (t."X_29" > 0.091585)) THEN 8 ELSE NULL END AS "Leaf_8"
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
    SELECT 0 AS nid,  0.450704 AS "P_0", 0.549296 AS "P_1", 1 AS "D", 0.549296 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.969697 AS "P_0", 0.030303 AS "P_1", 0 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" <= 3.225500) AND (t."X_27" > 0.147300)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_12" > 3.225500) AND (t."X_16" <= 0.020365)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_12" > 3.225500) AND (t."X_16" > 0.020365)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_12" <= 3.225500) AND (t."X_27" <= 0.147300) AND (t."X_27" <= 0.096425)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_12" <= 3.225500) AND (t."X_27" <= 0.147300) AND (t."X_27" > 0.096425) AND (t."X_17" <= 0.010296)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_12" <= 3.225500) AND (t."X_27" <= 0.147300) AND (t."X_27" > 0.096425) AND (t."X_17" > 0.010296)) THEN 10 ELSE NULL END AS "Leaf_10"
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
    SELECT 0 AS nid,  0.507042 AS "P_0", 0.492958 AS "P_1", 0 AS "D", 0.507042 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.282609 AS "P_0", 0.717391 AS "P_1", 1 AS "D", 0.717391 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.920000 AS "P_0", 0.080000 AS "P_1", 0 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 0.113550)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_27" <= 0.113550) AND (t."X_27" <= 0.094605)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_27" <= 0.113550) AND (t."X_27" > 0.094605) AND (t."X_22" <= 117.100006)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_27" <= 0.113550) AND (t."X_27" > 0.094605) AND (t."X_22" > 117.100006)) THEN 6 ELSE NULL END AS "Leaf_6"
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
    SELECT 0 AS nid,  0.549296 AS "P_0", 0.450704 AS "P_1", 0 AS "D", 0.549296 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.085714 AS "P_0", 0.914286 AS "P_1", 1 AS "D", 0.914286 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_4" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_22" <= 106.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_22" > 106.500000) AND (t."X_27" <= 0.113550)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_22" > 106.500000) AND (t."X_27" > 0.113550)) THEN 4 ELSE NULL END AS "Leaf_4"
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
    SELECT 0 AS nid,  0.521127 AS "P_0", 0.478873 AS "P_1", 0 AS "D", 0.521127 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.973684 AS "P_0", 0.026316 AS "P_1", 0 AS "D", 0.973684 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= 0.067815)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_6" > 0.067815) AND (t."X_27" > 0.122150)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_6" > 0.067815) AND (t."X_27" <= 0.122150) AND (t."X_3" <= 488.400024)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_6" > 0.067815) AND (t."X_27" <= 0.122150) AND (t."X_3" > 488.400024)) THEN 6 ELSE NULL END AS "Leaf_6"
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
    SELECT 0 AS nid,  0.464789 AS "P_0", 0.535211 AS "P_1", 1 AS "D", 0.535211 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.868421 AS "P_0", 0.131579 AS "P_1", 0 AS "D", 0.868421 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 89.709999) AND (t."X_5" > 0.088635)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_2" > 89.709999) AND (t."X_5" <= 0.088635) AND (t."X_29" <= 0.083195)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" > 89.709999) AND (t."X_5" <= 0.088635) AND (t."X_29" > 0.083195)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" <= 89.709999) AND (t."X_3" <= 537.299988)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" <= 89.709999) AND (t."X_3" > 537.299988) AND (t."X_27" <= 0.109165)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" <= 89.709999) AND (t."X_3" > 537.299988) AND (t."X_27" > 0.109165)) THEN 10 ELSE NULL END AS "Leaf_10"
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
    SELECT 0 AS nid,  0.408451 AS "P_0", 0.591549 AS "P_1", 1 AS "D", 0.591549 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.025641 AS "P_0", 0.974359 AS "P_1", 1 AS "D", 0.974359 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 89.709999) AND (t."X_26" <= 0.229700)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_2" > 89.709999) AND (t."X_26" > 0.229700)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_2" <= 89.709999) AND (t."X_27" > 0.156600)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" <= 89.709999) AND (t."X_27" <= 0.156600) AND (t."X_27" <= 0.112950)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" <= 89.709999) AND (t."X_27" <= 0.156600) AND (t."X_27" > 0.112950) AND (t."X_1" <= 24.934999)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" <= 89.709999) AND (t."X_27" <= 0.156600) AND (t."X_27" > 0.112950) AND (t."X_1" > 24.934999)) THEN 10 ELSE NULL END AS "Leaf_10"
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
    SELECT 0 AS nid,  0.394366 AS "P_0", 0.605634 AS "P_1", 1 AS "D", 0.605634 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.068182 AS "P_0", 0.931818 AS "P_1", 1 AS "D", 0.931818 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.925926 AS "P_0", 0.074074 AS "P_1", 0 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.023810 AS "P_0", 0.976190 AS "P_1", 1 AS "D", 0.976190 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 15.855000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_20" > 15.855000) AND (t."X_27" > 0.131700)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_20" > 15.855000) AND (t."X_27" <= 0.131700) AND (t."X_20" <= 18.705000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" > 15.855000) AND (t."X_27" <= 0.131700) AND (t."X_20" > 18.705000)) THEN 6 ELSE NULL END AS "Leaf_6"
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
    SELECT 0 AS nid,  0.521127 AS "P_0", 0.478873 AS "P_1", 0 AS "D", 0.521127 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.880952 AS "P_0", 0.119048 AS "P_1", 0 AS "D", 0.880952 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_22" > 111.000000) AND (t."X_14" <= 0.003934)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_22" > 111.000000) AND (t."X_14" > 0.003934)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_22" <= 111.000000) AND (t."X_27" <= 0.122150)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_22" <= 111.000000) AND (t."X_27" > 0.122150) AND (t."X_27" > 0.139950)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_22" <= 111.000000) AND (t."X_27" > 0.122150) AND (t."X_27" <= 0.139950) AND (t."X_2" <= 99.474998)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_22" <= 111.000000) AND (t."X_27" > 0.122150) AND (t."X_27" <= 0.139950) AND (t."X_2" > 99.474998)) THEN 10 ELSE NULL END AS "Leaf_10"
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
    SELECT 0 AS nid,  0.408451 AS "P_0", 0.591549 AS "P_1", 1 AS "D", 0.591549 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.046512 AS "P_0", 0.953488 AS "P_1", 1 AS "D", 0.953488 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.964286 AS "P_0", 0.035714 AS "P_1", 0 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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