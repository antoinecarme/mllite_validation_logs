WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_9" > 0.244298)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_9" <= 0.244298) AND (t."X_9" <= -0.721949)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_9" <= 0.244298) AND (t."X_9" > -0.721949) AND (t."X_5" > -0.493245)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_9" <= 0.244298) AND (t."X_9" > -0.721949) AND (t."X_5" <= -0.493245) AND (t."X_7" <= -0.023673)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_9" <= 0.244298) AND (t."X_9" > -0.721949) AND (t."X_5" <= -0.493245) AND (t."X_7" > -0.023673) AND (t."X_4" <= 1.059410)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_9" <= 0.244298) AND (t."X_9" > -0.721949) AND (t."X_5" <= -0.493245) AND (t."X_7" > -0.023673) AND (t."X_4" > 1.059410)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_5" > 0.860748)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_5" <= 0.860748) AND (t."X_7" > 0.639987)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_5" <= 0.860748) AND (t."X_7" <= 0.639987) AND (t."X_5" > 0.709787)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_5" <= 0.860748) AND (t."X_7" <= 0.639987) AND (t."X_5" <= 0.709787) AND (t."X_9" > -0.415693)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_5" <= 0.860748) AND (t."X_7" <= 0.639987) AND (t."X_5" <= 0.709787) AND (t."X_9" <= -0.415693) AND (t."X_5" <= 0.496798)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_5" <= 0.860748) AND (t."X_7" <= 0.639987) AND (t."X_5" <= 0.709787) AND (t."X_9" <= -0.415693) AND (t."X_5" > 0.496798)) THEN 22 ELSE NULL END AS "Leaf_22"
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
    SELECT 0 AS nid,  0.468750 AS "P_0", 0.531250 AS "P_1", 1 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.820895 AS "P_0", 0.179104 AS "P_1", 0 AS "D", 0.820895 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.081967 AS "P_0", 0.918033 AS "P_1", 1 AS "D", 0.918033 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.733333 AS "P_0", 0.266667 AS "P_1", 0 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.384615 AS "P_0", 0.615385 AS "P_1", 1 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_6", t1."Leaf_7", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 1.129815)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" > 0.317311)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" > 0.919510) AND (t."X_9" <= -1.185652)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" <= 0.317311) AND (t."X_7" > 0.897495)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" <= 0.317311) AND (t."X_7" <= 0.897495) AND (t."X_7" <= 0.391626) AND (t."X_8" <= 0.455929)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" <= 0.317311) AND (t."X_7" <= 0.897495) AND (t."X_7" <= 0.391626) AND (t."X_8" > 0.455929)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" <= 0.317311) AND (t."X_7" <= 0.897495) AND (t."X_7" > 0.391626) AND (t."X_4" <= -0.889181)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" <= 0.317311) AND (t."X_7" <= 0.897495) AND (t."X_7" > 0.391626) AND (t."X_4" > -0.889181)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" > 0.919510) AND (t."X_9" > -1.185652) AND (t."X_4" > 1.090955) AND (t."X_7" > 0.988021)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" > 0.919510) AND (t."X_9" > -1.185652) AND (t."X_4" <= 1.090955) AND (t."X_8" <= -1.092756)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" > 0.919510) AND (t."X_9" > -1.185652) AND (t."X_4" <= 1.090955) AND (t."X_8" > -1.092756)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" > 0.919510) AND (t."X_9" > -1.185652) AND (t."X_4" > 1.090955) AND (t."X_7" <= 0.988021) AND (t."X_9" <= 0.005688)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" > 0.919510) AND (t."X_9" > -1.185652) AND (t."X_4" > 1.090955) AND (t."X_7" <= 0.988021) AND (t."X_9" > 0.005688)) THEN 24 ELSE NULL END AS "Leaf_24"
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
    SELECT 0 AS nid,  0.546875 AS "P_0", 0.453125 AS "P_1", 0 AS "D", 0.546875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.457944 AS "P_0", 0.542056 AS "P_1", 1 AS "D", 0.542056 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.588235 AS "P_0", 0.411765 AS "P_1", 0 AS "D", 0.588235 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.450980 AS "P_0", 0.549020 AS "P_1", 1 AS "D", 0.549020 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.522727 AS "P_0", 0.477273 AS "P_1", 0 AS "D", 0.522727 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.406250 AS "P_0", 0.593750 AS "P_1", 1 AS "D", 0.593750 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_7", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_6" <= -0.175131)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" > -0.745586) AND (t."X_8" <= -0.848257)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" > -0.745586) AND (t."X_8" > -0.848257) AND (t."X_9" > 1.051882)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" > -0.745586) AND (t."X_8" > -0.848257) AND (t."X_9" <= 1.051882) AND (t."X_8" <= -0.178032)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" > -0.745586) AND (t."X_8" > -0.848257) AND (t."X_9" <= 1.051882) AND (t."X_8" > -0.178032) AND (t."X_9" <= 0.098868)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" > -0.745586) AND (t."X_8" > -0.848257) AND (t."X_9" <= 1.051882) AND (t."X_8" > -0.178032) AND (t."X_9" > 0.098868)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" <= -0.745586) AND (t."X_7" <= -1.086283)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" <= -0.745586) AND (t."X_7" > -1.086283) AND (t."X_8" <= -1.793775)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" <= -0.745586) AND (t."X_7" > -1.086283) AND (t."X_8" > -1.793775)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_6" > -0.175131) AND (t."X_5" > 0.543575)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_6" > -0.175131) AND (t."X_5" <= 0.543575) AND (t."X_5" <= 0.443379)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_6" > -0.175131) AND (t."X_5" <= 0.543575) AND (t."X_5" > 0.443379)) THEN 22 ELSE NULL END AS "Leaf_22"
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
    SELECT 0 AS nid,  0.468750 AS "P_0", 0.531250 AS "P_1", 1 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.830769 AS "P_0", 0.169231 AS "P_1", 0 AS "D", 0.830769 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.095238 AS "P_0", 0.904762 AS "P_1", 1 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.065574 AS "P_0", 0.934426 AS "P_1", 1 AS "D", 0.934426 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.689655 AS "P_0", 0.310345 AS "P_1", 0 AS "D", 0.689655 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.970588 AS "P_0", 0.029412 AS "P_1", 0 AS "D", 0.970588 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.235294 AS "P_0", 0.764706 AS "P_1", 1 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" > 0.660964) AND (t."X_0" <= -0.507288) AND (t."X_8" <= -1.319975)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_1" > 0.660964) AND (t."X_0" > -0.507288) AND (t."X_9" <= 1.196363)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_1" > 0.660964) AND (t."X_0" <= -0.507288) AND (t."X_8" > -1.319975) AND (t."X_9" <= 0.126691)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_1" > 0.660964) AND (t."X_0" <= -0.507288) AND (t."X_8" > -1.319975) AND (t."X_9" > 0.126691)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" <= -1.136104) AND (t."X_8" <= -1.418520)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" <= -1.136104) AND (t."X_8" > -1.418520)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" > -0.180938) AND (t."X_1" > -0.315372) AND (t."X_0" <= 1.044549)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" > -0.180938) AND (t."X_1" > -0.315372) AND (t."X_0" > 1.044549)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" <= -0.180938) AND (t."X_8" <= -0.043693)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" <= -0.180938) AND (t."X_8" > -0.043693) AND (t."X_8" <= 1.092548)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" <= -0.180938) AND (t."X_8" > -0.043693) AND (t."X_8" > 1.092548)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" > -0.180938) AND (t."X_1" <= -0.315372) AND (t."X_8" <= -0.407063)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" > -0.180938) AND (t."X_1" <= -0.315372) AND (t."X_8" > -0.407063)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" > -0.059520) AND (t."X_9" > 0.290221) AND (t."X_9" <= 0.758159)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" > -0.059520) AND (t."X_9" > 0.290221) AND (t."X_9" > 0.758159)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" > -0.059520) AND (t."X_9" <= 0.290221) AND (t."X_9" > -0.893198)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" > -0.059520) AND (t."X_9" <= 0.290221) AND (t."X_9" <= -0.893198) AND (t."X_9" <= -1.220687)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" > -0.059520) AND (t."X_9" <= 0.290221) AND (t."X_9" <= -0.893198) AND (t."X_9" > -1.220687)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_1" > 0.660964) AND (t."X_0" > -0.507288) AND (t."X_9" > 1.196363) AND (t."X_9" <= 1.407124)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_1" > 0.660964) AND (t."X_0" > -0.507288) AND (t."X_9" > 1.196363) AND (t."X_9" > 1.407124)) THEN 38 ELSE NULL END AS "Leaf_38"
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
    SELECT 0 AS nid,  0.429688 AS "P_0", 0.570312 AS "P_1", 1 AS "D", 0.570312 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.360825 AS "P_0", 0.639175 AS "P_1", 1 AS "D", 0.639175 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.645161 AS "P_0", 0.354839 AS "P_1", 0 AS "D", 0.645161 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.894737 AS "P_0", 0.105263 AS "P_1", 0 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.310345 AS "P_0", 0.689655 AS "P_1", 1 AS "D", 0.689655 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.442308 AS "P_0", 0.557692 AS "P_1", 1 AS "D", 0.557692 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.114286 AS "P_0", 0.885714 AS "P_1", 1 AS "D", 0.885714 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.764706 AS "P_0", 0.235294 AS "P_1", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.115385 AS "P_0", 0.884615 AS "P_1", 1 AS "D", 0.884615 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.037037 AS "P_0", 0.962963 AS "P_1", 1 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" <= -0.497300)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" > -0.497300) AND (t."X_9" <= -1.426107) AND (t."X_2" <= 0.922068)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" > -0.497300) AND (t."X_9" <= -1.426107) AND (t."X_2" > 0.922068)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" <= -0.490513) AND (t."X_7" <= 0.152059)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" <= -0.490513) AND (t."X_7" > 0.152059) AND (t."X_6" > -0.035564)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" <= -0.490513) AND (t."X_7" > 0.152059) AND (t."X_6" <= -0.035564) AND (t."X_7" <= 0.325849)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= -0.490513) AND (t."X_7" > 0.152059) AND (t."X_6" <= -0.035564) AND (t."X_7" > 0.325849) AND (t."X_7" <= 0.828977)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" <= -0.490513) AND (t."X_7" > 0.152059) AND (t."X_6" <= -0.035564) AND (t."X_7" > 0.325849) AND (t."X_7" > 0.828977)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" > -0.497300) AND (t."X_9" > -1.426107) AND (t."X_8" <= -1.043983) AND (t."X_2" <= 0.359133)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" > -0.497300) AND (t."X_9" > -1.426107) AND (t."X_8" <= -1.043983) AND (t."X_2" > 0.359133)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" > -0.497300) AND (t."X_9" > -1.426107) AND (t."X_8" > -1.043983) AND (t."X_8" > 1.522624)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" > -0.497300) AND (t."X_9" > -1.426107) AND (t."X_8" > -1.043983) AND (t."X_8" <= 1.522624) AND (t."X_5" <= -0.242759)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" > -0.497300) AND (t."X_9" > -1.426107) AND (t."X_8" > -1.043983) AND (t."X_8" <= 1.522624) AND (t."X_5" > -0.242759)) THEN 24 ELSE NULL END AS "Leaf_24"
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
    SELECT 0 AS nid,  0.421875 AS "P_0", 0.578125 AS "P_1", 1 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.893617 AS "P_0", 0.106383 AS "P_1", 0 AS "D", 0.893617 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.148148 AS "P_0", 0.851852 AS "P_1", 1 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.115385 AS "P_0", 0.884615 AS "P_1", 1 AS "D", 0.884615 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.068493 AS "P_0", 0.931507 AS "P_1", 1 AS "D", 0.931507 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.772727 AS "P_0", 0.227273 AS "P_1", 0 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.044118 AS "P_0", 0.955882 AS "P_1", 1 AS "D", 0.955882 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.031250 AS "P_0", 0.968750 AS "P_1", 1 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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