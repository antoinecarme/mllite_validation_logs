WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > 0.080690) AND (t."X_8" <= 0.118972)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_7" > 0.080690) AND (t."X_8" > 0.118972) AND (t."X_2" <= 1.155654)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_7" > 0.080690) AND (t."X_8" > 0.118972) AND (t."X_2" > 1.155654)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_7" <= 0.080690) AND (t."X_5" <= -0.478152)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_7" <= 0.080690) AND (t."X_5" > -0.478152) AND (t."X_2" <= -0.047122)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_7" <= 0.080690) AND (t."X_5" > -0.478152) AND (t."X_2" > -0.047122) AND (t."X_8" <= 1.151031)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_7" <= 0.080690) AND (t."X_5" > -0.478152) AND (t."X_2" > -0.047122) AND (t."X_8" > 1.151031)) THEN 12 ELSE NULL END AS "Leaf_12"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.187500 AS "P_0", 0.250000 AS "P_1", 0.250000 AS "P_2", 0.312500 AS "P_3", 3 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.222222 AS "P_2", 0.444444 AS "P_3", 3 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.571429 AS "P_1", 0.285714 AS "P_2", 0.142857 AS "P_3", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.428571 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.571429 AS "P_3", 3 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
   CAST(NULL AS FLOAT)  AS "Score_3",
   "DT_Output"."P_3" AS "Proba_3",
   CASE WHEN ("DT_Output"."P_3" IS NULL OR "DT_Output"."P_3" > 0.0) THEN LN( "DT_Output"."P_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
   "DT_Output"."D" AS "Decision",
   "DT_Output"."DP" AS "DecisionProba"
FROM "DT_Output"