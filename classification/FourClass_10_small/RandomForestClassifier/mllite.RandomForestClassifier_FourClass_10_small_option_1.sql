WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= -1.197550)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.482324) AND (t."X_7" > 0.935844)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.482324) AND (t."X_7" <= 0.935844) AND (t."X_4" <= -0.076646)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.482324) AND (t."X_7" <= 0.935844) AND (t."X_4" > -0.076646) AND (t."X_8" <= 1.061889)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.482324) AND (t."X_7" <= 0.935844) AND (t."X_4" > -0.076646) AND (t."X_8" > 1.061889) AND (t."X_2" <= 0.893575)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.482324) AND (t."X_7" <= 0.935844) AND (t."X_4" > -0.076646) AND (t."X_8" > 1.061889) AND (t."X_2" > 0.893575)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" > 1.417404)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" <= 1.417404) AND (t."X_7" <= -0.904246) AND (t."X_5" <= -0.679524)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" <= 1.417404) AND (t."X_7" <= -0.904246) AND (t."X_5" > -0.679524) AND (t."X_2" <= -1.473744)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" <= 1.417404) AND (t."X_7" <= -0.904246) AND (t."X_5" > -0.679524) AND (t."X_2" > -1.473744)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" <= 1.417404) AND (t."X_7" > -0.904246) AND (t."X_7" <= -0.048285)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" <= 1.417404) AND (t."X_7" > -0.904246) AND (t."X_7" > -0.048285) AND (t."X_8" <= -0.408378)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" <= 1.417404) AND (t."X_7" > -0.904246) AND (t."X_7" > -0.048285) AND (t."X_8" > -0.408378)) THEN 24 ELSE NULL END AS Leaf_24
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.203125 AS "P_0", 0.250000 AS "P_1", 0.281250 AS "P_2", 0.265625 AS "P_3", 2 AS "D", 0.281250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.224138 AS "P_0", 0.172414 AS "P_1", 0.310345 AS "P_2", 0.293103 AS "P_3", 2 AS "D", 0.310345 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.243243 AS "P_0", 0.081081 AS "P_1", 0.486486 AS "P_2", 0.189189 AS "P_3", 2 AS "D", 0.486486 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.190476 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.476190 AS "P_3", 3 AS "D", 0.476190 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.250000 AS "P_0", 0.125000 AS "P_1", 0.000000 AS "P_2", 0.625000 AS "P_3", 3 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.281250 AS "P_0", 0.093750 AS "P_1", 0.562500 AS "P_2", 0.062500 AS "P_3", 2 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.571429 AS "P_0", 0.000000 AS "P_1", 0.357143 AS "P_2", 0.071429 AS "P_3", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.055556 AS "P_0", 0.166667 AS "P_1", 0.722222 AS "P_2", 0.055556 AS "P_3", 2 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.714286 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.833333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.100000 AS "P_0", 0.300000 AS "P_1", 0.500000 AS "P_2", 0.100000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.142857 AS "P_0", 0.142857 AS "P_1", 0.714286 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.666667 AS "DP"
  ) AS "Values"),
