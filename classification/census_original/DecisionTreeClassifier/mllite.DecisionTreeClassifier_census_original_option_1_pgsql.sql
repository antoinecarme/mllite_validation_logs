WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_9", t1."Leaf_12", t1."Leaf_17", t1."Leaf_18", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" > 2.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" > 2.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_11" > 1.500000) AND (t."X_11" <= 2.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_11" > 1.500000) AND (t."X_11" > 2.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" > 2.500000) AND (t."X_4" <= 9.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" > 2.500000) AND (t."X_4" > 9.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" <= 2.500000) AND (t."X_2" <= 185609.000000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" <= 2.500000) AND (t."X_2" > 185609.000000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_12" <= 2.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_11" <= 1.500000) AND (t."X_12" > 2.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 9.500000) AND (t."X_12" <= 1.500000) AND (t."X_2" <= 144638.000000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 9.500000) AND (t."X_12" <= 1.500000) AND (t."X_2" > 144638.000000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_4" <= 8.500000) AND (t."X_12" <= 2.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_4" <= 8.500000) AND (t."X_12" > 2.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 12.500000) AND (t."X_0" <= 1.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_4" > 8.500000) AND (t."X_4" <= 10.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_4" > 8.500000) AND (t."X_4" > 10.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_2" <= 88277.500000) AND (t."X_2" <= 80312.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_2" <= 88277.500000) AND (t."X_2" > 80312.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" > 1.500000) AND (t."X_4" <= 14.500000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" > 1.500000) AND (t."X_4" > 14.500000)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_4" <= 14.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_11" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_4" > 14.500000)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 12.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 8.500000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 12.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 8.500000) AND (t."X_12" <= 1.500000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 12.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 8.500000) AND (t."X_12" > 1.500000) AND (t."X_11" <= 1.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_4" <= 12.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 8.500000) AND (t."X_12" > 1.500000) AND (t."X_11" > 1.500000)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_2" > 88277.500000) AND (t."X_12" <= 2.500000)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 9.500000) AND (t."X_2" > 88277.500000) AND (t."X_12" > 2.500000)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 9.500000) AND (t."X_12" > 1.500000) AND (t."X_4" <= 6.500000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 9.500000) AND (t."X_12" > 1.500000) AND (t."X_4" > 6.500000)) THEN 62 ELSE NULL END AS "Leaf_62"
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
    SELECT 0 AS nid,  0.760718 AS "P_0", 0.239282 AS "P_1", 0 AS "D", 0.760718 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.796536 AS "P_0", 0.203464 AS "P_1", 0 AS "D", 0.796536 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.202918 AS "P_0", 0.797082 AS "P_1", 1 AS "D", 0.797082 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.451134 AS "P_0", 0.548866 AS "P_1", 1 AS "D", 0.548866 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.012590 AS "P_0", 0.987410 AS "P_1", 1 AS "D", 0.987410 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.862295 AS "P_0", 0.137705 AS "P_1", 0 AS "D", 0.862295 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.578219 AS "P_0", 0.421781 AS "P_1", 0 AS "D", 0.578219 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.751732 AS "P_0", 0.248268 AS "P_1", 0 AS "D", 0.751732 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.465445 AS "P_0", 0.534555 AS "P_1", 1 AS "D", 0.534555 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.961003 AS "P_0", 0.038997 AS "P_1", 0 AS "D", 0.961003 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.679215 AS "P_0", 0.320785 AS "P_1", 0 AS "D", 0.679215 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.493905 AS "P_0", 0.506095 AS "P_1", 1 AS "D", 0.506095 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.086667 AS "P_0", 0.913333 AS "P_1", 1 AS "D", 0.913333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.708571 AS "P_0", 0.291429 AS "P_1", 0 AS "D", 0.708571 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.457176 AS "P_0", 0.542824 AS "P_1", 1 AS "D", 0.542824 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.700648 AS "P_0", 0.299352 AS "P_1", 0 AS "D", 0.700648 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.320000 AS "P_0", 0.680000 AS "P_1", 1 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.447761 AS "P_0", 0.552239 AS "P_1", 1 AS "D", 0.552239 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.240741 AS "P_0", 0.759259 AS "P_1", 1 AS "D", 0.759259 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.583120 AS "P_0", 0.416880 AS "P_1", 0 AS "D", 0.583120 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.393018 AS "P_0", 0.606982 AS "P_1", 1 AS "D", 0.606982 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.537764 AS "P_0", 0.462236 AS "P_1", 0 AS "D", 0.537764 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.514377 AS "P_0", 0.485623 AS "P_1", 0 AS "D", 0.514377 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.782609 AS "P_0", 0.217391 AS "P_1", 0 AS "D", 0.782609 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.756996 AS "P_0", 0.243004 AS "P_1", 0 AS "D", 0.756996 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.572545 AS "P_0", 0.427455 AS "P_1", 0 AS "D", 0.572545 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.498516 AS "P_0", 0.501484 AS "P_1", 1 AS "D", 0.501484 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.328494 AS "P_0", 0.671506 AS "P_1", 1 AS "D", 0.671506 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.764706 AS "P_0", 0.235294 AS "P_1", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.468647 AS "P_0", 0.531353 AS "P_1", 1 AS "D", 0.531353 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.611111 AS "P_0", 0.388889 AS "P_1", 0 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.937500 AS "P_0", 0.062500 AS "P_1", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.938869 AS "P_0", 0.061131 AS "P_1", 0 AS "D", 0.938869 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.787000 AS "P_0", 0.213000 AS "P_1", 0 AS "D", 0.787000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.582353 AS "P_0", 0.417647 AS "P_1", 0 AS "D", 0.582353 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.433566 AS "P_0", 0.566434 AS "P_1", 1 AS "D", 0.566434 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.494253 AS "P_0", 0.505747 AS "P_1", 1 AS "D", 0.505747 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.297414 AS "P_0", 0.702586 AS "P_1", 1 AS "D", 0.702586 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.430556 AS "P_0", 0.569444 AS "P_1", 1 AS "D", 0.569444 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.482437 AS "P_0", 0.517563 AS "P_1", 1 AS "D", 0.517563 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.735294 AS "P_0", 0.264706 AS "P_1", 0 AS "D", 0.735294 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.551181 AS "P_0", 0.448819 AS "P_1", 0 AS "D", 0.551181 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.922272 AS "P_0", 0.077728 AS "P_1", 0 AS "D", 0.922272 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.757859 AS "P_0", 0.242141 AS "P_1", 0 AS "D", 0.757859 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.900568 AS "P_0", 0.099432 AS "P_1", 0 AS "D", 0.900568 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.728961 AS "P_0", 0.271039 AS "P_1", 0 AS "D", 0.728961 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.742543 AS "P_0", 0.257457 AS "P_1", 0 AS "D", 0.742543 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.433645 AS "P_0", 0.566355 AS "P_1", 1 AS "D", 0.566355 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.336336 AS "P_0", 0.663664 AS "P_1", 1 AS "D", 0.663664 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.198473 AS "P_0", 0.801527 AS "P_1", 1 AS "D", 0.801527 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.608696 AS "P_0", 0.391304 AS "P_1", 0 AS "D", 0.608696 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.443580 AS "P_0", 0.556420 AS "P_1", 1 AS "D", 0.556420 AS "DP"
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