WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_22" > 105.949997) AND (t."X_7" <= 0.048865) AND (t."X_21" <= 29.130001) AND (t."X_28" <= 0.314200)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_22" > 105.949997) AND (t."X_7" <= 0.048865) AND (t."X_21" <= 29.130001) AND (t."X_28" > 0.314200)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_22" > 105.949997) AND (t."X_7" <= 0.048865) AND (t."X_21" > 29.130001) AND (t."X_16" <= 0.029795)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_22" > 105.949997) AND (t."X_7" <= 0.048865) AND (t."X_21" > 29.130001) AND (t."X_16" > 0.029795)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_22" <= 105.949997) AND (t."X_27" > 0.158900) AND (t."X_21" <= 23.470001)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_22" <= 105.949997) AND (t."X_27" > 0.158900) AND (t."X_21" > 23.470001)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_22" > 105.949997) AND (t."X_7" > 0.048865) AND (t."X_21" <= 20.645000) AND (t."X_22" <= 119.650002)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_22" > 105.949997) AND (t."X_7" > 0.048865) AND (t."X_21" <= 20.645000) AND (t."X_22" > 119.650002)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_22" > 105.949997) AND (t."X_7" > 0.048865) AND (t."X_21" > 20.645000) AND (t."X_19" <= 0.012910)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_22" > 105.949997) AND (t."X_7" > 0.048865) AND (t."X_21" > 20.645000) AND (t."X_19" > 0.012910)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_22" <= 105.949997) AND (t."X_27" <= 0.158900) AND (t."X_10" > 1.047550)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_22" <= 105.949997) AND (t."X_27" <= 0.158900) AND (t."X_10" <= 1.047550) AND (t."X_24" > 0.178250) AND (t."X_23" <= 421.049988)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_22" <= 105.949997) AND (t."X_27" <= 0.158900) AND (t."X_10" <= 1.047550) AND (t."X_24" > 0.178250) AND (t."X_23" > 421.049988)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_22" <= 105.949997) AND (t."X_27" <= 0.158900) AND (t."X_10" <= 1.047550) AND (t."X_24" <= 0.178250) AND (t."X_21" > 30.145000) AND (t."X_20" > 15.770000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_22" <= 105.949997) AND (t."X_27" <= 0.158900) AND (t."X_10" <= 1.047550) AND (t."X_24" <= 0.178250) AND (t."X_21" > 30.145000) AND (t."X_20" <= 15.770000) AND (t."X_27" <= 0.090145)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_22" <= 105.949997) AND (t."X_27" <= 0.158900) AND (t."X_10" <= 1.047550) AND (t."X_24" <= 0.178250) AND (t."X_21" > 30.145000) AND (t."X_20" <= 15.770000) AND (t."X_27" > 0.090145) AND (t."X_21" <= 32.595001)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_22" <= 105.949997) AND (t."X_27" <= 0.158900) AND (t."X_10" <= 1.047550) AND (t."X_24" <= 0.178250) AND (t."X_21" > 30.145000) AND (t."X_20" <= 15.770000) AND (t."X_27" > 0.090145) AND (t."X_21" > 32.595001)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_22" <= 105.949997) AND (t."X_27" <= 0.158900) AND (t."X_10" <= 1.047550) AND (t."X_24" <= 0.178250) AND (t."X_21" <= 30.145000) AND (t."X_13" <= 48.974998)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_22" <= 105.949997) AND (t."X_27" <= 0.158900) AND (t."X_10" <= 1.047550) AND (t."X_24" <= 0.178250) AND (t."X_21" <= 30.145000) AND (t."X_13" > 48.974998) AND (t."X_18" <= 0.024740)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_22" <= 105.949997) AND (t."X_27" <= 0.158900) AND (t."X_10" <= 1.047550) AND (t."X_24" <= 0.178250) AND (t."X_21" <= 30.145000) AND (t."X_13" > 48.974998) AND (t."X_18" > 0.024740)) THEN 38 ELSE NULL END AS Leaf_38
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
    SELECT 0 AS nid,  0.386719 AS "P_0", 0.613281 AS "P_1", 1 AS "D", 0.613281 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.955056 AS "P_0", 0.044944 AS "P_1", 0 AS "D", 0.955056 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.150000 AS "P_0", 0.850000 AS "P_1", 1 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.023891 AS "P_0", 0.976109 AS "P_1", 1 AS "D", 0.976109 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.533333 AS "P_0", 0.466667 AS "P_1", 0 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.993865 AS "P_0", 0.006135 AS "P_1", 0 AS "D", 0.993865 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.020548 AS "P_0", 0.979452 AS "P_1", 1 AS "D", 0.979452 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.013889 AS "P_0", 0.986111 AS "P_1", 1 AS "D", 0.986111 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.003876 AS "P_0", 0.996124 AS "P_1", 1 AS "D", 0.996124 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.035714 AS "P_0", 0.964286 AS "P_1", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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