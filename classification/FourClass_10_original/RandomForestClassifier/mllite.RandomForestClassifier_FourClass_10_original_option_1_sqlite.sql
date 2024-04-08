WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "FourClass_10_original" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_34", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" <= -0.031767) AND (t."X_8" <= 0.172597) AND (t."X_7" <= 1.180407) AND (t."X_9" > 1.241059)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_4" <= -0.031767) AND (t."X_8" <= 0.172597) AND (t."X_7" > 1.180407) AND (t."X_5" <= -0.160571)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_4" <= -0.031767) AND (t."X_8" <= 0.172597) AND (t."X_7" > 1.180407) AND (t."X_5" > -0.160571)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_4" <= -0.031767) AND (t."X_8" > 0.172597) AND (t."X_2" > 0.808146) AND (t."X_7" <= 0.194627)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_4" <= -0.031767) AND (t."X_8" > 0.172597) AND (t."X_2" > 0.808146) AND (t."X_7" > 0.194627)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_4" <= -0.031767) AND (t."X_8" > 0.172597) AND (t."X_2" <= 0.808146) AND (t."X_4" > -0.173038)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_4" <= -0.031767) AND (t."X_8" <= 0.172597) AND (t."X_7" <= 1.180407) AND (t."X_9" <= 1.241059) AND (t."X_9" <= -0.958180) AND (t."X_7" <= -1.339321)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_4" <= -0.031767) AND (t."X_8" <= 0.172597) AND (t."X_7" <= 1.180407) AND (t."X_9" <= 1.241059) AND (t."X_9" <= -0.958180) AND (t."X_7" > -1.339321)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_4" <= -0.031767) AND (t."X_8" <= 0.172597) AND (t."X_7" <= 1.180407) AND (t."X_9" <= 1.241059) AND (t."X_9" > -0.958180) AND (t."X_4" <= -1.001013)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_4" <= -0.031767) AND (t."X_8" <= 0.172597) AND (t."X_7" <= 1.180407) AND (t."X_9" <= 1.241059) AND (t."X_9" > -0.958180) AND (t."X_4" > -1.001013)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_4" <= -0.031767) AND (t."X_8" > 0.172597) AND (t."X_2" <= 0.808146) AND (t."X_4" <= -0.173038) AND (t."X_2" > 0.065810) AND (t."X_4" <= -0.857054)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_4" <= -0.031767) AND (t."X_8" > 0.172597) AND (t."X_2" <= 0.808146) AND (t."X_4" <= -0.173038) AND (t."X_2" > 0.065810) AND (t."X_4" > -0.857054)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_4" <= -0.031767) AND (t."X_8" > 0.172597) AND (t."X_2" <= 0.808146) AND (t."X_4" <= -0.173038) AND (t."X_2" <= 0.065810) AND (t."X_7" <= 0.058210)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_4" <= -0.031767) AND (t."X_8" > 0.172597) AND (t."X_2" <= 0.808146) AND (t."X_4" <= -0.173038) AND (t."X_2" <= 0.065810) AND (t."X_7" > 0.058210)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_4" > -0.031767) AND (t."X_4" <= 0.642805) AND (t."X_8" <= -0.269633) AND (t."X_7" > 0.766705)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_4" > -0.031767) AND (t."X_4" <= 0.642805) AND (t."X_8" > -0.269633) AND (t."X_5" > 0.727249)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_4" > -0.031767) AND (t."X_4" <= 0.642805) AND (t."X_8" <= -0.269633) AND (t."X_7" <= 0.766705) AND (t."X_8" > -1.118962)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_4" > -0.031767) AND (t."X_4" <= 0.642805) AND (t."X_8" <= -0.269633) AND (t."X_7" <= 0.766705) AND (t."X_8" <= -1.118962) AND (t."X_8" <= -1.751763)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_4" > -0.031767) AND (t."X_4" <= 0.642805) AND (t."X_8" <= -0.269633) AND (t."X_7" <= 0.766705) AND (t."X_8" <= -1.118962) AND (t."X_8" > -1.751763)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_4" > -0.031767) AND (t."X_4" <= 0.642805) AND (t."X_8" > -0.269633) AND (t."X_5" <= 0.727249) AND (t."X_4" <= 0.053532)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_4" > -0.031767) AND (t."X_4" <= 0.642805) AND (t."X_8" > -0.269633) AND (t."X_5" <= 0.727249) AND (t."X_4" > 0.053532) AND (t."X_2" <= -0.506499)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_4" > -0.031767) AND (t."X_4" <= 0.642805) AND (t."X_8" > -0.269633) AND (t."X_5" <= 0.727249) AND (t."X_4" > 0.053532) AND (t."X_2" > -0.506499)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_4" > -0.031767) AND (t."X_4" > 0.642805) AND (t."X_4" <= 0.788844) AND (t."X_8" > 0.403971)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_4" > -0.031767) AND (t."X_4" > 0.642805) AND (t."X_4" <= 0.788844) AND (t."X_8" <= 0.403971) AND (t."X_8" <= -0.723085)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_4" > -0.031767) AND (t."X_4" > 0.642805) AND (t."X_4" <= 0.788844) AND (t."X_8" <= 0.403971) AND (t."X_8" > -0.723085)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_4" > -0.031767) AND (t."X_4" > 0.642805) AND (t."X_4" > 0.788844) AND (t."X_4" <= 0.901981)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_4" > -0.031767) AND (t."X_4" > 0.642805) AND (t."X_4" > 0.788844) AND (t."X_4" > 0.901981) AND (t."X_5" <= -0.360625) AND (t."X_7" <= -0.560041)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_4" > -0.031767) AND (t."X_4" > 0.642805) AND (t."X_4" > 0.788844) AND (t."X_4" > 0.901981) AND (t."X_5" <= -0.360625) AND (t."X_7" > -0.560041)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_4" > -0.031767) AND (t."X_4" > 0.642805) AND (t."X_4" > 0.788844) AND (t."X_4" > 0.901981) AND (t."X_5" > -0.360625) AND (t."X_2" <= -0.148480)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_4" > -0.031767) AND (t."X_4" > 0.642805) AND (t."X_4" > 0.788844) AND (t."X_4" > 0.901981) AND (t."X_5" > -0.360625) AND (t."X_2" > -0.148480)) THEN 58 ELSE NULL END AS "Leaf_58"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.234375 AS "P_0", 0.250000 AS "P_1", 0.262695 AS "P_2", 0.252930 AS "P_3", 2 AS "D", 0.262695 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.285714 AS "P_0", 0.214286 AS "P_1", 0.293878 AS "P_2", 0.206122 AS "P_3", 2 AS "D", 0.293878 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.187266 AS "P_0", 0.282772 AS "P_1", 0.234082 AS "P_2", 0.295880 AS "P_3", 3 AS "D", 0.295880 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.281250 AS "P_0", 0.058594 AS "P_1", 0.484375 AS "P_2", 0.175781 AS "P_3", 2 AS "D", 0.484375 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.290598 AS "P_0", 0.384615 AS "P_1", 0.085470 AS "P_2", 0.239316 AS "P_3", 1 AS "D", 0.384615 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.316038 AS "P_0", 0.056604 AS "P_1", 0.419811 AS "P_2", 0.207547 AS "P_3", 2 AS "D", 0.419811 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.113636 AS "P_0", 0.068182 AS "P_1", 0.795455 AS "P_2", 0.022727 AS "P_3", 2 AS "D", 0.795455 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.338624 AS "P_0", 0.058201 AS "P_1", 0.439153 AS "P_2", 0.164021 AS "P_3", 2 AS "D", 0.439153 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.130435 AS "P_0", 0.043478 AS "P_1", 0.260870 AS "P_2", 0.565217 AS "P_3", 3 AS "D", 0.565217 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.086957 AS "P_0", 0.000000 AS "P_1", 0.913043 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.142857 AS "P_0", 0.142857 AS "P_1", 0.666667 AS "P_2", 0.047619 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.293478 AS "P_0", 0.326087 AS "P_1", 0.092391 AS "P_2", 0.288043 AS "P_3", 1 AS "D", 0.326087 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.280000 AS "P_0", 0.600000 AS "P_1", 0.060000 AS "P_2", 0.060000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.636364 AS "P_0", 0.136364 AS "P_1", 0.136364 AS "P_2", 0.090909 AS "P_3", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.964286 AS "P_1", 0.000000 AS "P_2", 0.035714 AS "P_3", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.292683 AS "P_0", 0.359756 AS "P_1", 0.097561 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.359756 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.300000 AS "P_0", 0.050000 AS "P_1", 0.050000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.186047 AS "P_0", 0.023256 AS "P_1", 0.627907 AS "P_2", 0.162791 AS "P_3", 2 AS "D", 0.627907 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.383562 AS "P_0", 0.068493 AS "P_1", 0.383562 AS "P_2", 0.164384 AS "P_3", 0 AS "D", 0.383562 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.090909 AS "P_0", 0.000000 AS "P_1", 0.818182 AS "P_2", 0.090909 AS "P_3", 2 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.285714 AS "P_0", 0.047619 AS "P_1", 0.428571 AS "P_2", 0.238095 AS "P_3", 2 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.175000 AS "P_0", 0.125000 AS "P_1", 0.550000 AS "P_2", 0.150000 AS "P_3", 2 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.462264 AS "P_0", 0.047170 AS "P_1", 0.320755 AS "P_2", 0.169811 AS "P_3", 0 AS "D", 0.462264 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.274510 AS "P_0", 0.421569 AS "P_1", 0.127451 AS "P_2", 0.176471 AS "P_3", 1 AS "D", 0.421569 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.322581 AS "P_0", 0.258065 AS "P_1", 0.048387 AS "P_2", 0.370968 AS "P_3", 3 AS "D", 0.370968 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.300000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.343750 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.156250 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.349206 AS "P_0", 0.206349 AS "P_1", 0.174603 AS "P_2", 0.269841 AS "P_3", 0 AS "D", 0.349206 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.153846 AS "P_0", 0.769231 AS "P_1", 0.051282 AS "P_2", 0.025641 AS "P_3", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.159533 AS "P_0", 0.369650 AS "P_1", 0.245136 AS "P_2", 0.225681 AS "P_3", 1 AS "D", 0.369650 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.212996 AS "P_0", 0.202166 AS "P_1", 0.223827 AS "P_2", 0.361011 AS "P_3", 3 AS "D", 0.361011 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.169811 AS "P_0", 0.047170 AS "P_1", 0.443396 AS "P_2", 0.339623 AS "P_3", 2 AS "D", 0.443396 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.152318 AS "P_0", 0.596026 AS "P_1", 0.105960 AS "P_2", 0.145695 AS "P_3", 1 AS "D", 0.596026 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.216867 AS "P_0", 0.000000 AS "P_1", 0.361446 AS "P_2", 0.421687 AS "P_3", 3 AS "D", 0.421687 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.217391 AS "P_1", 0.739130 AS "P_2", 0.043478 AS "P_3", 2 AS "D", 0.739130 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.176923 AS "P_0", 0.538462 AS "P_1", 0.123077 AS "P_2", 0.161538 AS "P_3", 1 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.952381 AS "P_1", 0.000000 AS "P_2", 0.047619 AS "P_3", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.173913 AS "P_0", 0.000000 AS "P_1", 0.478261 AS "P_2", 0.347826 AS "P_3", 2 AS "D", 0.478261 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.270270 AS "P_0", 0.000000 AS "P_1", 0.216216 AS "P_2", 0.513514 AS "P_3", 3 AS "D", 0.513514 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.363636 AS "P_0", 0.000000 AS "P_1", 0.318182 AS "P_2", 0.318182 AS "P_3", 0 AS "D", 0.363636 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.625000 AS "P_2", 0.375000 AS "P_3", 2 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.115385 AS "P_0", 0.769231 AS "P_1", 0.000000 AS "P_2", 0.115385 AS "P_3", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.192308 AS "P_0", 0.480769 AS "P_1", 0.153846 AS "P_2", 0.173077 AS "P_3", 1 AS "D", 0.480769 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.023256 AS "P_0", 0.651163 AS "P_1", 0.186047 AS "P_2", 0.139535 AS "P_3", 1 AS "D", 0.651163 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.311475 AS "P_0", 0.360656 AS "P_1", 0.131148 AS "P_2", 0.196721 AS "P_3", 1 AS "D", 0.360656 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.323077 AS "P_0", 0.076923 AS "P_1", 0.138462 AS "P_2", 0.461538 AS "P_3", 3 AS "D", 0.461538 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.179245 AS "P_0", 0.240566 AS "P_1", 0.250000 AS "P_2", 0.330189 AS "P_3", 3 AS "D", 0.330189 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.600000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.150000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.350000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.450000 AS "P_3", 3 AS "D", 0.450000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.080000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.720000 AS "P_3", 3 AS "D", 0.720000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.037037 AS "P_0", 0.370370 AS "P_1", 0.518519 AS "P_2", 0.074074 AS "P_3", 2 AS "D", 0.518519 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.200000 AS "P_0", 0.221622 AS "P_1", 0.210811 AS "P_2", 0.367568 AS "P_3", 3 AS "D", 0.367568 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.148148 AS "P_0", 0.259259 AS "P_1", 0.333333 AS "P_2", 0.259259 AS "P_3", 2 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.240385 AS "P_0", 0.192308 AS "P_1", 0.115385 AS "P_2", 0.451923 AS "P_3", 3 AS "D", 0.451923 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.230769 AS "P_0", 0.000000 AS "P_1", 0.153846 AS "P_2", 0.615385 AS "P_3", 3 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.109091 AS "P_0", 0.381818 AS "P_1", 0.418182 AS "P_2", 0.090909 AS "P_3", 2 AS "D", 0.418182 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.395349 AS "P_0", 0.139535 AS "P_1", 0.093023 AS "P_2", 0.372093 AS "P_3", 0 AS "D", 0.395349 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.131148 AS "P_0", 0.229508 AS "P_1", 0.131148 AS "P_2", 0.508197 AS "P_3", 3 AS "D", 0.508197 AS "DP"
  ) AS "Values"),
