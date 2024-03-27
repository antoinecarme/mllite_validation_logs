WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_6" <= -0.178653)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_3" <= -0.967228) AND (t."X_2" > 0.246573)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_3" <= -0.967228) AND (t."X_2" <= 0.246573) AND (t."X_8" > 0.535347)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_3" <= -0.967228) AND (t."X_2" <= 0.246573) AND (t."X_8" <= 0.535347) AND (t."X_6" <= -0.049993)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_3" <= -0.967228) AND (t."X_2" <= 0.246573) AND (t."X_8" <= 0.535347) AND (t."X_6" > -0.049993)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_6" > -0.178653) AND (t."X_5" > 0.860748)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_6" > -0.178653) AND (t."X_5" <= 0.860748) AND (t."X_6" > 1.051927)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_6" > -0.178653) AND (t."X_5" <= 0.860748) AND (t."X_6" <= 1.051927) AND (t."X_0" > 1.277125)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_6" > -0.178653) AND (t."X_5" <= 0.860748) AND (t."X_6" <= 1.051927) AND (t."X_0" <= 1.277125) AND (t."X_2" > 1.054227)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_6" > -0.178653) AND (t."X_5" <= 0.860748) AND (t."X_6" <= 1.051927) AND (t."X_0" <= 1.277125) AND (t."X_2" <= 1.054227) AND (t."X_3" <= 1.437544)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_6" > -0.178653) AND (t."X_5" <= 0.860748) AND (t."X_6" <= 1.051927) AND (t."X_0" <= 1.277125) AND (t."X_2" <= 1.054227) AND (t."X_3" > 1.437544)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_3" > -0.967228) AND (t."X_5" > -0.482162) AND (t."X_5" <= -0.372423) AND (t."X_6" <= -0.598637)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_3" > -0.967228) AND (t."X_5" > -0.482162) AND (t."X_5" <= -0.372423) AND (t."X_6" > -0.598637)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_3" > -0.967228) AND (t."X_5" > -0.482162) AND (t."X_5" > -0.372423) AND (t."X_4" <= 0.904896)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_3" > -0.967228) AND (t."X_5" > -0.482162) AND (t."X_5" > -0.372423) AND (t."X_4" > 0.904896) AND (t."X_0" <= -0.292278)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_3" > -0.967228) AND (t."X_5" > -0.482162) AND (t."X_5" > -0.372423) AND (t."X_4" > 0.904896) AND (t."X_0" > -0.292278)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_3" > -0.967228) AND (t."X_5" <= -0.482162) AND (t."X_4" > 0.403673)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_3" > -0.967228) AND (t."X_5" <= -0.482162) AND (t."X_4" <= 0.403673) AND (t."X_4" <= -0.127147)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_3" > -0.967228) AND (t."X_5" <= -0.482162) AND (t."X_4" <= 0.403673) AND (t."X_4" > -0.127147) AND (t."X_6" <= -1.357827)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_3" > -0.967228) AND (t."X_5" <= -0.482162) AND (t."X_4" <= 0.403673) AND (t."X_4" > -0.127147) AND (t."X_6" > -1.357827)) THEN 38 ELSE NULL END AS Leaf_38
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
    SELECT 0 AS nid,  0.476562 AS "P_0", 0.523438 AS "P_1", 1 AS "D", 0.523438 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.803030 AS "P_0", 0.196970 AS "P_1", 0 AS "D", 0.803030 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.129032 AS "P_0", 0.870968 AS "P_1", 1 AS "D", 0.870968 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.859649 AS "P_0", 0.140351 AS "P_1", 0 AS "D", 0.859649 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.240000 AS "P_0", 0.760000 AS "P_1", 1 AS "D", 0.760000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.173913 AS "P_0", 0.826087 AS "P_1", 1 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.095238 AS "P_0", 0.904762 AS "P_1", 1 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.823529 AS "P_0", 0.176471 AS "P_1", 0 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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