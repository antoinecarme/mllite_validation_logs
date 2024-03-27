WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" > 1.500000) AND (t."X_2" <= 117876.000000) AND (t."X_0" > 1.500000) AND (t."X_2" > 97890.000000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_12" > 1.500000) AND (t."X_2" > 117876.000000) AND (t."X_2" <= 126320.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_12" > 1.500000) AND (t."X_2" > 117876.000000) AND (t."X_2" > 126320.500000) AND (t."X_2" <= 140730.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_12" > 1.500000) AND (t."X_2" > 117876.000000) AND (t."X_2" > 126320.500000) AND (t."X_2" > 140730.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 162650.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_12" > 1.500000) AND (t."X_2" > 117876.000000) AND (t."X_2" > 126320.500000) AND (t."X_2" > 140730.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 162650.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_12" > 1.500000) AND (t."X_2" > 117876.000000) AND (t."X_2" > 126320.500000) AND (t."X_2" > 140730.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 2.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_12" > 1.500000) AND (t."X_2" > 117876.000000) AND (t."X_2" > 126320.500000) AND (t."X_2" > 140730.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_12" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_12" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 59750.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_12" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 59750.500000) AND (t."X_0" <= 1.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_12" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 59750.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 168168.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_12" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 59750.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 168168.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_12" > 1.500000) AND (t."X_2" <= 117876.000000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 97890.000000) AND (t."X_0" <= 2.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_12" > 1.500000) AND (t."X_2" <= 117876.000000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 97890.000000) AND (t."X_0" > 2.500000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_12" > 1.500000) AND (t."X_2" <= 117876.000000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_12" > 1.500000) AND (t."X_2" <= 117876.000000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 73545.500000)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_12" > 1.500000) AND (t."X_2" <= 117876.000000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 73545.500000)) THEN 32 ELSE NULL END AS Leaf_32
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.783203 AS "P_0", 0.216797 AS "P_1", 0 AS "D", 0.783203 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.732997 AS "P_0", 0.267003 AS "P_1", 0 AS "D", 0.732997 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.698305 AS "P_0", 0.301695 AS "P_1", 0 AS "D", 0.698305 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.907407 AS "P_0", 0.092593 AS "P_1", 0 AS "D", 0.907407 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.655172 AS "P_0", 0.344828 AS "P_1", 0 AS "D", 0.655172 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.894737 AS "P_0", 0.105263 AS "P_1", 0 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.713781 AS "P_0", 0.286219 AS "P_1", 0 AS "D", 0.713781 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.695489 AS "P_0", 0.304511 AS "P_1", 0 AS "D", 0.695489 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.866071 AS "P_0", 0.133929 AS "P_1", 0 AS "D", 0.866071 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.910891 AS "P_0", 0.089109 AS "P_1", 0 AS "D", 0.910891 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.533333 AS "P_0", 0.466667 AS "P_1", 0 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.927536 AS "P_0", 0.072464 AS "P_1", 0 AS "D", 0.927536 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.965517 AS "P_0", 0.034483 AS "P_1", 0 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.904762 AS "P_0", 0.095238 AS "P_1", 0 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.851852 AS "P_0", 0.148148 AS "P_1", 0 AS "D", 0.851852 AS "DP"
  ) AS "Values"),
"DT_output_0" AS 
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
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" <= 1.500000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_2" <= 300675.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_2" > 300675.500000)) THEN 4 ELSE NULL END AS Leaf_4
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.763672 AS "P_0", 0.236328 AS "P_1", 0 AS "D", 0.763672 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.795455 AS "P_0", 0.204545 AS "P_1", 0 AS "D", 0.795455 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
  ) AS "Values"),
