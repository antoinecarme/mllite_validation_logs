WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "digits_quantized" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50", t1."Leaf_54", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_36" <= 0.500000) AND (t."X_28" > 1.500000) AND (t."X_21" <= 4.500000) AND (t."X_43" > 1.500000) AND (t."X_53" > 6.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_36" <= 0.500000) AND (t."X_28" > 1.500000) AND (t."X_21" <= 4.500000) AND (t."X_43" > 1.500000) AND (t."X_53" <= 6.500000) AND (t."X_58" <= 7.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_36" <= 0.500000) AND (t."X_28" > 1.500000) AND (t."X_21" <= 4.500000) AND (t."X_43" > 1.500000) AND (t."X_53" <= 6.500000) AND (t."X_58" > 7.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_36" <= 0.500000) AND (t."X_28" > 1.500000) AND (t."X_21" <= 4.500000) AND (t."X_43" <= 1.500000) AND (t."X_20" <= 6.000000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_36" <= 0.500000) AND (t."X_28" > 1.500000) AND (t."X_21" <= 4.500000) AND (t."X_43" <= 1.500000) AND (t."X_20" > 6.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_36" <= 0.500000) AND (t."X_28" > 1.500000) AND (t."X_21" > 4.500000) AND (t."X_34" <= 4.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_36" <= 0.500000) AND (t."X_28" > 1.500000) AND (t."X_21" > 4.500000) AND (t."X_34" > 4.500000) AND (t."X_27" <= 6.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_36" <= 0.500000) AND (t."X_28" > 1.500000) AND (t."X_21" > 4.500000) AND (t."X_34" > 4.500000) AND (t."X_27" > 6.500000) AND (t."X_35" <= 4.000000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_36" <= 0.500000) AND (t."X_28" > 1.500000) AND (t."X_21" > 4.500000) AND (t."X_34" > 4.500000) AND (t."X_27" > 6.500000) AND (t."X_35" > 4.000000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_36" <= 0.500000) AND (t."X_28" <= 1.500000) AND (t."X_21" > 1.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_36" <= 0.500000) AND (t."X_28" <= 1.500000) AND (t."X_21" <= 1.000000) AND (t."X_60" <= 4.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_36" <= 0.500000) AND (t."X_28" <= 1.500000) AND (t."X_21" <= 1.000000) AND (t."X_60" > 4.500000) AND (t."X_29" > 1.000000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_36" <= 0.500000) AND (t."X_28" <= 1.500000) AND (t."X_21" <= 1.000000) AND (t."X_60" > 4.500000) AND (t."X_29" <= 1.000000) AND (t."X_58" <= 4.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_36" <= 0.500000) AND (t."X_28" <= 1.500000) AND (t."X_21" <= 1.000000) AND (t."X_60" > 4.500000) AND (t."X_29" <= 1.000000) AND (t."X_58" > 4.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" <= 1.000000) AND (t."X_42" <= 5.500000) AND (t."X_5" > 3.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" <= 1.000000) AND (t."X_42" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_9" > 3.000000) AND (t."X_37" <= 2.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" <= 1.000000) AND (t."X_42" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_9" > 3.000000) AND (t."X_37" > 2.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" <= 1.000000) AND (t."X_42" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_9" <= 3.000000) AND (t."X_37" <= 4.000000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" <= 1.000000) AND (t."X_42" <= 5.500000) AND (t."X_5" <= 3.500000) AND (t."X_9" <= 3.000000) AND (t."X_37" > 4.000000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" <= 1.000000) AND (t."X_42" > 5.500000) AND (t."X_54" <= 2.500000) AND (t."X_37" <= 2.500000) AND (t."X_45" <= 1.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" <= 1.000000) AND (t."X_42" > 5.500000) AND (t."X_54" <= 2.500000) AND (t."X_37" <= 2.500000) AND (t."X_45" > 1.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" <= 1.000000) AND (t."X_42" > 5.500000) AND (t."X_54" <= 2.500000) AND (t."X_37" > 2.500000) AND (t."X_44" <= 4.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" <= 1.000000) AND (t."X_42" > 5.500000) AND (t."X_54" <= 2.500000) AND (t."X_37" > 2.500000) AND (t."X_44" > 4.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" <= 1.000000) AND (t."X_42" > 5.500000) AND (t."X_54" > 2.500000) AND (t."X_9" <= 7.000000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" <= 1.000000) AND (t."X_42" > 5.500000) AND (t."X_54" > 2.500000) AND (t."X_9" > 7.000000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" > 1.000000) AND (t."X_60" <= 1.500000) AND (t."X_5" > 1.500000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" > 1.000000) AND (t."X_60" <= 1.500000) AND (t."X_5" <= 1.500000) AND (t."X_12" <= 2.500000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" > 1.000000) AND (t."X_60" <= 1.500000) AND (t."X_5" <= 1.500000) AND (t."X_12" > 2.500000) AND (t."X_52" <= 2.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" > 1.000000) AND (t."X_60" <= 1.500000) AND (t."X_5" <= 1.500000) AND (t."X_12" > 2.500000) AND (t."X_52" > 2.500000)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" > 1.000000) AND (t."X_60" > 1.500000) AND (t."X_33" > 7.500000)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" > 1.000000) AND (t."X_60" > 1.500000) AND (t."X_33" <= 7.500000) AND (t."X_43" <= 3.500000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_36" > 0.500000) AND (t."X_21" > 1.000000) AND (t."X_60" > 1.500000) AND (t."X_33" <= 7.500000) AND (t."X_43" > 3.500000)) THEN 62 ELSE NULL END AS "Leaf_62"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.099054 AS "P_0", 0.101280 AS "P_1", 0.098497 AS "P_2", 0.101836 AS "P_3", 0.100723 AS "P_4", 0.101280 AS "P_5", 0.100723 AS "P_6", 0.099610 AS "P_7", 0.096828 AS "P_8", 0.100167 AS "P_9", 3 AS "D", 0.101836 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.632727 AS "P_0", 0.000000 AS "P_1", 0.014545 AS "P_2", 0.003636 AS "P_3", 0.021818 AS "P_4", 0.090909 AS "P_5", 0.018182 AS "P_6", 0.000000 AS "P_7", 0.010909 AS "P_8", 0.207273 AS "P_9", 0 AS "D", 0.632727 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.002628 AS "P_0", 0.119580 AS "P_1", 0.113666 AS "P_2", 0.119580 AS "P_3", 0.114980 AS "P_4", 0.103154 AS "P_5", 0.115637 AS "P_6", 0.117608 AS "P_7", 0.112352 AS "P_8", 0.080815 AS "P_9", 1 AS "D", 0.119580 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.909574 AS "P_0", 0.000000 AS "P_1", 0.010638 AS "P_2", 0.000000 AS "P_3", 0.031915 AS "P_4", 0.031915 AS "P_5", 0.015957 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 0 AS "D", 0.909574 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.034483 AS "P_0", 0.000000 AS "P_1", 0.022989 AS "P_2", 0.011494 AS "P_3", 0.000000 AS "P_4", 0.218391 AS "P_5", 0.022989 AS "P_6", 0.000000 AS "P_7", 0.034483 AS "P_8", 0.655172 AS "P_9", 9 AS "D", 0.655172 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.692308 AS "P_5", 0.076923 AS "P_6", 0.000000 AS "P_7", 0.038462 AS "P_8", 0.115385 AS "P_9", 5 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.049180 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.016393 AS "P_3", 0.000000 AS "P_4", 0.016393 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.032787 AS "P_8", 0.885246 AS "P_9", 9 AS "D", 0.885246 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.900000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.100000 AS "P_9", 5 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.333333 AS "P_6", 0.000000 AS "P_7", 0.166667 AS "P_8", 0.166667 AS "P_9", 2 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.250000 AS "P_8", 0.250000 AS "P_9", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.500000 AS "P_8", 0.500000 AS "P_9", 8 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 1.000000 AS "P_9", 9 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.018182 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.981818 AS "P_9", 9 AS "D", 0.981818 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.166667 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.333333 AS "P_8", 0.000000 AS "P_9", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.333333 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.666667 AS "P_8", 0.000000 AS "P_9", 8 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 1.000000 AS "P_8", 0.000000 AS "P_9", 8 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.062500 AS "P_0", 0.000000 AS "P_1", 0.062500 AS "P_2", 0.000000 AS "P_3", 0.312500 AS "P_4", 0.375000 AS "P_5", 0.187500 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 5 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.988372 AS "P_0", 0.000000 AS "P_1", 0.005814 AS "P_2", 0.000000 AS "P_3", 0.005814 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 0 AS "D", 0.988372 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 1.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 5 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.100000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.000000 AS "P_3", 0.500000 AS "P_4", 0.000000 AS "P_5", 0.300000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 4 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.600000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 6 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 1.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 6 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.092672 AS "P_1", 0.099138 AS "P_2", 0.032328 AS "P_3", 0.071121 AS "P_4", 0.312500 AS "P_5", 0.370690 AS "P_6", 0.012931 AS "P_7", 0.006466 AS "P_8", 0.002155 AS "P_9", 6 AS "D", 0.370690 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.003781 AS "P_0", 0.131380 AS "P_1", 0.120038 AS "P_2", 0.157845 AS "P_3", 0.134216 AS "P_4", 0.011342 AS "P_5", 0.003781 AS "P_6", 0.163516 AS "P_7", 0.158790 AS "P_8", 0.115312 AS "P_9", 7 AS "D", 0.163516 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.143426 AS "P_1", 0.147410 AS "P_2", 0.059761 AS "P_3", 0.027888 AS "P_4", 0.565737 AS "P_5", 0.019920 AS "P_6", 0.019920 AS "P_7", 0.011952 AS "P_8", 0.003984 AS "P_9", 5 AS "D", 0.565737 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.032864 AS "P_1", 0.042254 AS "P_2", 0.000000 AS "P_3", 0.122066 AS "P_4", 0.014085 AS "P_5", 0.784038 AS "P_6", 0.004695 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 6 AS "D", 0.784038 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.342593 AS "P_2", 0.129630 AS "P_3", 0.046296 AS "P_4", 0.027778 AS "P_5", 0.046296 AS "P_6", 0.037037 AS "P_7", 0.027778 AS "P_8", 0.009259 AS "P_9", 2 AS "D", 0.342593 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.006993 AS "P_3", 0.013986 AS "P_4", 0.972028 AS "P_5", 0.000000 AS "P_6", 0.006993 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 5 AS "D", 0.972028 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.680000 AS "P_1", 0.060000 AS "P_2", 0.020000 AS "P_3", 0.100000 AS "P_4", 0.020000 AS "P_5", 0.100000 AS "P_6", 0.020000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 1 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.034483 AS "P_1", 0.586207 AS "P_2", 0.224138 AS "P_3", 0.000000 AS "P_4", 0.034483 AS "P_5", 0.000000 AS "P_6", 0.051724 AS "P_7", 0.051724 AS "P_8", 0.017241 AS "P_9", 2 AS "D", 0.586207 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.052632 AS "P_1", 0.894737 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.052632 AS "P_8", 0.000000 AS "P_9", 2 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.650000 AS "P_3", 0.000000 AS "P_4", 0.100000 AS "P_5", 0.000000 AS "P_6", 0.150000 AS "P_7", 0.050000 AS "P_8", 0.050000 AS "P_9", 3 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.894737 AS "P_1", 0.078947 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.026316 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.083333 AS "P_3", 0.416667 AS "P_4", 0.083333 AS "P_5", 0.333333 AS "P_6", 0.083333 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 4 AS "D", 0.416667 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.170732 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.634146 AS "P_4", 0.024390 AS "P_5", 0.146341 AS "P_6", 0.024390 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 4 AS "D", 0.634146 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.052326 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.011628 AS "P_5", 0.936047 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 6 AS "D", 0.936047 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.466667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.133333 AS "P_4", 0.000000 AS "P_5", 0.400000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 1 AS "D", 0.466667 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.923077 AS "P_4", 0.038462 AS "P_5", 0.000000 AS "P_6", 0.038462 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 4 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.250000 AS "P_4", 0.000000 AS "P_5", 0.750000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 6 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.500000 AS "P_5", 0.000000 AS "P_6", 0.500000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 5 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.012270 AS "P_5", 0.987730 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 6 AS "D", 0.987730 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.044534 AS "P_1", 0.024291 AS "P_2", 0.040486 AS "P_3", 0.113360 AS "P_4", 0.016194 AS "P_5", 0.000000 AS "P_6", 0.651822 AS "P_7", 0.044534 AS "P_8", 0.064777 AS "P_9", 7 AS "D", 0.651822 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.004932 AS "P_0", 0.157830 AS "P_1", 0.149199 AS "P_2", 0.193588 AS "P_3", 0.140567 AS "P_4", 0.009864 AS "P_5", 0.004932 AS "P_6", 0.014797 AS "P_7", 0.193588 AS "P_8", 0.130703 AS "P_9", 3 AS "D", 0.193588 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.044444 AS "P_1", 0.111111 AS "P_2", 0.000000 AS "P_3", 0.577778 AS "P_4", 0.044444 AS "P_5", 0.000000 AS "P_6", 0.133333 AS "P_7", 0.066667 AS "P_8", 0.022222 AS "P_9", 4 AS "D", 0.577778 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.044554 AS "P_1", 0.004950 AS "P_2", 0.049505 AS "P_3", 0.009901 AS "P_4", 0.009901 AS "P_5", 0.000000 AS "P_6", 0.767327 AS "P_7", 0.039604 AS "P_8", 0.074257 AS "P_9", 7 AS "D", 0.767327 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.000000 AS "P_8", 0.000000 AS "P_9", 4 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 0.105263 AS "P_1", 0.263158 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.105263 AS "P_5", 0.000000 AS "P_6", 0.315789 AS "P_7", 0.157895 AS "P_8", 0.052632 AS "P_9", 7 AS "D", 0.315789 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.000000 AS "P_5", 0.000000 AS "P_6", 0.750000 AS "P_7", 0.125000 AS "P_8", 0.125000 AS "P_9", 7 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 0.181818 AS "P_1", 0.454545 AS "P_2", 0.000000 AS "P_3", 0.000000 AS "P_4", 0.181818 AS "P_5", 0.000000 AS "P_6", 0.000000 AS "P_7", 0.181818 AS "P_8", 0.000000 AS "P_9", 2 AS "D", 0.454545 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.004267 AS "P_0", 0.170697 AS "P_1", 0.172119 AS "P_2", 0.223329 AS "P_3", 0.031294 AS "P_4", 0.009957 AS "P_5", 0.001422 AS "P_6", 0.015647 AS "P_7", 0.220484 AS "P_8", 0.150782 AS "P_9", 3 AS "D", 0.223329 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.009259 AS "P_0", 0.074074 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0.851852 AS "P_4", 0.009259 AS "P_5", 0.027778 AS "P_6", 0.009259 AS "P_7", 0.018519 AS "P_8", 0.000000 AS "P_9", 4 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 0.082067 AS "P_1", 0.027356 AS "P_2", 0.443769 AS "P_3", 0.009119 AS "P_4", 0.021277 AS "P_5", 0.000000 AS "P_6", 0.009119 AS "P_7", 0.091185 AS "P_8", 0.316109 AS "P_9", 3 AS "D", 0.443769 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.008021 AS "P_0", 0.248663 AS "P_1", 0.299465 AS "P_2", 0.029412 AS "P_3", 0.050802 AS "P_4", 0.000000 AS "P_5", 0.002674 AS "P_6", 0.021390 AS "P_7", 0.334225 AS "P_8", 0.005348 AS "P_9", 8 AS "D", 0.334225 AS "DP"
  ) AS "Values"),
