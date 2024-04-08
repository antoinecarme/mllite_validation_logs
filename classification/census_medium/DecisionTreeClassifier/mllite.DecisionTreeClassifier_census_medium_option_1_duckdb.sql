WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "census_medium" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_6", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_4" <= 8.000000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_4" > 8.000000) AND (t."X_4" > 10.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_4" > 8.000000) AND (t."X_4" <= 10.500000) AND (t."X_2" > 360730.000000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_4" > 8.000000) AND (t."X_4" <= 10.500000) AND (t."X_2" <= 360730.000000) AND (t."X_2" > 199354.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_4" > 8.000000) AND (t."X_4" <= 10.500000) AND (t."X_2" <= 360730.000000) AND (t."X_2" <= 199354.500000) AND (t."X_2" <= 120128.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_4" > 8.000000) AND (t."X_4" <= 10.500000) AND (t."X_2" <= 360730.000000) AND (t."X_2" <= 199354.500000) AND (t."X_2" > 120128.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 14.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 14.500000) AND (t."X_4" > 10.500000) AND (t."X_11" > 2.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 14.500000) AND (t."X_4" > 10.500000) AND (t."X_11" <= 2.500000) AND (t."X_2" <= 85091.500000) AND (t."X_2" <= 30157.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 14.500000) AND (t."X_4" > 10.500000) AND (t."X_11" <= 2.500000) AND (t."X_2" <= 85091.500000) AND (t."X_2" > 30157.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 14.500000) AND (t."X_4" > 10.500000) AND (t."X_11" <= 2.500000) AND (t."X_2" > 85091.500000) AND (t."X_0" <= 0.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 14.500000) AND (t."X_4" > 10.500000) AND (t."X_11" <= 2.500000) AND (t."X_2" > 85091.500000) AND (t."X_0" > 0.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 14.500000) AND (t."X_4" <= 10.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 1.500000) AND (t."X_11" <= 3.000000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 14.500000) AND (t."X_4" <= 10.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 1.500000) AND (t."X_11" > 3.000000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 14.500000) AND (t."X_4" <= 10.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 187721.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 14.500000) AND (t."X_4" <= 10.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 1.500000) AND (t."X_2" > 187721.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 14.500000) AND (t."X_4" <= 10.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 14.500000) AND (t."X_4" <= 10.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 225366.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 14.500000) AND (t."X_4" <= 10.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 225366.500000)) THEN 36 ELSE NULL END AS "Leaf_36"
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
    SELECT 0 AS nid,  0.779297 AS "P_0", 0.220703 AS "P_1", 0 AS "D", 0.779297 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.810309 AS "P_0", 0.189691 AS "P_1", 0 AS "D", 0.810309 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.160000 AS "P_0", 0.840000 AS "P_1", 1 AS "D", 0.840000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.827368 AS "P_0", 0.172632 AS "P_1", 0 AS "D", 0.827368 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.884848 AS "P_0", 0.115152 AS "P_1", 0 AS "D", 0.884848 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.696552 AS "P_0", 0.303448 AS "P_1", 0 AS "D", 0.696552 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.711268 AS "P_0", 0.288732 AS "P_1", 0 AS "D", 0.711268 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.675000 AS "P_0", 0.325000 AS "P_1", 0 AS "D", 0.675000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.644860 AS "P_0", 0.355140 AS "P_1", 0 AS "D", 0.644860 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.964497 AS "P_0", 0.035503 AS "P_1", 0 AS "D", 0.964497 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.801242 AS "P_0", 0.198758 AS "P_1", 0 AS "D", 0.801242 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.969697 AS "P_0", 0.030303 AS "P_1", 0 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.757812 AS "P_0", 0.242188 AS "P_1", 0 AS "D", 0.757812 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.837838 AS "P_0", 0.162162 AS "P_1", 0 AS "D", 0.837838 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.648148 AS "P_0", 0.351852 AS "P_1", 0 AS "D", 0.648148 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.925000 AS "P_0", 0.075000 AS "P_1", 0 AS "D", 0.925000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.896552 AS "P_0", 0.103448 AS "P_1", 0 AS "D", 0.896552 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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