"DT_output_0" AS 
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" <= -0.324583) AND (t."X_7" <= -1.433329)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" <= -0.324583) AND (t."X_7" > -1.433329)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_7" > -0.420942) AND (t."X_7" > 1.550227) AND (t."X_4" <= -0.348138)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_7" > -0.420942) AND (t."X_7" > 1.550227) AND (t."X_4" > -0.348138)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_7" > -0.420942) AND (t."X_7" <= 1.550227) AND (t."X_8" <= -0.005190) AND (t."X_9" <= 0.360618)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_7" > -0.420942) AND (t."X_7" <= 1.550227) AND (t."X_8" <= -0.005190) AND (t."X_9" > 0.360618)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_7" > -0.420942) AND (t."X_7" <= 1.550227) AND (t."X_8" > -0.005190) AND (t."X_8" <= 0.727674)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_7" > -0.420942) AND (t."X_7" <= 1.550227) AND (t."X_8" > -0.005190) AND (t."X_8" > 0.727674) AND (t."X_8" <= 1.424160)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_7" > -0.420942) AND (t."X_7" <= 1.550227) AND (t."X_8" > -0.005190) AND (t."X_8" > 0.727674) AND (t."X_8" > 1.424160)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" > 1.395965) AND (t."X_9" <= -0.188248)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" > 1.395965) AND (t."X_9" > -0.188248)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" <= 1.395965) AND (t."X_7" > -0.760417) AND (t."X_8" <= -0.398367)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" <= 1.395965) AND (t."X_7" > -0.760417) AND (t."X_8" > -0.398367)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" <= 1.395965) AND (t."X_7" <= -0.760417) AND (t."X_4" <= -1.005848) AND (t."X_4" <= -1.722364)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" <= 1.395965) AND (t."X_7" <= -0.760417) AND (t."X_4" <= -1.005848) AND (t."X_4" > -1.722364)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" <= 1.395965) AND (t."X_7" <= -0.760417) AND (t."X_4" > -1.005848) AND (t."X_9" <= 0.478201)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" <= 1.395965) AND (t."X_7" <= -0.760417) AND (t."X_4" > -1.005848) AND (t."X_9" > 0.478201)) THEN 32 ELSE NULL END AS Leaf_32
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.234375 AS "P_1", 0.250000 AS "P_2", 0.265625 AS "P_3", 3 AS "D", 0.265625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.351351 AS "P_0", 0.081081 AS "P_1", 0.108108 AS "P_2", 0.459459 AS "P_3", 3 AS "D", 0.459459 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.111111 AS "P_0", 0.444444 AS "P_1", 0.444444 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.727273 AS "P_0", 0.000000 AS "P_1", 0.272727 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.192308 AS "P_0", 0.115385 AS "P_1", 0.038462 AS "P_2", 0.653846 AS "P_3", 3 AS "D", 0.653846 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.142857 AS "P_0", 0.523810 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.523810 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.833333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.125000 AS "P_1", 0.875000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.357143 AS "P_0", 0.071429 AS "P_1", 0.071429 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.555556 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_1" AS 
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_7", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 1.237788) AND (t."X_6" > 4.532662)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_6" > 1.237788) AND (t."X_6" <= 4.532662) AND (t."X_5" > 1.274674)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_6" > 1.237788) AND (t."X_6" <= 4.532662) AND (t."X_5" <= 1.274674) AND (t."X_7" <= 0.019687)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_6" > 1.237788) AND (t."X_6" <= 4.532662) AND (t."X_5" <= 1.274674) AND (t."X_7" > 0.019687) AND (t."X_9" > 0.035457)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_6" > 1.237788) AND (t."X_6" <= 4.532662) AND (t."X_5" <= 1.274674) AND (t."X_7" > 0.019687) AND (t."X_9" <= 0.035457) AND (t."X_5" <= 0.344358)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_6" > 1.237788) AND (t."X_6" <= 4.532662) AND (t."X_5" <= 1.274674) AND (t."X_7" > 0.019687) AND (t."X_9" <= 0.035457) AND (t."X_5" > 0.344358)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" <= -0.912762) AND (t."X_5" > -0.211959) AND (t."X_5" <= 0.739337)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" <= -0.912762) AND (t."X_5" > -0.211959) AND (t."X_5" > 0.739337)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" <= -0.912762) AND (t."X_5" <= -0.211959) AND (t."X_9" > -0.101966)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" <= -0.912762) AND (t."X_5" <= -0.211959) AND (t."X_9" <= -0.101966) AND (t."X_9" <= -0.508968)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" <= -0.912762) AND (t."X_5" <= -0.211959) AND (t."X_9" <= -0.101966) AND (t."X_9" > -0.508968) AND (t."X_5" <= -0.655743)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" <= -0.912762) AND (t."X_5" <= -0.211959) AND (t."X_9" <= -0.101966) AND (t."X_9" > -0.508968) AND (t."X_5" > -0.655743)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" <= 0.131521) AND (t."X_8" <= -0.873679)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" <= 0.131521) AND (t."X_8" > -0.873679)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" > 0.131521) AND (t."X_7" <= -0.320424) AND (t."X_5" <= -0.178814)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" > 0.131521) AND (t."X_7" <= -0.320424) AND (t."X_5" > -0.178814)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" > 0.131521) AND (t."X_7" > -0.320424) AND (t."X_5" <= 0.659441) AND (t."X_9" <= 0.255395)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" > 0.131521) AND (t."X_7" > -0.320424) AND (t."X_5" <= 0.659441) AND (t."X_9" > 0.255395)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" > 0.131521) AND (t."X_7" > -0.320424) AND (t."X_5" > 0.659441) AND (t."X_9" <= 0.452830)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" > 0.131521) AND (t."X_7" > -0.320424) AND (t."X_5" > 0.659441) AND (t."X_9" > 0.452830)) THEN 38 ELSE NULL END AS Leaf_38
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.281250 AS "P_0", 0.296875 AS "P_1", 0.187500 AS "P_2", 0.234375 AS "P_3", 1 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.354167 AS "P_0", 0.375000 AS "P_1", 0.125000 AS "P_2", 0.145833 AS "P_3", 1 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.062500 AS "P_0", 0.062500 AS "P_1", 0.375000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.076923 AS "P_0", 0.076923 AS "P_1", 0.230769 AS "P_2", 0.615385 AS "P_3", 3 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.142857 AS "P_0", 0.142857 AS "P_1", 0.428571 AS "P_2", 0.285714 AS "P_3", 2 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.200000 AS "P_0", 0.200000 AS "P_1", 0.600000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.611111 AS "P_0", 0.000000 AS "P_1", 0.055556 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.200000 AS "P_0", 0.600000 AS "P_1", 0.166667 AS "P_2", 0.033333 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.818182 AS "P_0", 0.000000 AS "P_1", 0.090909 AS "P_2", 0.090909 AS "P_3", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.285714 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.714286 AS "P_3", 3 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.909091 AS "P_1", 0.090909 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.315789 AS "P_0", 0.421053 AS "P_1", 0.210526 AS "P_2", 0.052632 AS "P_3", 1 AS "D", 0.421053 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.400000 AS "P_0", 0.466667 AS "P_1", 0.066667 AS "P_2", 0.066667 AS "P_3", 1 AS "D", 0.466667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.625000 AS "P_0", 0.125000 AS "P_1", 0.125000 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
  ) AS "Values"),
