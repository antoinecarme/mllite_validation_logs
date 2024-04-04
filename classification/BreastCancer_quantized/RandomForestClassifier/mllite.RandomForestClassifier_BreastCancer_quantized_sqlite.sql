WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44", t1."Leaf_46", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_54", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_24" <= 5.000000) AND (t."X_25" <= 7.000000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_24" <= 5.000000) AND (t."X_25" > 7.000000) AND (t."X_25" <= 8.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_24" <= 5.000000) AND (t."X_25" > 7.000000) AND (t."X_25" > 8.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_23" > 6.500000) AND (t."X_24" <= 0.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_24" > 5.000000) AND (t."X_0" <= 0.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_24" > 5.000000) AND (t."X_0" > 0.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_23" > 6.500000) AND (t."X_24" > 0.500000) AND (t."X_26" > 3.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_23" > 6.500000) AND (t."X_24" > 0.500000) AND (t."X_26" <= 3.500000) AND (t."X_0" <= 7.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_23" > 6.500000) AND (t."X_24" > 0.500000) AND (t."X_26" <= 3.500000) AND (t."X_0" > 7.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_29" <= 1.500000) AND (t."X_6" <= 4.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_29" <= 1.500000) AND (t."X_6" > 4.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_23" <= 4.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_23" > 4.500000) AND (t."X_24" <= 5.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_23" > 4.500000) AND (t."X_24" > 5.500000) AND (t."X_26" <= 5.500000) AND (t."X_23" <= 5.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_23" > 4.500000) AND (t."X_24" > 5.500000) AND (t."X_26" <= 5.500000) AND (t."X_23" > 5.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_23" > 4.500000) AND (t."X_24" > 5.500000) AND (t."X_26" > 5.500000) AND (t."X_28" <= 3.000000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_23" > 4.500000) AND (t."X_24" > 5.500000) AND (t."X_26" > 5.500000) AND (t."X_28" > 3.000000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_0" > 5.500000) AND (t."X_28" <= 0.500000) AND (t."X_29" <= 3.000000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_0" > 5.500000) AND (t."X_28" <= 0.500000) AND (t."X_29" > 3.000000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_0" > 5.500000) AND (t."X_28" > 0.500000) AND (t."X_28" <= 6.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_0" > 5.500000) AND (t."X_28" > 0.500000) AND (t."X_28" > 6.500000) AND (t."X_7" <= 5.000000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_0" > 5.500000) AND (t."X_28" > 0.500000) AND (t."X_28" > 6.500000) AND (t."X_7" > 5.000000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" > 2.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" <= 2.500000) AND (t."X_25" > 3.500000) AND (t."X_6" > 2.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" <= 2.500000) AND (t."X_25" > 3.500000) AND (t."X_6" <= 2.500000) AND (t."X_0" <= 4.000000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" <= 2.500000) AND (t."X_25" > 3.500000) AND (t."X_6" <= 2.500000) AND (t."X_0" > 4.000000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" <= 2.500000) AND (t."X_25" <= 3.500000) AND (t."X_0" > 2.500000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" <= 2.500000) AND (t."X_25" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_23" <= 2.500000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" <= 2.500000) AND (t."X_25" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_23" > 2.500000) AND (t."X_1" <= 3.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" <= 2.500000) AND (t."X_25" <= 3.500000) AND (t."X_0" <= 2.500000) AND (t."X_23" > 2.500000) AND (t."X_1" > 3.500000)) THEN 58 ELSE NULL END AS "Leaf_58"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.342707 AS "P_0", 0.657293 AS "P_1", 1 AS "D", 0.657293 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.129717 AS "P_0", 0.870283 AS "P_1", 1 AS "D", 0.870283 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.965517 AS "P_0", 0.034483 AS "P_1", 0 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.044855 AS "P_0", 0.955145 AS "P_1", 1 AS "D", 0.955145 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.844444 AS "P_0", 0.155556 AS "P_1", 0 AS "D", 0.844444 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.972973 AS "P_0", 0.027027 AS "P_1", 0 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.992908 AS "P_0", 0.007092 AS "P_1", 0 AS "D", 0.992908 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.024138 AS "P_0", 0.975862 AS "P_1", 1 AS "D", 0.975862 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.112360 AS "P_0", 0.887640 AS "P_1", 1 AS "D", 0.887640 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.084337 AS "P_0", 0.915663 AS "P_1", 1 AS "D", 0.915663 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.225806 AS "P_0", 0.774194 AS "P_1", 1 AS "D", 0.774194 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.011450 AS "P_0", 0.988550 AS "P_1", 1 AS "D", 0.988550 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.080000 AS "P_0", 0.920000 AS "P_1", 1 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.028571 AS "P_0", 0.971429 AS "P_1", 1 AS "D", 0.971429 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.020202 AS "P_0", 0.979798 AS "P_1", 1 AS "D", 0.979798 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.046512 AS "P_0", 0.953488 AS "P_1", 1 AS "D", 0.953488 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_0" AS 
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
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_42", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_24" <= 5.000000) AND (t."X_28" <= 4.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_24" <= 5.000000) AND (t."X_28" > 4.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_24" > 5.000000) AND (t."X_23" > 3.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_24" > 5.000000) AND (t."X_23" <= 3.500000) AND (t."X_29" <= 8.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_24" > 5.000000) AND (t."X_23" <= 3.500000) AND (t."X_29" > 8.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_29" > 7.500000) AND (t."X_15" > 8.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_29" > 7.500000) AND (t."X_15" <= 8.500000) AND (t."X_23" > 4.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_29" > 7.500000) AND (t."X_15" <= 8.500000) AND (t."X_23" <= 4.500000) AND (t."X_0" <= 2.000000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_29" > 7.500000) AND (t."X_15" <= 8.500000) AND (t."X_23" <= 4.500000) AND (t."X_0" > 2.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_29" <= 7.500000) AND (t."X_14" > 6.500000) AND (t."X_29" <= 1.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_29" <= 7.500000) AND (t."X_14" > 6.500000) AND (t."X_29" > 1.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_29" <= 7.500000) AND (t."X_14" <= 6.500000) AND (t."X_1" > 7.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_29" <= 7.500000) AND (t."X_14" <= 6.500000) AND (t."X_1" <= 7.500000) AND (t."X_16" <= 6.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_29" <= 7.500000) AND (t."X_14" <= 6.500000) AND (t."X_1" <= 7.500000) AND (t."X_16" > 6.500000) AND (t."X_29" <= 5.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_29" <= 7.500000) AND (t."X_14" <= 6.500000) AND (t."X_1" <= 7.500000) AND (t."X_16" > 6.500000) AND (t."X_29" > 5.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_23" > 6.500000) AND (t."X_5" > 4.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_23" > 6.500000) AND (t."X_5" <= 4.500000) AND (t."X_1" > 4.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_23" > 6.500000) AND (t."X_5" <= 4.500000) AND (t."X_1" <= 4.500000) AND (t."X_29" <= 1.000000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_23" > 6.500000) AND (t."X_5" <= 4.500000) AND (t."X_1" <= 4.500000) AND (t."X_29" > 1.000000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_0" > 5.500000) AND (t."X_29" > 1.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_0" > 5.500000) AND (t."X_29" <= 1.500000) AND (t."X_16" > 4.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_0" > 5.500000) AND (t."X_29" <= 1.500000) AND (t."X_16" <= 4.500000) AND (t."X_28" <= 0.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_0" > 5.500000) AND (t."X_29" <= 1.500000) AND (t."X_16" <= 4.500000) AND (t."X_28" > 0.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" <= 6.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" > 6.500000) AND (t."X_0" <= 3.500000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" > 6.500000) AND (t."X_0" > 3.500000) AND (t."X_28" <= 4.000000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_23" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_0" <= 5.500000) AND (t."X_1" > 6.500000) AND (t."X_0" > 3.500000) AND (t."X_28" > 4.000000)) THEN 52 ELSE NULL END AS "Leaf_52"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.381371 AS "P_0", 0.618629 AS "P_1", 1 AS "D", 0.618629 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.145679 AS "P_0", 0.854321 AS "P_1", 1 AS "D", 0.854321 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.963415 AS "P_0", 0.036585 AS "P_1", 0 AS "D", 0.963415 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.065934 AS "P_0", 0.934066 AS "P_1", 1 AS "D", 0.934066 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.853659 AS "P_0", 0.146341 AS "P_1", 0 AS "D", 0.853659 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.970588 AS "P_0", 0.029412 AS "P_1", 0 AS "D", 0.970588 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.028662 AS "P_0", 0.971338 AS "P_1", 1 AS "D", 0.971338 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.176471 AS "P_0", 0.823529 AS "P_1", 1 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.562500 AS "P_0", 0.437500 AS "P_1", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.086957 AS "P_0", 0.913043 AS "P_1", 1 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.003663 AS "P_0", 0.996337 AS "P_1", 1 AS "D", 0.996337 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.195122 AS "P_0", 0.804878 AS "P_1", 1 AS "D", 0.804878 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.380952 AS "P_0", 0.619048 AS "P_1", 1 AS "D", 0.619048 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.022222 AS "P_0", 0.977778 AS "P_1", 1 AS "D", 0.977778 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_1" AS 
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_44", t1."Leaf_46", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50", t1."Leaf_52", t1."Leaf_53", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" <= 1.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" > 1.500000) AND (t."X_28" <= 3.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_19" > 0.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_19" <= 0.500000) AND (t."X_29" > 1.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_19" <= 0.500000) AND (t."X_29" <= 1.500000) AND (t."X_28" <= 2.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_19" <= 0.500000) AND (t."X_29" <= 1.500000) AND (t."X_28" > 2.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" <= 4.500000) AND (t."X_6" <= 4.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" <= 4.500000) AND (t."X_6" > 4.500000) AND (t."X_29" <= 4.000000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" <= 4.500000) AND (t."X_6" > 4.500000) AND (t."X_29" > 4.000000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" > 4.500000) AND (t."X_28" > 7.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" > 4.500000) AND (t."X_28" <= 7.500000) AND (t."X_16" <= 4.000000) AND (t."X_29" <= 5.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" > 4.500000) AND (t."X_28" <= 7.500000) AND (t."X_16" <= 4.000000) AND (t."X_29" > 5.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" > 4.500000) AND (t."X_28" <= 7.500000) AND (t."X_16" > 4.000000) AND (t."X_26" > 7.500000) AND (t."X_16" <= 7.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" > 4.500000) AND (t."X_28" <= 7.500000) AND (t."X_16" > 4.000000) AND (t."X_26" > 7.500000) AND (t."X_16" > 7.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" > 4.500000) AND (t."X_28" <= 7.500000) AND (t."X_16" > 4.000000) AND (t."X_26" <= 7.500000) AND (t."X_0" > 5.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" > 4.500000) AND (t."X_28" <= 7.500000) AND (t."X_16" > 4.000000) AND (t."X_26" <= 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" <= 5.000000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_25" > 4.500000) AND (t."X_28" <= 7.500000) AND (t."X_16" > 4.000000) AND (t."X_26" <= 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" > 5.000000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" > 1.500000) AND (t."X_28" > 3.500000) AND (t."X_19" > 7.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" > 1.500000) AND (t."X_28" > 3.500000) AND (t."X_19" <= 7.500000) AND (t."X_21" <= 4.000000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" > 1.500000) AND (t."X_28" > 3.500000) AND (t."X_19" <= 7.500000) AND (t."X_21" > 4.000000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" <= 4.500000) AND (t."X_29" > 0.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" <= 4.500000) AND (t."X_29" <= 0.500000) AND (t."X_28" > 5.000000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" <= 4.500000) AND (t."X_29" <= 0.500000) AND (t."X_28" <= 5.000000) AND (t."X_26" > 0.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" <= 4.500000) AND (t."X_29" <= 0.500000) AND (t."X_28" <= 5.000000) AND (t."X_26" <= 0.500000) AND (t."X_21" <= 2.000000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" <= 4.500000) AND (t."X_29" <= 0.500000) AND (t."X_28" <= 5.000000) AND (t."X_26" <= 0.500000) AND (t."X_21" > 2.000000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_28" > 0.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_28" <= 0.500000) AND (t."X_1" <= 3.500000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_28" <= 0.500000) AND (t."X_1" > 3.500000) AND (t."X_19" > 5.500000)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_28" <= 0.500000) AND (t."X_1" > 3.500000) AND (t."X_19" <= 5.500000) AND (t."X_29" <= 0.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_28" <= 0.500000) AND (t."X_1" > 3.500000) AND (t."X_19" <= 5.500000) AND (t."X_29" > 0.500000)) THEN 58 ELSE NULL END AS "Leaf_58"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.363796 AS "P_0", 0.636204 AS "P_1", 1 AS "D", 0.636204 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.128329 AS "P_0", 0.871671 AS "P_1", 1 AS "D", 0.871671 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.987179 AS "P_0", 0.012821 AS "P_1", 0 AS "D", 0.987179 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.051075 AS "P_0", 0.948925 AS "P_1", 1 AS "D", 0.948925 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.829268 AS "P_0", 0.170732 AS "P_1", 0 AS "D", 0.829268 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.894737 AS "P_0", 0.105263 AS "P_1", 0 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.007168 AS "P_0", 0.992832 AS "P_1", 1 AS "D", 0.992832 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.182796 AS "P_0", 0.817204 AS "P_1", 1 AS "D", 0.817204 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.038462 AS "P_0", 0.961538 AS "P_1", 1 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.365854 AS "P_0", 0.634146 AS "P_1", 1 AS "D", 0.634146 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.206897 AS "P_0", 0.793103 AS "P_1", 1 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.148148 AS "P_0", 0.851852 AS "P_1", 1 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.086957 AS "P_0", 0.913043 AS "P_1", 1 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.047619 AS "P_0", 0.952381 AS "P_1", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.060606 AS "P_0", 0.939394 AS "P_1", 1 AS "D", 0.939394 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_2" AS 
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
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_43", t1."Leaf_44", t1."Leaf_46", t1."Leaf_47", t1."Leaf_49", t1."Leaf_50", t1."Leaf_52", t1."Leaf_53", t1."Leaf_55", t1."Leaf_56", t1."Leaf_59", t1."Leaf_61", t1."Leaf_62", t1."Leaf_64", t1."Leaf_65", t1."Leaf_67", t1."Leaf_68" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" > 6.500000) AND (t."X_13" <= 5.500000) AND (t."X_28" <= 6.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" > 6.500000) AND (t."X_13" <= 5.500000) AND (t."X_28" > 6.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_14" <= 2.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_14" > 2.000000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" > 6.500000) AND (t."X_13" <= 1.500000) AND (t."X_1" <= 4.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" > 6.500000) AND (t."X_13" <= 1.500000) AND (t."X_1" > 4.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" > 6.500000) AND (t."X_13" > 1.500000) AND (t."X_0" <= 0.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" <= 1.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" > 6.500000) AND (t."X_13" > 1.500000) AND (t."X_0" > 0.500000) AND (t."X_8" <= 3.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" > 1.500000) AND (t."X_5" <= 6.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" > 1.500000) AND (t."X_5" > 6.500000) AND (t."X_0" <= 4.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" > 1.500000) AND (t."X_5" > 6.500000) AND (t."X_0" > 4.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" > 6.500000) AND (t."X_13" > 5.500000) AND (t."X_27" > 3.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" > 6.500000) AND (t."X_13" > 5.500000) AND (t."X_27" <= 3.500000) AND (t."X_14" <= 1.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" > 6.500000) AND (t."X_13" > 5.500000) AND (t."X_27" <= 3.500000) AND (t."X_14" > 1.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" > 6.500000) AND (t."X_13" > 1.500000) AND (t."X_0" > 0.500000) AND (t."X_8" > 3.000000) AND (t."X_1" > 5.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" > 6.500000) AND (t."X_13" > 1.500000) AND (t."X_0" > 0.500000) AND (t."X_8" > 3.000000) AND (t."X_1" <= 5.500000) AND (t."X_10" <= 3.000000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_26" > 6.500000) AND (t."X_13" > 1.500000) AND (t."X_0" > 0.500000) AND (t."X_8" > 3.000000) AND (t."X_1" <= 5.500000) AND (t."X_10" > 3.000000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_14" <= 0.500000) AND (t."X_10" <= 0.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_14" <= 0.500000) AND (t."X_10" > 0.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_5" > 4.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_5" <= 4.500000) AND (t."X_10" <= 6.000000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_5" <= 4.500000) AND (t."X_10" > 6.000000) AND (t."X_4" <= 4.500000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_5" <= 4.500000) AND (t."X_10" > 6.000000) AND (t."X_4" > 4.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" > 5.500000) AND (t."X_27" > 6.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_1" <= 2.500000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_1" > 2.500000) AND (t."X_6" <= 4.500000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_13" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_1" > 2.500000) AND (t."X_6" > 4.500000)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_27" > 3.500000) AND (t."X_1" <= 6.500000)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_27" > 3.500000) AND (t."X_1" > 6.500000) AND (t."X_1" <= 7.500000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_27" > 3.500000) AND (t."X_1" > 6.500000) AND (t."X_1" > 7.500000)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_27" <= 3.500000) AND (t."X_25" > 0.500000)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_27" <= 3.500000) AND (t."X_25" <= 0.500000) AND (t."X_4" <= 5.500000)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_27" <= 3.500000) AND (t."X_25" <= 0.500000) AND (t."X_4" > 5.500000) AND (t."X_14" <= 5.500000)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_27" <= 3.500000) AND (t."X_25" <= 0.500000) AND (t."X_4" > 5.500000) AND (t."X_14" > 5.500000)) THEN 68 ELSE NULL END AS "Leaf_68"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.398946 AS "P_0", 0.601054 AS "P_1", 1 AS "D", 0.601054 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.089855 AS "P_0", 0.910145 AS "P_1", 1 AS "D", 0.910145 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.031447 AS "P_0", 0.968553 AS "P_1", 1 AS "D", 0.968553 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.559322 AS "P_0", 0.440678 AS "P_1", 0 AS "D", 0.559322 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.987879 AS "P_0", 0.012121 AS "P_1", 0 AS "D", 0.987879 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.227273 AS "P_0", 0.772727 AS "P_1", 1 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.756757 AS "P_0", 0.243243 AS "P_1", 0 AS "D", 0.756757 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.866667 AS "P_0", 0.133333 AS "P_1", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.962963 AS "P_0", 0.037037 AS "P_1", 0 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.011111 AS "P_0", 0.988889 AS "P_1", 1 AS "D", 0.988889 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.145833 AS "P_0", 0.854167 AS "P_1", 1 AS "D", 0.854167 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.004425 AS "P_0", 0.995575 AS "P_1", 1 AS "D", 0.995575 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.019608 AS "P_0", 0.980392 AS "P_1", 1 AS "D", 0.980392 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_3" AS 
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
    COALESCE( t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_17", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_38", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_49", t1."Leaf_50", t1."Leaf_53", t1."Leaf_55", t1."Leaf_56", t1."Leaf_58", t1."Leaf_59", t1."Leaf_62", t1."Leaf_64", t1."Leaf_65", t1."Leaf_66" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" <= 1.000000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_26" <= 3.500000) AND (t."X_21" <= 6.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_26" <= 3.500000) AND (t."X_21" > 6.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_29" <= 4.500000) AND (t."X_8" <= 0.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_29" <= 4.500000) AND (t."X_8" > 0.500000) AND (t."X_25" <= 3.500000) AND (t."X_25" <= 2.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_29" <= 4.500000) AND (t."X_8" > 0.500000) AND (t."X_25" <= 3.500000) AND (t."X_25" > 2.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_29" > 4.500000) AND (t."X_24" <= 5.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_29" > 4.500000) AND (t."X_24" > 5.500000) AND (t."X_25" <= 5.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_29" > 4.500000) AND (t."X_24" > 5.500000) AND (t."X_25" > 5.500000) AND (t."X_21" <= 1.000000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_29" > 4.500000) AND (t."X_24" > 5.500000) AND (t."X_25" > 5.500000) AND (t."X_21" > 1.000000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_29" <= 4.500000) AND (t."X_8" > 0.500000) AND (t."X_25" > 3.500000) AND (t."X_8" > 1.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_29" <= 4.500000) AND (t."X_8" > 0.500000) AND (t."X_25" > 3.500000) AND (t."X_8" <= 1.500000) AND (t."X_29" <= 2.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" > 4.500000) AND (t."X_29" <= 4.500000) AND (t."X_8" > 0.500000) AND (t."X_25" > 3.500000) AND (t."X_8" <= 1.500000) AND (t."X_29" > 2.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" <= 0.500000) AND (t."X_8" <= 0.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" <= 0.500000) AND (t."X_8" > 0.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" > 1.000000) AND (t."X_27" > 7.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" > 1.000000) AND (t."X_27" <= 7.500000) AND (t."X_1" > 2.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" > 1.000000) AND (t."X_27" <= 7.500000) AND (t."X_1" <= 2.500000) AND (t."X_29" <= 8.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" > 1.000000) AND (t."X_27" <= 7.500000) AND (t."X_1" <= 2.500000) AND (t."X_29" > 8.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_26" > 3.500000) AND (t."X_24" <= 0.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_26" > 3.500000) AND (t."X_24" > 0.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" > 0.500000) AND (t."X_21" <= 6.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" > 0.500000) AND (t."X_21" > 6.500000) AND (t."X_25" <= 3.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" > 0.500000) AND (t."X_21" > 6.500000) AND (t."X_25" > 3.500000) AND (t."X_29" <= 3.500000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" > 0.500000) AND (t."X_21" > 6.500000) AND (t."X_25" > 3.500000) AND (t."X_29" > 3.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_26" > 6.500000) AND (t."X_1" <= 6.500000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_26" > 6.500000) AND (t."X_1" > 6.500000) AND (t."X_8" <= 3.000000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_26" > 6.500000) AND (t."X_1" > 6.500000) AND (t."X_8" > 3.000000)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_24" > 2.500000)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_24" <= 2.500000) AND (t."X_24" <= 1.500000)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_24" <= 2.500000) AND (t."X_24" > 1.500000) AND (t."X_25" > 0.500000)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_24" <= 2.500000) AND (t."X_24" > 1.500000) AND (t."X_25" <= 0.500000) AND (t."X_29" > 1.500000)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_24" <= 2.500000) AND (t."X_24" > 1.500000) AND (t."X_25" <= 0.500000) AND (t."X_29" <= 1.500000) AND (t."X_8" <= 3.000000)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_24" <= 2.500000) AND (t."X_24" > 1.500000) AND (t."X_25" <= 0.500000) AND (t."X_29" <= 1.500000) AND (t."X_8" > 3.000000)) THEN 66 ELSE NULL END AS "Leaf_66"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.381371 AS "P_0", 0.618629 AS "P_1", 1 AS "D", 0.618629 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.123737 AS "P_0", 0.876263 AS "P_1", 1 AS "D", 0.876263 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.971098 AS "P_0", 0.028902 AS "P_1", 0 AS "D", 0.971098 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.068120 AS "P_0", 0.931880 AS "P_1", 1 AS "D", 0.931880 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.827586 AS "P_0", 0.172414 AS "P_1", 0 AS "D", 0.827586 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.994048 AS "P_0", 0.005952 AS "P_1", 0 AS "D", 0.994048 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.007634 AS "P_0", 0.992366 AS "P_1", 1 AS "D", 0.992366 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.219048 AS "P_0", 0.780952 AS "P_1", 1 AS "D", 0.780952 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.061224 AS "P_0", 0.938776 AS "P_1", 1 AS "D", 0.938776 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.357143 AS "P_0", 0.642857 AS "P_1", 1 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.608696 AS "P_0", 0.391304 AS "P_1", 0 AS "D", 0.608696 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.736842 AS "P_0", 0.263158 AS "P_1", 0 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.022727 AS "P_0", 0.977273 AS "P_1", 1 AS "D", 0.977273 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.003953 AS "P_0", 0.996047 AS "P_1", 1 AS "D", 0.996047 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.009901 AS "P_0", 0.990099 AS "P_1", 1 AS "D", 0.990099 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_4" AS 
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
"DT_node_lookup_5" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_47", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_53", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_13" > 5.500000) AND (t."X_13" > 7.500000) AND (t."X_24" <= 0.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_13" > 5.500000) AND (t."X_13" > 7.500000) AND (t."X_24" > 0.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_13" > 5.500000) AND (t."X_13" <= 7.500000) AND (t."X_29" <= 3.500000) AND (t."X_26" <= 3.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_13" > 5.500000) AND (t."X_13" <= 7.500000) AND (t."X_29" <= 3.500000) AND (t."X_26" > 3.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_13" > 5.500000) AND (t."X_13" <= 7.500000) AND (t."X_29" > 3.500000) AND (t."X_24" <= 7.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_13" > 5.500000) AND (t."X_13" <= 7.500000) AND (t."X_29" > 3.500000) AND (t."X_24" > 7.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" > 8.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" > 6.500000) AND (t."X_29" <= 0.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" > 6.500000) AND (t."X_29" > 0.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_13" <= 5.500000) AND (t."X_29" <= 2.500000) AND (t."X_24" <= 1.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_13" <= 5.500000) AND (t."X_29" <= 2.500000) AND (t."X_24" > 1.500000) AND (t."X_16" <= 5.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_13" <= 5.500000) AND (t."X_29" <= 2.500000) AND (t."X_24" > 1.500000) AND (t."X_16" > 5.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_13" <= 5.500000) AND (t."X_29" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_24" <= 5.000000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_13" <= 5.500000) AND (t."X_29" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_24" > 5.000000) AND (t."X_28" <= 3.000000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_13" <= 5.500000) AND (t."X_29" > 2.500000) AND (t."X_0" > 5.500000) AND (t."X_24" > 5.000000) AND (t."X_28" > 3.000000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_13" > 3.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_13" <= 3.500000) AND (t."X_16" <= 5.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_13" <= 3.500000) AND (t."X_16" > 5.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_13" <= 5.500000) AND (t."X_29" > 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_0" > 1.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_13" <= 5.500000) AND (t."X_29" > 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_0" <= 1.500000) AND (t."X_25" > 6.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_13" <= 5.500000) AND (t."X_29" > 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_0" <= 1.500000) AND (t."X_25" <= 6.500000) AND (t."X_11" <= 5.000000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_13" <= 5.500000) AND (t."X_29" > 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_0" <= 1.500000) AND (t."X_25" <= 6.500000) AND (t."X_11" > 5.000000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" > 7.500000) AND (t."X_0" <= 5.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" > 7.500000) AND (t."X_0" > 5.500000) AND (t."X_29" <= 3.500000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" > 7.500000) AND (t."X_0" > 5.500000) AND (t."X_29" > 3.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" <= 7.500000) AND (t."X_28" <= 4.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" <= 7.500000) AND (t."X_28" > 4.500000) AND (t."X_16" <= 3.500000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" <= 7.500000) AND (t."X_28" > 4.500000) AND (t."X_16" > 3.500000) AND (t."X_28" > 5.500000)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" <= 7.500000) AND (t."X_28" > 4.500000) AND (t."X_16" > 3.500000) AND (t."X_28" <= 5.500000) AND (t."X_11" <= 5.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" <= 7.500000) AND (t."X_28" > 4.500000) AND (t."X_16" > 3.500000) AND (t."X_28" <= 5.500000) AND (t."X_11" > 5.500000)) THEN 58 ELSE NULL END AS "Leaf_58"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.372583 AS "P_0", 0.627416 AS "P_1", 1 AS "D", 0.627416 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.128079 AS "P_0", 0.871921 AS "P_1", 1 AS "D", 0.871921 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.981595 AS "P_0", 0.018405 AS "P_1", 0 AS "D", 0.981595 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.045139 AS "P_0", 0.954861 AS "P_1", 1 AS "D", 0.954861 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.330508 AS "P_0", 0.669492 AS "P_1", 1 AS "D", 0.669492 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.620000 AS "P_0", 0.380000 AS "P_1", 0 AS "D", 0.620000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.468750 AS "P_0", 0.531250 AS "P_1", 1 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.176471 AS "P_0", 0.823529 AS "P_1", 1 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.035088 AS "P_0", 0.964912 AS "P_1", 1 AS "D", 0.964912 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.010870 AS "P_0", 0.989130 AS "P_1", 1 AS "D", 0.989130 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.072727 AS "P_0", 0.927273 AS "P_1", 1 AS "D", 0.927273 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.025000 AS "P_0", 0.975000 AS "P_1", 1 AS "D", 0.975000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.004505 AS "P_0", 0.995495 AS "P_1", 1 AS "D", 0.995495 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.037037 AS "P_0", 0.962963 AS "P_1", 1 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.014286 AS "P_0", 0.985714 AS "P_1", 1 AS "D", 0.985714 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_5" AS t1
   LEFT OUTER JOIN
   "DT_node_data_5" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_6" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_9", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_50", t1."Leaf_52", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58", t1."Leaf_61", t1."Leaf_62", t1."Leaf_63", t1."Leaf_66", t1."Leaf_67", t1."Leaf_68", t1."Leaf_69", t1."Leaf_72", t1."Leaf_73", t1."Leaf_74", t1."Leaf_76", t1."Leaf_78", t1."Leaf_79", t1."Leaf_81", t1."Leaf_83", t1."Leaf_84" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 4.500000) AND (t."X_27" > 4.500000) AND (t."X_21" <= 2.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" <= 4.500000) AND (t."X_27" > 4.500000) AND (t."X_21" > 2.500000) AND (t."X_26" <= 4.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" <= 4.500000) AND (t."X_27" > 4.500000) AND (t."X_21" > 2.500000) AND (t."X_26" > 4.000000) AND (t."X_21" <= 7.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 4.500000) AND (t."X_27" > 4.500000) AND (t."X_21" > 2.500000) AND (t."X_26" > 4.000000) AND (t."X_21" > 7.500000) AND (t."X_28" <= 4.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" <= 4.500000) AND (t."X_27" > 4.500000) AND (t."X_21" > 2.500000) AND (t."X_26" > 4.000000) AND (t."X_21" > 7.500000) AND (t."X_28" > 4.000000) AND (t."X_21" <= 8.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" <= 4.500000) AND (t."X_27" > 4.500000) AND (t."X_21" > 2.500000) AND (t."X_26" > 4.000000) AND (t."X_21" > 7.500000) AND (t."X_28" > 4.000000) AND (t."X_21" > 8.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" <= 4.500000) AND (t."X_0" > 6.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" <= 4.500000) AND (t."X_0" <= 6.000000) AND (t."X_24" <= 7.000000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" <= 4.500000) AND (t."X_0" <= 6.000000) AND (t."X_24" > 7.000000) AND (t."X_21" <= 2.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" <= 4.500000) AND (t."X_0" <= 6.000000) AND (t."X_24" > 7.000000) AND (t."X_21" > 2.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_21" > 3.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_21" <= 3.500000) AND (t."X_0" <= 5.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_21" <= 3.500000) AND (t."X_0" > 5.500000) AND (t."X_2" > 6.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_21" <= 3.500000) AND (t."X_0" > 5.500000) AND (t."X_2" <= 6.500000) AND (t."X_29" <= 3.000000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_21" <= 3.500000) AND (t."X_0" > 5.500000) AND (t."X_2" <= 6.500000) AND (t."X_29" > 3.000000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" > 5.500000) AND (t."X_8" <= 1.500000) AND (t."X_21" <= 6.500000) AND (t."X_6" <= 7.000000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" > 5.500000) AND (t."X_8" <= 1.500000) AND (t."X_21" <= 6.500000) AND (t."X_6" > 7.000000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" > 5.500000) AND (t."X_8" <= 1.500000) AND (t."X_21" > 6.500000) AND (t."X_0" <= 5.000000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" > 5.500000) AND (t."X_8" <= 1.500000) AND (t."X_21" > 6.500000) AND (t."X_0" > 5.000000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" > 5.500000) AND (t."X_8" > 1.500000) AND (t."X_2" <= 3.000000) AND (t."X_6" <= 5.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" > 5.500000) AND (t."X_8" > 1.500000) AND (t."X_2" <= 3.000000) AND (t."X_6" > 5.500000) AND (t."X_3" <= 0.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" > 5.500000) AND (t."X_8" > 1.500000) AND (t."X_2" <= 3.000000) AND (t."X_6" > 5.500000) AND (t."X_3" > 0.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_5" <= 4.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" > 8.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_5" <= 4.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" > 7.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_5" <= 4.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 7.500000) AND (t."X_3" > 6.500000) AND (t."X_6" <= 3.500000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_5" <= 4.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 7.500000) AND (t."X_3" > 6.500000) AND (t."X_6" > 3.500000) AND (t."X_0" <= 6.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_5" <= 4.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 7.500000) AND (t."X_3" > 6.500000) AND (t."X_6" > 3.500000) AND (t."X_0" > 6.500000)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" > 5.500000) AND (t."X_8" > 1.500000) AND (t."X_2" > 3.000000) AND (t."X_24" <= 1.500000) AND (t."X_6" <= 6.000000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" > 5.500000) AND (t."X_8" > 1.500000) AND (t."X_2" > 3.000000) AND (t."X_24" <= 1.500000) AND (t."X_6" > 6.000000)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" > 4.500000) AND (t."X_2" <= 5.500000)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" > 4.500000) AND (t."X_2" > 5.500000) AND (t."X_9" > 4.500000)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" > 4.500000) AND (t."X_2" > 5.500000) AND (t."X_9" <= 4.500000) AND (t."X_29" <= 6.500000)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" > 4.500000) AND (t."X_2" > 5.500000) AND (t."X_9" <= 4.500000) AND (t."X_29" > 6.500000)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_5" <= 4.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 7.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" <= 3.500000)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_5" <= 4.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 7.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" > 3.500000) AND (t."X_5" > 1.500000)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_5" <= 4.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 7.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" > 3.500000) AND (t."X_5" <= 1.500000) AND (t."X_29" <= 4.500000)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_5" <= 4.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 7.500000) AND (t."X_3" <= 6.500000) AND (t."X_27" > 3.500000) AND (t."X_5" <= 1.500000) AND (t."X_29" > 4.500000)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" > 5.500000) AND (t."X_8" > 1.500000) AND (t."X_2" > 3.000000) AND (t."X_24" > 1.500000) AND (t."X_0" > 6.500000)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" > 5.500000) AND (t."X_8" > 1.500000) AND (t."X_2" > 3.000000) AND (t."X_24" > 1.500000) AND (t."X_0" <= 6.500000) AND (t."X_8" > 6.500000)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" > 5.500000) AND (t."X_8" > 1.500000) AND (t."X_2" > 3.000000) AND (t."X_24" > 1.500000) AND (t."X_0" <= 6.500000) AND (t."X_8" <= 6.500000) AND (t."X_29" <= 7.500000)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" > 5.500000) AND (t."X_8" > 1.500000) AND (t."X_2" > 3.000000) AND (t."X_24" > 1.500000) AND (t."X_0" <= 6.500000) AND (t."X_8" <= 6.500000) AND (t."X_29" > 7.500000) AND (t."X_3" <= 5.500000)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" > 5.500000) AND (t."X_8" > 1.500000) AND (t."X_2" > 3.000000) AND (t."X_24" > 1.500000) AND (t."X_0" <= 6.500000) AND (t."X_8" <= 6.500000) AND (t."X_29" > 7.500000) AND (t."X_3" > 5.500000) AND (t."X_9" <= 5.000000)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_5" > 4.500000) AND (t."X_21" > 5.500000) AND (t."X_8" > 1.500000) AND (t."X_2" > 3.000000) AND (t."X_24" > 1.500000) AND (t."X_0" <= 6.500000) AND (t."X_8" <= 6.500000) AND (t."X_29" > 7.500000) AND (t."X_3" > 5.500000) AND (t."X_9" > 5.000000)) THEN 84 ELSE NULL END AS "Leaf_84"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.388401 AS "P_0", 0.611599 AS "P_1", 1 AS "D", 0.611599 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.097473 AS "P_0", 0.902527 AS "P_1", 1 AS "D", 0.902527 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.664384 AS "P_0", 0.335616 AS "P_1", 0 AS "D", 0.664384 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.421429 AS "P_0", 0.578571 AS "P_1", 1 AS "D", 0.578571 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.888158 AS "P_0", 0.111842 AS "P_1", 0 AS "D", 0.888158 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.120482 AS "P_0", 0.879518 AS "P_1", 1 AS "D", 0.879518 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.859649 AS "P_0", 0.140351 AS "P_1", 0 AS "D", 0.859649 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.033058 AS "P_0", 0.966942 AS "P_1", 1 AS "D", 0.966942 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.542857 AS "P_0", 0.457143 AS "P_1", 0 AS "D", 0.542857 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.760000 AS "P_0", 0.240000 AS "P_1", 0 AS "D", 0.760000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.863636 AS "P_0", 0.136364 AS "P_1", 0 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.360000 AS "P_0", 0.640000 AS "P_1", 1 AS "D", 0.640000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.017241 AS "P_0", 0.982759 AS "P_1", 1 AS "D", 0.982759 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.757576 AS "P_0", 0.242424 AS "P_1", 0 AS "D", 0.757576 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.961538 AS "P_0", 0.038462 AS "P_1", 0 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.588235 AS "P_0", 0.411765 AS "P_1", 0 AS "D", 0.588235 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.925926 AS "P_0", 0.074074 AS "P_1", 0 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.983740 AS "P_0", 0.016260 AS "P_1", 0 AS "D", 0.983740 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.029046 AS "P_0", 0.970954 AS "P_1", 1 AS "D", 0.970954 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.016807 AS "P_0", 0.983193 AS "P_1", 1 AS "D", 0.983193 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.004386 AS "P_0", 0.995614 AS "P_1", 1 AS "D", 0.995614 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.991597 AS "P_0", 0.008403 AS "P_1", 0 AS "D", 0.991597 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.972222 AS "P_0", 0.027778 AS "P_1", 0 AS "D", 0.972222 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_6" AS t1
   LEFT OUTER JOIN
   "DT_node_data_6" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_7" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_46", t1."Leaf_47", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" <= 3.000000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" > 3.000000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_1" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_23" <= 5.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_1" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_23" > 5.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_1" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" <= 4.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_1" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" > 4.500000) AND (t."X_28" > 2.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_1" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" > 4.500000) AND (t."X_28" <= 2.500000) AND (t."X_10" <= 5.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_1" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" > 4.500000) AND (t."X_28" <= 2.500000) AND (t."X_10" > 5.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" > 7.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_1" > 6.500000) AND (t."X_8" <= 6.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_1" > 6.500000) AND (t."X_8" > 6.500000) AND (t."X_24" <= 2.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_1" > 6.500000) AND (t."X_8" > 6.500000) AND (t."X_24" > 2.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" > 6.500000) AND (t."X_1" <= 0.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" > 6.500000) AND (t."X_1" > 0.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_0" > 5.500000) AND (t."X_10" > 7.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_0" > 5.500000) AND (t."X_10" <= 7.500000) AND (t."X_1" <= 6.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_0" > 5.500000) AND (t."X_10" <= 7.500000) AND (t."X_1" > 6.500000) AND (t."X_26" <= 4.000000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_0" > 5.500000) AND (t."X_10" <= 7.500000) AND (t."X_1" > 6.500000) AND (t."X_26" > 4.000000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_27" > 5.500000) AND (t."X_28" > 8.500000) AND (t."X_4" <= 8.000000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_27" > 5.500000) AND (t."X_28" > 8.500000) AND (t."X_4" > 8.000000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_27" > 5.500000) AND (t."X_28" <= 8.500000) AND (t."X_24" <= 8.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_27" > 5.500000) AND (t."X_28" <= 8.500000) AND (t."X_24" > 8.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" > 1.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" <= 1.500000) AND (t."X_9" <= 4.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" <= 1.500000) AND (t."X_9" > 4.500000) AND (t."X_4" <= 4.000000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" <= 1.500000) AND (t."X_9" > 4.500000) AND (t."X_4" > 4.000000) AND (t."X_28" <= 0.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_0" <= 5.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" <= 1.500000) AND (t."X_9" > 4.500000) AND (t."X_4" > 4.000000) AND (t."X_28" > 0.500000)) THEN 52 ELSE NULL END AS "Leaf_52"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.360281 AS "P_0", 0.639719 AS "P_1", 1 AS "D", 0.639719 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.870968 AS "P_0", 0.129032 AS "P_1", 0 AS "D", 0.870968 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.542373 AS "P_0", 0.457627 AS "P_1", 0 AS "D", 0.542373 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.993671 AS "P_0", 0.006329 AS "P_1", 0 AS "D", 0.993671 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.673913 AS "P_0", 0.326087 AS "P_1", 0 AS "D", 0.673913 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.458333 AS "P_0", 0.541667 AS "P_1", 1 AS "D", 0.541667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.294118 AS "P_0", 0.705882 AS "P_1", 1 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.026087 AS "P_0", 0.973913 AS "P_1", 1 AS "D", 0.973913 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.015480 AS "P_0", 0.984520 AS "P_1", 1 AS "D", 0.984520 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.009836 AS "P_0", 0.990164 AS "P_1", 1 AS "D", 0.990164 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.038961 AS "P_0", 0.961039 AS "P_1", 1 AS "D", 0.961039 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_7" AS t1
   LEFT OUTER JOIN
   "DT_node_data_7" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_8" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46", t1."Leaf_49", t1."Leaf_50", t1."Leaf_52", t1."Leaf_54", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_61", t1."Leaf_62", t1."Leaf_63", t1."Leaf_65", t1."Leaf_66" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" > 7.500000) AND (t."X_29" <= 5.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" > 7.500000) AND (t."X_29" > 5.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_26" > 9.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_26" <= 9.500000) AND (t."X_0" <= 1.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" <= 1.500000) AND (t."X_5" > 4.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" <= 1.500000) AND (t."X_5" <= 4.500000) AND (t."X_0" > 7.000000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" <= 1.500000) AND (t."X_5" <= 4.500000) AND (t."X_0" <= 7.000000) AND (t."X_26" <= 5.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" <= 1.500000) AND (t."X_5" <= 4.500000) AND (t."X_0" <= 7.000000) AND (t."X_26" > 5.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_14" <= 4.500000) AND (t."X_5" <= 2.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_14" <= 4.500000) AND (t."X_5" > 2.500000) AND (t."X_14" > 3.500000) AND (t."X_28" <= 2.000000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_14" <= 4.500000) AND (t."X_5" > 2.500000) AND (t."X_14" > 3.500000) AND (t."X_28" > 2.000000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_14" <= 4.500000) AND (t."X_5" > 2.500000) AND (t."X_14" <= 3.500000) AND (t."X_29" > 7.500000) AND (t."X_14" <= 1.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_14" <= 4.500000) AND (t."X_5" > 2.500000) AND (t."X_14" <= 3.500000) AND (t."X_29" > 7.500000) AND (t."X_14" > 1.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_14" <= 4.500000) AND (t."X_5" > 2.500000) AND (t."X_14" <= 3.500000) AND (t."X_29" <= 7.500000) AND (t."X_5" > 3.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_14" <= 4.500000) AND (t."X_5" > 2.500000) AND (t."X_14" <= 3.500000) AND (t."X_29" <= 7.500000) AND (t."X_5" <= 3.500000) AND (t."X_29" <= 3.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_14" <= 4.500000) AND (t."X_5" > 2.500000) AND (t."X_14" <= 3.500000) AND (t."X_29" <= 7.500000) AND (t."X_5" <= 3.500000) AND (t."X_29" > 3.500000) AND (t."X_27" <= 5.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_14" <= 4.500000) AND (t."X_5" > 2.500000) AND (t."X_14" <= 3.500000) AND (t."X_29" <= 7.500000) AND (t."X_5" <= 3.500000) AND (t."X_29" > 3.500000) AND (t."X_27" > 5.500000) AND (t."X_0" <= 5.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_14" <= 4.500000) AND (t."X_5" > 2.500000) AND (t."X_14" <= 3.500000) AND (t."X_29" <= 7.500000) AND (t."X_5" <= 3.500000) AND (t."X_29" > 3.500000) AND (t."X_27" > 5.500000) AND (t."X_0" > 5.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" <= 4.500000) AND (t."X_0" > 6.500000) AND (t."X_0" <= 7.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" <= 4.500000) AND (t."X_0" > 6.500000) AND (t."X_0" > 7.500000) AND (t."X_7" <= 4.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" <= 4.500000) AND (t."X_0" > 6.500000) AND (t."X_0" > 7.500000) AND (t."X_7" > 4.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_26" <= 9.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 2.500000) AND (t."X_15" <= 8.500000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_26" <= 9.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 2.500000) AND (t."X_15" > 8.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_26" <= 9.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 2.500000) AND (t."X_1" > 2.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_26" <= 9.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 2.500000) AND (t."X_1" <= 2.500000) AND (t."X_7" > 7.500000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_26" <= 9.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 2.500000) AND (t."X_1" <= 2.500000) AND (t."X_7" <= 7.500000) AND (t."X_14" > 4.500000)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_26" <= 9.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 2.500000) AND (t."X_1" <= 2.500000) AND (t."X_7" <= 7.500000) AND (t."X_14" <= 4.500000) AND (t."X_28" <= 4.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_26" <= 9.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 2.500000) AND (t."X_1" <= 2.500000) AND (t."X_7" <= 7.500000) AND (t."X_14" <= 4.500000) AND (t."X_28" > 4.500000)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" <= 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_13" <= 6.500000)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" <= 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_13" > 6.500000) AND (t."X_5" <= 1.500000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" <= 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_13" > 6.500000) AND (t."X_5" > 1.500000)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_14" > 4.500000) AND (t."X_29" <= 8.500000)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_14" > 4.500000) AND (t."X_29" > 8.500000) AND (t."X_1" <= 7.500000)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 1.500000) AND (t."X_14" > 4.500000) AND (t."X_29" > 8.500000) AND (t."X_1" > 7.500000)) THEN 66 ELSE NULL END AS "Leaf_66"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.372583 AS "P_0", 0.627416 AS "P_1", 1 AS "D", 0.627416 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.138958 AS "P_0", 0.861042 AS "P_1", 1 AS "D", 0.861042 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.939759 AS "P_0", 0.060241 AS "P_1", 0 AS "D", 0.939759 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.084656 AS "P_0", 0.915344 AS "P_1", 1 AS "D", 0.915344 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.960000 AS "P_0", 0.040000 AS "P_1", 0 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.951219 AS "P_0", 0.048780 AS "P_1", 0 AS "D", 0.951219 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.962963 AS "P_0", 0.037037 AS "P_1", 0 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.030189 AS "P_0", 0.969811 AS "P_1", 1 AS "D", 0.969811 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.212389 AS "P_0", 0.787611 AS "P_1", 1 AS "D", 0.787611 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.151515 AS "P_0", 0.848485 AS "P_1", 1 AS "D", 0.848485 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.280000 AS "P_0", 0.720000 AS "P_1", 1 AS "D", 0.720000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.020408 AS "P_0", 0.979592 AS "P_1", 1 AS "D", 0.979592 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.234043 AS "P_0", 0.765957 AS "P_1", 1 AS "D", 0.765957 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.150000 AS "P_0", 0.850000 AS "P_1", 1 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.011583 AS "P_0", 0.988417 AS "P_1", 1 AS "D", 0.988417 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.980132 AS "P_0", 0.019868 AS "P_1", 0 AS "D", 0.980132 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_8" AS t1
   LEFT OUTER JOIN
   "DT_node_data_8" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_9" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_10" <= 2.500000) AND (t."X_28" > 7.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_10" <= 2.500000) AND (t."X_28" <= 7.500000) AND (t."X_27" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_10" <= 2.500000) AND (t."X_28" <= 7.500000) AND (t."X_27" <= 7.500000) AND (t."X_24" <= 5.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_10" <= 2.500000) AND (t."X_28" <= 7.500000) AND (t."X_27" <= 7.500000) AND (t."X_24" > 5.000000) AND (t."X_11" <= 7.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_10" <= 2.500000) AND (t."X_28" <= 7.500000) AND (t."X_27" <= 7.500000) AND (t."X_24" > 5.000000) AND (t."X_11" > 7.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_10" > 2.500000) AND (t."X_2" <= 2.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_10" > 6.500000) AND (t."X_2" > 5.500000) AND (t."X_24" <= 0.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_10" > 6.500000) AND (t."X_2" > 5.500000) AND (t."X_24" > 0.500000) AND (t."X_29" <= 5.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_10" > 6.500000) AND (t."X_2" > 5.500000) AND (t."X_24" > 0.500000) AND (t."X_29" > 5.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_10" > 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_26" <= 4.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_10" > 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_26" > 4.500000) AND (t."X_2" <= 2.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_10" > 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_26" > 4.500000) AND (t."X_2" > 2.000000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_10" <= 6.500000) AND (t."X_0" > 6.500000) AND (t."X_24" <= 2.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_10" <= 6.500000) AND (t."X_0" > 6.500000) AND (t."X_24" > 2.500000) AND (t."X_28" <= 1.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_10" <= 6.500000) AND (t."X_0" > 6.500000) AND (t."X_24" > 2.500000) AND (t."X_28" > 1.500000) AND (t."X_26" <= 4.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_10" <= 6.500000) AND (t."X_0" > 6.500000) AND (t."X_24" > 2.500000) AND (t."X_28" > 1.500000) AND (t."X_26" > 4.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_10" > 2.500000) AND (t."X_2" > 2.500000) AND (t."X_26" <= 4.500000) AND (t."X_29" <= 1.000000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_10" > 2.500000) AND (t."X_2" > 2.500000) AND (t."X_26" <= 4.500000) AND (t."X_29" > 1.000000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_10" > 2.500000) AND (t."X_2" > 2.500000) AND (t."X_26" > 4.500000) AND (t."X_2" > 6.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_10" > 2.500000) AND (t."X_2" > 2.500000) AND (t."X_26" > 4.500000) AND (t."X_2" <= 6.500000) AND (t."X_11" > 1.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_10" > 2.500000) AND (t."X_2" > 2.500000) AND (t."X_26" > 4.500000) AND (t."X_2" <= 6.500000) AND (t."X_11" <= 1.500000) AND (t."X_12" <= 4.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_10" > 2.500000) AND (t."X_2" > 2.500000) AND (t."X_26" > 4.500000) AND (t."X_2" <= 6.500000) AND (t."X_11" <= 1.500000) AND (t."X_12" > 4.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_10" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_27" <= 3.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_10" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_27" > 3.500000) AND (t."X_28" <= 4.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_10" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_27" > 3.500000) AND (t."X_28" > 4.500000) AND (t."X_1" <= 5.500000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_10" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_27" > 3.500000) AND (t."X_28" > 4.500000) AND (t."X_1" > 5.500000) AND (t."X_26" <= 5.000000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_10" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_27" > 3.500000) AND (t."X_28" > 4.500000) AND (t."X_1" > 5.500000) AND (t."X_26" > 5.000000)) THEN 52 ELSE NULL END AS "Leaf_52"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.377856 AS "P_0", 0.622144 AS "P_1", 1 AS "D", 0.622144 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.054286 AS "P_0", 0.945714 AS "P_1", 1 AS "D", 0.945714 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.894977 AS "P_0", 0.105023 AS "P_1", 0 AS "D", 0.894977 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.318182 AS "P_0", 0.681818 AS "P_1", 1 AS "D", 0.681818 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.959391 AS "P_0", 0.040609 AS "P_1", 0 AS "D", 0.959391 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.974227 AS "P_0", 0.025773 AS "P_1", 0 AS "D", 0.974227 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.022727 AS "P_0", 0.977273 AS "P_1", 1 AS "D", 0.977273 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.037037 AS "P_0", 0.962963 AS "P_1", 1 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.733333 AS "P_0", 0.266667 AS "P_1", 0 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.006667 AS "P_0", 0.993333 AS "P_1", 1 AS "D", 0.993333 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.984293 AS "P_0", 0.015707 AS "P_1", 0 AS "D", 0.984293 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.930233 AS "P_0", 0.069767 AS "P_1", 0 AS "D", 0.930233 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.025000 AS "P_0", 0.975000 AS "P_1", 1 AS "D", 0.975000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.057143 AS "P_0", 0.942857 AS "P_1", 1 AS "D", 0.942857 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_9" AS t1
   LEFT OUTER JOIN
   "DT_node_data_9" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_10" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_54", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" <= 1.500000) AND (t."X_29" > 7.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_2" <= 4.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_2" > 4.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_24" <= 1.500000) AND (t."X_11" <= 3.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_24" <= 1.500000) AND (t."X_11" > 3.000000) AND (t."X_2" <= 7.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_24" <= 1.500000) AND (t."X_11" > 3.000000) AND (t."X_2" > 7.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_24" > 1.500000) AND (t."X_26" <= 4.500000) AND (t."X_25" > 4.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_24" > 1.500000) AND (t."X_26" <= 4.500000) AND (t."X_25" <= 4.000000) AND (t."X_29" > 2.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_24" > 1.500000) AND (t."X_26" <= 4.500000) AND (t."X_25" <= 4.000000) AND (t."X_29" <= 2.500000) AND (t."X_11" <= 3.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_24" > 1.500000) AND (t."X_26" <= 4.500000) AND (t."X_25" <= 4.000000) AND (t."X_29" <= 2.500000) AND (t."X_11" > 3.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" <= 1.500000) AND (t."X_29" <= 7.500000) AND (t."X_27" <= 5.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" <= 1.500000) AND (t."X_29" <= 7.500000) AND (t."X_27" > 5.500000) AND (t."X_0" <= 7.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" <= 1.500000) AND (t."X_29" <= 7.500000) AND (t."X_27" > 5.500000) AND (t."X_0" > 7.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_28" > 7.500000) AND (t."X_27" > 7.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_28" > 7.500000) AND (t."X_27" <= 7.500000) AND (t."X_2" <= 4.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_28" > 7.500000) AND (t."X_27" <= 7.500000) AND (t."X_2" > 4.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_21" > 8.500000) AND (t."X_15" <= 2.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_21" > 8.500000) AND (t."X_15" > 2.500000) AND (t."X_28" <= 2.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_21" > 8.500000) AND (t."X_15" > 2.500000) AND (t."X_28" > 2.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_24" > 1.500000) AND (t."X_26" > 4.500000) AND (t."X_14" <= 0.500000) AND (t."X_22" <= 5.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_24" > 1.500000) AND (t."X_26" > 4.500000) AND (t."X_14" <= 0.500000) AND (t."X_22" > 5.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_21" <= 8.500000) AND (t."X_0" <= 4.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_21" <= 8.500000) AND (t."X_0" > 4.500000) AND (t."X_27" <= 4.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_21" <= 8.500000) AND (t."X_0" > 4.500000) AND (t."X_27" > 4.500000) AND (t."X_22" > 5.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_21" <= 8.500000) AND (t."X_0" > 4.500000) AND (t."X_27" > 4.500000) AND (t."X_22" <= 5.500000) AND (t."X_21" <= 6.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_21" <= 8.500000) AND (t."X_0" > 4.500000) AND (t."X_27" > 4.500000) AND (t."X_22" <= 5.500000) AND (t."X_21" > 6.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_24" > 1.500000) AND (t."X_26" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_0" > 6.500000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_24" > 1.500000) AND (t."X_26" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_0" <= 6.500000) AND (t."X_24" > 5.500000)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_24" > 1.500000) AND (t."X_26" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_0" <= 6.500000) AND (t."X_24" <= 5.500000) AND (t."X_21" <= 7.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_24" > 1.500000) AND (t."X_26" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_0" <= 6.500000) AND (t."X_24" <= 5.500000) AND (t."X_21" > 7.500000)) THEN 58 ELSE NULL END AS "Leaf_58"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.384886 AS "P_0", 0.615114 AS "P_1", 1 AS "D", 0.615114 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.066465 AS "P_0", 0.933535 AS "P_1", 1 AS "D", 0.933535 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.827731 AS "P_0", 0.172269 AS "P_1", 0 AS "D", 0.827731 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.918269 AS "P_0", 0.081731 AS "P_1", 0 AS "D", 0.918269 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.022581 AS "P_0", 0.977419 AS "P_1", 1 AS "D", 0.977419 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.963542 AS "P_0", 0.036458 AS "P_1", 0 AS "D", 0.963542 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.989011 AS "P_0", 0.010989 AS "P_1", 0 AS "D", 0.989011 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.013514 AS "P_0", 0.986486 AS "P_1", 1 AS "D", 0.986486 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.994350 AS "P_0", 0.005650 AS "P_1", 0 AS "D", 0.994350 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.085106 AS "P_0", 0.914894 AS "P_1", 1 AS "D", 0.914894 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.972222 AS "P_0", 0.027778 AS "P_1", 0 AS "D", 0.972222 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_10" AS t1
   LEFT OUTER JOIN
   "DT_node_data_10" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_11" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_15", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_48", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_54", t1."Leaf_58", t1."Leaf_59", t1."Leaf_60", t1."Leaf_61", t1."Leaf_64", t1."Leaf_65", t1."Leaf_66" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" <= 1.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" > 1.500000) AND (t."X_28" <= 3.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_20" > 1.500000) AND (t."X_28" > 3.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_24" <= 0.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_20" > 4.500000) AND (t."X_15" <= 1.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_20" > 4.500000) AND (t."X_15" > 1.500000) AND (t."X_29" <= 1.500000) AND (t."X_4" <= 4.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_20" > 4.500000) AND (t."X_15" > 1.500000) AND (t."X_29" <= 1.500000) AND (t."X_4" > 4.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_20" > 4.500000) AND (t."X_15" > 1.500000) AND (t."X_29" > 1.500000) AND (t."X_29" > 7.500000) AND (t."X_28" <= 2.000000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_20" > 4.500000) AND (t."X_15" > 1.500000) AND (t."X_29" > 1.500000) AND (t."X_29" > 7.500000) AND (t."X_28" > 2.000000) AND (t."X_4" <= 4.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_20" > 4.500000) AND (t."X_15" > 1.500000) AND (t."X_29" > 1.500000) AND (t."X_29" > 7.500000) AND (t."X_28" > 2.000000) AND (t."X_4" > 4.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_20" > 4.500000) AND (t."X_15" > 1.500000) AND (t."X_29" > 1.500000) AND (t."X_29" <= 7.500000) AND (t."X_24" > 7.500000) AND (t."X_0" <= 6.000000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_20" > 4.500000) AND (t."X_15" > 1.500000) AND (t."X_29" > 1.500000) AND (t."X_29" <= 7.500000) AND (t."X_24" > 7.500000) AND (t."X_0" > 6.000000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_20" > 4.500000) AND (t."X_15" > 1.500000) AND (t."X_29" > 1.500000) AND (t."X_29" <= 7.500000) AND (t."X_24" <= 7.500000) AND (t."X_29" > 3.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_20" > 4.500000) AND (t."X_15" > 1.500000) AND (t."X_29" > 1.500000) AND (t."X_29" <= 7.500000) AND (t."X_24" <= 7.500000) AND (t."X_29" <= 3.500000) AND (t."X_29" <= 2.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_20" > 4.500000) AND (t."X_15" > 1.500000) AND (t."X_29" > 1.500000) AND (t."X_29" <= 7.500000) AND (t."X_24" <= 7.500000) AND (t."X_29" <= 3.500000) AND (t."X_29" > 2.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_20" <= 4.500000) AND (t."X_28" <= 5.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_20" <= 4.500000) AND (t."X_28" > 5.500000) AND (t."X_21" <= 6.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_20" <= 4.500000) AND (t."X_28" > 5.500000) AND (t."X_21" > 6.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_24" > 0.500000) AND (t."X_15" > 2.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_24" > 0.500000) AND (t."X_15" <= 2.500000) AND (t."X_29" > 2.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_24" > 0.500000) AND (t."X_15" <= 2.500000) AND (t."X_29" <= 2.500000) AND (t."X_0" <= 7.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_24" > 0.500000) AND (t."X_15" <= 2.500000) AND (t."X_29" <= 2.500000) AND (t."X_0" > 7.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_29" <= 0.500000) AND (t."X_28" > 5.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_29" <= 0.500000) AND (t."X_28" <= 5.500000) AND (t."X_28" > 0.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_29" <= 0.500000) AND (t."X_28" <= 5.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" <= 5.000000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_29" <= 0.500000) AND (t."X_28" <= 5.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 5.000000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_29" > 0.500000) AND (t."X_15" > 2.500000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_29" > 0.500000) AND (t."X_15" <= 2.500000) AND (t."X_27" > 3.500000) AND (t."X_5" > 1.500000)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_29" > 0.500000) AND (t."X_15" <= 2.500000) AND (t."X_27" > 3.500000) AND (t."X_5" <= 1.500000) AND (t."X_15" <= 1.500000)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_29" > 0.500000) AND (t."X_15" <= 2.500000) AND (t."X_27" > 3.500000) AND (t."X_5" <= 1.500000) AND (t."X_15" > 1.500000)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_29" > 0.500000) AND (t."X_15" <= 2.500000) AND (t."X_27" <= 3.500000) AND (t."X_4" <= 5.500000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_29" > 0.500000) AND (t."X_15" <= 2.500000) AND (t."X_27" <= 3.500000) AND (t."X_4" > 5.500000) AND (t."X_28" > 0.500000)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_29" > 0.500000) AND (t."X_15" <= 2.500000) AND (t."X_27" <= 3.500000) AND (t."X_4" > 5.500000) AND (t."X_28" <= 0.500000) AND (t."X_22" <= 2.500000)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_29" > 0.500000) AND (t."X_15" <= 2.500000) AND (t."X_27" <= 3.500000) AND (t."X_4" > 5.500000) AND (t."X_28" <= 0.500000) AND (t."X_22" > 2.500000)) THEN 66 ELSE NULL END AS "Leaf_66"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.363796 AS "P_0", 0.636204 AS "P_1", 1 AS "D", 0.636204 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.122549 AS "P_0", 0.877451 AS "P_1", 1 AS "D", 0.877451 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.975155 AS "P_0", 0.024845 AS "P_1", 0 AS "D", 0.975155 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.048387 AS "P_0", 0.951613 AS "P_1", 1 AS "D", 0.951613 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.969697 AS "P_0", 0.030303 AS "P_1", 0 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.993671 AS "P_0", 0.006329 AS "P_1", 0 AS "D", 0.993671 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.014652 AS "P_0", 0.985348 AS "P_1", 1 AS "D", 0.985348 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.141414 AS "P_0", 0.858586 AS "P_1", 1 AS "D", 0.858586 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.020408 AS "P_0", 0.979592 AS "P_1", 1 AS "D", 0.979592 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.260000 AS "P_0", 0.740000 AS "P_1", 1 AS "D", 0.740000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.229167 AS "P_0", 0.770833 AS "P_1", 1 AS "D", 0.770833 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.128205 AS "P_0", 0.871795 AS "P_1", 1 AS "D", 0.871795 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.060606 AS "P_0", 0.939394 AS "P_1", 1 AS "D", 0.939394 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.032258 AS "P_0", 0.967742 AS "P_1", 1 AS "D", 0.967742 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.060606 AS "P_0", 0.939394 AS "P_1", 1 AS "D", 0.939394 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.008333 AS "P_0", 0.991667 AS "P_1", 1 AS "D", 0.991667 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.031250 AS "P_0", 0.968750 AS "P_1", 1 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.019608 AS "P_0", 0.980392 AS "P_1", 1 AS "D", 0.980392 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.010989 AS "P_0", 0.989011 AS "P_1", 1 AS "D", 0.989011 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_11" AS t1
   LEFT OUTER JOIN
   "DT_node_data_11" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_12" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_17", t1."Leaf_19", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_1" <= 1.500000) AND (t."X_27" > 6.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_1" <= 1.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_1" <= 1.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_29" <= 4.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_1" <= 1.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_29" > 4.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_1" > 1.500000) AND (t."X_20" <= 6.500000) AND (t."X_0" <= 5.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_1" > 1.500000) AND (t."X_20" <= 6.500000) AND (t."X_0" > 5.500000) AND (t."X_1" <= 4.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_1" > 1.500000) AND (t."X_20" <= 6.500000) AND (t."X_0" > 5.500000) AND (t."X_1" > 4.500000) AND (t."X_24" <= 1.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_1" > 1.500000) AND (t."X_20" <= 6.500000) AND (t."X_0" > 5.500000) AND (t."X_1" > 4.500000) AND (t."X_24" > 1.500000) AND (t."X_18" > 3.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_1" > 1.500000) AND (t."X_20" <= 6.500000) AND (t."X_0" > 5.500000) AND (t."X_1" > 4.500000) AND (t."X_24" > 1.500000) AND (t."X_18" <= 3.500000) AND (t."X_29" <= 6.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_1" > 1.500000) AND (t."X_20" <= 6.500000) AND (t."X_0" > 5.500000) AND (t."X_1" > 4.500000) AND (t."X_24" > 1.500000) AND (t."X_18" <= 3.500000) AND (t."X_29" > 6.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_24" > 8.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_24" <= 8.500000) AND (t."X_27" <= 5.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_24" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_28" <= 2.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_24" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_28" > 2.500000) AND (t."X_18" > 2.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_24" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_28" > 2.500000) AND (t."X_18" <= 2.500000) AND (t."X_29" <= 5.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_24" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_28" > 2.500000) AND (t."X_18" <= 2.500000) AND (t."X_29" > 5.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_1" > 1.500000) AND (t."X_20" > 6.500000) AND (t."X_28" > 1.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_1" > 1.500000) AND (t."X_20" > 6.500000) AND (t."X_28" <= 1.500000) AND (t."X_26" <= 4.000000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_1" > 1.500000) AND (t."X_20" > 6.500000) AND (t."X_28" <= 1.500000) AND (t."X_26" > 4.000000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_20" <= 4.500000) AND (t."X_1" <= 6.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_20" <= 4.500000) AND (t."X_1" > 6.500000) AND (t."X_24" <= 5.000000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_20" <= 4.500000) AND (t."X_1" > 6.500000) AND (t."X_24" > 5.000000) AND (t."X_27" <= 3.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_20" <= 4.500000) AND (t."X_1" > 6.500000) AND (t."X_24" > 5.000000) AND (t."X_27" > 3.500000) AND (t."X_28" <= 3.000000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_20" <= 4.500000) AND (t."X_1" > 6.500000) AND (t."X_24" > 5.000000) AND (t."X_27" > 3.500000) AND (t."X_28" > 3.000000)) THEN 48 ELSE NULL END AS "Leaf_48"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.384886 AS "P_0", 0.615114 AS "P_1", 1 AS "D", 0.615114 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.048193 AS "P_0", 0.951807 AS "P_1", 1 AS "D", 0.951807 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.856540 AS "P_0", 0.143460 AS "P_1", 0 AS "D", 0.856540 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.259259 AS "P_0", 0.740741 AS "P_1", 1 AS "D", 0.740741 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.024691 AS "P_0", 0.975309 AS "P_1", 1 AS "D", 0.975309 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.754717 AS "P_0", 0.245283 AS "P_1", 0 AS "D", 0.754717 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.993631 AS "P_0", 0.006369 AS "P_1", 0 AS "D", 0.993631 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.593750 AS "P_0", 0.406250 AS "P_1", 0 AS "D", 0.593750 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.826087 AS "P_0", 0.173913 AS "P_1", 0 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.007143 AS "P_0", 0.992857 AS "P_1", 1 AS "D", 0.992857 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.136364 AS "P_0", 0.863636 AS "P_1", 1 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.035714 AS "P_0", 0.964286 AS "P_1", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_12" AS t1
   LEFT OUTER JOIN
   "DT_node_data_12" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_13" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_14", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_41", t1."Leaf_44", t1."Leaf_46", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50", t1."Leaf_52", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_59", t1."Leaf_61", t1."Leaf_63", t1."Leaf_64" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" > 4.500000) AND (t."X_1" > 5.500000) AND (t."X_19" <= 7.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" > 4.500000) AND (t."X_1" > 5.500000) AND (t."X_19" > 7.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" <= 4.500000) AND (t."X_26" <= 3.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_27" > 6.500000) AND (t."X_19" > 9.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_19" > 4.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_19" <= 4.500000) AND (t."X_26" > 5.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_19" <= 4.500000) AND (t."X_26" <= 5.500000) AND (t."X_1" <= 4.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_19" <= 4.500000) AND (t."X_26" <= 5.500000) AND (t."X_1" > 4.500000) AND (t."X_27" > 5.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_19" <= 4.500000) AND (t."X_26" <= 5.500000) AND (t."X_1" > 4.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" <= 1.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_19" <= 4.500000) AND (t."X_26" <= 5.500000) AND (t."X_1" > 4.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" > 1.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" > 4.500000) AND (t."X_1" <= 5.500000) AND (t."X_26" > 5.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" > 4.500000) AND (t."X_1" <= 5.500000) AND (t."X_26" <= 5.500000) AND (t."X_26" <= 4.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" > 4.500000) AND (t."X_1" <= 5.500000) AND (t."X_26" <= 5.500000) AND (t."X_26" > 4.500000) AND (t."X_1" <= 1.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" > 4.500000) AND (t."X_1" <= 5.500000) AND (t."X_26" <= 5.500000) AND (t."X_26" > 4.500000) AND (t."X_1" > 1.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" <= 4.500000) AND (t."X_26" > 3.500000) AND (t."X_28" > 3.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" <= 4.500000) AND (t."X_26" > 3.500000) AND (t."X_28" <= 3.500000) AND (t."X_28" <= 2.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" <= 4.500000) AND (t."X_26" > 3.500000) AND (t."X_28" <= 3.500000) AND (t."X_28" > 2.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 3.500000) AND (t."X_26" <= 0.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 3.500000) AND (t."X_26" > 0.500000) AND (t."X_1" <= 3.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 3.500000) AND (t."X_26" > 0.500000) AND (t."X_1" > 3.500000) AND (t."X_8" > 2.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 3.500000) AND (t."X_26" > 0.500000) AND (t."X_1" > 3.500000) AND (t."X_8" <= 2.500000) AND (t."X_19" > 5.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 3.500000) AND (t."X_26" > 0.500000) AND (t."X_1" > 3.500000) AND (t."X_8" <= 2.500000) AND (t."X_19" <= 5.500000) AND (t."X_28" > 2.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 3.500000) AND (t."X_26" > 0.500000) AND (t."X_1" > 3.500000) AND (t."X_8" <= 2.500000) AND (t."X_19" <= 5.500000) AND (t."X_28" <= 2.500000) AND (t."X_8" <= 1.500000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 3.500000) AND (t."X_26" > 0.500000) AND (t."X_1" > 3.500000) AND (t."X_8" <= 2.500000) AND (t."X_19" <= 5.500000) AND (t."X_28" <= 2.500000) AND (t."X_8" > 1.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_27" > 6.500000) AND (t."X_19" <= 9.500000) AND (t."X_1" > 2.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_27" > 6.500000) AND (t."X_19" <= 9.500000) AND (t."X_1" <= 2.500000) AND (t."X_7" > 7.500000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_27" > 6.500000) AND (t."X_19" <= 9.500000) AND (t."X_1" <= 2.500000) AND (t."X_7" <= 7.500000) AND (t."X_27" <= 7.500000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_27" > 6.500000) AND (t."X_19" <= 9.500000) AND (t."X_1" <= 2.500000) AND (t."X_7" <= 7.500000) AND (t."X_27" > 7.500000)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" <= 3.500000) AND (t."X_1" <= 6.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" <= 3.500000) AND (t."X_1" > 6.500000) AND (t."X_26" <= 3.500000)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" <= 3.500000) AND (t."X_1" > 6.500000) AND (t."X_26" > 3.500000) AND (t."X_27" <= 3.500000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" <= 3.500000) AND (t."X_1" > 6.500000) AND (t."X_26" > 3.500000) AND (t."X_27" > 3.500000) AND (t."X_26" <= 5.000000)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" <= 3.500000) AND (t."X_1" > 6.500000) AND (t."X_26" > 3.500000) AND (t."X_27" > 3.500000) AND (t."X_26" > 5.000000)) THEN 64 ELSE NULL END AS "Leaf_64"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.430580 AS "P_0", 0.569420 AS "P_1", 1 AS "D", 0.569420 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.058065 AS "P_0", 0.941935 AS "P_1", 1 AS "D", 0.941935 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.876448 AS "P_0", 0.123552 AS "P_1", 0 AS "D", 0.876448 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.517241 AS "P_0", 0.482759 AS "P_1", 0 AS "D", 0.517241 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.980099 AS "P_0", 0.019900 AS "P_1", 0 AS "D", 0.980099 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.080000 AS "P_0", 0.920000 AS "P_1", 1 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.994950 AS "P_0", 0.005051 AS "P_1", 0 AS "D", 0.994950 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.019920 AS "P_0", 0.980080 AS "P_1", 1 AS "D", 0.980080 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.220339 AS "P_0", 0.779661 AS "P_1", 1 AS "D", 0.779661 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.419355 AS "P_0", 0.580645 AS "P_1", 1 AS "D", 0.580645 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.005181 AS "P_0", 0.994819 AS "P_1", 1 AS "D", 0.994819 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.068966 AS "P_0", 0.931035 AS "P_1", 1 AS "D", 0.931035 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.176471 AS "P_0", 0.823529 AS "P_1", 1 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.019608 AS "P_0", 0.980392 AS "P_1", 1 AS "D", 0.980392 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_13" AS t1
   LEFT OUTER JOIN
   "DT_node_data_13" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_14" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" > 7.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_23" <= 6.500000) AND (t."X_24" <= 5.500000) AND (t."X_28" > 5.500000) AND (t."X_29" > 4.000000) AND (t."X_7" <= 7.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_23" <= 6.500000) AND (t."X_24" <= 5.500000) AND (t."X_28" > 5.500000) AND (t."X_29" > 4.000000) AND (t."X_7" > 7.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_23" <= 6.500000) AND (t."X_24" <= 5.500000) AND (t."X_28" > 5.500000) AND (t."X_29" <= 4.000000) AND (t."X_24" <= 2.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_23" <= 6.500000) AND (t."X_24" <= 5.500000) AND (t."X_28" > 5.500000) AND (t."X_29" <= 4.000000) AND (t."X_24" > 2.500000) AND (t."X_24" <= 3.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_23" <= 6.500000) AND (t."X_24" <= 5.500000) AND (t."X_28" > 5.500000) AND (t."X_29" <= 4.000000) AND (t."X_24" > 2.500000) AND (t."X_24" > 3.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_23" <= 6.500000) AND (t."X_24" <= 5.500000) AND (t."X_28" <= 5.500000) AND (t."X_26" <= 5.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_23" <= 6.500000) AND (t."X_24" <= 5.500000) AND (t."X_28" <= 5.500000) AND (t."X_26" > 5.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_23" <= 6.500000) AND (t."X_24" > 5.500000) AND (t."X_29" > 6.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_23" <= 6.500000) AND (t."X_24" > 5.500000) AND (t."X_29" <= 6.000000) AND (t."X_6" <= 6.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_23" <= 6.500000) AND (t."X_24" > 5.500000) AND (t."X_29" <= 6.000000) AND (t."X_6" > 6.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_27" > 5.500000) AND (t."X_1" > 6.000000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_27" > 5.500000) AND (t."X_1" <= 6.000000) AND (t."X_28" <= 7.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_27" > 5.500000) AND (t."X_1" <= 6.000000) AND (t."X_28" > 7.500000) AND (t."X_6" <= 5.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_27" > 5.500000) AND (t."X_1" <= 6.000000) AND (t."X_28" > 7.500000) AND (t."X_6" > 5.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_23" > 6.500000) AND (t."X_27" > 3.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_23" > 6.500000) AND (t."X_27" <= 3.500000) AND (t."X_29" <= 0.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_23" > 6.500000) AND (t."X_27" <= 3.500000) AND (t."X_29" > 0.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" <= 0.500000) AND (t."X_1" <= 3.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" <= 0.500000) AND (t."X_1" > 3.500000) AND (t."X_24" > 1.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" <= 0.500000) AND (t."X_1" > 3.500000) AND (t."X_24" <= 1.500000) AND (t."X_3" <= 5.000000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" <= 0.500000) AND (t."X_1" > 3.500000) AND (t."X_24" <= 1.500000) AND (t."X_3" > 5.000000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" > 0.500000) AND (t."X_1" <= 6.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" > 0.500000) AND (t."X_1" > 6.500000) AND (t."X_27" <= 3.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" > 0.500000) AND (t."X_1" > 6.500000) AND (t."X_27" > 3.500000) AND (t."X_27" > 4.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" > 0.500000) AND (t."X_1" > 6.500000) AND (t."X_27" > 3.500000) AND (t."X_27" <= 4.500000) AND (t."X_0" <= 2.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" > 0.500000) AND (t."X_1" > 6.500000) AND (t."X_27" > 3.500000) AND (t."X_27" <= 4.500000) AND (t."X_0" > 2.500000)) THEN 52 ELSE NULL END AS "Leaf_52"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.386643 AS "P_0", 0.613357 AS "P_1", 1 AS "D", 0.613357 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.065527 AS "P_0", 0.934473 AS "P_1", 1 AS "D", 0.934473 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.903670 AS "P_0", 0.096330 AS "P_1", 0 AS "D", 0.903670 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.035294 AS "P_0", 0.964706 AS "P_1", 1 AS "D", 0.964706 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.993976 AS "P_0", 0.006024 AS "P_1", 0 AS "D", 0.993976 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.240000 AS "P_0", 0.760000 AS "P_1", 1 AS "D", 0.760000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.962963 AS "P_0", 0.037037 AS "P_1", 0 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.015974 AS "P_0", 0.984026 AS "P_1", 1 AS "D", 0.984026 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.259259 AS "P_0", 0.740741 AS "P_1", 1 AS "D", 0.740741 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.047619 AS "P_0", 0.952381 AS "P_1", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.129032 AS "P_0", 0.870968 AS "P_1", 1 AS "D", 0.870968 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.003546 AS "P_0", 0.996454 AS "P_1", 1 AS "D", 0.996454 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.018182 AS "P_0", 0.981818 AS "P_1", 1 AS "D", 0.981818 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_14" AS t1
   LEFT OUTER JOIN
   "DT_node_data_14" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_15" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_19", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" > 7.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 7.500000) AND (t."X_1" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_0" > 6.500000) AND (t."X_1" <= 4.500000) AND (t."X_9" <= 3.000000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_0" > 6.500000) AND (t."X_1" <= 4.500000) AND (t."X_9" > 3.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 7.500000) AND (t."X_1" <= 7.500000) AND (t."X_14" > 5.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 7.500000) AND (t."X_1" <= 7.500000) AND (t."X_14" <= 5.500000) AND (t."X_15" > 4.500000) AND (t."X_28" <= 4.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 7.500000) AND (t."X_1" <= 7.500000) AND (t."X_14" <= 5.500000) AND (t."X_15" > 4.500000) AND (t."X_28" > 4.500000) AND (t."X_1" > 5.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 7.500000) AND (t."X_1" <= 7.500000) AND (t."X_14" <= 5.500000) AND (t."X_15" > 4.500000) AND (t."X_28" > 4.500000) AND (t."X_1" <= 5.000000) AND (t."X_9" > 5.000000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 7.500000) AND (t."X_1" <= 7.500000) AND (t."X_14" <= 5.500000) AND (t."X_15" > 4.500000) AND (t."X_28" > 4.500000) AND (t."X_1" <= 5.000000) AND (t."X_9" <= 5.000000) AND (t."X_14" <= 3.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 7.500000) AND (t."X_1" <= 7.500000) AND (t."X_14" <= 5.500000) AND (t."X_15" > 4.500000) AND (t."X_28" > 4.500000) AND (t."X_1" <= 5.000000) AND (t."X_9" <= 5.000000) AND (t."X_14" > 3.000000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 7.500000) AND (t."X_1" <= 7.500000) AND (t."X_14" <= 5.500000) AND (t."X_15" <= 4.500000) AND (t."X_1" <= 6.000000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 7.500000) AND (t."X_1" <= 7.500000) AND (t."X_14" <= 5.500000) AND (t."X_15" <= 4.500000) AND (t."X_1" > 6.000000) AND (t."X_25" <= 5.000000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 7.500000) AND (t."X_1" <= 7.500000) AND (t."X_14" <= 5.500000) AND (t."X_15" <= 4.500000) AND (t."X_1" > 6.000000) AND (t."X_25" > 5.000000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_0" > 6.500000) AND (t."X_1" > 4.500000) AND (t."X_14" > 0.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_0" > 6.500000) AND (t."X_1" > 4.500000) AND (t."X_14" <= 0.500000) AND (t."X_28" <= 2.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_0" > 6.500000) AND (t."X_1" > 4.500000) AND (t."X_14" <= 0.500000) AND (t."X_28" > 2.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" > 6.500000) AND (t."X_0" <= 1.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" > 6.500000) AND (t."X_0" > 1.500000) AND (t."X_1" <= 1.500000) AND (t."X_14" <= 3.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" > 6.500000) AND (t."X_0" > 1.500000) AND (t."X_1" <= 1.500000) AND (t."X_14" > 3.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_0" <= 6.500000) AND (t."X_27" <= 4.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_0" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 3.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_0" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_29" <= 3.500000) AND (t."X_26" <= 4.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_0" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_29" <= 3.500000) AND (t."X_26" > 4.500000) AND (t."X_28" <= 0.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_27" <= 5.500000) AND (t."X_0" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_29" <= 3.500000) AND (t."X_26" > 4.500000) AND (t."X_28" > 0.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" > 6.500000) AND (t."X_0" > 1.500000) AND (t."X_1" > 1.500000) AND (t."X_1" > 2.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" > 6.500000) AND (t."X_0" > 1.500000) AND (t."X_1" > 1.500000) AND (t."X_1" <= 2.500000) AND (t."X_10" <= 4.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_27" > 5.500000) AND (t."X_27" > 6.500000) AND (t."X_0" > 1.500000) AND (t."X_1" > 1.500000) AND (t."X_1" <= 2.500000) AND (t."X_10" > 4.500000)) THEN 52 ELSE NULL END AS "Leaf_52"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.362039 AS "P_0", 0.637961 AS "P_1", 1 AS "D", 0.637961 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.059155 AS "P_0", 0.940845 AS "P_1", 1 AS "D", 0.940845 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.864486 AS "P_0", 0.135514 AS "P_1", 0 AS "D", 0.864486 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.520833 AS "P_0", 0.479167 AS "P_1", 0 AS "D", 0.520833 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.963855 AS "P_0", 0.036145 AS "P_1", 0 AS "D", 0.963855 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.394737 AS "P_0", 0.605263 AS "P_1", 1 AS "D", 0.605263 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.258065 AS "P_0", 0.741935 AS "P_1", 1 AS "D", 0.741935 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.014925 AS "P_0", 0.985075 AS "P_1", 1 AS "D", 0.985075 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.380952 AS "P_0", 0.619048 AS "P_1", 1 AS "D", 0.619048 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.583333 AS "P_0", 0.416667 AS "P_1", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.981595 AS "P_0", 0.018405 AS "P_1", 0 AS "D", 0.981595 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.993750 AS "P_0", 0.006250 AS "P_1", 0 AS "D", 0.993750 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.106383 AS "P_0", 0.893617 AS "P_1", 1 AS "D", 0.893617 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_15" AS t1
   LEFT OUTER JOIN
   "DT_node_data_15" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_16" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_7", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_24" <= 5.500000) AND (t."X_28" <= 3.000000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_24" > 5.500000) AND (t."X_28" <= 3.500000) AND (t."X_29" <= 7.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_24" > 5.500000) AND (t."X_28" <= 3.500000) AND (t."X_29" > 7.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_24" > 5.500000) AND (t."X_28" > 3.500000) AND (t."X_26" <= 5.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_24" > 5.500000) AND (t."X_28" > 3.500000) AND (t."X_26" > 5.500000) AND (t."X_0" <= 0.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_24" <= 5.500000) AND (t."X_28" > 3.000000) AND (t."X_27" <= 6.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_24" <= 5.500000) AND (t."X_28" > 3.000000) AND (t."X_27" > 6.500000) AND (t."X_29" <= 7.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_24" <= 5.500000) AND (t."X_28" > 3.000000) AND (t."X_27" > 6.500000) AND (t."X_29" > 7.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_28" <= 2.500000) AND (t."X_27" > 6.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_28" <= 2.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" > 2.500000) AND (t."X_25" <= 4.000000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_28" <= 2.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" > 2.500000) AND (t."X_25" > 4.000000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_28" <= 2.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" <= 2.500000) AND (t."X_29" > 0.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_28" <= 2.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" <= 2.500000) AND (t."X_29" <= 0.500000) AND (t."X_27" <= 5.000000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_28" <= 2.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" <= 2.500000) AND (t."X_29" <= 0.500000) AND (t."X_27" > 5.000000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_28" > 2.500000) AND (t."X_26" <= 3.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_0" > 6.500000) AND (t."X_28" > 2.500000) AND (t."X_26" > 3.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_24" > 5.500000) AND (t."X_28" > 3.500000) AND (t."X_26" > 5.500000) AND (t."X_0" > 0.500000) AND (t."X_27" > 6.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_24" > 5.500000) AND (t."X_28" > 3.500000) AND (t."X_26" > 5.500000) AND (t."X_0" > 0.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" > 3.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_24" > 5.500000) AND (t."X_28" > 3.500000) AND (t."X_26" > 5.500000) AND (t."X_0" > 0.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 3.500000) AND (t."X_29" <= 8.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_24" > 5.500000) AND (t."X_28" > 3.500000) AND (t."X_26" > 5.500000) AND (t."X_0" > 0.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 3.500000) AND (t."X_29" > 8.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 2.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_29" <= 2.500000) AND (t."X_1" <= 4.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_29" <= 2.500000) AND (t."X_1" > 4.500000) AND (t."X_26" <= 3.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_29" <= 2.500000) AND (t."X_1" > 4.500000) AND (t."X_26" > 3.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 5.500000) AND (t."X_29" <= 2.000000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" > 5.500000) AND (t."X_29" > 2.000000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" <= 5.500000) AND (t."X_27" <= 1.500000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" <= 5.500000) AND (t."X_27" > 1.500000) AND (t."X_25" <= 0.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 0.500000) AND (t."X_0" <= 5.500000) AND (t."X_27" > 1.500000) AND (t."X_25" > 0.500000)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" > 0.500000) AND (t."X_1" <= 6.500000)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" > 0.500000) AND (t."X_1" > 6.500000) AND (t."X_27" <= 3.500000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_0" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" > 0.500000) AND (t."X_1" > 6.500000) AND (t."X_27" > 3.500000)) THEN 62 ELSE NULL END AS "Leaf_62"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.393673 AS "P_0", 0.606327 AS "P_1", 1 AS "D", 0.606327 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.139949 AS "P_0", 0.860051 AS "P_1", 1 AS "D", 0.860051 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.960227 AS "P_0", 0.039773 AS "P_1", 0 AS "D", 0.960227 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.024691 AS "P_0", 0.975309 AS "P_1", 1 AS "D", 0.975309 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.681159 AS "P_0", 0.318841 AS "P_1", 0 AS "D", 0.681159 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.849057 AS "P_0", 0.150943 AS "P_1", 0 AS "D", 0.849057 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.977778 AS "P_0", 0.022222 AS "P_1", 0 AS "D", 0.977778 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.793103 AS "P_0", 0.206897 AS "P_1", 0 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.993197 AS "P_0", 0.006803 AS "P_1", 0 AS "D", 0.993197 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.011070 AS "P_0", 0.988930 AS "P_1", 1 AS "D", 0.988930 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.094340 AS "P_0", 0.905660 AS "P_1", 1 AS "D", 0.905660 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.064516 AS "P_0", 0.935484 AS "P_1", 1 AS "D", 0.935484 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.004167 AS "P_0", 0.995833 AS "P_1", 1 AS "D", 0.995833 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.035714 AS "P_0", 0.964286 AS "P_1", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.021739 AS "P_0", 0.978261 AS "P_1", 1 AS "D", 0.978261 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_16" AS t1
   LEFT OUTER JOIN
   "DT_node_data_16" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_17" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_8", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_44", t1."Leaf_46", t1."Leaf_48", t1."Leaf_50", t1."Leaf_51", t1."Leaf_54", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58", t1."Leaf_60", t1."Leaf_62", t1."Leaf_67", t1."Leaf_68", t1."Leaf_69", t1."Leaf_72", t1."Leaf_73", t1."Leaf_74", t1."Leaf_76", t1."Leaf_77", t1."Leaf_79", t1."Leaf_81", t1."Leaf_82" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" > 5.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_29" <= 4.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 4.500000) AND (t."X_22" <= 6.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_29" > 4.500000) AND (t."X_22" > 6.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" > 8.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_15" <= 7.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_15" > 7.500000) AND (t."X_18" <= 7.000000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_15" > 7.500000) AND (t."X_18" > 7.000000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" > 6.500000) AND (t."X_28" <= 3.500000) AND (t."X_22" <= 6.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" > 6.500000) AND (t."X_28" <= 3.500000) AND (t."X_22" > 6.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" > 6.500000) AND (t."X_28" > 3.500000) AND (t."X_23" <= 4.500000) AND (t."X_21" <= 8.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" > 6.500000) AND (t."X_28" > 3.500000) AND (t."X_23" <= 4.500000) AND (t."X_21" > 8.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_15" <= 4.500000) AND (t."X_0" <= 5.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_15" <= 4.500000) AND (t."X_0" > 5.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_15" > 4.500000) AND (t."X_23" <= 4.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_15" > 4.500000) AND (t."X_23" > 4.500000) AND (t."X_0" > 6.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_15" > 4.500000) AND (t."X_23" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_18" <= 3.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_15" > 4.500000) AND (t."X_23" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_18" > 3.500000) AND (t."X_19" <= 5.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_15" > 4.500000) AND (t."X_23" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_18" > 3.500000) AND (t."X_19" > 5.500000) AND (t."X_19" <= 7.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_15" > 4.500000) AND (t."X_23" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_18" > 3.500000) AND (t."X_19" > 5.500000) AND (t."X_19" > 7.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" > 6.500000) AND (t."X_28" > 3.500000) AND (t."X_23" > 4.500000) AND (t."X_23" > 6.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" > 6.500000) AND (t."X_28" > 3.500000) AND (t."X_23" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_28" > 7.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" > 6.500000) AND (t."X_28" > 3.500000) AND (t."X_23" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_18" > 5.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" > 6.500000) AND (t."X_28" > 3.500000) AND (t."X_23" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_18" <= 5.500000) AND (t."X_22" > 6.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" > 6.500000) AND (t."X_28" > 3.500000) AND (t."X_23" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_18" <= 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_19" <= 5.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" > 6.500000) AND (t."X_28" > 3.500000) AND (t."X_23" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_18" <= 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_19" > 5.500000) AND (t."X_15" > 8.500000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" > 6.500000) AND (t."X_28" > 3.500000) AND (t."X_23" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_18" <= 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_19" > 5.500000) AND (t."X_15" <= 8.500000) AND (t."X_18" <= 2.500000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" > 6.500000) AND (t."X_28" > 3.500000) AND (t."X_23" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_18" <= 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_19" > 5.500000) AND (t."X_15" <= 8.500000) AND (t."X_18" > 2.500000) AND (t."X_0" <= 4.000000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_26" > 4.500000) AND (t."X_26" > 6.500000) AND (t."X_28" > 3.500000) AND (t."X_23" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_18" <= 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_19" > 5.500000) AND (t."X_15" <= 8.500000) AND (t."X_18" > 2.500000) AND (t."X_0" > 4.000000)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_26" <= 4.500000) AND (t."X_15" > 3.500000)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_26" <= 4.500000) AND (t."X_15" <= 3.500000) AND (t."X_23" > 6.500000)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_26" <= 4.500000) AND (t."X_15" <= 3.500000) AND (t."X_23" <= 6.500000) AND (t."X_1" > 6.500000) AND (t."X_23" > 5.500000) AND (t."X_28" <= 5.000000)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_26" <= 4.500000) AND (t."X_15" <= 3.500000) AND (t."X_23" <= 6.500000) AND (t."X_1" > 6.500000) AND (t."X_23" > 5.500000) AND (t."X_28" > 5.000000)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_26" <= 4.500000) AND (t."X_15" <= 3.500000) AND (t."X_23" <= 6.500000) AND (t."X_1" > 6.500000) AND (t."X_23" <= 5.500000) AND (t."X_23" <= 3.500000)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_26" <= 4.500000) AND (t."X_15" <= 3.500000) AND (t."X_23" <= 6.500000) AND (t."X_1" > 6.500000) AND (t."X_23" <= 5.500000) AND (t."X_23" > 3.500000) AND (t."X_28" > 4.500000)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_26" <= 4.500000) AND (t."X_15" <= 3.500000) AND (t."X_23" <= 6.500000) AND (t."X_1" > 6.500000) AND (t."X_23" <= 5.500000) AND (t."X_23" > 3.500000) AND (t."X_28" <= 4.500000) AND (t."X_24" <= 0.500000)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_26" <= 4.500000) AND (t."X_15" <= 3.500000) AND (t."X_23" <= 6.500000) AND (t."X_1" > 6.500000) AND (t."X_23" <= 5.500000) AND (t."X_23" > 3.500000) AND (t."X_28" <= 4.500000) AND (t."X_24" > 0.500000)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_26" <= 4.500000) AND (t."X_15" <= 3.500000) AND (t."X_23" <= 6.500000) AND (t."X_1" <= 6.500000) AND (t."X_28" > 0.500000)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_26" <= 4.500000) AND (t."X_15" <= 3.500000) AND (t."X_23" <= 6.500000) AND (t."X_1" <= 6.500000) AND (t."X_28" <= 0.500000) AND (t."X_18" <= 2.500000)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_26" <= 4.500000) AND (t."X_15" <= 3.500000) AND (t."X_23" <= 6.500000) AND (t."X_1" <= 6.500000) AND (t."X_28" <= 0.500000) AND (t."X_18" > 2.500000) AND (t."X_15" <= 0.500000)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_26" <= 4.500000) AND (t."X_15" <= 3.500000) AND (t."X_23" <= 6.500000) AND (t."X_1" <= 6.500000) AND (t."X_28" <= 0.500000) AND (t."X_18" > 2.500000) AND (t."X_15" > 0.500000) AND (t."X_26" <= 0.500000)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_26" <= 4.500000) AND (t."X_15" <= 3.500000) AND (t."X_23" <= 6.500000) AND (t."X_1" <= 6.500000) AND (t."X_28" <= 0.500000) AND (t."X_18" > 2.500000) AND (t."X_15" > 0.500000) AND (t."X_26" > 0.500000)) THEN 82 ELSE NULL END AS "Leaf_82"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.404218 AS "P_0", 0.595782 AS "P_1", 1 AS "D", 0.595782 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.060498 AS "P_0", 0.939502 AS "P_1", 1 AS "D", 0.939502 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.739583 AS "P_0", 0.260417 AS "P_1", 0 AS "D", 0.739583 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.541667 AS "P_0", 0.458333 AS "P_1", 0 AS "D", 0.541667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.880952 AS "P_0", 0.119048 AS "P_1", 0 AS "D", 0.880952 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.237288 AS "P_0", 0.762712 AS "P_1", 1 AS "D", 0.762712 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.836066 AS "P_0", 0.163934 AS "P_1", 0 AS "D", 0.836066 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.466667 AS "P_0", 0.533333 AS "P_1", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.235294 AS "P_0", 0.764706 AS "P_1", 1 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.925170 AS "P_0", 0.074830 AS "P_1", 0 AS "D", 0.925170 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.957143 AS "P_0", 0.042857 AS "P_1", 0 AS "D", 0.957143 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.897436 AS "P_0", 0.102564 AS "P_1", 0 AS "D", 0.897436 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.945946 AS "P_0", 0.054054 AS "P_1", 0 AS "D", 0.945946 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.877551 AS "P_0", 0.122449 AS "P_1", 0 AS "D", 0.877551 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.092391 AS "P_0", 0.907609 AS "P_1", 1 AS "D", 0.907609 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.045714 AS "P_0", 0.954286 AS "P_1", 1 AS "D", 0.954286 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.014286 AS "P_0", 0.985714 AS "P_1", 1 AS "D", 0.985714 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.171429 AS "P_0", 0.828571 AS "P_1", 1 AS "D", 0.828571 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_17" AS t1
   LEFT OUTER JOIN
   "DT_node_data_17" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_18" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_40", t1."Leaf_41", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_50", t1."Leaf_51", t1."Leaf_53", t1."Leaf_54" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_1" > 3.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_1" <= 3.500000) AND (t."X_28" <= 7.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_1" <= 3.500000) AND (t."X_28" > 7.500000) AND (t."X_17" > 8.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_1" <= 3.500000) AND (t."X_28" > 7.500000) AND (t."X_17" <= 8.500000) AND (t."X_8" <= 7.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_1" <= 3.500000) AND (t."X_28" > 7.500000) AND (t."X_17" <= 8.500000) AND (t."X_8" > 7.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_26" > 3.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_26" <= 3.000000) AND (t."X_7" <= 4.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_26" <= 3.000000) AND (t."X_7" > 4.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 5.500000) AND (t."X_1" > 5.500000) AND (t."X_7" > 5.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 5.500000) AND (t."X_1" > 5.500000) AND (t."X_7" <= 5.500000) AND (t."X_2" <= 5.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 5.500000) AND (t."X_1" > 5.500000) AND (t."X_7" <= 5.500000) AND (t."X_2" > 5.500000) AND (t."X_4" <= 1.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 5.500000) AND (t."X_1" > 5.500000) AND (t."X_7" <= 5.500000) AND (t."X_2" > 5.500000) AND (t."X_4" > 1.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 5.500000) AND (t."X_1" <= 5.500000) AND (t."X_4" <= 7.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 5.500000) AND (t."X_1" <= 5.500000) AND (t."X_4" > 7.500000) AND (t."X_26" <= 5.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 5.500000) AND (t."X_1" <= 5.500000) AND (t."X_4" > 7.500000) AND (t."X_26" > 5.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 5.500000) AND (t."X_27" > 5.500000) AND (t."X_1" <= 6.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 5.500000) AND (t."X_27" > 5.500000) AND (t."X_1" > 6.500000) AND (t."X_7" <= 4.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 5.500000) AND (t."X_27" > 5.500000) AND (t."X_1" > 6.500000) AND (t."X_7" > 4.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 5.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" > 5.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 5.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" <= 5.500000) AND (t."X_1" <= 3.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 5.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" <= 5.500000) AND (t."X_1" > 3.500000) AND (t."X_29" > 1.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 5.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" <= 5.500000) AND (t."X_1" > 3.500000) AND (t."X_29" <= 1.500000) AND (t."X_27" <= 1.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 5.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" <= 5.500000) AND (t."X_1" > 3.500000) AND (t."X_29" <= 1.500000) AND (t."X_27" > 1.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 5.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" > 0.500000) AND (t."X_27" <= 3.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 5.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" > 0.500000) AND (t."X_27" > 3.500000) AND (t."X_7" > 3.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 5.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" > 0.500000) AND (t."X_27" > 3.500000) AND (t."X_7" <= 3.500000) AND (t."X_1" <= 5.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 5.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" > 0.500000) AND (t."X_27" > 3.500000) AND (t."X_7" <= 3.500000) AND (t."X_1" > 5.500000) AND (t."X_29" <= 6.500000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 5.500000) AND (t."X_27" <= 5.500000) AND (t."X_28" > 0.500000) AND (t."X_27" > 3.500000) AND (t."X_7" <= 3.500000) AND (t."X_1" > 5.500000) AND (t."X_29" > 6.500000)) THEN 54 ELSE NULL END AS "Leaf_54"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.405975 AS "P_0", 0.594025 AS "P_1", 1 AS "D", 0.594025 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.134021 AS "P_0", 0.865979 AS "P_1", 1 AS "D", 0.865979 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.988950 AS "P_0", 0.011050 AS "P_1", 0 AS "D", 0.988950 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.739130 AS "P_0", 0.260870 AS "P_1", 0 AS "D", 0.739130 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
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
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.029801 AS "P_0", 0.970199 AS "P_1", 1 AS "D", 0.970199 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.225000 AS "P_0", 0.775000 AS "P_1", 1 AS "D", 0.775000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.037037 AS "P_0", 0.962963 AS "P_1", 1 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.017606 AS "P_0", 0.982394 AS "P_1", 1 AS "D", 0.982394 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.130435 AS "P_0", 0.869565 AS "P_1", 1 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.007663 AS "P_0", 0.992337 AS "P_1", 1 AS "D", 0.992337 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.028169 AS "P_0", 0.971831 AS "P_1", 1 AS "D", 0.971831 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.105263 AS "P_0", 0.894737 AS "P_1", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_18" AS t1
   LEFT OUTER JOIN
   "DT_node_data_18" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_19" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_33", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_50", t1."Leaf_52", t1."Leaf_53", t1."Leaf_54", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_62", t1."Leaf_63", t1."Leaf_64" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" > 8.500000) AND (t."X_6" <= 7.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" > 8.500000) AND (t."X_6" > 7.500000) AND (t."X_29" <= 6.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" > 8.500000) AND (t."X_6" > 7.500000) AND (t."X_29" > 6.500000) AND (t."X_8" > 8.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" > 8.500000) AND (t."X_6" > 7.500000) AND (t."X_29" > 6.500000) AND (t."X_8" <= 8.500000) AND (t."X_29" <= 9.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" > 8.500000) AND (t."X_6" > 7.500000) AND (t."X_29" > 6.500000) AND (t."X_8" <= 8.500000) AND (t."X_29" > 9.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" <= 8.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" <= 1.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" <= 8.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" > 1.000000) AND (t."X_9" > 3.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" <= 8.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" > 1.000000) AND (t."X_9" <= 3.500000) AND (t."X_27" <= 4.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" <= 8.500000) AND (t."X_27" <= 5.500000) AND (t."X_29" > 1.000000) AND (t."X_9" <= 3.500000) AND (t."X_27" > 4.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_1" <= 2.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_1" > 2.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" > 6.500000) AND (t."X_1" <= 3.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" > 6.500000) AND (t."X_1" > 3.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_6" <= 6.500000) AND (t."X_19" > 7.500000) AND (t."X_8" <= 7.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_6" <= 6.500000) AND (t."X_19" > 7.500000) AND (t."X_8" > 7.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_6" <= 6.500000) AND (t."X_19" <= 7.500000) AND (t."X_10" <= 1.500000) AND (t."X_29" <= 6.000000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_6" <= 6.500000) AND (t."X_19" <= 7.500000) AND (t."X_10" <= 1.500000) AND (t."X_29" > 6.000000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_6" <= 6.500000) AND (t."X_19" <= 7.500000) AND (t."X_10" > 1.500000) AND (t."X_0" > 5.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_6" <= 6.500000) AND (t."X_19" <= 7.500000) AND (t."X_10" > 1.500000) AND (t."X_0" <= 5.500000) AND (t."X_24" <= 4.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_6" <= 6.500000) AND (t."X_19" <= 7.500000) AND (t."X_10" > 1.500000) AND (t."X_0" <= 5.500000) AND (t."X_24" > 4.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_19" <= 1.500000) AND (t."X_1" <= 4.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_19" <= 1.500000) AND (t."X_1" > 4.500000) AND (t."X_25" <= 3.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_19" <= 1.500000) AND (t."X_1" > 4.500000) AND (t."X_25" > 3.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_6" > 6.500000) AND (t."X_0" > 5.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_6" > 6.500000) AND (t."X_0" <= 5.500000) AND (t."X_24" > 8.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_6" > 6.500000) AND (t."X_0" <= 5.500000) AND (t."X_24" <= 8.500000) AND (t."X_8" <= 8.000000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_19" <= 8.500000) AND (t."X_27" > 5.500000) AND (t."X_6" > 6.500000) AND (t."X_0" <= 5.500000) AND (t."X_24" <= 8.500000) AND (t."X_8" > 8.000000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_19" > 1.500000) AND (t."X_27" > 5.500000) AND (t."X_25" <= 3.000000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_19" > 1.500000) AND (t."X_27" > 5.500000) AND (t."X_25" > 3.000000)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_19" > 1.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" <= 3.500000)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_19" > 1.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" > 3.500000) AND (t."X_19" > 3.500000)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_19" > 1.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" > 3.500000) AND (t."X_19" <= 3.500000) AND (t."X_9" <= 3.500000)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_19" > 1.500000) AND (t."X_27" <= 5.500000) AND (t."X_27" > 3.500000) AND (t."X_19" <= 3.500000) AND (t."X_9" > 3.500000)) THEN 64 ELSE NULL END AS "Leaf_64"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.391916 AS "P_0", 0.608084 AS "P_1", 1 AS "D", 0.608084 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.080000 AS "P_0", 0.920000 AS "P_1", 1 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.807377 AS "P_0", 0.192623 AS "P_1", 0 AS "D", 0.807377 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.872146 AS "P_0", 0.127854 AS "P_1", 0 AS "D", 0.872146 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.240000 AS "P_0", 0.760000 AS "P_1", 1 AS "D", 0.760000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.160000 AS "P_0", 0.840000 AS "P_1", 1 AS "D", 0.840000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.963918 AS "P_0", 0.036082 AS "P_1", 0 AS "D", 0.963918 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.056962 AS "P_0", 0.943038 AS "P_1", 1 AS "D", 0.943038 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.023490 AS "P_0", 0.976510 AS "P_1", 1 AS "D", 0.976510 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.611111 AS "P_0", 0.388889 AS "P_1", 0 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.842105 AS "P_0", 0.157895 AS "P_1", 0 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.993590 AS "P_0", 0.006410 AS "P_1", 0 AS "D", 0.993590 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.911765 AS "P_0", 0.088235 AS "P_1", 0 AS "D", 0.911765 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.965517 AS "P_0", 0.034483 AS "P_1", 0 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.069444 AS "P_0", 0.930556 AS "P_1", 1 AS "D", 0.930556 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.008850 AS "P_0", 0.991150 AS "P_1", 1 AS "D", 0.991150 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.263158 AS "P_0", 0.736842 AS "P_1", 1 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.004608 AS "P_0", 0.995392 AS "P_1", 1 AS "D", 0.995392 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.022222 AS "P_0", 0.977778 AS "P_1", 1 AS "D", 0.977778 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_19" AS t1
   LEFT OUTER JOIN
   "DT_node_data_19" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_20" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_23" > 6.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_28" > 5.500000) AND (t."X_26" <= 5.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_28" > 5.500000) AND (t."X_26" > 5.500000) AND (t."X_0" <= 5.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_28" > 5.500000) AND (t."X_26" > 5.500000) AND (t."X_0" > 5.500000) AND (t."X_29" <= 7.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_28" > 5.500000) AND (t."X_26" > 5.500000) AND (t."X_0" > 5.500000) AND (t."X_29" > 7.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_28" <= 5.500000) AND (t."X_23" <= 5.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_28" <= 5.500000) AND (t."X_23" > 5.500000) AND (t."X_15" <= 4.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_28" <= 5.500000) AND (t."X_23" > 5.500000) AND (t."X_15" > 4.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_23" <= 5.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_23" > 5.500000) AND (t."X_1" <= 4.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" > 4.500000) AND (t."X_23" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_23" > 5.500000) AND (t."X_1" > 4.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_23" <= 1.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_23" > 1.500000) AND (t."X_1" > 1.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_23" > 1.500000) AND (t."X_1" <= 1.500000) AND (t."X_0" <= 6.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_23" > 1.500000) AND (t."X_1" <= 1.500000) AND (t."X_0" > 6.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" > 4.500000) AND (t."X_0" > 7.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 7.500000) AND (t."X_15" > 1.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 7.500000) AND (t."X_15" <= 1.500000) AND (t."X_0" <= 4.000000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 7.500000) AND (t."X_15" <= 1.500000) AND (t."X_0" > 4.000000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" <= 4.500000) AND (t."X_1" <= 7.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" <= 4.500000) AND (t."X_1" > 7.500000) AND (t."X_26" > 2.500000) AND (t."X_29" <= 5.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" <= 4.500000) AND (t."X_1" > 7.500000) AND (t."X_26" > 2.500000) AND (t."X_29" > 5.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" <= 4.500000) AND (t."X_1" > 7.500000) AND (t."X_26" <= 2.500000) AND (t."X_0" <= 5.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" <= 4.500000) AND (t."X_1" > 7.500000) AND (t."X_26" <= 2.500000) AND (t."X_0" > 5.500000) AND (t."X_24" <= 0.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_27" <= 4.500000) AND (t."X_1" > 7.500000) AND (t."X_26" <= 2.500000) AND (t."X_0" > 5.500000) AND (t."X_24" > 0.500000)) THEN 48 ELSE NULL END AS "Leaf_48"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.356766 AS "P_0", 0.643234 AS "P_1", 1 AS "D", 0.643234 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.097257 AS "P_0", 0.902743 AS "P_1", 1 AS "D", 0.902743 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.976190 AS "P_0", 0.023810 AS "P_1", 0 AS "D", 0.976190 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.024561 AS "P_0", 0.975439 AS "P_1", 1 AS "D", 0.975439 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.275862 AS "P_0", 0.724138 AS "P_1", 1 AS "D", 0.724138 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.115789 AS "P_0", 0.884211 AS "P_1", 1 AS "D", 0.884211 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.029851 AS "P_0", 0.970149 AS "P_1", 1 AS "D", 0.970149 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.321429 AS "P_0", 0.678571 AS "P_1", 1 AS "D", 0.678571 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.470588 AS "P_0", 0.529412 AS "P_1", 1 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.982036 AS "P_0", 0.017964 AS "P_1", 0 AS "D", 0.982036 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.008163 AS "P_0", 0.991837 AS "P_1", 1 AS "D", 0.991837 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.054054 AS "P_0", 0.945946 AS "P_1", 1 AS "D", 0.945946 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.080000 AS "P_0", 0.920000 AS "P_1", 1 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_20" AS t1
   LEFT OUTER JOIN
   "DT_node_data_20" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_21" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" > 7.500000) AND (t."X_2" <= 2.000000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" > 7.500000) AND (t."X_2" > 2.000000) AND (t."X_28" <= 3.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" > 7.500000) AND (t."X_2" > 2.000000) AND (t."X_28" > 3.500000) AND (t."X_8" <= 3.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_26" > 4.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_16" <= 2.500000) AND (t."X_29" <= 0.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_16" <= 2.500000) AND (t."X_29" > 0.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_16" > 2.500000) AND (t."X_8" <= 6.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_20" > 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_16" > 2.500000) AND (t."X_8" > 6.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_25" <= 3.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_25" > 3.500000) AND (t."X_29" <= 2.500000) AND (t."X_17" > 5.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_25" > 3.500000) AND (t."X_29" <= 2.500000) AND (t."X_17" <= 5.500000) AND (t."X_8" <= 4.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_25" > 3.500000) AND (t."X_29" <= 2.500000) AND (t."X_17" <= 5.500000) AND (t."X_8" > 4.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_25" > 3.500000) AND (t."X_29" > 2.500000) AND (t."X_29" <= 5.500000) AND (t."X_26" <= 5.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_25" > 3.500000) AND (t."X_29" > 2.500000) AND (t."X_29" <= 5.500000) AND (t."X_26" > 5.500000) AND (t."X_0" <= 5.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_25" > 3.500000) AND (t."X_29" > 2.500000) AND (t."X_29" <= 5.500000) AND (t."X_26" > 5.500000) AND (t."X_0" > 5.500000) AND (t."X_8" <= 6.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_25" > 3.500000) AND (t."X_29" > 2.500000) AND (t."X_29" <= 5.500000) AND (t."X_26" > 5.500000) AND (t."X_0" > 5.500000) AND (t."X_8" > 6.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_25" > 3.500000) AND (t."X_29" > 2.500000) AND (t."X_29" > 5.500000) AND (t."X_21" <= 6.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_25" > 3.500000) AND (t."X_29" > 2.500000) AND (t."X_29" > 5.500000) AND (t."X_21" > 6.500000) AND (t."X_24" <= 4.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" > 4.500000) AND (t."X_25" > 3.500000) AND (t."X_29" > 2.500000) AND (t."X_29" > 5.500000) AND (t."X_21" > 6.500000) AND (t."X_24" > 4.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" > 7.500000) AND (t."X_2" > 2.000000) AND (t."X_28" > 3.500000) AND (t."X_8" > 3.000000) AND (t."X_29" > 8.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" > 7.500000) AND (t."X_2" > 2.000000) AND (t."X_28" > 3.500000) AND (t."X_8" > 3.000000) AND (t."X_29" <= 8.500000) AND (t."X_21" <= 4.000000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" > 7.500000) AND (t."X_2" > 2.000000) AND (t."X_28" > 3.500000) AND (t."X_8" > 3.000000) AND (t."X_29" <= 8.500000) AND (t."X_21" > 4.000000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" <= 4.500000) AND (t."X_25" <= 0.500000) AND (t."X_18" > 4.000000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" <= 4.500000) AND (t."X_25" <= 0.500000) AND (t."X_18" <= 4.000000) AND (t."X_16" <= 0.500000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" <= 4.500000) AND (t."X_25" <= 0.500000) AND (t."X_18" <= 4.000000) AND (t."X_16" > 0.500000) AND (t."X_28" <= 2.000000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" <= 4.500000) AND (t."X_25" <= 0.500000) AND (t."X_18" <= 4.000000) AND (t."X_16" > 0.500000) AND (t."X_28" > 2.000000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" <= 4.500000) AND (t."X_25" > 0.500000) AND (t."X_23" <= 3.500000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" <= 4.500000) AND (t."X_25" > 0.500000) AND (t."X_23" > 3.500000) AND (t."X_29" <= 4.500000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" <= 4.500000) AND (t."X_25" > 0.500000) AND (t."X_23" > 3.500000) AND (t."X_29" > 4.500000) AND (t."X_21" <= 7.000000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_20" <= 6.500000) AND (t."X_25" <= 7.500000) AND (t."X_20" <= 4.500000) AND (t."X_25" > 0.500000) AND (t."X_23" > 3.500000) AND (t."X_29" > 4.500000) AND (t."X_21" > 7.000000)) THEN 58 ELSE NULL END AS "Leaf_58"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.374341 AS "P_0", 0.625659 AS "P_1", 1 AS "D", 0.625659 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.113924 AS "P_0", 0.886076 AS "P_1", 1 AS "D", 0.886076 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.965517 AS "P_0", 0.034483 AS "P_1", 0 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.037143 AS "P_0", 0.962857 AS "P_1", 1 AS "D", 0.962857 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.711111 AS "P_0", 0.288889 AS "P_1", 0 AS "D", 0.711111 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.969697 AS "P_0", 0.030303 AS "P_1", 0 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.010714 AS "P_0", 0.989286 AS "P_1", 1 AS "D", 0.989286 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.263158 AS "P_0", 0.736842 AS "P_1", 1 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.161290 AS "P_0", 0.838710 AS "P_1", 1 AS "D", 0.838710 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.004167 AS "P_0", 0.995833 AS "P_1", 1 AS "D", 0.995833 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.020000 AS "P_0", 0.980000 AS "P_1", 1 AS "D", 0.980000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_21" AS t1
   LEFT OUTER JOIN
   "DT_node_data_21" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_22" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_20", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_55", t1."Leaf_57", t1."Leaf_59", t1."Leaf_60" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_28" <= 2.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" > 6.500000) AND (t."X_10" <= 2.500000) AND (t."X_29" <= 1.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" > 6.500000) AND (t."X_10" <= 2.500000) AND (t."X_29" > 1.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" > 6.500000) AND (t."X_10" > 2.500000) AND (t."X_27" > 4.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_3" > 6.500000) AND (t."X_10" > 2.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" > 1.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" > 6.500000) AND (t."X_10" > 2.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 1.500000) AND (t."X_10" <= 7.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_3" > 6.500000) AND (t."X_10" > 2.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 1.500000) AND (t."X_10" > 7.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_0" > 6.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" > 7.500000) AND (t."X_10" <= 1.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" > 7.500000) AND (t."X_10" > 1.500000) AND (t."X_27" <= 5.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" > 7.500000) AND (t."X_10" > 1.500000) AND (t."X_27" > 5.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" <= 7.500000) AND (t."X_0" <= 4.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_25" <= 4.500000) AND (t."X_10" > 5.500000) AND (t."X_28" <= 5.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_25" <= 4.500000) AND (t."X_10" > 5.500000) AND (t."X_28" > 5.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_25" > 4.500000) AND (t."X_29" <= 7.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_25" > 4.500000) AND (t."X_29" > 7.500000) AND (t."X_27" <= 5.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_25" > 4.500000) AND (t."X_29" > 7.500000) AND (t."X_27" > 5.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_25" <= 4.500000) AND (t."X_10" <= 5.500000) AND (t."X_25" <= 3.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_25" <= 4.500000) AND (t."X_10" <= 5.500000) AND (t."X_25" > 3.500000) AND (t."X_10" <= 3.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_11" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_25" <= 4.500000) AND (t."X_10" <= 5.500000) AND (t."X_25" > 3.500000) AND (t."X_10" > 3.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_10" > 7.500000) AND (t."X_4" > 6.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_10" > 7.500000) AND (t."X_4" <= 6.500000) AND (t."X_13" <= 6.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_10" > 7.500000) AND (t."X_4" <= 6.500000) AND (t."X_13" > 6.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_28" > 2.500000) AND (t."X_25" > 6.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_28" > 2.500000) AND (t."X_25" <= 6.500000) AND (t."X_0" <= 3.000000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_28" > 2.500000) AND (t."X_25" <= 6.500000) AND (t."X_0" > 3.000000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_10" <= 7.500000) AND (t."X_3" <= 3.500000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_10" <= 7.500000) AND (t."X_3" > 3.500000) AND (t."X_14" <= 5.500000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_10" <= 7.500000) AND (t."X_3" > 3.500000) AND (t."X_14" > 5.500000) AND (t."X_29" <= 4.000000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_10" <= 7.500000) AND (t."X_3" > 3.500000) AND (t."X_14" > 5.500000) AND (t."X_29" > 4.000000) AND (t."X_15" <= 2.500000)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_3" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_10" <= 7.500000) AND (t."X_3" > 3.500000) AND (t."X_14" > 5.500000) AND (t."X_29" > 4.000000) AND (t."X_15" > 2.500000)) THEN 60 ELSE NULL END AS "Leaf_60"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.374341 AS "P_0", 0.625659 AS "P_1", 1 AS "D", 0.625659 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.148418 AS "P_0", 0.851582 AS "P_1", 1 AS "D", 0.851582 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.962025 AS "P_0", 0.037975 AS "P_1", 0 AS "D", 0.962025 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.051771 AS "P_0", 0.948229 AS "P_1", 1 AS "D", 0.948229 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.954545 AS "P_0", 0.045455 AS "P_1", 0 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.976744 AS "P_0", 0.023256 AS "P_1", 0 AS "D", 0.976744 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.986928 AS "P_0", 0.013072 AS "P_1", 0 AS "D", 0.986928 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.017544 AS "P_0", 0.982456 AS "P_1", 1 AS "D", 0.982456 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.170732 AS "P_0", 0.829268 AS "P_1", 1 AS "D", 0.829268 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.139241 AS "P_0", 0.860759 AS "P_1", 1 AS "D", 0.860759 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.101449 AS "P_0", 0.898551 AS "P_1", 1 AS "D", 0.898551 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.179487 AS "P_0", 0.820513 AS "P_1", 1 AS "D", 0.820513 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.115385 AS "P_0", 0.884615 AS "P_1", 1 AS "D", 0.884615 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.007194 AS "P_0", 0.992806 AS "P_1", 1 AS "D", 0.992806 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.020833 AS "P_0", 0.979167 AS "P_1", 1 AS "D", 0.979167 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_22" AS t1
   LEFT OUTER JOIN
   "DT_node_data_22" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_23" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_40", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_46", t1."Leaf_48", t1."Leaf_51", t1."Leaf_52", t1."Leaf_54", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_22" <= 3.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_22" > 3.500000) AND (t."X_27" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_22" > 3.500000) AND (t."X_27" <= 7.500000) AND (t."X_22" <= 4.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" > 6.500000) AND (t."X_22" > 3.500000) AND (t."X_27" <= 7.500000) AND (t."X_22" > 4.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" > 5.500000) AND (t."X_21" <= 1.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_26" > 8.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_26" <= 8.500000) AND (t."X_17" <= 4.000000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_26" <= 8.500000) AND (t."X_17" > 4.000000) AND (t."X_16" > 7.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_26" <= 8.500000) AND (t."X_17" > 4.000000) AND (t."X_16" <= 7.500000) AND (t."X_21" > 4.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_26" <= 8.500000) AND (t."X_17" > 4.000000) AND (t."X_16" <= 7.500000) AND (t."X_21" <= 4.500000) AND (t."X_26" <= 6.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" > 5.500000) AND (t."X_21" > 1.500000) AND (t."X_26" <= 8.500000) AND (t."X_17" > 4.000000) AND (t."X_16" <= 7.500000) AND (t."X_21" <= 4.500000) AND (t."X_26" > 6.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" <= 5.500000) AND (t."X_27" <= 5.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" <= 5.500000) AND (t."X_27" > 5.500000) AND (t."X_13" > 5.500000) AND (t."X_17" <= 8.000000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" <= 5.500000) AND (t."X_27" > 5.500000) AND (t."X_13" > 5.500000) AND (t."X_17" > 8.000000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" <= 5.500000) AND (t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_18" > 2.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" <= 5.500000) AND (t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_18" <= 2.500000) AND (t."X_26" <= 6.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" <= 5.500000) AND (t."X_27" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_18" <= 2.500000) AND (t."X_26" > 6.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_22" > 6.500000) AND (t."X_16" <= 1.500000) AND (t."X_14" <= 2.000000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_22" > 6.500000) AND (t."X_16" <= 1.500000) AND (t."X_14" > 2.000000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_22" > 6.500000) AND (t."X_16" > 1.500000) AND (t."X_29" > 0.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_22" > 6.500000) AND (t."X_16" > 1.500000) AND (t."X_29" <= 0.500000) AND (t."X_14" <= 0.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_22" > 6.500000) AND (t."X_16" > 1.500000) AND (t."X_29" <= 0.500000) AND (t."X_14" > 0.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_25" > 2.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_25" <= 2.500000) AND (t."X_22" > 5.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_25" <= 2.500000) AND (t."X_22" <= 5.500000) AND (t."X_16" > 3.500000) AND (t."X_21" <= 6.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_25" <= 2.500000) AND (t."X_22" <= 5.500000) AND (t."X_16" > 3.500000) AND (t."X_21" > 6.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_25" <= 2.500000) AND (t."X_22" <= 5.500000) AND (t."X_16" <= 3.500000) AND (t."X_28" > 0.500000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_25" <= 2.500000) AND (t."X_22" <= 5.500000) AND (t."X_16" <= 3.500000) AND (t."X_28" <= 0.500000) AND (t."X_1" <= 3.000000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_25" <= 2.500000) AND (t."X_22" <= 5.500000) AND (t."X_16" <= 3.500000) AND (t."X_28" <= 0.500000) AND (t."X_1" > 3.000000) AND (t."X_20" <= 2.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_22" <= 6.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_25" <= 2.500000) AND (t."X_22" <= 5.500000) AND (t."X_16" <= 3.500000) AND (t."X_28" <= 0.500000) AND (t."X_1" > 3.000000) AND (t."X_20" > 2.500000)) THEN 58 ELSE NULL END AS "Leaf_58"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.381371 AS "P_0", 0.618629 AS "P_1", 1 AS "D", 0.618629 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.118687 AS "P_0", 0.881313 AS "P_1", 1 AS "D", 0.881313 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.982659 AS "P_0", 0.017341 AS "P_1", 0 AS "D", 0.982659 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.060606 AS "P_0", 0.939394 AS "P_1", 1 AS "D", 0.939394 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.757576 AS "P_0", 0.242424 AS "P_1", 0 AS "D", 0.757576 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.925926 AS "P_0", 0.074074 AS "P_1", 0 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.014870 AS "P_0", 0.985130 AS "P_1", 1 AS "D", 0.985130 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.191489 AS "P_0", 0.808511 AS "P_1", 1 AS "D", 0.808511 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.072727 AS "P_0", 0.927273 AS "P_1", 1 AS "D", 0.927273 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.358974 AS "P_0", 0.641026 AS "P_1", 1 AS "D", 0.641026 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.518519 AS "P_0", 0.481481 AS "P_1", 0 AS "D", 0.518519 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.466667 AS "P_0", 0.533333 AS "P_1", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.190476 AS "P_0", 0.809524 AS "P_1", 1 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.988304 AS "P_0", 0.011696 AS "P_1", 0 AS "D", 0.988304 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.028571 AS "P_0", 0.971429 AS "P_1", 1 AS "D", 0.971429 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.021583 AS "P_0", 0.978417 AS "P_1", 1 AS "D", 0.978417 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.008197 AS "P_0", 0.991803 AS "P_1", 1 AS "D", 0.991803 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_23" AS t1
   LEFT OUTER JOIN
   "DT_node_data_23" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_24" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_19", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_28", t1."Leaf_29", t1."Leaf_32", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_46", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_57", t1."Leaf_58", t1."Leaf_60", t1."Leaf_61", t1."Leaf_63", t1."Leaf_64", t1."Leaf_67", t1."Leaf_68", t1."Leaf_69", t1."Leaf_71", t1."Leaf_73", t1."Leaf_75", t1."Leaf_76" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_17" > 8.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_12" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_17" <= 8.500000) AND (t."X_28" <= 3.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_12" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_17" <= 8.500000) AND (t."X_28" > 3.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" <= 7.500000) AND (t."X_18" > 3.500000) AND (t."X_27" > 6.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" <= 7.500000) AND (t."X_18" <= 3.500000) AND (t."X_4" <= 0.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" <= 7.500000) AND (t."X_18" > 3.500000) AND (t."X_27" <= 6.500000) AND (t."X_16" <= 3.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" > 7.500000) AND (t."X_27" <= 1.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" <= 7.500000) AND (t."X_18" <= 3.500000) AND (t."X_4" > 0.500000) AND (t."X_29" <= 8.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" <= 7.500000) AND (t."X_18" <= 3.500000) AND (t."X_4" > 0.500000) AND (t."X_29" > 8.500000) AND (t."X_17" <= 5.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" <= 7.500000) AND (t."X_18" <= 3.500000) AND (t."X_4" > 0.500000) AND (t."X_29" > 8.500000) AND (t."X_17" > 5.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" <= 7.500000) AND (t."X_18" > 3.500000) AND (t."X_27" <= 6.500000) AND (t."X_16" > 3.500000) AND (t."X_4" > 5.500000) AND (t."X_5" > 7.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" <= 7.500000) AND (t."X_18" > 3.500000) AND (t."X_27" <= 6.500000) AND (t."X_16" > 3.500000) AND (t."X_4" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_0" <= 1.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" <= 7.500000) AND (t."X_18" > 3.500000) AND (t."X_27" <= 6.500000) AND (t."X_16" > 3.500000) AND (t."X_4" <= 5.500000) AND (t."X_29" > 1.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" <= 7.500000) AND (t."X_18" > 3.500000) AND (t."X_27" <= 6.500000) AND (t."X_16" > 3.500000) AND (t."X_4" <= 5.500000) AND (t."X_29" <= 1.500000) AND (t."X_4" > 4.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" <= 7.500000) AND (t."X_18" > 3.500000) AND (t."X_27" <= 6.500000) AND (t."X_16" > 3.500000) AND (t."X_4" <= 5.500000) AND (t."X_29" <= 1.500000) AND (t."X_4" <= 4.500000) AND (t."X_17" > 6.000000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" <= 7.500000) AND (t."X_18" > 3.500000) AND (t."X_27" <= 6.500000) AND (t."X_16" > 3.500000) AND (t."X_4" <= 5.500000) AND (t."X_29" <= 1.500000) AND (t."X_4" <= 4.500000) AND (t."X_17" <= 6.000000) AND (t."X_20" <= 5.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" <= 7.500000) AND (t."X_18" > 3.500000) AND (t."X_27" <= 6.500000) AND (t."X_16" > 3.500000) AND (t."X_4" <= 5.500000) AND (t."X_29" <= 1.500000) AND (t."X_4" <= 4.500000) AND (t."X_17" <= 6.000000) AND (t."X_20" > 5.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" <= 7.500000) AND (t."X_18" > 3.500000) AND (t."X_27" <= 6.500000) AND (t."X_16" > 3.500000) AND (t."X_4" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_0" > 1.500000) AND (t."X_17" > 8.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" <= 7.500000) AND (t."X_18" > 3.500000) AND (t."X_27" <= 6.500000) AND (t."X_16" > 3.500000) AND (t."X_4" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_0" > 1.500000) AND (t."X_17" <= 8.500000) AND (t."X_1" <= 5.000000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" <= 7.500000) AND (t."X_18" > 3.500000) AND (t."X_27" <= 6.500000) AND (t."X_16" > 3.500000) AND (t."X_4" > 5.500000) AND (t."X_5" <= 7.500000) AND (t."X_0" > 1.500000) AND (t."X_17" <= 8.500000) AND (t."X_1" > 5.000000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" > 7.500000) AND (t."X_27" > 1.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" > 6.000000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" > 7.500000) AND (t."X_27" > 1.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" <= 6.000000) AND (t."X_20" > 5.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" > 7.500000) AND (t."X_27" > 1.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" <= 6.000000) AND (t."X_20" <= 5.500000) AND (t."X_1" <= 2.000000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" > 7.500000) AND (t."X_27" > 1.500000) AND (t."X_27" <= 6.500000) AND (t."X_29" <= 6.000000) AND (t."X_20" <= 5.500000) AND (t."X_1" > 2.000000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" > 7.500000) AND (t."X_27" > 1.500000) AND (t."X_27" > 6.500000) AND (t."X_1" <= 1.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_12" > 5.500000) AND (t."X_12" > 7.500000) AND (t."X_27" > 1.500000) AND (t."X_27" > 6.500000) AND (t."X_1" > 1.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_12" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_1" > 5.500000) AND (t."X_19" <= 5.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_12" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_1" > 5.500000) AND (t."X_19" > 5.500000)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_12" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_1" <= 5.500000) AND (t."X_20" > 6.500000)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_12" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_1" <= 5.500000) AND (t."X_20" <= 6.500000) AND (t."X_12" <= 4.500000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_12" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_1" <= 5.500000) AND (t."X_20" <= 6.500000) AND (t."X_12" > 4.500000) AND (t."X_19" <= 3.500000)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_12" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_1" <= 5.500000) AND (t."X_20" <= 6.500000) AND (t."X_12" > 4.500000) AND (t."X_19" > 3.500000)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_12" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_20" > 6.500000) AND (t."X_1" <= 4.500000)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_12" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_20" > 6.500000) AND (t."X_1" > 4.500000)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_12" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_20" <= 6.500000) AND (t."X_20" <= 4.500000)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_12" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_20" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_25" <= 3.500000)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_12" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_20" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_25" > 3.500000) AND (t."X_1" <= 4.000000)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_12" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_20" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_25" > 3.500000) AND (t."X_1" > 4.000000) AND (t."X_29" <= 5.000000)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_12" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_20" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_25" > 3.500000) AND (t."X_1" > 4.000000) AND (t."X_29" > 5.000000)) THEN 76 ELSE NULL END AS "Leaf_76"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.355009 AS "P_0", 0.644991 AS "P_1", 1 AS "D", 0.644991 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.122857 AS "P_0", 0.877143 AS "P_1", 1 AS "D", 0.877143 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.726027 AS "P_0", 0.273973 AS "P_1", 0 AS "D", 0.726027 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.059006 AS "P_0", 0.940994 AS "P_1", 1 AS "D", 0.940994 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.536364 AS "P_0", 0.463636 AS "P_1", 0 AS "D", 0.536364 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.917431 AS "P_0", 0.082569 AS "P_1", 0 AS "D", 0.917431 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.882353 AS "P_0", 0.117647 AS "P_1", 0 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.381579 AS "P_0", 0.618421 AS "P_1", 1 AS "D", 0.618421 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.203390 AS "P_0", 0.796610 AS "P_1", 1 AS "D", 0.796610 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.967742 AS "P_0", 0.032258 AS "P_1", 0 AS "D", 0.967742 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.934579 AS "P_0", 0.065421 AS "P_1", 0 AS "D", 0.934579 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.206897 AS "P_0", 0.793103 AS "P_1", 1 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.461538 AS "P_0", 0.538462 AS "P_1", 1 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.760000 AS "P_0", 0.240000 AS "P_1", 0 AS "D", 0.760000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.987805 AS "P_0", 0.012195 AS "P_1", 0 AS "D", 0.987805 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.904762 AS "P_0", 0.095238 AS "P_1", 0 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.027972 AS "P_0", 0.972028 AS "P_1", 1 AS "D", 0.972028 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.305556 AS "P_0", 0.694444 AS "P_1", 1 AS "D", 0.694444 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.014337 AS "P_0", 0.985663 AS "P_1", 1 AS "D", 0.985663 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.095238 AS "P_0", 0.904762 AS "P_1", 1 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_24" AS t1
   LEFT OUTER JOIN
   "DT_node_data_24" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_25" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_44", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50", t1."Leaf_53", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_59", t1."Leaf_60" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_7" <= 5.500000) AND (t."X_29" <= 6.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_7" <= 5.500000) AND (t."X_29" > 6.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" <= 5.500000) AND (t."X_18" <= 1.500000) AND (t."X_28" <= 4.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" <= 5.500000) AND (t."X_18" <= 1.500000) AND (t."X_28" > 4.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" > 5.500000) AND (t."X_22" > 6.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_0" > 5.500000) AND (t."X_23" > 6.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_0" <= 5.500000) AND (t."X_26" <= 8.000000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_0" <= 5.500000) AND (t."X_26" > 8.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_0" > 5.500000) AND (t."X_23" <= 6.500000) AND (t."X_25" > 4.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_0" > 5.500000) AND (t."X_23" <= 6.500000) AND (t."X_25" <= 4.500000) AND (t."X_18" <= 0.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_0" > 5.500000) AND (t."X_23" <= 6.500000) AND (t."X_25" <= 4.500000) AND (t."X_18" > 0.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" <= 5.500000) AND (t."X_18" > 1.500000) AND (t."X_0" <= 5.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" <= 5.500000) AND (t."X_18" > 1.500000) AND (t."X_0" > 5.500000) AND (t."X_27" <= 5.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" > 4.500000) AND (t."X_22" <= 5.500000) AND (t."X_18" > 1.500000) AND (t."X_0" > 5.500000) AND (t."X_27" > 5.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" > 8.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_23" > 6.500000) AND (t."X_18" > 1.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_23" > 6.500000) AND (t."X_18" <= 1.500000) AND (t."X_8" <= 0.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_23" > 6.500000) AND (t."X_18" <= 1.500000) AND (t."X_8" > 0.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_7" > 5.500000) AND (t."X_22" > 4.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_7" > 5.500000) AND (t."X_22" <= 4.500000) AND (t."X_0" <= 4.000000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_27" > 6.500000) AND (t."X_7" > 5.500000) AND (t."X_22" <= 4.500000) AND (t."X_0" > 4.000000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_23" <= 6.500000) AND (t."X_25" > 2.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_23" <= 6.500000) AND (t."X_25" <= 2.500000) AND (t."X_0" > 5.500000) AND (t."X_8" > 3.000000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_23" <= 6.500000) AND (t."X_25" <= 2.500000) AND (t."X_0" > 5.500000) AND (t."X_8" <= 3.000000) AND (t."X_18" <= 1.000000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_23" <= 6.500000) AND (t."X_25" <= 2.500000) AND (t."X_0" > 5.500000) AND (t."X_8" <= 3.000000) AND (t."X_18" > 1.000000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_23" <= 6.500000) AND (t."X_25" <= 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_26" > 3.500000) AND (t."X_18" <= 2.000000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_23" <= 6.500000) AND (t."X_25" <= 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_26" > 3.500000) AND (t."X_18" > 2.000000) AND (t."X_8" <= 1.500000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_23" <= 6.500000) AND (t."X_25" <= 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_26" > 3.500000) AND (t."X_18" > 2.000000) AND (t."X_8" > 1.500000)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_23" <= 6.500000) AND (t."X_25" <= 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_26" <= 3.500000) AND (t."X_17" <= 6.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_23" <= 6.500000) AND (t."X_25" <= 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_26" <= 3.500000) AND (t."X_17" > 6.500000) AND (t."X_18" <= 4.500000)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_27" <= 6.500000) AND (t."X_27" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_23" <= 6.500000) AND (t."X_25" <= 2.500000) AND (t."X_0" <= 5.500000) AND (t."X_26" <= 3.500000) AND (t."X_17" > 6.500000) AND (t."X_18" > 4.500000)) THEN 60 ELSE NULL END AS "Leaf_60"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.367311 AS "P_0", 0.632689 AS "P_1", 1 AS "D", 0.632689 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.117207 AS "P_0", 0.882793 AS "P_1", 1 AS "D", 0.882793 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.964286 AS "P_0", 0.035714 AS "P_1", 0 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.993827 AS "P_0", 0.006173 AS "P_1", 0 AS "D", 0.993827 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.039867 AS "P_0", 0.960133 AS "P_1", 1 AS "D", 0.960133 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.350000 AS "P_0", 0.650000 AS "P_1", 1 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.137255 AS "P_0", 0.862745 AS "P_1", 1 AS "D", 0.862745 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.065217 AS "P_0", 0.934783 AS "P_1", 1 AS "D", 0.934783 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.461538 AS "P_0", 0.538462 AS "P_1", 1 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.259259 AS "P_0", 0.740741 AS "P_1", 1 AS "D", 0.740741 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.130435 AS "P_0", 0.869565 AS "P_1", 1 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.033445 AS "P_0", 0.966555 AS "P_1", 1 AS "D", 0.966555 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.027304 AS "P_0", 0.972696 AS "P_1", 1 AS "D", 0.972696 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.050955 AS "P_0", 0.949045 AS "P_1", 1 AS "D", 0.949045 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.026667 AS "P_0", 0.973333 AS "P_1", 1 AS "D", 0.973333 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.006993 AS "P_0", 0.993007 AS "P_1", 1 AS "D", 0.993007 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_25" AS t1
   LEFT OUTER JOIN
   "DT_node_data_25" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_26" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_45", t1."Leaf_46", t1."Leaf_48", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_57", t1."Leaf_58", t1."Leaf_61", t1."Leaf_64", t1."Leaf_65", t1."Leaf_66", t1."Leaf_68", t1."Leaf_69", t1."Leaf_71", t1."Leaf_72" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_22" > 6.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_22" > 5.500000) AND (t."X_28" <= 3.500000) AND (t."X_14" <= 7.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_22" > 5.500000) AND (t."X_28" <= 3.500000) AND (t."X_14" > 7.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_22" > 5.500000) AND (t."X_28" > 3.500000) AND (t."X_26" <= 4.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_22" > 5.500000) AND (t."X_28" > 3.500000) AND (t."X_26" > 4.500000) AND (t."X_14" <= 4.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_28" > 7.500000) AND (t."X_26" <= 5.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_28" > 7.500000) AND (t."X_26" > 5.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_22" <= 5.500000) AND (t."X_19" > 7.000000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_22" <= 5.500000) AND (t."X_19" <= 7.000000) AND (t."X_14" > 5.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_22" <= 5.500000) AND (t."X_19" <= 7.000000) AND (t."X_14" <= 5.500000) AND (t."X_29" > 5.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_22" <= 5.500000) AND (t."X_19" <= 7.000000) AND (t."X_14" <= 5.500000) AND (t."X_29" <= 5.500000) AND (t."X_19" <= 5.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_22" <= 5.500000) AND (t."X_19" <= 7.000000) AND (t."X_14" <= 5.500000) AND (t."X_29" <= 5.500000) AND (t."X_19" > 5.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_22" > 5.500000) AND (t."X_28" > 3.500000) AND (t."X_26" > 4.500000) AND (t."X_14" > 4.500000) AND (t."X_28" > 5.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_22" > 5.500000) AND (t."X_28" > 3.500000) AND (t."X_26" > 4.500000) AND (t."X_14" > 4.500000) AND (t."X_28" <= 5.500000) AND (t."X_28" <= 4.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_7" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_22" > 5.500000) AND (t."X_28" > 3.500000) AND (t."X_26" > 4.500000) AND (t."X_14" > 4.500000) AND (t."X_28" <= 5.500000) AND (t."X_28" > 4.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_0" > 7.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 7.500000) AND (t."X_10" > 5.500000) AND (t."X_19" <= 0.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 7.500000) AND (t."X_10" > 5.500000) AND (t."X_19" > 0.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 7.500000) AND (t."X_10" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_19" <= 4.000000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 7.500000) AND (t."X_10" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_19" > 4.000000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 7.500000) AND (t."X_10" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" > 6.500000) AND (t."X_25" <= 6.000000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 7.500000) AND (t."X_10" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" > 6.500000) AND (t."X_25" > 6.000000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 7.500000) AND (t."X_10" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_29" > 4.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 7.500000) AND (t."X_10" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_29" <= 4.500000) AND (t."X_28" > 7.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 7.500000) AND (t."X_10" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_29" <= 4.500000) AND (t."X_28" <= 7.500000) AND (t."X_7" <= 2.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_0" <= 7.500000) AND (t."X_10" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_0" <= 6.500000) AND (t."X_29" <= 4.500000) AND (t."X_28" <= 7.500000) AND (t."X_7" > 2.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" <= 2.500000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 2.500000) AND (t."X_0" > 6.500000) AND (t."X_29" <= 0.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 2.500000) AND (t."X_0" > 6.500000) AND (t."X_29" > 0.500000)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 2.500000) AND (t."X_0" <= 6.500000) AND (t."X_10" > 6.500000) AND (t."X_29" <= 0.500000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 2.500000) AND (t."X_0" <= 6.500000) AND (t."X_10" > 6.500000) AND (t."X_29" > 0.500000) AND (t."X_19" > 4.500000)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 2.500000) AND (t."X_0" <= 6.500000) AND (t."X_10" > 6.500000) AND (t."X_29" > 0.500000) AND (t."X_19" <= 4.500000) AND (t."X_8" <= 5.000000)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 2.500000) AND (t."X_0" <= 6.500000) AND (t."X_10" > 6.500000) AND (t."X_29" > 0.500000) AND (t."X_19" <= 4.500000) AND (t."X_8" > 5.000000)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 2.500000) AND (t."X_0" <= 6.500000) AND (t."X_10" <= 6.500000) AND (t."X_25" > 2.500000)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 2.500000) AND (t."X_0" <= 6.500000) AND (t."X_10" <= 6.500000) AND (t."X_25" <= 2.500000) AND (t."X_26" <= 3.500000)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 2.500000) AND (t."X_0" <= 6.500000) AND (t."X_10" <= 6.500000) AND (t."X_25" <= 2.500000) AND (t."X_26" > 3.500000) AND (t."X_11" <= 4.500000)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_7" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_7" > 2.500000) AND (t."X_0" <= 6.500000) AND (t."X_10" <= 6.500000) AND (t."X_25" <= 2.500000) AND (t."X_26" > 3.500000) AND (t."X_11" > 4.500000)) THEN 72 ELSE NULL END AS "Leaf_72"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.386643 AS "P_0", 0.613357 AS "P_1", 1 AS "D", 0.613357 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.062315 AS "P_0", 0.937685 AS "P_1", 1 AS "D", 0.937685 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.857759 AS "P_0", 0.142241 AS "P_1", 0 AS "D", 0.857759 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.592593 AS "P_0", 0.407407 AS "P_1", 0 AS "D", 0.592593 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.319149 AS "P_0", 0.680851 AS "P_1", 1 AS "D", 0.680851 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.970588 AS "P_0", 0.029412 AS "P_1", 0 AS "D", 0.970588 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.565217 AS "P_0", 0.434783 AS "P_1", 0 AS "D", 0.565217 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.032847 AS "P_0", 0.967153 AS "P_1", 1 AS "D", 0.967153 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.190476 AS "P_0", 0.809524 AS "P_1", 1 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.150000 AS "P_0", 0.850000 AS "P_1", 1 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.109091 AS "P_0", 0.890909 AS "P_1", 1 AS "D", 0.890909 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.078431 AS "P_0", 0.921569 AS "P_1", 1 AS "D", 0.921569 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.074380 AS "P_0", 0.925620 AS "P_1", 1 AS "D", 0.925620 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.035088 AS "P_0", 0.964912 AS "P_1", 1 AS "D", 0.964912 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.019417 AS "P_0", 0.980583 AS "P_1", 1 AS "D", 0.980583 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_26" AS t1
   LEFT OUTER JOIN
   "DT_node_data_26" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_27" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_54", t1."Leaf_57", t1."Leaf_59", t1."Leaf_60", t1."Leaf_62", t1."Leaf_64", t1."Leaf_65", t1."Leaf_67", t1."Leaf_69", t1."Leaf_70" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_3" <= 4.500000) AND (t."X_28" > 8.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_3" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_27" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_3" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_27" <= 7.500000) AND (t."X_19" > 6.000000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_3" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_27" <= 7.500000) AND (t."X_19" <= 6.000000) AND (t."X_29" <= 7.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_3" <= 4.500000) AND (t."X_28" <= 8.500000) AND (t."X_27" <= 7.500000) AND (t."X_19" <= 6.000000) AND (t."X_29" > 7.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_3" > 4.500000) AND (t."X_6" > 6.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_3" > 4.500000) AND (t."X_6" <= 6.500000) AND (t."X_3" > 6.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_3" > 4.500000) AND (t."X_6" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_29" <= 6.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_3" > 4.500000) AND (t."X_6" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_29" > 6.500000) AND (t."X_3" <= 5.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_3" > 4.500000) AND (t."X_6" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_29" > 6.500000) AND (t."X_3" > 5.500000) AND (t."X_29" <= 7.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_6" > 5.500000) AND (t."X_3" > 4.500000) AND (t."X_6" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_29" > 6.500000) AND (t."X_3" > 5.500000) AND (t."X_29" > 7.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_14" <= 0.500000) AND (t."X_28" <= 4.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_14" <= 0.500000) AND (t."X_28" > 4.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_13" > 5.500000) AND (t."X_29" <= 0.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_13" > 5.500000) AND (t."X_29" > 0.500000) AND (t."X_26" > 6.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_13" > 5.500000) AND (t."X_29" > 0.500000) AND (t."X_26" <= 6.500000) AND (t."X_14" > 1.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_13" > 5.500000) AND (t."X_29" > 0.500000) AND (t."X_26" <= 6.500000) AND (t."X_14" <= 1.500000) AND (t."X_3" <= 6.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_13" > 5.500000) AND (t."X_29" > 0.500000) AND (t."X_26" <= 6.500000) AND (t."X_14" <= 1.500000) AND (t."X_3" > 6.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_13" <= 5.500000) AND (t."X_28" > 7.500000) AND (t."X_27" <= 5.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_13" <= 5.500000) AND (t."X_28" > 7.500000) AND (t."X_27" > 5.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_3" > 6.500000) AND (t."X_6" <= 2.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_3" > 6.500000) AND (t."X_6" > 2.500000) AND (t."X_28" <= 2.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_3" > 6.500000) AND (t."X_6" > 2.500000) AND (t."X_28" > 2.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_13" <= 5.500000) AND (t."X_28" <= 7.500000) AND (t."X_19" > 0.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_13" <= 5.500000) AND (t."X_28" <= 7.500000) AND (t."X_19" <= 0.500000) AND (t."X_3" <= 6.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" > 4.500000) AND (t."X_14" > 0.500000) AND (t."X_13" <= 5.500000) AND (t."X_28" <= 7.500000) AND (t."X_19" <= 0.500000) AND (t."X_3" > 6.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_3" <= 6.500000) AND (t."X_13" > 7.500000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_3" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 3.500000) AND (t."X_20" <= 3.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_3" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 3.500000) AND (t."X_20" > 3.500000) AND (t."X_1" <= 6.000000)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_3" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" > 3.500000) AND (t."X_20" > 3.500000) AND (t."X_1" > 6.000000)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_3" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" <= 3.500000) AND (t."X_14" > 3.500000)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_3" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" <= 3.500000) AND (t."X_14" <= 3.500000) AND (t."X_25" > 0.500000)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_3" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" <= 3.500000) AND (t."X_14" <= 3.500000) AND (t."X_25" <= 0.500000) AND (t."X_19" <= 3.500000)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_3" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" <= 3.500000) AND (t."X_14" <= 3.500000) AND (t."X_25" <= 0.500000) AND (t."X_19" > 3.500000) AND (t."X_7" <= 2.500000)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_3" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" <= 3.500000) AND (t."X_14" <= 3.500000) AND (t."X_25" <= 0.500000) AND (t."X_19" > 3.500000) AND (t."X_7" > 2.500000) AND (t."X_27" <= 1.500000)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_6" <= 5.500000) AND (t."X_27" <= 4.500000) AND (t."X_3" <= 6.500000) AND (t."X_13" <= 7.500000) AND (t."X_27" <= 3.500000) AND (t."X_14" <= 3.500000) AND (t."X_25" <= 0.500000) AND (t."X_19" > 3.500000) AND (t."X_7" > 2.500000) AND (t."X_27" > 1.500000)) THEN 70 ELSE NULL END AS "Leaf_70"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.388401 AS "P_0", 0.611599 AS "P_1", 1 AS "D", 0.611599 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.067647 AS "P_0", 0.932353 AS "P_1", 1 AS "D", 0.932353 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.864629 AS "P_0", 0.135371 AS "P_1", 0 AS "D", 0.864629 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.951351 AS "P_0", 0.048649 AS "P_1", 0 AS "D", 0.951351 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.185185 AS "P_0", 0.814815 AS "P_1", 1 AS "D", 0.814815 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.780488 AS "P_0", 0.219512 AS "P_1", 0 AS "D", 0.780488 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.526316 AS "P_0", 0.473684 AS "P_1", 0 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.029091 AS "P_0", 0.970909 AS "P_1", 1 AS "D", 0.970909 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.183333 AS "P_0", 0.816667 AS "P_1", 1 AS "D", 0.816667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.023256 AS "P_0", 0.976744 AS "P_1", 1 AS "D", 0.976744 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.011278 AS "P_0", 0.988722 AS "P_1", 1 AS "D", 0.988722 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.007547 AS "P_0", 0.992453 AS "P_1", 1 AS "D", 0.992453 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.004219 AS "P_0", 0.995781 AS "P_1", 1 AS "D", 0.995781 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.035714 AS "P_0", 0.964286 AS "P_1", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.010753 AS "P_0", 0.989247 AS "P_1", 1 AS "D", 0.989247 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.047619 AS "P_0", 0.952381 AS "P_1", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_27" AS t1
   LEFT OUTER JOIN
   "DT_node_data_27" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_28" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_8", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_27", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_53", t1."Leaf_54", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58", t1."Leaf_61", t1."Leaf_62", t1."Leaf_63", t1."Leaf_66", t1."Leaf_67", t1."Leaf_68" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_28" > 7.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_13" <= 5.500000) AND (t."X_15" <= 1.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_13" <= 5.500000) AND (t."X_15" > 1.500000) AND (t."X_7" <= 6.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_13" <= 5.500000) AND (t."X_15" > 1.500000) AND (t."X_7" > 6.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_1" > 3.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_1" <= 3.500000) AND (t."X_7" <= 5.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_1" <= 3.500000) AND (t."X_7" > 5.500000) AND (t."X_13" <= 2.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_1" <= 3.500000) AND (t."X_7" > 5.500000) AND (t."X_13" > 2.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_13" > 5.500000) AND (t."X_1" <= 0.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_14" > 3.500000) AND (t."X_25" <= 4.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_14" > 3.500000) AND (t."X_25" > 4.500000) AND (t."X_15" > 7.000000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_14" > 3.500000) AND (t."X_25" > 4.500000) AND (t."X_15" <= 7.000000) AND (t."X_27" <= 4.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_14" > 3.500000) AND (t."X_25" > 4.500000) AND (t."X_15" <= 7.000000) AND (t."X_27" > 4.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_14" <= 3.500000) AND (t."X_4" <= 3.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_14" <= 3.500000) AND (t."X_4" > 3.500000) AND (t."X_14" <= 1.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_3" <= 6.500000) AND (t."X_28" <= 7.500000) AND (t."X_14" <= 3.500000) AND (t."X_4" > 3.500000) AND (t."X_14" > 1.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_13" > 5.500000) AND (t."X_1" > 0.500000) AND (t."X_6" > 4.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_13" > 5.500000) AND (t."X_1" > 0.500000) AND (t."X_6" <= 4.500000) AND (t."X_28" <= 1.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_13" > 5.500000) AND (t."X_1" > 0.500000) AND (t."X_6" <= 4.500000) AND (t."X_28" > 1.500000) AND (t."X_15" <= 4.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_3" > 6.500000) AND (t."X_13" > 5.500000) AND (t."X_1" > 0.500000) AND (t."X_6" <= 4.500000) AND (t."X_28" > 1.500000) AND (t."X_15" > 4.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_1" > 6.500000) AND (t."X_26" <= 6.000000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_1" > 6.500000) AND (t."X_26" > 6.000000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_14" <= 4.000000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_14" > 4.000000) AND (t."X_2" <= 4.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_14" > 4.000000) AND (t."X_2" > 4.500000) AND (t."X_25" <= 6.500000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" > 5.500000) AND (t."X_1" <= 6.500000) AND (t."X_14" > 4.000000) AND (t."X_2" > 4.500000) AND (t."X_25" > 6.500000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" > 6.500000) AND (t."X_13" > 3.500000)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" > 6.500000) AND (t."X_13" <= 3.500000) AND (t."X_29" <= 6.000000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_2" > 5.500000) AND (t."X_27" > 6.500000) AND (t."X_13" <= 3.500000) AND (t."X_29" > 6.000000)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_13" > 6.500000) AND (t."X_4" <= 2.500000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_13" > 6.500000) AND (t."X_4" > 2.500000)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_13" <= 6.500000) AND (t."X_26" <= 3.500000)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_13" <= 6.500000) AND (t."X_26" > 3.500000) AND (t."X_25" > 2.500000)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_13" <= 6.500000) AND (t."X_26" > 3.500000) AND (t."X_25" <= 2.500000) AND (t."X_4" <= 2.500000)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_2" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_27" <= 5.500000) AND (t."X_13" <= 6.500000) AND (t."X_26" > 3.500000) AND (t."X_25" <= 2.500000) AND (t."X_4" > 2.500000)) THEN 68 ELSE NULL END AS "Leaf_68"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.362039 AS "P_0", 0.637961 AS "P_1", 1 AS "D", 0.637961 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.070028 AS "P_0", 0.929972 AS "P_1", 1 AS "D", 0.929972 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.853774 AS "P_0", 0.146226 AS "P_1", 0 AS "D", 0.853774 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.993151 AS "P_0", 0.006849 AS "P_1", 0 AS "D", 0.993151 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.185185 AS "P_0", 0.814815 AS "P_1", 1 AS "D", 0.814815 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.896552 AS "P_0", 0.103448 AS "P_1", 0 AS "D", 0.896552 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.020896 AS "P_0", 0.979104 AS "P_1", 1 AS "D", 0.979104 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.006390 AS "P_0", 0.993610 AS "P_1", 1 AS "D", 0.993610 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.227273 AS "P_0", 0.772727 AS "P_1", 1 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.003257 AS "P_0", 0.996743 AS "P_1", 1 AS "D", 0.996743 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.012048 AS "P_0", 0.987952 AS "P_1", 1 AS "D", 0.987952 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_28" AS t1
   LEFT OUTER JOIN
   "DT_node_data_28" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_29" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_44", t1."Leaf_45", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_53", t1."Leaf_55", t1."Leaf_56" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" > 6.500000) AND (t."X_2" <= 1.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" > 6.500000) AND (t."X_2" > 1.500000) AND (t."X_27" <= 5.500000) AND (t."X_18" <= 0.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" > 6.500000) AND (t."X_2" > 1.500000) AND (t."X_27" <= 5.500000) AND (t."X_18" > 0.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" > 6.500000) AND (t."X_26" > 4.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_1" <= 5.000000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" > 6.500000) AND (t."X_26" <= 4.500000) AND (t."X_1" > 5.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" > 5.500000) AND (t."X_29" > 1.500000) AND (t."X_19" <= 3.000000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" > 5.500000) AND (t."X_29" > 1.500000) AND (t."X_19" > 3.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" > 5.500000) AND (t."X_29" <= 1.500000) AND (t."X_4" > 4.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" <= 5.500000) AND (t."X_20" > 6.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" > 5.500000) AND (t."X_29" <= 1.500000) AND (t."X_4" <= 4.500000) AND (t."X_28" > 5.000000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" > 5.500000) AND (t."X_29" <= 1.500000) AND (t."X_4" <= 4.500000) AND (t."X_28" <= 5.000000) AND (t."X_28" <= 3.000000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" > 5.500000) AND (t."X_29" <= 1.500000) AND (t."X_4" <= 4.500000) AND (t."X_28" <= 5.000000) AND (t."X_28" > 3.000000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" <= 5.500000) AND (t."X_20" <= 6.500000) AND (t."X_18" > 0.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" <= 5.500000) AND (t."X_20" <= 6.500000) AND (t."X_18" <= 0.500000) AND (t."X_26" <= 5.000000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" > 5.500000) AND (t."X_1" <= 5.500000) AND (t."X_20" <= 6.500000) AND (t."X_18" <= 0.500000) AND (t."X_26" > 5.000000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" > 6.500000) AND (t."X_2" > 1.500000) AND (t."X_27" > 5.500000) AND (t."X_27" > 6.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" > 6.500000) AND (t."X_2" > 1.500000) AND (t."X_27" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_18" <= 6.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" > 6.500000) AND (t."X_2" > 1.500000) AND (t."X_27" > 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_18" > 6.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_2" > 4.500000) AND (t."X_23" <= 5.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_2" > 4.500000) AND (t."X_23" > 5.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_2" <= 4.500000) AND (t."X_18" > 3.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_2" <= 4.500000) AND (t."X_18" <= 3.500000) AND (t."X_1" <= 3.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_2" <= 4.500000) AND (t."X_18" <= 3.500000) AND (t."X_1" > 3.500000) AND (t."X_21" <= 3.500000) AND (t."X_2" <= 1.500000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_2" <= 4.500000) AND (t."X_18" <= 3.500000) AND (t."X_1" > 3.500000) AND (t."X_21" <= 3.500000) AND (t."X_2" > 1.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_2" <= 4.500000) AND (t."X_18" <= 3.500000) AND (t."X_1" > 3.500000) AND (t."X_21" > 3.500000) AND (t."X_20" <= 3.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_2" <= 4.500000) AND (t."X_18" <= 3.500000) AND (t."X_1" > 3.500000) AND (t."X_21" > 3.500000) AND (t."X_20" > 3.500000) AND (t."X_19" <= 2.000000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_2" <= 4.500000) AND (t."X_18" <= 3.500000) AND (t."X_1" > 3.500000) AND (t."X_21" > 3.500000) AND (t."X_20" > 3.500000) AND (t."X_19" > 2.000000) AND (t."X_28" <= 4.000000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_2" <= 6.500000) AND (t."X_26" <= 6.500000) AND (t."X_2" <= 5.500000) AND (t."X_2" <= 4.500000) AND (t."X_18" <= 3.500000) AND (t."X_1" > 3.500000) AND (t."X_21" > 3.500000) AND (t."X_20" > 3.500000) AND (t."X_19" > 2.000000) AND (t."X_28" > 4.000000)) THEN 56 ELSE NULL END AS "Leaf_56"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.374341 AS "P_0", 0.625659 AS "P_1", 1 AS "D", 0.625659 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.131841 AS "P_0", 0.868159 AS "P_1", 1 AS "D", 0.868159 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.958084 AS "P_0", 0.041916 AS "P_1", 0 AS "D", 0.958084 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.740000 AS "P_0", 0.260000 AS "P_1", 0 AS "D", 0.740000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.840909 AS "P_0", 0.159091 AS "P_1", 0 AS "D", 0.840909 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.972222 AS "P_0", 0.027778 AS "P_1", 0 AS "D", 0.972222 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.019231 AS "P_0", 0.980769 AS "P_1", 1 AS "D", 0.980769 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.080000 AS "P_0", 0.920000 AS "P_1", 1 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.533333 AS "P_0", 0.466667 AS "P_1", 0 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.041667 AS "P_0", 0.958333 AS "P_1", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.007353 AS "P_0", 0.992647 AS "P_1", 1 AS "D", 0.992647 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.025641 AS "P_0", 0.974359 AS "P_1", 1 AS "D", 0.974359 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.074074 AS "P_0", 0.925926 AS "P_1", 1 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.041667 AS "P_0", 0.958333 AS "P_1", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_29" AS t1
   LEFT OUTER JOIN
   "DT_node_data_29" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_30" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_56", t1."Leaf_59", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_15" <= 2.500000) AND (t."X_29" > 2.500000) AND (t."X_20" <= 6.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_15" <= 2.500000) AND (t."X_29" > 2.500000) AND (t."X_20" > 6.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" > 7.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_15" <= 2.500000) AND (t."X_29" <= 2.500000) AND (t."X_25" > 3.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_15" <= 2.500000) AND (t."X_29" <= 2.500000) AND (t."X_25" <= 3.500000) AND (t."X_14" > 2.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_15" <= 2.500000) AND (t."X_29" <= 2.500000) AND (t."X_25" <= 3.500000) AND (t."X_14" <= 2.500000) AND (t."X_26" <= 4.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_15" <= 2.500000) AND (t."X_29" <= 2.500000) AND (t."X_25" <= 3.500000) AND (t."X_14" <= 2.500000) AND (t."X_26" > 4.000000) AND (t."X_16" <= 2.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_15" <= 2.500000) AND (t."X_29" <= 2.500000) AND (t."X_25" <= 3.500000) AND (t."X_14" <= 2.500000) AND (t."X_26" > 4.000000) AND (t."X_16" > 2.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_28" > 8.500000) AND (t."X_24" <= 7.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_28" > 8.500000) AND (t."X_24" > 7.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_15" > 2.500000) AND (t."X_20" <= 6.500000) AND (t."X_25" <= 6.500000) AND (t."X_11" <= 3.000000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_15" > 2.500000) AND (t."X_20" <= 6.500000) AND (t."X_25" <= 6.500000) AND (t."X_11" > 3.000000) AND (t."X_27" <= 4.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_15" > 2.500000) AND (t."X_20" <= 6.500000) AND (t."X_25" <= 6.500000) AND (t."X_11" > 3.000000) AND (t."X_27" > 4.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_15" > 2.500000) AND (t."X_20" <= 6.500000) AND (t."X_25" > 6.500000) AND (t."X_24" > 5.000000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_15" > 2.500000) AND (t."X_20" <= 6.500000) AND (t."X_25" > 6.500000) AND (t."X_24" <= 5.000000) AND (t."X_16" <= 7.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_15" > 2.500000) AND (t."X_20" <= 6.500000) AND (t."X_25" > 6.500000) AND (t."X_24" <= 5.000000) AND (t."X_16" > 7.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" > 5.500000) AND (t."X_13" > 5.500000) AND (t."X_24" > 2.000000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" > 5.500000) AND (t."X_13" > 5.500000) AND (t."X_24" <= 2.000000) AND (t."X_27" <= 2.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" > 5.500000) AND (t."X_13" > 5.500000) AND (t."X_24" <= 2.000000) AND (t."X_27" > 2.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_11" <= 7.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" > 5.500000) AND (t."X_13" <= 5.500000) AND (t."X_11" > 7.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_15" > 2.500000) AND (t."X_20" > 6.500000) AND (t."X_24" > 0.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_15" > 2.500000) AND (t."X_20" > 6.500000) AND (t."X_24" <= 0.500000) AND (t."X_1" <= 6.000000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_23" > 5.500000) AND (t."X_15" > 2.500000) AND (t."X_20" > 6.500000) AND (t."X_24" <= 0.500000) AND (t."X_1" > 6.000000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" > 8.500000) AND (t."X_1" <= 7.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" > 8.500000) AND (t."X_1" > 7.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" <= 8.500000) AND (t."X_23" <= 2.500000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" <= 8.500000) AND (t."X_23" > 2.500000) AND (t."X_25" > 2.500000)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" <= 8.500000) AND (t."X_23" > 2.500000) AND (t."X_25" <= 2.500000) AND (t."X_0" <= 2.500000) AND (t."X_16" <= 2.000000)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" <= 8.500000) AND (t."X_23" > 2.500000) AND (t."X_25" <= 2.500000) AND (t."X_0" <= 2.500000) AND (t."X_16" > 2.000000)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" <= 8.500000) AND (t."X_23" > 2.500000) AND (t."X_25" <= 2.500000) AND (t."X_0" > 2.500000) AND (t."X_24" <= 5.000000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_23" <= 5.500000) AND (t."X_27" <= 7.500000) AND (t."X_28" <= 8.500000) AND (t."X_0" <= 5.500000) AND (t."X_29" <= 8.500000) AND (t."X_23" > 2.500000) AND (t."X_25" <= 2.500000) AND (t."X_0" > 2.500000) AND (t."X_24" > 5.000000)) THEN 62 ELSE NULL END AS "Leaf_62"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.376098 AS "P_0", 0.623902 AS "P_1", 1 AS "D", 0.623902 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.060519 AS "P_0", 0.939481 AS "P_1", 1 AS "D", 0.939481 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.869369 AS "P_0", 0.130631 AS "P_1", 0 AS "D", 0.869369 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.432432 AS "P_0", 0.567568 AS "P_1", 1 AS "D", 0.567568 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.956757 AS "P_0", 0.043243 AS "P_1", 0 AS "D", 0.956757 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.136364 AS "P_0", 0.863636 AS "P_1", 1 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.866667 AS "P_0", 0.133333 AS "P_1", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.032641 AS "P_0", 0.967359 AS "P_1", 1 AS "D", 0.967359 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.024096 AS "P_0", 0.975904 AS "P_1", 1 AS "D", 0.975904 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.825000 AS "P_0", 0.175000 AS "P_1", 0 AS "D", 0.825000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.993103 AS "P_0", 0.006897 AS "P_1", 0 AS "D", 0.993103 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.966667 AS "P_0", 0.033333 AS "P_1", 0 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.009646 AS "P_0", 0.990354 AS "P_1", 1 AS "D", 0.990354 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.238095 AS "P_0", 0.761905 AS "P_1", 1 AS "D", 0.761905 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.006689 AS "P_0", 0.993311 AS "P_1", 1 AS "D", 0.993311 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.014085 AS "P_0", 0.985915 AS "P_1", 1 AS "D", 0.985915 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.035714 AS "P_0", 0.964286 AS "P_1", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.018868 AS "P_0", 0.981132 AS "P_1", 1 AS "D", 0.981132 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_30" AS t1
   LEFT OUTER JOIN
   "DT_node_data_30" AS t2
   ON t1.node_id = t2.nid
 ),
