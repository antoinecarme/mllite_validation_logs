WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50", t1."Leaf_52", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" > 7.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 4.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" > 4.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" <= 6.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" > 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000) AND (t."X_1" > 6.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" <= 2.500000) AND (t."X_4" <= 2.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" <= 2.500000) AND (t."X_4" > 2.500000) AND (t."X_3" <= 3.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" <= 2.500000) AND (t."X_4" > 2.500000) AND (t."X_3" > 3.500000) AND (t."X_9" <= 6.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" > 3.500000) AND (t."X_2" <= 2.500000) AND (t."X_4" > 2.500000) AND (t."X_3" > 3.500000) AND (t."X_9" > 6.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" > 7.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" > 5.500000) AND (t."X_8" <= 5.000000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" > 5.500000) AND (t."X_8" > 5.000000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" <= 4.500000)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 7.500000) AND (t."X_2" <= 5.500000) AND (t."X_4" > 4.500000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" <= 3.500000) AND (t."X_4" <= 1.500000)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" <= 3.500000) AND (t."X_4" > 1.500000)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 3.500000) AND (t."X_4" > 8.500000)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 3.500000) AND (t."X_4" <= 8.500000) AND (t."X_5" <= 6.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" <= 3.500000)) THEN 41 ELSE NULL END AS Leaf_41,
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 3.500000) AND (t."X_4" <= 8.500000) AND (t."X_5" <= 6.500000) AND (t."X_4" <= 5.500000) AND (t."X_4" > 3.500000)) THEN 42 ELSE NULL END AS Leaf_42,
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 3.500000) AND (t."X_4" <= 8.500000) AND (t."X_5" <= 6.500000) AND (t."X_4" > 5.500000) AND (t."X_9" <= 7.500000)) THEN 43 ELSE NULL END AS Leaf_43,
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 3.500000) AND (t."X_4" <= 8.500000) AND (t."X_5" <= 6.500000) AND (t."X_4" > 5.500000) AND (t."X_9" > 7.500000)) THEN 44 ELSE NULL END AS Leaf_44,
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 3.500000) AND (t."X_4" <= 8.500000) AND (t."X_5" > 6.500000) AND (t."X_6" <= 4.500000) AND (t."X_3" <= 1.500000)) THEN 47 ELSE NULL END AS Leaf_47,
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 3.500000) AND (t."X_4" <= 8.500000) AND (t."X_5" > 6.500000) AND (t."X_6" <= 4.500000) AND (t."X_3" > 1.500000)) THEN 48 ELSE NULL END AS Leaf_48,
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 3.500000) AND (t."X_4" <= 8.500000) AND (t."X_5" > 6.500000) AND (t."X_6" > 4.500000) AND (t."X_0" <= 0.500000)) THEN 49 ELSE NULL END AS Leaf_49,
      CASE WHEN((t."X_5" > 5.500000) AND (t."X_6" > 3.500000) AND (t."X_4" <= 8.500000) AND (t."X_5" > 6.500000) AND (t."X_6" > 4.500000) AND (t."X_0" > 0.500000)) THEN 50 ELSE NULL END AS Leaf_50,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" <= 1.500000) AND (t."X_1" > 0.500000)) THEN 52 ELSE NULL END AS Leaf_52,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" <= 1.500000) AND (t."X_1" <= 0.500000) AND (t."X_8" > 1.500000)) THEN 54 ELSE NULL END AS Leaf_54,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" <= 1.500000) AND (t."X_1" <= 0.500000) AND (t."X_8" <= 1.500000) AND (t."X_9" <= 3.000000)) THEN 55 ELSE NULL END AS Leaf_55,
      CASE WHEN((t."X_5" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_2" <= 1.500000) AND (t."X_1" <= 0.500000) AND (t."X_8" <= 1.500000) AND (t."X_9" > 3.000000)) THEN 56 ELSE NULL END AS Leaf_56
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.505859 AS "P_0", 0.494141 AS "P_1", 0 AS "D", 0.505859 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.792822 AS "P_0", 0.207178 AS "P_1", 0 AS "D", 0.792822 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.077859 AS "P_0", 0.922141 AS "P_1", 1 AS "D", 0.922141 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.900485 AS "P_0", 0.099515 AS "P_1", 0 AS "D", 0.900485 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.572139 AS "P_0", 0.427861 AS "P_1", 0 AS "D", 0.572139 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.477987 AS "P_0", 0.522013 AS "P_1", 1 AS "D", 0.522013 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.402878 AS "P_0", 0.597122 AS "P_1", 1 AS "D", 0.597122 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.538462 AS "P_0", 0.461538 AS "P_1", 0 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.229508 AS "P_0", 0.770492 AS "P_1", 1 AS "D", 0.770492 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.370370 AS "P_0", 0.629630 AS "P_1", 1 AS "D", 0.629630 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.152174 AS "P_0", 0.847826 AS "P_1", 1 AS "D", 0.847826 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.466667 AS "P_0", 0.533333 AS "P_1", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.994220 AS "P_0", 0.005780 AS "P_1", 0 AS "D", 0.994220 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.832636 AS "P_0", 0.167364 AS "P_1", 0 AS "D", 0.832636 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.731544 AS "P_0", 0.268456 AS "P_1", 0 AS "D", 0.731544 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.795276 AS "P_0", 0.204724 AS "P_1", 0 AS "D", 0.795276 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.609756 AS "P_0", 0.390244 AS "P_1", 0 AS "D", 0.609756 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.883721 AS "P_0", 0.116279 AS "P_1", 0 AS "D", 0.883721 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.071253 AS "P_0", 0.928747 AS "P_1", 1 AS "D", 0.928747 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.153061 AS "P_0", 0.846939 AS "P_1", 1 AS "D", 0.846939 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.039088 AS "P_0", 0.960912 AS "P_1", 1 AS "D", 0.960912 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.240000 AS "P_0", 0.760000 AS "P_1", 1 AS "D", 0.760000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.136364 AS "P_0", 0.863636 AS "P_1", 1 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.026316 AS "P_0", 0.973684 AS "P_1", 1 AS "D", 0.973684 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.187500 AS "P_0", 0.812500 AS "P_1", 1 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.030928 AS "P_0", 0.969072 AS "P_1", 1 AS "D", 0.969072 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.025455 AS "P_0", 0.974545 AS "P_1", 1 AS "D", 0.974545 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup" AS t1
   LEFT OUTER JOIN
   "DT_node_data" AS t2
   ON t1.node_id = t2.nid
 )
SELECT
   "DT_Output"."index" AS "index",
   CAST(NULL AS FLOAT)  AS "Score_0",
   "DT_Output"."P_0" AS "Proba_0",
   CASE WHEN ("DT_Output"."P_0" IS NULL OR "DT_Output"."P_0" > 0.0) THEN LN( "DT_Output"."P_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
   CAST(NULL AS FLOAT)  AS "Score_1",
   "DT_Output"."P_1" AS "Proba_1",
   CASE WHEN ("DT_Output"."P_1" IS NULL OR "DT_Output"."P_1" > 0.0) THEN LN( "DT_Output"."P_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
   "DT_Output"."D" AS "Decision",
   "DT_Output"."DP" AS "DecisionProba"
FROM "DT_Output"