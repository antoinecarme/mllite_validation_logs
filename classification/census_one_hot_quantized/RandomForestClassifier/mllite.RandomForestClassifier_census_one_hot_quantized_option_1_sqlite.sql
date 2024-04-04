WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_14", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_34" <= 5.000000) AND (t."X_45" <= 6.500000) AND (t."X_0" > 4.500000) AND (t."X_11" > 5.000000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_34" <= 5.000000) AND (t."X_45" > 6.500000) AND (t."X_11" > 5.000000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_34" <= 5.000000) AND (t."X_45" > 6.500000) AND (t."X_11" <= 5.000000) AND (t."X_0" <= 4.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_34" <= 5.000000) AND (t."X_45" <= 6.500000) AND (t."X_0" > 4.500000) AND (t."X_11" <= 5.000000) AND (t."X_27" > 5.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_34" <= 5.000000) AND (t."X_45" <= 6.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_35" > 5.000000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_34" <= 5.000000) AND (t."X_45" <= 6.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_35" <= 5.000000) AND (t."X_11" <= 5.000000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_34" <= 5.000000) AND (t."X_45" <= 6.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_35" <= 5.000000) AND (t."X_11" > 5.000000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_34" <= 5.000000) AND (t."X_45" > 6.500000) AND (t."X_11" <= 5.000000) AND (t."X_0" > 4.500000) AND (t."X_0" <= 6.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_34" <= 5.000000) AND (t."X_45" > 6.500000) AND (t."X_11" <= 5.000000) AND (t."X_0" > 4.500000) AND (t."X_0" > 6.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_34" <= 5.000000) AND (t."X_45" <= 6.500000) AND (t."X_0" > 4.500000) AND (t."X_11" <= 5.000000) AND (t."X_27" <= 5.000000) AND (t."X_50" <= 5.000000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_34" <= 5.000000) AND (t."X_45" <= 6.500000) AND (t."X_0" > 4.500000) AND (t."X_11" <= 5.000000) AND (t."X_27" <= 5.000000) AND (t."X_50" > 5.000000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_34" <= 5.000000) AND (t."X_45" <= 6.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_45" <= 3.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_34" <= 5.000000) AND (t."X_45" <= 6.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_45" > 3.000000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_34" > 5.000000) AND (t."X_45" > 3.000000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_34" > 5.000000) AND (t."X_45" <= 3.000000) AND (t."X_45" <= 0.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_34" > 5.000000) AND (t."X_45" <= 3.000000) AND (t."X_45" > 0.500000)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 0 AS nid,  0.759490 AS "P_0", 0.240510 AS "P_1", 0 AS "D", 0.759490 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.717683 AS "P_0", 0.282317 AS "P_1", 0 AS "D", 0.717683 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.985196 AS "P_0", 0.014804 AS "P_1", 0 AS "D", 0.985196 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.769369 AS "P_0", 0.230631 AS "P_1", 0 AS "D", 0.769369 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.559357 AS "P_0", 0.440643 AS "P_1", 0 AS "D", 0.559357 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.877412 AS "P_0", 0.122588 AS "P_1", 0 AS "D", 0.877412 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.701150 AS "P_0", 0.298850 AS "P_1", 0 AS "D", 0.701150 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.741741 AS "P_0", 0.258259 AS "P_1", 0 AS "D", 0.741741 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.481481 AS "P_0", 0.518519 AS "P_1", 1 AS "D", 0.518519 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.417368 AS "P_0", 0.582632 AS "P_1", 1 AS "D", 0.582632 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.768121 AS "P_0", 0.231879 AS "P_1", 0 AS "D", 0.768121 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.512256 AS "P_0", 0.487744 AS "P_1", 0 AS "D", 0.512256 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.718564 AS "P_0", 0.281436 AS "P_1", 0 AS "D", 0.718564 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.944748 AS "P_0", 0.055252 AS "P_1", 0 AS "D", 0.944748 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.970659 AS "P_0", 0.029341 AS "P_1", 0 AS "D", 0.970659 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.835166 AS "P_0", 0.164834 AS "P_1", 0 AS "D", 0.835166 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.810921 AS "P_0", 0.189079 AS "P_1", 0 AS "D", 0.810921 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.979798 AS "P_0", 0.020202 AS "P_1", 0 AS "D", 0.979798 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.842263 AS "P_0", 0.157737 AS "P_1", 0 AS "D", 0.842263 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.687151 AS "P_0", 0.312849 AS "P_1", 0 AS "D", 0.687151 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.527965 AS "P_0", 0.472035 AS "P_1", 0 AS "D", 0.527965 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.497368 AS "P_0", 0.502632 AS "P_1", 1 AS "D", 0.502632 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.760615 AS "P_0", 0.239385 AS "P_1", 0 AS "D", 0.760615 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.714165 AS "P_0", 0.285835 AS "P_1", 0 AS "D", 0.714165 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.986873 AS "P_0", 0.013127 AS "P_1", 0 AS "D", 0.986873 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.962103 AS "P_0", 0.037897 AS "P_1", 0 AS "D", 0.962103 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.995626 AS "P_0", 0.004374 AS "P_1", 0 AS "D", 0.995626 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.976689 AS "P_0", 0.023311 AS "P_1", 0 AS "D", 0.976689 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.998361 AS "P_0", 0.001639 AS "P_1", 0 AS "D", 0.998361 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.992495 AS "P_0", 0.007505 AS "P_1", 0 AS "D", 0.992495 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_13", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_45" > 6.500000) AND (t."X_26" <= 5.000000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_45" > 6.500000) AND (t."X_26" > 5.000000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_50" <= 5.000000) AND (t."X_0" <= 4.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_50" <= 5.000000) AND (t."X_0" > 4.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_50" > 5.000000) AND (t."X_41" > 5.000000) AND (t."X_45" <= 3.000000) AND (t."X_0" <= 1.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_50" > 5.000000) AND (t."X_41" > 5.000000) AND (t."X_45" > 3.000000) AND (t."X_12" <= 5.000000) AND (t."X_0" <= 4.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_50" > 5.000000) AND (t."X_41" > 5.000000) AND (t."X_45" > 3.000000) AND (t."X_12" <= 5.000000) AND (t."X_0" > 4.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_50" > 5.000000) AND (t."X_41" > 5.000000) AND (t."X_45" <= 3.000000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 5.000000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_50" > 5.000000) AND (t."X_41" > 5.000000) AND (t."X_45" <= 3.000000) AND (t."X_0" > 1.500000) AND (t."X_12" > 5.000000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_50" > 5.000000) AND (t."X_41" <= 5.000000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_50" > 5.000000) AND (t."X_41" <= 5.000000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_50" > 5.000000) AND (t."X_41" <= 5.000000) AND (t."X_0" > 4.500000) AND (t."X_8" <= 4.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_50" > 5.000000) AND (t."X_41" <= 5.000000) AND (t."X_0" > 4.500000) AND (t."X_8" > 4.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_50" > 5.000000) AND (t."X_41" > 5.000000) AND (t."X_45" > 3.000000) AND (t."X_12" > 5.000000) AND (t."X_8" <= 5.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_50" > 5.000000) AND (t."X_41" > 5.000000) AND (t."X_45" > 3.000000) AND (t."X_12" > 5.000000) AND (t."X_8" > 5.500000)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.760903 AS "P_0", 0.239097 AS "P_1", 0 AS "D", 0.760903 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.812480 AS "P_0", 0.187520 AS "P_1", 0 AS "D", 0.812480 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.577440 AS "P_0", 0.422560 AS "P_1", 0 AS "D", 0.577440 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.633626 AS "P_0", 0.366374 AS "P_1", 0 AS "D", 0.633626 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.369965 AS "P_0", 0.630035 AS "P_1", 1 AS "D", 0.630035 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.844268 AS "P_0", 0.155732 AS "P_1", 0 AS "D", 0.844268 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.808713 AS "P_0", 0.191286 AS "P_1", 0 AS "D", 0.808713 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.922465 AS "P_0", 0.077535 AS "P_1", 0 AS "D", 0.922465 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.766650 AS "P_0", 0.233350 AS "P_1", 0 AS "D", 0.766650 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.903413 AS "P_0", 0.096587 AS "P_1", 0 AS "D", 0.903413 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.793720 AS "P_0", 0.206280 AS "P_1", 0 AS "D", 0.793720 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.910630 AS "P_0", 0.089371 AS "P_1", 0 AS "D", 0.910630 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.748456 AS "P_0", 0.251544 AS "P_1", 0 AS "D", 0.748456 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.995466 AS "P_0", 0.004534 AS "P_1", 0 AS "D", 0.995466 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.846712 AS "P_0", 0.153288 AS "P_1", 0 AS "D", 0.846712 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.703601 AS "P_0", 0.296400 AS "P_1", 0 AS "D", 0.703601 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.829197 AS "P_0", 0.170803 AS "P_1", 0 AS "D", 0.829197 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.848268 AS "P_0", 0.151732 AS "P_1", 0 AS "D", 0.848268 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.594626 AS "P_0", 0.405374 AS "P_1", 0 AS "D", 0.594626 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.802267 AS "P_0", 0.197733 AS "P_1", 0 AS "D", 0.802267 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.925816 AS "P_0", 0.074184 AS "P_1", 0 AS "D", 0.925816 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.956649 AS "P_0", 0.043351 AS "P_1", 0 AS "D", 0.956649 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.846903 AS "P_0", 0.153097 AS "P_1", 0 AS "D", 0.846903 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.990645 AS "P_0", 0.009355 AS "P_1", 0 AS "D", 0.990645 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.929323 AS "P_0", 0.070677 AS "P_1", 0 AS "D", 0.929323 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.859091 AS "P_0", 0.140909 AS "P_1", 0 AS "D", 0.859091 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.835345 AS "P_0", 0.164655 AS "P_1", 0 AS "D", 0.835345 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.824664 AS "P_0", 0.175336 AS "P_1", 0 AS "D", 0.824664 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.836895 AS "P_0", 0.163105 AS "P_1", 0 AS "D", 0.836895 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_18" > 5.000000) AND (t."X_28" <= 5.000000) AND (t."X_0" <= 4.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_18" > 5.000000) AND (t."X_28" <= 5.000000) AND (t."X_0" > 4.500000) AND (t."X_11" > 5.000000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_18" > 5.000000) AND (t."X_28" > 5.000000) AND (t."X_11" <= 5.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_18" > 5.000000) AND (t."X_28" > 5.000000) AND (t."X_11" > 5.000000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_18" > 5.000000) AND (t."X_28" <= 5.000000) AND (t."X_0" > 4.500000) AND (t."X_11" <= 5.000000) AND (t."X_41" <= 5.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_18" > 5.000000) AND (t."X_28" <= 5.000000) AND (t."X_0" > 4.500000) AND (t."X_11" <= 5.000000) AND (t."X_41" > 5.000000) AND (t."X_2" <= 5.000000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_18" > 5.000000) AND (t."X_28" <= 5.000000) AND (t."X_0" > 4.500000) AND (t."X_11" <= 5.000000) AND (t."X_41" > 5.000000) AND (t."X_2" > 5.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_18" <= 5.000000) AND (t."X_50" > 5.000000) AND (t."X_28" <= 5.000000) AND (t."X_11" > 5.000000) AND (t."X_42" <= 5.000000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_18" <= 5.000000) AND (t."X_50" > 5.000000) AND (t."X_28" <= 5.000000) AND (t."X_11" > 5.000000) AND (t."X_42" > 5.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_18" <= 5.000000) AND (t."X_50" <= 5.000000) AND (t."X_42" <= 5.000000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_18" <= 5.000000) AND (t."X_50" <= 5.000000) AND (t."X_42" > 5.000000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_18" <= 5.000000) AND (t."X_50" > 5.000000) AND (t."X_28" <= 5.000000) AND (t."X_11" <= 5.000000) AND (t."X_22" > 5.000000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_18" <= 5.000000) AND (t."X_50" > 5.000000) AND (t."X_28" > 5.000000) AND (t."X_2" <= 5.000000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_18" <= 5.000000) AND (t."X_50" > 5.000000) AND (t."X_28" > 5.000000) AND (t."X_2" > 5.000000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_18" <= 5.000000) AND (t."X_50" > 5.000000) AND (t."X_28" <= 5.000000) AND (t."X_11" <= 5.000000) AND (t."X_22" <= 5.000000) AND (t."X_21" <= 5.000000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_18" <= 5.000000) AND (t."X_50" > 5.000000) AND (t."X_28" <= 5.000000) AND (t."X_11" <= 5.000000) AND (t."X_22" <= 5.000000) AND (t."X_21" > 5.000000)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 0 AS nid,  0.761721 AS "P_0", 0.238279 AS "P_1", 0 AS "D", 0.761721 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.936278 AS "P_0", 0.063722 AS "P_1", 0 AS "D", 0.936278 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.554850 AS "P_0", 0.445150 AS "P_1", 0 AS "D", 0.554850 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.597796 AS "P_0", 0.402204 AS "P_1", 0 AS "D", 0.597796 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.280040 AS "P_0", 0.719960 AS "P_1", 1 AS "D", 0.719960 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.728987 AS "P_0", 0.271013 AS "P_1", 0 AS "D", 0.728987 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.541811 AS "P_0", 0.458189 AS "P_1", 0 AS "D", 0.541811 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.588603 AS "P_0", 0.411397 AS "P_1", 0 AS "D", 0.588603 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.297521 AS "P_0", 0.702479 AS "P_1", 1 AS "D", 0.702479 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.257213 AS "P_0", 0.742787 AS "P_1", 1 AS "D", 0.742787 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.327869 AS "P_0", 0.672131 AS "P_1", 1 AS "D", 0.672131 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.647766 AS "P_0", 0.352234 AS "P_1", 0 AS "D", 0.647766 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.581856 AS "P_0", 0.418144 AS "P_1", 0 AS "D", 0.581856 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.601277 AS "P_0", 0.398723 AS "P_1", 0 AS "D", 0.601277 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.569771 AS "P_0", 0.430229 AS "P_1", 0 AS "D", 0.569771 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.946369 AS "P_0", 0.053631 AS "P_1", 0 AS "D", 0.946369 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.935140 AS "P_0", 0.064860 AS "P_1", 0 AS "D", 0.935140 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.949382 AS "P_0", 0.050618 AS "P_1", 0 AS "D", 0.949382 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.823157 AS "P_0", 0.176843 AS "P_1", 0 AS "D", 0.823157 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.960049 AS "P_0", 0.039951 AS "P_1", 0 AS "D", 0.960049 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.866997 AS "P_0", 0.133003 AS "P_1", 0 AS "D", 0.866997 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.913305 AS "P_0", 0.086695 AS "P_1", 0 AS "D", 0.913305 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.824045 AS "P_0", 0.175955 AS "P_1", 0 AS "D", 0.824045 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.966265 AS "P_0", 0.033735 AS "P_1", 0 AS "D", 0.966265 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.929167 AS "P_0", 0.070833 AS "P_1", 0 AS "D", 0.929167 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.961379 AS "P_0", 0.038621 AS "P_1", 0 AS "D", 0.961379 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.939633 AS "P_0", 0.060367 AS "P_1", 0 AS "D", 0.939633 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.827068 AS "P_0", 0.172932 AS "P_1", 0 AS "D", 0.827068 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.820013 AS "P_0", 0.179987 AS "P_1", 0 AS "D", 0.820013 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.961913 AS "P_0", 0.038087 AS "P_1", 0 AS "D", 0.961913 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.953712 AS "P_0", 0.046288 AS "P_1", 0 AS "D", 0.953712 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_16" > 7.500000) AND (t."X_17" > 5.000000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_16" > 7.500000) AND (t."X_17" <= 5.000000) AND (t."X_0" <= 4.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_16" > 7.500000) AND (t."X_17" <= 5.000000) AND (t."X_0" > 4.500000) AND (t."X_16" <= 8.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_16" <= 7.500000) AND (t."X_16" <= 2.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_16" <= 7.500000) AND (t."X_16" > 2.000000) AND (t."X_0" > 4.500000) AND (t."X_26" > 5.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_16" <= 7.500000) AND (t."X_16" > 2.000000) AND (t."X_0" > 4.500000) AND (t."X_26" <= 5.000000) AND (t."X_17" <= 5.000000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_16" <= 7.500000) AND (t."X_16" > 2.000000) AND (t."X_0" <= 4.500000) AND (t."X_17" <= 5.000000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_16" <= 7.500000) AND (t."X_16" > 2.000000) AND (t."X_0" <= 4.500000) AND (t."X_17" > 5.000000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_16" <= 7.500000) AND (t."X_16" > 2.000000) AND (t."X_0" > 4.500000) AND (t."X_26" <= 5.000000) AND (t."X_17" > 5.000000) AND (t."X_0" <= 6.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_16" <= 7.500000) AND (t."X_16" > 2.000000) AND (t."X_0" > 4.500000) AND (t."X_26" <= 5.000000) AND (t."X_17" > 5.000000) AND (t."X_0" > 6.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_16" > 7.500000) AND (t."X_17" <= 5.000000) AND (t."X_0" > 4.500000) AND (t."X_16" > 8.500000) AND (t."X_0" <= 6.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_16" > 7.500000) AND (t."X_17" <= 5.000000) AND (t."X_0" > 4.500000) AND (t."X_16" > 8.500000) AND (t."X_0" > 6.500000)) THEN 22 ELSE NULL END AS "Leaf_22"
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
    SELECT 0 AS nid,  0.759121 AS "P_0", 0.240879 AS "P_1", 0 AS "D", 0.759121 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.838596 AS "P_0", 0.161404 AS "P_1", 0 AS "D", 0.838596 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.517848 AS "P_0", 0.482152 AS "P_1", 0 AS "D", 0.517848 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.493069 AS "P_0", 0.506931 AS "P_1", 1 AS "D", 0.506931 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.714708 AS "P_0", 0.285292 AS "P_1", 0 AS "D", 0.714708 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.713622 AS "P_0", 0.286378 AS "P_1", 0 AS "D", 0.713622 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.345897 AS "P_0", 0.654103 AS "P_1", 1 AS "D", 0.654103 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.394374 AS "P_0", 0.605626 AS "P_1", 1 AS "D", 0.605626 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.280727 AS "P_0", 0.719273 AS "P_1", 1 AS "D", 0.719273 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.941645 AS "P_0", 0.058355 AS "P_1", 0 AS "D", 0.941645 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.816821 AS "P_0", 0.183179 AS "P_1", 0 AS "D", 0.816821 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.918060 AS "P_0", 0.081940 AS "P_1", 0 AS "D", 0.918060 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.722151 AS "P_0", 0.277849 AS "P_1", 0 AS "D", 0.722151 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.746048 AS "P_0", 0.253952 AS "P_1", 0 AS "D", 0.746048 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.559702 AS "P_0", 0.440298 AS "P_1", 0 AS "D", 0.559702 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.692013 AS "P_0", 0.307987 AS "P_1", 0 AS "D", 0.692013 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.940444 AS "P_0", 0.059556 AS "P_1", 0 AS "D", 0.940444 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.913348 AS "P_0", 0.086652 AS "P_1", 0 AS "D", 0.913348 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.968725 AS "P_0", 0.031275 AS "P_1", 0 AS "D", 0.968725 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.949118 AS "P_0", 0.050882 AS "P_1", 0 AS "D", 0.949118 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.931909 AS "P_0", 0.068091 AS "P_1", 0 AS "D", 0.931909 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.284666 AS "P_0", 0.715334 AS "P_1", 1 AS "D", 0.715334 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.277559 AS "P_0", 0.722441 AS "P_1", 1 AS "D", 0.722441 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_32" <= 5.000000) AND (t."X_36" > 5.000000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_45" > 6.500000) AND (t."X_45" > 9.000000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_45" > 6.500000) AND (t."X_45" <= 9.000000) AND (t."X_0" <= 4.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_45" > 6.500000) AND (t."X_45" <= 9.000000) AND (t."X_0" > 4.500000) AND (t."X_32" > 5.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_32" > 5.000000) AND (t."X_45" <= 3.000000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_32" > 5.000000) AND (t."X_45" > 3.000000) AND (t."X_0" > 4.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_32" <= 5.000000) AND (t."X_36" <= 5.000000) AND (t."X_50" > 5.000000) AND (t."X_0" > 4.500000) AND (t."X_35" <= 5.000000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_32" <= 5.000000) AND (t."X_36" <= 5.000000) AND (t."X_50" > 5.000000) AND (t."X_0" > 4.500000) AND (t."X_35" > 5.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_32" <= 5.000000) AND (t."X_36" <= 5.000000) AND (t."X_50" <= 5.000000) AND (t."X_0" <= 4.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_32" <= 5.000000) AND (t."X_36" <= 5.000000) AND (t."X_50" <= 5.000000) AND (t."X_0" > 4.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_32" <= 5.000000) AND (t."X_36" <= 5.000000) AND (t."X_50" > 5.000000) AND (t."X_0" <= 4.500000) AND (t."X_34" <= 5.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_32" <= 5.000000) AND (t."X_36" <= 5.000000) AND (t."X_50" > 5.000000) AND (t."X_0" <= 4.500000) AND (t."X_34" > 5.000000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_32" > 5.000000) AND (t."X_45" > 3.000000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_45" <= 6.500000) AND (t."X_32" > 5.000000) AND (t."X_45" > 3.000000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_45" > 6.500000) AND (t."X_45" <= 9.000000) AND (t."X_0" > 4.500000) AND (t."X_32" <= 5.000000) AND (t."X_0" <= 6.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_45" > 6.500000) AND (t."X_45" <= 9.000000) AND (t."X_0" > 4.500000) AND (t."X_32" <= 5.000000) AND (t."X_0" > 6.500000) AND (t."X_2" <= 5.000000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_45" > 6.500000) AND (t."X_45" <= 9.000000) AND (t."X_0" > 4.500000) AND (t."X_32" <= 5.000000) AND (t."X_0" > 6.500000) AND (t."X_2" > 5.000000)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.762397 AS "P_0", 0.237603 AS "P_1", 0 AS "D", 0.762397 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.812669 AS "P_0", 0.187331 AS "P_1", 0 AS "D", 0.812669 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.582873 AS "P_0", 0.417127 AS "P_1", 0 AS "D", 0.582873 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.771472 AS "P_0", 0.228528 AS "P_1", 0 AS "D", 0.771472 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.931776 AS "P_0", 0.068224 AS "P_1", 0 AS "D", 0.931776 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.788632 AS "P_0", 0.211368 AS "P_1", 0 AS "D", 0.788632 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.549213 AS "P_0", 0.450787 AS "P_1", 0 AS "D", 0.549213 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.571650 AS "P_0", 0.428350 AS "P_1", 0 AS "D", 0.571650 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.645043 AS "P_0", 0.354957 AS "P_1", 0 AS "D", 0.645043 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.739209 AS "P_0", 0.260791 AS "P_1", 0 AS "D", 0.739209 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.473841 AS "P_0", 0.526159 AS "P_1", 1 AS "D", 0.526159 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.420118 AS "P_0", 0.579882 AS "P_1", 1 AS "D", 0.579882 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.686632 AS "P_0", 0.313368 AS "P_1", 0 AS "D", 0.686632 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.968304 AS "P_0", 0.031696 AS "P_1", 0 AS "D", 0.968304 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.919116 AS "P_0", 0.080884 AS "P_1", 0 AS "D", 0.919116 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.959088 AS "P_0", 0.040912 AS "P_1", 0 AS "D", 0.959088 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.879121 AS "P_0", 0.120879 AS "P_1", 0 AS "D", 0.879121 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.839130 AS "P_0", 0.160870 AS "P_1", 0 AS "D", 0.839130 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.782160 AS "P_0", 0.217840 AS "P_1", 0 AS "D", 0.782160 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.914377 AS "P_0", 0.085623 AS "P_1", 0 AS "D", 0.914377 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.659817 AS "P_0", 0.340183 AS "P_1", 0 AS "D", 0.659817 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.589627 AS "P_0", 0.410373 AS "P_1", 0 AS "D", 0.589627 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.932983 AS "P_0", 0.067017 AS "P_1", 0 AS "D", 0.932983 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.929945 AS "P_0", 0.070055 AS "P_1", 0 AS "D", 0.929945 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.752934 AS "P_0", 0.247066 AS "P_1", 0 AS "D", 0.752934 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.824329 AS "P_0", 0.175671 AS "P_1", 0 AS "D", 0.824329 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.994931 AS "P_0", 0.005069 AS "P_1", 0 AS "D", 0.994931 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.984000 AS "P_0", 0.016000 AS "P_1", 0 AS "D", 0.984000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.946070 AS "P_0", 0.053930 AS "P_1", 0 AS "D", 0.946070 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.420982 AS "P_0", 0.579018 AS "P_1", 1 AS "D", 0.579018 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.419300 AS "P_0", 0.580700 AS "P_1", 1 AS "D", 0.580700 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.434823 AS "P_0", 0.565177 AS "P_1", 1 AS "D", 0.565177 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.406151 AS "P_0", 0.593849 AS "P_1", 1 AS "D", 0.593849 AS "DP"
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