"DT_Output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_0" AS t1
   LEFT OUTER JOIN
   "DT_node_data_0" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_1" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_7", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_54" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > 0.200245) AND (t."X_7" <= 0.012418) AND (t."X_7" <= -0.927772) AND (t."X_8" <= 0.476539)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_8" > 0.200245) AND (t."X_7" <= 0.012418) AND (t."X_7" <= -0.927772) AND (t."X_8" > 0.476539) AND (t."X_8" > 2.524589)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_8" > 0.200245) AND (t."X_7" <= 0.012418) AND (t."X_7" <= -0.927772) AND (t."X_8" > 0.476539) AND (t."X_8" <= 2.524589) AND (t."X_8" <= 0.934895)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_8" > 0.200245) AND (t."X_7" <= 0.012418) AND (t."X_7" <= -0.927772) AND (t."X_8" > 0.476539) AND (t."X_8" <= 2.524589) AND (t."X_8" > 0.934895)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_8" > 0.200245) AND (t."X_7" <= 0.012418) AND (t."X_7" > -0.927772) AND (t."X_7" > -0.226252)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_8" > 0.200245) AND (t."X_7" <= 0.012418) AND (t."X_7" > -0.927772) AND (t."X_7" <= -0.226252) AND (t."X_8" > 1.799550)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_8" > 0.200245) AND (t."X_7" <= 0.012418) AND (t."X_7" > -0.927772) AND (t."X_7" <= -0.226252) AND (t."X_8" <= 1.799550) AND (t."X_4" <= -0.767169)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_8" > 0.200245) AND (t."X_7" <= 0.012418) AND (t."X_7" > -0.927772) AND (t."X_7" <= -0.226252) AND (t."X_8" <= 1.799550) AND (t."X_4" > -0.767169)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_8" <= 0.200245) AND (t."X_8" <= -1.929955) AND (t."X_8" <= -2.987000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_8" <= 0.200245) AND (t."X_8" > -1.929955) AND (t."X_7" > 0.776633) AND (t."X_8" > -0.573208)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_8" <= 0.200245) AND (t."X_8" > -1.929955) AND (t."X_7" > 0.776633) AND (t."X_8" <= -0.573208) AND (t."X_7" <= 1.873515)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_8" <= 0.200245) AND (t."X_8" > -1.929955) AND (t."X_7" > 0.776633) AND (t."X_8" <= -0.573208) AND (t."X_7" > 1.873515)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_8" <= 0.200245) AND (t."X_8" > -1.929955) AND (t."X_7" <= 0.776633) AND (t."X_4" <= -0.234539) AND (t."X_7" > -0.142977)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_8" <= 0.200245) AND (t."X_8" > -1.929955) AND (t."X_7" <= 0.776633) AND (t."X_4" <= -0.234539) AND (t."X_7" <= -0.142977) AND (t."X_4" <= -0.974002)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_8" <= 0.200245) AND (t."X_8" > -1.929955) AND (t."X_7" <= 0.776633) AND (t."X_4" <= -0.234539) AND (t."X_7" <= -0.142977) AND (t."X_4" > -0.974002)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_8" > 0.200245) AND (t."X_7" > 0.012418) AND (t."X_7" <= 1.229156) AND (t."X_4" <= -0.574341)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_8" <= 0.200245) AND (t."X_8" > -1.929955) AND (t."X_7" <= 0.776633) AND (t."X_4" > -0.234539) AND (t."X_8" > -0.482347) AND (t."X_7" <= -1.127586)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_8" <= 0.200245) AND (t."X_8" > -1.929955) AND (t."X_7" <= 0.776633) AND (t."X_4" > -0.234539) AND (t."X_8" > -0.482347) AND (t."X_7" > -1.127586)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_8" <= 0.200245) AND (t."X_8" > -1.929955) AND (t."X_7" <= 0.776633) AND (t."X_4" > -0.234539) AND (t."X_8" <= -0.482347) AND (t."X_8" <= -0.566347)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_8" <= 0.200245) AND (t."X_8" > -1.929955) AND (t."X_7" <= 0.776633) AND (t."X_4" > -0.234539) AND (t."X_8" <= -0.482347) AND (t."X_8" > -0.566347)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_8" > 0.200245) AND (t."X_7" > 0.012418) AND (t."X_7" <= 1.229156) AND (t."X_4" > -0.574341) AND (t."X_7" <= 0.193387)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_8" > 0.200245) AND (t."X_7" > 0.012418) AND (t."X_7" <= 1.229156) AND (t."X_4" > -0.574341) AND (t."X_7" > 0.193387) AND (t."X_9" <= -0.224299)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_8" > 0.200245) AND (t."X_7" > 0.012418) AND (t."X_7" <= 1.229156) AND (t."X_4" > -0.574341) AND (t."X_7" > 0.193387) AND (t."X_9" > -0.224299)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_8" <= 0.200245) AND (t."X_8" <= -1.929955) AND (t."X_8" > -2.987000) AND (t."X_9" > 0.539370)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_8" <= 0.200245) AND (t."X_8" <= -1.929955) AND (t."X_8" > -2.987000) AND (t."X_9" <= 0.539370) AND (t."X_7" <= 0.472058)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_8" <= 0.200245) AND (t."X_8" <= -1.929955) AND (t."X_8" > -2.987000) AND (t."X_9" <= 0.539370) AND (t."X_7" > 0.472058)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_8" > 0.200245) AND (t."X_7" > 0.012418) AND (t."X_7" > 1.229156) AND (t."X_4" <= 0.673905)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_8" > 0.200245) AND (t."X_7" > 0.012418) AND (t."X_7" > 1.229156) AND (t."X_4" > 0.673905)) THEN 54 ELSE NULL END AS "Leaf_54"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.218750 AS "P_0", 0.238281 AS "P_1", 0.257812 AS "P_2", 0.285156 AS "P_3", 3 AS "D", 0.285156 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.197107 AS "P_0", 0.057866 AS "P_1", 0.426763 AS "P_2", 0.318264 AS "P_3", 2 AS "D", 0.426763 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.244161 AS "P_0", 0.450106 AS "P_1", 0.059448 AS "P_2", 0.246284 AS "P_3", 1 AS "D", 0.450106 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.360902 AS "P_0", 0.172932 AS "P_1", 0.075188 AS "P_2", 0.390977 AS "P_3", 3 AS "D", 0.390977 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.092683 AS "P_0", 0.809756 AS "P_1", 0.039024 AS "P_2", 0.058537 AS "P_3", 1 AS "D", 0.809756 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.333333 AS "P_0", 0.079710 AS "P_1", 0.028986 AS "P_2", 0.557971 AS "P_3", 3 AS "D", 0.557971 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.390625 AS "P_0", 0.273438 AS "P_1", 0.125000 AS "P_2", 0.210938 AS "P_3", 0 AS "D", 0.390625 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.080000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.920000 AS "P_3", 3 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.389381 AS "P_0", 0.097345 AS "P_1", 0.035398 AS "P_2", 0.477876 AS "P_3", 3 AS "D", 0.477876 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.465909 AS "P_0", 0.125000 AS "P_1", 0.045455 AS "P_2", 0.363636 AS "P_3", 0 AS "D", 0.465909 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.120000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.880000 AS "P_3", 3 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.454545 AS "P_0", 0.363636 AS "P_1", 0.136364 AS "P_2", 0.045455 AS "P_3", 0 AS "D", 0.454545 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.469697 AS "P_0", 0.045455 AS "P_1", 0.015152 AS "P_2", 0.469697 AS "P_3", 0 AS "D", 0.469697 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.317757 AS "P_0", 0.317757 AS "P_1", 0.130841 AS "P_2", 0.233645 AS "P_3", 0 AS "D", 0.317757 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.761905 AS "P_0", 0.047619 AS "P_1", 0.095238 AS "P_2", 0.095238 AS "P_3", 0 AS "D", 0.761905 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.379310 AS "P_0", 0.229885 AS "P_1", 0.160920 AS "P_2", 0.229885 AS "P_3", 0 AS "D", 0.379310 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.050000 AS "P_0", 0.700000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.373134 AS "P_0", 0.298507 AS "P_1", 0.179104 AS "P_2", 0.149254 AS "P_3", 0 AS "D", 0.373134 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.254717 AS "P_0", 0.000000 AS "P_1", 0.669811 AS "P_2", 0.075472 AS "P_3", 2 AS "D", 0.669811 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.183445 AS "P_0", 0.071588 AS "P_1", 0.369128 AS "P_2", 0.375839 AS "P_3", 3 AS "D", 0.375839 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.650000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.100000 AS "P_3", 0 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.162791 AS "P_0", 0.000000 AS "P_1", 0.767442 AS "P_2", 0.069767 AS "P_3", 2 AS "D", 0.767442 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.217631 AS "P_0", 0.019284 AS "P_1", 0.316804 AS "P_2", 0.446281 AS "P_3", 3 AS "D", 0.446281 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.035714 AS "P_0", 0.297619 AS "P_1", 0.595238 AS "P_2", 0.071429 AS "P_3", 2 AS "D", 0.595238 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.040816 AS "P_0", 0.102041 AS "P_1", 0.734694 AS "P_2", 0.122449 AS "P_3", 2 AS "D", 0.734694 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.028571 AS "P_0", 0.571429 AS "P_1", 0.400000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.045455 AS "P_0", 0.045455 AS "P_1", 0.636364 AS "P_2", 0.272727 AS "P_3", 2 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.037037 AS "P_0", 0.148148 AS "P_1", 0.814815 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.814815 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.157025 AS "P_0", 0.694215 AS "P_1", 0.049587 AS "P_2", 0.099174 AS "P_3", 1 AS "D", 0.694215 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.976190 AS "P_1", 0.023810 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.976190 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.320000 AS "P_0", 0.008000 AS "P_1", 0.408000 AS "P_2", 0.264000 AS "P_3", 2 AS "D", 0.408000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.163866 AS "P_0", 0.025210 AS "P_1", 0.268908 AS "P_2", 0.542017 AS "P_3", 3 AS "D", 0.542017 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.244898 AS "P_0", 0.000000 AS "P_1", 0.448980 AS "P_2", 0.306122 AS "P_3", 2 AS "D", 0.448980 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.592593 AS "P_0", 0.037037 AS "P_1", 0.259259 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.592593 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.098039 AS "P_0", 0.000000 AS "P_1", 0.588235 AS "P_2", 0.313726 AS "P_3", 2 AS "D", 0.588235 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.404255 AS "P_0", 0.000000 AS "P_1", 0.297872 AS "P_2", 0.297872 AS "P_3", 0 AS "D", 0.404255 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.392857 AS "P_0", 0.535714 AS "P_1", 0.035714 AS "P_2", 0.035714 AS "P_3", 1 AS "D", 0.535714 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.086022 AS "P_0", 0.741935 AS "P_1", 0.053763 AS "P_2", 0.118280 AS "P_3", 1 AS "D", 0.741935 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.130719 AS "P_0", 0.006536 AS "P_1", 0.346405 AS "P_2", 0.516340 AS "P_3", 3 AS "D", 0.516340 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.223529 AS "P_0", 0.058824 AS "P_1", 0.129412 AS "P_2", 0.588235 AS "P_3", 3 AS "D", 0.588235 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.100000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.290909 AS "P_0", 0.090909 AS "P_1", 0.145455 AS "P_2", 0.472727 AS "P_3", 3 AS "D", 0.472727 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.142857 AS "P_0", 0.007519 AS "P_1", 0.300752 AS "P_2", 0.548872 AS "P_3", 3 AS "D", 0.548872 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.050000 AS "P_0", 0.000000 AS "P_1", 0.650000 AS "P_2", 0.300000 AS "P_3", 2 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.142857 AS "P_0", 0.571429 AS "P_1", 0.142857 AS "P_2", 0.142857 AS "P_3", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.069444 AS "P_0", 0.791667 AS "P_1", 0.027778 AS "P_2", 0.111111 AS "P_3", 1 AS "D", 0.791667 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.100000 AS "P_0", 0.600000 AS "P_1", 0.050000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.057692 AS "P_0", 0.865385 AS "P_1", 0.019231 AS "P_2", 0.057692 AS "P_3", 1 AS "D", 0.865385 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.186441 AS "P_0", 0.000000 AS "P_1", 0.711864 AS "P_2", 0.101695 AS "P_3", 2 AS "D", 0.711864 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.111111 AS "P_0", 0.000000 AS "P_1", 0.888889 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.314286 AS "P_0", 0.000000 AS "P_1", 0.542857 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.542857 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.958333 AS "P_2", 0.041667 AS "P_3", 2 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.913043 AS "P_1", 0.086957 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.913043 AS "DP"
  ) AS "Values"),
