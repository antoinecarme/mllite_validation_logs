WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "BinaryClass_10_original" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_20", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_50", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" <= -0.798806) AND (t."X_0" > -1.197379)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" <= -0.798806) AND (t."X_0" <= -1.197379) AND (t."X_0" <= -1.387209)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" <= -0.798806) AND (t."X_0" <= -1.197379) AND (t."X_0" > -1.387209)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" > -0.798806) AND (t."X_4" > 1.030633)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" > -0.798806) AND (t."X_4" <= 1.030633) AND (t."X_4" <= 0.918785) AND (t."X_4" <= 0.258377)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" > -0.798806) AND (t."X_4" <= 1.030633) AND (t."X_4" <= 0.918785) AND (t."X_4" > 0.258377)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" > 1.002348)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" > 0.888567) AND (t."X_5" <= -0.979345) AND (t."X_1" <= -1.502778)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" > 0.888567) AND (t."X_5" <= -0.979345) AND (t."X_1" > -1.502778)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" <= -0.068865) AND (t."X_5" <= 0.017741)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" <= -0.068865) AND (t."X_5" > 0.017741)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" > -0.068865) AND (t."X_0" <= 1.612893)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" <= 0.888567) AND (t."X_2" > -0.068865) AND (t."X_0" > 1.612893)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" > 0.888567) AND (t."X_5" > -0.979345) AND (t."X_8" <= -0.559083)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" > -0.301522) AND (t."X_4" <= 1.002348) AND (t."X_4" > 0.888567) AND (t."X_5" > -0.979345) AND (t."X_8" > -0.559083)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" > -0.798806) AND (t."X_4" <= 1.030633) AND (t."X_4" > 0.918785) AND (t."X_0" <= 0.988100)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" <= 0.453636) AND (t."X_4" > -0.798806) AND (t."X_4" <= 1.030633) AND (t."X_4" > 0.918785) AND (t."X_0" > 0.988100)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" <= -0.563125)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" <= 0.532025) AND (t."X_3" <= -0.059112) AND (t."X_4" <= 0.401493)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" <= 0.532025) AND (t."X_3" <= -0.059112) AND (t."X_4" > 0.401493)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" <= 0.532025) AND (t."X_3" > -0.059112) AND (t."X_8" <= 1.530428)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" <= 0.532025) AND (t."X_3" > -0.059112) AND (t."X_8" > 1.530428)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" > 0.881598)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" <= 0.881598) AND (t."X_4" <= 0.887079) AND (t."X_4" <= -0.323677)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" <= 0.881598) AND (t."X_4" <= 0.887079) AND (t."X_4" > -0.323677)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" <= 0.881598) AND (t."X_4" > 0.887079) AND (t."X_4" <= 1.048912)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" <= 0.891910) AND (t."X_5" <= 0.881598) AND (t."X_4" > 0.887079) AND (t."X_4" > 1.048912)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" > 0.891910) AND (t."X_4" <= 1.179713)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_5" > 0.084664) AND (t."X_5" > 0.453636) AND (t."X_5" > 0.891910) AND (t."X_4" > 1.179713)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" > 0.532025) AND (t."X_9" > -1.697700)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" > 0.532025) AND (t."X_9" <= -1.697700) AND (t."X_9" <= -1.790312)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_5" <= 0.084664) AND (t."X_6" <= -0.301522) AND (t."X_2" > -0.563125) AND (t."X_4" > 0.532025) AND (t."X_9" <= -1.697700) AND (t."X_9" > -1.790312)) THEN 62 ELSE NULL END AS "Leaf_62"
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
    SELECT 0 AS nid,  0.505859 AS "P_0", 0.494141 AS "P_1", 0 AS "D", 0.505859 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.838828 AS "P_0", 0.161172 AS "P_1", 0 AS "D", 0.838828 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.125523 AS "P_0", 0.874477 AS "P_1", 1 AS "D", 0.874477 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.382979 AS "P_0", 0.617021 AS "P_1", 1 AS "D", 0.617021 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.313253 AS "P_0", 0.686747 AS "P_1", 1 AS "D", 0.686747 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.269231 AS "P_0", 0.730769 AS "P_1", 1 AS "D", 0.730769 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.441860 AS "P_0", 0.558140 AS "P_1", 1 AS "D", 0.558140 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.057143 AS "P_0", 0.942857 AS "P_1", 1 AS "D", 0.942857 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.303030 AS "P_0", 0.696970 AS "P_1", 1 AS "D", 0.696970 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.926230 AS "P_0", 0.073770 AS "P_1", 0 AS "D", 0.926230 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.661111 AS "P_0", 0.338889 AS "P_1", 0 AS "D", 0.661111 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.469565 AS "P_0", 0.530435 AS "P_1", 1 AS "D", 0.530435 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.671642 AS "P_0", 0.328358 AS "P_1", 0 AS "D", 0.671642 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.187500 AS "P_0", 0.812500 AS "P_1", 1 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.227273 AS "P_0", 0.772727 AS "P_1", 1 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.116279 AS "P_0", 0.883721 AS "P_1", 1 AS "D", 0.883721 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.930233 AS "P_0", 0.069767 AS "P_1", 0 AS "D", 0.930233 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.034483 AS "P_0", 0.965517 AS "P_1", 1 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.031250 AS "P_0", 0.968750 AS "P_1", 1 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.990654 AS "P_0", 0.009346 AS "P_1", 0 AS "D", 0.990654 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.835526 AS "P_0", 0.164474 AS "P_1", 0 AS "D", 0.835526 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.576923 AS "P_0", 0.423077 AS "P_1", 0 AS "D", 0.576923 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.970000 AS "P_0", 0.030000 AS "P_1", 0 AS "D", 0.970000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.437500 AS "P_0", 0.562500 AS "P_1", 1 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.379310 AS "P_0", 0.620690 AS "P_1", 1 AS "D", 0.620690 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.173469 AS "P_0", 0.826531 AS "P_1", 1 AS "D", 0.826531 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.024476 AS "P_0", 0.975524 AS "P_1", 1 AS "D", 0.975524 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.147368 AS "P_0", 0.852632 AS "P_1", 1 AS "D", 0.852632 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.235294 AS "P_0", 0.764706 AS "P_1", 1 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.113636 AS "P_0", 0.886364 AS "P_1", 1 AS "D", 0.886364 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.023810 AS "P_0", 0.976190 AS "P_1", 1 AS "D", 0.976190 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.021053 AS "P_0", 0.978947 AS "P_1", 1 AS "D", 0.978947 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.979381 AS "P_0", 0.020619 AS "P_1", 0 AS "D", 0.979381 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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