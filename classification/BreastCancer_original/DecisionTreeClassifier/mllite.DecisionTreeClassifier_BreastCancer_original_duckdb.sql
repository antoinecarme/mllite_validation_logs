WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
  FROM "BreastCancer_original" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.135800) AND (t."X_21" <= 25.670000) AND (t."X_23" > 810.300049) AND (t."X_20" <= 16.619999)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.135800) AND (t."X_21" <= 25.670000) AND (t."X_23" > 810.300049) AND (t."X_20" > 16.619999)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.135800) AND (t."X_21" <= 25.670000) AND (t."X_23" <= 810.300049) AND (t."X_4" <= 0.122650)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.135800) AND (t."X_21" <= 25.670000) AND (t."X_23" <= 810.300049) AND (t."X_4" > 0.122650)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.135800) AND (t."X_21" > 25.670000) AND (t."X_7" > 0.054100)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.135800) AND (t."X_21" > 25.670000) AND (t."X_7" <= 0.054100) AND (t."X_1" <= 20.455000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" > 0.135800) AND (t."X_21" > 25.670000) AND (t."X_7" <= 0.054100) AND (t."X_1" > 20.455000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_1" <= 16.110001) AND (t."X_7" <= 0.066260)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_1" <= 16.110001) AND (t."X_7" > 0.066260)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_1" > 16.110001) AND (t."X_24" <= 0.087980)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.135800) AND (t."X_29" <= 0.055125)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_1" > 16.110001) AND (t."X_24" > 0.087980) AND (t."X_26" > 0.179750)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_1" > 16.110001) AND (t."X_24" > 0.087980) AND (t."X_26" <= 0.179750) AND (t."X_25" <= 0.161500)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_20" > 16.795000) AND (t."X_1" > 16.110001) AND (t."X_24" > 0.087980) AND (t."X_26" <= 0.179750) AND (t."X_25" > 0.161500)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_13" > 38.605000) AND (t."X_10" <= 0.421200)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_13" > 38.605000) AND (t."X_10" > 0.421200) AND (t."X_5" <= 0.059570)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_13" > 38.605000) AND (t."X_10" > 0.421200) AND (t."X_5" > 0.059570)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_13" <= 38.605000) AND (t."X_14" <= 0.003294) AND (t."X_26" <= 0.194750)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_13" <= 38.605000) AND (t."X_14" <= 0.003294) AND (t."X_26" > 0.194750)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_13" <= 38.605000) AND (t."X_14" > 0.003294) AND (t."X_21" <= 33.269997)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_13" <= 38.605000) AND (t."X_14" > 0.003294) AND (t."X_21" > 33.269997) AND (t."X_21" <= 33.559998)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_20" <= 16.795000) AND (t."X_27" <= 0.135800) AND (t."X_29" > 0.055125) AND (t."X_13" <= 38.605000) AND (t."X_14" > 0.003294) AND (t."X_21" > 33.269997) AND (t."X_21" > 33.559998)) THEN 42 ELSE NULL END AS "Leaf_42"
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
    SELECT 1 AS nid,  0.087071 AS "P_0", 0.912929 AS "P_1", 1 AS "D", 0.912929 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.942105 AS "P_0", 0.057895 AS "P_1", 0 AS "D", 0.942105 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.015015 AS "P_0", 0.984985 AS "P_1", 1 AS "D", 0.984985 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.608696 AS "P_0", 0.391304 AS "P_1", 0 AS "D", 0.608696 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.210526 AS "P_0", 0.789474 AS "P_1", 1 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.470588 AS "P_0", 0.529412 AS "P_1", 1 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.988439 AS "P_0", 0.011561 AS "P_1", 0 AS "D", 0.988439 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.994186 AS "P_0", 0.005814 AS "P_1", 0 AS "D", 0.994186 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.012048 AS "P_0", 0.987952 AS "P_1", 1 AS "D", 0.987952 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.006270 AS "P_0", 0.993730 AS "P_1", 1 AS "D", 0.993730 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.003205 AS "P_0", 0.996795 AS "P_1", 1 AS "D", 0.996795 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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