"DT_Output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_1" AS t1
   LEFT OUTER JOIN
   "DT_node_data_1" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_2" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_54", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 1.200768) AND (t."X_7" <= 0.957446) AND (t."X_8" > -0.476245)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_6" > 1.200768) AND (t."X_7" <= 0.957446) AND (t."X_8" <= -0.476245) AND (t."X_8" <= -1.851844) AND (t."X_6" <= 2.154766)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" > 1.200768) AND (t."X_7" <= 0.957446) AND (t."X_8" <= -0.476245) AND (t."X_8" <= -1.851844) AND (t."X_6" > 2.154766)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" > 0.095555) AND (t."X_6" > 0.594206) AND (t."X_8" <= 0.084641)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" > 0.095555) AND (t."X_6" > 0.594206) AND (t."X_8" > 0.084641)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" > 1.200768) AND (t."X_7" <= 0.957446) AND (t."X_8" <= -0.476245) AND (t."X_8" > -1.851844) AND (t."X_9" <= 0.554063)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" > 1.200768) AND (t."X_7" <= 0.957446) AND (t."X_8" <= -0.476245) AND (t."X_8" > -1.851844) AND (t."X_9" > 0.554063)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" > 1.200768) AND (t."X_7" > 0.957446) AND (t."X_6" > 2.853766)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" <= 0.095555) AND (t."X_7" > -0.694914) AND (t."X_6" <= -0.495532) AND (t."X_5" <= -0.662790)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" <= 0.095555) AND (t."X_7" > -0.694914) AND (t."X_6" <= -0.495532) AND (t."X_5" > -0.662790) AND (t."X_8" <= 0.817478)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" <= 0.095555) AND (t."X_7" > -0.694914) AND (t."X_6" <= -0.495532) AND (t."X_5" > -0.662790) AND (t."X_8" > 0.817478)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" <= 0.095555) AND (t."X_7" > -0.694914) AND (t."X_6" > -0.495532) AND (t."X_7" <= -0.513417)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" <= 0.095555) AND (t."X_7" > -0.694914) AND (t."X_6" > -0.495532) AND (t."X_7" > -0.513417) AND (t."X_6" <= 0.302943)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" <= 0.095555) AND (t."X_7" > -0.694914) AND (t."X_6" > -0.495532) AND (t."X_7" > -0.513417) AND (t."X_6" > 0.302943)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" <= 0.095555) AND (t."X_7" <= -0.694914) AND (t."X_8" <= -1.109422) AND (t."X_5" <= -0.508545)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" <= 0.095555) AND (t."X_7" <= -0.694914) AND (t."X_8" <= -1.109422) AND (t."X_5" > -0.508545) AND (t."X_8" <= -1.619926)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" <= 0.095555) AND (t."X_7" <= -0.694914) AND (t."X_8" <= -1.109422) AND (t."X_5" > -0.508545) AND (t."X_8" > -1.619926)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_6" > 1.200768) AND (t."X_7" > 0.957446) AND (t."X_6" <= 2.853766) AND (t."X_6" <= 1.977124)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_6" > 1.200768) AND (t."X_7" > 0.957446) AND (t."X_6" <= 2.853766) AND (t."X_6" > 1.977124)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" <= 0.095555) AND (t."X_7" <= -0.694914) AND (t."X_8" > -1.109422) AND (t."X_6" > -0.533196) AND (t."X_9" <= 0.091604)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" <= 0.095555) AND (t."X_7" <= -0.694914) AND (t."X_8" > -1.109422) AND (t."X_6" > -0.533196) AND (t."X_9" > 0.091604)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" <= 0.095555) AND (t."X_7" <= -0.694914) AND (t."X_8" > -1.109422) AND (t."X_6" <= -0.533196) AND (t."X_6" <= -3.810361)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" <= 0.095555) AND (t."X_7" <= -0.694914) AND (t."X_8" > -1.109422) AND (t."X_6" <= -0.533196) AND (t."X_6" > -3.810361)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" > 0.095555) AND (t."X_6" <= 0.594206) AND (t."X_7" <= 1.143113) AND (t."X_6" > -0.668418) AND (t."X_8" <= 0.208819)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" > 0.095555) AND (t."X_6" <= 0.594206) AND (t."X_7" <= 1.143113) AND (t."X_6" > -0.668418) AND (t."X_8" > 0.208819)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" > 0.095555) AND (t."X_6" <= 0.594206) AND (t."X_7" <= 1.143113) AND (t."X_6" <= -0.668418) AND (t."X_7" <= 0.882562)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" > 0.095555) AND (t."X_6" <= 0.594206) AND (t."X_7" <= 1.143113) AND (t."X_6" <= -0.668418) AND (t."X_7" > 0.882562)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" > 0.095555) AND (t."X_6" <= 0.594206) AND (t."X_7" > 1.143113) AND (t."X_7" > 1.859434)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" > 0.095555) AND (t."X_6" <= 0.594206) AND (t."X_7" > 1.143113) AND (t."X_7" <= 1.859434) AND (t."X_7" <= 1.446526)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_6" <= 1.200768) AND (t."X_7" > 0.095555) AND (t."X_6" <= 0.594206) AND (t."X_7" > 1.143113) AND (t."X_7" <= 1.859434) AND (t."X_7" > 1.446526)) THEN 58 ELSE NULL END AS "Leaf_58"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.225586 AS "P_0", 0.272461 AS "P_1", 0.241211 AS "P_2", 0.260742 AS "P_3", 1 AS "D", 0.272461 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.234432 AS "P_0", 0.323565 AS "P_1", 0.200244 AS "P_2", 0.241758 AS "P_3", 1 AS "D", 0.323565 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.190244 AS "P_0", 0.068293 AS "P_1", 0.404878 AS "P_2", 0.336585 AS "P_3", 2 AS "D", 0.404878 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.300000 AS "P_0", 0.000000 AS "P_1", 0.175000 AS "P_2", 0.525000 AS "P_3", 3 AS "D", 0.525000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.035294 AS "P_0", 0.164706 AS "P_1", 0.729412 AS "P_2", 0.070588 AS "P_3", 2 AS "D", 0.729412 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.320370 AS "P_0", 0.098148 AS "P_1", 0.227778 AS "P_2", 0.353704 AS "P_3", 3 AS "D", 0.353704 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.068100 AS "P_0", 0.759857 AS "P_1", 0.146953 AS "P_2", 0.025090 AS "P_3", 1 AS "D", 0.759857 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.204082 AS "P_0", 0.000000 AS "P_1", 0.193878 AS "P_2", 0.602041 AS "P_3", 3 AS "D", 0.602041 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.727273 AS "P_0", 0.000000 AS "P_1", 0.090909 AS "P_2", 0.181818 AS "P_3", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.304348 AS "P_0", 0.000000 AS "P_1", 0.347826 AS "P_2", 0.347826 AS "P_3", 2 AS "D", 0.347826 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.115385 AS "P_0", 0.000000 AS "P_1", 0.057692 AS "P_2", 0.826923 AS "P_3", 3 AS "D", 0.826923 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.409091 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.090909 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.208333 AS "P_0", 0.000000 AS "P_1", 0.208333 AS "P_2", 0.583333 AS "P_3", 3 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.048458 AS "P_0", 0.837004 AS "P_1", 0.083700 AS "P_2", 0.030837 AS "P_3", 1 AS "D", 0.837004 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.153846 AS "P_0", 0.423077 AS "P_1", 0.423077 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.423077 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.129032 AS "P_0", 0.161290 AS "P_1", 0.709677 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.709677 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.190476 AS "P_0", 0.809524 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.222222 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.021739 AS "P_0", 0.304348 AS "P_1", 0.673913 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.673913 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.051282 AS "P_0", 0.000000 AS "P_1", 0.794872 AS "P_2", 0.153846 AS "P_3", 2 AS "D", 0.794872 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.293507 AS "P_0", 0.057143 AS "P_1", 0.202597 AS "P_2", 0.446753 AS "P_3", 3 AS "D", 0.446753 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.387097 AS "P_0", 0.200000 AS "P_1", 0.290323 AS "P_2", 0.122581 AS "P_3", 0 AS "D", 0.387097 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.150000 AS "P_0", 0.337500 AS "P_1", 0.362500 AS "P_2", 0.150000 AS "P_3", 2 AS "D", 0.362500 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.640000 AS "P_0", 0.053333 AS "P_1", 0.213333 AS "P_2", 0.093333 AS "P_3", 0 AS "D", 0.640000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.040000 AS "P_1", 0.800000 AS "P_2", 0.160000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.218182 AS "P_0", 0.472727 AS "P_1", 0.163636 AS "P_2", 0.145455 AS "P_3", 1 AS "D", 0.472727 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.250000 AS "P_0", 0.200000 AS "P_1", 0.400000 AS "P_2", 0.150000 AS "P_3", 2 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.200000 AS "P_0", 0.628571 AS "P_1", 0.028571 AS "P_2", 0.142857 AS "P_3", 1 AS "D", 0.628571 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.350000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.727273 AS "P_0", 0.072727 AS "P_1", 0.163636 AS "P_2", 0.036364 AS "P_3", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.600000 AS "P_0", 0.133333 AS "P_1", 0.233333 AS "P_2", 0.033333 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.880000 AS "P_0", 0.000000 AS "P_1", 0.080000 AS "P_2", 0.040000 AS "P_3", 0 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.250000 AS "P_0", 0.013158 AS "P_1", 0.473684 AS "P_2", 0.263158 AS "P_3", 2 AS "D", 0.473684 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.304207 AS "P_0", 0.067961 AS "P_1", 0.135922 AS "P_2", 0.491909 AS "P_3", 3 AS "D", 0.491909 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.310345 AS "P_0", 0.000000 AS "P_1", 0.241379 AS "P_2", 0.448276 AS "P_3", 3 AS "D", 0.448276 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.212766 AS "P_0", 0.021277 AS "P_1", 0.617021 AS "P_2", 0.148936 AS "P_3", 2 AS "D", 0.617021 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.550000 AS "P_2", 0.050000 AS "P_3", 2 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.074074 AS "P_0", 0.037037 AS "P_1", 0.666667 AS "P_2", 0.222222 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.208333 AS "P_1", 0.791667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.791667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.045455 AS "P_0", 0.409091 AS "P_1", 0.545455 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.334601 AS "P_0", 0.079848 AS "P_1", 0.148289 AS "P_2", 0.437262 AS "P_3", 3 AS "D", 0.437262 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.130435 AS "P_0", 0.000000 AS "P_1", 0.065217 AS "P_2", 0.804348 AS "P_3", 3 AS "D", 0.804348 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.038462 AS "P_2", 0.961538 AS "P_3", 3 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.300000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.148148 AS "P_0", 0.092593 AS "P_1", 0.055556 AS "P_2", 0.703704 AS "P_3", 3 AS "D", 0.703704 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.382775 AS "P_0", 0.076555 AS "P_1", 0.172249 AS "P_2", 0.368421 AS "P_3", 0 AS "D", 0.382775 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.081301 AS "P_0", 0.731707 AS "P_1", 0.130081 AS "P_2", 0.056911 AS "P_3", 1 AS "D", 0.731707 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.009615 AS "P_0", 0.961538 AS "P_1", 0.028846 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.111111 AS "P_0", 0.805556 AS "P_1", 0.000000 AS "P_2", 0.083333 AS "P_3", 1 AS "D", 0.805556 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.039216 AS "P_0", 0.627451 AS "P_1", 0.313726 AS "P_2", 0.019608 AS "P_3", 1 AS "D", 0.627451 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.086957 AS "P_0", 0.304348 AS "P_1", 0.565217 AS "P_2", 0.043478 AS "P_3", 2 AS "D", 0.565217 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 0.892857 AS "P_1", 0.107143 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.019608 AS "P_0", 0.921569 AS "P_1", 0.000000 AS "P_2", 0.058824 AS "P_3", 1 AS "D", 0.921569 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.333333 AS "P_0", 0.523810 AS "P_1", 0.000000 AS "P_2", 0.142857 AS "P_3", 1 AS "D", 0.523810 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.016129 AS "P_0", 0.935484 AS "P_1", 0.048387 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.935484 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.025000 AS "P_0", 0.900000 AS "P_1", 0.075000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.900000 AS "DP"
  ) AS "Values"),
