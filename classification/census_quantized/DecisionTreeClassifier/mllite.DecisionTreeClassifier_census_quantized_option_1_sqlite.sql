WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "census_quantized" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_10", t1."Leaf_14", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" > 9.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_10" > 4.500000) AND (t."X_10" > 9.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" > 9.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" <= 0.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" > 0.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" <= 8.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 0.500000) AND (t."X_0" > 8.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" > 2.500000) AND (t."X_4" <= 0.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" > 2.500000) AND (t."X_4" > 0.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" <= 4.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" > 4.500000) AND (t."X_4" <= 9.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_11" > 4.500000) AND (t."X_4" > 9.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" > 2.500000) AND (t."X_11" > 4.500000) AND (t."X_12" <= 6.000000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" > 2.500000) AND (t."X_11" > 4.500000) AND (t."X_12" > 6.000000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" > 6.000000) AND (t."X_11" <= 4.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" > 6.000000) AND (t."X_11" > 4.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_10" <= 9.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_10" > 9.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 6.000000) AND (t."X_11" <= 4.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" <= 6.000000) AND (t."X_11" > 4.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_4" <= 2.000000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_4" > 2.000000) AND (t."X_12" <= 2.500000)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" > 2.500000) AND (t."X_11" <= 4.500000) AND (t."X_4" <= 8.500000)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_12" > 2.500000) AND (t."X_11" <= 4.500000) AND (t."X_4" > 8.500000)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" <= 2.500000)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_10" > 4.500000) AND (t."X_10" <= 9.500000) AND (t."X_12" > 2.500000)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_4" > 2.000000) AND (t."X_12" > 2.500000) AND (t."X_11" <= 4.500000)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" > 4.500000) AND (t."X_10" <= 4.500000) AND (t."X_4" > 2.000000) AND (t."X_12" > 2.500000) AND (t."X_11" > 4.500000)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_10" <= 9.500000)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_10" > 9.500000)) THEN 62 ELSE NULL END AS "Leaf_62"
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
    SELECT 1 AS nid,  0.840276 AS "P_0", 0.159724 AS "P_1", 0 AS "D", 0.840276 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.519405 AS "P_0", 0.480595 AS "P_1", 0 AS "D", 0.519405 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.714509 AS "P_0", 0.285491 AS "P_1", 0 AS "D", 0.714509 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.404565 AS "P_0", 0.595435 AS "P_1", 1 AS "D", 0.595435 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.950909 AS "P_0", 0.049091 AS "P_1", 0 AS "D", 0.950909 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.637733 AS "P_0", 0.362267 AS "P_1", 0 AS "D", 0.637733 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.460772 AS "P_0", 0.539228 AS "P_1", 1 AS "D", 0.539228 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.131437 AS "P_0", 0.868563 AS "P_1", 1 AS "D", 0.868563 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.263651 AS "P_0", 0.736349 AS "P_1", 1 AS "D", 0.736349 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.003030 AS "P_0", 0.996970 AS "P_1", 1 AS "D", 0.996970 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.677261 AS "P_0", 0.322739 AS "P_1", 0 AS "D", 0.677261 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.277612 AS "P_0", 0.722388 AS "P_1", 1 AS "D", 0.722388 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.417040 AS "P_0", 0.582960 AS "P_1", 1 AS "D", 0.582960 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.678251 AS "P_0", 0.321749 AS "P_1", 0 AS "D", 0.678251 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.425046 AS "P_0", 0.574954 AS "P_1", 1 AS "D", 0.574954 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.736091 AS "P_0", 0.263909 AS "P_1", 0 AS "D", 0.736091 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.546891 AS "P_0", 0.453109 AS "P_1", 0 AS "D", 0.546891 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.929055 AS "P_0", 0.070945 AS "P_1", 0 AS "D", 0.929055 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.756266 AS "P_0", 0.243734 AS "P_1", 0 AS "D", 0.756266 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.784713 AS "P_0", 0.215287 AS "P_1", 0 AS "D", 0.784713 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.452690 AS "P_0", 0.547310 AS "P_1", 1 AS "D", 0.547310 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.542857 AS "P_0", 0.457143 AS "P_1", 0 AS "D", 0.542857 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.034843 AS "P_0", 0.965157 AS "P_1", 1 AS "D", 0.965157 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.852941 AS "P_0", 0.147059 AS "P_1", 0 AS "D", 0.852941 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.486679 AS "P_0", 0.513322 AS "P_1", 1 AS "D", 0.513322 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.948980 AS "P_0", 0.051020 AS "P_1", 0 AS "D", 0.948980 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.764151 AS "P_0", 0.235849 AS "P_1", 0 AS "D", 0.764151 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.605263 AS "P_0", 0.394737 AS "P_1", 0 AS "D", 0.605263 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.242123 AS "P_0", 0.757877 AS "P_1", 1 AS "D", 0.757877 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.416667 AS "P_0", 0.583333 AS "P_1", 1 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.692308 AS "P_0", 0.307692 AS "P_1", 0 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.736364 AS "P_0", 0.263636 AS "P_1", 0 AS "D", 0.736364 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.459646 AS "P_0", 0.540354 AS "P_1", 1 AS "D", 0.540354 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.701456 AS "P_0", 0.298544 AS "P_1", 0 AS "D", 0.701456 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.397059 AS "P_0", 0.602941 AS "P_1", 1 AS "D", 0.602941 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.450000 AS "P_0", 0.550000 AS "P_1", 1 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.452401 AS "P_0", 0.547599 AS "P_1", 1 AS "D", 0.547599 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.204013 AS "P_0", 0.795987 AS "P_1", 1 AS "D", 0.795987 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.275862 AS "P_0", 0.724138 AS "P_1", 1 AS "D", 0.724138 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.121864 AS "P_0", 0.878136 AS "P_1", 1 AS "D", 0.878136 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.306818 AS "P_0", 0.693182 AS "P_1", 1 AS "D", 0.693182 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.956999 AS "P_0", 0.043001 AS "P_1", 0 AS "D", 0.956999 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.755578 AS "P_0", 0.244422 AS "P_1", 0 AS "D", 0.755578 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.442748 AS "P_0", 0.557252 AS "P_1", 1 AS "D", 0.557252 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.921691 AS "P_0", 0.078309 AS "P_1", 0 AS "D", 0.921691 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.755280 AS "P_0", 0.244720 AS "P_1", 0 AS "D", 0.755280 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.898514 AS "P_0", 0.101486 AS "P_1", 0 AS "D", 0.898514 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.726812 AS "P_0", 0.273188 AS "P_1", 0 AS "D", 0.726812 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.377005 AS "P_0", 0.622995 AS "P_1", 1 AS "D", 0.622995 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.576923 AS "P_0", 0.423077 AS "P_1", 0 AS "D", 0.576923 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.395939 AS "P_0", 0.604061 AS "P_1", 1 AS "D", 0.604061 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.740641 AS "P_0", 0.259359 AS "P_1", 0 AS "D", 0.740641 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.490854 AS "P_0", 0.509146 AS "P_1", 1 AS "D", 0.509146 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.986513 AS "P_0", 0.013487 AS "P_1", 0 AS "D", 0.986513 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.876554 AS "P_0", 0.123446 AS "P_1", 0 AS "D", 0.876554 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.881168 AS "P_0", 0.118832 AS "P_1", 0 AS "D", 0.881168 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.020000 AS "P_0", 0.980000 AS "P_1", 1 AS "D", 0.980000 AS "DP"
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