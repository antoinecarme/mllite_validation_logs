WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "FourClass_10_small" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_17", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= -1.197550)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.482324) AND (t."X_7" > 0.935844)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.482324) AND (t."X_7" <= 0.935844) AND (t."X_4" <= -0.076646)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.482324) AND (t."X_7" <= 0.935844) AND (t."X_4" > -0.076646) AND (t."X_8" <= 1.061889)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.482324) AND (t."X_7" <= 0.935844) AND (t."X_4" > -0.076646) AND (t."X_8" > 1.061889) AND (t."X_2" <= 0.893575)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.482324) AND (t."X_7" <= 0.935844) AND (t."X_4" > -0.076646) AND (t."X_8" > 1.061889) AND (t."X_2" > 0.893575)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" > 1.417404)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" <= 1.417404) AND (t."X_7" <= -0.904246) AND (t."X_5" <= -0.679524)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" <= 1.417404) AND (t."X_7" <= -0.904246) AND (t."X_5" > -0.679524) AND (t."X_2" <= -1.473744)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" <= 1.417404) AND (t."X_7" <= -0.904246) AND (t."X_5" > -0.679524) AND (t."X_2" > -1.473744) AND (t."X_9" <= 0.823603)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" <= 1.417404) AND (t."X_7" <= -0.904246) AND (t."X_5" > -0.679524) AND (t."X_2" > -1.473744) AND (t."X_9" > 0.823603)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" <= 1.417404) AND (t."X_7" > -0.904246) AND (t."X_7" <= -0.048285)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" <= 1.417404) AND (t."X_7" > -0.904246) AND (t."X_7" > -0.048285) AND (t."X_4" > 0.950838)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" <= 1.417404) AND (t."X_7" > -0.904246) AND (t."X_7" > -0.048285) AND (t."X_4" <= 0.950838) AND (t."X_8" <= -1.457730)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" <= 1.417404) AND (t."X_7" > -0.904246) AND (t."X_7" > -0.048285) AND (t."X_4" <= 0.950838) AND (t."X_8" > -1.457730) AND (t."X_5" > 0.808082)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" <= 1.417404) AND (t."X_7" > -0.904246) AND (t."X_7" > -0.048285) AND (t."X_4" <= 0.950838) AND (t."X_8" > -1.457730) AND (t."X_5" <= 0.808082) AND (t."X_8" <= -1.084020)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.482324) AND (t."X_4" <= 1.417404) AND (t."X_7" > -0.904246) AND (t."X_7" > -0.048285) AND (t."X_4" <= 0.950838) AND (t."X_8" > -1.457730) AND (t."X_5" <= 0.808082) AND (t."X_8" > -1.084020)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.100000 AS "P_0", 0.300000 AS "P_1", 0.500000 AS "P_2", 0.100000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.142857 AS "P_0", 0.428571 AS "P_1", 0.285714 AS "P_2", 0.142857 AS "P_3", 1 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.200000 AS "P_0", 0.600000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" <= -0.324583) AND (t."X_7" <= -1.433329)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" <= -0.324583) AND (t."X_7" > -1.433329)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_7" > -0.420942) AND (t."X_7" > 1.550227) AND (t."X_4" <= -0.348138)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_7" > -0.420942) AND (t."X_7" > 1.550227) AND (t."X_4" > -0.348138)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_7" > -0.420942) AND (t."X_7" <= 1.550227) AND (t."X_8" <= -0.005190) AND (t."X_9" <= 0.360618)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_7" > -0.420942) AND (t."X_7" <= 1.550227) AND (t."X_8" <= -0.005190) AND (t."X_9" > 0.360618)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_7" > -0.420942) AND (t."X_7" <= 1.550227) AND (t."X_8" > -0.005190) AND (t."X_8" <= 0.727674)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_7" > -0.420942) AND (t."X_7" <= 1.550227) AND (t."X_8" > -0.005190) AND (t."X_8" > 0.727674) AND (t."X_8" <= 1.424160)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_7" > -0.420942) AND (t."X_7" <= 1.550227) AND (t."X_8" > -0.005190) AND (t."X_8" > 0.727674) AND (t."X_8" > 1.424160)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" > 1.395965) AND (t."X_9" <= -0.188248)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" > 1.395965) AND (t."X_9" > -0.188248)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" <= 1.395965) AND (t."X_7" > -0.760417) AND (t."X_8" <= -0.398367)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" <= 1.395965) AND (t."X_7" > -0.760417) AND (t."X_8" > -0.398367)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" <= 1.395965) AND (t."X_7" <= -0.760417) AND (t."X_4" <= -1.005848) AND (t."X_4" <= -1.722364)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" <= 1.395965) AND (t."X_7" <= -0.760417) AND (t."X_4" <= -1.005848) AND (t."X_4" > -1.722364)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" <= 1.395965) AND (t."X_7" <= -0.760417) AND (t."X_4" > -1.005848) AND (t."X_9" > 0.478201)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" <= 1.395965) AND (t."X_7" <= -0.760417) AND (t."X_4" > -1.005848) AND (t."X_9" <= 0.478201) AND (t."X_7" <= -2.306616)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_7" <= -0.420942) AND (t."X_9" > -0.324583) AND (t."X_8" <= 1.395965) AND (t."X_7" <= -0.760417) AND (t."X_4" > -1.005848) AND (t."X_9" <= 0.478201) AND (t."X_7" > -2.306616)) THEN 34 ELSE NULL END AS "Leaf_34"
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
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_7", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 1.237788) AND (t."X_6" > 4.532662)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_6" > 1.237788) AND (t."X_6" <= 4.532662) AND (t."X_5" > 1.274674)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" > 1.237788) AND (t."X_6" <= 4.532662) AND (t."X_5" <= 1.274674) AND (t."X_7" <= 0.019687)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_6" > 1.237788) AND (t."X_6" <= 4.532662) AND (t."X_5" <= 1.274674) AND (t."X_7" > 0.019687) AND (t."X_9" > 0.035457)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_6" > 1.237788) AND (t."X_6" <= 4.532662) AND (t."X_5" <= 1.274674) AND (t."X_7" > 0.019687) AND (t."X_9" <= 0.035457) AND (t."X_5" <= 0.344358)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" > 1.237788) AND (t."X_6" <= 4.532662) AND (t."X_5" <= 1.274674) AND (t."X_7" > 0.019687) AND (t."X_9" <= 0.035457) AND (t."X_5" > 0.344358)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" <= -0.912762) AND (t."X_5" > -0.211959) AND (t."X_5" <= 0.739337)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" <= -0.912762) AND (t."X_5" > -0.211959) AND (t."X_5" > 0.739337)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" <= -0.912762) AND (t."X_5" <= -0.211959) AND (t."X_9" > -0.101966)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" <= -0.912762) AND (t."X_5" <= -0.211959) AND (t."X_9" <= -0.101966) AND (t."X_9" <= -0.508968)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" <= -0.912762) AND (t."X_5" <= -0.211959) AND (t."X_9" <= -0.101966) AND (t."X_9" > -0.508968) AND (t."X_5" <= -0.655743)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" <= -0.912762) AND (t."X_5" <= -0.211959) AND (t."X_9" <= -0.101966) AND (t."X_9" > -0.508968) AND (t."X_5" > -0.655743)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" <= 0.131521) AND (t."X_8" <= -0.873679)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" <= 0.131521) AND (t."X_8" > -0.873679)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" > 0.131521) AND (t."X_7" <= -0.320424) AND (t."X_5" <= -0.178814)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" > 0.131521) AND (t."X_7" <= -0.320424) AND (t."X_5" > -0.178814)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" > 0.131521) AND (t."X_7" > -0.320424) AND (t."X_5" <= 0.659441) AND (t."X_9" <= 0.255395)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" > 0.131521) AND (t."X_7" > -0.320424) AND (t."X_5" <= 0.659441) AND (t."X_9" > 0.255395)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" > 0.131521) AND (t."X_7" > -0.320424) AND (t."X_5" > 0.659441) AND (t."X_9" <= 0.452830) AND (t."X_7" <= 0.353518)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" > 0.131521) AND (t."X_7" > -0.320424) AND (t."X_5" > 0.659441) AND (t."X_9" <= 0.452830) AND (t."X_7" > 0.353518)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" > 0.131521) AND (t."X_7" > -0.320424) AND (t."X_5" > 0.659441) AND (t."X_9" > 0.452830) AND (t."X_9" <= 1.483396)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" <= 1.237788) AND (t."X_7" > -0.912762) AND (t."X_9" > 0.131521) AND (t."X_7" > -0.320424) AND (t."X_5" > 0.659441) AND (t."X_9" > 0.452830) AND (t."X_9" > 1.483396)) THEN 42 ELSE NULL END AS "Leaf_42"
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
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" <= -1.737743) AND (t."X_9" <= 0.295791)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_1" <= -1.737743) AND (t."X_9" > 0.295791)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" <= -0.049361) AND (t."X_7" <= -0.924639) AND (t."X_8" <= -1.576327)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" <= -0.049361) AND (t."X_7" <= -0.924639) AND (t."X_8" > -1.576327)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" <= -0.049361) AND (t."X_7" > -0.924639) AND (t."X_0" <= -0.398555)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" <= -0.049361) AND (t."X_7" > -0.924639) AND (t."X_0" > -0.398555)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" > 1.289919)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" > 0.490654) AND (t."X_7" <= -1.009942) AND (t."X_1" <= -0.073311)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" > 0.490654) AND (t."X_7" <= -1.009942) AND (t."X_1" > -0.073311)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" <= 0.490654) AND (t."X_1" <= 0.375206) AND (t."X_9" <= 0.184222)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" <= 0.490654) AND (t."X_1" > 0.375206) AND (t."X_7" <= -0.868772)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" <= 0.490654) AND (t."X_1" <= 0.375206) AND (t."X_9" > 0.184222) AND (t."X_9" <= 0.924242)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" <= 0.490654) AND (t."X_1" <= 0.375206) AND (t."X_9" > 0.184222) AND (t."X_9" > 0.924242) AND (t."X_9" <= 1.304185)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" <= 0.490654) AND (t."X_1" <= 0.375206) AND (t."X_9" > 0.184222) AND (t."X_9" > 0.924242) AND (t."X_9" > 1.304185)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" <= 0.490654) AND (t."X_1" > 0.375206) AND (t."X_7" > -0.868772) AND (t."X_9" > 0.886480)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" <= 0.490654) AND (t."X_1" > 0.375206) AND (t."X_7" > -0.868772) AND (t."X_9" <= 0.886480) AND (t."X_9" <= 0.452830)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" <= 0.490654) AND (t."X_1" > 0.375206) AND (t."X_7" > -0.868772) AND (t."X_9" <= 0.886480) AND (t."X_9" > 0.452830)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" > 0.490654) AND (t."X_7" > -1.009942) AND (t."X_8" > 1.075905)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" > 0.490654) AND (t."X_7" > -1.009942) AND (t."X_8" <= 1.075905) AND (t."X_1" <= 0.787117)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_1" > -1.737743) AND (t."X_9" > -0.049361) AND (t."X_0" <= 1.289919) AND (t."X_8" > 0.490654) AND (t."X_7" > -1.009942) AND (t."X_8" <= 1.075905) AND (t."X_1" > 0.787117)) THEN 38 ELSE NULL END AS "Leaf_38"
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
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_8", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= -3.300494) AND (t."X_9" <= -0.870245)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_6" <= -3.300494) AND (t."X_9" > -0.870245)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" <= 0.180796) AND (t."X_7" > 1.136450)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" <= 0.808082) AND (t."X_2" > 1.415933)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" > 0.808082) AND (t."X_7" <= -0.747422) AND (t."X_9" <= 0.464710)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" > 0.808082) AND (t."X_7" <= -0.747422) AND (t."X_9" > 0.464710)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" > 0.808082) AND (t."X_7" > -0.747422) AND (t."X_6" > 0.128879)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" > 0.808082) AND (t."X_7" > -0.747422) AND (t."X_6" <= 0.128879) AND (t."X_8" > 0.997267)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" > 0.808082) AND (t."X_7" > -0.747422) AND (t."X_6" <= 0.128879) AND (t."X_8" <= 0.997267) AND (t."X_2" <= 0.332792)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" > 0.808082) AND (t."X_7" > -0.747422) AND (t."X_6" <= 0.128879) AND (t."X_8" <= 0.997267) AND (t."X_2" > 0.332792)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" <= 0.808082) AND (t."X_2" <= 1.415933) AND (t."X_5" > 0.717880)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" <= 0.808082) AND (t."X_2" <= 1.415933) AND (t."X_5" <= 0.717880) AND (t."X_8" <= -1.893399)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" > 0.180796) AND (t."X_5" <= 0.808082) AND (t."X_2" <= 1.415933) AND (t."X_5" <= 0.717880) AND (t."X_8" > -1.893399)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" <= 0.180796) AND (t."X_7" <= 1.136450) AND (t."X_9" > 1.277021)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" <= 0.180796) AND (t."X_7" <= 1.136450) AND (t."X_9" <= 1.277021) AND (t."X_6" > 3.065367)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" <= 0.180796) AND (t."X_7" <= 1.136450) AND (t."X_9" <= 1.277021) AND (t."X_6" <= 3.065367) AND (t."X_8" <= -1.338487)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" <= 0.180796) AND (t."X_7" <= 1.136450) AND (t."X_9" <= 1.277021) AND (t."X_6" <= 3.065367) AND (t."X_8" > -1.338487) AND (t."X_2" <= -1.664412) AND (t."X_9" <= 0.151531)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" <= 0.180796) AND (t."X_7" <= 1.136450) AND (t."X_9" <= 1.277021) AND (t."X_6" <= 3.065367) AND (t."X_8" > -1.338487) AND (t."X_2" <= -1.664412) AND (t."X_9" > 0.151531)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" <= 0.180796) AND (t."X_7" <= 1.136450) AND (t."X_9" <= 1.277021) AND (t."X_6" <= 3.065367) AND (t."X_8" > -1.338487) AND (t."X_2" > -1.664412) AND (t."X_2" <= 0.050453)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" <= 0.180796) AND (t."X_7" <= 1.136450) AND (t."X_9" <= 1.277021) AND (t."X_6" <= 3.065367) AND (t."X_8" > -1.338487) AND (t."X_2" > -1.664412) AND (t."X_2" > 0.050453) AND (t."X_8" > -0.042016)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" <= 0.180796) AND (t."X_7" <= 1.136450) AND (t."X_9" <= 1.277021) AND (t."X_6" <= 3.065367) AND (t."X_8" > -1.338487) AND (t."X_2" > -1.664412) AND (t."X_2" > 0.050453) AND (t."X_8" <= -0.042016) AND (t."X_5" <= -0.101347)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" > -3.300494) AND (t."X_5" <= 0.180796) AND (t."X_7" <= 1.136450) AND (t."X_9" <= 1.277021) AND (t."X_6" <= 3.065367) AND (t."X_8" > -1.338487) AND (t."X_2" > -1.664412) AND (t."X_2" > 0.050453) AND (t."X_8" <= -0.042016) AND (t."X_5" > -0.101347)) THEN 42 ELSE NULL END AS "Leaf_42"
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
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.818182 AS "P_0", 0.045455 AS "P_1", 0.090909 AS "P_2", 0.045455 AS "P_3", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.857143 AS "P_0", 0.047619 AS "P_1", 0.095238 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.785714 AS "P_0", 0.071429 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
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
"DT_node_lookup_5" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" <= -0.290936) AND (t."X_9" > -0.499828)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" <= -0.290936) AND (t."X_9" <= -0.499828) AND (t."X_9" <= -1.481201)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" <= -0.290936) AND (t."X_9" <= -0.499828) AND (t."X_9" > -1.481201)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" > -0.290936) AND (t."X_3" > 1.403926) AND (t."X_9" <= 1.236315)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" > -0.290936) AND (t."X_3" > 1.403926) AND (t."X_9" > 1.236315)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" <= -0.027610) AND (t."X_7" <= 0.341258)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" <= -0.027610) AND (t."X_7" > 0.341258) AND (t."X_7" > 1.067922) AND (t."X_5" <= -0.171854)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" <= -0.027610) AND (t."X_7" > 0.341258) AND (t."X_7" > 1.067922) AND (t."X_5" > -0.171854) AND (t."X_9" <= -0.279979)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" <= -0.027610) AND (t."X_7" > 0.341258) AND (t."X_7" > 1.067922) AND (t."X_5" > -0.171854) AND (t."X_9" > -0.279979)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" <= -0.027610) AND (t."X_7" > 0.341258) AND (t."X_7" <= 1.067922) AND (t."X_7" <= 0.469024) AND (t."X_3" <= -0.711476)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" <= -0.027610) AND (t."X_7" > 0.341258) AND (t."X_7" <= 1.067922) AND (t."X_7" <= 0.469024) AND (t."X_3" > -0.711476)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" > -0.027610) AND (t."X_9" <= -0.952543)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" > -0.027610) AND (t."X_9" > -0.952543) AND (t."X_3" <= 1.541589)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" > -0.027610) AND (t."X_9" > -0.952543) AND (t."X_3" > 1.541589)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" <= -0.027610) AND (t."X_7" > 0.341258) AND (t."X_7" <= 1.067922) AND (t."X_7" > 0.469024) AND (t."X_7" > 0.857195)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" <= -0.027610) AND (t."X_7" > 0.341258) AND (t."X_7" <= 1.067922) AND (t."X_7" > 0.469024) AND (t."X_7" <= 0.857195) AND (t."X_9" <= 0.849299)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" <= -0.027610) AND (t."X_7" > 0.341258) AND (t."X_7" <= 1.067922) AND (t."X_7" > 0.469024) AND (t."X_7" <= 0.857195) AND (t."X_9" > 0.849299)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" > -0.290936) AND (t."X_3" <= 1.403926) AND (t."X_5" <= -1.038636)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" > -0.290936) AND (t."X_3" <= 1.403926) AND (t."X_5" > -1.038636) AND (t."X_7" <= -1.248196)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" > -0.290936) AND (t."X_3" <= 1.403926) AND (t."X_5" > -1.038636) AND (t."X_7" > -1.248196) AND (t."X_8" > -1.195405)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" > -0.290936) AND (t."X_3" <= 1.403926) AND (t."X_5" > -1.038636) AND (t."X_7" > -1.248196) AND (t."X_8" <= -1.195405) AND (t."X_3" <= -1.027278)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" > -0.290936) AND (t."X_3" <= 1.403926) AND (t."X_5" > -1.038636) AND (t."X_7" > -1.248196) AND (t."X_8" <= -1.195405) AND (t."X_3" > -1.027278)) THEN 42 ELSE NULL END AS "Leaf_42"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.218750 AS "P_0", 0.281250 AS "P_1", 0.203125 AS "P_2", 0.296875 AS "P_3", 3 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.222222 AS "P_0", 0.000000 AS "P_1", 0.222222 AS "P_2", 0.555556 AS "P_3", 3 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.216216 AS "P_0", 0.486486 AS "P_1", 0.189189 AS "P_2", 0.108108 AS "P_3", 1 AS "D", 0.486486 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.600000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.181818 AS "P_0", 0.000000 AS "P_1", 0.136364 AS "P_2", 0.681818 AS "P_3", 3 AS "D", 0.681818 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.105263 AS "P_0", 0.000000 AS "P_1", 0.105263 AS "P_2", 0.789474 AS "P_3", 3 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.307692 AS "P_0", 0.346154 AS "P_1", 0.269231 AS "P_2", 0.076923 AS "P_3", 1 AS "D", 0.346154 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.818182 AS "P_1", 0.000000 AS "P_2", 0.181818 AS "P_3", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.380952 AS "P_0", 0.428571 AS "P_1", 0.095238 AS "P_2", 0.095238 AS "P_3", 1 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.615385 AS "P_0", 0.230769 AS "P_1", 0.000000 AS "P_2", 0.153846 AS "P_3", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.900000 AS "P_1", 0.000000 AS "P_2", 0.100000 AS "P_3", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.055556 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > -0.073486) AND (t."X_2" <= -1.189315) AND (t."X_1" <= 0.727043)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_7" > -0.073486) AND (t."X_2" <= -1.189315) AND (t."X_1" > 0.727043)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_7" > -0.073486) AND (t."X_2" > -1.189315) AND (t."X_1" > 3.018896)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_7" <= -0.073486) AND (t."X_8" > 1.582941) AND (t."X_1" > 1.241594)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_7" <= -0.073486) AND (t."X_8" > 1.582941) AND (t."X_1" <= 1.241594) AND (t."X_7" > -1.037374)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_7" <= -0.073486) AND (t."X_8" > 1.582941) AND (t."X_1" <= 1.241594) AND (t."X_7" <= -1.037374) AND (t."X_7" <= -1.721118)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_7" <= -0.073486) AND (t."X_8" > 1.582941) AND (t."X_1" <= 1.241594) AND (t."X_7" <= -1.037374) AND (t."X_7" > -1.721118)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_7" <= -0.073486) AND (t."X_8" <= 1.582941) AND (t."X_1" <= -2.449501) AND (t."X_1" <= -3.602350)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_7" <= -0.073486) AND (t."X_8" <= 1.582941) AND (t."X_1" <= -2.449501) AND (t."X_1" > -3.602350)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_7" <= -0.073486) AND (t."X_8" <= 1.582941) AND (t."X_1" > -2.449501) AND (t."X_9" > 1.357495)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_7" <= -0.073486) AND (t."X_8" <= 1.582941) AND (t."X_1" > -2.449501) AND (t."X_9" <= 1.357495) AND (t."X_7" > -0.854719) AND (t."X_9" <= 0.510626)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_7" <= -0.073486) AND (t."X_8" <= 1.582941) AND (t."X_1" > -2.449501) AND (t."X_9" <= 1.357495) AND (t."X_7" > -0.854719) AND (t."X_9" > 0.510626)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" > -0.073486) AND (t."X_2" > -1.189315) AND (t."X_1" <= 3.018896) AND (t."X_8" > 0.071515)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_7" > -0.073486) AND (t."X_2" > -1.189315) AND (t."X_1" <= 3.018896) AND (t."X_8" <= 0.071515) AND (t."X_8" > -0.145067)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_7" > -0.073486) AND (t."X_2" > -1.189315) AND (t."X_1" <= 3.018896) AND (t."X_8" <= 0.071515) AND (t."X_8" <= -0.145067) AND (t."X_9" <= 0.475491)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_7" > -0.073486) AND (t."X_2" > -1.189315) AND (t."X_1" <= 3.018896) AND (t."X_8" <= 0.071515) AND (t."X_8" <= -0.145067) AND (t."X_9" > 0.475491)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_7" <= -0.073486) AND (t."X_8" <= 1.582941) AND (t."X_1" > -2.449501) AND (t."X_9" <= 1.357495) AND (t."X_7" <= -0.854719) AND (t."X_8" > 0.314607) AND (t."X_7" <= -1.192296)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_7" <= -0.073486) AND (t."X_8" <= 1.582941) AND (t."X_1" > -2.449501) AND (t."X_9" <= 1.357495) AND (t."X_7" <= -0.854719) AND (t."X_8" > 0.314607) AND (t."X_7" > -1.192296)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_7" <= -0.073486) AND (t."X_8" <= 1.582941) AND (t."X_1" > -2.449501) AND (t."X_9" <= 1.357495) AND (t."X_7" <= -0.854719) AND (t."X_8" <= 0.314607) AND (t."X_7" > -1.705350)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_7" <= -0.073486) AND (t."X_8" <= 1.582941) AND (t."X_1" > -2.449501) AND (t."X_9" <= 1.357495) AND (t."X_7" <= -0.854719) AND (t."X_8" <= 0.314607) AND (t."X_7" <= -1.705350) AND (t."X_1" <= -0.174809)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_7" <= -0.073486) AND (t."X_8" <= 1.582941) AND (t."X_1" > -2.449501) AND (t."X_9" <= 1.357495) AND (t."X_7" <= -0.854719) AND (t."X_8" <= 0.314607) AND (t."X_7" <= -1.705350) AND (t."X_1" > -0.174809)) THEN 40 ELSE NULL END AS "Leaf_40"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.234375 AS "P_0", 0.328125 AS "P_1", 0.203125 AS "P_2", 0.234375 AS "P_3", 1 AS "D", 0.328125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.342105 AS "P_0", 0.078947 AS "P_1", 0.184211 AS "P_2", 0.394737 AS "P_3", 3 AS "D", 0.394737 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.076923 AS "P_0", 0.692308 AS "P_1", 0.230769 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.045455 AS "P_0", 0.818182 AS "P_1", 0.136364 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.050000 AS "P_0", 0.900000 AS "P_1", 0.050000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.500000 AS "P_0", 0.041667 AS "P_1", 0.250000 AS "P_2", 0.208333 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.071429 AS "P_0", 0.142857 AS "P_1", 0.071429 AS "P_2", 0.714286 AS "P_3", 3 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.250000 AS "P_0", 0.500000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.600000 AS "P_0", 0.050000 AS "P_1", 0.200000 AS "P_2", 0.150000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.705882 AS "P_0", 0.058824 AS "P_1", 0.235294 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.833333 AS "P_0", 0.083333 AS "P_1", 0.083333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.600000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.250000 AS "P_0", 0.500000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.900000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_8", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" > 1.550273) AND (t."X_0" <= -0.178335)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_3" > 1.550273) AND (t."X_0" > -0.178335)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_3" <= 1.550273) AND (t."X_8" <= 0.314607) AND (t."X_7" > 0.983350)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_3" <= 1.550273) AND (t."X_8" <= 0.314607) AND (t."X_7" <= 0.983350) AND (t."X_8" > -0.701579)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" <= 1.550273) AND (t."X_8" <= 0.314607) AND (t."X_7" <= 0.983350) AND (t."X_8" <= -0.701579) AND (t."X_3" <= -0.312543) AND (t."X_8" <= -1.338487)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_3" <= 1.550273) AND (t."X_8" <= 0.314607) AND (t."X_7" <= 0.983350) AND (t."X_8" <= -0.701579) AND (t."X_3" <= -0.312543) AND (t."X_8" > -1.338487)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" <= 1.550273) AND (t."X_8" <= 0.314607) AND (t."X_7" <= 0.983350) AND (t."X_8" <= -0.701579) AND (t."X_3" > -0.312543) AND (t."X_0" <= -0.049437)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_3" <= 1.550273) AND (t."X_8" <= 0.314607) AND (t."X_7" <= 0.983350) AND (t."X_8" <= -0.701579) AND (t."X_3" > -0.312543) AND (t."X_0" > -0.049437)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_3" <= 1.550273) AND (t."X_8" > 0.314607) AND (t."X_0" <= -1.483484) AND (t."X_9" <= -0.020381)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_3" <= 1.550273) AND (t."X_8" > 0.314607) AND (t."X_0" <= -1.483484) AND (t."X_9" > -0.020381)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_3" <= 1.550273) AND (t."X_8" > 0.314607) AND (t."X_0" > -1.483484) AND (t."X_3" > -1.647451)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_3" <= 1.550273) AND (t."X_8" > 0.314607) AND (t."X_0" > -1.483484) AND (t."X_3" <= -1.647451) AND (t."X_9" <= 0.099129)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_3" <= 1.550273) AND (t."X_8" > 0.314607) AND (t."X_0" > -1.483484) AND (t."X_3" <= -1.647451) AND (t."X_9" > 0.099129) AND (t."X_3" <= -1.923941)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_3" <= 1.550273) AND (t."X_8" > 0.314607) AND (t."X_0" > -1.483484) AND (t."X_3" <= -1.647451) AND (t."X_9" > 0.099129) AND (t."X_3" > -1.923941)) THEN 26 ELSE NULL END AS "Leaf_26"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.359375 AS "P_1", 0.125000 AS "P_2", 0.203125 AS "P_3", 1 AS "D", 0.359375 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.232143 AS "P_0", 0.410714 AS "P_1", 0.142857 AS "P_2", 0.214286 AS "P_3", 1 AS "D", 0.410714 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.875000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.444444 AS "P_0", 0.037037 AS "P_1", 0.296296 AS "P_2", 0.222222 AS "P_3", 0 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.034483 AS "P_0", 0.758621 AS "P_1", 0.000000 AS "P_2", 0.206897 AS "P_3", 1 AS "D", 0.758621 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.545455 AS "P_0", 0.045455 AS "P_1", 0.136364 AS "P_2", 0.272727 AS "P_3", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.333333 AS "P_0", 0.066667 AS "P_1", 0.200000 AS "P_2", 0.400000 AS "P_3", 3 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.625000 AS "P_0", 0.000000 AS "P_1", 0.375000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.142857 AS "P_1", 0.000000 AS "P_2", 0.857143 AS "P_3", 3 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.041667 AS "P_0", 0.875000 AS "P_1", 0.000000 AS "P_2", 0.083333 AS "P_3", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.200000 AS "P_0", 0.400000 AS "P_1", 0.000000 AS "P_2", 0.400000 AS "P_3", 1 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_10", t1."Leaf_12", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_7" <= -0.947884) AND (t."X_9" <= -0.779395)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_7" <= -0.947884) AND (t."X_9" > -0.779395)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_7" > -0.947884) AND (t."X_9" <= -1.061528)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" > 1.067922)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 1.067922) AND (t."X_1" > 0.318457)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 1.067922) AND (t."X_1" <= 0.318457) AND (t."X_1" <= -0.957958) AND (t."X_9" <= 0.295791)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 1.067922) AND (t."X_1" <= 0.318457) AND (t."X_1" <= -0.957958) AND (t."X_9" > 0.295791) AND (t."X_9" <= 1.135530)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 1.067922) AND (t."X_1" <= 0.318457) AND (t."X_1" <= -0.957958) AND (t."X_9" > 0.295791) AND (t."X_9" > 1.135530)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 1.067922) AND (t."X_1" <= 0.318457) AND (t."X_1" > -0.957958) AND (t."X_1" <= -0.145988)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 1.067922) AND (t."X_1" <= 0.318457) AND (t."X_1" > -0.957958) AND (t."X_1" > -0.145988) AND (t."X_9" <= 0.089476)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 1.067922) AND (t."X_1" <= 0.318457) AND (t."X_1" > -0.957958) AND (t."X_1" > -0.145988) AND (t."X_9" > 0.089476)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_7" > -0.947884) AND (t."X_9" > -1.061528) AND (t."X_9" <= 1.143299)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_7" > -0.947884) AND (t."X_9" > -1.061528) AND (t."X_9" > 1.143299) AND (t."X_9" > 1.534528)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_7" > -0.947884) AND (t."X_9" > -1.061528) AND (t."X_9" > 1.143299) AND (t."X_9" <= 1.534528) AND (t."X_9" <= 1.289727)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_7" > -0.947884) AND (t."X_9" > -1.061528) AND (t."X_9" > 1.143299) AND (t."X_9" <= 1.534528) AND (t."X_9" > 1.289727)) THEN 28 ELSE NULL END AS "Leaf_28"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.265625 AS "P_0", 0.375000 AS "P_1", 0.265625 AS "P_2", 0.093750 AS "P_3", 1 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.437500 AS "P_0", 0.062500 AS "P_1", 0.437500 AS "P_2", 0.062500 AS "P_3", 0 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.093750 AS "P_0", 0.687500 AS "P_1", 0.093750 AS "P_2", 0.125000 AS "P_3", 1 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.115385 AS "P_0", 0.846154 AS "P_1", 0.038462 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.041667 AS "P_0", 0.916667 AS "P_1", 0.041667 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.518519 AS "P_0", 0.074074 AS "P_1", 0.333333 AS "P_2", 0.074074 AS "P_3", 0 AS "D", 0.518519 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.235294 AS "P_0", 0.117647 AS "P_1", 0.529412 AS "P_2", 0.117647 AS "P_3", 2 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.571429 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.285714 AS "P_3", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.200000 AS "P_0", 0.600000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_20", t1."Leaf_22", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > 1.006717) AND (t."X_8" > -0.073087)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_7" > 1.006717) AND (t."X_8" <= -0.073087) AND (t."X_9" <= -0.166478)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_7" > 1.006717) AND (t."X_8" <= -0.073087) AND (t."X_9" > -0.166478)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" > 1.230585) AND (t."X_8" <= -1.345441)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" > 1.230585) AND (t."X_8" > -1.345441)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" <= 1.230585) AND (t."X_0" <= -1.731476) AND (t."X_0" > -1.909409)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" <= 1.230585) AND (t."X_0" <= -1.731476) AND (t."X_0" <= -1.909409) AND (t."X_0" <= -2.139748)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" <= 1.230585) AND (t."X_0" <= -1.731476) AND (t."X_0" <= -1.909409) AND (t."X_0" > -2.139748)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" <= 1.230585) AND (t."X_0" > -1.731476) AND (t."X_8" > 0.476894) AND (t."X_3" > -1.240774)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" <= 1.230585) AND (t."X_0" > -1.731476) AND (t."X_8" > 0.476894) AND (t."X_3" <= -1.240774) AND (t."X_9" > 0.862072)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" <= 1.230585) AND (t."X_0" > -1.731476) AND (t."X_8" <= 0.476894) AND (t."X_3" <= -0.481650) AND (t."X_3" > -1.361070)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" <= 1.230585) AND (t."X_0" > -1.731476) AND (t."X_8" <= 0.476894) AND (t."X_3" <= -0.481650) AND (t."X_3" <= -1.361070) AND (t."X_7" <= 0.568445)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" <= 1.230585) AND (t."X_0" > -1.731476) AND (t."X_8" <= 0.476894) AND (t."X_3" <= -0.481650) AND (t."X_3" <= -1.361070) AND (t."X_7" > 0.568445)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" <= 1.230585) AND (t."X_0" > -1.731476) AND (t."X_8" <= 0.476894) AND (t."X_3" > -0.481650) AND (t."X_0" <= -0.215499)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" <= 1.230585) AND (t."X_0" > -1.731476) AND (t."X_8" <= 0.476894) AND (t."X_3" > -0.481650) AND (t."X_0" > -0.215499) AND (t."X_0" <= 1.080291)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" <= 1.230585) AND (t."X_0" > -1.731476) AND (t."X_8" <= 0.476894) AND (t."X_3" > -0.481650) AND (t."X_0" > -0.215499) AND (t."X_0" > 1.080291) AND (t."X_9" <= 0.079218)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" <= 1.230585) AND (t."X_0" > -1.731476) AND (t."X_8" <= 0.476894) AND (t."X_3" > -0.481650) AND (t."X_0" > -0.215499) AND (t."X_0" > 1.080291) AND (t."X_9" > 0.079218)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" <= 1.230585) AND (t."X_0" > -1.731476) AND (t."X_8" > 0.476894) AND (t."X_3" <= -1.240774) AND (t."X_9" <= 0.862072) AND (t."X_0" > 0.033552)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" <= 1.230585) AND (t."X_0" > -1.731476) AND (t."X_8" > 0.476894) AND (t."X_3" <= -1.240774) AND (t."X_9" <= 0.862072) AND (t."X_0" <= 0.033552) AND (t."X_0" <= -0.881302)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_7" <= 1.006717) AND (t."X_3" <= 1.230585) AND (t."X_0" > -1.731476) AND (t."X_8" > 0.476894) AND (t."X_3" <= -1.240774) AND (t."X_9" <= 0.862072) AND (t."X_0" <= 0.033552) AND (t."X_0" > -0.881302)) THEN 38 ELSE NULL END AS "Leaf_38"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.281250 AS "P_0", 0.375000 AS "P_1", 0.109375 AS "P_2", 0.234375 AS "P_3", 1 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.367347 AS "P_0", 0.224490 AS "P_1", 0.122449 AS "P_2", 0.285714 AS "P_3", 0 AS "D", 0.367347 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.866667 AS "P_1", 0.066667 AS "P_2", 0.066667 AS "P_3", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.285714 AS "P_0", 0.261905 AS "P_1", 0.142857 AS "P_2", 0.309524 AS "P_3", 3 AS "D", 0.309524 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.857143 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.142857 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.777778 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.222222 AS "P_3", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.151515 AS "P_0", 0.333333 AS "P_1", 0.181818 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.200000 AS "P_0", 0.150000 AS "P_1", 0.300000 AS "P_2", 0.350000 AS "P_3", 3 AS "D", 0.350000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.076923 AS "P_0", 0.615385 AS "P_1", 0.000000 AS "P_2", 0.307692 AS "P_3", 1 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.166667 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.444444 AS "P_0", 0.111111 AS "P_1", 0.444444 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.181818 AS "P_1", 0.181818 AS "P_2", 0.636364 AS "P_3", 3 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.222222 AS "P_2", 0.777778 AS "P_3", 3 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_39", t1."Leaf_41", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" > 1.357495) AND (t."X_3" <= 2.033680)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" > 1.357495) AND (t."X_3" > 2.033680)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" <= 1.357495) AND (t."X_8" > 1.610080) AND (t."X_0" <= -0.673629)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" <= 1.357495) AND (t."X_8" > 1.610080) AND (t."X_0" > -0.673629) AND (t."X_9" <= -0.903892)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" <= 1.357495) AND (t."X_8" > 1.610080) AND (t."X_0" > -0.673629) AND (t."X_9" > -0.903892)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" <= 1.357495) AND (t."X_8" <= 1.610080) AND (t."X_7" > -0.747422)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" <= -2.053295) AND (t."X_9" <= 0.360618)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" <= -2.053295) AND (t."X_9" > 0.360618)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" > -2.053295) AND (t."X_3" > 0.939840) AND (t."X_3" <= 1.114384)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" > -2.053295) AND (t."X_3" > 0.939840) AND (t."X_3" > 1.114384)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" > -2.053295) AND (t."X_3" <= 0.939840) AND (t."X_8" <= -1.084020)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" > -2.053295) AND (t."X_3" <= 0.939840) AND (t."X_8" > -1.084020) AND (t."X_9" <= -1.166745)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" > -2.053295) AND (t."X_3" <= 0.939840) AND (t."X_8" > -1.084020) AND (t."X_9" > -1.166745) AND (t."X_3" <= -1.907812)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" > -2.053295) AND (t."X_3" <= 0.939840) AND (t."X_8" > -1.084020) AND (t."X_9" > -1.166745) AND (t."X_3" > -1.907812) AND (t."X_9" <= 0.273124)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" > -2.053295) AND (t."X_3" <= 0.939840) AND (t."X_8" > -1.084020) AND (t."X_9" > -1.166745) AND (t."X_3" > -1.907812) AND (t."X_9" > 0.273124) AND (t."X_0" > 0.213275)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" > -2.053295) AND (t."X_3" <= 0.939840) AND (t."X_8" > -1.084020) AND (t."X_9" > -1.166745) AND (t."X_3" > -1.907812) AND (t."X_9" > 0.273124) AND (t."X_0" <= 0.213275) AND (t."X_9" <= 0.375345)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_7" > -0.714149) AND (t."X_3" > -2.053295) AND (t."X_3" <= 0.939840) AND (t."X_8" > -1.084020) AND (t."X_9" > -1.166745) AND (t."X_3" > -1.907812) AND (t."X_9" > 0.273124) AND (t."X_0" <= 0.213275) AND (t."X_9" > 0.375345)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" <= 1.357495) AND (t."X_8" <= 1.610080) AND (t."X_7" <= -0.747422) AND (t."X_0" <= -1.458657)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" <= 1.357495) AND (t."X_8" <= 1.610080) AND (t."X_7" <= -0.747422) AND (t."X_0" > -1.458657) AND (t."X_0" <= -1.200264)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" <= 1.357495) AND (t."X_8" <= 1.610080) AND (t."X_7" <= -0.747422) AND (t."X_0" > -1.458657) AND (t."X_0" > -1.200264) AND (t."X_7" <= -2.895502)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" <= 1.357495) AND (t."X_8" <= 1.610080) AND (t."X_7" <= -0.747422) AND (t."X_0" > -1.458657) AND (t."X_0" > -1.200264) AND (t."X_7" > -2.895502) AND (t."X_3" <= -0.986266)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" <= 1.357495) AND (t."X_8" <= 1.610080) AND (t."X_7" <= -0.747422) AND (t."X_0" > -1.458657) AND (t."X_0" > -1.200264) AND (t."X_7" > -2.895502) AND (t."X_3" > -0.986266) AND (t."X_9" <= 0.103146)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" <= 1.357495) AND (t."X_8" <= 1.610080) AND (t."X_7" <= -0.747422) AND (t."X_0" > -1.458657) AND (t."X_0" > -1.200264) AND (t."X_7" > -2.895502) AND (t."X_3" > -0.986266) AND (t."X_9" > 0.103146) AND (t."X_3" <= 1.436100)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_7" <= -0.714149) AND (t."X_9" <= 1.357495) AND (t."X_8" <= 1.610080) AND (t."X_7" <= -0.747422) AND (t."X_0" > -1.458657) AND (t."X_0" > -1.200264) AND (t."X_7" > -2.895502) AND (t."X_3" > -0.986266) AND (t."X_9" > 0.103146) AND (t."X_3" > 1.436100)) THEN 46 ELSE NULL END AS "Leaf_46"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.343750 AS "P_0", 0.328125 AS "P_1", 0.125000 AS "P_2", 0.203125 AS "P_3", 0 AS "D", 0.343750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.483871 AS "P_0", 0.096774 AS "P_1", 0.129032 AS "P_2", 0.290323 AS "P_3", 0 AS "D", 0.483871 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.212121 AS "P_0", 0.545455 AS "P_1", 0.121212 AS "P_2", 0.121212 AS "P_3", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.576923 AS "P_0", 0.115385 AS "P_1", 0.115385 AS "P_2", 0.192308 AS "P_3", 0 AS "D", 0.576923 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.681818 AS "P_0", 0.090909 AS "P_1", 0.090909 AS "P_2", 0.136364 AS "P_3", 0 AS "D", 0.681818 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.250000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.750000 AS "P_0", 0.100000 AS "P_1", 0.100000 AS "P_2", 0.050000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.241379 AS "P_0", 0.586207 AS "P_1", 0.034483 AS "P_2", 0.137931 AS "P_3", 1 AS "D", 0.586207 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.200000 AS "P_0", 0.680000 AS "P_1", 0.040000 AS "P_2", 0.080000 AS "P_3", 1 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.047619 AS "P_0", 0.809524 AS "P_1", 0.047619 AS "P_2", 0.095238 AS "P_3", 1 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.050000 AS "P_0", 0.850000 AS "P_1", 0.000000 AS "P_2", 0.100000 AS "P_3", 1 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.894737 AS "P_1", 0.000000 AS "P_2", 0.105263 AS "P_3", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.642857 AS "P_0", 0.142857 AS "P_1", 0.142857 AS "P_2", 0.071429 AS "P_3", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.083333 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.818182 AS "P_0", 0.000000 AS "P_1", 0.181818 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.900000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_11", t1."Leaf_12", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= -1.197550) AND (t."X_8" <= 1.076523)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_5" <= -1.197550) AND (t."X_8" > 1.076523)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.191088) AND (t."X_1" <= -0.659772)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.191088) AND (t."X_1" > -0.659772) AND (t."X_7" <= -1.009942) AND (t."X_9" <= -0.870245)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.191088) AND (t."X_1" > -0.659772) AND (t."X_7" <= -1.009942) AND (t."X_9" > -0.870245)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.191088) AND (t."X_1" <= 0.318457) AND (t."X_5" <= 0.610068) AND (t."X_8" > -0.042016)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.191088) AND (t."X_1" <= 0.318457) AND (t."X_5" > 0.610068) AND (t."X_7" <= -1.139053)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.191088) AND (t."X_1" <= 0.318457) AND (t."X_5" > 0.610068) AND (t."X_7" > -1.139053)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.191088) AND (t."X_1" > 0.318457) AND (t."X_1" <= 0.831645)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.191088) AND (t."X_1" > 0.318457) AND (t."X_1" > 0.831645) AND (t."X_8" > -0.760306)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.191088) AND (t."X_1" > 0.318457) AND (t."X_1" > 0.831645) AND (t."X_8" <= -0.760306) AND (t."X_9" <= 1.193869)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.191088) AND (t."X_1" > 0.318457) AND (t."X_1" > 0.831645) AND (t."X_8" <= -0.760306) AND (t."X_9" > 1.193869)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.191088) AND (t."X_1" <= 0.318457) AND (t."X_5" <= 0.610068) AND (t."X_8" <= -0.042016) AND (t."X_1" > -1.978722)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.191088) AND (t."X_1" <= 0.318457) AND (t."X_5" <= 0.610068) AND (t."X_8" <= -0.042016) AND (t."X_1" <= -1.978722) AND (t."X_1" <= -3.602350)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" <= 0.191088) AND (t."X_1" <= 0.318457) AND (t."X_5" <= 0.610068) AND (t."X_8" <= -0.042016) AND (t."X_1" <= -1.978722) AND (t."X_1" > -3.602350)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.191088) AND (t."X_1" > -0.659772) AND (t."X_7" > -1.009942) AND (t."X_1" <= 0.555439) AND (t."X_1" <= 0.172857)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.191088) AND (t."X_1" > -0.659772) AND (t."X_7" > -1.009942) AND (t."X_1" <= 0.555439) AND (t."X_1" > 0.172857) AND (t."X_1" <= 0.531695)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.191088) AND (t."X_1" > -0.659772) AND (t."X_7" > -1.009942) AND (t."X_1" <= 0.555439) AND (t."X_1" > 0.172857) AND (t."X_1" > 0.531695)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.191088) AND (t."X_1" > -0.659772) AND (t."X_7" > -1.009942) AND (t."X_1" > 0.555439) AND (t."X_9" <= 1.143299)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_5" > -1.197550) AND (t."X_8" > 0.191088) AND (t."X_1" > -0.659772) AND (t."X_7" > -1.009942) AND (t."X_1" > 0.555439) AND (t."X_9" > 1.143299)) THEN 38 ELSE NULL END AS "Leaf_38"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.265625 AS "P_1", 0.234375 AS "P_2", 0.187500 AS "P_3", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.327586 AS "P_0", 0.206897 AS "P_1", 0.258621 AS "P_2", 0.206897 AS "P_3", 0 AS "D", 0.327586 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.400000 AS "P_2", 0.200000 AS "P_3", 0 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.250000 AS "P_0", 0.428571 AS "P_1", 0.107143 AS "P_2", 0.214286 AS "P_3", 1 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.045455 AS "P_0", 0.545455 AS "P_1", 0.136364 AS "P_2", 0.272727 AS "P_3", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.062500 AS "P_0", 0.750000 AS "P_1", 0.125000 AS "P_2", 0.062500 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.400000 AS "P_2", 0.400000 AS "P_3", 2 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.600000 AS "P_0", 0.000000 AS "P_1", 0.400000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.222222 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.111111 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.454545 AS "P_0", 0.000000 AS "P_1", 0.545455 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.333333 AS "P_2", 0.166667 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_7", t1."Leaf_8", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= -3.096412)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" <= -0.826371) AND (t."X_0" > 1.476373) AND (t."X_9" <= 0.338172)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" <= -0.826371) AND (t."X_0" > 1.476373) AND (t."X_9" > 0.338172)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" > -0.826371) AND (t."X_7" > 0.585931) AND (t."X_8" <= 0.118972) AND (t."X_6" <= -0.180701)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" > -0.826371) AND (t."X_7" > 0.585931) AND (t."X_8" <= 0.118972) AND (t."X_6" > -0.180701) AND (t."X_6" <= 2.654005)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" > -0.826371) AND (t."X_7" > 0.585931) AND (t."X_8" <= 0.118972) AND (t."X_6" > -0.180701) AND (t."X_6" > 2.654005)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" > -0.826371) AND (t."X_7" <= 0.585931) AND (t."X_5" <= -1.343588)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" > -0.826371) AND (t."X_7" <= 0.585931) AND (t."X_5" > -1.343588) AND (t."X_8" > 2.319675)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" > -0.826371) AND (t."X_7" <= 0.585931) AND (t."X_5" > -1.343588) AND (t."X_8" <= 2.319675) AND (t."X_0" > 0.597637)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" > -0.826371) AND (t."X_7" <= 0.585931) AND (t."X_5" > -1.343588) AND (t."X_8" <= 2.319675) AND (t."X_0" <= 0.597637) AND (t."X_9" <= 0.102919)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" > -0.826371) AND (t."X_7" <= 0.585931) AND (t."X_5" > -1.343588) AND (t."X_8" <= 2.319675) AND (t."X_0" <= 0.597637) AND (t."X_9" > 0.102919) AND (t."X_0" > 0.027183) AND (t."X_6" <= -2.257542)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" > -0.826371) AND (t."X_7" <= 0.585931) AND (t."X_5" > -1.343588) AND (t."X_8" <= 2.319675) AND (t."X_0" <= 0.597637) AND (t."X_9" > 0.102919) AND (t."X_0" > 0.027183) AND (t."X_6" > -2.257542)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" > -0.826371) AND (t."X_7" <= 0.585931) AND (t."X_5" > -1.343588) AND (t."X_8" <= 2.319675) AND (t."X_0" <= 0.597637) AND (t."X_9" > 0.102919) AND (t."X_0" <= 0.027183) AND (t."X_9" <= 1.483396)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" > -0.826371) AND (t."X_7" <= 0.585931) AND (t."X_5" > -1.343588) AND (t."X_8" <= 2.319675) AND (t."X_0" <= 0.597637) AND (t."X_9" > 0.102919) AND (t."X_0" <= 0.027183) AND (t."X_9" > 1.483396)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" > -0.826371) AND (t."X_7" > 0.585931) AND (t."X_8" > 0.118972) AND (t."X_7" > 0.849979)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" > -0.826371) AND (t."X_7" > 0.585931) AND (t."X_8" > 0.118972) AND (t."X_7" <= 0.849979) AND (t."X_9" <= 0.472777)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" > -0.826371) AND (t."X_7" > 0.585931) AND (t."X_8" > 0.118972) AND (t."X_7" <= 0.849979) AND (t."X_9" > 0.472777)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" <= -0.826371) AND (t."X_0" <= 1.476373) AND (t."X_6" <= 2.285699)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" <= -0.826371) AND (t."X_0" <= 1.476373) AND (t."X_6" > 2.285699) AND (t."X_6" <= 2.737732)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" > -3.096412) AND (t."X_8" <= -0.826371) AND (t."X_0" <= 1.476373) AND (t."X_6" > 2.285699) AND (t."X_6" > 2.737732)) THEN 38 ELSE NULL END AS "Leaf_38"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.218750 AS "P_0", 0.375000 AS "P_1", 0.218750 AS "P_2", 0.187500 AS "P_3", 1 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.237288 AS "P_0", 0.406780 AS "P_1", 0.237288 AS "P_2", 0.118644 AS "P_3", 1 AS "D", 0.406780 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.733333 AS "P_2", 0.266667 AS "P_3", 2 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.318182 AS "P_0", 0.545455 AS "P_1", 0.068182 AS "P_2", 0.068182 AS "P_3", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.909091 AS "P_2", 0.090909 AS "P_3", 2 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.583333 AS "P_0", 0.333333 AS "P_1", 0.041667 AS "P_2", 0.041667 AS "P_3", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.100000 AS "P_2", 0.100000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.500000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.937500 AS "P_1", 0.000000 AS "P_2", 0.062500 AS "P_3", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.666667 AS "P_0", 0.238095 AS "P_1", 0.047619 AS "P_2", 0.047619 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.736842 AS "P_0", 0.157895 AS "P_1", 0.052632 AS "P_2", 0.052632 AS "P_3", 0 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.375000 AS "P_0", 0.375000 AS "P_1", 0.125000 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.166667 AS "P_1", 0.166667 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 2.173262) AND (t."X_0" <= -0.793634)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_6" > 2.173262) AND (t."X_0" > -0.793634) AND (t."X_9" <= 1.135530)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_6" > 2.173262) AND (t."X_0" > -0.793634) AND (t."X_9" > 1.135530)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" <= 2.173262) AND (t."X_7" > 1.006717)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_6" <= 2.173262) AND (t."X_7" <= 1.006717) AND (t."X_7" <= -1.953395)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" <= 2.173262) AND (t."X_7" <= 1.006717) AND (t."X_7" > -1.953395) AND (t."X_7" <= -1.823154)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" <= 2.173262) AND (t."X_7" <= 1.006717) AND (t."X_7" > -1.953395) AND (t."X_7" > -1.823154) AND (t."X_0" <= 0.253706) AND (t."X_8" > 0.158958) AND (t."X_6" > -2.452537)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" <= 2.173262) AND (t."X_7" <= 1.006717) AND (t."X_7" > -1.953395) AND (t."X_7" > -1.823154) AND (t."X_0" <= 0.253706) AND (t."X_8" > 0.158958) AND (t."X_6" <= -2.452537) AND (t."X_9" <= 0.937798)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" <= 2.173262) AND (t."X_7" <= 1.006717) AND (t."X_7" > -1.953395) AND (t."X_7" > -1.823154) AND (t."X_0" <= 0.253706) AND (t."X_8" > 0.158958) AND (t."X_6" <= -2.452537) AND (t."X_9" > 0.937798)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_6" <= 2.173262) AND (t."X_7" <= 1.006717) AND (t."X_7" > -1.953395) AND (t."X_7" > -1.823154) AND (t."X_0" <= 0.253706) AND (t."X_8" <= 0.158958) AND (t."X_9" <= 0.272957)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_6" <= 2.173262) AND (t."X_7" <= 1.006717) AND (t."X_7" > -1.953395) AND (t."X_7" > -1.823154) AND (t."X_0" <= 0.253706) AND (t."X_8" <= 0.158958) AND (t."X_9" > 0.272957) AND (t."X_0" <= -1.185989)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" <= 2.173262) AND (t."X_7" <= 1.006717) AND (t."X_7" > -1.953395) AND (t."X_7" > -1.823154) AND (t."X_0" <= 0.253706) AND (t."X_8" <= 0.158958) AND (t."X_9" > 0.272957) AND (t."X_0" > -1.185989)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" <= 2.173262) AND (t."X_7" <= 1.006717) AND (t."X_7" > -1.953395) AND (t."X_7" > -1.823154) AND (t."X_0" > 0.253706) AND (t."X_6" > 0.970437)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" <= 2.173262) AND (t."X_7" <= 1.006717) AND (t."X_7" > -1.953395) AND (t."X_7" > -1.823154) AND (t."X_0" > 0.253706) AND (t."X_6" <= 0.970437) AND (t."X_7" > 0.374957)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" <= 2.173262) AND (t."X_7" <= 1.006717) AND (t."X_7" > -1.953395) AND (t."X_7" > -1.823154) AND (t."X_0" > 0.253706) AND (t."X_6" <= 0.970437) AND (t."X_7" <= 0.374957) AND (t."X_0" <= 0.493194)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_6" <= 2.173262) AND (t."X_7" <= 1.006717) AND (t."X_7" > -1.953395) AND (t."X_7" > -1.823154) AND (t."X_0" > 0.253706) AND (t."X_6" <= 0.970437) AND (t."X_7" <= 0.374957) AND (t."X_0" > 0.493194) AND (t."X_8" <= -0.603827)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" <= 2.173262) AND (t."X_7" <= 1.006717) AND (t."X_7" > -1.953395) AND (t."X_7" > -1.823154) AND (t."X_0" > 0.253706) AND (t."X_6" <= 0.970437) AND (t."X_7" <= 0.374957) AND (t."X_0" > 0.493194) AND (t."X_8" > -0.603827)) THEN 32 ELSE NULL END AS "Leaf_32"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.281250 AS "P_1", 0.203125 AS "P_2", 0.203125 AS "P_3", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.377358 AS "P_0", 0.339623 AS "P_1", 0.113208 AS "P_2", 0.169811 AS "P_3", 0 AS "D", 0.377358 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.636364 AS "P_2", 0.363636 AS "P_3", 2 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.454545 AS "P_0", 0.204545 AS "P_1", 0.136364 AS "P_2", 0.204545 AS "P_3", 0 AS "D", 0.454545 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.333333 AS "P_0", 0.250000 AS "P_1", 0.166667 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.363636 AS "P_0", 0.272727 AS "P_1", 0.090909 AS "P_2", 0.272727 AS "P_3", 0 AS "D", 0.363636 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.235294 AS "P_0", 0.529412 AS "P_1", 0.000000 AS "P_2", 0.235294 AS "P_3", 1 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.187500 AS "P_2", 0.312500 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.600000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.400000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.083333 AS "P_0", 0.750000 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.615385 AS "P_0", 0.000000 AS "P_1", 0.230769 AS "P_2", 0.153846 AS "P_3", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.727273 AS "P_0", 0.000000 AS "P_1", 0.272727 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.888889 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_2" <= -1.246140)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_8" > 1.449761) AND (t."X_8" > 2.510330)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_8" > 1.449761) AND (t."X_8" <= 2.510330) AND (t."X_0" <= 0.241224)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_8" > 1.449761) AND (t."X_8" <= 2.510330) AND (t."X_0" > 0.241224) AND (t."X_9" <= -1.481201)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_8" > 1.449761) AND (t."X_8" <= 2.510330) AND (t."X_0" > 0.241224) AND (t."X_9" > -1.481201)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_2" > -1.246140) AND (t."X_7" <= -1.364566) AND (t."X_0" <= -0.137369)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_2" > -1.246140) AND (t."X_7" <= -1.364566) AND (t."X_0" > -0.137369)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_2" > -1.246140) AND (t."X_7" > -1.364566) AND (t."X_8" > -0.233326) AND (t."X_9" <= -1.209886)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_2" > -1.246140) AND (t."X_7" > -1.364566) AND (t."X_8" > -0.233326) AND (t."X_9" > -1.209886)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_2" > -1.246140) AND (t."X_7" > -1.364566) AND (t."X_8" <= -0.233326) AND (t."X_0" <= -0.543734)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_2" > -1.246140) AND (t."X_7" > -1.364566) AND (t."X_8" <= -0.233326) AND (t."X_0" > -0.543734) AND (t."X_0" <= 1.885143)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_2" > -1.246140) AND (t."X_7" > -1.364566) AND (t."X_8" <= -0.233326) AND (t."X_0" > -0.543734) AND (t."X_0" > 1.885143)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_8" <= 1.449761) AND (t."X_2" > 1.462368)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_8" <= 1.449761) AND (t."X_2" <= 1.462368) AND (t."X_7" <= -1.246453)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_8" <= 1.449761) AND (t."X_2" <= 1.462368) AND (t."X_7" > -1.246453)) THEN 28 ELSE NULL END AS "Leaf_28"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.140625 AS "P_0", 0.375000 AS "P_1", 0.250000 AS "P_2", 0.234375 AS "P_3", 1 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.233333 AS "P_0", 0.000000 AS "P_1", 0.466667 AS "P_2", 0.300000 AS "P_3", 2 AS "D", 0.466667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.058824 AS "P_0", 0.705882 AS "P_1", 0.058824 AS "P_2", 0.176471 AS "P_3", 1 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.304348 AS "P_0", 0.000000 AS "P_1", 0.304348 AS "P_2", 0.391304 AS "P_3", 3 AS "D", 0.391304 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.913043 AS "P_1", 0.000000 AS "P_2", 0.086957 AS "P_3", 1 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.181818 AS "P_0", 0.272727 AS "P_1", 0.181818 AS "P_2", 0.363636 AS "P_3", 3 AS "D", 0.363636 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.428571 AS "P_0", 0.000000 AS "P_1", 0.571429 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.187500 AS "P_2", 0.562500 AS "P_3", 3 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.083333 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.900000 AS "P_3", 3 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.954545 AS "P_1", 0.000000 AS "P_2", 0.045455 AS "P_3", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_7", t1."Leaf_8", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_9" <= -1.499925)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_9" > -1.499925) AND (t."X_7" <= -1.009942) AND (t."X_2" > 0.756634) AND (t."X_7" <= -1.433329)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_9" > -1.499925) AND (t."X_7" <= -1.009942) AND (t."X_2" > 0.756634) AND (t."X_7" > -1.433329)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_9" > -1.499925) AND (t."X_7" > -1.009942) AND (t."X_8" <= -0.233326) AND (t."X_2" <= 0.112456) AND (t."X_9" <= -0.140145)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_9" > -1.499925) AND (t."X_7" > -1.009942) AND (t."X_8" <= -0.233326) AND (t."X_2" <= 0.112456) AND (t."X_9" > -0.140145)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_9" > -1.499925) AND (t."X_7" > -1.009942) AND (t."X_8" <= -0.233326) AND (t."X_2" > 0.112456) AND (t."X_9" <= 0.533909)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_9" > -1.499925) AND (t."X_7" > -1.009942) AND (t."X_8" <= -0.233326) AND (t."X_2" > 0.112456) AND (t."X_9" > 0.533909) AND (t."X_9" <= 0.639461)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_9" > -1.499925) AND (t."X_7" > -1.009942) AND (t."X_8" <= -0.233326) AND (t."X_2" > 0.112456) AND (t."X_9" > 0.533909) AND (t."X_9" > 0.639461)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_9" > -1.499925) AND (t."X_7" > -1.009942) AND (t."X_8" > -0.233326) AND (t."X_8" <= 0.158832)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_9" > -1.499925) AND (t."X_7" <= -1.009942) AND (t."X_2" <= 0.756634) AND (t."X_0" > -1.815299)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_9" > -1.499925) AND (t."X_7" <= -1.009942) AND (t."X_2" <= 0.756634) AND (t."X_0" <= -1.815299) AND (t."X_9" <= 0.009452)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_9" > -1.499925) AND (t."X_7" <= -1.009942) AND (t."X_2" <= 0.756634) AND (t."X_0" <= -1.815299) AND (t."X_9" > 0.009452)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_9" > -1.499925) AND (t."X_7" > -1.009942) AND (t."X_8" > -0.233326) AND (t."X_8" > 0.158832) AND (t."X_9" > 1.077283) AND (t."X_9" <= 1.483396)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_9" > -1.499925) AND (t."X_7" > -1.009942) AND (t."X_8" > -0.233326) AND (t."X_8" > 0.158832) AND (t."X_9" > 1.077283) AND (t."X_9" > 1.483396)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_9" > -1.499925) AND (t."X_7" > -1.009942) AND (t."X_8" > -0.233326) AND (t."X_8" > 0.158832) AND (t."X_9" <= 1.077283) AND (t."X_9" > -1.038779)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_9" > -1.499925) AND (t."X_7" > -1.009942) AND (t."X_8" > -0.233326) AND (t."X_8" > 0.158832) AND (t."X_9" <= 1.077283) AND (t."X_9" <= -1.038779) AND (t."X_9" <= -1.395238)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_9" > -1.499925) AND (t."X_7" > -1.009942) AND (t."X_8" > -0.233326) AND (t."X_8" > 0.158832) AND (t."X_9" <= 1.077283) AND (t."X_9" <= -1.038779) AND (t."X_9" > -1.395238)) THEN 32 ELSE NULL END AS "Leaf_32"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.296875 AS "P_1", 0.203125 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.271186 AS "P_0", 0.322034 AS "P_1", 0.135593 AS "P_2", 0.271186 AS "P_3", 1 AS "D", 0.322034 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.421053 AS "P_0", 0.000000 AS "P_1", 0.052632 AS "P_2", 0.526316 AS "P_3", 3 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.200000 AS "P_0", 0.475000 AS "P_1", 0.175000 AS "P_2", 0.150000 AS "P_3", 1 AS "D", 0.475000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.857143 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.133333 AS "P_1", 0.466667 AS "P_2", 0.400000 AS "P_3", 2 AS "D", 0.466667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.320000 AS "P_0", 0.680000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.285714 AS "P_1", 0.714286 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.190476 AS "P_0", 0.809524 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_0" <= 0.816034) AND (t."X_7" <= -0.180720) AND (t."X_7" <= -1.255423) AND (t."X_9" <= 0.314403)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_0" <= 0.816034) AND (t."X_7" <= -0.180720) AND (t."X_7" <= -1.255423) AND (t."X_9" > 0.314403)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_0" <= 0.816034) AND (t."X_7" <= -0.180720) AND (t."X_7" > -1.255423) AND (t."X_0" <= -0.423138)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_0" <= 0.816034) AND (t."X_7" <= -0.180720) AND (t."X_7" > -1.255423) AND (t."X_0" > -0.423138)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_0" <= 0.816034) AND (t."X_7" > -0.180720) AND (t."X_0" <= -2.014059)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_0" <= 0.816034) AND (t."X_7" > -0.180720) AND (t."X_0" > -2.014059)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_0" > 0.816034) AND (t."X_9" <= -0.615548) AND (t."X_9" <= -0.789683)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_0" > 0.816034) AND (t."X_9" <= -0.615548) AND (t."X_9" > -0.789683)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_7" <= -0.420942) AND (t."X_7" > -0.818367)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_7" > -0.420942) AND (t."X_9" <= 0.053666) AND (t."X_9" <= -0.617542)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_7" > -0.420942) AND (t."X_9" <= 0.053666) AND (t."X_9" > -0.617542)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_7" > -0.420942) AND (t."X_9" > 0.053666) AND (t."X_8" <= -0.408378)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_7" > -0.420942) AND (t."X_9" > 0.053666) AND (t."X_8" > -0.408378)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_7" <= -0.420942) AND (t."X_7" <= -0.818367) AND (t."X_7" <= -2.514480) AND (t."X_8" <= -1.333429)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_7" <= -0.420942) AND (t."X_7" <= -0.818367) AND (t."X_7" <= -2.514480) AND (t."X_8" > -1.333429)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_7" <= -0.420942) AND (t."X_7" <= -0.818367) AND (t."X_7" > -2.514480) AND (t."X_9" > 1.819522)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_7" <= -0.420942) AND (t."X_7" <= -0.818367) AND (t."X_7" > -2.514480) AND (t."X_9" <= 1.819522) AND (t."X_0" <= 0.075098)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_7" <= -0.420942) AND (t."X_7" <= -0.818367) AND (t."X_7" > -2.514480) AND (t."X_9" <= 1.819522) AND (t."X_0" > 0.075098)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_0" > 0.816034) AND (t."X_9" > -0.615548) AND (t."X_0" <= 1.656681)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_0" > 0.816034) AND (t."X_9" > -0.615548) AND (t."X_0" > 1.656681) AND (t."X_9" <= -0.213299)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_0" > 0.816034) AND (t."X_9" > -0.615548) AND (t."X_0" > 1.656681) AND (t."X_9" > -0.213299)) THEN 40 ELSE NULL END AS "Leaf_40"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.265625 AS "P_1", 0.296875 AS "P_2", 0.187500 AS "P_3", 2 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.357143 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.333333 AS "P_0", 0.472222 AS "P_1", 0.138889 AS "P_2", 0.055556 AS "P_3", 1 AS "D", 0.472222 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.086957 AS "P_0", 0.608696 AS "P_1", 0.217391 AS "P_2", 0.086957 AS "P_3", 1 AS "D", 0.608696 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.111111 AS "P_0", 0.111111 AS "P_1", 0.555556 AS "P_2", 0.222222 AS "P_3", 2 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.833333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.266667 AS "P_2", 0.533333 AS "P_3", 3 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.076923 AS "P_0", 0.000000 AS "P_1", 0.769231 AS "P_2", 0.153846 AS "P_3", 2 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.444444 AS "P_2", 0.222222 AS "P_3", 2 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.909091 AS "P_2", 0.090909 AS "P_3", 2 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.166667 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_15", t1."Leaf_17", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_8" > 1.402050) AND (t."X_5" > 0.770248)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_8" > 1.402050) AND (t."X_5" <= 0.770248) AND (t."X_9" > -0.188248)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_8" > 1.402050) AND (t."X_5" <= 0.770248) AND (t."X_9" <= -0.188248) AND (t."X_8" <= 2.041685)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_8" > 1.402050) AND (t."X_5" <= 0.770248) AND (t."X_9" <= -0.188248) AND (t."X_8" > 2.041685)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" > 0.983350)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 0.983350) AND (t."X_9" > 0.175726) AND (t."X_8" <= -4.011005)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 0.983350) AND (t."X_9" > 0.175726) AND (t."X_8" > -4.011005) AND (t."X_5" <= -0.027216)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 0.983350) AND (t."X_9" > 0.175726) AND (t."X_8" > -4.011005) AND (t."X_5" > -0.027216) AND (t."X_8" > -0.272682) AND (t."X_4" <= 0.534175)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 0.983350) AND (t."X_9" > 0.175726) AND (t."X_8" > -4.011005) AND (t."X_5" > -0.027216) AND (t."X_8" > -0.272682) AND (t."X_4" > 0.534175)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 0.983350) AND (t."X_9" > 0.175726) AND (t."X_8" > -4.011005) AND (t."X_5" > -0.027216) AND (t."X_8" <= -0.272682) AND (t."X_8" <= -1.266571)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 0.983350) AND (t."X_9" > 0.175726) AND (t."X_8" > -4.011005) AND (t."X_5" > -0.027216) AND (t."X_8" <= -0.272682) AND (t."X_8" > -1.266571) AND (t."X_9" <= 0.298970)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 0.983350) AND (t."X_9" > 0.175726) AND (t."X_8" > -4.011005) AND (t."X_5" > -0.027216) AND (t."X_8" <= -0.272682) AND (t."X_8" > -1.266571) AND (t."X_9" > 0.298970)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 0.983350) AND (t."X_9" <= 0.175726) AND (t."X_5" <= 0.268961)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 0.983350) AND (t."X_9" <= 0.175726) AND (t."X_5" > 0.268961) AND (t."X_8" <= -0.692055)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_7" <= 0.983350) AND (t."X_9" <= 0.175726) AND (t."X_5" > 0.268961) AND (t."X_8" > -0.692055)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_8" <= 1.402050) AND (t."X_7" > 0.849979)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_8" <= 1.402050) AND (t."X_7" <= 0.849979) AND (t."X_9" > 1.136152)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_8" <= 1.402050) AND (t."X_7" <= 0.849979) AND (t."X_9" <= 1.136152) AND (t."X_7" <= 0.572999)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_8" <= 1.402050) AND (t."X_7" <= 0.849979) AND (t."X_9" <= 1.136152) AND (t."X_7" > 0.572999)) THEN 36 ELSE NULL END AS "Leaf_36"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.265625 AS "P_0", 0.390625 AS "P_1", 0.156250 AS "P_2", 0.187500 AS "P_3", 1 AS "D", 0.390625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.423077 AS "P_0", 0.076923 AS "P_1", 0.346154 AS "P_2", 0.153846 AS "P_3", 0 AS "D", 0.423077 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.157895 AS "P_0", 0.605263 AS "P_1", 0.026316 AS "P_2", 0.210526 AS "P_3", 1 AS "D", 0.605263 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.880000 AS "P_1", 0.040000 AS "P_2", 0.080000 AS "P_3", 1 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.461538 AS "P_0", 0.076923 AS "P_1", 0.000000 AS "P_2", 0.461538 AS "P_3", 0 AS "D", 0.461538 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.125000 AS "P_0", 0.125000 AS "P_1", 0.000000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.523810 AS "P_0", 0.095238 AS "P_1", 0.190476 AS "P_2", 0.190476 AS "P_3", 0 AS "D", 0.523810 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.250000 AS "P_0", 0.083333 AS "P_1", 0.333333 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.333333 AS "P_0", 0.111111 AS "P_1", 0.111111 AS "P_2", 0.444444 AS "P_3", 3 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.142857 AS "P_0", 0.142857 AS "P_1", 0.142857 AS "P_2", 0.571429 AS "P_3", 3 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.700000 AS "P_1", 0.100000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.777778 AS "P_1", 0.000000 AS "P_2", 0.222222 AS "P_3", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_25", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 0.497595) AND (t."X_7" > -0.189773) AND (t."X_6" <= 0.450426)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" <= 0.497595) AND (t."X_7" > -0.189773) AND (t."X_6" > 0.450426) AND (t."X_8" <= 0.698511)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" <= 0.497595) AND (t."X_7" > -0.189773) AND (t."X_6" > 0.450426) AND (t."X_8" > 0.698511)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > 0.497595) AND (t."X_5" <= -0.401015) AND (t."X_5" <= -1.027272)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" > 0.497595) AND (t."X_5" <= -0.401015) AND (t."X_5" > -1.027272)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > 0.497595) AND (t."X_5" > -0.401015) AND (t."X_8" > 0.490654) AND (t."X_9" > 1.085020)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" > 0.497595) AND (t."X_5" > -0.401015) AND (t."X_8" > 0.490654) AND (t."X_9" <= 1.085020) AND (t."X_6" <= -1.462892)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" > 0.497595) AND (t."X_5" > -0.401015) AND (t."X_8" > 0.490654) AND (t."X_9" <= 1.085020) AND (t."X_6" > -1.462892)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" > 0.497595) AND (t."X_5" > -0.401015) AND (t."X_8" <= 0.490654) AND (t."X_2" <= 1.816457)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" > 0.497595) AND (t."X_5" > -0.401015) AND (t."X_8" <= 0.490654) AND (t."X_2" > 1.816457)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" <= 0.497595) AND (t."X_7" <= -0.189773) AND (t."X_9" <= -0.817610)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" <= 0.497595) AND (t."X_7" <= -0.189773) AND (t."X_9" > -0.817610) AND (t."X_9" <= -0.018211)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_2" <= 0.497595) AND (t."X_7" <= -0.189773) AND (t."X_9" > -0.817610) AND (t."X_9" > -0.018211) AND (t."X_6" <= -3.096412)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" <= 0.497595) AND (t."X_7" <= -0.189773) AND (t."X_9" > -0.817610) AND (t."X_9" > -0.018211) AND (t."X_6" > -3.096412) AND (t."X_7" > -0.760417)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_2" <= 0.497595) AND (t."X_7" <= -0.189773) AND (t."X_9" > -0.817610) AND (t."X_9" > -0.018211) AND (t."X_6" > -3.096412) AND (t."X_7" <= -0.760417) AND (t."X_5" <= -0.289096)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_2" <= 0.497595) AND (t."X_7" <= -0.189773) AND (t."X_9" > -0.817610) AND (t."X_9" > -0.018211) AND (t."X_6" > -3.096412) AND (t."X_7" <= -0.760417) AND (t."X_5" > -0.289096) AND (t."X_8" <= -1.154042)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" <= 0.497595) AND (t."X_7" <= -0.189773) AND (t."X_9" > -0.817610) AND (t."X_9" > -0.018211) AND (t."X_6" > -3.096412) AND (t."X_7" <= -0.760417) AND (t."X_5" > -0.289096) AND (t."X_8" > -1.154042) AND (t."X_5" <= 0.462991)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_2" <= 0.497595) AND (t."X_7" <= -0.189773) AND (t."X_9" > -0.817610) AND (t."X_9" > -0.018211) AND (t."X_6" > -3.096412) AND (t."X_7" <= -0.760417) AND (t."X_5" > -0.289096) AND (t."X_8" > -1.154042) AND (t."X_5" > 0.462991)) THEN 34 ELSE NULL END AS "Leaf_34"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.296875 AS "P_1", 0.234375 AS "P_2", 0.156250 AS "P_3", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.128205 AS "P_0", 0.384615 AS "P_1", 0.282051 AS "P_2", 0.205128 AS "P_3", 1 AS "D", 0.384615 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.600000 AS "P_0", 0.160000 AS "P_1", 0.160000 AS "P_2", 0.080000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.277778 AS "P_0", 0.000000 AS "P_1", 0.277778 AS "P_2", 0.444444 AS "P_3", 3 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.714286 AS "P_1", 0.285714 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.142857 AS "P_1", 0.857143 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.700000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.100000 AS "P_3", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.916667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.083333 AS "P_3", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.375000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.125000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.312500 AS "P_0", 0.000000 AS "P_1", 0.187500 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.214286 AS "P_0", 0.000000 AS "P_1", 0.214286 AS "P_2", 0.571429 AS "P_3", 3 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.300000 AS "P_0", 0.000000 AS "P_1", 0.300000 AS "P_2", 0.400000 AS "P_3", 3 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.428571 AS "P_0", 0.000000 AS "P_1", 0.428571 AS "P_2", 0.142857 AS "P_3", 0 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.600000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" <= -0.873679) AND (t."X_7" <= -1.027673) AND (t."X_9" <= 1.371161)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_8" <= -0.873679) AND (t."X_7" <= -1.027673) AND (t."X_9" > 1.371161)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_8" > -0.873679) AND (t."X_7" > -0.719187) AND (t."X_2" > 0.523353) AND (t."X_2" > 1.978962)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_8" > -0.873679) AND (t."X_7" > -0.719187) AND (t."X_2" > 0.523353) AND (t."X_2" <= 1.978962) AND (t."X_2" > 1.632453)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_8" > -0.873679) AND (t."X_7" > -0.719187) AND (t."X_2" > 0.523353) AND (t."X_2" <= 1.978962) AND (t."X_2" <= 1.632453) AND (t."X_8" <= -0.227699)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_8" > -0.873679) AND (t."X_7" > -0.719187) AND (t."X_2" > 0.523353) AND (t."X_2" <= 1.978962) AND (t."X_2" <= 1.632453) AND (t."X_8" > -0.227699) AND (t."X_9" <= 1.223711)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_8" > -0.873679) AND (t."X_7" > -0.719187) AND (t."X_2" > 0.523353) AND (t."X_2" <= 1.978962) AND (t."X_2" <= 1.632453) AND (t."X_8" > -0.227699) AND (t."X_9" > 1.223711)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_8" > -0.873679) AND (t."X_7" <= -0.719187) AND (t."X_9" <= -1.481201)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_8" > -0.873679) AND (t."X_7" <= -0.719187) AND (t."X_9" > -1.481201) AND (t."X_9" <= 0.070754)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_8" > -0.873679) AND (t."X_7" <= -0.719187) AND (t."X_9" > -1.481201) AND (t."X_9" > 0.070754) AND (t."X_7" <= -1.062027)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_8" > -0.873679) AND (t."X_7" <= -0.719187) AND (t."X_9" > -1.481201) AND (t."X_9" > 0.070754) AND (t."X_7" > -1.062027) AND (t."X_8" <= 0.779626)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_8" > -0.873679) AND (t."X_7" <= -0.719187) AND (t."X_9" > -1.481201) AND (t."X_9" > 0.070754) AND (t."X_7" > -1.062027) AND (t."X_8" > 0.779626)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_8" <= -0.873679) AND (t."X_7" > -1.027673) AND (t."X_8" <= -2.262140) AND (t."X_9" <= 0.440348)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_8" <= -0.873679) AND (t."X_7" > -1.027673) AND (t."X_8" <= -2.262140) AND (t."X_9" > 0.440348)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_8" > -0.873679) AND (t."X_7" > -0.719187) AND (t."X_2" <= 0.523353) AND (t."X_9" <= -1.142841)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_8" <= -0.873679) AND (t."X_7" > -1.027673) AND (t."X_8" > -2.262140) AND (t."X_8" <= -1.195405)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_8" <= -0.873679) AND (t."X_7" > -1.027673) AND (t."X_8" > -2.262140) AND (t."X_8" > -1.195405) AND (t."X_8" <= -1.046974)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_8" <= -0.873679) AND (t."X_7" > -1.027673) AND (t."X_8" > -2.262140) AND (t."X_8" > -1.195405) AND (t."X_8" > -1.046974)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_8" > -0.873679) AND (t."X_7" > -0.719187) AND (t."X_2" <= 0.523353) AND (t."X_9" > -1.142841) AND (t."X_2" <= 0.452262)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_8" > -0.873679) AND (t."X_7" > -0.719187) AND (t."X_2" <= 0.523353) AND (t."X_9" > -1.142841) AND (t."X_2" > 0.452262) AND (t."X_9" <= 1.014119)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_8" > -0.873679) AND (t."X_7" > -0.719187) AND (t."X_2" <= 0.523353) AND (t."X_9" > -1.142841) AND (t."X_2" > 0.452262) AND (t."X_9" > 1.014119)) THEN 40 ELSE NULL END AS "Leaf_40"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.296875 AS "P_1", 0.250000 AS "P_2", 0.140625 AS "P_3", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.300000 AS "P_0", 0.000000 AS "P_1", 0.550000 AS "P_2", 0.150000 AS "P_3", 2 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.318182 AS "P_0", 0.431818 AS "P_1", 0.113636 AS "P_2", 0.136364 AS "P_3", 1 AS "D", 0.431818 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.857143 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.769231 AS "P_2", 0.230769 AS "P_3", 2 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.647059 AS "P_0", 0.058824 AS "P_1", 0.117647 AS "P_2", 0.176471 AS "P_3", 0 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.111111 AS "P_0", 0.666667 AS "P_1", 0.111111 AS "P_2", 0.111111 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.052632 AS "P_0", 0.894737 AS "P_1", 0.052632 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.250000 AS "P_0", 0.125000 AS "P_1", 0.250000 AS "P_2", 0.375000 AS "P_3", 3 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.400000 AS "P_0", 0.200000 AS "P_1", 0.400000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.733333 AS "P_0", 0.066667 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 0 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.333333 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.900000 AS "P_2", 0.100000 AS "P_3", 2 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > -1.009942) AND (t."X_8" > 0.158958) AND (t."X_9" > 0.937469) AND (t."X_9" <= 1.483396)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_7" > -1.009942) AND (t."X_8" > 0.158958) AND (t."X_9" > 0.937469) AND (t."X_9" > 1.483396)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_7" <= -1.009942) AND (t."X_8" <= -1.154042) AND (t."X_4" > -0.159110)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_7" <= -1.009942) AND (t."X_8" <= -1.154042) AND (t."X_4" <= -0.159110) AND (t."X_9" <= 1.624307)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_7" <= -1.009942) AND (t."X_8" <= -1.154042) AND (t."X_4" <= -0.159110) AND (t."X_9" > 1.624307)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_7" <= -1.009942) AND (t."X_8" > -1.154042) AND (t."X_9" > 0.002357)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_7" <= -1.009942) AND (t."X_8" > -1.154042) AND (t."X_9" <= 0.002357) AND (t."X_9" <= -0.101966)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_7" <= -1.009942) AND (t."X_8" > -1.154042) AND (t."X_9" <= 0.002357) AND (t."X_9" > -0.101966)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_7" > -1.009942) AND (t."X_8" <= 0.158958) AND (t."X_7" <= -0.420942) AND (t."X_9" <= 0.338172)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_7" > -1.009942) AND (t."X_8" <= 0.158958) AND (t."X_7" <= -0.420942) AND (t."X_9" > 0.338172)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_7" > -1.009942) AND (t."X_8" <= 0.158958) AND (t."X_7" > -0.420942) AND (t."X_7" > 0.983350)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_7" > -1.009942) AND (t."X_8" <= 0.158958) AND (t."X_7" > -0.420942) AND (t."X_7" <= 0.983350) AND (t."X_8" > -0.280763)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" > -1.009942) AND (t."X_8" <= 0.158958) AND (t."X_7" > -0.420942) AND (t."X_7" <= 0.983350) AND (t."X_8" <= -0.280763) AND (t."X_9" <= -0.140145)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_7" > -1.009942) AND (t."X_8" <= 0.158958) AND (t."X_7" > -0.420942) AND (t."X_7" <= 0.983350) AND (t."X_8" <= -0.280763) AND (t."X_9" > -0.140145) AND (t."X_4" <= 0.130067)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_7" > -1.009942) AND (t."X_8" <= 0.158958) AND (t."X_7" > -0.420942) AND (t."X_7" <= 0.983350) AND (t."X_8" <= -0.280763) AND (t."X_9" > -0.140145) AND (t."X_4" > 0.130067)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_7" > -1.009942) AND (t."X_8" > 0.158958) AND (t."X_9" <= 0.937469) AND (t."X_9" <= 0.472777)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_7" > -1.009942) AND (t."X_8" > 0.158958) AND (t."X_9" <= 0.937469) AND (t."X_9" > 0.472777) AND (t."X_9" <= 0.637413)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_7" > -1.009942) AND (t."X_8" > 0.158958) AND (t."X_9" <= 0.937469) AND (t."X_9" > 0.472777) AND (t."X_9" > 0.637413)) THEN 34 ELSE NULL END AS "Leaf_34"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.250000 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.368421 AS "P_0", 0.000000 AS "P_1", 0.105263 AS "P_2", 0.526316 AS "P_3", 3 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.200000 AS "P_0", 0.355556 AS "P_1", 0.311111 AS "P_2", 0.133333 AS "P_3", 1 AS "D", 0.355556 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.200000 AS "P_0", 0.040000 AS "P_1", 0.560000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.560000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.200000 AS "P_0", 0.750000 AS "P_1", 0.000000 AS "P_2", 0.050000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.933333 AS "P_1", 0.000000 AS "P_2", 0.066667 AS "P_3", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.571429 AS "P_0", 0.000000 AS "P_1", 0.285714 AS "P_2", 0.142857 AS "P_3", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.600000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.400000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.375000 AS "P_2", 0.625000 AS "P_3", 3 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.294118 AS "P_0", 0.058824 AS "P_1", 0.647059 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.454545 AS "P_0", 0.090909 AS "P_1", 0.454545 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.454545 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.142857 AS "P_0", 0.142857 AS "P_1", 0.714286 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.833333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_2", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 2.360892)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" > 0.937469) AND (t."X_9" <= 1.289727) AND (t."X_4" <= -1.151959)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" > 0.937469) AND (t."X_9" <= 1.289727) AND (t."X_4" > -1.151959)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" > 0.937469) AND (t."X_9" > 1.289727) AND (t."X_9" <= 1.421332)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" > 0.937469) AND (t."X_9" > 1.289727) AND (t."X_9" > 1.421332) AND (t."X_2" <= 0.697126)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" > 0.937469) AND (t."X_9" > 1.289727) AND (t."X_9" > 1.421332) AND (t."X_2" > 0.697126)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" <= 0.937469) AND (t."X_2" > 1.978962) AND (t."X_0" <= 0.695221)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" <= 0.937469) AND (t."X_2" > 1.978962) AND (t."X_0" > 0.695221)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" <= 0.937469) AND (t."X_2" <= 1.978962) AND (t."X_7" <= -1.192296) AND (t."X_8" > 1.868851)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" <= 0.937469) AND (t."X_2" <= 1.978962) AND (t."X_7" <= -1.192296) AND (t."X_8" <= 1.868851) AND (t."X_9" <= -0.372633)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" <= 0.937469) AND (t."X_2" <= 1.978962) AND (t."X_7" <= -1.192296) AND (t."X_8" <= 1.868851) AND (t."X_9" > -0.372633)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" <= 0.937469) AND (t."X_2" <= 1.978962) AND (t."X_7" > -1.192296) AND (t."X_4" > 0.534175) AND (t."X_8" > 0.158958)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" <= 0.937469) AND (t."X_2" <= 1.978962) AND (t."X_7" > -1.192296) AND (t."X_4" > 0.534175) AND (t."X_8" <= 0.158958) AND (t."X_4" <= 0.950838)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" <= 0.937469) AND (t."X_2" <= 1.978962) AND (t."X_7" > -1.192296) AND (t."X_4" > 0.534175) AND (t."X_8" <= 0.158958) AND (t."X_4" > 0.950838) AND (t."X_8" <= -1.363775)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" <= 0.937469) AND (t."X_2" <= 1.978962) AND (t."X_7" > -1.192296) AND (t."X_4" > 0.534175) AND (t."X_8" <= 0.158958) AND (t."X_4" > 0.950838) AND (t."X_8" > -1.363775)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" <= 0.937469) AND (t."X_2" <= 1.978962) AND (t."X_7" > -1.192296) AND (t."X_4" <= 0.534175) AND (t."X_4" <= -0.809376) AND (t."X_2" <= 0.050453)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" <= 0.937469) AND (t."X_2" <= 1.978962) AND (t."X_7" > -1.192296) AND (t."X_4" <= 0.534175) AND (t."X_4" <= -0.809376) AND (t."X_2" > 0.050453)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" <= 0.937469) AND (t."X_2" <= 1.978962) AND (t."X_7" > -1.192296) AND (t."X_4" <= 0.534175) AND (t."X_4" > -0.809376) AND (t."X_9" <= -1.142841)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" <= 2.360892) AND (t."X_9" <= 0.937469) AND (t."X_2" <= 1.978962) AND (t."X_7" > -1.192296) AND (t."X_4" <= 0.534175) AND (t."X_4" > -0.809376) AND (t."X_9" > -1.142841)) THEN 36 ELSE NULL END AS "Leaf_36"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.359375 AS "P_0", 0.281250 AS "P_1", 0.156250 AS "P_2", 0.203125 AS "P_3", 0 AS "D", 0.359375 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.305085 AS "P_0", 0.305085 AS "P_1", 0.169492 AS "P_2", 0.220339 AS "P_3", 0 AS "D", 0.305085 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.217391 AS "P_0", 0.391304 AS "P_1", 0.130435 AS "P_2", 0.260870 AS "P_3", 1 AS "D", 0.391304 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.615385 AS "P_0", 0.000000 AS "P_1", 0.307692 AS "P_2", 0.076923 AS "P_3", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.888889 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.256410 AS "P_0", 0.461538 AS "P_1", 0.076923 AS "P_2", 0.205128 AS "P_3", 1 AS "D", 0.461538 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.428571 AS "P_2", 0.571429 AS "P_3", 3 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.172414 AS "P_0", 0.620690 AS "P_1", 0.103448 AS "P_2", 0.103448 AS "P_3", 1 AS "D", 0.620690 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.062500 AS "P_0", 0.812500 AS "P_1", 0.125000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.307692 AS "P_0", 0.384615 AS "P_1", 0.076923 AS "P_2", 0.230769 AS "P_3", 1 AS "D", 0.384615 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.125000 AS "P_2", 0.375000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.928571 AS "P_1", 0.071429 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_14", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_36", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_9" <= -1.500455)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" <= -0.714149) AND (t."X_8" > 1.610080) AND (t."X_9" <= -0.188248)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" <= -0.714149) AND (t."X_8" > 1.610080) AND (t."X_9" > -0.188248) AND (t."X_9" <= 0.669820)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" <= -0.714149) AND (t."X_8" > 1.610080) AND (t."X_9" > -0.188248) AND (t."X_9" > 0.669820)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" > -0.714149) AND (t."X_8" <= 0.550071) AND (t."X_9" > 0.836811)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" > -0.714149) AND (t."X_8" <= 0.550071) AND (t."X_9" <= 0.836811) AND (t."X_7" > 0.857195) AND (t."X_7" <= 1.067922)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" > -0.714149) AND (t."X_8" <= 0.550071) AND (t."X_9" <= 0.836811) AND (t."X_7" > 0.857195) AND (t."X_7" > 1.067922) AND (t."X_9" <= -0.562941)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" > -0.714149) AND (t."X_8" <= 0.550071) AND (t."X_9" <= 0.836811) AND (t."X_7" > 0.857195) AND (t."X_7" > 1.067922) AND (t."X_9" > -0.562941)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" > -0.714149) AND (t."X_8" <= 0.550071) AND (t."X_9" <= 0.836811) AND (t."X_7" <= 0.857195) AND (t."X_8" > -0.320119)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" > -0.714149) AND (t."X_8" <= 0.550071) AND (t."X_9" <= 0.836811) AND (t."X_7" <= 0.857195) AND (t."X_8" <= -0.320119) AND (t."X_9" <= -0.140145)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" > -0.714149) AND (t."X_8" <= 0.550071) AND (t."X_9" <= 0.836811) AND (t."X_7" <= 0.857195) AND (t."X_8" <= -0.320119) AND (t."X_9" > -0.140145) AND (t."X_9" > 0.639461)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" > -0.714149) AND (t."X_8" <= 0.550071) AND (t."X_9" <= 0.836811) AND (t."X_7" <= 0.857195) AND (t."X_8" <= -0.320119) AND (t."X_9" > -0.140145) AND (t."X_9" <= 0.639461) AND (t."X_9" <= 0.166494)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" > -0.714149) AND (t."X_8" <= 0.550071) AND (t."X_9" <= 0.836811) AND (t."X_7" <= 0.857195) AND (t."X_8" <= -0.320119) AND (t."X_9" > -0.140145) AND (t."X_9" <= 0.639461) AND (t."X_9" > 0.166494) AND (t."X_9" <= 0.396115)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" > -0.714149) AND (t."X_8" <= 0.550071) AND (t."X_9" <= 0.836811) AND (t."X_7" <= 0.857195) AND (t."X_8" <= -0.320119) AND (t."X_9" > -0.140145) AND (t."X_9" <= 0.639461) AND (t."X_9" > 0.166494) AND (t."X_9" > 0.396115)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" <= -0.714149) AND (t."X_8" <= 1.610080) AND (t."X_9" <= -0.499828)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" <= -0.714149) AND (t."X_8" <= 1.610080) AND (t."X_9" > -0.499828) AND (t."X_7" <= -3.732285)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" <= -0.714149) AND (t."X_8" <= 1.610080) AND (t."X_9" > -0.499828) AND (t."X_7" > -3.732285) AND (t."X_3" > 0.888904)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" <= -0.714149) AND (t."X_8" <= 1.610080) AND (t."X_9" > -0.499828) AND (t."X_7" > -3.732285) AND (t."X_3" <= 0.888904) AND (t."X_8" > 0.282351)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" <= -0.714149) AND (t."X_8" <= 1.610080) AND (t."X_9" > -0.499828) AND (t."X_7" > -3.732285) AND (t."X_3" <= 0.888904) AND (t."X_8" <= 0.282351) AND (t."X_9" <= 0.036837) AND (t."X_9" <= -0.207181)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" <= -0.714149) AND (t."X_8" <= 1.610080) AND (t."X_9" > -0.499828) AND (t."X_7" > -3.732285) AND (t."X_3" <= 0.888904) AND (t."X_8" <= 0.282351) AND (t."X_9" <= 0.036837) AND (t."X_9" > -0.207181)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" <= -0.714149) AND (t."X_8" <= 1.610080) AND (t."X_9" > -0.499828) AND (t."X_7" > -3.732285) AND (t."X_3" <= 0.888904) AND (t."X_8" <= 0.282351) AND (t."X_9" > 0.036837) AND (t."X_9" <= 0.103146)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" <= -0.714149) AND (t."X_8" <= 1.610080) AND (t."X_9" > -0.499828) AND (t."X_7" > -3.732285) AND (t."X_3" <= 0.888904) AND (t."X_8" <= 0.282351) AND (t."X_9" > 0.036837) AND (t."X_9" > 0.103146) AND (t."X_9" <= 0.679356)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" <= -0.714149) AND (t."X_8" <= 1.610080) AND (t."X_9" > -0.499828) AND (t."X_7" > -3.732285) AND (t."X_3" <= 0.888904) AND (t."X_8" <= 0.282351) AND (t."X_9" > 0.036837) AND (t."X_9" > 0.103146) AND (t."X_9" > 0.679356)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" > -0.714149) AND (t."X_8" > 0.550071) AND (t."X_8" > 0.895821)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" > -0.714149) AND (t."X_8" > 0.550071) AND (t."X_8" <= 0.895821) AND (t."X_9" <= 0.472777)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_9" > -1.500455) AND (t."X_7" > -0.714149) AND (t."X_8" > 0.550071) AND (t."X_8" <= 0.895821) AND (t."X_9" > 0.472777)) THEN 50 ELSE NULL END AS "Leaf_50"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.250000 AS "P_1", 0.234375 AS "P_2", 0.203125 AS "P_3", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.344828 AS "P_0", 0.275862 AS "P_1", 0.155172 AS "P_2", 0.224138 AS "P_3", 0 AS "D", 0.344828 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.517241 AS "P_0", 0.068966 AS "P_1", 0.068966 AS "P_2", 0.344828 AS "P_3", 0 AS "D", 0.517241 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.172414 AS "P_0", 0.482759 AS "P_1", 0.241379 AS "P_2", 0.103448 AS "P_3", 1 AS "D", 0.482759 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.700000 AS "P_0", 0.050000 AS "P_1", 0.100000 AS "P_2", 0.150000 AS "P_3", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.111111 AS "P_0", 0.111111 AS "P_1", 0.000000 AS "P_2", 0.777778 AS "P_3", 3 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.125000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.875000 AS "P_3", 3 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.263158 AS "P_0", 0.263158 AS "P_1", 0.368421 AS "P_2", 0.105263 AS "P_3", 2 AS "D", 0.368421 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.900000 AS "P_1", 0.000000 AS "P_2", 0.100000 AS "P_3", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.200000 AS "P_2", 0.133333 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.111111 AS "P_0", 0.555556 AS "P_1", 0.222222 AS "P_2", 0.111111 AS "P_3", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.200000 AS "P_0", 0.200000 AS "P_1", 0.400000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.500000 AS "P_0", 0.083333 AS "P_1", 0.166667 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.333333 AS "P_0", 0.111111 AS "P_1", 0.222222 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.428571 AS "P_0", 0.142857 AS "P_1", 0.285714 AS "P_2", 0.142857 AS "P_3", 0 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= -2.039162) AND (t."X_9" <= 0.391692) AND (t."X_9" > 0.002357)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" <= -2.039162) AND (t."X_9" <= 0.391692) AND (t."X_9" <= 0.002357) AND (t."X_9" > -0.135613)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_6" <= -2.039162) AND (t."X_9" <= 0.391692) AND (t."X_9" <= 0.002357) AND (t."X_9" <= -0.135613) AND (t."X_5" <= 0.266459)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" <= -2.039162) AND (t."X_9" <= 0.391692) AND (t."X_9" <= 0.002357) AND (t."X_9" <= -0.135613) AND (t."X_5" > 0.266459)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_6" <= -2.039162) AND (t."X_9" > 0.391692) AND (t."X_4" <= -0.398935) AND (t."X_9" <= 1.421332)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" <= -2.039162) AND (t."X_9" > 0.391692) AND (t."X_4" <= -0.398935) AND (t."X_9" > 1.421332)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_5" > 1.507747)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_5" <= 1.507747) AND (t."X_8" > 0.118972) AND (t."X_9" <= 0.937469)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_5" <= 1.507747) AND (t."X_8" > 0.118972) AND (t."X_9" > 0.937469) AND (t."X_4" <= -1.290444)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_5" <= 1.507747) AND (t."X_8" > 0.118972) AND (t."X_9" > 0.937469) AND (t."X_4" > -1.290444)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_5" <= 1.507747) AND (t."X_8" <= 0.118972) AND (t."X_4" > 1.410078)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" <= -2.039162) AND (t."X_9" > 0.391692) AND (t."X_4" > -0.398935) AND (t."X_5" > 0.247924)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" <= -2.039162) AND (t."X_9" > 0.391692) AND (t."X_4" > -0.398935) AND (t."X_5" <= 0.247924) AND (t."X_5" <= -0.612918)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" <= -2.039162) AND (t."X_9" > 0.391692) AND (t."X_4" > -0.398935) AND (t."X_5" <= 0.247924) AND (t."X_5" > -0.612918)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_5" <= 1.507747) AND (t."X_8" <= 0.118972) AND (t."X_4" <= 1.410078) AND (t."X_8" > -0.826371) AND (t."X_5" > 0.676104) AND (t."X_5" <= 0.808082)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_5" <= 1.507747) AND (t."X_8" <= 0.118972) AND (t."X_4" <= 1.410078) AND (t."X_8" > -0.826371) AND (t."X_5" > 0.676104) AND (t."X_5" > 0.808082)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_5" <= 1.507747) AND (t."X_8" <= 0.118972) AND (t."X_4" <= 1.410078) AND (t."X_8" > -0.826371) AND (t."X_5" <= 0.676104) AND (t."X_9" > -0.630048)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_5" <= 1.507747) AND (t."X_8" <= 0.118972) AND (t."X_4" <= 1.410078) AND (t."X_8" > -0.826371) AND (t."X_5" <= 0.676104) AND (t."X_9" <= -0.630048) AND (t."X_9" <= -1.209886)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_5" <= 1.507747) AND (t."X_8" <= 0.118972) AND (t."X_4" <= 1.410078) AND (t."X_8" > -0.826371) AND (t."X_5" <= 0.676104) AND (t."X_9" <= -0.630048) AND (t."X_9" > -1.209886)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_5" <= 1.507747) AND (t."X_8" <= 0.118972) AND (t."X_4" <= 1.410078) AND (t."X_8" <= -0.826371) AND (t."X_9" > 1.193869) AND (t."X_9" <= 1.371161)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_5" <= 1.507747) AND (t."X_8" <= 0.118972) AND (t."X_4" <= 1.410078) AND (t."X_8" <= -0.826371) AND (t."X_9" > 1.193869) AND (t."X_9" > 1.371161)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_5" <= 1.507747) AND (t."X_8" <= 0.118972) AND (t."X_4" <= 1.410078) AND (t."X_8" <= -0.826371) AND (t."X_9" <= 1.193869) AND (t."X_4" <= 0.687059)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_5" <= 1.507747) AND (t."X_8" <= 0.118972) AND (t."X_4" <= 1.410078) AND (t."X_8" <= -0.826371) AND (t."X_9" <= 1.193869) AND (t."X_4" > 0.687059) AND (t."X_5" <= 0.484368)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_5" <= 1.507747) AND (t."X_8" <= 0.118972) AND (t."X_4" <= 1.410078) AND (t."X_8" <= -0.826371) AND (t."X_9" <= 1.193869) AND (t."X_4" > 0.687059) AND (t."X_5" > 0.484368)) THEN 46 ELSE NULL END AS "Leaf_46"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.312500 AS "P_0", 0.265625 AS "P_1", 0.281250 AS "P_2", 0.140625 AS "P_3", 0 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.500000 AS "P_0", 0.090909 AS "P_1", 0.090909 AS "P_2", 0.318182 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.214286 AS "P_0", 0.357143 AS "P_1", 0.380952 AS "P_2", 0.047619 AS "P_3", 2 AS "D", 0.380952 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.200000 AS "P_0", 0.100000 AS "P_1", 0.100000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.750000 AS "P_0", 0.083333 AS "P_1", 0.083333 AS "P_2", 0.083333 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.500000 AS "P_0", 0.250000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.131579 AS "P_0", 0.394737 AS "P_1", 0.421053 AS "P_2", 0.052632 AS "P_3", 2 AS "D", 0.421053 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.136364 AS "P_0", 0.045455 AS "P_1", 0.727273 AS "P_2", 0.090909 AS "P_3", 2 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.142857 AS "P_0", 0.047619 AS "P_1", 0.761905 AS "P_2", 0.047619 AS "P_3", 2 AS "D", 0.761905 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.142857 AS "P_0", 0.142857 AS "P_1", 0.571429 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.083333 AS "P_0", 0.000000 AS "P_1", 0.916667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_7" <= -1.009942) AND (t."X_9" > -0.281783)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_7" <= -1.009942) AND (t."X_9" <= -0.281783) AND (t."X_7" <= -1.315675)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_7" <= -1.009942) AND (t."X_9" <= -0.281783) AND (t."X_7" > -1.315675)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_5" <= 0.808082) AND (t."X_5" > 0.180796) AND (t."X_5" <= 0.407639)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_5" <= 0.808082) AND (t."X_5" > 0.180796) AND (t."X_5" > 0.407639) AND (t."X_8" <= -0.097610)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_5" <= 0.808082) AND (t."X_5" > 0.180796) AND (t."X_5" > 0.407639) AND (t."X_8" > -0.097610)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_5" > 0.808082) AND (t."X_8" <= -1.950294)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_5" > 0.808082) AND (t."X_8" > -1.950294) AND (t."X_8" <= -0.180262)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_5" > 0.808082) AND (t."X_8" > -1.950294) AND (t."X_8" > -0.180262)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_5" <= 0.808082) AND (t."X_5" <= 0.180796) AND (t."X_8" > -0.129333)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_5" <= 0.808082) AND (t."X_5" <= 0.180796) AND (t."X_8" <= -0.129333) AND (t."X_8" > -1.338487)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_5" <= 0.808082) AND (t."X_5" <= 0.180796) AND (t."X_8" <= -0.129333) AND (t."X_8" <= -1.338487) AND (t."X_7" <= -1.525653)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_5" <= 0.808082) AND (t."X_5" <= 0.180796) AND (t."X_8" <= -0.129333) AND (t."X_8" <= -1.338487) AND (t."X_7" > -1.525653) AND (t."X_8" <= -1.992784)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_5" <= 0.808082) AND (t."X_5" <= 0.180796) AND (t."X_8" <= -0.129333) AND (t."X_8" <= -1.338487) AND (t."X_7" > -1.525653) AND (t."X_8" > -1.992784)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_7" > -1.009942) AND (t."X_5" <= -1.818988)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_7" > -1.009942) AND (t."X_5" > -1.818988) AND (t."X_8" > 1.424160) AND (t."X_7" <= -0.831922)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_7" > -1.009942) AND (t."X_5" > -1.818988) AND (t."X_8" > 1.424160) AND (t."X_7" > -0.831922)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_7" > -1.009942) AND (t."X_5" > -1.818988) AND (t."X_8" <= 1.424160) AND (t."X_9" <= 1.077283)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_7" > -1.009942) AND (t."X_5" > -1.818988) AND (t."X_8" <= 1.424160) AND (t."X_9" > 1.077283) AND (t."X_8" <= 0.829120)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_7" > -1.009942) AND (t."X_5" > -1.818988) AND (t."X_8" <= 1.424160) AND (t."X_9" > 1.077283) AND (t."X_8" > 0.829120)) THEN 38 ELSE NULL END AS "Leaf_38"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.234375 AS "P_0", 0.328125 AS "P_1", 0.218750 AS "P_2", 0.218750 AS "P_3", 1 AS "D", 0.328125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.258065 AS "P_0", 0.064516 AS "P_1", 0.419355 AS "P_2", 0.258065 AS "P_3", 2 AS "D", 0.419355 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.212121 AS "P_0", 0.575758 AS "P_1", 0.030303 AS "P_2", 0.181818 AS "P_3", 1 AS "D", 0.575758 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.125000 AS "P_0", 0.000000 AS "P_1", 0.125000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.240000 AS "P_0", 0.760000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.760000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.318182 AS "P_0", 0.090909 AS "P_1", 0.545455 AS "P_2", 0.045455 AS "P_3", 2 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.111111 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.777778 AS "P_3", 3 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.636364 AS "P_0", 0.000000 AS "P_1", 0.272727 AS "P_2", 0.090909 AS "P_3", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.181818 AS "P_1", 0.818182 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.125000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.875000 AS "P_3", 3 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.428571 AS "P_0", 0.000000 AS "P_1", 0.428571 AS "P_2", 0.142857 AS "P_3", 0 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.173913 AS "P_0", 0.826087 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > 1.044675) AND (t."X_2" <= -1.127665)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_7" > 1.044675) AND (t."X_2" > -1.127665) AND (t."X_9" <= -1.005599)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_7" > 1.044675) AND (t."X_2" > -1.127665) AND (t."X_9" > -1.005599)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" <= 0.069262) AND (t."X_9" <= -1.481201)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" > 0.069262) AND (t."X_8" > 0.550071) AND (t."X_9" <= 0.669820) AND (t."X_8" <= 0.731978)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" > 0.069262) AND (t."X_8" > 0.550071) AND (t."X_9" <= 0.669820) AND (t."X_8" > 0.731978)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" > 0.069262) AND (t."X_8" > 0.550071) AND (t."X_9" > 0.669820) AND (t."X_2" <= -0.059069)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" > 0.069262) AND (t."X_8" > 0.550071) AND (t."X_9" > 0.669820) AND (t."X_2" > -0.059069) AND (t."X_7" <= 0.393143)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" > 0.069262) AND (t."X_8" > 0.550071) AND (t."X_9" > 0.669820) AND (t."X_2" > -0.059069) AND (t."X_7" > 0.393143)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" > 0.069262) AND (t."X_8" <= 0.550071) AND (t."X_8" <= -2.575696) AND (t."X_7" <= -1.468629)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" > 0.069262) AND (t."X_8" <= 0.550071) AND (t."X_8" <= -2.575696) AND (t."X_7" > -1.468629)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" <= 0.069262) AND (t."X_9" > -1.481201) AND (t."X_2" <= -1.776706)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" > 0.069262) AND (t."X_8" <= 0.550071) AND (t."X_8" > -2.575696) AND (t."X_9" > 1.421332)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" > 0.069262) AND (t."X_8" <= 0.550071) AND (t."X_8" > -2.575696) AND (t."X_9" <= 1.421332) AND (t."X_9" <= 0.298970) AND (t."X_7" <= 0.002395)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" > 0.069262) AND (t."X_8" <= 0.550071) AND (t."X_8" > -2.575696) AND (t."X_9" <= 1.421332) AND (t."X_9" <= 0.298970) AND (t."X_7" > 0.002395)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" > 0.069262) AND (t."X_8" <= 0.550071) AND (t."X_8" > -2.575696) AND (t."X_9" <= 1.421332) AND (t."X_9" > 0.298970) AND (t."X_8" <= -1.737986)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" > 0.069262) AND (t."X_8" <= 0.550071) AND (t."X_8" > -2.575696) AND (t."X_9" <= 1.421332) AND (t."X_9" > 0.298970) AND (t."X_8" > -1.737986)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" <= 0.069262) AND (t."X_9" > -1.481201) AND (t."X_2" > -1.776706) AND (t."X_7" > -0.719187) AND (t."X_9" <= -0.009909)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" <= 0.069262) AND (t."X_9" > -1.481201) AND (t."X_2" > -1.776706) AND (t."X_7" > -0.719187) AND (t."X_9" > -0.009909)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" <= 0.069262) AND (t."X_9" > -1.481201) AND (t."X_2" > -1.776706) AND (t."X_7" <= -0.719187) AND (t."X_2" > -0.187819)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" <= 0.069262) AND (t."X_9" > -1.481201) AND (t."X_2" > -1.776706) AND (t."X_7" <= -0.719187) AND (t."X_2" <= -0.187819) AND (t."X_7" <= -1.248505)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_7" <= 1.044675) AND (t."X_9" <= 0.069262) AND (t."X_9" > -1.481201) AND (t."X_2" > -1.776706) AND (t."X_7" <= -0.719187) AND (t."X_2" <= -0.187819) AND (t."X_7" > -1.248505)) THEN 42 ELSE NULL END AS "Leaf_42"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.234375 AS "P_0", 0.250000 AS "P_1", 0.312500 AS "P_2", 0.203125 AS "P_3", 2 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.306122 AS "P_0", 0.122449 AS "P_1", 0.346939 AS "P_2", 0.224490 AS "P_3", 2 AS "D", 0.346939 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.200000 AS "P_2", 0.133333 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.833333 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.588235 AS "P_0", 0.117647 AS "P_1", 0.235294 AS "P_2", 0.058824 AS "P_3", 0 AS "D", 0.588235 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.156250 AS "P_0", 0.125000 AS "P_1", 0.406250 AS "P_2", 0.312500 AS "P_3", 2 AS "D", 0.406250 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.769231 AS "P_0", 0.153846 AS "P_1", 0.000000 AS "P_2", 0.076923 AS "P_3", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.050000 AS "P_0", 0.000000 AS "P_1", 0.650000 AS "P_2", 0.300000 AS "P_3", 2 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.066667 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.133333 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.833333 AS "P_0", 0.083333 AS "P_1", 0.000000 AS "P_2", 0.083333 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.071429 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.071429 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.083333 AS "P_0", 0.000000 AS "P_1", 0.916667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.888889 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 0.039927) AND (t."X_3" > 0.761311) AND (t."X_2" <= 0.539221)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_6" > 0.039927) AND (t."X_3" > 0.761311) AND (t."X_2" > 0.539221) AND (t."X_9" <= 1.317851)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_6" > 0.039927) AND (t."X_3" > 0.761311) AND (t."X_2" > 0.539221) AND (t."X_9" > 1.317851)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_6" <= 0.039927) AND (t."X_7" <= -1.009942) AND (t."X_6" <= -3.450899) AND (t."X_6" <= -4.853613)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" <= 0.039927) AND (t."X_7" <= -1.009942) AND (t."X_6" <= -3.450899) AND (t."X_6" > -4.853613)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_6" <= 0.039927) AND (t."X_7" > -1.009942) AND (t."X_8" > 1.405816)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" > 0.039927) AND (t."X_3" <= 0.761311) AND (t."X_9" > 0.053666)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" > 0.039927) AND (t."X_3" <= 0.761311) AND (t."X_9" <= 0.053666) AND (t."X_9" <= -0.972499)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" > 0.039927) AND (t."X_3" <= 0.761311) AND (t."X_9" <= 0.053666) AND (t."X_9" > -0.972499) AND (t."X_6" <= 1.353416)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_6" > 0.039927) AND (t."X_3" <= 0.761311) AND (t."X_9" <= 0.053666) AND (t."X_9" > -0.972499) AND (t."X_6" > 1.353416)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_6" <= 0.039927) AND (t."X_7" <= -1.009942) AND (t."X_6" > -3.450899) AND (t."X_9" > -0.238301)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" <= 0.039927) AND (t."X_7" <= -1.009942) AND (t."X_6" > -3.450899) AND (t."X_9" <= -0.238301) AND (t."X_9" <= -0.499828)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" <= 0.039927) AND (t."X_7" <= -1.009942) AND (t."X_6" > -3.450899) AND (t."X_9" <= -0.238301) AND (t."X_9" > -0.499828)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" <= 0.039927) AND (t."X_7" > -1.009942) AND (t."X_8" <= 1.405816) AND (t."X_2" <= 0.547145)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" <= 0.039927) AND (t."X_7" > -1.009942) AND (t."X_8" <= 1.405816) AND (t."X_2" > 0.547145) AND (t."X_2" > 1.325148)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_6" <= 0.039927) AND (t."X_7" > -1.009942) AND (t."X_8" <= 1.405816) AND (t."X_2" > 0.547145) AND (t."X_2" <= 1.325148) AND (t."X_9" <= -0.849663)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" <= 0.039927) AND (t."X_7" > -1.009942) AND (t."X_8" <= 1.405816) AND (t."X_2" > 0.547145) AND (t."X_2" <= 1.325148) AND (t."X_9" > -0.849663)) THEN 32 ELSE NULL END AS "Leaf_32"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.296875 AS "P_0", 0.203125 AS "P_1", 0.265625 AS "P_2", 0.234375 AS "P_3", 0 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.432432 AS "P_0", 0.324324 AS "P_1", 0.108108 AS "P_2", 0.135135 AS "P_3", 0 AS "D", 0.432432 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.111111 AS "P_0", 0.037037 AS "P_1", 0.481481 AS "P_2", 0.370370 AS "P_3", 2 AS "D", 0.481481 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.133333 AS "P_0", 0.066667 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.083333 AS "P_0", 0.000000 AS "P_1", 0.083333 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.555556 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.277778 AS "P_3", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.315789 AS "P_0", 0.631579 AS "P_1", 0.052632 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.133333 AS "P_0", 0.800000 AS "P_1", 0.066667 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.400000 AS "P_0", 0.200000 AS "P_1", 0.400000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.333333 AS "P_0", 0.500000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" > 0.939840) AND (t."X_3" <= 1.532671)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_3" > 0.939840) AND (t."X_3" > 1.532671) AND (t."X_8" > -0.379263)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_3" > 0.939840) AND (t."X_3" > 1.532671) AND (t."X_8" <= -0.379263) AND (t."X_1" <= -3.602350)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_3" > 0.939840) AND (t."X_3" > 1.532671) AND (t."X_8" <= -0.379263) AND (t."X_1" > -3.602350)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_3" <= 0.939840) AND (t."X_8" > 0.476894) AND (t."X_0" <= -1.483484)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_3" <= 0.939840) AND (t."X_8" > 0.476894) AND (t."X_0" > -1.483484) AND (t."X_8" > 1.424160) AND (t."X_9" <= -0.173647)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_3" <= 0.939840) AND (t."X_8" > 0.476894) AND (t."X_0" > -1.483484) AND (t."X_8" > 1.424160) AND (t."X_9" > -0.173647)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_3" <= 0.939840) AND (t."X_8" <= 0.476894) AND (t."X_7" <= -3.732285)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_3" <= 0.939840) AND (t."X_8" <= 0.476894) AND (t."X_7" > -3.732285) AND (t."X_1" > 2.327507) AND (t."X_1" <= 3.018896)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_3" <= 0.939840) AND (t."X_8" <= 0.476894) AND (t."X_7" > -3.732285) AND (t."X_1" > 2.327507) AND (t."X_1" > 3.018896)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_3" <= 0.939840) AND (t."X_8" <= 0.476894) AND (t."X_7" > -3.732285) AND (t."X_1" <= 2.327507) AND (t."X_9" > 0.281242)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_3" <= 0.939840) AND (t."X_8" <= 0.476894) AND (t."X_7" > -3.732285) AND (t."X_1" <= 2.327507) AND (t."X_9" <= 0.281242) AND (t."X_9" <= -0.392660)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_3" <= 0.939840) AND (t."X_8" <= 0.476894) AND (t."X_7" > -3.732285) AND (t."X_1" <= 2.327507) AND (t."X_9" <= 0.281242) AND (t."X_9" > -0.392660) AND (t."X_1" > 0.259331)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_3" <= 0.939840) AND (t."X_8" <= 0.476894) AND (t."X_7" > -3.732285) AND (t."X_1" <= 2.327507) AND (t."X_9" <= 0.281242) AND (t."X_9" > -0.392660) AND (t."X_1" <= 0.259331) AND (t."X_9" <= -0.172570)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_3" <= 0.939840) AND (t."X_8" <= 0.476894) AND (t."X_7" > -3.732285) AND (t."X_1" <= 2.327507) AND (t."X_9" <= 0.281242) AND (t."X_9" > -0.392660) AND (t."X_1" <= 0.259331) AND (t."X_9" > -0.172570) AND (t."X_1" <= -1.712436)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_3" <= 0.939840) AND (t."X_8" <= 0.476894) AND (t."X_7" > -3.732285) AND (t."X_1" <= 2.327507) AND (t."X_9" <= 0.281242) AND (t."X_9" > -0.392660) AND (t."X_1" <= 0.259331) AND (t."X_9" > -0.172570) AND (t."X_1" > -1.712436)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_3" <= 0.939840) AND (t."X_8" > 0.476894) AND (t."X_0" > -1.483484) AND (t."X_8" <= 1.424160) AND (t."X_1" > 0.565133)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_3" <= 0.939840) AND (t."X_8" > 0.476894) AND (t."X_0" > -1.483484) AND (t."X_8" <= 1.424160) AND (t."X_1" <= 0.565133) AND (t."X_9" <= -0.000906)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_3" <= 0.939840) AND (t."X_8" > 0.476894) AND (t."X_0" > -1.483484) AND (t."X_8" <= 1.424160) AND (t."X_1" <= 0.565133) AND (t."X_9" > -0.000906)) THEN 36 ELSE NULL END AS "Leaf_36"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.234375 AS "P_0", 0.343750 AS "P_1", 0.234375 AS "P_2", 0.187500 AS "P_3", 1 AS "D", 0.343750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.192308 AS "P_0", 0.423077 AS "P_1", 0.269231 AS "P_2", 0.115385 AS "P_3", 1 AS "D", 0.423077 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.416667 AS "P_0", 0.000000 AS "P_1", 0.083333 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.555556 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.296296 AS "P_0", 0.185185 AS "P_1", 0.481481 AS "P_2", 0.037037 AS "P_3", 2 AS "D", 0.481481 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.080000 AS "P_0", 0.680000 AS "P_1", 0.040000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.090909 AS "P_0", 0.772727 AS "P_1", 0.045455 AS "P_2", 0.090909 AS "P_3", 1 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.894737 AS "P_1", 0.000000 AS "P_2", 0.105263 AS "P_3", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.208333 AS "P_0", 0.208333 AS "P_1", 0.541667 AS "P_2", 0.041667 AS "P_3", 2 AS "D", 0.541667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.263158 AS "P_0", 0.052632 AS "P_1", 0.631579 AS "P_2", 0.052632 AS "P_3", 2 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.384615 AS "P_0", 0.076923 AS "P_1", 0.461538 AS "P_2", 0.076923 AS "P_3", 2 AS "D", 0.461538 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.625000 AS "P_0", 0.125000 AS "P_1", 0.125000 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.333333 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.600000 AS "P_1", 0.000000 AS "P_2", 0.400000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_8", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" <= -0.780772) AND (t."X_8" <= -1.188120)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_1" > -0.780772) AND (t."X_7" <= -0.947884) AND (t."X_0" > 0.519752)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_1" <= -0.780772) AND (t."X_8" > -1.188120) AND (t."X_8" <= -0.858064)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_1" <= -0.780772) AND (t."X_8" > -1.188120) AND (t."X_8" > -0.858064) AND (t."X_9" <= -0.615548)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_1" > -0.780772) AND (t."X_7" > -0.947884) AND (t."X_8" <= 0.124579) AND (t."X_7" <= 0.764501)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_1" > -0.780772) AND (t."X_7" > -0.947884) AND (t."X_8" <= 0.124579) AND (t."X_7" > 0.764501) AND (t."X_7" > 0.983350) AND (t."X_7" <= 1.348830)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_1" > -0.780772) AND (t."X_7" > -0.947884) AND (t."X_8" <= 0.124579) AND (t."X_7" > 0.764501) AND (t."X_7" > 0.983350) AND (t."X_7" > 1.348830)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_1" > -0.780772) AND (t."X_7" > -0.947884) AND (t."X_8" <= 0.124579) AND (t."X_7" > 0.764501) AND (t."X_7" <= 0.983350) AND (t."X_1" <= 1.499585)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_1" > -0.780772) AND (t."X_7" > -0.947884) AND (t."X_8" <= 0.124579) AND (t."X_7" > 0.764501) AND (t."X_7" <= 0.983350) AND (t."X_1" > 1.499585) AND (t."X_9" <= 0.506193)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_1" > -0.780772) AND (t."X_7" > -0.947884) AND (t."X_8" <= 0.124579) AND (t."X_7" > 0.764501) AND (t."X_7" <= 0.983350) AND (t."X_1" > 1.499585) AND (t."X_9" > 0.506193)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_1" > -0.780772) AND (t."X_7" <= -0.947884) AND (t."X_0" <= 0.519752) AND (t."X_0" > -1.731476)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_1" > -0.780772) AND (t."X_7" <= -0.947884) AND (t."X_0" <= 0.519752) AND (t."X_0" <= -1.731476) AND (t."X_1" <= 1.965222)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_1" > -0.780772) AND (t."X_7" <= -0.947884) AND (t."X_0" <= 0.519752) AND (t."X_0" <= -1.731476) AND (t."X_1" > 1.965222)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_1" <= -0.780772) AND (t."X_8" > -1.188120) AND (t."X_8" > -0.858064) AND (t."X_9" > -0.615548) AND (t."X_0" <= 1.688569)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_1" <= -0.780772) AND (t."X_8" > -1.188120) AND (t."X_8" > -0.858064) AND (t."X_9" > -0.615548) AND (t."X_0" > 1.688569) AND (t."X_7" <= -1.223553)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_1" <= -0.780772) AND (t."X_8" > -1.188120) AND (t."X_8" > -0.858064) AND (t."X_9" > -0.615548) AND (t."X_0" > 1.688569) AND (t."X_7" > -1.223553)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_1" > -0.780772) AND (t."X_7" > -0.947884) AND (t."X_8" > 0.124579) AND (t."X_9" <= 0.472777)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_1" > -0.780772) AND (t."X_7" > -0.947884) AND (t."X_8" > 0.124579) AND (t."X_9" > 0.472777) AND (t."X_9" <= 0.637413)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_1" > -0.780772) AND (t."X_7" > -0.947884) AND (t."X_8" > 0.124579) AND (t."X_9" > 0.472777) AND (t."X_9" > 0.637413)) THEN 36 ELSE NULL END AS "Leaf_36"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.218750 AS "P_0", 0.406250 AS "P_1", 0.218750 AS "P_2", 0.156250 AS "P_3", 1 AS "D", 0.406250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.526316 AS "P_0", 0.105263 AS "P_1", 0.315789 AS "P_2", 0.052632 AS "P_3", 0 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.088889 AS "P_0", 0.533333 AS "P_1", 0.177778 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.769231 AS "P_0", 0.153846 AS "P_1", 0.000000 AS "P_2", 0.076923 AS "P_3", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.100000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.700000 AS "P_3", 3 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.085714 AS "P_0", 0.685714 AS "P_1", 0.171429 AS "P_2", 0.057143 AS "P_3", 1 AS "D", 0.685714 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.125000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.875000 AS "P_3", 3 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.250000 AS "P_0", 0.166667 AS "P_1", 0.500000 AS "P_2", 0.083333 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.956522 AS "P_1", 0.000000 AS "P_2", 0.043478 AS "P_3", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.333333 AS "P_0", 0.222222 AS "P_1", 0.333333 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.857143 AS "P_1", 0.000000 AS "P_2", 0.142857 AS "P_3", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_9" <= -0.018241) AND (t."X_8" <= 0.153351) AND (t."X_9" <= -1.425803)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_9" <= -0.018241) AND (t."X_8" <= 0.153351) AND (t."X_9" > -1.425803) AND (t."X_9" <= -1.048740)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_9" <= -0.018241) AND (t."X_8" <= 0.153351) AND (t."X_9" > -1.425803) AND (t."X_9" > -1.048740) AND (t."X_9" <= -0.465217)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_9" <= -0.018241) AND (t."X_8" <= 0.153351) AND (t."X_9" > -1.425803) AND (t."X_9" > -1.048740) AND (t."X_9" > -0.465217)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_9" <= -0.018241) AND (t."X_8" > 0.153351) AND (t."X_5" > 1.507747)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_9" <= -0.018241) AND (t."X_8" > 0.153351) AND (t."X_5" <= 1.507747) AND (t."X_7" <= -1.189685)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_9" <= -0.018241) AND (t."X_8" > 0.153351) AND (t."X_5" <= 1.507747) AND (t."X_7" > -1.189685)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_9" > -0.018241) AND (t."X_5" > 0.754020) AND (t."X_0" > -0.100245)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_9" > -0.018241) AND (t."X_5" > 0.754020) AND (t."X_0" <= -0.100245) AND (t."X_8" <= -0.442341)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_9" > -0.018241) AND (t."X_5" > 0.754020) AND (t."X_0" <= -0.100245) AND (t."X_8" > -0.442341)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_9" > -0.018241) AND (t."X_5" <= 0.754020) AND (t."X_9" > 1.289727)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_9" > -0.018241) AND (t."X_5" <= 0.754020) AND (t."X_9" <= 1.289727) AND (t."X_7" <= -1.466162)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_9" > -0.018241) AND (t."X_5" <= 0.754020) AND (t."X_9" <= 1.289727) AND (t."X_7" > -1.466162) AND (t."X_0" <= -0.147161) AND (t."X_8" > -0.633161)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_9" > -0.018241) AND (t."X_5" <= 0.754020) AND (t."X_9" <= 1.289727) AND (t."X_7" > -1.466162) AND (t."X_0" <= -0.147161) AND (t."X_8" <= -0.633161) AND (t."X_0" <= -1.449710)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_9" > -0.018241) AND (t."X_5" <= 0.754020) AND (t."X_9" <= 1.289727) AND (t."X_7" > -1.466162) AND (t."X_0" <= -0.147161) AND (t."X_8" <= -0.633161) AND (t."X_0" > -1.449710)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_9" > -0.018241) AND (t."X_5" <= 0.754020) AND (t."X_9" <= 1.289727) AND (t."X_7" > -1.466162) AND (t."X_0" > -0.147161) AND (t."X_8" <= -1.992784)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_9" > -0.018241) AND (t."X_5" <= 0.754020) AND (t."X_9" <= 1.289727) AND (t."X_7" > -1.466162) AND (t."X_0" > -0.147161) AND (t."X_8" > -1.992784) AND (t."X_8" > -0.603827)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_9" > -0.018241) AND (t."X_5" <= 0.754020) AND (t."X_9" <= 1.289727) AND (t."X_7" > -1.466162) AND (t."X_0" > -0.147161) AND (t."X_8" > -1.992784) AND (t."X_8" <= -0.603827) AND (t."X_9" <= 0.087550)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_9" > -0.018241) AND (t."X_5" <= 0.754020) AND (t."X_9" <= 1.289727) AND (t."X_7" > -1.466162) AND (t."X_0" > -0.147161) AND (t."X_8" > -1.992784) AND (t."X_8" <= -0.603827) AND (t."X_9" > 0.087550)) THEN 36 ELSE NULL END AS "Leaf_36"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.281250 AS "P_0", 0.281250 AS "P_1", 0.203125 AS "P_2", 0.234375 AS "P_3", 0 AS "D", 0.281250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.259259 AS "P_0", 0.555556 AS "P_1", 0.148148 AS "P_2", 0.037037 AS "P_3", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.297297 AS "P_0", 0.081081 AS "P_1", 0.243243 AS "P_2", 0.378378 AS "P_3", 3 AS "D", 0.378378 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.454545 AS "P_0", 0.090909 AS "P_1", 0.363636 AS "P_2", 0.090909 AS "P_3", 0 AS "D", 0.454545 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.714286 AS "P_0", 0.142857 AS "P_1", 0.000000 AS "P_2", 0.142857 AS "P_3", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.391304 AS "P_0", 0.130435 AS "P_1", 0.304348 AS "P_2", 0.173913 AS "P_3", 0 AS "D", 0.391304 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.714286 AS "P_3", 3 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.166667 AS "P_1", 0.111111 AS "P_2", 0.222222 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.600000 AS "P_0", 0.200000 AS "P_1", 0.133333 AS "P_2", 0.066667 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.333333 AS "P_0", 0.500000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.777778 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.875000 AS "P_0", 0.000000 AS "P_1", 0.125000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= -2.039162) AND (t."X_7" > -1.007331) AND (t."X_7" <= -0.110656)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_6" <= -2.039162) AND (t."X_7" > -1.007331) AND (t."X_7" > -0.110656)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" <= -2.039162) AND (t."X_7" <= -1.007331) AND (t."X_8" <= -1.333429)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_6" <= -2.039162) AND (t."X_7" <= -1.007331) AND (t."X_8" > -1.333429)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_7" > 1.272845)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_7" <= 1.272845) AND (t."X_8" > 0.029063) AND (t."X_7" <= 0.080690) AND (t."X_7" <= -0.915373)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_7" <= 1.272845) AND (t."X_8" > 0.029063) AND (t."X_7" <= 0.080690) AND (t."X_7" > -0.915373)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_7" <= 1.272845) AND (t."X_8" <= 0.029063) AND (t."X_4" <= -0.221043) AND (t."X_4" <= -1.582835)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_7" <= 1.272845) AND (t."X_8" <= 0.029063) AND (t."X_4" <= -0.221043) AND (t."X_4" > -1.582835) AND (t."X_4" > -0.332074)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_7" <= 1.272845) AND (t."X_8" <= 0.029063) AND (t."X_4" <= -0.221043) AND (t."X_4" > -1.582835) AND (t."X_4" <= -0.332074) AND (t."X_7" > -1.248196)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_7" <= 1.272845) AND (t."X_8" <= 0.029063) AND (t."X_4" <= -0.221043) AND (t."X_4" > -1.582835) AND (t."X_4" <= -0.332074) AND (t."X_7" <= -1.248196) AND (t."X_9" <= 0.768761)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_7" <= 1.272845) AND (t."X_8" <= 0.029063) AND (t."X_4" <= -0.221043) AND (t."X_4" > -1.582835) AND (t."X_4" <= -0.332074) AND (t."X_7" <= -1.248196) AND (t."X_9" > 0.768761)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_7" <= 1.272845) AND (t."X_8" <= 0.029063) AND (t."X_4" > -0.221043) AND (t."X_9" > 0.579684) AND (t."X_7" <= -1.599920)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_7" <= 1.272845) AND (t."X_8" <= 0.029063) AND (t."X_4" > -0.221043) AND (t."X_9" > 0.579684) AND (t."X_7" > -1.599920)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_7" <= 1.272845) AND (t."X_8" > 0.029063) AND (t."X_7" > 0.080690) AND (t."X_8" > 0.997267)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_7" <= 1.272845) AND (t."X_8" > 0.029063) AND (t."X_7" > 0.080690) AND (t."X_8" <= 0.997267) AND (t."X_9" <= 0.472777)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_7" <= 1.272845) AND (t."X_8" > 0.029063) AND (t."X_7" > 0.080690) AND (t."X_8" <= 0.997267) AND (t."X_9" > 0.472777)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_7" <= 1.272845) AND (t."X_8" <= 0.029063) AND (t."X_4" > -0.221043) AND (t."X_9" <= 0.579684) AND (t."X_8" > -1.304409)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_7" <= 1.272845) AND (t."X_8" <= 0.029063) AND (t."X_4" > -0.221043) AND (t."X_9" <= 0.579684) AND (t."X_8" <= -1.304409) AND (t."X_6" <= 1.784341)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" > -2.039162) AND (t."X_7" <= 1.272845) AND (t."X_8" <= 0.029063) AND (t."X_4" > -0.221043) AND (t."X_9" <= 0.579684) AND (t."X_8" <= -1.304409) AND (t."X_6" > 1.784341)) THEN 38 ELSE NULL END AS "Leaf_38"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.218750 AS "P_0", 0.296875 AS "P_1", 0.203125 AS "P_2", 0.281250 AS "P_3", 1 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.235294 AS "P_0", 0.117647 AS "P_1", 0.000000 AS "P_2", 0.647059 AS "P_3", 3 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.212766 AS "P_0", 0.361702 AS "P_1", 0.276596 AS "P_2", 0.148936 AS "P_3", 1 AS "D", 0.361702 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.153846 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.846154 AS "P_3", 3 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.263158 AS "P_0", 0.210526 AS "P_1", 0.342105 AS "P_2", 0.184211 AS "P_3", 2 AS "D", 0.342105 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.173913 AS "P_0", 0.000000 AS "P_1", 0.565217 AS "P_2", 0.260870 AS "P_3", 2 AS "D", 0.565217 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.400000 AS "P_0", 0.533333 AS "P_1", 0.000000 AS "P_2", 0.066667 AS "P_3", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.875000 AS "P_1", 0.000000 AS "P_2", 0.125000 AS "P_3", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.222222 AS "P_2", 0.444444 AS "P_3", 3 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.071429 AS "P_0", 0.000000 AS "P_1", 0.785714 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.428571 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.571429 AS "P_3", 3 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.100000 AS "P_0", 0.000000 AS "P_1", 0.900000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 0.799818) AND (t."X_4" > 1.360143)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_6" > 0.799818) AND (t."X_4" <= 1.360143) AND (t."X_8" > 0.698511)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" <= 0.799818) AND (t."X_7" > 0.585931) AND (t."X_3" <= -1.500413)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" <= 0.799818) AND (t."X_7" > 0.585931) AND (t."X_3" > -1.500413)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_6" <= 0.799818) AND (t."X_7" <= 0.585931) AND (t."X_9" <= -1.665534)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" <= 0.799818) AND (t."X_7" <= 0.585931) AND (t."X_9" > -1.665534) AND (t."X_9" > 1.370200)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_6" <= 0.799818) AND (t."X_7" <= 0.585931) AND (t."X_9" > -1.665534) AND (t."X_9" <= 1.370200) AND (t."X_6" <= -3.300494) AND (t."X_9" <= -0.097398)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" <= 0.799818) AND (t."X_7" <= 0.585931) AND (t."X_9" > -1.665534) AND (t."X_9" <= 1.370200) AND (t."X_6" <= -3.300494) AND (t."X_9" > -0.097398)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" <= 0.799818) AND (t."X_7" <= 0.585931) AND (t."X_9" > -1.665534) AND (t."X_9" <= 1.370200) AND (t."X_6" > -3.300494) AND (t."X_3" > 1.267175)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_6" <= 0.799818) AND (t."X_7" <= 0.585931) AND (t."X_9" > -1.665534) AND (t."X_9" <= 1.370200) AND (t."X_6" > -3.300494) AND (t."X_3" <= 1.267175) AND (t."X_7" > -1.038800) AND (t."X_7" <= 0.233564)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" <= 0.799818) AND (t."X_7" <= 0.585931) AND (t."X_9" > -1.665534) AND (t."X_9" <= 1.370200) AND (t."X_6" > -3.300494) AND (t."X_3" <= 1.267175) AND (t."X_7" > -1.038800) AND (t."X_7" > 0.233564) AND (t."X_4" <= 0.227675)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" <= 0.799818) AND (t."X_7" <= 0.585931) AND (t."X_9" > -1.665534) AND (t."X_9" <= 1.370200) AND (t."X_6" > -3.300494) AND (t."X_3" <= 1.267175) AND (t."X_7" > -1.038800) AND (t."X_7" > 0.233564) AND (t."X_4" > 0.227675)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" > 0.799818) AND (t."X_4" <= 1.360143) AND (t."X_8" <= 0.698511) AND (t."X_3" <= 1.424696)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" > 0.799818) AND (t."X_4" <= 1.360143) AND (t."X_8" <= 0.698511) AND (t."X_3" > 1.424696) AND (t."X_9" > 0.348157)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_6" > 0.799818) AND (t."X_4" <= 1.360143) AND (t."X_8" <= 0.698511) AND (t."X_3" > 1.424696) AND (t."X_9" <= 0.348157) AND (t."X_4" <= -0.426589)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" > 0.799818) AND (t."X_4" <= 1.360143) AND (t."X_8" <= 0.698511) AND (t."X_3" > 1.424696) AND (t."X_9" <= 0.348157) AND (t."X_4" > -0.426589)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" <= 0.799818) AND (t."X_7" <= 0.585931) AND (t."X_9" > -1.665534) AND (t."X_9" <= 1.370200) AND (t."X_6" > -3.300494) AND (t."X_3" <= 1.267175) AND (t."X_7" <= -1.038800) AND (t."X_4" <= 0.203530)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_6" <= 0.799818) AND (t."X_7" <= 0.585931) AND (t."X_9" > -1.665534) AND (t."X_9" <= 1.370200) AND (t."X_6" > -3.300494) AND (t."X_3" <= 1.267175) AND (t."X_7" <= -1.038800) AND (t."X_4" > 0.203530) AND (t."X_9" <= -0.217733)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" <= 0.799818) AND (t."X_7" <= 0.585931) AND (t."X_9" > -1.665534) AND (t."X_9" <= 1.370200) AND (t."X_6" > -3.300494) AND (t."X_3" <= 1.267175) AND (t."X_7" <= -1.038800) AND (t."X_4" > 0.203530) AND (t."X_9" > -0.217733)) THEN 36 ELSE NULL END AS "Leaf_36"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.296875 AS "P_0", 0.265625 AS "P_1", 0.218750 AS "P_2", 0.218750 AS "P_3", 0 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.375000 AS "P_0", 0.312500 AS "P_1", 0.083333 AS "P_2", 0.229167 AS "P_3", 0 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.062500 AS "P_0", 0.125000 AS "P_1", 0.625000 AS "P_2", 0.187500 AS "P_3", 2 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.071429 AS "P_0", 0.142857 AS "P_1", 0.714286 AS "P_2", 0.071429 AS "P_3", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.083333 AS "P_0", 0.000000 AS "P_1", 0.833333 AS "P_2", 0.083333 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.473684 AS "P_0", 0.157895 AS "P_1", 0.105263 AS "P_2", 0.263158 AS "P_3", 0 AS "D", 0.473684 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.900000 AS "P_1", 0.000000 AS "P_2", 0.100000 AS "P_3", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.514286 AS "P_0", 0.171429 AS "P_1", 0.028571 AS "P_2", 0.285714 AS "P_3", 0 AS "D", 0.514286 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.562500 AS "P_0", 0.187500 AS "P_1", 0.031250 AS "P_2", 0.218750 AS "P_3", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.142857 AS "P_1", 0.000000 AS "P_2", 0.857143 AS "P_3", 3 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.720000 AS "P_0", 0.200000 AS "P_1", 0.040000 AS "P_2", 0.040000 AS "P_3", 0 AS "D", 0.720000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.562500 AS "P_0", 0.312500 AS "P_1", 0.062500 AS "P_2", 0.062500 AS "P_3", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.888889 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.142857 AS "P_0", 0.714286 AS "P_1", 0.000000 AS "P_2", 0.142857 AS "P_3", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.600000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
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
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_31" AS t
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