WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "census_quantized" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_23", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_35", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" > 6.000000) AND (t."X_2" <= 1.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_12" > 6.000000) AND (t."X_2" > 1.500000) AND (t."X_2" <= 2.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_12" > 6.000000) AND (t."X_2" > 1.500000) AND (t."X_2" > 2.500000) AND (t."X_0" <= 4.500000) AND (t."X_2" <= 5.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_12" > 6.000000) AND (t."X_2" > 1.500000) AND (t."X_2" > 2.500000) AND (t."X_0" <= 4.500000) AND (t."X_2" > 5.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_12" > 6.000000) AND (t."X_2" > 1.500000) AND (t."X_2" > 2.500000) AND (t."X_0" > 4.500000) AND (t."X_0" > 6.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_12" > 6.000000) AND (t."X_2" > 1.500000) AND (t."X_2" > 2.500000) AND (t."X_0" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_2" <= 6.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_12" > 6.000000) AND (t."X_2" > 1.500000) AND (t."X_2" > 2.500000) AND (t."X_0" > 4.500000) AND (t."X_0" <= 6.500000) AND (t."X_2" > 6.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" > 4.500000) AND (t."X_2" <= 0.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 3.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 1.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 1.500000) AND (t."X_12" <= 2.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 1.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 7.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 1.500000) AND (t."X_12" > 2.500000) AND (t."X_2" > 7.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" > 4.500000) AND (t."X_2" > 0.500000) AND (t."X_2" <= 3.500000) AND (t."X_12" <= 2.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" > 4.500000) AND (t."X_2" > 0.500000) AND (t."X_2" > 3.500000) AND (t."X_0" > 8.500000) AND (t."X_12" <= 2.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" > 4.500000) AND (t."X_2" > 0.500000) AND (t."X_2" > 3.500000) AND (t."X_0" > 8.500000) AND (t."X_12" > 2.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" > 4.500000) AND (t."X_2" > 0.500000) AND (t."X_2" > 3.500000) AND (t."X_0" <= 8.500000) AND (t."X_0" <= 6.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" > 4.500000) AND (t."X_2" > 0.500000) AND (t."X_2" > 3.500000) AND (t."X_0" <= 8.500000) AND (t."X_0" > 6.500000)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" > 4.500000) AND (t."X_2" > 0.500000) AND (t."X_2" <= 3.500000) AND (t."X_12" > 2.500000) AND (t."X_2" <= 2.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" > 4.500000) AND (t."X_2" > 0.500000) AND (t."X_2" <= 3.500000) AND (t."X_12" > 2.500000) AND (t."X_2" > 2.500000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" <= 5.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 5.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" <= 0.500000) AND (t."X_2" <= 4.500000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" <= 0.500000) AND (t."X_2" > 4.500000)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" > 2.500000) AND (t."X_2" > 3.500000) AND (t."X_2" <= 6.500000)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" > 2.500000) AND (t."X_2" > 3.500000) AND (t."X_2" > 6.500000)) THEN 50 ELSE NULL END AS "Leaf_50"
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
    SELECT 1 AS nid,  0.809760 AS "P_0", 0.190240 AS "P_1", 0 AS "D", 0.809760 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.581317 AS "P_0", 0.418683 AS "P_1", 0 AS "D", 0.581317 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.917261 AS "P_0", 0.082739 AS "P_1", 0 AS "D", 0.917261 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.709628 AS "P_0", 0.290372 AS "P_1", 0 AS "D", 0.709628 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.985248 AS "P_0", 0.014752 AS "P_1", 0 AS "D", 0.985248 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.856406 AS "P_0", 0.143594 AS "P_1", 0 AS "D", 0.856406 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.644455 AS "P_0", 0.355545 AS "P_1", 0 AS "D", 0.644455 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.565977 AS "P_0", 0.434023 AS "P_1", 0 AS "D", 0.565977 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.537204 AS "P_0", 0.462796 AS "P_1", 0 AS "D", 0.537204 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.570717 AS "P_0", 0.429283 AS "P_1", 0 AS "D", 0.570717 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.732639 AS "P_0", 0.267361 AS "P_1", 0 AS "D", 0.732639 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.468090 AS "P_0", 0.531910 AS "P_1", 1 AS "D", 0.531910 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.708738 AS "P_0", 0.291262 AS "P_1", 0 AS "D", 0.708738 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.748140 AS "P_0", 0.251860 AS "P_1", 0 AS "D", 0.748140 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.479158 AS "P_0", 0.520842 AS "P_1", 1 AS "D", 0.520842 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.456473 AS "P_0", 0.543527 AS "P_1", 1 AS "D", 0.543527 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.499240 AS "P_0", 0.500760 AS "P_1", 1 AS "D", 0.500760 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.453017 AS "P_0", 0.546983 AS "P_1", 1 AS "D", 0.546983 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.739946 AS "P_0", 0.260054 AS "P_1", 0 AS "D", 0.739946 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.706462 AS "P_0", 0.293538 AS "P_1", 0 AS "D", 0.706462 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.994615 AS "P_0", 0.005385 AS "P_1", 0 AS "D", 0.994615 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.976169 AS "P_0", 0.023831 AS "P_1", 0 AS "D", 0.976169 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.985497 AS "P_0", 0.014503 AS "P_1", 0 AS "D", 0.985497 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.971602 AS "P_0", 0.028398 AS "P_1", 0 AS "D", 0.971602 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.868852 AS "P_0", 0.131148 AS "P_1", 0 AS "D", 0.868852 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.853859 AS "P_0", 0.146141 AS "P_1", 0 AS "D", 0.853859 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.924731 AS "P_0", 0.075269 AS "P_1", 0 AS "D", 0.924731 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.838996 AS "P_0", 0.161004 AS "P_1", 0 AS "D", 0.838996 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.843017 AS "P_0", 0.156983 AS "P_1", 0 AS "D", 0.843017 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.827705 AS "P_0", 0.172295 AS "P_1", 0 AS "D", 0.827705 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.998087 AS "P_0", 0.001913 AS "P_1", 0 AS "D", 0.998087 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.991284 AS "P_0", 0.008716 AS "P_1", 0 AS "D", 0.991284 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.702068 AS "P_0", 0.297932 AS "P_1", 0 AS "D", 0.702068 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.708737 AS "P_0", 0.291263 AS "P_1", 0 AS "D", 0.708737 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.826369 AS "P_0", 0.173631 AS "P_1", 0 AS "D", 0.826369 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.665391 AS "P_0", 0.334609 AS "P_1", 0 AS "D", 0.665391 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.691052 AS "P_0", 0.308948 AS "P_1", 0 AS "D", 0.691052 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.763277 AS "P_0", 0.236723 AS "P_1", 0 AS "D", 0.763277 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.857404 AS "P_0", 0.142596 AS "P_1", 0 AS "D", 0.857404 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.705652 AS "P_0", 0.294348 AS "P_1", 0 AS "D", 0.705652 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.707182 AS "P_0", 0.292818 AS "P_1", 0 AS "D", 0.707182 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.667767 AS "P_0", 0.332233 AS "P_1", 0 AS "D", 0.667767 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.672236 AS "P_0", 0.327764 AS "P_1", 0 AS "D", 0.672236 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.649433 AS "P_0", 0.350567 AS "P_1", 0 AS "D", 0.649433 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.988870 AS "P_0", 0.011130 AS "P_1", 0 AS "D", 0.988870 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.994071 AS "P_0", 0.005929 AS "P_1", 0 AS "D", 0.994071 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.995956 AS "P_0", 0.004044 AS "P_1", 0 AS "D", 0.995956 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.973074 AS "P_0", 0.026926 AS "P_1", 0 AS "D", 0.973074 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.970389 AS "P_0", 0.029611 AS "P_1", 0 AS "D", 0.970389 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_9", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" > 9.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_10" <= 4.500000) AND (t."X_2" <= 0.500000) AND (t."X_0" <= 4.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_10" <= 4.500000) AND (t."X_2" > 0.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 7.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_10" <= 4.500000) AND (t."X_2" > 0.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 7.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_10" <= 4.500000) AND (t."X_2" > 0.500000) AND (t."X_0" > 4.500000) AND (t."X_0" <= 8.500000) AND (t."X_4" <= 7.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_10" <= 4.500000) AND (t."X_2" > 0.500000) AND (t."X_0" > 4.500000) AND (t."X_0" <= 8.500000) AND (t."X_4" > 7.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_10" <= 4.500000) AND (t."X_2" > 0.500000) AND (t."X_0" > 4.500000) AND (t."X_0" > 8.500000) AND (t."X_4" <= 4.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_10" <= 4.500000) AND (t."X_2" > 0.500000) AND (t."X_0" > 4.500000) AND (t."X_0" > 8.500000) AND (t."X_4" > 4.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_10" <= 4.500000) AND (t."X_2" > 0.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" <= 6.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_10" <= 4.500000) AND (t."X_2" > 0.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" > 6.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_10" > 4.500000) AND (t."X_2" <= 5.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_10" > 4.500000) AND (t."X_2" > 5.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_10" <= 4.500000) AND (t."X_2" <= 0.500000) AND (t."X_0" > 4.500000) AND (t."X_0" <= 6.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_10" <= 4.500000) AND (t."X_2" <= 0.500000) AND (t."X_0" > 4.500000) AND (t."X_0" > 6.500000)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 1 AS nid,  0.779172 AS "P_0", 0.220828 AS "P_1", 0 AS "D", 0.779172 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.020408 AS "P_0", 0.979592 AS "P_1", 1 AS "D", 0.979592 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.795365 AS "P_0", 0.204635 AS "P_1", 0 AS "D", 0.795365 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.530843 AS "P_0", 0.469157 AS "P_1", 0 AS "D", 0.530843 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.818202 AS "P_0", 0.181798 AS "P_1", 0 AS "D", 0.818202 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.792843 AS "P_0", 0.207157 AS "P_1", 0 AS "D", 0.792843 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.898153 AS "P_0", 0.101847 AS "P_1", 0 AS "D", 0.898153 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.697795 AS "P_0", 0.302205 AS "P_1", 0 AS "D", 0.697795 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.916312 AS "P_0", 0.083688 AS "P_1", 0 AS "D", 0.916312 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.729336 AS "P_0", 0.270664 AS "P_1", 0 AS "D", 0.729336 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.986295 AS "P_0", 0.013705 AS "P_1", 0 AS "D", 0.986295 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.828124 AS "P_0", 0.171876 AS "P_1", 0 AS "D", 0.828124 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.887220 AS "P_0", 0.112780 AS "P_1", 0 AS "D", 0.887220 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.662138 AS "P_0", 0.337862 AS "P_1", 0 AS "D", 0.662138 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.676850 AS "P_0", 0.323150 AS "P_1", 0 AS "D", 0.676850 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.769007 AS "P_0", 0.230993 AS "P_1", 0 AS "D", 0.769007 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.769675 AS "P_0", 0.230325 AS "P_1", 0 AS "D", 0.769675 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.439470 AS "P_0", 0.560530 AS "P_1", 1 AS "D", 0.560530 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.869379 AS "P_0", 0.130621 AS "P_1", 0 AS "D", 0.869379 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.629225 AS "P_0", 0.370775 AS "P_1", 0 AS "D", 0.629225 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.989861 AS "P_0", 0.010139 AS "P_1", 0 AS "D", 0.989861 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.967718 AS "P_0", 0.032282 AS "P_1", 0 AS "D", 0.967718 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.532819 AS "P_0", 0.467181 AS "P_1", 0 AS "D", 0.532819 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.527602 AS "P_0", 0.472398 AS "P_1", 0 AS "D", 0.527602 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.729423 AS "P_0", 0.270577 AS "P_1", 0 AS "D", 0.729423 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.729264 AS "P_0", 0.270736 AS "P_1", 0 AS "D", 0.729264 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_6", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" > 9.500000)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_0" <= 4.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_0" > 4.500000) AND (t."X_0" > 8.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_0" > 4.500000) AND (t."X_0" <= 8.500000) AND (t."X_10" > 4.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_0" > 4.500000) AND (t."X_0" <= 8.500000) AND (t."X_10" <= 4.500000) AND (t."X_2" <= 1.500000) AND (t."X_0" <= 6.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_0" > 4.500000) AND (t."X_0" <= 8.500000) AND (t."X_10" <= 4.500000) AND (t."X_2" <= 1.500000) AND (t."X_0" > 6.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_0" > 4.500000) AND (t."X_0" <= 8.500000) AND (t."X_10" <= 4.500000) AND (t."X_2" > 1.500000) AND (t."X_2" <= 4.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_10" <= 9.500000) AND (t."X_0" > 4.500000) AND (t."X_0" <= 8.500000) AND (t."X_10" <= 4.500000) AND (t."X_2" > 1.500000) AND (t."X_2" > 4.500000)) THEN 14 ELSE NULL END AS "Leaf_14"
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
    SELECT 1 AS nid,  0.779238 AS "P_0", 0.220762 AS "P_1", 0 AS "D", 0.779238 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.022124 AS "P_0", 0.977876 AS "P_1", 1 AS "D", 0.977876 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.897560 AS "P_0", 0.102440 AS "P_1", 0 AS "D", 0.897560 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.675441 AS "P_0", 0.324559 AS "P_1", 0 AS "D", 0.675441 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.654615 AS "P_0", 0.345385 AS "P_1", 0 AS "D", 0.654615 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.744924 AS "P_0", 0.255076 AS "P_1", 0 AS "D", 0.744924 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.676898 AS "P_0", 0.323103 AS "P_1", 0 AS "D", 0.676898 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.387375 AS "P_0", 0.612625 AS "P_1", 1 AS "D", 0.612625 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.711960 AS "P_0", 0.288040 AS "P_1", 0 AS "D", 0.711960 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.668825 AS "P_0", 0.331175 AS "P_1", 0 AS "D", 0.668825 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.728304 AS "P_0", 0.271696 AS "P_1", 0 AS "D", 0.728304 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.687407 AS "P_0", 0.312593 AS "P_1", 0 AS "D", 0.687407 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.658076 AS "P_0", 0.341924 AS "P_1", 0 AS "D", 0.658076 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.675892 AS "P_0", 0.324108 AS "P_1", 0 AS "D", 0.675892 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_14", t1."Leaf_16", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" > 6.000000) AND (t."X_0" > 4.500000) AND (t."X_12" <= 9.000000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_12" > 6.000000) AND (t."X_0" > 4.500000) AND (t."X_12" > 9.000000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_2" <= 6.500000) AND (t."X_0" > 4.500000) AND (t."X_12" > 2.500000) AND (t."X_10" > 4.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_2" <= 6.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_2" > 6.500000) AND (t."X_12" > 2.500000) AND (t."X_0" <= 4.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_2" <= 6.500000) AND (t."X_0" > 4.500000) AND (t."X_12" > 2.500000) AND (t."X_10" <= 4.500000) AND (t."X_0" <= 6.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_2" <= 6.500000) AND (t."X_0" > 4.500000) AND (t."X_12" > 2.500000) AND (t."X_10" <= 4.500000) AND (t."X_0" > 6.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_2" > 6.500000) AND (t."X_12" > 2.500000) AND (t."X_0" > 4.500000) AND (t."X_0" <= 6.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_2" > 6.500000) AND (t."X_12" > 2.500000) AND (t."X_0" > 4.500000) AND (t."X_0" > 6.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_2" <= 6.500000) AND (t."X_0" > 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_0" <= 8.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_2" <= 6.500000) AND (t."X_0" > 4.500000) AND (t."X_12" <= 2.500000) AND (t."X_0" > 8.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_2" > 6.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" <= 0.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_2" > 6.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_2" <= 6.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" > 2.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_12" > 6.000000) AND (t."X_0" <= 4.500000) AND (t."X_2" <= 5.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_12" > 6.000000) AND (t."X_0" <= 4.500000) AND (t."X_2" > 5.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_2" <= 6.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" <= 0.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_12" <= 6.000000) AND (t."X_2" <= 6.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 0.500000)) THEN 34 ELSE NULL END AS "Leaf_34"
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
    SELECT 1 AS nid,  0.809707 AS "P_0", 0.190293 AS "P_1", 0 AS "D", 0.809707 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.576644 AS "P_0", 0.423356 AS "P_1", 0 AS "D", 0.576644 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.730530 AS "P_0", 0.269470 AS "P_1", 0 AS "D", 0.730530 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.488813 AS "P_0", 0.511187 AS "P_1", 1 AS "D", 0.511187 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.471968 AS "P_0", 0.528032 AS "P_1", 1 AS "D", 0.528032 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.577530 AS "P_0", 0.422470 AS "P_1", 0 AS "D", 0.577530 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.800591 AS "P_0", 0.199409 AS "P_1", 0 AS "D", 0.800591 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.830001 AS "P_0", 0.169999 AS "P_1", 0 AS "D", 0.830001 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.914473 AS "P_0", 0.085527 AS "P_1", 0 AS "D", 0.914473 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.702741 AS "P_0", 0.297259 AS "P_1", 0 AS "D", 0.702741 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.826719 AS "P_0", 0.173281 AS "P_1", 0 AS "D", 0.826719 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.665167 AS "P_0", 0.334833 AS "P_1", 0 AS "D", 0.665167 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.703074 AS "P_0", 0.296926 AS "P_1", 0 AS "D", 0.703074 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.338339 AS "P_0", 0.661661 AS "P_1", 1 AS "D", 0.661661 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.988055 AS "P_0", 0.011945 AS "P_1", 0 AS "D", 0.988055 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.851807 AS "P_0", 0.148193 AS "P_1", 0 AS "D", 0.851807 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.922928 AS "P_0", 0.077072 AS "P_1", 0 AS "D", 0.922928 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.797075 AS "P_0", 0.202925 AS "P_1", 0 AS "D", 0.797075 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.905396 AS "P_0", 0.094604 AS "P_1", 0 AS "D", 0.905396 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.693357 AS "P_0", 0.306643 AS "P_1", 0 AS "D", 0.693357 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.724795 AS "P_0", 0.275205 AS "P_1", 0 AS "D", 0.724795 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.684391 AS "P_0", 0.315609 AS "P_1", 0 AS "D", 0.684391 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.710197 AS "P_0", 0.289803 AS "P_1", 0 AS "D", 0.710197 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.676510 AS "P_0", 0.323490 AS "P_1", 0 AS "D", 0.676510 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.812719 AS "P_0", 0.187281 AS "P_1", 0 AS "D", 0.812719 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.841840 AS "P_0", 0.158160 AS "P_1", 0 AS "D", 0.841840 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.940610 AS "P_0", 0.059390 AS "P_1", 0 AS "D", 0.940610 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.911051 AS "P_0", 0.088949 AS "P_1", 0 AS "D", 0.911051 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.995060 AS "P_0", 0.004940 AS "P_1", 0 AS "D", 0.995060 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.980901 AS "P_0", 0.019099 AS "P_1", 0 AS "D", 0.980901 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.724717 AS "P_0", 0.275283 AS "P_1", 0 AS "D", 0.724717 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.738312 AS "P_0", 0.261688 AS "P_1", 0 AS "D", 0.738312 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.997283 AS "P_0", 0.002717 AS "P_1", 0 AS "D", 0.997283 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.992658 AS "P_0", 0.007342 AS "P_1", 0 AS "D", 0.992658 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_14", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_12" <= 6.000000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" <= 4.500000) AND (t."X_12" > 6.000000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_10" > 4.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_4" <= 8.500000) AND (t."X_12" > 6.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_10" <= 4.500000) AND (t."X_0" > 4.500000) AND (t."X_4" > 2.000000) AND (t."X_12" <= 6.000000) AND (t."X_4" <= 4.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_10" <= 4.500000) AND (t."X_0" > 4.500000) AND (t."X_4" > 2.000000) AND (t."X_12" <= 6.000000) AND (t."X_4" > 4.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_10" <= 4.500000) AND (t."X_0" > 4.500000) AND (t."X_4" > 2.000000) AND (t."X_12" > 6.000000) AND (t."X_2" <= 2.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_10" <= 4.500000) AND (t."X_0" > 4.500000) AND (t."X_4" > 2.000000) AND (t."X_12" > 6.000000) AND (t."X_2" > 2.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_4" <= 8.500000) AND (t."X_12" <= 6.000000) AND (t."X_2" <= 5.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_4" <= 8.500000) AND (t."X_12" <= 6.000000) AND (t."X_2" > 5.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_4" > 8.500000) AND (t."X_0" <= 6.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_4" > 7.500000) AND (t."X_0" > 4.500000) AND (t."X_4" > 8.500000) AND (t."X_0" > 6.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_10" <= 4.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 1.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_10" <= 4.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 1.500000) AND (t."X_4" <= 2.000000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_10" <= 4.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 1.500000) AND (t."X_4" > 2.000000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_10" <= 4.500000) AND (t."X_0" > 4.500000) AND (t."X_4" <= 2.000000) AND (t."X_0" <= 8.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_10" <= 4.500000) AND (t."X_0" > 4.500000) AND (t."X_4" <= 2.000000) AND (t."X_0" > 8.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_10" <= 4.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" > 4.500000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_10" <= 4.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" <= 4.500000) AND (t."X_2" <= 3.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_4" <= 7.500000) AND (t."X_10" <= 4.500000) AND (t."X_0" <= 4.500000) AND (t."X_0" <= 1.500000) AND (t."X_4" <= 4.500000) AND (t."X_2" > 3.500000)) THEN 38 ELSE NULL END AS "Leaf_38"
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
    SELECT 1 AS nid,  0.839888 AS "P_0", 0.160112 AS "P_1", 0 AS "D", 0.839888 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.523802 AS "P_0", 0.476198 AS "P_1", 0 AS "D", 0.523802 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.719476 AS "P_0", 0.280524 AS "P_1", 0 AS "D", 0.719476 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.408856 AS "P_0", 0.591144 AS "P_1", 1 AS "D", 0.591144 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.786207 AS "P_0", 0.213793 AS "P_1", 0 AS "D", 0.786207 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.547945 AS "P_0", 0.452055 AS "P_1", 0 AS "D", 0.547945 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.860028 AS "P_0", 0.139972 AS "P_1", 0 AS "D", 0.860028 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.537760 AS "P_0", 0.462240 AS "P_1", 0 AS "D", 0.537760 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.938399 AS "P_0", 0.061601 AS "P_1", 0 AS "D", 0.938399 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.782621 AS "P_0", 0.217379 AS "P_1", 0 AS "D", 0.782621 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.469927 AS "P_0", 0.530073 AS "P_1", 1 AS "D", 0.530073 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.325384 AS "P_0", 0.674616 AS "P_1", 1 AS "D", 0.674616 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.520819 AS "P_0", 0.479181 AS "P_1", 0 AS "D", 0.520819 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.365358 AS "P_0", 0.634642 AS "P_1", 1 AS "D", 0.634642 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.915548 AS "P_0", 0.084452 AS "P_1", 0 AS "D", 0.915548 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.754291 AS "P_0", 0.245710 AS "P_1", 0 AS "D", 0.754291 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.788081 AS "P_0", 0.211919 AS "P_1", 0 AS "D", 0.788081 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.632239 AS "P_0", 0.367761 AS "P_1", 0 AS "D", 0.632239 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.987603 AS "P_0", 0.012397 AS "P_1", 0 AS "D", 0.987603 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.891418 AS "P_0", 0.108582 AS "P_1", 0 AS "D", 0.891418 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.825417 AS "P_0", 0.174583 AS "P_1", 0 AS "D", 0.825417 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.740418 AS "P_0", 0.259582 AS "P_1", 0 AS "D", 0.740418 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.679920 AS "P_0", 0.320080 AS "P_1", 0 AS "D", 0.679920 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.609420 AS "P_0", 0.390580 AS "P_1", 0 AS "D", 0.609420 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.538548 AS "P_0", 0.461452 AS "P_1", 0 AS "D", 0.538548 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.493495 AS "P_0", 0.506505 AS "P_1", 1 AS "D", 0.506505 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.335699 AS "P_0", 0.664301 AS "P_1", 1 AS "D", 0.664301 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.317210 AS "P_0", 0.682790 AS "P_1", 1 AS "D", 0.682790 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.911082 AS "P_0", 0.088918 AS "P_1", 0 AS "D", 0.911082 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.887199 AS "P_0", 0.112801 AS "P_1", 0 AS "D", 0.887199 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.963964 AS "P_0", 0.036036 AS "P_1", 0 AS "D", 0.963964 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.874900 AS "P_0", 0.125100 AS "P_1", 0 AS "D", 0.874900 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.912271 AS "P_0", 0.087729 AS "P_1", 0 AS "D", 0.912271 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.920635 AS "P_0", 0.079365 AS "P_1", 0 AS "D", 0.920635 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.990666 AS "P_0", 0.009334 AS "P_1", 0 AS "D", 0.990666 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.983871 AS "P_0", 0.016129 AS "P_1", 0 AS "D", 0.983871 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.997515 AS "P_0", 0.002484 AS "P_1", 0 AS "D", 0.997515 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.986987 AS "P_0", 0.013013 AS "P_1", 0 AS "D", 0.986987 AS "DP"
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