"DT_Output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_2" AS t1
   LEFT OUTER JOIN
   "DT_node_data_2" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_3" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" <= -1.296188) AND (t."X_8" > -0.240268) AND (t."X_0" > 2.317109)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_1" <= -1.296188) AND (t."X_8" > -0.240268) AND (t."X_0" <= 2.317109) AND (t."X_8" <= 0.314583)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_1" > -1.296188) AND (t."X_0" <= 1.559498) AND (t."X_7" <= -0.037809) AND (t."X_8" > -0.658671) AND (t."X_0" > 0.746914) AND (t."X_1" <= -0.609890)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_1" > -1.296188) AND (t."X_0" <= 1.559498) AND (t."X_7" <= -0.037809) AND (t."X_8" > -0.658671) AND (t."X_0" > 0.746914) AND (t."X_1" > -0.609890)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_1" > -1.296188) AND (t."X_0" <= 1.559498) AND (t."X_7" > -0.037809) AND (t."X_1" <= -0.350898)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_1" > -1.296188) AND (t."X_0" <= 1.559498) AND (t."X_7" > -0.037809) AND (t."X_1" > -0.350898) AND (t."X_8" <= 0.150876) AND (t."X_0" <= -0.676782)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_1" > -1.296188) AND (t."X_0" <= 1.559498) AND (t."X_7" > -0.037809) AND (t."X_1" > -0.350898) AND (t."X_8" <= 0.150876) AND (t."X_0" > -0.676782)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_1" > -1.296188) AND (t."X_0" <= 1.559498) AND (t."X_7" <= -0.037809) AND (t."X_8" <= -0.658671) AND (t."X_8" <= -1.711017) AND (t."X_0" <= -0.072049)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_1" > -1.296188) AND (t."X_0" <= 1.559498) AND (t."X_7" <= -0.037809) AND (t."X_8" <= -0.658671) AND (t."X_8" <= -1.711017) AND (t."X_0" > -0.072049)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_1" > -1.296188) AND (t."X_0" <= 1.559498) AND (t."X_7" <= -0.037809) AND (t."X_8" <= -0.658671) AND (t."X_8" > -1.711017) AND (t."X_9" <= -0.522829)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_1" > -1.296188) AND (t."X_0" <= 1.559498) AND (t."X_7" <= -0.037809) AND (t."X_8" <= -0.658671) AND (t."X_8" > -1.711017) AND (t."X_9" > -0.522829)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_1" <= -1.296188) AND (t."X_8" <= -0.240268) AND (t."X_7" <= -2.067699)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_1" <= -1.296188) AND (t."X_8" <= -0.240268) AND (t."X_7" > -2.067699) AND (t."X_0" > 2.177354)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_1" <= -1.296188) AND (t."X_8" <= -0.240268) AND (t."X_7" > -2.067699) AND (t."X_0" <= 2.177354) AND (t."X_9" > 0.324760)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_1" <= -1.296188) AND (t."X_8" <= -0.240268) AND (t."X_7" > -2.067699) AND (t."X_0" <= 2.177354) AND (t."X_9" <= 0.324760) AND (t."X_1" <= -1.721438)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_1" <= -1.296188) AND (t."X_8" <= -0.240268) AND (t."X_7" > -2.067699) AND (t."X_0" <= 2.177354) AND (t."X_9" <= 0.324760) AND (t."X_1" > -1.721438)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_1" > -1.296188) AND (t."X_0" > 1.559498) AND (t."X_0" <= 1.880153)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_1" > -1.296188) AND (t."X_0" <= 1.559498) AND (t."X_7" > -0.037809) AND (t."X_1" > -0.350898) AND (t."X_8" > 0.150876) AND (t."X_7" <= 1.125770)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_1" > -1.296188) AND (t."X_0" <= 1.559498) AND (t."X_7" > -0.037809) AND (t."X_1" > -0.350898) AND (t."X_8" > 0.150876) AND (t."X_7" > 1.125770)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_1" > -1.296188) AND (t."X_0" <= 1.559498) AND (t."X_7" <= -0.037809) AND (t."X_8" > -0.658671) AND (t."X_0" <= 0.746914) AND (t."X_7" <= -0.856678)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_1" > -1.296188) AND (t."X_0" <= 1.559498) AND (t."X_7" <= -0.037809) AND (t."X_8" > -0.658671) AND (t."X_0" <= 0.746914) AND (t."X_7" > -0.856678)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_1" > -1.296188) AND (t."X_0" > 1.559498) AND (t."X_0" > 1.880153) AND (t."X_9" <= 0.145462)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_1" > -1.296188) AND (t."X_0" > 1.559498) AND (t."X_0" > 1.880153) AND (t."X_9" > 0.145462)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_1" <= -1.296188) AND (t."X_8" > -0.240268) AND (t."X_0" <= 2.317109) AND (t."X_8" > 0.314583) AND (t."X_1" <= -1.598262)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_1" <= -1.296188) AND (t."X_8" > -0.240268) AND (t."X_0" <= 2.317109) AND (t."X_8" > 0.314583) AND (t."X_1" > -1.598262)) THEN 48 ELSE NULL END AS "Leaf_48"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.222656 AS "P_0", 0.256836 AS "P_1", 0.255859 AS "P_2", 0.264648 AS "P_3", 3 AS "D", 0.264648 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.359375 AS "P_0", 0.036458 AS "P_1", 0.203125 AS "P_2", 0.401042 AS "P_3", 3 AS "D", 0.401042 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.191106 AS "P_0", 0.307692 AS "P_1", 0.268029 AS "P_2", 0.233173 AS "P_3", 1 AS "D", 0.307692 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.146789 AS "P_0", 0.000000 AS "P_1", 0.211009 AS "P_2", 0.642202 AS "P_3", 3 AS "D", 0.642202 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.638554 AS "P_0", 0.084337 AS "P_1", 0.192771 AS "P_2", 0.084337 AS "P_3", 0 AS "D", 0.638554 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.854839 AS "P_0", 0.016129 AS "P_1", 0.016129 AS "P_2", 0.112903 AS "P_3", 0 AS "D", 0.854839 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.285714 AS "P_1", 0.714286 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.650000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.350000 AS "P_3", 0 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.952381 AS "P_0", 0.023810 AS "P_1", 0.023810 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.203632 AS "P_0", 0.263294 AS "P_1", 0.284047 AS "P_2", 0.249027 AS "P_3", 2 AS "D", 0.284047 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.032787 AS "P_0", 0.868852 AS "P_1", 0.065574 AS "P_2", 0.032787 AS "P_3", 1 AS "D", 0.868852 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.299569 AS "P_0", 0.086207 AS "P_1", 0.260776 AS "P_2", 0.353448 AS "P_3", 3 AS "D", 0.353448 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.058632 AS "P_0", 0.530945 AS "P_1", 0.319218 AS "P_2", 0.091205 AS "P_3", 1 AS "D", 0.530945 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.383117 AS "P_0", 0.012987 AS "P_1", 0.474026 AS "P_2", 0.129870 AS "P_3", 2 AS "D", 0.474026 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.258065 AS "P_0", 0.122581 AS "P_1", 0.154839 AS "P_2", 0.464516 AS "P_3", 3 AS "D", 0.464516 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.230159 AS "P_0", 0.134921 AS "P_1", 0.087302 AS "P_2", 0.547619 AS "P_3", 3 AS "D", 0.547619 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.379310 AS "P_0", 0.068966 AS "P_1", 0.448276 AS "P_2", 0.103448 AS "P_3", 2 AS "D", 0.448276 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.645161 AS "P_0", 0.096774 AS "P_1", 0.225806 AS "P_2", 0.032258 AS "P_3", 0 AS "D", 0.645161 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.074074 AS "P_0", 0.037037 AS "P_1", 0.703704 AS "P_2", 0.185185 AS "P_3", 2 AS "D", 0.703704 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.280000 AS "P_0", 0.160000 AS "P_1", 0.080000 AS "P_2", 0.480000 AS "P_3", 3 AS "D", 0.480000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.039007 AS "P_0", 0.563830 AS "P_1", 0.340426 AS "P_2", 0.056738 AS "P_3", 1 AS "D", 0.563830 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.050000 AS "P_0", 0.191667 AS "P_1", 0.725000 AS "P_2", 0.033333 AS "P_3", 2 AS "D", 0.725000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.030864 AS "P_0", 0.839506 AS "P_1", 0.055556 AS "P_2", 0.074074 AS "P_3", 1 AS "D", 0.839506 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.021277 AS "P_0", 0.138298 AS "P_1", 0.808511 AS "P_2", 0.031915 AS "P_3", 2 AS "D", 0.808511 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.153846 AS "P_0", 0.384615 AS "P_1", 0.423077 AS "P_2", 0.038462 AS "P_3", 2 AS "D", 0.423077 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.550725 AS "P_0", 0.000000 AS "P_1", 0.405797 AS "P_2", 0.043478 AS "P_3", 0 AS "D", 0.550725 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.247059 AS "P_0", 0.023529 AS "P_1", 0.529412 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.775510 AS "P_0", 0.000000 AS "P_1", 0.204082 AS "P_2", 0.020408 AS "P_3", 0 AS "D", 0.775510 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.900000 AS "P_2", 0.100000 AS "P_3", 2 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.043478 AS "P_0", 0.000000 AS "P_1", 0.739130 AS "P_2", 0.217391 AS "P_3", 2 AS "D", 0.739130 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.322581 AS "P_0", 0.032258 AS "P_1", 0.451613 AS "P_2", 0.193548 AS "P_3", 2 AS "D", 0.451613 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.086957 AS "P_2", 0.913043 AS "P_3", 3 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.186047 AS "P_0", 0.000000 AS "P_1", 0.244186 AS "P_2", 0.569767 AS "P_3", 3 AS "D", 0.569767 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.174603 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.682540 AS "P_3", 3 AS "D", 0.682540 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.217391 AS "P_0", 0.000000 AS "P_1", 0.521739 AS "P_2", 0.260870 AS "P_3", 2 AS "D", 0.521739 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.268293 AS "P_0", 0.000000 AS "P_1", 0.097561 AS "P_2", 0.634146 AS "P_3", 3 AS "D", 0.634146 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.227273 AS "P_2", 0.772727 AS "P_3", 3 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.047619 AS "P_2", 0.952381 AS "P_3", 3 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.550000 AS "P_0", 0.000000 AS "P_1", 0.150000 AS "P_2", 0.300000 AS "P_3", 0 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.714286 AS "P_1", 0.190476 AS "P_2", 0.095238 AS "P_3", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.063291 AS "P_0", 0.746835 AS "P_1", 0.037975 AS "P_2", 0.151899 AS "P_3", 1 AS "D", 0.746835 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.927711 AS "P_1", 0.072289 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.927711 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.200000 AS "P_0", 0.103030 AS "P_1", 0.078788 AS "P_2", 0.618182 AS "P_3", 3 AS "D", 0.618182 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.287356 AS "P_0", 0.195402 AS "P_1", 0.103448 AS "P_2", 0.413793 AS "P_3", 3 AS "D", 0.413793 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.900000 AS "P_0", 0.050000 AS "P_1", 0.050000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.900000 AS "DP"
  ) AS "Values"),
