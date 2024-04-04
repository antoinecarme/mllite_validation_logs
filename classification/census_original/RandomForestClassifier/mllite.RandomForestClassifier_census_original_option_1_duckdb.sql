WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_7", t1."Leaf_12", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_2" <= 87224.000000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_2" > 87224.000000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 236469.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 82504.500000) AND (t."X_2" > 343585.000000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 82504.500000) AND (t."X_2" <= 343585.000000) AND (t."X_0" > 3.500000) AND (t."X_12" <= 1.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 82504.500000) AND (t."X_2" <= 343585.000000) AND (t."X_0" > 3.500000) AND (t."X_12" > 1.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 82504.500000) AND (t."X_2" <= 343585.000000) AND (t."X_0" <= 3.500000) AND (t."X_2" <= 213147.000000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 82504.500000) AND (t."X_2" <= 343585.000000) AND (t."X_0" <= 3.500000) AND (t."X_2" > 213147.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 84142.000000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 84142.000000) AND (t."X_2" <= 156242.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 84142.000000) AND (t."X_2" > 156242.000000) AND (t."X_2" <= 181089.000000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 84142.000000) AND (t."X_2" > 156242.000000) AND (t."X_2" > 181089.000000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_2" > 87224.000000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 236469.500000) AND (t."X_2" <= 180134.000000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_2" > 87224.000000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 236469.500000) AND (t."X_2" > 180134.000000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_2" > 87224.000000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 2.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_2" > 87224.000000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 171115.000000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_2" > 87224.000000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_2" > 171115.000000)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" > 1.500000) AND (t."X_2" <= 160997.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" > 1.500000) AND (t."X_2" > 160997.500000) AND (t."X_2" <= 204222.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" > 1.500000) AND (t."X_2" > 160997.500000) AND (t."X_2" > 204222.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" <= 185765.000000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 185765.000000)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 82504.500000) AND (t."X_0" <= 2.500000)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 82504.500000) AND (t."X_0" > 2.500000)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" <= 0.500000) AND (t."X_2" <= 174820.000000)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" <= 1.500000) AND (t."X_12" <= 0.500000) AND (t."X_2" > 174820.000000)) THEN 48 ELSE NULL END AS "Leaf_48"
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
    SELECT 7 AS nid,  0.667647 AS "P_0", 0.332353 AS "P_1", 0 AS "D", 0.667647 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.565097 AS "P_0", 0.434903 AS "P_1", 0 AS "D", 0.565097 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.731573 AS "P_0", 0.268427 AS "P_1", 0 AS "D", 0.731573 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.462692 AS "P_0", 0.537308 AS "P_1", 1 AS "D", 0.537308 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.717512 AS "P_0", 0.282488 AS "P_1", 0 AS "D", 0.717512 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.761601 AS "P_0", 0.238399 AS "P_1", 0 AS "D", 0.761601 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.742590 AS "P_0", 0.257410 AS "P_1", 0 AS "D", 0.742590 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.704703 AS "P_0", 0.295297 AS "P_1", 0 AS "D", 0.704703 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.708137 AS "P_0", 0.291863 AS "P_1", 0 AS "D", 0.708137 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.666900 AS "P_0", 0.333100 AS "P_1", 0 AS "D", 0.666900 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.689255 AS "P_0", 0.310745 AS "P_1", 0 AS "D", 0.689255 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.761928 AS "P_0", 0.238072 AS "P_1", 0 AS "D", 0.761928 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.852060 AS "P_0", 0.147940 AS "P_1", 0 AS "D", 0.852060 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.703823 AS "P_0", 0.296177 AS "P_1", 0 AS "D", 0.703823 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.680633 AS "P_0", 0.319367 AS "P_1", 0 AS "D", 0.680633 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.709875 AS "P_0", 0.290125 AS "P_1", 0 AS "D", 0.709875 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.885345 AS "P_0", 0.114655 AS "P_1", 0 AS "D", 0.885345 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.852472 AS "P_0", 0.147528 AS "P_1", 0 AS "D", 0.852472 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.835505 AS "P_0", 0.164495 AS "P_1", 0 AS "D", 0.835505 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.859329 AS "P_0", 0.140671 AS "P_1", 0 AS "D", 0.859329 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.888112 AS "P_0", 0.111888 AS "P_1", 0 AS "D", 0.888112 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.852655 AS "P_0", 0.147345 AS "P_1", 0 AS "D", 0.852655 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.708517 AS "P_0", 0.291483 AS "P_1", 0 AS "D", 0.708517 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.729949 AS "P_0", 0.270051 AS "P_1", 0 AS "D", 0.729949 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.994615 AS "P_0", 0.005385 AS "P_1", 0 AS "D", 0.994615 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.976169 AS "P_0", 0.023831 AS "P_1", 0 AS "D", 0.976169 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.471313 AS "P_0", 0.528687 AS "P_1", 1 AS "D", 0.528687 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.453821 AS "P_0", 0.546179 AS "P_1", 1 AS "D", 0.546179 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.483461 AS "P_0", 0.516539 AS "P_1", 1 AS "D", 0.516539 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.431732 AS "P_0", 0.568268 AS "P_1", 1 AS "D", 0.568268 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.985536 AS "P_0", 0.014464 AS "P_1", 0 AS "D", 0.985536 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.971231 AS "P_0", 0.028769 AS "P_1", 0 AS "D", 0.971231 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.964139 AS "P_0", 0.035861 AS "P_1", 0 AS "D", 0.964139 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.974856 AS "P_0", 0.025144 AS "P_1", 0 AS "D", 0.974856 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.998087 AS "P_0", 0.001913 AS "P_1", 0 AS "D", 0.998087 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.991284 AS "P_0", 0.008716 AS "P_1", 0 AS "D", 0.991284 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.987666 AS "P_0", 0.012334 AS "P_1", 0 AS "D", 0.987666 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.994671 AS "P_0", 0.005329 AS "P_1", 0 AS "D", 0.994671 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.746216 AS "P_0", 0.253785 AS "P_1", 0 AS "D", 0.746216 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.739764 AS "P_0", 0.260236 AS "P_1", 0 AS "D", 0.739764 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.995910 AS "P_0", 0.004090 AS "P_1", 0 AS "D", 0.995910 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" > 0.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_2" <= 177087.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_2" > 177087.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 77086.500000) AND (t."X_2" > 37719.000000) AND (t."X_2" <= 52230.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 77086.500000) AND (t."X_2" > 37719.000000) AND (t."X_2" > 52230.500000) AND (t."X_2" <= 63614.500000)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 77086.500000) AND (t."X_2" > 37719.000000) AND (t."X_2" > 52230.500000) AND (t."X_2" > 63614.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 77086.500000) AND (t."X_2" <= 37719.000000) AND (t."X_2" <= 31582.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" <= 77086.500000) AND (t."X_2" <= 37719.000000) AND (t."X_2" > 31582.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" > 77086.500000) AND (t."X_2" > 188071.000000) AND (t."X_2" > 389846.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" > 77086.500000) AND (t."X_2" > 188071.000000) AND (t."X_2" <= 389846.500000) AND (t."X_2" <= 310047.000000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" > 77086.500000) AND (t."X_2" > 188071.000000) AND (t."X_2" <= 389846.500000) AND (t."X_2" > 310047.000000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" > 77086.500000) AND (t."X_2" <= 188071.000000) AND (t."X_2" <= 93404.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" > 77086.500000) AND (t."X_2" <= 188071.000000) AND (t."X_2" > 93404.500000) AND (t."X_2" <= 108469.000000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_2" > 77086.500000) AND (t."X_2" <= 188071.000000) AND (t."X_2" > 93404.500000) AND (t."X_2" > 108469.000000)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 1 AS nid,  0.797272 AS "P_0", 0.202728 AS "P_1", 0 AS "D", 0.797272 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.208485 AS "P_0", 0.791515 AS "P_1", 1 AS "D", 0.791515 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.795365 AS "P_0", 0.204635 AS "P_1", 0 AS "D", 0.795365 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.876509 AS "P_0", 0.123491 AS "P_1", 0 AS "D", 0.876509 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.820961 AS "P_0", 0.179038 AS "P_1", 0 AS "D", 0.820961 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.791831 AS "P_0", 0.208169 AS "P_1", 0 AS "D", 0.791831 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.794013 AS "P_0", 0.205987 AS "P_1", 0 AS "D", 0.794013 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.836322 AS "P_0", 0.163678 AS "P_1", 0 AS "D", 0.836322 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.781366 AS "P_0", 0.218634 AS "P_1", 0 AS "D", 0.781366 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.801973 AS "P_0", 0.198027 AS "P_1", 0 AS "D", 0.801973 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.199344 AS "P_0", 0.800656 AS "P_1", 1 AS "D", 0.800656 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.217828 AS "P_0", 0.782172 AS "P_1", 1 AS "D", 0.782172 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.846373 AS "P_0", 0.153627 AS "P_1", 0 AS "D", 0.846373 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.829435 AS "P_0", 0.170565 AS "P_1", 0 AS "D", 0.829435 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.816514 AS "P_0", 0.183486 AS "P_1", 0 AS "D", 0.816514 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.841270 AS "P_0", 0.158730 AS "P_1", 0 AS "D", 0.841270 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.802243 AS "P_0", 0.197757 AS "P_1", 0 AS "D", 0.802243 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.785859 AS "P_0", 0.214141 AS "P_1", 0 AS "D", 0.785859 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.799447 AS "P_0", 0.200553 AS "P_1", 0 AS "D", 0.799447 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.826110 AS "P_0", 0.173890 AS "P_1", 0 AS "D", 0.826110 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.806235 AS "P_0", 0.193765 AS "P_1", 0 AS "D", 0.806235 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.770977 AS "P_0", 0.229023 AS "P_1", 0 AS "D", 0.770977 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.804131 AS "P_0", 0.195869 AS "P_1", 0 AS "D", 0.804131 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.779452 AS "P_0", 0.220548 AS "P_1", 0 AS "D", 0.779452 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.755030 AS "P_0", 0.244970 AS "P_1", 0 AS "D", 0.755030 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.783494 AS "P_0", 0.216506 AS "P_1", 0 AS "D", 0.783494 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" > 2.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_0" > 1.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 97537.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 97537.500000)) THEN 10 ELSE NULL END AS "Leaf_10"
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
    SELECT 1 AS nid,  0.797377 AS "P_0", 0.202623 AS "P_1", 0 AS "D", 0.797377 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.203817 AS "P_0", 0.796183 AS "P_1", 1 AS "D", 0.796183 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.441448 AS "P_0", 0.558552 AS "P_1", 1 AS "D", 0.558552 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.015281 AS "P_0", 0.984719 AS "P_1", 1 AS "D", 0.984719 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.906027 AS "P_0", 0.093973 AS "P_1", 0 AS "D", 0.906027 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.698820 AS "P_0", 0.301180 AS "P_1", 0 AS "D", 0.698820 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.988148 AS "P_0", 0.011852 AS "P_1", 0 AS "D", 0.988148 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.841369 AS "P_0", 0.158631 AS "P_1", 0 AS "D", 0.841369 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.869315 AS "P_0", 0.130685 AS "P_1", 0 AS "D", 0.869315 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.836180 AS "P_0", 0.163820 AS "P_1", 0 AS "D", 0.836180 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_14", t1."Leaf_16", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 3.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 3.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 213231.000000) AND (t."X_0" > 1.500000) AND (t."X_12" > 1.500000) AND (t."X_10" > 0.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 213231.000000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 213231.000000) AND (t."X_12" > 1.500000) AND (t."X_0" <= 1.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 213231.000000) AND (t."X_0" > 1.500000) AND (t."X_12" > 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_0" <= 2.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 213231.000000) AND (t."X_0" > 1.500000) AND (t."X_12" > 1.500000) AND (t."X_10" <= 0.500000) AND (t."X_0" > 2.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 213231.000000) AND (t."X_12" <= 1.500000) AND (t."X_12" <= 0.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 213231.000000) AND (t."X_12" <= 1.500000) AND (t."X_12" > 0.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 213231.000000) AND (t."X_12" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 213231.000000) AND (t."X_12" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 2.500000) AND (t."X_4" <= 9.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 213231.000000) AND (t."X_12" > 1.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 2.500000) AND (t."X_4" > 9.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 213231.000000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 1.500000) AND (t."X_0" <= 3.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 213231.000000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 1.500000) AND (t."X_0" > 3.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 183921.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 183921.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 213231.000000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" > 1.500000)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 213231.000000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" <= 1.500000) AND (t."X_4" <= 9.500000)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 213231.000000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" <= 1.500000) AND (t."X_4" > 9.500000)) THEN 36 ELSE NULL END AS "Leaf_36"
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
    SELECT 7 AS nid,  0.799585 AS "P_0", 0.200415 AS "P_1", 0 AS "D", 0.799585 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.830089 AS "P_0", 0.169911 AS "P_1", 0 AS "D", 0.830089 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.914064 AS "P_0", 0.085936 AS "P_1", 0 AS "D", 0.914064 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.702080 AS "P_0", 0.297920 AS "P_1", 0 AS "D", 0.702080 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.826845 AS "P_0", 0.173155 AS "P_1", 0 AS "D", 0.826845 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.664243 AS "P_0", 0.335757 AS "P_1", 0 AS "D", 0.664243 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.702022 AS "P_0", 0.297978 AS "P_1", 0 AS "D", 0.702022 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.336380 AS "P_0", 0.663620 AS "P_1", 1 AS "D", 0.663620 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.988053 AS "P_0", 0.011947 AS "P_1", 0 AS "D", 0.988053 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.852095 AS "P_0", 0.147905 AS "P_1", 0 AS "D", 0.852095 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.922140 AS "P_0", 0.077860 AS "P_1", 0 AS "D", 0.922140 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.796868 AS "P_0", 0.203132 AS "P_1", 0 AS "D", 0.796868 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.905254 AS "P_0", 0.094746 AS "P_1", 0 AS "D", 0.905254 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.693613 AS "P_0", 0.306387 AS "P_1", 0 AS "D", 0.693613 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.723799 AS "P_0", 0.276201 AS "P_1", 0 AS "D", 0.723799 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.683450 AS "P_0", 0.316550 AS "P_1", 0 AS "D", 0.683450 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.943241 AS "P_0", 0.056759 AS "P_1", 0 AS "D", 0.943241 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.908193 AS "P_0", 0.091807 AS "P_1", 0 AS "D", 0.908193 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.709583 AS "P_0", 0.290417 AS "P_1", 0 AS "D", 0.709583 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.677474 AS "P_0", 0.322526 AS "P_1", 0 AS "D", 0.677474 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.850932 AS "P_0", 0.149068 AS "P_1", 0 AS "D", 0.850932 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.584446 AS "P_0", 0.415554 AS "P_1", 0 AS "D", 0.584446 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.811708 AS "P_0", 0.188292 AS "P_1", 0 AS "D", 0.811708 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.842986 AS "P_0", 0.157014 AS "P_1", 0 AS "D", 0.842986 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.719217 AS "P_0", 0.280783 AS "P_1", 0 AS "D", 0.719217 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.742020 AS "P_0", 0.257980 AS "P_1", 0 AS "D", 0.742020 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.994842 AS "P_0", 0.005158 AS "P_1", 0 AS "D", 0.994842 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.981082 AS "P_0", 0.018918 AS "P_1", 0 AS "D", 0.981082 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.990534 AS "P_0", 0.009466 AS "P_1", 0 AS "D", 0.990534 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_10", t1."Leaf_14", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" <= 2.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" > 2.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" > 1.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 14.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 14.500000) AND (t."X_12" > 2.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" <= 1.500000) AND (t."X_0" > 1.500000) AND (t."X_12" > 2.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" <= 1.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" > 7.500000) AND (t."X_12" <= 1.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" <= 1.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" > 7.500000) AND (t."X_12" > 1.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" <= 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 14.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" <= 13.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 14.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" > 13.500000)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" <= 1.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" <= 5.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" <= 1.500000) AND (t."X_0" > 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_4" <= 7.500000) AND (t."X_4" > 5.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" <= 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_4" > 9.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" <= 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" <= 148798.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" <= 1.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_4" <= 9.500000) AND (t."X_2" > 148798.500000)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 7 AS nid,  0.860758 AS "P_0", 0.139242 AS "P_1", 0 AS "D", 0.860758 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.321178 AS "P_0", 0.678822 AS "P_1", 1 AS "D", 0.678822 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.444011 AS "P_0", 0.555989 AS "P_1", 1 AS "D", 0.555989 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.209549 AS "P_0", 0.790451 AS "P_1", 1 AS "D", 0.790451 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.938570 AS "P_0", 0.061430 AS "P_1", 0 AS "D", 0.938570 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.784726 AS "P_0", 0.215274 AS "P_1", 0 AS "D", 0.784726 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.495755 AS "P_0", 0.504245 AS "P_1", 1 AS "D", 0.504245 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.343002 AS "P_0", 0.656998 AS "P_1", 1 AS "D", 0.656998 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.818431 AS "P_0", 0.181569 AS "P_1", 0 AS "D", 0.818431 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.654649 AS "P_0", 0.345351 AS "P_1", 0 AS "D", 0.654649 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.947773 AS "P_0", 0.052227 AS "P_1", 0 AS "D", 0.947773 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.791281 AS "P_0", 0.208719 AS "P_1", 0 AS "D", 0.791281 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.895817 AS "P_0", 0.104183 AS "P_1", 0 AS "D", 0.895817 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.762591 AS "P_0", 0.237409 AS "P_1", 0 AS "D", 0.762591 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.987357 AS "P_0", 0.012643 AS "P_1", 0 AS "D", 0.987357 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.892133 AS "P_0", 0.107867 AS "P_1", 0 AS "D", 0.892133 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.520819 AS "P_0", 0.479181 AS "P_1", 0 AS "D", 0.520819 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.439695 AS "P_0", 0.560305 AS "P_1", 1 AS "D", 0.560305 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.958191 AS "P_0", 0.041809 AS "P_1", 0 AS "D", 0.958191 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.932740 AS "P_0", 0.067260 AS "P_1", 0 AS "D", 0.932740 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.990820 AS "P_0", 0.009180 AS "P_1", 0 AS "D", 0.990820 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.983152 AS "P_0", 0.016848 AS "P_1", 0 AS "D", 0.983152 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.998689 AS "P_0", 0.001311 AS "P_1", 0 AS "D", 0.998689 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.987017 AS "P_0", 0.012983 AS "P_1", 0 AS "D", 0.987017 AS "DP"
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