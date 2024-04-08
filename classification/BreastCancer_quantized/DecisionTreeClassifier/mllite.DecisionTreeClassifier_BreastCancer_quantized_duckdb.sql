WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
  FROM "BreastCancer_quantized" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_24" <= 5.500000) AND (t."X_1" > 6.500000) AND (t."X_24" <= 1.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_24" <= 5.500000) AND (t."X_1" > 6.500000) AND (t."X_24" > 1.500000) AND (t."X_19" <= 7.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_24" <= 5.500000) AND (t."X_1" > 6.500000) AND (t."X_24" > 1.500000) AND (t."X_19" > 7.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_24" > 5.500000) AND (t."X_21" <= 1.000000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_24" > 5.500000) AND (t."X_21" > 1.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_24" <= 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_5" <= 1.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_21" <= 3.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_21" > 3.500000) AND (t."X_22" <= 3.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_21" > 3.500000) AND (t."X_22" > 3.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_24" <= 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_5" > 1.500000) AND (t."X_29" > 1.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_24" <= 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_5" > 1.500000) AND (t."X_29" <= 1.500000) AND (t."X_24" <= 3.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_24" <= 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_5" > 1.500000) AND (t."X_29" <= 1.500000) AND (t."X_24" > 3.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" > 6.500000) AND (t."X_27" > 3.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" > 6.500000) AND (t."X_27" <= 3.500000) AND (t."X_1" <= 6.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" > 6.500000) AND (t."X_27" <= 3.500000) AND (t."X_1" > 6.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_10" > 8.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_10" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_1" <= 6.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_10" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_1" > 6.500000) AND (t."X_16" <= 4.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_10" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_1" > 6.500000) AND (t."X_16" > 4.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_10" <= 8.500000) AND (t."X_27" <= 5.500000) AND (t."X_10" > 7.500000) AND (t."X_18" <= 4.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_10" <= 8.500000) AND (t."X_27" <= 5.500000) AND (t."X_10" > 7.500000) AND (t."X_18" > 4.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_10" <= 8.500000) AND (t."X_27" <= 5.500000) AND (t."X_10" <= 7.500000) AND (t."X_23" > 5.500000) AND (t."X_20" <= 5.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_10" <= 8.500000) AND (t."X_27" <= 5.500000) AND (t."X_10" <= 7.500000) AND (t."X_23" > 5.500000) AND (t."X_20" > 5.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_10" <= 8.500000) AND (t."X_27" <= 5.500000) AND (t."X_10" <= 7.500000) AND (t."X_23" <= 5.500000) AND (t."X_21" <= 7.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_10" <= 8.500000) AND (t."X_27" <= 5.500000) AND (t."X_10" <= 7.500000) AND (t."X_23" <= 5.500000) AND (t."X_21" > 7.500000) AND (t."X_27" <= 3.500000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_10" <= 8.500000) AND (t."X_27" <= 5.500000) AND (t."X_10" <= 7.500000) AND (t."X_23" <= 5.500000) AND (t."X_21" > 7.500000) AND (t."X_27" > 3.500000) AND (t."X_25" <= 2.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_10" <= 8.500000) AND (t."X_27" <= 5.500000) AND (t."X_10" <= 7.500000) AND (t."X_23" <= 5.500000) AND (t."X_21" > 7.500000) AND (t."X_27" > 3.500000) AND (t."X_25" > 2.500000)) THEN 52 ELSE NULL END AS "Leaf_52"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.372583 AS "P_0", 0.627416 AS "P_1", 1 AS "D", 0.627416 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.051873 AS "P_0", 0.948127 AS "P_1", 1 AS "D", 0.948127 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.873874 AS "P_0", 0.126126 AS "P_1", 0 AS "D", 0.873874 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.551724 AS "P_0", 0.448276 AS "P_1", 0 AS "D", 0.551724 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.987805 AS "P_0", 0.012195 AS "P_1", 0 AS "D", 0.987805 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.264706 AS "P_0", 0.735294 AS "P_1", 1 AS "D", 0.735294 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.958333 AS "P_0", 0.041667 AS "P_1", 0 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.024096 AS "P_0", 0.975904 AS "P_1", 1 AS "D", 0.975904 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.021148 AS "P_0", 0.978852 AS "P_1", 1 AS "D", 0.978852 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.009615 AS "P_0", 0.990385 AS "P_1", 1 AS "D", 0.990385 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.210526 AS "P_0", 0.789474 AS "P_1", 1 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.006557 AS "P_0", 0.993443 AS "P_1", 1 AS "D", 0.993443 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.003390 AS "P_0", 0.996610 AS "P_1", 1 AS "D", 0.996610 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.030303 AS "P_0", 0.969697 AS "P_1", 1 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output" AS 
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