"DT_Output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_3" AS t1
   LEFT OUTER JOIN
   "DT_node_data_3" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_4" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= -3.802149) AND (t."X_8" <= 2.367831)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_6" <= -3.802149) AND (t."X_8" > 2.367831)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" <= 1.059374) AND (t."X_7" <= 0.366179) AND (t."X_8" <= -0.356603) AND (t."X_7" <= -2.081715) AND (t."X_8" <= -1.426634)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" <= 1.059374) AND (t."X_7" <= 0.366179) AND (t."X_8" <= -0.356603) AND (t."X_7" <= -2.081715) AND (t."X_8" > -1.426634)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" <= 1.059374) AND (t."X_7" <= 0.366179) AND (t."X_8" <= -0.356603) AND (t."X_7" > -2.081715) AND (t."X_6" <= 0.066404)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" <= 1.059374) AND (t."X_7" <= 0.366179) AND (t."X_8" <= -0.356603) AND (t."X_7" > -2.081715) AND (t."X_6" > 0.066404)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" <= 1.059374) AND (t."X_7" > 0.366179) AND (t."X_6" <= -2.370468)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" <= 1.059374) AND (t."X_7" > 0.366179) AND (t."X_6" > -2.370468) AND (t."X_8" <= -0.489852)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" > 1.059374) AND (t."X_6" <= 1.315874) AND (t."X_8" <= -0.933839)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" > 1.059374) AND (t."X_6" <= 1.315874) AND (t."X_8" > -0.933839)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" > 1.059374) AND (t."X_6" > 1.315874) AND (t."X_2" <= -0.949108)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" > 1.059374) AND (t."X_6" > 1.315874) AND (t."X_2" > -0.949108) AND (t."X_7" <= 0.644198) AND (t."X_5" <= -0.319980)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" > 1.059374) AND (t."X_6" > 1.315874) AND (t."X_2" > -0.949108) AND (t."X_7" <= 0.644198) AND (t."X_5" > -0.319980)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" > 1.059374) AND (t."X_6" > 1.315874) AND (t."X_2" > -0.949108) AND (t."X_7" > 0.644198) AND (t."X_7" <= 2.364547)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" > 1.059374) AND (t."X_6" > 1.315874) AND (t."X_2" > -0.949108) AND (t."X_7" > 0.644198) AND (t."X_7" > 2.364547)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" <= 1.059374) AND (t."X_7" <= 0.366179) AND (t."X_8" > -0.356603) AND (t."X_6" > -0.884934) AND (t."X_8" <= 0.417923)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" <= 1.059374) AND (t."X_7" <= 0.366179) AND (t."X_8" > -0.356603) AND (t."X_6" > -0.884934) AND (t."X_8" > 0.417923)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" <= 1.059374) AND (t."X_7" <= 0.366179) AND (t."X_8" > -0.356603) AND (t."X_6" <= -0.884934) AND (t."X_6" <= -2.133254)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" <= 1.059374) AND (t."X_7" <= 0.366179) AND (t."X_8" > -0.356603) AND (t."X_6" <= -0.884934) AND (t."X_6" > -2.133254)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" <= 1.059374) AND (t."X_7" > 0.366179) AND (t."X_6" > -2.370468) AND (t."X_8" > -0.489852) AND (t."X_5" <= 0.554319)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_6" > -3.802149) AND (t."X_6" <= 1.059374) AND (t."X_7" > 0.366179) AND (t."X_6" > -2.370468) AND (t."X_8" > -0.489852) AND (t."X_5" > 0.554319)) THEN 40 ELSE NULL END AS "Leaf_40"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250977 AS "P_0", 0.235352 AS "P_1", 0.266602 AS "P_2", 0.247070 AS "P_3", 2 AS "D", 0.266602 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.126984 AS "P_0", 0.063492 AS "P_1", 0.000000 AS "P_2", 0.809524 AS "P_3", 3 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.259105 AS "P_0", 0.246618 AS "P_1", 0.284079 AS "P_2", 0.210198 AS "P_3", 2 AS "D", 0.284079 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.235294 AS "P_0", 0.117647 AS "P_1", 0.000000 AS "P_2", 0.647059 AS "P_3", 3 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.267663 AS "P_0", 0.298913 AS "P_1", 0.237772 AS "P_2", 0.195652 AS "P_3", 1 AS "D", 0.298913 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.231111 AS "P_0", 0.075556 AS "P_1", 0.435556 AS "P_2", 0.257778 AS "P_3", 2 AS "D", 0.435556 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.335196 AS "P_0", 0.124767 AS "P_1", 0.283054 AS "P_2", 0.256983 AS "P_3", 0 AS "D", 0.335196 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.085427 AS "P_0", 0.768844 AS "P_1", 0.115578 AS "P_2", 0.030151 AS "P_3", 1 AS "D", 0.768844 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.222222 AS "P_0", 0.009662 AS "P_1", 0.497585 AS "P_2", 0.270531 AS "P_3", 2 AS "D", 0.497585 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.406061 AS "P_0", 0.196970 AS "P_1", 0.148485 AS "P_2", 0.248485 AS "P_3", 0 AS "D", 0.406061 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.170213 AS "P_0", 0.000000 AS "P_1", 0.276596 AS "P_2", 0.553191 AS "P_3", 3 AS "D", 0.553191 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.237500 AS "P_0", 0.012500 AS "P_1", 0.562500 AS "P_2", 0.187500 AS "P_3", 2 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.363636 AS "P_0", 0.000000 AS "P_1", 0.363636 AS "P_2", 0.272727 AS "P_3", 0 AS "D", 0.363636 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.198113 AS "P_0", 0.018868 AS "P_1", 0.679245 AS "P_2", 0.103774 AS "P_3", 2 AS "D", 0.679245 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.314815 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.351852 AS "P_3", 3 AS "D", 0.351852 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.400000 AS "P_0", 0.450000 AS "P_1", 0.000000 AS "P_2", 0.150000 AS "P_3", 1 AS "D", 0.450000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.050279 AS "P_0", 0.804469 AS "P_1", 0.128492 AS "P_2", 0.016760 AS "P_3", 1 AS "D", 0.804469 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.272727 AS "P_0", 0.090909 AS "P_1", 0.636364 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.019108 AS "P_0", 0.904459 AS "P_1", 0.057325 AS "P_2", 0.019108 AS "P_3", 1 AS "D", 0.904459 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.136364 AS "P_0", 0.204545 AS "P_1", 0.613636 AS "P_2", 0.045455 AS "P_3", 2 AS "D", 0.613636 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.254144 AS "P_0", 0.044199 AS "P_1", 0.392265 AS "P_2", 0.309392 AS "P_3", 2 AS "D", 0.392265 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.916667 AS "P_2", 0.083333 AS "P_3", 2 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.300000 AS "P_0", 0.450000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.450000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.147059 AS "P_0", 0.029412 AS "P_1", 0.647059 AS "P_2", 0.176471 AS "P_3", 2 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.278912 AS "P_0", 0.047619 AS "P_1", 0.333333 AS "P_2", 0.340136 AS "P_3", 3 AS "D", 0.340136 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.415730 AS "P_0", 0.000000 AS "P_1", 0.089888 AS "P_2", 0.494382 AS "P_3", 3 AS "D", 0.494382 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.068966 AS "P_0", 0.120690 AS "P_1", 0.706897 AS "P_2", 0.103448 AS "P_3", 2 AS "D", 0.706897 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.571429 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.285714 AS "P_3", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.314815 AS "P_0", 0.000000 AS "P_1", 0.055556 AS "P_2", 0.629630 AS "P_3", 3 AS "D", 0.629630 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.026316 AS "P_0", 0.052632 AS "P_1", 0.763158 AS "P_2", 0.157895 AS "P_3", 2 AS "D", 0.763158 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.150000 AS "P_0", 0.250000 AS "P_1", 0.600000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.330435 AS "P_0", 0.217391 AS "P_1", 0.178261 AS "P_2", 0.273913 AS "P_3", 0 AS "D", 0.330435 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.580000 AS "P_0", 0.150000 AS "P_1", 0.080000 AS "P_2", 0.190000 AS "P_3", 0 AS "D", 0.580000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.340426 AS "P_0", 0.127660 AS "P_1", 0.127660 AS "P_2", 0.404255 AS "P_3", 3 AS "D", 0.404255 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.792453 AS "P_0", 0.169811 AS "P_1", 0.037736 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.792453 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.373016 AS "P_0", 0.190476 AS "P_1", 0.253968 AS "P_2", 0.182540 AS "P_3", 0 AS "D", 0.373016 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.278846 AS "P_0", 0.250000 AS "P_1", 0.086538 AS "P_2", 0.384615 AS "P_3", 3 AS "D", 0.384615 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.951219 AS "P_1", 0.040650 AS "P_2", 0.008130 AS "P_3", 1 AS "D", 0.951219 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.088235 AS "P_0", 0.735294 AS "P_1", 0.117647 AS "P_2", 0.058824 AS "P_3", 1 AS "D", 0.735294 AS "DP"
  ) AS "Values"),
