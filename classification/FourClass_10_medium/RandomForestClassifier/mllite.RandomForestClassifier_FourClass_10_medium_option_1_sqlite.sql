WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "FourClass_10_medium" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" <= -1.877994)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" > -0.150257) AND (t."X_8" > 0.262944) AND (t."X_7" <= 0.619146) AND (t."X_5" <= -0.650688)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" > -0.150257) AND (t."X_8" > 0.262944) AND (t."X_7" <= 0.619146) AND (t."X_5" > -0.650688) AND (t."X_2" <= 0.410461)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" > -0.150257) AND (t."X_8" > 0.262944) AND (t."X_7" <= 0.619146) AND (t."X_5" > -0.650688) AND (t."X_2" > 0.410461)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" > -0.150257) AND (t."X_8" <= 0.262944) AND (t."X_4" <= 0.211684) AND (t."X_7" <= 0.821664) AND (t."X_9" <= 0.756320)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" > -0.150257) AND (t."X_8" <= 0.262944) AND (t."X_4" <= 0.211684) AND (t."X_7" <= 0.821664) AND (t."X_9" > 0.756320)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" > -0.150257) AND (t."X_8" <= 0.262944) AND (t."X_4" > 0.211684) AND (t."X_2" <= -0.537860)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" > -0.150257) AND (t."X_8" <= 0.262944) AND (t."X_4" > 0.211684) AND (t."X_2" > -0.537860) AND (t."X_7" <= 0.638473)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" > -0.150257) AND (t."X_8" <= 0.262944) AND (t."X_4" > 0.211684) AND (t."X_2" > -0.537860) AND (t."X_7" > 0.638473)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" > -0.150257) AND (t."X_8" <= 0.262944) AND (t."X_4" <= 0.211684) AND (t."X_7" > 0.821664) AND (t."X_4" <= -0.870639)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" > -0.150257) AND (t."X_8" <= 0.262944) AND (t."X_4" <= 0.211684) AND (t."X_7" > 0.821664) AND (t."X_4" > -0.870639)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" <= -0.150257) AND (t."X_2" > 1.477837) AND (t."X_8" <= 0.085399)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" <= -0.150257) AND (t."X_2" > 1.477837) AND (t."X_8" > 0.085399)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" <= -0.150257) AND (t."X_2" <= 1.477837) AND (t."X_4" > 1.091757) AND (t."X_7" <= -1.624094)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" <= -0.150257) AND (t."X_2" <= 1.477837) AND (t."X_4" > 1.091757) AND (t."X_7" > -1.624094) AND (t."X_4" <= 1.376273)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" <= -0.150257) AND (t."X_2" <= 1.477837) AND (t."X_4" > 1.091757) AND (t."X_7" > -1.624094) AND (t."X_4" > 1.376273)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" <= -0.150257) AND (t."X_2" <= 1.477837) AND (t."X_4" <= 1.091757) AND (t."X_4" <= -0.571463) AND (t."X_8" <= 0.011370)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" <= -0.150257) AND (t."X_2" <= 1.477837) AND (t."X_4" <= 1.091757) AND (t."X_4" <= -0.571463) AND (t."X_8" > 0.011370)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" <= -0.150257) AND (t."X_2" <= 1.477837) AND (t."X_4" <= 1.091757) AND (t."X_4" > -0.571463) AND (t."X_5" <= 0.645947)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" <= -0.150257) AND (t."X_2" <= 1.477837) AND (t."X_4" <= 1.091757) AND (t."X_4" > -0.571463) AND (t."X_5" > 0.645947)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" > -0.150257) AND (t."X_8" > 0.262944) AND (t."X_7" > 0.619146) AND (t."X_7" <= 0.993646)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_4" > -1.877994) AND (t."X_7" > -0.150257) AND (t."X_8" > 0.262944) AND (t."X_7" > 0.619146) AND (t."X_7" > 0.993646)) THEN 42 ELSE NULL END AS "Leaf_42"
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
    SELECT 0 AS nid,  0.251953 AS "P_0", 0.287109 AS "P_1", 0.224609 AS "P_2", 0.236328 AS "P_3", 1 AS "D", 0.287109 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.058824 AS "P_0", 0.000000 AS "P_1", 0.764706 AS "P_2", 0.176471 AS "P_3", 2 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.258586 AS "P_0", 0.296970 AS "P_1", 0.206061 AS "P_2", 0.238384 AS "P_3", 1 AS "D", 0.296970 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.349091 AS "P_0", 0.087273 AS "P_1", 0.192727 AS "P_2", 0.370909 AS "P_3", 3 AS "D", 0.370909 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.145455 AS "P_0", 0.559091 AS "P_1", 0.222727 AS "P_2", 0.072727 AS "P_3", 1 AS "D", 0.559091 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.239130 AS "P_0", 0.173913 AS "P_1", 0.467391 AS "P_2", 0.119565 AS "P_3", 2 AS "D", 0.467391 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.078125 AS "P_0", 0.835938 AS "P_1", 0.046875 AS "P_2", 0.039062 AS "P_3", 1 AS "D", 0.835938 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.183673 AS "P_0", 0.612245 AS "P_1", 0.122449 AS "P_2", 0.081633 AS "P_3", 1 AS "D", 0.612245 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.012658 AS "P_0", 0.974684 AS "P_1", 0.000000 AS "P_2", 0.012658 AS "P_3", 1 AS "D", 0.974684 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.400000 AS "P_1", 0.600000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.230769 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.102564 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.071429 AS "P_0", 0.821429 AS "P_1", 0.000000 AS "P_2", 0.107143 AS "P_3", 1 AS "D", 0.821429 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.636364 AS "P_0", 0.272727 AS "P_1", 0.000000 AS "P_2", 0.090909 AS "P_3", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.333333 AS "P_0", 0.210526 AS "P_1", 0.350877 AS "P_2", 0.105263 AS "P_3", 2 AS "D", 0.350877 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.085714 AS "P_0", 0.114286 AS "P_1", 0.657143 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.657143 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.548387 AS "P_0", 0.161290 AS "P_1", 0.161290 AS "P_2", 0.129032 AS "P_3", 0 AS "D", 0.548387 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.076923 AS "P_0", 0.269231 AS "P_1", 0.576923 AS "P_2", 0.076923 AS "P_3", 2 AS "D", 0.576923 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.700000 AS "P_0", 0.250000 AS "P_1", 0.050000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.272727 AS "P_0", 0.000000 AS "P_1", 0.363636 AS "P_2", 0.363636 AS "P_3", 2 AS "D", 0.363636 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.125000 AS "P_0", 0.166667 AS "P_1", 0.500000 AS "P_2", 0.208333 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.181818 AS "P_0", 0.090909 AS "P_1", 0.272727 AS "P_2", 0.454545 AS "P_3", 3 AS "D", 0.454545 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.076923 AS "P_0", 0.230769 AS "P_1", 0.692308 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.125000 AS "P_0", 0.125000 AS "P_1", 0.625000 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.321429 AS "P_0", 0.095238 AS "P_1", 0.186508 AS "P_2", 0.396825 AS "P_3", 3 AS "D", 0.396825 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.652174 AS "P_0", 0.000000 AS "P_1", 0.260870 AS "P_2", 0.086957 AS "P_3", 0 AS "D", 0.652174 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.461538 AS "P_0", 0.000000 AS "P_1", 0.461538 AS "P_2", 0.076923 AS "P_3", 0 AS "D", 0.461538 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.900000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.100000 AS "P_3", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.350711 AS "P_0", 0.099526 AS "P_1", 0.194313 AS "P_2", 0.355450 AS "P_3", 3 AS "D", 0.355450 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.170732 AS "P_0", 0.073171 AS "P_1", 0.146341 AS "P_2", 0.609756 AS "P_3", 3 AS "D", 0.609756 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.300000 AS "P_0", 0.000000 AS "P_1", 0.400000 AS "P_2", 0.300000 AS "P_3", 2 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.129032 AS "P_0", 0.096774 AS "P_1", 0.064516 AS "P_2", 0.709677 AS "P_3", 3 AS "D", 0.709677 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.222222 AS "P_0", 0.166667 AS "P_1", 0.111111 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.215385 AS "P_0", 0.046154 AS "P_1", 0.200000 AS "P_2", 0.538462 AS "P_3", 3 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.410959 AS "P_0", 0.123288 AS "P_1", 0.191781 AS "P_2", 0.273973 AS "P_3", 0 AS "D", 0.410959 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.029412 AS "P_0", 0.000000 AS "P_1", 0.294118 AS "P_2", 0.676471 AS "P_3", 3 AS "D", 0.676471 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.419355 AS "P_0", 0.096774 AS "P_1", 0.096774 AS "P_2", 0.387097 AS "P_3", 0 AS "D", 0.419355 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.396396 AS "P_0", 0.117117 AS "P_1", 0.135135 AS "P_2", 0.351351 AS "P_3", 0 AS "D", 0.396396 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.457143 AS "P_0", 0.142857 AS "P_1", 0.371429 AS "P_2", 0.028571 AS "P_3", 0 AS "D", 0.457143 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.083333 AS "P_0", 0.833333 AS "P_1", 0.000000 AS "P_2", 0.083333 AS "P_3", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_59", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > 0.081743) AND (t."X_7" <= 0.838107) AND (t."X_8" <= -0.777687)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_7" > 0.081743) AND (t."X_7" <= 0.838107) AND (t."X_8" > -0.777687) AND (t."X_8" > 0.334705) AND (t."X_9" > -0.152827) AND (t."X_9" <= 0.509762)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_7" > 0.081743) AND (t."X_7" <= 0.838107) AND (t."X_8" > -0.777687) AND (t."X_8" > 0.334705) AND (t."X_9" > -0.152827) AND (t."X_9" > 0.509762)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_7" > 0.081743) AND (t."X_7" <= 0.838107) AND (t."X_8" > -0.777687) AND (t."X_8" > 0.334705) AND (t."X_9" <= -0.152827) AND (t."X_4" <= 0.496879)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_7" > 0.081743) AND (t."X_7" <= 0.838107) AND (t."X_8" > -0.777687) AND (t."X_8" > 0.334705) AND (t."X_9" <= -0.152827) AND (t."X_4" > 0.496879)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_7" > 0.081743) AND (t."X_7" <= 0.838107) AND (t."X_8" > -0.777687) AND (t."X_8" <= 0.334705) AND (t."X_4" <= 0.647354)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_7" > 0.081743) AND (t."X_7" <= 0.838107) AND (t."X_8" > -0.777687) AND (t."X_8" <= 0.334705) AND (t."X_4" > 0.647354)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" > 0.016796) AND (t."X_8" > 1.994728) AND (t."X_9" <= -0.043728)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" > 0.016796) AND (t."X_8" > 1.994728) AND (t."X_9" > -0.043728) AND (t."X_4" <= 0.410858)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" > 0.016796) AND (t."X_8" > 1.994728) AND (t."X_9" > -0.043728) AND (t."X_4" > 0.410858)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" <= 0.016796) AND (t."X_8" <= -1.983985) AND (t."X_9" > 0.370568)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" <= 0.016796) AND (t."X_8" <= -1.983985) AND (t."X_9" <= 0.370568) AND (t."X_9" <= -0.879196)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" <= 0.016796) AND (t."X_8" <= -1.983985) AND (t."X_9" <= 0.370568) AND (t."X_9" > -0.879196)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" <= 0.016796) AND (t."X_8" > -1.983985) AND (t."X_4" <= -0.282146) AND (t."X_4" > -1.001013)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" <= 0.016796) AND (t."X_8" > -1.983985) AND (t."X_4" <= -0.282146) AND (t."X_4" <= -1.001013) AND (t."X_4" <= -1.808718)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" <= 0.016796) AND (t."X_8" > -1.983985) AND (t."X_4" <= -0.282146) AND (t."X_4" <= -1.001013) AND (t."X_4" > -1.808718)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" <= 0.016796) AND (t."X_8" > -1.983985) AND (t."X_4" > -0.282146) AND (t."X_4" > 1.494100)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" > 0.016796) AND (t."X_8" <= 1.994728) AND (t."X_7" <= -0.606091) AND (t."X_7" > -1.033115) AND (t."X_8" <= 0.314836)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" > 0.016796) AND (t."X_8" <= 1.994728) AND (t."X_7" <= -0.606091) AND (t."X_7" > -1.033115) AND (t."X_8" > 0.314836)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" > 0.016796) AND (t."X_8" <= 1.994728) AND (t."X_7" > -0.606091) AND (t."X_4" <= -0.486295)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" > 0.016796) AND (t."X_8" <= 1.994728) AND (t."X_7" <= -0.606091) AND (t."X_7" <= -1.033115) AND (t."X_4" <= -1.167120)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" > 0.016796) AND (t."X_8" <= 1.994728) AND (t."X_7" <= -0.606091) AND (t."X_7" <= -1.033115) AND (t."X_4" > -1.167120)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" > 0.016796) AND (t."X_8" <= 1.994728) AND (t."X_7" > -0.606091) AND (t."X_4" > -0.486295) AND (t."X_7" <= -0.405086)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" > 0.016796) AND (t."X_8" <= 1.994728) AND (t."X_7" > -0.606091) AND (t."X_4" > -0.486295) AND (t."X_7" > -0.405086)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" <= 0.016796) AND (t."X_8" > -1.983985) AND (t."X_4" > -0.282146) AND (t."X_4" <= 1.494100) AND (t."X_8" <= -0.433836)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_7" <= 0.081743) AND (t."X_8" <= 0.016796) AND (t."X_8" > -1.983985) AND (t."X_4" > -0.282146) AND (t."X_4" <= 1.494100) AND (t."X_8" > -0.433836)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_7" > 0.081743) AND (t."X_7" > 0.838107) AND (t."X_8" <= -0.331488) AND (t."X_8" <= -1.113843)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_7" > 0.081743) AND (t."X_7" > 0.838107) AND (t."X_8" <= -0.331488) AND (t."X_8" > -1.113843)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_7" > 0.081743) AND (t."X_7" > 0.838107) AND (t."X_8" > -0.331488) AND (t."X_7" <= 1.143649) AND (t."X_9" <= -0.044511)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_7" > 0.081743) AND (t."X_7" > 0.838107) AND (t."X_8" > -0.331488) AND (t."X_7" <= 1.143649) AND (t."X_9" > -0.044511)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_7" > 0.081743) AND (t."X_7" > 0.838107) AND (t."X_8" > -0.331488) AND (t."X_7" > 1.143649) AND (t."X_7" <= 1.845835)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_7" > 0.081743) AND (t."X_7" > 0.838107) AND (t."X_8" > -0.331488) AND (t."X_7" > 1.143649) AND (t."X_7" > 1.845835)) THEN 62 ELSE NULL END AS "Leaf_62"
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
    SELECT 0 AS nid,  0.275391 AS "P_0", 0.273438 AS "P_1", 0.207031 AS "P_2", 0.244141 AS "P_3", 0 AS "D", 0.275391 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.377419 AS "P_0", 0.074194 AS "P_1", 0.187097 AS "P_2", 0.361290 AS "P_3", 0 AS "D", 0.377419 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.118812 AS "P_0", 0.579208 AS "P_1", 0.237624 AS "P_2", 0.064356 AS "P_3", 1 AS "D", 0.579208 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.246753 AS "P_0", 0.441558 AS "P_1", 0.142857 AS "P_2", 0.168831 AS "P_3", 1 AS "D", 0.441558 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.040000 AS "P_0", 0.664000 AS "P_1", 0.296000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.664000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.025641 AS "P_0", 0.076923 AS "P_1", 0.897436 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.897436 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.046512 AS "P_0", 0.930233 AS "P_1", 0.023256 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.930233 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.090909 AS "P_0", 0.000000 AS "P_1", 0.727273 AS "P_2", 0.181818 AS "P_3", 2 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.272727 AS "P_0", 0.515152 AS "P_1", 0.045455 AS "P_2", 0.166667 AS "P_3", 1 AS "D", 0.515152 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.478261 AS "P_0", 0.391304 AS "P_1", 0.130435 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.478261 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.162791 AS "P_0", 0.581395 AS "P_1", 0.000000 AS "P_2", 0.255814 AS "P_3", 1 AS "D", 0.581395 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.173913 AS "P_0", 0.739130 AS "P_1", 0.000000 AS "P_2", 0.086957 AS "P_3", 1 AS "D", 0.739130 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.150000 AS "P_0", 0.400000 AS "P_1", 0.000000 AS "P_2", 0.450000 AS "P_3", 3 AS "D", 0.450000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.300000 AS "P_1", 0.000000 AS "P_2", 0.700000 AS "P_3", 3 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.300000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.300000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.300000 AS "P_0", 0.400000 AS "P_1", 0.300000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.289308 AS "P_0", 0.018868 AS "P_1", 0.320755 AS "P_2", 0.371069 AS "P_3", 3 AS "D", 0.371069 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.470199 AS "P_0", 0.132450 AS "P_1", 0.046358 AS "P_2", 0.350993 AS "P_3", 0 AS "D", 0.470199 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.540541 AS "P_0", 0.162162 AS "P_1", 0.063063 AS "P_2", 0.234234 AS "P_3", 0 AS "D", 0.540541 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.275000 AS "P_0", 0.050000 AS "P_1", 0.000000 AS "P_2", 0.675000 AS "P_3", 3 AS "D", 0.675000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.062500 AS "P_1", 0.000000 AS "P_2", 0.937500 AS "P_3", 3 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.458333 AS "P_0", 0.041667 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.642857 AS "P_0", 0.071429 AS "P_1", 0.000000 AS "P_2", 0.285714 AS "P_3", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.523810 AS "P_0", 0.000000 AS "P_1", 0.380952 AS "P_2", 0.095238 AS "P_3", 0 AS "D", 0.523810 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.205128 AS "P_0", 0.025641 AS "P_1", 0.299145 AS "P_2", 0.470085 AS "P_3", 3 AS "D", 0.470085 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.222222 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.266667 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.066667 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.300000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.882353 AS "P_0", 0.000000 AS "P_1", 0.058824 AS "P_2", 0.058824 AS "P_3", 0 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.275000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.225000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.168831 AS "P_0", 0.038961 AS "P_1", 0.194805 AS "P_2", 0.597403 AS "P_3", 3 AS "D", 0.597403 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.045455 AS "P_0", 0.000000 AS "P_1", 0.590909 AS "P_2", 0.363636 AS "P_3", 2 AS "D", 0.590909 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.555556 AS "P_0", 0.000000 AS "P_1", 0.388889 AS "P_2", 0.055556 AS "P_3", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.100000 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.100000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.416667 AS "P_2", 0.583333 AS "P_3", 3 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.119403 AS "P_0", 0.044776 AS "P_1", 0.179104 AS "P_2", 0.656716 AS "P_3", 3 AS "D", 0.656716 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.300000 AS "P_2", 0.200000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.447761 AS "P_0", 0.134328 AS "P_1", 0.059701 AS "P_2", 0.358209 AS "P_3", 0 AS "D", 0.447761 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.681818 AS "P_0", 0.204545 AS "P_1", 0.068182 AS "P_2", 0.045455 AS "P_3", 0 AS "D", 0.681818 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.574468 AS "P_0", 0.085106 AS "P_1", 0.021277 AS "P_2", 0.319149 AS "P_3", 0 AS "D", 0.574468 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.150000 AS "P_0", 0.250000 AS "P_1", 0.150000 AS "P_2", 0.450000 AS "P_3", 3 AS "D", 0.450000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.100000 AS "P_0", 0.000000 AS "P_1", 0.300000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.200000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.300000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.575758 AS "P_0", 0.272727 AS "P_1", 0.090909 AS "P_2", 0.060606 AS "P_3", 0 AS "D", 0.575758 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.363636 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.636364 AS "P_3", 3 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.638889 AS "P_0", 0.111111 AS "P_1", 0.027778 AS "P_2", 0.222222 AS "P_3", 0 AS "D", 0.638889 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.687500 AS "P_0", 0.125000 AS "P_1", 0.062500 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.470588 AS "P_0", 0.411765 AS "P_1", 0.117647 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.470588 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.122449 AS "P_0", 0.061224 AS "P_1", 0.244898 AS "P_2", 0.571429 AS "P_3", 3 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.111111 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.888889 AS "P_3", 3 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.062500 AS "P_0", 0.187500 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 0.966667 AS "P_1", 0.033333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 0.923077 AS "P_1", 0.076923 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.923077 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 1.674345) AND (t."X_7" > 0.944780)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_6" > 1.674345) AND (t."X_7" <= 0.944780) AND (t."X_8" <= -2.290895)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" > 0.152720) AND (t."X_8" <= 0.199578) AND (t."X_6" > 1.230829)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" > 0.152720) AND (t."X_8" <= 0.199578) AND (t."X_6" <= 1.230829) AND (t."X_5" <= 0.099340)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" > 0.152720) AND (t."X_8" <= 0.199578) AND (t."X_6" <= 1.230829) AND (t."X_5" > 0.099340)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" <= 0.152720) AND (t."X_6" > 0.300945) AND (t."X_8" <= -1.697244)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" <= 0.152720) AND (t."X_6" > 0.300945) AND (t."X_8" > -1.697244) AND (t."X_6" <= 0.795249)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" <= 0.152720) AND (t."X_6" > 0.300945) AND (t."X_8" > -1.697244) AND (t."X_6" > 0.795249)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" > 0.152720) AND (t."X_8" > 0.199578) AND (t."X_7" <= 1.143113) AND (t."X_8" <= 1.233072) AND (t."X_8" <= 0.675203)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" > 0.152720) AND (t."X_8" > 0.199578) AND (t."X_7" <= 1.143113) AND (t."X_8" <= 1.233072) AND (t."X_8" > 0.675203)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" <= 0.152720) AND (t."X_6" <= 0.300945) AND (t."X_5" <= -0.587447) AND (t."X_8" <= -0.822272)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" <= 0.152720) AND (t."X_6" <= 0.300945) AND (t."X_5" <= -0.587447) AND (t."X_8" > -0.822272) AND (t."X_8" <= 0.391998)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" <= 0.152720) AND (t."X_6" <= 0.300945) AND (t."X_5" <= -0.587447) AND (t."X_8" > -0.822272) AND (t."X_8" > 0.391998)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" <= 0.152720) AND (t."X_6" <= 0.300945) AND (t."X_5" > -0.587447) AND (t."X_6" > -3.816267) AND (t."X_8" <= 0.735450)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" <= 0.152720) AND (t."X_6" <= 0.300945) AND (t."X_5" > -0.587447) AND (t."X_6" > -3.816267) AND (t."X_8" > 0.735450)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" > 0.152720) AND (t."X_8" > 0.199578) AND (t."X_7" <= 1.143113) AND (t."X_8" > 1.233072) AND (t."X_5" <= -0.311229)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" > 0.152720) AND (t."X_8" > 0.199578) AND (t."X_7" <= 1.143113) AND (t."X_8" > 1.233072) AND (t."X_5" > -0.311229)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" <= 0.152720) AND (t."X_6" <= 0.300945) AND (t."X_5" > -0.587447) AND (t."X_6" <= -3.816267) AND (t."X_6" <= -4.732001)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" <= 0.152720) AND (t."X_6" <= 0.300945) AND (t."X_5" > -0.587447) AND (t."X_6" <= -3.816267) AND (t."X_6" > -4.732001)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_6" > 1.674345) AND (t."X_7" <= 0.944780) AND (t."X_8" > -2.290895) AND (t."X_6" <= 2.502340)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" > 1.674345) AND (t."X_7" <= 0.944780) AND (t."X_8" > -2.290895) AND (t."X_6" > 2.502340)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" > 0.152720) AND (t."X_8" > 0.199578) AND (t."X_7" > 1.143113) AND (t."X_6" <= -1.486280)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_6" <= 1.674345) AND (t."X_7" > 0.152720) AND (t."X_8" > 0.199578) AND (t."X_7" > 1.143113) AND (t."X_6" > -1.486280)) THEN 44 ELSE NULL END AS "Leaf_44"
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
    SELECT 0 AS nid,  0.271484 AS "P_0", 0.275391 AS "P_1", 0.208984 AS "P_2", 0.244141 AS "P_3", 1 AS "D", 0.275391 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.296296 AS "P_0", 0.305011 AS "P_1", 0.191721 AS "P_2", 0.206972 AS "P_3", 1 AS "D", 0.305011 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.056604 AS "P_0", 0.018868 AS "P_1", 0.358491 AS "P_2", 0.566038 AS "P_3", 3 AS "D", 0.566038 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.083333 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.805556 AS "P_3", 3 AS "D", 0.805556 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.058824 AS "P_1", 0.882353 AS "P_2", 0.058824 AS "P_3", 2 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.376176 AS "P_0", 0.122257 AS "P_1", 0.216301 AS "P_2", 0.285266 AS "P_3", 0 AS "D", 0.376176 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.114286 AS "P_0", 0.721429 AS "P_1", 0.135714 AS "P_2", 0.028571 AS "P_3", 1 AS "D", 0.721429 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.175000 AS "P_0", 0.375000 AS "P_1", 0.400000 AS "P_2", 0.050000 AS "P_3", 2 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.090000 AS "P_0", 0.860000 AS "P_1", 0.030000 AS "P_2", 0.020000 AS "P_3", 1 AS "D", 0.860000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.153846 AS "P_0", 0.000000 AS "P_1", 0.307692 AS "P_2", 0.538462 AS "P_3", 3 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.043478 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.956522 AS "P_3", 3 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.206897 AS "P_0", 0.482759 AS "P_1", 0.310345 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.482759 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.090909 AS "P_0", 0.090909 AS "P_1", 0.636364 AS "P_2", 0.181818 AS "P_3", 2 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.266667 AS "P_0", 0.266667 AS "P_1", 0.466667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.466667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.142857 AS "P_0", 0.714286 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.308271 AS "P_0", 0.131579 AS "P_1", 0.251880 AS "P_2", 0.308271 AS "P_3", 0 AS "D", 0.308271 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.716981 AS "P_0", 0.075472 AS "P_1", 0.037736 AS "P_2", 0.169811 AS "P_3", 0 AS "D", 0.716981 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.571429 AS "P_0", 0.114286 AS "P_1", 0.057143 AS "P_2", 0.257143 AS "P_3", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.764706 AS "P_0", 0.000000 AS "P_1", 0.117647 AS "P_2", 0.117647 AS "P_3", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.388889 AS "P_0", 0.222222 AS "P_1", 0.000000 AS "P_2", 0.388889 AS "P_3", 0 AS "D", 0.388889 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.209302 AS "P_0", 0.697674 AS "P_1", 0.046512 AS "P_2", 0.046512 AS "P_3", 1 AS "D", 0.697674 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.982456 AS "P_1", 0.017544 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.982456 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.350000 AS "P_0", 0.550000 AS "P_1", 0.100000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.086957 AS "P_0", 0.826087 AS "P_1", 0.000000 AS "P_2", 0.086957 AS "P_3", 1 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.500000 AS "P_0", 0.300000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.523077 AS "P_0", 0.061538 AS "P_1", 0.215385 AS "P_2", 0.200000 AS "P_3", 0 AS "D", 0.523077 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.238806 AS "P_0", 0.154229 AS "P_1", 0.263682 AS "P_2", 0.343284 AS "P_3", 3 AS "D", 0.343284 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.285714 AS "P_0", 0.000000 AS "P_1", 0.642857 AS "P_2", 0.071429 AS "P_3", 2 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.588235 AS "P_0", 0.078431 AS "P_1", 0.098039 AS "P_2", 0.235294 AS "P_3", 0 AS "D", 0.588235 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.440000 AS "P_0", 0.040000 AS "P_1", 0.040000 AS "P_2", 0.480000 AS "P_3", 3 AS "D", 0.480000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.730769 AS "P_0", 0.115385 AS "P_1", 0.153846 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.730769 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.200000 AS "P_0", 0.050000 AS "P_1", 0.000000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.243094 AS "P_0", 0.165746 AS "P_1", 0.292818 AS "P_2", 0.298343 AS "P_3", 3 AS "D", 0.298343 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.205357 AS "P_0", 0.017857 AS "P_1", 0.419643 AS "P_2", 0.357143 AS "P_3", 2 AS "D", 0.419643 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.304348 AS "P_0", 0.405797 AS "P_1", 0.086957 AS "P_2", 0.202899 AS "P_3", 1 AS "D", 0.405797 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.181818 AS "P_0", 0.727273 AS "P_1", 0.000000 AS "P_2", 0.090909 AS "P_3", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.916667 AS "P_1", 0.000000 AS "P_2", 0.083333 AS "P_3", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.200000 AS "P_0", 0.100000 AS "P_1", 0.000000 AS "P_2", 0.700000 AS "P_3", 3 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.100000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.900000 AS "P_3", 3 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.900000 AS "P_1", 0.100000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_48", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" <= -0.485610) AND (t."X_8" > -0.118108) AND (t."X_0" > 1.844998) AND (t."X_1" <= -1.209055)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_1" <= -0.485610) AND (t."X_8" > -0.118108) AND (t."X_0" > 1.844998) AND (t."X_1" > -1.209055)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_1" <= -0.485610) AND (t."X_8" > -0.118108) AND (t."X_0" <= 1.844998) AND (t."X_8" > 0.872020)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_1" <= -0.485610) AND (t."X_8" > -0.118108) AND (t."X_0" <= 1.844998) AND (t."X_8" <= 0.872020) AND (t."X_8" > 0.580579)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_1" <= -0.485610) AND (t."X_8" > -0.118108) AND (t."X_0" <= 1.844998) AND (t."X_8" <= 0.872020) AND (t."X_8" <= 0.580579) AND (t."X_1" <= -1.407149)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_1" <= -0.485610) AND (t."X_8" > -0.118108) AND (t."X_0" <= 1.844998) AND (t."X_8" <= 0.872020) AND (t."X_8" <= 0.580579) AND (t."X_1" > -1.407149)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_1" <= -0.485610) AND (t."X_8" <= -0.118108) AND (t."X_7" <= -1.579857) AND (t."X_7" <= -1.889088)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_1" <= -0.485610) AND (t."X_8" <= -0.118108) AND (t."X_7" <= -1.579857) AND (t."X_7" > -1.889088)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_1" <= -0.485610) AND (t."X_8" <= -0.118108) AND (t."X_7" > -1.579857) AND (t."X_0" > 1.046566) AND (t."X_1" <= -1.897203)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_1" <= -0.485610) AND (t."X_8" <= -0.118108) AND (t."X_7" > -1.579857) AND (t."X_0" > 1.046566) AND (t."X_1" > -1.897203)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" > 0.138008) AND (t."X_1" <= 0.126755) AND (t."X_8" <= 0.241087)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" > 0.138008) AND (t."X_1" <= 0.126755) AND (t."X_8" > 0.241087) AND (t."X_7" <= -0.025799)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" > 0.138008) AND (t."X_1" <= 0.126755) AND (t."X_8" > 0.241087) AND (t."X_7" > -0.025799)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" <= 0.138008) AND (t."X_7" <= -0.060556) AND (t."X_8" > 0.179141) AND (t."X_1" > 1.123307) AND (t."X_7" <= -0.622441)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" <= 0.138008) AND (t."X_7" <= -0.060556) AND (t."X_8" > 0.179141) AND (t."X_1" > 1.123307) AND (t."X_7" > -0.622441)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" <= 0.138008) AND (t."X_7" <= -0.060556) AND (t."X_8" <= 0.179141) AND (t."X_9" <= -1.075000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" <= 0.138008) AND (t."X_7" <= -0.060556) AND (t."X_8" <= 0.179141) AND (t."X_9" > -1.075000) AND (t."X_9" <= 1.421118)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" <= 0.138008) AND (t."X_7" <= -0.060556) AND (t."X_8" <= 0.179141) AND (t."X_9" > -1.075000) AND (t."X_9" > 1.421118)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" <= 0.138008) AND (t."X_7" <= -0.060556) AND (t."X_8" > 0.179141) AND (t."X_1" <= 1.123307) AND (t."X_0" <= -0.578291)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" <= 0.138008) AND (t."X_7" <= -0.060556) AND (t."X_8" > 0.179141) AND (t."X_1" <= 1.123307) AND (t."X_0" > -0.578291)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" > 0.138008) AND (t."X_1" > 0.126755) AND (t."X_1" <= 0.392730)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" > 0.138008) AND (t."X_1" > 0.126755) AND (t."X_1" > 0.392730)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" <= 0.138008) AND (t."X_7" > -0.060556) AND (t."X_1" > 2.473984)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" <= 0.138008) AND (t."X_7" > -0.060556) AND (t."X_1" <= 2.473984) AND (t."X_8" <= 0.102889) AND (t."X_9" <= -0.313754)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" <= 0.138008) AND (t."X_7" > -0.060556) AND (t."X_1" <= 2.473984) AND (t."X_8" <= 0.102889) AND (t."X_9" > -0.313754)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" <= 0.138008) AND (t."X_7" > -0.060556) AND (t."X_1" <= 2.473984) AND (t."X_8" > 0.102889) AND (t."X_8" <= 1.199490)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_1" > -0.485610) AND (t."X_0" <= 0.138008) AND (t."X_7" > -0.060556) AND (t."X_1" <= 2.473984) AND (t."X_8" > 0.102889) AND (t."X_8" > 1.199490)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_1" <= -0.485610) AND (t."X_8" <= -0.118108) AND (t."X_7" > -1.579857) AND (t."X_0" <= 1.046566) AND (t."X_9" <= 1.023275)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_1" <= -0.485610) AND (t."X_8" <= -0.118108) AND (t."X_7" > -1.579857) AND (t."X_0" <= 1.046566) AND (t."X_9" > 1.023275)) THEN 56 ELSE NULL END AS "Leaf_56"
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
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.275391 AS "P_1", 0.218750 AS "P_2", 0.255859 AS "P_3", 1 AS "D", 0.275391 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.365714 AS "P_0", 0.131429 AS "P_1", 0.131429 AS "P_2", 0.371429 AS "P_3", 3 AS "D", 0.371429 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.189911 AS "P_0", 0.350148 AS "P_1", 0.264095 AS "P_2", 0.195846 AS "P_3", 1 AS "D", 0.350148 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.062500 AS "P_0", 0.000000 AS "P_1", 0.212500 AS "P_2", 0.725000 AS "P_3", 3 AS "D", 0.725000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.621053 AS "P_0", 0.242105 AS "P_1", 0.063158 AS "P_2", 0.073684 AS "P_3", 0 AS "D", 0.621053 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.820895 AS "P_0", 0.089552 AS "P_1", 0.014925 AS "P_2", 0.074627 AS "P_3", 0 AS "D", 0.820895 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.142857 AS "P_0", 0.607143 AS "P_1", 0.178571 AS "P_2", 0.071429 AS "P_3", 1 AS "D", 0.607143 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.166667 AS "P_0", 0.250000 AS "P_1", 0.416667 AS "P_2", 0.166667 AS "P_3", 2 AS "D", 0.416667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.612903 AS "P_0", 0.193548 AS "P_1", 0.032258 AS "P_2", 0.161290 AS "P_3", 0 AS "D", 0.612903 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.761905 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.238095 AS "P_3", 0 AS "D", 0.761905 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.300000 AS "P_0", 0.600000 AS "P_1", 0.100000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.478261 AS "P_2", 0.521739 AS "P_3", 3 AS "D", 0.521739 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.087719 AS "P_0", 0.000000 AS "P_1", 0.105263 AS "P_2", 0.807018 AS "P_3", 3 AS "D", 0.807018 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.727273 AS "P_2", 0.272727 AS "P_3", 2 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.032258 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.967742 AS "P_3", 3 AS "D", 0.967742 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.153846 AS "P_0", 0.000000 AS "P_1", 0.230769 AS "P_2", 0.615385 AS "P_3", 3 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.307692 AS "P_0", 0.000000 AS "P_1", 0.461538 AS "P_2", 0.230769 AS "P_3", 2 AS "D", 0.461538 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.215328 AS "P_0", 0.299270 AS "P_1", 0.251825 AS "P_2", 0.233577 AS "P_3", 1 AS "D", 0.299270 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.079365 AS "P_0", 0.571429 AS "P_1", 0.317460 AS "P_2", 0.031746 AS "P_3", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.340580 AS "P_0", 0.101449 AS "P_1", 0.137681 AS "P_2", 0.420290 AS "P_3", 3 AS "D", 0.420290 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.088235 AS "P_0", 0.500000 AS "P_1", 0.367647 AS "P_2", 0.044118 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.500000 AS "P_0", 0.059524 AS "P_1", 0.202381 AS "P_2", 0.238095 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.092593 AS "P_0", 0.166667 AS "P_1", 0.037037 AS "P_2", 0.703704 AS "P_3", 3 AS "D", 0.703704 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.135135 AS "P_0", 0.378378 AS "P_1", 0.486486 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.486486 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.846154 AS "P_1", 0.076923 AS "P_2", 0.076923 AS "P_3", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.217391 AS "P_0", 0.608696 AS "P_1", 0.173913 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.608696 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.416667 AS "P_0", 0.250000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.416667 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.346154 AS "P_1", 0.076923 AS "P_2", 0.576923 AS "P_3", 3 AS "D", 0.576923 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.178571 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.821429 AS "P_3", 3 AS "D", 0.821429 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.454545 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.545455 AS "P_3", 3 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.700000 AS "P_2", 0.100000 AS "P_3", 2 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.540541 AS "P_0", 0.067568 AS "P_1", 0.135135 AS "P_2", 0.256757 AS "P_3", 0 AS "D", 0.540541 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.629032 AS "P_0", 0.032258 AS "P_1", 0.080645 AS "P_2", 0.258065 AS "P_3", 0 AS "D", 0.629032 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.083333 AS "P_0", 0.250000 AS "P_1", 0.416667 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.416667 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.214286 AS "P_1", 0.071429 AS "P_2", 0.714286 AS "P_3", 3 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.083333 AS "P_2", 0.416667 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 0.733333 AS "P_1", 0.133333 AS "P_2", 0.133333 AS "P_3", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.042017 AS "P_0", 0.537815 AS "P_1", 0.378151 AS "P_2", 0.042017 AS "P_3", 1 AS "D", 0.537815 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.411765 AS "P_0", 0.235294 AS "P_1", 0.294118 AS "P_2", 0.058824 AS "P_3", 0 AS "D", 0.411765 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.020000 AS "P_0", 0.180000 AS "P_1", 0.780000 AS "P_2", 0.020000 AS "P_3", 2 AS "D", 0.780000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.057971 AS "P_0", 0.797101 AS "P_1", 0.086957 AS "P_2", 0.057971 AS "P_3", 1 AS "D", 0.797101 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.055556 AS "P_0", 0.333333 AS "P_1", 0.611111 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 0.093750 AS "P_1", 0.875000 AS "P_2", 0.031250 AS "P_3", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.027027 AS "P_0", 0.918919 AS "P_1", 0.054054 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.918919 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.093750 AS "P_0", 0.656250 AS "P_1", 0.125000 AS "P_2", 0.125000 AS "P_3", 1 AS "D", 0.656250 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.100000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.900000 AS "P_3", 3 AS "D", 0.900000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_11", t1."Leaf_12", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= -3.473968) AND (t."X_8" <= 1.980674)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" > -0.256445) AND (t."X_7" > 0.838815) AND (t."X_8" <= -0.352265) AND (t."X_2" <= 0.635774)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" > -0.256445) AND (t."X_7" > 0.838815) AND (t."X_8" <= -0.352265) AND (t."X_2" > 0.635774)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" > -0.256445) AND (t."X_7" <= 0.838815) AND (t."X_6" > 0.840902) AND (t."X_8" > -0.489550)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" > -0.256445) AND (t."X_7" <= 0.838815) AND (t."X_6" > 0.840902) AND (t."X_8" <= -0.489550) AND (t."X_2" <= -0.043014)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" > -0.256445) AND (t."X_7" <= 0.838815) AND (t."X_6" > 0.840902) AND (t."X_8" <= -0.489550) AND (t."X_2" > -0.043014)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" <= -0.256445) AND (t."X_6" <= -2.460639) AND (t."X_7" > -1.139661) AND (t."X_6" <= -2.878447)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" <= -0.256445) AND (t."X_6" <= -2.460639) AND (t."X_7" > -1.139661) AND (t."X_6" > -2.878447)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" <= -0.256445) AND (t."X_6" <= -2.460639) AND (t."X_7" <= -1.139661) AND (t."X_7" <= -1.746309)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" <= -0.256445) AND (t."X_6" <= -2.460639) AND (t."X_7" <= -1.139661) AND (t."X_7" > -1.746309)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" <= -0.256445) AND (t."X_6" > -2.460639) AND (t."X_2" <= -1.535775) AND (t."X_7" <= 0.471941)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" <= -0.256445) AND (t."X_6" > -2.460639) AND (t."X_2" <= -1.535775) AND (t."X_7" > 0.471941)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" > -0.256445) AND (t."X_7" <= 0.838815) AND (t."X_6" <= 0.840902) AND (t."X_2" <= -0.344943) AND (t."X_8" <= -0.853192)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" > -0.256445) AND (t."X_7" <= 0.838815) AND (t."X_6" <= 0.840902) AND (t."X_2" <= -0.344943) AND (t."X_8" > -0.853192)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" > -0.256445) AND (t."X_7" <= 0.838815) AND (t."X_6" <= 0.840902) AND (t."X_2" > -0.344943) AND (t."X_6" <= 0.295476)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" > -0.256445) AND (t."X_7" <= 0.838815) AND (t."X_6" <= 0.840902) AND (t."X_2" > -0.344943) AND (t."X_6" > 0.295476)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" <= -0.256445) AND (t."X_6" > -2.460639) AND (t."X_2" > -1.535775) AND (t."X_5" <= -1.796175)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" <= -0.256445) AND (t."X_6" > -2.460639) AND (t."X_2" > -1.535775) AND (t."X_5" > -1.796175) AND (t."X_7" <= -0.060556)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" <= -0.256445) AND (t."X_6" > -2.460639) AND (t."X_2" > -1.535775) AND (t."X_5" > -1.796175) AND (t."X_7" > -0.060556)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_6" <= -3.473968) AND (t."X_8" > 1.980674) AND (t."X_8" <= 2.512606)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" <= -3.473968) AND (t."X_8" > 1.980674) AND (t."X_8" > 2.512606)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" > -0.256445) AND (t."X_7" > 0.838815) AND (t."X_8" > -0.352265) AND (t."X_9" <= 0.124427)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_6" > -3.473968) AND (t."X_6" > -0.256445) AND (t."X_7" > 0.838815) AND (t."X_8" > -0.352265) AND (t."X_9" > 0.124427)) THEN 44 ELSE NULL END AS "Leaf_44"
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
    SELECT 0 AS nid,  0.289062 AS "P_0", 0.296875 AS "P_1", 0.210938 AS "P_2", 0.203125 AS "P_3", 1 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.222222 AS "P_0", 0.083333 AS "P_1", 0.055556 AS "P_2", 0.638889 AS "P_3", 3 AS "D", 0.638889 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.294118 AS "P_0", 0.313025 AS "P_1", 0.222689 AS "P_2", 0.170168 AS "P_3", 1 AS "D", 0.313025 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.400000 AS "P_0", 0.066667 AS "P_1", 0.133333 AS "P_2", 0.400000 AS "P_3", 0 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.095238 AS "P_0", 0.095238 AS "P_1", 0.000000 AS "P_2", 0.809524 AS "P_3", 3 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.248175 AS "P_0", 0.416058 AS "P_1", 0.204380 AS "P_2", 0.131387 AS "P_3", 1 AS "D", 0.416058 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.356436 AS "P_0", 0.173267 AS "P_1", 0.247525 AS "P_2", 0.222772 AS "P_3", 0 AS "D", 0.356436 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.496504 AS "P_0", 0.027972 AS "P_1", 0.160839 AS "P_2", 0.314685 AS "P_3", 0 AS "D", 0.496504 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.016949 AS "P_0", 0.525424 AS "P_1", 0.457627 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.525424 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.032258 AS "P_0", 0.129032 AS "P_1", 0.838710 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.838710 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.964286 AS "P_1", 0.035714 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.071429 AS "P_0", 0.285714 AS "P_1", 0.642857 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.644737 AS "P_0", 0.013158 AS "P_1", 0.171053 AS "P_2", 0.171053 AS "P_3", 0 AS "D", 0.644737 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.328358 AS "P_0", 0.044776 AS "P_1", 0.149254 AS "P_2", 0.477612 AS "P_3", 3 AS "D", 0.477612 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.169811 AS "P_0", 0.056604 AS "P_1", 0.188679 AS "P_2", 0.584906 AS "P_3", 3 AS "D", 0.584906 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.928571 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.071429 AS "P_3", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.148148 AS "P_0", 0.111111 AS "P_1", 0.296296 AS "P_2", 0.444444 AS "P_3", 3 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.192308 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.730769 AS "P_3", 3 AS "D", 0.730769 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.218750 AS "P_1", 0.156250 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.171429 AS "P_0", 0.476190 AS "P_1", 0.219048 AS "P_2", 0.133333 AS "P_3", 1 AS "D", 0.476190 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.156250 AS "P_2", 0.093750 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.250000 AS "P_0", 0.437500 AS "P_1", 0.156250 AS "P_2", 0.156250 AS "P_3", 1 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.187500 AS "P_0", 0.687500 AS "P_1", 0.062500 AS "P_2", 0.062500 AS "P_3", 1 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.312500 AS "P_0", 0.187500 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.555556 AS "P_0", 0.000000 AS "P_1", 0.277778 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.863636 AS "P_1", 0.045455 AS "P_2", 0.090909 AS "P_3", 1 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.191489 AS "P_0", 0.430851 AS "P_1", 0.239362 AS "P_2", 0.138298 AS "P_3", 1 AS "D", 0.430851 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.727273 AS "P_1", 0.090909 AS "P_2", 0.181818 AS "P_3", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.518519 AS "P_0", 0.000000 AS "P_1", 0.148148 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.518519 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.714286 AS "P_0", 0.020408 AS "P_1", 0.183673 AS "P_2", 0.081633 AS "P_3", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.785714 AS "P_0", 0.000000 AS "P_1", 0.214286 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.230769 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.692308 AS "P_3", 3 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.538462 AS "P_0", 0.038462 AS "P_1", 0.269231 AS "P_2", 0.153846 AS "P_3", 0 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.913043 AS "P_0", 0.000000 AS "P_1", 0.086957 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.200000 AS "P_0", 0.100000 AS "P_1", 0.700000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.191011 AS "P_0", 0.449438 AS "P_1", 0.213483 AS "P_2", 0.146067 AS "P_3", 1 AS "D", 0.449438 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.330000 AS "P_0", 0.130000 AS "P_1", 0.340000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.340000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.012821 AS "P_0", 0.858974 AS "P_1", 0.051282 AS "P_2", 0.076923 AS "P_3", 1 AS "D", 0.858974 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.181818 AS "P_1", 0.000000 AS "P_2", 0.818182 AS "P_3", 3 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.900000 AS "P_1", 0.100000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
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