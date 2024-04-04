WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_20", t1."Leaf_21", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_8" <= 6.500000) AND (t."X_7" <= 4.500000) AND (t."X_7" <= 2.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_8" <= 6.500000) AND (t."X_7" <= 4.500000) AND (t."X_7" > 2.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_8" <= 6.500000) AND (t."X_7" > 4.500000) AND (t."X_4" > 5.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_8" <= 6.500000) AND (t."X_7" > 4.500000) AND (t."X_4" <= 5.500000) AND (t."X_7" <= 7.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_8" <= 6.500000) AND (t."X_7" > 4.500000) AND (t."X_4" <= 5.500000) AND (t."X_7" > 7.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" > 7.500000) AND (t."X_9" <= 1.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" > 7.500000) AND (t."X_9" > 1.500000) AND (t."X_5" > 3.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" <= 7.500000) AND (t."X_2" <= 1.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" <= 7.500000) AND (t."X_2" > 1.500000) AND (t."X_4" > 7.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" <= 7.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_8" <= 0.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" <= 7.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_8" > 0.500000) AND (t."X_5" <= 2.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" <= 7.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_8" > 0.500000) AND (t."X_5" > 2.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" > 7.500000) AND (t."X_9" > 1.500000) AND (t."X_5" <= 3.500000) AND (t."X_9" > 7.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" > 7.500000) AND (t."X_9" > 1.500000) AND (t."X_5" <= 3.500000) AND (t."X_9" <= 7.500000) AND (t."X_8" <= 3.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" > 7.500000) AND (t."X_9" > 1.500000) AND (t."X_5" <= 3.500000) AND (t."X_9" <= 7.500000) AND (t."X_8" > 3.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_8" > 6.500000) AND (t."X_5" <= 6.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_8" > 6.500000) AND (t."X_5" > 6.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" > 7.500000) AND (t."X_4" > 7.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" > 7.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" > 6.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" > 7.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 6.500000) AND (t."X_9" <= 2.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" > 7.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 6.500000) AND (t."X_9" > 2.500000)) THEN 40 ELSE NULL END AS "Leaf_40"
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
    SELECT 0 AS nid,  0.536133 AS "P_0", 0.463867 AS "P_1", 0 AS "D", 0.536133 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.806299 AS "P_0", 0.193701 AS "P_1", 0 AS "D", 0.806299 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.095116 AS "P_0", 0.904884 AS "P_1", 1 AS "D", 0.904884 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.163366 AS "P_0", 0.836634 AS "P_1", 1 AS "D", 0.836634 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.021390 AS "P_0", 0.978610 AS "P_1", 1 AS "D", 0.978610 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.235294 AS "P_0", 0.764706 AS "P_1", 1 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.015152 AS "P_0", 0.984848 AS "P_1", 1 AS "D", 0.984848 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.323529 AS "P_0", 0.676471 AS "P_1", 1 AS "D", 0.676471 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.147059 AS "P_0", 0.852941 AS "P_1", 1 AS "D", 0.852941 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.243243 AS "P_0", 0.756757 AS "P_1", 1 AS "D", 0.756757 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.419355 AS "P_0", 0.580645 AS "P_1", 1 AS "D", 0.580645 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.195122 AS "P_0", 0.804878 AS "P_1", 1 AS "D", 0.804878 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.074074 AS "P_0", 0.925926 AS "P_1", 1 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.095238 AS "P_0", 0.904762 AS "P_1", 1 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.827038 AS "P_0", 0.172962 AS "P_1", 0 AS "D", 0.827038 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.672727 AS "P_0", 0.327273 AS "P_1", 0 AS "D", 0.672727 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.864865 AS "P_0", 0.135135 AS "P_1", 0 AS "D", 0.864865 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.277778 AS "P_0", 0.722222 AS "P_1", 1 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.750716 AS "P_0", 0.249284 AS "P_1", 0 AS "D", 0.750716 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.640496 AS "P_0", 0.359504 AS "P_1", 0 AS "D", 0.640496 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.903226 AS "P_0", 0.096774 AS "P_1", 0 AS "D", 0.903226 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.601896 AS "P_0", 0.398104 AS "P_1", 0 AS "D", 0.601896 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.765625 AS "P_0", 0.234375 AS "P_1", 0 AS "D", 0.765625 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.530612 AS "P_0", 0.469388 AS "P_1", 0 AS "D", 0.530612 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.904762 AS "P_0", 0.095238 AS "P_1", 0 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.033333 AS "P_0", 0.966667 AS "P_1", 1 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.032258 AS "P_0", 0.967742 AS "P_1", 1 AS "D", 0.967742 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.009709 AS "P_0", 0.990291 AS "P_1", 1 AS "D", 0.990291 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.031250 AS "P_0", 0.968750 AS "P_1", 1 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_7", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_21", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 8.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" > 4.500000) AND (t."X_9" <= 3.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_4" > 2.500000) AND (t."X_8" <= 1.500000) AND (t."X_7" <= 5.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_4" > 2.500000) AND (t."X_8" <= 1.500000) AND (t."X_7" > 5.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_4" > 2.500000) AND (t."X_8" > 1.500000) AND (t."X_0" <= 0.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_4" > 2.500000) AND (t."X_8" > 1.500000) AND (t."X_0" > 0.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" > 5.500000) AND (t."X_9" <= 4.500000) AND (t."X_0" > 5.500000) AND (t."X_0" <= 7.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" > 5.500000) AND (t."X_9" <= 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_7" <= 2.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" > 5.500000) AND (t."X_9" <= 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_7" > 2.500000) AND (t."X_9" <= 2.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" > 5.500000) AND (t."X_9" <= 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_7" > 2.500000) AND (t."X_9" > 2.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" > 5.500000) AND (t."X_9" > 4.500000) AND (t."X_7" <= 2.500000) AND (t."X_0" <= 4.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" > 5.500000) AND (t."X_9" > 4.500000) AND (t."X_7" <= 2.500000) AND (t."X_0" > 4.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_4" <= 2.500000) AND (t."X_8" > 6.500000) AND (t."X_7" <= 3.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_4" <= 2.500000) AND (t."X_8" > 6.500000) AND (t."X_7" > 3.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_4" <= 2.500000) AND (t."X_8" <= 6.500000) AND (t."X_9" <= 7.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000) AND (t."X_4" <= 2.500000) AND (t."X_8" <= 6.500000) AND (t."X_9" > 7.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" > 5.500000) AND (t."X_9" <= 4.500000) AND (t."X_0" > 5.500000) AND (t."X_0" > 7.500000) AND (t."X_8" <= 4.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" > 5.500000) AND (t."X_9" <= 4.500000) AND (t."X_0" > 5.500000) AND (t."X_0" > 7.500000) AND (t."X_8" > 4.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" > 5.500000) AND (t."X_9" > 4.500000) AND (t."X_7" > 2.500000) AND (t."X_7" <= 4.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" > 5.500000) AND (t."X_9" > 4.500000) AND (t."X_7" > 2.500000) AND (t."X_7" > 4.500000) AND (t."X_0" <= 4.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" > 5.500000) AND (t."X_9" > 4.500000) AND (t."X_7" > 2.500000) AND (t."X_7" > 4.500000) AND (t."X_0" > 4.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" > 4.500000) AND (t."X_9" > 3.500000) AND (t."X_9" <= 6.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_4" <= 8.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" > 4.500000) AND (t."X_9" > 3.500000) AND (t."X_9" > 6.500000)) THEN 44 ELSE NULL END AS "Leaf_44"
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
    SELECT 0 AS nid,  0.500977 AS "P_0", 0.499023 AS "P_1", 0 AS "D", 0.500977 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.471014 AS "P_0", 0.528986 AS "P_1", 1 AS "D", 0.528986 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.579299 AS "P_0", 0.420701 AS "P_1", 0 AS "D", 0.579299 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.294278 AS "P_0", 0.705722 AS "P_1", 1 AS "D", 0.705722 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.525591 AS "P_0", 0.474409 AS "P_1", 0 AS "D", 0.525591 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.879121 AS "P_0", 0.120879 AS "P_1", 0 AS "D", 0.879121 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.980392 AS "P_0", 0.019608 AS "P_1", 0 AS "D", 0.980392 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.463722 AS "P_0", 0.536278 AS "P_1", 1 AS "D", 0.536278 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.628272 AS "P_0", 0.371728 AS "P_1", 0 AS "D", 0.628272 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.809524 AS "P_0", 0.190476 AS "P_1", 0 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.577181 AS "P_0", 0.422819 AS "P_1", 0 AS "D", 0.577181 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.681818 AS "P_0", 0.318182 AS "P_1", 0 AS "D", 0.681818 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.617188 AS "P_0", 0.382812 AS "P_1", 0 AS "D", 0.617188 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.357143 AS "P_0", 0.642857 AS "P_1", 1 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.459459 AS "P_0", 0.540541 AS "P_1", 1 AS "D", 0.540541 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.223529 AS "P_0", 0.776471 AS "P_1", 1 AS "D", 0.776471 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.150000 AS "P_0", 0.850000 AS "P_1", 1 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.288889 AS "P_0", 0.711111 AS "P_1", 1 AS "D", 0.711111 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.361111 AS "P_0", 0.638889 AS "P_1", 1 AS "D", 0.638889 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.506667 AS "P_0", 0.493333 AS "P_1", 0 AS "D", 0.506667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.384615 AS "P_0", 0.615385 AS "P_1", 1 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.638889 AS "P_0", 0.361111 AS "P_1", 0 AS "D", 0.638889 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.298246 AS "P_0", 0.701754 AS "P_1", 1 AS "D", 0.701754 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.184211 AS "P_0", 0.815789 AS "P_1", 1 AS "D", 0.815789 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.517241 AS "P_0", 0.482759 AS "P_1", 0 AS "D", 0.517241 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.497674 AS "P_0", 0.502326 AS "P_1", 1 AS "D", 0.502326 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.392157 AS "P_0", 0.607843 AS "P_1", 1 AS "D", 0.607843 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.492063 AS "P_0", 0.507937 AS "P_1", 1 AS "D", 0.507937 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.538012 AS "P_0", 0.461988 AS "P_1", 0 AS "D", 0.538012 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.340909 AS "P_0", 0.659091 AS "P_1", 1 AS "D", 0.659091 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.238095 AS "P_0", 0.761905 AS "P_1", 1 AS "D", 0.761905 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.212500 AS "P_0", 0.787500 AS "P_1", 1 AS "D", 0.787500 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.282609 AS "P_0", 0.717391 AS "P_1", 1 AS "D", 0.717391 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.954545 AS "P_0", 0.045455 AS "P_1", 0 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_6" <= 2.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_6" > 2.500000) AND (t."X_8" <= 2.500000) AND (t."X_9" <= 4.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_6" > 2.500000) AND (t."X_8" <= 2.500000) AND (t."X_9" > 4.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_6" > 2.500000) AND (t."X_8" > 2.500000) AND (t."X_8" <= 4.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_6" > 2.500000) AND (t."X_8" > 2.500000) AND (t."X_8" > 4.500000) AND (t."X_9" <= 5.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_6" > 2.500000) AND (t."X_8" > 2.500000) AND (t."X_8" > 4.500000) AND (t."X_9" > 5.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_5" > 1.500000) AND (t."X_6" <= 1.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_5" > 1.500000) AND (t."X_6" > 1.500000) AND (t."X_9" > 4.500000) AND (t."X_8" <= 2.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_5" > 1.500000) AND (t."X_6" > 1.500000) AND (t."X_9" > 4.500000) AND (t."X_8" > 2.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" <= 4.500000) AND (t."X_9" <= 5.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" <= 4.500000) AND (t."X_9" > 5.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 4.500000) AND (t."X_5" <= 6.500000) AND (t."X_6" <= 6.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 4.500000) AND (t."X_5" <= 6.500000) AND (t."X_6" > 6.500000) AND (t."X_0" <= 5.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 4.500000) AND (t."X_5" <= 6.500000) AND (t."X_6" > 6.500000) AND (t."X_0" > 5.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_5" <= 1.500000) AND (t."X_8" <= 1.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_5" > 1.500000) AND (t."X_6" > 1.500000) AND (t."X_9" <= 4.500000) AND (t."X_9" <= 1.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_5" > 1.500000) AND (t."X_6" > 1.500000) AND (t."X_9" <= 4.500000) AND (t."X_9" > 1.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_5" <= 1.500000) AND (t."X_8" > 1.500000) AND (t."X_7" <= 1.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 4.500000) AND (t."X_5" > 6.500000) AND (t."X_8" <= 3.500000) AND (t."X_9" <= 3.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 4.500000) AND (t."X_5" > 6.500000) AND (t."X_8" <= 3.500000) AND (t."X_9" > 3.500000) AND (t."X_0" <= 5.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 4.500000) AND (t."X_5" > 6.500000) AND (t."X_8" <= 3.500000) AND (t."X_9" > 3.500000) AND (t."X_0" > 5.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 4.500000) AND (t."X_5" > 6.500000) AND (t."X_8" > 3.500000) AND (t."X_6" > 6.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 4.500000) AND (t."X_5" > 6.500000) AND (t."X_8" > 3.500000) AND (t."X_6" <= 6.500000) AND (t."X_9" <= 3.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 4.500000) AND (t."X_5" > 6.500000) AND (t."X_8" > 3.500000) AND (t."X_6" <= 6.500000) AND (t."X_9" > 3.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_5" <= 1.500000) AND (t."X_8" > 1.500000) AND (t."X_7" > 1.500000) AND (t."X_0" <= 3.500000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_5" <= 1.500000) AND (t."X_8" > 1.500000) AND (t."X_7" > 1.500000) AND (t."X_0" > 3.500000)) THEN 50 ELSE NULL END AS "Leaf_50"
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
    SELECT 0 AS nid,  0.498047 AS "P_0", 0.501953 AS "P_1", 1 AS "D", 0.501953 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.797997 AS "P_0", 0.202003 AS "P_1", 0 AS "D", 0.797997 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.075294 AS "P_0", 0.924706 AS "P_1", 1 AS "D", 0.924706 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.898515 AS "P_0", 0.101485 AS "P_1", 0 AS "D", 0.898515 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.589744 AS "P_0", 0.410256 AS "P_1", 0 AS "D", 0.589744 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.925926 AS "P_0", 0.074074 AS "P_1", 0 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.535714 AS "P_0", 0.464286 AS "P_1", 0 AS "D", 0.535714 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.484375 AS "P_0", 0.515625 AS "P_1", 1 AS "D", 0.515625 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.850000 AS "P_0", 0.150000 AS "P_1", 0 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.550000 AS "P_0", 0.450000 AS "P_1", 0 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.560000 AS "P_0", 0.440000 AS "P_1", 0 AS "D", 0.560000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.448276 AS "P_0", 0.551724 AS "P_1", 1 AS "D", 0.551724 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.969697 AS "P_0", 0.030303 AS "P_1", 0 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.830097 AS "P_0", 0.169903 AS "P_1", 0 AS "D", 0.830097 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.772727 AS "P_0", 0.227273 AS "P_1", 0 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.897059 AS "P_0", 0.102941 AS "P_1", 0 AS "D", 0.897059 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.674419 AS "P_0", 0.325581 AS "P_1", 0 AS "D", 0.674419 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.451613 AS "P_0", 0.548387 AS "P_1", 1 AS "D", 0.548387 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.224490 AS "P_0", 0.775510 AS "P_1", 1 AS "D", 0.775510 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.055851 AS "P_0", 0.944149 AS "P_1", 1 AS "D", 0.944149 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.160000 AS "P_0", 0.840000 AS "P_1", 1 AS "D", 0.840000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.291667 AS "P_0", 0.708333 AS "P_1", 1 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.151163 AS "P_0", 0.848837 AS "P_1", 1 AS "D", 0.848837 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.027586 AS "P_0", 0.972414 AS "P_1", 1 AS "D", 0.972414 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.089286 AS "P_0", 0.910714 AS "P_1", 1 AS "D", 0.910714 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.041667 AS "P_0", 0.958333 AS "P_1", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.869565 AS "P_0", 0.130435 AS "P_1", 0 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.982857 AS "P_0", 0.017143 AS "P_1", 0 AS "D", 0.982857 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.862069 AS "P_0", 0.137931 AS "P_1", 0 AS "D", 0.862069 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.925926 AS "P_0", 0.074074 AS "P_1", 0 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.993243 AS "P_0", 0.006757 AS "P_1", 0 AS "D", 0.993243 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.057692 AS "P_0", 0.942308 AS "P_1", 1 AS "D", 0.942308 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.010753 AS "P_0", 0.989247 AS "P_1", 1 AS "D", 0.989247 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.131579 AS "P_0", 0.868421 AS "P_1", 1 AS "D", 0.868421 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.015152 AS "P_0", 0.984848 AS "P_1", 1 AS "D", 0.984848 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.038462 AS "P_0", 0.961538 AS "P_1", 1 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.086957 AS "P_0", 0.913043 AS "P_1", 1 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.983051 AS "P_0", 0.016949 AS "P_1", 0 AS "D", 0.983051 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_13", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_1" > 3.500000) AND (t."X_1" > 7.500000) AND (t."X_0" <= 8.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_1" > 3.500000) AND (t."X_1" > 7.500000) AND (t."X_0" > 8.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_1" > 3.500000) AND (t."X_1" <= 7.500000) AND (t."X_9" <= 4.500000) AND (t."X_7" <= 2.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_1" > 3.500000) AND (t."X_1" <= 7.500000) AND (t."X_9" > 4.500000) AND (t."X_1" <= 4.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_1" <= 3.500000) AND (t."X_8" > 4.500000) AND (t."X_9" > 6.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_1" <= 3.500000) AND (t."X_8" > 4.500000) AND (t."X_9" <= 6.500000) AND (t."X_7" <= 3.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_1" <= 3.500000) AND (t."X_8" > 4.500000) AND (t."X_9" <= 6.500000) AND (t."X_7" > 3.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_1" <= 3.500000) AND (t."X_8" <= 4.500000) AND (t."X_7" <= 4.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_1" <= 3.500000) AND (t."X_8" <= 4.500000) AND (t."X_7" > 4.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_1" > 3.500000) AND (t."X_1" <= 7.500000) AND (t."X_9" > 4.500000) AND (t."X_1" > 4.500000) AND (t."X_9" <= 7.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_1" > 3.500000) AND (t."X_1" <= 7.500000) AND (t."X_9" > 4.500000) AND (t."X_1" > 4.500000) AND (t."X_9" > 7.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_9" <= 7.500000) AND (t."X_9" > 6.500000) AND (t."X_2" <= 2.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_9" <= 7.500000) AND (t."X_9" > 6.500000) AND (t."X_2" > 2.500000) AND (t."X_2" <= 5.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_9" <= 7.500000) AND (t."X_9" > 6.500000) AND (t."X_2" > 2.500000) AND (t."X_2" > 5.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_9" > 7.500000) AND (t."X_8" <= 1.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_9" > 7.500000) AND (t."X_8" > 1.500000) AND (t."X_2" > 7.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_9" > 7.500000) AND (t."X_8" > 1.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" <= 1.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_9" > 7.500000) AND (t."X_8" > 1.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 4.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_9" > 7.500000) AND (t."X_8" > 1.500000) AND (t."X_2" <= 7.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 4.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_9" <= 7.500000) AND (t."X_9" <= 6.500000) AND (t."X_1" > 4.500000) AND (t."X_2" > 2.500000) AND (t."X_8" <= 7.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_9" <= 7.500000) AND (t."X_9" <= 6.500000) AND (t."X_1" > 4.500000) AND (t."X_2" > 2.500000) AND (t."X_8" > 7.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_9" <= 7.500000) AND (t."X_9" <= 6.500000) AND (t."X_1" <= 4.500000) AND (t."X_2" > 2.500000) AND (t."X_8" <= 2.500000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_9" <= 7.500000) AND (t."X_9" <= 6.500000) AND (t."X_1" <= 4.500000) AND (t."X_2" > 2.500000) AND (t."X_8" > 2.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_9" <= 7.500000) AND (t."X_9" <= 6.500000) AND (t."X_1" <= 4.500000) AND (t."X_2" <= 2.500000) AND (t."X_0" <= 2.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_9" <= 7.500000) AND (t."X_9" <= 6.500000) AND (t."X_1" <= 4.500000) AND (t."X_2" <= 2.500000) AND (t."X_0" > 2.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_9" <= 7.500000) AND (t."X_9" <= 6.500000) AND (t."X_1" > 4.500000) AND (t."X_2" <= 2.500000) AND (t."X_2" <= 1.500000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_9" <= 7.500000) AND (t."X_9" <= 6.500000) AND (t."X_1" > 4.500000) AND (t."X_2" <= 2.500000) AND (t."X_2" > 1.500000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_1" > 3.500000) AND (t."X_1" <= 7.500000) AND (t."X_9" <= 4.500000) AND (t."X_7" > 2.500000) AND (t."X_9" <= 2.500000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_1" > 3.500000) AND (t."X_1" <= 7.500000) AND (t."X_9" <= 4.500000) AND (t."X_7" > 2.500000) AND (t."X_9" > 2.500000)) THEN 56 ELSE NULL END AS "Leaf_56"
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
    SELECT 0 AS nid,  0.508789 AS "P_0", 0.491211 AS "P_1", 0 AS "D", 0.508789 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.491156 AS "P_0", 0.508844 AS "P_1", 1 AS "D", 0.508844 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.553633 AS "P_0", 0.446367 AS "P_1", 0 AS "D", 0.553633 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.654545 AS "P_0", 0.345455 AS "P_1", 0 AS "D", 0.654545 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.491620 AS "P_0", 0.508380 AS "P_1", 1 AS "D", 0.508380 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.426357 AS "P_0", 0.573643 AS "P_1", 1 AS "D", 0.573643 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.660000 AS "P_0", 0.340000 AS "P_1", 0 AS "D", 0.660000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.566667 AS "P_0", 0.433333 AS "P_1", 0 AS "D", 0.566667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.328125 AS "P_0", 0.671875 AS "P_1", 1 AS "D", 0.671875 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.523077 AS "P_0", 0.476923 AS "P_1", 0 AS "D", 0.523077 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.136364 AS "P_0", 0.863636 AS "P_1", 1 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.723077 AS "P_0", 0.276923 AS "P_1", 0 AS "D", 0.723077 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.613636 AS "P_0", 0.386364 AS "P_1", 0 AS "D", 0.613636 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.772727 AS "P_0", 0.227273 AS "P_1", 0 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.458333 AS "P_0", 0.541667 AS "P_1", 1 AS "D", 0.541667 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.513468 AS "P_0", 0.486532 AS "P_1", 0 AS "D", 0.513468 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.397163 AS "P_0", 0.602837 AS "P_1", 1 AS "D", 0.602837 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.487524 AS "P_0", 0.512476 AS "P_1", 1 AS "D", 0.512476 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.698630 AS "P_0", 0.301370 AS "P_1", 0 AS "D", 0.698630 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.913043 AS "P_0", 0.086957 AS "P_1", 0 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.680000 AS "P_0", 0.320000 AS "P_1", 0 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.520000 AS "P_0", 0.480000 AS "P_1", 0 AS "D", 0.520000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.515152 AS "P_0", 0.484848 AS "P_1", 0 AS "D", 0.515152 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.361111 AS "P_0", 0.638889 AS "P_1", 1 AS "D", 0.638889 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.321429 AS "P_0", 0.678571 AS "P_1", 1 AS "D", 0.678571 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.608696 AS "P_0", 0.391304 AS "P_1", 0 AS "D", 0.608696 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.460432 AS "P_0", 0.539568 AS "P_1", 1 AS "D", 0.539568 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.518519 AS "P_0", 0.481481 AS "P_1", 0 AS "D", 0.518519 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.344828 AS "P_0", 0.655172 AS "P_1", 1 AS "D", 0.655172 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.861111 AS "P_0", 0.138889 AS "P_1", 0 AS "D", 0.861111 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.320388 AS "P_0", 0.679612 AS "P_1", 1 AS "D", 0.679612 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.404255 AS "P_0", 0.595745 AS "P_1", 1 AS "D", 0.595745 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.465517 AS "P_0", 0.534483 AS "P_1", 1 AS "D", 0.534483 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.263514 AS "P_0", 0.736486 AS "P_1", 1 AS "D", 0.736486 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.965517 AS "P_0", 0.034483 AS "P_1", 0 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.790698 AS "P_0", 0.209302 AS "P_1", 0 AS "D", 0.790698 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.450000 AS "P_0", 0.550000 AS "P_1", 1 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.409091 AS "P_0", 0.590909 AS "P_1", 1 AS "D", 0.590909 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" <= 0.500000) AND (t."X_8" <= 3.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" <= 0.500000) AND (t."X_8" > 3.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" > 0.500000) AND (t."X_6" > 2.500000) AND (t."X_6" > 6.500000) AND (t."X_0" <= 4.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" > 0.500000) AND (t."X_6" > 2.500000) AND (t."X_6" > 6.500000) AND (t."X_0" > 4.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" > 0.500000) AND (t."X_6" > 2.500000) AND (t."X_6" <= 6.500000) AND (t."X_5" > 2.500000) AND (t."X_2" <= 2.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" > 0.500000) AND (t."X_6" > 2.500000) AND (t."X_6" <= 6.500000) AND (t."X_5" > 2.500000) AND (t."X_2" > 2.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_9" <= 1.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_9" > 1.500000) AND (t."X_8" > 2.500000) AND (t."X_9" <= 4.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_9" > 1.500000) AND (t."X_8" <= 2.500000) AND (t."X_0" <= 4.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_9" > 1.500000) AND (t."X_8" <= 2.500000) AND (t."X_0" > 4.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" > 0.500000) AND (t."X_6" > 2.500000) AND (t."X_6" <= 6.500000) AND (t."X_5" <= 2.500000) AND (t."X_8" <= 3.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" > 0.500000) AND (t."X_6" > 2.500000) AND (t."X_6" <= 6.500000) AND (t."X_5" <= 2.500000) AND (t."X_8" > 3.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_9" > 1.500000) AND (t."X_8" > 2.500000) AND (t."X_9" > 4.500000) AND (t."X_0" <= 3.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_9" > 1.500000) AND (t."X_8" > 2.500000) AND (t."X_9" > 4.500000) AND (t."X_0" > 3.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" > 0.500000) AND (t."X_6" <= 2.500000) AND (t."X_9" > 8.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" > 0.500000) AND (t."X_6" <= 2.500000) AND (t."X_9" <= 8.500000) AND (t."X_9" > 4.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" > 0.500000) AND (t."X_6" <= 2.500000) AND (t."X_9" <= 8.500000) AND (t."X_9" <= 4.500000) AND (t."X_2" <= 1.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_7" > 0.500000) AND (t."X_6" <= 2.500000) AND (t."X_9" <= 8.500000) AND (t."X_9" <= 4.500000) AND (t."X_2" > 1.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" > 7.500000) AND (t."X_0" > 5.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" > 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_8" <= 4.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" > 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_8" > 4.500000) AND (t."X_0" <= 3.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_5" > 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_8" > 4.500000) AND (t."X_0" > 3.500000)) THEN 42 ELSE NULL END AS "Leaf_42"
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
    SELECT 0 AS nid,  0.534180 AS "P_0", 0.465820 AS "P_1", 0 AS "D", 0.534180 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.825674 AS "P_0", 0.174326 AS "P_1", 0 AS "D", 0.825674 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.066158 AS "P_0", 0.933842 AS "P_1", 1 AS "D", 0.933842 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.585366 AS "P_0", 0.414634 AS "P_1", 0 AS "D", 0.585366 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.842373 AS "P_0", 0.157627 AS "P_1", 0 AS "D", 0.842373 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.809524 AS "P_0", 0.190476 AS "P_1", 0 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.350000 AS "P_0", 0.650000 AS "P_1", 1 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.967638 AS "P_0", 0.032362 AS "P_1", 0 AS "D", 0.967638 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.704626 AS "P_0", 0.295374 AS "P_1", 0 AS "D", 0.704626 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.757322 AS "P_0", 0.242678 AS "P_1", 0 AS "D", 0.757322 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.404762 AS "P_0", 0.595238 AS "P_1", 1 AS "D", 0.595238 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.660377 AS "P_0", 0.339623 AS "P_1", 0 AS "D", 0.660377 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.629630 AS "P_0", 0.370370 AS "P_1", 0 AS "D", 0.629630 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.129213 AS "P_0", 0.870786 AS "P_1", 1 AS "D", 0.870786 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.013953 AS "P_0", 0.986046 AS "P_1", 1 AS "D", 0.986046 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.155405 AS "P_0", 0.844595 AS "P_1", 1 AS "D", 0.844595 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.110000 AS "P_0", 0.890000 AS "P_1", 1 AS "D", 0.890000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.242424 AS "P_0", 0.757576 AS "P_1", 1 AS "D", 0.757576 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.044776 AS "P_0", 0.955224 AS "P_1", 1 AS "D", 0.955224 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.304348 AS "P_0", 0.695652 AS "P_1", 1 AS "D", 0.695652 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.981132 AS "P_0", 0.018868 AS "P_1", 0 AS "D", 0.981132 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.081081 AS "P_0", 0.918919 AS "P_1", 1 AS "D", 0.918919 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.975694 AS "P_0", 0.024306 AS "P_1", 0 AS "D", 0.975694 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.957055 AS "P_0", 0.042945 AS "P_1", 0 AS "D", 0.957055 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.990385 AS "P_0", 0.009615 AS "P_1", 0 AS "D", 0.990385 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.898305 AS "P_0", 0.101695 AS "P_1", 0 AS "D", 0.898305 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.024793 AS "P_0", 0.975207 AS "P_1", 1 AS "D", 0.975207 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.042857 AS "P_0", 0.957143 AS "P_1", 1 AS "D", 0.957143 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
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