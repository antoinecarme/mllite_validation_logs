WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_49", t1."Leaf_50" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" <= -0.532534)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" > 0.890346) AND (t."X_0" <= -1.218893)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" > 0.890346) AND (t."X_0" > -1.218893)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" <= 0.890346) AND (t."X_4" <= 0.241937)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" <= 0.428281) AND (t."X_4" <= 0.890346) AND (t."X_4" > 0.241937)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" > 0.428281) AND (t."X_5" <= -1.145612) AND (t."X_2" <= -0.397475)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" > 0.428281) AND (t."X_5" <= -1.145612) AND (t."X_2" > -0.397475)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" > 0.428281) AND (t."X_5" > -1.145612) AND (t."X_8" <= -1.365489)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" <= 0.959044) AND (t."X_3" > 0.428281) AND (t."X_5" > -1.145612) AND (t."X_8" > -1.365489)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" > 0.959044) AND (t."X_0" <= -3.393702)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" <= -0.492128)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" > 0.959044) AND (t."X_0" > -3.393702) AND (t."X_0" > -2.149431)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" > 0.959044) AND (t."X_0" > -3.393702) AND (t."X_0" <= -2.149431) AND (t."X_9" <= 0.775685)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_2" > -0.532534) AND (t."X_4" > 0.959044) AND (t."X_0" > -3.393702) AND (t."X_0" <= -2.149431) AND (t."X_9" > 0.775685)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" <= 0.887079) AND (t."X_2" > 0.282278)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" <= 0.887079) AND (t."X_2" <= 0.282278) AND (t."X_0" <= 0.015230)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" <= 0.887079) AND (t."X_2" <= 0.282278) AND (t."X_0" > 0.015230)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" > 0.887079) AND (t."X_4" > 1.137845)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" > 0.887079) AND (t."X_4" <= 1.137845) AND (t."X_3" <= 0.911677)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" <= 0.933632) AND (t."X_4" > 0.887079) AND (t."X_4" <= 1.137845) AND (t."X_3" > 0.911677)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" > 0.933632) AND (t."X_1" <= -1.278796) AND (t."X_8" <= -1.644090)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" > 0.933632) AND (t."X_1" <= -1.278796) AND (t."X_8" > -1.644090) AND (t."X_4" <= -1.378958)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" > 0.933632) AND (t."X_1" <= -1.278796) AND (t."X_8" > -1.644090) AND (t."X_4" > -1.378958)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" > 0.933632) AND (t."X_1" > -1.278796) AND (t."X_7" <= 1.578180)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" > 0.933632) AND (t."X_1" > -1.278796) AND (t."X_7" > 1.578180) AND (t."X_7" <= 1.590946)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_5" > 0.933632) AND (t."X_1" > -1.278796) AND (t."X_7" > 1.578180) AND (t."X_7" > 1.590946)) THEN 50 ELSE NULL END AS "Leaf_50"
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
    SELECT 0 AS nid,  0.501953 AS "P_0", 0.498047 AS "P_1", 0 AS "D", 0.501953 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.832168 AS "P_0", 0.167832 AS "P_1", 0 AS "D", 0.832168 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.084071 AS "P_0", 0.915929 AS "P_1", 1 AS "D", 0.915929 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.717647 AS "P_0", 0.282353 AS "P_1", 0 AS "D", 0.717647 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.557692 AS "P_0", 0.442308 AS "P_1", 0 AS "D", 0.557692 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.969697 AS "P_0", 0.030303 AS "P_1", 0 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.675676 AS "P_0", 0.324324 AS "P_1", 0 AS "D", 0.675676 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.807018 AS "P_0", 0.192982 AS "P_1", 0 AS "D", 0.807018 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.235294 AS "P_0", 0.764706 AS "P_1", 1 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.948718 AS "P_0", 0.051282 AS "P_1", 0 AS "D", 0.948718 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.192308 AS "P_0", 0.807692 AS "P_1", 1 AS "D", 0.807692 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.130435 AS "P_0", 0.869565 AS "P_1", 1 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.984615 AS "P_0", 0.015385 AS "P_1", 0 AS "D", 0.984615 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.075893 AS "P_0", 0.924107 AS "P_1", 1 AS "D", 0.924107 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.027397 AS "P_0", 0.972603 AS "P_1", 1 AS "D", 0.972603 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.297297 AS "P_0", 0.702703 AS "P_1", 1 AS "D", 0.702703 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.048780 AS "P_0", 0.951219 AS "P_1", 1 AS "D", 0.951219 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.212121 AS "P_0", 0.787879 AS "P_1", 1 AS "D", 0.787879 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.086957 AS "P_0", 0.913043 AS "P_1", 1 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.025000 AS "P_0", 0.975000 AS "P_1", 1 AS "D", 0.975000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.008000 AS "P_0", 0.992000 AS "P_1", 1 AS "D", 0.992000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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