"DT_Output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 ),
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1", scu."P_2" AS "P_2", scu."P_3" AS "P_3"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_4" AS t
  ) AS scu
),
"avg_proba_cte" AS
( SELECT
   t."index" AS "index",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   AVG(t."P_0") AS "Proba_0",
   CAST(NULL AS FLOAT) AS "Score_0",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   AVG(t."P_1") AS "Proba_1",
   CAST(NULL AS FLOAT) AS "Score_1",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   AVG(t."P_2") AS "Proba_2",
   CAST(NULL AS FLOAT) AS "Score_2",
   CAST(NULL AS FLOAT) AS "LogProba_3",
   AVG(t."P_3") AS "Proba_3",
   CAST(NULL AS FLOAT) AS "Score_3"
FROM "union_of_trees" AS t
GROUP BY t."index"
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    MAX( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Max_Score"
  FROM
     "avg_proba_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
    t."Max_Proba" AS "Max_Proba",
    t."Max_Score" AS "Max_Score"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
( SELECT t."index" as "index",
     t."Proba_0" AS "Proba_0",
     t."Score_0" AS "Score_0",
     t."Proba_1" AS "Proba_1",
     t."Score_1" AS "Score_1",
     t."Proba_2" AS "Proba_2",
     t."Score_2" AS "Score_2",
     t."Proba_3" AS "Proba_3",
     t."Score_3" AS "Score_3",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3" ) AS argmax_class_idx
   FROM
     "arg_max_cte_with_max_proba_idx" AS t
)
SELECT arg_max_cte."index" AS "index",
  arg_max_cte."Score_0" AS "Score_0",
  arg_max_cte."Proba_0" AS "Proba_0",
  CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN LN( arg_max_cte."Proba_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
  arg_max_cte."Score_1" AS "Score_1",
  arg_max_cte."Proba_1" AS "Proba_1",
  CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN LN( arg_max_cte."Proba_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
  arg_max_cte."Score_2" AS "Score_2",
  arg_max_cte."Proba_2" AS "Proba_2",
  CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN LN( arg_max_cte."Proba_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
  arg_max_cte."Score_3" AS "Score_3",
  arg_max_cte."Proba_3" AS "Proba_3",
  CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN LN( arg_max_cte."Proba_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte