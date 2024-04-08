WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "census_sampled" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_7", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_20", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_2" <= 90728.500000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_2" > 90728.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 187571.000000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_2" > 90728.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 187571.000000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 184778.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 184778.000000) AND (t."X_2" > 151264.500000)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 121100.000000) AND (t."X_0" > 3.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 121100.000000) AND (t."X_2" > 362744.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 121100.000000) AND (t."X_2" <= 362744.500000) AND (t."X_2" <= 208656.500000) AND (t."X_0" <= 3.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 121100.000000) AND (t."X_2" <= 362744.500000) AND (t."X_2" <= 208656.500000) AND (t."X_0" > 3.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 121100.000000) AND (t."X_2" <= 362744.500000) AND (t."X_2" > 208656.500000) AND (t."X_2" <= 257010.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 121100.000000) AND (t."X_2" <= 362744.500000) AND (t."X_2" > 208656.500000) AND (t."X_2" > 257010.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 184778.000000) AND (t."X_2" <= 151264.500000) AND (t."X_2" <= 108503.000000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 184778.000000) AND (t."X_2" <= 151264.500000) AND (t."X_2" > 108503.000000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 121100.000000) AND (t."X_0" <= 3.500000) AND (t."X_0" <= 2.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 121100.000000) AND (t."X_0" <= 3.500000) AND (t."X_0" > 2.500000)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" <= 0.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" > 0.500000) AND (t."X_2" <= 197064.500000) AND (t."X_12" <= 1.500000)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" > 0.500000) AND (t."X_2" <= 197064.500000) AND (t."X_12" > 1.500000)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 197064.500000) AND (t."X_2" <= 249470.500000)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000) AND (t."X_12" > 0.500000) AND (t."X_2" > 197064.500000) AND (t."X_2" > 249470.500000)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_2" > 90728.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 2.500000)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_2" > 90728.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_2" <= 174642.500000)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_2" > 90728.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000) AND (t."X_2" > 174642.500000)) THEN 44 ELSE NULL END AS "Leaf_44"
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
    SELECT 0 AS nid,  0.762326 AS "P_0", 0.237674 AS "P_1", 0 AS "D", 0.762326 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.806258 AS "P_0", 0.193742 AS "P_1", 0 AS "D", 0.806258 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.596560 AS "P_0", 0.403440 AS "P_1", 0 AS "D", 0.596560 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.914477 AS "P_0", 0.085523 AS "P_1", 0 AS "D", 0.914477 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.712127 AS "P_0", 0.287873 AS "P_1", 0 AS "D", 0.712127 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.985213 AS "P_0", 0.014787 AS "P_1", 0 AS "D", 0.985213 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.848667 AS "P_0", 0.151333 AS "P_1", 0 AS "D", 0.848667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.723810 AS "P_0", 0.276190 AS "P_1", 0 AS "D", 0.723810 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.571562 AS "P_0", 0.428438 AS "P_1", 0 AS "D", 0.571562 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.708029 AS "P_0", 0.291971 AS "P_1", 0 AS "D", 0.708029 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.486322 AS "P_0", 0.513678 AS "P_1", 1 AS "D", 0.513678 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.741935 AS "P_0", 0.258065 AS "P_1", 0 AS "D", 0.741935 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.680000 AS "P_0", 0.320000 AS "P_1", 0 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.876645 AS "P_0", 0.123355 AS "P_1", 0 AS "D", 0.876645 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.818018 AS "P_0", 0.181982 AS "P_1", 0 AS "D", 0.818018 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.855792 AS "P_0", 0.144208 AS "P_1", 0 AS "D", 0.855792 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.924324 AS "P_0", 0.075676 AS "P_1", 0 AS "D", 0.924324 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.758523 AS "P_0", 0.241477 AS "P_1", 0 AS "D", 0.758523 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.694726 AS "P_0", 0.305274 AS "P_1", 0 AS "D", 0.694726 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.728302 AS "P_0", 0.271698 AS "P_1", 0 AS "D", 0.728302 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.850575 AS "P_0", 0.149425 AS "P_1", 0 AS "D", 0.850575 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.702546 AS "P_0", 0.297454 AS "P_1", 0 AS "D", 0.702546 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.604027 AS "P_0", 0.395973 AS "P_1", 0 AS "D", 0.604027 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.681773 AS "P_0", 0.318227 AS "P_1", 0 AS "D", 0.681773 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.732118 AS "P_0", 0.267882 AS "P_1", 0 AS "D", 0.732118 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.657825 AS "P_0", 0.342175 AS "P_1", 0 AS "D", 0.657825 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.750958 AS "P_0", 0.249042 AS "P_1", 0 AS "D", 0.750958 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.775000 AS "P_0", 0.225000 AS "P_1", 0 AS "D", 0.775000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.697201 AS "P_0", 0.302799 AS "P_1", 0 AS "D", 0.697201 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.876777 AS "P_0", 0.123223 AS "P_1", 0 AS "D", 0.876777 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.834906 AS "P_0", 0.165094 AS "P_1", 0 AS "D", 0.834906 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.715232 AS "P_0", 0.284768 AS "P_1", 0 AS "D", 0.715232 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.745614 AS "P_0", 0.254386 AS "P_1", 0 AS "D", 0.745614 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.981287 AS "P_0", 0.018713 AS "P_1", 0 AS "D", 0.981287 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.971360 AS "P_0", 0.028640 AS "P_1", 0 AS "D", 0.971360 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.990826 AS "P_0", 0.009174 AS "P_1", 0 AS "D", 0.990826 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.992565 AS "P_0", 0.007435 AS "P_1", 0 AS "D", 0.992565 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.983193 AS "P_0", 0.016807 AS "P_1", 0 AS "D", 0.983193 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.491573 AS "P_0", 0.508427 AS "P_1", 1 AS "D", 0.508427 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.480132 AS "P_0", 0.519868 AS "P_1", 1 AS "D", 0.519868 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.526316 AS "P_0", 0.473684 AS "P_1", 0 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.433333 AS "P_0", 0.566667 AS "P_1", 1 AS "D", 0.566667 AS "DP"
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_4" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" <= 1.500000)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_2" <= 155664.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_2" > 155664.500000)) THEN 4 ELSE NULL END AS "Leaf_4"
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
    SELECT 0 AS nid,  0.758722 AS "P_0", 0.241278 AS "P_1", 0 AS "D", 0.758722 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.798012 AS "P_0", 0.201988 AS "P_1", 0 AS "D", 0.798012 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.153226 AS "P_0", 0.846774 AS "P_1", 1 AS "D", 0.846774 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.101911 AS "P_0", 0.898089 AS "P_1", 1 AS "D", 0.898089 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.190698 AS "P_0", 0.809302 AS "P_1", 1 AS "D", 0.809302 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_5", t1."Leaf_9", t1."Leaf_12", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" <= 2.500000)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_10" > 1.500000) AND (t."X_10" > 2.500000)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 181012.500000) AND (t."X_0" <= 1.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 181012.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 174175.500000)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 181012.500000) AND (t."X_2" > 362805.000000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 181012.500000) AND (t."X_2" <= 362805.000000) AND (t."X_2" > 203119.000000) AND (t."X_0" <= 1.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 181012.500000) AND (t."X_2" <= 362805.000000) AND (t."X_2" > 203119.000000) AND (t."X_0" > 1.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 181012.500000) AND (t."X_2" <= 362805.000000) AND (t."X_2" <= 203119.000000) AND (t."X_2" <= 187149.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" > 181012.500000) AND (t."X_2" <= 362805.000000) AND (t."X_2" <= 203119.000000) AND (t."X_2" > 187149.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 181012.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 174175.500000) AND (t."X_0" <= 3.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_10" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_2" <= 181012.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 174175.500000) AND (t."X_0" > 3.500000)) THEN 22 ELSE NULL END AS "Leaf_22"
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
    SELECT 0 AS nid,  0.758067 AS "P_0", 0.241933 AS "P_1", 0 AS "D", 0.758067 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.798462 AS "P_0", 0.201538 AS "P_1", 0 AS "D", 0.798462 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.156250 AS "P_0", 0.843750 AS "P_1", 1 AS "D", 0.843750 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.329670 AS "P_0", 0.670330 AS "P_1", 1 AS "D", 0.670330 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.991158 AS "P_0", 0.008842 AS "P_1", 0 AS "D", 0.991158 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.750980 AS "P_0", 0.249020 AS "P_1", 0 AS "D", 0.750980 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.773686 AS "P_0", 0.226314 AS "P_1", 0 AS "D", 0.773686 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.725725 AS "P_0", 0.274275 AS "P_1", 0 AS "D", 0.725725 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.747469 AS "P_0", 0.252531 AS "P_1", 0 AS "D", 0.747469 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.738571 AS "P_0", 0.261429 AS "P_1", 0 AS "D", 0.738571 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.735729 AS "P_0", 0.264271 AS "P_1", 0 AS "D", 0.735729 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.658363 AS "P_0", 0.341637 AS "P_1", 0 AS "D", 0.658363 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.685921 AS "P_0", 0.314079 AS "P_1", 0 AS "D", 0.685921 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.756353 AS "P_0", 0.243647 AS "P_1", 0 AS "D", 0.756353 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.818367 AS "P_0", 0.181633 AS "P_1", 0 AS "D", 0.818367 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.720519 AS "P_0", 0.279481 AS "P_1", 0 AS "D", 0.720519 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.639344 AS "P_0", 0.360656 AS "P_1", 0 AS "D", 0.639344 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.699074 AS "P_0", 0.300926 AS "P_1", 0 AS "D", 0.699074 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.725945 AS "P_0", 0.274055 AS "P_1", 0 AS "D", 0.725945 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.776350 AS "P_0", 0.223650 AS "P_1", 0 AS "D", 0.776350 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_14", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 101114.000000)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" <= 168103.000000)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 168103.000000) AND (t."X_2" <= 229087.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" <= 1.500000) AND (t."X_2" > 168103.000000) AND (t."X_2" > 229087.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 324844.000000) AND (t."X_0" > 1.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 324844.000000) AND (t."X_12" > 1.500000) AND (t."X_10" > 1.500000)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 324844.000000) AND (t."X_12" > 1.500000) AND (t."X_10" <= 1.500000) AND (t."X_0" <= 1.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 324844.000000) AND (t."X_0" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" > 324844.000000) AND (t."X_0" <= 1.500000) AND (t."X_0" > 0.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 324844.000000) AND (t."X_12" <= 1.500000) AND (t."X_2" > 199681.500000) AND (t."X_0" <= 0.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 324844.000000) AND (t."X_12" <= 1.500000) AND (t."X_2" > 199681.500000) AND (t."X_0" > 0.500000)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 101114.000000) AND (t."X_0" <= 2.500000)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_12" > 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 101114.000000) AND (t."X_0" > 2.500000)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 324844.000000) AND (t."X_12" > 1.500000) AND (t."X_10" <= 1.500000) AND (t."X_0" > 1.500000) AND (t."X_0" <= 2.500000)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 324844.000000) AND (t."X_12" > 1.500000) AND (t."X_10" <= 1.500000) AND (t."X_0" > 1.500000) AND (t."X_0" > 2.500000)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 324844.000000) AND (t."X_12" <= 1.500000) AND (t."X_2" <= 199681.500000) AND (t."X_12" <= 0.500000)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 324844.000000) AND (t."X_12" <= 1.500000) AND (t."X_2" <= 199681.500000) AND (t."X_12" > 0.500000) AND (t."X_0" <= 0.500000)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_12" <= 2.500000) AND (t."X_2" <= 324844.000000) AND (t."X_12" <= 1.500000) AND (t."X_2" <= 199681.500000) AND (t."X_12" > 0.500000) AND (t."X_0" > 0.500000)) THEN 34 ELSE NULL END AS "Leaf_34"
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
    SELECT 0 AS nid,  0.750696 AS "P_0", 0.249304 AS "P_1", 0 AS "D", 0.750696 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.802255 AS "P_0", 0.197745 AS "P_1", 0 AS "D", 0.802255 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.563070 AS "P_0", 0.436930 AS "P_1", 0 AS "D", 0.563070 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.714575 AS "P_0", 0.285425 AS "P_1", 0 AS "D", 0.714575 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.472019 AS "P_0", 0.527981 AS "P_1", 1 AS "D", 0.527981 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.653846 AS "P_0", 0.346154 AS "P_1", 0 AS "D", 0.653846 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.420312 AS "P_0", 0.579687 AS "P_1", 1 AS "D", 0.579687 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.669565 AS "P_0", 0.330435 AS "P_1", 0 AS "D", 0.669565 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.753788 AS "P_0", 0.246212 AS "P_1", 0 AS "D", 0.753788 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.825758 AS "P_0", 0.174242 AS "P_1", 0 AS "D", 0.825758 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.681818 AS "P_0", 0.318182 AS "P_1", 0 AS "D", 0.681818 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.794962 AS "P_0", 0.205038 AS "P_1", 0 AS "D", 0.794962 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.859519 AS "P_0", 0.140481 AS "P_1", 0 AS "D", 0.859519 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.959732 AS "P_0", 0.040268 AS "P_1", 0 AS "D", 0.959732 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.736625 AS "P_0", 0.263374 AS "P_1", 0 AS "D", 0.736625 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.906250 AS "P_0", 0.093750 AS "P_1", 0 AS "D", 0.906250 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.753553 AS "P_0", 0.246447 AS "P_1", 0 AS "D", 0.753553 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.789095 AS "P_0", 0.210905 AS "P_1", 0 AS "D", 0.789095 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.177778 AS "P_0", 0.822222 AS "P_1", 1 AS "D", 0.822222 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.888112 AS "P_0", 0.111888 AS "P_1", 0 AS "D", 0.888112 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.710866 AS "P_0", 0.289134 AS "P_1", 0 AS "D", 0.710866 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.917808 AS "P_0", 0.082192 AS "P_1", 0 AS "D", 0.917808 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.885609 AS "P_0", 0.114391 AS "P_1", 0 AS "D", 0.885609 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.955752 AS "P_0", 0.044248 AS "P_1", 0 AS "D", 0.955752 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.914773 AS "P_0", 0.085227 AS "P_1", 0 AS "D", 0.914773 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.409884 AS "P_0", 0.590116 AS "P_1", 1 AS "D", 0.590116 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.432432 AS "P_0", 0.567568 AS "P_1", 1 AS "D", 0.567568 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.720991 AS "P_0", 0.279009 AS "P_1", 0 AS "D", 0.720991 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.701856 AS "P_0", 0.298144 AS "P_1", 0 AS "D", 0.701856 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.884181 AS "P_0", 0.115819 AS "P_1", 0 AS "D", 0.884181 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.886710 AS "P_0", 0.113290 AS "P_1", 0 AS "D", 0.886710 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.975309 AS "P_0", 0.024691 AS "P_1", 0 AS "D", 0.975309 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.838384 AS "P_0", 0.161616 AS "P_1", 0 AS "D", 0.838384 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" > 1.500000)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" > 2.500000)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_0" <= 0.500000)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_0" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_0" > 0.500000)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_4" <= 13.500000)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 13.500000) AND (t."X_0" <= 2.500000)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_4" > 12.500000) AND (t."X_0" > 1.500000) AND (t."X_4" > 13.500000) AND (t."X_0" > 2.500000)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" <= 1.500000) AND (t."X_12" > 2.500000) AND (t."X_0" <= 1.500000)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" <= 1.500000) AND (t."X_12" > 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" <= 144720.500000)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" <= 1.500000) AND (t."X_12" > 2.500000) AND (t."X_0" > 1.500000) AND (t."X_2" > 144720.500000)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" > 1.500000)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_0" <= 0.500000)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_4" <= 9.500000)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_4" <= 12.500000) AND (t."X_10" <= 1.500000) AND (t."X_12" <= 2.500000) AND (t."X_12" <= 1.500000) AND (t."X_0" > 0.500000) AND (t."X_4" > 9.500000)) THEN 26 ELSE NULL END AS "Leaf_26"
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
    SELECT 0 AS nid,  0.763800 AS "P_0", 0.236200 AS "P_1", 0 AS "D", 0.763800 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.848697 AS "P_0", 0.151303 AS "P_1", 0 AS "D", 0.848697 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.511703 AS "P_0", 0.488296 AS "P_1", 0 AS "D", 0.511703 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.710616 AS "P_0", 0.289384 AS "P_1", 0 AS "D", 0.710616 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.389937 AS "P_0", 0.610063 AS "P_1", 1 AS "D", 0.610063 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.874234 AS "P_0", 0.125766 AS "P_1", 0 AS "D", 0.874234 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.154321 AS "P_0", 0.845679 AS "P_1", 1 AS "D", 0.845679 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.783217 AS "P_0", 0.216783 AS "P_1", 0 AS "D", 0.783217 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.509677 AS "P_0", 0.490323 AS "P_1", 0 AS "D", 0.509677 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.970149 AS "P_0", 0.029851 AS "P_1", 0 AS "D", 0.970149 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.698305 AS "P_0", 0.301695 AS "P_1", 0 AS "D", 0.698305 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.439856 AS "P_0", 0.560144 AS "P_1", 1 AS "D", 0.560144 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.319899 AS "P_0", 0.680101 AS "P_1", 1 AS "D", 0.680101 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.241379 AS "P_0", 0.758621 AS "P_1", 1 AS "D", 0.758621 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.381166 AS "P_0", 0.618834 AS "P_1", 1 AS "D", 0.618834 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.898810 AS "P_0", 0.101190 AS "P_1", 0 AS "D", 0.898810 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.746121 AS "P_0", 0.253879 AS "P_1", 0 AS "D", 0.746121 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.854093 AS "P_0", 0.145907 AS "P_1", 0 AS "D", 0.854093 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.675234 AS "P_0", 0.324766 AS "P_1", 0 AS "D", 0.675234 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.789157 AS "P_0", 0.210843 AS "P_1", 0 AS "D", 0.789157 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.603053 AS "P_0", 0.396947 AS "P_1", 0 AS "D", 0.603053 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.970699 AS "P_0", 0.029301 AS "P_1", 0 AS "D", 0.970699 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.869977 AS "P_0", 0.130023 AS "P_1", 0 AS "D", 0.869977 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.943841 AS "P_0", 0.056159 AS "P_1", 0 AS "D", 0.943841 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.974026 AS "P_0", 0.025974 AS "P_1", 0 AS "D", 0.974026 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.874251 AS "P_0", 0.125749 AS "P_1", 0 AS "D", 0.874251 AS "DP"
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