"DT_node_lookup_31" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_36", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_29" <= 7.500000) AND (t."X_29" <= 1.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_29" <= 7.500000) AND (t."X_29" > 1.500000) AND (t."X_0" <= 5.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_29" <= 7.500000) AND (t."X_29" > 1.500000) AND (t."X_0" > 5.500000) AND (t."X_14" <= 4.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_29" <= 7.500000) AND (t."X_29" > 1.500000) AND (t."X_0" > 5.500000) AND (t."X_14" > 4.500000) AND (t."X_19" <= 7.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_29" <= 7.500000) AND (t."X_29" > 1.500000) AND (t."X_0" > 5.500000) AND (t."X_14" > 4.500000) AND (t."X_19" > 7.500000) AND (t."X_10" <= 7.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_29" <= 7.500000) AND (t."X_29" > 1.500000) AND (t."X_0" > 5.500000) AND (t."X_14" > 4.500000) AND (t."X_19" > 7.500000) AND (t."X_10" > 7.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_23" > 4.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_23" <= 4.500000) AND (t."X_22" <= 3.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_23" <= 4.500000) AND (t."X_22" > 3.500000) AND (t."X_24" <= 6.000000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" > 6.500000) AND (t."X_23" <= 4.500000) AND (t."X_22" > 3.500000) AND (t."X_24" > 6.000000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" > 6.500000) AND (t."X_19" > 0.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" > 6.500000) AND (t."X_19" <= 0.500000) AND (t."X_14" <= 0.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" > 6.500000) AND (t."X_19" <= 0.500000) AND (t."X_14" > 0.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_29" > 7.500000) AND (t."X_14" > 2.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_29" > 7.500000) AND (t."X_14" <= 2.500000) AND (t."X_24" <= 2.000000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_22" > 5.500000) AND (t."X_22" <= 6.500000) AND (t."X_29" > 7.500000) AND (t."X_14" <= 2.500000) AND (t."X_24" > 2.000000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_24" > 8.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_24" <= 8.500000) AND (t."X_21" > 6.500000) AND (t."X_14" <= 0.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_24" <= 8.500000) AND (t."X_21" > 6.500000) AND (t."X_14" > 0.500000) AND (t."X_24" <= 5.000000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_24" <= 8.500000) AND (t."X_21" > 6.500000) AND (t."X_14" > 0.500000) AND (t."X_24" > 5.000000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_24" <= 8.500000) AND (t."X_21" <= 6.500000) AND (t."X_10" <= 8.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" > 4.500000) AND (t."X_24" <= 8.500000) AND (t."X_21" <= 6.500000) AND (t."X_10" > 8.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_21" <= 8.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_21" > 8.500000) AND (t."X_1" > 7.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_21" > 8.500000) AND (t."X_1" <= 7.500000) AND (t."X_24" <= 8.000000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_22" <= 5.500000) AND (t."X_27" <= 6.500000) AND (t."X_20" <= 4.500000) AND (t."X_21" > 8.500000) AND (t."X_1" <= 7.500000) AND (t."X_24" > 8.000000)) THEN 50 ELSE NULL END AS "Leaf_50"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.374341 AS "P_0", 0.625659 AS "P_1", 1 AS "D", 0.625659 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.046377 AS "P_0", 0.953623 AS "P_1", 1 AS "D", 0.953623 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.879464 AS "P_0", 0.120536 AS "P_1", 0 AS "D", 0.879464 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.596774 AS "P_0", 0.403226 AS "P_1", 0 AS "D", 0.596774 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.987654 AS "P_0", 0.012346 AS "P_1", 0 AS "D", 0.987654 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.961538 AS "P_0", 0.038462 AS "P_1", 0 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.172414 AS "P_0", 0.827586 AS "P_1", 1 AS "D", 0.827586 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.021148 AS "P_0", 0.978852 AS "P_1", 1 AS "D", 0.978852 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.007143 AS "P_0", 0.992857 AS "P_1", 1 AS "D", 0.992857 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.098039 AS "P_0", 0.901961 AS "P_1", 1 AS "D", 0.901961 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.080000 AS "P_0", 0.920000 AS "P_1", 1 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.025641 AS "P_0", 0.974359 AS "P_1", 1 AS "D", 0.974359 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.080000 AS "P_0", 0.920000 AS "P_1", 1 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
   ON t1.node_id = t2.nid
 ),
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_4" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_Output_31" AS t
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
   CAST(NULL AS FLOAT) AS "Score_1"
FROM "union_of_trees" AS t
GROUP BY t."index"
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    MAX( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1" ) AS "Max_Score"
  FROM
     "avg_proba_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
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
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1" ) AS argmax_class_idx
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
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte