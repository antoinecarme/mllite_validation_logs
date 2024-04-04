WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_9" > 0.244298)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_9" <= 0.244298) AND (t."X_9" <= -0.721949)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_9" <= 0.244298) AND (t."X_9" > -0.721949) AND (t."X_5" > -0.493245)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_9" <= 0.244298) AND (t."X_9" > -0.721949) AND (t."X_5" <= -0.493245) AND (t."X_7" <= -0.023673)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_9" <= 0.244298) AND (t."X_9" > -0.721949) AND (t."X_5" <= -0.493245) AND (t."X_7" > -0.023673) AND (t."X_4" > 1.059410)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_9" <= 0.244298) AND (t."X_9" > -0.721949) AND (t."X_5" <= -0.493245) AND (t."X_7" > -0.023673) AND (t."X_4" <= 1.059410) AND (t."X_9" > -0.075285)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_9" <= 0.244298) AND (t."X_9" > -0.721949) AND (t."X_5" <= -0.493245) AND (t."X_7" > -0.023673) AND (t."X_4" <= 1.059410) AND (t."X_9" <= -0.075285) AND (t."X_5" <= -1.829236)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_9" <= 0.244298) AND (t."X_9" > -0.721949) AND (t."X_5" <= -0.493245) AND (t."X_7" > -0.023673) AND (t."X_4" <= 1.059410) AND (t."X_9" <= -0.075285) AND (t."X_5" > -1.829236) AND (t."X_9" <= -0.542479)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_9" <= 0.244298) AND (t."X_9" > -0.721949) AND (t."X_5" <= -0.493245) AND (t."X_7" > -0.023673) AND (t."X_4" <= 1.059410) AND (t."X_9" <= -0.075285) AND (t."X_5" > -1.829236) AND (t."X_9" > -0.542479)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_4" > 1.157866)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_4" <= 1.157866) AND (t."X_5" > 0.860748)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_4" <= 1.157866) AND (t."X_5" <= 0.860748) AND (t."X_8" <= -1.402895)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_4" <= 1.157866) AND (t."X_5" <= 0.860748) AND (t."X_8" > -1.402895) AND (t."X_5" > 0.817677)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_4" <= 1.157866) AND (t."X_5" <= 0.860748) AND (t."X_8" > -1.402895) AND (t."X_5" <= 0.817677) AND (t."X_7" <= -1.349352)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_4" <= 1.157866) AND (t."X_5" <= 0.860748) AND (t."X_8" > -1.402895) AND (t."X_5" <= 0.817677) AND (t."X_7" > -1.349352)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.468750 AS "P_0", 0.531250 AS "P_1", 1 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.820895 AS "P_0", 0.179104 AS "P_1", 0 AS "D", 0.820895 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.081967 AS "P_0", 0.918033 AS "P_1", 1 AS "D", 0.918033 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.733333 AS "P_0", 0.266667 AS "P_1", 0 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.130435 AS "P_0", 0.869565 AS "P_1", 1 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.047619 AS "P_0", 0.952381 AS "P_1", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_6", t1."Leaf_7", t1."Leaf_10", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 1.129815)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" > 0.317311)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" > 0.919510) AND (t."X_9" <= -1.185652)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" <= 0.317311) AND (t."X_7" > 0.897495)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" <= 0.317311) AND (t."X_7" <= 0.897495) AND (t."X_7" <= 0.391626) AND (t."X_8" <= 0.455929) AND (t."X_8" > 0.065494)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" <= 0.317311) AND (t."X_7" <= 0.897495) AND (t."X_7" <= 0.391626) AND (t."X_8" <= 0.455929) AND (t."X_8" <= 0.065494) AND (t."X_8" > -0.790844)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" <= 0.317311) AND (t."X_7" <= 0.897495) AND (t."X_7" <= 0.391626) AND (t."X_8" <= 0.455929) AND (t."X_8" <= 0.065494) AND (t."X_8" <= -0.790844) AND (t."X_7" <= -0.184856)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" <= 0.317311) AND (t."X_7" <= 0.897495) AND (t."X_7" <= 0.391626) AND (t."X_8" <= 0.455929) AND (t."X_8" <= 0.065494) AND (t."X_8" <= -0.790844) AND (t."X_7" > -0.184856)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" <= 0.317311) AND (t."X_7" <= 0.897495) AND (t."X_7" > 0.391626) AND (t."X_4" > -0.889181)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" <= 0.317311) AND (t."X_7" <= 0.897495) AND (t."X_7" > 0.391626) AND (t."X_4" <= -0.889181) AND (t."X_8" <= 1.299482)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" <= 0.317311) AND (t."X_7" <= 0.897495) AND (t."X_7" > 0.391626) AND (t."X_4" <= -0.889181) AND (t."X_8" > 1.299482)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" > 0.919510) AND (t."X_9" > -1.185652) AND (t."X_4" > 1.090955) AND (t."X_9" > 0.338414)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" > 0.919510) AND (t."X_9" > -1.185652) AND (t."X_4" > 1.090955) AND (t."X_9" <= 0.338414) AND (t."X_7" <= -0.245624)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" > 0.919510) AND (t."X_9" > -1.185652) AND (t."X_4" > 1.090955) AND (t."X_9" <= 0.338414) AND (t."X_7" > -0.245624)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" <= 0.317311) AND (t."X_7" <= 0.897495) AND (t."X_7" <= 0.391626) AND (t."X_8" > 0.455929) AND (t."X_4" <= 0.019128)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" <= 0.317311) AND (t."X_7" <= 0.897495) AND (t."X_7" <= 0.391626) AND (t."X_8" > 0.455929) AND (t."X_4" > 0.019128) AND (t."X_8" <= 0.676492)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" <= 0.919510) AND (t."X_4" <= 0.317311) AND (t."X_7" <= 0.897495) AND (t."X_7" <= 0.391626) AND (t."X_8" > 0.455929) AND (t."X_4" > 0.019128) AND (t."X_8" > 0.676492)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" > 0.919510) AND (t."X_9" > -1.185652) AND (t."X_4" <= 1.090955) AND (t."X_4" > 0.966005)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" > 0.919510) AND (t."X_9" > -1.185652) AND (t."X_4" <= 1.090955) AND (t."X_4" <= 0.966005) AND (t."X_4" <= 0.959471)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_4" <= 1.129815) AND (t."X_4" > 0.919510) AND (t."X_9" > -1.185652) AND (t."X_4" <= 1.090955) AND (t."X_4" <= 0.966005) AND (t."X_4" > 0.959471)) THEN 38 ELSE NULL END AS "Leaf_38"
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
    SELECT 0 AS nid,  0.546875 AS "P_0", 0.453125 AS "P_1", 0 AS "D", 0.546875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.457944 AS "P_0", 0.542056 AS "P_1", 1 AS "D", 0.542056 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.588235 AS "P_0", 0.411765 AS "P_1", 0 AS "D", 0.588235 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.450980 AS "P_0", 0.549020 AS "P_1", 1 AS "D", 0.549020 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.522727 AS "P_0", 0.477273 AS "P_1", 0 AS "D", 0.522727 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.406250 AS "P_0", 0.593750 AS "P_1", 1 AS "D", 0.593750 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_7", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_6" <= -0.175131)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" > -0.745586) AND (t."X_8" <= -0.848257)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" > -0.745586) AND (t."X_8" > -0.848257) AND (t."X_9" > 1.051882)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" > -0.745586) AND (t."X_8" > -0.848257) AND (t."X_9" <= 1.051882) AND (t."X_8" <= -0.178032)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" > -0.745586) AND (t."X_8" > -0.848257) AND (t."X_9" <= 1.051882) AND (t."X_8" > -0.178032) AND (t."X_9" <= -1.663789)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" <= -0.745586) AND (t."X_7" <= -1.456545)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" <= -0.745586) AND (t."X_7" > -1.456545) AND (t."X_7" <= 1.474724)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" <= -0.745586) AND (t."X_7" > -1.456545) AND (t."X_7" > 1.474724)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" > -0.745586) AND (t."X_8" > -0.848257) AND (t."X_9" <= 1.051882) AND (t."X_8" > -0.178032) AND (t."X_9" > -1.663789) AND (t."X_8" > 1.522624)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" > -0.745586) AND (t."X_8" > -0.848257) AND (t."X_9" <= 1.051882) AND (t."X_8" > -0.178032) AND (t."X_9" > -1.663789) AND (t."X_8" <= 1.522624) AND (t."X_8" > 0.956837)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" > -0.745586) AND (t."X_8" > -0.848257) AND (t."X_9" <= 1.051882) AND (t."X_8" > -0.178032) AND (t."X_9" > -1.663789) AND (t."X_8" <= 1.522624) AND (t."X_8" <= 0.956837) AND (t."X_5" <= 0.060467)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_5" > -0.745586) AND (t."X_8" > -0.848257) AND (t."X_9" <= 1.051882) AND (t."X_8" > -0.178032) AND (t."X_9" > -1.663789) AND (t."X_8" <= 1.522624) AND (t."X_8" <= 0.956837) AND (t."X_5" > 0.060467)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_6" > -0.175131) AND (t."X_9" <= -1.426107)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_6" > -0.175131) AND (t."X_9" > -1.426107) AND (t."X_8" > -0.683190)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_6" > -0.175131) AND (t."X_9" > -1.426107) AND (t."X_8" <= -0.683190) AND (t."X_9" <= 0.397025)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_6" > -0.175131) AND (t."X_9" > -1.426107) AND (t."X_8" <= -0.683190) AND (t."X_9" > 0.397025) AND (t."X_5" <= 0.548482)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_6" > -0.175131) AND (t."X_9" > -1.426107) AND (t."X_8" <= -0.683190) AND (t."X_9" > 0.397025) AND (t."X_5" > 0.548482)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.468750 AS "P_0", 0.531250 AS "P_1", 1 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.830769 AS "P_0", 0.169231 AS "P_1", 0 AS "D", 0.830769 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.095238 AS "P_0", 0.904762 AS "P_1", 1 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.065574 AS "P_0", 0.934426 AS "P_1", 1 AS "D", 0.934426 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.689655 AS "P_0", 0.310345 AS "P_1", 0 AS "D", 0.689655 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.971429 AS "P_0", 0.028571 AS "P_1", 0 AS "D", 0.971429 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" > 0.660964) AND (t."X_0" <= -0.507288) AND (t."X_8" <= -1.319975)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_1" > 0.660964) AND (t."X_0" <= -0.507288) AND (t."X_8" > -1.319975) AND (t."X_8" <= 0.591782)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_1" > 0.660964) AND (t."X_0" <= -0.507288) AND (t."X_8" > -1.319975) AND (t."X_8" > 0.591782)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_1" > 0.660964) AND (t."X_0" > -0.507288) AND (t."X_9" > 1.500867)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" <= -1.136104) AND (t."X_8" <= -1.418520)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" <= -1.136104) AND (t."X_8" > -1.418520)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" > -0.180938) AND (t."X_1" > -0.315372) AND (t."X_0" <= 1.044549)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" > -0.180938) AND (t."X_1" > -0.315372) AND (t."X_0" > 1.044549)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" <= -0.180938) AND (t."X_8" <= -0.043693) AND (t."X_8" <= -0.650352)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" <= -0.180938) AND (t."X_8" <= -0.043693) AND (t."X_8" > -0.650352)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" > -0.180938) AND (t."X_1" <= -0.315372) AND (t."X_8" > -0.407063)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" > -0.180938) AND (t."X_1" <= -0.315372) AND (t."X_8" <= -0.407063) AND (t."X_7" > 1.190704)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" > -0.180938) AND (t."X_1" <= -0.315372) AND (t."X_8" <= -0.407063) AND (t."X_7" <= 1.190704) AND (t."X_9" <= -0.167258)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" > -0.180938) AND (t."X_1" <= -0.315372) AND (t."X_8" <= -0.407063) AND (t."X_7" <= 1.190704) AND (t."X_9" > -0.167258)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" > -0.059520) AND (t."X_9" > 0.290221) AND (t."X_9" <= 0.758159)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" > -0.059520) AND (t."X_9" > 0.290221) AND (t."X_9" > 0.758159)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_1" > 0.660964) AND (t."X_0" > -0.507288) AND (t."X_9" <= 1.500867) AND (t."X_9" <= 1.196363)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_1" > 0.660964) AND (t."X_0" > -0.507288) AND (t."X_9" <= 1.500867) AND (t."X_9" > 1.196363) AND (t."X_9" <= 1.266967)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_1" > 0.660964) AND (t."X_0" > -0.507288) AND (t."X_9" <= 1.500867) AND (t."X_9" > 1.196363) AND (t."X_9" > 1.266967)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" <= -0.180938) AND (t."X_8" > -0.043693) AND (t."X_1" <= -0.976747)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" <= -0.180938) AND (t."X_8" > -0.043693) AND (t."X_1" > -0.976747) AND (t."X_1" <= -0.727200)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" <= -0.180938) AND (t."X_8" > -0.043693) AND (t."X_1" > -0.976747) AND (t."X_1" > -0.727200) AND (t."X_8" <= 1.278337)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" <= -0.059520) AND (t."X_7" <= -0.180938) AND (t."X_8" > -0.043693) AND (t."X_1" > -0.976747) AND (t."X_1" > -0.727200) AND (t."X_8" > 1.278337)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" > -0.059520) AND (t."X_9" <= 0.290221) AND (t."X_9" > -0.893198)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" > -0.059520) AND (t."X_9" <= 0.290221) AND (t."X_9" <= -0.893198) AND (t."X_9" <= -1.062116)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_1" <= 0.660964) AND (t."X_8" > -1.136104) AND (t."X_1" > -0.059520) AND (t."X_9" <= 0.290221) AND (t."X_9" <= -0.893198) AND (t."X_9" > -1.062116)) THEN 50 ELSE NULL END AS "Leaf_50"
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
    SELECT 0 AS nid,  0.429688 AS "P_0", 0.570312 AS "P_1", 1 AS "D", 0.570312 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.360825 AS "P_0", 0.639175 AS "P_1", 1 AS "D", 0.639175 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.645161 AS "P_0", 0.354839 AS "P_1", 0 AS "D", 0.645161 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.894737 AS "P_0", 0.105263 AS "P_1", 0 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.310345 AS "P_0", 0.689655 AS "P_1", 1 AS "D", 0.689655 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.442308 AS "P_0", 0.557692 AS "P_1", 1 AS "D", 0.557692 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.114286 AS "P_0", 0.885714 AS "P_1", 1 AS "D", 0.885714 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.764706 AS "P_0", 0.235294 AS "P_1", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.115385 AS "P_0", 0.884615 AS "P_1", 1 AS "D", 0.884615 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.037037 AS "P_0", 0.962963 AS "P_1", 1 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" <= -0.497300)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" > -0.497300) AND (t."X_9" <= -1.426107) AND (t."X_2" <= 1.507420)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" > -0.497300) AND (t."X_9" <= -1.426107) AND (t."X_2" > 1.507420)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" <= -0.490513) AND (t."X_7" <= 0.152059)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" <= -0.490513) AND (t."X_7" > 0.152059) AND (t."X_6" > -0.035564) AND (t."X_2" <= 0.478559)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= -0.490513) AND (t."X_7" > 0.152059) AND (t."X_6" > -0.035564) AND (t."X_2" > 0.478559)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" <= -0.490513) AND (t."X_7" > 0.152059) AND (t."X_6" <= -0.035564) AND (t."X_8" <= -0.949158)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" <= -0.490513) AND (t."X_7" > 0.152059) AND (t."X_6" <= -0.035564) AND (t."X_8" > -0.949158) AND (t."X_7" <= 0.253426)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" <= -0.490513) AND (t."X_7" > 0.152059) AND (t."X_6" <= -0.035564) AND (t."X_8" > -0.949158) AND (t."X_7" > 0.253426)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" > -0.497300) AND (t."X_9" > -1.426107) AND (t."X_8" <= -1.043983) AND (t."X_2" <= 0.359133)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" > -0.497300) AND (t."X_9" > -1.426107) AND (t."X_8" <= -1.043983) AND (t."X_2" > 0.359133)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" > -0.497300) AND (t."X_9" > -1.426107) AND (t."X_8" > -1.043983) AND (t."X_8" > 1.522624) AND (t."X_9" <= 0.112263)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" > -0.497300) AND (t."X_9" > -1.426107) AND (t."X_8" > -1.043983) AND (t."X_8" > 1.522624) AND (t."X_9" > 0.112263)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" > -0.497300) AND (t."X_9" > -1.426107) AND (t."X_8" > -1.043983) AND (t."X_8" <= 1.522624) AND (t."X_5" > -0.242759)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" > -0.497300) AND (t."X_9" > -1.426107) AND (t."X_8" > -1.043983) AND (t."X_8" <= 1.522624) AND (t."X_5" <= -0.242759) AND (t."X_5" <= -0.350745)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" > -0.490513) AND (t."X_2" > -0.497300) AND (t."X_9" > -1.426107) AND (t."X_8" > -1.043983) AND (t."X_8" <= 1.522624) AND (t."X_5" <= -0.242759) AND (t."X_5" > -0.350745)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 0 AS nid,  0.421875 AS "P_0", 0.578125 AS "P_1", 1 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.893617 AS "P_0", 0.106383 AS "P_1", 0 AS "D", 0.893617 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.148148 AS "P_0", 0.851852 AS "P_1", 1 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.115385 AS "P_0", 0.884615 AS "P_1", 1 AS "D", 0.884615 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.068493 AS "P_0", 0.931507 AS "P_1", 1 AS "D", 0.931507 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.772727 AS "P_0", 0.227273 AS "P_1", 0 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.044118 AS "P_0", 0.955882 AS "P_1", 1 AS "D", 0.955882 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.031250 AS "P_0", 0.968750 AS "P_1", 1 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_5" > 0.907329)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_5" <= 0.907329) AND (t."X_9" <= -1.285595)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_5" <= 0.907329) AND (t."X_9" > -1.285595) AND (t."X_5" > 0.721020)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_5" <= 0.907329) AND (t."X_9" > -1.285595) AND (t."X_5" <= 0.721020) AND (t."X_8" <= -0.908259)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" > 0.209900) AND (t."X_5" <= 0.907329) AND (t."X_9" > -1.285595) AND (t."X_5" <= 0.721020) AND (t."X_8" > -0.908259)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_7" > 0.824970) AND (t."X_7" <= 0.844680)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_7" > 0.824970) AND (t."X_7" > 0.844680) AND (t."X_5" <= -0.153945)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_7" > 0.824970) AND (t."X_7" > 0.844680) AND (t."X_5" > -0.153945)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_7" <= 0.824970) AND (t."X_3" > 1.055765) AND (t."X_7" <= 0.276088)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_7" <= 0.824970) AND (t."X_3" > 1.055765) AND (t."X_7" > 0.276088)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_7" <= 0.824970) AND (t."X_3" <= 1.055765) AND (t."X_8" > 0.677636) AND (t."X_3" <= -0.350026)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_7" <= 0.824970) AND (t."X_3" <= 1.055765) AND (t."X_8" > 0.677636) AND (t."X_3" > -0.350026)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_7" <= 0.824970) AND (t."X_3" <= 1.055765) AND (t."X_8" <= 0.677636) AND (t."X_8" > -0.249792)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_7" <= 0.824970) AND (t."X_3" <= 1.055765) AND (t."X_8" <= 0.677636) AND (t."X_8" <= -0.249792) AND (t."X_8" <= -0.692743)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" <= 0.209900) AND (t."X_7" <= 0.824970) AND (t."X_3" <= 1.055765) AND (t."X_8" <= 0.677636) AND (t."X_8" <= -0.249792) AND (t."X_8" > -0.692743)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.414062 AS "P_0", 0.585938 AS "P_1", 1 AS "D", 0.585938 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.761905 AS "P_0", 0.238095 AS "P_1", 0 AS "D", 0.761905 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.294118 AS "P_0", 0.705882 AS "P_1", 1 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.823529 AS "P_0", 0.176471 AS "P_1", 0 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.925000 AS "P_0", 0.075000 AS "P_1", 0 AS "D", 0.925000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= -0.491978)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" > 0.696089) AND (t."X_1" > 1.227383) AND (t."X_8" > 0.450314)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" > 0.696089) AND (t."X_1" <= 1.227383) AND (t."X_2" <= 0.804523)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" > 0.696089) AND (t."X_1" <= 1.227383) AND (t."X_2" > 0.804523) AND (t."X_1" <= 0.861006)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" > 0.696089) AND (t."X_1" <= 1.227383) AND (t."X_2" > 0.804523) AND (t."X_1" > 0.861006)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" > 0.696089) AND (t."X_1" > 1.227383) AND (t."X_8" <= 0.450314) AND (t."X_2" > -0.035753)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" > 0.696089) AND (t."X_1" > 1.227383) AND (t."X_8" <= 0.450314) AND (t."X_2" <= -0.035753) AND (t."X_9" <= 0.756963)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" > 0.696089) AND (t."X_1" > 1.227383) AND (t."X_8" <= 0.450314) AND (t."X_2" <= -0.035753) AND (t."X_9" > 0.756963)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" <= 0.696089) AND (t."X_2" > 0.740582)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" <= 0.696089) AND (t."X_2" <= 0.740582) AND (t."X_1" <= -0.171845) AND (t."X_2" <= -0.057485) AND (t."X_7" > -0.572318)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" <= 0.696089) AND (t."X_2" <= 0.740582) AND (t."X_1" <= -0.171845) AND (t."X_2" <= -0.057485) AND (t."X_7" <= -0.572318) AND (t."X_9" <= 0.592404)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" <= 0.696089) AND (t."X_2" <= 0.740582) AND (t."X_1" <= -0.171845) AND (t."X_2" <= -0.057485) AND (t."X_7" <= -0.572318) AND (t."X_9" > 0.592404)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" <= 0.696089) AND (t."X_2" <= 0.740582) AND (t."X_1" <= -0.171845) AND (t."X_2" > -0.057485) AND (t."X_9" <= -1.304223)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" <= 0.696089) AND (t."X_2" <= 0.740582) AND (t."X_1" > -0.171845) AND (t."X_8" > -0.629895)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" <= 0.696089) AND (t."X_2" <= 0.740582) AND (t."X_1" > -0.171845) AND (t."X_8" <= -0.629895) AND (t."X_1" <= 0.198779)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" <= 0.696089) AND (t."X_2" <= 0.740582) AND (t."X_1" > -0.171845) AND (t."X_8" <= -0.629895) AND (t."X_1" > 0.198779)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" <= 0.696089) AND (t."X_2" <= 0.740582) AND (t."X_1" <= -0.171845) AND (t."X_2" > -0.057485) AND (t."X_9" > -1.304223) AND (t."X_7" <= 1.418993)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" <= 0.696089) AND (t."X_2" <= 0.740582) AND (t."X_1" <= -0.171845) AND (t."X_2" > -0.057485) AND (t."X_9" > -1.304223) AND (t."X_7" > 1.418993) AND (t."X_9" <= 0.012954)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_1" <= 0.696089) AND (t."X_2" <= 0.740582) AND (t."X_1" <= -0.171845) AND (t."X_2" > -0.057485) AND (t."X_9" > -1.304223) AND (t."X_7" > 1.418993) AND (t."X_9" > 0.012954)) THEN 36 ELSE NULL END AS "Leaf_36"
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
    SELECT 0 AS nid,  0.492188 AS "P_0", 0.507812 AS "P_1", 1 AS "D", 0.507812 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.350000 AS "P_0", 0.650000 AS "P_1", 1 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.266667 AS "P_0", 0.733333 AS "P_1", 1 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.377358 AS "P_0", 0.622642 AS "P_1", 1 AS "D", 0.622642 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.542857 AS "P_0", 0.457143 AS "P_1", 0 AS "D", 0.542857 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.263158 AS "P_0", 0.736842 AS "P_1", 1 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_6", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_21", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= -0.491978)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_8" > 1.830161)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_8" <= 1.830161) AND (t."X_2" > 0.698006)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_8" <= 1.830161) AND (t."X_2" <= 0.698006) AND (t."X_9" <= -0.436680) AND (t."X_0" > 1.921893)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_8" <= 1.830161) AND (t."X_2" <= 0.698006) AND (t."X_9" <= -0.436680) AND (t."X_0" <= 1.921893) AND (t."X_0" > -0.286255)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_8" <= 1.830161) AND (t."X_2" <= 0.698006) AND (t."X_9" <= -0.436680) AND (t."X_0" <= 1.921893) AND (t."X_0" <= -0.286255) AND (t."X_9" <= -0.779505)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_8" <= 1.830161) AND (t."X_2" <= 0.698006) AND (t."X_9" <= -0.436680) AND (t."X_0" <= 1.921893) AND (t."X_0" <= -0.286255) AND (t."X_9" > -0.779505) AND (t."X_3" <= -0.155022)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_8" <= 1.830161) AND (t."X_2" <= 0.698006) AND (t."X_9" <= -0.436680) AND (t."X_0" <= 1.921893) AND (t."X_0" <= -0.286255) AND (t."X_9" > -0.779505) AND (t."X_3" > -0.155022) AND (t."X_9" <= -0.683412)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_8" <= 1.830161) AND (t."X_2" <= 0.698006) AND (t."X_9" <= -0.436680) AND (t."X_0" <= 1.921893) AND (t."X_0" <= -0.286255) AND (t."X_9" > -0.779505) AND (t."X_3" > -0.155022) AND (t."X_9" > -0.683412)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_8" <= 1.830161) AND (t."X_2" <= 0.698006) AND (t."X_9" > -0.436680) AND (t."X_9" > 0.359162) AND (t."X_9" <= 0.642134)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_8" <= 1.830161) AND (t."X_2" <= 0.698006) AND (t."X_9" > -0.436680) AND (t."X_9" > 0.359162) AND (t."X_9" > 0.642134) AND (t."X_2" <= 0.120352)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_8" <= 1.830161) AND (t."X_2" <= 0.698006) AND (t."X_9" > -0.436680) AND (t."X_9" > 0.359162) AND (t."X_9" > 0.642134) AND (t."X_2" > 0.120352) AND (t."X_8" <= 0.315822)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_8" <= 1.830161) AND (t."X_2" <= 0.698006) AND (t."X_9" > -0.436680) AND (t."X_9" > 0.359162) AND (t."X_9" > 0.642134) AND (t."X_2" > 0.120352) AND (t."X_8" > 0.315822)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_8" <= 1.830161) AND (t."X_2" <= 0.698006) AND (t."X_9" > -0.436680) AND (t."X_9" <= 0.359162) AND (t."X_0" > 1.217685)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_8" <= 1.830161) AND (t."X_2" <= 0.698006) AND (t."X_9" > -0.436680) AND (t."X_9" <= 0.359162) AND (t."X_0" <= 1.217685) AND (t."X_0" > -1.616707)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_8" <= 1.830161) AND (t."X_2" <= 0.698006) AND (t."X_9" > -0.436680) AND (t."X_9" <= 0.359162) AND (t."X_0" <= 1.217685) AND (t."X_0" <= -1.616707) AND (t."X_9" <= -0.136198)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" > -0.491978) AND (t."X_8" <= 1.830161) AND (t."X_2" <= 0.698006) AND (t."X_9" > -0.436680) AND (t."X_9" <= 0.359162) AND (t."X_0" <= 1.217685) AND (t."X_0" <= -1.616707) AND (t."X_9" > -0.136198)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.390625 AS "P_0", 0.609375 AS "P_1", 1 AS "D", 0.609375 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.277778 AS "P_0", 0.722222 AS "P_1", 1 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.257143 AS "P_0", 0.742857 AS "P_1", 1 AS "D", 0.742857 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.409091 AS "P_0", 0.590909 AS "P_1", 1 AS "D", 0.590909 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.312500 AS "P_0", 0.687500 AS "P_1", 1 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.464286 AS "P_0", 0.535714 AS "P_1", 1 AS "D", 0.535714 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_18", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46", t1."Leaf_49", t1."Leaf_50", t1."Leaf_52", t1."Leaf_53", t1."Leaf_54" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" <= -0.683190) AND (t."X_7" > 0.668715) AND (t."X_7" > 1.648914)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_8" <= -0.683190) AND (t."X_7" > 0.668715) AND (t."X_7" <= 1.648914) AND (t."X_8" <= -0.802323)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_8" <= -0.683190) AND (t."X_7" > 0.668715) AND (t."X_7" <= 1.648914) AND (t."X_8" > -0.802323)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_8" <= -0.683190) AND (t."X_7" <= 0.668715) AND (t."X_9" <= -0.259027) AND (t."X_9" <= -0.279062)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_8" <= -0.683190) AND (t."X_7" <= 0.668715) AND (t."X_9" <= -0.259027) AND (t."X_9" > -0.279062)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" > 0.003183) AND (t."X_8" > 0.623693) AND (t."X_8" > 1.830161)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" > 0.003183) AND (t."X_8" <= 0.623693) AND (t."X_1" <= -0.544305) AND (t."X_7" <= -0.347616)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" > 0.003183) AND (t."X_8" <= 0.623693) AND (t."X_1" <= -0.544305) AND (t."X_7" > -0.347616)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" > 0.003183) AND (t."X_8" <= 0.623693) AND (t."X_1" > -0.544305) AND (t."X_7" > 0.275548)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" > 0.003183) AND (t."X_8" <= 0.623693) AND (t."X_1" > -0.544305) AND (t."X_7" <= 0.275548) AND (t."X_1" <= -0.026924)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" > 0.003183) AND (t."X_8" <= 0.623693) AND (t."X_1" > -0.544305) AND (t."X_7" <= 0.275548) AND (t."X_1" > -0.026924) AND (t."X_9" <= -1.080697)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" > 0.003183) AND (t."X_8" <= 0.623693) AND (t."X_1" > -0.544305) AND (t."X_7" <= 0.275548) AND (t."X_1" > -0.026924) AND (t."X_9" > -1.080697)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" > 0.003183) AND (t."X_8" > 0.623693) AND (t."X_8" <= 1.830161) AND (t."X_9" <= -1.020005)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" <= 0.003183) AND (t."X_7" <= -2.019099)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" <= 0.003183) AND (t."X_7" > -2.019099) AND (t."X_8" > -0.481610)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" <= 0.003183) AND (t."X_7" > -2.019099) AND (t."X_8" <= -0.481610) AND (t."X_1" > 0.441713)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" <= 0.003183) AND (t."X_7" > -2.019099) AND (t."X_8" <= -0.481610) AND (t."X_1" <= 0.441713) AND (t."X_7" <= -0.878738)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" <= 0.003183) AND (t."X_7" > -2.019099) AND (t."X_8" <= -0.481610) AND (t."X_1" <= 0.441713) AND (t."X_7" > -0.878738)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" > 0.003183) AND (t."X_8" > 0.623693) AND (t."X_8" <= 1.830161) AND (t."X_9" > -1.020005) AND (t."X_7" > 1.018741) AND (t."X_9" <= 0.300074)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" > 0.003183) AND (t."X_8" > 0.623693) AND (t."X_8" <= 1.830161) AND (t."X_9" > -1.020005) AND (t."X_7" > 1.018741) AND (t."X_9" > 0.300074)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_8" <= -0.683190) AND (t."X_7" <= 0.668715) AND (t."X_9" > -0.259027) AND (t."X_9" <= 1.687910)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_8" <= -0.683190) AND (t."X_7" <= 0.668715) AND (t."X_9" > -0.259027) AND (t."X_9" > 1.687910) AND (t."X_9" <= 2.311504)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_8" <= -0.683190) AND (t."X_7" <= 0.668715) AND (t."X_9" > -0.259027) AND (t."X_9" > 1.687910) AND (t."X_9" > 2.311504)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" > 0.003183) AND (t."X_8" > 0.623693) AND (t."X_8" <= 1.830161) AND (t."X_9" > -1.020005) AND (t."X_7" <= 1.018741) AND (t."X_8" > 1.522624) AND (t."X_7" <= 0.240242)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" > 0.003183) AND (t."X_8" > 0.623693) AND (t."X_8" <= 1.830161) AND (t."X_9" > -1.020005) AND (t."X_7" <= 1.018741) AND (t."X_8" > 1.522624) AND (t."X_7" > 0.240242)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" > 0.003183) AND (t."X_8" > 0.623693) AND (t."X_8" <= 1.830161) AND (t."X_9" > -1.020005) AND (t."X_7" <= 1.018741) AND (t."X_8" <= 1.522624) AND (t."X_8" > 0.667353)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" > 0.003183) AND (t."X_8" > 0.623693) AND (t."X_8" <= 1.830161) AND (t."X_9" > -1.020005) AND (t."X_7" <= 1.018741) AND (t."X_8" <= 1.522624) AND (t."X_8" <= 0.667353) AND (t."X_9" <= 0.008814)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_8" > -0.683190) AND (t."X_8" > 0.003183) AND (t."X_8" > 0.623693) AND (t."X_8" <= 1.830161) AND (t."X_9" > -1.020005) AND (t."X_7" <= 1.018741) AND (t."X_8" <= 1.522624) AND (t."X_8" <= 0.667353) AND (t."X_9" > 0.008814)) THEN 54 ELSE NULL END AS "Leaf_54"
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
    SELECT 0 AS nid,  0.468750 AS "P_0", 0.531250 AS "P_1", 1 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.702703 AS "P_0", 0.297297 AS "P_1", 0 AS "D", 0.702703 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.373626 AS "P_0", 0.626374 AS "P_1", 1 AS "D", 0.626374 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.827586 AS "P_0", 0.172414 AS "P_1", 0 AS "D", 0.827586 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.172414 AS "P_0", 0.827586 AS "P_1", 1 AS "D", 0.827586 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.467742 AS "P_0", 0.532258 AS "P_1", 1 AS "D", 0.532258 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.281250 AS "P_0", 0.718750 AS "P_1", 1 AS "D", 0.718750 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.178571 AS "P_0", 0.821429 AS "P_1", 1 AS "D", 0.821429 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.782609 AS "P_0", 0.217391 AS "P_1", 0 AS "D", 0.782609 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.148148 AS "P_0", 0.851852 AS "P_1", 1 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.086957 AS "P_0", 0.913043 AS "P_1", 1 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_5", t1."Leaf_10", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_40", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" <= -1.663244)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" <= -0.530781) AND (t."X_8" <= -1.930190)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" <= 0.711948) AND (t."X_9" > 0.705803)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" <= 0.711948) AND (t."X_9" <= 0.705803) AND (t."X_3" > 0.315113) AND (t."X_7" <= 0.302295)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" <= 0.711948) AND (t."X_9" <= 0.705803) AND (t."X_3" > 0.315113) AND (t."X_7" > 0.302295) AND (t."X_0" <= 0.183239)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" <= 0.711948) AND (t."X_9" <= 0.705803) AND (t."X_3" > 0.315113) AND (t."X_7" > 0.302295) AND (t."X_0" > 0.183239)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" <= 0.711948) AND (t."X_9" <= 0.705803) AND (t."X_3" <= 0.315113) AND (t."X_8" > 0.956837) AND (t."X_0" <= 1.059846)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" <= 0.711948) AND (t."X_9" <= 0.705803) AND (t."X_3" <= 0.315113) AND (t."X_8" > 0.956837) AND (t."X_0" > 1.059846)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" <= 0.711948) AND (t."X_9" <= 0.705803) AND (t."X_3" <= 0.315113) AND (t."X_8" <= 0.956837) AND (t."X_8" <= -0.095439) AND (t."X_9" > -0.708345)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" <= 0.711948) AND (t."X_9" <= 0.705803) AND (t."X_3" <= 0.315113) AND (t."X_8" <= 0.956837) AND (t."X_8" <= -0.095439) AND (t."X_9" <= -0.708345) AND (t."X_9" <= -0.954506)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" <= 0.711948) AND (t."X_9" <= 0.705803) AND (t."X_3" <= 0.315113) AND (t."X_8" <= 0.956837) AND (t."X_8" <= -0.095439) AND (t."X_9" <= -0.708345) AND (t."X_9" > -0.954506)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" > 0.711948) AND (t."X_0" > -0.370926)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" > 0.711948) AND (t."X_0" <= -0.370926) AND (t."X_0" <= -0.602384)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" > 0.711948) AND (t."X_0" <= -0.370926) AND (t."X_0" > -0.602384)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" <= -0.530781) AND (t."X_8" > -1.930190) AND (t."X_0" <= -2.073337)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" <= -0.530781) AND (t."X_8" > -1.930190) AND (t."X_0" > -2.073337) AND (t."X_9" > 1.525562)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" <= 0.711948) AND (t."X_9" <= 0.705803) AND (t."X_3" <= 0.315113) AND (t."X_8" <= 0.956837) AND (t."X_8" > -0.095439) AND (t."X_0" <= -2.420587)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" <= 0.711948) AND (t."X_9" <= 0.705803) AND (t."X_3" <= 0.315113) AND (t."X_8" <= 0.956837) AND (t."X_8" > -0.095439) AND (t."X_0" > -2.420587) AND (t."X_3" <= -1.402666)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" <= 0.711948) AND (t."X_9" <= 0.705803) AND (t."X_3" <= 0.315113) AND (t."X_8" <= 0.956837) AND (t."X_8" > -0.095439) AND (t."X_0" > -2.420587) AND (t."X_3" > -1.402666) AND (t."X_8" > 0.389867)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" <= 0.711948) AND (t."X_9" <= 0.705803) AND (t."X_3" <= 0.315113) AND (t."X_8" <= 0.956837) AND (t."X_8" > -0.095439) AND (t."X_0" > -2.420587) AND (t."X_3" > -1.402666) AND (t."X_8" <= 0.389867) AND (t."X_3" > -0.341978)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" <= 0.711948) AND (t."X_9" <= 0.705803) AND (t."X_3" <= 0.315113) AND (t."X_8" <= 0.956837) AND (t."X_8" > -0.095439) AND (t."X_0" > -2.420587) AND (t."X_3" > -1.402666) AND (t."X_8" <= 0.389867) AND (t."X_3" <= -0.341978) AND (t."X_8" <= 0.297851)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" > -0.530781) AND (t."X_3" <= 0.711948) AND (t."X_9" <= 0.705803) AND (t."X_3" <= 0.315113) AND (t."X_8" <= 0.956837) AND (t."X_8" > -0.095439) AND (t."X_0" > -2.420587) AND (t."X_3" > -1.402666) AND (t."X_8" <= 0.389867) AND (t."X_3" <= -0.341978) AND (t."X_8" > 0.297851)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" <= -0.530781) AND (t."X_8" > -1.930190) AND (t."X_0" > -2.073337) AND (t."X_9" <= 1.525562) AND (t."X_7" > -0.927373)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" <= -0.530781) AND (t."X_8" > -1.930190) AND (t."X_0" > -2.073337) AND (t."X_9" <= 1.525562) AND (t."X_7" <= -0.927373) AND (t."X_9" <= 0.010014)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_7" > -1.663244) AND (t."X_8" <= -0.530781) AND (t."X_8" > -1.930190) AND (t."X_0" > -2.073337) AND (t."X_9" <= 1.525562) AND (t."X_7" <= -0.927373) AND (t."X_9" > 0.010014)) THEN 48 ELSE NULL END AS "Leaf_48"
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
    SELECT 0 AS nid,  0.539062 AS "P_0", 0.460938 AS "P_1", 0 AS "D", 0.539062 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.594828 AS "P_0", 0.405172 AS "P_1", 0 AS "D", 0.594828 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.828571 AS "P_0", 0.171429 AS "P_1", 0 AS "D", 0.828571 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.493827 AS "P_0", 0.506173 AS "P_1", 1 AS "D", 0.506173 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.906250 AS "P_0", 0.093750 AS "P_1", 0 AS "D", 0.906250 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.417910 AS "P_0", 0.582090 AS "P_1", 1 AS "D", 0.582090 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.509091 AS "P_0", 0.490909 AS "P_1", 0 AS "D", 0.509091 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.619048 AS "P_0", 0.380952 AS "P_1", 0 AS "D", 0.619048 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.821429 AS "P_0", 0.178571 AS "P_1", 0 AS "D", 0.821429 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.935484 AS "P_0", 0.064516 AS "P_1", 0 AS "D", 0.935484 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.966667 AS "P_0", 0.033333 AS "P_1", 0 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.851852 AS "P_0", 0.148148 AS "P_1", 0 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.920000 AS "P_0", 0.080000 AS "P_1", 0 AS "D", 0.920000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_28", t1."Leaf_29", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_47", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" <= -0.284158) AND (t."X_7" > -0.562762) AND (t."X_0" <= -1.359626) AND (t."X_9" <= -0.136198)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_0" <= -0.284158) AND (t."X_7" > -0.562762) AND (t."X_0" <= -1.359626) AND (t."X_9" > -0.136198) AND (t."X_9" <= 0.439780)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_0" <= -0.284158) AND (t."X_7" > -0.562762) AND (t."X_0" <= -1.359626) AND (t."X_9" > -0.136198) AND (t."X_9" > 0.439780)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_0" <= -0.284158) AND (t."X_7" > -0.562762) AND (t."X_0" > -1.359626) AND (t."X_3" > 0.789875) AND (t."X_9" <= -0.081117)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_0" <= -0.284158) AND (t."X_7" > -0.562762) AND (t."X_0" > -1.359626) AND (t."X_3" > 0.789875) AND (t."X_9" > -0.081117)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_0" <= -0.284158) AND (t."X_7" <= -0.562762) AND (t."X_9" <= -0.964670)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_0" <= -0.284158) AND (t."X_7" <= -0.562762) AND (t."X_9" > -0.964670)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" <= -0.679551) AND (t."X_0" <= 0.674020) AND (t."X_7" > 0.168856)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" <= -0.679551) AND (t."X_0" <= 0.674020) AND (t."X_7" <= 0.168856) AND (t."X_3" <= -1.208336)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" <= -0.679551) AND (t."X_0" <= 0.674020) AND (t."X_7" <= 0.168856) AND (t."X_3" > -1.208336)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" > -0.679551) AND (t."X_9" > 0.590601) AND (t."X_3" > 1.251936)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" > -0.679551) AND (t."X_9" > 0.590601) AND (t."X_3" <= 1.251936) AND (t."X_8" <= -0.663979)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" > -0.679551) AND (t."X_9" > 0.590601) AND (t."X_3" <= 1.251936) AND (t."X_8" > -0.663979) AND (t."X_3" > 0.561203)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" > -0.679551) AND (t."X_9" > 0.590601) AND (t."X_3" <= 1.251936) AND (t."X_8" > -0.663979) AND (t."X_3" <= 0.561203) AND (t."X_8" <= -0.059847)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" > -0.679551) AND (t."X_9" > 0.590601) AND (t."X_3" <= 1.251936) AND (t."X_8" > -0.663979) AND (t."X_3" <= 0.561203) AND (t."X_8" > -0.059847) AND (t."X_3" <= 0.248569)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" > -0.679551) AND (t."X_9" > 0.590601) AND (t."X_3" <= 1.251936) AND (t."X_8" > -0.663979) AND (t."X_3" <= 0.561203) AND (t."X_8" > -0.059847) AND (t."X_3" > 0.248569)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" <= -0.679551) AND (t."X_0" > 0.674020) AND (t."X_7" > 0.275238)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" <= -0.679551) AND (t."X_0" > 0.674020) AND (t."X_7" <= 0.275238) AND (t."X_9" <= 0.433123)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" <= -0.679551) AND (t."X_0" > 0.674020) AND (t."X_7" <= 0.275238) AND (t."X_9" > 0.433123)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_0" <= -0.284158) AND (t."X_7" > -0.562762) AND (t."X_0" > -1.359626) AND (t."X_3" <= 0.789875) AND (t."X_3" > -0.048131)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_0" <= -0.284158) AND (t."X_7" > -0.562762) AND (t."X_0" > -1.359626) AND (t."X_3" <= 0.789875) AND (t."X_3" <= -0.048131) AND (t."X_3" <= -0.213916)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_0" <= -0.284158) AND (t."X_7" > -0.562762) AND (t."X_0" > -1.359626) AND (t."X_3" <= 0.789875) AND (t."X_3" <= -0.048131) AND (t."X_3" > -0.213916)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" > -0.679551) AND (t."X_9" <= 0.590601) AND (t."X_8" > 0.811989) AND (t."X_0" <= -0.048946)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" > -0.679551) AND (t."X_9" <= 0.590601) AND (t."X_8" > 0.811989) AND (t."X_0" > -0.048946) AND (t."X_9" <= -0.742240)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" > -0.679551) AND (t."X_9" <= 0.590601) AND (t."X_8" > 0.811989) AND (t."X_0" > -0.048946) AND (t."X_9" > -0.742240) AND (t."X_3" <= 0.898534)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" > -0.679551) AND (t."X_9" <= 0.590601) AND (t."X_8" > 0.811989) AND (t."X_0" > -0.048946) AND (t."X_9" > -0.742240) AND (t."X_3" > 0.898534)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" > -0.679551) AND (t."X_9" <= 0.590601) AND (t."X_8" <= 0.811989) AND (t."X_8" > -1.124338)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" > -0.679551) AND (t."X_9" <= 0.590601) AND (t."X_8" <= 0.811989) AND (t."X_8" <= -1.124338) AND (t."X_9" <= -0.444929)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_0" > -0.284158) AND (t."X_3" > -0.679551) AND (t."X_9" <= 0.590601) AND (t."X_8" <= 0.811989) AND (t."X_8" <= -1.124338) AND (t."X_9" > -0.444929)) THEN 56 ELSE NULL END AS "Leaf_56"
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
    SELECT 0 AS nid,  0.515625 AS "P_0", 0.484375 AS "P_1", 0 AS "D", 0.515625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.675000 AS "P_0", 0.325000 AS "P_1", 0 AS "D", 0.675000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.047619 AS "P_0", 0.952381 AS "P_1", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.407407 AS "P_0", 0.592593 AS "P_1", 1 AS "D", 0.592593 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.187500 AS "P_0", 0.812500 AS "P_1", 1 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.380952 AS "P_0", 0.619048 AS "P_1", 1 AS "D", 0.619048 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.779661 AS "P_0", 0.220339 AS "P_1", 0 AS "D", 0.779661 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.921053 AS "P_0", 0.078947 AS "P_1", 0 AS "D", 0.921053 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.523810 AS "P_0", 0.476190 AS "P_1", 0 AS "D", 0.523810 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.611111 AS "P_0", 0.388889 AS "P_1", 0 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    SELECT 45 AS nid,  0.964286 AS "P_0", 0.035714 AS "P_1", 0 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_7", t1."Leaf_10", t1."Leaf_14", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > -0.492016) AND (t."X_5" > 0.907329)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_5" > -0.492016) AND (t."X_5" <= 0.907329) AND (t."X_7" <= -1.346979)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" <= -0.492016) AND (t."X_8" <= -2.270077)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_5" > -0.492016) AND (t."X_5" <= 0.907329) AND (t."X_7" > -1.346979) AND (t."X_5" > 0.817677)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" > -0.492016) AND (t."X_5" <= 0.907329) AND (t."X_7" > -1.346979) AND (t."X_5" <= 0.817677) AND (t."X_1" <= -0.102173) AND (t."X_1" > -0.289945)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" > -0.492016) AND (t."X_5" <= 0.907329) AND (t."X_7" > -1.346979) AND (t."X_5" <= 0.817677) AND (t."X_1" <= -0.102173) AND (t."X_1" <= -0.289945) AND (t."X_1" <= -1.495715)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" > -0.492016) AND (t."X_5" <= 0.907329) AND (t."X_7" > -1.346979) AND (t."X_5" <= 0.817677) AND (t."X_1" > -0.102173) AND (t."X_5" > 0.698327)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" > -0.492016) AND (t."X_5" <= 0.907329) AND (t."X_7" > -1.346979) AND (t."X_5" <= 0.817677) AND (t."X_1" <= -0.102173) AND (t."X_1" <= -0.289945) AND (t."X_1" > -1.495715) AND (t."X_8" <= 0.206490)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" > -0.492016) AND (t."X_5" <= 0.907329) AND (t."X_7" > -1.346979) AND (t."X_5" <= 0.817677) AND (t."X_1" <= -0.102173) AND (t."X_1" <= -0.289945) AND (t."X_1" > -1.495715) AND (t."X_8" > 0.206490) AND (t."X_5" <= -0.326866)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" > -0.492016) AND (t."X_5" <= 0.907329) AND (t."X_7" > -1.346979) AND (t."X_5" <= 0.817677) AND (t."X_1" <= -0.102173) AND (t."X_1" <= -0.289945) AND (t."X_1" > -1.495715) AND (t."X_8" > 0.206490) AND (t."X_5" > -0.326866) AND (t."X_7" <= 0.656569)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" > -0.492016) AND (t."X_5" <= 0.907329) AND (t."X_7" > -1.346979) AND (t."X_5" <= 0.817677) AND (t."X_1" <= -0.102173) AND (t."X_1" <= -0.289945) AND (t."X_1" > -1.495715) AND (t."X_8" > 0.206490) AND (t."X_5" > -0.326866) AND (t."X_7" > 0.656569)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" > -0.492016) AND (t."X_5" <= 0.907329) AND (t."X_7" > -1.346979) AND (t."X_5" <= 0.817677) AND (t."X_1" > -0.102173) AND (t."X_5" <= 0.698327) AND (t."X_7" > -0.384922)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" > -0.492016) AND (t."X_5" <= 0.907329) AND (t."X_7" > -1.346979) AND (t."X_5" <= 0.817677) AND (t."X_1" > -0.102173) AND (t."X_5" <= 0.698327) AND (t."X_7" <= -0.384922) AND (t."X_5" > 0.498925)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" > -0.492016) AND (t."X_5" <= 0.907329) AND (t."X_7" > -1.346979) AND (t."X_5" <= 0.817677) AND (t."X_1" > -0.102173) AND (t."X_5" <= 0.698327) AND (t."X_7" <= -0.384922) AND (t."X_5" <= 0.498925) AND (t."X_7" <= -0.579917)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" > -0.492016) AND (t."X_5" <= 0.907329) AND (t."X_7" > -1.346979) AND (t."X_5" <= 0.817677) AND (t."X_1" > -0.102173) AND (t."X_5" <= 0.698327) AND (t."X_7" <= -0.384922) AND (t."X_5" <= 0.498925) AND (t."X_7" > -0.579917)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" <= -0.492016) AND (t."X_8" > -2.270077) AND (t."X_7" <= -1.405417) AND (t."X_8" <= 0.249751)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" <= -0.492016) AND (t."X_8" > -2.270077) AND (t."X_7" <= -1.405417) AND (t."X_8" > 0.249751)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_5" <= -0.492016) AND (t."X_8" > -2.270077) AND (t."X_7" > -1.405417) AND (t."X_9" <= 0.060083)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" <= -0.492016) AND (t."X_8" > -2.270077) AND (t."X_7" > -1.405417) AND (t."X_9" > 0.060083) AND (t."X_9" <= 0.244298)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_5" <= -0.492016) AND (t."X_8" > -2.270077) AND (t."X_7" > -1.405417) AND (t."X_9" > 0.060083) AND (t."X_9" > 0.244298)) THEN 38 ELSE NULL END AS "Leaf_38"
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
    SELECT 0 AS nid,  0.468750 AS "P_0", 0.531250 AS "P_1", 1 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.930233 AS "P_0", 0.069767 AS "P_1", 0 AS "D", 0.930233 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.235294 AS "P_0", 0.764706 AS "P_1", 1 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.377358 AS "P_0", 0.622642 AS "P_1", 1 AS "D", 0.622642 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.312500 AS "P_0", 0.687500 AS "P_1", 1 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.282609 AS "P_0", 0.717391 AS "P_1", 1 AS "D", 0.717391 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.473684 AS "P_0", 0.526316 AS "P_1", 1 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.148148 AS "P_0", 0.851852 AS "P_1", 1 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.115385 AS "P_0", 0.884615 AS "P_1", 1 AS "D", 0.884615 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.972973 AS "P_0", 0.027027 AS "P_1", 0 AS "D", 0.972973 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_0" > 1.296723) AND (t."X_6" <= 0.333342)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_0" > 1.296723) AND (t."X_6" > 0.333342)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_0" <= 1.296723) AND (t."X_9" <= -1.297277) AND (t."X_9" <= -2.081126)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_0" <= 1.296723) AND (t."X_9" <= -1.297277) AND (t."X_9" > -2.081126)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" > -0.086996) AND (t."X_0" <= -0.275907) AND (t."X_9" <= 0.763532)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" > -0.086996) AND (t."X_0" <= -0.275907) AND (t."X_9" > 0.763532)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" > -0.086996) AND (t."X_0" > -0.275907) AND (t."X_0" > 1.412635) AND (t."X_5" <= -1.405195)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" > -0.086996) AND (t."X_0" > -0.275907) AND (t."X_0" > 1.412635) AND (t."X_5" > -1.405195)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" > -0.086996) AND (t."X_0" > -0.275907) AND (t."X_0" <= 1.412635) AND (t."X_9" <= 1.215056)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" > -0.086996) AND (t."X_0" > -0.275907) AND (t."X_0" <= 1.412635) AND (t."X_9" > 1.215056) AND (t."X_9" <= 1.693805)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" > -0.086996) AND (t."X_0" > -0.275907) AND (t."X_0" <= 1.412635) AND (t."X_9" > 1.215056) AND (t."X_9" > 1.693805)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" <= -0.086996) AND (t."X_9" <= -0.721949)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" <= -0.086996) AND (t."X_9" > -0.721949) AND (t."X_0" <= -0.734965)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" <= -0.086996) AND (t."X_9" > -0.721949) AND (t."X_0" > -0.734965) AND (t."X_8" > 0.655055)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" <= -0.086996) AND (t."X_9" > -0.721949) AND (t."X_0" > -0.734965) AND (t."X_8" <= 0.655055) AND (t."X_6" > -1.035463)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" <= -0.086996) AND (t."X_9" > -0.721949) AND (t."X_0" > -0.734965) AND (t."X_8" <= 0.655055) AND (t."X_6" <= -1.035463) AND (t."X_9" <= -0.632412)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" <= -0.086996) AND (t."X_9" > -0.721949) AND (t."X_0" > -0.734965) AND (t."X_8" <= 0.655055) AND (t."X_6" <= -1.035463) AND (t."X_9" > -0.632412)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_0" <= 1.296723) AND (t."X_9" > -1.297277) AND (t."X_5" > 0.887300)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_0" <= 1.296723) AND (t."X_9" > -1.297277) AND (t."X_5" <= 0.887300) AND (t."X_6" > 1.051927)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_0" <= 1.296723) AND (t."X_9" > -1.297277) AND (t."X_5" <= 0.887300) AND (t."X_6" <= 1.051927) AND (t."X_8" <= 1.114513)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_0" <= 1.296723) AND (t."X_9" > -1.297277) AND (t."X_5" <= 0.887300) AND (t."X_6" <= 1.051927) AND (t."X_8" > 1.114513) AND (t."X_6" <= 0.446695)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_0" <= 1.296723) AND (t."X_9" > -1.297277) AND (t."X_5" <= 0.887300) AND (t."X_6" <= 1.051927) AND (t."X_8" > 1.114513) AND (t."X_6" > 0.446695)) THEN 42 ELSE NULL END AS "Leaf_42"
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
    SELECT 0 AS nid,  0.445312 AS "P_0", 0.554688 AS "P_1", 1 AS "D", 0.554688 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.786885 AS "P_0", 0.213115 AS "P_1", 0 AS "D", 0.786885 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.134328 AS "P_0", 0.865672 AS "P_1", 1 AS "D", 0.865672 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.095238 AS "P_0", 0.904762 AS "P_1", 1 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.906250 AS "P_0", 0.093750 AS "P_1", 0 AS "D", 0.906250 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.655172 AS "P_0", 0.344828 AS "P_1", 0 AS "D", 0.655172 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.809524 AS "P_0", 0.190476 AS "P_1", 0 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.034483 AS "P_0", 0.965517 AS "P_1", 1 AS "D", 0.965517 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_6", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= -0.221763) AND (t."X_9" <= 0.696827)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_6" <= -0.221763) AND (t."X_9" > 0.696827)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_6" > 1.229779)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_6" <= 1.229779) AND (t."X_9" > 0.227402) AND (t."X_9" > 1.187751) AND (t."X_8" <= -0.870702)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_6" <= 1.229779) AND (t."X_9" > 0.227402) AND (t."X_9" > 1.187751) AND (t."X_8" > -0.870702)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_6" <= 1.229779) AND (t."X_9" > 0.227402) AND (t."X_9" <= 1.187751) AND (t."X_0" > 0.693890) AND (t."X_7" <= -0.371895)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_6" <= 1.229779) AND (t."X_9" > 0.227402) AND (t."X_9" <= 1.187751) AND (t."X_0" > 0.693890) AND (t."X_7" > -0.371895) AND (t."X_6" > -0.101216)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_6" <= 1.229779) AND (t."X_9" > 0.227402) AND (t."X_9" <= 1.187751) AND (t."X_0" > 0.693890) AND (t."X_7" > -0.371895) AND (t."X_6" <= -0.101216) AND (t."X_9" <= 0.556999)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_6" <= 1.229779) AND (t."X_9" > 0.227402) AND (t."X_9" <= 1.187751) AND (t."X_0" > 0.693890) AND (t."X_7" > -0.371895) AND (t."X_6" <= -0.101216) AND (t."X_9" > 0.556999)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_6" <= 1.229779) AND (t."X_9" <= 0.227402) AND (t."X_6" <= -0.093187) AND (t."X_7" <= -0.347288)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_6" <= 1.229779) AND (t."X_9" <= 0.227402) AND (t."X_6" <= -0.093187) AND (t."X_7" > -0.347288)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_6" <= 1.229779) AND (t."X_9" <= 0.227402) AND (t."X_6" > -0.093187) AND (t."X_9" <= -1.429599)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_6" <= 1.229779) AND (t."X_9" <= 0.227402) AND (t."X_6" > -0.093187) AND (t."X_9" > -1.429599)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_6" <= 1.229779) AND (t."X_9" > 0.227402) AND (t."X_9" <= 1.187751) AND (t."X_0" <= 0.693890) AND (t."X_7" > -0.575646)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_6" <= 1.229779) AND (t."X_9" > 0.227402) AND (t."X_9" <= 1.187751) AND (t."X_0" <= 0.693890) AND (t."X_7" <= -0.575646) AND (t."X_0" <= -0.322189)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_6" <= 1.229779) AND (t."X_9" > 0.227402) AND (t."X_9" <= 1.187751) AND (t."X_0" <= 0.693890) AND (t."X_7" <= -0.575646) AND (t."X_0" > -0.322189)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 0 AS nid,  0.468750 AS "P_0", 0.531250 AS "P_1", 1 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.945946 AS "P_0", 0.054054 AS "P_1", 0 AS "D", 0.945946 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.274725 AS "P_0", 0.725275 AS "P_1", 1 AS "D", 0.725275 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.328947 AS "P_0", 0.671053 AS "P_1", 1 AS "D", 0.671053 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.513514 AS "P_0", 0.486486 AS "P_1", 0 AS "D", 0.513514 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.761905 AS "P_0", 0.238095 AS "P_1", 0 AS "D", 0.761905 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.187500 AS "P_0", 0.812500 AS "P_1", 1 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.035714 AS "P_0", 0.964286 AS "P_1", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_10", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_25", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= -0.380758) AND (t."X_9" > 1.158073)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_2" <= -0.380758) AND (t."X_9" <= 1.158073) AND (t."X_8" <= -1.124338)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" <= -0.380758) AND (t."X_9" <= 1.158073) AND (t."X_8" > -1.124338)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" <= -0.621669) AND (t."X_2" > 1.161252)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" <= -0.621669) AND (t."X_2" <= 1.161252) AND (t."X_2" <= 0.019861) AND (t."X_7" > -0.031044)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" <= -0.621669) AND (t."X_2" <= 1.161252) AND (t."X_2" <= 0.019861) AND (t."X_7" <= -0.031044) AND (t."X_8" <= -0.708277)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" <= -0.621669) AND (t."X_2" <= 1.161252) AND (t."X_2" <= 0.019861) AND (t."X_7" <= -0.031044) AND (t."X_8" > -0.708277)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" <= -0.621669) AND (t."X_2" <= 1.161252) AND (t."X_2" > 0.019861) AND (t."X_9" > -0.264042)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" <= -0.621669) AND (t."X_2" <= 1.161252) AND (t."X_2" > 0.019861) AND (t."X_9" <= -0.264042) AND (t."X_2" <= 0.552168)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" <= -0.621669) AND (t."X_2" <= 1.161252) AND (t."X_2" > 0.019861) AND (t."X_9" <= -0.264042) AND (t."X_2" > 0.552168)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" > -0.621669) AND (t."X_8" <= -0.184084)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" > -0.621669) AND (t."X_8" > -0.184084) AND (t."X_8" <= -0.160269)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" > -0.621669) AND (t."X_8" > -0.184084) AND (t."X_8" > -0.160269) AND (t."X_2" <= -0.095375)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" > -0.621669) AND (t."X_8" > -0.184084) AND (t."X_8" > -0.160269) AND (t."X_2" > -0.095375) AND (t."X_2" <= 0.492405) AND (t."X_0" > -0.628764)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" > -0.621669) AND (t."X_8" > -0.184084) AND (t."X_8" > -0.160269) AND (t."X_2" > -0.095375) AND (t."X_2" <= 0.492405) AND (t."X_0" <= -0.628764) AND (t."X_2" <= -0.047353)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" > -0.621669) AND (t."X_8" > -0.184084) AND (t."X_8" > -0.160269) AND (t."X_2" > -0.095375) AND (t."X_2" <= 0.492405) AND (t."X_0" <= -0.628764) AND (t."X_2" > -0.047353)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" > -0.621669) AND (t."X_8" > -0.184084) AND (t."X_8" > -0.160269) AND (t."X_2" > -0.095375) AND (t."X_2" > 0.492405) AND (t."X_2" > 1.173820)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" > -0.621669) AND (t."X_8" > -0.184084) AND (t."X_8" > -0.160269) AND (t."X_2" > -0.095375) AND (t."X_2" > 0.492405) AND (t."X_2" <= 1.173820) AND (t."X_7" <= -0.193341)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" > -0.621669) AND (t."X_8" > -0.184084) AND (t."X_8" > -0.160269) AND (t."X_2" > -0.095375) AND (t."X_2" > 0.492405) AND (t."X_2" <= 1.173820) AND (t."X_7" > -0.193341) AND (t."X_8" <= 0.645953)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_8" > -0.621669) AND (t."X_8" > -0.184084) AND (t."X_8" > -0.160269) AND (t."X_2" > -0.095375) AND (t."X_2" > 0.492405) AND (t."X_2" <= 1.173820) AND (t."X_7" > -0.193341) AND (t."X_8" > 0.645953)) THEN 38 ELSE NULL END AS "Leaf_38"
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
    SELECT 0 AS nid,  0.421875 AS "P_0", 0.578125 AS "P_1", 1 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.294118 AS "P_0", 0.705882 AS "P_1", 1 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.960000 AS "P_0", 0.040000 AS "P_1", 0 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.551724 AS "P_0", 0.448276 AS "P_1", 0 AS "D", 0.551724 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.307692 AS "P_0", 0.692308 AS "P_1", 1 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.107143 AS "P_0", 0.892857 AS "P_1", 1 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= -0.325845) AND (t."X_7" > 0.828977)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_2" > -0.325845) AND (t."X_2" <= 0.771050) AND (t."X_0" <= -0.259425) AND (t."X_9" > -0.779505)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" > -0.325845) AND (t."X_2" <= 0.771050) AND (t."X_0" <= -0.259425) AND (t."X_9" <= -0.779505) AND (t."X_2" <= -0.077560)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" > -0.325845) AND (t."X_2" <= 0.771050) AND (t."X_0" <= -0.259425) AND (t."X_9" <= -0.779505) AND (t."X_2" > -0.077560)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" > -0.325845) AND (t."X_2" <= 0.771050) AND (t."X_0" > -0.259425) AND (t."X_9" > -0.142724) AND (t."X_2" <= -0.164059)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" > -0.325845) AND (t."X_2" <= 0.771050) AND (t."X_0" > -0.259425) AND (t."X_9" <= -0.142724) AND (t."X_9" > -0.506329)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" > -0.325845) AND (t."X_2" <= 0.771050) AND (t."X_0" > -0.259425) AND (t."X_9" <= -0.142724) AND (t."X_9" <= -0.506329) AND (t."X_0" > 1.921893)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" > -0.325845) AND (t."X_2" <= 0.771050) AND (t."X_0" > -0.259425) AND (t."X_9" <= -0.142724) AND (t."X_9" <= -0.506329) AND (t."X_0" <= 1.921893) AND (t."X_7" <= -1.246820)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" > -0.325845) AND (t."X_2" <= 0.771050) AND (t."X_0" > -0.259425) AND (t."X_9" <= -0.142724) AND (t."X_9" <= -0.506329) AND (t."X_0" <= 1.921893) AND (t."X_7" > -1.246820)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" <= -0.325845) AND (t."X_7" <= 0.828977) AND (t."X_9" <= -1.445841)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_2" <= -0.325845) AND (t."X_7" <= 0.828977) AND (t."X_9" > -1.445841)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" > -0.325845) AND (t."X_2" <= 0.771050) AND (t."X_0" > -0.259425) AND (t."X_9" > -0.142724) AND (t."X_2" > -0.164059) AND (t."X_9" <= 1.254278)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" > -0.325845) AND (t."X_2" <= 0.771050) AND (t."X_0" > -0.259425) AND (t."X_9" > -0.142724) AND (t."X_2" > -0.164059) AND (t."X_9" > 1.254278) AND (t."X_9" <= 1.433898)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" > -0.325845) AND (t."X_2" <= 0.771050) AND (t."X_0" > -0.259425) AND (t."X_9" > -0.142724) AND (t."X_2" > -0.164059) AND (t."X_9" > 1.254278) AND (t."X_9" > 1.433898)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_2" > -0.325845) AND (t."X_2" > 0.771050) AND (t."X_9" > -1.182160)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" > -0.325845) AND (t."X_2" > 0.771050) AND (t."X_9" <= -1.182160) AND (t."X_9" <= -2.081126)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" > -0.325845) AND (t."X_2" > 0.771050) AND (t."X_9" <= -1.182160) AND (t."X_9" > -2.081126)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.429688 AS "P_0", 0.570312 AS "P_1", 1 AS "D", 0.570312 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.878788 AS "P_0", 0.121212 AS "P_1", 0 AS "D", 0.878788 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.273684 AS "P_0", 0.726316 AS "P_1", 1 AS "D", 0.726316 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.966667 AS "P_0", 0.033333 AS "P_1", 0 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.416667 AS "P_0", 0.583333 AS "P_1", 1 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.028571 AS "P_0", 0.971429 AS "P_1", 1 AS "D", 0.971429 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.842105 AS "P_0", 0.157895 AS "P_1", 0 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_16", t1."Leaf_17", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_28", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_52", t1."Leaf_53", t1."Leaf_55", t1."Leaf_56", t1."Leaf_58", t1."Leaf_59", t1."Leaf_60" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_9" <= -1.182932) AND (t."X_8" > 0.498260) AND (t."X_9" <= -1.663789)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_9" <= -1.182932) AND (t."X_8" > 0.498260) AND (t."X_9" > -1.663789)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_9" <= -1.182932) AND (t."X_8" <= 0.498260) AND (t."X_7" > -0.446637)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_9" <= -1.182932) AND (t."X_8" <= 0.498260) AND (t."X_7" <= -0.446637) AND (t."X_9" <= -1.424933)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_9" <= -1.182932) AND (t."X_8" <= 0.498260) AND (t."X_7" <= -0.446637) AND (t."X_9" > -1.424933)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" <= 0.700803) AND (t."X_8" > 0.818222)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" <= 0.700803) AND (t."X_8" <= 0.818222) AND (t."X_0" <= -2.275254)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" <= -0.181284) AND (t."X_0" <= -1.013491) AND (t."X_9" <= -0.996633)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" <= -0.181284) AND (t."X_0" <= -1.013491) AND (t."X_9" > -0.996633) AND (t."X_0" <= -1.976380)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" <= -0.181284) AND (t."X_0" <= -1.013491) AND (t."X_9" > -0.996633) AND (t."X_0" > -1.976380)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" <= 0.700803) AND (t."X_8" <= 0.818222) AND (t."X_0" > -2.275254) AND (t."X_8" <= -2.441799)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" > 0.700803) AND (t."X_9" > 2.364494)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" > 0.700803) AND (t."X_9" <= 2.364494) AND (t."X_0" > 0.835519)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" > 0.700803) AND (t."X_9" <= 2.364494) AND (t."X_0" <= 0.835519) AND (t."X_7" > 0.462666)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" > 0.700803) AND (t."X_9" <= 2.364494) AND (t."X_0" <= 0.835519) AND (t."X_7" <= 0.462666) AND (t."X_0" <= -0.096119)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" > 0.700803) AND (t."X_9" <= 2.364494) AND (t."X_0" <= 0.835519) AND (t."X_7" <= 0.462666) AND (t."X_0" > -0.096119) AND (t."X_9" <= 1.184614)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" > 0.700803) AND (t."X_9" <= 2.364494) AND (t."X_0" <= 0.835519) AND (t."X_7" <= 0.462666) AND (t."X_0" > -0.096119) AND (t."X_9" > 1.184614)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" <= -0.181284) AND (t."X_0" > -1.013491) AND (t."X_8" > 1.853706)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" <= 0.700803) AND (t."X_8" <= 0.818222) AND (t."X_0" > -2.275254) AND (t."X_8" > -2.441799) AND (t."X_7" <= -1.525983)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" <= -0.181284) AND (t."X_0" > -1.013491) AND (t."X_8" <= 1.853706) AND (t."X_8" <= 0.538463)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" <= -0.181284) AND (t."X_0" > -1.013491) AND (t."X_8" <= 1.853706) AND (t."X_8" > 0.538463) AND (t."X_9" > -0.596986)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" <= -0.181284) AND (t."X_0" > -1.013491) AND (t."X_8" <= 1.853706) AND (t."X_8" > 0.538463) AND (t."X_9" <= -0.596986) AND (t."X_8" <= 1.171951)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" <= -0.181284) AND (t."X_0" > -1.013491) AND (t."X_8" <= 1.853706) AND (t."X_8" > 0.538463) AND (t."X_9" <= -0.596986) AND (t."X_8" > 1.171951)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" <= 0.700803) AND (t."X_8" <= 0.818222) AND (t."X_0" > -2.275254) AND (t."X_8" > -2.441799) AND (t."X_7" > -1.525983) AND (t."X_7" <= 0.152059)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" <= 0.700803) AND (t."X_8" <= 0.818222) AND (t."X_0" > -2.275254) AND (t."X_8" > -2.441799) AND (t."X_7" > -1.525983) AND (t."X_7" > 0.152059) AND (t."X_8" <= -0.296632) AND (t."X_8" > -0.692743)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" <= 0.700803) AND (t."X_8" <= 0.818222) AND (t."X_0" > -2.275254) AND (t."X_8" > -2.441799) AND (t."X_7" > -1.525983) AND (t."X_7" > 0.152059) AND (t."X_8" <= -0.296632) AND (t."X_8" <= -0.692743) AND (t."X_9" <= 0.092036)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" <= 0.700803) AND (t."X_8" <= 0.818222) AND (t."X_0" > -2.275254) AND (t."X_8" > -2.441799) AND (t."X_7" > -1.525983) AND (t."X_7" > 0.152059) AND (t."X_8" <= -0.296632) AND (t."X_8" <= -0.692743) AND (t."X_9" > 0.092036) AND (t."X_9" <= 0.394981)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" <= 0.700803) AND (t."X_8" <= 0.818222) AND (t."X_0" > -2.275254) AND (t."X_8" > -2.441799) AND (t."X_7" > -1.525983) AND (t."X_7" > 0.152059) AND (t."X_8" <= -0.296632) AND (t."X_8" <= -0.692743) AND (t."X_9" > 0.092036) AND (t."X_9" > 0.394981)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" <= 0.700803) AND (t."X_8" <= 0.818222) AND (t."X_0" > -2.275254) AND (t."X_8" > -2.441799) AND (t."X_7" > -1.525983) AND (t."X_7" > 0.152059) AND (t."X_8" > -0.296632) AND (t."X_9" > -0.010031)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" <= 0.700803) AND (t."X_8" <= 0.818222) AND (t."X_0" > -2.275254) AND (t."X_8" > -2.441799) AND (t."X_7" > -1.525983) AND (t."X_7" > 0.152059) AND (t."X_8" > -0.296632) AND (t."X_9" <= -0.010031) AND (t."X_9" <= -0.054490)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_9" > -1.182932) AND (t."X_9" > -0.181284) AND (t."X_9" <= 0.700803) AND (t."X_8" <= 0.818222) AND (t."X_0" > -2.275254) AND (t."X_8" > -2.441799) AND (t."X_7" > -1.525983) AND (t."X_7" > 0.152059) AND (t."X_8" > -0.296632) AND (t."X_9" <= -0.010031) AND (t."X_9" > -0.054490)) THEN 60 ELSE NULL END AS "Leaf_60"
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
    SELECT 0 AS nid,  0.445312 AS "P_0", 0.554688 AS "P_1", 1 AS "D", 0.554688 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.405172 AS "P_0", 0.594828 AS "P_1", 1 AS "D", 0.594828 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.487500 AS "P_0", 0.512500 AS "P_1", 1 AS "D", 0.512500 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.257143 AS "P_0", 0.742857 AS "P_1", 1 AS "D", 0.742857 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.731707 AS "P_0", 0.268293 AS "P_1", 0 AS "D", 0.731707 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.789474 AS "P_0", 0.210526 AS "P_1", 0 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.212121 AS "P_0", 0.787879 AS "P_1", 1 AS "D", 0.787879 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.368421 AS "P_0", 0.631579 AS "P_1", 1 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.772727 AS "P_0", 0.227273 AS "P_1", 0 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_8" <= -0.621862) AND (t."X_7" > -0.317190)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_8" <= -0.621862) AND (t."X_7" <= -0.317190) AND (t."X_9" > 0.108343)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_8" <= -0.621862) AND (t."X_7" <= -0.317190) AND (t."X_9" <= 0.108343) AND (t."X_8" <= -0.973213)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_8" <= -0.621862) AND (t."X_7" <= -0.317190) AND (t."X_9" <= 0.108343) AND (t."X_8" > -0.973213)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_8" > -0.621862) AND (t."X_4" <= 1.146364)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" > 0.088803) AND (t."X_8" > -0.621862) AND (t."X_4" > 1.146364)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" > 1.215056) AND (t."X_9" <= 2.124461)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" > 1.215056) AND (t."X_9" > 2.124461)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" <= 1.215056) AND (t."X_4" <= -0.141682)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" <= 1.215056) AND (t."X_4" > -0.141682) AND (t."X_4" <= -0.004649)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" <= 1.215056) AND (t."X_4" > -0.141682) AND (t."X_4" > -0.004649) AND (t."X_4" > 0.952909)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" <= 1.215056) AND (t."X_4" > -0.141682) AND (t."X_4" > -0.004649) AND (t."X_4" <= 0.952909) AND (t."X_7" <= -0.694009) AND (t."X_8" <= -0.081548)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" <= 1.215056) AND (t."X_4" > -0.141682) AND (t."X_4" > -0.004649) AND (t."X_4" <= 0.952909) AND (t."X_7" <= -0.694009) AND (t."X_8" > -0.081548)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" <= 1.215056) AND (t."X_4" > -0.141682) AND (t."X_4" > -0.004649) AND (t."X_4" <= 0.952909) AND (t."X_7" > -0.694009) AND (t."X_4" > 0.871809)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" <= 1.215056) AND (t."X_4" > -0.141682) AND (t."X_4" > -0.004649) AND (t."X_4" <= 0.952909) AND (t."X_7" > -0.694009) AND (t."X_4" <= 0.871809) AND (t."X_9" > -1.518880)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" <= 1.215056) AND (t."X_4" > -0.141682) AND (t."X_4" > -0.004649) AND (t."X_4" <= 0.952909) AND (t."X_7" > -0.694009) AND (t."X_4" <= 0.871809) AND (t."X_9" <= -1.518880) AND (t."X_8" <= -0.132585)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_5" <= 0.088803) AND (t."X_9" <= 1.215056) AND (t."X_4" > -0.141682) AND (t."X_4" > -0.004649) AND (t."X_4" <= 0.952909) AND (t."X_7" > -0.694009) AND (t."X_4" <= 0.871809) AND (t."X_9" <= -1.518880) AND (t."X_8" > -0.132585)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 0 AS nid,  0.515625 AS "P_0", 0.484375 AS "P_1", 0 AS "D", 0.515625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.855072 AS "P_0", 0.144928 AS "P_1", 0 AS "D", 0.855072 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.118644 AS "P_0", 0.881356 AS "P_1", 1 AS "D", 0.881356 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.021277 AS "P_0", 0.978723 AS "P_1", 1 AS "D", 0.978723 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.878788 AS "P_0", 0.121212 AS "P_1", 0 AS "D", 0.878788 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.826087 AS "P_0", 0.173913 AS "P_1", 0 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.883721 AS "P_0", 0.116279 AS "P_1", 0 AS "D", 0.883721 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.782609 AS "P_0", 0.217391 AS "P_1", 0 AS "D", 0.782609 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.850000 AS "P_0", 0.150000 AS "P_1", 0 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.233778) AND (t."X_9" <= -0.703689)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_5" <= 0.233778) AND (t."X_9" > -0.703689) AND (t."X_7" > 0.982400) AND (t."X_9" > 0.594601)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" <= 0.233778) AND (t."X_9" > -0.703689) AND (t."X_7" > 0.982400) AND (t."X_9" <= 0.594601) AND (t."X_5" <= -0.044008)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" <= 0.233778) AND (t."X_9" > -0.703689) AND (t."X_7" > 0.982400) AND (t."X_9" <= 0.594601) AND (t."X_5" > -0.044008)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" <= 0.233778) AND (t."X_9" > -0.703689) AND (t."X_7" <= 0.982400) AND (t."X_6" > 0.663352)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" <= 0.233778) AND (t."X_9" > -0.703689) AND (t."X_7" <= 0.982400) AND (t."X_6" <= 0.663352) AND (t."X_8" <= -0.692743)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 0.233778) AND (t."X_9" > -0.703689) AND (t."X_7" <= 0.982400) AND (t."X_6" <= 0.663352) AND (t."X_8" > -0.692743) AND (t."X_5" > -0.372423)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" <= 0.233778) AND (t."X_9" > -0.703689) AND (t."X_7" <= 0.982400) AND (t."X_6" <= 0.663352) AND (t."X_8" > -0.692743) AND (t."X_5" <= -0.372423) AND (t."X_7" > 0.424340)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" <= 0.233778) AND (t."X_9" > -0.703689) AND (t."X_7" <= 0.982400) AND (t."X_6" <= 0.663352) AND (t."X_8" > -0.692743) AND (t."X_5" <= -0.372423) AND (t."X_7" <= 0.424340) AND (t."X_6" > -0.412629)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" <= 0.233778) AND (t."X_9" > -0.703689) AND (t."X_7" <= 0.982400) AND (t."X_6" <= 0.663352) AND (t."X_8" > -0.692743) AND (t."X_5" <= -0.372423) AND (t."X_7" <= 0.424340) AND (t."X_6" <= -0.412629) AND (t."X_9" <= -0.582220)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" <= 0.233778) AND (t."X_9" > -0.703689) AND (t."X_7" <= 0.982400) AND (t."X_6" <= 0.663352) AND (t."X_8" > -0.692743) AND (t."X_5" <= -0.372423) AND (t."X_7" <= 0.424340) AND (t."X_6" <= -0.412629) AND (t."X_9" > -0.582220)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_5" > 0.233778) AND (t."X_5" > 0.870708)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_5" > 0.233778) AND (t."X_5" <= 0.870708) AND (t."X_6" > 1.009404)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" > 0.233778) AND (t."X_5" <= 0.870708) AND (t."X_6" <= 1.009404) AND (t."X_7" > -0.452495)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" > 0.233778) AND (t."X_5" <= 0.870708) AND (t."X_6" <= 1.009404) AND (t."X_7" <= -0.452495) AND (t."X_5" <= 0.490156)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" > 0.233778) AND (t."X_5" <= 0.870708) AND (t."X_6" <= 1.009404) AND (t."X_7" <= -0.452495) AND (t."X_5" > 0.490156)) THEN 30 ELSE NULL END AS "Leaf_30"
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
    SELECT 0 AS nid,  0.406250 AS "P_0", 0.593750 AS "P_1", 1 AS "D", 0.593750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.707692 AS "P_0", 0.292308 AS "P_1", 0 AS "D", 0.707692 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.095238 AS "P_0", 0.904762 AS "P_1", 1 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.612245 AS "P_0", 0.387755 AS "P_1", 0 AS "D", 0.612245 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.682927 AS "P_0", 0.317073 AS "P_1", 0 AS "D", 0.682927 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.736842 AS "P_0", 0.263158 AS "P_1", 0 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.473684 AS "P_0", 0.526316 AS "P_1", 1 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.206897 AS "P_0", 0.793103 AS "P_1", 1 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.041667 AS "P_0", 0.958333 AS "P_1", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_2", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 1.173820)) THEN 2 ELSE NULL END AS "Leaf_2",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" <= -0.380758) AND (t."X_8" > 0.677636)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" <= -0.380758) AND (t."X_8" <= 0.677636) AND (t."X_8" > -0.954739)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" <= -0.380758) AND (t."X_8" <= 0.677636) AND (t."X_8" <= -0.954739) AND (t."X_7" <= 0.042097)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" <= -0.380758) AND (t."X_8" <= 0.677636) AND (t."X_8" <= -0.954739) AND (t."X_7" > 0.042097)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" > -0.380758) AND (t."X_7" > 0.906276) AND (t."X_8" <= 0.706824)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" > -0.380758) AND (t."X_7" > 0.906276) AND (t."X_8" > 0.706824)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" > -0.380758) AND (t."X_7" <= 0.906276) AND (t."X_8" > 0.294344) AND (t."X_7" > 0.433017) AND (t."X_9" <= 0.623691)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" > -0.380758) AND (t."X_7" <= 0.906276) AND (t."X_8" > 0.294344) AND (t."X_7" > 0.433017) AND (t."X_9" > 0.623691)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" > -0.380758) AND (t."X_7" <= 0.906276) AND (t."X_8" <= 0.294344) AND (t."X_2" > 0.737255) AND (t."X_2" <= 0.994433)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" > -0.380758) AND (t."X_7" <= 0.906276) AND (t."X_8" <= 0.294344) AND (t."X_2" > 0.737255) AND (t."X_2" > 0.994433)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" > -0.380758) AND (t."X_7" <= 0.906276) AND (t."X_8" > 0.294344) AND (t."X_7" <= 0.433017) AND (t."X_8" > 1.910703)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" > -0.380758) AND (t."X_7" <= 0.906276) AND (t."X_8" <= 0.294344) AND (t."X_2" <= 0.737255) AND (t."X_2" <= -0.349541)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" > -0.380758) AND (t."X_7" <= 0.906276) AND (t."X_8" > 0.294344) AND (t."X_7" <= 0.433017) AND (t."X_8" <= 1.910703) AND (t."X_7" <= -0.551159)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" > -0.380758) AND (t."X_7" <= 0.906276) AND (t."X_8" > 0.294344) AND (t."X_7" <= 0.433017) AND (t."X_8" <= 1.910703) AND (t."X_7" > -0.551159) AND (t."X_2" <= -0.086679)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" > -0.380758) AND (t."X_7" <= 0.906276) AND (t."X_8" > 0.294344) AND (t."X_7" <= 0.433017) AND (t."X_8" <= 1.910703) AND (t."X_7" > -0.551159) AND (t."X_2" > -0.086679) AND (t."X_7" <= -0.147736)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" > -0.380758) AND (t."X_7" <= 0.906276) AND (t."X_8" > 0.294344) AND (t."X_7" <= 0.433017) AND (t."X_8" <= 1.910703) AND (t."X_7" > -0.551159) AND (t."X_2" > -0.086679) AND (t."X_7" > -0.147736)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" > -0.380758) AND (t."X_7" <= 0.906276) AND (t."X_8" <= 0.294344) AND (t."X_2" <= 0.737255) AND (t."X_2" > -0.349541) AND (t."X_8" <= -0.683190)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" > -0.380758) AND (t."X_7" <= 0.906276) AND (t."X_8" <= 0.294344) AND (t."X_2" <= 0.737255) AND (t."X_2" > -0.349541) AND (t."X_8" > -0.683190) AND (t."X_8" <= -0.235577)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_2" <= 1.173820) AND (t."X_2" > -0.380758) AND (t."X_7" <= 0.906276) AND (t."X_8" <= 0.294344) AND (t."X_2" <= 0.737255) AND (t."X_2" > -0.349541) AND (t."X_8" > -0.683190) AND (t."X_8" > -0.235577)) THEN 38 ELSE NULL END AS "Leaf_38"
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
    SELECT 0 AS nid,  0.484375 AS "P_0", 0.515625 AS "P_1", 1 AS "D", 0.515625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.584906 AS "P_0", 0.415094 AS "P_1", 0 AS "D", 0.584906 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.863636 AS "P_0", 0.136364 AS "P_1", 0 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.511905 AS "P_0", 0.488095 AS "P_1", 0 AS "D", 0.511905 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.904762 AS "P_0", 0.095238 AS "P_1", 0 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.577465 AS "P_0", 0.422535 AS "P_1", 0 AS "D", 0.577465 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.354839 AS "P_0", 0.645161 AS "P_1", 1 AS "D", 0.645161 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.208333 AS "P_0", 0.791667 AS "P_1", 1 AS "D", 0.791667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.173913 AS "P_0", 0.826087 AS "P_1", 1 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.903226 AS "P_0", 0.096774 AS "P_1", 0 AS "D", 0.903226 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.769231 AS "P_0", 0.230769 AS "P_1", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > 0.976585) AND (t."X_8" > 0.706824)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_7" > 0.976585) AND (t."X_8" <= 0.706824) AND (t."X_4" <= 1.213020)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_7" > 0.976585) AND (t."X_8" <= 0.706824) AND (t."X_4" > 1.213020)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" > 1.129815)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" > 0.966578) AND (t."X_7" > -0.967006)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" > 0.966578) AND (t."X_7" <= -0.967006) AND (t."X_8" <= -1.450118)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" > 0.966578) AND (t."X_7" <= -0.967006) AND (t."X_8" > -1.450118)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" <= 0.966578) AND (t."X_7" > 0.828977)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" <= 0.966578) AND (t."X_7" <= 0.828977) AND (t."X_8" > 0.677636) AND (t."X_9" > -0.717507) AND (t."X_7" <= 0.014369)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" <= 0.966578) AND (t."X_7" <= 0.828977) AND (t."X_8" > 0.677636) AND (t."X_9" > -0.717507) AND (t."X_7" > 0.014369)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" <= 0.966578) AND (t."X_7" <= 0.828977) AND (t."X_8" > 0.677636) AND (t."X_9" <= -0.717507) AND (t."X_9" <= -1.490346)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" <= 0.966578) AND (t."X_7" <= 0.828977) AND (t."X_8" > 0.677636) AND (t."X_9" <= -0.717507) AND (t."X_9" > -1.490346) AND (t."X_9" <= -1.070033)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" <= 0.966578) AND (t."X_7" <= 0.828977) AND (t."X_8" > 0.677636) AND (t."X_9" <= -0.717507) AND (t."X_9" > -1.490346) AND (t."X_9" > -1.070033)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" <= 0.966578) AND (t."X_7" <= 0.828977) AND (t."X_8" <= 0.677636) AND (t."X_4" <= -1.457079)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" <= 0.966578) AND (t."X_7" <= 0.828977) AND (t."X_8" <= 0.677636) AND (t."X_4" > -1.457079) AND (t."X_9" <= -1.564325) AND (t."X_9" <= -2.311095)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" <= 0.966578) AND (t."X_7" <= 0.828977) AND (t."X_8" <= 0.677636) AND (t."X_4" > -1.457079) AND (t."X_9" <= -1.564325) AND (t."X_9" > -2.311095)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" <= 0.966578) AND (t."X_7" <= 0.828977) AND (t."X_8" <= 0.677636) AND (t."X_4" > -1.457079) AND (t."X_9" > -1.564325) AND (t."X_4" > 0.284400)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" <= 0.966578) AND (t."X_7" <= 0.828977) AND (t."X_8" <= 0.677636) AND (t."X_4" > -1.457079) AND (t."X_9" > -1.564325) AND (t."X_4" <= 0.284400) AND (t."X_9" <= -0.147125)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" <= 0.966578) AND (t."X_7" <= 0.828977) AND (t."X_8" <= 0.677636) AND (t."X_4" > -1.457079) AND (t."X_9" > -1.564325) AND (t."X_4" <= 0.284400) AND (t."X_9" > -0.147125) AND (t."X_9" <= 0.246382)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" <= 0.966578) AND (t."X_7" <= 0.828977) AND (t."X_8" <= 0.677636) AND (t."X_4" > -1.457079) AND (t."X_9" > -1.564325) AND (t."X_4" <= 0.284400) AND (t."X_9" > -0.147125) AND (t."X_9" > 0.246382) AND (t."X_9" <= 0.515595)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" <= 0.966578) AND (t."X_7" <= 0.828977) AND (t."X_8" <= 0.677636) AND (t."X_4" > -1.457079) AND (t."X_9" > -1.564325) AND (t."X_4" <= 0.284400) AND (t."X_9" > -0.147125) AND (t."X_9" > 0.246382) AND (t."X_9" > 0.515595) AND (t."X_9" <= 0.562382)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_7" <= 0.976585) AND (t."X_4" <= 1.129815) AND (t."X_4" <= 0.966578) AND (t."X_7" <= 0.828977) AND (t."X_8" <= 0.677636) AND (t."X_4" > -1.457079) AND (t."X_9" > -1.564325) AND (t."X_4" <= 0.284400) AND (t."X_9" > -0.147125) AND (t."X_9" > 0.246382) AND (t."X_9" > 0.515595) AND (t."X_9" > 0.562382)) THEN 42 ELSE NULL END AS "Leaf_42"
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
    SELECT 0 AS nid,  0.554688 AS "P_0", 0.445312 AS "P_1", 0 AS "D", 0.554688 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.638889 AS "P_0", 0.361111 AS "P_1", 0 AS "D", 0.638889 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.753846 AS "P_0", 0.246154 AS "P_1", 0 AS "D", 0.753846 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.115385 AS "P_0", 0.884615 AS "P_1", 1 AS "D", 0.884615 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.790323 AS "P_0", 0.209677 AS "P_1", 0 AS "D", 0.790323 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.877551 AS "P_0", 0.122449 AS "P_1", 0 AS "D", 0.877551 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.461538 AS "P_0", 0.538462 AS "P_1", 1 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.895833 AS "P_0", 0.104167 AS "P_1", 0 AS "D", 0.895833 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.931818 AS "P_0", 0.068182 AS "P_1", 0 AS "D", 0.931818 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.880000 AS "P_0", 0.120000 AS "P_1", 0 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 1.078685) AND (t."X_2" <= 1.529127)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_4" > 1.078685) AND (t."X_2" > 1.529127)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" > 0.438520)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" <= 0.438520) AND (t."X_8" <= -0.708277) AND (t."X_2" > 0.744692)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" <= 0.438520) AND (t."X_8" <= -0.708277) AND (t."X_2" <= 0.744692) AND (t."X_4" <= -0.719004)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" <= 0.438520) AND (t."X_8" <= -0.708277) AND (t."X_2" <= 0.744692) AND (t."X_4" > -0.719004)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" <= 0.438520) AND (t."X_8" > -0.708277) AND (t."X_9" <= -0.608682) AND (t."X_7" <= -1.464459)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" <= 0.438520) AND (t."X_8" > -0.708277) AND (t."X_9" > -0.608682) AND (t."X_2" <= -0.405634) AND (t."X_0" <= 1.151089)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" <= 0.438520) AND (t."X_8" > -0.708277) AND (t."X_9" > -0.608682) AND (t."X_2" <= -0.405634) AND (t."X_0" > 1.151089)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" <= 0.438520) AND (t."X_8" > -0.708277) AND (t."X_9" <= -0.608682) AND (t."X_7" > -1.464459) AND (t."X_8" <= -0.029413)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" <= 0.438520) AND (t."X_8" > -0.708277) AND (t."X_9" <= -0.608682) AND (t."X_7" > -1.464459) AND (t."X_8" > -0.029413) AND (t."X_2" <= -0.336629)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" <= 0.438520) AND (t."X_8" > -0.708277) AND (t."X_9" <= -0.608682) AND (t."X_7" > -1.464459) AND (t."X_8" > -0.029413) AND (t."X_2" > -0.336629) AND (t."X_9" > -0.708481)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" <= 0.438520) AND (t."X_8" > -0.708277) AND (t."X_9" <= -0.608682) AND (t."X_7" > -1.464459) AND (t."X_8" > -0.029413) AND (t."X_2" > -0.336629) AND (t."X_9" <= -0.708481) AND (t."X_0" <= -1.244654)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" <= 0.438520) AND (t."X_8" > -0.708277) AND (t."X_9" <= -0.608682) AND (t."X_7" > -1.464459) AND (t."X_8" > -0.029413) AND (t."X_2" > -0.336629) AND (t."X_9" <= -0.708481) AND (t."X_0" > -1.244654)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" <= 0.438520) AND (t."X_8" > -0.708277) AND (t."X_9" > -0.608682) AND (t."X_2" > -0.405634) AND (t."X_9" <= 0.227402)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" <= 0.438520) AND (t."X_8" > -0.708277) AND (t."X_9" > -0.608682) AND (t."X_2" > -0.405634) AND (t."X_9" > 0.227402) AND (t."X_7" <= -0.579143)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" <= 0.438520) AND (t."X_8" > -0.708277) AND (t."X_9" > -0.608682) AND (t."X_2" > -0.405634) AND (t."X_9" > 0.227402) AND (t."X_7" > -0.579143) AND (t."X_2" <= -0.107597)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" <= 0.438520) AND (t."X_8" > -0.708277) AND (t."X_9" > -0.608682) AND (t."X_2" > -0.405634) AND (t."X_9" > 0.227402) AND (t."X_7" > -0.579143) AND (t."X_2" > -0.107597) AND (t."X_8" <= 1.176999)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" <= 0.559292) AND (t."X_7" <= 0.438520) AND (t."X_8" > -0.708277) AND (t."X_9" > -0.608682) AND (t."X_2" > -0.405634) AND (t."X_9" > 0.227402) AND (t."X_7" > -0.579143) AND (t."X_2" > -0.107597) AND (t."X_8" > 1.176999)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" > 0.559292) AND (t."X_2" <= -0.583643) AND (t."X_2" <= -0.747826)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" > 0.559292) AND (t."X_2" <= -0.583643) AND (t."X_2" > -0.747826)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" > 0.559292) AND (t."X_2" > -0.583643) AND (t."X_8" <= 0.507111)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" > 0.559292) AND (t."X_2" > -0.583643) AND (t."X_8" > 0.507111) AND (t."X_0" <= -1.129349)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_4" <= 1.078685) AND (t."X_7" > 0.559292) AND (t."X_2" > -0.583643) AND (t."X_8" > 0.507111) AND (t."X_0" > -1.129349)) THEN 46 ELSE NULL END AS "Leaf_46"
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
    SELECT 0 AS nid,  0.460938 AS "P_0", 0.539062 AS "P_1", 1 AS "D", 0.539062 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.370370 AS "P_0", 0.629630 AS "P_1", 1 AS "D", 0.629630 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.463415 AS "P_0", 0.536585 AS "P_1", 1 AS "D", 0.536585 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.405405 AS "P_0", 0.594595 AS "P_1", 1 AS "D", 0.594595 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.705882 AS "P_0", 0.294118 AS "P_1", 0 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.315789 AS "P_0", 0.684211 AS "P_1", 1 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.578947 AS "P_0", 0.421053 AS "P_1", 0 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.184211 AS "P_0", 0.815789 AS "P_1", 1 AS "D", 0.815789 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.687500 AS "P_0", 0.312500 AS "P_1", 0 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.093750 AS "P_0", 0.906250 AS "P_1", 1 AS "D", 0.906250 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.733333 AS "P_0", 0.266667 AS "P_1", 0 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
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
    SELECT 40 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_9" <= -0.760338) AND (t."X_7" <= -0.219181) AND (t."X_9" <= -1.238957)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_9" <= -0.760338) AND (t."X_7" <= -0.219181) AND (t."X_9" > -1.238957) AND (t."X_9" > -0.948143)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_9" <= -0.760338) AND (t."X_7" <= -0.219181) AND (t."X_9" > -1.238957) AND (t."X_9" <= -0.948143) AND (t."X_8" <= -0.523181)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_9" <= -0.760338) AND (t."X_7" <= -0.219181) AND (t."X_9" > -1.238957) AND (t."X_9" <= -0.948143) AND (t."X_8" > -0.523181)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" <= -0.692743) AND (t."X_9" <= -0.226659) AND (t."X_8" <= -1.124338)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" <= -0.692743) AND (t."X_9" <= -0.226659) AND (t."X_8" > -1.124338) AND (t."X_9" <= -0.419157)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" <= -0.692743) AND (t."X_9" <= -0.226659) AND (t."X_8" > -1.124338) AND (t."X_9" > -0.419157)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" <= -0.692743) AND (t."X_9" > -0.226659) AND (t."X_8" <= -1.930190)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" <= -0.692743) AND (t."X_9" > -0.226659) AND (t."X_8" > -1.930190) AND (t."X_3" <= -1.004882)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" <= -0.692743) AND (t."X_9" > -0.226659) AND (t."X_8" > -1.930190) AND (t."X_3" > -1.004882)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" > -0.692743) AND (t."X_9" > 0.247462) AND (t."X_9" <= 0.590601) AND (t."X_8" <= -0.017516)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" > -0.692743) AND (t."X_9" > 0.247462) AND (t."X_9" <= 0.590601) AND (t."X_8" > -0.017516)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" > -0.692743) AND (t."X_9" > 0.247462) AND (t."X_9" > 0.590601) AND (t."X_9" <= 0.758159) AND (t."X_9" <= 0.673787)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" > -0.692743) AND (t."X_9" > 0.247462) AND (t."X_9" > 0.590601) AND (t."X_9" <= 0.758159) AND (t."X_9" > 0.673787)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" > -0.692743) AND (t."X_9" <= 0.247462) AND (t."X_8" > 0.321104)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" > -0.692743) AND (t."X_9" <= 0.247462) AND (t."X_8" <= 0.321104) AND (t."X_8" > 0.020025)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" > -0.692743) AND (t."X_9" <= 0.247462) AND (t."X_8" <= 0.321104) AND (t."X_8" <= 0.020025) AND (t."X_8" > -0.164718)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" > -0.692743) AND (t."X_9" <= 0.247462) AND (t."X_8" <= 0.321104) AND (t."X_8" <= 0.020025) AND (t."X_8" <= -0.164718) AND (t."X_8" <= -0.348600)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" > -0.692743) AND (t."X_9" <= 0.247462) AND (t."X_8" <= 0.321104) AND (t."X_8" <= 0.020025) AND (t."X_8" <= -0.164718) AND (t."X_8" > -0.348600)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" > -0.692743) AND (t."X_9" > 0.247462) AND (t."X_9" > 0.590601) AND (t."X_9" > 0.758159) AND (t."X_3" <= 0.564577)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" > -0.692743) AND (t."X_9" > 0.247462) AND (t."X_9" > 0.590601) AND (t."X_9" > 0.758159) AND (t."X_3" > 0.564577) AND (t."X_9" <= 1.342154)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_9" > -0.760338) AND (t."X_8" > -0.692743) AND (t."X_9" > 0.247462) AND (t."X_9" > 0.590601) AND (t."X_9" > 0.758159) AND (t."X_3" > 0.564577) AND (t."X_9" > 1.342154)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_9" <= -0.760338) AND (t."X_7" > -0.219181) AND (t."X_9" > -2.145365)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_9" <= -0.760338) AND (t."X_7" > -0.219181) AND (t."X_9" <= -2.145365) AND (t."X_9" <= -2.731924)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_9" <= -0.760338) AND (t."X_7" > -0.219181) AND (t."X_9" <= -2.145365) AND (t."X_9" > -2.731924)) THEN 48 ELSE NULL END AS "Leaf_48"
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
    SELECT 0 AS nid,  0.460938 AS "P_0", 0.539062 AS "P_1", 1 AS "D", 0.539062 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.766667 AS "P_0", 0.233333 AS "P_1", 0 AS "D", 0.766667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.367347 AS "P_0", 0.632653 AS "P_1", 1 AS "D", 0.632653 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.727273 AS "P_0", 0.272727 AS "P_1", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.263158 AS "P_0", 0.736842 AS "P_1", 1 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.214286 AS "P_0", 0.785714 AS "P_1", 1 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.416667 AS "P_0", 0.583333 AS "P_1", 1 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.344493) AND (t."X_4" > 1.157866)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_5" <= 0.344493) AND (t."X_7" > 0.828977) AND (t."X_7" <= 1.374007) AND (t."X_4" <= 1.043693)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" <= 0.344493) AND (t."X_7" > 0.828977) AND (t."X_7" <= 1.374007) AND (t."X_4" > 1.043693)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" <= 0.344493) AND (t."X_7" > 0.828977) AND (t."X_7" > 1.374007) AND (t."X_9" <= 1.068599)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" <= 0.344493) AND (t."X_7" > 0.828977) AND (t."X_7" > 1.374007) AND (t."X_9" > 1.068599)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" <= 0.344493) AND (t."X_7" <= 0.828977) AND (t."X_4" <= -0.112233)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" <= 0.344493) AND (t."X_7" <= 0.828977) AND (t."X_4" > -0.112233) AND (t."X_4" <= 0.434505) AND (t."X_7" > 0.481265)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" <= 0.344493) AND (t."X_7" <= 0.828977) AND (t."X_4" > -0.112233) AND (t."X_4" <= 0.434505) AND (t."X_7" <= 0.481265) AND (t."X_8" <= 0.771897)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" <= 0.344493) AND (t."X_7" <= 0.828977) AND (t."X_4" > -0.112233) AND (t."X_4" <= 0.434505) AND (t."X_7" <= 0.481265) AND (t."X_8" > 0.771897)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" <= 0.344493) AND (t."X_7" <= 0.828977) AND (t."X_4" > -0.112233) AND (t."X_4" > 0.434505) AND (t."X_5" <= -0.432555)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_5" <= 0.344493) AND (t."X_7" <= 0.828977) AND (t."X_4" > -0.112233) AND (t."X_4" > 0.434505) AND (t."X_5" > -0.432555) AND (t."X_4" <= 0.915871)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" <= 0.344493) AND (t."X_7" <= 0.828977) AND (t."X_4" > -0.112233) AND (t."X_4" > 0.434505) AND (t."X_5" > -0.432555) AND (t."X_4" > 0.915871) AND (t."X_9" <= -1.001183)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" <= 0.344493) AND (t."X_7" <= 0.828977) AND (t."X_4" > -0.112233) AND (t."X_4" > 0.434505) AND (t."X_5" > -0.432555) AND (t."X_4" > 0.915871) AND (t."X_9" > -1.001183)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" > 0.344493) AND (t."X_4" <= 1.157866) AND (t."X_9" <= 0.390479)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" > 0.344493) AND (t."X_4" <= 1.157866) AND (t."X_9" > 0.390479) AND (t."X_4" > 0.897994)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" > 0.344493) AND (t."X_4" <= 1.157866) AND (t."X_9" > 0.390479) AND (t."X_4" <= 0.897994) AND (t."X_9" > 1.187751)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_5" > 0.344493) AND (t."X_4" <= 1.157866) AND (t."X_9" > 0.390479) AND (t."X_4" <= 0.897994) AND (t."X_9" <= 1.187751) AND (t."X_5" <= 0.667717)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" > 0.344493) AND (t."X_4" <= 1.157866) AND (t."X_9" > 0.390479) AND (t."X_4" <= 0.897994) AND (t."X_9" <= 1.187751) AND (t."X_5" > 0.667717)) THEN 34 ELSE NULL END AS "Leaf_34"
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
    SELECT 0 AS nid,  0.554688 AS "P_0", 0.445312 AS "P_1", 0 AS "D", 0.554688 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.814815 AS "P_0", 0.185185 AS "P_1", 0 AS "D", 0.814815 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.106383 AS "P_0", 0.893617 AS "P_1", 1 AS "D", 0.893617 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.743590 AS "P_0", 0.256410 AS "P_1", 0 AS "D", 0.743590 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.896552 AS "P_0", 0.103448 AS "P_1", 0 AS "D", 0.896552 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_8", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= -0.231438) AND (t."X_7" <= -1.663244)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_5" <= -0.231438) AND (t."X_7" > -1.663244) AND (t."X_8" <= -2.270077)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" > -0.231438) AND (t."X_5" > 0.897368)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" > -0.231438) AND (t."X_5" <= 0.897368) AND (t."X_5" > 0.709787)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" > -0.231438) AND (t."X_5" <= 0.897368) AND (t."X_5" <= 0.709787) AND (t."X_8" > 1.327237)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" > -0.231438) AND (t."X_5" <= 0.897368) AND (t."X_5" <= 0.709787) AND (t."X_8" <= 1.327237) AND (t."X_9" > 1.401754)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_5" > -0.231438) AND (t."X_5" <= 0.897368) AND (t."X_5" <= 0.709787) AND (t."X_8" <= 1.327237) AND (t."X_9" <= 1.401754) AND (t."X_5" <= -0.013148) AND (t."X_7" > 1.263983)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_5" > -0.231438) AND (t."X_5" <= 0.897368) AND (t."X_5" <= 0.709787) AND (t."X_8" <= 1.327237) AND (t."X_9" <= 1.401754) AND (t."X_5" <= -0.013148) AND (t."X_7" <= 1.263983) AND (t."X_9" <= -0.581639)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_5" > -0.231438) AND (t."X_5" <= 0.897368) AND (t."X_5" <= 0.709787) AND (t."X_8" <= 1.327237) AND (t."X_9" <= 1.401754) AND (t."X_5" <= -0.013148) AND (t."X_7" <= 1.263983) AND (t."X_9" > -0.581639)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" <= -0.231438) AND (t."X_7" > -1.663244) AND (t."X_8" > -2.270077) AND (t."X_5" > -0.863981) AND (t."X_9" <= 0.225319) AND (t."X_7" <= 0.403792)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" <= -0.231438) AND (t."X_7" > -1.663244) AND (t."X_8" > -2.270077) AND (t."X_5" > -0.863981) AND (t."X_9" <= 0.225319) AND (t."X_7" > 0.403792)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" > -0.231438) AND (t."X_5" <= 0.897368) AND (t."X_5" <= 0.709787) AND (t."X_8" <= 1.327237) AND (t."X_9" <= 1.401754) AND (t."X_5" > -0.013148) AND (t."X_7" > -0.452495)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_5" > -0.231438) AND (t."X_5" <= 0.897368) AND (t."X_5" <= 0.709787) AND (t."X_8" <= 1.327237) AND (t."X_9" <= 1.401754) AND (t."X_5" > -0.013148) AND (t."X_7" <= -0.452495) AND (t."X_9" <= 0.133237)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" > -0.231438) AND (t."X_5" <= 0.897368) AND (t."X_5" <= 0.709787) AND (t."X_8" <= 1.327237) AND (t."X_9" <= 1.401754) AND (t."X_5" > -0.013148) AND (t."X_7" <= -0.452495) AND (t."X_9" > 0.133237)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" <= -0.231438) AND (t."X_7" > -1.663244) AND (t."X_8" > -2.270077) AND (t."X_5" > -0.863981) AND (t."X_9" > 0.225319) AND (t."X_7" <= 0.224529)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_5" <= -0.231438) AND (t."X_7" > -1.663244) AND (t."X_8" > -2.270077) AND (t."X_5" > -0.863981) AND (t."X_9" > 0.225319) AND (t."X_7" > 0.224529) AND (t."X_7" <= 0.417460)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" <= -0.231438) AND (t."X_7" > -1.663244) AND (t."X_8" > -2.270077) AND (t."X_5" > -0.863981) AND (t."X_9" > 0.225319) AND (t."X_7" > 0.224529) AND (t."X_7" > 0.417460)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_5" <= -0.231438) AND (t."X_7" > -1.663244) AND (t."X_8" > -2.270077) AND (t."X_5" <= -0.863981) AND (t."X_8" > -1.124338)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_5" <= -0.231438) AND (t."X_7" > -1.663244) AND (t."X_8" > -2.270077) AND (t."X_5" <= -0.863981) AND (t."X_8" <= -1.124338) AND (t."X_8" <= -1.153445)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_5" <= -0.231438) AND (t."X_7" > -1.663244) AND (t."X_8" > -2.270077) AND (t."X_5" <= -0.863981) AND (t."X_8" <= -1.124338) AND (t."X_8" > -1.153445)) THEN 38 ELSE NULL END AS "Leaf_38"
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
    SELECT 0 AS nid,  0.468750 AS "P_0", 0.531250 AS "P_1", 1 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.852459 AS "P_0", 0.147541 AS "P_1", 0 AS "D", 0.852459 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.119403 AS "P_0", 0.880597 AS "P_1", 1 AS "D", 0.880597 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.881356 AS "P_0", 0.118644 AS "P_1", 0 AS "D", 0.881356 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.896552 AS "P_0", 0.103448 AS "P_1", 0 AS "D", 0.896552 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.151515 AS "P_0", 0.848485 AS "P_1", 1 AS "D", 0.848485 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.096774 AS "P_0", 0.903226 AS "P_1", 1 AS "D", 0.903226 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.040000 AS "P_0", 0.960000 AS "P_1", 1 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.969697 AS "P_0", 0.030303 AS "P_1", 0 AS "D", 0.969697 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.947368 AS "P_0", 0.052632 AS "P_1", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 0.737255) AND (t."X_9" <= -1.297277)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_2" > 0.737255) AND (t."X_9" > -1.297277) AND (t."X_8" <= -1.462139)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" <= 0.737255) AND (t."X_7" <= -2.086077)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" <= 0.737255) AND (t."X_7" > -2.086077) AND (t."X_8" <= -2.270077)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_2" <= 0.737255) AND (t."X_7" > -2.086077) AND (t."X_8" > -2.270077) AND (t."X_2" > -0.310008) AND (t."X_2" <= -0.096347) AND (t."X_8" <= -0.731063) AND (t."X_7" <= 0.273852)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" <= 0.737255) AND (t."X_7" > -2.086077) AND (t."X_8" > -2.270077) AND (t."X_2" > -0.310008) AND (t."X_2" <= -0.096347) AND (t."X_8" <= -0.731063) AND (t."X_7" > 0.273852)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_2" <= 0.737255) AND (t."X_7" > -2.086077) AND (t."X_8" > -2.270077) AND (t."X_2" <= -0.310008) AND (t."X_8" > -1.124338)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" <= 0.737255) AND (t."X_7" > -2.086077) AND (t."X_8" > -2.270077) AND (t."X_2" <= -0.310008) AND (t."X_8" <= -1.124338) AND (t."X_9" <= -0.439723)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" <= 0.737255) AND (t."X_7" > -2.086077) AND (t."X_8" > -2.270077) AND (t."X_2" <= -0.310008) AND (t."X_8" <= -1.124338) AND (t."X_9" > -0.439723)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" <= 0.737255) AND (t."X_7" > -2.086077) AND (t."X_8" > -2.270077) AND (t."X_2" > -0.310008) AND (t."X_2" > -0.096347) AND (t."X_2" > 0.442316) AND (t."X_8" <= -0.726307)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" <= 0.737255) AND (t."X_7" > -2.086077) AND (t."X_8" > -2.270077) AND (t."X_2" > -0.310008) AND (t."X_2" > -0.096347) AND (t."X_2" > 0.442316) AND (t."X_8" > -0.726307)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_2" <= 0.737255) AND (t."X_7" > -2.086077) AND (t."X_8" > -2.270077) AND (t."X_2" > -0.310008) AND (t."X_2" > -0.096347) AND (t."X_2" <= 0.442316) AND (t."X_7" > 1.434267)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_2" <= 0.737255) AND (t."X_7" > -2.086077) AND (t."X_8" > -2.270077) AND (t."X_2" > -0.310008) AND (t."X_2" <= -0.096347) AND (t."X_8" > -0.731063) AND (t."X_7" <= 0.413953)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_2" <= 0.737255) AND (t."X_7" > -2.086077) AND (t."X_8" > -2.270077) AND (t."X_2" > -0.310008) AND (t."X_2" <= -0.096347) AND (t."X_8" > -0.731063) AND (t."X_7" > 0.413953) AND (t."X_7" <= 0.503699)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" <= 0.737255) AND (t."X_7" > -2.086077) AND (t."X_8" > -2.270077) AND (t."X_2" > -0.310008) AND (t."X_2" <= -0.096347) AND (t."X_8" > -0.731063) AND (t."X_7" > 0.413953) AND (t."X_7" > 0.503699)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_2" <= 0.737255) AND (t."X_7" > -2.086077) AND (t."X_8" > -2.270077) AND (t."X_2" > -0.310008) AND (t."X_2" > -0.096347) AND (t."X_2" <= 0.442316) AND (t."X_7" <= 1.434267) AND (t."X_7" > -0.578800)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_2" <= 0.737255) AND (t."X_7" > -2.086077) AND (t."X_8" > -2.270077) AND (t."X_2" > -0.310008) AND (t."X_2" > -0.096347) AND (t."X_2" <= 0.442316) AND (t."X_7" <= 1.434267) AND (t."X_7" <= -0.578800) AND (t."X_7" <= -0.618514)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" <= 0.737255) AND (t."X_7" > -2.086077) AND (t."X_8" > -2.270077) AND (t."X_2" > -0.310008) AND (t."X_2" > -0.096347) AND (t."X_2" <= 0.442316) AND (t."X_7" <= 1.434267) AND (t."X_7" <= -0.578800) AND (t."X_7" > -0.618514)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_2" > 0.737255) AND (t."X_9" > -1.297277) AND (t."X_8" > -1.462139) AND (t."X_7" <= 0.289880)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_2" > 0.737255) AND (t."X_9" > -1.297277) AND (t."X_8" > -1.462139) AND (t."X_7" > 0.289880) AND (t."X_7" <= 0.520031)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_2" > 0.737255) AND (t."X_9" > -1.297277) AND (t."X_8" > -1.462139) AND (t."X_7" > 0.289880) AND (t."X_7" > 0.520031)) THEN 40 ELSE NULL END AS "Leaf_40"
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
    SELECT 0 AS nid,  0.539062 AS "P_0", 0.460938 AS "P_1", 0 AS "D", 0.539062 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.103448 AS "P_0", 0.896552 AS "P_1", 1 AS "D", 0.896552 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.037037 AS "P_0", 0.962963 AS "P_1", 1 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.694737 AS "P_0", 0.305263 AS "P_1", 0 AS "D", 0.694737 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.717391 AS "P_0", 0.282609 AS "P_1", 0 AS "D", 0.717391 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.939394 AS "P_0", 0.060606 AS "P_1", 0 AS "D", 0.939394 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.593220 AS "P_0", 0.406780 AS "P_1", 0 AS "D", 0.593220 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.173913 AS "P_0", 0.826087 AS "P_1", 1 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.861111 AS "P_0", 0.138889 AS "P_1", 0 AS "D", 0.861111 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.931035 AS "P_0", 0.068966 AS "P_1", 0 AS "D", 0.931035 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.964286 AS "P_0", 0.035714 AS "P_1", 0 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= 0.029671) AND (t."X_7" > 1.474724)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_6" > 0.029671) AND (t."X_2" <= 0.214613)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_6" > 0.029671) AND (t."X_2" > 0.214613) AND (t."X_6" <= 0.656070) AND (t."X_8" <= 0.315822)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" > 0.029671) AND (t."X_2" > 0.214613) AND (t."X_6" <= 0.656070) AND (t."X_8" > 0.315822) AND (t."X_9" <= -0.890619)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" > 0.029671) AND (t."X_2" > 0.214613) AND (t."X_6" <= 0.656070) AND (t."X_8" > 0.315822) AND (t."X_9" > -0.890619)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" > 0.029671) AND (t."X_2" > 0.214613) AND (t."X_6" > 0.656070) AND (t."X_3" <= -1.387887) AND (t."X_6" <= 1.348704)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" > 0.029671) AND (t."X_2" > 0.214613) AND (t."X_6" > 0.656070) AND (t."X_3" <= -1.387887) AND (t."X_6" > 1.348704)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" > 0.029671) AND (t."X_2" > 0.214613) AND (t."X_6" > 0.656070) AND (t."X_3" > -1.387887) AND (t."X_9" <= -1.297277)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" > 0.029671) AND (t."X_2" > 0.214613) AND (t."X_6" > 0.656070) AND (t."X_3" > -1.387887) AND (t."X_9" > -1.297277)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" <= 0.029671) AND (t."X_7" <= 1.474724) AND (t."X_7" > -0.201133) AND (t."X_7" <= 0.413953) AND (t."X_6" <= -0.723406)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" <= 0.029671) AND (t."X_7" <= 1.474724) AND (t."X_7" > -0.201133) AND (t."X_7" <= 0.413953) AND (t."X_6" > -0.723406)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" <= 0.029671) AND (t."X_7" <= 1.474724) AND (t."X_7" > -0.201133) AND (t."X_7" > 0.413953) AND (t."X_8" <= -0.823515)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" <= 0.029671) AND (t."X_7" <= 1.474724) AND (t."X_7" <= -0.201133) AND (t."X_3" <= 1.055765)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" <= 0.029671) AND (t."X_7" <= 1.474724) AND (t."X_7" <= -0.201133) AND (t."X_3" > 1.055765) AND (t."X_7" <= -1.007363)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_6" <= 0.029671) AND (t."X_7" <= 1.474724) AND (t."X_7" <= -0.201133) AND (t."X_3" > 1.055765) AND (t."X_7" > -1.007363)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_6" <= 0.029671) AND (t."X_7" <= 1.474724) AND (t."X_7" > -0.201133) AND (t."X_7" > 0.413953) AND (t."X_8" > -0.823515) AND (t."X_3" <= 0.443555)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" <= 0.029671) AND (t."X_7" <= 1.474724) AND (t."X_7" > -0.201133) AND (t."X_7" > 0.413953) AND (t."X_8" > -0.823515) AND (t."X_3" > 0.443555) AND (t."X_2" <= -0.040160)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_6" <= 0.029671) AND (t."X_7" <= 1.474724) AND (t."X_7" > -0.201133) AND (t."X_7" > 0.413953) AND (t."X_8" > -0.823515) AND (t."X_3" > 0.443555) AND (t."X_2" > -0.040160)) THEN 34 ELSE NULL END AS "Leaf_34"
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
    SELECT 0 AS nid,  0.515625 AS "P_0", 0.484375 AS "P_1", 0 AS "D", 0.515625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.261538 AS "P_0", 0.738462 AS "P_1", 1 AS "D", 0.738462 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.830508 AS "P_0", 0.169492 AS "P_1", 0 AS "D", 0.830508 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.377778 AS "P_0", 0.622222 AS "P_1", 1 AS "D", 0.622222 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.764706 AS "P_0", 0.235294 AS "P_1", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.041667 AS "P_0", 0.958333 AS "P_1", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.454545 AS "P_0", 0.545455 AS "P_1", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.880000 AS "P_0", 0.120000 AS "P_1", 0 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.956522 AS "P_0", 0.043478 AS "P_1", 0 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_19", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_55", t1."Leaf_56" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= -0.602192) AND (t."X_8" <= -0.407489) AND (t."X_9" <= 0.049184)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_3" <= -0.602192) AND (t."X_8" <= -0.407489) AND (t."X_9" > 0.049184) AND (t."X_7" <= 0.428314)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_3" <= -0.602192) AND (t."X_8" <= -0.407489) AND (t."X_9" > 0.049184) AND (t."X_7" > 0.428314) AND (t."X_1" <= 0.823376)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" <= -0.602192) AND (t."X_8" <= -0.407489) AND (t."X_9" > 0.049184) AND (t."X_7" > 0.428314) AND (t."X_1" > 0.823376)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" <= 0.518818) AND (t."X_8" <= 0.434377) AND (t."X_7" <= 0.668715) AND (t."X_8" <= -0.109279)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" <= 0.518818) AND (t."X_8" <= 0.434377) AND (t."X_7" <= 0.668715) AND (t."X_8" > -0.109279) AND (t."X_9" > 1.103439)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" <= 0.518818) AND (t."X_8" <= 0.434377) AND (t."X_7" <= 0.668715) AND (t."X_8" > -0.109279) AND (t."X_9" <= 1.103439) AND (t."X_1" <= -0.100793)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" <= 0.518818) AND (t."X_8" <= 0.434377) AND (t."X_7" <= 0.668715) AND (t."X_8" > -0.109279) AND (t."X_9" <= 1.103439) AND (t."X_1" > -0.100793)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" <= 0.518818) AND (t."X_8" <= 0.434377) AND (t."X_7" > 0.668715) AND (t."X_1" <= -0.860739)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" <= 0.518818) AND (t."X_8" <= 0.434377) AND (t."X_7" > 0.668715) AND (t."X_1" > -0.860739) AND (t."X_9" <= -0.569669)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" <= 0.518818) AND (t."X_8" <= 0.434377) AND (t."X_7" > 0.668715) AND (t."X_1" > -0.860739) AND (t."X_9" > -0.569669)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" <= 0.518818) AND (t."X_8" > 0.434377) AND (t."X_0" <= 2.101667)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" <= 0.518818) AND (t."X_8" > 0.434377) AND (t."X_0" > 2.101667)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" > 0.518818) AND (t."X_0" > -0.602384) AND (t."X_8" <= 0.005745) AND (t."X_1" <= 0.728078)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" > 0.518818) AND (t."X_0" > -0.602384) AND (t."X_8" <= 0.005745) AND (t."X_1" > 0.728078) AND (t."X_1" <= 1.177887)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" > 0.518818) AND (t."X_0" > -0.602384) AND (t."X_8" <= 0.005745) AND (t."X_1" > 0.728078) AND (t."X_1" > 1.177887)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" > 0.518818) AND (t."X_0" > -0.602384) AND (t."X_8" > 0.005745) AND (t."X_9" <= -1.663789)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" > 0.518818) AND (t."X_0" <= -0.602384) AND (t."X_1" <= -0.067505)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" > 0.518818) AND (t."X_0" <= -0.602384) AND (t."X_1" > -0.067505)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" > 0.518818) AND (t."X_0" > -0.602384) AND (t."X_8" > 0.005745) AND (t."X_9" > -1.663789) AND (t."X_7" <= 0.573552)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" > 0.518818) AND (t."X_0" > -0.602384) AND (t."X_8" > 0.005745) AND (t."X_9" > -1.663789) AND (t."X_7" > 0.573552) AND (t."X_1" <= -0.828681)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" > -0.284966) AND (t."X_3" > 0.518818) AND (t."X_0" > -0.602384) AND (t."X_8" > 0.005745) AND (t."X_9" > -1.663789) AND (t."X_7" > 0.573552) AND (t."X_1" > -0.828681)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" <= -0.284966) AND (t."X_8" <= -0.117391)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" <= -0.284966) AND (t."X_8" > -0.117391) AND (t."X_8" <= 0.261173)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" <= -0.284966) AND (t."X_8" > -0.117391) AND (t."X_8" > 0.261173) AND (t."X_1" <= 0.232596)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_3" > -0.602192) AND (t."X_3" <= -0.284966) AND (t."X_8" > -0.117391) AND (t."X_8" > 0.261173) AND (t."X_1" > 0.232596)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_3" <= -0.602192) AND (t."X_8" > -0.407489) AND (t."X_0" <= 0.419925)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_3" <= -0.602192) AND (t."X_8" > -0.407489) AND (t."X_0" > 0.419925) AND (t."X_9" <= -0.774360)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_3" <= -0.602192) AND (t."X_8" > -0.407489) AND (t."X_0" > 0.419925) AND (t."X_9" > -0.774360)) THEN 56 ELSE NULL END AS "Leaf_56"
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
    SELECT 0 AS nid,  0.460938 AS "P_0", 0.539062 AS "P_1", 1 AS "D", 0.539062 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.187500 AS "P_0", 0.812500 AS "P_1", 1 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.552083 AS "P_0", 0.447917 AS "P_1", 0 AS "D", 0.552083 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.487179 AS "P_0", 0.512821 AS "P_1", 1 AS "D", 0.512821 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.315789 AS "P_0", 0.684211 AS "P_1", 1 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.650000 AS "P_0", 0.350000 AS "P_1", 0 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.550000 AS "P_0", 0.450000 AS "P_1", 0 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.518519 AS "P_0", 0.481481 AS "P_1", 0 AS "D", 0.518519 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.230769 AS "P_0", 0.769231 AS "P_1", 1 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.916667 AS "P_0", 0.083333 AS "P_1", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_9" > 1.184614) AND (t."X_7" <= -1.277562)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_9" > 1.184614) AND (t."X_7" > -1.277562)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" <= -0.683190) AND (t."X_9" > -0.259027)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" <= -0.683190) AND (t."X_9" <= -0.259027) AND (t."X_8" <= -1.120671)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" <= -0.683190) AND (t."X_9" <= -0.259027) AND (t."X_8" > -1.120671)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" > 0.856401) AND (t."X_1" <= 0.024240)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" > 0.856401) AND (t."X_1" > 0.024240) AND (t."X_0" <= 1.700076)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" > 0.856401) AND (t."X_1" > 0.024240) AND (t."X_0" > 1.700076) AND (t."X_1" <= 1.215027)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" > 0.856401) AND (t."X_1" > 0.024240) AND (t."X_0" > 1.700076) AND (t."X_1" > 1.215027)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" <= 0.856401) AND (t."X_1" <= -0.181030) AND (t."X_1" <= -0.315372) AND (t."X_9" > -0.688068) AND (t."X_8" <= -0.260860)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" <= 0.856401) AND (t."X_1" <= -0.181030) AND (t."X_1" <= -0.315372) AND (t."X_9" <= -0.688068) AND (t."X_7" <= -1.422198)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" <= 0.856401) AND (t."X_1" <= -0.181030) AND (t."X_1" <= -0.315372) AND (t."X_9" <= -0.688068) AND (t."X_7" > -1.422198)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" <= 0.856401) AND (t."X_1" <= -0.181030) AND (t."X_1" <= -0.315372) AND (t."X_9" > -0.688068) AND (t."X_8" > -0.260860) AND (t."X_0" <= 0.793791)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" <= 0.856401) AND (t."X_1" <= -0.181030) AND (t."X_1" <= -0.315372) AND (t."X_9" > -0.688068) AND (t."X_8" > -0.260860) AND (t."X_0" > 0.793791)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" <= 0.856401) AND (t."X_1" <= -0.181030) AND (t."X_1" > -0.315372) AND (t."X_8" <= 1.173793)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" <= 0.856401) AND (t."X_1" <= -0.181030) AND (t."X_1" > -0.315372) AND (t."X_8" > 1.173793) AND (t."X_9" <= -0.408832)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" <= 0.856401) AND (t."X_1" <= -0.181030) AND (t."X_1" > -0.315372) AND (t."X_8" > 1.173793) AND (t."X_9" > -0.408832)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" <= 0.856401) AND (t."X_1" > -0.181030) AND (t."X_9" <= -1.259865)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" <= 0.856401) AND (t."X_1" > -0.181030) AND (t."X_9" > -1.259865) AND (t."X_0" > -0.291236) AND (t."X_0" > 0.671487)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" <= 0.856401) AND (t."X_1" > -0.181030) AND (t."X_9" > -1.259865) AND (t."X_0" > -0.291236) AND (t."X_0" <= 0.671487) AND (t."X_1" <= 0.050681)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" <= 0.856401) AND (t."X_1" > -0.181030) AND (t."X_9" > -1.259865) AND (t."X_0" > -0.291236) AND (t."X_0" <= 0.671487) AND (t."X_1" > 0.050681)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" <= 0.856401) AND (t."X_1" > -0.181030) AND (t."X_9" > -1.259865) AND (t."X_0" <= -0.291236) AND (t."X_7" <= 0.387811)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" <= 0.856401) AND (t."X_1" > -0.181030) AND (t."X_9" > -1.259865) AND (t."X_0" <= -0.291236) AND (t."X_7" > 0.387811) AND (t."X_7" <= 0.520031)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_9" <= 1.184614) AND (t."X_8" > -0.683190) AND (t."X_0" <= 0.856401) AND (t."X_1" > -0.181030) AND (t."X_9" > -1.259865) AND (t."X_0" <= -0.291236) AND (t."X_7" > 0.387811) AND (t."X_7" > 0.520031)) THEN 46 ELSE NULL END AS "Leaf_46"
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
    SELECT 0 AS nid,  0.492188 AS "P_0", 0.507812 AS "P_1", 1 AS "D", 0.507812 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.539823 AS "P_0", 0.460177 AS "P_1", 0 AS "D", 0.539823 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.863636 AS "P_0", 0.136364 AS "P_1", 0 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.461538 AS "P_0", 0.538462 AS "P_1", 1 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.386667 AS "P_0", 0.613333 AS "P_1", 1 AS "D", 0.613333 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.512821 AS "P_0", 0.487179 AS "P_1", 0 AS "D", 0.512821 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.190476 AS "P_0", 0.809524 AS "P_1", 1 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.205882 AS "P_0", 0.794118 AS "P_1", 1 AS "D", 0.794118 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.047619 AS "P_0", 0.952381 AS "P_1", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.461538 AS "P_0", 0.538462 AS "P_1", 1 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > -1.010835) AND (t."X_5" > 0.897368)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_5" <= -1.010835) AND (t."X_7" <= -1.456545) AND (t."X_8" <= 0.249751)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_5" <= -1.010835) AND (t."X_7" <= -1.456545) AND (t."X_8" > 0.249751)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" > -1.010835) AND (t."X_5" <= 0.897368) AND (t."X_9" <= -1.201305)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" > -1.010835) AND (t."X_5" <= 0.897368) AND (t."X_9" > -1.201305) AND (t."X_9" <= 0.225319) AND (t."X_8" > 0.576762) AND (t."X_8" <= 0.956837)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" > -1.010835) AND (t."X_5" <= 0.897368) AND (t."X_9" > -1.201305) AND (t."X_9" <= 0.225319) AND (t."X_8" > 0.576762) AND (t."X_8" > 0.956837)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" > -1.010835) AND (t."X_5" <= 0.897368) AND (t."X_9" > -1.201305) AND (t."X_9" > 0.225319) AND (t."X_9" <= 0.495468)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" > -1.010835) AND (t."X_5" <= 0.897368) AND (t."X_9" > -1.201305) AND (t."X_9" > 0.225319) AND (t."X_9" > 0.495468) AND (t."X_7" > 1.095894)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_5" > -1.010835) AND (t."X_5" <= 0.897368) AND (t."X_9" > -1.201305) AND (t."X_9" > 0.225319) AND (t."X_9" > 0.495468) AND (t."X_7" <= 1.095894) AND (t."X_9" <= 0.745106) AND (t."X_0" <= 0.871206)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_5" > -1.010835) AND (t."X_5" <= 0.897368) AND (t."X_9" > -1.201305) AND (t."X_9" > 0.225319) AND (t."X_9" > 0.495468) AND (t."X_7" <= 1.095894) AND (t."X_9" <= 0.745106) AND (t."X_0" > 0.871206) AND (t."X_9" <= 0.619417)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_5" > -1.010835) AND (t."X_5" <= 0.897368) AND (t."X_9" > -1.201305) AND (t."X_9" > 0.225319) AND (t."X_9" > 0.495468) AND (t."X_7" <= 1.095894) AND (t."X_9" <= 0.745106) AND (t."X_0" > 0.871206) AND (t."X_9" > 0.619417)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_5" > -1.010835) AND (t."X_5" <= 0.897368) AND (t."X_9" > -1.201305) AND (t."X_9" > 0.225319) AND (t."X_9" > 0.495468) AND (t."X_7" <= 1.095894) AND (t."X_9" > 0.745106) AND (t."X_8" <= -0.470925)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_5" > -1.010835) AND (t."X_5" <= 0.897368) AND (t."X_9" > -1.201305) AND (t."X_9" > 0.225319) AND (t."X_9" > 0.495468) AND (t."X_7" <= 1.095894) AND (t."X_9" > 0.745106) AND (t."X_8" > -0.470925) AND (t."X_0" <= 0.290214)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_5" > -1.010835) AND (t."X_5" <= 0.897368) AND (t."X_9" > -1.201305) AND (t."X_9" > 0.225319) AND (t."X_9" > 0.495468) AND (t."X_7" <= 1.095894) AND (t."X_9" > 0.745106) AND (t."X_8" > -0.470925) AND (t."X_0" > 0.290214)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_5" > -1.010835) AND (t."X_5" <= 0.897368) AND (t."X_9" > -1.201305) AND (t."X_9" <= 0.225319) AND (t."X_8" <= 0.576762) AND (t."X_7" > -0.360018)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_5" > -1.010835) AND (t."X_5" <= 0.897368) AND (t."X_9" > -1.201305) AND (t."X_9" <= 0.225319) AND (t."X_8" <= 0.576762) AND (t."X_7" <= -0.360018) AND (t."X_9" <= -0.585133)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_5" > -1.010835) AND (t."X_5" <= 0.897368) AND (t."X_9" > -1.201305) AND (t."X_9" <= 0.225319) AND (t."X_8" <= 0.576762) AND (t."X_7" <= -0.360018) AND (t."X_9" > -0.585133)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_5" <= -1.010835) AND (t."X_7" > -1.456545) AND (t."X_7" <= 0.828977)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_5" <= -1.010835) AND (t."X_7" > -1.456545) AND (t."X_7" > 0.828977) AND (t."X_0" <= 0.558704)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_5" <= -1.010835) AND (t."X_7" > -1.456545) AND (t."X_7" > 0.828977) AND (t."X_0" > 0.558704)) THEN 38 ELSE NULL END AS "Leaf_38"
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
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.975000 AS "P_0", 0.025000 AS "P_1", 0 AS "D", 0.975000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.176471 AS "P_0", 0.823529 AS "P_1", 1 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.515152 AS "P_0", 0.484848 AS "P_1", 0 AS "D", 0.515152 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.521739 AS "P_0", 0.478261 AS "P_1", 0 AS "D", 0.521739 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > -0.093187) AND (t."X_4" > 1.129815)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_6" > -0.093187) AND (t."X_4" <= 1.129815) AND (t."X_9" > 2.539192)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" <= -0.093187) AND (t."X_7" > 1.474724)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_6" <= -0.093187) AND (t."X_7" <= 1.474724) AND (t."X_9" <= -1.724535)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" > -0.093187) AND (t."X_4" <= 1.129815) AND (t."X_9" <= 2.539192) AND (t."X_4" <= 0.026308)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" > -0.093187) AND (t."X_4" <= 1.129815) AND (t."X_9" <= 2.539192) AND (t."X_4" > 0.026308) AND (t."X_6" <= 0.656070)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" > -0.093187) AND (t."X_4" <= 1.129815) AND (t."X_9" <= 2.539192) AND (t."X_4" > 0.026308) AND (t."X_6" > 0.656070) AND (t."X_4" <= 0.900832)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" > -0.093187) AND (t."X_4" <= 1.129815) AND (t."X_9" <= 2.539192) AND (t."X_4" > 0.026308) AND (t."X_6" > 0.656070) AND (t."X_4" > 0.900832)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" <= -0.093187) AND (t."X_7" <= 1.474724) AND (t."X_9" > -1.724535) AND (t."X_4" <= -0.649558)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" <= -0.093187) AND (t."X_7" <= 1.474724) AND (t."X_9" > -1.724535) AND (t."X_4" > -0.649558) AND (t."X_9" > -0.075285) AND (t."X_9" <= 0.459843)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_6" <= -0.093187) AND (t."X_7" <= 1.474724) AND (t."X_9" > -1.724535) AND (t."X_4" > -0.649558) AND (t."X_9" > -0.075285) AND (t."X_9" > 0.459843)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_6" <= -0.093187) AND (t."X_7" <= 1.474724) AND (t."X_9" > -1.724535) AND (t."X_4" > -0.649558) AND (t."X_9" <= -0.075285) AND (t."X_7" <= 0.828977)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" <= -0.093187) AND (t."X_7" <= 1.474724) AND (t."X_9" > -1.724535) AND (t."X_4" > -0.649558) AND (t."X_9" <= -0.075285) AND (t."X_7" > 0.828977) AND (t."X_6" <= -1.070237)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" <= -0.093187) AND (t."X_7" <= 1.474724) AND (t."X_9" > -1.724535) AND (t."X_4" > -0.649558) AND (t."X_9" <= -0.075285) AND (t."X_7" > 0.828977) AND (t."X_6" > -1.070237)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.578125 AS "P_0", 0.421875 AS "P_1", 0 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.919355 AS "P_0", 0.080645 AS "P_1", 0 AS "D", 0.919355 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.257576 AS "P_0", 0.742424 AS "P_1", 1 AS "D", 0.742424 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.155172 AS "P_0", 0.844828 AS "P_1", 1 AS "D", 0.844828 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.934426 AS "P_0", 0.065574 AS "P_1", 0 AS "D", 0.934426 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.225806 AS "P_0", 0.774194 AS "P_1", 1 AS "D", 0.774194 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.040000 AS "P_0", 0.960000 AS "P_1", 1 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.918919 AS "P_0", 0.081081 AS "P_1", 0 AS "D", 0.918919 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.964286 AS "P_0", 0.035714 AS "P_1", 0 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= 0.166888) AND (t."X_7" > 1.466196)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_6" > 0.166888) AND (t."X_4" > 1.157866)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" > 0.166888) AND (t."X_4" <= 1.157866) AND (t."X_3" > 1.796833)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_6" > 0.166888) AND (t."X_4" <= 1.157866) AND (t."X_3" <= 1.796833) AND (t."X_9" <= 0.340160)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" > 0.166888) AND (t."X_4" <= 1.157866) AND (t."X_3" <= 1.796833) AND (t."X_9" > 0.340160) AND (t."X_4" <= 0.924442)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" > 0.166888) AND (t."X_4" <= 1.157866) AND (t."X_3" <= 1.796833) AND (t."X_9" > 0.340160) AND (t."X_4" > 0.924442)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" <= 0.166888) AND (t."X_7" <= 1.466196) AND (t."X_8" <= -2.238584)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" <= 0.166888) AND (t."X_7" <= 1.466196) AND (t."X_8" > -2.238584) AND (t."X_7" <= -2.354943)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" <= 0.166888) AND (t."X_7" <= 1.466196) AND (t."X_8" > -2.238584) AND (t."X_7" > -2.354943) AND (t."X_6" > -0.166522) AND (t."X_4" <= -0.279042)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" <= 0.166888) AND (t."X_7" <= 1.466196) AND (t."X_8" > -2.238584) AND (t."X_7" > -2.354943) AND (t."X_6" > -0.166522) AND (t."X_4" > -0.279042) AND (t."X_9" <= -1.304223)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_6" <= 0.166888) AND (t."X_7" <= 1.466196) AND (t."X_8" > -2.238584) AND (t."X_7" > -2.354943) AND (t."X_6" > -0.166522) AND (t."X_4" > -0.279042) AND (t."X_9" > -1.304223)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_6" <= 0.166888) AND (t."X_7" <= 1.466196) AND (t."X_8" > -2.238584) AND (t."X_7" > -2.354943) AND (t."X_6" <= -0.166522) AND (t."X_9" <= 0.642134)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" <= 0.166888) AND (t."X_7" <= 1.466196) AND (t."X_8" > -2.238584) AND (t."X_7" > -2.354943) AND (t."X_6" <= -0.166522) AND (t."X_9" > 0.642134) AND (t."X_4" <= -0.358231)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" <= 0.166888) AND (t."X_7" <= 1.466196) AND (t."X_8" > -2.238584) AND (t."X_7" > -2.354943) AND (t."X_6" <= -0.166522) AND (t."X_9" > 0.642134) AND (t."X_4" > -0.358231) AND (t."X_9" <= 0.664902)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" <= 0.166888) AND (t."X_7" <= 1.466196) AND (t."X_8" > -2.238584) AND (t."X_7" > -2.354943) AND (t."X_6" <= -0.166522) AND (t."X_9" > 0.642134) AND (t."X_4" > -0.358231) AND (t."X_9" > 0.664902)) THEN 28 ELSE NULL END AS "Leaf_28"
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
    SELECT 0 AS nid,  0.585938 AS "P_0", 0.414062 AS "P_1", 0 AS "D", 0.585938 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.848101 AS "P_0", 0.151899 AS "P_1", 0 AS "D", 0.848101 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.163265 AS "P_0", 0.836735 AS "P_1", 1 AS "D", 0.836735 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.905405 AS "P_0", 0.094595 AS "P_1", 0 AS "D", 0.905405 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.108696 AS "P_0", 0.891304 AS "P_1", 1 AS "D", 0.891304 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.068182 AS "P_0", 0.931818 AS "P_1", 1 AS "D", 0.931818 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.917808 AS "P_0", 0.082192 AS "P_1", 0 AS "D", 0.917808 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.930556 AS "P_0", 0.069444 AS "P_1", 0 AS "D", 0.930556 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.981481 AS "P_0", 0.018519 AS "P_1", 0 AS "D", 0.981481 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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