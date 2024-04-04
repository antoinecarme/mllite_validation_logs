WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_2", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_34" > 0.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_35" > 0.500000) AND (t."X_0" <= 2.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_35" > 0.500000) AND (t."X_0" > 2.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_11" > 0.500000) AND (t."X_45" <= 2.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_11" > 0.500000) AND (t."X_45" > 2.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" > 3.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_12" <= 0.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" <= 3.500000) AND (t."X_12" > 0.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_27" > 0.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" <= 1.500000) AND (t."X_35" > 0.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_27" > 0.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_12" > 0.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_12" <= 0.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_11" <= 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_12" > 0.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" <= 2.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_34" <= 0.500000) AND (t."X_45" <= 1.500000) AND (t."X_35" <= 0.500000) AND (t."X_27" <= 0.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" > 2.500000)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 0 AS nid,  0.783203 AS "P_0", 0.216797 AS "P_1", 0 AS "D", 0.783203 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.741259 AS "P_0", 0.258741 AS "P_1", 0 AS "D", 0.741259 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.696275 AS "P_0", 0.303725 AS "P_1", 0 AS "D", 0.696275 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.828358 AS "P_0", 0.171642 AS "P_1", 0 AS "D", 0.828358 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.613953 AS "P_0", 0.386046 AS "P_1", 0 AS "D", 0.613953 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.901961 AS "P_0", 0.098039 AS "P_1", 0 AS "D", 0.901961 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.593750 AS "P_0", 0.406250 AS "P_1", 0 AS "D", 0.593750 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.578378 AS "P_0", 0.421622 AS "P_1", 0 AS "D", 0.578378 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.636364 AS "P_0", 0.363636 AS "P_1", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.597403 AS "P_0", 0.402597 AS "P_1", 0 AS "D", 0.597403 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.483871 AS "P_0", 0.516129 AS "P_1", 1 AS "D", 0.516129 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.530973 AS "P_0", 0.469027 AS "P_1", 0 AS "D", 0.530973 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.780488 AS "P_0", 0.219512 AS "P_1", 0 AS "D", 0.780488 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.912088 AS "P_0", 0.087912 AS "P_1", 0 AS "D", 0.912088 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.927536 AS "P_0", 0.072464 AS "P_1", 0 AS "D", 0.927536 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.957447 AS "P_0", 0.042553 AS "P_1", 0 AS "D", 0.957447 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.863636 AS "P_0", 0.136364 AS "P_1", 0 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.894737 AS "P_0", 0.105263 AS "P_1", 0 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_45" <= 1.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_5" > 0.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 0.500000) AND (t."X_45" > 2.500000) AND (t."X_28" > 0.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 0.500000) AND (t."X_45" > 2.500000) AND (t."X_28" <= 0.500000) AND (t."X_11" <= 0.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 0.500000) AND (t."X_45" > 2.500000) AND (t."X_28" <= 0.500000) AND (t."X_11" > 0.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_41" <= 0.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_41" > 0.500000) AND (t."X_28" <= 0.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 0.500000) AND (t."X_45" <= 2.500000) AND (t."X_41" > 0.500000) AND (t."X_28" > 0.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 0.500000) AND (t."X_0" <= 2.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 0.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 0.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 0.500000) AND (t."X_0" > 2.500000) AND (t."X_2" > 0.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_5" <= 0.500000) AND (t."X_52" > 0.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_5" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_11" > 0.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_5" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_45" <= 2.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_45" > 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_5" <= 0.500000) AND (t."X_52" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_45" > 2.500000)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.763672 AS "P_0", 0.236328 AS "P_1", 0 AS "D", 0.763672 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.963964 AS "P_0", 0.036036 AS "P_1", 0 AS "D", 0.963964 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.708229 AS "P_0", 0.291771 AS "P_1", 0 AS "D", 0.708229 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.854054 AS "P_0", 0.145946 AS "P_1", 0 AS "D", 0.854054 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.583333 AS "P_0", 0.416667 AS "P_1", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.493671 AS "P_0", 0.506329 AS "P_1", 1 AS "D", 0.506329 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.827586 AS "P_0", 0.172414 AS "P_1", 0 AS "D", 0.827586 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.890805 AS "P_0", 0.109195 AS "P_1", 0 AS "D", 0.890805 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.542373 AS "P_0", 0.457627 AS "P_1", 0 AS "D", 0.542373 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.350000 AS "P_0", 0.650000 AS "P_1", 1 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.533333 AS "P_0", 0.466667 AS "P_1", 0 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.411765 AS "P_0", 0.588235 AS "P_1", 1 AS "D", 0.588235 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.564356 AS "P_0", 0.435644 AS "P_1", 0 AS "D", 0.564356 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.621951 AS "P_0", 0.378049 AS "P_1", 0 AS "D", 0.621951 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.315789 AS "P_0", 0.684211 AS "P_1", 1 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.880000 AS "P_0", 0.120000 AS "P_1", 0 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.787879 AS "P_0", 0.212121 AS "P_1", 0 AS "D", 0.787879 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.736842 AS "P_0", 0.263158 AS "P_1", 0 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.883436 AS "P_0", 0.116564 AS "P_1", 0 AS "D", 0.883436 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.897059 AS "P_0", 0.102941 AS "P_1", 0 AS "D", 0.897059 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.814815 AS "P_0", 0.185185 AS "P_1", 0 AS "D", 0.814815 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.917431 AS "P_0", 0.082569 AS "P_1", 0 AS "D", 0.917431 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.814815 AS "P_0", 0.185185 AS "P_1", 0 AS "D", 0.814815 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_9" > 0.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_9" <= 0.500000) AND (t."X_51" > 0.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_9" <= 0.500000) AND (t."X_51" <= 0.500000) AND (t."X_36" > 0.500000) AND (t."X_12" <= 0.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_9" <= 0.500000) AND (t."X_51" <= 0.500000) AND (t."X_36" > 0.500000) AND (t."X_12" > 0.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_9" <= 0.500000) AND (t."X_51" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_11" > 0.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_9" <= 0.500000) AND (t."X_51" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_4" <= 0.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_18" > 0.500000) AND (t."X_9" <= 0.500000) AND (t."X_51" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_11" <= 0.500000) AND (t."X_4" > 0.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_50" <= 0.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_28" > 0.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_39" <= 0.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" <= 0.500000) AND (t."X_39" > 0.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_41" <= 0.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_41" > 0.500000) AND (t."X_34" <= 0.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_18" <= 0.500000) AND (t."X_50" > 0.500000) AND (t."X_28" <= 0.500000) AND (t."X_2" > 0.500000) AND (t."X_41" > 0.500000) AND (t."X_34" > 0.500000)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.785156 AS "P_0", 0.214844 AS "P_1", 0 AS "D", 0.785156 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.936090 AS "P_0", 0.063910 AS "P_1", 0 AS "D", 0.936090 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.621951 AS "P_0", 0.378049 AS "P_1", 0 AS "D", 0.621951 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.605932 AS "P_0", 0.394068 AS "P_1", 0 AS "D", 0.605932 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.615044 AS "P_0", 0.384956 AS "P_1", 0 AS "D", 0.615044 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.641304 AS "P_0", 0.358696 AS "P_1", 0 AS "D", 0.641304 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.392857 AS "P_0", 0.607143 AS "P_1", 1 AS "D", 0.607143 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.708609 AS "P_0", 0.291391 AS "P_1", 0 AS "D", 0.708609 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.664000 AS "P_0", 0.336000 AS "P_1", 0 AS "D", 0.664000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.927966 AS "P_0", 0.072034 AS "P_1", 0 AS "D", 0.927966 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.962264 AS "P_0", 0.037736 AS "P_1", 0 AS "D", 0.962264 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.920000 AS "P_0", 0.080000 AS "P_1", 0 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.975309 AS "P_0", 0.024691 AS "P_1", 0 AS "D", 0.975309 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.878788 AS "P_0", 0.121212 AS "P_1", 0 AS "D", 0.878788 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.965517 AS "P_0", 0.034483 AS "P_1", 0 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.977444 AS "P_0", 0.022556 AS "P_1", 0 AS "D", 0.977444 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.967033 AS "P_0", 0.032967 AS "P_1", 0 AS "D", 0.967033 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_16", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_16" > 12.500000) AND (t."X_26" <= 0.500000) AND (t."X_18" <= 0.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_16" > 12.500000) AND (t."X_26" <= 0.500000) AND (t."X_18" > 0.500000) AND (t."X_2" <= 0.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_16" > 12.500000) AND (t."X_26" <= 0.500000) AND (t."X_18" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_8" <= 150872.000000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_16" > 12.500000) AND (t."X_26" <= 0.500000) AND (t."X_18" > 0.500000) AND (t."X_2" > 0.500000) AND (t."X_8" > 150872.000000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 7.500000) AND (t."X_0" <= 1.500000) AND (t."X_18" > 0.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 7.500000) AND (t."X_0" > 1.500000) AND (t."X_8" > 179448.500000) AND (t."X_18" > 0.500000) AND (t."X_50" <= 0.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 7.500000) AND (t."X_0" > 1.500000) AND (t."X_8" > 179448.500000) AND (t."X_18" > 0.500000) AND (t."X_50" > 0.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 7.500000) AND (t."X_0" > 1.500000) AND (t."X_8" <= 179448.500000) AND (t."X_16" > 9.500000) AND (t."X_8" <= 98531.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 7.500000) AND (t."X_0" > 1.500000) AND (t."X_8" <= 179448.500000) AND (t."X_16" > 9.500000) AND (t."X_8" > 98531.000000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 7.500000) AND (t."X_0" > 1.500000) AND (t."X_8" > 179448.500000) AND (t."X_18" <= 0.500000) AND (t."X_16" <= 9.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 7.500000) AND (t."X_0" > 1.500000) AND (t."X_8" > 179448.500000) AND (t."X_18" <= 0.500000) AND (t."X_16" > 9.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_16" > 12.500000) AND (t."X_26" > 0.500000) AND (t."X_17" <= 0.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_16" > 12.500000) AND (t."X_26" > 0.500000) AND (t."X_17" > 0.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" <= 7.500000) AND (t."X_16" > 4.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" <= 7.500000) AND (t."X_16" <= 4.500000) AND (t."X_16" <= 3.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" <= 7.500000) AND (t."X_16" <= 4.500000) AND (t."X_16" > 3.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 7.500000) AND (t."X_0" > 1.500000) AND (t."X_8" <= 179448.500000) AND (t."X_16" <= 9.500000) AND (t."X_8" <= 72498.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 7.500000) AND (t."X_0" > 1.500000) AND (t."X_8" <= 179448.500000) AND (t."X_16" <= 9.500000) AND (t."X_8" > 72498.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 7.500000) AND (t."X_0" <= 1.500000) AND (t."X_18" <= 0.500000) AND (t."X_8" <= 93337.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_16" <= 12.500000) AND (t."X_16" > 7.500000) AND (t."X_0" <= 1.500000) AND (t."X_18" <= 0.500000) AND (t."X_8" > 93337.500000)) THEN 38 ELSE NULL END AS "Leaf_38"
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
    SELECT 0 AS nid,  0.771484 AS "P_0", 0.228516 AS "P_1", 0 AS "D", 0.771484 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.835859 AS "P_0", 0.164141 AS "P_1", 0 AS "D", 0.835859 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.551724 AS "P_0", 0.448276 AS "P_1", 0 AS "D", 0.551724 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.609195 AS "P_0", 0.390805 AS "P_1", 0 AS "D", 0.609195 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.379310 AS "P_0", 0.620690 AS "P_1", 1 AS "D", 0.620690 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.914286 AS "P_0", 0.085714 AS "P_1", 0 AS "D", 0.914286 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.403846 AS "P_0", 0.596154 AS "P_1", 1 AS "D", 0.596154 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.531250 AS "P_0", 0.468750 AS "P_1", 0 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.722222 AS "P_0", 0.277778 AS "P_1", 0 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.962500 AS "P_0", 0.037500 AS "P_1", 0 AS "D", 0.962500 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.803797 AS "P_0", 0.196203 AS "P_1", 0 AS "D", 0.803797 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.929577 AS "P_0", 0.070423 AS "P_1", 0 AS "D", 0.929577 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.701149 AS "P_0", 0.298851 AS "P_1", 0 AS "D", 0.701149 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.990099 AS "P_0", 0.009901 AS "P_1", 0 AS "D", 0.990099 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.780488 AS "P_0", 0.219512 AS "P_1", 0 AS "D", 0.780488 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.783505 AS "P_0", 0.216495 AS "P_1", 0 AS "D", 0.783505 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.597403 AS "P_0", 0.402597 AS "P_1", 0 AS "D", 0.597403 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.851852 AS "P_0", 0.148148 AS "P_1", 0 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.460000 AS "P_0", 0.540000 AS "P_1", 1 AS "D", 0.540000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.575000 AS "P_0", 0.425000 AS "P_1", 0 AS "D", 0.575000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.975610 AS "P_0", 0.024390 AS "P_1", 0 AS "D", 0.975610 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.416667 AS "P_0", 0.583333 AS "P_1", 1 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.421053 AS "P_0", 0.578947 AS "P_1", 1 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.892857 AS "P_0", 0.107143 AS "P_1", 0 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_32" <= 0.500000) AND (t."X_36" > 0.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_32" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_0" <= 0.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_32" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_38" > 0.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_32" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_38" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" <= 2.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_32" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_38" <= 0.500000) AND (t."X_35" <= 0.500000) AND (t."X_0" > 2.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_32" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_38" <= 0.500000) AND (t."X_35" > 0.500000) AND (t."X_2" <= 0.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_32" <= 0.500000) AND (t."X_36" <= 0.500000) AND (t."X_0" > 0.500000) AND (t."X_38" <= 0.500000) AND (t."X_35" > 0.500000) AND (t."X_2" > 0.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_32" > 0.500000) AND (t."X_45" <= 1.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_32" > 0.500000) AND (t."X_45" > 1.500000)) THEN 16 ELSE NULL END AS "Leaf_16"
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
    SELECT 0 AS nid,  0.740234 AS "P_0", 0.259766 AS "P_1", 0 AS "D", 0.740234 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.669333 AS "P_0", 0.330667 AS "P_1", 0 AS "D", 0.669333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.934307 AS "P_0", 0.065693 AS "P_1", 0 AS "D", 0.934307 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.688427 AS "P_0", 0.311573 AS "P_1", 0 AS "D", 0.688427 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.618182 AS "P_0", 0.381818 AS "P_1", 0 AS "D", 0.618182 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.635659 AS "P_0", 0.364341 AS "P_1", 0 AS "D", 0.635659 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.352941 AS "P_0", 0.647059 AS "P_1", 1 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.562500 AS "P_0", 0.437500 AS "P_1", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.940000 AS "P_0", 0.060000 AS "P_1", 0 AS "D", 0.940000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.487603 AS "P_0", 0.512397 AS "P_1", 1 AS "D", 0.512397 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.974359 AS "P_0", 0.025641 AS "P_1", 0 AS "D", 0.974359 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.915888 AS "P_0", 0.084112 AS "P_1", 0 AS "D", 0.915888 AS "DP"
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