WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "FourClass_10_medium" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_59", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > 0.088553) AND (t."X_8" <= -0.331488) AND (t."X_3" > 2.108947)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_7" > 0.088553) AND (t."X_8" <= -0.331488) AND (t."X_3" <= 2.108947) AND (t."X_8" <= -1.491246)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_7" > 0.088553) AND (t."X_8" <= -0.331488) AND (t."X_3" <= 2.108947) AND (t."X_8" > -1.491246) AND (t."X_7" <= 0.843678) AND (t."X_7" <= 0.394584)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_7" > 0.088553) AND (t."X_8" <= -0.331488) AND (t."X_3" <= 2.108947) AND (t."X_8" > -1.491246) AND (t."X_7" <= 0.843678) AND (t."X_7" > 0.394584)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_7" > 0.088553) AND (t."X_8" <= -0.331488) AND (t."X_3" <= 2.108947) AND (t."X_8" > -1.491246) AND (t."X_7" > 0.843678) AND (t."X_3" <= -2.653722)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_7" > 0.088553) AND (t."X_8" <= -0.331488) AND (t."X_3" <= 2.108947) AND (t."X_8" > -1.491246) AND (t."X_7" > 0.843678) AND (t."X_3" > -2.653722)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_7" > 0.088553) AND (t."X_8" > -0.331488) AND (t."X_3" > 1.379999) AND (t."X_0" > 0.209343)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_7" > 0.088553) AND (t."X_8" > -0.331488) AND (t."X_3" > 1.379999) AND (t."X_0" <= 0.209343) AND (t."X_9" <= 1.277941)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_7" > 0.088553) AND (t."X_8" > -0.331488) AND (t."X_3" > 1.379999) AND (t."X_0" <= 0.209343) AND (t."X_9" > 1.277941)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" > 1.748840) AND (t."X_8" <= -0.978007)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" > 1.748840) AND (t."X_8" > -0.978007) AND (t."X_7" <= -3.351675)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" > 1.748840) AND (t."X_8" > -0.978007) AND (t."X_7" > -3.351675)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" <= 1.748840) AND (t."X_3" > 0.236471) AND (t."X_8" > 0.301205) AND (t."X_1" > -0.482872) AND (t."X_4" <= -0.210901)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" <= 1.748840) AND (t."X_3" > 0.236471) AND (t."X_8" > 0.301205) AND (t."X_1" > -0.482872) AND (t."X_4" > -0.210901)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" <= 1.748840) AND (t."X_3" > 0.236471) AND (t."X_8" > 0.301205) AND (t."X_1" <= -0.482872) AND (t."X_0" <= 1.721313)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" <= 1.748840) AND (t."X_3" > 0.236471) AND (t."X_8" > 0.301205) AND (t."X_1" <= -0.482872) AND (t."X_0" > 1.721313)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" <= 1.748840) AND (t."X_3" <= 0.236471) AND (t."X_8" <= -0.115846) AND (t."X_0" <= -0.060678) AND (t."X_3" <= -1.861098)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" <= 1.748840) AND (t."X_3" <= 0.236471) AND (t."X_8" <= -0.115846) AND (t."X_0" <= -0.060678) AND (t."X_3" > -1.861098)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" <= 1.748840) AND (t."X_3" <= 0.236471) AND (t."X_8" <= -0.115846) AND (t."X_0" > -0.060678) AND (t."X_7" <= -2.146875)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" <= 1.748840) AND (t."X_3" <= 0.236471) AND (t."X_8" <= -0.115846) AND (t."X_0" > -0.060678) AND (t."X_7" > -2.146875)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" <= 1.748840) AND (t."X_3" <= 0.236471) AND (t."X_8" > -0.115846) AND (t."X_7" <= -0.828539) AND (t."X_0" <= 0.284045)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" <= 1.748840) AND (t."X_3" <= 0.236471) AND (t."X_8" > -0.115846) AND (t."X_7" <= -0.828539) AND (t."X_0" > 0.284045)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" <= 1.748840) AND (t."X_3" <= 0.236471) AND (t."X_8" > -0.115846) AND (t."X_7" > -0.828539) AND (t."X_1" <= 1.117914)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" <= 1.748840) AND (t."X_3" <= 0.236471) AND (t."X_8" > -0.115846) AND (t."X_7" > -0.828539) AND (t."X_1" > 1.117914)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" <= 1.748840) AND (t."X_3" > 0.236471) AND (t."X_8" <= 0.301205) AND (t."X_8" <= -2.403388) AND (t."X_8" <= -2.921290)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" <= 1.748840) AND (t."X_3" > 0.236471) AND (t."X_8" <= 0.301205) AND (t."X_8" <= -2.403388) AND (t."X_8" > -2.921290)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" <= 1.748840) AND (t."X_3" > 0.236471) AND (t."X_8" <= 0.301205) AND (t."X_8" > -2.403388) AND (t."X_8" <= -0.072273)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_7" <= 0.088553) AND (t."X_3" <= 1.748840) AND (t."X_3" > 0.236471) AND (t."X_8" <= 0.301205) AND (t."X_8" > -2.403388) AND (t."X_8" > -0.072273)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_7" > 0.088553) AND (t."X_8" > -0.331488) AND (t."X_3" <= 1.379999) AND (t."X_6" <= -3.044770) AND (t."X_3" <= -2.192672)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_7" > 0.088553) AND (t."X_8" > -0.331488) AND (t."X_3" <= 1.379999) AND (t."X_6" <= -3.044770) AND (t."X_3" > -2.192672)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_7" > 0.088553) AND (t."X_8" > -0.331488) AND (t."X_3" <= 1.379999) AND (t."X_6" > -3.044770) AND (t."X_7" <= 0.821587)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_7" > 0.088553) AND (t."X_8" > -0.331488) AND (t."X_3" <= 1.379999) AND (t."X_6" > -3.044770) AND (t."X_7" > 0.821587)) THEN 62 ELSE NULL END AS "Leaf_62"
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
    SELECT 0 AS nid,  0.253906 AS "P_0", 0.267578 AS "P_1", 0.232422 AS "P_2", 0.246094 AS "P_3", 1 AS "D", 0.267578 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.333333 AS "P_0", 0.098765 AS "P_1", 0.212963 AS "P_2", 0.354938 AS "P_3", 3 AS "D", 0.354938 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.117021 AS "P_0", 0.558511 AS "P_1", 0.265957 AS "P_2", 0.058511 AS "P_3", 1 AS "D", 0.558511 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.152542 AS "P_0", 0.118644 AS "P_1", 0.677966 AS "P_2", 0.050847 AS "P_3", 2 AS "D", 0.677966 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.100775 AS "P_0", 0.759690 AS "P_1", 0.077519 AS "P_2", 0.062016 AS "P_3", 1 AS "D", 0.759690 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.160714 AS "P_0", 0.125000 AS "P_1", 0.714286 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.250000 AS "P_0", 0.194444 AS "P_1", 0.555556 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.571429 AS "P_0", 0.214286 AS "P_1", 0.214286 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.045455 AS "P_0", 0.181818 AS "P_1", 0.772727 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.285714 AS "P_0", 0.428571 AS "P_1", 0.285714 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.857143 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.050000 AS "P_0", 0.100000 AS "P_1", 0.850000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.065574 AS "P_0", 0.795082 AS "P_1", 0.081967 AS "P_2", 0.057377 AS "P_3", 1 AS "D", 0.795082 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.714286 AS "P_0", 0.142857 AS "P_1", 0.000000 AS "P_2", 0.142857 AS "P_3", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.284247 AS "P_0", 0.109589 AS "P_1", 0.232877 AS "P_2", 0.373288 AS "P_3", 3 AS "D", 0.373288 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.781250 AS "P_0", 0.000000 AS "P_1", 0.031250 AS "P_2", 0.187500 AS "P_3", 0 AS "D", 0.781250 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.961538 AS "P_0", 0.000000 AS "P_1", 0.038462 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.303483 AS "P_0", 0.099502 AS "P_1", 0.308458 AS "P_2", 0.288557 AS "P_3", 2 AS "D", 0.308458 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.241758 AS "P_0", 0.131868 AS "P_1", 0.065934 AS "P_2", 0.560440 AS "P_3", 3 AS "D", 0.560440 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.140625 AS "P_0", 0.015625 AS "P_1", 0.078125 AS "P_2", 0.765625 AS "P_3", 3 AS "D", 0.765625 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.481481 AS "P_0", 0.407407 AS "P_1", 0.037037 AS "P_2", 0.074074 AS "P_3", 0 AS "D", 0.481481 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.684211 AS "P_0", 0.315789 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.625000 AS "P_1", 0.125000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.764706 AS "P_0", 0.235294 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.404040 AS "P_0", 0.010101 AS "P_1", 0.474747 AS "P_2", 0.111111 AS "P_3", 2 AS "D", 0.474747 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.205882 AS "P_0", 0.186275 AS "P_1", 0.147059 AS "P_2", 0.460784 AS "P_3", 3 AS "D", 0.460784 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.593750 AS "P_0", 0.015625 AS "P_1", 0.296875 AS "P_2", 0.093750 AS "P_3", 0 AS "D", 0.593750 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.057143 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.708333 AS "P_0", 0.020833 AS "P_1", 0.145833 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.080000 AS "P_0", 0.000000 AS "P_1", 0.920000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.250000 AS "P_0", 0.062500 AS "P_1", 0.078125 AS "P_2", 0.609375 AS "P_3", 3 AS "D", 0.609375 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.131579 AS "P_0", 0.394737 AS "P_1", 0.263158 AS "P_2", 0.210526 AS "P_3", 1 AS "D", 0.394737 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.139535 AS "P_0", 0.069767 AS "P_1", 0.000000 AS "P_2", 0.790698 AS "P_3", 3 AS "D", 0.790698 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.476190 AS "P_0", 0.047619 AS "P_1", 0.238095 AS "P_2", 0.238095 AS "P_3", 0 AS "D", 0.476190 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.045455 AS "P_0", 0.590909 AS "P_1", 0.318182 AS "P_2", 0.045455 AS "P_3", 1 AS "D", 0.590909 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.250000 AS "P_0", 0.125000 AS "P_1", 0.187500 AS "P_2", 0.437500 AS "P_3", 3 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.375000 AS "P_0", 0.000000 AS "P_1", 0.375000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.107143 AS "P_0", 0.017857 AS "P_1", 0.035714 AS "P_2", 0.839286 AS "P_3", 3 AS "D", 0.839286 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.600000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.400000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.021739 AS "P_0", 0.021739 AS "P_1", 0.043478 AS "P_2", 0.913043 AS "P_3", 3 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.042373 AS "P_0", 0.813559 AS "P_1", 0.084746 AS "P_2", 0.059322 AS "P_3", 1 AS "D", 0.813559 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.076923 AS "P_0", 0.641026 AS "P_1", 0.102564 AS "P_2", 0.179487 AS "P_3", 1 AS "D", 0.641026 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.025316 AS "P_0", 0.898734 AS "P_1", 0.075949 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.898734 AS "DP"
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