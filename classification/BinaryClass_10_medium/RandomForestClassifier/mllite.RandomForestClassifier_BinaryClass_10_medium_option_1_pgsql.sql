WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" > 0.890186)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_8" > 0.381846)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_8" <= 0.381846) AND (t."X_4" > 0.965544)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_8" <= 0.381846) AND (t."X_4" <= 0.965544) AND (t."X_8" > -0.288704)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_8" <= 0.381846) AND (t."X_4" <= 0.965544) AND (t."X_8" <= -0.288704) AND (t."X_5" <= 0.498925)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_8" <= 0.381846) AND (t."X_4" <= 0.965544) AND (t."X_8" <= -0.288704) AND (t."X_5" > 0.498925)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" > 2.214571)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.214571) AND (t."X_9" > -1.199102) AND (t."X_8" > -1.316072) AND (t."X_8" <= -0.448412) AND (t."X_5" <= -1.061401)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.214571) AND (t."X_9" > -1.199102) AND (t."X_8" > -1.316072) AND (t."X_8" <= -0.448412) AND (t."X_5" > -1.061401)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.214571) AND (t."X_9" > -1.199102) AND (t."X_8" > -1.316072) AND (t."X_8" > -0.448412) AND (t."X_7" <= 0.709390)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.214571) AND (t."X_9" > -1.199102) AND (t."X_8" > -1.316072) AND (t."X_8" > -0.448412) AND (t."X_7" > 0.709390)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.214571) AND (t."X_9" > -1.199102) AND (t."X_8" <= -1.316072) AND (t."X_5" <= -0.892514)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.214571) AND (t."X_9" > -1.199102) AND (t."X_8" <= -1.316072) AND (t."X_5" > -0.892514)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.214571) AND (t."X_9" <= -1.199102) AND (t."X_5" <= -0.349469)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.214571) AND (t."X_9" <= -1.199102) AND (t."X_5" > -0.349469)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.488281 AS "P_0", 0.511719 AS "P_1", 1 AS "D", 0.511719 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.065217 AS "P_0", 0.934783 AS "P_1", 1 AS "D", 0.934783 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.227273 AS "P_0", 0.772727 AS "P_1", 1 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.288462 AS "P_0", 0.711538 AS "P_1", 1 AS "D", 0.711538 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.388889 AS "P_0", 0.611111 AS "P_1", 1 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.384615 AS "P_0", 0.615385 AS "P_1", 1 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.848709 AS "P_0", 0.151292 AS "P_1", 0 AS "D", 0.848709 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.972973 AS "P_0", 0.027027 AS "P_1", 0 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.829060 AS "P_0", 0.170940 AS "P_1", 0 AS "D", 0.829060 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.960000 AS "P_0", 0.040000 AS "P_1", 0 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.813397 AS "P_0", 0.186603 AS "P_1", 0 AS "D", 0.813397 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.709677 AS "P_0", 0.290323 AS "P_1", 0 AS "D", 0.709677 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.485714 AS "P_0", 0.514286 AS "P_1", 1 AS "D", 0.514286 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.912281 AS "P_0", 0.087719 AS "P_1", 0 AS "D", 0.912281 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" > 1.110547)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" > 0.167458) AND (t."X_8" <= 0.019503)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" > 0.167458) AND (t."X_8" > 0.019503)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" <= 0.436001) AND (t."X_8" <= -0.885204)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" <= 0.436001) AND (t."X_8" > -0.885204) AND (t."X_9" <= -0.062947)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" <= 0.436001) AND (t."X_8" > -0.885204) AND (t."X_9" > -0.062947)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_9" > 1.298532)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_9" <= 1.298532) AND (t."X_8" > 1.309392)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_9" <= 1.298532) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_9" <= 1.298532) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.063157)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" > 0.436001) AND (t."X_9" <= -0.114616)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" > 0.436001) AND (t."X_9" > -0.114616)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" > 0.658602) AND (t."X_4" > 1.033680)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" > 0.658602) AND (t."X_4" <= 1.033680) AND (t."X_7" <= -0.546147)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" > 0.658602) AND (t."X_4" <= 1.033680) AND (t."X_7" > -0.546147)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" <= 0.658602) AND (t."X_4" <= 0.932813)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" <= 0.658602) AND (t."X_4" > 0.932813) AND (t."X_7" <= -1.158112)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" <= 0.658602) AND (t."X_4" > 0.932813) AND (t."X_7" > -1.158112) AND (t."X_8" <= -1.608344)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" <= 0.658602) AND (t."X_4" > 0.932813) AND (t."X_7" > -1.158112) AND (t."X_8" > -1.608344)) THEN 36 ELSE NULL END AS "Leaf_36"
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
    SELECT 0 AS nid,  0.455078 AS "P_0", 0.544922 AS "P_1", 1 AS "D", 0.544922 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.592233 AS "P_0", 0.407767 AS "P_1", 0 AS "D", 0.592233 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.246305 AS "P_0", 0.753695 AS "P_1", 1 AS "D", 0.753695 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.094675 AS "P_0", 0.905325 AS "P_1", 1 AS "D", 0.905325 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.510040 AS "P_0", 0.489960 AS "P_1", 0 AS "D", 0.510040 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.789474 AS "P_0", 0.210526 AS "P_1", 0 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.382022 AS "P_0", 0.617977 AS "P_1", 1 AS "D", 0.617977 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.581250 AS "P_0", 0.418750 AS "P_1", 0 AS "D", 0.581250 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.566038 AS "P_0", 0.433962 AS "P_1", 0 AS "D", 0.566038 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.690476 AS "P_0", 0.309524 AS "P_1", 0 AS "D", 0.690476 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.619048 AS "P_0", 0.380952 AS "P_1", 0 AS "D", 0.619048 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.556818 AS "P_0", 0.443182 AS "P_1", 0 AS "D", 0.556818 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.886364 AS "P_0", 0.113636 AS "P_1", 0 AS "D", 0.886364 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.075188 AS "P_0", 0.924812 AS "P_1", 1 AS "D", 0.924812 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.057851 AS "P_0", 0.942149 AS "P_1", 1 AS "D", 0.942149 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.157895 AS "P_0", 0.842105 AS "P_1", 1 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.039216 AS "P_0", 0.960784 AS "P_1", 1 AS "D", 0.960784 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.021739 AS "P_0", 0.978261 AS "P_1", 1 AS "D", 0.978261 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" <= -0.407102)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" > -0.057505) AND (t."X_7" <= -0.420682)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" > -0.057505) AND (t."X_7" > -0.420682) AND (t."X_6" <= 0.357505)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" > -0.057505) AND (t."X_7" > -0.420682) AND (t."X_6" > 0.357505)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" <= -0.057505) AND (t."X_6" <= 0.015417)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" <= -0.057505) AND (t."X_6" > 0.015417)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_7" <= 0.003337) AND (t."X_9" <= -0.054338)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_7" <= 0.003337) AND (t."X_9" > -0.054338)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_7" > 0.003337) AND (t."X_5" > 1.450235)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_7" > 0.003337) AND (t."X_5" <= 1.450235) AND (t."X_8" > -0.291859) AND (t."X_8" <= 0.088317)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_7" > 0.003337) AND (t."X_5" <= 1.450235) AND (t."X_8" > -0.291859) AND (t."X_8" > 0.088317)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_7" > 0.003337) AND (t."X_5" <= 1.450235) AND (t."X_8" <= -0.291859) AND (t."X_9" <= -0.581230)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_7" > 0.003337) AND (t."X_5" <= 1.450235) AND (t."X_8" <= -0.291859) AND (t."X_9" > -0.581230)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" <= -1.484666)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_6" <= -0.856527)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_6" > -0.856527) AND (t."X_9" <= -1.143451)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_6" > -0.856527) AND (t."X_9" > -1.143451) AND (t."X_6" <= -0.625206)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_6" > -0.856527) AND (t."X_9" > -1.143451) AND (t."X_6" > -0.625206)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" <= -0.210901) AND (t."X_5" <= 0.628402)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" <= -0.210901) AND (t."X_5" > 0.628402)) THEN 38 ELSE NULL END AS "Leaf_38"
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
    SELECT 0 AS nid,  0.519531 AS "P_0", 0.480469 AS "P_1", 0 AS "D", 0.519531 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.852113 AS "P_0", 0.147887 AS "P_1", 0 AS "D", 0.852113 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.105263 AS "P_0", 0.894737 AS "P_1", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.920000 AS "P_0", 0.080000 AS "P_1", 0 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.690476 AS "P_0", 0.309524 AS "P_1", 0 AS "D", 0.690476 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.573770 AS "P_0", 0.426230 AS "P_1", 0 AS "D", 0.573770 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.807692 AS "P_0", 0.192308 AS "P_1", 0 AS "D", 0.807692 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.692308 AS "P_0", 0.307692 AS "P_1", 0 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.011364 AS "P_0", 0.988636 AS "P_1", 1 AS "D", 0.988636 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.164286 AS "P_0", 0.835714 AS "P_1", 1 AS "D", 0.835714 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.416667 AS "P_0", 0.583333 AS "P_1", 1 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.112069 AS "P_0", 0.887931 AS "P_1", 1 AS "D", 0.887931 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.175676 AS "P_0", 0.824324 AS "P_1", 1 AS "D", 0.824324 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.057143 AS "P_0", 0.942857 AS "P_1", 1 AS "D", 0.942857 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.282051 AS "P_0", 0.717949 AS "P_1", 1 AS "D", 0.717949 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.583333 AS "P_0", 0.416667 AS "P_1", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.148148 AS "P_0", 0.851852 AS "P_1", 1 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.868852 AS "P_0", 0.131148 AS "P_1", 0 AS "D", 0.868852 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.813953 AS "P_0", 0.186047 AS "P_1", 0 AS "D", 0.813953 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.849315 AS "P_0", 0.150685 AS "P_1", 0 AS "D", 0.849315 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.588235 AS "P_0", 0.411765 AS "P_1", 0 AS "D", 0.588235 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_27", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_39", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_9" > -0.079966) AND (t."X_1" <= 0.043535) AND (t."X_7" > 0.961428) AND (t."X_0" <= 0.055705)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_9" > -0.079966) AND (t."X_1" <= 0.043535) AND (t."X_7" > 0.961428) AND (t."X_0" > 0.055705)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_9" > -0.079966) AND (t."X_1" > 0.043535) AND (t."X_0" > 0.027038) AND (t."X_9" > 1.230031)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_9" > -0.079966) AND (t."X_1" > 0.043535) AND (t."X_0" <= 0.027038) AND (t."X_9" <= 0.255359)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_9" > -0.079966) AND (t."X_1" > 0.043535) AND (t."X_0" <= 0.027038) AND (t."X_9" > 0.255359) AND (t."X_0" > -0.380634)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_9" > -0.079966) AND (t."X_1" > 0.043535) AND (t."X_0" <= 0.027038) AND (t."X_9" > 0.255359) AND (t."X_0" <= -0.380634) AND (t."X_8" <= -0.042557)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_9" > -0.079966) AND (t."X_1" > 0.043535) AND (t."X_0" <= 0.027038) AND (t."X_9" > 0.255359) AND (t."X_0" <= -0.380634) AND (t."X_8" > -0.042557)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_9" > -0.079966) AND (t."X_1" > 0.043535) AND (t."X_0" > 0.027038) AND (t."X_9" <= 1.230031) AND (t."X_8" <= -0.781561)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_9" > -0.079966) AND (t."X_1" > 0.043535) AND (t."X_0" > 0.027038) AND (t."X_9" <= 1.230031) AND (t."X_8" > -0.781561) AND (t."X_9" <= 0.653624)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_9" > -0.079966) AND (t."X_1" > 0.043535) AND (t."X_0" > 0.027038) AND (t."X_9" <= 1.230031) AND (t."X_8" > -0.781561) AND (t."X_9" > 0.653624)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_9" <= -0.079966) AND (t."X_8" <= -0.205219) AND (t."X_8" > -1.012311) AND (t."X_1" <= -0.868221)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_9" <= -0.079966) AND (t."X_8" <= -0.205219) AND (t."X_8" <= -1.012311) AND (t."X_7" > 0.824597)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_9" <= -0.079966) AND (t."X_8" <= -0.205219) AND (t."X_8" <= -1.012311) AND (t."X_7" <= 0.824597) AND (t."X_1" > 0.242590)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_9" <= -0.079966) AND (t."X_8" <= -0.205219) AND (t."X_8" <= -1.012311) AND (t."X_7" <= 0.824597) AND (t."X_1" <= 0.242590) AND (t."X_7" <= -0.005114)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_9" <= -0.079966) AND (t."X_8" <= -0.205219) AND (t."X_8" <= -1.012311) AND (t."X_7" <= 0.824597) AND (t."X_1" <= 0.242590) AND (t."X_7" > -0.005114)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_9" <= -0.079966) AND (t."X_8" > -0.205219) AND (t."X_0" <= -1.265375)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_9" <= -0.079966) AND (t."X_8" > -0.205219) AND (t."X_0" > -1.265375) AND (t."X_9" <= -1.142863) AND (t."X_9" <= -1.389647)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_9" <= -0.079966) AND (t."X_8" > -0.205219) AND (t."X_0" > -1.265375) AND (t."X_9" > -1.142863) AND (t."X_9" > -0.351286)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_9" <= -0.079966) AND (t."X_8" > -0.205219) AND (t."X_0" > -1.265375) AND (t."X_9" > -1.142863) AND (t."X_9" <= -0.351286) AND (t."X_0" <= -0.370215)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_9" <= -0.079966) AND (t."X_8" > -0.205219) AND (t."X_0" > -1.265375) AND (t."X_9" > -1.142863) AND (t."X_9" <= -0.351286) AND (t."X_0" > -0.370215)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_9" <= -0.079966) AND (t."X_8" <= -0.205219) AND (t."X_8" > -1.012311) AND (t."X_1" > -0.868221) AND (t."X_8" <= -0.653717)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_9" <= -0.079966) AND (t."X_8" <= -0.205219) AND (t."X_8" > -1.012311) AND (t."X_1" > -0.868221) AND (t."X_8" > -0.653717) AND (t."X_8" <= -0.451817)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_9" <= -0.079966) AND (t."X_8" <= -0.205219) AND (t."X_8" > -1.012311) AND (t."X_1" > -0.868221) AND (t."X_8" > -0.653717) AND (t."X_8" > -0.451817)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_9" > -0.079966) AND (t."X_1" <= 0.043535) AND (t."X_7" <= 0.961428) AND (t."X_9" <= 0.023410)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_9" > -0.079966) AND (t."X_1" <= 0.043535) AND (t."X_7" <= 0.961428) AND (t."X_9" > 0.023410) AND (t."X_1" > -0.458013) AND (t."X_9" <= 0.538486)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_9" > -0.079966) AND (t."X_1" <= 0.043535) AND (t."X_7" <= 0.961428) AND (t."X_9" > 0.023410) AND (t."X_1" > -0.458013) AND (t."X_9" > 0.538486)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_9" > -0.079966) AND (t."X_1" <= 0.043535) AND (t."X_7" <= 0.961428) AND (t."X_9" > 0.023410) AND (t."X_1" <= -0.458013) AND (t."X_8" <= -0.005662)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_9" > -0.079966) AND (t."X_1" <= 0.043535) AND (t."X_7" <= 0.961428) AND (t."X_9" > 0.023410) AND (t."X_1" <= -0.458013) AND (t."X_8" > -0.005662)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_9" <= -0.079966) AND (t."X_8" > -0.205219) AND (t."X_0" > -1.265375) AND (t."X_9" <= -1.142863) AND (t."X_9" > -1.389647) AND (t."X_9" <= -1.300514)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_9" <= -0.079966) AND (t."X_8" > -0.205219) AND (t."X_0" > -1.265375) AND (t."X_9" <= -1.142863) AND (t."X_9" > -1.389647) AND (t."X_9" > -1.300514)) THEN 58 ELSE NULL END AS "Leaf_58"
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
    SELECT 0 AS nid,  0.517578 AS "P_0", 0.482422 AS "P_1", 0 AS "D", 0.517578 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.583673 AS "P_0", 0.416327 AS "P_1", 0 AS "D", 0.583673 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.456929 AS "P_0", 0.543071 AS "P_1", 1 AS "D", 0.543071 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.343511 AS "P_0", 0.656489 AS "P_1", 1 AS "D", 0.656489 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.566176 AS "P_0", 0.433824 AS "P_1", 0 AS "D", 0.566176 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.284404 AS "P_0", 0.715596 AS "P_1", 1 AS "D", 0.715596 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.447761 AS "P_0", 0.552239 AS "P_1", 1 AS "D", 0.552239 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.681159 AS "P_0", 0.318841 AS "P_1", 0 AS "D", 0.681159 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.788462 AS "P_0", 0.211538 AS "P_1", 0 AS "D", 0.788462 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.352941 AS "P_0", 0.647059 AS "P_1", 1 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.549020 AS "P_0", 0.450980 AS "P_1", 0 AS "D", 0.549020 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.863636 AS "P_0", 0.136364 AS "P_1", 0 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.868421 AS "P_0", 0.131579 AS "P_1", 0 AS "D", 0.868421 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.954545 AS "P_0", 0.045455 AS "P_1", 0 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.490909 AS "P_0", 0.509091 AS "P_1", 1 AS "D", 0.509091 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.659259 AS "P_0", 0.340741 AS "P_1", 0 AS "D", 0.659259 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.673913 AS "P_0", 0.326087 AS "P_1", 0 AS "D", 0.673913 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.359375 AS "P_0", 0.640625 AS "P_1", 1 AS "D", 0.640625 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.260000 AS "P_0", 0.740000 AS "P_1", 1 AS "D", 0.740000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.583333 AS "P_0", 0.416667 AS "P_1", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.592920 AS "P_0", 0.407080 AS "P_1", 0 AS "D", 0.592920 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.756757 AS "P_0", 0.243243 AS "P_1", 0 AS "D", 0.756757 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.513158 AS "P_0", 0.486842 AS "P_1", 0 AS "D", 0.513158 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.529412 AS "P_0", 0.470588 AS "P_1", 0 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.403509 AS "P_0", 0.596491 AS "P_1", 1 AS "D", 0.596491 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.842105 AS "P_0", 0.157895 AS "P_1", 0 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.512195 AS "P_0", 0.487805 AS "P_1", 0 AS "D", 0.512195 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.324324 AS "P_0", 0.675676 AS "P_1", 1 AS "D", 0.675676 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.473684 AS "P_0", 0.526316 AS "P_1", 1 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.315789 AS "P_0", 0.684211 AS "P_1", 1 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.403226 AS "P_0", 0.596774 AS "P_1", 1 AS "D", 0.596774 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.151515 AS "P_0", 0.848485 AS "P_1", 1 AS "D", 0.848485 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.357143 AS "P_0", 0.642857 AS "P_1", 1 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.309524 AS "P_0", 0.690476 AS "P_1", 1 AS "D", 0.690476 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_7", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_6" <= -0.095387)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_7" > 1.395130) AND (t."X_7" <= 1.551491)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_7" > 1.395130) AND (t."X_7" > 1.551491)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_7" <= 1.395130) AND (t."X_6" > -0.483420) AND (t."X_8" > 0.546700)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_7" <= 1.395130) AND (t."X_6" > -0.483420) AND (t."X_8" <= 0.546700) AND (t."X_2" <= -0.190138)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_7" <= 1.395130) AND (t."X_6" > -0.483420) AND (t."X_8" <= 0.546700) AND (t."X_2" > -0.190138) AND (t."X_8" <= 0.348307)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_7" <= 1.395130) AND (t."X_6" > -0.483420) AND (t."X_8" <= 0.546700) AND (t."X_2" > -0.190138) AND (t."X_8" > 0.348307)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_7" <= 1.395130) AND (t."X_6" <= -0.483420) AND (t."X_2" <= -0.521982)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_7" <= 1.395130) AND (t."X_6" <= -0.483420) AND (t."X_2" > -0.521982) AND (t."X_2" <= -0.339786)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_7" <= 1.395130) AND (t."X_6" <= -0.483420) AND (t."X_2" > -0.521982) AND (t."X_2" > -0.339786)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_6" > -0.095387) AND (t."X_7" > 1.078706) AND (t."X_2" <= 0.306448)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_6" > -0.095387) AND (t."X_7" > 1.078706) AND (t."X_2" > 0.306448) AND (t."X_8" <= -0.245400)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_6" > -0.095387) AND (t."X_7" > 1.078706) AND (t."X_2" > 0.306448) AND (t."X_8" > -0.245400)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_6" > -0.095387) AND (t."X_7" <= 1.078706) AND (t."X_9" <= -1.532854)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_6" > -0.095387) AND (t."X_7" <= 1.078706) AND (t."X_9" > -1.532854) AND (t."X_6" > 0.340330)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_6" > -0.095387) AND (t."X_7" <= 1.078706) AND (t."X_9" > -1.532854) AND (t."X_6" <= 0.340330) AND (t."X_7" <= -0.248380)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_6" > -0.095387) AND (t."X_7" <= 1.078706) AND (t."X_9" > -1.532854) AND (t."X_6" <= 0.340330) AND (t."X_7" > -0.248380)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.488281 AS "P_0", 0.511719 AS "P_1", 1 AS "D", 0.511719 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.834507 AS "P_0", 0.165493 AS "P_1", 0 AS "D", 0.834507 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.057018 AS "P_0", 0.942982 AS "P_1", 1 AS "D", 0.942982 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.416667 AS "P_0", 0.583333 AS "P_1", 1 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.037037 AS "P_0", 0.962963 AS "P_1", 1 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.858238 AS "P_0", 0.141762 AS "P_1", 0 AS "D", 0.858238 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.565217 AS "P_0", 0.434783 AS "P_1", 0 AS "D", 0.565217 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.974194 AS "P_0", 0.025806 AS "P_1", 0 AS "D", 0.974194 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.688679 AS "P_0", 0.311321 AS "P_1", 0 AS "D", 0.688679 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.742857 AS "P_0", 0.257143 AS "P_1", 0 AS "D", 0.742857 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.879310 AS "P_0", 0.120690 AS "P_1", 0 AS "D", 0.879310 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.017241 AS "P_0", 0.982759 AS "P_1", 1 AS "D", 0.982759 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.119048 AS "P_0", 0.880952 AS "P_1", 1 AS "D", 0.880952 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.238095 AS "P_0", 0.761905 AS "P_1", 1 AS "D", 0.761905 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.012270 AS "P_0", 0.987730 AS "P_1", 1 AS "D", 0.987730 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.060606 AS "P_0", 0.939394 AS "P_1", 1 AS "D", 0.939394 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
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