WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 2.500000)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" <= 6.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_0" > 5.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_0" <= 5.500000) AND (t."X_3" <= 5.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_0" <= 5.500000) AND (t."X_3" > 5.500000) AND (t."X_1" <= 0.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" <= 6.500000) AND (t."X_2" > 6.500000) AND (t."X_0" <= 5.500000) AND (t."X_3" > 5.500000) AND (t."X_1" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" > 7.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" > 5.500000) AND (t."X_2" <= 6.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" > 5.500000) AND (t."X_2" > 6.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" <= 5.500000) AND (t."X_0" <= 7.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" <= 5.500000) AND (t."X_0" > 7.500000) AND (t."X_3" <= 8.000000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_2" > 2.500000) AND (t."X_3" > 6.500000) AND (t."X_2" <= 7.500000) AND (t."X_1" <= 5.500000) AND (t."X_0" > 7.500000) AND (t."X_3" > 8.000000)) THEN 22 ELSE NULL END AS Leaf_22
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.333333 AS "P_2", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.923077 AS "P_1", 0.076923 AS "P_2", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.041667 AS "P_1", 0.958333 AS "P_2", 2 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.111111 AS "P_1", 0.888889 AS "P_2", 2 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.062500 AS "P_1", 0.937500 AS "P_2", 2 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", 
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
   CAST(NULL AS FLOAT)  AS "Score_2",
   "DT_Output"."P_2" AS "Proba_2",
   CASE WHEN ("DT_Output"."P_2" IS NULL OR "DT_Output"."P_2" > 0.0) THEN LN( "DT_Output"."P_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
   "DT_Output"."D" AS "Decision",
   "DT_Output"."DP" AS "DecisionProba"
FROM "DT_Output"