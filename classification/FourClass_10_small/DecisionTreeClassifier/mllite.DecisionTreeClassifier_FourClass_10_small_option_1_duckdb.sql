WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_3" > 1.240127)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_3" <= 1.240127) AND (t."X_7" <= -1.009942) AND (t."X_0" <= 0.245479)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_3" <= 1.240127) AND (t."X_7" <= -1.009942) AND (t."X_0" > 0.245479)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_3" > 0.761311) AND (t."X_3" <= 2.514059)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_3" > 0.761311) AND (t."X_3" > 2.514059) AND (t."X_9" <= 0.348157)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_3" > 0.761311) AND (t."X_3" > 2.514059) AND (t."X_9" > 0.348157)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_3" <= 0.761311) AND (t."X_6" > 1.535481)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_3" <= 0.761311) AND (t."X_6" <= 1.535481) AND (t."X_0" <= -1.119714) AND (t."X_2" <= 1.871103)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_3" <= 0.761311) AND (t."X_6" <= 1.535481) AND (t."X_0" <= -1.119714) AND (t."X_2" > 1.871103)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_3" <= 0.761311) AND (t."X_6" <= 1.535481) AND (t."X_0" > -1.119714) AND (t."X_3" <= -1.509442)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_3" <= 0.761311) AND (t."X_6" <= 1.535481) AND (t."X_0" > -1.119714) AND (t."X_3" > -1.509442) AND (t."X_4" <= 0.776090)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_8" <= 0.191088) AND (t."X_3" <= 0.761311) AND (t."X_6" <= 1.535481) AND (t."X_0" > -1.119714) AND (t."X_3" > -1.509442) AND (t."X_4" > 0.776090)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_3" <= 1.240127) AND (t."X_7" > -1.009942) AND (t."X_3" <= -1.923941)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_3" <= 1.240127) AND (t."X_7" > -1.009942) AND (t."X_3" > -1.923941) AND (t."X_2" > 1.671657)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_3" <= 1.240127) AND (t."X_7" > -1.009942) AND (t."X_3" > -1.923941) AND (t."X_2" <= 1.671657) AND (t."X_9" <= 1.194430)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_8" > 0.191088) AND (t."X_3" <= 1.240127) AND (t."X_7" > -1.009942) AND (t."X_3" > -1.923941) AND (t."X_2" <= 1.671657) AND (t."X_9" > 1.194430)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 0 AS nid,  0.265625 AS "P_0", 0.296875 AS "P_1", 0.218750 AS "P_2", 0.218750 AS "P_3", 1 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.322581 AS "P_0", 0.064516 AS "P_1", 0.387097 AS "P_2", 0.225806 AS "P_3", 2 AS "D", 0.387097 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.212121 AS "P_0", 0.515152 AS "P_1", 0.060606 AS "P_2", 0.212121 AS "P_3", 1 AS "D", 0.515152 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.037037 AS "P_0", 0.629630 AS "P_1", 0.074074 AS "P_2", 0.259259 AS "P_3", 1 AS "D", 0.629630 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.857143 AS "P_3", 3 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.050000 AS "P_0", 0.850000 AS "P_1", 0.050000 AS "P_2", 0.050000 AS "P_3", 1 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.375000 AS "P_0", 0.083333 AS "P_1", 0.458333 AS "P_2", 0.083333 AS "P_3", 2 AS "D", 0.458333 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.714286 AS "P_3", 3 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.473684 AS "P_0", 0.105263 AS "P_1", 0.315789 AS "P_2", 0.105263 AS "P_3", 0 AS "D", 0.473684 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.307692 AS "P_0", 0.076923 AS "P_1", 0.461538 AS "P_2", 0.153846 AS "P_3", 2 AS "D", 0.461538 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.400000 AS "P_0", 0.100000 AS "P_1", 0.300000 AS "P_2", 0.200000 AS "P_3", 0 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.250000 AS "P_0", 0.125000 AS "P_1", 0.375000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.894737 AS "P_1", 0.052632 AS "P_2", 0.052632 AS "P_3", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.944444 AS "P_1", 0.055556 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
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