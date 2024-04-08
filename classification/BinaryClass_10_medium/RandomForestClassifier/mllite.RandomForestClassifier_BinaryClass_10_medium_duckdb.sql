WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "BinaryClass_10_medium" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_37", t1."Leaf_38", t1."Leaf_43", t1."Leaf_46", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58", t1."Leaf_61", t1."Leaf_63", t1."Leaf_64", t1."Leaf_65", t1."Leaf_67", t1."Leaf_69", t1."Leaf_71", t1."Leaf_72", t1."Leaf_74", t1."Leaf_75", t1."Leaf_76" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" > 0.890186)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_9" <= -1.468379)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_9" > -1.468379) AND (t."X_4" > 0.965544)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_9" > -1.468379) AND (t."X_4" <= 0.965544) AND (t."X_7" <= -0.632526)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_9" > -1.468379) AND (t."X_4" <= 0.965544) AND (t."X_7" > -0.632526) AND (t."X_4" > 0.961421)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_9" > -1.468379) AND (t."X_4" <= 0.965544) AND (t."X_7" > -0.632526) AND (t."X_4" <= 0.961421) AND (t."X_8" <= -2.497188)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_9" > -1.468379) AND (t."X_4" <= 0.965544) AND (t."X_7" > -0.632526) AND (t."X_4" <= 0.961421) AND (t."X_8" > -2.497188) AND (t."X_5" > 0.883105)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_9" > -1.468379) AND (t."X_4" <= 0.965544) AND (t."X_7" > -0.632526) AND (t."X_4" <= 0.961421) AND (t."X_8" > -2.497188) AND (t."X_5" <= 0.883105) AND (t."X_9" > 0.691379) AND (t."X_9" <= 1.188470)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_9" > -1.468379) AND (t."X_4" <= 0.965544) AND (t."X_7" > -0.632526) AND (t."X_4" <= 0.961421) AND (t."X_8" > -2.497188) AND (t."X_5" <= 0.883105) AND (t."X_9" > 0.691379) AND (t."X_9" > 1.188470)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_9" > -1.468379) AND (t."X_4" <= 0.965544) AND (t."X_7" > -0.632526) AND (t."X_4" <= 0.961421) AND (t."X_8" > -2.497188) AND (t."X_5" <= 0.883105) AND (t."X_9" <= 0.691379) AND (t."X_5" <= 0.698684)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_9" > -1.468379) AND (t."X_4" <= 0.965544) AND (t."X_7" > -0.632526) AND (t."X_4" <= 0.961421) AND (t."X_8" > -2.497188) AND (t."X_5" <= 0.883105) AND (t."X_9" <= 0.691379) AND (t."X_5" > 0.698684) AND (t."X_5" <= 0.753688)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_9" > -1.468379) AND (t."X_4" <= 0.965544) AND (t."X_7" > -0.632526) AND (t."X_4" <= 0.961421) AND (t."X_8" > -2.497188) AND (t."X_5" <= 0.883105) AND (t."X_9" <= 0.691379) AND (t."X_5" > 0.698684) AND (t."X_5" > 0.753688) AND (t."X_9" <= -0.540450)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.890186) AND (t."X_9" > -1.468379) AND (t."X_4" <= 0.965544) AND (t."X_7" > -0.632526) AND (t."X_4" <= 0.961421) AND (t."X_8" > -2.497188) AND (t."X_5" <= 0.883105) AND (t."X_9" <= 0.691379) AND (t."X_5" > 0.698684) AND (t."X_5" > 0.753688) AND (t."X_9" > -0.540450)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" > 2.253667) AND (t."X_9" > 2.689792)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" > 2.253667) AND (t."X_9" <= 2.689792) AND (t."X_5" <= -1.217207)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" > 2.253667) AND (t."X_9" <= 2.689792) AND (t."X_5" > -1.217207)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" <= -0.537820)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" <= -1.316072) AND (t."X_2" <= -0.482919)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" <= -1.316072) AND (t."X_2" > -0.482919)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" > 0.035605) AND (t."X_7" <= -1.499527)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" <= 0.035605) AND (t."X_4" <= 0.202938) AND (t."X_2" > -0.304864)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" <= 0.035605) AND (t."X_4" <= 0.202938) AND (t."X_2" <= -0.304864) AND (t."X_8" > -0.645708)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" <= 0.035605) AND (t."X_4" <= 0.202938) AND (t."X_2" <= -0.304864) AND (t."X_8" <= -0.645708) AND (t."X_5" <= -0.340804)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" <= 0.035605) AND (t."X_4" <= 0.202938) AND (t."X_2" <= -0.304864) AND (t."X_8" <= -0.645708) AND (t."X_5" > -0.340804) AND (t."X_9" <= 0.223577)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" <= 0.035605) AND (t."X_4" <= 0.202938) AND (t."X_2" <= -0.304864) AND (t."X_8" <= -0.645708) AND (t."X_5" > -0.340804) AND (t."X_9" > 0.223577)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" > 0.035605) AND (t."X_7" > -1.499527) AND (t."X_2" > 0.224023) AND (t."X_7" > 0.753878)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" > 0.035605) AND (t."X_7" > -1.499527) AND (t."X_2" > 0.224023) AND (t."X_7" <= 0.753878) AND (t."X_2" <= 0.243147)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" > 0.035605) AND (t."X_7" > -1.499527) AND (t."X_2" > 0.224023) AND (t."X_7" <= 0.753878) AND (t."X_2" > 0.243147)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" <= 0.035605) AND (t."X_4" > 0.202938) AND (t."X_9" <= -1.150284) AND (t."X_9" <= -1.567992)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" <= 0.035605) AND (t."X_4" > 0.202938) AND (t."X_9" <= -1.150284) AND (t."X_9" > -1.567992) AND (t."X_7" <= 0.996065)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" <= 0.035605) AND (t."X_4" > 0.202938) AND (t."X_9" <= -1.150284) AND (t."X_9" > -1.567992) AND (t."X_7" > 0.996065)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" <= 0.035605) AND (t."X_4" > 0.202938) AND (t."X_9" > -1.150284) AND (t."X_2" <= -0.477980)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" <= 0.035605) AND (t."X_4" > 0.202938) AND (t."X_9" > -1.150284) AND (t."X_2" > -0.477980) AND (t."X_2" <= 0.067859)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" <= 0.035605) AND (t."X_4" > 0.202938) AND (t."X_9" > -1.150284) AND (t."X_2" > -0.477980) AND (t."X_2" > 0.067859) AND (t."X_8" <= -1.143074)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" <= 0.035605) AND (t."X_4" > 0.202938) AND (t."X_9" > -1.150284) AND (t."X_2" > -0.477980) AND (t."X_2" > 0.067859) AND (t."X_8" > -1.143074) AND (t."X_5" <= -0.862980)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" <= 0.035605) AND (t."X_4" > 0.202938) AND (t."X_9" > -1.150284) AND (t."X_2" > -0.477980) AND (t."X_2" > 0.067859) AND (t."X_8" > -1.143074) AND (t."X_5" > -0.862980)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" > 0.035605) AND (t."X_7" > -1.499527) AND (t."X_2" <= 0.224023) AND (t."X_4" > 0.250834)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" > 0.035605) AND (t."X_7" > -1.499527) AND (t."X_2" <= 0.224023) AND (t."X_4" <= 0.250834) AND (t."X_9" <= -0.571601)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 2.253667) AND (t."X_2" > -0.537820) AND (t."X_8" > -1.316072) AND (t."X_8" > 0.035605) AND (t."X_7" > -1.499527) AND (t."X_2" <= 0.224023) AND (t."X_4" <= 0.250834) AND (t."X_9" > -0.571601)) THEN 76 ELSE NULL END AS "Leaf_76"
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
    SELECT 0 AS nid,  0.488281 AS "P_0", 0.511719 AS "P_1", 1 AS "D", 0.511719 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.065217 AS "P_0", 0.934783 AS "P_1", 1 AS "D", 0.934783 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.227273 AS "P_0", 0.772727 AS "P_1", 1 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.203125 AS "P_0", 0.796875 AS "P_1", 1 AS "D", 0.796875 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.317073 AS "P_0", 0.682927 AS "P_1", 1 AS "D", 0.682927 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.243243 AS "P_0", 0.756757 AS "P_1", 1 AS "D", 0.756757 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.176471 AS "P_0", 0.823529 AS "P_1", 1 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.151515 AS "P_0", 0.848485 AS "P_1", 1 AS "D", 0.848485 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.074074 AS "P_0", 0.925926 AS "P_1", 1 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.849817 AS "P_0", 0.150183 AS "P_1", 0 AS "D", 0.849817 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.742138 AS "P_0", 0.257862 AS "P_1", 0 AS "D", 0.742138 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.958333 AS "P_0", 0.041667 AS "P_1", 0 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.703704 AS "P_0", 0.296296 AS "P_1", 0 AS "D", 0.703704 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.602740 AS "P_0", 0.397260 AS "P_1", 0 AS "D", 0.602740 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.822581 AS "P_0", 0.177419 AS "P_1", 0 AS "D", 0.822581 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.816327 AS "P_0", 0.183673 AS "P_1", 0 AS "D", 0.816327 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.864407 AS "P_0", 0.135593 AS "P_1", 0 AS "D", 0.864407 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.973684 AS "P_0", 0.026316 AS "P_1", 0 AS "D", 0.973684 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.860465 AS "P_0", 0.139535 AS "P_1", 0 AS "D", 0.860465 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.902439 AS "P_0", 0.097561 AS "P_1", 0 AS "D", 0.902439 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_7", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_41", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_52", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_59", t1."Leaf_61", t1."Leaf_62", t1."Leaf_63", t1."Leaf_67", t1."Leaf_70", t1."Leaf_71", t1."Leaf_72", t1."Leaf_74", t1."Leaf_77", t1."Leaf_78", t1."Leaf_80", t1."Leaf_84", t1."Leaf_85", t1."Leaf_86", t1."Leaf_87", t1."Leaf_88", t1."Leaf_90", t1."Leaf_91", t1."Leaf_92", t1."Leaf_95", t1."Leaf_96", t1."Leaf_98", t1."Leaf_99", t1."Leaf_100", t1."Leaf_102", t1."Leaf_104", t1."Leaf_105", t1."Leaf_106", t1."Leaf_111", t1."Leaf_113", t1."Leaf_114", t1."Leaf_116", t1."Leaf_118", t1."Leaf_119", t1."Leaf_121", t1."Leaf_122", t1."Leaf_124", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" > 1.110547)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" > 0.167458) AND (t."X_9" <= -1.634164)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" <= 0.436001) AND (t."X_8" > -0.885204) AND (t."X_4" <= -1.416909) AND (t."X_4" > -1.527962)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" <= 0.436001) AND (t."X_8" > -0.885204) AND (t."X_4" > -1.416909) AND (t."X_7" <= -1.627057)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" <= 0.436001) AND (t."X_8" > -0.885204) AND (t."X_4" > -1.416909) AND (t."X_7" > -1.627057)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" <= 0.436001) AND (t."X_8" > -0.885204) AND (t."X_4" <= -1.416909) AND (t."X_4" <= -1.527962) AND (t."X_9" > -0.062947) AND (t."X_8" <= 0.164960)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" <= 0.436001) AND (t."X_8" > -0.885204) AND (t."X_4" <= -1.416909) AND (t."X_4" <= -1.527962) AND (t."X_9" > -0.062947) AND (t."X_8" > 0.164960) AND (t."X_9" <= 1.882492)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" <= 0.436001) AND (t."X_8" > -0.885204) AND (t."X_4" <= -1.416909) AND (t."X_4" <= -1.527962) AND (t."X_9" > -0.062947) AND (t."X_8" > 0.164960) AND (t."X_9" > 1.882492)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" <= 0.436001) AND (t."X_8" > -0.885204) AND (t."X_4" <= -1.416909) AND (t."X_4" <= -1.527962) AND (t."X_9" <= -0.062947) AND (t."X_7" <= -1.017923)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" <= 0.436001) AND (t."X_8" > -0.885204) AND (t."X_4" <= -1.416909) AND (t."X_4" <= -1.527962) AND (t."X_9" <= -0.062947) AND (t."X_7" > -1.017923)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" <= 0.436001) AND (t."X_8" <= -0.885204) AND (t."X_9" <= -0.066949)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" <= 0.436001) AND (t."X_8" <= -0.885204) AND (t."X_9" > -0.066949) AND (t."X_9" <= 0.793096)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" <= 0.436001) AND (t."X_8" <= -0.885204) AND (t."X_9" > -0.066949) AND (t."X_9" > 0.793096)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" > 1.309392) AND (t."X_8" <= 2.218300)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" > 1.309392) AND (t."X_8" > 2.218300)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.063157) AND (t."X_9" > 1.248769) AND (t."X_8" <= 0.244206)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.063157) AND (t."X_9" > 1.248769) AND (t."X_8" > 0.244206) AND (t."X_9" > 1.567461)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.063157) AND (t."X_9" > 1.248769) AND (t."X_8" > 0.244206) AND (t."X_9" <= 1.567461) AND (t."X_9" <= 1.485166)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.063157) AND (t."X_9" > 1.248769) AND (t."X_8" > 0.244206) AND (t."X_9" <= 1.567461) AND (t."X_9" > 1.485166)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" <= -2.566546)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" <= -0.905960) AND (t."X_9" > 1.262417)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" <= -0.905960) AND (t."X_9" <= 1.262417) AND (t."X_7" <= -0.412796) AND (t."X_7" <= -0.990846)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" <= -0.905960) AND (t."X_9" <= 1.262417) AND (t."X_7" <= -0.412796) AND (t."X_7" > -0.990846)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" <= -0.905960) AND (t."X_9" <= 1.262417) AND (t."X_7" > -0.412796) AND (t."X_4" <= -1.034814)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" <= -0.905960) AND (t."X_9" <= 1.262417) AND (t."X_7" > -0.412796) AND (t."X_4" > -1.034814) AND (t."X_4" <= -0.484330)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" <= -0.905960) AND (t."X_9" <= 1.262417) AND (t."X_7" > -0.412796) AND (t."X_4" > -1.034814) AND (t."X_4" > -0.484330) AND (t."X_9" <= -0.061012)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" <= -0.905960) AND (t."X_9" <= 1.262417) AND (t."X_7" > -0.412796) AND (t."X_4" > -1.034814) AND (t."X_4" > -0.484330) AND (t."X_9" > -0.061012)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" > -0.905960) AND (t."X_4" <= -1.104205)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" > -0.905960) AND (t."X_4" > -1.104205) AND (t."X_8" > -0.172640) AND (t."X_4" <= -0.869828)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" > -0.905960) AND (t."X_4" > -1.104205) AND (t."X_8" > -0.172640) AND (t."X_4" > -0.869828) AND (t."X_8" > -0.042557)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" > -0.905960) AND (t."X_4" > -1.104205) AND (t."X_8" > -0.172640) AND (t."X_4" > -0.869828) AND (t."X_8" <= -0.042557) AND (t."X_4" <= -0.028334)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" > -0.905960) AND (t."X_4" > -1.104205) AND (t."X_8" > -0.172640) AND (t."X_4" > -0.869828) AND (t."X_8" <= -0.042557) AND (t."X_4" > -0.028334)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.063157) AND (t."X_9" <= 1.248769) AND (t."X_7" > 1.953578)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.063157) AND (t."X_9" <= 1.248769) AND (t."X_7" <= 1.953578) AND (t."X_8" > 1.272512) AND (t."X_9" <= -0.036171)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.063157) AND (t."X_9" <= 1.248769) AND (t."X_7" <= 1.953578) AND (t."X_8" > 1.272512) AND (t."X_9" > -0.036171)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" > 0.436001) AND (t."X_9" > -0.114616)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" > 0.436001) AND (t."X_9" <= -0.114616) AND (t."X_8" <= -0.315120) AND (t."X_8" > -0.547973)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" > 0.436001) AND (t."X_9" <= -0.114616) AND (t."X_8" <= -0.315120) AND (t."X_8" <= -0.547973) AND (t."X_8" <= -1.344060)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" > 0.436001) AND (t."X_9" <= -0.114616) AND (t."X_8" <= -0.315120) AND (t."X_8" <= -0.547973) AND (t."X_8" > -1.344060)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" > 0.436001) AND (t."X_9" <= -0.114616) AND (t."X_8" > -0.315120) AND (t."X_7" <= 1.746913)) THEN 87 ELSE NULL END AS "Leaf_87",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" <= -1.160605) AND (t."X_7" > 0.436001) AND (t."X_9" <= -0.114616) AND (t."X_8" > -0.315120) AND (t."X_7" > 1.746913)) THEN 88 ELSE NULL END AS "Leaf_88",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.063157) AND (t."X_9" <= 1.248769) AND (t."X_7" <= 1.953578) AND (t."X_8" <= 1.272512) AND (t."X_7" > -0.538758)) THEN 90 ELSE NULL END AS "Leaf_90",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.063157) AND (t."X_9" <= 1.248769) AND (t."X_7" <= 1.953578) AND (t."X_8" <= 1.272512) AND (t."X_7" <= -0.538758) AND (t."X_7" <= -0.757218)) THEN 91 ELSE NULL END AS "Leaf_91",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.063157) AND (t."X_9" <= 1.248769) AND (t."X_7" <= 1.953578) AND (t."X_8" <= 1.272512) AND (t."X_7" <= -0.538758) AND (t."X_7" > -0.757218)) THEN 92 ELSE NULL END AS "Leaf_92",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" > -0.905960) AND (t."X_4" > -1.104205) AND (t."X_8" <= -0.172640) AND (t."X_9" <= -0.724884) AND (t."X_4" <= -0.499684)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" > -0.905960) AND (t."X_4" > -1.104205) AND (t."X_8" <= -0.172640) AND (t."X_9" <= -0.724884) AND (t."X_4" > -0.499684)) THEN 96 ELSE NULL END AS "Leaf_96",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" > -0.905960) AND (t."X_4" > -1.104205) AND (t."X_8" <= -0.172640) AND (t."X_9" > -0.724884) AND (t."X_4" > -0.650599)) THEN 98 ELSE NULL END AS "Leaf_98",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" > -0.905960) AND (t."X_4" > -1.104205) AND (t."X_8" <= -0.172640) AND (t."X_9" > -0.724884) AND (t."X_4" <= -0.650599) AND (t."X_7" <= -0.277785)) THEN 99 ELSE NULL END AS "Leaf_99",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" <= 0.167458) AND (t."X_4" > -1.160605) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.063157) AND (t."X_9" > -2.566546) AND (t."X_8" > -0.905960) AND (t."X_4" > -1.104205) AND (t."X_8" <= -0.172640) AND (t."X_9" > -0.724884) AND (t."X_4" <= -0.650599) AND (t."X_7" > -0.277785)) THEN 100 ELSE NULL END AS "Leaf_100",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" > 0.167458) AND (t."X_9" > -1.634164) AND (t."X_4" > 0.341172)) THEN 102 ELSE NULL END AS "Leaf_102",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" > 0.167458) AND (t."X_9" > -1.634164) AND (t."X_4" <= 0.341172) AND (t."X_4" > 0.320443)) THEN 104 ELSE NULL END AS "Leaf_104",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" > 0.167458) AND (t."X_9" > -1.634164) AND (t."X_4" <= 0.341172) AND (t."X_4" <= 0.320443) AND (t."X_8" <= 0.589235)) THEN 105 ELSE NULL END AS "Leaf_105",
      CASE WHEN((t."X_4" <= 0.890346) AND (t."X_4" > 0.167458) AND (t."X_9" > -1.634164) AND (t."X_4" <= 0.341172) AND (t."X_4" <= 0.320443) AND (t."X_8" > 0.589235)) THEN 106 ELSE NULL END AS "Leaf_106",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" > 0.658602) AND (t."X_8" <= 0.905266) AND (t."X_7" <= -0.192959)) THEN 111 ELSE NULL END AS "Leaf_111",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" > 0.658602) AND (t."X_8" <= 0.905266) AND (t."X_7" > -0.192959) AND (t."X_4" <= 1.031148)) THEN 113 ELSE NULL END AS "Leaf_113",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" > 0.658602) AND (t."X_8" <= 0.905266) AND (t."X_7" > -0.192959) AND (t."X_4" > 1.031148)) THEN 114 ELSE NULL END AS "Leaf_114",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" > 0.658602) AND (t."X_8" > 0.905266) AND (t."X_4" > 1.065585)) THEN 116 ELSE NULL END AS "Leaf_116",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" > 0.658602) AND (t."X_8" > 0.905266) AND (t."X_4" <= 1.065585) AND (t."X_9" > -0.242519)) THEN 118 ELSE NULL END AS "Leaf_118",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" > 0.658602) AND (t."X_8" > 0.905266) AND (t."X_4" <= 1.065585) AND (t."X_9" <= -0.242519) AND (t."X_4" <= 0.976831)) THEN 119 ELSE NULL END AS "Leaf_119",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" > 0.658602) AND (t."X_8" > 0.905266) AND (t."X_4" <= 1.065585) AND (t."X_9" <= -0.242519) AND (t."X_4" > 0.976831) AND (t."X_9" <= -0.374718)) THEN 121 ELSE NULL END AS "Leaf_121",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" > 0.658602) AND (t."X_8" > 0.905266) AND (t."X_4" <= 1.065585) AND (t."X_9" <= -0.242519) AND (t."X_4" > 0.976831) AND (t."X_9" > -0.374718)) THEN 122 ELSE NULL END AS "Leaf_122",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" <= 0.658602) AND (t."X_4" > 0.932813)) THEN 124 ELSE NULL END AS "Leaf_124",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" <= 0.658602) AND (t."X_4" <= 0.932813) AND (t."X_4" <= 0.931406)) THEN 125 ELSE NULL END AS "Leaf_125",
      CASE WHEN((t."X_4" > 0.890346) AND (t."X_4" <= 1.110547) AND (t."X_8" <= 0.658602) AND (t."X_4" <= 0.932813) AND (t."X_4" > 0.931406)) THEN 126 ELSE NULL END AS "Leaf_126"
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
    SELECT 0 AS nid,  0.455078 AS "P_0", 0.544922 AS "P_1", 1 AS "D", 0.544922 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.592233 AS "P_0", 0.407767 AS "P_1", 0 AS "D", 0.592233 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.246305 AS "P_0", 0.753695 AS "P_1", 1 AS "D", 0.753695 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.094675 AS "P_0", 0.905325 AS "P_1", 1 AS "D", 0.905325 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.510040 AS "P_0", 0.489960 AS "P_1", 0 AS "D", 0.510040 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.965517 AS "P_0", 0.034483 AS "P_1", 0 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.382022 AS "P_0", 0.617977 AS "P_1", 1 AS "D", 0.617977 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.581250 AS "P_0", 0.418750 AS "P_1", 0 AS "D", 0.581250 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.566038 AS "P_0", 0.433962 AS "P_1", 0 AS "D", 0.566038 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.690476 AS "P_0", 0.309524 AS "P_1", 0 AS "D", 0.690476 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.586207 AS "P_0", 0.413793 AS "P_1", 0 AS "D", 0.586207 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.708333 AS "P_0", 0.291667 AS "P_1", 0 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
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
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.620690 AS "P_0", 0.379310 AS "P_1", 0 AS "D", 0.620690 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.515789 AS "P_0", 0.484211 AS "P_1", 0 AS "D", 0.515789 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.820000 AS "P_0", 0.180000 AS "P_1", 0 AS "D", 0.820000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.886364 AS "P_0", 0.113636 AS "P_1", 0 AS "D", 0.886364 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.458824 AS "P_0", 0.541176 AS "P_1", 1 AS "D", 0.541176 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.345455 AS "P_0", 0.654545 AS "P_1", 1 AS "D", 0.654545 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.137931 AS "P_0", 0.862069 AS "P_1", 1 AS "D", 0.862069 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.521739 AS "P_0", 0.478261 AS "P_1", 0 AS "D", 0.521739 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.906977 AS "P_0", 0.093023 AS "P_1", 0 AS "D", 0.906977 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.086957 AS "P_0", 0.913043 AS "P_1", 1 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.075188 AS "P_0", 0.924812 AS "P_1", 1 AS "D", 0.924812 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  0.068966 AS "P_0", 0.931035 AS "P_1", 1 AS "D", 0.931035 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  0.057851 AS "P_0", 0.942149 AS "P_1", 1 AS "D", 0.942149 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_9", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_40", t1."Leaf_42", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_53", t1."Leaf_56", t1."Leaf_57", t1."Leaf_59", t1."Leaf_60", t1."Leaf_62", t1."Leaf_63", t1."Leaf_64", t1."Leaf_66", t1."Leaf_68", t1."Leaf_69", t1."Leaf_71", t1."Leaf_72", t1."Leaf_73", t1."Leaf_78", t1."Leaf_79", t1."Leaf_80", t1."Leaf_81", t1."Leaf_83", t1."Leaf_85", t1."Leaf_87", t1."Leaf_89", t1."Leaf_93", t1."Leaf_95", t1."Leaf_96", t1."Leaf_98", t1."Leaf_99", t1."Leaf_100", t1."Leaf_102", t1."Leaf_104", t1."Leaf_105", t1."Leaf_106" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" <= -0.407102)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" > -0.057505) AND (t."X_7" <= -1.112899)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" > -0.057505) AND (t."X_7" > -1.112899) AND (t."X_6" > 0.357505) AND (t."X_5" > -0.099196) AND (t."X_6" <= 0.681118)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" > -0.057505) AND (t."X_7" > -1.112899) AND (t."X_6" > 0.357505) AND (t."X_5" > -0.099196) AND (t."X_6" > 0.681118)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" > -0.057505) AND (t."X_7" > -1.112899) AND (t."X_6" > 0.357505) AND (t."X_5" <= -0.099196) AND (t."X_9" <= 1.956148)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" > -0.057505) AND (t."X_7" > -1.112899) AND (t."X_6" > 0.357505) AND (t."X_5" <= -0.099196) AND (t."X_9" > 1.956148)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" > -0.057505) AND (t."X_7" > -1.112899) AND (t."X_6" <= 0.357505) AND (t."X_8" > 1.533863)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" <= -0.057505) AND (t."X_9" <= -1.690773) AND (t."X_9" <= -2.152633)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" <= -0.057505) AND (t."X_9" <= -1.690773) AND (t."X_9" > -2.152633)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" <= -0.057505) AND (t."X_9" > -1.690773) AND (t."X_9" <= -0.487946)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" <= -0.057505) AND (t."X_9" > -1.690773) AND (t."X_9" > -0.487946) AND (t."X_7" <= -1.727868)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" <= -0.057505) AND (t."X_9" > -1.690773) AND (t."X_9" > -0.487946) AND (t."X_7" > -1.727868) AND (t."X_7" <= 1.400445)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" <= -0.057505) AND (t."X_9" > -1.690773) AND (t."X_9" > -0.487946) AND (t."X_7" > -1.727868) AND (t."X_7" > 1.400445)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" > -0.057505) AND (t."X_7" > -1.112899) AND (t."X_6" <= 0.357505) AND (t."X_8" <= 1.533863) AND (t."X_7" <= 0.533812)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" > -0.057505) AND (t."X_7" > -1.112899) AND (t."X_6" <= 0.357505) AND (t."X_8" <= 1.533863) AND (t."X_7" > 0.533812) AND (t."X_5" > -0.306780)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" > -0.057505) AND (t."X_7" > -1.112899) AND (t."X_6" <= 0.357505) AND (t."X_8" <= 1.533863) AND (t."X_7" > 0.533812) AND (t."X_5" <= -0.306780) AND (t."X_7" <= 0.589563)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" > -0.498147) AND (t."X_6" > -0.407102) AND (t."X_9" > -0.057505) AND (t."X_7" > -1.112899) AND (t."X_6" <= 0.357505) AND (t."X_8" <= 1.533863) AND (t."X_7" > 0.533812) AND (t."X_5" <= -0.306780) AND (t."X_7" > 0.589563)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" > 1.537917)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" > 1.523414)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" <= 1.523414) AND (t."X_7" <= -0.177354) AND (t."X_5" <= 0.491473)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" <= 1.523414) AND (t."X_7" <= -0.177354) AND (t."X_5" > 0.491473)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" <= 1.523414) AND (t."X_7" > -0.177354) AND (t."X_8" <= -2.958045)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" <= 1.523414) AND (t."X_7" > -0.177354) AND (t."X_8" > -2.958045) AND (t."X_6" > 0.163948) AND (t."X_6" <= 1.020421) AND (t."X_8" <= -0.658176)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" <= 1.523414) AND (t."X_7" > -0.177354) AND (t."X_8" > -2.958045) AND (t."X_6" > 0.163948) AND (t."X_6" <= 1.020421) AND (t."X_8" > -0.658176) AND (t."X_5" > 1.450235)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" <= 1.523414) AND (t."X_7" > -0.177354) AND (t."X_8" > -2.958045) AND (t."X_6" > 0.163948) AND (t."X_6" <= 1.020421) AND (t."X_8" > -0.658176) AND (t."X_5" <= 1.450235) AND (t."X_6" <= 0.939688)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" <= 1.523414) AND (t."X_7" > -0.177354) AND (t."X_8" > -2.958045) AND (t."X_6" > 0.163948) AND (t."X_6" <= 1.020421) AND (t."X_8" > -0.658176) AND (t."X_5" <= 1.450235) AND (t."X_6" > 0.939688) AND (t."X_5" <= 0.609471)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" <= 1.523414) AND (t."X_7" > -0.177354) AND (t."X_8" > -2.958045) AND (t."X_6" > 0.163948) AND (t."X_6" <= 1.020421) AND (t."X_8" > -0.658176) AND (t."X_5" <= 1.450235) AND (t."X_6" > 0.939688) AND (t."X_5" > 0.609471)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" <= 1.523414) AND (t."X_7" > -0.177354) AND (t."X_8" > -2.958045) AND (t."X_6" > 0.163948) AND (t."X_6" > 1.020421) AND (t."X_6" > 1.237531)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" <= 1.523414) AND (t."X_7" > -0.177354) AND (t."X_8" > -2.958045) AND (t."X_6" > 0.163948) AND (t."X_6" > 1.020421) AND (t."X_6" <= 1.237531) AND (t."X_6" <= 1.188712)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" <= 1.523414) AND (t."X_7" > -0.177354) AND (t."X_8" > -2.958045) AND (t."X_6" > 0.163948) AND (t."X_6" > 1.020421) AND (t."X_6" <= 1.237531) AND (t."X_6" > 1.188712)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" <= 1.523414) AND (t."X_7" > -0.177354) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.163948) AND (t."X_9" > -0.118742)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" <= 1.523414) AND (t."X_7" > -0.177354) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.163948) AND (t."X_9" <= -0.118742) AND (t."X_9" > -0.146890)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" <= 1.523414) AND (t."X_7" > -0.177354) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.163948) AND (t."X_9" <= -0.118742) AND (t."X_9" <= -0.146890) AND (t."X_5" <= 0.883590)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" <= 1.523414) AND (t."X_7" > -0.177354) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.163948) AND (t."X_9" <= -0.118742) AND (t."X_9" <= -0.146890) AND (t."X_5" > 0.883590) AND (t."X_5" <= 0.962875)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" > -0.210901) AND (t."X_5" <= 1.537917) AND (t."X_5" <= 1.523414) AND (t."X_7" > -0.177354) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.163948) AND (t."X_9" <= -0.118742) AND (t."X_9" <= -0.146890) AND (t."X_5" > 0.883590) AND (t."X_5" > 0.962875)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" <= -1.484666)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_9" <= -1.191382) AND (t."X_8" > 1.072851)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_9" <= -1.191382) AND (t."X_8" <= 1.072851) AND (t."X_8" <= -0.749061)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_9" <= -1.191382) AND (t."X_8" <= 1.072851) AND (t."X_8" > -0.749061)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_9" > -1.191382) AND (t."X_5" <= -1.470044)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_9" > -1.191382) AND (t."X_5" > -1.470044) AND (t."X_6" <= -0.816098)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_9" > -1.191382) AND (t."X_5" > -1.470044) AND (t."X_6" > -0.816098) AND (t."X_7" <= -1.663244)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_9" > -1.191382) AND (t."X_5" > -1.470044) AND (t."X_6" > -0.816098) AND (t."X_7" > -1.663244) AND (t."X_6" <= -0.789114)) THEN 87 ELSE NULL END AS "Leaf_87",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_9" > -1.191382) AND (t."X_5" > -1.470044) AND (t."X_6" > -0.816098) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.789114) AND (t."X_8" <= -2.305745)) THEN 89 ELSE NULL END AS "Leaf_89",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_9" > -1.191382) AND (t."X_5" > -1.470044) AND (t."X_6" > -0.816098) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.789114) AND (t."X_8" > -2.305745) AND (t."X_5" > -0.713315) AND (t."X_5" <= -0.675483)) THEN 93 ELSE NULL END AS "Leaf_93",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_9" > -1.191382) AND (t."X_5" > -1.470044) AND (t."X_6" > -0.816098) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.789114) AND (t."X_8" > -2.305745) AND (t."X_5" > -0.713315) AND (t."X_5" > -0.675483) AND (t."X_7" <= -0.247465)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_9" > -1.191382) AND (t."X_5" > -1.470044) AND (t."X_6" > -0.816098) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.789114) AND (t."X_8" > -2.305745) AND (t."X_5" > -0.713315) AND (t."X_5" > -0.675483) AND (t."X_7" > -0.247465)) THEN 96 ELSE NULL END AS "Leaf_96",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_9" > -1.191382) AND (t."X_5" > -1.470044) AND (t."X_6" > -0.816098) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.789114) AND (t."X_8" > -2.305745) AND (t."X_5" <= -0.713315) AND (t."X_9" > 2.253667)) THEN 98 ELSE NULL END AS "Leaf_98",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_9" > -1.191382) AND (t."X_5" > -1.470044) AND (t."X_6" > -0.816098) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.789114) AND (t."X_8" > -2.305745) AND (t."X_5" <= -0.713315) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 0.251465)) THEN 99 ELSE NULL END AS "Leaf_99",
      CASE WHEN((t."X_5" <= 0.216485) AND (t."X_5" <= -0.498147) AND (t."X_5" > -1.484666) AND (t."X_9" > -1.191382) AND (t."X_5" > -1.470044) AND (t."X_6" > -0.816098) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.789114) AND (t."X_8" > -2.305745) AND (t."X_5" <= -0.713315) AND (t."X_9" <= 2.253667) AND (t."X_7" > 0.251465)) THEN 100 ELSE NULL END AS "Leaf_100",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" <= -0.210901) AND (t."X_6" > 0.463838)) THEN 102 ELSE NULL END AS "Leaf_102",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" <= -0.210901) AND (t."X_6" <= 0.463838) AND (t."X_5" > 0.588968)) THEN 104 ELSE NULL END AS "Leaf_104",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" <= -0.210901) AND (t."X_6" <= 0.463838) AND (t."X_5" <= 0.588968) AND (t."X_7" <= -0.625657)) THEN 105 ELSE NULL END AS "Leaf_105",
      CASE WHEN((t."X_5" > 0.216485) AND (t."X_7" <= -0.210901) AND (t."X_6" <= 0.463838) AND (t."X_5" <= 0.588968) AND (t."X_7" > -0.625657)) THEN 106 ELSE NULL END AS "Leaf_106"
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
    SELECT 0 AS nid,  0.519531 AS "P_0", 0.480469 AS "P_1", 0 AS "D", 0.519531 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.852113 AS "P_0", 0.147887 AS "P_1", 0 AS "D", 0.852113 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.105263 AS "P_0", 0.894737 AS "P_1", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.920000 AS "P_0", 0.080000 AS "P_1", 0 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.690476 AS "P_0", 0.309524 AS "P_1", 0 AS "D", 0.690476 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.573770 AS "P_0", 0.426230 AS "P_1", 0 AS "D", 0.573770 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.807692 AS "P_0", 0.192308 AS "P_1", 0 AS "D", 0.807692 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.275862 AS "P_0", 0.724138 AS "P_1", 1 AS "D", 0.724138 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.869565 AS "P_0", 0.130435 AS "P_1", 0 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.011364 AS "P_0", 0.988636 AS "P_1", 1 AS "D", 0.988636 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.164286 AS "P_0", 0.835714 AS "P_1", 1 AS "D", 0.835714 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.232323 AS "P_0", 0.767677 AS "P_1", 1 AS "D", 0.767677 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.208333 AS "P_0", 0.791667 AS "P_1", 1 AS "D", 0.791667 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.175824 AS "P_0", 0.824176 AS "P_1", 1 AS "D", 0.824176 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.260000 AS "P_0", 0.740000 AS "P_1", 1 AS "D", 0.740000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.461538 AS "P_0", 0.538462 AS "P_1", 1 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.041667 AS "P_0", 0.958333 AS "P_1", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.868852 AS "P_0", 0.131148 AS "P_1", 0 AS "D", 0.868852 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.899083 AS "P_0", 0.100917 AS "P_1", 0 AS "D", 0.899083 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.915888 AS "P_0", 0.084112 AS "P_1", 0 AS "D", 0.915888 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.873239 AS "P_0", 0.126761 AS "P_1", 0 AS "D", 0.873239 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.885714 AS "P_0", 0.114286 AS "P_1", 0 AS "D", 0.885714 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.911765 AS "P_0", 0.088235 AS "P_1", 0 AS "D", 0.911765 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.925373 AS "P_0", 0.074627 AS "P_1", 0 AS "D", 0.925373 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.963636 AS "P_0", 0.036364 AS "P_1", 0 AS "D", 0.963636 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.981481 AS "P_0", 0.018519 AS "P_1", 0 AS "D", 0.981481 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_7", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_37", t1."Leaf_40", t1."Leaf_43", t1."Leaf_45", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_59", t1."Leaf_61", t1."Leaf_62", t1."Leaf_63", t1."Leaf_64", t1."Leaf_67", t1."Leaf_68", t1."Leaf_70", t1."Leaf_73", t1."Leaf_74", t1."Leaf_75", t1."Leaf_78", t1."Leaf_79", t1."Leaf_81", t1."Leaf_82", t1."Leaf_86", t1."Leaf_87", t1."Leaf_88", t1."Leaf_90", t1."Leaf_91", t1."Leaf_92", t1."Leaf_94", t1."Leaf_95", t1."Leaf_96", t1."Leaf_99", t1."Leaf_100", t1."Leaf_101", t1."Leaf_105", t1."Leaf_109", t1."Leaf_112", t1."Leaf_113", t1."Leaf_114", t1."Leaf_116", t1."Leaf_117", t1."Leaf_118", t1."Leaf_120", t1."Leaf_122", t1."Leaf_124", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" > 2.089849)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" <= -0.245428) AND (t."X_0" <= -0.098532)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" <= -0.245428) AND (t."X_0" > -0.098532) AND (t."X_7" <= -1.267416) AND (t."X_0" <= 1.706355)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" <= -0.245428) AND (t."X_0" > -0.098532) AND (t."X_7" <= -1.267416) AND (t."X_0" > 1.706355)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" <= -0.245428) AND (t."X_0" > -0.098532) AND (t."X_7" > -1.267416) AND (t."X_9" <= -0.642245) AND (t."X_0" <= 0.072714)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" <= -0.245428) AND (t."X_0" > -0.098532) AND (t."X_7" > -1.267416) AND (t."X_9" <= -0.642245) AND (t."X_0" > 0.072714) AND (t."X_9" > -0.848870)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" <= -0.245428) AND (t."X_0" > -0.098532) AND (t."X_7" > -1.267416) AND (t."X_9" <= -0.642245) AND (t."X_0" > 0.072714) AND (t."X_9" <= -0.848870) AND (t."X_7" <= -0.163544)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" <= -0.245428) AND (t."X_0" > -0.098532) AND (t."X_7" > -1.267416) AND (t."X_9" <= -0.642245) AND (t."X_0" > 0.072714) AND (t."X_9" <= -0.848870) AND (t."X_7" > -0.163544) AND (t."X_0" > 1.026431) AND (t."X_9" <= -2.137708)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" <= -0.245428) AND (t."X_0" > -0.098532) AND (t."X_7" > -1.267416) AND (t."X_9" <= -0.642245) AND (t."X_0" > 0.072714) AND (t."X_9" <= -0.848870) AND (t."X_7" > -0.163544) AND (t."X_0" > 1.026431) AND (t."X_9" > -2.137708)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" <= -0.245428) AND (t."X_0" > -0.098532) AND (t."X_7" > -1.267416) AND (t."X_9" <= -0.642245) AND (t."X_0" > 0.072714) AND (t."X_9" <= -0.848870) AND (t."X_7" > -0.163544) AND (t."X_0" <= 1.026431) AND (t."X_7" <= -0.066622)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" <= -0.245428) AND (t."X_0" > -0.098532) AND (t."X_7" > -1.267416) AND (t."X_9" <= -0.642245) AND (t."X_0" > 0.072714) AND (t."X_9" <= -0.848870) AND (t."X_7" > -0.163544) AND (t."X_0" <= 1.026431) AND (t."X_7" > -0.066622)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" <= -0.245428) AND (t."X_0" > -0.098532) AND (t."X_7" > -1.267416) AND (t."X_9" > -0.642245) AND (t."X_9" <= -0.322768)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" <= -0.245428) AND (t."X_0" > -0.098532) AND (t."X_7" > -1.267416) AND (t."X_9" > -0.642245) AND (t."X_9" > -0.322768) AND (t."X_9" <= -0.315086)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" <= -0.245428) AND (t."X_0" > -0.098532) AND (t."X_7" > -1.267416) AND (t."X_9" > -0.642245) AND (t."X_9" > -0.322768) AND (t."X_9" > -0.315086) AND (t."X_0" <= 0.058215)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" <= -0.245428) AND (t."X_0" > -0.098532) AND (t."X_7" > -1.267416) AND (t."X_9" > -0.642245) AND (t."X_9" > -0.322768) AND (t."X_9" > -0.315086) AND (t."X_0" > 0.058215)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" > -1.053127) AND (t."X_0" <= -1.282300)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" > -1.053127) AND (t."X_0" > -1.282300) AND (t."X_9" > -0.141470)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" > -1.053127) AND (t."X_0" > -1.282300) AND (t."X_9" <= -0.141470) AND (t."X_1" > 1.136256) AND (t."X_0" <= -0.831476)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" > -1.053127) AND (t."X_0" > -1.282300) AND (t."X_9" <= -0.141470) AND (t."X_1" > 1.136256) AND (t."X_0" > -0.831476) AND (t."X_9" <= -1.009910)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" > -1.053127) AND (t."X_0" > -1.282300) AND (t."X_9" <= -0.141470) AND (t."X_1" <= 1.136256) AND (t."X_8" > 1.911452)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" > -1.053127) AND (t."X_0" > -1.282300) AND (t."X_9" <= -0.141470) AND (t."X_1" > 1.136256) AND (t."X_0" > -0.831476) AND (t."X_9" > -1.009910) AND (t."X_1" <= 1.668350)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" > -1.053127) AND (t."X_0" > -1.282300) AND (t."X_9" <= -0.141470) AND (t."X_1" > 1.136256) AND (t."X_0" > -0.831476) AND (t."X_9" > -1.009910) AND (t."X_1" > 1.668350) AND (t."X_9" <= -0.681295)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" > -1.053127) AND (t."X_0" > -1.282300) AND (t."X_9" <= -0.141470) AND (t."X_1" > 1.136256) AND (t."X_0" > -0.831476) AND (t."X_9" > -1.009910) AND (t."X_1" > 1.668350) AND (t."X_9" > -0.681295)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" > -1.053127) AND (t."X_0" > -1.282300) AND (t."X_9" <= -0.141470) AND (t."X_1" <= 1.136256) AND (t."X_8" <= 1.911452) AND (t."X_8" <= -0.046569)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" <= -0.212001) AND (t."X_8" <= -1.040586) AND (t."X_1" > 0.242590) AND (t."X_9" <= -1.065094)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" <= -0.212001) AND (t."X_8" <= -1.040586) AND (t."X_1" > 0.242590) AND (t."X_9" > -1.065094) AND (t."X_9" <= -0.254154)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" <= -0.212001) AND (t."X_8" <= -1.040586) AND (t."X_1" > 0.242590) AND (t."X_9" > -1.065094) AND (t."X_9" > -0.254154)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" <= -0.212001) AND (t."X_8" <= -1.040586) AND (t."X_1" <= 0.242590) AND (t."X_9" <= -0.175753)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" <= -0.212001) AND (t."X_8" <= -1.040586) AND (t."X_1" <= 0.242590) AND (t."X_9" > -0.175753)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" <= -0.212001) AND (t."X_8" > -1.040586) AND (t."X_8" <= -0.653717) AND (t."X_7" <= -0.997241)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" <= -0.212001) AND (t."X_8" > -1.040586) AND (t."X_8" <= -0.653717) AND (t."X_7" > -0.997241)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" <= -0.212001) AND (t."X_8" > -1.040586) AND (t."X_8" > -0.653717) AND (t."X_1" > 1.228510)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" <= -0.212001) AND (t."X_8" > -1.040586) AND (t."X_8" > -0.653717) AND (t."X_1" <= 1.228510) AND (t."X_9" <= -1.266969) AND (t."X_9" <= -1.644679)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" <= -0.212001) AND (t."X_8" > -1.040586) AND (t."X_8" > -0.653717) AND (t."X_1" <= 1.228510) AND (t."X_9" <= -1.266969) AND (t."X_9" > -1.644679)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" <= -0.212001) AND (t."X_8" > -1.040586) AND (t."X_8" > -0.653717) AND (t."X_1" <= 1.228510) AND (t."X_9" > -1.266969) AND (t."X_9" <= -0.915262)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" <= -0.212001) AND (t."X_8" > -1.040586) AND (t."X_8" > -0.653717) AND (t."X_1" <= 1.228510) AND (t."X_9" > -1.266969) AND (t."X_9" > -0.915262) AND (t."X_1" > 0.479367)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" <= -0.212001) AND (t."X_8" > -1.040586) AND (t."X_8" > -0.653717) AND (t."X_1" <= 1.228510) AND (t."X_9" > -1.266969) AND (t."X_9" > -0.915262) AND (t."X_1" <= 0.479367) AND (t."X_8" <= -0.609026)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" <= -0.212001) AND (t."X_8" > -1.040586) AND (t."X_8" > -0.653717) AND (t."X_1" <= 1.228510) AND (t."X_9" > -1.266969) AND (t."X_9" > -0.915262) AND (t."X_1" <= 0.479367) AND (t."X_8" > -0.609026) AND (t."X_9" <= -0.365441)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" <= -0.212001) AND (t."X_8" > -1.040586) AND (t."X_8" > -0.653717) AND (t."X_1" <= 1.228510) AND (t."X_9" > -1.266969) AND (t."X_9" > -0.915262) AND (t."X_1" <= 0.479367) AND (t."X_8" > -0.609026) AND (t."X_9" > -0.365441)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" <= -1.053127) AND (t."X_9" <= -1.395647) AND (t."X_9" > -1.450087)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" <= -1.053127) AND (t."X_9" > -1.395647) AND (t."X_0" <= 1.669258)) THEN 87 ELSE NULL END AS "Leaf_87",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" <= -1.053127) AND (t."X_9" > -1.395647) AND (t."X_0" > 1.669258)) THEN 88 ELSE NULL END AS "Leaf_88",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" <= -1.053127) AND (t."X_9" <= -1.395647) AND (t."X_9" <= -1.450087) AND (t."X_9" > -1.623952)) THEN 90 ELSE NULL END AS "Leaf_90",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" <= -1.053127) AND (t."X_9" <= -1.395647) AND (t."X_9" <= -1.450087) AND (t."X_9" <= -1.623952) AND (t."X_9" <= -1.926300)) THEN 91 ELSE NULL END AS "Leaf_91",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" <= -1.053127) AND (t."X_9" <= -1.395647) AND (t."X_9" <= -1.450087) AND (t."X_9" <= -1.623952) AND (t."X_9" > -1.926300)) THEN 92 ELSE NULL END AS "Leaf_92",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" > -1.053127) AND (t."X_0" > -1.282300) AND (t."X_9" <= -0.141470) AND (t."X_1" <= 1.136256) AND (t."X_8" <= 1.911452) AND (t."X_8" > -0.046569) AND (t."X_7" > 0.585607)) THEN 94 ELSE NULL END AS "Leaf_94",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" > -1.053127) AND (t."X_0" > -1.282300) AND (t."X_9" <= -0.141470) AND (t."X_1" <= 1.136256) AND (t."X_8" <= 1.911452) AND (t."X_8" > -0.046569) AND (t."X_7" <= 0.585607) AND (t."X_7" <= -0.011458)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" <= -0.079966) AND (t."X_1" > -0.245428) AND (t."X_8" > -0.212001) AND (t."X_9" > -1.053127) AND (t."X_0" > -1.282300) AND (t."X_9" <= -0.141470) AND (t."X_1" <= 1.136256) AND (t."X_8" <= 1.911452) AND (t."X_8" > -0.046569) AND (t."X_7" <= 0.585607) AND (t."X_7" > -0.011458)) THEN 96 ELSE NULL END AS "Leaf_96",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" > -0.079966) AND (t."X_9" <= -0.038209) AND (t."X_0" <= 1.717316)) THEN 99 ELSE NULL END AS "Leaf_99",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" > -0.079966) AND (t."X_9" <= -0.038209) AND (t."X_0" > 1.717316)) THEN 100 ELSE NULL END AS "Leaf_100",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" > -0.079966) AND (t."X_9" > -0.038209) AND (t."X_7" <= -1.373798)) THEN 101 ELSE NULL END AS "Leaf_101",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" > -0.079966) AND (t."X_9" > -0.038209) AND (t."X_7" > -1.373798) AND (t."X_1" <= 0.043535) AND (t."X_7" <= 0.961428)) THEN 105 ELSE NULL END AS "Leaf_105",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" > -0.079966) AND (t."X_9" > -0.038209) AND (t."X_7" > -1.373798) AND (t."X_1" <= 0.043535) AND (t."X_7" > 0.961428) AND (t."X_0" > 0.055705) AND (t."X_0" <= 0.399117)) THEN 109 ELSE NULL END AS "Leaf_109",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" > -0.079966) AND (t."X_9" > -0.038209) AND (t."X_7" > -1.373798) AND (t."X_1" <= 0.043535) AND (t."X_7" > 0.961428) AND (t."X_0" > 0.055705) AND (t."X_0" > 0.399117) AND (t."X_9" > 0.442607)) THEN 112 ELSE NULL END AS "Leaf_112",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" > -0.079966) AND (t."X_9" > -0.038209) AND (t."X_7" > -1.373798) AND (t."X_1" <= 0.043535) AND (t."X_7" > 0.961428) AND (t."X_0" > 0.055705) AND (t."X_0" > 0.399117) AND (t."X_9" <= 0.442607) AND (t."X_9" <= 0.252929)) THEN 113 ELSE NULL END AS "Leaf_113",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" > -0.079966) AND (t."X_9" > -0.038209) AND (t."X_7" > -1.373798) AND (t."X_1" <= 0.043535) AND (t."X_7" > 0.961428) AND (t."X_0" > 0.055705) AND (t."X_0" > 0.399117) AND (t."X_9" <= 0.442607) AND (t."X_9" > 0.252929)) THEN 114 ELSE NULL END AS "Leaf_114",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" > -0.079966) AND (t."X_9" > -0.038209) AND (t."X_7" > -1.373798) AND (t."X_1" <= 0.043535) AND (t."X_7" > 0.961428) AND (t."X_0" <= 0.055705) AND (t."X_9" > 0.360217)) THEN 116 ELSE NULL END AS "Leaf_116",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" > -0.079966) AND (t."X_9" > -0.038209) AND (t."X_7" > -1.373798) AND (t."X_1" <= 0.043535) AND (t."X_7" > 0.961428) AND (t."X_0" <= 0.055705) AND (t."X_9" <= 0.360217) AND (t."X_9" <= 0.167582)) THEN 117 ELSE NULL END AS "Leaf_117",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" > -0.079966) AND (t."X_9" > -0.038209) AND (t."X_7" > -1.373798) AND (t."X_1" <= 0.043535) AND (t."X_7" > 0.961428) AND (t."X_0" <= 0.055705) AND (t."X_9" <= 0.360217) AND (t."X_9" > 0.167582)) THEN 118 ELSE NULL END AS "Leaf_118",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" > -0.079966) AND (t."X_9" > -0.038209) AND (t."X_7" > -1.373798) AND (t."X_1" > 0.043535) AND (t."X_0" > 0.027038)) THEN 120 ELSE NULL END AS "Leaf_120",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" > -0.079966) AND (t."X_9" > -0.038209) AND (t."X_7" > -1.373798) AND (t."X_1" > 0.043535) AND (t."X_0" <= 0.027038) AND (t."X_9" > 0.255359)) THEN 122 ELSE NULL END AS "Leaf_122",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" > -0.079966) AND (t."X_9" > -0.038209) AND (t."X_7" > -1.373798) AND (t."X_1" > 0.043535) AND (t."X_0" <= 0.027038) AND (t."X_9" <= 0.255359) AND (t."X_1" > 0.210590)) THEN 124 ELSE NULL END AS "Leaf_124",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" > -0.079966) AND (t."X_9" > -0.038209) AND (t."X_7" > -1.373798) AND (t."X_1" > 0.043535) AND (t."X_0" <= 0.027038) AND (t."X_9" <= 0.255359) AND (t."X_1" <= 0.210590) AND (t."X_9" <= 0.206275)) THEN 125 ELSE NULL END AS "Leaf_125",
      CASE WHEN((t."X_1" <= 2.089849) AND (t."X_9" > -0.079966) AND (t."X_9" > -0.038209) AND (t."X_7" > -1.373798) AND (t."X_1" > 0.043535) AND (t."X_0" <= 0.027038) AND (t."X_9" <= 0.255359) AND (t."X_1" <= 0.210590) AND (t."X_9" > 0.206275)) THEN 126 ELSE NULL END AS "Leaf_126"
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
    SELECT 0 AS nid,  0.517578 AS "P_0", 0.482422 AS "P_1", 0 AS "D", 0.517578 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.525794 AS "P_0", 0.474206 AS "P_1", 0 AS "D", 0.525794 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.595833 AS "P_0", 0.404167 AS "P_1", 0 AS "D", 0.595833 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.462121 AS "P_0", 0.537879 AS "P_1", 1 AS "D", 0.537879 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.708333 AS "P_0", 0.291667 AS "P_1", 0 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.520833 AS "P_0", 0.479167 AS "P_1", 0 AS "D", 0.520833 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.891892 AS "P_0", 0.108108 AS "P_1", 0 AS "D", 0.891892 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.593220 AS "P_0", 0.406780 AS "P_1", 0 AS "D", 0.593220 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.653846 AS "P_0", 0.346154 AS "P_1", 0 AS "D", 0.653846 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.558824 AS "P_0", 0.441176 AS "P_1", 0 AS "D", 0.558824 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.703704 AS "P_0", 0.296296 AS "P_1", 0 AS "D", 0.703704 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.791667 AS "P_0", 0.208333 AS "P_1", 0 AS "D", 0.791667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.637500 AS "P_0", 0.362500 AS "P_1", 0 AS "D", 0.637500 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.509434 AS "P_0", 0.490566 AS "P_1", 0 AS "D", 0.509434 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.434783 AS "P_0", 0.565217 AS "P_1", 1 AS "D", 0.565217 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.365854 AS "P_0", 0.634146 AS "P_1", 1 AS "D", 0.634146 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.241379 AS "P_0", 0.758621 AS "P_1", 1 AS "D", 0.758621 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.120000 AS "P_0", 0.880000 AS "P_1", 1 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.357143 AS "P_0", 0.642857 AS "P_1", 1 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.379310 AS "P_0", 0.620690 AS "P_1", 1 AS "D", 0.620690 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.411765 AS "P_0", 0.588235 AS "P_1", 1 AS "D", 0.588235 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.538462 AS "P_0", 0.461538 AS "P_1", 0 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.482072 AS "P_0", 0.517928 AS "P_1", 1 AS "D", 0.517928 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.382609 AS "P_0", 0.617391 AS "P_1", 1 AS "D", 0.617391 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.606299 AS "P_0", 0.393701 AS "P_1", 0 AS "D", 0.606299 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.322581 AS "P_0", 0.677419 AS "P_1", 1 AS "D", 0.677419 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  0.483871 AS "P_0", 0.516129 AS "P_1", 1 AS "D", 0.516129 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.723077 AS "P_0", 0.276923 AS "P_1", 0 AS "D", 0.723077 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_13", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_44", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_59", t1."Leaf_62", t1."Leaf_64", t1."Leaf_66", t1."Leaf_68", t1."Leaf_69", t1."Leaf_70", t1."Leaf_71", t1."Leaf_73", t1."Leaf_74", t1."Leaf_76", t1."Leaf_78", t1."Leaf_79", t1."Leaf_82", t1."Leaf_83", t1."Leaf_84", t1."Leaf_86", t1."Leaf_89", t1."Leaf_91", t1."Leaf_93", t1."Leaf_95", t1."Leaf_96", t1."Leaf_98", t1."Leaf_100", t1."Leaf_102", t1."Leaf_103", t1."Leaf_104" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" > 2.253667) AND (t."X_2" <= -0.487297)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" > 2.253667) AND (t."X_2" > -0.487297) AND (t."X_9" <= 2.689792)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" > 2.253667) AND (t."X_2" > -0.487297) AND (t."X_9" > 2.689792)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" <= -0.492128)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" > 1.395130) AND (t."X_2" <= -0.503965)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" > 1.395130) AND (t."X_2" > -0.503965) AND (t."X_7" > 1.551491) AND (t."X_8" <= 0.243692)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" > 1.395130) AND (t."X_2" > -0.503965) AND (t."X_7" > 1.551491) AND (t."X_8" > 0.243692)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" > 1.395130) AND (t."X_2" > -0.503965) AND (t."X_7" <= 1.551491) AND (t."X_5" <= -1.078393)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" > 1.395130) AND (t."X_2" > -0.503965) AND (t."X_7" <= 1.551491) AND (t."X_5" > -1.078393) AND (t."X_2" <= 0.203729)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" > 1.395130) AND (t."X_2" > -0.503965) AND (t."X_7" <= 1.551491) AND (t."X_5" > -1.078393) AND (t."X_2" > 0.203729) AND (t."X_9" <= -1.285981)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" > 1.395130) AND (t."X_2" > -0.503965) AND (t."X_7" <= 1.551491) AND (t."X_5" > -1.078393) AND (t."X_2" > 0.203729) AND (t."X_9" > -1.285981)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" <= -1.763540) AND (t."X_2" <= -0.628785)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" <= -1.763540) AND (t."X_2" > -0.628785) AND (t."X_5" <= 0.043566)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" <= -1.763540) AND (t."X_2" > -0.628785) AND (t."X_5" > 0.043566)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_6" <= -0.095387) AND (t."X_8" <= -1.928297)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_6" <= -0.095387) AND (t."X_8" > -1.928297) AND (t."X_9" <= 0.886383)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_6" <= -0.095387) AND (t."X_8" > -1.928297) AND (t."X_9" > 0.886383)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" > -0.260278) AND (t."X_7" > -0.193734) AND (t."X_9" > 0.571122)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" > -0.260278) AND (t."X_7" > -0.193734) AND (t."X_9" <= 0.571122) AND (t."X_2" > 0.412697) AND (t."X_2" <= 0.742583)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" > -0.260278) AND (t."X_7" > -0.193734) AND (t."X_9" <= 0.571122) AND (t."X_2" > 0.412697) AND (t."X_2" > 0.742583)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" > -0.260278) AND (t."X_7" > -0.193734) AND (t."X_9" <= 0.571122) AND (t."X_2" <= 0.412697) AND (t."X_8" <= 0.535629)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" > -0.260278) AND (t."X_7" > -0.193734) AND (t."X_9" <= 0.571122) AND (t."X_2" <= 0.412697) AND (t."X_8" > 0.535629) AND (t."X_9" <= -0.951111)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" > -0.260278) AND (t."X_7" > -0.193734) AND (t."X_9" <= 0.571122) AND (t."X_2" <= 0.412697) AND (t."X_8" > 0.535629) AND (t."X_9" > -0.951111)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" > -0.260278) AND (t."X_7" <= -0.193734) AND (t."X_5" <= -0.767982) AND (t."X_5" <= -0.875638)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" > -0.260278) AND (t."X_7" <= -0.193734) AND (t."X_5" <= -0.767982) AND (t."X_5" > -0.875638)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" > -0.260278) AND (t."X_7" <= -0.193734) AND (t."X_5" > -0.767982) AND (t."X_8" <= -1.114422)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" <= -0.260278) AND (t."X_6" <= -0.560382)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" <= -0.260278) AND (t."X_6" > -0.560382) AND (t."X_7" > 0.180326)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" <= -0.260278) AND (t."X_6" > -0.560382) AND (t."X_7" <= 0.180326) AND (t."X_2" > -0.225387)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" <= -0.260278) AND (t."X_6" > -0.560382) AND (t."X_7" <= 0.180326) AND (t."X_2" <= -0.225387) AND (t."X_8" > -0.334785)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" <= -0.260278) AND (t."X_6" > -0.560382) AND (t."X_7" <= 0.180326) AND (t."X_2" <= -0.225387) AND (t."X_8" <= -0.334785) AND (t."X_5" > -0.534989)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" <= -0.260278) AND (t."X_6" > -0.560382) AND (t."X_7" <= 0.180326) AND (t."X_2" <= -0.225387) AND (t."X_8" <= -0.334785) AND (t."X_5" <= -0.534989) AND (t."X_9" <= 0.557368)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" <= -0.260278) AND (t."X_6" > -0.560382) AND (t."X_7" <= 0.180326) AND (t."X_2" <= -0.225387) AND (t."X_8" <= -0.334785) AND (t."X_5" <= -0.534989) AND (t."X_9" > 0.557368)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" > -0.260278) AND (t."X_7" <= -0.193734) AND (t."X_5" > -0.767982) AND (t."X_8" > -1.114422) AND (t."X_6" <= 0.319796)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" > -0.260278) AND (t."X_7" <= -0.193734) AND (t."X_5" > -0.767982) AND (t."X_8" > -1.114422) AND (t."X_6" > 0.319796) AND (t."X_2" <= 0.520858)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" <= 0.218181) AND (t."X_6" > -0.260278) AND (t."X_7" <= -0.193734) AND (t."X_5" > -0.767982) AND (t."X_8" > -1.114422) AND (t."X_6" > 0.319796) AND (t."X_2" > 0.520858)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" > 0.218181) AND (t."X_7" > 0.854415)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" > 0.218181) AND (t."X_7" <= 0.854415) AND (t."X_7" > 0.848182)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" > 0.218181) AND (t."X_7" <= 0.854415) AND (t."X_7" <= 0.848182) AND (t."X_6" <= -0.407102)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" > 0.218181) AND (t."X_7" <= 0.854415) AND (t."X_7" <= 0.848182) AND (t."X_6" > -0.407102) AND (t."X_8" > -0.037283)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" > 0.218181) AND (t."X_7" <= 0.854415) AND (t."X_7" <= 0.848182) AND (t."X_6" > -0.407102) AND (t."X_8" <= -0.037283) AND (t."X_2" <= 0.038741)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_7" <= 1.395130) AND (t."X_7" > -1.763540) AND (t."X_7" > 0.218181) AND (t."X_7" <= 0.854415) AND (t."X_7" <= 0.848182) AND (t."X_6" > -0.407102) AND (t."X_8" <= -0.037283) AND (t."X_2" > 0.038741)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_6" > -0.095387) AND (t."X_2" > 1.101294)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_6" > -0.095387) AND (t."X_2" <= 1.101294) AND (t."X_7" > 1.078706) AND (t."X_7" <= 1.104311)) THEN 89 ELSE NULL END AS "Leaf_89",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_6" > -0.095387) AND (t."X_2" <= 1.101294) AND (t."X_7" > 1.078706) AND (t."X_7" > 1.104311) AND (t."X_2" <= 0.306448)) THEN 91 ELSE NULL END AS "Leaf_91",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_6" > -0.095387) AND (t."X_2" <= 1.101294) AND (t."X_7" > 1.078706) AND (t."X_7" > 1.104311) AND (t."X_2" > 0.306448) AND (t."X_8" <= -0.194809)) THEN 93 ELSE NULL END AS "Leaf_93",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_6" > -0.095387) AND (t."X_2" <= 1.101294) AND (t."X_7" > 1.078706) AND (t."X_7" > 1.104311) AND (t."X_2" > 0.306448) AND (t."X_8" > -0.194809) AND (t."X_2" <= 0.848732)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_6" > -0.095387) AND (t."X_2" <= 1.101294) AND (t."X_7" > 1.078706) AND (t."X_7" > 1.104311) AND (t."X_2" > 0.306448) AND (t."X_8" > -0.194809) AND (t."X_2" > 0.848732)) THEN 96 ELSE NULL END AS "Leaf_96",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_6" > -0.095387) AND (t."X_2" <= 1.101294) AND (t."X_7" <= 1.078706) AND (t."X_2" > 1.064291)) THEN 98 ELSE NULL END AS "Leaf_98",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_6" > -0.095387) AND (t."X_2" <= 1.101294) AND (t."X_7" <= 1.078706) AND (t."X_2" <= 1.064291) AND (t."X_7" > 0.010463)) THEN 100 ELSE NULL END AS "Leaf_100",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_6" > -0.095387) AND (t."X_2" <= 1.101294) AND (t."X_7" <= 1.078706) AND (t."X_2" <= 1.064291) AND (t."X_7" <= 0.010463) AND (t."X_6" > 0.344185)) THEN 102 ELSE NULL END AS "Leaf_102",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_6" > -0.095387) AND (t."X_2" <= 1.101294) AND (t."X_7" <= 1.078706) AND (t."X_2" <= 1.064291) AND (t."X_7" <= 0.010463) AND (t."X_6" <= 0.344185) AND (t."X_7" <= -0.248380)) THEN 103 ELSE NULL END AS "Leaf_103",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_2" > -0.492128) AND (t."X_6" > -0.095387) AND (t."X_2" <= 1.101294) AND (t."X_7" <= 1.078706) AND (t."X_2" <= 1.064291) AND (t."X_7" <= 0.010463) AND (t."X_6" <= 0.344185) AND (t."X_7" > -0.248380)) THEN 104 ELSE NULL END AS "Leaf_104"
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
    SELECT 0 AS nid,  0.488281 AS "P_0", 0.511719 AS "P_1", 1 AS "D", 0.511719 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.834507 AS "P_0", 0.165493 AS "P_1", 0 AS "D", 0.834507 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.057018 AS "P_0", 0.942982 AS "P_1", 1 AS "D", 0.942982 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.850909 AS "P_0", 0.149091 AS "P_1", 0 AS "D", 0.850909 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.048673 AS "P_0", 0.951327 AS "P_1", 1 AS "D", 0.951327 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.873518 AS "P_0", 0.126482 AS "P_1", 0 AS "D", 0.873518 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.590909 AS "P_0", 0.409091 AS "P_1", 0 AS "D", 0.590909 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.885714 AS "P_0", 0.114286 AS "P_1", 0 AS "D", 0.885714 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.037037 AS "P_0", 0.962963 AS "P_1", 1 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.846667 AS "P_0", 0.153333 AS "P_1", 0 AS "D", 0.846667 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.946429 AS "P_0", 0.053571 AS "P_1", 0 AS "D", 0.946429 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.552632 AS "P_0", 0.447368 AS "P_1", 0 AS "D", 0.552632 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.277778 AS "P_0", 0.722222 AS "P_1", 1 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.187500 AS "P_0", 0.812500 AS "P_1", 1 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.870968 AS "P_0", 0.129032 AS "P_1", 0 AS "D", 0.870968 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.915254 AS "P_0", 0.084746 AS "P_1", 0 AS "D", 0.915254 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.064000 AS "P_0", 0.936000 AS "P_1", 1 AS "D", 0.936000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.031579 AS "P_0", 0.968421 AS "P_1", 1 AS "D", 0.968421 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.107143 AS "P_0", 0.892857 AS "P_1", 1 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.021277 AS "P_0", 0.978723 AS "P_1", 1 AS "D", 0.978723 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.042553 AS "P_0", 0.957447 AS "P_1", 1 AS "D", 0.957447 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.105263 AS "P_0", 0.894737 AS "P_1", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_23", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_37", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_48", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_55", t1."Leaf_58", t1."Leaf_61", t1."Leaf_62", t1."Leaf_63", t1."Leaf_64", t1."Leaf_65", t1."Leaf_67", t1."Leaf_68", t1."Leaf_71", t1."Leaf_72", t1."Leaf_73", t1."Leaf_75", t1."Leaf_76", t1."Leaf_79", t1."Leaf_80", t1."Leaf_81", t1."Leaf_83", t1."Leaf_84" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" > 0.976147) AND (t."X_5" <= -1.040961)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" > 0.976147) AND (t."X_5" > -1.040961) AND (t."X_8" > 0.327696) AND (t."X_8" <= 1.689484)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" > 0.976147) AND (t."X_5" > -1.040961) AND (t."X_8" > 0.327696) AND (t."X_8" > 1.689484)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" > 0.976147) AND (t."X_5" > -1.040961) AND (t."X_8" <= 0.327696) AND (t."X_3" > 1.183968)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" > 0.976147) AND (t."X_5" > -1.040961) AND (t."X_8" <= 0.327696) AND (t."X_3" <= 1.183968) AND (t."X_3" <= -1.323485)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" > 0.976147) AND (t."X_5" > -1.040961) AND (t."X_8" <= 0.327696) AND (t."X_3" <= 1.183968) AND (t."X_3" > -1.323485) AND (t."X_8" > -1.090359)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" > 0.976147) AND (t."X_5" > -1.040961) AND (t."X_8" <= 0.327696) AND (t."X_3" <= 1.183968) AND (t."X_3" > -1.323485) AND (t."X_8" <= -1.090359) AND (t."X_3" <= 0.015770)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" > 0.976147) AND (t."X_5" > -1.040961) AND (t."X_8" <= 0.327696) AND (t."X_3" <= 1.183968) AND (t."X_3" > -1.323485) AND (t."X_8" <= -1.090359) AND (t."X_3" > 0.015770)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.816354) AND (t."X_8" <= -2.958045)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.816354) AND (t."X_8" > -2.958045) AND (t."X_9" <= -2.252358)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.816354) AND (t."X_8" > -2.958045) AND (t."X_9" > -2.252358) AND (t."X_3" > 0.720909) AND (t."X_3" <= 0.945873)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.816354) AND (t."X_8" > -2.958045) AND (t."X_9" > -2.252358) AND (t."X_3" > 0.720909) AND (t."X_3" > 0.945873) AND (t."X_9" <= -0.082826)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.816354) AND (t."X_8" > -2.958045) AND (t."X_9" > -2.252358) AND (t."X_3" > 0.720909) AND (t."X_3" > 0.945873) AND (t."X_9" > -0.082826)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.816354) AND (t."X_8" > -2.958045) AND (t."X_9" > -2.252358) AND (t."X_3" <= 0.720909) AND (t."X_9" > 0.923691) AND (t."X_9" <= 1.184096)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.816354) AND (t."X_8" > -2.958045) AND (t."X_9" > -2.252358) AND (t."X_3" <= 0.720909) AND (t."X_9" > 0.923691) AND (t."X_9" > 1.184096)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" > -0.042177) AND (t."X_7" <= -0.000948)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" > -0.042177) AND (t."X_7" > -0.000948) AND (t."X_5" > 0.068617) AND (t."X_3" > 0.380276)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" > -0.042177) AND (t."X_7" > -0.000948) AND (t."X_5" > 0.068617) AND (t."X_3" <= 0.380276) AND (t."X_7" <= 0.602231)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" > -0.042177) AND (t."X_7" > -0.000948) AND (t."X_5" > 0.068617) AND (t."X_3" <= 0.380276) AND (t."X_7" > 0.602231)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" <= -0.042177) AND (t."X_5" > -0.306405) AND (t."X_8" > -0.353900)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" <= -0.042177) AND (t."X_5" > -0.306405) AND (t."X_8" <= -0.353900) AND (t."X_5" > 0.073203)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" <= -0.042177) AND (t."X_5" > -0.306405) AND (t."X_8" <= -0.353900) AND (t."X_5" <= 0.073203) AND (t."X_9" <= 0.061321)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" <= -0.042177) AND (t."X_5" > -0.306405) AND (t."X_8" <= -0.353900) AND (t."X_5" <= 0.073203) AND (t."X_9" > 0.061321)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" > -0.042177) AND (t."X_7" > -0.000948) AND (t."X_5" <= 0.068617) AND (t."X_8" <= -0.316377)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" > -0.042177) AND (t."X_7" > -0.000948) AND (t."X_5" <= 0.068617) AND (t."X_8" > -0.316377) AND (t."X_5" <= -1.226123)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" > -0.042177) AND (t."X_7" > -0.000948) AND (t."X_5" <= 0.068617) AND (t."X_8" > -0.316377) AND (t."X_5" > -1.226123) AND (t."X_9" > 0.570674)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" > -0.042177) AND (t."X_7" > -0.000948) AND (t."X_5" <= 0.068617) AND (t."X_8" > -0.316377) AND (t."X_5" > -1.226123) AND (t."X_9" <= 0.570674) AND (t."X_5" <= -0.466174) AND (t."X_7" <= 1.030777)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" > -0.042177) AND (t."X_7" > -0.000948) AND (t."X_5" <= 0.068617) AND (t."X_8" > -0.316377) AND (t."X_5" > -1.226123) AND (t."X_9" <= 0.570674) AND (t."X_5" <= -0.466174) AND (t."X_7" > 1.030777)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" > -0.042177) AND (t."X_7" > -0.000948) AND (t."X_5" <= 0.068617) AND (t."X_8" > -0.316377) AND (t."X_5" > -1.226123) AND (t."X_9" <= 0.570674) AND (t."X_5" > -0.466174) AND (t."X_7" <= 1.400445)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" > -0.042177) AND (t."X_7" > -0.000948) AND (t."X_5" <= 0.068617) AND (t."X_8" > -0.316377) AND (t."X_5" > -1.226123) AND (t."X_9" <= 0.570674) AND (t."X_5" > -0.466174) AND (t."X_7" > 1.400445)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.816354) AND (t."X_8" > -2.958045) AND (t."X_9" > -2.252358) AND (t."X_3" <= 0.720909) AND (t."X_9" <= 0.923691) AND (t."X_5" <= 0.698684)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.816354) AND (t."X_8" > -2.958045) AND (t."X_9" > -2.252358) AND (t."X_3" <= 0.720909) AND (t."X_9" <= 0.923691) AND (t."X_5" > 0.698684) AND (t."X_9" <= -0.068373)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" <= 0.816354) AND (t."X_8" > -2.958045) AND (t."X_9" > -2.252358) AND (t."X_3" <= 0.720909) AND (t."X_9" <= 0.923691) AND (t."X_5" > 0.698684) AND (t."X_9" > -0.068373)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" <= -0.042177) AND (t."X_5" <= -0.306405) AND (t."X_7" <= -1.663244) AND (t."X_7" <= -2.052133)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" <= -0.042177) AND (t."X_5" <= -0.306405) AND (t."X_7" <= -1.663244) AND (t."X_7" > -2.052133)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" <= -0.042177) AND (t."X_5" <= -0.306405) AND (t."X_7" > -1.663244) AND (t."X_7" <= -0.413639)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" <= -0.042177) AND (t."X_5" <= -0.306405) AND (t."X_7" > -1.663244) AND (t."X_7" > -0.413639) AND (t."X_7" <= -0.400581)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_5" <= 0.288417) AND (t."X_9" <= 0.976147) AND (t."X_7" <= -0.042177) AND (t."X_5" <= -0.306405) AND (t."X_7" > -1.663244) AND (t."X_7" > -0.413639) AND (t."X_7" > -0.400581)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" > 0.816354) AND (t."X_5" > 2.181306) AND (t."X_5" <= 2.226730)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" > 0.816354) AND (t."X_5" > 2.181306) AND (t."X_5" > 2.226730)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" > 0.816354) AND (t."X_5" <= 2.181306) AND (t."X_7" <= 0.281219)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" > 0.816354) AND (t."X_5" <= 2.181306) AND (t."X_7" > 0.281219) AND (t."X_7" <= 0.321825)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_5" > 0.288417) AND (t."X_5" > 0.816354) AND (t."X_5" <= 2.181306) AND (t."X_7" > 0.281219) AND (t."X_7" > 0.321825)) THEN 84 ELSE NULL END AS "Leaf_84"
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
    SELECT 0 AS nid,  0.501953 AS "P_0", 0.498047 AS "P_1", 0 AS "D", 0.501953 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.815436 AS "P_0", 0.184564 AS "P_1", 0 AS "D", 0.815436 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.065421 AS "P_0", 0.934579 AS "P_1", 1 AS "D", 0.934579 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.852830 AS "P_0", 0.147170 AS "P_1", 0 AS "D", 0.852830 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.515152 AS "P_0", 0.484848 AS "P_1", 0 AS "D", 0.515152 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.360000 AS "P_0", 0.640000 AS "P_1", 1 AS "D", 0.640000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.533333 AS "P_0", 0.466667 AS "P_1", 0 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.017647 AS "P_0", 0.982353 AS "P_1", 1 AS "D", 0.982353 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.195122 AS "P_0", 0.804878 AS "P_1", 1 AS "D", 0.804878 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.175000 AS "P_0", 0.825000 AS "P_1", 1 AS "D", 0.825000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.088235 AS "P_0", 0.911765 AS "P_1", 1 AS "D", 0.911765 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.033333 AS "P_0", 0.966667 AS "P_1", 1 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.776860 AS "P_0", 0.223140 AS "P_1", 0 AS "D", 0.776860 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.824561 AS "P_0", 0.175439 AS "P_1", 0 AS "D", 0.824561 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.881188 AS "P_0", 0.118812 AS "P_1", 0 AS "D", 0.881188 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.384615 AS "P_0", 0.615385 AS "P_1", 1 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.974790 AS "P_0", 0.025210 AS "P_1", 0 AS "D", 0.974790 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.640000 AS "P_0", 0.360000 AS "P_1", 0 AS "D", 0.640000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.793103 AS "P_0", 0.206897 AS "P_1", 0 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.647059 AS "P_0", 0.352941 AS "P_1", 0 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.866667 AS "P_0", 0.133333 AS "P_1", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.982301 AS "P_0", 0.017699 AS "P_1", 0 AS "D", 0.982301 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.942857 AS "P_0", 0.057143 AS "P_1", 0 AS "D", 0.942857 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.007353 AS "P_0", 0.992647 AS "P_1", 1 AS "D", 0.992647 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.019608 AS "P_0", 0.980392 AS "P_1", 1 AS "D", 0.980392 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_45", t1."Leaf_51", t1."Leaf_53", t1."Leaf_54", t1."Leaf_56", t1."Leaf_57", t1."Leaf_60", t1."Leaf_62", t1."Leaf_63", t1."Leaf_64", t1."Leaf_65", t1."Leaf_67", t1."Leaf_71", t1."Leaf_72", t1."Leaf_75", t1."Leaf_77", t1."Leaf_78", t1."Leaf_81", t1."Leaf_82", t1."Leaf_83", t1."Leaf_84", t1."Leaf_87", t1."Leaf_88", t1."Leaf_91", t1."Leaf_92", t1."Leaf_98", t1."Leaf_101", t1."Leaf_102", t1."Leaf_104", t1."Leaf_105", t1."Leaf_106", t1."Leaf_110", t1."Leaf_111", t1."Leaf_112", t1."Leaf_113", t1."Leaf_115", t1."Leaf_116", t1."Leaf_117", t1."Leaf_119", t1."Leaf_120" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" > 0.993598) AND (t."X_2" <= -0.553981)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" > 0.993598) AND (t."X_2" > -0.553981) AND (t."X_7" <= 0.367793) AND (t."X_1" > 0.517962) AND (t."X_1" <= 0.895238)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" > 0.993598) AND (t."X_2" > -0.553981) AND (t."X_7" <= 0.367793) AND (t."X_1" > 0.517962) AND (t."X_1" > 0.895238) AND (t."X_1" <= 1.270231)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" > 0.993598) AND (t."X_2" > -0.553981) AND (t."X_7" <= 0.367793) AND (t."X_1" > 0.517962) AND (t."X_1" > 0.895238) AND (t."X_1" > 1.270231)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" > 0.993598) AND (t."X_2" > -0.553981) AND (t."X_7" > 0.367793) AND (t."X_8" <= 0.225458) AND (t."X_9" <= 1.185045)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" > 0.993598) AND (t."X_2" > -0.553981) AND (t."X_7" > 0.367793) AND (t."X_8" > 0.225458) AND (t."X_7" > 1.523220)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" > 0.993598) AND (t."X_2" > -0.553981) AND (t."X_7" > 0.367793) AND (t."X_8" > 0.225458) AND (t."X_7" <= 1.523220) AND (t."X_7" <= 1.015221)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" > 0.993598) AND (t."X_2" > -0.553981) AND (t."X_7" > 0.367793) AND (t."X_8" > 0.225458) AND (t."X_7" <= 1.523220) AND (t."X_7" > 1.015221)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" > 0.993598) AND (t."X_2" > -0.553981) AND (t."X_7" > 0.367793) AND (t."X_8" <= 0.225458) AND (t."X_9" > 1.185045) AND (t."X_9" <= 2.377489)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" > 0.993598) AND (t."X_2" > -0.553981) AND (t."X_7" > 0.367793) AND (t."X_8" <= 0.225458) AND (t."X_9" > 1.185045) AND (t."X_9" > 2.377489) AND (t."X_7" <= 0.908946)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" > 0.993598) AND (t."X_2" > -0.553981) AND (t."X_7" > 0.367793) AND (t."X_8" <= 0.225458) AND (t."X_9" > 1.185045) AND (t."X_9" > 2.377489) AND (t."X_7" > 0.908946)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" > 0.993598) AND (t."X_2" > -0.553981) AND (t."X_7" <= 0.367793) AND (t."X_1" <= 0.517962) AND (t."X_9" <= 1.266056)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" > 0.993598) AND (t."X_2" > -0.553981) AND (t."X_7" <= 0.367793) AND (t."X_1" <= 0.517962) AND (t."X_9" > 1.266056) AND (t."X_1" <= -0.714634)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" > 0.993598) AND (t."X_2" > -0.553981) AND (t."X_7" <= 0.367793) AND (t."X_1" <= 0.517962) AND (t."X_9" > 1.266056) AND (t."X_1" > -0.714634) AND (t."X_9" <= 2.385878)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" > 0.993598) AND (t."X_2" > -0.553981) AND (t."X_7" <= 0.367793) AND (t."X_1" <= 0.517962) AND (t."X_9" > 1.266056) AND (t."X_1" > -0.714634) AND (t."X_9" > 2.385878)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_2" > 0.846771) AND (t."X_2" > 1.109702)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_2" > 0.846771) AND (t."X_2" <= 1.109702) AND (t."X_2" > 1.001261) AND (t."X_2" <= 1.024452)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_2" > 0.846771) AND (t."X_2" <= 1.109702) AND (t."X_2" > 1.001261) AND (t."X_2" > 1.024452) AND (t."X_8" <= -1.095413)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_2" > 0.846771) AND (t."X_2" <= 1.109702) AND (t."X_2" > 1.001261) AND (t."X_2" > 1.024452) AND (t."X_8" > -1.095413)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_2" > 0.846771) AND (t."X_2" <= 1.109702) AND (t."X_2" <= 1.001261) AND (t."X_9" <= 2.713887)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_2" > 0.846771) AND (t."X_2" <= 1.109702) AND (t."X_2" <= 1.001261) AND (t."X_9" > 2.713887)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" <= -0.510401)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" <= 0.127579) AND (t."X_8" <= -1.561994) AND (t."X_1" <= 0.251526)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" <= 0.127579) AND (t."X_8" <= -1.561994) AND (t."X_1" > 0.251526) AND (t."X_9" <= -0.079826)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" <= 0.127579) AND (t."X_8" <= -1.561994) AND (t."X_1" > 0.251526) AND (t."X_9" > -0.079826)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" > 0.127579) AND (t."X_7" > 0.194097)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" > 0.127579) AND (t."X_7" <= 0.194097) AND (t."X_7" <= -1.078233)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" > 0.127579) AND (t."X_7" <= 0.194097) AND (t."X_7" > -1.078233) AND (t."X_1" > 0.602531)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" > 0.127579) AND (t."X_7" <= 0.194097) AND (t."X_7" > -1.078233) AND (t."X_1" <= 0.602531) AND (t."X_9" > -0.321858)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" > 0.127579) AND (t."X_7" <= 0.194097) AND (t."X_7" > -1.078233) AND (t."X_1" <= 0.602531) AND (t."X_9" <= -0.321858) AND (t."X_1" <= -0.195941)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" > 0.127579) AND (t."X_7" <= 0.194097) AND (t."X_7" > -1.078233) AND (t."X_1" <= 0.602531) AND (t."X_9" <= -0.321858) AND (t."X_1" > -0.195941)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" <= 0.127579) AND (t."X_8" > -1.561994) AND (t."X_9" <= -1.096037)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" <= 0.127579) AND (t."X_8" > -1.561994) AND (t."X_9" > -1.096037) AND (t."X_9" <= -0.582163)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" <= 0.127579) AND (t."X_8" > -1.561994) AND (t."X_9" > -1.096037) AND (t."X_9" > -0.582163) AND (t."X_7" <= -0.143915) AND (t."X_2" <= -0.122122)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" <= 0.127579) AND (t."X_8" > -1.561994) AND (t."X_9" > -1.096037) AND (t."X_9" > -0.582163) AND (t."X_7" <= -0.143915) AND (t."X_2" > -0.122122)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" <= 0.127579) AND (t."X_8" > -1.561994) AND (t."X_9" > -1.096037) AND (t."X_9" > -0.582163) AND (t."X_7" > -0.143915) AND (t."X_1" <= -0.458116) AND (t."X_2" <= -0.258308)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" <= 0.127579) AND (t."X_8" > -1.561994) AND (t."X_9" > -1.096037) AND (t."X_9" > -0.582163) AND (t."X_7" > -0.143915) AND (t."X_1" <= -0.458116) AND (t."X_2" > -0.258308) AND (t."X_1" <= -1.006024)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" <= 0.127579) AND (t."X_8" > -1.561994) AND (t."X_9" > -1.096037) AND (t."X_9" > -0.582163) AND (t."X_7" > -0.143915) AND (t."X_1" <= -0.458116) AND (t."X_2" > -0.258308) AND (t."X_1" > -1.006024)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" <= 0.127579) AND (t."X_8" > -1.561994) AND (t."X_9" > -1.096037) AND (t."X_9" > -0.582163) AND (t."X_7" > -0.143915) AND (t."X_1" > -0.458116) AND (t."X_1" > 1.156433) AND (t."X_7" <= 1.015836)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" <= 0.127579) AND (t."X_8" > -1.561994) AND (t."X_9" > -1.096037) AND (t."X_9" > -0.582163) AND (t."X_7" > -0.143915) AND (t."X_1" > -0.458116) AND (t."X_1" > 1.156433) AND (t."X_7" > 1.015836)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" <= 0.127579) AND (t."X_8" > -1.561994) AND (t."X_9" > -1.096037) AND (t."X_9" > -0.582163) AND (t."X_7" > -0.143915) AND (t."X_1" > -0.458116) AND (t."X_1" <= 1.156433) AND (t."X_9" <= 0.686779)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" <= -0.196158) AND (t."X_2" > -0.510401) AND (t."X_2" <= 0.127579) AND (t."X_8" > -1.561994) AND (t."X_9" > -1.096037) AND (t."X_9" > -0.582163) AND (t."X_7" > -0.143915) AND (t."X_1" > -0.458116) AND (t."X_1" <= 1.156433) AND (t."X_9" > 0.686779)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" > 1.493859) AND (t."X_2" <= -0.270904)) THEN 87 ELSE NULL END AS "Leaf_87",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" > 1.493859) AND (t."X_2" > -0.270904)) THEN 88 ELSE NULL END AS "Leaf_88",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" <= -1.634164) AND (t."X_8" <= 1.019472)) THEN 91 ELSE NULL END AS "Leaf_91",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" <= -1.634164) AND (t."X_8" > 1.019472)) THEN 92 ELSE NULL END AS "Leaf_92",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" > -1.634164) AND (t."X_2" > -0.363294) AND (t."X_2" <= -0.103928) AND (t."X_1" > 1.463748)) THEN 98 ELSE NULL END AS "Leaf_98",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" > -1.634164) AND (t."X_2" > -0.363294) AND (t."X_2" <= -0.103928) AND (t."X_1" <= 1.463748) AND (t."X_7" <= -0.670583) AND (t."X_2" <= -0.110736)) THEN 101 ELSE NULL END AS "Leaf_101",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" > -1.634164) AND (t."X_2" > -0.363294) AND (t."X_2" <= -0.103928) AND (t."X_1" <= 1.463748) AND (t."X_7" <= -0.670583) AND (t."X_2" > -0.110736)) THEN 102 ELSE NULL END AS "Leaf_102",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" > -1.634164) AND (t."X_2" > -0.363294) AND (t."X_2" <= -0.103928) AND (t."X_1" <= 1.463748) AND (t."X_7" > -0.670583) AND (t."X_9" > -0.273659)) THEN 104 ELSE NULL END AS "Leaf_104",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" > -1.634164) AND (t."X_2" > -0.363294) AND (t."X_2" <= -0.103928) AND (t."X_1" <= 1.463748) AND (t."X_7" > -0.670583) AND (t."X_9" <= -0.273659) AND (t."X_7" <= -0.295199)) THEN 105 ELSE NULL END AS "Leaf_105",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" > -1.634164) AND (t."X_2" > -0.363294) AND (t."X_2" <= -0.103928) AND (t."X_1" <= 1.463748) AND (t."X_7" > -0.670583) AND (t."X_9" <= -0.273659) AND (t."X_7" > -0.295199)) THEN 106 ELSE NULL END AS "Leaf_106",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" > -1.634164) AND (t."X_2" > -0.363294) AND (t."X_2" > -0.103928) AND (t."X_2" <= -0.027445) AND (t."X_8" > 0.330390)) THEN 110 ELSE NULL END AS "Leaf_110",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" > -1.634164) AND (t."X_2" > -0.363294) AND (t."X_2" > -0.103928) AND (t."X_2" <= -0.027445) AND (t."X_8" <= 0.330390) AND (t."X_7" <= 0.628769)) THEN 111 ELSE NULL END AS "Leaf_111",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" > -1.634164) AND (t."X_2" > -0.363294) AND (t."X_2" > -0.103928) AND (t."X_2" <= -0.027445) AND (t."X_8" <= 0.330390) AND (t."X_7" > 0.628769)) THEN 112 ELSE NULL END AS "Leaf_112",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" > -1.634164) AND (t."X_2" > -0.363294) AND (t."X_2" > -0.103928) AND (t."X_2" > -0.027445) AND (t."X_2" <= 0.542788)) THEN 113 ELSE NULL END AS "Leaf_113",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" > -1.634164) AND (t."X_2" > -0.363294) AND (t."X_2" > -0.103928) AND (t."X_2" > -0.027445) AND (t."X_2" > 0.542788) AND (t."X_1" <= -0.676963)) THEN 115 ELSE NULL END AS "Leaf_115",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" > -1.634164) AND (t."X_2" > -0.363294) AND (t."X_2" > -0.103928) AND (t."X_2" > -0.027445) AND (t."X_2" > 0.542788) AND (t."X_1" > -0.676963)) THEN 116 ELSE NULL END AS "Leaf_116",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" > -1.634164) AND (t."X_2" <= -0.363294) AND (t."X_7" <= 0.982714)) THEN 117 ELSE NULL END AS "Leaf_117",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" > -1.634164) AND (t."X_2" <= -0.363294) AND (t."X_7" > 0.982714) AND (t."X_9" <= -0.225524)) THEN 119 ELSE NULL END AS "Leaf_119",
      CASE WHEN((t."X_2" <= 0.846771) AND (t."X_9" <= 0.993598) AND (t."X_8" > -0.196158) AND (t."X_8" <= 1.493859) AND (t."X_9" > -1.634164) AND (t."X_2" <= -0.363294) AND (t."X_7" > 0.982714) AND (t."X_9" > -0.225524)) THEN 120 ELSE NULL END AS "Leaf_120"
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
    SELECT 0 AS nid,  0.544922 AS "P_0", 0.455078 AS "P_1", 0 AS "D", 0.544922 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.690176 AS "P_0", 0.309824 AS "P_1", 0 AS "D", 0.690176 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.731778 AS "P_0", 0.268222 AS "P_1", 0 AS "D", 0.731778 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.425926 AS "P_0", 0.574074 AS "P_1", 1 AS "D", 0.574074 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.354167 AS "P_0", 0.645833 AS "P_1", 1 AS "D", 0.645833 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.550000 AS "P_0", 0.450000 AS "P_1", 0 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.086957 AS "P_0", 0.913043 AS "P_1", 1 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.692308 AS "P_0", 0.307692 AS "P_1", 0 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.172414 AS "P_0", 0.827586 AS "P_1", 1 AS "D", 0.827586 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.658683 AS "P_0", 0.341317 AS "P_1", 0 AS "D", 0.658683 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.801136 AS "P_0", 0.198864 AS "P_1", 0 AS "D", 0.801136 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.508621 AS "P_0", 0.491379 AS "P_1", 0 AS "D", 0.508621 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.365854 AS "P_0", 0.634146 AS "P_1", 1 AS "D", 0.634146 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.852941 AS "P_0", 0.147059 AS "P_1", 0 AS "D", 0.852941 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.295775 AS "P_0", 0.704225 AS "P_1", 1 AS "D", 0.704225 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.687500 AS "P_0", 0.312500 AS "P_1", 0 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.362069 AS "P_0", 0.637931 AS "P_1", 1 AS "D", 0.637931 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.244898 AS "P_0", 0.755102 AS "P_1", 1 AS "D", 0.755102 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.105263 AS "P_0", 0.894737 AS "P_1", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.583333 AS "P_0", 0.416667 AS "P_1", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.855263 AS "P_0", 0.144737 AS "P_1", 0 AS "D", 0.855263 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.986301 AS "P_0", 0.013699 AS "P_1", 0 AS "D", 0.986301 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.734177 AS "P_0", 0.265823 AS "P_1", 0 AS "D", 0.734177 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.320000 AS "P_0", 0.680000 AS "P_1", 1 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.925926 AS "P_0", 0.074074 AS "P_1", 0 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.227273 AS "P_0", 0.772727 AS "P_1", 1 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  0.977273 AS "P_0", 0.022727 AS "P_1", 0 AS "D", 0.977273 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_6", t1."Leaf_11", t1."Leaf_13", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_30", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_43", t1."Leaf_45", t1."Leaf_48", t1."Leaf_50", t1."Leaf_51", t1."Leaf_53", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_60", t1."Leaf_62", t1."Leaf_63", t1."Leaf_64", t1."Leaf_68", t1."Leaf_70", t1."Leaf_75", t1."Leaf_76", t1."Leaf_78", t1."Leaf_80", t1."Leaf_82", t1."Leaf_83", t1."Leaf_85", t1."Leaf_86", t1."Leaf_88", t1."Leaf_91", t1."Leaf_92", t1."Leaf_93", t1."Leaf_95", t1."Leaf_96", t1."Leaf_97", t1."Leaf_98", t1."Leaf_100", t1."Leaf_101", t1."Leaf_102", t1."Leaf_104", t1."Leaf_105", t1."Leaf_106" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= -0.537820)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" <= -2.434180) AND (t."X_3" <= 0.145278)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" <= -2.434180) AND (t."X_3" > 0.145278)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" <= -1.120839) AND (t."X_2" <= 0.513801) AND (t."X_2" <= -0.369153)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" <= -1.120839) AND (t."X_2" <= 0.513801) AND (t."X_2" > -0.369153) AND (t."X_2" <= -0.207267)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" <= -1.120839) AND (t."X_2" <= 0.513801) AND (t."X_2" > -0.369153) AND (t."X_2" > -0.207267) AND (t."X_9" > 0.464725)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" <= -1.120839) AND (t."X_2" <= 0.513801) AND (t."X_2" > -0.369153) AND (t."X_2" > -0.207267) AND (t."X_9" <= 0.464725) AND (t."X_3" <= -1.164412)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" <= -1.120839) AND (t."X_2" <= 0.513801) AND (t."X_2" > -0.369153) AND (t."X_2" > -0.207267) AND (t."X_9" <= 0.464725) AND (t."X_3" > -1.164412)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" <= -1.120839) AND (t."X_2" > 0.513801) AND (t."X_7" > 0.952750) AND (t."X_3" <= -0.366260)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" <= -1.120839) AND (t."X_2" > 0.513801) AND (t."X_7" > 0.952750) AND (t."X_3" > -0.366260)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" <= -1.120839) AND (t."X_2" > 0.513801) AND (t."X_7" <= 0.952750) AND (t."X_9" <= 1.124811)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" <= -1.120839) AND (t."X_2" > 0.513801) AND (t."X_7" <= 0.952750) AND (t."X_9" > 1.124811) AND (t."X_9" <= 1.181369)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" <= -1.120839) AND (t."X_2" > 0.513801) AND (t."X_7" <= 0.952750) AND (t."X_9" > 1.124811) AND (t."X_9" > 1.181369)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" > 1.169708)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" > 0.255635) AND (t."X_2" > 0.831936) AND (t."X_2" <= 1.001261)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" > 0.255635) AND (t."X_2" > 0.831936) AND (t."X_2" > 1.001261) AND (t."X_9" <= -0.140643)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" > 0.255635) AND (t."X_2" > 0.831936) AND (t."X_2" > 1.001261) AND (t."X_9" > -0.140643)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" <= 0.255635) AND (t."X_7" <= 0.960264) AND (t."X_0" <= 0.006042) AND (t."X_3" <= -1.814184)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" <= 0.255635) AND (t."X_7" <= 0.960264) AND (t."X_0" <= 0.006042) AND (t."X_3" > -1.814184) AND (t."X_2" <= -0.502885)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" <= 0.255635) AND (t."X_7" <= 0.960264) AND (t."X_0" > 0.006042) AND (t."X_9" > 1.044434)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" <= 0.255635) AND (t."X_7" <= 0.960264) AND (t."X_0" > 0.006042) AND (t."X_9" <= 1.044434) AND (t."X_2" > 0.038850)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" <= 0.255635) AND (t."X_7" <= 0.960264) AND (t."X_0" > 0.006042) AND (t."X_9" <= 1.044434) AND (t."X_2" <= 0.038850) AND (t."X_9" <= -1.549599)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" <= 0.255635) AND (t."X_7" <= 0.960264) AND (t."X_0" <= 0.006042) AND (t."X_3" > -1.814184) AND (t."X_2" > -0.502885) AND (t."X_8" <= -0.915630)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" <= 0.255635) AND (t."X_7" > 0.960264) AND (t."X_8" > 0.139902) AND (t."X_9" <= 0.321559)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" <= 0.255635) AND (t."X_7" > 0.960264) AND (t."X_8" > 0.139902) AND (t."X_9" > 0.321559)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" <= 0.255635) AND (t."X_7" <= 0.960264) AND (t."X_0" <= 0.006042) AND (t."X_3" > -1.814184) AND (t."X_2" > -0.502885) AND (t."X_8" > -0.915630) AND (t."X_8" <= -0.075334)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" <= 0.255635) AND (t."X_7" <= 0.960264) AND (t."X_0" <= 0.006042) AND (t."X_3" > -1.814184) AND (t."X_2" > -0.502885) AND (t."X_8" > -0.915630) AND (t."X_8" > -0.075334)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" <= 0.255635) AND (t."X_7" > 0.960264) AND (t."X_8" <= 0.139902) AND (t."X_3" > -0.398381)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" <= 0.255635) AND (t."X_7" > 0.960264) AND (t."X_8" <= 0.139902) AND (t."X_3" <= -0.398381) AND (t."X_3" <= -1.055225)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" <= 0.255635) AND (t."X_7" > 0.960264) AND (t."X_8" <= 0.139902) AND (t."X_3" <= -0.398381) AND (t."X_3" > -1.055225)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" > 0.458904) AND (t."X_2" > 0.879833)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" > 0.458904) AND (t."X_2" <= 0.879833) AND (t."X_7" > 1.050480)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" > 0.458904) AND (t."X_2" <= 0.879833) AND (t."X_7" <= 1.050480) AND (t."X_2" <= -0.116228) AND (t."X_8" > 1.668707) AND (t."X_3" <= -1.596170)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" > 0.458904) AND (t."X_2" <= 0.879833) AND (t."X_7" <= 1.050480) AND (t."X_2" <= -0.116228) AND (t."X_8" > 1.668707) AND (t."X_3" > -1.596170)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" > 0.458904) AND (t."X_2" <= 0.879833) AND (t."X_7" <= 1.050480) AND (t."X_2" <= -0.116228) AND (t."X_8" <= 1.668707) AND (t."X_9" > 1.584014)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" > 0.458904) AND (t."X_2" <= 0.879833) AND (t."X_7" <= 1.050480) AND (t."X_2" > -0.116228) AND (t."X_2" > 0.491057)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" > 0.458904) AND (t."X_2" <= 0.879833) AND (t."X_7" <= 1.050480) AND (t."X_2" > -0.116228) AND (t."X_2" <= 0.491057) AND (t."X_2" > 0.223712)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" > 0.458904) AND (t."X_2" <= 0.879833) AND (t."X_7" <= 1.050480) AND (t."X_2" > -0.116228) AND (t."X_2" <= 0.491057) AND (t."X_2" <= 0.223712) AND (t."X_9" <= -1.675522)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" > 0.458904) AND (t."X_2" <= 0.879833) AND (t."X_7" <= 1.050480) AND (t."X_2" > -0.116228) AND (t."X_2" <= 0.491057) AND (t."X_2" <= 0.223712) AND (t."X_9" > -1.675522) AND (t."X_3" <= -0.236649)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" > 0.458904) AND (t."X_2" <= 0.879833) AND (t."X_7" <= 1.050480) AND (t."X_2" > -0.116228) AND (t."X_2" <= 0.491057) AND (t."X_2" <= 0.223712) AND (t."X_9" > -1.675522) AND (t."X_3" > -0.236649)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" <= 0.458904) AND (t."X_9" > 2.734507)) THEN 88 ELSE NULL END AS "Leaf_88",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" <= 0.458904) AND (t."X_9" <= 2.734507) AND (t."X_7" <= -0.667691) AND (t."X_3" <= 0.639387)) THEN 91 ELSE NULL END AS "Leaf_91",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" <= 0.458904) AND (t."X_9" <= 2.734507) AND (t."X_7" <= -0.667691) AND (t."X_3" > 0.639387)) THEN 92 ELSE NULL END AS "Leaf_92",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" > 0.458904) AND (t."X_2" <= 0.879833) AND (t."X_7" <= 1.050480) AND (t."X_2" <= -0.116228) AND (t."X_8" <= 1.668707) AND (t."X_9" <= 1.584014) AND (t."X_9" <= 0.797267)) THEN 93 ELSE NULL END AS "Leaf_93",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" > 0.458904) AND (t."X_2" <= 0.879833) AND (t."X_7" <= 1.050480) AND (t."X_2" <= -0.116228) AND (t."X_8" <= 1.668707) AND (t."X_9" <= 1.584014) AND (t."X_9" > 0.797267) AND (t."X_3" <= -0.118159)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" > 0.458904) AND (t."X_2" <= 0.879833) AND (t."X_7" <= 1.050480) AND (t."X_2" <= -0.116228) AND (t."X_8" <= 1.668707) AND (t."X_9" <= 1.584014) AND (t."X_9" > 0.797267) AND (t."X_3" > -0.118159)) THEN 96 ELSE NULL END AS "Leaf_96",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" <= 0.255635) AND (t."X_7" <= 0.960264) AND (t."X_0" > 0.006042) AND (t."X_9" <= 1.044434) AND (t."X_2" <= 0.038850) AND (t."X_9" > -1.549599) AND (t."X_2" <= -0.253827)) THEN 97 ELSE NULL END AS "Leaf_97",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" <= 0.255635) AND (t."X_7" <= 0.960264) AND (t."X_0" > 0.006042) AND (t."X_9" <= 1.044434) AND (t."X_2" <= 0.038850) AND (t."X_9" > -1.549599) AND (t."X_2" > -0.253827)) THEN 98 ELSE NULL END AS "Leaf_98",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" > 0.255635) AND (t."X_2" <= 0.831936) AND (t."X_9" > -1.197372)) THEN 100 ELSE NULL END AS "Leaf_100",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" > 0.255635) AND (t."X_2" <= 0.831936) AND (t."X_9" <= -1.197372) AND (t."X_9" <= -1.567992)) THEN 101 ELSE NULL END AS "Leaf_101",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" <= 0.270026) AND (t."X_2" <= 1.169708) AND (t."X_2" > 0.255635) AND (t."X_2" <= 0.831936) AND (t."X_9" <= -1.197372) AND (t."X_9" > -1.567992)) THEN 102 ELSE NULL END AS "Leaf_102",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" <= 0.458904) AND (t."X_9" <= 2.734507) AND (t."X_7" > -0.667691) AND (t."X_7" > -0.177407)) THEN 104 ELSE NULL END AS "Leaf_104",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" <= 0.458904) AND (t."X_9" <= 2.734507) AND (t."X_7" > -0.667691) AND (t."X_7" <= -0.177407) AND (t."X_2" <= -0.059408)) THEN 105 ELSE NULL END AS "Leaf_105",
      CASE WHEN((t."X_2" > -0.537820) AND (t."X_8" > -2.434180) AND (t."X_8" > -1.120839) AND (t."X_8" > 0.270026) AND (t."X_8" <= 0.458904) AND (t."X_9" <= 2.734507) AND (t."X_7" > -0.667691) AND (t."X_7" <= -0.177407) AND (t."X_2" > -0.059408)) THEN 106 ELSE NULL END AS "Leaf_106"
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
    SELECT 0 AS nid,  0.507812 AS "P_0", 0.492188 AS "P_1", 0 AS "D", 0.507812 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.348837 AS "P_0", 0.651163 AS "P_1", 1 AS "D", 0.651163 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.338624 AS "P_0", 0.661376 AS "P_1", 1 AS "D", 0.661376 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.192982 AS "P_0", 0.807018 AS "P_1", 1 AS "D", 0.807018 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.364486 AS "P_0", 0.635514 AS "P_1", 1 AS "D", 0.635514 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.029412 AS "P_0", 0.970588 AS "P_1", 1 AS "D", 0.970588 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.280576 AS "P_0", 0.719424 AS "P_1", 1 AS "D", 0.719424 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.520000 AS "P_0", 0.480000 AS "P_1", 0 AS "D", 0.520000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.398148 AS "P_0", 0.601852 AS "P_1", 1 AS "D", 0.601852 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.969697 AS "P_0", 0.030303 AS "P_1", 0 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.506494 AS "P_0", 0.493506 AS "P_1", 0 AS "D", 0.506494 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.129032 AS "P_0", 0.870968 AS "P_1", 1 AS "D", 0.870968 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.258065 AS "P_0", 0.741935 AS "P_1", 1 AS "D", 0.741935 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.673913 AS "P_0", 0.326087 AS "P_1", 0 AS "D", 0.673913 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.178571 AS "P_0", 0.821429 AS "P_1", 1 AS "D", 0.821429 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.115385 AS "P_0", 0.884615 AS "P_1", 1 AS "D", 0.884615 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.738095 AS "P_0", 0.261905 AS "P_1", 0 AS "D", 0.738095 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.837838 AS "P_0", 0.162162 AS "P_1", 0 AS "D", 0.837838 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.885714 AS "P_0", 0.114286 AS "P_1", 0 AS "D", 0.885714 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.080000 AS "P_0", 0.920000 AS "P_1", 1 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.093023 AS "P_0", 0.906977 AS "P_1", 1 AS "D", 0.906977 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.364583 AS "P_0", 0.635417 AS "P_1", 1 AS "D", 0.635417 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.593220 AS "P_0", 0.406780 AS "P_1", 0 AS "D", 0.593220 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.510204 AS "P_0", 0.489796 AS "P_1", 0 AS "D", 0.510204 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.678571 AS "P_0", 0.321429 AS "P_1", 0 AS "D", 0.678571 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.608696 AS "P_0", 0.391304 AS "P_1", 0 AS "D", 0.608696 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.823529 AS "P_0", 0.176471 AS "P_1", 0 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.026316 AS "P_0", 0.973684 AS "P_1", 1 AS "D", 0.973684 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46", t1."Leaf_52", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_60", t1."Leaf_65", t1."Leaf_66", t1."Leaf_67", t1."Leaf_70", t1."Leaf_71", t1."Leaf_73", t1."Leaf_74", t1."Leaf_76", t1."Leaf_77", t1."Leaf_78", t1."Leaf_79", t1."Leaf_83", t1."Leaf_84", t1."Leaf_85", t1."Leaf_86", t1."Leaf_89", t1."Leaf_94", t1."Leaf_95", t1."Leaf_97", t1."Leaf_99", t1."Leaf_100", t1."Leaf_103", t1."Leaf_107", t1."Leaf_108", t1."Leaf_109", t1."Leaf_111", t1."Leaf_112", t1."Leaf_113", t1."Leaf_115", t1."Leaf_116", t1."Leaf_117", t1."Leaf_119", t1."Leaf_122", t1."Leaf_123", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" > 1.990557)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" > 0.970526) AND (t."X_1" > 1.016925) AND (t."X_8" <= 0.411067)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" > 0.970526) AND (t."X_1" > 1.016925) AND (t."X_8" > 0.411067)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" > 0.970526) AND (t."X_1" <= 1.016925) AND (t."X_9" > 2.689792)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" > 0.508491) AND (t."X_1" <= -0.708891) AND (t."X_9" <= 0.762617) AND (t."X_9" <= 0.573847)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" > 0.508491) AND (t."X_1" <= -0.708891) AND (t."X_9" <= 0.762617) AND (t."X_9" > 0.573847)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" > 0.508491) AND (t."X_1" <= -0.708891) AND (t."X_9" > 0.762617) AND (t."X_9" <= 0.914541)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" > 0.508491) AND (t."X_1" <= -0.708891) AND (t."X_9" > 0.762617) AND (t."X_9" > 0.914541)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" > 0.508491) AND (t."X_1" > -0.708891) AND (t."X_8" <= 1.373123)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" > 0.508491) AND (t."X_1" > -0.708891) AND (t."X_8" > 1.373123)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" > 0.970526) AND (t."X_1" <= 1.016925) AND (t."X_9" <= 2.689792) AND (t."X_9" <= 1.605650) AND (t."X_8" > 0.049632) AND (t."X_8" <= 1.110175)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" > 0.970526) AND (t."X_1" <= 1.016925) AND (t."X_9" <= 2.689792) AND (t."X_9" <= 1.605650) AND (t."X_8" > 0.049632) AND (t."X_8" > 1.110175) AND (t."X_9" <= 1.341754)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" > 0.970526) AND (t."X_1" <= 1.016925) AND (t."X_9" <= 2.689792) AND (t."X_9" <= 1.605650) AND (t."X_8" > 0.049632) AND (t."X_8" > 1.110175) AND (t."X_9" > 1.341754)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" > 0.970526) AND (t."X_1" <= 1.016925) AND (t."X_9" <= 2.689792) AND (t."X_9" <= 1.605650) AND (t."X_8" <= 0.049632) AND (t."X_7" > 1.552966) AND (t."X_9" <= 1.199618)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" > 0.970526) AND (t."X_1" <= 1.016925) AND (t."X_9" <= 2.689792) AND (t."X_9" <= 1.605650) AND (t."X_8" <= 0.049632) AND (t."X_7" > 1.552966) AND (t."X_9" > 1.199618)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" > 0.970526) AND (t."X_1" <= 1.016925) AND (t."X_9" <= 2.689792) AND (t."X_9" <= 1.605650) AND (t."X_8" <= 0.049632) AND (t."X_7" <= 1.552966) AND (t."X_9" <= 1.272884)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" > 0.970526) AND (t."X_1" <= 1.016925) AND (t."X_9" <= 2.689792) AND (t."X_9" <= 1.605650) AND (t."X_8" <= 0.049632) AND (t."X_7" <= 1.552966) AND (t."X_9" > 1.272884) AND (t."X_9" <= 1.298532)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" > 0.970526) AND (t."X_1" <= 1.016925) AND (t."X_9" <= 2.689792) AND (t."X_9" <= 1.605650) AND (t."X_8" <= 0.049632) AND (t."X_7" <= 1.552966) AND (t."X_9" > 1.272884) AND (t."X_9" > 1.298532) AND (t."X_8" <= -1.283246)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" > 0.970526) AND (t."X_1" <= 1.016925) AND (t."X_9" <= 2.689792) AND (t."X_9" <= 1.605650) AND (t."X_8" <= 0.049632) AND (t."X_7" <= 1.552966) AND (t."X_9" > 1.272884) AND (t."X_9" > 1.298532) AND (t."X_8" > -1.283246)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" > 0.970526) AND (t."X_1" <= 1.016925) AND (t."X_9" <= 2.689792) AND (t."X_9" > 1.605650) AND (t."X_9" <= 2.132833)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" > 0.970526) AND (t."X_1" <= 1.016925) AND (t."X_9" <= 2.689792) AND (t."X_9" > 1.605650) AND (t."X_9" > 2.132833) AND (t."X_8" <= 0.984755)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" > 0.970526) AND (t."X_1" <= 1.016925) AND (t."X_9" <= 2.689792) AND (t."X_9" > 1.605650) AND (t."X_9" > 2.132833) AND (t."X_8" > 0.984755) AND (t."X_9" <= 2.406303)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" > 0.970526) AND (t."X_1" <= 1.016925) AND (t."X_9" <= 2.689792) AND (t."X_9" > 1.605650) AND (t."X_9" > 2.132833) AND (t."X_8" > 0.984755) AND (t."X_9" > 2.406303)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" > -0.598569) AND (t."X_8" > 1.691567)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" <= -0.598569) AND (t."X_9" <= -1.204486) AND (t."X_1" <= -1.842105) AND (t."X_9" <= -2.749661)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" <= -0.598569) AND (t."X_9" <= -1.204486) AND (t."X_1" <= -1.842105) AND (t."X_9" > -2.749661)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" <= -0.598569) AND (t."X_9" <= -1.204486) AND (t."X_1" > -1.842105) AND (t."X_7" <= -0.647930)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" <= -0.598569) AND (t."X_9" <= -1.204486) AND (t."X_1" > -1.842105) AND (t."X_7" > -0.647930)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" <= -0.598569) AND (t."X_9" > -1.204486) AND (t."X_7" > -1.586390) AND (t."X_8" <= -0.858726) AND (t."X_7" <= -1.022290)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" <= -0.598569) AND (t."X_9" > -1.204486) AND (t."X_7" > -1.586390) AND (t."X_8" <= -0.858726) AND (t."X_7" > -1.022290)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" <= -0.598569) AND (t."X_9" > -1.204486) AND (t."X_7" > -1.586390) AND (t."X_8" > -0.858726) AND (t."X_9" <= -1.124147)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" <= -0.598569) AND (t."X_9" > -1.204486) AND (t."X_7" > -1.586390) AND (t."X_8" > -0.858726) AND (t."X_9" > -1.124147) AND (t."X_8" > 1.550704)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" <= -0.598569) AND (t."X_9" > -1.204486) AND (t."X_7" > -1.586390) AND (t."X_8" > -0.858726) AND (t."X_9" > -1.124147) AND (t."X_8" <= 1.550704) AND (t."X_7" <= -1.097150)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" <= -0.598569) AND (t."X_9" > -1.204486) AND (t."X_7" > -1.586390) AND (t."X_8" > -0.858726) AND (t."X_9" > -1.124147) AND (t."X_8" <= 1.550704) AND (t."X_7" > -1.097150) AND (t."X_8" <= -0.319465)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" <= -0.598569) AND (t."X_9" > -1.204486) AND (t."X_7" > -1.586390) AND (t."X_8" > -0.858726) AND (t."X_9" > -1.124147) AND (t."X_8" <= 1.550704) AND (t."X_7" > -1.097150) AND (t."X_8" > -0.319465)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" <= -0.598569) AND (t."X_9" > -1.204486) AND (t."X_7" <= -1.586390) AND (t."X_9" > -0.761601)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" <= -0.598569) AND (t."X_9" > -1.204486) AND (t."X_7" <= -1.586390) AND (t."X_9" <= -0.761601) AND (t."X_9" <= -0.922207)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" <= -0.598569) AND (t."X_9" > -1.204486) AND (t."X_7" <= -1.586390) AND (t."X_9" <= -0.761601) AND (t."X_9" > -0.922207)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" > -0.598569) AND (t."X_8" <= 1.691567) AND (t."X_9" <= -1.569034)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" > -0.598569) AND (t."X_8" <= 1.691567) AND (t."X_9" > -1.569034) AND (t."X_9" > 0.316080) AND (t."X_9" <= 0.346408)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" > -0.598569) AND (t."X_8" <= 1.691567) AND (t."X_9" > -1.569034) AND (t."X_9" > 0.316080) AND (t."X_9" > 0.346408)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" > -0.598569) AND (t."X_8" <= 1.691567) AND (t."X_9" > -1.569034) AND (t."X_9" <= 0.316080) AND (t."X_8" <= -1.693158)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" <= -0.170237) AND (t."X_7" > -0.598569) AND (t."X_8" <= 1.691567) AND (t."X_9" > -1.569034) AND (t."X_9" <= 0.316080) AND (t."X_8" > -1.693158)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" <= -0.419848) AND (t."X_7" <= 0.314821)) THEN 89 ELSE NULL END AS "Leaf_89",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" <= -0.419848) AND (t."X_7" > 0.314821) AND (t."X_9" > -0.403293) AND (t."X_7" > 2.263418)) THEN 94 ELSE NULL END AS "Leaf_94",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" <= -0.419848) AND (t."X_7" > 0.314821) AND (t."X_9" > -0.403293) AND (t."X_7" <= 2.263418) AND (t."X_8" <= -2.441077)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" <= -0.419848) AND (t."X_7" > 0.314821) AND (t."X_9" > -0.403293) AND (t."X_7" <= 2.263418) AND (t."X_8" > -2.441077) AND (t."X_8" <= -1.060712)) THEN 97 ELSE NULL END AS "Leaf_97",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" <= -0.419848) AND (t."X_7" > 0.314821) AND (t."X_9" > -0.403293) AND (t."X_7" <= 2.263418) AND (t."X_8" > -2.441077) AND (t."X_8" > -1.060712) AND (t."X_9" <= 0.173362)) THEN 99 ELSE NULL END AS "Leaf_99",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" <= -0.419848) AND (t."X_7" > 0.314821) AND (t."X_9" > -0.403293) AND (t."X_7" <= 2.263418) AND (t."X_8" > -2.441077) AND (t."X_8" > -1.060712) AND (t."X_9" > 0.173362)) THEN 100 ELSE NULL END AS "Leaf_100",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" <= -0.419848) AND (t."X_7" > 0.314821) AND (t."X_9" <= -0.403293) AND (t."X_9" <= -1.071357) AND (t."X_7" <= 0.608415)) THEN 103 ELSE NULL END AS "Leaf_103",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" <= -0.419848) AND (t."X_7" > 0.314821) AND (t."X_9" <= -0.403293) AND (t."X_9" > -1.071357) AND (t."X_1" <= -0.411148) AND (t."X_9" <= -0.871312)) THEN 107 ELSE NULL END AS "Leaf_107",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" <= -0.419848) AND (t."X_7" > 0.314821) AND (t."X_9" <= -0.403293) AND (t."X_9" > -1.071357) AND (t."X_1" <= -0.411148) AND (t."X_9" > -0.871312)) THEN 108 ELSE NULL END AS "Leaf_108",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" <= -0.419848) AND (t."X_7" > 0.314821) AND (t."X_9" <= -0.403293) AND (t."X_9" <= -1.071357) AND (t."X_7" > 0.608415) AND (t."X_9" <= -2.096006)) THEN 109 ELSE NULL END AS "Leaf_109",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" <= -0.419848) AND (t."X_7" > 0.314821) AND (t."X_9" <= -0.403293) AND (t."X_9" <= -1.071357) AND (t."X_7" > 0.608415) AND (t."X_9" > -2.096006) AND (t."X_9" <= -1.403439)) THEN 111 ELSE NULL END AS "Leaf_111",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" <= -0.419848) AND (t."X_7" > 0.314821) AND (t."X_9" <= -0.403293) AND (t."X_9" <= -1.071357) AND (t."X_7" > 0.608415) AND (t."X_9" > -2.096006) AND (t."X_9" > -1.403439)) THEN 112 ELSE NULL END AS "Leaf_112",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" <= -0.419848) AND (t."X_7" > 0.314821) AND (t."X_9" <= -0.403293) AND (t."X_9" > -1.071357) AND (t."X_1" > -0.411148) AND (t."X_1" <= 0.700732)) THEN 113 ELSE NULL END AS "Leaf_113",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" <= -0.419848) AND (t."X_7" > 0.314821) AND (t."X_9" <= -0.403293) AND (t."X_9" > -1.071357) AND (t."X_1" > -0.411148) AND (t."X_1" > 0.700732) AND (t."X_9" <= -0.945451)) THEN 115 ELSE NULL END AS "Leaf_115",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" <= -0.419848) AND (t."X_7" > 0.314821) AND (t."X_9" <= -0.403293) AND (t."X_9" > -1.071357) AND (t."X_1" > -0.411148) AND (t."X_1" > 0.700732) AND (t."X_9" > -0.945451)) THEN 116 ELSE NULL END AS "Leaf_116",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" > -0.419848) AND (t."X_9" <= -0.319903)) THEN 117 ELSE NULL END AS "Leaf_117",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" > -0.419848) AND (t."X_9" > -0.319903) AND (t."X_1" <= -0.114840)) THEN 119 ELSE NULL END AS "Leaf_119",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" > -0.419848) AND (t."X_9" > -0.319903) AND (t."X_1" > -0.114840) AND (t."X_9" > -0.098729)) THEN 122 ELSE NULL END AS "Leaf_122",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" > -0.419848) AND (t."X_9" > -0.319903) AND (t."X_1" > -0.114840) AND (t."X_9" <= -0.098729) AND (t."X_7" <= 1.447803)) THEN 123 ELSE NULL END AS "Leaf_123",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" > -0.419848) AND (t."X_9" > -0.319903) AND (t."X_1" > -0.114840) AND (t."X_9" <= -0.098729) AND (t."X_7" > 1.447803) AND (t."X_9" <= -0.157416)) THEN 125 ELSE NULL END AS "Leaf_125",
      CASE WHEN((t."X_1" <= 1.990557) AND (t."X_9" <= 0.970526) AND (t."X_9" <= 0.508491) AND (t."X_7" > -0.170237) AND (t."X_8" > -0.419848) AND (t."X_9" > -0.319903) AND (t."X_1" > -0.114840) AND (t."X_9" <= -0.098729) AND (t."X_7" > 1.447803) AND (t."X_9" > -0.157416)) THEN 126 ELSE NULL END AS "Leaf_126"
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
    SELECT 0 AS nid,  0.505859 AS "P_0", 0.494141 AS "P_1", 0 AS "D", 0.505859 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.529774 AS "P_0", 0.470226 AS "P_1", 0 AS "D", 0.529774 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.040000 AS "P_0", 0.960000 AS "P_1", 1 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.563855 AS "P_0", 0.436145 AS "P_1", 0 AS "D", 0.563855 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.265625 AS "P_0", 0.734375 AS "P_1", 1 AS "D", 0.734375 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.203390 AS "P_0", 0.796610 AS "P_1", 1 AS "D", 0.796610 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.514970 AS "P_0", 0.485030 AS "P_1", 0 AS "D", 0.514970 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.765432 AS "P_0", 0.234568 AS "P_1", 0 AS "D", 0.765432 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.437500 AS "P_0", 0.562500 AS "P_1", 1 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.873016 AS "P_0", 0.126984 AS "P_1", 0 AS "D", 0.873016 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.277778 AS "P_0", 0.722222 AS "P_1", 1 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.086957 AS "P_0", 0.913043 AS "P_1", 1 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.148148 AS "P_0", 0.851852 AS "P_1", 1 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
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
    SELECT 38 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.624060 AS "P_0", 0.375940 AS "P_1", 0 AS "D", 0.624060 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.442786 AS "P_0", 0.557214 AS "P_1", 1 AS "D", 0.557214 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.523810 AS "P_0", 0.476190 AS "P_1", 0 AS "D", 0.523810 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.795918 AS "P_0", 0.204082 AS "P_1", 0 AS "D", 0.795918 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.866667 AS "P_0", 0.133333 AS "P_1", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.842105 AS "P_0", 0.157895 AS "P_1", 0 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.430769 AS "P_0", 0.569231 AS "P_1", 1 AS "D", 0.569231 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.540000 AS "P_0", 0.460000 AS "P_1", 0 AS "D", 0.540000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.685714 AS "P_0", 0.314286 AS "P_1", 0 AS "D", 0.685714 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.886364 AS "P_0", 0.113636 AS "P_1", 0 AS "D", 0.886364 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.925000 AS "P_0", 0.075000 AS "P_1", 0 AS "D", 0.925000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.948718 AS "P_0", 0.051282 AS "P_1", 0 AS "D", 0.948718 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.294118 AS "P_0", 0.705882 AS "P_1", 1 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.518797 AS "P_0", 0.481203 AS "P_1", 0 AS "D", 0.518797 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.447368 AS "P_0", 0.552632 AS "P_1", 1 AS "D", 0.552632 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.320000 AS "P_0", 0.680000 AS "P_1", 1 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.692308 AS "P_0", 0.307692 AS "P_1", 0 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.187500 AS "P_0", 0.812500 AS "P_1", 1 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  0.632353 AS "P_0", 0.367647 AS "P_1", 0 AS "D", 0.632353 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  0.242424 AS "P_0", 0.757576 AS "P_1", 1 AS "D", 0.757576 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.562500 AS "P_0", 0.437500 AS "P_1", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  0.695652 AS "P_0", 0.304348 AS "P_1", 0 AS "D", 0.695652 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_38", t1."Leaf_40", t1."Leaf_43", t1."Leaf_44", t1."Leaf_46", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_54", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58", t1."Leaf_64", t1."Leaf_65", t1."Leaf_68", t1."Leaf_69", t1."Leaf_70", t1."Leaf_71", t1."Leaf_72", t1."Leaf_74", t1."Leaf_75", t1."Leaf_77", t1."Leaf_81", t1."Leaf_82", t1."Leaf_83", t1."Leaf_84", t1."Leaf_86", t1."Leaf_88", t1."Leaf_92", t1."Leaf_93", t1."Leaf_94", t1."Leaf_95", t1."Leaf_99", t1."Leaf_101", t1."Leaf_102", t1."Leaf_105", t1."Leaf_106", t1."Leaf_109", t1."Leaf_111", t1."Leaf_114", t1."Leaf_115", t1."Leaf_116", t1."Leaf_120", t1."Leaf_121", t1."Leaf_122", t1."Leaf_123", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" > -0.249197) AND (t."X_8" <= -0.437158) AND (t."X_9" <= 0.229489)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" > -0.249197) AND (t."X_8" <= -0.437158) AND (t."X_9" > 0.229489) AND (t."X_9" <= 1.903120)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" > -0.249197) AND (t."X_8" <= -0.437158) AND (t."X_9" > 0.229489) AND (t."X_9" > 1.903120)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" > -0.249197) AND (t."X_8" > -0.437158) AND (t."X_7" <= 2.003029)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" > -0.249197) AND (t."X_8" > -0.437158) AND (t."X_7" > 2.003029)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" <= -0.573319) AND (t."X_7" <= -0.427372) AND (t."X_3" <= -0.942886)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" <= -0.573319) AND (t."X_7" <= -0.427372) AND (t."X_3" > -0.942886) AND (t."X_3" <= -0.620677)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" <= -0.573319) AND (t."X_7" <= -0.427372) AND (t."X_3" > -0.942886) AND (t."X_3" > -0.620677)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" <= -0.573319) AND (t."X_7" > -0.427372) AND (t."X_8" <= -1.407042) AND (t."X_9" <= -1.035868)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" <= -0.573319) AND (t."X_7" > -0.427372) AND (t."X_8" <= -1.407042) AND (t."X_9" > -1.035868)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" <= -0.573319) AND (t."X_7" > -0.427372) AND (t."X_8" > -1.407042) AND (t."X_7" > 0.604207) AND (t."X_3" > -0.754493)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" <= -0.573319) AND (t."X_7" > -0.427372) AND (t."X_8" > -1.407042) AND (t."X_7" > 0.604207) AND (t."X_3" <= -0.754493) AND (t."X_7" <= 0.656197)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" <= -0.573319) AND (t."X_7" > -0.427372) AND (t."X_8" > -1.407042) AND (t."X_7" > 0.604207) AND (t."X_3" <= -0.754493) AND (t."X_7" > 0.656197)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" <= -0.573319) AND (t."X_7" > -0.427372) AND (t."X_8" > -1.407042) AND (t."X_7" <= 0.604207) AND (t."X_9" <= -1.377528)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" <= -0.573319) AND (t."X_7" > -0.427372) AND (t."X_8" > -1.407042) AND (t."X_7" <= 0.604207) AND (t."X_9" > -1.377528)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" <= -0.048914) AND (t."X_0" <= 0.068182) AND (t."X_7" > -0.201849)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" <= -0.048914) AND (t."X_0" <= 0.068182) AND (t."X_7" <= -0.201849) AND (t."X_3" > -0.429661)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" <= -0.048914) AND (t."X_0" <= 0.068182) AND (t."X_7" <= -0.201849) AND (t."X_3" <= -0.429661) AND (t."X_9" <= 0.619780) AND (t."X_0" <= -0.062446)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" <= -0.048914) AND (t."X_0" <= 0.068182) AND (t."X_7" <= -0.201849) AND (t."X_3" <= -0.429661) AND (t."X_9" <= 0.619780) AND (t."X_0" > -0.062446)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" <= -0.048914) AND (t."X_0" <= 0.068182) AND (t."X_7" <= -0.201849) AND (t."X_3" <= -0.429661) AND (t."X_9" > 0.619780) AND (t."X_3" > -0.518186)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" <= -0.048914) AND (t."X_0" <= 0.068182) AND (t."X_7" <= -0.201849) AND (t."X_3" <= -0.429661) AND (t."X_9" > 0.619780) AND (t."X_3" <= -0.518186) AND (t."X_0" > -1.153035)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" <= -0.048914) AND (t."X_0" <= 0.068182) AND (t."X_7" <= -0.201849) AND (t."X_3" <= -0.429661) AND (t."X_9" > 0.619780) AND (t."X_3" <= -0.518186) AND (t."X_0" <= -1.153035) AND (t."X_9" <= 1.634138)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" <= -0.048914) AND (t."X_0" <= 0.068182) AND (t."X_7" <= -0.201849) AND (t."X_3" <= -0.429661) AND (t."X_9" > 0.619780) AND (t."X_3" <= -0.518186) AND (t."X_0" <= -1.153035) AND (t."X_9" > 1.634138)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" <= -0.048914) AND (t."X_0" > 0.068182) AND (t."X_3" <= -1.094214)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" <= -0.048914) AND (t."X_0" > 0.068182) AND (t."X_3" > -1.094214) AND (t."X_8" > 0.065857)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" <= -0.048914) AND (t."X_0" > 0.068182) AND (t."X_3" > -1.094214) AND (t."X_8" <= 0.065857) AND (t."X_9" > -0.086988)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" <= -0.048914) AND (t."X_0" > 0.068182) AND (t."X_3" > -1.094214) AND (t."X_8" <= 0.065857) AND (t."X_9" <= -0.086988) AND (t."X_0" <= 0.737571)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" <= -0.048914) AND (t."X_0" > 0.068182) AND (t."X_3" > -1.094214) AND (t."X_8" <= 0.065857) AND (t."X_9" <= -0.086988) AND (t."X_0" > 0.737571)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" > -0.048914) AND (t."X_3" > -0.812507) AND (t."X_8" <= -0.797776) AND (t."X_3" > -0.402617)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" > -0.048914) AND (t."X_3" > -0.812507) AND (t."X_8" > -0.797776) AND (t."X_3" <= -0.445665)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" > -0.048914) AND (t."X_3" > -0.812507) AND (t."X_8" > -0.797776) AND (t."X_3" > -0.445665) AND (t."X_0" > 0.093789)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" > -0.048914) AND (t."X_3" > -0.812507) AND (t."X_8" > -0.797776) AND (t."X_3" > -0.445665) AND (t."X_0" <= 0.093789) AND (t."X_9" <= -0.207340)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" > -0.048914) AND (t."X_3" > -0.812507) AND (t."X_8" > -0.797776) AND (t."X_3" > -0.445665) AND (t."X_0" <= 0.093789) AND (t."X_9" > -0.207340)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" > -0.048914) AND (t."X_3" > -0.812507) AND (t."X_8" <= -0.797776) AND (t."X_3" <= -0.402617) AND (t."X_7" <= 1.637592)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" > -0.048914) AND (t."X_3" > -0.812507) AND (t."X_8" <= -0.797776) AND (t."X_3" <= -0.402617) AND (t."X_7" > 1.637592)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" > -0.048914) AND (t."X_3" <= -0.812507) AND (t."X_9" > 2.643782)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" > -0.048914) AND (t."X_3" <= -0.812507) AND (t."X_9" <= 2.643782) AND (t."X_0" <= -0.875726)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" > -0.048914) AND (t."X_3" <= -0.812507) AND (t."X_9" <= 2.643782) AND (t."X_0" > -0.875726) AND (t."X_7" <= 0.350972)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" > -0.048914) AND (t."X_3" <= -0.812507) AND (t."X_9" <= 2.643782) AND (t."X_0" > -0.875726) AND (t."X_7" > 0.350972) AND (t."X_8" <= 0.099540) AND (t."X_7" <= 1.021332)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" > -0.048914) AND (t."X_3" <= -0.812507) AND (t."X_9" <= 2.643782) AND (t."X_0" > -0.875726) AND (t."X_7" > 0.350972) AND (t."X_8" <= 0.099540) AND (t."X_7" > 1.021332)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" > -0.048914) AND (t."X_3" <= -0.812507) AND (t."X_9" <= 2.643782) AND (t."X_0" > -0.875726) AND (t."X_7" > 0.350972) AND (t."X_8" > 0.099540) AND (t."X_7" <= 0.615166)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_3" <= -0.076395) AND (t."X_3" <= -0.249197) AND (t."X_9" > -0.573319) AND (t."X_7" > -0.048914) AND (t."X_3" <= -0.812507) AND (t."X_9" <= 2.643782) AND (t."X_0" > -0.875726) AND (t."X_7" > 0.350972) AND (t."X_8" > 0.099540) AND (t."X_7" > 0.615166)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" > -0.165512)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" > 0.984092)) THEN 88 ELSE NULL END AS "Leaf_88",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" <= 0.049365) AND (t."X_9" > -0.318883)) THEN 92 ELSE NULL END AS "Leaf_92",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" <= 0.049365) AND (t."X_9" <= -0.318883) AND (t."X_3" <= 0.003979)) THEN 93 ELSE NULL END AS "Leaf_93",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" <= 0.049365) AND (t."X_9" <= -0.318883) AND (t."X_3" > 0.003979)) THEN 94 ELSE NULL END AS "Leaf_94",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" <= 0.087758)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" > 0.087758) AND (t."X_8" > -0.436003) AND (t."X_3" <= 0.620909)) THEN 99 ELSE NULL END AS "Leaf_99",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" > 0.087758) AND (t."X_8" > -0.436003) AND (t."X_3" > 0.620909) AND (t."X_7" <= 0.447809)) THEN 101 ELSE NULL END AS "Leaf_101",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" > 0.087758) AND (t."X_8" > -0.436003) AND (t."X_3" > 0.620909) AND (t."X_7" > 0.447809)) THEN 102 ELSE NULL END AS "Leaf_102",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" > 0.087758) AND (t."X_8" <= -0.436003) AND (t."X_3" > 1.255377) AND (t."X_9" <= 0.776768)) THEN 105 ELSE NULL END AS "Leaf_105",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" > 0.087758) AND (t."X_8" <= -0.436003) AND (t."X_3" > 1.255377) AND (t."X_9" > 0.776768)) THEN 106 ELSE NULL END AS "Leaf_106",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" > 0.087758) AND (t."X_8" <= -0.436003) AND (t."X_3" <= 1.255377) AND (t."X_0" > 0.621438) AND (t."X_3" <= 0.224972)) THEN 109 ELSE NULL END AS "Leaf_109",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" > 0.087758) AND (t."X_8" <= -0.436003) AND (t."X_3" <= 1.255377) AND (t."X_0" > 0.621438) AND (t."X_3" > 0.224972) AND (t."X_8" <= -1.752228)) THEN 111 ELSE NULL END AS "Leaf_111",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" > 0.087758) AND (t."X_8" <= -0.436003) AND (t."X_3" <= 1.255377) AND (t."X_0" > 0.621438) AND (t."X_3" > 0.224972) AND (t."X_8" > -1.752228) AND (t."X_9" > 0.556155)) THEN 114 ELSE NULL END AS "Leaf_114",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" > 0.087758) AND (t."X_8" <= -0.436003) AND (t."X_3" <= 1.255377) AND (t."X_0" > 0.621438) AND (t."X_3" > 0.224972) AND (t."X_8" > -1.752228) AND (t."X_9" <= 0.556155) AND (t."X_0" <= 1.934653)) THEN 115 ELSE NULL END AS "Leaf_115",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" > 0.087758) AND (t."X_8" <= -0.436003) AND (t."X_3" <= 1.255377) AND (t."X_0" > 0.621438) AND (t."X_3" > 0.224972) AND (t."X_8" > -1.752228) AND (t."X_9" <= 0.556155) AND (t."X_0" > 1.934653)) THEN 116 ELSE NULL END AS "Leaf_116",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" > 0.087758) AND (t."X_8" <= -0.436003) AND (t."X_3" <= 1.255377) AND (t."X_0" <= 0.621438) AND (t."X_0" <= -1.044968) AND (t."X_9" > -0.193097)) THEN 120 ELSE NULL END AS "Leaf_120",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" > 0.087758) AND (t."X_8" <= -0.436003) AND (t."X_3" <= 1.255377) AND (t."X_0" <= 0.621438) AND (t."X_0" <= -1.044968) AND (t."X_9" <= -0.193097) AND (t."X_9" <= -1.009459)) THEN 121 ELSE NULL END AS "Leaf_121",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" > 0.087758) AND (t."X_8" <= -0.436003) AND (t."X_3" <= 1.255377) AND (t."X_0" <= 0.621438) AND (t."X_0" <= -1.044968) AND (t."X_9" <= -0.193097) AND (t."X_9" > -1.009459)) THEN 122 ELSE NULL END AS "Leaf_122",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" > 0.087758) AND (t."X_8" <= -0.436003) AND (t."X_3" <= 1.255377) AND (t."X_0" <= 0.621438) AND (t."X_0" > -1.044968) AND (t."X_8" <= -0.716093)) THEN 123 ELSE NULL END AS "Leaf_123",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" > 0.087758) AND (t."X_8" <= -0.436003) AND (t."X_3" <= 1.255377) AND (t."X_0" <= 0.621438) AND (t."X_0" > -1.044968) AND (t."X_8" > -0.716093) AND (t."X_8" <= -0.496968)) THEN 125 ELSE NULL END AS "Leaf_125",
      CASE WHEN((t."X_3" > -0.076395) AND (t."X_8" <= -0.165512) AND (t."X_9" <= 0.984092) AND (t."X_3" > 0.049365) AND (t."X_3" > 0.087758) AND (t."X_8" <= -0.436003) AND (t."X_3" <= 1.255377) AND (t."X_0" <= 0.621438) AND (t."X_0" > -1.044968) AND (t."X_8" > -0.716093) AND (t."X_8" > -0.496968)) THEN 126 ELSE NULL END AS "Leaf_126"
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
    SELECT 0 AS nid,  0.492188 AS "P_0", 0.507812 AS "P_1", 1 AS "D", 0.507812 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.417062 AS "P_0", 0.582938 AS "P_1", 1 AS "D", 0.582938 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.544850 AS "P_0", 0.455150 AS "P_1", 0 AS "D", 0.544850 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.464088 AS "P_0", 0.535912 AS "P_1", 1 AS "D", 0.535912 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.647059 AS "P_0", 0.352941 AS "P_1", 0 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.392308 AS "P_0", 0.607692 AS "P_1", 1 AS "D", 0.607692 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.757576 AS "P_0", 0.242424 AS "P_1", 0 AS "D", 0.757576 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.821429 AS "P_0", 0.178571 AS "P_1", 0 AS "D", 0.821429 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.509434 AS "P_0", 0.490566 AS "P_1", 0 AS "D", 0.509434 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.311688 AS "P_0", 0.688312 AS "P_1", 1 AS "D", 0.688312 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.322581 AS "P_0", 0.677419 AS "P_1", 1 AS "D", 0.677419 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.772727 AS "P_0", 0.227273 AS "P_1", 0 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.275862 AS "P_0", 0.724138 AS "P_1", 1 AS "D", 0.724138 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.421053 AS "P_0", 0.578947 AS "P_1", 1 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
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
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.187500 AS "P_0", 0.812500 AS "P_1", 1 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.517241 AS "P_0", 0.482759 AS "P_1", 0 AS "D", 0.517241 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.152174 AS "P_0", 0.847826 AS "P_1", 1 AS "D", 0.847826 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.233333 AS "P_0", 0.766667 AS "P_1", 1 AS "D", 0.766667 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.368421 AS "P_0", 0.631579 AS "P_1", 1 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.451389 AS "P_0", 0.548611 AS "P_1", 1 AS "D", 0.548611 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.630573 AS "P_0", 0.369427 AS "P_1", 0 AS "D", 0.630573 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.533333 AS "P_0", 0.466667 AS "P_1", 0 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.041667 AS "P_0", 0.958333 AS "P_1", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.480392 AS "P_0", 0.519608 AS "P_1", 1 AS "D", 0.519608 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.515789 AS "P_0", 0.484211 AS "P_1", 0 AS "D", 0.515789 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.614286 AS "P_0", 0.385714 AS "P_1", 0 AS "D", 0.614286 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.240000 AS "P_0", 0.760000 AS "P_1", 1 AS "D", 0.760000 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.677419 AS "P_0", 0.322581 AS "P_1", 0 AS "D", 0.677419 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.761905 AS "P_0", 0.238095 AS "P_1", 0 AS "D", 0.761905 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.866667 AS "P_0", 0.133333 AS "P_1", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_33", t1."Leaf_36", t1."Leaf_37", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_45", t1."Leaf_53", t1."Leaf_54", t1."Leaf_56", t1."Leaf_58", t1."Leaf_59", t1."Leaf_60", t1."Leaf_61", t1."Leaf_63", t1."Leaf_64", t1."Leaf_66", t1."Leaf_69", t1."Leaf_71", t1."Leaf_73", t1."Leaf_74", t1."Leaf_76", t1."Leaf_77", t1."Leaf_78", t1."Leaf_83", t1."Leaf_86", t1."Leaf_87", t1."Leaf_89", t1."Leaf_90", t1."Leaf_92", t1."Leaf_93", t1."Leaf_95", t1."Leaf_96", t1."Leaf_101", t1."Leaf_102", t1."Leaf_105", t1."Leaf_107", t1."Leaf_108", t1."Leaf_109", t1."Leaf_110", t1."Leaf_113", t1."Leaf_114", t1."Leaf_117", t1."Leaf_119", t1."Leaf_120", t1."Leaf_122", t1."Leaf_124", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= -0.856892) AND (t."X_9" > -1.058994) AND (t."X_7" <= 0.468449) AND (t."X_8" <= -0.614019) AND (t."X_7" <= 0.289036)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" <= -0.856892) AND (t."X_9" > -1.058994) AND (t."X_7" <= 0.468449) AND (t."X_8" <= -0.614019) AND (t."X_7" > 0.289036)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" <= -0.856892) AND (t."X_9" > -1.058994) AND (t."X_7" > 0.468449) AND (t."X_0" <= -0.456631) AND (t."X_7" <= 1.249509)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_3" <= -0.856892) AND (t."X_9" > -1.058994) AND (t."X_7" > 0.468449) AND (t."X_0" <= -0.456631) AND (t."X_7" > 1.249509)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" <= -0.856892) AND (t."X_9" > -1.058994) AND (t."X_7" > 0.468449) AND (t."X_0" > -0.456631) AND (t."X_3" <= -2.350929)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_3" <= -0.856892) AND (t."X_9" > -1.058994) AND (t."X_7" > 0.468449) AND (t."X_0" > -0.456631) AND (t."X_3" > -2.350929)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_3" <= -0.856892) AND (t."X_9" > -1.058994) AND (t."X_7" <= 0.468449) AND (t."X_8" > -0.614019) AND (t."X_3" <= -1.961579)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_3" <= -0.856892) AND (t."X_9" > -1.058994) AND (t."X_7" <= 0.468449) AND (t."X_8" > -0.614019) AND (t."X_3" > -1.961579) AND (t."X_8" > 1.121279)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_3" <= -0.856892) AND (t."X_9" > -1.058994) AND (t."X_7" <= 0.468449) AND (t."X_8" > -0.614019) AND (t."X_3" > -1.961579) AND (t."X_8" <= 1.121279) AND (t."X_0" > -1.118528)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_3" <= -0.856892) AND (t."X_9" > -1.058994) AND (t."X_7" <= 0.468449) AND (t."X_8" > -0.614019) AND (t."X_3" > -1.961579) AND (t."X_8" <= 1.121279) AND (t."X_0" <= -1.118528) AND (t."X_9" <= 0.187192)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_3" <= -0.856892) AND (t."X_9" > -1.058994) AND (t."X_7" <= 0.468449) AND (t."X_8" > -0.614019) AND (t."X_3" > -1.961579) AND (t."X_8" <= 1.121279) AND (t."X_0" <= -1.118528) AND (t."X_9" > 0.187192)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_3" <= -0.856892) AND (t."X_9" <= -1.058994) AND (t."X_9" <= -1.251621)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_3" <= -0.856892) AND (t."X_9" <= -1.058994) AND (t."X_9" > -1.251621) AND (t."X_3" <= -1.609053)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_3" <= -0.856892) AND (t."X_9" <= -1.058994) AND (t."X_9" > -1.251621) AND (t."X_3" > -1.609053)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" <= 0.145284) AND (t."X_9" <= -0.910089)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" <= 0.145284) AND (t."X_9" > -0.910089) AND (t."X_0" <= -1.928203)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" <= 0.145284) AND (t."X_9" > -0.910089) AND (t."X_0" > -1.928203) AND (t."X_8" > -1.031824)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" <= 0.145284) AND (t."X_9" > -0.910089) AND (t."X_0" > -1.928203) AND (t."X_8" <= -1.031824) AND (t."X_3" <= -0.779120)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" <= 0.145284) AND (t."X_9" > -0.910089) AND (t."X_0" > -1.928203) AND (t."X_8" <= -1.031824) AND (t."X_3" > -0.779120) AND (t."X_0" > -1.002252)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" <= 0.145284) AND (t."X_9" > -0.910089) AND (t."X_0" > -1.928203) AND (t."X_8" <= -1.031824) AND (t."X_3" > -0.779120) AND (t."X_0" <= -1.002252) AND (t."X_9" <= -0.278281)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" <= 0.145284) AND (t."X_9" > -0.910089) AND (t."X_0" > -1.928203) AND (t."X_8" <= -1.031824) AND (t."X_3" > -0.779120) AND (t."X_0" <= -1.002252) AND (t."X_9" > -0.278281)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" <= 0.341422)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" <= 0.364278) AND (t."X_8" > -0.726932) AND (t."X_3" > 1.208468) AND (t."X_0" <= -0.602400)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" <= 0.364278) AND (t."X_8" > -0.726932) AND (t."X_3" > 1.208468) AND (t."X_0" > -0.602400)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" <= 0.364278) AND (t."X_8" > -0.726932) AND (t."X_3" <= 1.208468) AND (t."X_7" > 0.119779)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" <= 0.364278) AND (t."X_8" > -0.726932) AND (t."X_3" <= 1.208468) AND (t."X_7" <= 0.119779) AND (t."X_7" > -0.583898)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" <= 0.364278) AND (t."X_8" > -0.726932) AND (t."X_3" <= 1.208468) AND (t."X_7" <= 0.119779) AND (t."X_7" <= -0.583898) AND (t."X_3" <= 0.655582)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" <= 0.364278) AND (t."X_8" > -0.726932) AND (t."X_3" <= 1.208468) AND (t."X_7" <= 0.119779) AND (t."X_7" <= -0.583898) AND (t."X_3" > 0.655582)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" <= 0.364278) AND (t."X_8" <= -0.726932) AND (t."X_9" <= 0.121358)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" <= 0.364278) AND (t."X_8" <= -0.726932) AND (t."X_9" > 0.121358) AND (t."X_9" <= 0.688856)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" <= 0.364278) AND (t."X_8" <= -0.726932) AND (t."X_9" > 0.121358) AND (t."X_9" > 0.688856)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" > 0.364278) AND (t."X_7" > 1.630572)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" > 0.364278) AND (t."X_7" <= 1.630572) AND (t."X_3" <= 0.584846) AND (t."X_9" <= -0.977169)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" > 0.364278) AND (t."X_7" <= 1.630572) AND (t."X_3" <= 0.584846) AND (t."X_9" > -0.977169) AND (t."X_9" <= 1.019393)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" > 0.364278) AND (t."X_7" <= 1.630572) AND (t."X_3" <= 0.584846) AND (t."X_9" > -0.977169) AND (t."X_9" > 1.019393) AND (t."X_3" <= 0.428114)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" > 0.364278) AND (t."X_7" <= 1.630572) AND (t."X_3" <= 0.584846) AND (t."X_9" > -0.977169) AND (t."X_9" > 1.019393) AND (t."X_3" > 0.428114)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" > 0.364278) AND (t."X_7" <= 1.630572) AND (t."X_3" > 0.584846) AND (t."X_0" > -2.242515)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" > 0.364278) AND (t."X_7" <= 1.630572) AND (t."X_3" > 0.584846) AND (t."X_0" <= -2.242515) AND (t."X_9" <= 0.329528)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" <= -0.378196) AND (t."X_3" > 0.341422) AND (t."X_7" > 0.364278) AND (t."X_7" <= 1.630572) AND (t."X_3" > 0.584846) AND (t."X_0" <= -2.242515) AND (t."X_9" > 0.329528)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" > 0.081047) AND (t."X_0" <= 0.736020) AND (t."X_8" <= 0.273479)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" > 0.081047) AND (t."X_0" > 0.736020) AND (t."X_0" > 2.018176)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" > 0.081047) AND (t."X_0" > 0.736020) AND (t."X_0" <= 2.018176) AND (t."X_7" <= -1.205586)) THEN 87 ELSE NULL END AS "Leaf_87",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" > 0.081047) AND (t."X_0" > 0.736020) AND (t."X_0" <= 2.018176) AND (t."X_7" > -1.205586) AND (t."X_8" <= 2.127195)) THEN 89 ELSE NULL END AS "Leaf_89",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" > 0.081047) AND (t."X_0" > 0.736020) AND (t."X_0" <= 2.018176) AND (t."X_7" > -1.205586) AND (t."X_8" > 2.127195)) THEN 90 ELSE NULL END AS "Leaf_90",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" > 0.081047) AND (t."X_0" <= 0.736020) AND (t."X_8" > 0.273479) AND (t."X_7" > 2.002296)) THEN 92 ELSE NULL END AS "Leaf_92",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" > 0.081047) AND (t."X_0" <= 0.736020) AND (t."X_8" > 0.273479) AND (t."X_7" <= 2.002296) AND (t."X_3" <= 1.215744)) THEN 93 ELSE NULL END AS "Leaf_93",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" > 0.081047) AND (t."X_0" <= 0.736020) AND (t."X_8" > 0.273479) AND (t."X_7" <= 2.002296) AND (t."X_3" > 1.215744) AND (t."X_7" <= -0.312699)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" > 0.081047) AND (t."X_0" <= 0.736020) AND (t."X_8" > 0.273479) AND (t."X_7" <= 2.002296) AND (t."X_3" > 1.215744) AND (t."X_7" > -0.312699)) THEN 96 ELSE NULL END AS "Leaf_96",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" <= 0.081047) AND (t."X_7" <= -0.484216) AND (t."X_7" <= -1.316179) AND (t."X_9" <= -1.276521)) THEN 101 ELSE NULL END AS "Leaf_101",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" <= 0.081047) AND (t."X_7" <= -0.484216) AND (t."X_7" <= -1.316179) AND (t."X_9" > -1.276521)) THEN 102 ELSE NULL END AS "Leaf_102",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" <= 0.081047) AND (t."X_7" <= -0.484216) AND (t."X_7" > -1.316179) AND (t."X_3" > 1.204119) AND (t."X_0" <= -0.250575)) THEN 105 ELSE NULL END AS "Leaf_105",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" <= 0.081047) AND (t."X_7" <= -0.484216) AND (t."X_7" > -1.316179) AND (t."X_3" > 1.204119) AND (t."X_0" > -0.250575) AND (t."X_8" <= -0.084818)) THEN 107 ELSE NULL END AS "Leaf_107",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" <= 0.081047) AND (t."X_7" <= -0.484216) AND (t."X_7" > -1.316179) AND (t."X_3" > 1.204119) AND (t."X_0" > -0.250575) AND (t."X_8" > -0.084818)) THEN 108 ELSE NULL END AS "Leaf_108",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" <= 0.081047) AND (t."X_7" <= -0.484216) AND (t."X_7" > -1.316179) AND (t."X_3" <= 1.204119) AND (t."X_9" <= 1.151131)) THEN 109 ELSE NULL END AS "Leaf_109",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" <= 0.081047) AND (t."X_7" <= -0.484216) AND (t."X_7" > -1.316179) AND (t."X_3" <= 1.204119) AND (t."X_9" > 1.151131)) THEN 110 ELSE NULL END AS "Leaf_110",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" <= 0.081047) AND (t."X_7" > -0.484216) AND (t."X_7" <= 0.335864) AND (t."X_8" <= -1.818427)) THEN 113 ELSE NULL END AS "Leaf_113",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" <= 0.081047) AND (t."X_7" > -0.484216) AND (t."X_7" <= 0.335864) AND (t."X_8" > -1.818427)) THEN 114 ELSE NULL END AS "Leaf_114",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" <= 0.081047) AND (t."X_7" > -0.484216) AND (t."X_7" > 0.335864) AND (t."X_3" > 0.574766) AND (t."X_3" <= 1.039394)) THEN 117 ELSE NULL END AS "Leaf_117",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" <= 0.081047) AND (t."X_7" > -0.484216) AND (t."X_7" > 0.335864) AND (t."X_3" > 0.574766) AND (t."X_3" > 1.039394) AND (t."X_9" <= 0.088992)) THEN 119 ELSE NULL END AS "Leaf_119",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" <= 0.081047) AND (t."X_7" > -0.484216) AND (t."X_7" > 0.335864) AND (t."X_3" > 0.574766) AND (t."X_3" > 1.039394) AND (t."X_9" > 0.088992)) THEN 120 ELSE NULL END AS "Leaf_120",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" <= 0.081047) AND (t."X_7" > -0.484216) AND (t."X_7" > 0.335864) AND (t."X_3" <= 0.574766) AND (t."X_7" > 1.721149)) THEN 122 ELSE NULL END AS "Leaf_122",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" <= 0.081047) AND (t."X_7" > -0.484216) AND (t."X_7" > 0.335864) AND (t."X_3" <= 0.574766) AND (t."X_7" <= 1.721149) AND (t."X_0" > 1.768299)) THEN 124 ELSE NULL END AS "Leaf_124",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" <= 0.081047) AND (t."X_7" > -0.484216) AND (t."X_7" > 0.335864) AND (t."X_3" <= 0.574766) AND (t."X_7" <= 1.721149) AND (t."X_0" <= 1.768299) AND (t."X_9" <= 0.466729)) THEN 125 ELSE NULL END AS "Leaf_125",
      CASE WHEN((t."X_3" > -0.856892) AND (t."X_3" > 0.145284) AND (t."X_0" > -0.378196) AND (t."X_8" <= 0.081047) AND (t."X_7" > -0.484216) AND (t."X_7" > 0.335864) AND (t."X_3" <= 0.574766) AND (t."X_7" <= 1.721149) AND (t."X_0" <= 1.768299) AND (t."X_9" > 0.466729)) THEN 126 ELSE NULL END AS "Leaf_126"
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
    SELECT 0 AS nid,  0.478516 AS "P_0", 0.521484 AS "P_1", 1 AS "D", 0.521484 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.597826 AS "P_0", 0.402174 AS "P_1", 0 AS "D", 0.597826 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.452381 AS "P_0", 0.547619 AS "P_1", 1 AS "D", 0.547619 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.659091 AS "P_0", 0.340909 AS "P_1", 0 AS "D", 0.659091 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.848485 AS "P_0", 0.151515 AS "P_1", 0 AS "D", 0.848485 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.903226 AS "P_0", 0.096774 AS "P_1", 0 AS "D", 0.903226 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.965517 AS "P_0", 0.034483 AS "P_1", 0 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.351190 AS "P_0", 0.648810 AS "P_1", 1 AS "D", 0.648810 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.519841 AS "P_0", 0.480159 AS "P_1", 0 AS "D", 0.519841 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.096774 AS "P_0", 0.903226 AS "P_1", 1 AS "D", 0.903226 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.408759 AS "P_0", 0.591241 AS "P_1", 1 AS "D", 0.591241 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.386364 AS "P_0", 0.613636 AS "P_1", 1 AS "D", 0.613636 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.823529 AS "P_0", 0.176471 AS "P_1", 0 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.675325 AS "P_0", 0.324675 AS "P_1", 0 AS "D", 0.675325 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.451429 AS "P_0", 0.548571 AS "P_1", 1 AS "D", 0.548571 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.603175 AS "P_0", 0.396825 AS "P_1", 0 AS "D", 0.603175 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.387097 AS "P_0", 0.612903 AS "P_1", 1 AS "D", 0.612903 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.523810 AS "P_0", 0.476190 AS "P_1", 0 AS "D", 0.523810 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.838710 AS "P_0", 0.161290 AS "P_1", 0 AS "D", 0.838710 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.920000 AS "P_0", 0.080000 AS "P_1", 0 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.373832 AS "P_0", 0.626168 AS "P_1", 1 AS "D", 0.626168 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.573529 AS "P_0", 0.426471 AS "P_1", 0 AS "D", 0.573529 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.478261 AS "P_0", 0.521739 AS "P_1", 1 AS "D", 0.521739 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.772727 AS "P_0", 0.227273 AS "P_1", 0 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.225806 AS "P_0", 0.774194 AS "P_1", 1 AS "D", 0.774194 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.894737 AS "P_0", 0.105263 AS "P_1", 0 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.172414 AS "P_0", 0.827586 AS "P_1", 1 AS "D", 0.827586 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.080000 AS "P_0", 0.920000 AS "P_1", 1 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.281690 AS "P_0", 0.718310 AS "P_1", 1 AS "D", 0.718310 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.678571 AS "P_0", 0.321429 AS "P_1", 0 AS "D", 0.678571 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.809524 AS "P_0", 0.190476 AS "P_1", 0 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  0.894737 AS "P_0", 0.105263 AS "P_1", 0 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.418605 AS "P_0", 0.581395 AS "P_1", 1 AS "D", 0.581395 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  0.217391 AS "P_0", 0.782609 AS "P_1", 1 AS "D", 0.782609 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  0.650000 AS "P_0", 0.350000 AS "P_1", 0 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_10", t1."Leaf_11", t1."Leaf_15", t1."Leaf_17", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_55", t1."Leaf_57", t1."Leaf_59", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62", t1."Leaf_65", t1."Leaf_67", t1."Leaf_68", t1."Leaf_70", t1."Leaf_71", t1."Leaf_73", t1."Leaf_75", t1."Leaf_77", t1."Leaf_78", t1."Leaf_81", t1."Leaf_82", t1."Leaf_83", t1."Leaf_85", t1."Leaf_86" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" > 1.300158)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" <= -2.273813)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" > 0.925302)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" <= 0.925302) AND (t."X_8" <= -2.958045)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" <= 0.925302) AND (t."X_8" > -2.958045) AND (t."X_5" <= 0.307532) AND (t."X_1" <= -0.708119)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" <= 0.925302) AND (t."X_8" > -2.958045) AND (t."X_5" <= 0.307532) AND (t."X_1" > -0.708119) AND (t."X_9" <= -1.721846)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" <= 0.925302) AND (t."X_8" > -2.958045) AND (t."X_5" <= 0.307532) AND (t."X_1" > -0.708119) AND (t."X_9" > -1.721846) AND (t."X_9" > 1.737354)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" <= 0.925302) AND (t."X_8" > -2.958045) AND (t."X_5" <= 0.307532) AND (t."X_1" > -0.708119) AND (t."X_9" > -1.721846) AND (t."X_9" <= 1.737354) AND (t."X_8" > -0.690976)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" <= 0.925302) AND (t."X_8" > -2.958045) AND (t."X_5" <= 0.307532) AND (t."X_1" > -0.708119) AND (t."X_9" > -1.721846) AND (t."X_9" <= 1.737354) AND (t."X_8" <= -0.690976) AND (t."X_9" <= -0.742758)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" <= 0.925302) AND (t."X_8" > -2.958045) AND (t."X_5" <= 0.307532) AND (t."X_1" > -0.708119) AND (t."X_9" > -1.721846) AND (t."X_9" <= 1.737354) AND (t."X_8" <= -0.690976) AND (t."X_9" > -0.742758)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" <= 0.925302) AND (t."X_8" > -2.958045) AND (t."X_5" > 0.307532) AND (t."X_8" > -0.724326) AND (t."X_1" <= -1.833481)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" <= 0.925302) AND (t."X_8" > -2.958045) AND (t."X_5" > 0.307532) AND (t."X_8" <= -0.724326) AND (t."X_9" <= 1.169523)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" <= 0.925302) AND (t."X_8" > -2.958045) AND (t."X_5" > 0.307532) AND (t."X_8" <= -0.724326) AND (t."X_9" > 1.169523) AND (t."X_1" <= 0.201952)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" <= 0.925302) AND (t."X_8" > -2.958045) AND (t."X_5" > 0.307532) AND (t."X_8" <= -0.724326) AND (t."X_9" > 1.169523) AND (t."X_1" > 0.201952)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" <= 0.925302) AND (t."X_8" > -2.958045) AND (t."X_5" > 0.307532) AND (t."X_8" > -0.724326) AND (t."X_1" > -1.833481) AND (t."X_8" <= -0.703474)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" <= 0.925302) AND (t."X_8" > -2.958045) AND (t."X_5" > 0.307532) AND (t."X_8" > -0.724326) AND (t."X_1" > -1.833481) AND (t."X_8" > -0.703474) AND (t."X_1" > 1.333024) AND (t."X_1" <= 1.800644)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" <= 0.925302) AND (t."X_8" > -2.958045) AND (t."X_5" > 0.307532) AND (t."X_8" > -0.724326) AND (t."X_1" > -1.833481) AND (t."X_8" > -0.703474) AND (t."X_1" > 1.333024) AND (t."X_1" > 1.800644)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" <= 0.925302) AND (t."X_8" > -2.958045) AND (t."X_5" > 0.307532) AND (t."X_8" > -0.724326) AND (t."X_1" > -1.833481) AND (t."X_8" > -0.703474) AND (t."X_1" <= 1.333024) AND (t."X_9" <= -0.055069)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.933632) AND (t."X_7" <= 1.300158) AND (t."X_9" > -2.273813) AND (t."X_5" <= 0.925302) AND (t."X_8" > -2.958045) AND (t."X_5" > 0.307532) AND (t."X_8" > -0.724326) AND (t."X_1" > -1.833481) AND (t."X_8" > -0.703474) AND (t."X_1" <= 1.333024) AND (t."X_9" > -0.055069)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" > 0.933632) AND (t."X_1" > -1.405255)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" > 0.933632) AND (t."X_1" <= -1.405255) AND (t."X_1" <= -1.665823)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" > 0.933632) AND (t."X_1" <= -1.405255) AND (t."X_1" > -1.665823)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" <= -0.895753)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" <= -0.876531)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" > -1.010998) AND (t."X_8" > 0.308819) AND (t."X_8" <= 0.526519) AND (t."X_7" <= -0.178742)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" > -1.010998) AND (t."X_8" > 0.308819) AND (t."X_8" <= 0.526519) AND (t."X_7" > -0.178742) AND (t."X_7" <= 1.103995)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" > -1.010998) AND (t."X_8" > 0.308819) AND (t."X_8" <= 0.526519) AND (t."X_7" > -0.178742) AND (t."X_7" > 1.103995) AND (t."X_5" <= -0.250563)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" > -1.010998) AND (t."X_8" > 0.308819) AND (t."X_8" <= 0.526519) AND (t."X_7" > -0.178742) AND (t."X_7" > 1.103995) AND (t."X_5" > -0.250563)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" > -1.010998) AND (t."X_8" > 0.308819) AND (t."X_8" > 0.526519) AND (t."X_1" <= 1.408582)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" > -1.010998) AND (t."X_8" > 0.308819) AND (t."X_8" > 0.526519) AND (t."X_1" > 1.408582)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" > -1.010998) AND (t."X_8" <= 0.308819) AND (t."X_7" <= 0.335864) AND (t."X_1" <= -1.147342)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" > -1.010998) AND (t."X_8" <= 0.308819) AND (t."X_7" > 0.335864) AND (t."X_5" <= -0.992638)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" > -1.010998) AND (t."X_8" <= 0.308819) AND (t."X_7" > 0.335864) AND (t."X_5" > -0.992638)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" > -1.010998) AND (t."X_8" <= 0.308819) AND (t."X_7" <= 0.335864) AND (t."X_1" > -1.147342) AND (t."X_8" > -0.300992)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" > -1.010998) AND (t."X_8" <= 0.308819) AND (t."X_7" <= 0.335864) AND (t."X_1" > -1.147342) AND (t."X_8" <= -0.300992) AND (t."X_1" <= -0.585150)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" > -1.010998) AND (t."X_8" <= 0.308819) AND (t."X_7" <= 0.335864) AND (t."X_1" > -1.147342) AND (t."X_8" <= -0.300992) AND (t."X_1" > -0.585150) AND (t."X_8" <= -1.483379)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" > -1.010998) AND (t."X_8" <= 0.308819) AND (t."X_7" <= 0.335864) AND (t."X_1" > -1.147342) AND (t."X_8" <= -0.300992) AND (t."X_1" > -0.585150) AND (t."X_8" > -1.483379) AND (t."X_8" <= -0.452415)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" > -1.010998) AND (t."X_8" <= 0.308819) AND (t."X_7" <= 0.335864) AND (t."X_1" > -1.147342) AND (t."X_8" <= -0.300992) AND (t."X_1" > -0.585150) AND (t."X_8" > -1.483379) AND (t."X_8" > -0.452415) AND (t."X_1" <= 0.626543)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" > -1.010998) AND (t."X_8" <= 0.308819) AND (t."X_7" <= 0.335864) AND (t."X_1" > -1.147342) AND (t."X_8" <= -0.300992) AND (t."X_1" > -0.585150) AND (t."X_8" > -1.483379) AND (t."X_8" > -0.452415) AND (t."X_1" > 0.626543)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" <= -1.010998) AND (t."X_8" > 0.922976) AND (t."X_8" <= 0.967328)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" <= -1.010998) AND (t."X_8" > 0.922976) AND (t."X_8" > 0.967328)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" <= -1.010998) AND (t."X_8" <= 0.922976) AND (t."X_5" <= -1.226123)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" <= -1.010998) AND (t."X_8" <= 0.922976) AND (t."X_5" > -1.226123) AND (t."X_9" <= -1.416271)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -0.895753) AND (t."X_7" > -0.876531) AND (t."X_5" <= -1.010998) AND (t."X_8" <= 0.922976) AND (t."X_5" > -1.226123) AND (t."X_9" > -1.416271)) THEN 86 ELSE NULL END AS "Leaf_86"
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
    SELECT 0 AS nid,  0.529297 AS "P_0", 0.470703 AS "P_1", 0 AS "D", 0.529297 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.881919 AS "P_0", 0.118081 AS "P_1", 0 AS "D", 0.881919 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.132780 AS "P_0", 0.867220 AS "P_1", 1 AS "D", 0.867220 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.271028 AS "P_0", 0.728972 AS "P_1", 1 AS "D", 0.728972 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.022388 AS "P_0", 0.977612 AS "P_1", 1 AS "D", 0.977612 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.329545 AS "P_0", 0.670455 AS "P_1", 1 AS "D", 0.670455 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.305882 AS "P_0", 0.694118 AS "P_1", 1 AS "D", 0.694118 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.280488 AS "P_0", 0.719512 AS "P_1", 1 AS "D", 0.719512 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.262500 AS "P_0", 0.737500 AS "P_1", 1 AS "D", 0.737500 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.203125 AS "P_0", 0.796875 AS "P_1", 1 AS "D", 0.796875 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.260870 AS "P_0", 0.739130 AS "P_1", 1 AS "D", 0.739130 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.209302 AS "P_0", 0.790698 AS "P_1", 1 AS "D", 0.790698 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.190476 AS "P_0", 0.809524 AS "P_1", 1 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.135135 AS "P_0", 0.864865 AS "P_1", 1 AS "D", 0.864865 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.312500 AS "P_0", 0.687500 AS "P_1", 1 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.851852 AS "P_0", 0.148148 AS "P_1", 0 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.863850 AS "P_0", 0.136150 AS "P_1", 0 AS "D", 0.863850 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.962264 AS "P_0", 0.037736 AS "P_1", 0 AS "D", 0.962264 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.766355 AS "P_0", 0.233645 AS "P_1", 0 AS "D", 0.766355 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.863636 AS "P_0", 0.136364 AS "P_1", 0 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.609756 AS "P_0", 0.390244 AS "P_1", 0 AS "D", 0.609756 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.347826 AS "P_0", 0.652174 AS "P_1", 1 AS "D", 0.652174 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.210526 AS "P_0", 0.789474 AS "P_1", 1 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.708333 AS "P_0", 0.291667 AS "P_1", 0 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.772727 AS "P_0", 0.227273 AS "P_1", 0 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.988764 AS "P_0", 0.011236 AS "P_1", 0 AS "D", 0.988764 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.823529 AS "P_0", 0.176471 AS "P_1", 0 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.962963 AS "P_0", 0.037037 AS "P_1", 0 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_33", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_53", t1."Leaf_54", t1."Leaf_58", t1."Leaf_60", t1."Leaf_63", t1."Leaf_64", t1."Leaf_66", t1."Leaf_69", t1."Leaf_70", t1."Leaf_71", t1."Leaf_73", t1."Leaf_75", t1."Leaf_76", t1."Leaf_80", t1."Leaf_81", t1."Leaf_82", t1."Leaf_84", t1."Leaf_86", t1."Leaf_87", t1."Leaf_88" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" <= -0.091386) AND (t."X_8" <= -1.373749)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" <= -0.091386) AND (t."X_8" > -1.373749) AND (t."X_9" > 0.886383)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" <= -0.091386) AND (t."X_8" > -1.373749) AND (t."X_9" <= 0.886383) AND (t."X_6" <= -0.097513)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" <= -0.091386) AND (t."X_8" > -1.373749) AND (t."X_9" <= 0.886383) AND (t."X_6" > -0.097513)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" <= -1.663244) AND (t."X_9" <= -0.664407)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" <= -1.663244) AND (t."X_9" > -0.664407)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" <= -0.849050)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" <= -1.009150)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" > -1.215407) AND (t."X_5" <= -1.197159) AND (t."X_8" <= -0.784606)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" > -1.215407) AND (t."X_5" <= -1.197159) AND (t."X_8" > -0.784606)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" <= -1.215407) AND (t."X_7" > -0.865757)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" <= -1.215407) AND (t."X_7" <= -0.865757) AND (t."X_9" <= -0.530970)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" <= -1.215407) AND (t."X_7" <= -0.865757) AND (t."X_9" > -0.530970)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" > -1.215407) AND (t."X_5" > -1.197159) AND (t."X_0" > -1.311117) AND (t."X_9" > 0.946581) AND (t."X_7" <= 0.189234)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" > -1.215407) AND (t."X_5" > -1.197159) AND (t."X_0" > -1.311117) AND (t."X_9" > 0.946581) AND (t."X_7" > 0.189234) AND (t."X_0" <= -0.028738)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" > -1.215407) AND (t."X_5" > -1.197159) AND (t."X_0" > -1.311117) AND (t."X_9" > 0.946581) AND (t."X_7" > 0.189234) AND (t."X_0" > -0.028738) AND (t."X_8" <= -1.663093)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" > -1.215407) AND (t."X_5" > -1.197159) AND (t."X_0" > -1.311117) AND (t."X_9" > 0.946581) AND (t."X_7" > 0.189234) AND (t."X_0" > -0.028738) AND (t."X_8" > -1.663093)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" > -1.215407) AND (t."X_5" > -1.197159) AND (t."X_0" > -1.311117) AND (t."X_9" <= 0.946581) AND (t."X_5" <= -0.855938)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" > -1.215407) AND (t."X_5" > -1.197159) AND (t."X_0" > -1.311117) AND (t."X_9" <= 0.946581) AND (t."X_5" > -0.855938) AND (t."X_6" <= 0.106289) AND (t."X_8" > -0.991264) AND (t."X_6" <= -0.578410)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" > -1.215407) AND (t."X_5" > -1.197159) AND (t."X_0" > -1.311117) AND (t."X_9" <= 0.946581) AND (t."X_5" > -0.855938) AND (t."X_6" <= 0.106289) AND (t."X_8" > -0.991264) AND (t."X_6" > -0.578410)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" > -1.215407) AND (t."X_5" > -1.197159) AND (t."X_0" > -1.311117) AND (t."X_9" <= 0.946581) AND (t."X_5" > -0.855938) AND (t."X_6" <= 0.106289) AND (t."X_8" <= -0.991264) AND (t."X_7" <= -0.399908)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" > -1.215407) AND (t."X_5" > -1.197159) AND (t."X_0" > -1.311117) AND (t."X_9" <= 0.946581) AND (t."X_5" > -0.855938) AND (t."X_6" <= 0.106289) AND (t."X_8" <= -0.991264) AND (t."X_7" > -0.399908)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" > -1.215407) AND (t."X_5" > -1.197159) AND (t."X_0" > -1.311117) AND (t."X_9" <= 0.946581) AND (t."X_5" > -0.855938) AND (t."X_6" > 0.106289) AND (t."X_5" <= -0.216431)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" > -1.215407) AND (t."X_5" > -1.197159) AND (t."X_0" > -1.311117) AND (t."X_9" <= 0.946581) AND (t."X_5" > -0.855938) AND (t."X_6" > 0.106289) AND (t."X_5" > -0.216431)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" > -1.215407) AND (t."X_5" > -1.197159) AND (t."X_0" <= -1.311117) AND (t."X_6" <= 0.478266)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" > -1.215407) AND (t."X_5" > -1.197159) AND (t."X_0" <= -1.311117) AND (t."X_6" > 0.478266) AND (t."X_9" <= 0.103851)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_5" <= 0.086730) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.849050) AND (t."X_7" > -1.009150) AND (t."X_5" > -1.215407) AND (t."X_5" > -1.197159) AND (t."X_0" <= -1.311117) AND (t."X_6" > 0.478266) AND (t."X_9" > 0.103851)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" <= 0.890186) AND (t."X_0" > 1.898787)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" <= 0.890186) AND (t."X_0" <= 1.898787) AND (t."X_5" > 0.883590)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" <= 0.890186) AND (t."X_0" <= 1.898787) AND (t."X_5" <= 0.883590) AND (t."X_8" <= -1.421013) AND (t."X_6" <= 1.123127)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" <= 0.890186) AND (t."X_0" <= 1.898787) AND (t."X_5" <= 0.883590) AND (t."X_8" <= -1.421013) AND (t."X_6" > 1.123127)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" <= 0.890186) AND (t."X_0" <= 1.898787) AND (t."X_5" <= 0.883590) AND (t."X_8" > -1.421013) AND (t."X_9" > -0.332976)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" <= 0.890186) AND (t."X_0" <= 1.898787) AND (t."X_5" <= 0.883590) AND (t."X_8" > -1.421013) AND (t."X_9" <= -0.332976) AND (t."X_0" <= -1.754390) AND (t."X_9" <= -0.945451)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" <= 0.890186) AND (t."X_0" <= 1.898787) AND (t."X_5" <= 0.883590) AND (t."X_8" > -1.421013) AND (t."X_9" <= -0.332976) AND (t."X_0" <= -1.754390) AND (t."X_9" > -0.945451)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" <= 0.890186) AND (t."X_0" <= 1.898787) AND (t."X_5" <= 0.883590) AND (t."X_8" > -1.421013) AND (t."X_9" <= -0.332976) AND (t."X_0" > -1.754390) AND (t."X_6" <= 1.005057)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" <= 0.890186) AND (t."X_0" <= 1.898787) AND (t."X_5" <= 0.883590) AND (t."X_8" > -1.421013) AND (t."X_9" <= -0.332976) AND (t."X_0" > -1.754390) AND (t."X_6" > 1.005057) AND (t."X_8" <= -0.184565)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" <= 0.890186) AND (t."X_0" <= 1.898787) AND (t."X_5" <= 0.883590) AND (t."X_8" > -1.421013) AND (t."X_9" <= -0.332976) AND (t."X_0" > -1.754390) AND (t."X_6" > 1.005057) AND (t."X_8" > -0.184565) AND (t."X_6" <= 1.127237)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" <= 0.890186) AND (t."X_0" <= 1.898787) AND (t."X_5" <= 0.883590) AND (t."X_8" > -1.421013) AND (t."X_9" <= -0.332976) AND (t."X_0" > -1.754390) AND (t."X_6" > 1.005057) AND (t."X_8" > -0.184565) AND (t."X_6" > 1.127237)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" > 0.890186) AND (t."X_7" > 1.547032) AND (t."X_0" > 0.825989)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" > 0.890186) AND (t."X_7" > 1.547032) AND (t."X_0" <= 0.825989) AND (t."X_9" <= 0.828767)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" > 0.890186) AND (t."X_7" > 1.547032) AND (t."X_0" <= 0.825989) AND (t."X_9" > 0.828767)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" > 0.890186) AND (t."X_7" <= 1.547032) AND (t."X_9" > -0.827468)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" > 0.890186) AND (t."X_7" <= 1.547032) AND (t."X_9" <= -0.827468) AND (t."X_6" > 0.480907)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" > 0.890186) AND (t."X_7" <= 1.547032) AND (t."X_9" <= -0.827468) AND (t."X_6" <= 0.480907) AND (t."X_9" <= -0.846831)) THEN 87 ELSE NULL END AS "Leaf_87",
      CASE WHEN((t."X_5" > 0.086730) AND (t."X_6" > -0.091386) AND (t."X_5" > 0.890186) AND (t."X_7" <= 1.547032) AND (t."X_9" <= -0.827468) AND (t."X_6" <= 0.480907) AND (t."X_9" > -0.846831)) THEN 88 ELSE NULL END AS "Leaf_88"
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
    SELECT 0 AS nid,  0.490234 AS "P_0", 0.509766 AS "P_1", 1 AS "D", 0.509766 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.843636 AS "P_0", 0.156364 AS "P_1", 0 AS "D", 0.843636 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.080169 AS "P_0", 0.919831 AS "P_1", 1 AS "D", 0.919831 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.315789 AS "P_0", 0.684211 AS "P_1", 1 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.059633 AS "P_0", 0.940367 AS "P_1", 1 AS "D", 0.940367 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.851852 AS "P_0", 0.148148 AS "P_1", 0 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.753086 AS "P_0", 0.246914 AS "P_1", 0 AS "D", 0.753086 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.724138 AS "P_0", 0.275862 AS "P_1", 0 AS "D", 0.724138 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.945946 AS "P_0", 0.054054 AS "P_1", 0 AS "D", 0.945946 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.648148 AS "P_0", 0.351852 AS "P_1", 0 AS "D", 0.648148 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.711340 AS "P_0", 0.288660 AS "P_1", 0 AS "D", 0.711340 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.635135 AS "P_0", 0.364865 AS "P_1", 0 AS "D", 0.635135 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.706897 AS "P_0", 0.293103 AS "P_1", 0 AS "D", 0.706897 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.622222 AS "P_0", 0.377778 AS "P_1", 0 AS "D", 0.622222 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.483871 AS "P_0", 0.516129 AS "P_1", 1 AS "D", 0.516129 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.130435 AS "P_0", 0.869565 AS "P_1", 1 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.026846 AS "P_0", 0.973154 AS "P_1", 1 AS "D", 0.973154 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.104478 AS "P_0", 0.895522 AS "P_1", 1 AS "D", 0.895522 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.065574 AS "P_0", 0.934426 AS "P_1", 1 AS "D", 0.934426 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.086957 AS "P_0", 0.913043 AS "P_1", 1 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.014085 AS "P_0", 0.985915 AS "P_1", 1 AS "D", 0.985915 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_31", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_53", t1."Leaf_54", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_61", t1."Leaf_62", t1."Leaf_63", t1."Leaf_65", t1."Leaf_67", t1."Leaf_68", t1."Leaf_70", t1."Leaf_72", t1."Leaf_74", t1."Leaf_76", t1."Leaf_80", t1."Leaf_81", t1."Leaf_82", t1."Leaf_86", t1."Leaf_88", t1."Leaf_89", t1."Leaf_90", t1."Leaf_94", t1."Leaf_99", t1."Leaf_100", t1."Leaf_101", t1."Leaf_103", t1."Leaf_104", t1."Leaf_105", t1."Leaf_108", t1."Leaf_109", t1."Leaf_110", t1."Leaf_111", t1."Leaf_113", t1."Leaf_116", t1."Leaf_117", t1."Leaf_118", t1."Leaf_119", t1."Leaf_121", t1."Leaf_122" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" > 0.361611) AND (t."X_6" <= -0.156738) AND (t."X_7" <= -0.156270)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" > 0.361611) AND (t."X_6" <= -0.156738) AND (t."X_7" > -0.156270)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" > 0.361611) AND (t."X_6" > -0.156738) AND (t."X_0" > 0.885855) AND (t."X_7" <= -0.030015)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" > 0.361611) AND (t."X_6" > -0.156738) AND (t."X_0" > 0.885855) AND (t."X_7" > -0.030015)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" > 0.480907) AND (t."X_0" <= -1.906466) AND (t."X_9" <= 0.418886)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" > 0.480907) AND (t."X_0" <= -1.906466) AND (t."X_9" > 0.418886)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" > -0.029782) AND (t."X_6" <= 0.068913)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" > -0.029782) AND (t."X_6" > 0.068913) AND (t."X_8" > 0.255879)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" > -0.029782) AND (t."X_6" > 0.068913) AND (t."X_8" <= 0.255879) AND (t."X_0" <= -0.217477)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" > -0.029782) AND (t."X_6" > 0.068913) AND (t."X_8" <= 0.255879) AND (t."X_0" > -0.217477)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" > -1.435607) AND (t."X_6" <= 0.110709) AND (t."X_8" <= -2.067045)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" > -1.435607) AND (t."X_6" > 0.110709) AND (t."X_6" <= 0.321961) AND (t."X_6" <= 0.134822) AND (t."X_7" <= 1.628153)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" > -1.435607) AND (t."X_6" > 0.110709) AND (t."X_6" <= 0.321961) AND (t."X_6" <= 0.134822) AND (t."X_7" > 1.628153)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" > -1.435607) AND (t."X_6" > 0.110709) AND (t."X_6" <= 0.321961) AND (t."X_6" > 0.134822) AND (t."X_8" > -0.107998)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" > -1.435607) AND (t."X_6" > 0.110709) AND (t."X_6" <= 0.321961) AND (t."X_6" > 0.134822) AND (t."X_8" <= -0.107998) AND (t."X_0" <= 1.641145)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" > -1.435607) AND (t."X_6" > 0.110709) AND (t."X_6" <= 0.321961) AND (t."X_6" > 0.134822) AND (t."X_8" <= -0.107998) AND (t."X_0" > 1.641145)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" <= -1.435607) AND (t."X_7" > 0.437439)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" <= -1.435607) AND (t."X_7" <= 0.437439) AND (t."X_9" <= -2.166052)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" <= -1.435607) AND (t."X_7" <= 0.437439) AND (t."X_9" > -2.166052)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" > -1.435607) AND (t."X_6" > 0.110709) AND (t."X_6" > 0.321961) AND (t."X_9" <= -0.152985) AND (t."X_0" <= -0.683599)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" > -1.435607) AND (t."X_6" > 0.110709) AND (t."X_6" > 0.321961) AND (t."X_9" <= -0.152985) AND (t."X_0" > -0.683599)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" > -1.435607) AND (t."X_6" > 0.110709) AND (t."X_6" > 0.321961) AND (t."X_9" > -0.152985) AND (t."X_7" <= 1.247711)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" > -1.435607) AND (t."X_6" > 0.110709) AND (t."X_6" > 0.321961) AND (t."X_9" > -0.152985) AND (t."X_7" > 1.247711) AND (t."X_0" <= 0.223958)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" > -1.435607) AND (t."X_6" > 0.110709) AND (t."X_6" > 0.321961) AND (t."X_9" > -0.152985) AND (t."X_7" > 1.247711) AND (t."X_0" > 0.223958)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" > 2.253667) AND (t."X_0" <= 0.259913)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" > 2.253667) AND (t."X_0" > 0.259913)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" > 0.361611) AND (t."X_6" > -0.156738) AND (t."X_0" <= 0.885855) AND (t."X_7" <= 1.116289)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" > 0.361611) AND (t."X_6" > -0.156738) AND (t."X_0" <= 0.885855) AND (t."X_7" > 1.116289) AND (t."X_9" <= -0.013906)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" > 0.361611) AND (t."X_6" > -0.156738) AND (t."X_0" <= 0.885855) AND (t."X_7" > 1.116289) AND (t."X_9" > -0.013906)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" > -1.435607) AND (t."X_6" <= 0.110709) AND (t."X_8" > -2.067045) AND (t."X_8" <= -0.313007)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" > -1.435607) AND (t."X_6" <= 0.110709) AND (t."X_8" > -2.067045) AND (t."X_8" > -0.313007) AND (t."X_0" <= -0.838242)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" > -1.435607) AND (t."X_6" <= 0.110709) AND (t."X_8" > -2.067045) AND (t."X_8" > -0.313007) AND (t."X_0" > -0.838242) AND (t."X_7" <= -0.666400)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" <= 0.480907) AND (t."X_8" <= 0.361611) AND (t."X_8" <= -0.029782) AND (t."X_9" > -1.435607) AND (t."X_6" <= 0.110709) AND (t."X_8" > -2.067045) AND (t."X_8" > -0.313007) AND (t."X_0" > -0.838242) AND (t."X_7" > -0.666400)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" > 0.480907) AND (t."X_0" > -1.906466) AND (t."X_6" > 1.221745)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" > 0.480907) AND (t."X_0" > -1.906466) AND (t."X_6" <= 1.221745) AND (t."X_6" > 1.206899)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" > 0.480907) AND (t."X_0" > -1.906466) AND (t."X_6" <= 1.221745) AND (t."X_6" <= 1.206899) AND (t."X_9" > 1.208971)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" > 0.480907) AND (t."X_0" > -1.906466) AND (t."X_6" <= 1.221745) AND (t."X_6" <= 1.206899) AND (t."X_9" <= 1.208971) AND (t."X_0" > 2.131684)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" > 0.480907) AND (t."X_0" > -1.906466) AND (t."X_6" <= 1.221745) AND (t."X_6" <= 1.206899) AND (t."X_9" <= 1.208971) AND (t."X_0" <= 2.131684) AND (t."X_9" > 0.913255) AND (t."X_8" > -0.310444)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" > 0.480907) AND (t."X_0" > -1.906466) AND (t."X_6" <= 1.221745) AND (t."X_6" <= 1.206899) AND (t."X_9" <= 1.208971) AND (t."X_0" <= 2.131684) AND (t."X_9" > 0.913255) AND (t."X_8" <= -0.310444) AND (t."X_0" <= 0.212479)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" > 0.480907) AND (t."X_0" > -1.906466) AND (t."X_6" <= 1.221745) AND (t."X_6" <= 1.206899) AND (t."X_9" <= 1.208971) AND (t."X_0" <= 2.131684) AND (t."X_9" > 0.913255) AND (t."X_8" <= -0.310444) AND (t."X_0" > 0.212479)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" > 0.480907) AND (t."X_0" > -1.906466) AND (t."X_6" <= 1.221745) AND (t."X_6" <= 1.206899) AND (t."X_9" <= 1.208971) AND (t."X_0" <= 2.131684) AND (t."X_9" <= 0.913255) AND (t."X_6" <= 0.639427) AND (t."X_8" > 0.953528)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" > 0.480907) AND (t."X_0" > -1.906466) AND (t."X_6" <= 1.221745) AND (t."X_6" <= 1.206899) AND (t."X_9" <= 1.208971) AND (t."X_0" <= 2.131684) AND (t."X_9" <= 0.913255) AND (t."X_6" <= 0.639427) AND (t."X_8" <= 0.953528) AND (t."X_7" > -0.053037)) THEN 88 ELSE NULL END AS "Leaf_88",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" > 0.480907) AND (t."X_0" > -1.906466) AND (t."X_6" <= 1.221745) AND (t."X_6" <= 1.206899) AND (t."X_9" <= 1.208971) AND (t."X_0" <= 2.131684) AND (t."X_9" <= 0.913255) AND (t."X_6" <= 0.639427) AND (t."X_8" <= 0.953528) AND (t."X_7" <= -0.053037) AND (t."X_0" <= -0.754747)) THEN 89 ELSE NULL END AS "Leaf_89",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" > 0.480907) AND (t."X_0" > -1.906466) AND (t."X_6" <= 1.221745) AND (t."X_6" <= 1.206899) AND (t."X_9" <= 1.208971) AND (t."X_0" <= 2.131684) AND (t."X_9" <= 0.913255) AND (t."X_6" <= 0.639427) AND (t."X_8" <= 0.953528) AND (t."X_7" <= -0.053037) AND (t."X_0" > -0.754747)) THEN 90 ELSE NULL END AS "Leaf_90",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" <= 2.253667) AND (t."X_8" <= -0.197304) AND (t."X_8" > -0.229911)) THEN 94 ELSE NULL END AS "Leaf_94",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" <= 2.253667) AND (t."X_8" <= -0.197304) AND (t."X_8" <= -0.229911) AND (t."X_9" > 0.488770) AND (t."X_9" <= 0.694957) AND (t."X_6" <= -0.629046)) THEN 99 ELSE NULL END AS "Leaf_99",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" <= 2.253667) AND (t."X_8" <= -0.197304) AND (t."X_8" <= -0.229911) AND (t."X_9" > 0.488770) AND (t."X_9" <= 0.694957) AND (t."X_6" > -0.629046)) THEN 100 ELSE NULL END AS "Leaf_100",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" <= 2.253667) AND (t."X_8" <= -0.197304) AND (t."X_8" <= -0.229911) AND (t."X_9" > 0.488770) AND (t."X_9" > 0.694957) AND (t."X_7" <= 1.457550)) THEN 101 ELSE NULL END AS "Leaf_101",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" <= 2.253667) AND (t."X_8" <= -0.197304) AND (t."X_8" <= -0.229911) AND (t."X_9" > 0.488770) AND (t."X_9" > 0.694957) AND (t."X_7" > 1.457550) AND (t."X_0" <= 1.677778)) THEN 103 ELSE NULL END AS "Leaf_103",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" <= 2.253667) AND (t."X_8" <= -0.197304) AND (t."X_8" <= -0.229911) AND (t."X_9" > 0.488770) AND (t."X_9" > 0.694957) AND (t."X_7" > 1.457550) AND (t."X_0" > 1.677778)) THEN 104 ELSE NULL END AS "Leaf_104",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" <= 2.253667) AND (t."X_8" <= -0.197304) AND (t."X_8" <= -0.229911) AND (t."X_9" <= 0.488770) AND (t."X_6" <= -0.484567)) THEN 105 ELSE NULL END AS "Leaf_105",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" <= 2.253667) AND (t."X_8" <= -0.197304) AND (t."X_8" <= -0.229911) AND (t."X_9" <= 0.488770) AND (t."X_6" > -0.484567) AND (t."X_9" > -0.347749)) THEN 108 ELSE NULL END AS "Leaf_108",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" <= 2.253667) AND (t."X_8" <= -0.197304) AND (t."X_8" <= -0.229911) AND (t."X_9" <= 0.488770) AND (t."X_6" > -0.484567) AND (t."X_9" <= -0.347749) AND (t."X_0" <= 0.394890)) THEN 109 ELSE NULL END AS "Leaf_109",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" <= 2.253667) AND (t."X_8" <= -0.197304) AND (t."X_8" <= -0.229911) AND (t."X_9" <= 0.488770) AND (t."X_6" > -0.484567) AND (t."X_9" <= -0.347749) AND (t."X_0" > 0.394890)) THEN 110 ELSE NULL END AS "Leaf_110",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" <= 2.253667) AND (t."X_8" > -0.197304) AND (t."X_6" <= -0.532711)) THEN 111 ELSE NULL END AS "Leaf_111",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" <= 2.253667) AND (t."X_8" > -0.197304) AND (t."X_6" > -0.532711) AND (t."X_9" <= -1.687195)) THEN 113 ELSE NULL END AS "Leaf_113",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" <= 2.253667) AND (t."X_8" > -0.197304) AND (t."X_6" > -0.532711) AND (t."X_9" > -1.687195) AND (t."X_6" > -0.458976)) THEN 116 ELSE NULL END AS "Leaf_116",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" <= 2.253667) AND (t."X_8" > -0.197304) AND (t."X_6" > -0.532711) AND (t."X_9" > -1.687195) AND (t."X_6" <= -0.458976) AND (t."X_7" <= 0.015877)) THEN 117 ELSE NULL END AS "Leaf_117",
      CASE WHEN((t."X_6" <= -0.310059) AND (t."X_9" <= 2.253667) AND (t."X_8" > -0.197304) AND (t."X_6" > -0.532711) AND (t."X_9" > -1.687195) AND (t."X_6" <= -0.458976) AND (t."X_7" > 0.015877)) THEN 118 ELSE NULL END AS "Leaf_118",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" > 0.480907) AND (t."X_0" > -1.906466) AND (t."X_6" <= 1.221745) AND (t."X_6" <= 1.206899) AND (t."X_9" <= 1.208971) AND (t."X_0" <= 2.131684) AND (t."X_9" <= 0.913255) AND (t."X_6" > 0.639427) AND (t."X_6" <= 1.005272)) THEN 119 ELSE NULL END AS "Leaf_119",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" > 0.480907) AND (t."X_0" > -1.906466) AND (t."X_6" <= 1.221745) AND (t."X_6" <= 1.206899) AND (t."X_9" <= 1.208971) AND (t."X_0" <= 2.131684) AND (t."X_9" <= 0.913255) AND (t."X_6" > 0.639427) AND (t."X_6" > 1.005272) AND (t."X_6" <= 1.023051)) THEN 121 ELSE NULL END AS "Leaf_121",
      CASE WHEN((t."X_6" > -0.310059) AND (t."X_6" > 0.480907) AND (t."X_0" > -1.906466) AND (t."X_6" <= 1.221745) AND (t."X_6" <= 1.206899) AND (t."X_9" <= 1.208971) AND (t."X_0" <= 2.131684) AND (t."X_9" <= 0.913255) AND (t."X_6" > 0.639427) AND (t."X_6" > 1.005272) AND (t."X_6" > 1.023051)) THEN 122 ELSE NULL END AS "Leaf_122"
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
    SELECT 0 AS nid,  0.490234 AS "P_0", 0.509766 AS "P_1", 1 AS "D", 0.509766 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.925714 AS "P_0", 0.074286 AS "P_1", 0 AS "D", 0.925714 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.264095 AS "P_0", 0.735905 AS "P_1", 1 AS "D", 0.735905 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.465839 AS "P_0", 0.534162 AS "P_1", 1 AS "D", 0.534162 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.079545 AS "P_0", 0.920455 AS "P_1", 1 AS "D", 0.920455 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.546219 AS "P_0", 0.453782 AS "P_1", 0 AS "D", 0.546219 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.238095 AS "P_0", 0.761905 AS "P_1", 1 AS "D", 0.761905 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.121212 AS "P_0", 0.878788 AS "P_1", 1 AS "D", 0.878788 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.035714 AS "P_0", 0.964286 AS "P_1", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.058480 AS "P_0", 0.941520 AS "P_1", 1 AS "D", 0.941520 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.477273 AS "P_0", 0.522727 AS "P_1", 1 AS "D", 0.522727 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.741935 AS "P_0", 0.258065 AS "P_1", 0 AS "D", 0.741935 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.415584 AS "P_0", 0.584416 AS "P_1", 1 AS "D", 0.584416 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.162791 AS "P_0", 0.837209 AS "P_1", 1 AS "D", 0.837209 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.735294 AS "P_0", 0.264706 AS "P_1", 0 AS "D", 0.735294 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.533333 AS "P_0", 0.466667 AS "P_1", 0 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.894737 AS "P_0", 0.105263 AS "P_1", 0 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.941520 AS "P_0", 0.058480 AS "P_1", 0 AS "D", 0.941520 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.113636 AS "P_0", 0.886364 AS "P_1", 1 AS "D", 0.886364 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.093023 AS "P_0", 0.906977 AS "P_1", 1 AS "D", 0.906977 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.104478 AS "P_0", 0.895522 AS "P_1", 1 AS "D", 0.895522 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.051724 AS "P_0", 0.948276 AS "P_1", 1 AS "D", 0.948276 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.022222 AS "P_0", 0.977778 AS "P_1", 1 AS "D", 0.977778 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.884058 AS "P_0", 0.115942 AS "P_1", 0 AS "D", 0.884058 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.980392 AS "P_0", 0.019608 AS "P_1", 0 AS "D", 0.980392 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.910448 AS "P_0", 0.089552 AS "P_1", 0 AS "D", 0.910448 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.975610 AS "P_0", 0.024390 AS "P_1", 0 AS "D", 0.975610 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.807692 AS "P_0", 0.192308 AS "P_1", 0 AS "D", 0.807692 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_47", t1."Leaf_48", t1."Leaf_55", t1."Leaf_56", t1."Leaf_59", t1."Leaf_60", t1."Leaf_61", t1."Leaf_63", t1."Leaf_66", t1."Leaf_67", t1."Leaf_68", t1."Leaf_70", t1."Leaf_71", t1."Leaf_73", t1."Leaf_75", t1."Leaf_76", t1."Leaf_78", t1."Leaf_79", t1."Leaf_80", t1."Leaf_82", t1."Leaf_85", t1."Leaf_86", t1."Leaf_87", t1."Leaf_91", t1."Leaf_92", t1."Leaf_93", t1."Leaf_95", t1."Leaf_96", t1."Leaf_98", t1."Leaf_99", t1."Leaf_100", t1."Leaf_105", t1."Leaf_106", t1."Leaf_107", t1."Leaf_109", t1."Leaf_110", t1."Leaf_111", t1."Leaf_113", t1."Leaf_114", t1."Leaf_115", t1."Leaf_117", t1."Leaf_118" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" > 0.262742) AND (t."X_9" > -1.705698)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" > 0.262742) AND (t."X_9" <= -1.705698) AND (t."X_9" <= -2.247323)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" > 0.262742) AND (t."X_9" <= -1.705698) AND (t."X_9" > -2.247323)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" <= -0.991022) AND (t."X_2" > -0.194597) AND (t."X_8" <= -2.167241)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" <= -0.991022) AND (t."X_2" > -0.194597) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.036510)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" <= -0.991022) AND (t."X_2" > -0.194597) AND (t."X_8" > -2.167241) AND (t."X_2" > 0.036510)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" <= -0.991022) AND (t."X_2" <= -0.194597) AND (t."X_9" > 1.151131)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" <= -0.991022) AND (t."X_2" <= -0.194597) AND (t."X_9" <= 1.151131) AND (t."X_7" <= -0.083201) AND (t."X_2" <= -0.351292)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" <= -0.991022) AND (t."X_2" <= -0.194597) AND (t."X_9" <= 1.151131) AND (t."X_7" <= -0.083201) AND (t."X_2" > -0.351292)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" <= -0.991022) AND (t."X_2" <= -0.194597) AND (t."X_9" <= 1.151131) AND (t."X_7" > -0.083201) AND (t."X_9" <= 0.311297)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" <= -0.991022) AND (t."X_2" <= -0.194597) AND (t."X_9" <= 1.151131) AND (t."X_7" > -0.083201) AND (t."X_9" > 0.311297)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" > -0.991022) AND (t."X_7" <= -0.703710) AND (t."X_0" <= 0.013168)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" > -0.991022) AND (t."X_7" <= -0.703710) AND (t."X_0" > 0.013168) AND (t."X_2" <= 0.096313)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" > -0.991022) AND (t."X_7" <= -0.703710) AND (t."X_0" > 0.013168) AND (t."X_2" > 0.096313)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" > 1.379348) AND (t."X_8" > 1.167810) AND (t."X_8" <= 1.759555)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" > 1.379348) AND (t."X_8" > 1.167810) AND (t."X_8" > 1.759555)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" > 1.379348) AND (t."X_8" <= 1.167810) AND (t."X_2" <= 0.826353)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" > 1.379348) AND (t."X_8" <= 1.167810) AND (t."X_2" > 0.826353)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" <= -1.528853) AND (t."X_8" <= -0.227070)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" <= -1.528853) AND (t."X_8" > -0.227070)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" <= -0.077358) AND (t."X_8" <= 0.287514) AND (t."X_2" > -0.137190) AND (t."X_0" <= 0.925950)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" <= -0.077358) AND (t."X_8" <= 0.287514) AND (t."X_2" > -0.137190) AND (t."X_0" > 0.925950)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" <= -0.077358) AND (t."X_8" > 0.287514) AND (t."X_0" <= -1.576337) AND (t."X_9" <= 0.664083)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" <= -0.077358) AND (t."X_8" > 0.287514) AND (t."X_0" <= -1.576337) AND (t."X_9" > 0.664083)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" <= -0.077358) AND (t."X_8" > 0.287514) AND (t."X_0" > -1.576337) AND (t."X_2" <= -0.413919)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" <= -0.077358) AND (t."X_8" > 0.287514) AND (t."X_0" > -1.576337) AND (t."X_2" > -0.413919) AND (t."X_9" <= 0.240925)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" <= -0.077358) AND (t."X_8" > 0.287514) AND (t."X_0" > -1.576337) AND (t."X_2" > -0.413919) AND (t."X_9" > 0.240925) AND (t."X_8" > 1.692968)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" <= -0.077358) AND (t."X_8" > 0.287514) AND (t."X_0" > -1.576337) AND (t."X_2" > -0.413919) AND (t."X_9" > 0.240925) AND (t."X_8" <= 1.692968) AND (t."X_2" <= -0.187714)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" <= -0.077358) AND (t."X_8" > 0.287514) AND (t."X_0" > -1.576337) AND (t."X_2" > -0.413919) AND (t."X_9" > 0.240925) AND (t."X_8" <= 1.692968) AND (t."X_2" > -0.187714)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" <= -0.077358) AND (t."X_8" <= 0.287514) AND (t."X_2" <= -0.137190) AND (t."X_8" > -0.117869)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" <= -0.077358) AND (t."X_8" <= 0.287514) AND (t."X_2" <= -0.137190) AND (t."X_8" <= -0.117869) AND (t."X_2" <= -0.303077)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" <= -0.077358) AND (t."X_8" <= 0.287514) AND (t."X_2" <= -0.137190) AND (t."X_8" <= -0.117869) AND (t."X_2" > -0.303077) AND (t."X_9" <= 0.363005)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" <= -0.077358) AND (t."X_8" <= 0.287514) AND (t."X_2" <= -0.137190) AND (t."X_8" <= -0.117869) AND (t."X_2" > -0.303077) AND (t."X_9" > 0.363005) AND (t."X_8" <= -0.165512)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" <= -0.077358) AND (t."X_8" <= 0.287514) AND (t."X_2" <= -0.137190) AND (t."X_8" <= -0.117869) AND (t."X_2" > -0.303077) AND (t."X_9" > 0.363005) AND (t."X_8" > -0.165512)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" > 0.770357) AND (t."X_0" > -1.421968)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" > 0.770357) AND (t."X_0" <= -1.421968) AND (t."X_9" <= -0.593715)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" > 0.770357) AND (t."X_0" <= -1.421968) AND (t."X_9" > -0.593715)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" > -0.077358) AND (t."X_0" > 0.624146)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" > -0.077358) AND (t."X_0" <= 0.624146) AND (t."X_0" > 0.075646) AND (t."X_2" <= 0.494426)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" > -0.077358) AND (t."X_0" <= 0.624146) AND (t."X_0" > 0.075646) AND (t."X_2" > 0.494426)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" > -0.077358) AND (t."X_0" <= 0.624146) AND (t."X_0" <= 0.075646) AND (t."X_2" <= -0.029570)) THEN 87 ELSE NULL END AS "Leaf_87",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" > -0.077358) AND (t."X_0" <= 0.624146) AND (t."X_0" <= 0.075646) AND (t."X_2" > -0.029570) AND (t."X_7" <= -0.533860) AND (t."X_8" <= 0.191196)) THEN 91 ELSE NULL END AS "Leaf_91",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" > -0.077358) AND (t."X_0" <= 0.624146) AND (t."X_0" <= 0.075646) AND (t."X_2" > -0.029570) AND (t."X_7" <= -0.533860) AND (t."X_8" > 0.191196)) THEN 92 ELSE NULL END AS "Leaf_92",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" > -0.077358) AND (t."X_0" <= 0.624146) AND (t."X_0" <= 0.075646) AND (t."X_2" > -0.029570) AND (t."X_7" > -0.533860) AND (t."X_7" <= 0.630760)) THEN 93 ELSE NULL END AS "Leaf_93",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" > -0.077358) AND (t."X_0" <= 0.624146) AND (t."X_0" <= 0.075646) AND (t."X_2" > -0.029570) AND (t."X_7" > -0.533860) AND (t."X_7" > 0.630760) AND (t."X_8" <= 0.531070)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" <= 0.900746) AND (t."X_9" <= 1.379348) AND (t."X_9" > -1.528853) AND (t."X_2" > -0.077358) AND (t."X_0" <= 0.624146) AND (t."X_0" <= 0.075646) AND (t."X_2" > -0.029570) AND (t."X_7" > -0.533860) AND (t."X_7" > 0.630760) AND (t."X_8" > 0.531070)) THEN 96 ELSE NULL END AS "Leaf_96",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" > 0.900746) AND (t."X_2" > 1.081429)) THEN 98 ELSE NULL END AS "Leaf_98",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" > 0.900746) AND (t."X_2" <= 1.081429) AND (t."X_2" <= 1.064291)) THEN 99 ELSE NULL END AS "Leaf_99",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" > -0.288704) AND (t."X_2" > 0.900746) AND (t."X_2" <= 1.081429) AND (t."X_2" > 1.064291)) THEN 100 ELSE NULL END AS "Leaf_100",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" > -0.991022) AND (t."X_7" > -0.703710) AND (t."X_2" > -0.065261) AND (t."X_7" <= -0.036779) AND (t."X_8" <= -0.371646)) THEN 105 ELSE NULL END AS "Leaf_105",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" > -0.991022) AND (t."X_7" > -0.703710) AND (t."X_2" > -0.065261) AND (t."X_7" <= -0.036779) AND (t."X_8" > -0.371646)) THEN 106 ELSE NULL END AS "Leaf_106",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" > -0.991022) AND (t."X_7" > -0.703710) AND (t."X_2" > -0.065261) AND (t."X_7" > -0.036779) AND (t."X_9" <= 0.604754)) THEN 107 ELSE NULL END AS "Leaf_107",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" > -0.991022) AND (t."X_7" > -0.703710) AND (t."X_2" > -0.065261) AND (t."X_7" > -0.036779) AND (t."X_9" > 0.604754) AND (t."X_9" <= 0.978106)) THEN 109 ELSE NULL END AS "Leaf_109",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" > -0.991022) AND (t."X_7" > -0.703710) AND (t."X_2" > -0.065261) AND (t."X_7" > -0.036779) AND (t."X_9" > 0.604754) AND (t."X_9" > 0.978106)) THEN 110 ELSE NULL END AS "Leaf_110",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" > -0.991022) AND (t."X_7" > -0.703710) AND (t."X_2" <= -0.065261) AND (t."X_0" <= 0.823289)) THEN 111 ELSE NULL END AS "Leaf_111",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" > -0.991022) AND (t."X_7" > -0.703710) AND (t."X_2" <= -0.065261) AND (t."X_0" > 0.823289) AND (t."X_8" <= -0.976734)) THEN 113 ELSE NULL END AS "Leaf_113",
      CASE WHEN((t."X_2" > -0.496450) AND (t."X_8" <= -0.288704) AND (t."X_2" <= 0.770357) AND (t."X_2" <= 0.262742) AND (t."X_8" > -0.991022) AND (t."X_7" > -0.703710) AND (t."X_2" <= -0.065261) AND (t."X_0" > 0.823289) AND (t."X_8" > -0.976734)) THEN 114 ELSE NULL END AS "Leaf_114",
      CASE WHEN((t."X_2" <= -0.496450) AND (t."X_2" <= -0.532534)) THEN 115 ELSE NULL END AS "Leaf_115",
      CASE WHEN((t."X_2" <= -0.496450) AND (t."X_2" > -0.532534) AND (t."X_2" <= -0.527094)) THEN 117 ELSE NULL END AS "Leaf_117",
      CASE WHEN((t."X_2" <= -0.496450) AND (t."X_2" > -0.532534) AND (t."X_2" > -0.527094)) THEN 118 ELSE NULL END AS "Leaf_118"
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
    SELECT 0 AS nid,  0.544922 AS "P_0", 0.455078 AS "P_1", 0 AS "D", 0.544922 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.992063 AS "P_0", 0.007937 AS "P_1", 0 AS "D", 0.992063 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.398964 AS "P_0", 0.601036 AS "P_1", 1 AS "D", 0.601036 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.290909 AS "P_0", 0.709091 AS "P_1", 1 AS "D", 0.709091 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.479638 AS "P_0", 0.520362 AS "P_1", 1 AS "D", 0.520362 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.622755 AS "P_0", 0.377246 AS "P_1", 0 AS "D", 0.622755 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.037037 AS "P_0", 0.962963 AS "P_1", 1 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.403509 AS "P_0", 0.596491 AS "P_1", 1 AS "D", 0.596491 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.039216 AS "P_0", 0.960784 AS "P_1", 1 AS "D", 0.960784 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.282609 AS "P_0", 0.717391 AS "P_1", 1 AS "D", 0.717391 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.457143 AS "P_0", 0.542857 AS "P_1", 1 AS "D", 0.542857 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.175439 AS "P_0", 0.824561 AS "P_1", 1 AS "D", 0.824561 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.619048 AS "P_0", 0.380952 AS "P_1", 0 AS "D", 0.619048 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.722222 AS "P_0", 0.277778 AS "P_1", 0 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.466667 AS "P_0", 0.533333 AS "P_1", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.695652 AS "P_0", 0.304348 AS "P_1", 0 AS "D", 0.695652 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.536232 AS "P_0", 0.463768 AS "P_1", 0 AS "D", 0.536232 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.855072 AS "P_0", 0.144928 AS "P_1", 0 AS "D", 0.855072 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.722222 AS "P_0", 0.277778 AS "P_1", 0 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.892857 AS "P_0", 0.107143 AS "P_1", 0 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.192308 AS "P_0", 0.807692 AS "P_1", 1 AS "D", 0.807692 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.868421 AS "P_0", 0.131579 AS "P_1", 0 AS "D", 0.868421 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.891892 AS "P_0", 0.108108 AS "P_1", 0 AS "D", 0.891892 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.914286 AS "P_0", 0.085714 AS "P_1", 0 AS "D", 0.914286 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.823529 AS "P_0", 0.176471 AS "P_1", 0 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.032258 AS "P_0", 0.967742 AS "P_1", 1 AS "D", 0.967742 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_8", t1."Leaf_10", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_36", t1."Leaf_39", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_48", t1."Leaf_49", t1."Leaf_52", t1."Leaf_53", t1."Leaf_54", t1."Leaf_61", t1."Leaf_62", t1."Leaf_63", t1."Leaf_64", t1."Leaf_65", t1."Leaf_67", t1."Leaf_68", t1."Leaf_70", t1."Leaf_73", t1."Leaf_74", t1."Leaf_76", t1."Leaf_78", t1."Leaf_80", t1."Leaf_82", t1."Leaf_84", t1."Leaf_85", t1."Leaf_86", t1."Leaf_87", t1."Leaf_88" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= -0.532534)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > 0.962134) AND (t."X_9" > 2.689792)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > 0.962134) AND (t."X_9" <= 2.689792) AND (t."X_2" > 0.828467)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > 0.962134) AND (t."X_9" <= 2.689792) AND (t."X_2" <= 0.828467) AND (t."X_8" > -0.118768) AND (t."X_8" <= 0.285563)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > 0.962134) AND (t."X_9" <= 2.689792) AND (t."X_2" <= 0.828467) AND (t."X_8" <= -0.118768) AND (t."X_2" <= 0.768547)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > 0.962134) AND (t."X_9" <= 2.689792) AND (t."X_2" <= 0.828467) AND (t."X_8" <= -0.118768) AND (t."X_2" > 0.768547)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > 0.962134) AND (t."X_9" <= 2.689792) AND (t."X_2" <= 0.828467) AND (t."X_8" > -0.118768) AND (t."X_8" > 0.285563) AND (t."X_0" <= -0.313467)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > 0.962134) AND (t."X_9" <= 2.689792) AND (t."X_2" <= 0.828467) AND (t."X_8" > -0.118768) AND (t."X_8" > 0.285563) AND (t."X_0" > -0.313467) AND (t."X_9" <= 1.809469)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > 0.962134) AND (t."X_9" <= 2.689792) AND (t."X_2" <= 0.828467) AND (t."X_8" > -0.118768) AND (t."X_8" > 0.285563) AND (t."X_0" > -0.313467) AND (t."X_9" > 1.809469)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" > 0.355551) AND (t."X_9" > 0.246280)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" > 0.355551) AND (t."X_9" <= 0.246280) AND (t."X_2" <= 0.411508)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" > 0.355551) AND (t."X_9" <= 0.246280) AND (t."X_2" > 0.411508) AND (t."X_7" <= -0.009767)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" > 0.355551) AND (t."X_9" <= 0.246280) AND (t."X_2" > 0.411508) AND (t."X_7" > -0.009767) AND (t."X_9" <= -1.275621)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" > 0.355551) AND (t."X_9" <= 0.246280) AND (t."X_2" > 0.411508) AND (t."X_7" > -0.009767) AND (t."X_9" > -1.275621) AND (t."X_9" <= 0.013728)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" > 0.355551) AND (t."X_9" <= 0.246280) AND (t."X_2" > 0.411508) AND (t."X_7" > -0.009767) AND (t."X_9" > -1.275621) AND (t."X_9" > 0.013728)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" > 0.805114)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" > 1.655946)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" > 1.370512) AND (t."X_7" <= 1.419356)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" > 1.370512) AND (t."X_7" > 1.419356) AND (t."X_9" > -0.500660)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" > 1.370512) AND (t."X_7" > 1.419356) AND (t."X_9" <= -0.500660) AND (t."X_7" <= 1.603734)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" > 1.370512) AND (t."X_7" > 1.419356) AND (t."X_9" <= -0.500660) AND (t."X_7" > 1.603734)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" <= -0.294748) AND (t."X_0" > 0.912490)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" <= -0.294748) AND (t."X_0" <= 0.912490) AND (t."X_9" <= -1.544382)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" <= -0.294748) AND (t."X_0" <= 0.912490) AND (t."X_9" > -1.544382) AND (t."X_7" > 1.288572)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" <= -0.294748) AND (t."X_0" <= 0.912490) AND (t."X_9" > -1.544382) AND (t."X_7" <= 1.288572) AND (t."X_9" <= 0.064197)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" <= -0.294748) AND (t."X_0" <= 0.912490) AND (t."X_9" > -1.544382) AND (t."X_7" <= 1.288572) AND (t."X_9" > 0.064197)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" > -0.294748) AND (t."X_8" > -0.332084) AND (t."X_2" > -0.116228) AND (t."X_2" > 0.282102) AND (t."X_0" <= -0.508795)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" > -0.294748) AND (t."X_8" > -0.332084) AND (t."X_2" > -0.116228) AND (t."X_2" > 0.282102) AND (t."X_0" > -0.508795)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" > -0.294748) AND (t."X_8" > -0.332084) AND (t."X_2" > -0.116228) AND (t."X_2" <= 0.282102) AND (t."X_8" <= 1.396125)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" > -0.294748) AND (t."X_8" > -0.332084) AND (t."X_2" > -0.116228) AND (t."X_2" <= 0.282102) AND (t."X_8" > 1.396125)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" > -0.294748) AND (t."X_8" > -0.332084) AND (t."X_2" <= -0.116228) AND (t."X_9" <= -0.942809)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" > -0.294748) AND (t."X_8" > -0.332084) AND (t."X_2" <= -0.116228) AND (t."X_9" > -0.942809) AND (t."X_7" <= 0.028837)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" > -0.294748) AND (t."X_8" > -0.332084) AND (t."X_2" <= -0.116228) AND (t."X_9" > -0.942809) AND (t."X_7" > 0.028837)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" > -0.294748) AND (t."X_8" <= -0.332084) AND (t."X_9" > 0.662446)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" > -0.294748) AND (t."X_8" <= -0.332084) AND (t."X_9" <= 0.662446) AND (t."X_0" <= -1.118104) AND (t."X_9" <= -0.350283)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" > -0.294748) AND (t."X_8" <= -0.332084) AND (t."X_9" <= 0.662446) AND (t."X_0" <= -1.118104) AND (t."X_9" > -0.350283)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" > 0.848324) AND (t."X_9" > -0.646307)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" > 0.848324) AND (t."X_9" <= -0.646307) AND (t."X_9" > -0.653138)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" > 0.848324) AND (t."X_9" <= -0.646307) AND (t."X_9" <= -0.653138) AND (t."X_9" > -0.886137)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" > 0.848324) AND (t."X_9" <= -0.646307) AND (t."X_9" <= -0.653138) AND (t."X_9" <= -0.886137) AND (t."X_9" > -0.920468)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" > 0.848324) AND (t."X_9" <= -0.646307) AND (t."X_9" <= -0.653138) AND (t."X_9" <= -0.886137) AND (t."X_9" <= -0.920468) AND (t."X_9" > -1.553157)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" > 0.848324) AND (t."X_9" <= -0.646307) AND (t."X_9" <= -0.653138) AND (t."X_9" <= -0.886137) AND (t."X_9" <= -0.920468) AND (t."X_9" <= -1.553157) AND (t."X_9" <= -1.569034)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" > 0.848324) AND (t."X_9" <= -0.646307) AND (t."X_9" <= -0.653138) AND (t."X_9" <= -0.886137) AND (t."X_9" <= -0.920468) AND (t."X_9" <= -1.553157) AND (t."X_9" > -1.569034)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" > -0.294748) AND (t."X_8" <= -0.332084) AND (t."X_9" <= 0.662446) AND (t."X_0" > -1.118104) AND (t."X_0" <= 0.187986)) THEN 87 ELSE NULL END AS "Leaf_87",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= 0.962134) AND (t."X_2" <= 0.848324) AND (t."X_2" <= 0.355551) AND (t."X_9" <= 0.805114) AND (t."X_0" <= 1.655946) AND (t."X_7" <= 1.370512) AND (t."X_2" > -0.294748) AND (t."X_8" <= -0.332084) AND (t."X_9" <= 0.662446) AND (t."X_0" > -1.118104) AND (t."X_0" > 0.187986)) THEN 88 ELSE NULL END AS "Leaf_88"
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
    SELECT 0 AS nid,  0.501953 AS "P_0", 0.498047 AS "P_1", 0 AS "D", 0.501953 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.354430 AS "P_0", 0.645570 AS "P_1", 1 AS "D", 0.645570 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.386431 AS "P_0", 0.613569 AS "P_1", 1 AS "D", 0.613569 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.160714 AS "P_0", 0.839286 AS "P_1", 1 AS "D", 0.839286 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.508065 AS "P_0", 0.491935 AS "P_1", 0 AS "D", 0.508065 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.054945 AS "P_0", 0.945055 AS "P_1", 1 AS "D", 0.945055 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.145455 AS "P_0", 0.854545 AS "P_1", 1 AS "D", 0.854545 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.235294 AS "P_0", 0.764706 AS "P_1", 1 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.388889 AS "P_0", 0.611111 AS "P_1", 1 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.465438 AS "P_0", 0.534562 AS "P_1", 1 AS "D", 0.534562 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.806452 AS "P_0", 0.193548 AS "P_1", 0 AS "D", 0.806452 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.439614 AS "P_0", 0.560386 AS "P_1", 1 AS "D", 0.560386 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.417085 AS "P_0", 0.582915 AS "P_1", 1 AS "D", 0.582915 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.379310 AS "P_0", 0.620690 AS "P_1", 1 AS "D", 0.620690 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.680000 AS "P_0", 0.320000 AS "P_1", 0 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.529412 AS "P_0", 0.470588 AS "P_1", 0 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.692308 AS "P_0", 0.307692 AS "P_1", 0 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.605263 AS "P_0", 0.394737 AS "P_1", 0 AS "D", 0.605263 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.316176 AS "P_0", 0.683824 AS "P_1", 1 AS "D", 0.683824 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.676471 AS "P_0", 0.323529 AS "P_1", 0 AS "D", 0.676471 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.718750 AS "P_0", 0.281250 AS "P_1", 0 AS "D", 0.718750 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.793103 AS "P_0", 0.206897 AS "P_1", 0 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.904762 AS "P_0", 0.095238 AS "P_1", 0 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.140000 AS "P_0", 0.860000 AS "P_1", 1 AS "D", 0.860000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.418605 AS "P_0", 0.581395 AS "P_1", 1 AS "D", 0.581395 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.216216 AS "P_0", 0.783784 AS "P_1", 1 AS "D", 0.783784 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.692308 AS "P_0", 0.307692 AS "P_1", 0 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.466667 AS "P_0", 0.533333 AS "P_1", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.122449 AS "P_0", 0.877551 AS "P_1", 1 AS "D", 0.877551 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.051282 AS "P_0", 0.948718 AS "P_1", 1 AS "D", 0.948718 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.172414 AS "P_0", 0.827586 AS "P_1", 1 AS "D", 0.827586 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.187500 AS "P_0", 0.812500 AS "P_1", 1 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_64", t1."Leaf_67", t1."Leaf_69", t1."Leaf_70", t1."Leaf_72", t1."Leaf_73", t1."Leaf_74", t1."Leaf_77", t1."Leaf_81", t1."Leaf_82", t1."Leaf_83", t1."Leaf_85", t1."Leaf_86", t1."Leaf_90", t1."Leaf_91", t1."Leaf_93", t1."Leaf_94", t1."Leaf_96", t1."Leaf_97", t1."Leaf_98", t1."Leaf_105", t1."Leaf_106", t1."Leaf_107", t1."Leaf_108", t1."Leaf_111", t1."Leaf_113", t1."Leaf_114", t1."Leaf_115", t1."Leaf_116", t1."Leaf_117", t1."Leaf_119", t1."Leaf_120", t1."Leaf_121", t1."Leaf_123", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_9" > 0.965035) AND (t."X_8" > 0.058823) AND (t."X_0" <= -0.558535) AND (t."X_8" <= 0.253913)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_9" > 0.965035) AND (t."X_8" > 0.058823) AND (t."X_0" <= -0.558535) AND (t."X_8" > 0.253913)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_9" > 0.965035) AND (t."X_8" > 0.058823) AND (t."X_0" > -0.558535) AND (t."X_8" > 1.007935)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_9" > 0.965035) AND (t."X_8" > 0.058823) AND (t."X_0" > -0.558535) AND (t."X_8" <= 1.007935) AND (t."X_7" <= 0.161334)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_9" > 0.965035) AND (t."X_8" > 0.058823) AND (t."X_0" > -0.558535) AND (t."X_8" <= 1.007935) AND (t."X_7" > 0.161334)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_9" > 0.965035) AND (t."X_8" <= 0.058823) AND (t."X_7" > 0.381317) AND (t."X_7" <= 0.642248)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_9" > 0.965035) AND (t."X_8" <= 0.058823) AND (t."X_7" > 0.381317) AND (t."X_7" > 0.642248) AND (t."X_0" <= -1.667110)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_9" > 0.965035) AND (t."X_8" <= 0.058823) AND (t."X_7" <= 0.381317) AND (t."X_0" <= 2.136571)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_9" > 0.965035) AND (t."X_8" <= 0.058823) AND (t."X_7" <= 0.381317) AND (t."X_0" > 2.136571)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_9" > 0.965035) AND (t."X_8" <= 0.058823) AND (t."X_7" > 0.381317) AND (t."X_7" > 0.642248) AND (t."X_0" > -1.667110) AND (t."X_8" > -0.872248)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_9" > 0.965035) AND (t."X_8" <= 0.058823) AND (t."X_7" > 0.381317) AND (t."X_7" > 0.642248) AND (t."X_0" > -1.667110) AND (t."X_8" <= -0.872248) AND (t."X_9" <= 1.630999)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_9" > 0.965035) AND (t."X_8" <= 0.058823) AND (t."X_7" > 0.381317) AND (t."X_7" > 0.642248) AND (t."X_0" > -1.667110) AND (t."X_8" <= -0.872248) AND (t."X_9" > 1.630999)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" <= -1.574465) AND (t."X_9" <= -1.230879)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" <= -1.574465) AND (t."X_9" > -1.230879) AND (t."X_7" <= -2.637025)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" <= -1.574465) AND (t."X_9" > -1.230879) AND (t."X_7" > -2.637025)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" <= -1.373156) AND (t."X_0" > -0.339811) AND (t."X_7" > 0.388387) AND (t."X_8" <= -1.484793)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" <= -1.373156) AND (t."X_0" > -0.339811) AND (t."X_7" > 0.388387) AND (t."X_8" > -1.484793)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" <= -1.373156) AND (t."X_0" <= -0.339811) AND (t."X_0" <= -1.794543)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" <= -1.373156) AND (t."X_0" <= -0.339811) AND (t."X_0" > -1.794543)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" <= -1.373156) AND (t."X_0" > -0.339811) AND (t."X_7" <= 0.388387) AND (t."X_8" > -2.129153)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" <= -1.373156) AND (t."X_0" > -0.339811) AND (t."X_7" <= 0.388387) AND (t."X_8" <= -2.129153) AND (t."X_9" <= 0.031832)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" <= -1.373156) AND (t."X_0" > -0.339811) AND (t."X_7" <= 0.388387) AND (t."X_8" <= -2.129153) AND (t."X_9" > 0.031832)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" <= -1.116934) AND (t."X_9" > -1.124147)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" <= -1.116934) AND (t."X_9" <= -1.124147) AND (t."X_9" <= -1.979614)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" <= -1.116934) AND (t."X_9" <= -1.124147) AND (t."X_9" > -1.979614)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" <= -0.953134) AND (t."X_8" > -0.671800)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" <= -0.953134) AND (t."X_8" <= -0.671800) AND (t."X_9" <= -0.873640)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" <= -0.953134) AND (t."X_8" <= -0.671800) AND (t."X_9" > -0.873640)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" > 0.421556) AND (t."X_8" > 0.212553) AND (t."X_0" > 1.213637)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" > 0.421556) AND (t."X_8" > 0.212553) AND (t."X_0" <= 1.213637) AND (t."X_8" > 0.608557) AND (t."X_9" <= 0.459110)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" > 0.421556) AND (t."X_8" > 0.212553) AND (t."X_0" <= 1.213637) AND (t."X_8" > 0.608557) AND (t."X_9" > 0.459110) AND (t."X_9" <= 0.860584)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" > 0.421556) AND (t."X_8" > 0.212553) AND (t."X_0" <= 1.213637) AND (t."X_8" > 0.608557) AND (t."X_9" > 0.459110) AND (t."X_9" > 0.860584)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" > 0.421556) AND (t."X_8" > 0.212553) AND (t."X_0" <= 1.213637) AND (t."X_8" <= 0.608557) AND (t."X_9" > 0.576567)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" > 0.421556) AND (t."X_8" > 0.212553) AND (t."X_0" <= 1.213637) AND (t."X_8" <= 0.608557) AND (t."X_9" <= 0.576567) AND (t."X_9" <= 0.497681)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" > 0.421556) AND (t."X_8" > 0.212553) AND (t."X_0" <= 1.213637) AND (t."X_8" <= 0.608557) AND (t."X_9" <= 0.576567) AND (t."X_9" > 0.497681)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" <= -0.232850) AND (t."X_9" <= -1.496520) AND (t."X_9" <= -2.653227)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" <= -0.232850) AND (t."X_9" <= -1.496520) AND (t."X_9" > -2.653227) AND (t."X_8" > 1.038620) AND (t."X_9" <= -2.009156)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" <= -0.232850) AND (t."X_9" <= -1.496520) AND (t."X_9" > -2.653227) AND (t."X_8" > 1.038620) AND (t."X_9" > -2.009156)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" <= -0.232850) AND (t."X_9" <= -1.496520) AND (t."X_9" > -2.653227) AND (t."X_8" <= 1.038620) AND (t."X_9" <= -1.574048)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" <= -0.232850) AND (t."X_9" <= -1.496520) AND (t."X_9" > -2.653227) AND (t."X_8" <= 1.038620) AND (t."X_9" > -1.574048) AND (t."X_8" <= 0.354251)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" <= -0.232850) AND (t."X_9" <= -1.496520) AND (t."X_9" > -2.653227) AND (t."X_8" <= 1.038620) AND (t."X_9" > -1.574048) AND (t."X_8" > 0.354251)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" > 0.421556) AND (t."X_8" <= 0.212553) AND (t."X_9" > 0.587807) AND (t."X_9" > 0.743314)) THEN 90 ELSE NULL END AS "Leaf_90",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" > 0.421556) AND (t."X_8" <= 0.212553) AND (t."X_9" > 0.587807) AND (t."X_9" <= 0.743314) AND (t."X_0" <= -1.132273)) THEN 91 ELSE NULL END AS "Leaf_91",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" > 0.421556) AND (t."X_8" <= 0.212553) AND (t."X_9" > 0.587807) AND (t."X_9" <= 0.743314) AND (t."X_0" > -1.132273) AND (t."X_9" <= 0.644441)) THEN 93 ELSE NULL END AS "Leaf_93",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" > 0.421556) AND (t."X_8" <= 0.212553) AND (t."X_9" > 0.587807) AND (t."X_9" <= 0.743314) AND (t."X_0" > -1.132273) AND (t."X_9" > 0.644441)) THEN 94 ELSE NULL END AS "Leaf_94",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" > 0.421556) AND (t."X_8" <= 0.212553) AND (t."X_9" <= 0.587807) AND (t."X_8" > -0.878245)) THEN 96 ELSE NULL END AS "Leaf_96",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" > 0.421556) AND (t."X_8" <= 0.212553) AND (t."X_9" <= 0.587807) AND (t."X_8" <= -0.878245) AND (t."X_9" <= 0.476153)) THEN 97 ELSE NULL END AS "Leaf_97",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" > 0.421556) AND (t."X_8" <= 0.212553) AND (t."X_9" <= 0.587807) AND (t."X_8" <= -0.878245) AND (t."X_9" > 0.476153)) THEN 98 ELSE NULL END AS "Leaf_98",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" <= 0.421556) AND (t."X_7" <= 0.932978) AND (t."X_0" > 0.621341) AND (t."X_9" > 0.165564) AND (t."X_9" <= 0.318999)) THEN 105 ELSE NULL END AS "Leaf_105",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" <= 0.421556) AND (t."X_7" <= 0.932978) AND (t."X_0" > 0.621341) AND (t."X_9" > 0.165564) AND (t."X_9" > 0.318999)) THEN 106 ELSE NULL END AS "Leaf_106",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" <= 0.421556) AND (t."X_7" <= 0.932978) AND (t."X_0" > 0.621341) AND (t."X_9" <= 0.165564) AND (t."X_8" <= -0.656598)) THEN 107 ELSE NULL END AS "Leaf_107",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" <= 0.421556) AND (t."X_7" <= 0.932978) AND (t."X_0" > 0.621341) AND (t."X_9" <= 0.165564) AND (t."X_8" > -0.656598)) THEN 108 ELSE NULL END AS "Leaf_108",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" <= 0.421556) AND (t."X_7" <= 0.932978) AND (t."X_0" <= 0.621341) AND (t."X_8" > 0.451760) AND (t."X_7" <= -0.283089)) THEN 111 ELSE NULL END AS "Leaf_111",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" <= 0.421556) AND (t."X_7" <= 0.932978) AND (t."X_0" <= 0.621341) AND (t."X_8" > 0.451760) AND (t."X_7" > -0.283089) AND (t."X_8" <= 1.405710)) THEN 113 ELSE NULL END AS "Leaf_113",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" <= 0.421556) AND (t."X_7" <= 0.932978) AND (t."X_0" <= 0.621341) AND (t."X_8" > 0.451760) AND (t."X_7" > -0.283089) AND (t."X_8" > 1.405710)) THEN 114 ELSE NULL END AS "Leaf_114",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" <= 0.421556) AND (t."X_7" > 0.932978) AND (t."X_8" <= -1.081976)) THEN 115 ELSE NULL END AS "Leaf_115",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" <= 0.421556) AND (t."X_7" > 0.932978) AND (t."X_8" > -1.081976)) THEN 116 ELSE NULL END AS "Leaf_116",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" <= 0.421556) AND (t."X_7" <= 0.932978) AND (t."X_0" <= 0.621341) AND (t."X_8" <= 0.451760) AND (t."X_0" <= -0.901112)) THEN 117 ELSE NULL END AS "Leaf_117",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" <= 0.421556) AND (t."X_7" <= 0.932978) AND (t."X_0" <= 0.621341) AND (t."X_8" <= 0.451760) AND (t."X_0" > -0.901112) AND (t."X_0" <= -0.135083)) THEN 119 ELSE NULL END AS "Leaf_119",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" > -0.232850) AND (t."X_9" <= 0.421556) AND (t."X_7" <= 0.932978) AND (t."X_0" <= 0.621341) AND (t."X_8" <= 0.451760) AND (t."X_0" > -0.901112) AND (t."X_0" > -0.135083)) THEN 120 ELSE NULL END AS "Leaf_120",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" <= -0.232850) AND (t."X_9" > -1.496520) AND (t."X_9" <= -1.199286)) THEN 121 ELSE NULL END AS "Leaf_121",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" <= -0.232850) AND (t."X_9" > -1.496520) AND (t."X_9" > -1.199286) AND (t."X_9" <= -1.192188)) THEN 123 ELSE NULL END AS "Leaf_123",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" <= -0.232850) AND (t."X_9" > -1.496520) AND (t."X_9" > -1.199286) AND (t."X_9" > -1.192188) AND (t."X_0" <= -0.851590)) THEN 125 ELSE NULL END AS "Leaf_125",
      CASE WHEN((t."X_9" <= 0.965035) AND (t."X_7" > -1.574465) AND (t."X_8" > -1.373156) AND (t."X_7" > -1.116934) AND (t."X_7" > -0.953134) AND (t."X_9" <= -0.232850) AND (t."X_9" > -1.496520) AND (t."X_9" > -1.199286) AND (t."X_9" > -1.192188) AND (t."X_0" > -0.851590)) THEN 126 ELSE NULL END AS "Leaf_126"
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
    SELECT 0 AS nid,  0.488281 AS "P_0", 0.511719 AS "P_1", 1 AS "D", 0.511719 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.520179 AS "P_0", 0.479821 AS "P_1", 0 AS "D", 0.520179 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.139535 AS "P_0", 0.860465 AS "P_1", 1 AS "D", 0.860465 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.521739 AS "P_0", 0.478261 AS "P_1", 0 AS "D", 0.521739 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.733333 AS "P_0", 0.266667 AS "P_1", 0 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.037037 AS "P_0", 0.962963 AS "P_1", 1 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.312500 AS "P_0", 0.687500 AS "P_1", 1 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.160000 AS "P_0", 0.840000 AS "P_1", 1 AS "D", 0.840000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.541568 AS "P_0", 0.458432 AS "P_1", 0 AS "D", 0.541568 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.086957 AS "P_0", 0.913043 AS "P_1", 1 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.297297 AS "P_0", 0.702703 AS "P_1", 1 AS "D", 0.702703 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.565104 AS "P_0", 0.434896 AS "P_1", 0 AS "D", 0.565104 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.870968 AS "P_0", 0.129032 AS "P_1", 0 AS "D", 0.870968 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.538244 AS "P_0", 0.461756 AS "P_1", 0 AS "D", 0.538244 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.961538 AS "P_0", 0.038462 AS "P_1", 0 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.554252 AS "P_0", 0.445748 AS "P_1", 0 AS "D", 0.554252 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.644578 AS "P_0", 0.355422 AS "P_1", 0 AS "D", 0.644578 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.468571 AS "P_0", 0.531429 AS "P_1", 1 AS "D", 0.531429 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.342857 AS "P_0", 0.657143 AS "P_1", 1 AS "D", 0.657143 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.657143 AS "P_0", 0.342857 AS "P_1", 0 AS "D", 0.657143 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.772727 AS "P_0", 0.227273 AS "P_1", 0 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.461538 AS "P_0", 0.538462 AS "P_1", 1 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.371429 AS "P_0", 0.628571 AS "P_1", 1 AS "D", 0.628571 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.717557 AS "P_0", 0.282443 AS "P_1", 0 AS "D", 0.717557 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.136364 AS "P_0", 0.863636 AS "P_1", 1 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.409639 AS "P_0", 0.590361 AS "P_1", 1 AS "D", 0.590361 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.278689 AS "P_0", 0.721311 AS "P_1", 1 AS "D", 0.721311 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.772727 AS "P_0", 0.227273 AS "P_1", 0 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  0.170213 AS "P_0", 0.829787 AS "P_1", 1 AS "D", 0.829787 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  0.047619 AS "P_0", 0.952381 AS "P_1", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  0.466667 AS "P_0", 0.533333 AS "P_1", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  0.691589 AS "P_0", 0.308411 AS "P_1", 0 AS "D", 0.691589 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  0.968750 AS "P_0", 0.031250 AS "P_1", 0 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  0.573333 AS "P_0", 0.426667 AS "P_1", 0 AS "D", 0.573333 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44", t1."Leaf_52", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_59", t1."Leaf_60", t1."Leaf_63", t1."Leaf_64", t1."Leaf_67", t1."Leaf_68", t1."Leaf_69", t1."Leaf_71", t1."Leaf_72", t1."Leaf_75", t1."Leaf_76", t1."Leaf_77", t1."Leaf_79", t1."Leaf_80", t1."Leaf_82", t1."Leaf_84", t1."Leaf_85", t1."Leaf_86" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" <= -1.223871)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" > 0.958948) AND (t."X_4" > 1.138244)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" > 0.958948) AND (t."X_4" <= 1.138244) AND (t."X_8" > 1.689484)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" <= 0.958948) AND (t."X_4" > 1.019700)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" <= 0.958948) AND (t."X_4" <= 1.019700) AND (t."X_4" > 0.889325)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" <= 0.958948) AND (t."X_4" <= 1.019700) AND (t."X_4" <= 0.889325) AND (t."X_7" <= -0.337649) AND (t."X_4" > 0.377905)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" <= 0.958948) AND (t."X_4" <= 1.019700) AND (t."X_4" <= 0.889325) AND (t."X_7" <= -0.337649) AND (t."X_4" <= 0.377905) AND (t."X_5" <= -0.405430)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" <= 0.958948) AND (t."X_4" <= 1.019700) AND (t."X_4" <= 0.889325) AND (t."X_7" <= -0.337649) AND (t."X_4" <= 0.377905) AND (t."X_5" > -0.405430) AND (t."X_8" <= -0.947724)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" <= 0.958948) AND (t."X_4" <= 1.019700) AND (t."X_4" <= 0.889325) AND (t."X_7" <= -0.337649) AND (t."X_4" <= 0.377905) AND (t."X_5" > -0.405430) AND (t."X_8" > -0.947724)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" <= 0.958948) AND (t."X_4" <= 1.019700) AND (t."X_4" <= 0.889325) AND (t."X_7" > -0.337649) AND (t."X_4" <= 0.202938) AND (t."X_9" <= -0.938407)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" <= 0.958948) AND (t."X_4" <= 1.019700) AND (t."X_4" <= 0.889325) AND (t."X_7" > -0.337649) AND (t."X_4" <= 0.202938) AND (t."X_9" > -0.938407) AND (t."X_5" > 0.032772)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" <= 0.958948) AND (t."X_4" <= 1.019700) AND (t."X_4" <= 0.889325) AND (t."X_7" > -0.337649) AND (t."X_4" <= 0.202938) AND (t."X_9" > -0.938407) AND (t."X_5" <= 0.032772) AND (t."X_9" > 0.580156)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" <= 0.958948) AND (t."X_4" <= 1.019700) AND (t."X_4" <= 0.889325) AND (t."X_7" > -0.337649) AND (t."X_4" <= 0.202938) AND (t."X_9" > -0.938407) AND (t."X_5" <= 0.032772) AND (t."X_9" <= 0.580156) AND (t."X_8" <= -1.078738)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" <= 0.958948) AND (t."X_4" <= 1.019700) AND (t."X_4" <= 0.889325) AND (t."X_7" > -0.337649) AND (t."X_4" <= 0.202938) AND (t."X_9" > -0.938407) AND (t."X_5" <= 0.032772) AND (t."X_9" <= 0.580156) AND (t."X_8" > -1.078738)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" <= 0.958948) AND (t."X_4" <= 1.019700) AND (t."X_4" <= 0.889325) AND (t."X_7" > -0.337649) AND (t."X_4" > 0.202938) AND (t."X_9" <= -1.639198)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" > 0.958948) AND (t."X_4" <= 1.138244) AND (t."X_8" <= 1.689484) AND (t."X_7" > -0.364722)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" > 0.958948) AND (t."X_4" <= 1.138244) AND (t."X_8" <= 1.689484) AND (t."X_7" <= -0.364722) AND (t."X_4" <= 0.393434)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" > 0.958948) AND (t."X_4" <= 1.138244) AND (t."X_8" <= 1.689484) AND (t."X_7" <= -0.364722) AND (t."X_4" > 0.393434)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" <= 0.958948) AND (t."X_4" <= 1.019700) AND (t."X_4" <= 0.889325) AND (t."X_7" > -0.337649) AND (t."X_4" > 0.202938) AND (t."X_9" > -1.639198) AND (t."X_7" <= 1.400445)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" <= 0.958948) AND (t."X_4" <= 1.019700) AND (t."X_4" <= 0.889325) AND (t."X_7" > -0.337649) AND (t."X_4" > 0.202938) AND (t."X_9" > -1.639198) AND (t."X_7" > 1.400445) AND (t."X_7" <= 1.575096)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" > -0.493605) AND (t."X_5" > -1.223871) AND (t."X_9" <= 0.958948) AND (t."X_4" <= 1.019700) AND (t."X_4" <= 0.889325) AND (t."X_7" > -0.337649) AND (t."X_4" > 0.202938) AND (t."X_9" > -1.639198) AND (t."X_7" > 1.400445) AND (t."X_7" > 1.575096)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" <= 0.937248) AND (t."X_8" > -0.102975) AND (t."X_8" <= 0.292727) AND (t."X_4" > 0.976138)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" <= 0.937248) AND (t."X_8" > -0.102975) AND (t."X_8" <= 0.292727) AND (t."X_4" <= 0.976138) AND (t."X_4" > -1.177500)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" <= 0.937248) AND (t."X_8" > -0.102975) AND (t."X_8" <= 0.292727) AND (t."X_4" <= 0.976138) AND (t."X_4" <= -1.177500) AND (t."X_4" <= -1.269944)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" <= 0.937248) AND (t."X_8" > -0.102975) AND (t."X_8" <= 0.292727) AND (t."X_4" <= 0.976138) AND (t."X_4" <= -1.177500) AND (t."X_4" > -1.269944)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" <= 0.937248) AND (t."X_8" > -0.102975) AND (t."X_8" > 0.292727) AND (t."X_7" <= 0.923263)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" <= 0.937248) AND (t."X_8" > -0.102975) AND (t."X_8" > 0.292727) AND (t."X_7" > 0.923263) AND (t."X_9" <= -0.229057)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" <= 0.937248) AND (t."X_8" > -0.102975) AND (t."X_8" > 0.292727) AND (t."X_7" > 0.923263) AND (t."X_9" > -0.229057)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" <= 0.937248) AND (t."X_8" <= -0.102975) AND (t."X_8" <= -1.495399) AND (t."X_8" <= -1.499134)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" <= 0.937248) AND (t."X_8" <= -0.102975) AND (t."X_8" <= -1.495399) AND (t."X_8" > -1.499134)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" > 0.937248) AND (t."X_7" > 1.578180) AND (t."X_4" <= -0.897974)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" > 0.937248) AND (t."X_7" > 1.578180) AND (t."X_4" > -0.897974)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" <= -0.493605) AND (t."X_7" <= 1.343194)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" <= -0.493605) AND (t."X_7" > 1.343194) AND (t."X_4" <= -0.765733)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_5" <= 0.328341) AND (t."X_4" <= -0.493605) AND (t."X_7" > 1.343194) AND (t."X_4" > -0.765733)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" > 0.937248) AND (t."X_7" <= 1.578180) AND (t."X_9" <= -0.827468) AND (t."X_9" <= -0.846831)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" > 0.937248) AND (t."X_7" <= 1.578180) AND (t."X_9" <= -0.827468) AND (t."X_9" > -0.846831)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" <= 0.937248) AND (t."X_8" <= -0.102975) AND (t."X_8" > -1.495399) AND (t."X_5" <= 0.738105)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" <= 0.937248) AND (t."X_8" <= -0.102975) AND (t."X_8" > -1.495399) AND (t."X_5" > 0.738105) AND (t."X_5" <= 0.752949)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" <= 0.937248) AND (t."X_8" <= -0.102975) AND (t."X_8" > -1.495399) AND (t."X_5" > 0.738105) AND (t."X_5" > 0.752949)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" > 0.937248) AND (t."X_7" <= 1.578180) AND (t."X_9" > -0.827468) AND (t."X_4" > -1.378958)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" > 0.937248) AND (t."X_7" <= 1.578180) AND (t."X_9" > -0.827468) AND (t."X_4" <= -1.378958) AND (t."X_9" > -0.333610)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" > 0.937248) AND (t."X_7" <= 1.578180) AND (t."X_9" > -0.827468) AND (t."X_4" <= -1.378958) AND (t."X_9" <= -0.333610) AND (t."X_4" <= -1.478340)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_5" > 0.328341) AND (t."X_5" > 0.937248) AND (t."X_7" <= 1.578180) AND (t."X_9" > -0.827468) AND (t."X_4" <= -1.378958) AND (t."X_9" <= -0.333610) AND (t."X_4" > -1.478340)) THEN 86 ELSE NULL END AS "Leaf_86"
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
    SELECT 0 AS nid,  0.462891 AS "P_0", 0.537109 AS "P_1", 1 AS "D", 0.537109 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.797101 AS "P_0", 0.202899 AS "P_1", 0 AS "D", 0.797101 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.072034 AS "P_0", 0.927966 AS "P_1", 1 AS "D", 0.927966 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.989796 AS "P_0", 0.010204 AS "P_1", 0 AS "D", 0.989796 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.691011 AS "P_0", 0.308989 AS "P_1", 0 AS "D", 0.691011 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.566929 AS "P_0", 0.433071 AS "P_1", 0 AS "D", 0.566929 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.629630 AS "P_0", 0.370370 AS "P_1", 0 AS "D", 0.629630 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.210526 AS "P_0", 0.789474 AS "P_1", 1 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.523810 AS "P_0", 0.476190 AS "P_1", 0 AS "D", 0.523810 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.782609 AS "P_0", 0.217391 AS "P_1", 0 AS "D", 0.782609 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.965517 AS "P_0", 0.034483 AS "P_1", 0 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.148649 AS "P_0", 0.851351 AS "P_1", 1 AS "D", 0.851351 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.037037 AS "P_0", 0.962963 AS "P_1", 1 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.061224 AS "P_0", 0.938776 AS "P_1", 1 AS "D", 0.938776 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.320000 AS "P_0", 0.680000 AS "P_1", 1 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.023256 AS "P_0", 0.976744 AS "P_1", 1 AS "D", 0.976744 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.025974 AS "P_0", 0.974026 AS "P_1", 1 AS "D", 0.974026 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.085714 AS "P_0", 0.914286 AS "P_1", 1 AS "D", 0.914286 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.008403 AS "P_0", 0.991597 AS "P_1", 1 AS "D", 0.991597 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.028571 AS "P_0", 0.971429 AS "P_1", 1 AS "D", 0.971429 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_13", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_31", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_38", t1."Leaf_41", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_49", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62", t1."Leaf_66", t1."Leaf_67", t1."Leaf_68", t1."Leaf_70", t1."Leaf_71", t1."Leaf_72", t1."Leaf_74", t1."Leaf_77", t1."Leaf_78", t1."Leaf_80", t1."Leaf_81", t1."Leaf_82", t1."Leaf_84", t1."Leaf_85", t1."Leaf_86" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" > 2.253667) AND (t."X_5" <= -0.140427)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" > 2.253667) AND (t."X_5" > -0.140427) AND (t."X_9" <= 2.646876)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" > 2.253667) AND (t."X_5" > -0.140427) AND (t."X_9" > 2.646876)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" <= 0.851174) AND (t."X_5" > 0.788502) AND (t."X_9" <= -2.327313)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" <= 0.851174) AND (t."X_5" > 0.788502) AND (t."X_9" > -2.327313) AND (t."X_5" <= 0.800584)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" <= 0.851174) AND (t."X_5" > 0.788502) AND (t."X_9" > -2.327313) AND (t."X_5" > 0.800584) AND (t."X_7" <= 0.099975)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" <= 0.851174) AND (t."X_5" > 0.788502) AND (t."X_9" > -2.327313) AND (t."X_5" > 0.800584) AND (t."X_7" > 0.099975)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" <= 0.851174) AND (t."X_5" <= 0.788502) AND (t."X_2" > 1.064291) AND (t."X_9" <= -0.828187)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" <= 0.851174) AND (t."X_5" <= 0.788502) AND (t."X_2" > 1.064291) AND (t."X_9" > -0.828187)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" <= 0.851174) AND (t."X_5" <= 0.788502) AND (t."X_2" <= 1.064291) AND (t."X_5" > 0.738105) AND (t."X_9" <= -0.631725)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" <= 0.851174) AND (t."X_5" <= 0.788502) AND (t."X_2" <= 1.064291) AND (t."X_5" > 0.738105) AND (t."X_9" > -0.631725)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" > 1.074917)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" > 0.053631) AND (t."X_5" <= 0.141118)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" > 0.053631) AND (t."X_5" > 0.141118) AND (t."X_7" <= -0.007233)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" > 0.053631) AND (t."X_5" > 0.141118) AND (t."X_7" > -0.007233) AND (t."X_5" <= 0.270788)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" > 0.053631) AND (t."X_5" > 0.141118) AND (t."X_7" > -0.007233) AND (t."X_5" > 0.270788)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" > 1.064888)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" > 0.976449) AND (t."X_9" <= 1.040797)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" > 0.976449) AND (t."X_9" > 1.040797) AND (t."X_5" <= -0.390487)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" > 0.976449) AND (t."X_9" > 1.040797) AND (t."X_5" > -0.390487) AND (t."X_7" <= -0.364722)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" > 0.976449) AND (t."X_9" > 1.040797) AND (t."X_5" > -0.390487) AND (t."X_7" > -0.364722)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" <= 0.976449) AND (t."X_2" <= -0.539426)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" <= 0.976449) AND (t."X_2" > -0.539426) AND (t."X_2" <= -0.509026)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" <= 0.976449) AND (t."X_2" > -0.539426) AND (t."X_2" > -0.509026) AND (t."X_7" <= -0.378235) AND (t."X_2" <= -0.193793) AND (t."X_2" > -0.290670)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" <= 0.976449) AND (t."X_2" > -0.539426) AND (t."X_2" > -0.509026) AND (t."X_7" <= -0.378235) AND (t."X_2" <= -0.193793) AND (t."X_2" <= -0.290670) AND (t."X_2" <= -0.468245)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" <= 0.976449) AND (t."X_2" > -0.539426) AND (t."X_2" > -0.509026) AND (t."X_7" <= -0.378235) AND (t."X_2" <= -0.193793) AND (t."X_2" <= -0.290670) AND (t."X_2" > -0.468245)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" <= 0.976449) AND (t."X_2" > -0.539426) AND (t."X_2" > -0.509026) AND (t."X_7" <= -0.378235) AND (t."X_2" > -0.193793) AND (t."X_7" > -0.436614)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" <= 0.976449) AND (t."X_2" > -0.539426) AND (t."X_2" > -0.509026) AND (t."X_7" <= -0.378235) AND (t."X_2" > -0.193793) AND (t."X_7" <= -0.436614) AND (t."X_9" <= -1.411922)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" <= 0.976449) AND (t."X_2" > -0.539426) AND (t."X_2" > -0.509026) AND (t."X_7" <= -0.378235) AND (t."X_2" > -0.193793) AND (t."X_7" <= -0.436614) AND (t."X_9" > -1.411922)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" <= 0.976449) AND (t."X_2" > -0.539426) AND (t."X_2" > -0.509026) AND (t."X_7" > -0.378235) AND (t."X_8" > 0.324238) AND (t."X_8" > 0.516734)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" <= 0.976449) AND (t."X_2" > -0.539426) AND (t."X_2" > -0.509026) AND (t."X_7" > -0.378235) AND (t."X_8" > 0.324238) AND (t."X_8" <= 0.516734) AND (t."X_5" <= -1.484269)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" <= 0.976449) AND (t."X_2" > -0.539426) AND (t."X_2" > -0.509026) AND (t."X_7" > -0.378235) AND (t."X_8" > 0.324238) AND (t."X_8" <= 0.516734) AND (t."X_5" > -1.484269)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" <= 0.976449) AND (t."X_2" > -0.539426) AND (t."X_2" > -0.509026) AND (t."X_7" > -0.378235) AND (t."X_8" <= 0.324238) AND (t."X_2" > -0.425188)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" <= 0.976449) AND (t."X_2" > -0.539426) AND (t."X_2" > -0.509026) AND (t."X_7" > -0.378235) AND (t."X_8" <= 0.324238) AND (t."X_2" <= -0.425188) AND (t."X_9" <= -0.014825)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_5" <= 0.286877) AND (t."X_9" <= 2.253667) AND (t."X_8" <= 1.074917) AND (t."X_5" <= 0.053631) AND (t."X_8" <= 1.064888) AND (t."X_9" <= 0.976449) AND (t."X_2" > -0.539426) AND (t."X_2" > -0.509026) AND (t."X_7" > -0.378235) AND (t."X_8" <= 0.324238) AND (t."X_2" <= -0.425188) AND (t."X_9" > -0.014825)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" > 0.851174) AND (t."X_9" > -0.646307)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" > 0.851174) AND (t."X_9" <= -0.646307) AND (t."X_2" <= -0.199877) AND (t."X_9" <= -0.929222)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" > 0.851174) AND (t."X_9" <= -0.646307) AND (t."X_2" <= -0.199877) AND (t."X_9" > -0.929222)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" > 0.851174) AND (t."X_9" <= -0.646307) AND (t."X_2" > -0.199877) AND (t."X_5" > 1.063582)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" > 0.851174) AND (t."X_9" <= -0.646307) AND (t."X_2" > -0.199877) AND (t."X_5" <= 1.063582) AND (t."X_9" <= -0.728988)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" > 0.851174) AND (t."X_9" <= -0.646307) AND (t."X_2" > -0.199877) AND (t."X_5" <= 1.063582) AND (t."X_9" > -0.728988)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" <= 0.851174) AND (t."X_5" <= 0.788502) AND (t."X_2" <= 1.064291) AND (t."X_5" <= 0.738105) AND (t."X_5" > 0.404426)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" <= 0.851174) AND (t."X_5" <= 0.788502) AND (t."X_2" <= 1.064291) AND (t."X_5" <= 0.738105) AND (t."X_5" <= 0.404426) AND (t."X_5" <= 0.396279)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_5" > 0.286877) AND (t."X_5" <= 0.851174) AND (t."X_5" <= 0.788502) AND (t."X_2" <= 1.064291) AND (t."X_5" <= 0.738105) AND (t."X_5" <= 0.404426) AND (t."X_5" > 0.396279)) THEN 86 ELSE NULL END AS "Leaf_86"
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
    SELECT 0 AS nid,  0.494141 AS "P_0", 0.505859 AS "P_1", 1 AS "D", 0.505859 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.845070 AS "P_0", 0.154930 AS "P_1", 0 AS "D", 0.845070 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.057018 AS "P_0", 0.942982 AS "P_1", 1 AS "D", 0.942982 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.864469 AS "P_0", 0.135531 AS "P_1", 0 AS "D", 0.864469 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.163636 AS "P_0", 0.836364 AS "P_1", 1 AS "D", 0.836364 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.023121 AS "P_0", 0.976879 AS "P_1", 1 AS "D", 0.976879 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.065217 AS "P_0", 0.934783 AS "P_1", 1 AS "D", 0.934783 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.047619 AS "P_0", 0.952381 AS "P_1", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.025000 AS "P_0", 0.975000 AS "P_1", 1 AS "D", 0.975000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.843220 AS "P_0", 0.156780 AS "P_1", 0 AS "D", 0.843220 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.881279 AS "P_0", 0.118721 AS "P_1", 0 AS "D", 0.881279 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.352941 AS "P_0", 0.647059 AS "P_1", 1 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.889401 AS "P_0", 0.110599 AS "P_1", 0 AS "D", 0.889401 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.911917 AS "P_0", 0.088083 AS "P_1", 0 AS "D", 0.911917 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.708333 AS "P_0", 0.291667 AS "P_1", 0 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.850000 AS "P_0", 0.150000 AS "P_1", 0 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.849558 AS "P_0", 0.150442 AS "P_1", 0 AS "D", 0.849558 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.864865 AS "P_0", 0.135135 AS "P_1", 0 AS "D", 0.864865 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.931035 AS "P_0", 0.068966 AS "P_1", 0 AS "D", 0.931035 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.964286 AS "P_0", 0.035714 AS "P_1", 0 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.980769 AS "P_0", 0.019231 AS "P_1", 0 AS "D", 0.980769 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.086957 AS "P_0", 0.913043 AS "P_1", 1 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.047619 AS "P_0", 0.952381 AS "P_1", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_26", t1."Leaf_27", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_47", t1."Leaf_48", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_54", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_60", t1."Leaf_64", t1."Leaf_65", t1."Leaf_68", t1."Leaf_71", t1."Leaf_73", t1."Leaf_74", t1."Leaf_75", t1."Leaf_77", t1."Leaf_78", t1."Leaf_81", t1."Leaf_82", t1."Leaf_85", t1."Leaf_87", t1."Leaf_88", t1."Leaf_90", t1."Leaf_92", t1."Leaf_93", t1."Leaf_95", t1."Leaf_96", t1."Leaf_99", t1."Leaf_100", t1."Leaf_103", t1."Leaf_106", t1."Leaf_107", t1."Leaf_108", t1."Leaf_109", t1."Leaf_111", t1."Leaf_112", t1."Leaf_113", t1."Leaf_115", t1."Leaf_116" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= -0.532534)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" > 0.181280) AND (t."X_9" > 1.013869) AND (t."X_9" <= 1.196891)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" > 0.181280) AND (t."X_9" > 1.013869) AND (t."X_9" > 1.196891) AND (t."X_9" <= 2.041090)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" > 0.181280) AND (t."X_9" > 1.013869) AND (t."X_9" > 1.196891) AND (t."X_9" > 2.041090)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" > 0.181280) AND (t."X_9" <= 1.013869) AND (t."X_8" > 1.508868)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" > -0.002528) AND (t."X_8" > 1.689484) AND (t."X_9" <= 1.733336)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" > -0.002528) AND (t."X_8" > 1.689484) AND (t."X_9" > 1.733336)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" > 1.603734)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" > -0.105129) AND (t."X_2" > 0.097365)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" > -0.105129) AND (t."X_2" <= 0.097365) AND (t."X_9" <= -1.358117)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" > -0.105129) AND (t."X_2" <= 0.097365) AND (t."X_9" > -1.358117) AND (t."X_8" > -0.086380)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" > -0.105129) AND (t."X_2" <= 0.097365) AND (t."X_9" > -1.358117) AND (t."X_8" <= -0.086380) AND (t."X_9" > -0.248719)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" > -0.105129) AND (t."X_2" <= 0.097365) AND (t."X_9" > -1.358117) AND (t."X_8" <= -0.086380) AND (t."X_9" <= -0.248719) AND (t."X_2" <= -0.091358)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" > -0.105129) AND (t."X_2" <= 0.097365) AND (t."X_9" > -1.358117) AND (t."X_8" <= -0.086380) AND (t."X_9" <= -0.248719) AND (t."X_2" > -0.091358) AND (t."X_2" <= 0.026975)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" > -0.105129) AND (t."X_2" <= 0.097365) AND (t."X_9" > -1.358117) AND (t."X_8" <= -0.086380) AND (t."X_9" <= -0.248719) AND (t."X_2" > -0.091358) AND (t."X_2" > 0.026975)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" <= -0.105129) AND (t."X_9" <= -0.948960) AND (t."X_2" > -0.327584)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" <= -0.105129) AND (t."X_9" <= -0.948960) AND (t."X_2" <= -0.327584) AND (t."X_9" <= -1.346008)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" <= -0.105129) AND (t."X_9" <= -0.948960) AND (t."X_2" <= -0.327584) AND (t."X_9" > -1.346008)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" <= -0.105129) AND (t."X_9" > -0.948960) AND (t."X_8" <= 0.026648) AND (t."X_9" > -0.482415) AND (t."X_2" <= -0.179671)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" <= -0.105129) AND (t."X_9" > -0.948960) AND (t."X_8" <= 0.026648) AND (t."X_9" > -0.482415) AND (t."X_2" > -0.179671)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" <= -0.105129) AND (t."X_9" > -0.948960) AND (t."X_8" <= 0.026648) AND (t."X_9" <= -0.482415) AND (t."X_8" > -0.074237)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" <= -0.105129) AND (t."X_9" > -0.948960) AND (t."X_8" <= 0.026648) AND (t."X_9" <= -0.482415) AND (t."X_8" <= -0.074237) AND (t."X_2" <= -0.158262)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" <= -0.105129) AND (t."X_9" > -0.948960) AND (t."X_8" <= 0.026648) AND (t."X_9" <= -0.482415) AND (t."X_8" <= -0.074237) AND (t."X_2" > -0.158262)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" <= -0.105129) AND (t."X_9" > -0.948960) AND (t."X_8" > 0.026648) AND (t."X_8" > 1.184830)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" <= -0.105129) AND (t."X_9" > -0.948960) AND (t."X_8" > 0.026648) AND (t."X_8" <= 1.184830) AND (t."X_7" > 0.794253) AND (t."X_2" <= -0.409328)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" <= -0.105129) AND (t."X_9" > -0.948960) AND (t."X_8" > 0.026648) AND (t."X_8" <= 1.184830) AND (t."X_7" > 0.794253) AND (t."X_2" > -0.409328)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" <= -0.105129) AND (t."X_9" > -0.948960) AND (t."X_8" > 0.026648) AND (t."X_8" <= 1.184830) AND (t."X_7" <= 0.794253) AND (t."X_9" <= -0.071484)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" <= -0.002528) AND (t."X_7" <= 1.603734) AND (t."X_2" <= -0.105129) AND (t."X_9" > -0.948960) AND (t."X_8" > 0.026648) AND (t."X_8" <= 1.184830) AND (t."X_7" <= 0.794253) AND (t."X_9" > -0.071484)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" > -0.002528) AND (t."X_8" <= 1.689484) AND (t."X_8" > -0.274389) AND (t."X_2" > 0.037450)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" > -0.002528) AND (t."X_8" <= 1.689484) AND (t."X_8" > -0.274389) AND (t."X_2" <= 0.037450) AND (t."X_9" <= 0.202953)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" > -0.002528) AND (t."X_8" <= 1.689484) AND (t."X_8" > -0.274389) AND (t."X_2" <= 0.037450) AND (t."X_9" > 0.202953) AND (t."X_2" > -0.066241)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" > -0.002528) AND (t."X_8" <= 1.689484) AND (t."X_8" > -0.274389) AND (t."X_2" <= 0.037450) AND (t."X_9" > 0.202953) AND (t."X_2" <= -0.066241) AND (t."X_9" <= 0.630461) AND (t."X_8" <= 0.241704)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" > -0.002528) AND (t."X_8" <= 1.689484) AND (t."X_8" > -0.274389) AND (t."X_2" <= 0.037450) AND (t."X_9" > 0.202953) AND (t."X_2" <= -0.066241) AND (t."X_9" <= 0.630461) AND (t."X_8" > 0.241704) AND (t."X_9" <= 0.294990)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" > -0.002528) AND (t."X_8" <= 1.689484) AND (t."X_8" > -0.274389) AND (t."X_2" <= 0.037450) AND (t."X_9" > 0.202953) AND (t."X_2" <= -0.066241) AND (t."X_9" <= 0.630461) AND (t."X_8" > 0.241704) AND (t."X_9" > 0.294990)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" > -0.002528) AND (t."X_8" <= 1.689484) AND (t."X_8" > -0.274389) AND (t."X_2" <= 0.037450) AND (t."X_9" > 0.202953) AND (t."X_2" <= -0.066241) AND (t."X_9" > 0.630461) AND (t."X_8" <= 0.808515)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" > -0.002528) AND (t."X_8" <= 1.689484) AND (t."X_8" > -0.274389) AND (t."X_2" <= 0.037450) AND (t."X_9" > 0.202953) AND (t."X_2" <= -0.066241) AND (t."X_9" > 0.630461) AND (t."X_8" > 0.808515) AND (t."X_9" <= 0.912642)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" > -0.002528) AND (t."X_8" <= 1.689484) AND (t."X_8" > -0.274389) AND (t."X_2" <= 0.037450) AND (t."X_9" > 0.202953) AND (t."X_2" <= -0.066241) AND (t."X_9" > 0.630461) AND (t."X_8" > 0.808515) AND (t."X_9" > 0.912642)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" > -0.002528) AND (t."X_8" <= 1.689484) AND (t."X_8" <= -0.274389) AND (t."X_9" > 1.846940) AND (t."X_9" <= 2.394011)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" > -0.002528) AND (t."X_8" <= 1.689484) AND (t."X_8" <= -0.274389) AND (t."X_9" > 1.846940) AND (t."X_9" > 2.394011)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" > 0.181280) AND (t."X_9" <= 1.013869) AND (t."X_8" <= 1.508868) AND (t."X_9" <= -1.468668) AND (t."X_9" <= -2.247323)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" > 0.181280) AND (t."X_9" <= 1.013869) AND (t."X_8" <= 1.508868) AND (t."X_9" <= -1.468668) AND (t."X_9" > -2.247323) AND (t."X_8" <= -0.432426)) THEN 87 ELSE NULL END AS "Leaf_87",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" > 0.181280) AND (t."X_9" <= 1.013869) AND (t."X_8" <= 1.508868) AND (t."X_9" <= -1.468668) AND (t."X_9" > -2.247323) AND (t."X_8" > -0.432426)) THEN 88 ELSE NULL END AS "Leaf_88",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" > 0.181280) AND (t."X_9" <= 1.013869) AND (t."X_8" <= 1.508868) AND (t."X_9" > -1.468668) AND (t."X_2" > 0.408981)) THEN 90 ELSE NULL END AS "Leaf_90",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" > 0.181280) AND (t."X_9" <= 1.013869) AND (t."X_8" <= 1.508868) AND (t."X_9" > -1.468668) AND (t."X_2" <= 0.408981) AND (t."X_8" > 0.690022)) THEN 92 ELSE NULL END AS "Leaf_92",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" > 0.181280) AND (t."X_9" <= 1.013869) AND (t."X_8" <= 1.508868) AND (t."X_9" > -1.468668) AND (t."X_2" <= 0.408981) AND (t."X_8" <= 0.690022) AND (t."X_8" <= -0.450871)) THEN 93 ELSE NULL END AS "Leaf_93",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" > 0.181280) AND (t."X_9" <= 1.013869) AND (t."X_8" <= 1.508868) AND (t."X_9" > -1.468668) AND (t."X_2" <= 0.408981) AND (t."X_8" <= 0.690022) AND (t."X_8" > -0.450871) AND (t."X_7" <= 1.208330)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" > 0.181280) AND (t."X_9" <= 1.013869) AND (t."X_8" <= 1.508868) AND (t."X_9" > -1.468668) AND (t."X_2" <= 0.408981) AND (t."X_8" <= 0.690022) AND (t."X_8" > -0.450871) AND (t."X_7" > 1.208330)) THEN 96 ELSE NULL END AS "Leaf_96",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" > 0.846771) AND (t."X_9" <= -1.553157) AND (t."X_8" <= 0.061972)) THEN 99 ELSE NULL END AS "Leaf_99",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" > 0.846771) AND (t."X_9" <= -1.553157) AND (t."X_8" > 0.061972)) THEN 100 ELSE NULL END AS "Leaf_100",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" > 0.846771) AND (t."X_9" > -1.553157) AND (t."X_7" > 0.429813) AND (t."X_7" <= 0.450517)) THEN 103 ELSE NULL END AS "Leaf_103",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" > 0.846771) AND (t."X_9" > -1.553157) AND (t."X_7" > 0.429813) AND (t."X_7" > 0.450517) AND (t."X_8" > -1.602242)) THEN 106 ELSE NULL END AS "Leaf_106",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" > 0.846771) AND (t."X_9" > -1.553157) AND (t."X_7" > 0.429813) AND (t."X_7" > 0.450517) AND (t."X_8" <= -1.602242) AND (t."X_9" <= -0.752226)) THEN 107 ELSE NULL END AS "Leaf_107",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" > 0.846771) AND (t."X_9" > -1.553157) AND (t."X_7" > 0.429813) AND (t."X_7" > 0.450517) AND (t."X_8" <= -1.602242) AND (t."X_9" > -0.752226)) THEN 108 ELSE NULL END AS "Leaf_108",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" > 0.846771) AND (t."X_9" > -1.553157) AND (t."X_7" <= 0.429813) AND (t."X_9" <= 1.157614)) THEN 109 ELSE NULL END AS "Leaf_109",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" > 0.846771) AND (t."X_9" > -1.553157) AND (t."X_7" <= 0.429813) AND (t."X_9" > 1.157614) AND (t."X_9" <= 1.214508)) THEN 111 ELSE NULL END AS "Leaf_111",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" > 0.846771) AND (t."X_9" > -1.553157) AND (t."X_7" <= 0.429813) AND (t."X_9" > 1.157614) AND (t."X_9" > 1.214508)) THEN 112 ELSE NULL END AS "Leaf_112",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" > -0.002528) AND (t."X_8" <= 1.689484) AND (t."X_8" <= -0.274389) AND (t."X_9" <= 1.846940) AND (t."X_2" <= 0.001157)) THEN 113 ELSE NULL END AS "Leaf_113",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" > -0.002528) AND (t."X_8" <= 1.689484) AND (t."X_8" <= -0.274389) AND (t."X_9" <= 1.846940) AND (t."X_2" > 0.001157) AND (t."X_2" <= 0.016691)) THEN 115 ELSE NULL END AS "Leaf_115",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_2" <= 0.846771) AND (t."X_2" <= 0.181280) AND (t."X_9" > -0.002528) AND (t."X_8" <= 1.689484) AND (t."X_8" <= -0.274389) AND (t."X_9" <= 1.846940) AND (t."X_2" > 0.001157) AND (t."X_2" > 0.016691)) THEN 116 ELSE NULL END AS "Leaf_116"
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
    SELECT 0 AS nid,  0.482422 AS "P_0", 0.517578 AS "P_1", 1 AS "D", 0.517578 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.358354 AS "P_0", 0.641647 AS "P_1", 1 AS "D", 0.641647 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.487889 AS "P_0", 0.512111 AS "P_1", 1 AS "D", 0.512111 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.056452 AS "P_0", 0.943548 AS "P_1", 1 AS "D", 0.943548 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.345000 AS "P_0", 0.655000 AS "P_1", 1 AS "D", 0.655000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.808989 AS "P_0", 0.191011 AS "P_1", 0 AS "D", 0.808989 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.858974 AS "P_0", 0.141026 AS "P_1", 0 AS "D", 0.858974 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.881579 AS "P_0", 0.118421 AS "P_1", 0 AS "D", 0.881579 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.462264 AS "P_0", 0.537736 AS "P_1", 1 AS "D", 0.537736 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.212766 AS "P_0", 0.787234 AS "P_1", 1 AS "D", 0.787234 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.152941 AS "P_0", 0.847059 AS "P_1", 1 AS "D", 0.847059 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.323529 AS "P_0", 0.676471 AS "P_1", 1 AS "D", 0.676471 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.592593 AS "P_0", 0.407407 AS "P_1", 0 AS "D", 0.592593 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.695652 AS "P_0", 0.304348 AS "P_1", 0 AS "D", 0.695652 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.473684 AS "P_0", 0.526316 AS "P_1", 1 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.347826 AS "P_0", 0.652174 AS "P_1", 1 AS "D", 0.652174 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.061224 AS "P_0", 0.938776 AS "P_1", 1 AS "D", 0.938776 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.277778 AS "P_0", 0.722222 AS "P_1", 1 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.370370 AS "P_0", 0.629630 AS "P_1", 1 AS "D", 0.629630 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.291667 AS "P_0", 0.708333 AS "P_1", 1 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.227273 AS "P_0", 0.772727 AS "P_1", 1 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.022222 AS "P_0", 0.977778 AS "P_1", 1 AS "D", 0.977778 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.911765 AS "P_0", 0.088235 AS "P_1", 0 AS "D", 0.911765 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.760000 AS "P_0", 0.240000 AS "P_1", 0 AS "D", 0.760000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.041667 AS "P_0", 0.958333 AS "P_1", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.010989 AS "P_0", 0.989011 AS "P_1", 1 AS "D", 0.989011 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.137931 AS "P_0", 0.862069 AS "P_1", 1 AS "D", 0.862069 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.074074 AS "P_0", 0.925926 AS "P_1", 1 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_24", t1."Leaf_27", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40", t1."Leaf_44", t1."Leaf_45", t1."Leaf_51", t1."Leaf_53", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58", t1."Leaf_61", t1."Leaf_63", t1."Leaf_65", t1."Leaf_66", t1."Leaf_69", t1."Leaf_70", t1."Leaf_71", t1."Leaf_73", t1."Leaf_75", t1."Leaf_76", t1."Leaf_80", t1."Leaf_81", t1."Leaf_83", t1."Leaf_85", t1."Leaf_86", t1."Leaf_91", t1."Leaf_92", t1."Leaf_93", t1."Leaf_95", t1."Leaf_97", t1."Leaf_98", t1."Leaf_99", t1."Leaf_101", t1."Leaf_102", t1."Leaf_104", t1."Leaf_108", t1."Leaf_109", t1."Leaf_110", t1."Leaf_114", t1."Leaf_115", t1."Leaf_116", t1."Leaf_118", t1."Leaf_122", t1."Leaf_123", t1."Leaf_124", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 1.110219)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" > 0.441044) AND (t."X_4" <= 0.914556)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" > 0.441044) AND (t."X_4" > 0.914556) AND (t."X_9" <= 0.535951)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" > 0.441044) AND (t."X_4" > 0.914556) AND (t."X_9" > 0.535951)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" > 0.928190) AND (t."X_4" > 1.067272) AND (t."X_4" <= 1.068129)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" > 0.928190) AND (t."X_4" > 1.067272) AND (t."X_4" > 1.068129) AND (t."X_7" <= -0.152645)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" > 0.928190) AND (t."X_4" > 1.067272) AND (t."X_4" > 1.068129) AND (t."X_7" > -0.152645) AND (t."X_9" > 0.716425)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" > 0.928190) AND (t."X_4" > 1.067272) AND (t."X_4" > 1.068129) AND (t."X_7" > -0.152645) AND (t."X_9" <= 0.716425) AND (t."X_9" <= -1.390073)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" > 0.928190) AND (t."X_4" > 1.067272) AND (t."X_4" > 1.068129) AND (t."X_7" > -0.152645) AND (t."X_9" <= 0.716425) AND (t."X_9" > -1.390073)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" > 0.928190) AND (t."X_4" <= 1.067272) AND (t."X_9" > -0.000462)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" > 0.928190) AND (t."X_4" <= 1.067272) AND (t."X_9" <= -0.000462) AND (t."X_9" > -0.039894)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" > 0.928190) AND (t."X_4" <= 1.067272) AND (t."X_9" <= -0.000462) AND (t."X_9" <= -0.039894) AND (t."X_4" <= 0.968041) AND (t."X_7" <= -0.675606)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" > 0.928190) AND (t."X_4" <= 1.067272) AND (t."X_9" <= -0.000462) AND (t."X_9" <= -0.039894) AND (t."X_4" <= 0.968041) AND (t."X_7" > -0.675606) AND (t."X_4" > 0.959044)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" > 0.928190) AND (t."X_4" <= 1.067272) AND (t."X_9" <= -0.000462) AND (t."X_9" <= -0.039894) AND (t."X_4" <= 0.968041) AND (t."X_7" > -0.675606) AND (t."X_4" <= 0.959044) AND (t."X_9" <= -0.734056)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" > 0.928190) AND (t."X_4" <= 1.067272) AND (t."X_9" <= -0.000462) AND (t."X_9" <= -0.039894) AND (t."X_4" <= 0.968041) AND (t."X_7" > -0.675606) AND (t."X_4" <= 0.959044) AND (t."X_9" > -0.734056)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" > 0.928190) AND (t."X_4" <= 1.067272) AND (t."X_9" <= -0.000462) AND (t."X_9" <= -0.039894) AND (t."X_4" > 0.968041) AND (t."X_7" <= -0.669617) AND (t."X_9" <= -0.844406)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" > 0.928190) AND (t."X_4" <= 1.067272) AND (t."X_9" <= -0.000462) AND (t."X_9" <= -0.039894) AND (t."X_4" > 0.968041) AND (t."X_7" <= -0.669617) AND (t."X_9" > -0.844406)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" > 0.928190) AND (t."X_4" <= 1.067272) AND (t."X_9" <= -0.000462) AND (t."X_9" <= -0.039894) AND (t."X_4" > 0.968041) AND (t."X_7" > -0.669617) AND (t."X_8" <= 1.206548)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" > 0.928190) AND (t."X_4" <= 1.067272) AND (t."X_9" <= -0.000462) AND (t."X_9" <= -0.039894) AND (t."X_4" > 0.968041) AND (t."X_7" > -0.669617) AND (t."X_8" > 1.206548) AND (t."X_8" <= 1.323509)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" > 0.928190) AND (t."X_4" <= 1.067272) AND (t."X_9" <= -0.000462) AND (t."X_9" <= -0.039894) AND (t."X_4" > 0.968041) AND (t."X_7" > -0.669617) AND (t."X_8" > 1.206548) AND (t."X_8" > 1.323509)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" > 1.041076)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" > -0.130253) AND (t."X_4" <= -2.021391)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" <= -1.003244) AND (t."X_9" <= 0.043398)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" <= -1.003244) AND (t."X_9" > 0.043398) AND (t."X_9" <= 0.131560)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" <= -1.003244) AND (t."X_9" > 0.043398) AND (t."X_9" > 0.131560) AND (t."X_9" <= 0.245989)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" <= -1.003244) AND (t."X_9" > 0.043398) AND (t."X_9" > 0.131560) AND (t."X_9" > 0.245989) AND (t."X_9" <= 0.662399)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" <= -1.003244) AND (t."X_9" > 0.043398) AND (t."X_9" > 0.131560) AND (t."X_9" > 0.245989) AND (t."X_9" > 0.662399)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" > 0.282333) AND (t."X_8" > -0.335687) AND (t."X_9" <= 0.617955)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" > 0.282333) AND (t."X_8" > -0.335687) AND (t."X_9" > 0.617955) AND (t."X_9" <= 0.768442)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" > 0.282333) AND (t."X_8" > -0.335687) AND (t."X_9" > 0.617955) AND (t."X_9" > 0.768442) AND (t."X_9" <= 0.857306)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" > 0.282333) AND (t."X_8" > -0.335687) AND (t."X_9" > 0.617955) AND (t."X_9" > 0.768442) AND (t."X_9" > 0.857306)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" > 0.282333) AND (t."X_8" <= -0.335687) AND (t."X_4" > -0.013139) AND (t."X_9" <= 0.668636)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" > 0.282333) AND (t."X_8" <= -0.335687) AND (t."X_4" > -0.013139) AND (t."X_9" > 0.668636)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" > 0.282333) AND (t."X_8" <= -0.335687) AND (t."X_4" <= -0.013139) AND (t."X_4" <= -2.279206)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" > 0.282333) AND (t."X_8" <= -0.335687) AND (t."X_4" <= -0.013139) AND (t."X_4" > -2.279206) AND (t."X_7" <= 1.108009)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" > 0.282333) AND (t."X_8" <= -0.335687) AND (t."X_4" <= -0.013139) AND (t."X_4" > -2.279206) AND (t."X_7" > 1.108009) AND (t."X_9" <= 0.547161)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" > 0.282333) AND (t."X_8" <= -0.335687) AND (t."X_4" <= -0.013139) AND (t."X_4" > -2.279206) AND (t."X_7" > 1.108009) AND (t."X_9" > 0.547161)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" <= 0.282333) AND (t."X_9" <= -0.706473) AND (t."X_9" > -0.958680)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" <= 0.282333) AND (t."X_9" <= -0.706473) AND (t."X_9" <= -0.958680) AND (t."X_9" <= -2.680122)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" <= 0.282333) AND (t."X_9" <= -0.706473) AND (t."X_9" <= -0.958680) AND (t."X_9" > -2.680122) AND (t."X_9" <= -1.535763)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" <= 0.282333) AND (t."X_9" <= -0.706473) AND (t."X_9" <= -0.958680) AND (t."X_9" > -2.680122) AND (t."X_9" > -1.535763) AND (t."X_9" <= -1.039093)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" <= 0.282333) AND (t."X_9" <= -0.706473) AND (t."X_9" <= -0.958680) AND (t."X_9" > -2.680122) AND (t."X_9" > -1.535763) AND (t."X_9" > -1.039093)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" <= 0.282333) AND (t."X_9" > -0.706473) AND (t."X_4" <= -1.582555) AND (t."X_9" > -0.174770) AND (t."X_8" <= -0.355007)) THEN 91 ELSE NULL END AS "Leaf_91",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" <= 0.282333) AND (t."X_9" > -0.706473) AND (t."X_4" <= -1.582555) AND (t."X_9" > -0.174770) AND (t."X_8" > -0.355007)) THEN 92 ELSE NULL END AS "Leaf_92",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" <= 0.282333) AND (t."X_9" > -0.706473) AND (t."X_4" > -1.582555) AND (t."X_8" <= -0.452320)) THEN 93 ELSE NULL END AS "Leaf_93",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" <= 0.282333) AND (t."X_9" > -0.706473) AND (t."X_4" > -1.582555) AND (t."X_8" > -0.452320) AND (t."X_9" <= -0.095836)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" <= 0.282333) AND (t."X_9" > -0.706473) AND (t."X_4" > -1.582555) AND (t."X_8" > -0.452320) AND (t."X_9" > -0.095836) AND (t."X_9" <= 0.220407)) THEN 97 ELSE NULL END AS "Leaf_97",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" <= 0.282333) AND (t."X_9" > -0.706473) AND (t."X_4" > -1.582555) AND (t."X_8" > -0.452320) AND (t."X_9" > -0.095836) AND (t."X_9" > 0.220407)) THEN 98 ELSE NULL END AS "Leaf_98",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" <= 0.282333) AND (t."X_9" > -0.706473) AND (t."X_4" <= -1.582555) AND (t."X_9" <= -0.174770) AND (t."X_9" <= -0.405419)) THEN 99 ELSE NULL END AS "Leaf_99",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" <= 0.282333) AND (t."X_9" > -0.706473) AND (t."X_4" <= -1.582555) AND (t."X_9" <= -0.174770) AND (t."X_9" > -0.405419) AND (t."X_9" <= -0.237017)) THEN 101 ELSE NULL END AS "Leaf_101",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" <= -0.130253) AND (t."X_9" <= 1.041076) AND (t."X_8" > -1.003244) AND (t."X_9" <= 0.282333) AND (t."X_9" > -0.706473) AND (t."X_4" <= -1.582555) AND (t."X_9" <= -0.174770) AND (t."X_9" > -0.405419) AND (t."X_9" > -0.237017)) THEN 102 ELSE NULL END AS "Leaf_102",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" > -0.130253) AND (t."X_4" > -2.021391) AND (t."X_7" > 1.953578)) THEN 104 ELSE NULL END AS "Leaf_104",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" > -0.130253) AND (t."X_4" > -2.021391) AND (t."X_7" <= 1.953578) AND (t."X_8" > 1.309392) AND (t."X_4" > -1.251387)) THEN 108 ELSE NULL END AS "Leaf_108",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" > -0.130253) AND (t."X_4" > -2.021391) AND (t."X_7" <= 1.953578) AND (t."X_8" > 1.309392) AND (t."X_4" <= -1.251387) AND (t."X_9" <= 0.957239)) THEN 109 ELSE NULL END AS "Leaf_109",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" > -0.130253) AND (t."X_4" > -2.021391) AND (t."X_7" <= 1.953578) AND (t."X_8" > 1.309392) AND (t."X_4" <= -1.251387) AND (t."X_9" > 0.957239)) THEN 110 ELSE NULL END AS "Leaf_110",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" > -0.130253) AND (t."X_4" > -2.021391) AND (t."X_7" <= 1.953578) AND (t."X_8" <= 1.309392) AND (t."X_9" <= -1.528088) AND (t."X_9" > -1.781391)) THEN 114 ELSE NULL END AS "Leaf_114",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" > -0.130253) AND (t."X_4" > -2.021391) AND (t."X_7" <= 1.953578) AND (t."X_8" <= 1.309392) AND (t."X_9" <= -1.528088) AND (t."X_9" <= -1.781391) AND (t."X_8" <= 0.944867)) THEN 115 ELSE NULL END AS "Leaf_115",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" > -0.130253) AND (t."X_4" > -2.021391) AND (t."X_7" <= 1.953578) AND (t."X_8" <= 1.309392) AND (t."X_9" <= -1.528088) AND (t."X_9" <= -1.781391) AND (t."X_8" > 0.944867)) THEN 116 ELSE NULL END AS "Leaf_116",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" > -0.130253) AND (t."X_4" > -2.021391) AND (t."X_7" <= 1.953578) AND (t."X_8" <= 1.309392) AND (t."X_9" > -1.528088) AND (t."X_4" > -0.980202)) THEN 118 ELSE NULL END AS "Leaf_118",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" > -0.130253) AND (t."X_4" > -2.021391) AND (t."X_7" <= 1.953578) AND (t."X_8" <= 1.309392) AND (t."X_9" > -1.528088) AND (t."X_4" <= -0.980202) AND (t."X_9" > 0.639712) AND (t."X_7" > 0.274554)) THEN 122 ELSE NULL END AS "Leaf_122",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" > -0.130253) AND (t."X_4" > -2.021391) AND (t."X_7" <= 1.953578) AND (t."X_8" <= 1.309392) AND (t."X_9" > -1.528088) AND (t."X_4" <= -0.980202) AND (t."X_9" > 0.639712) AND (t."X_7" <= 0.274554) AND (t."X_4" <= -1.713926)) THEN 123 ELSE NULL END AS "Leaf_123",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" > -0.130253) AND (t."X_4" > -2.021391) AND (t."X_7" <= 1.953578) AND (t."X_8" <= 1.309392) AND (t."X_9" > -1.528088) AND (t."X_4" <= -0.980202) AND (t."X_9" > 0.639712) AND (t."X_7" <= 0.274554) AND (t."X_4" > -1.713926)) THEN 124 ELSE NULL END AS "Leaf_124",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" > -0.130253) AND (t."X_4" > -2.021391) AND (t."X_7" <= 1.953578) AND (t."X_8" <= 1.309392) AND (t."X_9" > -1.528088) AND (t."X_4" <= -0.980202) AND (t."X_9" <= 0.639712) AND (t."X_8" <= 0.213327)) THEN 125 ELSE NULL END AS "Leaf_125",
      CASE WHEN((t."X_4" <= 1.110219) AND (t."X_4" <= 0.928190) AND (t."X_4" <= 0.441044) AND (t."X_8" > -0.130253) AND (t."X_4" > -2.021391) AND (t."X_7" <= 1.953578) AND (t."X_8" <= 1.309392) AND (t."X_9" > -1.528088) AND (t."X_4" <= -0.980202) AND (t."X_9" <= 0.639712) AND (t."X_8" > 0.213327)) THEN 126 ELSE NULL END AS "Leaf_126"
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
    SELECT 0 AS nid,  0.513672 AS "P_0", 0.486328 AS "P_1", 0 AS "D", 0.513672 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.465517 AS "P_0", 0.534483 AS "P_1", 1 AS "D", 0.534483 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.979167 AS "P_0", 0.020833 AS "P_1", 0 AS "D", 0.979167 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.635739 AS "P_0", 0.364261 AS "P_1", 0 AS "D", 0.635739 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.179191 AS "P_0", 0.820809 AS "P_1", 1 AS "D", 0.820809 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.577869 AS "P_0", 0.422131 AS "P_1", 0 AS "D", 0.577869 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.936170 AS "P_0", 0.063830 AS "P_1", 0 AS "D", 0.936170 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.976744 AS "P_0", 0.023256 AS "P_1", 0 AS "D", 0.976744 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.129252 AS "P_0", 0.870748 AS "P_1", 1 AS "D", 0.870748 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.461538 AS "P_0", 0.538462 AS "P_1", 1 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.263158 AS "P_0", 0.736842 AS "P_1", 1 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.236842 AS "P_0", 0.763158 AS "P_1", 1 AS "D", 0.763158 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.014085 AS "P_0", 0.985915 AS "P_1", 1 AS "D", 0.985915 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.216216 AS "P_0", 0.783784 AS "P_1", 1 AS "D", 0.783784 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.416667 AS "P_0", 0.583333 AS "P_1", 1 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.690000 AS "P_0", 0.310000 AS "P_1", 0 AS "D", 0.690000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.562500 AS "P_0", 0.437500 AS "P_1", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.726316 AS "P_0", 0.273684 AS "P_1", 0 AS "D", 0.726316 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.489796 AS "P_0", 0.510204 AS "P_1", 1 AS "D", 0.510204 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.343750 AS "P_0", 0.656250 AS "P_1", 1 AS "D", 0.656250 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.764706 AS "P_0", 0.235294 AS "P_1", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.851852 AS "P_0", 0.148148 AS "P_1", 0 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.521739 AS "P_0", 0.478261 AS "P_1", 0 AS "D", 0.521739 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.243902 AS "P_0", 0.756098 AS "P_1", 1 AS "D", 0.756098 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.352941 AS "P_0", 0.647059 AS "P_1", 1 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.802469 AS "P_0", 0.197531 AS "P_1", 0 AS "D", 0.802469 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.837838 AS "P_0", 0.162162 AS "P_1", 0 AS "D", 0.837838 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  0.702703 AS "P_0", 0.297297 AS "P_1", 0 AS "D", 0.702703 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.972973 AS "P_0", 0.027027 AS "P_1", 0 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  0.774194 AS "P_0", 0.225806 AS "P_1", 0 AS "D", 0.774194 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_13", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_42", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_65", t1."Leaf_66", t1."Leaf_67", t1."Leaf_68", t1."Leaf_71", t1."Leaf_72", t1."Leaf_73", t1."Leaf_74" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= -0.516542)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" <= -2.680122)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" > 1.098358) AND (t."X_2" <= 1.502211)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" > 1.098358) AND (t."X_2" > 1.502211)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" > 1.201603) AND (t."X_4" <= -0.479061)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" > 1.201603) AND (t."X_4" > -0.479061) AND (t."X_7" <= 1.377119)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" > 1.201603) AND (t."X_4" > -0.479061) AND (t."X_7" > 1.377119) AND (t."X_2" > 0.545844)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" > 1.201603) AND (t."X_4" > -0.479061) AND (t."X_7" > 1.377119) AND (t."X_2" <= 0.545844) AND (t."X_9" > 1.354042) AND (t."X_9" <= 2.318107)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" > 1.201603) AND (t."X_4" > -0.479061) AND (t."X_7" > 1.377119) AND (t."X_2" <= 0.545844) AND (t."X_9" > 1.354042) AND (t."X_9" > 2.318107)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" <= -1.495399) AND (t."X_2" > -0.006119) AND (t."X_7" <= -0.628094)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" <= -1.495399) AND (t."X_2" <= -0.006119) AND (t."X_4" <= -1.022543)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" <= -1.495399) AND (t."X_2" <= -0.006119) AND (t."X_4" > -1.022543) AND (t."X_7" <= 0.772986)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" <= -1.495399) AND (t."X_2" <= -0.006119) AND (t."X_4" > -1.022543) AND (t."X_7" > 0.772986)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" <= -1.495399) AND (t."X_2" > -0.006119) AND (t."X_7" > -0.628094) AND (t."X_0" > -1.429350)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" <= -1.495399) AND (t."X_2" > -0.006119) AND (t."X_7" > -0.628094) AND (t."X_0" <= -1.429350) AND (t."X_0" <= -1.509642)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" <= -1.495399) AND (t."X_2" > -0.006119) AND (t."X_7" > -0.628094) AND (t."X_0" <= -1.429350) AND (t."X_0" > -1.509642)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" > 1.201603) AND (t."X_4" > -0.479061) AND (t."X_7" > 1.377119) AND (t."X_2" <= 0.545844) AND (t."X_9" <= 1.354042) AND (t."X_2" <= 0.092985)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" > 1.201603) AND (t."X_4" > -0.479061) AND (t."X_7" > 1.377119) AND (t."X_2" <= 0.545844) AND (t."X_9" <= 1.354042) AND (t."X_2" > 0.092985) AND (t."X_9" <= 0.165217)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" > 1.201603) AND (t."X_4" > -0.479061) AND (t."X_7" > 1.377119) AND (t."X_2" <= 0.545844) AND (t."X_9" <= 1.354042) AND (t."X_2" > 0.092985) AND (t."X_9" > 0.165217)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" > 2.052722)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" > 0.766040)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" <= -0.054422) AND (t."X_4" > -0.536041) AND (t."X_8" <= -0.368005) AND (t."X_0" > 1.641460)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" <= -0.054422) AND (t."X_4" > -0.536041) AND (t."X_8" <= -0.368005) AND (t."X_0" <= 1.641460) AND (t."X_2" <= -0.290670)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" <= -0.054422) AND (t."X_4" > -0.536041) AND (t."X_8" <= -0.368005) AND (t."X_0" <= 1.641460) AND (t."X_2" > -0.290670)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" <= -0.054422) AND (t."X_4" <= -0.536041) AND (t."X_2" > -0.199877)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" <= -0.054422) AND (t."X_4" <= -0.536041) AND (t."X_2" <= -0.199877) AND (t."X_8" <= -0.302271)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" <= -0.054422) AND (t."X_4" <= -0.536041) AND (t."X_2" <= -0.199877) AND (t."X_8" > -0.302271)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" <= -0.054422) AND (t."X_4" > -0.536041) AND (t."X_8" > -0.368005) AND (t."X_7" <= -1.499527)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" <= -0.054422) AND (t."X_4" > -0.536041) AND (t."X_8" > -0.368005) AND (t."X_7" > -1.499527)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" > -0.054422) AND (t."X_7" <= 0.177165)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" > -0.054422) AND (t."X_7" > 0.177165) AND (t."X_4" > 0.164898) AND (t."X_4" <= 0.897532) AND (t."X_7" <= 0.256690)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" > -0.054422) AND (t."X_7" > 0.177165) AND (t."X_4" > 0.164898) AND (t."X_4" <= 0.897532) AND (t."X_7" > 0.256690)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" > -0.054422) AND (t."X_7" > 0.177165) AND (t."X_4" > 0.164898) AND (t."X_4" > 0.897532) AND (t."X_2" <= 0.382443)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" > -0.054422) AND (t."X_7" > 0.177165) AND (t."X_4" > 0.164898) AND (t."X_4" > 0.897532) AND (t."X_2" > 0.382443)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" > -0.054422) AND (t."X_7" > 0.177165) AND (t."X_4" <= 0.164898) AND (t."X_7" <= 0.293053) AND (t."X_7" <= 0.274910)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" > -0.054422) AND (t."X_7" > 0.177165) AND (t."X_4" <= 0.164898) AND (t."X_7" <= 0.293053) AND (t."X_7" > 0.274910)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" > -0.054422) AND (t."X_7" > 0.177165) AND (t."X_4" <= 0.164898) AND (t."X_7" > 0.293053) AND (t."X_2" <= -0.317125)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_2" > -0.516542) AND (t."X_9" > -2.680122) AND (t."X_4" <= 1.098358) AND (t."X_7" <= 1.201603) AND (t."X_8" > -1.495399) AND (t."X_8" <= 2.052722) AND (t."X_2" <= 0.766040) AND (t."X_7" > -0.054422) AND (t."X_7" > 0.177165) AND (t."X_4" <= 0.164898) AND (t."X_7" > 0.293053) AND (t."X_2" > -0.317125)) THEN 74 ELSE NULL END AS "Leaf_74"
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
    SELECT 0 AS nid,  0.527344 AS "P_0", 0.472656 AS "P_1", 0 AS "D", 0.527344 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.385787 AS "P_0", 0.614213 AS "P_1", 1 AS "D", 0.614213 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.376289 AS "P_0", 0.623711 AS "P_1", 1 AS "D", 0.623711 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.286567 AS "P_0", 0.713433 AS "P_1", 1 AS "D", 0.713433 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.943396 AS "P_0", 0.056604 AS "P_1", 0 AS "D", 0.943396 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.252669 AS "P_0", 0.747331 AS "P_1", 1 AS "D", 0.747331 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.462963 AS "P_0", 0.537037 AS "P_1", 1 AS "D", 0.537037 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.609756 AS "P_0", 0.390244 AS "P_1", 0 AS "D", 0.609756 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.705882 AS "P_0", 0.294118 AS "P_1", 0 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.487179 AS "P_0", 0.512821 AS "P_1", 1 AS "D", 0.512821 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.214876 AS "P_0", 0.785124 AS "P_1", 1 AS "D", 0.785124 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.789474 AS "P_0", 0.210526 AS "P_1", 0 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.882353 AS "P_0", 0.117647 AS "P_1", 0 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.208333 AS "P_0", 0.791667 AS "P_1", 1 AS "D", 0.791667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.310559 AS "P_0", 0.689441 AS "P_1", 1 AS "D", 0.689441 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.446154 AS "P_0", 0.553846 AS "P_1", 1 AS "D", 0.553846 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.218750 AS "P_0", 0.781250 AS "P_1", 1 AS "D", 0.781250 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.129032 AS "P_0", 0.870968 AS "P_1", 1 AS "D", 0.870968 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.735294 AS "P_0", 0.264706 AS "P_1", 0 AS "D", 0.735294 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.027778 AS "P_0", 0.972222 AS "P_1", 1 AS "D", 0.972222 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_8", t1."Leaf_9", t1."Leaf_13", t1."Leaf_15", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_51", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_57", t1."Leaf_59", t1."Leaf_60", t1."Leaf_62", t1."Leaf_63", t1."Leaf_64", t1."Leaf_67", t1."Leaf_68", t1."Leaf_73", t1."Leaf_74", t1."Leaf_77", t1."Leaf_79", t1."Leaf_81", t1."Leaf_83", t1."Leaf_84", t1."Leaf_88", t1."Leaf_89", t1."Leaf_90", t1."Leaf_92", t1."Leaf_95", t1."Leaf_96", t1."Leaf_97", t1."Leaf_99", t1."Leaf_101", t1."Leaf_102", t1."Leaf_103", t1."Leaf_105", t1."Leaf_106", t1."Leaf_108", t1."Leaf_109", t1."Leaf_110", t1."Leaf_115", t1."Leaf_117", t1."Leaf_118", t1."Leaf_119", t1."Leaf_120", t1."Leaf_121", t1."Leaf_123", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_9" <= -2.546316)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" <= -0.866812) AND (t."X_8" > 1.305346)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" <= -0.866812) AND (t."X_8" <= 1.305346) AND (t."X_8" <= -1.855525)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" > 0.003616) AND (t."X_7" <= 0.283891) AND (t."X_8" <= 0.124237)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" > 0.003616) AND (t."X_7" <= 0.283891) AND (t."X_8" > 0.124237) AND (t."X_7" <= 0.083787)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" > 0.003616) AND (t."X_7" <= 0.283891) AND (t."X_8" > 0.124237) AND (t."X_7" > 0.083787) AND (t."X_3" > 0.059036)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" > 0.003616) AND (t."X_7" <= 0.283891) AND (t."X_8" > 0.124237) AND (t."X_7" > 0.083787) AND (t."X_3" <= 0.059036) AND (t."X_8" > 0.988250)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" > 0.003616) AND (t."X_7" <= 0.283891) AND (t."X_8" > 0.124237) AND (t."X_7" > 0.083787) AND (t."X_3" <= 0.059036) AND (t."X_8" <= 0.988250) AND (t."X_8" <= 0.482080)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" > 0.003616) AND (t."X_7" <= 0.283891) AND (t."X_8" > 0.124237) AND (t."X_7" > 0.083787) AND (t."X_3" <= 0.059036) AND (t."X_8" <= 0.988250) AND (t."X_8" > 0.482080)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" <= -0.256043) AND (t."X_9" > -0.482102) AND (t."X_8" <= -1.317394)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" <= -0.256043) AND (t."X_9" > -0.482102) AND (t."X_8" > -1.317394)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" > -0.256043) AND (t."X_3" <= -0.620677)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" <= -0.256043) AND (t."X_9" <= -0.482102) AND (t."X_8" <= -1.604279)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" <= -0.256043) AND (t."X_9" <= -0.482102) AND (t."X_8" > -1.604279) AND (t."X_3" <= -0.349631) AND (t."X_9" <= -1.448076)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" <= -0.256043) AND (t."X_9" <= -0.482102) AND (t."X_8" > -1.604279) AND (t."X_3" <= -0.349631) AND (t."X_9" > -1.448076)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" > -0.256043) AND (t."X_3" > -0.620677) AND (t."X_8" > 1.309392) AND (t."X_8" <= 1.599128)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" > -0.256043) AND (t."X_3" > -0.620677) AND (t."X_8" > 1.309392) AND (t."X_8" > 1.599128)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" <= -0.256043) AND (t."X_9" <= -0.482102) AND (t."X_8" > -1.604279) AND (t."X_3" > -0.349631) AND (t."X_9" > -0.600348) AND (t."X_9" <= -0.582163)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" <= -0.256043) AND (t."X_9" <= -0.482102) AND (t."X_8" > -1.604279) AND (t."X_3" > -0.349631) AND (t."X_9" > -0.600348) AND (t."X_9" > -0.582163)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" > -0.256043) AND (t."X_3" > -0.620677) AND (t."X_8" <= 1.309392) AND (t."X_8" <= 0.295271)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" > -0.256043) AND (t."X_3" > -0.620677) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.295271) AND (t."X_8" <= 0.644169) AND (t."X_9" <= -1.114295)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" > -0.256043) AND (t."X_3" > -0.620677) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.295271) AND (t."X_8" <= 0.644169) AND (t."X_9" > -1.114295) AND (t."X_9" <= -0.430800)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" > -0.256043) AND (t."X_3" > -0.620677) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.295271) AND (t."X_8" <= 0.644169) AND (t."X_9" > -1.114295) AND (t."X_9" > -0.430800)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" > -0.256043) AND (t."X_3" > -0.620677) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.295271) AND (t."X_8" > 0.644169) AND (t."X_7" <= -0.439423)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" > -0.256043) AND (t."X_3" > -0.620677) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.295271) AND (t."X_8" > 0.644169) AND (t."X_7" > -0.439423) AND (t."X_7" <= -0.305910)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" > -0.256043) AND (t."X_3" > -0.620677) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.295271) AND (t."X_8" > 0.644169) AND (t."X_7" > -0.439423) AND (t."X_7" > -0.305910) AND (t."X_8" <= 1.152937)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" > -0.256043) AND (t."X_3" > -0.620677) AND (t."X_8" <= 1.309392) AND (t."X_8" > 0.295271) AND (t."X_8" > 0.644169) AND (t."X_7" > -0.439423) AND (t."X_7" > -0.305910) AND (t."X_8" > 1.152937)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" <= -0.256043) AND (t."X_9" <= -0.482102) AND (t."X_8" > -1.604279) AND (t."X_3" > -0.349631) AND (t."X_9" <= -0.600348) AND (t."X_7" > -0.954626)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" <= -0.256043) AND (t."X_9" <= -0.482102) AND (t."X_8" > -1.604279) AND (t."X_3" > -0.349631) AND (t."X_9" <= -0.600348) AND (t."X_7" <= -0.954626) AND (t."X_7" <= -1.062559)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" <= -0.197848) AND (t."X_8" <= -0.256043) AND (t."X_9" <= -0.482102) AND (t."X_8" > -1.604279) AND (t."X_3" > -0.349631) AND (t."X_9" <= -0.600348) AND (t."X_7" <= -0.954626) AND (t."X_7" > -1.062559)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" > 1.167399) AND (t."X_9" <= 0.622394)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" > 1.167399) AND (t."X_9" > 0.622394)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" > 0.008465) AND (t."X_9" <= 0.091569) AND (t."X_9" <= -0.133376)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" > 0.008465) AND (t."X_9" <= 0.091569) AND (t."X_9" > -0.133376)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" > 0.008465) AND (t."X_9" > 0.091569) AND (t."X_9" > 0.805268) AND (t."X_7" <= -0.671450)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" > 0.008465) AND (t."X_9" > 0.091569) AND (t."X_9" > 0.805268) AND (t."X_7" > -0.671450) AND (t."X_3" <= -0.183033)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" > 0.008465) AND (t."X_9" > 0.091569) AND (t."X_9" > 0.805268) AND (t."X_7" > -0.671450) AND (t."X_3" > -0.183033) AND (t."X_7" <= -0.399353)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" > 0.008465) AND (t."X_9" > 0.091569) AND (t."X_9" > 0.805268) AND (t."X_7" > -0.671450) AND (t."X_3" > -0.183033) AND (t."X_7" > -0.399353) AND (t."X_9" <= 1.040062)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" > 0.008465) AND (t."X_9" > 0.091569) AND (t."X_9" > 0.805268) AND (t."X_7" > -0.671450) AND (t."X_3" > -0.183033) AND (t."X_7" > -0.399353) AND (t."X_9" > 1.040062)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" <= 0.008465) AND (t."X_9" > 1.023137) AND (t."X_3" > -0.250724)) THEN 88 ELSE NULL END AS "Leaf_88",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" <= 0.008465) AND (t."X_9" > 1.023137) AND (t."X_3" <= -0.250724) AND (t."X_9" <= 1.813644)) THEN 89 ELSE NULL END AS "Leaf_89",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" <= 0.008465) AND (t."X_9" > 1.023137) AND (t."X_3" <= -0.250724) AND (t."X_9" > 1.813644)) THEN 90 ELSE NULL END AS "Leaf_90",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" <= 0.008465) AND (t."X_9" <= 1.023137) AND (t."X_8" > -0.418132)) THEN 92 ELSE NULL END AS "Leaf_92",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" <= 0.008465) AND (t."X_9" <= 1.023137) AND (t."X_8" <= -0.418132) AND (t."X_8" <= -1.112199) AND (t."X_9" <= 0.013219)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" <= 0.008465) AND (t."X_9" <= 1.023137) AND (t."X_8" <= -0.418132) AND (t."X_8" <= -1.112199) AND (t."X_9" > 0.013219)) THEN 96 ELSE NULL END AS "Leaf_96",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" <= 0.008465) AND (t."X_9" <= 1.023137) AND (t."X_8" <= -0.418132) AND (t."X_8" > -1.112199) AND (t."X_9" <= 0.294087)) THEN 97 ELSE NULL END AS "Leaf_97",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" <= 0.008465) AND (t."X_9" <= 1.023137) AND (t."X_8" <= -0.418132) AND (t."X_8" > -1.112199) AND (t."X_9" > 0.294087) AND (t."X_9" <= 0.549798)) THEN 99 ELSE NULL END AS "Leaf_99",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" <= 0.008465) AND (t."X_9" <= 1.023137) AND (t."X_8" <= -0.418132) AND (t."X_8" > -1.112199) AND (t."X_9" > 0.294087) AND (t."X_9" > 0.549798) AND (t."X_9" <= 0.694957)) THEN 101 ELSE NULL END AS "Leaf_101",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" <= 0.008465) AND (t."X_9" <= 1.023137) AND (t."X_8" <= -0.418132) AND (t."X_8" > -1.112199) AND (t."X_9" > 0.294087) AND (t."X_9" > 0.549798) AND (t."X_9" > 0.694957)) THEN 102 ELSE NULL END AS "Leaf_102",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" > 0.008465) AND (t."X_9" > 0.091569) AND (t."X_9" <= 0.805268) AND (t."X_8" <= 1.686974)) THEN 103 ELSE NULL END AS "Leaf_103",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" > 0.008465) AND (t."X_9" > 0.091569) AND (t."X_9" <= 0.805268) AND (t."X_8" > 1.686974) AND (t."X_9" <= 0.305674)) THEN 105 ELSE NULL END AS "Leaf_105",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" > -0.866812) AND (t."X_9" > -0.197848) AND (t."X_3" <= 1.167399) AND (t."X_8" > 0.008465) AND (t."X_9" > 0.091569) AND (t."X_9" <= 0.805268) AND (t."X_8" > 1.686974) AND (t."X_9" > 0.305674)) THEN 106 ELSE NULL END AS "Leaf_106",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" <= -0.866812) AND (t."X_8" <= 1.305346) AND (t."X_8" > -1.855525) AND (t."X_8" > -0.858726)) THEN 108 ELSE NULL END AS "Leaf_108",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" <= -0.866812) AND (t."X_8" <= 1.305346) AND (t."X_8" > -1.855525) AND (t."X_8" <= -0.858726) AND (t."X_8" <= -0.903105)) THEN 109 ELSE NULL END AS "Leaf_109",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" <= 0.003616) AND (t."X_3" <= -0.866812) AND (t."X_8" <= 1.305346) AND (t."X_8" > -1.855525) AND (t."X_8" <= -0.858726) AND (t."X_8" > -0.903105)) THEN 110 ELSE NULL END AS "Leaf_110",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" > 0.003616) AND (t."X_7" > 0.283891) AND (t."X_8" <= -1.037449) AND (t."X_8" <= -1.773877) AND (t."X_7" <= 0.811113)) THEN 115 ELSE NULL END AS "Leaf_115",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" > 0.003616) AND (t."X_7" > 0.283891) AND (t."X_8" <= -1.037449) AND (t."X_8" <= -1.773877) AND (t."X_7" > 0.811113) AND (t."X_8" <= -2.056879)) THEN 117 ELSE NULL END AS "Leaf_117",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" > 0.003616) AND (t."X_7" > 0.283891) AND (t."X_8" <= -1.037449) AND (t."X_8" <= -1.773877) AND (t."X_7" > 0.811113) AND (t."X_8" > -2.056879)) THEN 118 ELSE NULL END AS "Leaf_118",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" > 0.003616) AND (t."X_7" > 0.283891) AND (t."X_8" <= -1.037449) AND (t."X_8" > -1.773877) AND (t."X_3" <= 1.593093)) THEN 119 ELSE NULL END AS "Leaf_119",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" > 0.003616) AND (t."X_7" > 0.283891) AND (t."X_8" <= -1.037449) AND (t."X_8" > -1.773877) AND (t."X_3" > 1.593093)) THEN 120 ELSE NULL END AS "Leaf_120",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" > 0.003616) AND (t."X_7" > 0.283891) AND (t."X_8" > -1.037449) AND (t."X_3" <= 0.540364)) THEN 121 ELSE NULL END AS "Leaf_121",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" > 0.003616) AND (t."X_7" > 0.283891) AND (t."X_8" > -1.037449) AND (t."X_3" > 0.540364) AND (t."X_3" <= 1.048735)) THEN 123 ELSE NULL END AS "Leaf_123",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" > 0.003616) AND (t."X_7" > 0.283891) AND (t."X_8" > -1.037449) AND (t."X_3" > 0.540364) AND (t."X_3" > 1.048735) AND (t."X_3" <= 1.109564)) THEN 125 ELSE NULL END AS "Leaf_125",
      CASE WHEN((t."X_9" > -2.546316) AND (t."X_7" > 0.003616) AND (t."X_7" > 0.283891) AND (t."X_8" > -1.037449) AND (t."X_3" > 0.540364) AND (t."X_3" > 1.048735) AND (t."X_3" > 1.109564)) THEN 126 ELSE NULL END AS "Leaf_126"
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
    SELECT 0 AS nid,  0.482422 AS "P_0", 0.517578 AS "P_1", 1 AS "D", 0.517578 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.474206 AS "P_0", 0.525794 AS "P_1", 1 AS "D", 0.525794 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.544681 AS "P_0", 0.455319 AS "P_1", 0 AS "D", 0.544681 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.412639 AS "P_0", 0.587361 AS "P_1", 1 AS "D", 0.587361 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.829268 AS "P_0", 0.170732 AS "P_1", 0 AS "D", 0.829268 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.484536 AS "P_0", 0.515464 AS "P_1", 1 AS "D", 0.515464 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.871795 AS "P_0", 0.128205 AS "P_1", 0 AS "D", 0.871795 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.894737 AS "P_0", 0.105263 AS "P_1", 0 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.202899 AS "P_0", 0.797101 AS "P_1", 1 AS "D", 0.797101 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.485000 AS "P_0", 0.515000 AS "P_1", 1 AS "D", 0.515000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.068182 AS "P_0", 0.931818 AS "P_1", 1 AS "D", 0.931818 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.440000 AS "P_0", 0.560000 AS "P_1", 1 AS "D", 0.560000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.647059 AS "P_0", 0.352941 AS "P_1", 0 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.612500 AS "P_0", 0.387500 AS "P_1", 0 AS "D", 0.612500 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.394737 AS "P_0", 0.605263 AS "P_1", 1 AS "D", 0.605263 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.709091 AS "P_0", 0.290909 AS "P_1", 0 AS "D", 0.709091 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.263158 AS "P_0", 0.736842 AS "P_1", 1 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.764706 AS "P_0", 0.235294 AS "P_1", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.822222 AS "P_0", 0.177778 AS "P_1", 0 AS "D", 0.822222 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.733333 AS "P_0", 0.266667 AS "P_1", 0 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.863636 AS "P_0", 0.136364 AS "P_1", 0 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.435644 AS "P_0", 0.564356 AS "P_1", 1 AS "D", 0.564356 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.563636 AS "P_0", 0.436364 AS "P_1", 0 AS "D", 0.563636 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.282609 AS "P_0", 0.717391 AS "P_1", 1 AS "D", 0.717391 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.205128 AS "P_0", 0.794872 AS "P_1", 1 AS "D", 0.794872 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.080000 AS "P_0", 0.920000 AS "P_1", 1 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.312500 AS "P_0", 0.687500 AS "P_1", 1 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.551724 AS "P_0", 0.448276 AS "P_1", 0 AS "D", 0.551724 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  0.694444 AS "P_0", 0.305556 AS "P_1", 0 AS "D", 0.694444 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.439024 AS "P_0", 0.560976 AS "P_1", 1 AS "D", 0.560976 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.814815 AS "P_0", 0.185185 AS "P_1", 0 AS "D", 0.814815 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  0.880000 AS "P_0", 0.120000 AS "P_1", 0 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  0.336066 AS "P_0", 0.663934 AS "P_1", 1 AS "D", 0.663934 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  0.738095 AS "P_0", 0.261905 AS "P_1", 0 AS "D", 0.738095 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  0.913043 AS "P_0", 0.086957 AS "P_1", 0 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  0.526316 AS "P_0", 0.473684 AS "P_1", 0 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_8", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_40", t1."Leaf_45", t1."Leaf_46", t1."Leaf_48", t1."Leaf_51", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_59", t1."Leaf_61", t1."Leaf_64", t1."Leaf_65", t1."Leaf_67", t1."Leaf_69", t1."Leaf_70", t1."Leaf_71", t1."Leaf_73", t1."Leaf_75", t1."Leaf_76", t1."Leaf_77", t1."Leaf_80", t1."Leaf_81", t1."Leaf_84", t1."Leaf_85", t1."Leaf_86" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.327763) AND (t."X_4" > 0.887079)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_5" > 0.327763) AND (t."X_4" <= 0.887079) AND (t."X_9" <= -0.207265) AND (t."X_4" > -0.089450)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" > 0.327763) AND (t."X_4" <= 0.887079) AND (t."X_9" <= -0.207265) AND (t."X_4" <= -0.089450) AND (t."X_4" <= -1.864262) AND (t."X_8" <= 0.165865)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" > 0.327763) AND (t."X_4" <= 0.887079) AND (t."X_9" <= -0.207265) AND (t."X_4" <= -0.089450) AND (t."X_4" <= -1.864262) AND (t."X_8" > 0.165865) AND (t."X_9" <= -0.814232)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" > 0.327763) AND (t."X_4" <= 0.887079) AND (t."X_9" <= -0.207265) AND (t."X_4" <= -0.089450) AND (t."X_4" <= -1.864262) AND (t."X_8" > 0.165865) AND (t."X_9" > -0.814232)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" > 0.327763) AND (t."X_4" <= 0.887079) AND (t."X_9" > -0.207265) AND (t."X_9" > 1.091891) AND (t."X_9" <= 1.301131)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" > 0.327763) AND (t."X_4" <= 0.887079) AND (t."X_9" > -0.207265) AND (t."X_9" > 1.091891) AND (t."X_9" > 1.301131)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" > 0.327763) AND (t."X_4" <= 0.887079) AND (t."X_9" > -0.207265) AND (t."X_9" <= 1.091891) AND (t."X_6" > -0.149228)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" > 0.327763) AND (t."X_4" <= 0.887079) AND (t."X_9" > -0.207265) AND (t."X_9" <= 1.091891) AND (t."X_6" <= -0.149228) AND (t."X_5" <= 0.426138)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" > 0.327763) AND (t."X_4" <= 0.887079) AND (t."X_9" > -0.207265) AND (t."X_9" <= 1.091891) AND (t."X_6" <= -0.149228) AND (t."X_5" > 0.426138)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" > 0.327763) AND (t."X_4" <= 0.887079) AND (t."X_9" <= -0.207265) AND (t."X_4" <= -0.089450) AND (t."X_4" > -1.864262) AND (t."X_4" > -1.153428)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" > 0.327763) AND (t."X_4" <= 0.887079) AND (t."X_9" <= -0.207265) AND (t."X_4" <= -0.089450) AND (t."X_4" > -1.864262) AND (t."X_4" <= -1.153428) AND (t."X_7" > 0.010463)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" > 0.327763) AND (t."X_4" <= 0.887079) AND (t."X_9" <= -0.207265) AND (t."X_4" <= -0.089450) AND (t."X_4" > -1.864262) AND (t."X_4" <= -1.153428) AND (t."X_7" <= 0.010463) AND (t."X_5" <= 1.106596)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" > 0.327763) AND (t."X_4" <= 0.887079) AND (t."X_9" <= -0.207265) AND (t."X_4" <= -0.089450) AND (t."X_4" > -1.864262) AND (t."X_4" <= -1.153428) AND (t."X_7" <= 0.010463) AND (t."X_5" > 1.106596) AND (t."X_9" <= -0.907425)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" > 0.327763) AND (t."X_4" <= 0.887079) AND (t."X_9" <= -0.207265) AND (t."X_4" <= -0.089450) AND (t."X_4" > -1.864262) AND (t."X_4" <= -1.153428) AND (t."X_7" <= 0.010463) AND (t."X_5" > 1.106596) AND (t."X_9" > -0.907425)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" <= -1.649415) AND (t."X_6" <= -0.725591)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" <= -1.649415) AND (t."X_6" > -0.725591) AND (t."X_4" <= 1.029480)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" <= -1.649415) AND (t."X_6" > -0.725591) AND (t."X_4" > 1.029480)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" <= -0.501033) AND (t."X_8" > -0.509339)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" <= -0.501033) AND (t."X_8" <= -0.509339) AND (t."X_9" > -0.089706) AND (t."X_9" <= 0.286248) AND (t."X_5" <= -0.978267)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" <= -0.501033) AND (t."X_8" <= -0.509339) AND (t."X_9" > -0.089706) AND (t."X_9" <= 0.286248) AND (t."X_5" > -0.978267)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" <= -0.501033) AND (t."X_8" <= -0.509339) AND (t."X_9" > -0.089706) AND (t."X_9" > 0.286248) AND (t."X_7" > 0.339312)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" <= -0.501033) AND (t."X_8" <= -0.509339) AND (t."X_9" > -0.089706) AND (t."X_9" > 0.286248) AND (t."X_7" <= 0.339312) AND (t."X_5" > -0.495415) AND (t."X_4" <= -0.695473)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" <= -0.501033) AND (t."X_8" <= -0.509339) AND (t."X_9" > -0.089706) AND (t."X_9" > 0.286248) AND (t."X_7" <= 0.339312) AND (t."X_5" > -0.495415) AND (t."X_4" > -0.695473) AND (t."X_7" <= -1.112899)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" <= -0.501033) AND (t."X_8" <= -0.509339) AND (t."X_9" > -0.089706) AND (t."X_9" > 0.286248) AND (t."X_7" <= 0.339312) AND (t."X_5" > -0.495415) AND (t."X_4" > -0.695473) AND (t."X_7" > -1.112899)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" <= -0.501033) AND (t."X_8" <= -0.509339) AND (t."X_9" > -0.089706) AND (t."X_9" > 0.286248) AND (t."X_7" <= 0.339312) AND (t."X_5" <= -0.495415) AND (t."X_7" <= 0.229853)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" <= -0.501033) AND (t."X_8" <= -0.509339) AND (t."X_9" > -0.089706) AND (t."X_9" > 0.286248) AND (t."X_7" <= 0.339312) AND (t."X_5" <= -0.495415) AND (t."X_7" > 0.229853)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" > -0.501033) AND (t."X_6" > -0.302193) AND (t."X_7" <= -1.754110)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" > -0.501033) AND (t."X_6" > -0.302193) AND (t."X_7" > -1.754110) AND (t."X_4" <= -0.484159)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" > -0.501033) AND (t."X_6" > -0.302193) AND (t."X_7" > -1.754110) AND (t."X_4" > -0.484159) AND (t."X_8" > 0.526519)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" > -0.501033) AND (t."X_6" > -0.302193) AND (t."X_7" > -1.754110) AND (t."X_4" > -0.484159) AND (t."X_8" <= 0.526519) AND (t."X_6" <= -0.221156)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" > -0.501033) AND (t."X_6" > -0.302193) AND (t."X_7" > -1.754110) AND (t."X_4" > -0.484159) AND (t."X_8" <= 0.526519) AND (t."X_6" > -0.221156) AND (t."X_8" <= 0.361611)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" > -0.501033) AND (t."X_6" > -0.302193) AND (t."X_7" > -1.754110) AND (t."X_4" > -0.484159) AND (t."X_8" <= 0.526519) AND (t."X_6" > -0.221156) AND (t."X_8" > 0.361611) AND (t."X_4" <= 1.167943)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" > -0.501033) AND (t."X_6" > -0.302193) AND (t."X_7" > -1.754110) AND (t."X_4" > -0.484159) AND (t."X_8" <= 0.526519) AND (t."X_6" > -0.221156) AND (t."X_8" > 0.361611) AND (t."X_4" > 1.167943)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" <= -0.501033) AND (t."X_8" <= -0.509339) AND (t."X_9" <= -0.089706) AND (t."X_5" <= -0.332579)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" <= -0.501033) AND (t."X_8" <= -0.509339) AND (t."X_9" <= -0.089706) AND (t."X_5" > -0.332579) AND (t."X_9" <= -0.489092)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" <= -0.501033) AND (t."X_8" <= -0.509339) AND (t."X_9" <= -0.089706) AND (t."X_5" > -0.332579) AND (t."X_9" > -0.489092) AND (t."X_5" <= -0.191256)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" <= -0.501033) AND (t."X_8" <= -0.509339) AND (t."X_9" <= -0.089706) AND (t."X_5" > -0.332579) AND (t."X_9" > -0.489092) AND (t."X_5" > -0.191256)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" > -0.501033) AND (t."X_6" <= -0.302193) AND (t."X_4" <= 0.138452)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" > -0.501033) AND (t."X_6" <= -0.302193) AND (t."X_4" > 0.138452) AND (t."X_7" > 1.791976)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" > -0.501033) AND (t."X_6" <= -0.302193) AND (t."X_4" > 0.138452) AND (t."X_7" <= 1.791976) AND (t."X_4" <= 0.300507)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" > -0.501033) AND (t."X_6" <= -0.302193) AND (t."X_4" > 0.138452) AND (t."X_7" <= 1.791976) AND (t."X_4" > 0.300507) AND (t."X_8" > -0.205219)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" > -0.501033) AND (t."X_6" <= -0.302193) AND (t."X_4" > 0.138452) AND (t."X_7" <= 1.791976) AND (t."X_4" > 0.300507) AND (t."X_8" <= -0.205219) AND (t."X_4" <= 0.566404)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_5" <= 0.327763) AND (t."X_9" > -1.649415) AND (t."X_8" > -0.501033) AND (t."X_6" <= -0.302193) AND (t."X_4" > 0.138452) AND (t."X_7" <= 1.791976) AND (t."X_4" > 0.300507) AND (t."X_8" <= -0.205219) AND (t."X_4" > 0.566404)) THEN 86 ELSE NULL END AS "Leaf_86"
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
    SELECT 0 AS nid,  0.527344 AS "P_0", 0.472656 AS "P_1", 0 AS "D", 0.527344 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.861017 AS "P_0", 0.138983 AS "P_1", 0 AS "D", 0.861017 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.073733 AS "P_0", 0.926267 AS "P_1", 1 AS "D", 0.926267 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.148148 AS "P_0", 0.851852 AS "P_1", 1 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.255814 AS "P_0", 0.744186 AS "P_1", 1 AS "D", 0.744186 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.179487 AS "P_0", 0.820513 AS "P_1", 1 AS "D", 0.820513 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.019231 AS "P_0", 0.980769 AS "P_1", 1 AS "D", 0.980769 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.562500 AS "P_0", 0.437500 AS "P_1", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.878136 AS "P_0", 0.121864 AS "P_1", 0 AS "D", 0.878136 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.919192 AS "P_0", 0.080808 AS "P_1", 0 AS "D", 0.919192 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.807692 AS "P_0", 0.192308 AS "P_1", 0 AS "D", 0.807692 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.965517 AS "P_0", 0.034483 AS "P_1", 0 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.384615 AS "P_0", 0.615385 AS "P_1", 1 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.965517 AS "P_0", 0.034483 AS "P_1", 0 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.792453 AS "P_0", 0.207547 AS "P_1", 0 AS "D", 0.792453 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.807692 AS "P_0", 0.192308 AS "P_1", 0 AS "D", 0.807692 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.840000 AS "P_0", 0.160000 AS "P_1", 0 AS "D", 0.840000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.771429 AS "P_0", 0.228571 AS "P_1", 0 AS "D", 0.771429 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.912281 AS "P_0", 0.087719 AS "P_1", 0 AS "D", 0.912281 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.981132 AS "P_0", 0.018868 AS "P_1", 0 AS "D", 0.981132 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_18", t1."Leaf_20", t1."Leaf_23", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_43", t1."Leaf_47", t1."Leaf_50", t1."Leaf_51", t1."Leaf_53", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_60", t1."Leaf_63", t1."Leaf_64", t1."Leaf_66", t1."Leaf_67", t1."Leaf_68", t1."Leaf_70", t1."Leaf_73", t1."Leaf_74", t1."Leaf_76", t1."Leaf_77", t1."Leaf_78", t1."Leaf_79", t1."Leaf_81", t1."Leaf_83", t1."Leaf_85", t1."Leaf_86" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" > 2.237144) AND (t."X_5" <= -0.075906)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" > 2.237144) AND (t."X_5" > -0.075906)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" <= -2.421466)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" <= -1.649415) AND (t."X_8" > 1.019472)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" <= -1.649415) AND (t."X_8" <= 1.019472) AND (t."X_9" <= -2.273813)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" <= -1.649415) AND (t."X_8" <= 1.019472) AND (t."X_9" > -2.273813)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" <= 0.937248) AND (t."X_5" > 0.925127)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" <= 0.937248) AND (t."X_5" <= 0.925127) AND (t."X_8" > 0.327484)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" <= 0.937248) AND (t."X_5" <= 0.925127) AND (t."X_8" <= 0.327484) AND (t."X_8" > -0.102975) AND (t."X_7" <= -0.469619)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" <= 0.937248) AND (t."X_5" <= 0.925127) AND (t."X_8" <= 0.327484) AND (t."X_8" > -0.102975) AND (t."X_7" > -0.469619) AND (t."X_9" > 0.515284)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" <= 0.937248) AND (t."X_5" <= 0.925127) AND (t."X_8" <= 0.327484) AND (t."X_8" > -0.102975) AND (t."X_7" > -0.469619) AND (t."X_9" <= 0.515284) AND (t."X_9" > -0.781738)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" <= 0.937248) AND (t."X_5" <= 0.925127) AND (t."X_8" <= 0.327484) AND (t."X_8" > -0.102975) AND (t."X_7" > -0.469619) AND (t."X_9" <= 0.515284) AND (t."X_9" <= -0.781738) AND (t."X_7" <= -0.011634)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" <= 0.937248) AND (t."X_5" <= 0.925127) AND (t."X_8" <= 0.327484) AND (t."X_8" > -0.102975) AND (t."X_7" > -0.469619) AND (t."X_9" <= 0.515284) AND (t."X_9" <= -0.781738) AND (t."X_7" > -0.011634)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" <= 0.937248) AND (t."X_5" <= 0.925127) AND (t."X_8" <= 0.327484) AND (t."X_8" <= -0.102975) AND (t."X_7" <= -0.632526) AND (t."X_7" <= -0.801409)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" <= 0.937248) AND (t."X_5" <= 0.925127) AND (t."X_8" <= 0.327484) AND (t."X_8" <= -0.102975) AND (t."X_7" <= -0.632526) AND (t."X_7" > -0.801409)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" <= 0.937248) AND (t."X_5" <= 0.925127) AND (t."X_8" <= 0.327484) AND (t."X_8" <= -0.102975) AND (t."X_7" > -0.632526) AND (t."X_8" <= -2.958045)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" <= 0.937248) AND (t."X_5" <= 0.925127) AND (t."X_8" <= 0.327484) AND (t."X_8" <= -0.102975) AND (t."X_7" > -0.632526) AND (t."X_8" > -2.958045) AND (t."X_9" > -0.865629)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" <= 0.937248) AND (t."X_5" <= 0.925127) AND (t."X_8" <= 0.327484) AND (t."X_8" <= -0.102975) AND (t."X_7" > -0.632526) AND (t."X_8" > -2.958045) AND (t."X_9" <= -0.865629) AND (t."X_9" <= -0.945451)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" <= 0.937248) AND (t."X_5" <= 0.925127) AND (t."X_8" <= 0.327484) AND (t."X_8" <= -0.102975) AND (t."X_7" > -0.632526) AND (t."X_8" > -2.958045) AND (t."X_9" <= -0.865629) AND (t."X_9" > -0.945451)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" > -0.020764) AND (t."X_7" <= -0.001129)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" > -0.020764) AND (t."X_7" > -0.001129) AND (t."X_5" > -0.486023) AND (t."X_5" <= -0.459545)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" > -0.020764) AND (t."X_7" > -0.001129) AND (t."X_5" > -0.486023) AND (t."X_5" > -0.459545) AND (t."X_9" > 0.872045)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" > -0.020764) AND (t."X_7" > -0.001129) AND (t."X_5" > -0.486023) AND (t."X_5" > -0.459545) AND (t."X_9" <= 0.872045) AND (t."X_9" <= -0.319827)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" > -0.020764) AND (t."X_7" > -0.001129) AND (t."X_5" > -0.486023) AND (t."X_5" > -0.459545) AND (t."X_9" <= 0.872045) AND (t."X_9" > -0.319827) AND (t."X_7" <= 1.304093)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" > -0.020764) AND (t."X_7" > -0.001129) AND (t."X_5" > -0.486023) AND (t."X_5" > -0.459545) AND (t."X_9" <= 0.872045) AND (t."X_9" > -0.319827) AND (t."X_7" > 1.304093) AND (t."X_5" <= -0.250563)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" > -0.020764) AND (t."X_7" > -0.001129) AND (t."X_5" > -0.486023) AND (t."X_5" > -0.459545) AND (t."X_9" <= 0.872045) AND (t."X_9" > -0.319827) AND (t."X_7" > 1.304093) AND (t."X_5" > -0.250563)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" > -0.020764) AND (t."X_7" > -0.001129) AND (t."X_5" <= -0.486023) AND (t."X_5" <= -1.218507)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" > -0.020764) AND (t."X_7" > -0.001129) AND (t."X_5" <= -0.486023) AND (t."X_5" > -1.218507) AND (t."X_7" > 1.409767)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" > -0.020764) AND (t."X_7" > -0.001129) AND (t."X_5" <= -0.486023) AND (t."X_5" > -1.218507) AND (t."X_7" <= 1.409767) AND (t."X_5" <= -1.184786) AND (t."X_7" <= 0.251465)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" > -0.020764) AND (t."X_7" > -0.001129) AND (t."X_5" <= -0.486023) AND (t."X_5" > -1.218507) AND (t."X_7" <= 1.409767) AND (t."X_5" <= -1.184786) AND (t."X_7" > 0.251465)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" > -0.020764) AND (t."X_7" > -0.001129) AND (t."X_5" <= -0.486023) AND (t."X_5" > -1.218507) AND (t."X_7" <= 1.409767) AND (t."X_5" > -1.184786) AND (t."X_7" > 1.382199)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" > -0.020764) AND (t."X_7" > -0.001129) AND (t."X_5" <= -0.486023) AND (t."X_5" > -1.218507) AND (t."X_7" <= 1.409767) AND (t."X_5" > -1.184786) AND (t."X_7" <= 1.382199) AND (t."X_7" <= 0.230382)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" > -0.020764) AND (t."X_7" > -0.001129) AND (t."X_5" <= -0.486023) AND (t."X_5" > -1.218507) AND (t."X_7" <= 1.409767) AND (t."X_5" > -1.184786) AND (t."X_7" <= 1.382199) AND (t."X_7" > 0.230382)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" > 0.937248) AND (t."X_8" > 0.255879)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" > 0.937248) AND (t."X_8" <= 0.255879) AND (t."X_8" > 0.165865) AND (t."X_7" <= 0.441307)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" > 0.937248) AND (t."X_8" <= 0.255879) AND (t."X_8" > 0.165865) AND (t."X_7" > 0.441307)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" > 0.937248) AND (t."X_8" <= 0.255879) AND (t."X_8" <= 0.165865) AND (t."X_5" > 1.034778)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" > 0.937248) AND (t."X_8" <= 0.255879) AND (t."X_8" <= 0.165865) AND (t."X_5" <= 1.034778) AND (t."X_8" <= -1.674087)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_5" > 0.202410) AND (t."X_5" > 0.937248) AND (t."X_8" <= 0.255879) AND (t."X_8" <= 0.165865) AND (t."X_5" <= 1.034778) AND (t."X_8" > -1.674087)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" <= -0.020764) AND (t."X_8" <= -0.229911)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" <= -0.020764) AND (t."X_8" > -0.229911) AND (t."X_8" <= -0.189540)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" <= -0.020764) AND (t."X_8" > -0.229911) AND (t."X_8" > -0.189540) AND (t."X_7" <= -0.410986)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" <= -0.020764) AND (t."X_8" > -0.229911) AND (t."X_8" > -0.189540) AND (t."X_7" > -0.410986) AND (t."X_7" <= -0.400581)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_5" <= 0.202410) AND (t."X_9" <= 2.237144) AND (t."X_7" > -2.421466) AND (t."X_9" > -1.649415) AND (t."X_7" <= -0.020764) AND (t."X_8" > -0.229911) AND (t."X_8" > -0.189540) AND (t."X_7" > -0.410986) AND (t."X_7" > -0.400581)) THEN 86 ELSE NULL END AS "Leaf_86"
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
    SELECT 0 AS nid,  0.462891 AS "P_0", 0.537109 AS "P_1", 1 AS "D", 0.537109 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.826255 AS "P_0", 0.173745 AS "P_1", 0 AS "D", 0.826255 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.851406 AS "P_0", 0.148594 AS "P_1", 0 AS "D", 0.851406 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.865306 AS "P_0", 0.134694 AS "P_1", 0 AS "D", 0.865306 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.887446 AS "P_0", 0.112554 AS "P_1", 0 AS "D", 0.887446 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.204301 AS "P_0", 0.795699 AS "P_1", 1 AS "D", 0.795699 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.025000 AS "P_0", 0.975000 AS "P_1", 1 AS "D", 0.975000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.168539 AS "P_0", 0.831461 AS "P_1", 1 AS "D", 0.831461 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.137255 AS "P_0", 0.862745 AS "P_1", 1 AS "D", 0.862745 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.078947 AS "P_0", 0.921053 AS "P_1", 1 AS "D", 0.921053 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.054054 AS "P_0", 0.945946 AS "P_1", 1 AS "D", 0.945946 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.978495 AS "P_0", 0.021505 AS "P_1", 0 AS "D", 0.978495 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.826087 AS "P_0", 0.173913 AS "P_1", 0 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.844444 AS "P_0", 0.155556 AS "P_1", 0 AS "D", 0.844444 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.910891 AS "P_0", 0.089109 AS "P_1", 0 AS "D", 0.910891 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.647059 AS "P_0", 0.352941 AS "P_1", 0 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.758621 AS "P_0", 0.241379 AS "P_1", 0 AS "D", 0.758621 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.880000 AS "P_0", 0.120000 AS "P_1", 0 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.836364 AS "P_0", 0.163636 AS "P_1", 0 AS "D", 0.836364 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.756757 AS "P_0", 0.243243 AS "P_1", 0 AS "D", 0.756757 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.838710 AS "P_0", 0.161290 AS "P_1", 0 AS "D", 0.838710 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.896552 AS "P_0", 0.103448 AS "P_1", 0 AS "D", 0.896552 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.042553 AS "P_0", 0.957447 AS "P_1", 1 AS "D", 0.957447 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.011236 AS "P_0", 0.988764 AS "P_1", 1 AS "D", 0.988764 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.962264 AS "P_0", 0.037736 AS "P_1", 0 AS "D", 0.962264 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.980769 AS "P_0", 0.019231 AS "P_1", 0 AS "D", 0.980769 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_7", t1."Leaf_9", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_27", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_57", t1."Leaf_59", t1."Leaf_60", t1."Leaf_61", t1."Leaf_65", t1."Leaf_66", t1."Leaf_67", t1."Leaf_68", t1."Leaf_71", t1."Leaf_72", t1."Leaf_73", t1."Leaf_75", t1."Leaf_76", t1."Leaf_77", t1."Leaf_79", t1."Leaf_80" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= -0.532534)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" <= -2.653227)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" <= -1.468668)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" <= -2.167241)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" > 0.369093) AND (t."X_2" > 0.754092) AND (t."X_2" <= 0.802580)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" > 0.369093) AND (t."X_2" > 0.754092) AND (t."X_2" > 0.802580)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" > 0.369093) AND (t."X_2" <= 0.754092) AND (t."X_9" > 2.214484) AND (t."X_7" <= 0.620915)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" > 0.369093) AND (t."X_2" <= 0.754092) AND (t."X_9" > 2.214484) AND (t."X_7" > 0.620915)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" <= 0.165865) AND (t."X_9" <= -0.429724) AND (t."X_8" > -0.234534) AND (t."X_7" <= -1.684464)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" <= 0.165865) AND (t."X_9" <= -0.429724) AND (t."X_8" <= -0.234534) AND (t."X_7" > 2.122220)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" <= 0.165865) AND (t."X_9" <= -0.429724) AND (t."X_8" <= -0.234534) AND (t."X_7" <= 2.122220) AND (t."X_2" <= -0.003723)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" <= 0.165865) AND (t."X_9" <= -0.429724) AND (t."X_8" <= -0.234534) AND (t."X_7" <= 2.122220) AND (t."X_2" > -0.003723) AND (t."X_8" <= -0.465431)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" <= 0.165865) AND (t."X_9" <= -0.429724) AND (t."X_8" <= -0.234534) AND (t."X_7" <= 2.122220) AND (t."X_2" > -0.003723) AND (t."X_8" > -0.465431)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" <= 0.165865) AND (t."X_9" <= -0.429724) AND (t."X_8" > -0.234534) AND (t."X_7" > -1.684464) AND (t."X_9" <= -0.755435)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" <= 0.165865) AND (t."X_9" <= -0.429724) AND (t."X_8" > -0.234534) AND (t."X_7" > -1.684464) AND (t."X_9" > -0.755435) AND (t."X_7" <= -0.069784)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" <= 0.165865) AND (t."X_9" <= -0.429724) AND (t."X_8" > -0.234534) AND (t."X_7" > -1.684464) AND (t."X_9" > -0.755435) AND (t."X_7" > -0.069784)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" <= 0.165865) AND (t."X_9" > -0.429724) AND (t."X_7" <= 0.467827) AND (t."X_8" > -0.141467) AND (t."X_9" <= 0.306909)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" <= 0.165865) AND (t."X_9" > -0.429724) AND (t."X_7" <= 0.467827) AND (t."X_8" > -0.141467) AND (t."X_9" > 0.306909)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" <= 0.165865) AND (t."X_9" > -0.429724) AND (t."X_7" > 0.467827) AND (t."X_7" <= 1.491662)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" <= 0.165865) AND (t."X_9" > -0.429724) AND (t."X_7" > 0.467827) AND (t."X_7" > 1.491662) AND (t."X_8" <= -1.103640)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" <= 0.165865) AND (t."X_9" > -0.429724) AND (t."X_7" > 0.467827) AND (t."X_7" > 1.491662) AND (t."X_8" > -1.103640)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" <= 0.165865) AND (t."X_9" > -0.429724) AND (t."X_7" <= 0.467827) AND (t."X_8" <= -0.141467) AND (t."X_7" > 0.350715)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" <= 0.165865) AND (t."X_9" > -0.429724) AND (t."X_7" <= 0.467827) AND (t."X_8" <= -0.141467) AND (t."X_7" <= 0.350715) AND (t."X_2" <= -0.053728)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" <= 0.165865) AND (t."X_9" > -0.429724) AND (t."X_7" <= 0.467827) AND (t."X_8" <= -0.141467) AND (t."X_7" <= 0.350715) AND (t."X_2" > -0.053728)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" > 0.165865) AND (t."X_9" <= -1.300514)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" > 0.165865) AND (t."X_9" > -1.300514) AND (t."X_8" <= 0.271441) AND (t."X_7" <= 0.794253)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" > 0.165865) AND (t."X_9" > -1.300514) AND (t."X_8" <= 0.271441) AND (t."X_7" > 0.794253) AND (t."X_7" <= 1.144499)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" > 0.165865) AND (t."X_9" > -1.300514) AND (t."X_8" <= 0.271441) AND (t."X_7" > 0.794253) AND (t."X_7" > 1.144499)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" > 0.165865) AND (t."X_9" > -1.300514) AND (t."X_8" > 0.271441) AND (t."X_8" <= 0.340619)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" > 0.165865) AND (t."X_9" > -1.300514) AND (t."X_8" > 0.271441) AND (t."X_8" > 0.340619) AND (t."X_7" <= 0.371802) AND (t."X_9" <= -0.885297)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" > 0.165865) AND (t."X_9" > -1.300514) AND (t."X_8" > 0.271441) AND (t."X_8" > 0.340619) AND (t."X_7" <= 0.371802) AND (t."X_9" > -0.885297)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" > 0.165865) AND (t."X_9" > -1.300514) AND (t."X_8" > 0.271441) AND (t."X_8" > 0.340619) AND (t."X_7" > 0.371802) AND (t."X_9" <= 1.406916)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" <= 0.369093) AND (t."X_8" > 0.165865) AND (t."X_9" > -1.300514) AND (t."X_8" > 0.271441) AND (t."X_8" > 0.340619) AND (t."X_7" > 0.371802) AND (t."X_9" > 1.406916)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" > 0.369093) AND (t."X_2" <= 0.754092) AND (t."X_9" <= 2.214484) AND (t."X_8" <= -1.407025) AND (t."X_7" <= -1.306948)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" > 0.369093) AND (t."X_2" <= 0.754092) AND (t."X_9" <= 2.214484) AND (t."X_8" <= -1.407025) AND (t."X_7" > -1.306948)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" > 0.369093) AND (t."X_2" <= 0.754092) AND (t."X_9" <= 2.214484) AND (t."X_8" > -1.407025) AND (t."X_7" <= 1.866640)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" > 0.369093) AND (t."X_2" <= 0.754092) AND (t."X_9" <= 2.214484) AND (t."X_8" > -1.407025) AND (t."X_7" > 1.866640) AND (t."X_7" <= 2.295383)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" <= 0.854495) AND (t."X_9" > -1.468668) AND (t."X_8" > -2.167241) AND (t."X_2" > 0.369093) AND (t."X_2" <= 0.754092) AND (t."X_9" <= 2.214484) AND (t."X_8" > -1.407025) AND (t."X_7" > 1.866640) AND (t."X_7" > 2.295383)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" > 0.854495) AND (t."X_7" <= 0.993293)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" > 0.854495) AND (t."X_7" > 0.993293) AND (t."X_7" <= 1.104311)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_2" > -0.532534) AND (t."X_9" > -2.653227) AND (t."X_2" > 0.854495) AND (t."X_7" > 0.993293) AND (t."X_7" > 1.104311)) THEN 80 ELSE NULL END AS "Leaf_80"
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
    SELECT 0 AS nid,  0.531250 AS "P_0", 0.468750 AS "P_1", 0 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.386189 AS "P_0", 0.613811 AS "P_1", 1 AS "D", 0.613811 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.376623 AS "P_0", 0.623377 AS "P_1", 1 AS "D", 0.623377 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.509025 AS "P_0", 0.490975 AS "P_1", 0 AS "D", 0.509025 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.037037 AS "P_0", 0.962963 AS "P_1", 1 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.530075 AS "P_0", 0.469925 AS "P_1", 0 AS "D", 0.530075 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.515504 AS "P_0", 0.484496 AS "P_1", 0 AS "D", 0.515504 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.450237 AS "P_0", 0.549763 AS "P_1", 1 AS "D", 0.549763 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.808511 AS "P_0", 0.191489 AS "P_1", 0 AS "D", 0.808511 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.945946 AS "P_0", 0.054054 AS "P_1", 0 AS "D", 0.945946 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.341880 AS "P_0", 0.658120 AS "P_1", 1 AS "D", 0.658120 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.585106 AS "P_0", 0.414894 AS "P_1", 0 AS "D", 0.585106 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.246914 AS "P_0", 0.753086 AS "P_1", 1 AS "D", 0.753086 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.692308 AS "P_0", 0.307692 AS "P_1", 0 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.782609 AS "P_0", 0.217391 AS "P_1", 0 AS "D", 0.782609 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.074074 AS "P_0", 0.925926 AS "P_1", 1 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.239130 AS "P_0", 0.760870 AS "P_1", 1 AS "D", 0.760870 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
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
    UNION ALL
    SELECT 49 AS nid,  0.204545 AS "P_0", 0.795455 AS "P_1", 1 AS "D", 0.795455 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.107143 AS "P_0", 0.892857 AS "P_1", 1 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.551724 AS "P_0", 0.448276 AS "P_1", 0 AS "D", 0.551724 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.518519 AS "P_0", 0.481481 AS "P_1", 0 AS "D", 0.518519 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.342857 AS "P_0", 0.657143 AS "P_1", 1 AS "D", 0.657143 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.842105 AS "P_0", 0.157895 AS "P_1", 0 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.480000 AS "P_0", 0.520000 AS "P_1", 1 AS "D", 0.520000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.971429 AS "P_0", 0.028571 AS "P_1", 0 AS "D", 0.971429 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48", t1."Leaf_51", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58", t1."Leaf_61", t1."Leaf_63", t1."Leaf_64", t1."Leaf_65", t1."Leaf_67", t1."Leaf_68", t1."Leaf_70", t1."Leaf_71", t1."Leaf_72", t1."Leaf_74", t1."Leaf_75", t1."Leaf_76" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" > -0.452320) AND (t."X_2" > -0.102964) AND (t."X_6" > 0.304797) AND (t."X_6" <= 0.587246)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" > -0.452320) AND (t."X_2" > -0.102964) AND (t."X_6" > 0.304797) AND (t."X_6" > 0.587246) AND (t."X_9" <= -0.778315)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" > -0.452320) AND (t."X_2" > -0.102964) AND (t."X_6" > 0.304797) AND (t."X_6" > 0.587246) AND (t."X_9" > -0.778315) AND (t."X_2" <= 0.281744)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" > -0.452320) AND (t."X_2" > -0.102964) AND (t."X_6" > 0.304797) AND (t."X_6" > 0.587246) AND (t."X_9" > -0.778315) AND (t."X_2" > 0.281744)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" > -0.452320) AND (t."X_2" > -0.102964) AND (t."X_6" <= 0.304797) AND (t."X_7" <= 0.200188)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" > -0.452320) AND (t."X_2" > -0.102964) AND (t."X_6" <= 0.304797) AND (t."X_7" > 0.200188) AND (t."X_7" <= 0.334565)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" > -0.452320) AND (t."X_2" > -0.102964) AND (t."X_6" <= 0.304797) AND (t."X_7" > 0.200188) AND (t."X_7" > 0.334565) AND (t."X_3" > 1.059758) AND (t."X_6" <= -0.086167)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" > -0.452320) AND (t."X_2" > -0.102964) AND (t."X_6" <= 0.304797) AND (t."X_7" > 0.200188) AND (t."X_7" > 0.334565) AND (t."X_3" > 1.059758) AND (t."X_6" > -0.086167)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" > -0.452320) AND (t."X_2" > -0.102964) AND (t."X_6" <= 0.304797) AND (t."X_7" > 0.200188) AND (t."X_7" > 0.334565) AND (t."X_3" <= 1.059758) AND (t."X_8" > 0.535214)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" > -0.452320) AND (t."X_2" > -0.102964) AND (t."X_6" <= 0.304797) AND (t."X_7" > 0.200188) AND (t."X_7" > 0.334565) AND (t."X_3" <= 1.059758) AND (t."X_8" <= 0.535214) AND (t."X_9" <= 0.195135)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" > -0.452320) AND (t."X_2" > -0.102964) AND (t."X_6" <= 0.304797) AND (t."X_7" > 0.200188) AND (t."X_7" > 0.334565) AND (t."X_3" <= 1.059758) AND (t."X_8" <= 0.535214) AND (t."X_9" > 0.195135)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" > -0.452320) AND (t."X_2" <= -0.102964) AND (t."X_8" <= 0.203622)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" > -0.452320) AND (t."X_2" <= -0.102964) AND (t."X_8" > 0.203622) AND (t."X_3" > 0.920998)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" > -0.452320) AND (t."X_2" <= -0.102964) AND (t."X_8" > 0.203622) AND (t."X_3" <= 0.920998) AND (t."X_8" > 0.337668)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" > -0.452320) AND (t."X_2" <= -0.102964) AND (t."X_8" > 0.203622) AND (t."X_3" <= 0.920998) AND (t."X_8" <= 0.337668) AND (t."X_6" <= 0.045775)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" > -0.452320) AND (t."X_2" <= -0.102964) AND (t."X_8" > 0.203622) AND (t."X_3" <= 0.920998) AND (t."X_8" <= 0.337668) AND (t."X_6" > 0.045775)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" <= -0.452320) AND (t."X_8" <= -1.583302) AND (t."X_8" > -1.892262)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" <= -0.452320) AND (t."X_8" <= -1.583302) AND (t."X_8" <= -1.892262) AND (t."X_9" <= -0.142339)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" <= -0.452320) AND (t."X_8" <= -1.583302) AND (t."X_8" <= -1.892262) AND (t."X_9" > -0.142339)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" <= -0.452320) AND (t."X_8" > -1.583302) AND (t."X_2" <= 0.233084)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" <= -0.452320) AND (t."X_8" > -1.583302) AND (t."X_2" > 0.233084) AND (t."X_6" > 0.477711)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" <= -0.452320) AND (t."X_8" > -1.583302) AND (t."X_2" > 0.233084) AND (t."X_6" <= 0.477711) AND (t."X_9" <= -1.504744)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" <= 0.863791) AND (t."X_8" <= -0.452320) AND (t."X_8" > -1.583302) AND (t."X_2" > 0.233084) AND (t."X_6" <= 0.477711) AND (t."X_9" > -1.504744)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_8" <= 0.071613) AND (t."X_2" <= -0.537820)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_8" <= 0.071613) AND (t."X_2" > -0.537820) AND (t."X_2" <= -0.449752) AND (t."X_8" > -0.701884)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_8" <= 0.071613) AND (t."X_2" > -0.537820) AND (t."X_2" <= -0.449752) AND (t."X_8" <= -0.701884) AND (t."X_7" <= -0.399908)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_8" <= 0.071613) AND (t."X_2" > -0.537820) AND (t."X_2" <= -0.449752) AND (t."X_8" <= -0.701884) AND (t."X_7" > -0.399908)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_8" <= 0.071613) AND (t."X_2" > -0.537820) AND (t."X_2" > -0.449752) AND (t."X_6" > -0.389517) AND (t."X_9" <= 0.140321)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_8" <= 0.071613) AND (t."X_2" > -0.537820) AND (t."X_2" > -0.449752) AND (t."X_6" > -0.389517) AND (t."X_9" > 0.140321) AND (t."X_6" <= -0.338808)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_8" <= 0.071613) AND (t."X_2" > -0.537820) AND (t."X_2" > -0.449752) AND (t."X_6" > -0.389517) AND (t."X_9" > 0.140321) AND (t."X_6" > -0.338808)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_8" <= 0.071613) AND (t."X_2" > -0.537820) AND (t."X_2" > -0.449752) AND (t."X_6" <= -0.389517) AND (t."X_6" <= -0.543798)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_8" <= 0.071613) AND (t."X_2" > -0.537820) AND (t."X_2" > -0.449752) AND (t."X_6" <= -0.389517) AND (t."X_6" > -0.543798) AND (t."X_9" <= -1.197760)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_8" <= 0.071613) AND (t."X_2" > -0.537820) AND (t."X_2" > -0.449752) AND (t."X_6" <= -0.389517) AND (t."X_6" > -0.543798) AND (t."X_9" > -1.197760)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" > 0.863791) AND (t."X_3" > -1.654672)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" > 0.863791) AND (t."X_3" <= -1.654672) AND (t."X_6" <= 1.452331)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_6" > 0.863791) AND (t."X_3" <= -1.654672) AND (t."X_6" > 1.452331)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_8" > 0.071613) AND (t."X_8" > 0.546517)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_8" > 0.071613) AND (t."X_8" <= 0.546517) AND (t."X_8" <= 0.434542)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_8" > 0.071613) AND (t."X_8" <= 0.546517) AND (t."X_8" > 0.434542)) THEN 76 ELSE NULL END AS "Leaf_76"
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
    SELECT 0 AS nid,  0.478516 AS "P_0", 0.521484 AS "P_1", 1 AS "D", 0.521484 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.936508 AS "P_0", 0.063492 AS "P_1", 0 AS "D", 0.936508 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.210526 AS "P_0", 0.789474 AS "P_1", 1 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.366120 AS "P_0", 0.633880 AS "P_1", 1 AS "D", 0.633880 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.007143 AS "P_0", 0.992857 AS "P_1", 1 AS "D", 0.992857 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.211268 AS "P_0", 0.788732 AS "P_1", 1 AS "D", 0.788732 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.464286 AS "P_0", 0.535714 AS "P_1", 1 AS "D", 0.535714 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.357143 AS "P_0", 0.642857 AS "P_1", 1 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.611111 AS "P_0", 0.388889 AS "P_1", 0 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.280000 AS "P_0", 0.720000 AS "P_1", 1 AS "D", 0.720000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.157895 AS "P_0", 0.842105 AS "P_1", 1 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.895238 AS "P_0", 0.104762 AS "P_1", 0 AS "D", 0.895238 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.988095 AS "P_0", 0.011905 AS "P_1", 0 AS "D", 0.988095 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.755556 AS "P_0", 0.244444 AS "P_1", 0 AS "D", 0.755556 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.885714 AS "P_0", 0.114286 AS "P_1", 0 AS "D", 0.885714 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.958333 AS "P_0", 0.041667 AS "P_1", 0 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.970588 AS "P_0", 0.029412 AS "P_1", 0 AS "D", 0.970588 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_60", t1."Leaf_64", t1."Leaf_66", t1."Leaf_69", t1."Leaf_70", t1."Leaf_73", t1."Leaf_77", t1."Leaf_78", t1."Leaf_79", t1."Leaf_80", t1."Leaf_82", t1."Leaf_84", t1."Leaf_85", t1."Leaf_86", t1."Leaf_89", t1."Leaf_90", t1."Leaf_95", t1."Leaf_97", t1."Leaf_99", t1."Leaf_102", t1."Leaf_103", t1."Leaf_105", t1."Leaf_106", t1."Leaf_109", t1."Leaf_110", t1."Leaf_111", t1."Leaf_112", t1."Leaf_113", t1."Leaf_115", t1."Leaf_116", t1."Leaf_118", t1."Leaf_119", t1."Leaf_121", t1."Leaf_124", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" > 1.134388) AND (t."X_3" > 1.508314) AND (t."X_3" <= 1.699497)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" > 1.134388) AND (t."X_3" > 1.508314) AND (t."X_3" > 1.699497) AND (t."X_8" <= -0.412463)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_3" > 1.134388) AND (t."X_3" > 1.508314) AND (t."X_3" > 1.699497) AND (t."X_8" > -0.412463) AND (t."X_0" <= 0.171955)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" > 1.134388) AND (t."X_3" > 1.508314) AND (t."X_3" > 1.699497) AND (t."X_8" > -0.412463) AND (t."X_0" > 0.171955)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" > 1.134388) AND (t."X_3" <= 1.508314) AND (t."X_7" > 1.716145)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_3" > 1.134388) AND (t."X_3" <= 1.508314) AND (t."X_7" <= 1.716145) AND (t."X_7" <= 0.073925)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_3" > 1.134388) AND (t."X_3" <= 1.508314) AND (t."X_7" <= 1.716145) AND (t."X_7" > 0.073925) AND (t."X_0" > 0.816700)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_3" > 1.134388) AND (t."X_3" <= 1.508314) AND (t."X_7" <= 1.716145) AND (t."X_7" > 0.073925) AND (t."X_0" <= 0.816700) AND (t."X_9" <= 0.057098)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_3" > 1.134388) AND (t."X_3" <= 1.508314) AND (t."X_7" <= 1.716145) AND (t."X_7" > 0.073925) AND (t."X_0" <= 0.816700) AND (t."X_9" > 0.057098) AND (t."X_0" <= -0.384776)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_3" > 1.134388) AND (t."X_3" <= 1.508314) AND (t."X_7" <= 1.716145) AND (t."X_7" > 0.073925) AND (t."X_0" <= 0.816700) AND (t."X_9" > 0.057098) AND (t."X_0" > -0.384776)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" > 1.116809) AND (t."X_1" <= -1.750861)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" > 1.116809) AND (t."X_1" > -1.750861) AND (t."X_8" > 1.125616) AND (t."X_8" <= 1.612955)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" > 1.116809) AND (t."X_1" > -1.750861) AND (t."X_8" > 1.125616) AND (t."X_8" > 1.612955)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" > 1.116809) AND (t."X_1" > -1.750861) AND (t."X_8" <= 1.125616) AND (t."X_1" <= -0.541234) AND (t."X_3" <= -0.157757)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" > 1.116809) AND (t."X_1" > -1.750861) AND (t."X_8" <= 1.125616) AND (t."X_1" <= -0.541234) AND (t."X_3" > -0.157757) AND (t."X_1" <= -1.615247)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" > 1.116809) AND (t."X_1" > -1.750861) AND (t."X_8" <= 1.125616) AND (t."X_1" <= -0.541234) AND (t."X_3" > -0.157757) AND (t."X_1" > -1.615247)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" > 1.116809) AND (t."X_1" > -1.750861) AND (t."X_8" <= 1.125616) AND (t."X_1" > -0.541234) AND (t."X_7" <= -0.953567) AND (t."X_9" <= 1.682920)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" > 1.116809) AND (t."X_1" > -1.750861) AND (t."X_8" <= 1.125616) AND (t."X_1" > -0.541234) AND (t."X_7" <= -0.953567) AND (t."X_9" > 1.682920)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" > 1.116809) AND (t."X_1" > -1.750861) AND (t."X_8" <= 1.125616) AND (t."X_1" > -0.541234) AND (t."X_7" > -0.953567) AND (t."X_1" <= 1.553446)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" > 1.116809) AND (t."X_1" > -1.750861) AND (t."X_8" <= 1.125616) AND (t."X_1" > -0.541234) AND (t."X_7" > -0.953567) AND (t."X_1" > 1.553446) AND (t."X_9" <= 1.574447)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" > 1.116809) AND (t."X_1" > -1.750861) AND (t."X_8" <= 1.125616) AND (t."X_1" > -0.541234) AND (t."X_7" > -0.953567) AND (t."X_1" > 1.553446) AND (t."X_9" > 1.574447)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" > 1.310086) AND (t."X_7" > 0.962632) AND (t."X_9" <= -0.256833)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" > 1.310086) AND (t."X_7" > 0.962632) AND (t."X_9" > -0.256833) AND (t."X_3" <= 0.564127)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" > 1.310086) AND (t."X_7" > 0.962632) AND (t."X_9" > -0.256833) AND (t."X_3" > 0.564127)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" > 1.310086) AND (t."X_7" <= 0.962632) AND (t."X_0" <= -0.658626) AND (t."X_9" <= -0.084903)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" > 1.310086) AND (t."X_7" <= 0.962632) AND (t."X_0" <= -0.658626) AND (t."X_9" > -0.084903) AND (t."X_9" <= 0.205834)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" > 1.310086) AND (t."X_7" <= 0.962632) AND (t."X_0" <= -0.658626) AND (t."X_9" > -0.084903) AND (t."X_9" > 0.205834)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" > 1.310086) AND (t."X_7" <= 0.962632) AND (t."X_0" > -0.658626) AND (t."X_1" <= -2.104117)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" > 1.310086) AND (t."X_7" <= 0.962632) AND (t."X_0" > -0.658626) AND (t."X_1" > -2.104117)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" <= -0.393674) AND (t."X_9" > 0.823804)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" <= -0.393674) AND (t."X_9" <= 0.823804) AND (t."X_8" > 1.087445)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" <= -0.393674) AND (t."X_9" <= 0.823804) AND (t."X_8" <= 1.087445) AND (t."X_0" > 1.613600) AND (t."X_3" <= 0.235089)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" <= -0.393674) AND (t."X_9" <= 0.823804) AND (t."X_8" <= 1.087445) AND (t."X_0" > 1.613600) AND (t."X_3" > 0.235089)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" <= -0.393674) AND (t."X_9" <= 0.823804) AND (t."X_8" <= 1.087445) AND (t."X_0" <= 1.613600) AND (t."X_9" <= -0.030286) AND (t."X_9" <= -1.272046)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" <= -0.393674) AND (t."X_9" <= 0.823804) AND (t."X_8" <= 1.087445) AND (t."X_0" <= 1.613600) AND (t."X_9" <= -0.030286) AND (t."X_9" > -1.272046) AND (t."X_7" > 0.067336) AND (t."X_9" <= -0.849848)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" <= -0.393674) AND (t."X_9" <= 0.823804) AND (t."X_8" <= 1.087445) AND (t."X_0" <= 1.613600) AND (t."X_9" <= -0.030286) AND (t."X_9" > -1.272046) AND (t."X_7" > 0.067336) AND (t."X_9" > -0.849848)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" <= -0.393674) AND (t."X_9" <= 0.823804) AND (t."X_8" <= 1.087445) AND (t."X_0" <= 1.613600) AND (t."X_9" <= -0.030286) AND (t."X_9" > -1.272046) AND (t."X_7" <= 0.067336) AND (t."X_1" <= -1.284758)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" <= -0.393674) AND (t."X_9" <= 0.823804) AND (t."X_8" <= 1.087445) AND (t."X_0" <= 1.613600) AND (t."X_9" <= -0.030286) AND (t."X_9" > -1.272046) AND (t."X_7" <= 0.067336) AND (t."X_1" > -1.284758)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" <= -0.393674) AND (t."X_9" <= 0.823804) AND (t."X_8" <= 1.087445) AND (t."X_0" <= 1.613600) AND (t."X_9" > -0.030286) AND (t."X_3" > 0.998150)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" <= -0.393674) AND (t."X_9" <= 0.823804) AND (t."X_8" <= 1.087445) AND (t."X_0" <= 1.613600) AND (t."X_9" > -0.030286) AND (t."X_3" <= 0.998150) AND (t."X_3" > -0.878322)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" <= -0.393674) AND (t."X_9" <= 0.823804) AND (t."X_8" <= 1.087445) AND (t."X_0" <= 1.613600) AND (t."X_9" > -0.030286) AND (t."X_3" <= 0.998150) AND (t."X_3" <= -0.878322) AND (t."X_7" <= -0.048558)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" <= -0.393674) AND (t."X_9" <= 0.823804) AND (t."X_8" <= 1.087445) AND (t."X_0" <= 1.613600) AND (t."X_9" > -0.030286) AND (t."X_3" <= 0.998150) AND (t."X_3" <= -0.878322) AND (t."X_7" > -0.048558)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" > -0.393674) AND (t."X_0" > 1.313199) AND (t."X_1" <= 0.888067)) THEN 89 ELSE NULL END AS "Leaf_89",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" > -0.393674) AND (t."X_0" > 1.313199) AND (t."X_1" > 0.888067)) THEN 90 ELSE NULL END AS "Leaf_90",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" > -0.393674) AND (t."X_0" <= 1.313199) AND (t."X_8" > 0.290114) AND (t."X_1" <= 0.274891) AND (t."X_9" <= 0.119786)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" > -0.393674) AND (t."X_0" <= 1.313199) AND (t."X_8" > 0.290114) AND (t."X_1" <= 0.274891) AND (t."X_9" > 0.119786) AND (t."X_7" <= -0.566058)) THEN 97 ELSE NULL END AS "Leaf_97",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" > -0.393674) AND (t."X_0" <= 1.313199) AND (t."X_8" > 0.290114) AND (t."X_1" > 0.274891) AND (t."X_0" <= -0.282941)) THEN 99 ELSE NULL END AS "Leaf_99",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" > -0.393674) AND (t."X_0" <= 1.313199) AND (t."X_8" > 0.290114) AND (t."X_1" > 0.274891) AND (t."X_0" > -0.282941) AND (t."X_9" > 0.503777)) THEN 102 ELSE NULL END AS "Leaf_102",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" > -0.393674) AND (t."X_0" <= 1.313199) AND (t."X_8" > 0.290114) AND (t."X_1" <= 0.274891) AND (t."X_9" > 0.119786) AND (t."X_7" > -0.566058) AND (t."X_1" <= -0.340005)) THEN 103 ELSE NULL END AS "Leaf_103",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" > -0.393674) AND (t."X_0" <= 1.313199) AND (t."X_8" > 0.290114) AND (t."X_1" <= 0.274891) AND (t."X_9" > 0.119786) AND (t."X_7" > -0.566058) AND (t."X_1" > -0.340005) AND (t."X_7" <= 1.177076)) THEN 105 ELSE NULL END AS "Leaf_105",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" > -0.393674) AND (t."X_0" <= 1.313199) AND (t."X_8" > 0.290114) AND (t."X_1" <= 0.274891) AND (t."X_9" > 0.119786) AND (t."X_7" > -0.566058) AND (t."X_1" > -0.340005) AND (t."X_7" > 1.177076)) THEN 106 ELSE NULL END AS "Leaf_106",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" > -0.393674) AND (t."X_0" <= 1.313199) AND (t."X_8" > 0.290114) AND (t."X_1" > 0.274891) AND (t."X_0" > -0.282941) AND (t."X_9" <= 0.503777) AND (t."X_3" > 0.315596) AND (t."X_9" <= -1.044713)) THEN 109 ELSE NULL END AS "Leaf_109",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" > -0.393674) AND (t."X_0" <= 1.313199) AND (t."X_8" > 0.290114) AND (t."X_1" > 0.274891) AND (t."X_0" > -0.282941) AND (t."X_9" <= 0.503777) AND (t."X_3" > 0.315596) AND (t."X_9" > -1.044713)) THEN 110 ELSE NULL END AS "Leaf_110",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" > -0.393674) AND (t."X_0" <= 1.313199) AND (t."X_8" > 0.290114) AND (t."X_1" > 0.274891) AND (t."X_0" > -0.282941) AND (t."X_9" <= 0.503777) AND (t."X_3" <= 0.315596) AND (t."X_1" <= 0.772085)) THEN 111 ELSE NULL END AS "Leaf_111",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" > -0.393674) AND (t."X_0" <= 1.313199) AND (t."X_8" > 0.290114) AND (t."X_1" > 0.274891) AND (t."X_0" > -0.282941) AND (t."X_9" <= 0.503777) AND (t."X_3" <= 0.315596) AND (t."X_1" > 0.772085)) THEN 112 ELSE NULL END AS "Leaf_112",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" > -0.393674) AND (t."X_0" <= 1.313199) AND (t."X_8" <= 0.290114) AND (t."X_7" <= 0.840873)) THEN 113 ELSE NULL END AS "Leaf_113",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" > -0.393674) AND (t."X_0" <= 1.313199) AND (t."X_8" <= 0.290114) AND (t."X_7" > 0.840873) AND (t."X_9" <= -0.192784)) THEN 115 ELSE NULL END AS "Leaf_115",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" > -0.297052) AND (t."X_8" <= 1.310086) AND (t."X_1" > -0.393674) AND (t."X_0" <= 1.313199) AND (t."X_8" <= 0.290114) AND (t."X_7" > 0.840873) AND (t."X_9" > -0.192784)) THEN 116 ELSE NULL END AS "Leaf_116",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" <= -0.297052) AND (t."X_1" > 1.662537)) THEN 118 ELSE NULL END AS "Leaf_118",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" <= -0.297052) AND (t."X_1" <= 1.662537) AND (t."X_3" <= 0.651467)) THEN 119 ELSE NULL END AS "Leaf_119",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" <= -0.297052) AND (t."X_1" <= 1.662537) AND (t."X_3" > 0.651467) AND (t."X_1" <= -0.875329)) THEN 121 ELSE NULL END AS "Leaf_121",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" <= -0.297052) AND (t."X_1" <= 1.662537) AND (t."X_3" > 0.651467) AND (t."X_1" > -0.875329) AND (t."X_9" > -0.387742)) THEN 124 ELSE NULL END AS "Leaf_124",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" <= -0.297052) AND (t."X_1" <= 1.662537) AND (t."X_3" > 0.651467) AND (t."X_1" > -0.875329) AND (t."X_9" <= -0.387742) AND (t."X_3" <= 0.937765)) THEN 125 ELSE NULL END AS "Leaf_125",
      CASE WHEN((t."X_3" <= 1.134388) AND (t."X_9" <= 1.116809) AND (t."X_8" <= -0.297052) AND (t."X_1" <= 1.662537) AND (t."X_3" > 0.651467) AND (t."X_1" > -0.875329) AND (t."X_9" <= -0.387742) AND (t."X_3" > 0.937765)) THEN 126 ELSE NULL END AS "Leaf_126"
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
    SELECT 0 AS nid,  0.476562 AS "P_0", 0.523438 AS "P_1", 1 AS "D", 0.523438 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.493392 AS "P_0", 0.506608 AS "P_1", 1 AS "D", 0.506608 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.344828 AS "P_0", 0.655172 AS "P_1", 1 AS "D", 0.655172 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.615385 AS "P_0", 0.384615 AS "P_1", 0 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.096774 AS "P_0", 0.903226 AS "P_1", 1 AS "D", 0.903226 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.522727 AS "P_0", 0.477273 AS "P_1", 0 AS "D", 0.522727 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.293103 AS "P_0", 0.706897 AS "P_1", 1 AS "D", 0.706897 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.196078 AS "P_0", 0.803922 AS "P_1", 1 AS "D", 0.803922 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.032258 AS "P_0", 0.967742 AS "P_1", 1 AS "D", 0.967742 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.429448 AS "P_0", 0.570552 AS "P_1", 1 AS "D", 0.570552 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.587983 AS "P_0", 0.412017 AS "P_1", 0 AS "D", 0.587983 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.639594 AS "P_0", 0.360406 AS "P_1", 0 AS "D", 0.639594 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.305556 AS "P_0", 0.694444 AS "P_1", 1 AS "D", 0.694444 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.583333 AS "P_0", 0.416667 AS "P_1", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.095238 AS "P_0", 0.904762 AS "P_1", 1 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.486486 AS "P_0", 0.513514 AS "P_1", 1 AS "D", 0.513514 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.731707 AS "P_0", 0.268293 AS "P_1", 0 AS "D", 0.731707 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.441176 AS "P_0", 0.558824 AS "P_1", 1 AS "D", 0.558824 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.396825 AS "P_0", 0.603175 AS "P_1", 1 AS "D", 0.603175 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.339286 AS "P_0", 0.660714 AS "P_1", 1 AS "D", 0.660714 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.466667 AS "P_0", 0.533333 AS "P_1", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.192308 AS "P_0", 0.807692 AS "P_1", 1 AS "D", 0.807692 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.583333 AS "P_0", 0.416667 AS "P_1", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.763158 AS "P_0", 0.236842 AS "P_1", 0 AS "D", 0.763158 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.890909 AS "P_0", 0.109091 AS "P_1", 0 AS "D", 0.890909 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.644068 AS "P_0", 0.355932 AS "P_1", 0 AS "D", 0.644068 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.787879 AS "P_0", 0.212121 AS "P_1", 0 AS "D", 0.787879 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.461538 AS "P_0", 0.538462 AS "P_1", 1 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.416667 AS "P_0", 0.583333 AS "P_1", 1 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  0.631579 AS "P_0", 0.368421 AS "P_1", 0 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  0.457516 AS "P_0", 0.542484 AS "P_1", 1 AS "D", 0.542484 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  0.404762 AS "P_0", 0.595238 AS "P_1", 1 AS "D", 0.595238 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.703704 AS "P_0", 0.296296 AS "P_1", 0 AS "D", 0.703704 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  0.863636 AS "P_0", 0.136364 AS "P_1", 0 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_23", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_46", t1."Leaf_47", t1."Leaf_50", t1."Leaf_52", t1."Leaf_53", t1."Leaf_56", t1."Leaf_58", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62", t1."Leaf_65", t1."Leaf_68", t1."Leaf_70", t1."Leaf_73", t1."Leaf_74", t1."Leaf_75", t1."Leaf_77", t1."Leaf_78", t1."Leaf_80", t1."Leaf_82", t1."Leaf_84", t1."Leaf_85", t1."Leaf_87", t1."Leaf_88", t1."Leaf_90", t1."Leaf_91", t1."Leaf_92", t1."Leaf_94", t1."Leaf_95", t1."Leaf_96", t1."Leaf_98", t1."Leaf_99", t1."Leaf_100", t1."Leaf_104", t1."Leaf_106", t1."Leaf_107", t1."Leaf_108", t1."Leaf_110", t1."Leaf_113", t1."Leaf_115", t1."Leaf_116", t1."Leaf_117", t1."Leaf_122", t1."Leaf_123", t1."Leaf_124", t1."Leaf_125", t1."Leaf_126" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_9" > 0.962134) AND (t."X_0" > 0.590889) AND (t."X_1" > 0.715590)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_9" > 0.962134) AND (t."X_0" > 0.590889) AND (t."X_1" <= 0.715590) AND (t."X_9" > 1.098799)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_9" > 0.962134) AND (t."X_0" > 0.590889) AND (t."X_1" <= 0.715590) AND (t."X_9" <= 1.098799) AND (t."X_1" <= -0.259801)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_9" > 0.962134) AND (t."X_0" > 0.590889) AND (t."X_1" <= 0.715590) AND (t."X_9" <= 1.098799) AND (t."X_1" > -0.259801)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_9" > 0.962134) AND (t."X_0" <= 0.590889) AND (t."X_1" > 0.585634) AND (t."X_9" <= 1.668443)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_9" > 0.962134) AND (t."X_0" <= 0.590889) AND (t."X_1" > 0.585634) AND (t."X_9" > 1.668443) AND (t."X_1" <= 0.901709)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_9" > 0.962134) AND (t."X_0" <= 0.590889) AND (t."X_1" > 0.585634) AND (t."X_9" > 1.668443) AND (t."X_1" > 0.901709)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_9" > 0.962134) AND (t."X_0" <= 0.590889) AND (t."X_1" <= 0.585634) AND (t."X_1" <= -2.485221)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" > 1.223749) AND (t."X_0" <= -0.334764) AND (t."X_7" <= -0.845611)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" > 1.223749) AND (t."X_0" <= -0.334764) AND (t."X_7" > -0.845611) AND (t."X_9" > -0.180402)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" > 1.223749) AND (t."X_0" <= -0.334764) AND (t."X_7" > -0.845611) AND (t."X_9" <= -0.180402) AND (t."X_7" > 0.480157)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" > 1.223749) AND (t."X_0" <= -0.334764) AND (t."X_7" > -0.845611) AND (t."X_9" <= -0.180402) AND (t."X_7" <= 0.480157) AND (t."X_9" <= -0.678013)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" > 1.223749) AND (t."X_0" <= -0.334764) AND (t."X_7" > -0.845611) AND (t."X_9" <= -0.180402) AND (t."X_7" <= 0.480157) AND (t."X_9" > -0.678013)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" <= -1.628176) AND (t."X_9" <= -2.653227)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" <= -1.628176) AND (t."X_9" > -2.653227) AND (t."X_7" > -0.769163)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" <= -1.628176) AND (t."X_9" > -2.653227) AND (t."X_7" <= -0.769163) AND (t."X_1" <= -1.584279)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" <= -1.628176) AND (t."X_9" > -2.653227) AND (t."X_7" <= -0.769163) AND (t."X_1" > -1.584279)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" <= -0.072340) AND (t."X_1" <= -0.870328) AND (t."X_9" > 0.371831)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" <= -0.072340) AND (t."X_1" <= -0.870328) AND (t."X_9" <= 0.371831) AND (t."X_1" <= -2.402301)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" <= -0.072340) AND (t."X_1" <= -0.870328) AND (t."X_9" <= 0.371831) AND (t."X_1" > -2.402301) AND (t."X_7" > 0.783955)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" <= -0.072340) AND (t."X_1" <= -0.870328) AND (t."X_9" <= 0.371831) AND (t."X_1" > -2.402301) AND (t."X_7" <= 0.783955) AND (t."X_9" > 0.256326)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" <= -0.072340) AND (t."X_1" > -0.870328) AND (t."X_9" <= -0.231543)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" <= -0.072340) AND (t."X_1" > -0.870328) AND (t."X_9" > -0.231543) AND (t."X_9" > 0.570835)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" <= -0.072340) AND (t."X_1" > -0.870328) AND (t."X_9" > -0.231543) AND (t."X_9" <= 0.570835) AND (t."X_1" > -0.469049)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" <= -0.072340) AND (t."X_1" > -0.870328) AND (t."X_9" > -0.231543) AND (t."X_9" <= 0.570835) AND (t."X_1" <= -0.469049) AND (t."X_7" > 1.435281)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" <= -0.072340) AND (t."X_1" > -0.870328) AND (t."X_9" > -0.231543) AND (t."X_9" <= 0.570835) AND (t."X_1" <= -0.469049) AND (t."X_7" <= 1.435281) AND (t."X_9" <= 0.240271)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" <= -0.072340) AND (t."X_1" > -0.870328) AND (t."X_9" > -0.231543) AND (t."X_9" <= 0.570835) AND (t."X_1" <= -0.469049) AND (t."X_7" <= 1.435281) AND (t."X_9" > 0.240271)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" > -0.072340) AND (t."X_7" <= 0.557337) AND (t."X_9" <= -0.687329)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" > -0.072340) AND (t."X_7" <= 0.557337) AND (t."X_9" > -0.687329) AND (t."X_9" > 0.508491)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" > -0.072340) AND (t."X_7" <= 0.557337) AND (t."X_9" > -0.687329) AND (t."X_9" <= 0.508491) AND (t."X_1" > 1.865283)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" > -0.072340) AND (t."X_7" <= 0.557337) AND (t."X_9" > -0.687329) AND (t."X_9" <= 0.508491) AND (t."X_1" <= 1.865283) AND (t."X_1" <= 0.240528) AND (t."X_7" <= -0.618436)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" > -0.072340) AND (t."X_7" <= 0.557337) AND (t."X_9" > -0.687329) AND (t."X_9" <= 0.508491) AND (t."X_1" <= 1.865283) AND (t."X_1" <= 0.240528) AND (t."X_7" > -0.618436)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" <= -0.072340) AND (t."X_1" <= -0.870328) AND (t."X_9" <= 0.371831) AND (t."X_1" > -2.402301) AND (t."X_7" <= 0.783955) AND (t."X_9" <= 0.256326) AND (t."X_1" <= -1.211475)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" <= -0.072340) AND (t."X_1" <= -0.870328) AND (t."X_9" <= 0.371831) AND (t."X_1" > -2.402301) AND (t."X_7" <= 0.783955) AND (t."X_9" <= 0.256326) AND (t."X_1" > -1.211475) AND (t."X_7" <= -0.000420)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" <= -0.072340) AND (t."X_1" <= -0.870328) AND (t."X_9" <= 0.371831) AND (t."X_1" > -2.402301) AND (t."X_7" <= 0.783955) AND (t."X_9" <= 0.256326) AND (t."X_1" > -1.211475) AND (t."X_7" > -0.000420)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" > 1.223749) AND (t."X_0" > -0.334764) AND (t."X_9" > 0.297524)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" > 1.223749) AND (t."X_0" > -0.334764) AND (t."X_9" <= 0.297524) AND (t."X_9" > 0.249446)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" > 1.223749) AND (t."X_0" > -0.334764) AND (t."X_9" <= 0.297524) AND (t."X_9" <= 0.249446) AND (t."X_8" > 1.874838)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" > 1.223749) AND (t."X_0" > -0.334764) AND (t."X_9" <= 0.297524) AND (t."X_9" <= 0.249446) AND (t."X_8" <= 1.874838) AND (t."X_0" <= 0.776483)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" > 1.223749) AND (t."X_0" > -0.334764) AND (t."X_9" <= 0.297524) AND (t."X_9" <= 0.249446) AND (t."X_8" <= 1.874838) AND (t."X_0" > 0.776483) AND (t."X_9" <= -0.669172)) THEN 87 ELSE NULL END AS "Leaf_87",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" > 1.223749) AND (t."X_0" > -0.334764) AND (t."X_9" <= 0.297524) AND (t."X_9" <= 0.249446) AND (t."X_8" <= 1.874838) AND (t."X_0" > 0.776483) AND (t."X_9" > -0.669172)) THEN 88 ELSE NULL END AS "Leaf_88",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" > -0.072340) AND (t."X_7" > 0.557337) AND (t."X_8" > -1.484793)) THEN 90 ELSE NULL END AS "Leaf_90",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" > -0.072340) AND (t."X_7" > 0.557337) AND (t."X_8" <= -1.484793) AND (t."X_0" <= 0.256647)) THEN 91 ELSE NULL END AS "Leaf_91",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" > -0.072340) AND (t."X_7" > 0.557337) AND (t."X_8" <= -1.484793) AND (t."X_0" > 0.256647)) THEN 92 ELSE NULL END AS "Leaf_92",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" > -0.072340) AND (t."X_7" <= 0.557337) AND (t."X_9" > -0.687329) AND (t."X_9" <= 0.508491) AND (t."X_1" <= 1.865283) AND (t."X_1" > 0.240528) AND (t."X_1" > 0.443599)) THEN 94 ELSE NULL END AS "Leaf_94",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" > -0.072340) AND (t."X_7" <= 0.557337) AND (t."X_9" > -0.687329) AND (t."X_9" <= 0.508491) AND (t."X_1" <= 1.865283) AND (t."X_1" > 0.240528) AND (t."X_1" <= 0.443599) AND (t."X_8" <= -1.014613)) THEN 95 ELSE NULL END AS "Leaf_95",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" <= -0.648649) AND (t."X_1" > -0.072340) AND (t."X_7" <= 0.557337) AND (t."X_9" > -0.687329) AND (t."X_9" <= 0.508491) AND (t."X_1" <= 1.865283) AND (t."X_1" > 0.240528) AND (t."X_1" <= 0.443599) AND (t."X_8" > -1.014613)) THEN 96 ELSE NULL END AS "Leaf_96",
      CASE WHEN((t."X_9" > 0.962134) AND (t."X_0" <= 0.590889) AND (t."X_1" <= 0.585634) AND (t."X_1" > -2.485221) AND (t."X_0" > -1.768022)) THEN 98 ELSE NULL END AS "Leaf_98",
      CASE WHEN((t."X_9" > 0.962134) AND (t."X_0" <= 0.590889) AND (t."X_1" <= 0.585634) AND (t."X_1" > -2.485221) AND (t."X_0" <= -1.768022) AND (t."X_9" <= 1.967310)) THEN 99 ELSE NULL END AS "Leaf_99",
      CASE WHEN((t."X_9" > 0.962134) AND (t."X_0" <= 0.590889) AND (t."X_1" <= 0.585634) AND (t."X_1" > -2.485221) AND (t."X_0" <= -1.768022) AND (t."X_9" > 1.967310)) THEN 100 ELSE NULL END AS "Leaf_100",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" > -0.648649) AND (t."X_9" <= -1.198819) AND (t."X_0" > 1.219097)) THEN 104 ELSE NULL END AS "Leaf_104",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" > -0.648649) AND (t."X_9" <= -1.198819) AND (t."X_0" <= 1.219097) AND (t."X_1" > -0.735272)) THEN 106 ELSE NULL END AS "Leaf_106",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" > -0.648649) AND (t."X_9" <= -1.198819) AND (t."X_0" <= 1.219097) AND (t."X_1" <= -0.735272) AND (t."X_7" <= 0.302135)) THEN 107 ELSE NULL END AS "Leaf_107",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" > -0.648649) AND (t."X_9" <= -1.198819) AND (t."X_0" <= 1.219097) AND (t."X_1" <= -0.735272) AND (t."X_7" > 0.302135)) THEN 108 ELSE NULL END AS "Leaf_108",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" > -0.648649) AND (t."X_9" > -1.198819) AND (t."X_9" > -0.807292)) THEN 110 ELSE NULL END AS "Leaf_110",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" > -0.648649) AND (t."X_9" > -1.198819) AND (t."X_9" <= -0.807292) AND (t."X_8" > 0.567690) AND (t."X_0" <= 0.279703)) THEN 113 ELSE NULL END AS "Leaf_113",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" > -0.648649) AND (t."X_9" > -1.198819) AND (t."X_9" <= -0.807292) AND (t."X_8" > 0.567690) AND (t."X_0" > 0.279703) AND (t."X_7" <= -0.618427)) THEN 115 ELSE NULL END AS "Leaf_115",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" > -0.648649) AND (t."X_9" > -1.198819) AND (t."X_9" <= -0.807292) AND (t."X_8" > 0.567690) AND (t."X_0" > 0.279703) AND (t."X_7" > -0.618427)) THEN 116 ELSE NULL END AS "Leaf_116",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" > -0.648649) AND (t."X_9" > -1.198819) AND (t."X_9" <= -0.807292) AND (t."X_8" <= 0.567690) AND (t."X_8" <= -0.529419)) THEN 117 ELSE NULL END AS "Leaf_117",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" > -0.648649) AND (t."X_9" > -1.198819) AND (t."X_9" <= -0.807292) AND (t."X_8" <= 0.567690) AND (t."X_8" > -0.529419) AND (t."X_7" <= -0.163544) AND (t."X_9" > -0.827468)) THEN 122 ELSE NULL END AS "Leaf_122",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" > -0.648649) AND (t."X_9" > -1.198819) AND (t."X_9" <= -0.807292) AND (t."X_8" <= 0.567690) AND (t."X_8" > -0.529419) AND (t."X_7" <= -0.163544) AND (t."X_9" <= -0.827468) AND (t."X_7" <= -0.994436)) THEN 123 ELSE NULL END AS "Leaf_123",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" > -0.648649) AND (t."X_9" > -1.198819) AND (t."X_9" <= -0.807292) AND (t."X_8" <= 0.567690) AND (t."X_8" > -0.529419) AND (t."X_7" <= -0.163544) AND (t."X_9" <= -0.827468) AND (t."X_7" > -0.994436)) THEN 124 ELSE NULL END AS "Leaf_124",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" > -0.648649) AND (t."X_9" > -1.198819) AND (t."X_9" <= -0.807292) AND (t."X_8" <= 0.567690) AND (t."X_8" > -0.529419) AND (t."X_7" > -0.163544) AND (t."X_1" <= 1.165124)) THEN 125 ELSE NULL END AS "Leaf_125",
      CASE WHEN((t."X_9" <= 0.962134) AND (t."X_8" <= 1.223749) AND (t."X_9" > -1.628176) AND (t."X_8" > -0.648649) AND (t."X_9" > -1.198819) AND (t."X_9" <= -0.807292) AND (t."X_8" <= 0.567690) AND (t."X_8" > -0.529419) AND (t."X_7" > -0.163544) AND (t."X_1" > 1.165124)) THEN 126 ELSE NULL END AS "Leaf_126"
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
    SELECT 0 AS nid,  0.521484 AS "P_0", 0.478516 AS "P_1", 0 AS "D", 0.521484 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.558296 AS "P_0", 0.441704 AS "P_1", 0 AS "D", 0.558296 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.180000 AS "P_0", 0.820000 AS "P_1", 1 AS "D", 0.820000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.562500 AS "P_0", 0.437500 AS "P_1", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.073171 AS "P_0", 0.926829 AS "P_1", 1 AS "D", 0.926829 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.587065 AS "P_0", 0.412935 AS "P_1", 0 AS "D", 0.587065 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.295455 AS "P_0", 0.704545 AS "P_1", 1 AS "D", 0.704545 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.137931 AS "P_0", 0.862069 AS "P_1", 1 AS "D", 0.862069 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.178571 AS "P_0", 0.821429 AS "P_1", 1 AS "D", 0.821429 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.617647 AS "P_0", 0.382353 AS "P_1", 0 AS "D", 0.617647 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.080000 AS "P_0", 0.920000 AS "P_1", 1 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.451327 AS "P_0", 0.548673 AS "P_1", 1 AS "D", 0.548673 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.689655 AS "P_0", 0.310345 AS "P_1", 0 AS "D", 0.689655 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.641509 AS "P_0", 0.358491 AS "P_1", 0 AS "D", 0.641509 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.283333 AS "P_0", 0.716667 AS "P_1", 1 AS "D", 0.716667 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.388889 AS "P_0", 0.611111 AS "P_1", 1 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.771429 AS "P_0", 0.228571 AS "P_1", 0 AS "D", 0.771429 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.466667 AS "P_0", 0.533333 AS "P_1", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.652174 AS "P_0", 0.347826 AS "P_1", 0 AS "D", 0.652174 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.466667 AS "P_0", 0.533333 AS "P_1", 1 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.210526 AS "P_0", 0.789474 AS "P_1", 1 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.027027 AS "P_0", 0.972973 AS "P_1", 1 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 101 AS nid,  0.882353 AS "P_0", 0.117647 AS "P_1", 0 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 102 AS nid,  0.660793 AS "P_0", 0.339207 AS "P_1", 0 AS "D", 0.660793 AS "DP"
    UNION ALL
    SELECT 103 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 104 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 105 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 106 AS nid,  0.964286 AS "P_0", 0.035714 AS "P_1", 0 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 107 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 108 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 109 AS nid,  0.416667 AS "P_0", 0.583333 AS "P_1", 1 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 110 AS nid,  0.706806 AS "P_0", 0.293194 AS "P_1", 0 AS "D", 0.706806 AS "DP"
    UNION ALL
    SELECT 111 AS nid,  0.269231 AS "P_0", 0.730769 AS "P_1", 1 AS "D", 0.730769 AS "DP"
    UNION ALL
    SELECT 112 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 113 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 114 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 115 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 116 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 117 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 118 AS nid,  0.208333 AS "P_0", 0.791667 AS "P_1", 1 AS "D", 0.791667 AS "DP"
    UNION ALL
    SELECT 119 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 120 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 121 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 122 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 123 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 124 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 125 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 126 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_8", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_44", t1."Leaf_46", t1."Leaf_47", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_55", t1."Leaf_56", t1."Leaf_58", t1."Leaf_64", t1."Leaf_66", t1."Leaf_67", t1."Leaf_68", t1."Leaf_69", t1."Leaf_71", t1."Leaf_73", t1."Leaf_74", t1."Leaf_76", t1."Leaf_78", t1."Leaf_79", t1."Leaf_81", t1."Leaf_82", t1."Leaf_85", t1."Leaf_86", t1."Leaf_87", t1."Leaf_89", t1."Leaf_92", t1."Leaf_93", t1."Leaf_96", t1."Leaf_97", t1."Leaf_99", t1."Leaf_100" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.890186) AND (t."X_9" <= -2.194384)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.890186) AND (t."X_9" > -2.194384) AND (t."X_7" > 0.797045)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.890186) AND (t."X_9" > -2.194384) AND (t."X_7" <= 0.797045) AND (t."X_5" > 0.883105)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.890186) AND (t."X_9" > -2.194384) AND (t."X_7" <= 0.797045) AND (t."X_5" <= 0.883105) AND (t."X_7" > 0.350196) AND (t."X_7" <= 0.502176)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.890186) AND (t."X_9" > -2.194384) AND (t."X_7" <= 0.797045) AND (t."X_5" <= 0.883105) AND (t."X_7" > 0.350196) AND (t."X_7" > 0.502176)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.890186) AND (t."X_9" > -2.194384) AND (t."X_7" <= 0.797045) AND (t."X_5" <= 0.883105) AND (t."X_7" <= 0.350196) AND (t."X_5" <= 0.297096) AND (t."X_5" <= 0.152793)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.890186) AND (t."X_9" > -2.194384) AND (t."X_7" <= 0.797045) AND (t."X_5" <= 0.883105) AND (t."X_7" <= 0.350196) AND (t."X_5" <= 0.297096) AND (t."X_5" > 0.152793)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.890186) AND (t."X_9" > -2.194384) AND (t."X_7" <= 0.797045) AND (t."X_5" <= 0.883105) AND (t."X_7" <= 0.350196) AND (t."X_5" > 0.297096) AND (t."X_7" > -0.096174)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.890186) AND (t."X_9" > -2.194384) AND (t."X_7" <= 0.797045) AND (t."X_5" <= 0.883105) AND (t."X_7" <= 0.350196) AND (t."X_5" > 0.297096) AND (t."X_7" <= -0.096174) AND (t."X_0" <= -0.748865)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.890186) AND (t."X_9" > -2.194384) AND (t."X_7" <= 0.797045) AND (t."X_5" <= 0.883105) AND (t."X_7" <= 0.350196) AND (t."X_5" > 0.297096) AND (t."X_7" <= -0.096174) AND (t."X_0" > -0.748865) AND (t."X_7" > -0.190148)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.890186) AND (t."X_9" > -2.194384) AND (t."X_7" <= 0.797045) AND (t."X_5" <= 0.883105) AND (t."X_7" <= 0.350196) AND (t."X_5" > 0.297096) AND (t."X_7" <= -0.096174) AND (t."X_0" > -0.748865) AND (t."X_7" <= -0.190148) AND (t."X_8" <= -1.421013)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.890186) AND (t."X_9" > -2.194384) AND (t."X_7" <= 0.797045) AND (t."X_5" <= 0.883105) AND (t."X_7" <= 0.350196) AND (t."X_5" > 0.297096) AND (t."X_7" <= -0.096174) AND (t."X_0" > -0.748865) AND (t."X_7" <= -0.190148) AND (t."X_8" > -1.421013) AND (t."X_7" <= -0.520451)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" <= 0.890186) AND (t."X_9" > -2.194384) AND (t."X_7" <= 0.797045) AND (t."X_5" <= 0.883105) AND (t."X_7" <= 0.350196) AND (t."X_5" > 0.297096) AND (t."X_7" <= -0.096174) AND (t."X_0" > -0.748865) AND (t."X_7" <= -0.190148) AND (t."X_8" > -1.421013) AND (t."X_7" > -0.520451)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" <= -2.421466)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" > -0.495292) AND (t."X_9" > 0.530735) AND (t."X_5" > -0.262285) AND (t."X_8" <= -1.142921)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" > -0.495292) AND (t."X_9" > 0.530735) AND (t."X_5" > -0.262285) AND (t."X_8" > -1.142921) AND (t."X_9" <= 0.645542)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" > -0.495292) AND (t."X_9" > 0.530735) AND (t."X_5" > -0.262285) AND (t."X_8" > -1.142921) AND (t."X_9" > 0.645542)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" > -0.495292) AND (t."X_9" > 0.530735) AND (t."X_5" <= -0.262285) AND (t."X_0" <= 1.775279)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" > -0.495292) AND (t."X_9" > 0.530735) AND (t."X_5" <= -0.262285) AND (t."X_0" > 1.775279)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" > -0.495292) AND (t."X_9" <= 0.530735) AND (t."X_7" > 1.389316)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" > -0.495292) AND (t."X_9" <= 0.530735) AND (t."X_7" <= 1.389316) AND (t."X_0" > 1.838964)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" > -0.495292) AND (t."X_9" <= 0.530735) AND (t."X_7" <= 1.389316) AND (t."X_0" <= 1.838964) AND (t."X_7" <= -1.804715)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" > -0.495292) AND (t."X_9" <= 0.530735) AND (t."X_7" <= 1.389316) AND (t."X_0" <= 1.838964) AND (t."X_7" > -1.804715) AND (t."X_9" > -1.501105)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" > -0.495292) AND (t."X_9" <= 0.530735) AND (t."X_7" <= 1.389316) AND (t."X_0" <= 1.838964) AND (t."X_7" > -1.804715) AND (t."X_9" <= -1.501105) AND (t."X_9" <= -2.048270)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" > -0.495292) AND (t."X_9" <= 0.530735) AND (t."X_7" <= 1.389316) AND (t."X_0" <= 1.838964) AND (t."X_7" > -1.804715) AND (t."X_9" <= -1.501105) AND (t."X_9" > -2.048270)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" <= -0.495292) AND (t."X_8" <= -2.305745) AND (t."X_8" <= -2.498734)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" <= -0.495292) AND (t."X_8" <= -2.305745) AND (t."X_8" > -2.498734)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" <= -0.495292) AND (t."X_8" > -2.305745) AND (t."X_7" > 0.304180)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" <= -0.495292) AND (t."X_8" > -2.305745) AND (t."X_7" <= 0.304180) AND (t."X_5" > -0.978513) AND (t."X_5" <= -0.740987) AND (t."X_7" > -0.040729)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" <= -0.495292) AND (t."X_8" > -2.305745) AND (t."X_7" <= 0.304180) AND (t."X_5" > -0.978513) AND (t."X_5" <= -0.740987) AND (t."X_7" <= -0.040729) AND (t."X_9" > -1.191382)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" <= -0.495292) AND (t."X_8" > -2.305745) AND (t."X_7" <= 0.304180) AND (t."X_5" > -0.978513) AND (t."X_5" <= -0.740987) AND (t."X_7" <= -0.040729) AND (t."X_9" <= -1.191382) AND (t."X_0" <= -0.195005)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" <= -0.495292) AND (t."X_8" > -2.305745) AND (t."X_7" <= 0.304180) AND (t."X_5" > -0.978513) AND (t."X_5" <= -0.740987) AND (t."X_7" <= -0.040729) AND (t."X_9" <= -1.191382) AND (t."X_0" > -0.195005)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" <= -0.495292) AND (t."X_8" > -2.305745) AND (t."X_7" <= 0.304180) AND (t."X_5" > -0.978513) AND (t."X_5" > -0.740987) AND (t."X_5" <= -0.635930)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" <= -0.495292) AND (t."X_8" > -2.305745) AND (t."X_7" <= 0.304180) AND (t."X_5" > -0.978513) AND (t."X_5" > -0.740987) AND (t."X_5" > -0.635930) AND (t."X_8" <= -0.676663)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" <= -0.495292) AND (t."X_8" > -2.305745) AND (t."X_7" <= 0.304180) AND (t."X_5" > -0.978513) AND (t."X_5" > -0.740987) AND (t."X_5" > -0.635930) AND (t."X_8" > -0.676663) AND (t."X_9" <= 0.653799)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" <= -0.495292) AND (t."X_8" > -2.305745) AND (t."X_7" <= 0.304180) AND (t."X_5" > -0.978513) AND (t."X_5" > -0.740987) AND (t."X_5" > -0.635930) AND (t."X_8" > -0.676663) AND (t."X_9" > 0.653799)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" <= -0.495292) AND (t."X_8" > -2.305745) AND (t."X_7" <= 0.304180) AND (t."X_5" <= -0.978513) AND (t."X_7" > 0.293512)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" <= -0.495292) AND (t."X_8" > -2.305745) AND (t."X_7" <= 0.304180) AND (t."X_5" <= -0.978513) AND (t."X_7" <= 0.293512) AND (t."X_7" > -0.882408)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" <= -0.495292) AND (t."X_8" > -2.305745) AND (t."X_7" <= 0.304180) AND (t."X_5" <= -0.978513) AND (t."X_7" <= 0.293512) AND (t."X_7" <= -0.882408) AND (t."X_5" <= -1.590903)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" <= -0.495292) AND (t."X_8" > -2.305745) AND (t."X_7" <= 0.304180) AND (t."X_5" <= -0.978513) AND (t."X_7" <= 0.293512) AND (t."X_7" <= -0.882408) AND (t."X_5" > -1.590903) AND (t."X_7" <= -0.900975)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_5" <= 0.054578) AND (t."X_7" > -2.421466) AND (t."X_5" <= -0.495292) AND (t."X_8" > -2.305745) AND (t."X_7" <= 0.304180) AND (t."X_5" <= -0.978513) AND (t."X_7" <= 0.293512) AND (t."X_7" <= -0.882408) AND (t."X_5" > -1.590903) AND (t."X_7" > -0.900975)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" > 0.890186) AND (t."X_8" <= -1.820236) AND (t."X_9" <= -0.593715)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" > 0.890186) AND (t."X_8" <= -1.820236) AND (t."X_9" > -0.593715)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" > 0.890186) AND (t."X_8" > -1.820236) AND (t."X_8" <= -0.294123)) THEN 87 ELSE NULL END AS "Leaf_87",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" > 0.890186) AND (t."X_8" > -1.820236) AND (t."X_8" > -0.294123) AND (t."X_8" <= -0.268795)) THEN 89 ELSE NULL END AS "Leaf_89",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" > 0.890186) AND (t."X_8" > -1.820236) AND (t."X_8" > -0.294123) AND (t."X_8" > -0.268795) AND (t."X_9" > -0.082072)) THEN 92 ELSE NULL END AS "Leaf_92",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" > 0.890186) AND (t."X_8" > -1.820236) AND (t."X_8" > -0.294123) AND (t."X_8" > -0.268795) AND (t."X_9" <= -0.082072) AND (t."X_5" <= 0.988812)) THEN 93 ELSE NULL END AS "Leaf_93",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" > 0.890186) AND (t."X_8" > -1.820236) AND (t."X_8" > -0.294123) AND (t."X_8" > -0.268795) AND (t."X_9" <= -0.082072) AND (t."X_5" > 0.988812) AND (t."X_8" > 0.263297)) THEN 96 ELSE NULL END AS "Leaf_96",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" > 0.890186) AND (t."X_8" > -1.820236) AND (t."X_8" > -0.294123) AND (t."X_8" > -0.268795) AND (t."X_9" <= -0.082072) AND (t."X_5" > 0.988812) AND (t."X_8" <= 0.263297) AND (t."X_9" <= -0.929222)) THEN 97 ELSE NULL END AS "Leaf_97",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" > 0.890186) AND (t."X_8" > -1.820236) AND (t."X_8" > -0.294123) AND (t."X_8" > -0.268795) AND (t."X_9" <= -0.082072) AND (t."X_5" > 0.988812) AND (t."X_8" <= 0.263297) AND (t."X_9" > -0.929222) AND (t."X_8" <= 0.165865)) THEN 99 ELSE NULL END AS "Leaf_99",
      CASE WHEN((t."X_5" > 0.054578) AND (t."X_5" > 0.890186) AND (t."X_8" > -1.820236) AND (t."X_8" > -0.294123) AND (t."X_8" > -0.268795) AND (t."X_9" <= -0.082072) AND (t."X_5" > 0.988812) AND (t."X_8" <= 0.263297) AND (t."X_9" > -0.929222) AND (t."X_8" > 0.165865)) THEN 100 ELSE NULL END AS "Leaf_100"
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
    SELECT 0 AS nid,  0.527344 AS "P_0", 0.472656 AS "P_1", 0 AS "D", 0.527344 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.106667 AS "P_0", 0.893333 AS "P_1", 1 AS "D", 0.893333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.223529 AS "P_0", 0.776471 AS "P_1", 1 AS "D", 0.776471 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.035714 AS "P_0", 0.964286 AS "P_1", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.185185 AS "P_0", 0.814815 AS "P_1", 1 AS "D", 0.814815 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.238095 AS "P_0", 0.761905 AS "P_1", 1 AS "D", 0.761905 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.213115 AS "P_0", 0.786885 AS "P_1", 1 AS "D", 0.786885 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.169811 AS "P_0", 0.830189 AS "P_1", 1 AS "D", 0.830189 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.136364 AS "P_0", 0.863636 AS "P_1", 1 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.090909 AS "P_0", 0.909091 AS "P_1", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.863158 AS "P_0", 0.136842 AS "P_1", 0 AS "D", 0.863158 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.680000 AS "P_0", 0.320000 AS "P_1", 0 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.346154 AS "P_0", 0.653846 AS "P_1", 1 AS "D", 0.653846 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.913043 AS "P_0", 0.086957 AS "P_1", 0 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.976744 AS "P_0", 0.023256 AS "P_1", 0 AS "D", 0.976744 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.936893 AS "P_0", 0.063107 AS "P_1", 0 AS "D", 0.936893 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.902256 AS "P_0", 0.097744 AS "P_1", 0 AS "D", 0.902256 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.959184 AS "P_0", 0.040816 AS "P_1", 0 AS "D", 0.959184 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.742857 AS "P_0", 0.257143 AS "P_1", 0 AS "D", 0.742857 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.533333 AS "P_0", 0.466667 AS "P_1", 0 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.969072 AS "P_0", 0.030928 AS "P_1", 0 AS "D", 0.969072 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.892857 AS "P_0", 0.107143 AS "P_1", 0 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.029851 AS "P_0", 0.970149 AS "P_1", 1 AS "D", 0.970149 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.042254 AS "P_0", 0.957747 AS "P_1", 1 AS "D", 0.957747 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.088235 AS "P_0", 0.911765 AS "P_1", 1 AS "D", 0.911765 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 93 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 94 AS nid,  0.060606 AS "P_0", 0.939394 AS "P_1", 1 AS "D", 0.939394 AS "DP"
    UNION ALL
    SELECT 95 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 96 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 97 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 98 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 99 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 100 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_37", t1."Leaf_41", t1."Leaf_42", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_49", t1."Leaf_52", t1."Leaf_55", t1."Leaf_56", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62", t1."Leaf_65", t1."Leaf_66", t1."Leaf_68", t1."Leaf_69", t1."Leaf_71", t1."Leaf_72", t1."Leaf_75", t1."Leaf_76", t1."Leaf_79", t1."Leaf_80", t1."Leaf_81", t1."Leaf_82", t1."Leaf_83", t1."Leaf_85", t1."Leaf_86", t1."Leaf_88", t1."Leaf_90", t1."Leaf_91", t1."Leaf_92" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" > 1.110219) AND (t."X_6" <= 1.553656)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" > 1.110219) AND (t."X_6" > 1.553656)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" > -0.293661) AND (t."X_4" > -0.484159) AND (t."X_4" > 0.903351) AND (t."X_6" <= -0.091375)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" > -0.293661) AND (t."X_4" > -0.484159) AND (t."X_4" > 0.903351) AND (t."X_6" > -0.091375)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" > -0.293661) AND (t."X_4" <= -0.484159) AND (t."X_6" <= 0.011344) AND (t."X_6" <= -0.101832)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" > -0.293661) AND (t."X_4" <= -0.484159) AND (t."X_6" <= 0.011344) AND (t."X_6" > -0.101832) AND (t."X_8" <= 0.718031)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" > -0.293661) AND (t."X_4" <= -0.484159) AND (t."X_6" <= 0.011344) AND (t."X_6" > -0.101832) AND (t."X_8" > 0.718031)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" <= -0.293661) AND (t."X_6" > 0.862354)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" <= -0.293661) AND (t."X_6" <= 0.862354) AND (t."X_4" > 1.035173)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" > -0.293661) AND (t."X_4" > -0.484159) AND (t."X_4" <= 0.903351) AND (t."X_9" > -0.854819)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" > -0.293661) AND (t."X_4" > -0.484159) AND (t."X_4" <= 0.903351) AND (t."X_9" <= -0.854819) AND (t."X_6" > -0.012568)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" > -0.293661) AND (t."X_4" > -0.484159) AND (t."X_4" <= 0.903351) AND (t."X_9" <= -0.854819) AND (t."X_6" <= -0.012568) AND (t."X_7" <= 1.105978)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" > -0.293661) AND (t."X_4" > -0.484159) AND (t."X_4" <= 0.903351) AND (t."X_9" <= -0.854819) AND (t."X_6" <= -0.012568) AND (t."X_7" > 1.105978)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" <= -0.293661) AND (t."X_6" <= 0.862354) AND (t."X_4" <= 1.035173) AND (t."X_8" <= -2.871220)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" <= -0.293661) AND (t."X_6" <= 0.862354) AND (t."X_4" <= 1.035173) AND (t."X_8" > -2.871220) AND (t."X_4" > 0.122985) AND (t."X_4" <= 0.858472)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" <= -0.293661) AND (t."X_6" <= 0.862354) AND (t."X_4" <= 1.035173) AND (t."X_8" > -2.871220) AND (t."X_4" > 0.122985) AND (t."X_4" > 0.858472) AND (t."X_7" > 1.007480) AND (t."X_7" <= 1.309270)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" <= -0.293661) AND (t."X_6" <= 0.862354) AND (t."X_4" <= 1.035173) AND (t."X_8" > -2.871220) AND (t."X_4" > 0.122985) AND (t."X_4" > 0.858472) AND (t."X_7" > 1.007480) AND (t."X_7" > 1.309270)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" <= -0.293661) AND (t."X_6" <= 0.862354) AND (t."X_4" <= 1.035173) AND (t."X_8" > -2.871220) AND (t."X_4" > 0.122985) AND (t."X_4" > 0.858472) AND (t."X_7" <= 1.007480) AND (t."X_4" > 0.932813)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" <= -0.293661) AND (t."X_6" <= 0.862354) AND (t."X_4" <= 1.035173) AND (t."X_8" > -2.871220) AND (t."X_4" > 0.122985) AND (t."X_4" > 0.858472) AND (t."X_7" <= 1.007480) AND (t."X_4" <= 0.932813) AND (t."X_9" <= -0.218569)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" <= -0.293661) AND (t."X_6" <= 0.862354) AND (t."X_4" <= 1.035173) AND (t."X_8" > -2.871220) AND (t."X_4" > 0.122985) AND (t."X_4" > 0.858472) AND (t."X_7" <= 1.007480) AND (t."X_4" <= 0.932813) AND (t."X_9" > -0.218569)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_6" <= -0.297855) AND (t."X_6" <= -0.805557)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_6" <= -0.297855) AND (t."X_6" > -0.805557) AND (t."X_6" <= -0.789114)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_6" <= -0.297855) AND (t."X_6" > -0.805557) AND (t."X_6" > -0.789114) AND (t."X_4" > 0.936869)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_6" <= -0.297855) AND (t."X_6" > -0.805557) AND (t."X_6" > -0.789114) AND (t."X_4" <= 0.936869) AND (t."X_9" <= -1.634164) AND (t."X_4" <= -0.041823)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_6" <= -0.297855) AND (t."X_6" > -0.805557) AND (t."X_6" > -0.789114) AND (t."X_4" <= 0.936869) AND (t."X_9" <= -1.634164) AND (t."X_4" > -0.041823)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_6" <= -0.297855) AND (t."X_6" > -0.805557) AND (t."X_6" > -0.789114) AND (t."X_4" <= 0.936869) AND (t."X_9" > -1.634164) AND (t."X_6" > -0.396902) AND (t."X_8" > -0.073702)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_6" <= -0.297855) AND (t."X_6" > -0.805557) AND (t."X_6" > -0.789114) AND (t."X_4" <= 0.936869) AND (t."X_9" > -1.634164) AND (t."X_6" > -0.396902) AND (t."X_8" <= -0.073702) AND (t."X_4" <= -0.101304)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_6" <= -0.297855) AND (t."X_6" > -0.805557) AND (t."X_6" > -0.789114) AND (t."X_4" <= 0.936869) AND (t."X_9" > -1.634164) AND (t."X_6" > -0.396902) AND (t."X_8" <= -0.073702) AND (t."X_4" > -0.101304)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_6" <= -0.297855) AND (t."X_6" > -0.805557) AND (t."X_6" > -0.789114) AND (t."X_4" <= 0.936869) AND (t."X_9" > -1.634164) AND (t."X_6" <= -0.396902) AND (t."X_7" <= -1.663244) AND (t."X_9" <= -1.088807)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_6" <= -0.297855) AND (t."X_6" > -0.805557) AND (t."X_6" > -0.789114) AND (t."X_4" <= 0.936869) AND (t."X_9" > -1.634164) AND (t."X_6" <= -0.396902) AND (t."X_7" <= -1.663244) AND (t."X_9" > -1.088807)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" > -0.293661) AND (t."X_4" <= -0.484159) AND (t."X_6" > 0.011344) AND (t."X_9" > -0.330909)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" > -0.293661) AND (t."X_4" <= -0.484159) AND (t."X_6" > 0.011344) AND (t."X_9" <= -0.330909) AND (t."X_7" <= -0.295199)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" > -0.293661) AND (t."X_4" <= -0.484159) AND (t."X_6" > 0.011344) AND (t."X_9" <= -0.330909) AND (t."X_7" > -0.295199) AND (t."X_9" <= -0.869119)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" > -0.293661) AND (t."X_4" <= -0.484159) AND (t."X_6" > 0.011344) AND (t."X_9" <= -0.330909) AND (t."X_7" > -0.295199) AND (t."X_9" > -0.869119)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" > 0.875360) AND (t."X_4" <= 0.887079) AND (t."X_8" <= -0.863723)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" > 0.875360) AND (t."X_4" <= 0.887079) AND (t."X_8" > -0.863723)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_6" <= -0.297855) AND (t."X_6" > -0.805557) AND (t."X_6" > -0.789114) AND (t."X_4" <= 0.936869) AND (t."X_9" > -1.634164) AND (t."X_6" <= -0.396902) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.483420) AND (t."X_6" <= -0.471977)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_6" <= -0.297855) AND (t."X_6" > -0.805557) AND (t."X_6" > -0.789114) AND (t."X_4" <= 0.936869) AND (t."X_9" > -1.634164) AND (t."X_6" <= -0.396902) AND (t."X_7" > -1.663244) AND (t."X_6" > -0.483420) AND (t."X_6" > -0.471977)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_6" <= -0.297855) AND (t."X_6" > -0.805557) AND (t."X_6" > -0.789114) AND (t."X_4" <= 0.936869) AND (t."X_9" > -1.634164) AND (t."X_6" <= -0.396902) AND (t."X_7" > -1.663244) AND (t."X_6" <= -0.483420) AND (t."X_8" <= -2.004712)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_6" <= -0.297855) AND (t."X_6" > -0.805557) AND (t."X_6" > -0.789114) AND (t."X_4" <= 0.936869) AND (t."X_9" > -1.634164) AND (t."X_6" <= -0.396902) AND (t."X_7" > -1.663244) AND (t."X_6" <= -0.483420) AND (t."X_8" > -2.004712)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" <= -0.293661) AND (t."X_6" <= 0.862354) AND (t."X_4" <= 1.035173) AND (t."X_8" > -2.871220) AND (t."X_4" <= 0.122985) AND (t."X_8" <= -0.461211)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" <= -0.293661) AND (t."X_6" <= 0.862354) AND (t."X_4" <= 1.035173) AND (t."X_8" > -2.871220) AND (t."X_4" <= 0.122985) AND (t."X_8" > -0.461211) AND (t."X_8" <= -0.431871)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" <= 0.875360) AND (t."X_8" <= -0.293661) AND (t."X_6" <= 0.862354) AND (t."X_4" <= 1.035173) AND (t."X_8" > -2.871220) AND (t."X_4" <= 0.122985) AND (t."X_8" > -0.461211) AND (t."X_8" > -0.431871)) THEN 86 ELSE NULL END AS "Leaf_86",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" > 0.875360) AND (t."X_4" > 0.887079) AND (t."X_6" > 1.023051)) THEN 88 ELSE NULL END AS "Leaf_88",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" > 0.875360) AND (t."X_4" > 0.887079) AND (t."X_6" <= 1.023051) AND (t."X_9" > -0.674900)) THEN 90 ELSE NULL END AS "Leaf_90",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" > 0.875360) AND (t."X_4" > 0.887079) AND (t."X_6" <= 1.023051) AND (t."X_9" <= -0.674900) AND (t."X_6" <= 1.003315)) THEN 91 ELSE NULL END AS "Leaf_91",
      CASE WHEN((t."X_6" > -0.297855) AND (t."X_4" <= 1.110219) AND (t."X_6" > 0.875360) AND (t."X_4" > 0.887079) AND (t."X_6" <= 1.023051) AND (t."X_9" <= -0.674900) AND (t."X_6" > 1.003315)) THEN 92 ELSE NULL END AS "Leaf_92"
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
    SELECT 0 AS nid,  0.501953 AS "P_0", 0.498047 AS "P_1", 0 AS "D", 0.501953 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.912821 AS "P_0", 0.087179 AS "P_1", 0 AS "D", 0.912821 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.249211 AS "P_0", 0.750789 AS "P_1", 1 AS "D", 0.750789 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.177700 AS "P_0", 0.822300 AS "P_1", 1 AS "D", 0.822300 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.268156 AS "P_0", 0.731844 AS "P_1", 1 AS "D", 0.731844 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.027778 AS "P_0", 0.972222 AS "P_1", 1 AS "D", 0.972222 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.170213 AS "P_0", 0.829787 AS "P_1", 1 AS "D", 0.829787 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.376471 AS "P_0", 0.623529 AS "P_1", 1 AS "D", 0.623529 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.163265 AS "P_0", 0.836735 AS "P_1", 1 AS "D", 0.836735 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.075000 AS "P_0", 0.925000 AS "P_1", 1 AS "D", 0.925000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.103448 AS "P_0", 0.896552 AS "P_1", 1 AS "D", 0.896552 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.093023 AS "P_0", 0.906977 AS "P_1", 1 AS "D", 0.906977 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.015873 AS "P_0", 0.984127 AS "P_1", 1 AS "D", 0.984127 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.304348 AS "P_0", 0.695652 AS "P_1", 1 AS "D", 0.695652 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.813187 AS "P_0", 0.186813 AS "P_1", 0 AS "D", 0.813187 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.831461 AS "P_0", 0.168539 AS "P_1", 0 AS "D", 0.831461 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.745763 AS "P_0", 0.254237 AS "P_1", 0 AS "D", 0.745763 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.788462 AS "P_0", 0.211538 AS "P_1", 0 AS "D", 0.788462 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.891892 AS "P_0", 0.108108 AS "P_1", 0 AS "D", 0.891892 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.533333 AS "P_0", 0.466667 AS "P_1", 0 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.914286 AS "P_0", 0.085714 AS "P_1", 0 AS "D", 0.914286 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.176471 AS "P_0", 0.823529 AS "P_1", 1 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.009709 AS "P_0", 0.990291 AS "P_1", 1 AS "D", 0.990291 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.960000 AS "P_0", 0.040000 AS "P_1", 0 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 89 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 90 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 91 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 92 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_28", t1."Leaf_31", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46", t1."Leaf_49", t1."Leaf_50", t1."Leaf_54", t1."Leaf_57", t1."Leaf_58", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62", t1."Leaf_65", t1."Leaf_66", t1."Leaf_67", t1."Leaf_69", t1."Leaf_72", t1."Leaf_73", t1."Leaf_74", t1."Leaf_76", t1."Leaf_77", t1."Leaf_78", t1."Leaf_80", t1."Leaf_81", t1."Leaf_82" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" > 1.110219) AND (t."X_6" <= 1.562474)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" > 1.110219) AND (t."X_6" > 1.562474)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" <= -2.691467)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" <= -2.958045)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" > -0.173320) AND (t."X_4" > 0.164898) AND (t."X_4" > 0.878036) AND (t."X_4" > 1.018317)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" > -0.173320) AND (t."X_4" > 0.164898) AND (t."X_4" <= 0.878036) AND (t."X_9" <= -1.489831)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" > -0.173320) AND (t."X_4" > 0.164898) AND (t."X_4" <= 0.878036) AND (t."X_9" > -1.489831) AND (t."X_3" <= 0.935652)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" > -0.173320) AND (t."X_4" > 0.164898) AND (t."X_4" <= 0.878036) AND (t."X_9" > -1.489831) AND (t."X_3" > 0.935652)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" > -0.173320) AND (t."X_4" > 0.164898) AND (t."X_4" > 0.878036) AND (t."X_4" <= 1.018317) AND (t."X_8" > 1.391811)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" <= -0.173320) AND (t."X_7" > -0.287937)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" <= -0.173320) AND (t."X_7" <= -0.287937) AND (t."X_4" > -0.587217) AND (t."X_6" <= -0.251951)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" <= -0.173320) AND (t."X_7" <= -0.287937) AND (t."X_4" > -0.587217) AND (t."X_6" > -0.251951) AND (t."X_8" > -0.144467)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" <= -0.173320) AND (t."X_7" <= -0.287937) AND (t."X_4" > -0.587217) AND (t."X_6" > -0.251951) AND (t."X_8" <= -0.144467) AND (t."X_3" <= -0.039361)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" <= -0.173320) AND (t."X_7" <= -0.287937) AND (t."X_4" > -0.587217) AND (t."X_6" > -0.251951) AND (t."X_8" <= -0.144467) AND (t."X_3" > -0.039361) AND (t."X_9" <= 1.070427)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" <= -0.173320) AND (t."X_7" <= -0.287937) AND (t."X_4" > -0.587217) AND (t."X_6" > -0.251951) AND (t."X_8" <= -0.144467) AND (t."X_3" > -0.039361) AND (t."X_9" > 1.070427)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" > -0.173320) AND (t."X_4" > 0.164898) AND (t."X_4" > 0.878036) AND (t."X_4" <= 1.018317) AND (t."X_8" <= 1.391811) AND (t."X_8" > -0.563239)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" > -0.173320) AND (t."X_4" > 0.164898) AND (t."X_4" > 0.878036) AND (t."X_4" <= 1.018317) AND (t."X_8" <= 1.391811) AND (t."X_8" <= -0.563239) AND (t."X_6" <= 0.093216)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" > -0.173320) AND (t."X_4" > 0.164898) AND (t."X_4" > 0.878036) AND (t."X_4" <= 1.018317) AND (t."X_8" <= 1.391811) AND (t."X_8" <= -0.563239) AND (t."X_6" > 0.093216)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" <= -0.173320) AND (t."X_7" <= -0.287937) AND (t."X_4" <= -0.587217) AND (t."X_7" <= -0.516933)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" <= -0.173320) AND (t."X_7" <= -0.287937) AND (t."X_4" <= -0.587217) AND (t."X_7" > -0.516933) AND (t."X_8" <= 0.651050)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" <= -0.173320) AND (t."X_7" <= -0.287937) AND (t."X_4" <= -0.587217) AND (t."X_7" > -0.516933) AND (t."X_8" > 0.651050)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_7" > 2.149137) AND (t."X_9" <= 1.442325)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_7" > 2.149137) AND (t."X_9" > 1.442325)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_7" <= 2.149137) AND (t."X_6" > -0.484567) AND (t."X_8" > 0.563626)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_7" <= 2.149137) AND (t."X_6" > -0.484567) AND (t."X_8" <= 0.563626) AND (t."X_4" <= 0.371391) AND (t."X_9" <= -0.621251)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_7" <= 2.149137) AND (t."X_6" > -0.484567) AND (t."X_8" <= 0.563626) AND (t."X_4" <= 0.371391) AND (t."X_9" > -0.621251)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_7" <= 2.149137) AND (t."X_6" > -0.484567) AND (t."X_8" <= 0.563626) AND (t."X_4" > 0.371391) AND (t."X_3" > -0.131197)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_7" <= 2.149137) AND (t."X_6" > -0.484567) AND (t."X_8" <= 0.563626) AND (t."X_4" > 0.371391) AND (t."X_3" <= -0.131197) AND (t."X_7" <= 0.111206)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_7" <= 2.149137) AND (t."X_6" > -0.484567) AND (t."X_8" <= 0.563626) AND (t."X_4" > 0.371391) AND (t."X_3" <= -0.131197) AND (t."X_7" > 0.111206)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" > 0.649023) AND (t."X_4" <= 0.888321) AND (t."X_4" <= -0.190956)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" > 0.649023) AND (t."X_4" <= 0.888321) AND (t."X_4" > -0.190956)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_7" <= 2.149137) AND (t."X_6" <= -0.484567) AND (t."X_4" <= 0.099999)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_7" <= 2.149137) AND (t."X_6" <= -0.484567) AND (t."X_4" > 0.099999) AND (t."X_4" <= 0.167458)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_7" <= 2.149137) AND (t."X_6" <= -0.484567) AND (t."X_4" > 0.099999) AND (t."X_4" > 0.167458) AND (t."X_7" > -0.859407)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_7" <= 2.149137) AND (t."X_6" <= -0.484567) AND (t."X_4" > 0.099999) AND (t."X_4" > 0.167458) AND (t."X_7" <= -0.859407) AND (t."X_4" <= 0.660977)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_6" <= -0.301522) AND (t."X_7" <= 2.149137) AND (t."X_6" <= -0.484567) AND (t."X_4" > 0.099999) AND (t."X_4" > 0.167458) AND (t."X_7" <= -0.859407) AND (t."X_4" > 0.660977)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" > -0.173320) AND (t."X_4" <= 0.164898) AND (t."X_9" > -0.529581)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" > -0.173320) AND (t."X_4" <= 0.164898) AND (t."X_9" <= -0.529581) AND (t."X_9" <= -0.713364)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" <= 0.649023) AND (t."X_7" > -0.173320) AND (t."X_4" <= 0.164898) AND (t."X_9" <= -0.529581) AND (t."X_9" > -0.713364)) THEN 78 ELSE NULL END AS "Leaf_78",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" > 0.649023) AND (t."X_4" > 0.888321) AND (t."X_9" > -0.878712)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" > 0.649023) AND (t."X_4" > 0.888321) AND (t."X_9" <= -0.878712) AND (t."X_4" <= 0.979094)) THEN 81 ELSE NULL END AS "Leaf_81",
      CASE WHEN((t."X_6" > -0.301522) AND (t."X_4" <= 1.110219) AND (t."X_9" > -2.691467) AND (t."X_8" > -2.958045) AND (t."X_6" > 0.649023) AND (t."X_4" > 0.888321) AND (t."X_9" <= -0.878712) AND (t."X_4" > 0.979094)) THEN 82 ELSE NULL END AS "Leaf_82"
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
    SELECT 0 AS nid,  0.458984 AS "P_0", 0.541016 AS "P_1", 1 AS "D", 0.541016 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.939560 AS "P_0", 0.060440 AS "P_1", 0 AS "D", 0.939560 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.193939 AS "P_0", 0.806061 AS "P_1", 1 AS "D", 0.806061 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.139610 AS "P_0", 0.860390 AS "P_1", 1 AS "D", 0.860390 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.954545 AS "P_0", 0.045455 AS "P_1", 0 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.136808 AS "P_0", 0.863192 AS "P_1", 1 AS "D", 0.863192 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.133987 AS "P_0", 0.866013 AS "P_1", 1 AS "D", 0.866013 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.242038 AS "P_0", 0.757962 AS "P_1", 1 AS "D", 0.757962 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.020134 AS "P_0", 0.979866 AS "P_1", 1 AS "D", 0.979866 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.354839 AS "P_0", 0.645161 AS "P_1", 1 AS "D", 0.645161 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.168421 AS "P_0", 0.831579 AS "P_1", 1 AS "D", 0.831579 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.015152 AS "P_0", 0.984848 AS "P_1", 1 AS "D", 0.984848 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.517241 AS "P_0", 0.482759 AS "P_1", 0 AS "D", 0.517241 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.033333 AS "P_0", 0.966667 AS "P_1", 1 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.576923 AS "P_0", 0.423077 AS "P_1", 0 AS "D", 0.576923 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.681818 AS "P_0", 0.318182 AS "P_1", 0 AS "D", 0.681818 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.461538 AS "P_0", 0.538462 AS "P_1", 1 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.979730 AS "P_0", 0.020270 AS "P_1", 0 AS "D", 0.979730 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.781250 AS "P_0", 0.218750 AS "P_1", 0 AS "D", 0.781250 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.650000 AS "P_0", 0.350000 AS "P_1", 0 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.007519 AS "P_0", 0.992481 AS "P_1", 1 AS "D", 0.992481 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.979592 AS "P_0", 0.020408 AS "P_1", 0 AS "D", 0.979592 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    GREATEST( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1" ) AS "Max_Score"
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