"DT_output_2" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" <= -1.737743) AND (t."X_9" <= 0.295791)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_1" <= -1.737743) AND (t."X_9" > 0.295791)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" <= -0.049361) AND (t."X_7" <= -0.924639) AND (t."X_8" <= -1.576327)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" <= -0.049361) AND (t."X_7" <= -0.924639) AND (t."X_8" > -1.576327)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" <= -0.049361) AND (t."X_7" > -0.924639) AND (t."X_0" <= -0.398555)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" <= -0.049361) AND (t."X_7" > -0.924639) AND (t."X_0" > -0.398555)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" > 1.289919)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" > 0.490654) AND (t."X_7" <= -1.009942) AND (t."X_1" <= -0.073311)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" > 0.490654) AND (t."X_7" <= -1.009942) AND (t."X_1" > -0.073311)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" <= 0.490654) AND (t."X_1" <= 0.375206) AND (t."X_9" <= 0.184222)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" <= 0.490654) AND (t."X_1" <= 0.375206) AND (t."X_9" > 0.184222)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" <= 0.490654) AND (t."X_1" > 0.375206) AND (t."X_7" <= -0.868772)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" <= 0.490654) AND (t."X_1" > 0.375206) AND (t."X_7" > -0.868772)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" > 0.490654) AND (t."X_7" > -1.009942) AND (t."X_8" <= 1.075905)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" > 0.490654) AND (t."X_7" > -1.009942) AND (t."X_8" > 1.075905)) THEN 28 ELSE NULL END AS Leaf_28
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.328125 AS "P_1", 0.203125 AS "P_2", 0.218750 AS "P_3", 1 AS "D", 0.328125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.777778 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.222222 AS "P_3", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.163636 AS "P_0", 0.381818 AS "P_1", 0.236364 AS "P_2", 0.218182 AS "P_3", 1 AS "D", 0.381818 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.058824 AS "P_0", 0.764706 AS "P_1", 0.117647 AS "P_2", 0.058824 AS "P_3", 1 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.210526 AS "P_0", 0.210526 AS "P_1", 0.289474 AS "P_2", 0.289474 AS "P_3", 2 AS "D", 0.289474 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.928571 AS "P_1", 0.000000 AS "P_2", 0.071429 AS "P_3", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.228571 AS "P_0", 0.228571 AS "P_1", 0.228571 AS "P_2", 0.314286 AS "P_3", 3 AS "D", 0.314286 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.300000 AS "P_0", 0.000000 AS "P_1", 0.400000 AS "P_2", 0.300000 AS "P_3", 2 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.133333 AS "P_0", 0.533333 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.888889 AS "P_1", 0.000000 AS "P_2", 0.111111 AS "P_3", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.600000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_3" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_8", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= -3.300494) AND (t."X_9" <= -0.870245)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_6" <= -3.300494) AND (t."X_9" > -0.870245)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" <= 0.180796) AND (t."X_7" > 1.136450)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" <= 0.808082) AND (t."X_2" > 1.415933)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" > 0.808082) AND (t."X_7" <= -0.747422) AND (t."X_9" <= 0.464710)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" > 0.808082) AND (t."X_7" <= -0.747422) AND (t."X_9" > 0.464710)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" > 0.808082) AND (t."X_7" > -0.747422) AND (t."X_6" > 0.128879)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" > 0.808082) AND (t."X_7" > -0.747422) AND (t."X_6" <= 0.128879) AND (t."X_8" <= 0.997267)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" > 0.808082) AND (t."X_7" > -0.747422) AND (t."X_6" <= 0.128879) AND (t."X_8" > 0.997267)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" <= 0.808082) AND (t."X_2" <= 1.415933) AND (t."X_5" > 0.717880)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" <= 0.180796) AND (t."X_7" <= 1.136450) AND (t."X_9" > 1.277021)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" <= 0.808082) AND (t."X_2" <= 1.415933) AND (t."X_5" <= 0.717880) AND (t."X_6" <= 2.036839)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" <= 0.808082) AND (t."X_2" <= 1.415933) AND (t."X_5" <= 0.717880) AND (t."X_6" > 2.036839)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" <= 0.180796) AND (t."X_7" <= 1.136450) AND (t."X_9" <= 1.277021) AND (t."X_8" <= -0.129333) AND (t."X_6" <= 2.579912)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" <= 0.180796) AND (t."X_7" <= 1.136450) AND (t."X_9" <= 1.277021) AND (t."X_8" <= -0.129333) AND (t."X_6" > 2.579912)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" <= 0.180796) AND (t."X_7" <= 1.136450) AND (t."X_9" <= 1.277021) AND (t."X_8" > -0.129333) AND (t."X_9" <= -0.615548)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" <= 0.180796) AND (t."X_7" <= 1.136450) AND (t."X_9" <= 1.277021) AND (t."X_8" > -0.129333) AND (t."X_9" > -0.615548)) THEN 32 ELSE NULL END AS Leaf_32
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.343750 AS "P_0", 0.187500 AS "P_1", 0.187500 AS "P_2", 0.281250 AS "P_3", 0 AS "D", 0.343750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.888889 AS "P_3", 3 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.400000 AS "P_0", 0.218182 AS "P_1", 0.200000 AS "P_2", 0.181818 AS "P_3", 0 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.620690 AS "P_0", 0.206897 AS "P_1", 0.137931 AS "P_2", 0.034483 AS "P_3", 0 AS "D", 0.620690 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.153846 AS "P_0", 0.230769 AS "P_1", 0.269231 AS "P_2", 0.346154 AS "P_3", 3 AS "D", 0.346154 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.750000 AS "P_0", 0.041667 AS "P_1", 0.166667 AS "P_2", 0.041667 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.363636 AS "P_1", 0.545455 AS "P_2", 0.090909 AS "P_3", 2 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.266667 AS "P_0", 0.133333 AS "P_1", 0.066667 AS "P_2", 0.533333 AS "P_3", 3 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.125000 AS "P_1", 0.750000 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.100000 AS "P_2", 0.700000 AS "P_3", 3 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.818182 AS "P_0", 0.045455 AS "P_1", 0.090909 AS "P_2", 0.045455 AS "P_3", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.727273 AS "P_0", 0.000000 AS "P_1", 0.181818 AS "P_2", 0.090909 AS "P_3", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_4" AS 
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
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_4" AS t
  ) AS scu
)
SELECT
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
