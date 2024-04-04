WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_38", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_7" <= -0.989518) AND (t."X_1" <= -0.206592)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_7" <= -0.989518) AND (t."X_1" > -0.206592) AND (t."X_0" <= 0.245479)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_7" <= -0.989518) AND (t."X_1" > -0.206592) AND (t."X_0" > 0.245479) AND (t."X_9" <= -1.173777)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_7" <= -0.989518) AND (t."X_1" > -0.206592) AND (t."X_0" > 0.245479) AND (t."X_9" > -1.173777)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_7" > -0.989518) AND (t."X_3" > 1.240127) AND (t."X_0" <= 0.087463)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_7" > -0.989518) AND (t."X_3" > 1.240127) AND (t."X_0" > 0.087463)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_3" > 0.558276) AND (t."X_3" > 2.514059) AND (t."X_4" <= -0.445996)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_3" > 0.558276) AND (t."X_3" > 2.514059) AND (t."X_4" > -0.445996)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_3" > 0.558276) AND (t."X_3" <= 2.514059) AND (t."X_1" <= 0.087285)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_3" > 0.558276) AND (t."X_3" <= 2.514059) AND (t."X_1" > 0.087285)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_3" <= 0.558276) AND (t."X_7" <= -1.125393) AND (t."X_2" <= -1.200194)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_3" <= 0.558276) AND (t."X_7" <= -1.125393) AND (t."X_2" > -1.200194) AND (t."X_4" <= -0.975906)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_3" <= 0.558276) AND (t."X_7" <= -1.125393) AND (t."X_2" > -1.200194) AND (t."X_4" > -0.975906) AND (t."X_0" <= 0.427335)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_3" <= 0.558276) AND (t."X_7" <= -1.125393) AND (t."X_2" > -1.200194) AND (t."X_4" > -0.975906) AND (t."X_0" > 0.427335)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_3" <= 0.558276) AND (t."X_7" > -1.125393) AND (t."X_2" > 1.546596) AND (t."X_5" <= -0.262668)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_3" <= 0.558276) AND (t."X_7" > -1.125393) AND (t."X_2" > 1.546596) AND (t."X_5" > -0.262668) AND (t."X_0" <= -0.820583)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_3" <= 0.558276) AND (t."X_7" > -1.125393) AND (t."X_2" > 1.546596) AND (t."X_5" > -0.262668) AND (t."X_0" > -0.820583)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_7" > -0.989518) AND (t."X_3" <= 1.240127) AND (t."X_2" > 1.909400)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_7" > -0.989518) AND (t."X_3" <= 1.240127) AND (t."X_2" <= 1.909400) AND (t."X_8" > 2.850739)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_3" <= 0.558276) AND (t."X_7" > -1.125393) AND (t."X_2" <= 1.546596) AND (t."X_0" <= -2.893364)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_3" <= 0.558276) AND (t."X_7" > -1.125393) AND (t."X_2" <= 1.546596) AND (t."X_0" > -2.893364) AND (t."X_4" <= 0.571154)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_3" <= 0.558276) AND (t."X_7" > -1.125393) AND (t."X_2" <= 1.546596) AND (t."X_0" > -2.893364) AND (t."X_4" > 0.571154)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_7" > -0.989518) AND (t."X_3" <= 1.240127) AND (t."X_2" <= 1.909400) AND (t."X_8" <= 2.850739) AND (t."X_6" <= -2.206362)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_7" > -0.989518) AND (t."X_3" <= 1.240127) AND (t."X_2" <= 1.909400) AND (t."X_8" <= 2.850739) AND (t."X_6" > -2.206362)) THEN 46 ELSE NULL END AS "Leaf_46"
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
    SELECT 0 AS nid,  0.226562 AS "P_0", 0.250000 AS "P_1", 0.281250 AS "P_2", 0.242188 AS "P_3", 2 AS "D", 0.281250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.217391 AS "P_0", 0.057971 AS "P_1", 0.463768 AS "P_2", 0.260870 AS "P_3", 2 AS "D", 0.463768 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.237288 AS "P_0", 0.474576 AS "P_1", 0.067797 AS "P_2", 0.220339 AS "P_3", 1 AS "D", 0.474576 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.269231 AS "P_0", 0.076923 AS "P_1", 0.576923 AS "P_2", 0.076923 AS "P_3", 2 AS "D", 0.576923 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.058824 AS "P_0", 0.000000 AS "P_1", 0.117647 AS "P_2", 0.823529 AS "P_3", 3 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.315789 AS "P_0", 0.052632 AS "P_1", 0.052632 AS "P_2", 0.578947 AS "P_3", 3 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.200000 AS "P_0", 0.675000 AS "P_1", 0.075000 AS "P_2", 0.050000 AS "P_3", 1 AS "D", 0.675000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.076923 AS "P_1", 0.076923 AS "P_2", 0.846154 AS "P_3", 3 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.060606 AS "P_0", 0.818182 AS "P_1", 0.060606 AS "P_2", 0.060606 AS "P_3", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.857143 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.066667 AS "P_2", 0.933333 AS "P_3", 3 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.571429 AS "P_0", 0.000000 AS "P_1", 0.285714 AS "P_2", 0.142857 AS "P_3", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.157895 AS "P_0", 0.105263 AS "P_1", 0.684211 AS "P_2", 0.052632 AS "P_3", 2 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.117647 AS "P_0", 0.088235 AS "P_1", 0.764706 AS "P_2", 0.029412 AS "P_3", 2 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.500000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.062500 AS "P_0", 0.843750 AS "P_1", 0.062500 AS "P_2", 0.031250 AS "P_3", 1 AS "D", 0.843750 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.064516 AS "P_0", 0.870968 AS "P_1", 0.064516 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.870968 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.121212 AS "P_0", 0.060606 AS "P_1", 0.787879 AS "P_2", 0.030303 AS "P_3", 2 AS "D", 0.787879 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.045455 AS "P_0", 0.045455 AS "P_1", 0.909091 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.272727 AS "P_0", 0.090909 AS "P_1", 0.545455 AS "P_2", 0.090909 AS "P_3", 2 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.250000 AS "P_0", 0.500000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.037037 AS "P_0", 0.925926 AS "P_1", 0.037037 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.925926 AS "DP"
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