"DT_output_1" AS 
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" > 2.500000)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_10" <= 2.500000) AND (t."X_0" <= 0.500000)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_10" <= 2.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_10" <= 1.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_10" <= 2.500000) AND (t."X_0" > 0.500000) AND (t."X_0" <= 2.500000) AND (t."X_10" > 1.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_10" <= 2.500000) AND (t."X_0" > 0.500000) AND (t."X_0" > 2.500000) AND (t."X_0" <= 3.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_10" <= 2.500000) AND (t."X_0" > 0.500000) AND (t."X_0" > 2.500000) AND (t."X_0" > 3.500000) AND (t."X_2" <= 192523.000000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_10" <= 2.500000) AND (t."X_0" > 0.500000) AND (t."X_0" > 2.500000) AND (t."X_0" > 3.500000) AND (t."X_2" > 192523.000000) AND (t."X_2" <= 286591.000000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_10" <= 2.500000) AND (t."X_0" > 0.500000) AND (t."X_0" > 2.500000) AND (t."X_0" > 3.500000) AND (t."X_2" > 192523.000000) AND (t."X_2" > 286591.000000)) THEN 14 ELSE NULL END AS Leaf_14
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.785156 AS "P_0", 0.214844 AS "P_1", 0 AS "D", 0.785156 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.808853 AS "P_0", 0.191147 AS "P_1", 0 AS "D", 0.808853 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.991304 AS "P_0", 0.008696 AS "P_1", 0 AS "D", 0.991304 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.753927 AS "P_0", 0.246073 AS "P_1", 0 AS "D", 0.753927 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.722892 AS "P_0", 0.277108 AS "P_1", 0 AS "D", 0.722892 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.812030 AS "P_0", 0.187970 AS "P_1", 0 AS "D", 0.812030 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.728814 AS "P_0", 0.271186 AS "P_1", 0 AS "D", 0.728814 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.794118 AS "P_0", 0.205882 AS "P_1", 0 AS "D", 0.794118 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.830769 AS "P_0", 0.169231 AS "P_1", 0 AS "D", 0.830769 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.608696 AS "P_0", 0.391304 AS "P_1", 0 AS "D", 0.608696 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
  ) AS "Values"),
