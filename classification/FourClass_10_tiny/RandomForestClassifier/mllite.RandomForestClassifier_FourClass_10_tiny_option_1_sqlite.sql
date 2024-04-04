WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= -1.246140)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > -1.246140) AND (t."X_9" > 1.277021) AND (t."X_9" > 1.919051)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" > -1.246140) AND (t."X_9" > 1.277021) AND (t."X_9" <= 1.919051) AND (t."X_5" <= 0.234798)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" > -1.246140) AND (t."X_9" > 1.277021) AND (t."X_9" <= 1.919051) AND (t."X_5" > 0.234798)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > -1.246140) AND (t."X_9" <= 1.277021) AND (t."X_5" <= 1.667543)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" > -1.246140) AND (t."X_9" <= 1.277021) AND (t."X_5" > 1.667543)) THEN 10 ELSE NULL END AS "Leaf_10"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.375000 AS "P_0", 0.062500 AS "P_1", 0.375000 AS "P_2", 0.187500 AS "P_3", 0 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.545455 AS "P_0", 0.090909 AS "P_1", 0.090909 AS "P_2", 0.272727 AS "P_3", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.857143 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.142857 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.250000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > -0.403340) AND (t."X_7" <= 0.080690)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_7" > -0.403340) AND (t."X_7" > 0.080690) AND (t."X_8" <= -0.318179)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_7" > -0.403340) AND (t."X_7" > 0.080690) AND (t."X_8" > -0.318179)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_7" <= -0.403340) AND (t."X_8" <= -1.957796)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_7" <= -0.403340) AND (t."X_8" > -1.957796)) THEN 8 ELSE NULL END AS "Leaf_8"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.187500 AS "P_1", 0.125000 AS "P_2", 0.437500 AS "P_3", 3 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.125000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.875000 AS "P_3", 3 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.375000 AS "P_0", 0.375000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.600000 AS "P_1", 0.400000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 1.761571)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_5" <= 1.761571) AND (t."X_7" <= 0.080690) AND (t."X_6" > -1.227939)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_5" <= 1.761571) AND (t."X_7" <= 0.080690) AND (t."X_6" <= -1.227939) AND (t."X_6" <= -3.624975)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_5" <= 1.761571) AND (t."X_7" <= 0.080690) AND (t."X_6" <= -1.227939) AND (t."X_6" > -3.624975)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" <= 1.761571) AND (t."X_7" > 0.080690) AND (t."X_8" <= -0.318179)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" <= 1.761571) AND (t."X_7" > 0.080690) AND (t."X_8" > -0.318179) AND (t."X_9" > 0.766776)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" <= 1.761571) AND (t."X_7" > 0.080690) AND (t."X_8" > -0.318179) AND (t."X_9" <= 0.766776) AND (t."X_5" <= 1.189858)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 1.761571) AND (t."X_7" > 0.080690) AND (t."X_8" > -0.318179) AND (t."X_9" <= 0.766776) AND (t."X_5" > 1.189858)) THEN 14 ELSE NULL END AS "Leaf_14"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.250000 AS "P_1", 0.187500 AS "P_2", 0.375000 AS "P_3", 3 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.230769 AS "P_0", 0.307692 AS "P_1", 0.230769 AS "P_2", 0.230769 AS "P_3", 1 AS "D", 0.307692 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.428571 AS "P_0", 0.000000 AS "P_1", 0.285714 AS "P_2", 0.285714 AS "P_3", 0 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.166667 AS "P_2", 0.166667 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_9" > 1.919051)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_9" <= 1.919051) AND (t."X_8" <= 0.563831) AND (t."X_1" > 1.029687)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_9" <= 1.919051) AND (t."X_8" <= 0.563831) AND (t."X_1" <= 1.029687) AND (t."X_1" <= -0.781595)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_9" <= 1.919051) AND (t."X_8" <= 0.563831) AND (t."X_1" <= 1.029687) AND (t."X_1" > -0.781595)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_9" <= 1.919051) AND (t."X_8" > 0.563831) AND (t."X_9" <= 0.472777)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_9" <= 1.919051) AND (t."X_8" > 0.563831) AND (t."X_9" > 0.472777) AND (t."X_9" <= 1.182598)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_9" <= 1.919051) AND (t."X_8" > 0.563831) AND (t."X_9" > 0.472777) AND (t."X_9" > 1.182598)) THEN 12 ELSE NULL END AS "Leaf_12"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.187500 AS "P_1", 0.250000 AS "P_2", 0.312500 AS "P_3", 3 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.307692 AS "P_0", 0.230769 AS "P_1", 0.307692 AS "P_2", 0.153846 AS "P_3", 0 AS "D", 0.307692 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.600000 AS "P_1", 0.000000 AS "P_2", 0.400000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= -2.875515)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_6" > -2.875515) AND (t."X_8" <= -0.999666)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_6" > -2.875515) AND (t."X_8" > -0.999666) AND (t."X_5" > 1.077486)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" > -2.875515) AND (t."X_8" > -0.999666) AND (t."X_5" <= 1.077486) AND (t."X_8" > 0.550071)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_6" > -2.875515) AND (t."X_8" > -0.999666) AND (t."X_5" <= 1.077486) AND (t."X_8" <= 0.550071) AND (t."X_6" <= -0.501927)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" > -2.875515) AND (t."X_8" > -0.999666) AND (t."X_5" <= 1.077486) AND (t."X_8" <= 0.550071) AND (t."X_6" > -0.501927) AND (t."X_9" <= -0.665860)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" > -2.875515) AND (t."X_8" > -0.999666) AND (t."X_5" <= 1.077486) AND (t."X_8" <= 0.550071) AND (t."X_6" > -0.501927) AND (t."X_9" > -0.665860)) THEN 12 ELSE NULL END AS "Leaf_12"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.125000 AS "P_0", 0.187500 AS "P_1", 0.312500 AS "P_2", 0.375000 AS "P_3", 3 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.153846 AS "P_0", 0.230769 AS "P_1", 0.384615 AS "P_2", 0.230769 AS "P_3", 2 AS "D", 0.384615 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.200000 AS "P_0", 0.300000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.250000 AS "P_0", 0.125000 AS "P_1", 0.625000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.285714 AS "P_0", 0.000000 AS "P_1", 0.714286 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 ),
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1", scu."P_2" AS "P_2", scu."P_3" AS "P_3"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_4" AS t
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
   CAST(NULL AS FLOAT) AS "Score_2",
   CAST(NULL AS FLOAT) AS "LogProba_3",
   AVG(t."P_3") AS "Proba_3",
   CAST(NULL AS FLOAT) AS "Score_3"
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
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    MAX( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Max_Score"
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
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
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
     t."Proba_3" AS "Proba_3",
     t."Score_3" AS "Score_3",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3" ) AS argmax_class_idx
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
  arg_max_cte."Score_3" AS "Score_3",
  arg_max_cte."Proba_3" AS "Proba_3",
  CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN LN( arg_max_cte."Proba_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte