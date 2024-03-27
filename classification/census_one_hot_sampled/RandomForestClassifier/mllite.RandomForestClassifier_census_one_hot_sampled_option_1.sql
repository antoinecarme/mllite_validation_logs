WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" > 2.500000) AND (t."X_11" > 0.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" > 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" <= 1.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" > 2.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 1.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_27" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_27" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_11" <= 0.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_27" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_11" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_11" > 0.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_27" <= 0.500000) AND (t."X_45" <= 1.500000) AND (t."X_12" <= 0.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_27" <= 0.500000) AND (t."X_45" <= 1.500000) AND (t."X_12" > 0.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_45" <= 1.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_45" > 1.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" <= 0.500000) AND (t."X_45" <= 1.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_0" <= 0.500000) AND (t."X_45" > 1.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_34" > 0.500000) AND (t."X_45" <= 0.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_34" > 0.500000) AND (t."X_45" > 0.500000)) THEN 28 ELSE NULL END AS Leaf_28
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.762326 AS "P_0", 0.237674 AS "P_1", 0 AS "D", 0.762326 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.720628 AS "P_0", 0.279372 AS "P_1", 0 AS "D", 0.720628 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.989440 AS "P_0", 0.010560 AS "P_1", 0 AS "D", 0.989440 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.765597 AS "P_0", 0.234403 AS "P_1", 0 AS "D", 0.765597 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.572143 AS "P_0", 0.427857 AS "P_1", 0 AS "D", 0.572143 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.622063 AS "P_0", 0.377937 AS "P_1", 0 AS "D", 0.622063 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.350000 AS "P_0", 0.650000 AS "P_1", 1 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.760870 AS "P_0", 0.239130 AS "P_1", 0 AS "D", 0.760870 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.554033 AS "P_0", 0.445967 AS "P_1", 0 AS "D", 0.554033 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.873306 AS "P_0", 0.126694 AS "P_1", 0 AS "D", 0.873306 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.701571 AS "P_0", 0.298429 AS "P_1", 0 AS "D", 0.701571 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.680494 AS "P_0", 0.319506 AS "P_1", 0 AS "D", 0.680494 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.921659 AS "P_0", 0.078341 AS "P_1", 0 AS "D", 0.921659 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.850325 AS "P_0", 0.149675 AS "P_1", 0 AS "D", 0.850325 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.637119 AS "P_0", 0.362881 AS "P_1", 0 AS "D", 0.637119 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.680433 AS "P_0", 0.319567 AS "P_1", 0 AS "D", 0.680433 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.442073 AS "P_0", 0.557927 AS "P_1", 1 AS "D", 0.557927 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.902539 AS "P_0", 0.097461 AS "P_1", 0 AS "D", 0.902539 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.733333 AS "P_0", 0.266667 AS "P_1", 0 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.975669 AS "P_0", 0.024331 AS "P_1", 0 AS "D", 0.975669 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.865432 AS "P_0", 0.134568 AS "P_1", 0 AS "D", 0.865432 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.829653 AS "P_0", 0.170347 AS "P_1", 0 AS "D", 0.829653 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.895833 AS "P_0", 0.104167 AS "P_1", 0 AS "D", 0.895833 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.894737 AS "P_0", 0.105263 AS "P_1", 0 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.859675 AS "P_0", 0.140325 AS "P_1", 0 AS "D", 0.859675 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.963636 AS "P_0", 0.036364 AS "P_1", 0 AS "D", 0.963636 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.983740 AS "P_0", 0.016260 AS "P_1", 0 AS "D", 0.983740 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.986790 AS "P_0", 0.013210 AS "P_1", 0 AS "D", 0.986790 AS "DP"
  ) AS "Values"),
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_26" > 0.500000) AND (t."X_14" > 0.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_26" > 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_0" <= 1.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_26" > 0.500000) AND (t."X_14" <= 0.500000) AND (t."X_0" > 1.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_47" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_11" > 0.500000) AND (t."X_2" <= 0.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_11" > 0.500000) AND (t."X_2" > 0.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_27" <= 0.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_27" > 0.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_41" > 0.500000) AND (t."X_0" > 0.500000) AND (t."X_12" <= 0.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_41" > 0.500000) AND (t."X_0" > 0.500000) AND (t."X_12" > 0.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_41" <= 0.500000) AND (t."X_12" <= 0.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_41" <= 0.500000) AND (t."X_12" > 0.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_41" <= 0.500000) AND (t."X_12" <= 0.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_41" <= 0.500000) AND (t."X_12" > 0.500000)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_41" > 0.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" <= 0.500000)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_26" <= 0.500000) AND (t."X_47" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_41" > 0.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" > 0.500000)) THEN 30 ELSE NULL END AS Leaf_30
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.758722 AS "P_0", 0.241278 AS "P_1", 0 AS "D", 0.758722 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.793258 AS "P_0", 0.206742 AS "P_1", 0 AS "D", 0.793258 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.517647 AS "P_0", 0.482353 AS "P_1", 0 AS "D", 0.517647 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.490354 AS "P_0", 0.509646 AS "P_1", 1 AS "D", 0.509646 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.729282 AS "P_0", 0.270718 AS "P_1", 0 AS "D", 0.729282 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.392290 AS "P_0", 0.607710 AS "P_1", 1 AS "D", 0.607710 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.789151 AS "P_0", 0.210849 AS "P_1", 0 AS "D", 0.789151 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.967480 AS "P_0", 0.032520 AS "P_1", 0 AS "D", 0.967480 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.898668 AS "P_0", 0.101332 AS "P_1", 0 AS "D", 0.898668 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.690146 AS "P_0", 0.309854 AS "P_1", 0 AS "D", 0.690146 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.727969 AS "P_0", 0.272031 AS "P_1", 0 AS "D", 0.727969 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.462916 AS "P_0", 0.537084 AS "P_1", 1 AS "D", 0.537084 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.552147 AS "P_0", 0.447853 AS "P_1", 0 AS "D", 0.552147 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.399123 AS "P_0", 0.600877 AS "P_1", 1 AS "D", 0.600877 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.854545 AS "P_0", 0.145455 AS "P_1", 0 AS "D", 0.854545 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.707281 AS "P_0", 0.292719 AS "P_1", 0 AS "D", 0.707281 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.686721 AS "P_0", 0.313279 AS "P_1", 0 AS "D", 0.686721 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.925287 AS "P_0", 0.074713 AS "P_1", 0 AS "D", 0.925287 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.931330 AS "P_0", 0.068670 AS "P_1", 0 AS "D", 0.931330 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.891099 AS "P_0", 0.108901 AS "P_1", 0 AS "D", 0.891099 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.980328 AS "P_0", 0.019672 AS "P_1", 0 AS "D", 0.980328 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.816606 AS "P_0", 0.183394 AS "P_1", 0 AS "D", 0.816606 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.783448 AS "P_0", 0.216552 AS "P_1", 0 AS "D", 0.783448 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.881402 AS "P_0", 0.118598 AS "P_1", 0 AS "D", 0.881402 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.979592 AS "P_0", 0.020408 AS "P_1", 0 AS "D", 0.979592 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.842365 AS "P_0", 0.157635 AS "P_1", 0 AS "D", 0.842365 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.874016 AS "P_0", 0.125984 AS "P_1", 0 AS "D", 0.874016 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.979560 AS "P_0", 0.020440 AS "P_1", 0 AS "D", 0.979560 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.982079 AS "P_0", 0.017921 AS "P_1", 0 AS "D", 0.982079 AS "DP"
  ) AS "Values"),
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" <= 1.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_11" > 0.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_41" <= 0.500000)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_43" <= 1.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_41" > 0.500000) AND (t."X_43" > 1.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_28" > 0.500000) AND (t."X_11" <= 0.500000)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_28" > 0.500000) AND (t."X_11" > 0.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_52" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_28" <= 0.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_20" <= 0.500000) AND (t."X_28" > 0.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_20" > 0.500000) AND (t."X_11" > 0.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_20" > 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_12" > 0.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_20" > 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_34" <= 0.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_20" > 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_34" > 0.500000)) THEN 26 ELSE NULL END AS Leaf_26
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.758067 AS "P_0", 0.241933 AS "P_1", 0 AS "D", 0.758067 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.941395 AS "P_0", 0.058605 AS "P_1", 0 AS "D", 0.941395 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.552778 AS "P_0", 0.447222 AS "P_1", 0 AS "D", 0.552778 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.595501 AS "P_0", 0.404499 AS "P_1", 0 AS "D", 0.595501 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.312644 AS "P_0", 0.687356 AS "P_1", 1 AS "D", 0.687356 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.731343 AS "P_0", 0.268657 AS "P_1", 0 AS "D", 0.731343 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.536885 AS "P_0", 0.463115 AS "P_1", 0 AS "D", 0.536885 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.583799 AS "P_0", 0.416201 AS "P_1", 0 AS "D", 0.583799 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.293478 AS "P_0", 0.706522 AS "P_1", 1 AS "D", 0.706522 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.685039 AS "P_0", 0.314961 AS "P_1", 0 AS "D", 0.685039 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.573946 AS "P_0", 0.426054 AS "P_1", 0 AS "D", 0.573946 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.624465 AS "P_0", 0.375535 AS "P_1", 0 AS "D", 0.624465 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.139706 AS "P_0", 0.860294 AS "P_1", 1 AS "D", 0.860294 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.329825 AS "P_0", 0.670175 AS "P_1", 1 AS "D", 0.670175 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.280000 AS "P_0", 0.720000 AS "P_1", 1 AS "D", 0.720000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.942681 AS "P_0", 0.057319 AS "P_1", 0 AS "D", 0.942681 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.912409 AS "P_0", 0.087591 AS "P_1", 0 AS "D", 0.912409 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.929461 AS "P_0", 0.070539 AS "P_1", 0 AS "D", 0.929461 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.951142 AS "P_0", 0.048858 AS "P_1", 0 AS "D", 0.951142 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.940410 AS "P_0", 0.059590 AS "P_1", 0 AS "D", 0.940410 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.839695 AS "P_0", 0.160305 AS "P_1", 0 AS "D", 0.839695 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.963545 AS "P_0", 0.036455 AS "P_1", 0 AS "D", 0.963545 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.883562 AS "P_0", 0.116438 AS "P_1", 0 AS "D", 0.883562 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.947826 AS "P_0", 0.052174 AS "P_1", 0 AS "D", 0.947826 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.992806 AS "P_0", 0.007194 AS "P_1", 0 AS "D", 0.992806 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.909734 AS "P_0", 0.090265 AS "P_1", 0 AS "D", 0.909734 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.993617 AS "P_0", 0.006383 AS "P_1", 0 AS "D", 0.993617 AS "DP"
  ) AS "Values"),
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_16" > 12.500000) AND (t."X_17" > 0.500000)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_16" > 12.500000) AND (t."X_17" <= 0.500000) AND (t."X_0" <= 1.500000)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_16" > 12.500000) AND (t."X_17" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 3.500000)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_16" > 12.500000) AND (t."X_17" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 3.500000)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 8.500000) AND (t."X_17" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_26" > 0.500000)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 8.500000) AND (t."X_17" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_25" <= 0.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 8.500000) AND (t."X_17" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_26" <= 0.500000) AND (t."X_25" > 0.500000)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" <= 8.500000) AND (t."X_0" > 1.500000) AND (t."X_8" <= 206281.500000)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" <= 8.500000) AND (t."X_0" > 1.500000) AND (t."X_8" > 206281.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 8.500000) AND (t."X_17" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_25" > 0.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 8.500000) AND (t."X_17" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_25" <= 0.500000) AND (t."X_27" <= 0.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 8.500000) AND (t."X_17" <= 0.500000) AND (t."X_0" <= 1.500000) AND (t."X_25" <= 0.500000) AND (t."X_27" > 0.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 8.500000) AND (t."X_17" > 0.500000) AND (t."X_8" <= 107286.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 8.500000) AND (t."X_17" > 0.500000) AND (t."X_8" > 107286.500000) AND (t."X_0" > 2.500000)) THEN 30 ELSE NULL END AS Leaf_30,
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" <= 8.500000) AND (t."X_0" <= 1.500000) AND (t."X_8" <= 149106.000000)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" <= 8.500000) AND (t."X_0" <= 1.500000) AND (t."X_8" > 149106.000000)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 8.500000) AND (t."X_17" > 0.500000) AND (t."X_8" > 107286.500000) AND (t."X_0" <= 2.500000) AND (t."X_0" <= 1.500000)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 8.500000) AND (t."X_17" > 0.500000) AND (t."X_8" > 107286.500000) AND (t."X_0" <= 2.500000) AND (t."X_0" > 1.500000)) THEN 34 ELSE NULL END AS Leaf_34
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.750696 AS "P_0", 0.249304 AS "P_1", 0 AS "D", 0.750696 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.829778 AS "P_0", 0.170222 AS "P_1", 0 AS "D", 0.829778 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.510258 AS "P_0", 0.489742 AS "P_1", 0 AS "D", 0.510258 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.482887 AS "P_0", 0.517113 AS "P_1", 1 AS "D", 0.517113 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.730539 AS "P_0", 0.269461 AS "P_1", 0 AS "D", 0.730539 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.688109 AS "P_0", 0.311891 AS "P_1", 0 AS "D", 0.688109 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.356197 AS "P_0", 0.643803 AS "P_1", 1 AS "D", 0.643803 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.327327 AS "P_0", 0.672673 AS "P_1", 1 AS "D", 0.672673 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.472727 AS "P_0", 0.527273 AS "P_1", 1 AS "D", 0.527273 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.945876 AS "P_0", 0.054124 AS "P_1", 0 AS "D", 0.945876 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.806181 AS "P_0", 0.193819 AS "P_1", 0 AS "D", 0.806181 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.781451 AS "P_0", 0.218549 AS "P_1", 0 AS "D", 0.781451 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.952813 AS "P_0", 0.047187 AS "P_1", 0 AS "D", 0.952813 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.899757 AS "P_0", 0.100243 AS "P_1", 0 AS "D", 0.899757 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.661320 AS "P_0", 0.338680 AS "P_1", 0 AS "D", 0.661320 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.690647 AS "P_0", 0.309353 AS "P_1", 0 AS "D", 0.690647 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.484848 AS "P_0", 0.515152 AS "P_1", 1 AS "D", 0.515152 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.718438 AS "P_0", 0.281562 AS "P_1", 0 AS "D", 0.718438 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.584775 AS "P_0", 0.415225 AS "P_1", 0 AS "D", 0.584775 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.984456 AS "P_0", 0.015544 AS "P_1", 0 AS "D", 0.984456 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.907692 AS "P_0", 0.092308 AS "P_1", 0 AS "D", 0.907692 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.870079 AS "P_0", 0.129921 AS "P_1", 0 AS "D", 0.870079 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.977941 AS "P_0", 0.022059 AS "P_1", 0 AS "D", 0.977941 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.913167 AS "P_0", 0.086833 AS "P_1", 0 AS "D", 0.913167 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.821577 AS "P_0", 0.178423 AS "P_1", 0 AS "D", 0.821577 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.900908 AS "P_0", 0.099092 AS "P_1", 0 AS "D", 0.900908 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.989691 AS "P_0", 0.010309 AS "P_1", 0 AS "D", 0.989691 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.938679 AS "P_0", 0.061321 AS "P_1", 0 AS "D", 0.938679 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.955882 AS "P_0", 0.044118 AS "P_1", 0 AS "D", 0.955882 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.907895 AS "P_0", 0.092105 AS "P_1", 0 AS "D", 0.907895 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.975309 AS "P_0", 0.024691 AS "P_1", 0 AS "D", 0.975309 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.967742 AS "P_0", 0.032258 AS "P_1", 0 AS "D", 0.967742 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.945946 AS "P_0", 0.054054 AS "P_1", 0 AS "D", 0.945946 AS "DP"
  ) AS "Values"),
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
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
    COALESCE( t1."Leaf_6", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_32" <= 0.500000) AND (t."X_36" > 0.500000)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_32" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" <= 0.500000)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_32" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_34" > 0.500000)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_45" > 2.500000) AND (t."X_15" > 0.500000)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_45" > 2.500000) AND (t."X_15" <= 0.500000) AND (t."X_0" <= 1.500000)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_45" > 2.500000) AND (t."X_15" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 0.500000)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_32" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_50" <= 0.500000) AND (t."X_52" <= 0.500000)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_32" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_50" <= 0.500000) AND (t."X_52" > 0.500000)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_32" > 0.500000) AND (t."X_45" > 1.500000)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_32" > 0.500000) AND (t."X_45" <= 1.500000) AND (t."X_0" <= 1.500000)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_32" > 0.500000) AND (t."X_45" <= 1.500000) AND (t."X_0" > 1.500000)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_32" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_35" > 0.500000) AND (t."X_39" <= 0.500000)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_45" <= 2.500000) AND (t."X_32" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_35" > 0.500000) AND (t."X_39" > 0.500000)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_45" > 2.500000) AND (t."X_15" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 0.500000) AND (t."X_0" <= 2.500000)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_45" > 2.500000) AND (t."X_15" <= 0.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 0.500000) AND (t."X_0" > 2.500000)) THEN 28 ELSE NULL END AS Leaf_28
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.763800 AS "P_0", 0.236200 AS "P_1", 0 AS "D", 0.763800 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.813434 AS "P_0", 0.186566 AS "P_1", 0 AS "D", 0.813434 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.565466 AS "P_0", 0.434534 AS "P_1", 0 AS "D", 0.565466 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.770144 AS "P_0", 0.229857 AS "P_1", 0 AS "D", 0.770144 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.938046 AS "P_0", 0.061954 AS "P_1", 0 AS "D", 0.938046 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.793793 AS "P_0", 0.206207 AS "P_1", 0 AS "D", 0.793793 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.479853 AS "P_0", 0.520147 AS "P_1", 1 AS "D", 0.520147 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.884409 AS "P_0", 0.115591 AS "P_1", 0 AS "D", 0.884409 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.782477 AS "P_0", 0.217523 AS "P_1", 0 AS "D", 0.782477 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.751316 AS "P_0", 0.248684 AS "P_1", 0 AS "D", 0.751316 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.625385 AS "P_0", 0.374615 AS "P_1", 0 AS "D", 0.625385 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.992908 AS "P_0", 0.007092 AS "P_1", 0 AS "D", 0.992908 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.577670 AS "P_0", 0.422330 AS "P_1", 0 AS "D", 0.577670 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.736318 AS "P_0", 0.263682 AS "P_1", 0 AS "D", 0.736318 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.476115 AS "P_0", 0.523885 AS "P_1", 1 AS "D", 0.523885 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.528517 AS "P_0", 0.471483 AS "P_1", 0 AS "D", 0.528517 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.438356 AS "P_0", 0.561644 AS "P_1", 1 AS "D", 0.561644 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.908213 AS "P_0", 0.091787 AS "P_1", 0 AS "D", 0.908213 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.854545 AS "P_0", 0.145455 AS "P_1", 0 AS "D", 0.854545 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.978261 AS "P_0", 0.021739 AS "P_1", 0 AS "D", 0.978261 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.924226 AS "P_0", 0.075774 AS "P_1", 0 AS "D", 0.924226 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.954248 AS "P_0", 0.045752 AS "P_1", 0 AS "D", 0.954248 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.927461 AS "P_0", 0.072539 AS "P_1", 0 AS "D", 0.927461 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.951613 AS "P_0", 0.048387 AS "P_1", 0 AS "D", 0.951613 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.441624 AS "P_0", 0.558376 AS "P_1", 1 AS "D", 0.558376 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.434524 AS "P_0", 0.565476 AS "P_1", 1 AS "D", 0.565476 AS "DP"
  ) AS "Values"),
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 ),
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_4" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   AVG(t."P_0") AS "Proba_0",
   CAST(NULL AS FLOAT) AS "Score_0",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   AVG(t."P_1") AS "Proba_1",
   CAST(NULL AS FLOAT) AS "Score_1"
FROM "union_of_trees" AS t
GROUP BY t."index"