"DT_output_2" AS 
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 189496.000000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 167642.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 167642.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 303170.000000) AND (t."X_0" <= 0.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 303170.000000) AND (t."X_0" > 0.500000) AND (t."X_2" > 205062.500000) AND (t."X_2" <= 227412.000000) AND (t."X_2" <= 216758.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 303170.000000) AND (t."X_0" > 0.500000) AND (t."X_2" > 205062.500000) AND (t."X_2" <= 227412.000000) AND (t."X_2" > 216758.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 303170.000000) AND (t."X_0" > 0.500000) AND (t."X_2" > 205062.500000) AND (t."X_2" > 227412.000000) AND (t."X_0" <= 1.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 303170.000000) AND (t."X_0" > 0.500000) AND (t."X_2" > 205062.500000) AND (t."X_2" > 227412.000000) AND (t."X_0" > 1.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 303170.000000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 205062.500000) AND (t."X_0" <= 2.500000) AND (t."X_0" <= 1.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 303170.000000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 205062.500000) AND (t."X_0" <= 2.500000) AND (t."X_0" > 1.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 303170.000000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 205062.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 110331.000000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 303170.000000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 205062.500000) AND (t."X_0" > 2.500000) AND (t."X_2" > 110331.000000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 189496.000000) AND (t."X_2" <= 252893.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 189496.000000) AND (t."X_2" > 252893.500000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 303170.000000) AND (t."X_2" <= 344291.000000)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 303170.000000) AND (t."X_2" > 344291.000000)) THEN 30 ELSE NULL END AS Leaf_30
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.771484 AS "P_0", 0.228516 AS "P_1", 0 AS "D", 0.771484 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.807059 AS "P_0", 0.192941 AS "P_1", 0 AS "D", 0.807059 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.597701 AS "P_0", 0.402299 AS "P_1", 0 AS "D", 0.597701 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.806452 AS "P_0", 0.193548 AS "P_1", 0 AS "D", 0.806452 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.482143 AS "P_0", 0.517857 AS "P_1", 1 AS "D", 0.517857 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.687500 AS "P_0", 0.312500 AS "P_1", 0 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.208333 AS "P_0", 0.791667 AS "P_1", 1 AS "D", 0.791667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.779006 AS "P_0", 0.220994 AS "P_1", 0 AS "D", 0.779006 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.968254 AS "P_0", 0.031746 AS "P_1", 0 AS "D", 0.968254 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.720280 AS "P_0", 0.279720 AS "P_1", 0 AS "D", 0.720280 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.788177 AS "P_0", 0.211823 AS "P_1", 0 AS "D", 0.788177 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.554217 AS "P_0", 0.445783 AS "P_1", 0 AS "D", 0.554217 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.322581 AS "P_0", 0.677419 AS "P_1", 1 AS "D", 0.677419 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.692308 AS "P_0", 0.307692 AS "P_1", 0 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.473684 AS "P_0", 0.526316 AS "P_1", 1 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.578947 AS "P_0", 0.421053 AS "P_1", 0 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.727941 AS "P_0", 0.272059 AS "P_1", 0 AS "D", 0.727941 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.910448 AS "P_0", 0.089552 AS "P_1", 0 AS "D", 0.910448 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.840580 AS "P_0", 0.159420 AS "P_1", 0 AS "D", 0.840580 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.611940 AS "P_0", 0.388060 AS "P_1", 0 AS "D", 0.611940 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.843750 AS "P_0", 0.156250 AS "P_1", 0 AS "D", 0.843750 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.971429 AS "P_0", 0.028571 AS "P_1", 0 AS "D", 0.971429 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.904762 AS "P_0", 0.095238 AS "P_1", 0 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_3" AS 
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
    COALESCE( t1."Leaf_4", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_4" > 14.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_4" <= 14.500000) AND (t."X_10" > 1.500000) AND (t."X_10" <= 2.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_4" <= 14.500000) AND (t."X_10" > 1.500000) AND (t."X_10" > 2.500000)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_4" <= 14.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" > 2.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_4" <= 14.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_0" <= 3.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_4" <= 14.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" > 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_0" > 3.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_4" <= 14.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" <= 9.500000) AND (t."X_0" > 1.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_4" <= 14.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" <= 9.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" <= 8.000000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_0" > 0.500000) AND (t."X_4" <= 14.500000) AND (t."X_10" <= 1.500000) AND (t."X_4" <= 9.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" > 8.000000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_0" <= 0.500000) AND (t."X_12" <= 1.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_0" <= 0.500000) AND (t."X_12" > 1.500000) AND (t."X_4" <= 9.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_0" <= 0.500000) AND (t."X_12" > 1.500000) AND (t."X_4" > 9.500000)) THEN 22 ELSE NULL END AS Leaf_22
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.740234 AS "P_0", 0.259766 AS "P_1", 0 AS "D", 0.740234 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.989011 AS "P_0", 0.010989 AS "P_1", 0 AS "D", 0.989011 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.686461 AS "P_0", 0.313539 AS "P_1", 0 AS "D", 0.686461 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.704878 AS "P_0", 0.295122 AS "P_1", 0 AS "D", 0.704878 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.744792 AS "P_0", 0.255208 AS "P_1", 0 AS "D", 0.744792 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.115385 AS "P_0", 0.884615 AS "P_1", 1 AS "D", 0.884615 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.864516 AS "P_0", 0.135484 AS "P_1", 0 AS "D", 0.864516 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.663755 AS "P_0", 0.336245 AS "P_1", 0 AS "D", 0.663755 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.187500 AS "P_0", 0.812500 AS "P_1", 1 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.706897 AS "P_0", 0.293103 AS "P_1", 0 AS "D", 0.706897 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.527273 AS "P_0", 0.472727 AS "P_1", 0 AS "D", 0.527273 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.684211 AS "P_0", 0.315789 AS "P_1", 0 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.863636 AS "P_0", 0.136364 AS "P_1", 0 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.831858 AS "P_0", 0.168142 AS "P_1", 0 AS "D", 0.831858 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.975000 AS "P_0", 0.025000 AS "P_1", 0 AS "D", 0.975000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
  ) AS "Values"),
"DT_output_4" AS 
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
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_4" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   AVG(t."P_0") AS "Proba_0",
   CAST(NULL AS FLOAT) AS "Score_0",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   AVG(t."P_1") AS "Proba_1",
   CAST(NULL AS FLOAT) AS "Score_1"
FROM "union_of_trees" AS t
GROUP BY t."index"