"DT_Output" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9", 
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
   CAST(NULL AS FLOAT)  AS "Score_4",
   "DT_Output"."P_4" AS "Proba_4",
   CASE WHEN ("DT_Output"."P_4" IS NULL OR "DT_Output"."P_4" > 0.0) THEN LN( "DT_Output"."P_4" ) ELSE -1.79769313486231e+308 END AS "LogProba_4",
   CAST(NULL AS FLOAT)  AS "Score_5",
   "DT_Output"."P_5" AS "Proba_5",
   CASE WHEN ("DT_Output"."P_5" IS NULL OR "DT_Output"."P_5" > 0.0) THEN LN( "DT_Output"."P_5" ) ELSE -1.79769313486231e+308 END AS "LogProba_5",
   CAST(NULL AS FLOAT)  AS "Score_6",
   "DT_Output"."P_6" AS "Proba_6",
   CASE WHEN ("DT_Output"."P_6" IS NULL OR "DT_Output"."P_6" > 0.0) THEN LN( "DT_Output"."P_6" ) ELSE -1.79769313486231e+308 END AS "LogProba_6",
   CAST(NULL AS FLOAT)  AS "Score_7",
   "DT_Output"."P_7" AS "Proba_7",
   CASE WHEN ("DT_Output"."P_7" IS NULL OR "DT_Output"."P_7" > 0.0) THEN LN( "DT_Output"."P_7" ) ELSE -1.79769313486231e+308 END AS "LogProba_7",
   CAST(NULL AS FLOAT)  AS "Score_8",
   "DT_Output"."P_8" AS "Proba_8",
   CASE WHEN ("DT_Output"."P_8" IS NULL OR "DT_Output"."P_8" > 0.0) THEN LN( "DT_Output"."P_8" ) ELSE -1.79769313486231e+308 END AS "LogProba_8",
   CAST(NULL AS FLOAT)  AS "Score_9",
   "DT_Output"."P_9" AS "Proba_9",
   CASE WHEN ("DT_Output"."P_9" IS NULL OR "DT_Output"."P_9" > 0.0) THEN LN( "DT_Output"."P_9" ) ELSE -1.79769313486231e+308 END AS "LogProba_9",
   "DT_Output"."D" AS "Decision",
   "DT_Output"."DP" AS "DecisionProba"
FROM "DT_Output"