WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_40", t1."Leaf_44", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48", t1."Leaf_54", t1."Leaf_55", t1."Leaf_57", t1."Leaf_59", t1."Leaf_62", t1."Leaf_63", t1."Leaf_65", t1."Leaf_66", t1."Leaf_68", t1."Leaf_69", t1."Leaf_70", t1."Leaf_74", t1."Leaf_76", t1."Leaf_77", t1."Leaf_79", t1."Leaf_80", t1."Leaf_82", t1."Leaf_83", t1."Leaf_84", t1."Leaf_85", t1."Leaf_87", t1."Leaf_88" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 1.538672) AND (t."X_5" <= -0.806984)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_2" > 1.538672) AND (t."X_5" > -0.806984) AND (t."X_9" <= -0.511469)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" > 1.538672) AND (t."X_5" > -0.806984) AND (t."X_9" > -0.511469)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" <= -0.858643) AND (t."X_5" > 1.642807)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" <= -0.858643) AND (t."X_5" <= 1.642807) AND (t."X_4" > 1.289614)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" <= -0.858643) AND (t."X_5" <= 1.642807) AND (t."X_4" <= 1.289614) AND (t."X_9" <= -1.897800)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" <= -0.858643) AND (t."X_5" <= 1.642807) AND (t."X_4" <= 1.289614) AND (t."X_9" > -1.897800) AND (t."X_5" <= 0.956497)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" <= -0.858643) AND (t."X_5" <= 1.642807) AND (t."X_4" <= 1.289614) AND (t."X_9" > -1.897800) AND (t."X_5" > 0.956497)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" > -0.858643) AND (t."X_8" > 2.806226)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" <= -1.185406) AND (t."X_5" > 1.010664)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" <= -1.185406) AND (t."X_5" <= 1.010664) AND (t."X_5" > -0.454314)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" <= -1.185406) AND (t."X_5" <= 1.010664) AND (t."X_5" <= -0.454314) AND (t."X_9" <= -0.101966)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" <= -1.185406) AND (t."X_5" <= 1.010664) AND (t."X_5" <= -0.454314) AND (t."X_9" > -0.101966)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" > -0.858643) AND (t."X_8" <= 2.806226) AND (t."X_9" > 0.866567) AND (t."X_8" <= 0.353375)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" > -0.858643) AND (t."X_8" <= 2.806226) AND (t."X_9" > 0.866567) AND (t."X_8" > 0.353375) AND (t."X_4" > 0.201239)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" > -0.858643) AND (t."X_8" <= 2.806226) AND (t."X_9" > 0.866567) AND (t."X_8" > 0.353375) AND (t."X_4" <= 0.201239) AND (t."X_9" <= 1.534528)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" > -0.858643) AND (t."X_8" <= 2.806226) AND (t."X_9" > 0.866567) AND (t."X_8" > 0.353375) AND (t."X_4" <= 0.201239) AND (t."X_9" > 1.534528)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" > 1.030464) AND (t."X_9" <= 0.621689)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" > 1.030464) AND (t."X_9" > 0.621689)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" > 1.005753) AND (t."X_9" > 0.784484)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" > 1.005753) AND (t."X_9" <= 0.784484) AND (t."X_5" > 2.665640)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" > 1.005753) AND (t."X_9" <= 0.784484) AND (t."X_5" <= 2.665640) AND (t."X_8" <= -0.634640)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" > 1.005753) AND (t."X_9" <= 0.784484) AND (t."X_5" <= 2.665640) AND (t."X_8" > -0.634640)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" <= -0.024329) AND (t."X_2" > -0.879745) AND (t."X_9" > 0.313069)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" <= -0.024329) AND (t."X_2" <= -0.879745) AND (t."X_2" <= -1.957245)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" <= -0.024329) AND (t."X_2" <= -0.879745) AND (t."X_2" > -1.957245) AND (t."X_9" <= -1.646225)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" <= -0.024329) AND (t."X_2" <= -0.879745) AND (t."X_2" > -1.957245) AND (t."X_9" > -1.646225) AND (t."X_5" <= -0.939413)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" <= -0.024329) AND (t."X_2" <= -0.879745) AND (t."X_2" > -1.957245) AND (t."X_9" > -1.646225) AND (t."X_5" > -0.939413) AND (t."X_7" > 0.628913)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" <= -0.024329) AND (t."X_2" > -0.879745) AND (t."X_9" <= 0.313069) AND (t."X_2" <= -0.502121)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" <= -0.024329) AND (t."X_2" > -0.879745) AND (t."X_9" <= 0.313069) AND (t."X_2" > -0.502121) AND (t."X_9" <= -1.209886)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" <= -0.024329) AND (t."X_2" > -0.879745) AND (t."X_9" <= 0.313069) AND (t."X_2" > -0.502121) AND (t."X_9" > -1.209886)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" <= -0.024329) AND (t."X_2" <= -0.879745) AND (t."X_2" > -1.957245) AND (t."X_9" > -1.646225) AND (t."X_5" > -0.939413) AND (t."X_7" <= 0.628913) AND (t."X_4" > -0.121275)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" <= -0.024329) AND (t."X_2" <= -0.879745) AND (t."X_2" > -1.957245) AND (t."X_9" > -1.646225) AND (t."X_5" > -0.939413) AND (t."X_7" <= 0.628913) AND (t."X_4" <= -0.121275) AND (t."X_5" <= 0.185054)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" <= -0.024329) AND (t."X_2" <= -0.879745) AND (t."X_2" > -1.957245) AND (t."X_9" > -1.646225) AND (t."X_5" > -0.939413) AND (t."X_7" <= 0.628913) AND (t."X_4" <= -0.121275) AND (t."X_5" > 0.185054)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" > -0.024329) AND (t."X_8" > -0.773697) AND (t."X_2" > 0.780699)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" > -0.024329) AND (t."X_8" > -0.773697) AND (t."X_2" <= 0.780699) AND (t."X_9" > 0.513823)) THEN 76 ELSE NULL END AS "Leaf_76",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" > -0.024329) AND (t."X_8" > -0.773697) AND (t."X_2" <= 0.780699) AND (t."X_9" <= 0.513823) AND (t."X_5" <= -1.008883)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" > -0.024329) AND (t."X_8" > -0.773697) AND (t."X_2" <= 0.780699) AND (t."X_9" <= 0.513823) AND (t."X_5" > -1.008883) AND (t."X_7" <= -0.298742)) THEN 79 ELSE NULL END AS "Leaf_79",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" > -0.024329) AND (t."X_8" > -0.773697) AND (t."X_2" <= 0.780699) AND (t."X_9" <= 0.513823) AND (t."X_5" > -1.008883) AND (t."X_7" > -0.298742)) THEN 80 ELSE NULL END AS "Leaf_80",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" > -0.858643) AND (t."X_8" <= 2.806226) AND (t."X_9" <= 0.866567) AND (t."X_4" > -1.070248)) THEN 82 ELSE NULL END AS "Leaf_82",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" > -0.858643) AND (t."X_8" <= 2.806226) AND (t."X_9" <= 0.866567) AND (t."X_4" <= -1.070248) AND (t."X_5" <= 1.491279)) THEN 83 ELSE NULL END AS "Leaf_83",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" > -0.858643) AND (t."X_8" <= 2.806226) AND (t."X_9" <= 0.866567) AND (t."X_4" <= -1.070248) AND (t."X_5" > 1.491279)) THEN 84 ELSE NULL END AS "Leaf_84",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" > -0.024329) AND (t."X_8" <= -0.773697) AND (t."X_9" <= 0.911503)) THEN 85 ELSE NULL END AS "Leaf_85",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" > -0.024329) AND (t."X_8" <= -0.773697) AND (t."X_9" > 0.911503) AND (t."X_9" <= 1.371161)) THEN 87 ELSE NULL END AS "Leaf_87",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_5" <= 1.005753) AND (t."X_2" > -0.024329) AND (t."X_8" <= -0.773697) AND (t."X_9" > 0.911503) AND (t."X_9" > 1.371161)) THEN 88 ELSE NULL END AS "Leaf_88"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.234375 AS "P_0", 0.218750 AS "P_1", 0.312500 AS "P_2", 0.234375 AS "P_3", 2 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.230089 AS "P_0", 0.238938 AS "P_1", 0.353982 AS "P_2", 0.176991 AS "P_3", 2 AS "D", 0.353982 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.266667 AS "P_0", 0.066667 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.090909 AS "P_1", 0.000000 AS "P_2", 0.909091 AS "P_3", 3 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.246377 AS "P_0", 0.043478 AS "P_1", 0.507246 AS "P_2", 0.202899 AS "P_3", 2 AS "D", 0.507246 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.204545 AS "P_0", 0.545455 AS "P_1", 0.113636 AS "P_2", 0.136364 AS "P_3", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.428571 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.571429 AS "P_3", 3 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.162162 AS "P_0", 0.648649 AS "P_1", 0.135135 AS "P_2", 0.054054 AS "P_3", 1 AS "D", 0.648649 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.375000 AS "P_0", 0.125000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.103448 AS "P_0", 0.793103 AS "P_1", 0.034483 AS "P_2", 0.068966 AS "P_3", 1 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.600000 AS "P_0", 0.200000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.111111 AS "P_0", 0.851852 AS "P_1", 0.037037 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.047619 AS "P_0", 0.952381 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.333333 AS "P_0", 0.500000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.500000 AS "P_0", 0.250000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.180328 AS "P_0", 0.049180 AS "P_1", 0.540984 AS "P_2", 0.229508 AS "P_3", 2 AS "D", 0.540984 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.200000 AS "P_0", 0.060000 AS "P_1", 0.600000 AS "P_2", 0.140000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.090909 AS "P_0", 0.000000 AS "P_1", 0.272727 AS "P_2", 0.636364 AS "P_3", 3 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.111111 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.777778 AS "P_3", 3 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.125000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.875000 AS "P_3", 3 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.333333 AS "P_0", 0.041667 AS "P_1", 0.416667 AS "P_2", 0.208333 AS "P_3", 2 AS "D", 0.416667 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.076923 AS "P_0", 0.076923 AS "P_1", 0.769231 AS "P_2", 0.076923 AS "P_3", 2 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.133333 AS "P_0", 0.066667 AS "P_1", 0.600000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.222222 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.857143 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.153846 AS "P_0", 0.076923 AS "P_1", 0.692308 AS "P_2", 0.076923 AS "P_3", 2 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.166667 AS "P_0", 0.083333 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.090909 AS "P_0", 0.090909 AS "P_1", 0.818182 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 0.100000 AS "P_1", 0.900000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.058824 AS "P_0", 0.000000 AS "P_1", 0.941176 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.111111 AS "P_0", 0.222222 AS "P_1", 0.444444 AS "P_2", 0.222222 AS "P_3", 2 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.571429 AS "P_2", 0.285714 AS "P_3", 2 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 79 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 80 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 81 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 82 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 83 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 84 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 85 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 86 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 87 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 88 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_51", t1."Leaf_52", t1."Leaf_55", t1."Leaf_56", t1."Leaf_61", t1."Leaf_63", t1."Leaf_64", t1."Leaf_65", t1."Leaf_68", t1."Leaf_69", t1."Leaf_71", t1."Leaf_73", t1."Leaf_74", t1."Leaf_75", t1."Leaf_77", t1."Leaf_78" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" <= -1.185406) AND (t."X_8" <= 0.393124)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" <= -1.185406) AND (t."X_8" > 0.393124) AND (t."X_9" > 0.436478) AND (t."X_7" <= -1.709208)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" <= -1.185406) AND (t."X_8" > 0.393124) AND (t."X_9" > 0.436478) AND (t."X_7" > -1.709208) AND (t."X_7" <= -1.285975)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" <= -1.185406) AND (t."X_8" > 0.393124) AND (t."X_9" > 0.436478) AND (t."X_7" > -1.709208) AND (t."X_7" > -1.285975)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" <= -1.185406) AND (t."X_8" > 0.393124) AND (t."X_9" <= 0.436478) AND (t."X_9" > -0.372633)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" <= -1.185406) AND (t."X_8" > 0.393124) AND (t."X_9" <= 0.436478) AND (t."X_9" <= -0.372633) AND (t."X_8" <= 1.218051)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" <= -1.185406) AND (t."X_8" > 0.393124) AND (t."X_9" <= 0.436478) AND (t."X_9" <= -0.372633) AND (t."X_8" > 1.218051)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" <= 0.096293) AND (t."X_4" > 0.534175)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" <= 0.096293) AND (t."X_4" <= 0.534175) AND (t."X_7" <= 0.657951)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" <= 0.096293) AND (t."X_4" <= 0.534175) AND (t."X_7" > 0.657951)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" <= -0.829891) AND (t."X_8" <= 0.391278)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" <= -0.829891) AND (t."X_8" > 0.391278) AND (t."X_8" > 1.735715)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" <= -0.829891) AND (t."X_8" > 0.391278) AND (t."X_8" <= 1.735715) AND (t."X_7" <= -0.353001)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" <= -0.829891) AND (t."X_8" > 0.391278) AND (t."X_8" <= 1.735715) AND (t."X_7" > -0.353001) AND (t."X_8" <= 0.720477)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" <= -0.829891) AND (t."X_8" > 0.391278) AND (t."X_8" <= 1.735715) AND (t."X_7" > -0.353001) AND (t."X_8" > 0.720477)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" > -0.829891) AND (t."X_9" > 0.866384) AND (t."X_9" <= 1.284296)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" > -0.829891) AND (t."X_9" > 0.866384) AND (t."X_9" > 1.284296) AND (t."X_7" <= -0.180720)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" > -0.829891) AND (t."X_9" > 0.866384) AND (t."X_9" > 1.284296) AND (t."X_7" > -0.180720)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" > -0.408378)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" > -0.829891) AND (t."X_9" <= 0.866384) AND (t."X_9" <= 0.001642)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" > -0.829891) AND (t."X_9" <= 0.866384) AND (t."X_9" > 0.001642) AND (t."X_7" <= -0.947884)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" > -0.829891) AND (t."X_9" <= 0.866384) AND (t."X_9" > 0.001642) AND (t."X_7" > -0.947884) AND (t."X_7" <= 0.524023)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" > -0.829891) AND (t."X_9" <= 0.866384) AND (t."X_9" > 0.001642) AND (t."X_7" > -0.947884) AND (t."X_7" > 0.524023) AND (t."X_7" <= 0.841876)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" > -0.829891) AND (t."X_9" <= 0.866384) AND (t."X_9" > 0.001642) AND (t."X_7" > -0.947884) AND (t."X_7" > 0.524023) AND (t."X_7" > 0.841876)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_4" > 1.001872) AND (t."X_7" <= -0.843525)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_4" > 1.001872) AND (t."X_7" > -0.843525)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_4" <= 1.001872) AND (t."X_4" <= -0.975906) AND (t."X_7" <= -1.330091)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_4" <= 1.001872) AND (t."X_4" <= -0.975906) AND (t."X_7" > -1.330091)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_4" <= 1.001872) AND (t."X_4" > -0.975906) AND (t."X_4" > 0.084810) AND (t."X_4" > 0.433467) AND (t."X_4" <= 0.762458)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_4" <= 1.001872) AND (t."X_4" > -0.975906) AND (t."X_4" > 0.084810) AND (t."X_4" > 0.433467) AND (t."X_4" > 0.762458) AND (t."X_8" <= -1.620740)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_4" <= 1.001872) AND (t."X_4" > -0.975906) AND (t."X_4" > 0.084810) AND (t."X_4" > 0.433467) AND (t."X_4" > 0.762458) AND (t."X_8" > -1.620740)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_4" <= 1.001872) AND (t."X_4" > -0.975906) AND (t."X_4" > 0.084810) AND (t."X_4" <= 0.433467) AND (t."X_8" <= -1.783800)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_4" <= 1.001872) AND (t."X_4" > -0.975906) AND (t."X_4" <= 0.084810) AND (t."X_9" > 0.254602)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_4" <= 1.001872) AND (t."X_4" > -0.975906) AND (t."X_4" <= 0.084810) AND (t."X_9" <= 0.254602) AND (t."X_7" <= -1.209187)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_4" <= 1.001872) AND (t."X_4" > -0.975906) AND (t."X_4" <= 0.084810) AND (t."X_9" <= 0.254602) AND (t."X_7" > -1.209187) AND (t."X_7" <= -0.308569)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_4" <= 1.001872) AND (t."X_4" > -0.975906) AND (t."X_4" <= 0.084810) AND (t."X_9" <= 0.254602) AND (t."X_7" > -1.209187) AND (t."X_7" > -0.308569) AND (t."X_8" <= -0.710229)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_4" <= 1.001872) AND (t."X_4" > -0.975906) AND (t."X_4" <= 0.084810) AND (t."X_9" <= 0.254602) AND (t."X_7" > -1.209187) AND (t."X_7" > -0.308569) AND (t."X_8" > -0.710229)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_4" <= 1.001872) AND (t."X_4" > -0.975906) AND (t."X_4" > 0.084810) AND (t."X_4" <= 0.433467) AND (t."X_8" > -1.783800) AND (t."X_4" <= 0.293282)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_4" <= 1.001872) AND (t."X_4" > -0.975906) AND (t."X_4" > 0.084810) AND (t."X_4" <= 0.433467) AND (t."X_8" > -1.783800) AND (t."X_4" > 0.293282) AND (t."X_4" <= 0.360317)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_4" <= 1.001872) AND (t."X_4" > -0.975906) AND (t."X_4" > 0.084810) AND (t."X_4" <= 0.433467) AND (t."X_8" > -1.783800) AND (t."X_4" > 0.293282) AND (t."X_4" > 0.360317)) THEN 78 ELSE NULL END AS "Leaf_78"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.273438 AS "P_0", 0.265625 AS "P_1", 0.210938 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.273438 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.185185 AS "P_0", 0.037037 AS "P_1", 0.425926 AS "P_2", 0.351852 AS "P_3", 2 AS "D", 0.425926 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.337838 AS "P_0", 0.432432 AS "P_1", 0.054054 AS "P_2", 0.175676 AS "P_3", 1 AS "D", 0.432432 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.473684 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.526316 AS "P_3", 3 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.290909 AS "P_0", 0.581818 AS "P_1", 0.072727 AS "P_2", 0.054545 AS "P_3", 1 AS "D", 0.581818 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.111111 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.888889 AS "P_3", 3 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.208333 AS "P_0", 0.645833 AS "P_1", 0.083333 AS "P_2", 0.062500 AS "P_3", 1 AS "D", 0.645833 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.555556 AS "P_0", 0.222222 AS "P_1", 0.222222 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.128205 AS "P_0", 0.743590 AS "P_1", 0.051282 AS "P_2", 0.076923 AS "P_3", 1 AS "D", 0.743590 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.625000 AS "P_0", 0.250000 AS "P_1", 0.125000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.888889 AS "P_1", 0.000000 AS "P_2", 0.111111 AS "P_3", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.416667 AS "P_0", 0.416667 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.416667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.714286 AS "P_1", 0.285714 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.204082 AS "P_0", 0.040816 AS "P_1", 0.469388 AS "P_2", 0.285714 AS "P_3", 2 AS "D", 0.469388 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 0.857143 AS "P_1", 0.000000 AS "P_2", 0.142857 AS "P_3", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.256410 AS "P_0", 0.051282 AS "P_1", 0.384615 AS "P_2", 0.307692 AS "P_3", 2 AS "D", 0.384615 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.727273 AS "P_2", 0.272727 AS "P_3", 2 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.357143 AS "P_0", 0.071429 AS "P_1", 0.250000 AS "P_2", 0.321429 AS "P_3", 0 AS "D", 0.357143 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.666667 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.125000 AS "P_0", 0.000000 AS "P_1", 0.437500 AS "P_2", 0.437500 AS "P_3", 2 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.777778 AS "P_2", 0.222222 AS "P_3", 2 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.285714 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.714286 AS "P_3", 3 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.875000 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.428571 AS "P_0", 0.285714 AS "P_1", 0.000000 AS "P_2", 0.285714 AS "P_3", 0 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_6", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_18", t1."Leaf_19", t1."Leaf_23", t1."Leaf_27", t1."Leaf_28", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_47", t1."Leaf_49", t1."Leaf_50", t1."Leaf_52", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_59", t1."Leaf_60", t1."Leaf_61", t1."Leaf_63", t1."Leaf_64", t1."Leaf_66", t1."Leaf_67", t1."Leaf_69", t1."Leaf_70" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" <= -1.142108) AND (t."X_5" > 1.010664)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" <= -1.142108) AND (t."X_5" <= 1.010664) AND (t."X_9" <= -0.326417) AND (t."X_9" > -1.803617)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" <= -1.142108) AND (t."X_5" <= 1.010664) AND (t."X_9" <= -0.326417) AND (t."X_9" <= -1.803617) AND (t."X_9" <= -2.076020)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" <= -1.142108) AND (t."X_5" <= 1.010664) AND (t."X_9" <= -0.326417) AND (t."X_9" <= -1.803617) AND (t."X_9" > -2.076020)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" <= -1.142108) AND (t."X_5" <= 1.010664) AND (t."X_9" > -0.326417) AND (t."X_7" <= -4.106875)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" > 0.974245) AND (t."X_8" > 0.440907)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" > 0.974245) AND (t."X_8" <= 0.440907) AND (t."X_5" <= -1.050931)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" > -0.077553) AND (t."X_5" <= -1.322727)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" > 0.789410) AND (t."X_5" <= -0.768179)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" > 0.789410) AND (t."X_5" > -0.768179)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" <= 0.789410) AND (t."X_8" <= -0.023027) AND (t."X_7" <= -1.129799) AND (t."X_8" <= -0.905783)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" <= 0.789410) AND (t."X_8" <= -0.023027) AND (t."X_7" <= -1.129799) AND (t."X_8" > -0.905783)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" <= 0.789410) AND (t."X_8" > -0.023027) AND (t."X_7" <= -0.719187)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" <= 0.789410) AND (t."X_8" > -0.023027) AND (t."X_7" > -0.719187) AND (t."X_9" <= -0.473754)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" <= 0.789410) AND (t."X_8" > -0.023027) AND (t."X_7" > -0.719187) AND (t."X_9" > -0.473754)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" <= 0.789410) AND (t."X_8" <= -0.023027) AND (t."X_7" > -1.129799) AND (t."X_7" <= -0.582424)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" <= 0.789410) AND (t."X_8" <= -0.023027) AND (t."X_7" > -1.129799) AND (t."X_7" > -0.582424) AND (t."X_6" > -0.138731)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" <= 0.789410) AND (t."X_8" <= -0.023027) AND (t."X_7" > -1.129799) AND (t."X_7" > -0.582424) AND (t."X_6" <= -0.138731) AND (t."X_7" <= -0.452138)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" <= 0.789410) AND (t."X_8" <= -0.023027) AND (t."X_7" > -1.129799) AND (t."X_7" > -0.582424) AND (t."X_6" <= -0.138731) AND (t."X_7" > -0.452138)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" > -1.142108) AND (t."X_5" <= -0.640390) AND (t."X_9" <= -0.061231)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" > -1.142108) AND (t."X_5" <= -0.640390) AND (t."X_9" > -0.061231) AND (t."X_7" <= -0.655264)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" > -1.142108) AND (t."X_5" <= -0.640390) AND (t."X_9" > -0.061231) AND (t."X_7" > -0.655264)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" > -1.142108) AND (t."X_5" > -0.640390) AND (t."X_5" > 1.911816)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" <= -1.142108) AND (t."X_5" <= 1.010664) AND (t."X_9" > -0.326417) AND (t."X_7" > -4.106875) AND (t."X_8" > 0.218699)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" <= -1.142108) AND (t."X_5" <= 1.010664) AND (t."X_9" > -0.326417) AND (t."X_7" > -4.106875) AND (t."X_8" <= 0.218699) AND (t."X_5" <= -0.829672)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" <= -1.142108) AND (t."X_5" <= 1.010664) AND (t."X_9" > -0.326417) AND (t."X_7" > -4.106875) AND (t."X_8" <= 0.218699) AND (t."X_5" > -0.829672)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" > -1.142108) AND (t."X_5" > -0.640390) AND (t."X_5" <= 1.911816) AND (t."X_7" <= 0.702165)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" > -1.142108) AND (t."X_5" > -0.640390) AND (t."X_5" <= 1.911816) AND (t."X_7" > 0.702165) AND (t."X_7" <= 0.893391)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" > -1.142108) AND (t."X_5" > -0.640390) AND (t."X_5" <= 1.911816) AND (t."X_7" > 0.702165) AND (t."X_7" > 0.893391)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" > 0.974245) AND (t."X_8" <= 0.440907) AND (t."X_5" > -1.050931) AND (t."X_8" <= -0.711690)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" > 0.974245) AND (t."X_8" <= 0.440907) AND (t."X_5" > -1.050931) AND (t."X_8" > -0.711690) AND (t."X_6" <= 2.449518)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" > 0.974245) AND (t."X_8" <= 0.440907) AND (t."X_5" > -1.050931) AND (t."X_8" > -0.711690) AND (t."X_6" > 2.449518)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" > -0.077553) AND (t."X_5" > -1.322727) AND (t."X_6" > 0.358717)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" > -0.077553) AND (t."X_5" > -1.322727) AND (t."X_6" <= 0.358717) AND (t."X_8" <= -0.760306)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" > -0.077553) AND (t."X_5" > -1.322727) AND (t."X_6" <= 0.358717) AND (t."X_8" > -0.760306) AND (t."X_6" <= 0.275706)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" > -0.077553) AND (t."X_5" > -1.322727) AND (t."X_6" <= 0.358717) AND (t."X_8" > -0.760306) AND (t."X_6" > 0.275706)) THEN 70 ELSE NULL END AS "Leaf_70"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.265625 AS "P_0", 0.234375 AS "P_1", 0.296875 AS "P_2", 0.203125 AS "P_3", 2 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.127660 AS "P_0", 0.404255 AS "P_1", 0.106383 AS "P_2", 0.361702 AS "P_3", 1 AS "D", 0.404255 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.345679 AS "P_0", 0.135802 AS "P_1", 0.407407 AS "P_2", 0.111111 AS "P_3", 2 AS "D", 0.407407 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.260870 AS "P_0", 0.000000 AS "P_1", 0.130435 AS "P_2", 0.608696 AS "P_3", 3 AS "D", 0.608696 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.791667 AS "P_1", 0.083333 AS "P_2", 0.125000 AS "P_3", 1 AS "D", 0.791667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.150000 AS "P_0", 0.000000 AS "P_1", 0.150000 AS "P_2", 0.700000 AS "P_3", 3 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.600000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.133333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.866667 AS "P_3", 3 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.071429 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.928571 AS "P_3", 3 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.491228 AS "P_0", 0.052632 AS "P_1", 0.315789 AS "P_2", 0.140351 AS "P_3", 0 AS "D", 0.491228 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.625000 AS "P_2", 0.041667 AS "P_3", 2 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.157895 AS "P_1", 0.789474 AS "P_2", 0.052632 AS "P_3", 2 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.937500 AS "P_2", 0.062500 AS "P_3", 2 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.285714 AS "P_0", 0.028571 AS "P_1", 0.457143 AS "P_2", 0.228571 AS "P_3", 2 AS "D", 0.457143 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.818182 AS "P_0", 0.090909 AS "P_1", 0.090909 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.900000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.370370 AS "P_0", 0.037037 AS "P_1", 0.518519 AS "P_2", 0.074074 AS "P_3", 2 AS "D", 0.518519 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.157895 AS "P_0", 0.000000 AS "P_1", 0.736842 AS "P_2", 0.105263 AS "P_3", 2 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.062500 AS "P_0", 0.000000 AS "P_1", 0.875000 AS "P_2", 0.062500 AS "P_3", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 0.400000 AS "P_1", 0.400000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 0.894737 AS "P_1", 0.000000 AS "P_2", 0.105263 AS "P_3", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.944444 AS "P_1", 0.000000 AS "P_2", 0.055556 AS "P_3", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.909091 AS "P_0", 0.000000 AS "P_1", 0.090909 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_44", t1."Leaf_47", t1."Leaf_49", t1."Leaf_50", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_59", t1."Leaf_60" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" <= -1.585091) AND (t."X_8" > -0.711485) AND (t."X_9" <= -1.001786)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_1" <= -1.585091) AND (t."X_8" > -0.711485) AND (t."X_9" > -1.001786)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_1" <= -1.585091) AND (t."X_8" <= -0.711485) AND (t."X_9" <= 1.214163)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_1" <= -1.585091) AND (t."X_8" <= -0.711485) AND (t."X_9" > 1.214163)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" > 0.749374) AND (t."X_0" > 1.907418)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" > 0.749374) AND (t."X_0" <= 1.907418) AND (t."X_8" <= 0.166287)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" > 0.749374) AND (t."X_0" <= 1.907418) AND (t."X_8" > 0.166287) AND (t."X_1" <= -0.984633)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" > 0.749374) AND (t."X_0" <= 1.907418) AND (t."X_8" > 0.166287) AND (t."X_1" > -0.984633)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" <= -0.830944)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" > -0.830944) AND (t."X_8" <= -0.601892) AND (t."X_1" > 0.570085)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" > -0.830944) AND (t."X_8" <= -0.601892) AND (t."X_1" <= 0.570085) AND (t."X_9" <= -0.164238)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" > -0.830944) AND (t."X_8" <= -0.601892) AND (t."X_1" <= 0.570085) AND (t."X_9" > -0.164238)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" > -0.830944) AND (t."X_8" > -0.601892) AND (t."X_8" <= -0.187819) AND (t."X_8" <= -0.538103)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" > -0.830944) AND (t."X_8" > -0.601892) AND (t."X_8" <= -0.187819) AND (t."X_8" > -0.538103)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" <= -1.140923) AND (t."X_8" > 1.855637)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 1.855637) AND (t."X_8" <= -0.905783) AND (t."X_1" <= 0.935122)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 1.855637) AND (t."X_8" <= -0.905783) AND (t."X_1" > 0.935122) AND (t."X_9" <= 1.079892)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 1.855637) AND (t."X_8" <= -0.905783) AND (t."X_1" > 0.935122) AND (t."X_9" > 1.079892)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 1.855637) AND (t."X_8" > -0.905783) AND (t."X_9" <= -0.535319) AND (t."X_9" <= -1.073557)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 1.855637) AND (t."X_8" > -0.905783) AND (t."X_9" <= -0.535319) AND (t."X_9" > -1.073557)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 1.855637) AND (t."X_8" > -0.905783) AND (t."X_9" > -0.535319) AND (t."X_1" > 2.082316)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" > -0.830944) AND (t."X_8" > -0.601892) AND (t."X_8" > -0.187819) AND (t."X_9" > 1.085020) AND (t."X_9" <= 1.289727)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" > -0.830944) AND (t."X_8" > -0.601892) AND (t."X_8" > -0.187819) AND (t."X_9" > 1.085020) AND (t."X_9" > 1.289727) AND (t."X_9" <= 1.534528)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" > -0.830944) AND (t."X_8" > -0.601892) AND (t."X_8" > -0.187819) AND (t."X_9" > 1.085020) AND (t."X_9" > 1.289727) AND (t."X_9" > 1.534528)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" > -0.830944) AND (t."X_8" > -0.601892) AND (t."X_8" > -0.187819) AND (t."X_9" <= 1.085020) AND (t."X_9" > 0.449765) AND (t."X_9" <= 0.637413)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" > -0.830944) AND (t."X_8" > -0.601892) AND (t."X_8" > -0.187819) AND (t."X_9" <= 1.085020) AND (t."X_9" > 0.449765) AND (t."X_9" > 0.637413)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" > -0.830944) AND (t."X_8" > -0.601892) AND (t."X_8" > -0.187819) AND (t."X_9" <= 1.085020) AND (t."X_9" <= 0.449765) AND (t."X_8" <= 2.806226)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" > -0.830944) AND (t."X_8" > -0.601892) AND (t."X_8" > -0.187819) AND (t."X_9" <= 1.085020) AND (t."X_9" <= 0.449765) AND (t."X_8" > 2.806226)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 1.855637) AND (t."X_8" > -0.905783) AND (t."X_9" > -0.535319) AND (t."X_1" <= 2.082316) AND (t."X_9" <= 0.306535)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 1.855637) AND (t."X_8" > -0.905783) AND (t."X_9" > -0.535319) AND (t."X_1" <= 2.082316) AND (t."X_9" > 0.306535) AND (t."X_9" <= 0.585565)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 1.855637) AND (t."X_8" > -0.905783) AND (t."X_9" > -0.535319) AND (t."X_1" <= 2.082316) AND (t."X_9" > 0.306535) AND (t."X_9" > 0.585565)) THEN 60 ELSE NULL END AS "Leaf_60"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.218750 AS "P_0", 0.195312 AS "P_1", 0.343750 AS "P_2", 0.242188 AS "P_3", 2 AS "D", 0.343750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.300000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.203704 AS "P_0", 0.231481 AS "P_1", 0.388889 AS "P_2", 0.175926 AS "P_3", 2 AS "D", 0.388889 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.923077 AS "P_3", 3 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.857143 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.246914 AS "P_0", 0.222222 AS "P_1", 0.296296 AS "P_2", 0.234568 AS "P_3", 2 AS "D", 0.296296 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.074074 AS "P_0", 0.259259 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.090909 AS "P_0", 0.090909 AS "P_1", 0.818182 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.485714 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.371429 AS "P_3", 0 AS "D", 0.485714 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.065217 AS "P_0", 0.391304 AS "P_1", 0.413043 AS "P_2", 0.130435 AS "P_3", 2 AS "D", 0.413043 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.078947 AS "P_0", 0.473684 AS "P_1", 0.289474 AS "P_2", 0.157895 AS "P_3", 1 AS "D", 0.473684 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.083333 AS "P_0", 0.083333 AS "P_1", 0.833333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.076923 AS "P_0", 0.653846 AS "P_1", 0.038462 AS "P_2", 0.230769 AS "P_3", 1 AS "D", 0.653846 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.045455 AS "P_0", 0.772727 AS "P_1", 0.045455 AS "P_2", 0.136364 AS "P_3", 1 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.379310 AS "P_0", 0.000000 AS "P_1", 0.172414 AS "P_2", 0.448276 AS "P_3", 3 AS "D", 0.448276 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.650000 AS "P_3", 3 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.600000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.187500 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.812500 AS "P_3", 3 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.071429 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.928571 AS "P_3", 3 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 0.842105 AS "P_1", 0.000000 AS "P_2", 0.157895 AS "P_3", 1 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.928571 AS "P_1", 0.000000 AS "P_2", 0.071429 AS "P_3", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 0.600000 AS "P_1", 0.000000 AS "P_2", 0.400000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_46", t1."Leaf_47", t1."Leaf_51", t1."Leaf_52", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_59", t1."Leaf_60", t1."Leaf_62", t1."Leaf_63", t1."Leaf_64", t1."Leaf_66", t1."Leaf_67", t1."Leaf_68" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_2" <= -1.327878)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_2" > -1.327878) AND (t."X_7" <= -0.318620) AND (t."X_6" <= 4.478524)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_2" > -1.327878) AND (t."X_7" <= -0.318620) AND (t."X_6" > 4.478524)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_2" > -1.327878) AND (t."X_7" > -0.318620) AND (t."X_8" > 0.056433) AND (t."X_9" <= -0.461643)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_2" > -1.327878) AND (t."X_7" > -0.318620) AND (t."X_8" > 0.056433) AND (t."X_9" > -0.461643)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_2" > -1.327878) AND (t."X_7" > -0.318620) AND (t."X_8" <= 0.056433) AND (t."X_2" <= -0.747664)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_2" > -1.327878) AND (t."X_7" > -0.318620) AND (t."X_8" <= 0.056433) AND (t."X_2" > -0.747664) AND (t."X_6" <= 2.222849)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_2" > -1.327878) AND (t."X_7" > -0.318620) AND (t."X_8" <= 0.056433) AND (t."X_2" > -0.747664) AND (t."X_6" > 2.222849)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_6" <= -0.759540) AND (t."X_8" <= 0.476894) AND (t."X_7" <= -0.554869)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_6" <= -0.759540) AND (t."X_8" <= 0.476894) AND (t."X_7" > -0.554869)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_6" > -0.759540) AND (t."X_6" <= -0.358955)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_6" > -0.759540) AND (t."X_6" > -0.358955) AND (t."X_9" > 0.544510)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_6" > -0.759540) AND (t."X_6" > -0.358955) AND (t."X_9" <= 0.544510) AND (t."X_6" <= 0.396939)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_6" > -0.759540) AND (t."X_6" > -0.358955) AND (t."X_9" <= 0.544510) AND (t."X_6" > 0.396939)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_6" <= -0.759540) AND (t."X_8" > 0.476894) AND (t."X_6" <= -4.384024)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_6" <= -0.759540) AND (t."X_8" > 0.476894) AND (t."X_6" > -4.384024) AND (t."X_8" <= 0.727806) AND (t."X_2" <= 1.209190)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_6" <= -0.759540) AND (t."X_8" > 0.476894) AND (t."X_6" > -4.384024) AND (t."X_8" <= 0.727806) AND (t."X_2" > 1.209190)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" <= -1.140923) AND (t."X_8" > 0.224561) AND (t."X_8" <= 1.897871)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" <= -1.140923) AND (t."X_8" > 0.224561) AND (t."X_8" > 1.897871)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 0.224561) AND (t."X_2" <= -1.200194)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" > 0.073393) AND (t."X_2" > 1.978962)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" > 0.073393) AND (t."X_2" <= 1.978962) AND (t."X_9" <= -1.023879)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 0.224561) AND (t."X_2" > -1.200194) AND (t."X_6" > 0.055975) AND (t."X_6" <= 0.143542)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 0.224561) AND (t."X_2" > -1.200194) AND (t."X_6" > 0.055975) AND (t."X_6" > 0.143542)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_6" <= -0.759540) AND (t."X_8" > 0.476894) AND (t."X_6" > -4.384024) AND (t."X_8" > 0.727806) AND (t."X_7" > -0.824037)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_6" <= -0.759540) AND (t."X_8" > 0.476894) AND (t."X_6" > -4.384024) AND (t."X_8" > 0.727806) AND (t."X_7" <= -0.824037) AND (t."X_9" <= -0.858643)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_6" <= -0.759540) AND (t."X_8" > 0.476894) AND (t."X_6" > -4.384024) AND (t."X_8" > 0.727806) AND (t."X_7" <= -0.824037) AND (t."X_9" > -0.858643)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" > 0.073393) AND (t."X_2" <= 1.978962) AND (t."X_9" > -1.023879) AND (t."X_5" > 1.563802) AND (t."X_9" <= 0.403962)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" > 0.073393) AND (t."X_2" <= 1.978962) AND (t."X_9" > -1.023879) AND (t."X_5" > 1.563802) AND (t."X_9" > 0.403962)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 0.224561) AND (t."X_2" > -1.200194) AND (t."X_6" <= 0.055975) AND (t."X_7" > -1.705350)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 0.224561) AND (t."X_2" > -1.200194) AND (t."X_6" <= 0.055975) AND (t."X_7" <= -1.705350) AND (t."X_2" <= 0.283227)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 0.224561) AND (t."X_2" > -1.200194) AND (t."X_6" <= 0.055975) AND (t."X_7" <= -1.705350) AND (t."X_2" > 0.283227)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" > 0.073393) AND (t."X_2" <= 1.978962) AND (t."X_9" > -1.023879) AND (t."X_5" <= 1.563802) AND (t."X_5" > -1.039600)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" > 0.073393) AND (t."X_2" <= 1.978962) AND (t."X_9" > -1.023879) AND (t."X_5" <= 1.563802) AND (t."X_5" <= -1.039600) AND (t."X_8" <= 0.398613)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" > 0.073393) AND (t."X_2" <= 1.978962) AND (t."X_9" > -1.023879) AND (t."X_5" <= 1.563802) AND (t."X_5" <= -1.039600) AND (t."X_8" > 0.398613)) THEN 68 ELSE NULL END AS "Leaf_68"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.210938 AS "P_0", 0.281250 AS "P_1", 0.304688 AS "P_2", 0.203125 AS "P_3", 2 AS "D", 0.304688 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.271739 AS "P_0", 0.336957 AS "P_1", 0.217391 AS "P_2", 0.173913 AS "P_3", 1 AS "D", 0.336957 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.055556 AS "P_0", 0.138889 AS "P_1", 0.527778 AS "P_2", 0.277778 AS "P_3", 2 AS "D", 0.527778 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.380952 AS "P_0", 0.111111 AS "P_1", 0.269841 AS "P_2", 0.238095 AS "P_3", 0 AS "D", 0.380952 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.034483 AS "P_0", 0.827586 AS "P_1", 0.103448 AS "P_2", 0.034483 AS "P_3", 1 AS "D", 0.827586 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.074074 AS "P_0", 0.185185 AS "P_1", 0.370370 AS "P_2", 0.370370 AS "P_3", 2 AS "D", 0.370370 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.133333 AS "P_0", 0.333333 AS "P_1", 0.533333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.100000 AS "P_0", 0.100000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.111111 AS "P_0", 0.000000 AS "P_1", 0.888889 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.640000 AS "P_0", 0.000000 AS "P_1", 0.040000 AS "P_2", 0.320000 AS "P_3", 0 AS "D", 0.640000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.210526 AS "P_0", 0.184211 AS "P_1", 0.421053 AS "P_2", 0.184211 AS "P_3", 2 AS "D", 0.421053 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.291667 AS "P_1", 0.416667 AS "P_2", 0.291667 AS "P_3", 2 AS "D", 0.416667 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.571429 AS "P_0", 0.000000 AS "P_1", 0.428571 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.818182 AS "P_2", 0.181818 AS "P_3", 2 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.538462 AS "P_1", 0.076923 AS "P_2", 0.384615 AS "P_3", 1 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.700000 AS "P_1", 0.100000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.857143 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.777778 AS "P_0", 0.000000 AS "P_1", 0.055556 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.285714 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.714286 AS "P_3", 3 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.823529 AS "P_0", 0.000000 AS "P_1", 0.058824 AS "P_2", 0.117647 AS "P_3", 0 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.035714 AS "P_0", 0.857143 AS "P_1", 0.107143 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.038462 AS "P_0", 0.923077 AS "P_1", 0.038462 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.916667 AS "P_0", 0.000000 AS "P_1", 0.083333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.600000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.400000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 0.958333 AS "P_1", 0.041667 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_40", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48", t1."Leaf_50", t1."Leaf_52", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58", t1."Leaf_60", t1."Leaf_61", t1."Leaf_64", t1."Leaf_65", t1."Leaf_67", t1."Leaf_68" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > -0.327176) AND (t."X_3" > 1.240127) AND (t."X_5" <= -0.880503)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_7" > -0.327176) AND (t."X_3" > 1.240127) AND (t."X_5" > -0.880503) AND (t."X_8" <= -0.154754)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_7" > -0.327176) AND (t."X_3" > 1.240127) AND (t."X_5" > -0.880503) AND (t."X_8" > -0.154754)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_7" > -0.327176) AND (t."X_3" <= 1.240127) AND (t."X_8" > -0.297102) AND (t."X_5" <= 0.659441)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_7" > -0.327176) AND (t."X_3" <= 1.240127) AND (t."X_8" > -0.297102) AND (t."X_5" > 0.659441) AND (t."X_3" > -1.225831)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_7" > -0.327176) AND (t."X_3" <= 1.240127) AND (t."X_8" > -0.297102) AND (t."X_5" > 0.659441) AND (t."X_3" <= -1.225831) AND (t."X_9" > 0.541978)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_7" > -0.327176) AND (t."X_3" <= 1.240127) AND (t."X_8" > -0.297102) AND (t."X_5" > 0.659441) AND (t."X_3" <= -1.225831) AND (t."X_9" <= 0.541978) AND (t."X_3" <= -1.558811)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_7" > -0.327176) AND (t."X_3" <= 1.240127) AND (t."X_8" > -0.297102) AND (t."X_5" > 0.659441) AND (t."X_3" <= -1.225831) AND (t."X_9" <= 0.541978) AND (t."X_3" > -1.558811) AND (t."X_9" <= -0.626207)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_7" > -0.327176) AND (t."X_3" <= 1.240127) AND (t."X_8" > -0.297102) AND (t."X_5" > 0.659441) AND (t."X_3" <= -1.225831) AND (t."X_9" <= 0.541978) AND (t."X_3" > -1.558811) AND (t."X_9" > -0.626207) AND (t."X_3" <= -1.477915)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_7" > -0.327176) AND (t."X_3" <= 1.240127) AND (t."X_8" > -0.297102) AND (t."X_5" > 0.659441) AND (t."X_3" <= -1.225831) AND (t."X_9" <= 0.541978) AND (t."X_3" > -1.558811) AND (t."X_9" > -0.626207) AND (t."X_3" > -1.477915)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" <= 0.069852) AND (t."X_9" <= -1.481201) AND (t."X_9" > -1.987950)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" <= 0.069852) AND (t."X_9" <= -1.481201) AND (t."X_9" <= -1.987950) AND (t."X_9" <= -2.076020)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" <= 0.069852) AND (t."X_9" <= -1.481201) AND (t."X_9" <= -1.987950) AND (t."X_9" > -2.076020)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" > 0.069852) AND (t."X_7" <= -1.330091) AND (t."X_5" <= -0.938651) AND (t."X_3" <= -0.721234)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" > 0.069852) AND (t."X_7" <= -1.330091) AND (t."X_5" <= -0.938651) AND (t."X_3" > -0.721234)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" > 0.069852) AND (t."X_7" > -1.330091) AND (t."X_8" <= 0.001163) AND (t."X_3" <= 0.556273)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" > 0.069852) AND (t."X_7" > -1.330091) AND (t."X_8" <= 0.001163) AND (t."X_3" > 0.556273)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" > 0.069852) AND (t."X_7" > -1.330091) AND (t."X_8" > 0.001163) AND (t."X_9" > 0.661703)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" > 0.069852) AND (t."X_7" > -1.330091) AND (t."X_8" > 0.001163) AND (t."X_9" <= 0.661703) AND (t."X_5" <= -0.472881)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" > 0.069852) AND (t."X_7" > -1.330091) AND (t."X_8" > 0.001163) AND (t."X_9" <= 0.661703) AND (t."X_5" > -0.472881)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" > 0.069852) AND (t."X_7" <= -1.330091) AND (t."X_5" > -0.938651) AND (t."X_9" > 0.469315)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" > 0.069852) AND (t."X_7" <= -1.330091) AND (t."X_5" > -0.938651) AND (t."X_9" <= 0.469315) AND (t."X_9" <= 0.386424)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" > 0.069852) AND (t."X_7" <= -1.330091) AND (t."X_5" > -0.938651) AND (t."X_9" <= 0.469315) AND (t."X_9" > 0.386424)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" <= 0.069852) AND (t."X_9" > -1.481201) AND (t."X_3" > 0.087158)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" <= 0.069852) AND (t."X_9" > -1.481201) AND (t."X_3" <= 0.087158) AND (t."X_7" > -0.730440)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" <= 0.069852) AND (t."X_9" > -1.481201) AND (t."X_3" <= 0.087158) AND (t."X_7" <= -0.730440) AND (t."X_9" <= -0.499828) AND (t."X_5" <= 1.281665)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" <= 0.069852) AND (t."X_9" > -1.481201) AND (t."X_3" <= 0.087158) AND (t."X_7" <= -0.730440) AND (t."X_9" <= -0.499828) AND (t."X_5" > 1.281665)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" <= 0.069852) AND (t."X_9" > -1.481201) AND (t."X_3" <= 0.087158) AND (t."X_7" <= -0.730440) AND (t."X_9" > -0.499828) AND (t."X_9" <= -0.317414)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_7" <= -0.327176) AND (t."X_9" <= 0.069852) AND (t."X_9" > -1.481201) AND (t."X_3" <= 0.087158) AND (t."X_7" <= -0.730440) AND (t."X_9" > -0.499828) AND (t."X_9" > -0.317414)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_7" > -0.327176) AND (t."X_3" <= 1.240127) AND (t."X_8" <= -0.297102) AND (t."X_7" > 0.960379)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_7" > -0.327176) AND (t."X_3" <= 1.240127) AND (t."X_8" <= -0.297102) AND (t."X_7" <= 0.960379) AND (t."X_5" <= -0.921327)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_7" > -0.327176) AND (t."X_3" <= 1.240127) AND (t."X_8" <= -0.297102) AND (t."X_7" <= 0.960379) AND (t."X_5" > -0.921327) AND (t."X_7" > 0.824968)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_7" > -0.327176) AND (t."X_3" <= 1.240127) AND (t."X_8" <= -0.297102) AND (t."X_7" <= 0.960379) AND (t."X_5" > -0.921327) AND (t."X_7" <= 0.824968) AND (t."X_5" <= 0.555245)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_7" > -0.327176) AND (t."X_3" <= 1.240127) AND (t."X_8" <= -0.297102) AND (t."X_7" <= 0.960379) AND (t."X_5" > -0.921327) AND (t."X_7" <= 0.824968) AND (t."X_5" > 0.555245) AND (t."X_9" <= -0.025397)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_7" > -0.327176) AND (t."X_3" <= 1.240127) AND (t."X_8" <= -0.297102) AND (t."X_7" <= 0.960379) AND (t."X_5" > -0.921327) AND (t."X_7" <= 0.824968) AND (t."X_5" > 0.555245) AND (t."X_9" > -0.025397)) THEN 68 ELSE NULL END AS "Leaf_68"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.265625 AS "P_0", 0.296875 AS "P_1", 0.273438 AS "P_2", 0.164062 AS "P_3", 1 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.333333 AS "P_0", 0.075758 AS "P_1", 0.318182 AS "P_2", 0.272727 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.193548 AS "P_0", 0.532258 AS "P_1", 0.225806 AS "P_2", 0.048387 AS "P_3", 1 AS "D", 0.532258 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.127273 AS "P_0", 0.600000 AS "P_1", 0.254545 AS "P_2", 0.018182 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.714286 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.285714 AS "P_3", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.125000 AS "P_0", 0.062500 AS "P_1", 0.812500 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.128205 AS "P_0", 0.820513 AS "P_1", 0.025641 AS "P_2", 0.025641 AS "P_3", 1 AS "D", 0.820513 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.384615 AS "P_0", 0.461538 AS "P_1", 0.076923 AS "P_2", 0.076923 AS "P_3", 1 AS "D", 0.461538 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.625000 AS "P_0", 0.125000 AS "P_1", 0.125000 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.250000 AS "P_0", 0.250000 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.250000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.566667 AS "P_0", 0.066667 AS "P_1", 0.266667 AS "P_2", 0.100000 AS "P_3", 0 AS "D", 0.566667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.138889 AS "P_0", 0.083333 AS "P_1", 0.361111 AS "P_2", 0.416667 AS "P_3", 3 AS "D", 0.416667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.714286 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.695652 AS "P_0", 0.086957 AS "P_1", 0.130435 AS "P_2", 0.086957 AS "P_3", 0 AS "D", 0.695652 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.230769 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.692308 AS "P_3", 3 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.086957 AS "P_0", 0.130435 AS "P_1", 0.521739 AS "P_2", 0.260870 AS "P_3", 2 AS "D", 0.521739 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.888889 AS "P_3", 3 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.285714 AS "P_0", 0.428571 AS "P_1", 0.000000 AS "P_2", 0.285714 AS "P_3", 1 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.500000 AS "P_0", 0.142857 AS "P_1", 0.214286 AS "P_2", 0.142857 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.222222 AS "P_0", 0.222222 AS "P_1", 0.333333 AS "P_2", 0.222222 AS "P_3", 2 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.600000 AS "P_2", 0.400000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.285714 AS "P_0", 0.142857 AS "P_1", 0.571429 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.166667 AS "P_0", 0.166667 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_41", t1."Leaf_43", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_56", t1."Leaf_58", t1."Leaf_59", t1."Leaf_60", t1."Leaf_62", t1."Leaf_63", t1."Leaf_64", t1."Leaf_65", t1."Leaf_67", t1."Leaf_68" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" > -0.927876) AND (t."X_1" > 1.441090) AND (t."X_9" <= -0.081398)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" > -0.927876) AND (t."X_1" > 1.441090) AND (t."X_9" > -0.081398) AND (t."X_8" <= 1.485610)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" > -0.927876) AND (t."X_1" > 1.441090) AND (t."X_9" > -0.081398) AND (t."X_8" > 1.485610)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" <= -0.927876) AND (t."X_8" > -0.218628) AND (t."X_2" > -0.778356)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" <= -0.927876) AND (t."X_8" > -0.218628) AND (t."X_2" <= -0.778356) AND (t."X_1" <= -1.806087)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" <= -0.927876) AND (t."X_8" > -0.218628) AND (t."X_2" <= -0.778356) AND (t."X_1" > -1.806087)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" > -0.927876) AND (t."X_1" <= 1.441090) AND (t."X_1" <= -0.280587)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" > -0.927876) AND (t."X_1" <= 1.441090) AND (t."X_1" > -0.280587) AND (t."X_7" <= -1.185406) AND (t."X_2" > 0.780748)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" > -0.927876) AND (t."X_1" <= 1.441090) AND (t."X_1" > -0.280587) AND (t."X_7" <= -1.185406) AND (t."X_2" <= 0.780748) AND (t."X_9" <= -0.240241)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" > -0.927876) AND (t."X_1" <= 1.441090) AND (t."X_1" > -0.280587) AND (t."X_7" <= -1.185406) AND (t."X_2" <= 0.780748) AND (t."X_9" > -0.240241) AND (t."X_8" <= -0.437507)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" > -0.927876) AND (t."X_1" <= 1.441090) AND (t."X_1" > -0.280587) AND (t."X_7" <= -1.185406) AND (t."X_2" <= 0.780748) AND (t."X_9" > -0.240241) AND (t."X_8" > -0.437507)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" > -0.927876) AND (t."X_1" <= 1.441090) AND (t."X_1" > -0.280587) AND (t."X_7" > -1.185406) AND (t."X_1" <= 0.205688)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" > -0.927876) AND (t."X_1" <= 1.441090) AND (t."X_1" > -0.280587) AND (t."X_7" > -1.185406) AND (t."X_1" > 0.205688) AND (t."X_2" > 1.134310)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" > -0.927876) AND (t."X_1" <= 1.441090) AND (t."X_1" > -0.280587) AND (t."X_7" > -1.185406) AND (t."X_1" > 0.205688) AND (t."X_2" <= 1.134310) AND (t."X_7" <= -0.444166)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" > -0.927876) AND (t."X_1" <= 1.441090) AND (t."X_1" > -0.280587) AND (t."X_7" > -1.185406) AND (t."X_1" > 0.205688) AND (t."X_2" <= 1.134310) AND (t."X_7" > -0.444166)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" <= -0.927876) AND (t."X_8" <= -0.218628) AND (t."X_9" > -0.159205)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" <= -0.927876) AND (t."X_8" <= -0.218628) AND (t."X_9" <= -0.159205) AND (t."X_7" <= -1.657393)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_7" <= -0.366585) AND (t."X_1" <= -0.927876) AND (t."X_8" <= -0.218628) AND (t."X_9" <= -0.159205) AND (t."X_7" > -1.657393)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" <= 0.002878) AND (t."X_8" <= 0.008976) AND (t."X_8" <= -1.444781)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" <= 0.002878) AND (t."X_8" <= 0.008976) AND (t."X_8" > -1.444781) AND (t."X_9" <= -1.206402)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" <= 0.002878) AND (t."X_8" <= 0.008976) AND (t."X_8" > -1.444781) AND (t."X_9" > -1.206402) AND (t."X_7" <= 0.125538)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" <= 0.002878) AND (t."X_8" <= 0.008976) AND (t."X_8" > -1.444781) AND (t."X_9" > -1.206402) AND (t."X_7" > 0.125538) AND (t."X_1" <= -1.149091)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" <= 0.002878) AND (t."X_8" <= 0.008976) AND (t."X_8" > -1.444781) AND (t."X_9" > -1.206402) AND (t."X_7" > 0.125538) AND (t."X_1" > -1.149091)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" > 0.002878) AND (t."X_9" <= 0.053666)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" > 0.002878) AND (t."X_9" > 0.053666) AND (t."X_2" <= -1.262777)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" > 0.002878) AND (t."X_9" > 0.053666) AND (t."X_2" > -1.262777) AND (t."X_8" > -0.408378) AND (t."X_8" > 0.327133)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" > 0.002878) AND (t."X_9" > 0.053666) AND (t."X_2" > -1.262777) AND (t."X_8" > -0.408378) AND (t."X_8" <= 0.327133) AND (t."X_7" > 0.871060)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" > 0.002878) AND (t."X_9" > 0.053666) AND (t."X_2" > -1.262777) AND (t."X_8" > -0.408378) AND (t."X_8" <= 0.327133) AND (t."X_7" <= 0.871060) AND (t."X_1" <= 1.408270)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" > 0.002878) AND (t."X_9" > 0.053666) AND (t."X_2" > -1.262777) AND (t."X_8" > -0.408378) AND (t."X_8" <= 0.327133) AND (t."X_7" <= 0.871060) AND (t."X_1" > 1.408270)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" > 0.002878) AND (t."X_9" > 0.053666) AND (t."X_2" > -1.262777) AND (t."X_8" <= -0.408378) AND (t."X_9" > 0.340017)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" > 0.002878) AND (t."X_9" > 0.053666) AND (t."X_2" > -1.262777) AND (t."X_8" <= -0.408378) AND (t."X_9" <= 0.340017) AND (t."X_9" <= 0.140905)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" > 0.002878) AND (t."X_9" > 0.053666) AND (t."X_2" > -1.262777) AND (t."X_8" <= -0.408378) AND (t."X_9" <= 0.340017) AND (t."X_9" > 0.140905)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" <= 0.002878) AND (t."X_8" > 0.008976) AND (t."X_2" <= 0.294183)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" <= 0.002878) AND (t."X_8" > 0.008976) AND (t."X_2" > 0.294183) AND (t."X_7" <= 1.945988)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_7" > -0.366585) AND (t."X_9" <= 0.002878) AND (t."X_8" > 0.008976) AND (t."X_2" > 0.294183) AND (t."X_7" > 1.945988)) THEN 68 ELSE NULL END AS "Leaf_68"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.265625 AS "P_1", 0.320312 AS "P_2", 0.164062 AS "P_3", 2 AS "D", 0.320312 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.376812 AS "P_0", 0.072464 AS "P_1", 0.289855 AS "P_2", 0.260870 AS "P_3", 0 AS "D", 0.376812 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.101695 AS "P_0", 0.491525 AS "P_1", 0.355932 AS "P_2", 0.050847 AS "P_3", 1 AS "D", 0.491525 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.538462 AS "P_0", 0.076923 AS "P_1", 0.000000 AS "P_2", 0.384615 AS "P_3", 0 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.279070 AS "P_0", 0.069767 AS "P_1", 0.465116 AS "P_2", 0.186047 AS "P_3", 2 AS "D", 0.465116 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.090909 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.909091 AS "P_3", 3 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.866667 AS "P_0", 0.133333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.242424 AS "P_0", 0.090909 AS "P_1", 0.606061 AS "P_2", 0.060606 AS "P_3", 2 AS "D", 0.606061 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.125000 AS "P_1", 0.458333 AS "P_2", 0.083333 AS "P_3", 2 AS "D", 0.458333 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.700000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.200000 AS "P_3", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.071429 AS "P_0", 0.214286 AS "P_1", 0.714286 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.083333 AS "P_0", 0.083333 AS "P_1", 0.833333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.090909 AS "P_0", 0.000000 AS "P_1", 0.909091 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.034483 AS "P_0", 0.689655 AS "P_1", 0.206897 AS "P_2", 0.068966 AS "P_3", 1 AS "D", 0.689655 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.166667 AS "P_0", 0.300000 AS "P_1", 0.500000 AS "P_2", 0.033333 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.111111 AS "P_0", 0.111111 AS "P_1", 0.555556 AS "P_2", 0.222222 AS "P_3", 2 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.950000 AS "P_1", 0.050000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.200000 AS "P_0", 0.200000 AS "P_1", 0.200000 AS "P_2", 0.400000 AS "P_3", 3 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.074074 AS "P_0", 0.333333 AS "P_1", 0.555556 AS "P_2", 0.037037 AS "P_3", 2 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.100000 AS "P_0", 0.450000 AS "P_1", 0.400000 AS "P_2", 0.050000 AS "P_3", 1 AS "D", 0.450000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.200000 AS "P_0", 0.700000 AS "P_1", 0.000000 AS "P_2", 0.100000 AS "P_3", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.500000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_11", t1."Leaf_12", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_40", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_53", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 1.017593) AND (t."X_0" <= -2.629843)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_2" > 1.017593) AND (t."X_0" > -2.629843) AND (t."X_7" <= -1.879808)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_2" > 1.017593) AND (t."X_0" > -2.629843) AND (t."X_7" > -1.879808) AND (t."X_3" <= -2.494795) AND (t."X_9" <= 0.506193)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_2" > 1.017593) AND (t."X_0" > -2.629843) AND (t."X_7" > -1.879808) AND (t."X_3" <= -2.494795) AND (t."X_9" > 0.506193)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" > -1.166585) AND (t."X_3" > -1.784397) AND (t."X_3" > 1.240127)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" > -1.166585) AND (t."X_3" > -1.784397) AND (t."X_3" <= 1.240127) AND (t."X_8" > 0.208819) AND (t."X_8" <= 2.832555)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" > -1.166585) AND (t."X_3" > -1.784397) AND (t."X_3" <= 1.240127) AND (t."X_8" > 0.208819) AND (t."X_8" > 2.832555)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" > -1.166585) AND (t."X_3" > -1.784397) AND (t."X_3" <= 1.240127) AND (t."X_8" <= 0.208819) AND (t."X_0" > 0.680533)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" > -1.166585) AND (t."X_3" > -1.784397) AND (t."X_3" <= 1.240127) AND (t."X_8" <= 0.208819) AND (t."X_0" <= 0.680533) AND (t."X_0" > -0.548044) AND (t."X_3" <= -0.681106)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" > -1.166585) AND (t."X_3" > -1.784397) AND (t."X_3" <= 1.240127) AND (t."X_8" <= 0.208819) AND (t."X_0" <= 0.680533) AND (t."X_0" > -0.548044) AND (t."X_3" > -0.681106) AND (t."X_9" <= 1.037915)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" > -1.166585) AND (t."X_3" > -1.784397) AND (t."X_3" <= 1.240127) AND (t."X_8" <= 0.208819) AND (t."X_0" <= 0.680533) AND (t."X_0" > -0.548044) AND (t."X_3" > -0.681106) AND (t."X_9" > 1.037915)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" > -1.166585) AND (t."X_3" > -1.784397) AND (t."X_3" <= 1.240127) AND (t."X_8" <= 0.208819) AND (t."X_0" <= 0.680533) AND (t."X_0" <= -0.548044) AND (t."X_8" <= -1.852134)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" > -1.166585) AND (t."X_3" > -1.784397) AND (t."X_3" <= 1.240127) AND (t."X_8" <= 0.208819) AND (t."X_0" <= 0.680533) AND (t."X_0" <= -0.548044) AND (t."X_8" > -1.852134) AND (t."X_3" > -0.767713)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" > -1.166585) AND (t."X_3" > -1.784397) AND (t."X_3" <= 1.240127) AND (t."X_8" <= 0.208819) AND (t."X_0" <= 0.680533) AND (t."X_0" <= -0.548044) AND (t."X_8" > -1.852134) AND (t."X_3" <= -0.767713) AND (t."X_9" > 0.233414)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" > -1.166585) AND (t."X_3" > -1.784397) AND (t."X_3" <= 1.240127) AND (t."X_8" <= 0.208819) AND (t."X_0" <= 0.680533) AND (t."X_0" <= -0.548044) AND (t."X_8" > -1.852134) AND (t."X_3" <= -0.767713) AND (t."X_9" <= 0.233414) AND (t."X_3" <= -1.406651)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" > -1.166585) AND (t."X_3" > -1.784397) AND (t."X_3" <= 1.240127) AND (t."X_8" <= 0.208819) AND (t."X_0" <= 0.680533) AND (t."X_0" <= -0.548044) AND (t."X_8" > -1.852134) AND (t."X_3" <= -0.767713) AND (t."X_9" <= 0.233414) AND (t."X_3" > -1.406651)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" <= -1.166585) AND (t."X_7" > -1.544300) AND (t."X_3" > 0.416071)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" <= -1.166585) AND (t."X_7" > -1.544300) AND (t."X_3" <= 0.416071) AND (t."X_9" > 0.571976)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" <= -1.166585) AND (t."X_7" <= -1.544300) AND (t."X_8" <= 1.868851)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" <= -1.166585) AND (t."X_7" <= -1.544300) AND (t."X_8" > 1.868851) AND (t."X_9" <= 0.238539)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" <= -1.166585) AND (t."X_7" <= -1.544300) AND (t."X_8" > 1.868851) AND (t."X_9" > 0.238539)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" <= -1.166585) AND (t."X_7" > -1.544300) AND (t."X_3" <= 0.416071) AND (t."X_9" <= 0.571976) AND (t."X_3" > -1.273025)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" <= -1.166585) AND (t."X_7" > -1.544300) AND (t."X_3" <= 0.416071) AND (t."X_9" <= 0.571976) AND (t."X_3" <= -1.273025) AND (t."X_3" <= -2.104465)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" <= -1.166585) AND (t."X_7" > -1.544300) AND (t."X_3" <= 0.416071) AND (t."X_9" <= 0.571976) AND (t."X_3" <= -1.273025) AND (t."X_3" > -2.104465)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_2" > 1.017593) AND (t."X_0" > -2.629843) AND (t."X_7" > -1.879808) AND (t."X_3" > -2.494795) AND (t."X_0" <= -0.496206)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_2" > 1.017593) AND (t."X_0" > -2.629843) AND (t."X_7" > -1.879808) AND (t."X_3" > -2.494795) AND (t."X_0" > -0.496206) AND (t."X_8" <= -0.256948)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_2" > 1.017593) AND (t."X_0" > -2.629843) AND (t."X_7" > -1.879808) AND (t."X_3" > -2.494795) AND (t."X_0" > -0.496206) AND (t."X_8" > -0.256948) AND (t."X_3" <= -0.294542)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_2" > 1.017593) AND (t."X_0" > -2.629843) AND (t."X_7" > -1.879808) AND (t."X_3" > -2.494795) AND (t."X_0" > -0.496206) AND (t."X_8" > -0.256948) AND (t."X_3" > -0.294542) AND (t."X_9" <= 0.425020)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_2" > 1.017593) AND (t."X_0" > -2.629843) AND (t."X_7" > -1.879808) AND (t."X_3" > -2.494795) AND (t."X_0" > -0.496206) AND (t."X_8" > -0.256948) AND (t."X_3" > -0.294542) AND (t."X_9" > 0.425020)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" > -1.166585) AND (t."X_3" <= -1.784397) AND (t."X_7" <= 1.525100)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" > -1.166585) AND (t."X_3" <= -1.784397) AND (t."X_7" > 1.525100) AND (t."X_2" <= 0.458446)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_2" <= 1.017593) AND (t."X_7" > -1.166585) AND (t."X_3" <= -1.784397) AND (t."X_7" > 1.525100) AND (t."X_2" > 0.458446)) THEN 62 ELSE NULL END AS "Leaf_62"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.148438 AS "P_0", 0.273438 AS "P_1", 0.250000 AS "P_2", 0.328125 AS "P_3", 3 AS "D", 0.328125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.147059 AS "P_0", 0.303922 AS "P_1", 0.303922 AS "P_2", 0.245098 AS "P_3", 1 AS "D", 0.303922 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.153846 AS "P_0", 0.153846 AS "P_1", 0.038462 AS "P_2", 0.653846 AS "P_3", 3 AS "D", 0.653846 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.259259 AS "P_0", 0.000000 AS "P_1", 0.037037 AS "P_2", 0.703704 AS "P_3", 3 AS "D", 0.703704 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.106667 AS "P_0", 0.413333 AS "P_1", 0.400000 AS "P_2", 0.080000 AS "P_3", 1 AS "D", 0.413333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.166667 AS "P_0", 0.083333 AS "P_1", 0.041667 AS "P_2", 0.708333 AS "P_3", 3 AS "D", 0.708333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.090909 AS "P_0", 0.090909 AS "P_1", 0.045455 AS "P_2", 0.772727 AS "P_3", 3 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.050000 AS "P_0", 0.050000 AS "P_1", 0.050000 AS "P_2", 0.850000 AS "P_3", 3 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.076923 AS "P_1", 0.923077 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.129032 AS "P_0", 0.483871 AS "P_1", 0.290323 AS "P_2", 0.096774 AS "P_3", 1 AS "D", 0.483871 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.052632 AS "P_0", 0.526316 AS "P_1", 0.315789 AS "P_2", 0.105263 AS "P_3", 1 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.107143 AS "P_0", 0.107143 AS "P_1", 0.642857 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.931035 AS "P_1", 0.000000 AS "P_2", 0.068966 AS "P_3", 1 AS "D", 0.931035 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.176471 AS "P_0", 0.176471 AS "P_1", 0.411765 AS "P_2", 0.235294 AS "P_3", 2 AS "D", 0.411765 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.090909 AS "P_0", 0.090909 AS "P_1", 0.636364 AS "P_2", 0.181818 AS "P_3", 2 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.100000 AS "P_1", 0.700000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.250000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.157895 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.842105 AS "P_3", 3 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.125000 AS "P_2", 0.375000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.100000 AS "P_0", 0.100000 AS "P_1", 0.100000 AS "P_2", 0.700000 AS "P_3", 3 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44", t1."Leaf_46", t1."Leaf_47", t1."Leaf_49", t1."Leaf_50", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" <= 0.144269) AND (t."X_1" > -1.375497) AND (t."X_7" <= -1.125393) AND (t."X_7" > -1.340370) AND (t."X_9" <= 0.050205)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_8" <= 0.144269) AND (t."X_1" > -1.375497) AND (t."X_7" <= -1.125393) AND (t."X_7" > -1.340370) AND (t."X_9" > 0.050205) AND (t."X_9" <= 0.911503)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_8" <= 0.144269) AND (t."X_1" > -1.375497) AND (t."X_7" <= -1.125393) AND (t."X_7" > -1.340370) AND (t."X_9" > 0.050205) AND (t."X_9" > 0.911503)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_8" <= 0.144269) AND (t."X_1" > -1.375497) AND (t."X_7" <= -1.125393) AND (t."X_7" <= -1.340370) AND (t."X_1" <= -0.364112)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_8" <= 0.144269) AND (t."X_1" > -1.375497) AND (t."X_7" <= -1.125393) AND (t."X_7" <= -1.340370) AND (t."X_1" > -0.364112)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_8" > 0.144269) AND (t."X_7" <= -0.989518) AND (t."X_1" <= -0.206592)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_8" > 0.144269) AND (t."X_7" <= -0.989518) AND (t."X_1" > -0.206592) AND (t."X_9" <= -0.493614)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_8" > 0.144269) AND (t."X_7" <= -0.989518) AND (t."X_1" > -0.206592) AND (t."X_9" > -0.493614)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_8" <= 0.144269) AND (t."X_1" <= -1.375497) AND (t."X_8" <= -0.858064)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_8" <= 0.144269) AND (t."X_1" <= -1.375497) AND (t."X_8" > -0.858064)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_8" > 0.144269) AND (t."X_7" > -0.989518) AND (t."X_7" <= 0.023262) AND (t."X_1" <= -0.826419) AND (t."X_8" <= 2.154322)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_8" > 0.144269) AND (t."X_7" > -0.989518) AND (t."X_7" <= 0.023262) AND (t."X_1" <= -0.826419) AND (t."X_8" > 2.154322)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_8" > 0.144269) AND (t."X_7" > -0.989518) AND (t."X_7" <= 0.023262) AND (t."X_1" > -0.826419) AND (t."X_1" > 0.594581)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_8" > 0.144269) AND (t."X_7" > -0.989518) AND (t."X_7" <= 0.023262) AND (t."X_1" > -0.826419) AND (t."X_1" <= 0.594581) AND (t."X_8" <= 0.387754)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_8" > 0.144269) AND (t."X_7" > -0.989518) AND (t."X_7" <= 0.023262) AND (t."X_1" > -0.826419) AND (t."X_1" <= 0.594581) AND (t."X_8" > 0.387754)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_8" > 0.144269) AND (t."X_7" > -0.989518) AND (t."X_7" > 0.023262) AND (t."X_9" <= -0.800983) AND (t."X_9" <= -1.380338)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_8" > 0.144269) AND (t."X_7" > -0.989518) AND (t."X_7" > 0.023262) AND (t."X_9" <= -0.800983) AND (t."X_9" > -1.380338) AND (t."X_9" <= -1.101069)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_8" > 0.144269) AND (t."X_7" > -0.989518) AND (t."X_7" > 0.023262) AND (t."X_9" <= -0.800983) AND (t."X_9" > -1.380338) AND (t."X_9" > -1.101069)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_8" <= 0.144269) AND (t."X_1" > -1.375497) AND (t."X_7" > -1.125393) AND (t."X_8" > -0.408378) AND (t."X_9" <= -0.051670)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_8" <= 0.144269) AND (t."X_1" > -1.375497) AND (t."X_7" > -1.125393) AND (t."X_8" > -0.408378) AND (t."X_9" > -0.051670) AND (t."X_9" <= 0.444546)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_8" <= 0.144269) AND (t."X_1" > -1.375497) AND (t."X_7" > -1.125393) AND (t."X_8" > -0.408378) AND (t."X_9" > -0.051670) AND (t."X_9" > 0.444546)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_8" > 0.144269) AND (t."X_7" > -0.989518) AND (t."X_7" > 0.023262) AND (t."X_9" > -0.800983) AND (t."X_7" > 0.854988)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_8" > 0.144269) AND (t."X_7" > -0.989518) AND (t."X_7" > 0.023262) AND (t."X_9" > -0.800983) AND (t."X_7" <= 0.854988) AND (t."X_9" <= -0.003508)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_8" > 0.144269) AND (t."X_7" > -0.989518) AND (t."X_7" > 0.023262) AND (t."X_9" > -0.800983) AND (t."X_7" <= 0.854988) AND (t."X_9" > -0.003508) AND (t."X_9" <= 0.222408)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_8" > 0.144269) AND (t."X_7" > -0.989518) AND (t."X_7" > 0.023262) AND (t."X_9" > -0.800983) AND (t."X_7" <= 0.854988) AND (t."X_9" > -0.003508) AND (t."X_9" > 0.222408)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_8" <= 0.144269) AND (t."X_1" > -1.375497) AND (t."X_7" > -1.125393) AND (t."X_8" <= -0.408378) AND (t."X_1" <= -0.957958) AND (t."X_9" <= 0.656249)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_8" <= 0.144269) AND (t."X_1" > -1.375497) AND (t."X_7" > -1.125393) AND (t."X_8" <= -0.408378) AND (t."X_1" <= -0.957958) AND (t."X_9" > 0.656249)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_8" <= 0.144269) AND (t."X_1" > -1.375497) AND (t."X_7" > -1.125393) AND (t."X_8" <= -0.408378) AND (t."X_1" > -0.957958) AND (t."X_8" <= -0.709181)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_8" <= 0.144269) AND (t."X_1" > -1.375497) AND (t."X_7" > -1.125393) AND (t."X_8" <= -0.408378) AND (t."X_1" > -0.957958) AND (t."X_8" > -0.709181) AND (t."X_9" <= 0.340017)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_8" <= 0.144269) AND (t."X_1" > -1.375497) AND (t."X_7" > -1.125393) AND (t."X_8" <= -0.408378) AND (t."X_1" > -0.957958) AND (t."X_8" > -0.709181) AND (t."X_9" > 0.340017)) THEN 58 ELSE NULL END AS "Leaf_58"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.257812 AS "P_0", 0.187500 AS "P_1", 0.335938 AS "P_2", 0.218750 AS "P_3", 2 AS "D", 0.335938 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.183099 AS "P_0", 0.014085 AS "P_1", 0.563380 AS "P_2", 0.239437 AS "P_3", 2 AS "D", 0.563380 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.350877 AS "P_0", 0.403509 AS "P_1", 0.052632 AS "P_2", 0.192982 AS "P_3", 1 AS "D", 0.403509 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.076923 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.923077 AS "P_3", 3 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.206897 AS "P_0", 0.017241 AS "P_1", 0.689655 AS "P_2", 0.086207 AS "P_3", 2 AS "D", 0.689655 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.687500 AS "P_0", 0.000000 AS "P_1", 0.125000 AS "P_2", 0.187500 AS "P_3", 0 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.023810 AS "P_0", 0.023810 AS "P_1", 0.904762 AS "P_2", 0.047619 AS "P_3", 2 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.909091 AS "P_0", 0.000000 AS "P_1", 0.090909 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.500000 AS "P_0", 0.041667 AS "P_1", 0.000000 AS "P_2", 0.458333 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.242424 AS "P_0", 0.666667 AS "P_1", 0.090909 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.083333 AS "P_1", 0.000000 AS "P_2", 0.916667 AS "P_3", 3 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.461538 AS "P_0", 0.384615 AS "P_1", 0.153846 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.461538 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.100000 AS "P_0", 0.850000 AS "P_1", 0.050000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.058824 AS "P_0", 0.941176 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.026316 AS "P_1", 0.947368 AS "P_2", 0.026316 AS "P_3", 2 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 0.029412 AS "P_1", 0.970588 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.970588 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_53", t1."Leaf_54" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > 0.130820) AND (t."X_8" <= 0.008976) AND (t."X_9" <= 0.298970) AND (t."X_7" > 0.443023) AND (t."X_0" > -0.855960)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_7" > 0.130820) AND (t."X_8" <= 0.008976) AND (t."X_9" <= 0.298970) AND (t."X_7" > 0.443023) AND (t."X_0" <= -0.855960) AND (t."X_9" <= -0.378595)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_7" > 0.130820) AND (t."X_8" <= 0.008976) AND (t."X_9" <= 0.298970) AND (t."X_7" > 0.443023) AND (t."X_0" <= -0.855960) AND (t."X_9" > -0.378595)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_7" > 0.130820) AND (t."X_8" <= 0.008976) AND (t."X_9" > 0.298970) AND (t."X_0" <= -1.131716)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_7" > 0.130820) AND (t."X_8" <= 0.008976) AND (t."X_9" > 0.298970) AND (t."X_0" > -1.131716)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_7" > 0.130820) AND (t."X_8" <= 0.008976) AND (t."X_9" <= 0.298970) AND (t."X_7" <= 0.443023) AND (t."X_9" <= -1.251175)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_7" > 0.130820) AND (t."X_8" <= 0.008976) AND (t."X_9" <= 0.298970) AND (t."X_7" <= 0.443023) AND (t."X_9" > -1.251175) AND (t."X_0" <= -0.215499)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_7" > 0.130820) AND (t."X_8" <= 0.008976) AND (t."X_9" <= 0.298970) AND (t."X_7" <= 0.443023) AND (t."X_9" > -1.251175) AND (t."X_0" > -0.215499)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" > 2.542281)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" <= 2.542281) AND (t."X_8" > 2.165874) AND (t."X_9" <= -0.097398)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" <= 2.542281) AND (t."X_8" > 2.165874) AND (t."X_9" > -0.097398)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" <= 2.542281) AND (t."X_8" <= 2.165874) AND (t."X_3" <= -1.063794) AND (t."X_0" > -0.621998)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" <= 2.542281) AND (t."X_8" <= 2.165874) AND (t."X_3" <= -1.063794) AND (t."X_0" <= -0.621998) AND (t."X_8" <= 0.930947)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" <= 2.542281) AND (t."X_8" <= 2.165874) AND (t."X_3" <= -1.063794) AND (t."X_0" <= -0.621998) AND (t."X_8" > 0.930947)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" <= 2.542281) AND (t."X_8" <= 2.165874) AND (t."X_3" > -1.063794) AND (t."X_3" <= -0.723036)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" <= 2.542281) AND (t."X_8" <= 2.165874) AND (t."X_3" > -1.063794) AND (t."X_3" > -0.723036) AND (t."X_8" <= -0.170429) AND (t."X_3" <= -0.411727) AND (t."X_7" <= -1.787012)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" <= 2.542281) AND (t."X_8" <= 2.165874) AND (t."X_3" > -1.063794) AND (t."X_3" > -0.723036) AND (t."X_8" <= -0.170429) AND (t."X_3" <= -0.411727) AND (t."X_7" > -1.787012) AND (t."X_8" <= -0.874501)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" <= 2.542281) AND (t."X_8" <= 2.165874) AND (t."X_3" > -1.063794) AND (t."X_3" > -0.723036) AND (t."X_8" <= -0.170429) AND (t."X_3" <= -0.411727) AND (t."X_7" > -1.787012) AND (t."X_8" > -0.874501)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" <= 2.542281) AND (t."X_8" <= 2.165874) AND (t."X_3" > -1.063794) AND (t."X_3" > -0.723036) AND (t."X_8" > -0.170429) AND (t."X_3" <= 0.298989) AND (t."X_9" <= 0.619065)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" <= 2.542281) AND (t."X_8" <= 2.165874) AND (t."X_3" > -1.063794) AND (t."X_3" > -0.723036) AND (t."X_8" > -0.170429) AND (t."X_3" <= 0.298989) AND (t."X_9" > 0.619065)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" <= 2.542281) AND (t."X_8" <= 2.165874) AND (t."X_3" > -1.063794) AND (t."X_3" > -0.723036) AND (t."X_8" > -0.170429) AND (t."X_3" > 0.298989) AND (t."X_0" <= 0.021623)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" <= 2.542281) AND (t."X_8" <= 2.165874) AND (t."X_3" > -1.063794) AND (t."X_3" > -0.723036) AND (t."X_8" > -0.170429) AND (t."X_3" > 0.298989) AND (t."X_0" > 0.021623)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" <= 2.542281) AND (t."X_8" <= 2.165874) AND (t."X_3" > -1.063794) AND (t."X_3" > -0.723036) AND (t."X_8" <= -0.170429) AND (t."X_3" > -0.411727) AND (t."X_9" <= -1.029934)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" <= 2.542281) AND (t."X_8" <= 2.165874) AND (t."X_3" > -1.063794) AND (t."X_3" > -0.723036) AND (t."X_8" <= -0.170429) AND (t."X_3" > -0.411727) AND (t."X_9" > -1.029934) AND (t."X_3" <= 2.479690)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_7" <= 0.130820) AND (t."X_9" <= 2.542281) AND (t."X_8" <= 2.165874) AND (t."X_3" > -1.063794) AND (t."X_3" > -0.723036) AND (t."X_8" <= -0.170429) AND (t."X_3" > -0.411727) AND (t."X_9" > -1.029934) AND (t."X_3" > 2.479690)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_7" > 0.130820) AND (t."X_8" > 0.008976) AND (t."X_0" <= 0.632966)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_7" > 0.130820) AND (t."X_8" > 0.008976) AND (t."X_0" > 0.632966) AND (t."X_0" <= 0.679686)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_7" > 0.130820) AND (t."X_8" > 0.008976) AND (t."X_0" > 0.632966) AND (t."X_0" > 0.679686)) THEN 54 ELSE NULL END AS "Leaf_54"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.257812 AS "P_0", 0.250000 AS "P_1", 0.234375 AS "P_2", 0.257812 AS "P_3", 0 AS "D", 0.257812 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.345679 AS "P_0", 0.024691 AS "P_1", 0.271605 AS "P_2", 0.358025 AS "P_3", 3 AS "D", 0.358025 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.106383 AS "P_0", 0.638298 AS "P_1", 0.170213 AS "P_2", 0.085106 AS "P_3", 1 AS "D", 0.638298 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.190476 AS "P_0", 0.238095 AS "P_1", 0.380952 AS "P_2", 0.190476 AS "P_3", 2 AS "D", 0.380952 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.038462 AS "P_0", 0.961538 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.307692 AS "P_0", 0.307692 AS "P_1", 0.076923 AS "P_2", 0.307692 AS "P_3", 0 AS "D", 0.307692 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.125000 AS "P_1", 0.875000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.500000 AS "P_0", 0.375000 AS "P_1", 0.125000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.368421 AS "P_0", 0.026316 AS "P_1", 0.223684 AS "P_2", 0.381579 AS "P_3", 3 AS "D", 0.381579 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.405797 AS "P_0", 0.014493 AS "P_1", 0.246377 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.405797 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.142857 AS "P_1", 0.000000 AS "P_2", 0.857143 AS "P_3", 3 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.263158 AS "P_0", 0.000000 AS "P_1", 0.631579 AS "P_2", 0.105263 AS "P_3", 2 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.460000 AS "P_0", 0.020000 AS "P_1", 0.100000 AS "P_2", 0.420000 AS "P_3", 0 AS "D", 0.460000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.714286 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.285714 AS "P_3", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.522727 AS "P_0", 0.022727 AS "P_1", 0.113636 AS "P_2", 0.340909 AS "P_3", 0 AS "D", 0.522727 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.307692 AS "P_0", 0.000000 AS "P_1", 0.153846 AS "P_2", 0.538462 AS "P_3", 3 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.833333 AS "P_0", 0.055556 AS "P_1", 0.055556 AS "P_2", 0.055556 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.125000 AS "P_2", 0.875000 AS "P_3", 3 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.937500 AS "P_0", 0.000000 AS "P_1", 0.062500 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.066667 AS "P_2", 0.933333 AS "P_3", 3 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_39", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58", t1."Leaf_60", t1."Leaf_61", t1."Leaf_63", t1."Leaf_64" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" <= -1.166585) AND (t."X_8" <= -1.153215) AND (t."X_9" <= -0.238850)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_7" <= -1.166585) AND (t."X_8" <= -1.153215) AND (t."X_9" > -0.238850)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_7" <= -1.166585) AND (t."X_8" > -1.153215) AND (t."X_0" > 2.643734)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_7" <= -1.166585) AND (t."X_8" > -1.153215) AND (t."X_0" <= 2.643734) AND (t."X_8" <= -0.966979)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_7" <= -1.166585) AND (t."X_8" > -1.153215) AND (t."X_0" <= 2.643734) AND (t."X_8" > -0.966979) AND (t."X_3" <= -2.452605)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" > 1.063858) AND (t."X_8" <= -0.305945)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" > 1.063858) AND (t."X_8" > -0.305945) AND (t."X_3" <= 2.113583)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" > 1.063858) AND (t."X_8" > -0.305945) AND (t."X_3" > 2.113583)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_7" <= -1.166585) AND (t."X_8" > -1.153215) AND (t."X_0" <= 2.643734) AND (t."X_8" > -0.966979) AND (t."X_3" > -2.452605) AND (t."X_8" <= 2.578456)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_7" <= -1.166585) AND (t."X_8" > -1.153215) AND (t."X_0" <= 2.643734) AND (t."X_8" > -0.966979) AND (t."X_3" > -2.452605) AND (t."X_8" > 2.578456) AND (t."X_9" <= 1.087976)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_7" <= -1.166585) AND (t."X_8" > -1.153215) AND (t."X_0" <= 2.643734) AND (t."X_8" > -0.966979) AND (t."X_3" > -2.452605) AND (t."X_8" > 2.578456) AND (t."X_9" > 1.087976)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" <= 0.127889) AND (t."X_7" > 0.957783) AND (t."X_8" > 0.343218)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" > 0.127889) AND (t."X_8" > 2.227339)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" <= 0.127889) AND (t."X_7" > 0.957783) AND (t."X_8" <= 0.343218) AND (t."X_0" <= -2.893364)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" <= 0.127889) AND (t."X_7" > 0.957783) AND (t."X_8" <= 0.343218) AND (t."X_0" > -2.893364)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" <= 0.127889) AND (t."X_7" <= 0.957783) AND (t."X_7" > 0.857195)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" > 0.127889) AND (t."X_8" <= 2.227339) AND (t."X_8" <= -0.170429)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" > 0.127889) AND (t."X_8" <= 2.227339) AND (t."X_8" > -0.170429) AND (t."X_8" <= 0.107961)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" > 0.127889) AND (t."X_8" <= 2.227339) AND (t."X_8" > -0.170429) AND (t."X_8" > 0.107961) AND (t."X_7" <= -0.429907)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" > 0.127889) AND (t."X_8" <= 2.227339) AND (t."X_8" > -0.170429) AND (t."X_8" > 0.107961) AND (t."X_7" > -0.429907) AND (t."X_9" <= 0.289926)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" > 0.127889) AND (t."X_8" <= 2.227339) AND (t."X_8" > -0.170429) AND (t."X_8" > 0.107961) AND (t."X_7" > -0.429907) AND (t."X_9" > 0.289926) AND (t."X_3" <= -0.663695)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" > 0.127889) AND (t."X_8" <= 2.227339) AND (t."X_8" > -0.170429) AND (t."X_8" > 0.107961) AND (t."X_7" > -0.429907) AND (t."X_9" > 0.289926) AND (t."X_3" > -0.663695)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" <= 0.127889) AND (t."X_7" <= 0.957783) AND (t."X_7" <= 0.857195) AND (t."X_7" <= 0.130820) AND (t."X_8" <= -0.380620) AND (t."X_9" <= -0.512112)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" <= 0.127889) AND (t."X_7" <= 0.957783) AND (t."X_7" <= 0.857195) AND (t."X_7" <= 0.130820) AND (t."X_8" <= -0.380620) AND (t."X_9" > -0.512112)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" <= 0.127889) AND (t."X_7" <= 0.957783) AND (t."X_7" <= 0.857195) AND (t."X_7" <= 0.130820) AND (t."X_8" > -0.380620) AND (t."X_3" <= -0.905127)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" <= 0.127889) AND (t."X_7" <= 0.957783) AND (t."X_7" <= 0.857195) AND (t."X_7" <= 0.130820) AND (t."X_8" > -0.380620) AND (t."X_3" > -0.905127)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" <= 0.127889) AND (t."X_7" <= 0.957783) AND (t."X_7" <= 0.857195) AND (t."X_7" > 0.130820) AND (t."X_3" <= -1.862053) AND (t."X_9" > 0.826288)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" <= 0.127889) AND (t."X_7" <= 0.957783) AND (t."X_7" <= 0.857195) AND (t."X_7" > 0.130820) AND (t."X_3" <= -1.862053) AND (t."X_9" <= 0.826288) AND (t."X_9" <= 0.360618)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" <= 0.127889) AND (t."X_7" <= 0.957783) AND (t."X_7" <= 0.857195) AND (t."X_7" > 0.130820) AND (t."X_3" <= -1.862053) AND (t."X_9" <= 0.826288) AND (t."X_9" > 0.360618)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" <= 0.127889) AND (t."X_7" <= 0.957783) AND (t."X_7" <= 0.857195) AND (t."X_7" > 0.130820) AND (t."X_3" > -1.862053) AND (t."X_7" > 0.714865)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" <= 0.127889) AND (t."X_7" <= 0.957783) AND (t."X_7" <= 0.857195) AND (t."X_7" > 0.130820) AND (t."X_3" > -1.862053) AND (t."X_7" <= 0.714865) AND (t."X_3" <= -0.468963)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" <= 0.127889) AND (t."X_7" <= 0.957783) AND (t."X_7" <= 0.857195) AND (t."X_7" > 0.130820) AND (t."X_3" > -1.862053) AND (t."X_7" <= 0.714865) AND (t."X_3" > -0.468963) AND (t."X_7" <= 0.316192)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_3" <= 1.063858) AND (t."X_0" <= 0.127889) AND (t."X_7" <= 0.957783) AND (t."X_7" <= 0.857195) AND (t."X_7" > 0.130820) AND (t."X_3" > -1.862053) AND (t."X_7" <= 0.714865) AND (t."X_3" > -0.468963) AND (t."X_7" > 0.316192)) THEN 64 ELSE NULL END AS "Leaf_64"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.226562 AS "P_0", 0.148438 AS "P_1", 0.382812 AS "P_2", 0.242188 AS "P_3", 2 AS "D", 0.382812 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.633333 AS "P_3", 3 AS "D", 0.633333 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.244898 AS "P_0", 0.193878 AS "P_1", 0.438776 AS "P_2", 0.122449 AS "P_3", 2 AS "D", 0.438776 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.227273 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.772727 AS "P_3", 3 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.150000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.850000 AS "P_3", 3 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.105263 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.894737 AS "P_3", 3 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.055556 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.944444 AS "P_3", 3 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.214286 AS "P_0", 0.226190 AS "P_1", 0.500000 AS "P_2", 0.059524 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.428571 AS "P_0", 0.000000 AS "P_1", 0.071429 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.857143 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.269231 AS "P_0", 0.288462 AS "P_1", 0.365385 AS "P_2", 0.076923 AS "P_3", 2 AS "D", 0.365385 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.125000 AS "P_0", 0.125000 AS "P_1", 0.718750 AS "P_2", 0.031250 AS "P_3", 2 AS "D", 0.718750 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.437500 AS "P_0", 0.312500 AS "P_1", 0.125000 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.062500 AS "P_1", 0.937500 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.137931 AS "P_0", 0.034483 AS "P_1", 0.793103 AS "P_2", 0.034483 AS "P_3", 2 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.307692 AS "P_0", 0.384615 AS "P_1", 0.153846 AS "P_2", 0.153846 AS "P_3", 1 AS "D", 0.384615 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.333333 AS "P_0", 0.083333 AS "P_1", 0.500000 AS "P_2", 0.083333 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.111111 AS "P_0", 0.111111 AS "P_1", 0.666667 AS "P_2", 0.111111 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.400000 AS "P_0", 0.100000 AS "P_1", 0.200000 AS "P_2", 0.300000 AS "P_3", 0 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.250000 AS "P_0", 0.562500 AS "P_1", 0.125000 AS "P_2", 0.062500 AS "P_3", 1 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.666667 AS "P_0", 0.166667 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.100000 AS "P_2", 0.100000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 0.888889 AS "P_1", 0.000000 AS "P_2", 0.111111 AS "P_3", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_11", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_49", t1."Leaf_50" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" <= -1.547398) AND (t."X_8" <= -0.722713)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_1" <= -1.547398) AND (t."X_8" > -0.722713) AND (t."X_9" <= -1.001786)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_1" <= -1.547398) AND (t."X_8" > -0.722713) AND (t."X_9" > -1.001786)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" > 0.208819) AND (t."X_7" <= -0.989518) AND (t."X_1" <= -0.206592)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" > 0.208819) AND (t."X_7" <= -0.989518) AND (t."X_1" > -0.206592) AND (t."X_9" > -0.493614)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" > 0.208819) AND (t."X_7" <= -0.989518) AND (t."X_1" > -0.206592) AND (t."X_9" <= -0.493614) AND (t."X_1" <= 0.589987)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" > 0.208819) AND (t."X_7" <= -0.989518) AND (t."X_1" > -0.206592) AND (t."X_9" <= -0.493614) AND (t."X_1" > 0.589987)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" > 0.208819) AND (t."X_7" > -0.989518) AND (t."X_1" <= 0.565133) AND (t."X_5" <= 0.556384)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" > 0.208819) AND (t."X_7" > -0.989518) AND (t."X_1" <= 0.565133) AND (t."X_5" > 0.556384) AND (t."X_1" <= 0.524876)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" > 0.208819) AND (t."X_7" > -0.989518) AND (t."X_1" <= 0.565133) AND (t."X_5" > 0.556384) AND (t."X_1" > 0.524876)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" > 0.208819) AND (t."X_7" > -0.989518) AND (t."X_1" > 0.565133) AND (t."X_8" <= 2.456167)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" > 0.208819) AND (t."X_7" > -0.989518) AND (t."X_1" > 0.565133) AND (t."X_8" > 2.456167)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" <= 0.208819) AND (t."X_1" <= -0.521256) AND (t."X_1" > -1.020615)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" <= 0.208819) AND (t."X_1" <= -0.521256) AND (t."X_1" <= -1.020615) AND (t."X_9" <= 0.935421)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" <= 0.208819) AND (t."X_1" <= -0.521256) AND (t."X_1" <= -1.020615) AND (t."X_9" > 0.935421)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" <= 0.208819) AND (t."X_1" > -0.521256) AND (t."X_9" <= -0.032515)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" <= 0.208819) AND (t."X_1" > -0.521256) AND (t."X_9" > -0.032515) AND (t."X_8" > -0.408378) AND (t."X_9" > 0.529342)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" <= 0.208819) AND (t."X_1" > -0.521256) AND (t."X_9" > -0.032515) AND (t."X_8" > -0.408378) AND (t."X_9" <= 0.529342) AND (t."X_1" > 0.324993)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" <= 0.208819) AND (t."X_1" > -0.521256) AND (t."X_9" > -0.032515) AND (t."X_8" > -0.408378) AND (t."X_9" <= 0.529342) AND (t."X_1" <= 0.324993) AND (t."X_9" <= 0.375482)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" <= 0.208819) AND (t."X_1" > -0.521256) AND (t."X_9" > -0.032515) AND (t."X_8" > -0.408378) AND (t."X_9" <= 0.529342) AND (t."X_1" <= 0.324993) AND (t."X_9" > 0.375482)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" <= 0.208819) AND (t."X_1" > -0.521256) AND (t."X_9" > -0.032515) AND (t."X_8" <= -0.408378) AND (t."X_7" <= -1.349441)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" <= 0.208819) AND (t."X_1" > -0.521256) AND (t."X_9" > -0.032515) AND (t."X_8" <= -0.408378) AND (t."X_7" > -1.349441) AND (t."X_9" <= 0.159480) AND (t."X_8" <= -2.558549)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" <= 0.208819) AND (t."X_1" > -0.521256) AND (t."X_9" > -0.032515) AND (t."X_8" <= -0.408378) AND (t."X_7" > -1.349441) AND (t."X_9" <= 0.159480) AND (t."X_8" > -2.558549)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" <= 0.208819) AND (t."X_1" > -0.521256) AND (t."X_9" > -0.032515) AND (t."X_8" <= -0.408378) AND (t."X_7" > -1.349441) AND (t."X_9" > 0.159480) AND (t."X_9" <= 1.030009)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" <= 0.208819) AND (t."X_1" > -0.521256) AND (t."X_9" > -0.032515) AND (t."X_8" <= -0.408378) AND (t."X_7" > -1.349441) AND (t."X_9" > 0.159480) AND (t."X_9" > 1.030009) AND (t."X_1" <= 0.672494)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_1" > -1.547398) AND (t."X_8" <= 0.208819) AND (t."X_1" > -0.521256) AND (t."X_9" > -0.032515) AND (t."X_8" <= -0.408378) AND (t."X_7" > -1.349441) AND (t."X_9" > 0.159480) AND (t."X_9" > 1.030009) AND (t."X_1" > 0.672494)) THEN 50 ELSE NULL END AS "Leaf_50"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.171875 AS "P_0", 0.234375 AS "P_1", 0.296875 AS "P_2", 0.296875 AS "P_3", 2 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.222222 AS "P_0", 0.000000 AS "P_1", 0.055556 AS "P_2", 0.722222 AS "P_3", 3 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.163636 AS "P_0", 0.272727 AS "P_1", 0.336364 AS "P_2", 0.227273 AS "P_3", 2 AS "D", 0.336364 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.145455 AS "P_0", 0.072727 AS "P_1", 0.654545 AS "P_2", 0.127273 AS "P_3", 2 AS "D", 0.654545 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.181818 AS "P_0", 0.472727 AS "P_1", 0.018182 AS "P_2", 0.327273 AS "P_3", 1 AS "D", 0.472727 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.230769 AS "P_0", 0.115385 AS "P_1", 0.038462 AS "P_2", 0.615385 AS "P_3", 3 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.137931 AS "P_0", 0.793103 AS "P_1", 0.000000 AS "P_2", 0.068966 AS "P_3", 1 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.150000 AS "P_1", 0.050000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.444444 AS "P_0", 0.444444 AS "P_1", 0.000000 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.950000 AS "P_1", 0.000000 AS "P_2", 0.050000 AS "P_3", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.186047 AS "P_0", 0.093023 AS "P_1", 0.697674 AS "P_2", 0.023256 AS "P_3", 2 AS "D", 0.697674 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.275862 AS "P_0", 0.137931 AS "P_1", 0.551724 AS "P_2", 0.034483 AS "P_3", 2 AS "D", 0.551724 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.272727 AS "P_0", 0.045455 AS "P_1", 0.681818 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.681818 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.285714 AS "P_0", 0.428571 AS "P_1", 0.142857 AS "P_2", 0.142857 AS "P_3", 1 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.600000 AS "P_1", 0.200000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.058824 AS "P_0", 0.058824 AS "P_1", 0.882353 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.066667 AS "P_0", 0.000000 AS "P_1", 0.933333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_11", t1."Leaf_12", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 2.502340) AND (t."X_6" > 4.478524)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_6" > 2.502340) AND (t."X_6" <= 4.478524) AND (t."X_9" <= 0.958238)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_6" > 2.502340) AND (t."X_6" <= 4.478524) AND (t."X_9" > 0.958238)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" > 0.152687) AND (t."X_7" <= -1.193917) AND (t."X_0" <= -0.359546)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" > 0.152687) AND (t."X_7" <= -1.193917) AND (t."X_0" > -0.359546)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" > 0.152687) AND (t."X_7" > -1.193917) AND (t."X_9" <= -0.808544) AND (t."X_0" > 0.465456)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" > 0.152687) AND (t."X_7" > -1.193917) AND (t."X_9" > -0.808544) AND (t."X_9" <= 0.937469)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" > 0.152687) AND (t."X_7" > -1.193917) AND (t."X_9" > -0.808544) AND (t."X_9" > 0.937469) AND (t."X_8" <= 0.367135)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" > 0.152687) AND (t."X_7" > -1.193917) AND (t."X_9" > -0.808544) AND (t."X_9" > 0.937469) AND (t."X_8" > 0.367135)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" > 0.152687) AND (t."X_7" > -1.193917) AND (t."X_9" <= -0.808544) AND (t."X_0" <= 0.465456) AND (t."X_6" > -1.172520)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" > 0.152687) AND (t."X_7" > -1.193917) AND (t."X_9" <= -0.808544) AND (t."X_0" <= 0.465456) AND (t."X_6" <= -1.172520) AND (t."X_6" <= -3.175844)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" > 0.152687) AND (t."X_7" > -1.193917) AND (t."X_9" <= -0.808544) AND (t."X_0" <= 0.465456) AND (t."X_6" <= -1.172520) AND (t."X_6" > -3.175844)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" > 1.962384)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" <= -1.044172) AND (t."X_0" <= 0.211388) AND (t."X_5" <= 1.111884)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" <= -1.044172) AND (t."X_0" <= 0.211388) AND (t."X_5" > 1.111884)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" <= -1.044172) AND (t."X_0" > 0.211388) AND (t."X_8" > -0.650289)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" <= -1.044172) AND (t."X_0" > 0.211388) AND (t."X_8" <= -0.650289) AND (t."X_6" > -0.861173)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" <= -1.044172) AND (t."X_0" > 0.211388) AND (t."X_8" <= -0.650289) AND (t."X_6" <= -0.861173) AND (t."X_9" <= 0.223465)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" <= -1.044172) AND (t."X_0" > 0.211388) AND (t."X_8" <= -0.650289) AND (t."X_6" <= -0.861173) AND (t."X_9" > 0.223465)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" > -1.044172) AND (t."X_8" > -0.385361) AND (t."X_8" > 0.133520)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" > -1.044172) AND (t."X_8" > -0.385361) AND (t."X_8" <= 0.133520) AND (t."X_0" <= -2.743915)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" > -1.044172) AND (t."X_8" > -0.385361) AND (t."X_8" <= 0.133520) AND (t."X_0" > -2.743915) AND (t."X_8" <= -0.233326)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" > -1.044172) AND (t."X_8" > -0.385361) AND (t."X_8" <= 0.133520) AND (t."X_0" > -2.743915) AND (t."X_8" > -0.233326)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" > -1.044172) AND (t."X_8" <= -0.385361) AND (t."X_5" <= -0.101347)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" > -1.044172) AND (t."X_8" <= -0.385361) AND (t."X_5" > -0.101347) AND (t."X_0" > 0.169670) AND (t."X_6" <= 0.416637)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" > -1.044172) AND (t."X_8" <= -0.385361) AND (t."X_5" > -0.101347) AND (t."X_0" > 0.169670) AND (t."X_6" > 0.416637)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" > -1.044172) AND (t."X_8" <= -0.385361) AND (t."X_5" > -0.101347) AND (t."X_0" <= 0.169670) AND (t."X_8" <= -1.560707)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" > -1.044172) AND (t."X_8" <= -0.385361) AND (t."X_5" > -0.101347) AND (t."X_0" <= 0.169670) AND (t."X_8" > -1.560707) AND (t."X_9" > 0.281242)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" > -1.044172) AND (t."X_8" <= -0.385361) AND (t."X_5" > -0.101347) AND (t."X_0" <= 0.169670) AND (t."X_8" > -1.560707) AND (t."X_9" <= 0.281242) AND (t."X_6" <= -1.086705)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_6" <= 2.502340) AND (t."X_8" <= 0.152687) AND (t."X_5" <= 1.962384) AND (t."X_7" > -1.044172) AND (t."X_8" <= -0.385361) AND (t."X_5" > -0.101347) AND (t."X_0" <= 0.169670) AND (t."X_8" > -1.560707) AND (t."X_9" <= 0.281242) AND (t."X_6" > -1.086705)) THEN 58 ELSE NULL END AS "Leaf_58"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.203125 AS "P_0", 0.242188 AS "P_1", 0.320312 AS "P_2", 0.234375 AS "P_3", 2 AS "D", 0.320312 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.234234 AS "P_0", 0.279279 AS "P_1", 0.315315 AS "P_2", 0.171171 AS "P_3", 2 AS "D", 0.315315 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.352941 AS "P_2", 0.647059 AS "P_3", 3 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.083333 AS "P_2", 0.916667 AS "P_3", 3 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.271186 AS "P_0", 0.016949 AS "P_1", 0.525424 AS "P_2", 0.186441 AS "P_3", 2 AS "D", 0.525424 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.192308 AS "P_0", 0.576923 AS "P_1", 0.076923 AS "P_2", 0.153846 AS "P_3", 1 AS "D", 0.576923 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.150000 AS "P_0", 0.750000 AS "P_1", 0.100000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.375000 AS "P_0", 0.125000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.093750 AS "P_0", 0.906250 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.906250 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.285714 AS "P_0", 0.017857 AS "P_1", 0.553571 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.553571 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.529412 AS "P_0", 0.000000 AS "P_1", 0.176471 AS "P_2", 0.294118 AS "P_3", 0 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.179487 AS "P_0", 0.025641 AS "P_1", 0.717949 AS "P_2", 0.076923 AS "P_3", 2 AS "D", 0.717949 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.777778 AS "P_0", 0.000000 AS "P_1", 0.222222 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.125000 AS "P_2", 0.625000 AS "P_3", 3 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.100000 AS "P_0", 0.000000 AS "P_1", 0.833333 AS "P_2", 0.066667 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.444444 AS "P_0", 0.111111 AS "P_1", 0.333333 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.666667 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.176471 AS "P_0", 0.000000 AS "P_1", 0.705882 AS "P_2", 0.117647 AS "P_3", 2 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.214286 AS "P_0", 0.000000 AS "P_1", 0.785714 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.428571 AS "P_0", 0.000000 AS "P_1", 0.571429 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_17", t1."Leaf_19", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_34", t1."Leaf_36", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_52", t1."Leaf_53", t1."Leaf_54", t1."Leaf_57", t1."Leaf_58", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62", t1."Leaf_63", t1."Leaf_66", t1."Leaf_67", t1."Leaf_68", t1."Leaf_69", t1."Leaf_71", t1."Leaf_72" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" <= -0.262006) AND (t."X_7" <= -0.917572) AND (t."X_8" > 2.291701)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" <= -0.262006) AND (t."X_7" <= -0.917572) AND (t."X_8" <= 2.291701) AND (t."X_7" <= -1.075265)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" <= -0.262006) AND (t."X_7" <= -0.917572) AND (t."X_8" <= 2.291701) AND (t."X_7" > -1.075265) AND (t."X_0" <= -0.082132)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" <= -0.262006) AND (t."X_7" <= -0.917572) AND (t."X_8" <= 2.291701) AND (t."X_7" > -1.075265) AND (t."X_0" > -0.082132)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" > -0.262006) AND (t."X_7" <= 0.625724) AND (t."X_8" <= -0.659844) AND (t."X_7" <= -1.029788)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" > -0.262006) AND (t."X_7" > 0.625724) AND (t."X_0" <= -2.498153)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" > -0.262006) AND (t."X_7" > 0.625724) AND (t."X_0" > -2.498153) AND (t."X_6" > 3.408252) AND (t."X_0" <= -1.172794)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" > -0.262006) AND (t."X_7" > 0.625724) AND (t."X_0" > -2.498153) AND (t."X_6" > 3.408252) AND (t."X_0" > -1.172794)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" > -0.262006) AND (t."X_7" > 0.625724) AND (t."X_0" > -2.498153) AND (t."X_6" <= 3.408252) AND (t."X_8" > 0.214268)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" > -0.262006) AND (t."X_7" <= 0.625724) AND (t."X_8" > -0.659844) AND (t."X_0" > 0.566150)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" > -0.262006) AND (t."X_7" <= 0.625724) AND (t."X_8" > -0.659844) AND (t."X_0" <= 0.566150) AND (t."X_0" <= -0.335052)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" > -0.262006) AND (t."X_7" <= 0.625724) AND (t."X_8" > -0.659844) AND (t."X_0" <= 0.566150) AND (t."X_0" > -0.335052)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" > -0.262006) AND (t."X_7" <= 0.625724) AND (t."X_8" <= -0.659844) AND (t."X_7" > -1.029788) AND (t."X_7" > -0.145531)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" <= -0.262006) AND (t."X_7" > -0.917572) AND (t."X_0" > 0.679686)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" <= -0.262006) AND (t."X_7" > -0.917572) AND (t."X_0" <= 0.679686) AND (t."X_0" > 0.493194)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" <= -0.262006) AND (t."X_7" > -0.917572) AND (t."X_0" <= 0.679686) AND (t."X_0" <= 0.493194) AND (t."X_9" > 0.475324) AND (t."X_7" > 0.018995)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" <= -0.262006) AND (t."X_7" > -0.917572) AND (t."X_0" <= 0.679686) AND (t."X_0" <= 0.493194) AND (t."X_9" > 0.475324) AND (t."X_7" <= 0.018995) AND (t."X_0" <= -1.260900)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" <= -0.262006) AND (t."X_7" > -0.917572) AND (t."X_0" <= 0.679686) AND (t."X_0" <= 0.493194) AND (t."X_9" > 0.475324) AND (t."X_7" <= 0.018995) AND (t."X_0" > -1.260900) AND (t."X_9" <= 1.136152)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" <= -0.262006) AND (t."X_7" > -0.917572) AND (t."X_0" <= 0.679686) AND (t."X_0" <= 0.493194) AND (t."X_9" > 0.475324) AND (t."X_7" <= 0.018995) AND (t."X_0" > -1.260900) AND (t."X_9" > 1.136152)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" <= -0.262006) AND (t."X_7" > -0.917572) AND (t."X_0" <= 0.679686) AND (t."X_0" <= 0.493194) AND (t."X_9" <= 0.475324) AND (t."X_6" <= -0.727571)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" <= -0.262006) AND (t."X_7" > -0.917572) AND (t."X_0" <= 0.679686) AND (t."X_0" <= 0.493194) AND (t."X_9" <= 0.475324) AND (t."X_6" > -0.727571) AND (t."X_0" <= -1.314414)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" <= -0.262006) AND (t."X_7" > -0.917572) AND (t."X_0" <= 0.679686) AND (t."X_0" <= 0.493194) AND (t."X_9" <= 0.475324) AND (t."X_6" > -0.727571) AND (t."X_0" > -1.314414)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_7" <= -1.166585) AND (t."X_7" > -1.445453) AND (t."X_6" > -0.044846)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_7" <= -1.166585) AND (t."X_7" > -1.445453) AND (t."X_6" <= -0.044846) AND (t."X_8" <= 1.110879)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_7" <= -1.166585) AND (t."X_7" > -1.445453) AND (t."X_6" <= -0.044846) AND (t."X_8" > 1.110879)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_7" <= -1.166585) AND (t."X_7" <= -1.445453) AND (t."X_8" > 1.897871) AND (t."X_9" <= 0.493581)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_7" <= -1.166585) AND (t."X_7" <= -1.445453) AND (t."X_8" > 1.897871) AND (t."X_9" > 0.493581)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_7" <= -1.166585) AND (t."X_7" <= -1.445453) AND (t."X_8" <= 1.897871) AND (t."X_0" > 2.466380)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_7" <= -1.166585) AND (t."X_7" <= -1.445453) AND (t."X_8" <= 1.897871) AND (t."X_0" <= 2.466380) AND (t."X_7" <= -3.732285)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_7" <= -1.166585) AND (t."X_7" <= -1.445453) AND (t."X_8" <= 1.897871) AND (t."X_0" <= 2.466380) AND (t."X_7" > -3.732285)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" > -0.262006) AND (t."X_7" <= 0.625724) AND (t."X_8" <= -0.659844) AND (t."X_7" > -1.029788) AND (t."X_7" <= -0.145531) AND (t."X_7" <= -0.609377)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" > -0.262006) AND (t."X_7" <= 0.625724) AND (t."X_8" <= -0.659844) AND (t."X_7" > -1.029788) AND (t."X_7" <= -0.145531) AND (t."X_7" > -0.609377) AND (t."X_9" > 0.405129)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" > -0.262006) AND (t."X_7" <= 0.625724) AND (t."X_8" <= -0.659844) AND (t."X_7" > -1.029788) AND (t."X_7" <= -0.145531) AND (t."X_7" > -0.609377) AND (t."X_9" <= 0.405129) AND (t."X_0" <= -0.406377)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" > -0.262006) AND (t."X_7" <= 0.625724) AND (t."X_8" <= -0.659844) AND (t."X_7" > -1.029788) AND (t."X_7" <= -0.145531) AND (t."X_7" > -0.609377) AND (t."X_9" <= 0.405129) AND (t."X_0" > -0.406377)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" > -0.262006) AND (t."X_7" > 0.625724) AND (t."X_0" > -2.498153) AND (t."X_6" <= 3.408252) AND (t."X_8" <= 0.214268) AND (t."X_8" <= -0.917305)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" > -0.262006) AND (t."X_7" > 0.625724) AND (t."X_0" > -2.498153) AND (t."X_6" <= 3.408252) AND (t."X_8" <= 0.214268) AND (t."X_8" > -0.917305) AND (t."X_8" <= -0.551807)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_7" > -1.166585) AND (t."X_6" > -0.262006) AND (t."X_7" > 0.625724) AND (t."X_0" > -2.498153) AND (t."X_6" <= 3.408252) AND (t."X_8" <= 0.214268) AND (t."X_8" > -0.917305) AND (t."X_8" > -0.551807)) THEN 72 ELSE NULL END AS "Leaf_72"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.226562 AS "P_0", 0.250000 AS "P_1", 0.289062 AS "P_2", 0.234375 AS "P_3", 2 AS "D", 0.289062 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.714286 AS "P_3", 3 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.250000 AS "P_0", 0.320000 AS "P_1", 0.330000 AS "P_2", 0.100000 AS "P_3", 2 AS "D", 0.330000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.190476 AS "P_0", 0.595238 AS "P_1", 0.166667 AS "P_2", 0.047619 AS "P_3", 1 AS "D", 0.595238 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.293103 AS "P_0", 0.120690 AS "P_1", 0.448276 AS "P_2", 0.137931 AS "P_3", 2 AS "D", 0.448276 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.125000 AS "P_1", 0.750000 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.235294 AS "P_0", 0.705882 AS "P_1", 0.029412 AS "P_2", 0.029412 AS "P_3", 1 AS "D", 0.705882 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.352941 AS "P_2", 0.147059 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.291667 AS "P_1", 0.583333 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.222222 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.111111 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.812500 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.187500 AS "P_3", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.066667 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.133333 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.150000 AS "P_1", 0.700000 AS "P_2", 0.150000 AS "P_3", 2 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.187500 AS "P_1", 0.812500 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.071429 AS "P_1", 0.928571 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.071429 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.071429 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.363636 AS "P_0", 0.545455 AS "P_1", 0.045455 AS "P_2", 0.045455 AS "P_3", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.263158 AS "P_0", 0.631579 AS "P_1", 0.052632 AS "P_2", 0.052632 AS "P_3", 1 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.571429 AS "P_0", 0.142857 AS "P_1", 0.142857 AS "P_2", 0.142857 AS "P_3", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.333333 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.210526 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.789474 AS "P_3", 3 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.444444 AS "P_2", 0.555556 AS "P_3", 3 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.125000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.875000 AS "P_3", 3 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.066667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.933333 AS "P_3", 3 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.600000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_30", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_36", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_44", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_59", t1."Leaf_60" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_0" > 0.520919) AND (t."X_0" > 1.474121)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_0" > 0.520919) AND (t."X_0" <= 1.474121) AND (t."X_7" <= 1.102302)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_0" > 0.520919) AND (t."X_0" <= 1.474121) AND (t."X_7" > 1.102302)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_0" <= 0.520919) AND (t."X_7" > -1.185406) AND (t."X_2" > 1.708332)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_0" <= 0.520919) AND (t."X_7" > -1.185406) AND (t."X_2" <= 1.708332) AND (t."X_9" > 1.143299) AND (t."X_2" <= 0.647452)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_0" <= 0.520919) AND (t."X_7" > -1.185406) AND (t."X_2" <= 1.708332) AND (t."X_9" > 1.143299) AND (t."X_2" > 0.647452)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_0" <= 0.520919) AND (t."X_7" > -1.185406) AND (t."X_2" <= 1.708332) AND (t."X_9" <= 1.143299) AND (t."X_8" > 2.806226)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_0" <= 0.520919) AND (t."X_7" > -1.185406) AND (t."X_2" <= 1.708332) AND (t."X_9" <= 1.143299) AND (t."X_8" <= 2.806226) AND (t."X_9" <= -1.499925)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_0" <= 0.520919) AND (t."X_7" > -1.185406) AND (t."X_2" <= 1.708332) AND (t."X_9" <= 1.143299) AND (t."X_8" <= 2.806226) AND (t."X_9" > -1.499925)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" > 0.969485) AND (t."X_2" <= 0.574220)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" > 0.969485) AND (t."X_2" > 0.574220)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" <= -0.650289) AND (t."X_0" <= 0.199694) AND (t."X_2" > 0.983962)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" <= -0.650289) AND (t."X_0" <= 0.199694) AND (t."X_2" <= 0.983962) AND (t."X_2" > -0.772868)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" <= -0.650289) AND (t."X_0" <= 0.199694) AND (t."X_2" <= 0.983962) AND (t."X_2" <= -0.772868) AND (t."X_9" <= -0.164238)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" <= -0.650289) AND (t."X_0" <= 0.199694) AND (t."X_2" <= 0.983962) AND (t."X_2" <= -0.772868) AND (t."X_9" > -0.164238)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" > -0.650289) AND (t."X_8" > 0.146080)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" > -0.650289) AND (t."X_8" <= 0.146080) AND (t."X_9" > 0.175726) AND (t."X_0" <= -0.335052)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" > -0.650289) AND (t."X_8" <= 0.146080) AND (t."X_9" > 0.175726) AND (t."X_0" > -0.335052)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" > -0.650289) AND (t."X_8" <= 0.146080) AND (t."X_9" <= 0.175726) AND (t."X_2" <= -0.902326)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" <= -0.650289) AND (t."X_0" > 0.199694) AND (t."X_8" > -1.195405)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" <= -0.650289) AND (t."X_0" > 0.199694) AND (t."X_8" <= -1.195405) AND (t."X_0" <= 1.321064) AND (t."X_2" <= 0.115346)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" <= -0.650289) AND (t."X_0" > 0.199694) AND (t."X_8" <= -1.195405) AND (t."X_0" <= 1.321064) AND (t."X_2" > 0.115346)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" <= -0.650289) AND (t."X_0" > 0.199694) AND (t."X_8" <= -1.195405) AND (t."X_0" > 1.321064) AND (t."X_8" <= -4.232995)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" <= -0.650289) AND (t."X_0" > 0.199694) AND (t."X_8" <= -1.195405) AND (t."X_0" > 1.321064) AND (t."X_8" > -4.232995) AND (t."X_8" <= -1.462309)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" <= -0.650289) AND (t."X_0" > 0.199694) AND (t."X_8" <= -1.195405) AND (t."X_0" > 1.321064) AND (t."X_8" > -4.232995) AND (t."X_8" > -1.462309)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_0" <= 0.520919) AND (t."X_7" <= -1.185406) AND (t."X_8" <= 2.578456)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_0" <= 0.520919) AND (t."X_7" <= -1.185406) AND (t."X_8" > 2.578456) AND (t."X_2" <= 0.560870)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_8" > 0.152687) AND (t."X_0" <= 0.520919) AND (t."X_7" <= -1.185406) AND (t."X_8" > 2.578456) AND (t."X_2" > 0.560870)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" > -0.650289) AND (t."X_8" <= 0.146080) AND (t."X_9" <= 0.175726) AND (t."X_2" > -0.902326) AND (t."X_9" <= -0.494249)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" > -0.650289) AND (t."X_8" <= 0.146080) AND (t."X_9" <= 0.175726) AND (t."X_2" > -0.902326) AND (t."X_9" > -0.494249) AND (t."X_9" <= -0.183253)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_8" <= 0.152687) AND (t."X_7" <= 0.969485) AND (t."X_8" > -0.650289) AND (t."X_8" <= 0.146080) AND (t."X_9" <= 0.175726) AND (t."X_2" > -0.902326) AND (t."X_9" > -0.494249) AND (t."X_9" > -0.183253)) THEN 60 ELSE NULL END AS "Leaf_60"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.281250 AS "P_0", 0.234375 AS "P_1", 0.234375 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.281250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.246154 AS "P_0", 0.030769 AS "P_1", 0.430769 AS "P_2", 0.292308 AS "P_3", 2 AS "D", 0.430769 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.317460 AS "P_0", 0.444444 AS "P_1", 0.031746 AS "P_2", 0.206349 AS "P_3", 1 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.057143 AS "P_0", 0.514286 AS "P_1", 0.057143 AS "P_2", 0.371429 AS "P_3", 1 AS "D", 0.514286 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.642857 AS "P_0", 0.357143 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.090909 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.909091 AS "P_3", 3 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.041667 AS "P_0", 0.750000 AS "P_1", 0.083333 AS "P_2", 0.125000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.045455 AS "P_0", 0.818182 AS "P_1", 0.090909 AS "P_2", 0.045455 AS "P_3", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.900000 AS "P_1", 0.050000 AS "P_2", 0.050000 AS "P_3", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.947368 AS "P_1", 0.052632 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.301887 AS "P_0", 0.018868 AS "P_1", 0.320755 AS "P_2", 0.358491 AS "P_3", 3 AS "D", 0.358491 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.083333 AS "P_1", 0.916667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.138889 AS "P_0", 0.027778 AS "P_1", 0.361111 AS "P_2", 0.472222 AS "P_3", 3 AS "D", 0.472222 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.647059 AS "P_0", 0.000000 AS "P_1", 0.235294 AS "P_2", 0.117647 AS "P_3", 0 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.454545 AS "P_0", 0.090909 AS "P_1", 0.454545 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.454545 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.320000 AS "P_2", 0.680000 AS "P_3", 3 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.250000 AS "P_0", 0.125000 AS "P_1", 0.625000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.733333 AS "P_0", 0.000000 AS "P_1", 0.133333 AS "P_2", 0.133333 AS "P_3", 0 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.909091 AS "P_0", 0.000000 AS "P_1", 0.090909 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.470588 AS "P_2", 0.529412 AS "P_3", 3 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.888889 AS "P_3", 3 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_1", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_28", t1."Leaf_31", t1."Leaf_34", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_49", t1."Leaf_50", t1."Leaf_52", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_59", t1."Leaf_60", t1."Leaf_62", t1."Leaf_63", t1."Leaf_65", t1."Leaf_67", t1."Leaf_69", t1."Leaf_70", t1."Leaf_73", t1."Leaf_74", t1."Leaf_75", t1."Leaf_77", t1."Leaf_78" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" <= -2.623130)) THEN 1 ELSE NULL END AS "Leaf_1",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" <= -0.716888) AND (t."X_9" <= -0.340211) AND (t."X_0" > 0.154787)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" <= -0.716888) AND (t."X_9" <= -0.340211) AND (t."X_0" <= 0.154787) AND (t."X_9" <= -1.353877)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" <= -0.716888) AND (t."X_9" <= -0.340211) AND (t."X_0" <= 0.154787) AND (t."X_9" > -1.353877)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" > 0.073393) AND (t."X_9" <= -0.800983) AND (t."X_8" <= -0.236509)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" > 0.073393) AND (t."X_9" <= -0.800983) AND (t."X_8" > -0.236509) AND (t."X_9" <= -1.101069)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" > 0.073393) AND (t."X_9" <= -0.800983) AND (t."X_8" > -0.236509) AND (t."X_9" > -1.101069)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" <= -0.926870) AND (t."X_9" > -1.634372)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" <= -0.926870) AND (t."X_9" <= -1.634372) AND (t."X_9" <= -1.897800)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" <= -0.926870) AND (t."X_9" <= -1.634372) AND (t."X_9" > -1.897800)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" <= -0.716888) AND (t."X_9" > -0.340211) AND (t."X_9" > 1.854617)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" > 0.073393) AND (t."X_9" > -0.800983) AND (t."X_2" > 1.621323)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" > -0.926870) AND (t."X_8" > 1.695578) AND (t."X_0" <= -0.496206)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" > -0.926870) AND (t."X_8" > 1.695578) AND (t."X_0" > -0.496206) AND (t."X_7" > -1.164150)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" > -0.926870) AND (t."X_8" > 1.695578) AND (t."X_0" > -0.496206) AND (t."X_7" <= -1.164150) AND (t."X_9" > 0.391692)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" > -0.926870) AND (t."X_8" > 1.695578) AND (t."X_0" > -0.496206) AND (t."X_7" <= -1.164150) AND (t."X_9" <= 0.391692) AND (t."X_9" <= 0.015706)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" > -0.926870) AND (t."X_8" > 1.695578) AND (t."X_0" > -0.496206) AND (t."X_7" <= -1.164150) AND (t."X_9" <= 0.391692) AND (t."X_9" > 0.015706)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" > -0.926870) AND (t."X_8" <= 1.695578) AND (t."X_7" <= -1.480110)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" > -0.926870) AND (t."X_8" <= 1.695578) AND (t."X_7" > -1.480110) AND (t."X_9" > 1.227138) AND (t."X_9" <= 1.533087)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" > -0.926870) AND (t."X_8" <= 1.695578) AND (t."X_7" > -1.480110) AND (t."X_9" > 1.227138) AND (t."X_9" > 1.533087)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" > -0.926870) AND (t."X_8" <= 1.695578) AND (t."X_7" > -1.480110) AND (t."X_9" <= 1.227138) AND (t."X_8" <= -0.659813)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" <= -0.716888) AND (t."X_9" > -0.340211) AND (t."X_9" <= 1.854617) AND (t."X_7" <= -3.213068) AND (t."X_9" <= 0.821658)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" <= -0.716888) AND (t."X_9" > -0.340211) AND (t."X_9" <= 1.854617) AND (t."X_7" <= -3.213068) AND (t."X_9" > 0.821658)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" > 0.073393) AND (t."X_9" > -0.800983) AND (t."X_2" <= 1.621323) AND (t."X_0" > -1.660384)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" > 0.073393) AND (t."X_9" > -0.800983) AND (t."X_2" <= 1.621323) AND (t."X_0" <= -1.660384) AND (t."X_9" > 0.890892)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" > 0.073393) AND (t."X_9" > -0.800983) AND (t."X_2" <= 1.621323) AND (t."X_0" <= -1.660384) AND (t."X_9" <= 0.890892) AND (t."X_8" <= 0.190609)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" > 0.073393) AND (t."X_9" > -0.800983) AND (t."X_2" <= 1.621323) AND (t."X_0" <= -1.660384) AND (t."X_9" <= 0.890892) AND (t."X_8" > 0.190609)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" <= -0.716888) AND (t."X_9" > -0.340211) AND (t."X_9" <= 1.854617) AND (t."X_7" > -3.213068) AND (t."X_8" > -1.153215) AND (t."X_8" <= -0.931751)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" <= -0.716888) AND (t."X_9" > -0.340211) AND (t."X_9" <= 1.854617) AND (t."X_7" > -3.213068) AND (t."X_8" > -1.153215) AND (t."X_8" > -0.931751)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" <= -0.716888) AND (t."X_9" > -0.340211) AND (t."X_9" <= 1.854617) AND (t."X_7" > -3.213068) AND (t."X_8" <= -1.153215) AND (t."X_2" > 1.106009)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" > -0.926870) AND (t."X_8" <= 1.695578) AND (t."X_7" > -1.480110) AND (t."X_9" <= 1.227138) AND (t."X_8" > -0.659813) AND (t."X_9" <= 0.372937)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" > -0.926870) AND (t."X_8" <= 1.695578) AND (t."X_7" > -1.480110) AND (t."X_9" <= 1.227138) AND (t."X_8" > -0.659813) AND (t."X_9" > 0.372937) AND (t."X_9" <= 0.512388)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" > -0.926870) AND (t."X_8" <= 1.695578) AND (t."X_7" > -1.480110) AND (t."X_9" <= 1.227138) AND (t."X_8" > -0.659813) AND (t."X_9" > 0.372937) AND (t."X_9" > 0.512388) AND (t."X_0" <= -0.904959)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" > -0.926870) AND (t."X_8" <= 1.695578) AND (t."X_7" > -1.480110) AND (t."X_9" <= 1.227138) AND (t."X_8" > -0.659813) AND (t."X_9" > 0.372937) AND (t."X_9" > 0.512388) AND (t."X_0" > -0.904959) AND (t."X_9" <= 0.828992)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" > -0.716888) AND (t."X_7" <= 0.073393) AND (t."X_9" > -0.926870) AND (t."X_8" <= 1.695578) AND (t."X_7" > -1.480110) AND (t."X_9" <= 1.227138) AND (t."X_8" > -0.659813) AND (t."X_9" > 0.372937) AND (t."X_9" > 0.512388) AND (t."X_0" > -0.904959) AND (t."X_9" > 0.828992)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" <= -0.716888) AND (t."X_9" > -0.340211) AND (t."X_9" <= 1.854617) AND (t."X_7" > -3.213068) AND (t."X_8" <= -1.153215) AND (t."X_2" <= 1.106009) AND (t."X_2" <= -1.552214) AND (t."X_9" <= 0.053666)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" <= -0.716888) AND (t."X_9" > -0.340211) AND (t."X_9" <= 1.854617) AND (t."X_7" > -3.213068) AND (t."X_8" <= -1.153215) AND (t."X_2" <= 1.106009) AND (t."X_2" <= -1.552214) AND (t."X_9" > 0.053666)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" <= -0.716888) AND (t."X_9" > -0.340211) AND (t."X_9" <= 1.854617) AND (t."X_7" > -3.213068) AND (t."X_8" <= -1.153215) AND (t."X_2" <= 1.106009) AND (t."X_2" > -1.552214) AND (t."X_9" <= 1.079892)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" <= -0.716888) AND (t."X_9" > -0.340211) AND (t."X_9" <= 1.854617) AND (t."X_7" > -3.213068) AND (t."X_8" <= -1.153215) AND (t."X_2" <= 1.106009) AND (t."X_2" > -1.552214) AND (t."X_9" > 1.079892) AND (t."X_9" <= 1.371161)) THEN 77 ELSE NULL END AS "Leaf_77",
      CASE WHEN((t."X_0" > -2.623130) AND (t."X_8" <= -0.716888) AND (t."X_9" > -0.340211) AND (t."X_9" <= 1.854617) AND (t."X_7" > -3.213068) AND (t."X_8" <= -1.153215) AND (t."X_2" <= 1.106009) AND (t."X_2" > -1.552214) AND (t."X_9" > 1.079892) AND (t."X_9" > 1.371161)) THEN 78 ELSE NULL END AS "Leaf_78"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.195312 AS "P_0", 0.242188 AS "P_1", 0.304688 AS "P_2", 0.257812 AS "P_3", 2 AS "D", 0.304688 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.203252 AS "P_0", 0.211382 AS "P_1", 0.317073 AS "P_2", 0.268293 AS "P_3", 2 AS "D", 0.317073 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.642857 AS "P_2", 0.214286 AS "P_3", 2 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.234568 AS "P_0", 0.320988 AS "P_1", 0.148148 AS "P_2", 0.296296 AS "P_3", 1 AS "D", 0.320988 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.714286 AS "P_3", 3 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.142857 AS "P_0", 0.000000 AS "P_1", 0.742857 AS "P_2", 0.114286 AS "P_3", 2 AS "D", 0.742857 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.339623 AS "P_0", 0.132075 AS "P_1", 0.169811 AS "P_2", 0.358491 AS "P_3", 3 AS "D", 0.358491 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.035714 AS "P_0", 0.678571 AS "P_1", 0.107143 AS "P_2", 0.178571 AS "P_3", 1 AS "D", 0.678571 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.863636 AS "P_1", 0.090909 AS "P_2", 0.045455 AS "P_3", 1 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.100000 AS "P_0", 0.100000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.395349 AS "P_0", 0.139535 AS "P_1", 0.023256 AS "P_2", 0.441860 AS "P_3", 3 AS "D", 0.441860 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.151515 AS "P_0", 0.000000 AS "P_1", 0.787879 AS "P_2", 0.060606 AS "P_3", 2 AS "D", 0.787879 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.904762 AS "P_1", 0.095238 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.583333 AS "P_0", 0.083333 AS "P_1", 0.041667 AS "P_2", 0.291667 AS "P_3", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.157895 AS "P_0", 0.210526 AS "P_1", 0.000000 AS "P_2", 0.631579 AS "P_3", 3 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.333333 AS "P_0", 0.444444 AS "P_1", 0.000000 AS "P_2", 0.222222 AS "P_3", 1 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.600000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.400000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.666667 AS "P_0", 0.095238 AS "P_1", 0.047619 AS "P_2", 0.190476 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.736842 AS "P_0", 0.105263 AS "P_1", 0.000000 AS "P_2", 0.157895 AS "P_3", 0 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.823529 AS "P_0", 0.117647 AS "P_1", 0.000000 AS "P_2", 0.058824 AS "P_3", 0 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.129032 AS "P_0", 0.000000 AS "P_1", 0.838710 AS "P_2", 0.032258 AS "P_3", 2 AS "D", 0.838710 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.600000 AS "P_1", 0.400000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.074074 AS "P_0", 0.000000 AS "P_1", 0.888889 AS "P_2", 0.037037 AS "P_3", 2 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.076923 AS "P_0", 0.000000 AS "P_1", 0.923077 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.700000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.100000 AS "P_3", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.041667 AS "P_0", 0.000000 AS "P_1", 0.958333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 77 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 78 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_25", t1."Leaf_26", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_36", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_53", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_0" > 0.520919) AND (t."X_0" > 1.444082)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_0" > 0.520919) AND (t."X_0" <= 1.444082) AND (t."X_7" <= 1.102302)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_0" > 0.520919) AND (t."X_0" <= 1.444082) AND (t."X_7" > 1.102302)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_0" <= 0.520919) AND (t."X_7" <= -1.185406)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_0" <= 0.520919) AND (t."X_7" > -1.185406) AND (t."X_0" > 0.253706) AND (t."X_0" <= 0.448686)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_0" <= 0.520919) AND (t."X_7" > -1.185406) AND (t."X_0" > 0.253706) AND (t."X_0" > 0.448686)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_0" <= 0.520919) AND (t."X_7" > -1.185406) AND (t."X_0" <= 0.253706) AND (t."X_8" > 2.760050)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_0" <= 0.520919) AND (t."X_7" > -1.185406) AND (t."X_0" <= 0.253706) AND (t."X_8" <= 2.760050) AND (t."X_7" <= -0.927459)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_0" <= 0.520919) AND (t."X_7" > -1.185406) AND (t."X_0" <= 0.253706) AND (t."X_8" <= 2.760050) AND (t."X_7" > -0.927459)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.833814) AND (t."X_0" > -0.596372) AND (t."X_9" > 0.602455) AND (t."X_9" <= 2.292297)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.833814) AND (t."X_0" > -0.596372) AND (t."X_9" > 0.602455) AND (t."X_9" > 2.292297)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.833814) AND (t."X_0" > -0.596372) AND (t."X_9" <= 0.602455) AND (t."X_8" > -1.154042) AND (t."X_9" <= -0.459638) AND (t."X_9" <= -0.990486)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.833814) AND (t."X_0" > -0.596372) AND (t."X_9" <= 0.602455) AND (t."X_8" > -1.154042) AND (t."X_9" <= -0.459638) AND (t."X_9" > -0.990486)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.833814) AND (t."X_0" > -0.596372) AND (t."X_9" <= 0.602455) AND (t."X_8" > -1.154042) AND (t."X_9" > -0.459638) AND (t."X_8" <= -0.933653)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.833814) AND (t."X_0" > -0.596372) AND (t."X_9" <= 0.602455) AND (t."X_8" > -1.154042) AND (t."X_9" > -0.459638) AND (t."X_8" > -0.933653) AND (t."X_9" > 0.405396)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.833814) AND (t."X_0" > -0.596372) AND (t."X_9" <= 0.602455) AND (t."X_8" <= -1.154042) AND (t."X_9" <= -0.890809)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.833814) AND (t."X_0" > -0.596372) AND (t."X_9" <= 0.602455) AND (t."X_8" <= -1.154042) AND (t."X_9" > -0.890809)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.833814) AND (t."X_0" > -0.596372) AND (t."X_9" <= 0.602455) AND (t."X_8" > -1.154042) AND (t."X_9" > -0.459638) AND (t."X_8" > -0.933653) AND (t."X_9" <= 0.405396) AND (t."X_9" <= -0.033682)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.833814) AND (t."X_0" > -0.596372) AND (t."X_9" <= 0.602455) AND (t."X_8" > -1.154042) AND (t."X_9" > -0.459638) AND (t."X_8" > -0.933653) AND (t."X_9" <= 0.405396) AND (t."X_9" > -0.033682) AND (t."X_9" <= 0.320600)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.833814) AND (t."X_0" > -0.596372) AND (t."X_9" <= 0.602455) AND (t."X_8" > -1.154042) AND (t."X_9" > -0.459638) AND (t."X_8" > -0.933653) AND (t."X_9" <= 0.405396) AND (t."X_9" > -0.033682) AND (t."X_9" > 0.320600)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.833814) AND (t."X_0" <= -0.596372) AND (t."X_8" > -0.380620)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.833814) AND (t."X_0" <= -0.596372) AND (t."X_8" <= -0.380620) AND (t."X_9" <= 0.942874)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.833814) AND (t."X_0" <= -0.596372) AND (t."X_8" <= -0.380620) AND (t."X_9" > 0.942874) AND (t."X_9" <= 1.030009)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.833814) AND (t."X_0" <= -0.596372) AND (t."X_8" <= -0.380620) AND (t."X_9" > 0.942874) AND (t."X_9" > 1.030009) AND (t."X_9" <= 1.406256)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.833814) AND (t."X_0" <= -0.596372) AND (t."X_8" <= -0.380620) AND (t."X_9" > 0.942874) AND (t."X_9" > 1.030009) AND (t."X_9" > 1.406256)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" > 0.833814) AND (t."X_8" <= -0.711690)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" > 0.833814) AND (t."X_8" > -0.711690) AND (t."X_8" <= -0.643287)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" > 0.833814) AND (t."X_8" > -0.711690) AND (t."X_8" > -0.643287) AND (t."X_9" <= -0.208921)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" > 0.833814) AND (t."X_8" > -0.711690) AND (t."X_8" > -0.643287) AND (t."X_9" > -0.208921) AND (t."X_9" <= 0.354983)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" > 0.833814) AND (t."X_8" > -0.711690) AND (t."X_8" > -0.643287) AND (t."X_9" > -0.208921) AND (t."X_9" > 0.354983)) THEN 58 ELSE NULL END AS "Leaf_58"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.218750 AS "P_0", 0.210938 AS "P_1", 0.273438 AS "P_2", 0.296875 AS "P_3", 3 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.234375 AS "P_0", 0.046875 AS "P_1", 0.484375 AS "P_2", 0.234375 AS "P_3", 2 AS "D", 0.484375 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.203125 AS "P_0", 0.375000 AS "P_1", 0.062500 AS "P_2", 0.359375 AS "P_3", 1 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.111111 AS "P_2", 0.638889 AS "P_3", 3 AS "D", 0.638889 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.464286 AS "P_0", 0.535714 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.535714 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.866667 AS "P_0", 0.133333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.450000 AS "P_1", 0.200000 AS "P_2", 0.350000 AS "P_3", 1 AS "D", 0.450000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.642857 AS "P_1", 0.000000 AS "P_2", 0.357143 AS "P_3", 1 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.900000 AS "P_1", 0.000000 AS "P_2", 0.100000 AS "P_3", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.312500 AS "P_0", 0.041667 AS "P_1", 0.354167 AS "P_2", 0.291667 AS "P_3", 2 AS "D", 0.354167 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.062500 AS "P_1", 0.875000 AS "P_2", 0.062500 AS "P_3", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.187500 AS "P_2", 0.062500 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.093750 AS "P_0", 0.062500 AS "P_1", 0.437500 AS "P_2", 0.406250 AS "P_3", 2 AS "D", 0.437500 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.136364 AS "P_0", 0.090909 AS "P_1", 0.545455 AS "P_2", 0.227273 AS "P_3", 2 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.900000 AS "P_2", 0.100000 AS "P_3", 2 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.250000 AS "P_0", 0.166667 AS "P_1", 0.250000 AS "P_2", 0.333333 AS "P_3", 3 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.600000 AS "P_0", 0.000000 AS "P_1", 0.400000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.285714 AS "P_1", 0.142857 AS "P_2", 0.571429 AS "P_3", 3 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.250000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.571429 AS "P_0", 0.000000 AS "P_1", 0.428571 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.600000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_7", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_43", t1."Leaf_44", t1."Leaf_46", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_53", t1."Leaf_55", t1."Leaf_56", t1."Leaf_59", t1."Leaf_61", t1."Leaf_62", t1."Leaf_65", t1."Leaf_66", t1."Leaf_68", t1."Leaf_69", t1."Leaf_71", t1."Leaf_73", t1."Leaf_74" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" > 1.568138) AND (t."X_4" > -0.027088) AND (t."X_4" <= 0.298416)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" > 1.568138) AND (t."X_4" > -0.027088) AND (t."X_4" > 0.298416) AND (t."X_4" > 2.130843)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" > 1.568138) AND (t."X_4" > -0.027088) AND (t."X_4" > 0.298416) AND (t."X_4" <= 2.130843) AND (t."X_5" <= -0.403374)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" > 1.568138) AND (t."X_4" > -0.027088) AND (t."X_4" > 0.298416) AND (t."X_4" <= 2.130843) AND (t."X_5" > -0.403374)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" > 1.568138) AND (t."X_4" <= -0.027088) AND (t."X_9" <= -1.087973)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" > 1.568138) AND (t."X_4" <= -0.027088) AND (t."X_9" > -1.087973)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" <= 1.568138) AND (t."X_7" <= -0.917572) AND (t."X_7" <= -1.442983)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" <= 1.568138) AND (t."X_7" <= -0.917572) AND (t."X_7" > -1.442983) AND (t."X_7" <= -1.071503)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" <= 1.568138) AND (t."X_7" <= -0.917572) AND (t."X_7" > -1.442983) AND (t."X_7" > -1.071503)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" > 1.662321) AND (t."X_9" <= 2.484593)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" > 1.662321) AND (t."X_9" > 2.484593)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" > -1.157133) AND (t."X_7" > 0.206701) AND (t."X_7" <= 1.683479)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" > -1.157133) AND (t."X_7" > 0.206701) AND (t."X_7" > 1.683479) AND (t."X_8" <= -0.640778)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" > -1.157133) AND (t."X_7" > 0.206701) AND (t."X_7" > 1.683479) AND (t."X_8" > -0.640778)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" > -1.157133) AND (t."X_7" <= 0.206701) AND (t."X_9" <= -0.201671) AND (t."X_4" <= -0.199556)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" > -1.157133) AND (t."X_7" <= 0.206701) AND (t."X_9" <= -0.201671) AND (t."X_4" > -0.199556)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" > -1.157133) AND (t."X_7" <= 0.206701) AND (t."X_9" > -0.201671) AND (t."X_5" > 0.798587)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" > -1.157133) AND (t."X_7" <= 0.206701) AND (t."X_9" > -0.201671) AND (t."X_5" <= 0.798587) AND (t."X_4" <= -0.818528)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" > -1.157133) AND (t."X_7" <= 0.206701) AND (t."X_9" > -0.201671) AND (t."X_5" <= 0.798587) AND (t."X_4" > -0.818528)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" <= -1.157133) AND (t."X_8" > -1.781050) AND (t."X_9" <= 1.035205)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" <= -1.157133) AND (t."X_8" > -1.781050) AND (t."X_9" > 1.035205)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" <= -1.157133) AND (t."X_8" <= -1.781050) AND (t."X_4" > 2.088975)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" <= -1.157133) AND (t."X_8" <= -1.781050) AND (t."X_4" <= 2.088975) AND (t."X_8" > -2.116958) AND (t."X_9" <= -1.425386)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" <= -1.157133) AND (t."X_8" <= -1.781050) AND (t."X_4" <= 2.088975) AND (t."X_8" > -2.116958) AND (t."X_9" > -1.425386)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" <= -1.157133) AND (t."X_8" <= -1.781050) AND (t."X_4" <= 2.088975) AND (t."X_8" <= -2.116958) AND (t."X_4" <= 0.502447)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" <= -1.157133) AND (t."X_8" <= -1.781050) AND (t."X_4" <= 2.088975) AND (t."X_8" <= -2.116958) AND (t."X_4" > 0.502447) AND (t."X_8" <= -2.588893)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" <= -1.157133) AND (t."X_8" <= -1.781050) AND (t."X_4" <= 2.088975) AND (t."X_8" <= -2.116958) AND (t."X_4" > 0.502447) AND (t."X_8" > -2.588893) AND (t."X_4" <= 1.238854)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_8" <= -0.272682) AND (t."X_9" <= 1.662321) AND (t."X_8" <= -1.157133) AND (t."X_8" <= -1.781050) AND (t."X_4" <= 2.088975) AND (t."X_8" <= -2.116958) AND (t."X_4" > 0.502447) AND (t."X_8" > -2.588893) AND (t."X_4" > 1.238854)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" <= 1.568138) AND (t."X_7" > -0.917572) AND (t."X_9" <= -0.800983) AND (t."X_9" <= -1.514785)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" <= 1.568138) AND (t."X_7" > -0.917572) AND (t."X_9" <= -0.800983) AND (t."X_9" > -1.514785) AND (t."X_4" <= -0.204566)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" <= 1.568138) AND (t."X_7" > -0.917572) AND (t."X_9" <= -0.800983) AND (t."X_9" > -1.514785) AND (t."X_4" > -0.204566)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" <= 1.568138) AND (t."X_7" > -0.917572) AND (t."X_9" > -0.800983) AND (t."X_8" <= 0.096293) AND (t."X_9" <= 0.237373)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" <= 1.568138) AND (t."X_7" > -0.917572) AND (t."X_9" > -0.800983) AND (t."X_8" <= 0.096293) AND (t."X_9" > 0.237373)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" <= 1.568138) AND (t."X_7" > -0.917572) AND (t."X_9" > -0.800983) AND (t."X_8" > 0.096293) AND (t."X_4" > -0.518962)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" <= 1.568138) AND (t."X_7" > -0.917572) AND (t."X_9" > -0.800983) AND (t."X_8" > 0.096293) AND (t."X_4" <= -0.518962) AND (t."X_4" <= -1.416514)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" <= 1.568138) AND (t."X_7" > -0.917572) AND (t."X_9" > -0.800983) AND (t."X_8" > 0.096293) AND (t."X_4" <= -0.518962) AND (t."X_4" > -1.416514) AND (t."X_9" <= -0.273064)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" <= 1.568138) AND (t."X_7" > -0.917572) AND (t."X_9" > -0.800983) AND (t."X_8" > 0.096293) AND (t."X_4" <= -0.518962) AND (t."X_4" > -1.416514) AND (t."X_9" > -0.273064) AND (t."X_8" <= 0.471769)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_8" > -0.272682) AND (t."X_8" <= 1.568138) AND (t."X_7" > -0.917572) AND (t."X_9" > -0.800983) AND (t."X_8" > 0.096293) AND (t."X_4" <= -0.518962) AND (t."X_4" > -1.416514) AND (t."X_9" > -0.273064) AND (t."X_8" > 0.471769)) THEN 74 ELSE NULL END AS "Leaf_74"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.164062 AS "P_0", 0.281250 AS "P_1", 0.328125 AS "P_2", 0.226562 AS "P_3", 2 AS "D", 0.328125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.171875 AS "P_0", 0.015625 AS "P_1", 0.562500 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.156250 AS "P_0", 0.546875 AS "P_1", 0.093750 AS "P_2", 0.203125 AS "P_3", 1 AS "D", 0.546875 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.159091 AS "P_0", 0.704545 AS "P_1", 0.090909 AS "P_2", 0.045455 AS "P_3", 1 AS "D", 0.704545 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.150000 AS "P_0", 0.200000 AS "P_1", 0.100000 AS "P_2", 0.550000 AS "P_3", 3 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.111111 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.888889 AS "P_3", 3 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.181818 AS "P_0", 0.363636 AS "P_1", 0.181818 AS "P_2", 0.272727 AS "P_3", 1 AS "D", 0.363636 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.285714 AS "P_0", 0.000000 AS "P_1", 0.285714 AS "P_2", 0.428571 AS "P_3", 3 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.428571 AS "P_0", 0.000000 AS "P_1", 0.285714 AS "P_2", 0.285714 AS "P_3", 0 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.108108 AS "P_0", 0.837838 AS "P_1", 0.054054 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.837838 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.600000 AS "P_0", 0.000000 AS "P_1", 0.400000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.186441 AS "P_0", 0.016949 AS "P_1", 0.593220 AS "P_2", 0.203390 AS "P_3", 2 AS "D", 0.593220 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.052632 AS "P_0", 0.000000 AS "P_1", 0.736842 AS "P_2", 0.210526 AS "P_3", 2 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.428571 AS "P_0", 0.047619 AS "P_1", 0.333333 AS "P_2", 0.190476 AS "P_3", 0 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.529412 AS "P_0", 0.000000 AS "P_1", 0.352941 AS "P_2", 0.117647 AS "P_3", 0 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.250000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.833333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.727273 AS "P_0", 0.000000 AS "P_1", 0.090909 AS "P_2", 0.181818 AS "P_3", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.888889 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.041667 AS "P_0", 0.000000 AS "P_1", 0.625000 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.071429 AS "P_0", 0.000000 AS "P_1", 0.928571 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.045455 AS "P_0", 0.000000 AS "P_1", 0.681818 AS "P_2", 0.272727 AS "P_3", 2 AS "D", 0.681818 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.071429 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.071429 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.375000 AS "P_2", 0.625000 AS "P_3", 3 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.600000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.088235 AS "P_0", 0.882353 AS "P_1", 0.029412 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.062500 AS "P_0", 0.906250 AS "P_1", 0.031250 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.906250 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.181818 AS "P_0", 0.727273 AS "P_1", 0.090909 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.500000 AS "P_0", 0.250000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_6", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_47", t1."Leaf_50", t1."Leaf_51", t1."Leaf_52", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_58", t1."Leaf_59", t1."Leaf_60" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" > 0.854988) AND (t."X_2" > 1.070135)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" <= -0.773697) AND (t."X_6" > 0.015549)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" <= -0.773697) AND (t."X_6" <= 0.015549) AND (t."X_6" <= -1.953325)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" <= -0.773697) AND (t."X_6" <= 0.015549) AND (t."X_6" > -1.953325)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" > 0.687905) AND (t."X_2" <= -1.306731)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" > 0.687905) AND (t."X_2" > -1.306731) AND (t."X_7" > 0.259245) AND (t."X_8" > 0.698511)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" > 0.687905) AND (t."X_2" > -1.306731) AND (t."X_7" > 0.259245) AND (t."X_8" <= 0.698511) AND (t."X_2" <= -0.894246)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" > 0.687905) AND (t."X_2" > -1.306731) AND (t."X_7" > 0.259245) AND (t."X_8" <= 0.698511) AND (t."X_2" > -0.894246)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_6" > 0.687905) AND (t."X_2" > -1.306731) AND (t."X_7" <= 0.259245) AND (t."X_2" > 0.736741) AND (t."X_2" <= 1.106009)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" > 0.687905) AND (t."X_2" > -1.306731) AND (t."X_7" <= 0.259245) AND (t."X_2" > 0.736741) AND (t."X_2" > 1.106009)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" > 0.687905) AND (t."X_2" > -1.306731) AND (t."X_7" <= 0.259245) AND (t."X_2" <= 0.736741) AND (t."X_8" <= 0.048290)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" > 0.687905) AND (t."X_2" > -1.306731) AND (t."X_7" <= 0.259245) AND (t."X_2" <= 0.736741) AND (t."X_8" > 0.048290)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" > -0.773697) AND (t."X_7" > -1.166585) AND (t."X_5" > 1.059765) AND (t."X_5" <= 1.507747)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" > -0.773697) AND (t."X_7" > -1.166585) AND (t."X_5" > 1.059765) AND (t."X_5" > 1.507747) AND (t."X_9" <= -0.187240)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" > -0.773697) AND (t."X_7" > -1.166585) AND (t."X_5" > 1.059765) AND (t."X_5" > 1.507747) AND (t."X_9" > -0.187240)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" > -0.773697) AND (t."X_7" > -1.166585) AND (t."X_5" <= 1.059765) AND (t."X_9" <= -0.037109) AND (t."X_2" <= 0.560971)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" > -0.773697) AND (t."X_7" > -1.166585) AND (t."X_5" <= 1.059765) AND (t."X_9" <= -0.037109) AND (t."X_2" > 0.560971)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" > -0.773697) AND (t."X_7" > -1.166585) AND (t."X_5" <= 1.059765) AND (t."X_9" > -0.037109) AND (t."X_7" <= -0.916339) AND (t."X_5" <= -0.224545)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" > -0.773697) AND (t."X_7" > -1.166585) AND (t."X_5" <= 1.059765) AND (t."X_9" > -0.037109) AND (t."X_7" <= -0.916339) AND (t."X_5" > -0.224545)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" > -0.773697) AND (t."X_7" > -1.166585) AND (t."X_5" <= 1.059765) AND (t."X_9" > -0.037109) AND (t."X_7" > -0.916339) AND (t."X_9" <= 0.192494)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" > -0.773697) AND (t."X_7" <= -1.166585) AND (t."X_9" <= -2.076020)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" > -0.773697) AND (t."X_7" <= -1.166585) AND (t."X_9" > -2.076020) AND (t."X_9" <= -0.540899)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" > -0.773697) AND (t."X_7" <= -1.166585) AND (t."X_9" > -2.076020) AND (t."X_9" > -0.540899) AND (t."X_5" > -0.378099)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" > -0.773697) AND (t."X_7" <= -1.166585) AND (t."X_9" > -2.076020) AND (t."X_9" > -0.540899) AND (t."X_5" <= -0.378099) AND (t."X_9" <= -0.081398)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" > -0.773697) AND (t."X_7" <= -1.166585) AND (t."X_9" > -2.076020) AND (t."X_9" > -0.540899) AND (t."X_5" <= -0.378099) AND (t."X_9" > -0.081398)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" > -0.773697) AND (t."X_7" > -1.166585) AND (t."X_5" <= 1.059765) AND (t."X_9" > -0.037109) AND (t."X_7" > -0.916339) AND (t."X_9" > 0.192494) AND (t."X_2" > 0.649457)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" > -0.773697) AND (t."X_7" > -1.166585) AND (t."X_5" <= 1.059765) AND (t."X_9" > -0.037109) AND (t."X_7" > -0.916339) AND (t."X_9" > 0.192494) AND (t."X_2" <= 0.649457) AND (t."X_5" <= -0.021455)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" <= 0.854988) AND (t."X_8" > -0.773697) AND (t."X_7" > -1.166585) AND (t."X_5" <= 1.059765) AND (t."X_9" > -0.037109) AND (t."X_7" > -0.916339) AND (t."X_9" > 0.192494) AND (t."X_2" <= 0.649457) AND (t."X_5" > -0.021455)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" > 0.854988) AND (t."X_2" <= 1.070135) AND (t."X_8" > 0.325008)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" > 0.854988) AND (t."X_2" <= 1.070135) AND (t."X_8" <= 0.325008) AND (t."X_9" <= -0.125496)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_6" <= 0.687905) AND (t."X_7" > 0.854988) AND (t."X_2" <= 1.070135) AND (t."X_8" <= 0.325008) AND (t."X_9" > -0.125496)) THEN 60 ELSE NULL END AS "Leaf_60"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.164062 AS "P_0", 0.210938 AS "P_1", 0.296875 AS "P_2", 0.328125 AS "P_3", 3 AS "D", 0.328125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.235294 AS "P_0", 0.294118 AS "P_1", 0.200000 AS "P_2", 0.270588 AS "P_3", 1 AS "D", 0.294118 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.023256 AS "P_0", 0.046512 AS "P_1", 0.488372 AS "P_2", 0.441860 AS "P_3", 2 AS "D", 0.488372 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.271429 AS "P_0", 0.171429 AS "P_1", 0.228571 AS "P_2", 0.328571 AS "P_3", 3 AS "D", 0.328571 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.066667 AS "P_0", 0.866667 AS "P_1", 0.066667 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.928571 AS "P_1", 0.071429 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.222222 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.111111 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.288462 AS "P_0", 0.230769 AS "P_1", 0.076923 AS "P_2", 0.403846 AS "P_3", 3 AS "D", 0.403846 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.027778 AS "P_0", 0.055556 AS "P_1", 0.388889 AS "P_2", 0.527778 AS "P_3", 3 AS "D", 0.527778 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.043478 AS "P_0", 0.000000 AS "P_1", 0.130435 AS "P_2", 0.826087 AS "P_3", 3 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.153846 AS "P_1", 0.846154 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.083333 AS "P_1", 0.916667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.058824 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.941176 AS "P_3", 3 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.156250 AS "P_0", 0.375000 AS "P_1", 0.125000 AS "P_2", 0.343750 AS "P_3", 1 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.187500 AS "P_0", 0.062500 AS "P_1", 0.250000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.125000 AS "P_0", 0.687500 AS "P_1", 0.000000 AS "P_2", 0.187500 AS "P_3", 1 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.230769 AS "P_0", 0.000000 AS "P_1", 0.153846 AS "P_2", 0.615385 AS "P_3", 3 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.300000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.700000 AS "P_3", 3 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.125000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.875000 AS "P_3", 3 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.588235 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.411765 AS "P_3", 0 AS "D", 0.588235 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.363636 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.636364 AS "P_3", 3 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_33", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_51", t1."Leaf_52", t1."Leaf_54", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58", t1."Leaf_60", t1."Leaf_63", t1."Leaf_64", t1."Leaf_65", t1."Leaf_67", t1."Leaf_69", t1."Leaf_70" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > 0.214268) AND (t."X_7" > -0.709946) AND (t."X_9" > 1.143299) AND (t."X_8" <= 0.815359)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_8" > 0.214268) AND (t."X_7" > -0.709946) AND (t."X_9" > 1.143299) AND (t."X_8" > 0.815359) AND (t."X_9" <= 1.483396)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_8" > 0.214268) AND (t."X_7" > -0.709946) AND (t."X_9" > 1.143299) AND (t."X_8" > 0.815359) AND (t."X_9" > 1.483396)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_8" > 0.214268) AND (t."X_7" <= -0.709946) AND (t."X_7" <= -2.019774) AND (t."X_9" <= -0.137447)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_8" > 0.214268) AND (t."X_7" <= -0.709946) AND (t."X_7" <= -2.019774) AND (t."X_9" > -0.137447)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_8" > 0.214268) AND (t."X_7" <= -0.709946) AND (t."X_7" > -2.019774) AND (t."X_9" <= -0.281783) AND (t."X_7" <= -1.315675) AND (t."X_2" <= 0.447113)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_8" > 0.214268) AND (t."X_7" <= -0.709946) AND (t."X_7" > -2.019774) AND (t."X_9" <= -0.281783) AND (t."X_7" <= -1.315675) AND (t."X_2" > 0.447113)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_8" > 0.214268) AND (t."X_7" <= -0.709946) AND (t."X_7" > -2.019774) AND (t."X_9" <= -0.281783) AND (t."X_7" > -1.315675) AND (t."X_2" <= 1.129972)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_8" > 0.214268) AND (t."X_7" <= -0.709946) AND (t."X_7" > -2.019774) AND (t."X_9" <= -0.281783) AND (t."X_7" > -1.315675) AND (t."X_2" > 1.129972)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_8" > 0.214268) AND (t."X_7" <= -0.709946) AND (t."X_7" > -2.019774) AND (t."X_9" > -0.281783) AND (t."X_9" <= 0.528884)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_8" > 0.214268) AND (t."X_7" <= -0.709946) AND (t."X_7" > -2.019774) AND (t."X_9" > -0.281783) AND (t."X_9" > 0.528884) AND (t."X_7" <= -1.305537)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_8" > 0.214268) AND (t."X_7" <= -0.709946) AND (t."X_7" > -2.019774) AND (t."X_9" > -0.281783) AND (t."X_9" > 0.528884) AND (t."X_7" > -1.305537) AND (t."X_8" <= 1.872894)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_8" > 0.214268) AND (t."X_7" <= -0.709946) AND (t."X_7" > -2.019774) AND (t."X_9" > -0.281783) AND (t."X_9" > 0.528884) AND (t."X_7" > -1.305537) AND (t."X_8" > 1.872894)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" <= -1.125393) AND (t."X_2" <= -1.068038)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" <= -1.125393) AND (t."X_2" > -1.068038) AND (t."X_2" <= 0.361567)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" <= -1.125393) AND (t."X_2" > -1.068038) AND (t."X_2" > 0.361567) AND (t."X_9" <= -0.468342)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" <= -1.125393) AND (t."X_2" > -1.068038) AND (t."X_2" > 0.361567) AND (t."X_9" > -0.468342) AND (t."X_8" <= -1.373085)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" <= -1.125393) AND (t."X_2" > -1.068038) AND (t."X_2" > 0.361567) AND (t."X_9" > -0.468342) AND (t."X_8" > -1.373085)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" > -1.125393) AND (t."X_2" > 1.133550) AND (t."X_8" > -0.092003)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" > -1.125393) AND (t."X_2" > 1.133550) AND (t."X_8" <= -0.092003) AND (t."X_9" <= 0.763699)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" > -1.125393) AND (t."X_2" > 1.133550) AND (t."X_8" <= -0.092003) AND (t."X_9" > 0.763699)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_8" > 0.214268) AND (t."X_7" > -0.709946) AND (t."X_9" <= 1.143299) AND (t."X_9" <= -1.897800)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_8" > 0.214268) AND (t."X_7" > -0.709946) AND (t."X_9" <= 1.143299) AND (t."X_9" > -1.897800)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" > -1.125393) AND (t."X_2" <= 1.133550) AND (t."X_2" > 0.220529) AND (t."X_2" <= 0.605312) AND (t."X_8" <= -0.644164)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" > -1.125393) AND (t."X_2" <= 1.133550) AND (t."X_2" > 0.220529) AND (t."X_2" <= 0.605312) AND (t."X_8" > -0.644164)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" > -1.125393) AND (t."X_2" <= 1.133550) AND (t."X_2" > 0.220529) AND (t."X_2" > 0.605312) AND (t."X_7" > 1.488415)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" > -1.125393) AND (t."X_2" <= 1.133550) AND (t."X_2" > 0.220529) AND (t."X_2" > 0.605312) AND (t."X_7" <= 1.488415) AND (t."X_9" <= 0.120814)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" > -1.125393) AND (t."X_2" <= 1.133550) AND (t."X_2" > 0.220529) AND (t."X_2" > 0.605312) AND (t."X_7" <= 1.488415) AND (t."X_9" > 0.120814) AND (t."X_7" <= 0.099543)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" > -1.125393) AND (t."X_2" <= 1.133550) AND (t."X_2" > 0.220529) AND (t."X_2" > 0.605312) AND (t."X_7" <= 1.488415) AND (t."X_9" > 0.120814) AND (t."X_7" > 0.099543)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" > -1.125393) AND (t."X_2" <= 1.133550) AND (t."X_2" <= 0.220529) AND (t."X_8" > -0.143059)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" > -1.125393) AND (t."X_2" <= 1.133550) AND (t."X_2" <= 0.220529) AND (t."X_8" <= -0.143059) AND (t."X_8" <= -1.877260) AND (t."X_8" <= -2.143024)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" > -1.125393) AND (t."X_2" <= 1.133550) AND (t."X_2" <= 0.220529) AND (t."X_8" <= -0.143059) AND (t."X_8" <= -1.877260) AND (t."X_8" > -2.143024)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" > -1.125393) AND (t."X_2" <= 1.133550) AND (t."X_2" <= 0.220529) AND (t."X_8" <= -0.143059) AND (t."X_8" > -1.877260) AND (t."X_8" <= -0.826371)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" > -1.125393) AND (t."X_2" <= 1.133550) AND (t."X_2" <= 0.220529) AND (t."X_8" <= -0.143059) AND (t."X_8" > -1.877260) AND (t."X_8" > -0.826371) AND (t."X_7" <= 0.125538)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" > -1.125393) AND (t."X_2" <= 1.133550) AND (t."X_2" <= 0.220529) AND (t."X_8" <= -0.143059) AND (t."X_8" > -1.877260) AND (t."X_8" > -0.826371) AND (t."X_7" > 0.125538) AND (t."X_8" <= -0.700701)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_8" <= 0.214268) AND (t."X_7" > -1.125393) AND (t."X_2" <= 1.133550) AND (t."X_2" <= 0.220529) AND (t."X_8" <= -0.143059) AND (t."X_8" > -1.877260) AND (t."X_8" > -0.826371) AND (t."X_7" > 0.125538) AND (t."X_8" > -0.700701)) THEN 70 ELSE NULL END AS "Leaf_70"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.226562 AS "P_0", 0.226562 AS "P_1", 0.296875 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.296875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.246377 AS "P_0", 0.057971 AS "P_1", 0.478261 AS "P_2", 0.217391 AS "P_3", 2 AS "D", 0.478261 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.203390 AS "P_0", 0.423729 AS "P_1", 0.084746 AS "P_2", 0.288136 AS "P_3", 1 AS "D", 0.423729 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.281250 AS "P_0", 0.093750 AS "P_1", 0.093750 AS "P_2", 0.531250 AS "P_3", 3 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.111111 AS "P_0", 0.814815 AS "P_1", 0.074074 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.814815 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.045455 AS "P_0", 0.954545 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.400000 AS "P_0", 0.200000 AS "P_1", 0.400000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.153846 AS "P_0", 0.115385 AS "P_1", 0.115385 AS "P_2", 0.615385 AS "P_3", 3 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.222222 AS "P_0", 0.222222 AS "P_1", 0.333333 AS "P_2", 0.222222 AS "P_3", 2 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.117647 AS "P_0", 0.058824 AS "P_1", 0.000000 AS "P_2", 0.823529 AS "P_3", 3 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.400000 AS "P_1", 0.600000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.400000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.400000 AS "P_3", 0 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.454545 AS "P_0", 0.000000 AS "P_1", 0.136364 AS "P_2", 0.409091 AS "P_3", 0 AS "D", 0.454545 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.148936 AS "P_0", 0.085106 AS "P_1", 0.638298 AS "P_2", 0.127660 AS "P_3", 2 AS "D", 0.638298 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.625000 AS "P_0", 0.000000 AS "P_1", 0.187500 AS "P_2", 0.187500 AS "P_3", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.375000 AS "P_2", 0.375000 AS "P_3", 2 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.600000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.048780 AS "P_0", 0.073171 AS "P_1", 0.731707 AS "P_2", 0.146341 AS "P_3", 2 AS "D", 0.731707 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.071429 AS "P_1", 0.857143 AS "P_2", 0.071429 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.153846 AS "P_0", 0.076923 AS "P_1", 0.461538 AS "P_2", 0.307692 AS "P_3", 2 AS "D", 0.461538 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.125000 AS "P_1", 0.750000 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.857143 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 0.037037 AS "P_1", 0.888889 AS "P_2", 0.074074 AS "P_3", 2 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 0.047619 AS "P_1", 0.952381 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48", t1."Leaf_50", t1."Leaf_52", t1."Leaf_54", t1."Leaf_57", t1."Leaf_58", t1."Leaf_60", t1."Leaf_61", t1."Leaf_62", t1."Leaf_65", t1."Leaf_66", t1."Leaf_67", t1."Leaf_69", t1."Leaf_70" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" > -0.005190) AND (t."X_4" > 0.380900) AND (t."X_4" > 1.150528) AND (t."X_9" <= 0.160233)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" > -0.005190) AND (t."X_4" > 0.380900) AND (t."X_4" > 1.150528) AND (t."X_9" > 0.160233)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" > -0.005190) AND (t."X_4" > 0.380900) AND (t."X_4" <= 1.150528) AND (t."X_9" > 0.561022)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" > -0.005190) AND (t."X_4" > 0.380900) AND (t."X_4" <= 1.150528) AND (t."X_9" <= 0.561022) AND (t."X_7" > 0.507026)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" > -0.005190) AND (t."X_4" > 0.380900) AND (t."X_4" <= 1.150528) AND (t."X_9" <= 0.561022) AND (t."X_7" <= 0.507026) AND (t."X_9" <= 0.289366)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" > -0.005190) AND (t."X_4" > 0.380900) AND (t."X_4" <= 1.150528) AND (t."X_9" <= 0.561022) AND (t."X_7" <= 0.507026) AND (t."X_9" > 0.289366)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_7" <= -1.336132) AND (t."X_4" <= 0.210400) AND (t."X_9" <= -0.116779) AND (t."X_9" <= -2.076020)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_7" <= -1.336132) AND (t."X_4" <= 0.210400) AND (t."X_9" <= -0.116779) AND (t."X_9" > -2.076020)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_7" <= -1.336132) AND (t."X_4" <= 0.210400) AND (t."X_9" > -0.116779) AND (t."X_8" <= -2.723157)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_7" <= -1.336132) AND (t."X_4" <= 0.210400) AND (t."X_9" > -0.116779) AND (t."X_8" > -2.723157)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_7" <= -1.336132) AND (t."X_4" > 0.210400) AND (t."X_9" <= -0.137447) AND (t."X_9" <= -0.326417)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_7" <= -1.336132) AND (t."X_4" > 0.210400) AND (t."X_9" <= -0.137447) AND (t."X_9" > -0.326417)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" > -0.005190) AND (t."X_4" <= 0.380900) AND (t."X_9" <= -1.897800)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" <= -0.005190) AND (t."X_9" <= 0.053666) AND (t."X_9" > -0.851361) AND (t."X_7" <= 0.392343) AND (t."X_9" <= -0.433731)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" <= -0.005190) AND (t."X_9" <= 0.053666) AND (t."X_9" > -0.851361) AND (t."X_7" <= 0.392343) AND (t."X_9" > -0.433731)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" <= -0.005190) AND (t."X_9" <= 0.053666) AND (t."X_9" <= -0.851361) AND (t."X_8" <= -1.378330)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" <= -0.005190) AND (t."X_9" <= 0.053666) AND (t."X_9" <= -0.851361) AND (t."X_8" > -1.378330) AND (t."X_4" <= -0.104887)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" <= -0.005190) AND (t."X_9" <= 0.053666) AND (t."X_9" <= -0.851361) AND (t."X_8" > -1.378330) AND (t."X_4" > -0.104887)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" <= -0.005190) AND (t."X_9" <= 0.053666) AND (t."X_9" > -0.851361) AND (t."X_7" > 0.392343) AND (t."X_8" <= -2.132079)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" <= -0.005190) AND (t."X_9" <= 0.053666) AND (t."X_9" > -0.851361) AND (t."X_7" > 0.392343) AND (t."X_8" > -2.132079)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_7" <= -1.336132) AND (t."X_4" > 0.210400) AND (t."X_9" > -0.137447) AND (t."X_8" > -0.483114)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_7" <= -1.336132) AND (t."X_4" > 0.210400) AND (t."X_9" > -0.137447) AND (t."X_8" <= -0.483114) AND (t."X_9" <= 0.174004)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_7" <= -1.336132) AND (t."X_4" > 0.210400) AND (t."X_9" > -0.137447) AND (t."X_8" <= -0.483114) AND (t."X_9" > 0.174004)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" <= -0.005190) AND (t."X_9" > 0.053666) AND (t."X_4" > 2.068609)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" <= -0.005190) AND (t."X_9" > 0.053666) AND (t."X_4" <= 2.068609) AND (t."X_8" > -0.408378)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" <= -0.005190) AND (t."X_9" > 0.053666) AND (t."X_4" <= 2.068609) AND (t."X_8" <= -0.408378) AND (t."X_7" > -0.399534)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" <= -0.005190) AND (t."X_9" > 0.053666) AND (t."X_4" <= 2.068609) AND (t."X_8" <= -0.408378) AND (t."X_7" <= -0.399534) AND (t."X_9" <= 0.901040) AND (t."X_9" <= 0.353372)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" <= -0.005190) AND (t."X_9" > 0.053666) AND (t."X_4" <= 2.068609) AND (t."X_8" <= -0.408378) AND (t."X_7" <= -0.399534) AND (t."X_9" <= 0.901040) AND (t."X_9" > 0.353372)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" <= -0.005190) AND (t."X_9" > 0.053666) AND (t."X_4" <= 2.068609) AND (t."X_8" <= -0.408378) AND (t."X_7" <= -0.399534) AND (t."X_9" > 0.901040) AND (t."X_7" > -0.567641)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" <= -0.005190) AND (t."X_9" > 0.053666) AND (t."X_4" <= 2.068609) AND (t."X_8" <= -0.408378) AND (t."X_7" <= -0.399534) AND (t."X_9" > 0.901040) AND (t."X_7" <= -0.567641) AND (t."X_8" <= -1.941207)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" <= -0.005190) AND (t."X_9" > 0.053666) AND (t."X_4" <= 2.068609) AND (t."X_8" <= -0.408378) AND (t."X_7" <= -0.399534) AND (t."X_9" > 0.901040) AND (t."X_7" <= -0.567641) AND (t."X_8" > -1.941207)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" > -0.005190) AND (t."X_4" <= 0.380900) AND (t."X_9" > -1.897800) AND (t."X_9" <= -1.038779) AND (t."X_9" <= -1.395238)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" > -0.005190) AND (t."X_4" <= 0.380900) AND (t."X_9" > -1.897800) AND (t."X_9" <= -1.038779) AND (t."X_9" > -1.395238)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" > -0.005190) AND (t."X_4" <= 0.380900) AND (t."X_9" > -1.897800) AND (t."X_9" > -1.038779) AND (t."X_9" <= 0.370555)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" > -0.005190) AND (t."X_4" <= 0.380900) AND (t."X_9" > -1.897800) AND (t."X_9" > -1.038779) AND (t."X_9" > 0.370555) AND (t."X_9" <= 0.637413)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_7" > -1.336132) AND (t."X_8" > -0.005190) AND (t."X_4" <= 0.380900) AND (t."X_9" > -1.897800) AND (t."X_9" > -1.038779) AND (t."X_9" > 0.370555) AND (t."X_9" > 0.637413)) THEN 70 ELSE NULL END AS "Leaf_70"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.242188 AS "P_0", 0.250000 AS "P_1", 0.304688 AS "P_2", 0.203125 AS "P_3", 2 AS "D", 0.304688 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.481481 AS "P_0", 0.000000 AS "P_1", 0.074074 AS "P_2", 0.444444 AS "P_3", 0 AS "D", 0.481481 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.178218 AS "P_0", 0.316832 AS "P_1", 0.366337 AS "P_2", 0.138614 AS "P_3", 2 AS "D", 0.366337 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.115385 AS "P_0", 0.038462 AS "P_1", 0.634615 AS "P_2", 0.211538 AS "P_3", 2 AS "D", 0.634615 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.244898 AS "P_0", 0.612245 AS "P_1", 0.081633 AS "P_2", 0.061224 AS "P_3", 1 AS "D", 0.612245 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.068966 AS "P_0", 0.896552 AS "P_1", 0.000000 AS "P_2", 0.034483 AS "P_3", 1 AS "D", 0.896552 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.500000 AS "P_0", 0.200000 AS "P_1", 0.200000 AS "P_2", 0.100000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.666667 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.133333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.200000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.285714 AS "P_0", 0.428571 AS "P_1", 0.000000 AS "P_2", 0.285714 AS "P_3", 1 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.214286 AS "P_0", 0.000000 AS "P_1", 0.071429 AS "P_2", 0.714286 AS "P_3", 3 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.769231 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.153846 AS "P_3", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.900000 AS "P_3", 3 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.909091 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.090909 AS "P_3", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.035714 AS "P_0", 0.928571 AS "P_1", 0.000000 AS "P_2", 0.035714 AS "P_3", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.294118 AS "P_0", 0.117647 AS "P_1", 0.352941 AS "P_2", 0.235294 AS "P_3", 2 AS "D", 0.352941 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.028571 AS "P_0", 0.000000 AS "P_1", 0.771429 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.771429 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.625000 AS "P_2", 0.375000 AS "P_3", 2 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.555556 AS "P_0", 0.222222 AS "P_1", 0.111111 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.029412 AS "P_0", 0.000000 AS "P_1", 0.794118 AS "P_2", 0.176471 AS "P_3", 2 AS "D", 0.794118 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.030303 AS "P_0", 0.000000 AS "P_1", 0.818182 AS "P_2", 0.151515 AS "P_3", 2 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.050000 AS "P_0", 0.000000 AS "P_1", 0.700000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.083333 AS "P_0", 0.000000 AS "P_1", 0.833333 AS "P_2", 0.083333 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.090909 AS "P_0", 0.000000 AS "P_1", 0.909091 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 0.958333 AS "P_1", 0.000000 AS "P_2", 0.041667 AS "P_3", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.000000 AS "P_0", 0.875000 AS "P_1", 0.000000 AS "P_2", 0.125000 AS "P_3", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_30", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_42", t1."Leaf_44", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 1.909400) AND (t."X_4" <= 0.428810)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_2" > 1.909400) AND (t."X_4" > 0.428810)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" > 0.208819) AND (t."X_0" <= -0.550236) AND (t."X_7" > -0.259434)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" > 0.208819) AND (t."X_0" <= -0.550236) AND (t."X_7" <= -0.259434) AND (t."X_9" <= 0.727541)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" > 0.208819) AND (t."X_0" <= -0.550236) AND (t."X_7" <= -0.259434) AND (t."X_9" > 0.727541)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" > 0.208819) AND (t."X_0" > -0.550236) AND (t."X_0" <= 0.015764)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" > 0.208819) AND (t."X_0" > -0.550236) AND (t."X_0" > 0.015764) AND (t."X_4" > 1.256178) AND (t."X_2" <= 0.447540)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" > 0.208819) AND (t."X_0" > -0.550236) AND (t."X_0" > 0.015764) AND (t."X_4" > 1.256178) AND (t."X_2" > 0.447540)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" > 0.208819) AND (t."X_0" > -0.550236) AND (t."X_0" > 0.015764) AND (t."X_4" <= 1.256178) AND (t."X_7" > 0.894052)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" <= 0.208819) AND (t."X_7" <= -1.330091) AND (t."X_8" <= -2.081041)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" <= 0.208819) AND (t."X_7" <= -1.330091) AND (t."X_8" > -2.081041) AND (t."X_0" <= 0.379715)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" <= 0.208819) AND (t."X_7" <= -1.330091) AND (t."X_8" > -2.081041) AND (t."X_0" > 0.379715) AND (t."X_8" <= -0.858064)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" <= 0.208819) AND (t."X_7" <= -1.330091) AND (t."X_8" > -2.081041) AND (t."X_0" > 0.379715) AND (t."X_8" > -0.858064)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" <= 0.208819) AND (t."X_7" > -1.330091) AND (t."X_2" > 1.276027)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" <= 0.208819) AND (t."X_7" > -1.330091) AND (t."X_2" <= 1.276027) AND (t."X_0" > -0.030092) AND (t."X_0" <= 1.196327) AND (t."X_8" <= -0.179590)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" <= 0.208819) AND (t."X_7" > -1.330091) AND (t."X_2" <= 1.276027) AND (t."X_0" > -0.030092) AND (t."X_0" <= 1.196327) AND (t."X_8" > -0.179590) AND (t."X_9" <= 0.405396)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" <= 0.208819) AND (t."X_7" > -1.330091) AND (t."X_2" <= 1.276027) AND (t."X_0" > -0.030092) AND (t."X_0" <= 1.196327) AND (t."X_8" > -0.179590) AND (t."X_9" > 0.405396)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" <= 0.208819) AND (t."X_7" > -1.330091) AND (t."X_2" <= 1.276027) AND (t."X_0" > -0.030092) AND (t."X_0" > 1.196327) AND (t."X_2" <= 1.098585)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" <= 0.208819) AND (t."X_7" > -1.330091) AND (t."X_2" <= 1.276027) AND (t."X_0" > -0.030092) AND (t."X_0" > 1.196327) AND (t."X_2" > 1.098585)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" > 0.208819) AND (t."X_0" > -0.550236) AND (t."X_0" > 0.015764) AND (t."X_4" <= 1.256178) AND (t."X_7" <= 0.894052) AND (t."X_9" > 1.304185)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" > 0.208819) AND (t."X_0" > -0.550236) AND (t."X_0" > 0.015764) AND (t."X_4" <= 1.256178) AND (t."X_7" <= 0.894052) AND (t."X_9" <= 1.304185) AND (t."X_2" > 1.152578)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" <= 0.208819) AND (t."X_7" > -1.330091) AND (t."X_2" <= 1.276027) AND (t."X_0" <= -0.030092) AND (t."X_8" > -0.255048) AND (t."X_9" > -0.208921)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" <= 0.208819) AND (t."X_7" > -1.330091) AND (t."X_2" <= 1.276027) AND (t."X_0" <= -0.030092) AND (t."X_8" > -0.255048) AND (t."X_9" <= -0.208921) AND (t."X_2" <= -0.212083)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" <= 0.208819) AND (t."X_7" > -1.330091) AND (t."X_2" <= 1.276027) AND (t."X_0" <= -0.030092) AND (t."X_8" > -0.255048) AND (t."X_9" <= -0.208921) AND (t."X_2" > -0.212083)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" <= 0.208819) AND (t."X_7" > -1.330091) AND (t."X_2" <= 1.276027) AND (t."X_0" <= -0.030092) AND (t."X_8" <= -0.255048) AND (t."X_4" <= 0.687059)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" <= 0.208819) AND (t."X_7" > -1.330091) AND (t."X_2" <= 1.276027) AND (t."X_0" <= -0.030092) AND (t."X_8" <= -0.255048) AND (t."X_4" > 0.687059) AND (t."X_9" <= 0.102750)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" <= 0.208819) AND (t."X_7" > -1.330091) AND (t."X_2" <= 1.276027) AND (t."X_0" <= -0.030092) AND (t."X_8" <= -0.255048) AND (t."X_4" > 0.687059) AND (t."X_9" > 0.102750)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" > 0.208819) AND (t."X_0" > -0.550236) AND (t."X_0" > 0.015764) AND (t."X_4" <= 1.256178) AND (t."X_7" <= 0.894052) AND (t."X_9" <= 1.304185) AND (t."X_2" <= 1.152578) AND (t."X_7" <= 0.027886)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" > 0.208819) AND (t."X_0" > -0.550236) AND (t."X_0" > 0.015764) AND (t."X_4" <= 1.256178) AND (t."X_7" <= 0.894052) AND (t."X_9" <= 1.304185) AND (t."X_2" <= 1.152578) AND (t."X_7" > 0.027886) AND (t."X_2" <= -0.508045)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_2" <= 1.909400) AND (t."X_8" > 0.208819) AND (t."X_0" > -0.550236) AND (t."X_0" > 0.015764) AND (t."X_4" <= 1.256178) AND (t."X_7" <= 0.894052) AND (t."X_9" <= 1.304185) AND (t."X_2" <= 1.152578) AND (t."X_7" > 0.027886) AND (t."X_2" > -0.508045)) THEN 58 ELSE NULL END AS "Leaf_58"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.250000 AS "P_0", 0.234375 AS "P_1", 0.273438 AS "P_2", 0.242188 AS "P_3", 2 AS "D", 0.273438 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.264463 AS "P_0", 0.247934 AS "P_1", 0.280992 AS "P_2", 0.206612 AS "P_3", 2 AS "D", 0.280992 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.857143 AS "P_3", 3 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.246154 AS "P_0", 0.046154 AS "P_1", 0.507692 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.507692 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.285714 AS "P_0", 0.482143 AS "P_1", 0.017857 AS "P_2", 0.214286 AS "P_3", 1 AS "D", 0.482143 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.642857 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.357143 AS "P_3", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.137255 AS "P_0", 0.058824 AS "P_1", 0.647059 AS "P_2", 0.156863 AS "P_3", 2 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.388889 AS "P_1", 0.000000 AS "P_2", 0.611111 AS "P_3", 3 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.421053 AS "P_0", 0.526316 AS "P_1", 0.026316 AS "P_2", 0.026316 AS "P_3", 1 AS "D", 0.526316 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.083333 AS "P_1", 0.000000 AS "P_2", 0.916667 AS "P_3", 3 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.533333 AS "P_0", 0.400000 AS "P_1", 0.033333 AS "P_2", 0.033333 AS "P_3", 0 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.695652 AS "P_0", 0.260870 AS "P_1", 0.000000 AS "P_2", 0.043478 AS "P_3", 0 AS "D", 0.695652 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 0.857143 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.800000 AS "P_0", 0.150000 AS "P_1", 0.000000 AS "P_2", 0.050000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.063830 AS "P_0", 0.063830 AS "P_1", 0.702128 AS "P_2", 0.170213 AS "P_3", 2 AS "D", 0.702128 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.100000 AS "P_0", 0.066667 AS "P_1", 0.833333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.058824 AS "P_1", 0.470588 AS "P_2", 0.470588 AS "P_3", 2 AS "D", 0.470588 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.111111 AS "P_1", 0.111111 AS "P_2", 0.777778 AS "P_3", 3 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.875000 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.842105 AS "P_0", 0.157895 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.086957 AS "P_0", 0.000000 AS "P_1", 0.913043 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.142857 AS "P_0", 0.285714 AS "P_1", 0.571429 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_6", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_51", t1."Leaf_52", t1."Leaf_53", t1."Leaf_55", t1."Leaf_56" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_3" > 0.697479) AND (t."X_9" > 1.470460)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_3" <= 0.697479) AND (t."X_7" <= -0.989518) AND (t."X_8" > 2.574691)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_3" <= 0.697479) AND (t."X_7" <= -0.989518) AND (t."X_8" <= 2.574691) AND (t."X_3" <= -2.157666)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_3" <= 0.697479) AND (t."X_7" <= -0.989518) AND (t."X_8" <= 2.574691) AND (t."X_3" > -2.157666)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" > 0.974245)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_3" <= 0.697479) AND (t."X_7" > -0.989518) AND (t."X_7" > 0.854988)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_3" <= 0.697479) AND (t."X_7" > -0.989518) AND (t."X_7" <= 0.854988) AND (t."X_3" > -1.309525)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_3" <= 0.697479) AND (t."X_7" > -0.989518) AND (t."X_7" <= 0.854988) AND (t."X_3" <= -1.309525) AND (t."X_9" <= 1.289727)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_3" <= 0.697479) AND (t."X_7" > -0.989518) AND (t."X_7" <= 0.854988) AND (t."X_3" <= -1.309525) AND (t."X_9" > 1.289727)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.974245) AND (t."X_8" > -0.076269) AND (t."X_8" <= 0.146080)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.974245) AND (t."X_8" > -0.076269) AND (t."X_8" > 0.146080)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.974245) AND (t."X_8" <= -0.076269) AND (t."X_3" > 0.687213) AND (t."X_8" <= -4.232995)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.974245) AND (t."X_8" <= -0.076269) AND (t."X_3" > 0.687213) AND (t."X_8" > -4.232995)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.974245) AND (t."X_8" <= -0.076269) AND (t."X_3" <= 0.687213) AND (t."X_8" <= -2.211798)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.974245) AND (t."X_8" <= -0.076269) AND (t."X_3" <= 0.687213) AND (t."X_8" > -2.211798) AND (t."X_3" <= -2.782195)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.974245) AND (t."X_8" <= -0.076269) AND (t."X_3" <= 0.687213) AND (t."X_8" > -2.211798) AND (t."X_3" > -2.782195) AND (t."X_7" <= -2.547239) AND (t."X_9" <= 0.821658)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.974245) AND (t."X_8" <= -0.076269) AND (t."X_3" <= 0.687213) AND (t."X_8" > -2.211798) AND (t."X_3" > -2.782195) AND (t."X_7" <= -2.547239) AND (t."X_9" > 0.821658)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.974245) AND (t."X_8" <= -0.076269) AND (t."X_3" <= 0.687213) AND (t."X_8" > -2.211798) AND (t."X_3" > -2.782195) AND (t."X_7" > -2.547239) AND (t."X_8" > -0.385361) AND (t."X_9" <= -0.068293)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.974245) AND (t."X_8" <= -0.076269) AND (t."X_3" <= 0.687213) AND (t."X_8" > -2.211798) AND (t."X_3" > -2.782195) AND (t."X_7" > -2.547239) AND (t."X_8" > -0.385361) AND (t."X_9" > -0.068293)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.974245) AND (t."X_8" <= -0.076269) AND (t."X_3" <= 0.687213) AND (t."X_8" > -2.211798) AND (t."X_3" > -2.782195) AND (t."X_7" > -2.547239) AND (t."X_8" <= -0.385361) AND (t."X_8" <= -1.153215)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.974245) AND (t."X_8" <= -0.076269) AND (t."X_3" <= 0.687213) AND (t."X_8" > -2.211798) AND (t."X_3" > -2.782195) AND (t."X_7" > -2.547239) AND (t."X_8" <= -0.385361) AND (t."X_8" > -1.153215) AND (t."X_8" <= -0.989967)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.974245) AND (t."X_8" <= -0.076269) AND (t."X_3" <= 0.687213) AND (t."X_8" > -2.211798) AND (t."X_3" > -2.782195) AND (t."X_7" > -2.547239) AND (t."X_8" <= -0.385361) AND (t."X_8" > -1.153215) AND (t."X_8" > -0.989967) AND (t."X_7" <= -1.311912)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.974245) AND (t."X_8" <= -0.076269) AND (t."X_3" <= 0.687213) AND (t."X_8" > -2.211798) AND (t."X_3" > -2.782195) AND (t."X_7" > -2.547239) AND (t."X_8" <= -0.385361) AND (t."X_8" > -1.153215) AND (t."X_8" > -0.989967) AND (t."X_7" > -1.311912) AND (t."X_3" <= -0.562397)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_8" <= 0.208819) AND (t."X_7" <= 0.974245) AND (t."X_8" <= -0.076269) AND (t."X_3" <= 0.687213) AND (t."X_8" > -2.211798) AND (t."X_3" > -2.782195) AND (t."X_7" > -2.547239) AND (t."X_8" <= -0.385361) AND (t."X_8" > -1.153215) AND (t."X_8" > -0.989967) AND (t."X_7" > -1.311912) AND (t."X_3" > -0.562397)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_3" > 0.697479) AND (t."X_9" <= 1.470460) AND (t."X_8" > 2.348696) AND (t."X_9" <= 0.369973)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_3" > 0.697479) AND (t."X_9" <= 1.470460) AND (t."X_8" > 2.348696) AND (t."X_9" > 0.369973)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_3" > 0.697479) AND (t."X_9" <= 1.470460) AND (t."X_8" <= 2.348696) AND (t."X_8" <= 1.526133)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_3" > 0.697479) AND (t."X_9" <= 1.470460) AND (t."X_8" <= 2.348696) AND (t."X_8" > 1.526133) AND (t."X_8" <= 1.727652)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_8" > 0.208819) AND (t."X_3" > 0.697479) AND (t."X_9" <= 1.470460) AND (t."X_8" <= 2.348696) AND (t."X_8" > 1.526133) AND (t."X_8" > 1.727652)) THEN 56 ELSE NULL END AS "Leaf_56"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.257812 AS "P_0", 0.257812 AS "P_1", 0.335938 AS "P_2", 0.148438 AS "P_3", 2 AS "D", 0.335938 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.222222 AS "P_0", 0.041667 AS "P_1", 0.555556 AS "P_2", 0.180556 AS "P_3", 2 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.303571 AS "P_0", 0.535714 AS "P_1", 0.053571 AS "P_2", 0.107143 AS "P_3", 1 AS "D", 0.535714 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.081081 AS "P_0", 0.702703 AS "P_1", 0.054054 AS "P_2", 0.162162 AS "P_3", 1 AS "D", 0.702703 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.736842 AS "P_0", 0.210526 AS "P_1", 0.052632 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.875000 AS "P_0", 0.062500 AS "P_1", 0.062500 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.125000 AS "P_1", 0.125000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.103448 AS "P_0", 0.862069 AS "P_1", 0.034483 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.862069 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.857143 AS "P_3", 3 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.275862 AS "P_0", 0.051724 AS "P_1", 0.448276 AS "P_2", 0.224138 AS "P_3", 2 AS "D", 0.448276 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.300000 AS "P_0", 0.600000 AS "P_1", 0.100000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.211538 AS "P_0", 0.057692 AS "P_1", 0.480769 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.480769 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.275000 AS "P_0", 0.075000 AS "P_1", 0.525000 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.525000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.171429 AS "P_0", 0.085714 AS "P_1", 0.600000 AS "P_2", 0.142857 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.181818 AS "P_0", 0.030303 AS "P_1", 0.636364 AS "P_2", 0.151515 AS "P_3", 2 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.172414 AS "P_0", 0.034483 AS "P_1", 0.724138 AS "P_2", 0.068966 AS "P_3", 2 AS "D", 0.724138 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.192308 AS "P_0", 0.038462 AS "P_1", 0.769231 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.263158 AS "P_0", 0.052632 AS "P_1", 0.684211 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.176471 AS "P_0", 0.058824 AS "P_1", 0.764706 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.125000 AS "P_0", 0.062500 AS "P_1", 0.812500 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.600000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 0.090909 AS "P_1", 0.909091 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.923077 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_32", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_49", t1."Leaf_50", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_58", t1."Leaf_61", t1."Leaf_62", t1."Leaf_64", t1."Leaf_65", t1."Leaf_66", t1."Leaf_67", t1."Leaf_69", t1."Leaf_70" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_4" <= -1.747123)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_4" > -1.747123) AND (t."X_7" <= -0.399534) AND (t."X_5" <= -0.779190)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_4" > -1.747123) AND (t."X_7" > -0.399534) AND (t."X_9" <= -2.041677)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_4" > -1.747123) AND (t."X_7" <= -0.399534) AND (t."X_5" > -0.779190) AND (t."X_4" <= -1.423908)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_4" > -1.747123) AND (t."X_7" <= -0.399534) AND (t."X_5" > -0.779190) AND (t."X_4" > -1.423908)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_4" > -1.747123) AND (t."X_7" > -0.399534) AND (t."X_9" > -2.041677) AND (t."X_9" > 0.053666)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_4" > -1.747123) AND (t."X_7" > -0.399534) AND (t."X_9" > -2.041677) AND (t."X_9" <= 0.053666) AND (t."X_6" > 3.676874)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_4" > -1.747123) AND (t."X_7" > -0.399534) AND (t."X_9" > -2.041677) AND (t."X_9" <= 0.053666) AND (t."X_6" <= 3.676874) AND (t."X_9" <= -0.866524)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_4" > -1.747123) AND (t."X_7" > -0.399534) AND (t."X_9" > -2.041677) AND (t."X_9" <= 0.053666) AND (t."X_6" <= 3.676874) AND (t."X_9" > -0.866524) AND (t."X_5" <= 0.613599)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_4" > -1.747123) AND (t."X_7" > -0.399534) AND (t."X_9" > -2.041677) AND (t."X_9" <= 0.053666) AND (t."X_6" <= 3.676874) AND (t."X_9" > -0.866524) AND (t."X_5" > 0.613599)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" > 0.964265)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" > 0.152687) AND (t."X_8" <= 0.809292) AND (t."X_5" > 1.781724)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" > 0.152687) AND (t."X_8" <= 0.809292) AND (t."X_5" <= 1.781724) AND (t."X_4" <= -0.632706)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" > 0.152687) AND (t."X_8" <= 0.809292) AND (t."X_5" <= 1.781724) AND (t."X_4" > -0.632706)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" <= 0.152687) AND (t."X_4" > 1.253154)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" > 0.152687) AND (t."X_8" > 0.809292) AND (t."X_9" > -0.011115) AND (t."X_9" <= 0.669820)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" > 0.152687) AND (t."X_8" > 0.809292) AND (t."X_9" > -0.011115) AND (t."X_9" > 0.669820) AND (t."X_4" <= 0.009770)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" > 0.152687) AND (t."X_8" > 0.809292) AND (t."X_9" > -0.011115) AND (t."X_9" > 0.669820) AND (t."X_4" > 0.009770)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" > 0.152687) AND (t."X_8" > 0.809292) AND (t."X_9" <= -0.011115) AND (t."X_6" <= -3.284509) AND (t."X_8" > 2.476423)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" > 0.152687) AND (t."X_8" > 0.809292) AND (t."X_9" <= -0.011115) AND (t."X_6" <= -3.284509) AND (t."X_8" <= 2.476423) AND (t."X_7" <= -1.585550)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" > 0.152687) AND (t."X_8" > 0.809292) AND (t."X_9" <= -0.011115) AND (t."X_6" <= -3.284509) AND (t."X_8" <= 2.476423) AND (t."X_7" > -1.585550)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" > 0.152687) AND (t."X_8" > 0.809292) AND (t."X_9" <= -0.011115) AND (t."X_6" > -3.284509) AND (t."X_4" <= -0.711077)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" <= 0.152687) AND (t."X_4" <= 1.253154) AND (t."X_9" <= -0.201671) AND (t."X_7" <= -1.467197)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" <= 0.152687) AND (t."X_4" <= 1.253154) AND (t."X_9" <= -0.201671) AND (t."X_7" > -1.467197)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" <= 0.152687) AND (t."X_4" <= 1.253154) AND (t."X_9" > -0.201671) AND (t."X_6" <= -1.411615) AND (t."X_9" <= 0.223465)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" <= 0.152687) AND (t."X_4" <= 1.253154) AND (t."X_9" > -0.201671) AND (t."X_6" <= -1.411615) AND (t."X_9" > 0.223465)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" <= 0.152687) AND (t."X_4" <= 1.253154) AND (t."X_9" > -0.201671) AND (t."X_6" > -1.411615) AND (t."X_5" <= -1.554284)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" <= 0.152687) AND (t."X_4" <= 1.253154) AND (t."X_9" > -0.201671) AND (t."X_6" > -1.411615) AND (t."X_5" > -1.554284) AND (t."X_9" > 1.356373)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" <= 0.152687) AND (t."X_4" <= 1.253154) AND (t."X_9" > -0.201671) AND (t."X_6" > -1.411615) AND (t."X_5" > -1.554284) AND (t."X_9" <= 1.356373) AND (t."X_4" > 1.044430) AND (t."X_5" <= -0.093817)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" <= 0.152687) AND (t."X_4" <= 1.253154) AND (t."X_9" > -0.201671) AND (t."X_6" > -1.411615) AND (t."X_5" > -1.554284) AND (t."X_9" <= 1.356373) AND (t."X_4" > 1.044430) AND (t."X_5" > -0.093817)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" <= 0.152687) AND (t."X_4" <= 1.253154) AND (t."X_9" > -0.201671) AND (t."X_6" > -1.411615) AND (t."X_5" > -1.554284) AND (t."X_9" <= 1.356373) AND (t."X_4" <= 1.044430) AND (t."X_9" > 0.544525)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" <= 0.152687) AND (t."X_4" <= 1.253154) AND (t."X_9" > -0.201671) AND (t."X_6" > -1.411615) AND (t."X_5" > -1.554284) AND (t."X_9" <= 1.356373) AND (t."X_4" <= 1.044430) AND (t."X_9" <= 0.544525) AND (t."X_9" <= 0.412872)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" <= 0.152687) AND (t."X_4" <= 1.253154) AND (t."X_9" > -0.201671) AND (t."X_6" > -1.411615) AND (t."X_5" > -1.554284) AND (t."X_9" <= 1.356373) AND (t."X_4" <= 1.044430) AND (t."X_9" <= 0.544525) AND (t."X_9" > 0.412872)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" > 0.152687) AND (t."X_8" > 0.809292) AND (t."X_9" <= -0.011115) AND (t."X_6" > -3.284509) AND (t."X_4" > -0.711077) AND (t."X_5" <= 0.867356)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" > 0.152687) AND (t."X_8" > 0.809292) AND (t."X_9" <= -0.011115) AND (t."X_6" > -3.284509) AND (t."X_4" > -0.711077) AND (t."X_5" > 0.867356) AND (t."X_5" <= 1.507747)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.964265) AND (t."X_8" > 0.152687) AND (t."X_8" > 0.809292) AND (t."X_9" <= -0.011115) AND (t."X_6" > -3.284509) AND (t."X_4" > -0.711077) AND (t."X_5" > 0.867356) AND (t."X_5" > 1.507747)) THEN 70 ELSE NULL END AS "Leaf_70"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.265625 AS "P_0", 0.234375 AS "P_1", 0.210938 AS "P_2", 0.289062 AS "P_3", 3 AS "D", 0.289062 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.318182 AS "P_0", 0.329545 AS "P_1", 0.125000 AS "P_2", 0.227273 AS "P_3", 1 AS "D", 0.329545 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.150000 AS "P_0", 0.025000 AS "P_1", 0.400000 AS "P_2", 0.425000 AS "P_3", 3 AS "D", 0.425000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.055556 AS "P_0", 0.027778 AS "P_1", 0.444444 AS "P_2", 0.472222 AS "P_3", 3 AS "D", 0.472222 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.095238 AS "P_0", 0.047619 AS "P_1", 0.619048 AS "P_2", 0.238095 AS "P_3", 2 AS "D", 0.619048 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.923077 AS "P_3", 3 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.111111 AS "P_0", 0.055556 AS "P_1", 0.722222 AS "P_2", 0.111111 AS "P_3", 2 AS "D", 0.722222 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.222222 AS "P_0", 0.111111 AS "P_1", 0.444444 AS "P_2", 0.222222 AS "P_3", 2 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.285714 AS "P_0", 0.142857 AS "P_1", 0.571429 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.368421 AS "P_0", 0.223684 AS "P_1", 0.144737 AS "P_2", 0.263158 AS "P_3", 0 AS "D", 0.368421 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.444444 AS "P_0", 0.000000 AS "P_1", 0.370370 AS "P_2", 0.185185 AS "P_3", 0 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.326531 AS "P_0", 0.346939 AS "P_1", 0.020408 AS "P_2", 0.306122 AS "P_3", 1 AS "D", 0.346939 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.076923 AS "P_0", 0.846154 AS "P_1", 0.000000 AS "P_2", 0.076923 AS "P_3", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.416667 AS "P_0", 0.166667 AS "P_1", 0.027778 AS "P_2", 0.388889 AS "P_3", 0 AS "D", 0.416667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.416667 AS "P_2", 0.083333 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.500000 AS "P_0", 0.333333 AS "P_1", 0.055556 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.166667 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.833333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.611111 AS "P_0", 0.000000 AS "P_1", 0.277778 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.733333 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.066667 AS "P_3", 0 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.785714 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.071429 AS "P_3", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.846154 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.076923 AS "P_3", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.909091 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.090909 AS "P_3", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_43", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52", t1."Leaf_56", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_61", t1."Leaf_62", t1."Leaf_63", t1."Leaf_66", t1."Leaf_67", t1."Leaf_69", t1."Leaf_70", t1."Leaf_72", t1."Leaf_73", t1."Leaf_74" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > 0.476894) AND (t."X_7" > -1.164150) AND (t."X_8" > 2.806226)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_8" > 0.476894) AND (t."X_7" <= -1.164150) AND (t."X_9" <= -2.076020)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_8" > 0.476894) AND (t."X_7" <= -1.164150) AND (t."X_9" > -2.076020) AND (t."X_5" > -0.357282) AND (t."X_9" <= -0.970301)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_8" > 0.476894) AND (t."X_7" <= -1.164150) AND (t."X_9" > -2.076020) AND (t."X_5" > -0.357282) AND (t."X_9" > -0.970301)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_8" > 0.476894) AND (t."X_7" <= -1.164150) AND (t."X_9" > -2.076020) AND (t."X_5" <= -0.357282) AND (t."X_7" <= -2.349321)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_8" > 0.476894) AND (t."X_7" <= -1.164150) AND (t."X_9" > -2.076020) AND (t."X_5" <= -0.357282) AND (t."X_7" > -2.349321)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_8" > 0.476894) AND (t."X_7" > -1.164150) AND (t."X_8" <= 2.806226) AND (t."X_9" > 0.937469) AND (t."X_7" <= 1.100430)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_8" > 0.476894) AND (t."X_7" > -1.164150) AND (t."X_8" <= 2.806226) AND (t."X_9" > 0.937469) AND (t."X_7" > 1.100430)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_8" > 0.476894) AND (t."X_7" > -1.164150) AND (t."X_8" <= 2.806226) AND (t."X_9" <= 0.937469) AND (t."X_5" > 2.326033)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" <= -1.124547) AND (t."X_9" > 1.357495) AND (t."X_8" <= -3.699159)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" <= -1.124547) AND (t."X_9" > 1.357495) AND (t."X_8" > -3.699159)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" <= -1.124547) AND (t."X_9" <= 1.357495) AND (t."X_5" > 1.510014)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" <= -1.124547) AND (t."X_9" <= 1.357495) AND (t."X_5" <= 1.510014) AND (t."X_9" <= -0.832460)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" <= -1.124547) AND (t."X_9" <= 1.357495) AND (t."X_5" <= 1.510014) AND (t."X_9" > -0.832460) AND (t."X_7" <= -2.895502) AND (t."X_8" <= -1.333429)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" <= -1.124547) AND (t."X_9" <= 1.357495) AND (t."X_5" <= 1.510014) AND (t."X_9" > -0.832460) AND (t."X_7" <= -2.895502) AND (t."X_8" > -1.333429)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" <= -1.124547) AND (t."X_9" <= 1.357495) AND (t."X_5" <= 1.510014) AND (t."X_9" > -0.832460) AND (t."X_7" > -2.895502) AND (t."X_9" <= 0.384560)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" <= -1.124547) AND (t."X_9" <= 1.357495) AND (t."X_5" <= 1.510014) AND (t."X_9" > -0.832460) AND (t."X_7" > -2.895502) AND (t."X_9" > 0.384560) AND (t."X_5" <= -0.006191)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" <= -1.124547) AND (t."X_9" <= 1.357495) AND (t."X_5" <= 1.510014) AND (t."X_9" > -0.832460) AND (t."X_7" > -2.895502) AND (t."X_9" > 0.384560) AND (t."X_5" > -0.006191)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" > 0.016047) AND (t."X_7" <= 0.957783) AND (t."X_9" <= -1.499862)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" > 0.016047) AND (t."X_7" <= 0.957783) AND (t."X_9" > -1.499862) AND (t."X_7" <= 0.339440) AND (t."X_8" <= -0.668835)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" > 0.016047) AND (t."X_7" <= 0.957783) AND (t."X_9" > -1.499862) AND (t."X_7" <= 0.339440) AND (t."X_8" > -0.668835)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" > 0.016047) AND (t."X_7" <= 0.957783) AND (t."X_9" > -1.499862) AND (t."X_7" > 0.339440) AND (t."X_9" <= 0.283287)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" > 0.016047) AND (t."X_7" <= 0.957783) AND (t."X_9" > -1.499862) AND (t."X_7" > 0.339440) AND (t."X_9" > 0.283287) AND (t."X_5" <= 1.098918)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" > 0.016047) AND (t."X_7" <= 0.957783) AND (t."X_9" > -1.499862) AND (t."X_7" > 0.339440) AND (t."X_9" > 0.283287) AND (t."X_5" > 1.098918)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" <= 0.016047) AND (t."X_9" > 0.602455) AND (t."X_8" > -0.499816)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" <= 0.016047) AND (t."X_9" > 0.602455) AND (t."X_8" <= -0.499816) AND (t."X_7" <= -0.609377)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" <= 0.016047) AND (t."X_9" > 0.602455) AND (t."X_8" <= -0.499816) AND (t."X_7" > -0.609377)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" > 0.016047) AND (t."X_7" > 0.957783) AND (t."X_8" <= -0.323451)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" > 0.016047) AND (t."X_7" > 0.957783) AND (t."X_8" > -0.323451) AND (t."X_5" <= -0.535421)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" > 0.016047) AND (t."X_7" > 0.957783) AND (t."X_8" > -0.323451) AND (t."X_5" > -0.535421)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" <= 0.016047) AND (t."X_9" <= 0.602455) AND (t."X_5" <= -0.166974)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" <= 0.016047) AND (t."X_9" <= 0.602455) AND (t."X_5" > -0.166974) AND (t."X_5" > 0.119458)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" <= 0.016047) AND (t."X_9" <= 0.602455) AND (t."X_5" > -0.166974) AND (t."X_5" <= 0.119458) AND (t."X_8" <= -1.610342)) THEN 67 ELSE NULL END AS "Leaf_67",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" <= 0.016047) AND (t."X_9" <= 0.602455) AND (t."X_5" > -0.166974) AND (t."X_5" <= 0.119458) AND (t."X_8" > -1.610342) AND (t."X_9" <= 0.102919)) THEN 69 ELSE NULL END AS "Leaf_69",
      CASE WHEN((t."X_8" <= 0.476894) AND (t."X_7" > -1.124547) AND (t."X_7" <= 0.016047) AND (t."X_9" <= 0.602455) AND (t."X_5" > -0.166974) AND (t."X_5" <= 0.119458) AND (t."X_8" > -1.610342) AND (t."X_9" > 0.102919)) THEN 70 ELSE NULL END AS "Leaf_70",
      CASE WHEN((t."X_8" > 0.476894) AND (t."X_7" > -1.164150) AND (t."X_8" <= 2.806226) AND (t."X_9" <= 0.937469) AND (t."X_5" <= 2.326033) AND (t."X_9" > -0.858643)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_8" > 0.476894) AND (t."X_7" > -1.164150) AND (t."X_8" <= 2.806226) AND (t."X_9" <= 0.937469) AND (t."X_5" <= 2.326033) AND (t."X_9" <= -0.858643) AND (t."X_5" <= 1.615276)) THEN 73 ELSE NULL END AS "Leaf_73",
      CASE WHEN((t."X_8" > 0.476894) AND (t."X_7" > -1.164150) AND (t."X_8" <= 2.806226) AND (t."X_9" <= 0.937469) AND (t."X_5" <= 2.326033) AND (t."X_9" <= -0.858643) AND (t."X_5" > 1.615276)) THEN 74 ELSE NULL END AS "Leaf_74"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.234375 AS "P_0", 0.250000 AS "P_1", 0.328125 AS "P_2", 0.187500 AS "P_3", 2 AS "D", 0.328125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.220779 AS "P_0", 0.064935 AS "P_1", 0.532468 AS "P_2", 0.181818 AS "P_3", 2 AS "D", 0.532468 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.254902 AS "P_0", 0.529412 AS "P_1", 0.019608 AS "P_2", 0.196078 AS "P_3", 1 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.562500 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.437500 AS "P_3", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.114286 AS "P_0", 0.771429 AS "P_1", 0.028571 AS "P_2", 0.085714 AS "P_3", 1 AS "D", 0.771429 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.125000 AS "P_0", 0.843750 AS "P_1", 0.031250 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.843750 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.642857 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.357143 AS "P_3", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.875000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.037037 AS "P_0", 0.925926 AS "P_1", 0.037037 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.961538 AS "P_1", 0.038462 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.473684 AS "P_0", 0.000000 AS "P_1", 0.210526 AS "P_2", 0.315789 AS "P_3", 0 AS "D", 0.473684 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.137931 AS "P_0", 0.086207 AS "P_1", 0.637931 AS "P_2", 0.137931 AS "P_3", 2 AS "D", 0.637931 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.692308 AS "P_0", 0.000000 AS "P_1", 0.153846 AS "P_2", 0.153846 AS "P_3", 0 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.083333 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.818182 AS "P_0", 0.000000 AS "P_1", 0.090909 AS "P_2", 0.090909 AS "P_3", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.888889 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.028571 AS "P_0", 0.028571 AS "P_1", 0.771429 AS "P_2", 0.171429 AS "P_3", 2 AS "D", 0.771429 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.304348 AS "P_0", 0.173913 AS "P_1", 0.434783 AS "P_2", 0.086957 AS "P_3", 2 AS "D", 0.434783 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.538462 AS "P_0", 0.230769 AS "P_1", 0.076923 AS "P_2", 0.153846 AS "P_3", 0 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.100000 AS "P_1", 0.900000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.636364 AS "P_0", 0.272727 AS "P_1", 0.090909 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.040000 AS "P_0", 0.040000 AS "P_1", 0.880000 AS "P_2", 0.040000 AS "P_3", 2 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.100000 AS "P_0", 0.100000 AS "P_1", 0.700000 AS "P_2", 0.100000 AS "P_3", 2 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 0.750000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_29", t1."Leaf_30", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_44", t1."Leaf_47", t1."Leaf_48", t1."Leaf_50", t1."Leaf_51", t1."Leaf_53", t1."Leaf_54", t1."Leaf_61", t1."Leaf_62", t1."Leaf_63", t1."Leaf_64", t1."Leaf_65", t1."Leaf_66", t1."Leaf_68", t1."Leaf_71", t1."Leaf_72", t1."Leaf_74", t1."Leaf_75", t1."Leaf_76" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" <= -1.330091) AND (t."X_7" <= -2.019774) AND (t."X_7" <= -2.368164) AND (t."X_9" <= 0.821658)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_7" <= -1.330091) AND (t."X_7" <= -2.019774) AND (t."X_7" <= -2.368164) AND (t."X_9" > 0.821658) AND (t."X_9" <= 1.333923)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_7" <= -1.330091) AND (t."X_7" <= -2.019774) AND (t."X_7" <= -2.368164) AND (t."X_9" > 0.821658) AND (t."X_9" > 1.333923)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_7" <= -1.330091) AND (t."X_7" <= -2.019774) AND (t."X_7" > -2.368164) AND (t."X_9" <= -0.137447)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_7" <= -1.330091) AND (t."X_7" <= -2.019774) AND (t."X_7" > -2.368164) AND (t."X_9" > -0.137447)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_7" <= -1.330091) AND (t."X_7" > -2.019774) AND (t."X_7" <= -1.827020) AND (t."X_7" <= -1.941357)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_7" <= -1.330091) AND (t."X_7" > -2.019774) AND (t."X_7" <= -1.827020) AND (t."X_7" > -1.941357)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_7" <= -1.330091) AND (t."X_7" > -2.019774) AND (t."X_7" > -1.827020) AND (t."X_8" <= -1.387748)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_7" <= -1.330091) AND (t."X_7" > -2.019774) AND (t."X_7" > -1.827020) AND (t."X_8" > -1.387748) AND (t."X_2" > 0.834900) AND (t."X_7" <= -1.392638)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_7" <= -1.330091) AND (t."X_7" > -2.019774) AND (t."X_7" > -1.827020) AND (t."X_8" > -1.387748) AND (t."X_2" > 0.834900) AND (t."X_7" > -1.392638)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_7" <= -1.330091) AND (t."X_7" > -2.019774) AND (t."X_7" > -1.827020) AND (t."X_8" > -1.387748) AND (t."X_2" <= 0.834900) AND (t."X_8" <= 0.957051)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_7" <= -1.330091) AND (t."X_7" > -2.019774) AND (t."X_7" > -1.827020) AND (t."X_8" > -1.387748) AND (t."X_2" <= 0.834900) AND (t."X_8" > 0.957051)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" <= -0.285693) AND (t."X_8" > 2.227339) AND (t."X_7" <= -0.763233)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" <= -0.285693) AND (t."X_8" > 2.227339) AND (t."X_7" > -0.763233)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" > -0.285693) AND (t."X_7" > 0.900020) AND (t."X_2" <= -0.648641) AND (t."X_8" <= -0.656528)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" > -0.285693) AND (t."X_7" > 0.900020) AND (t."X_2" <= -0.648641) AND (t."X_8" > -0.656528)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" > -0.285693) AND (t."X_7" > 0.900020) AND (t."X_2" > -0.648641) AND (t."X_7" <= 1.313224) AND (t."X_9" <= 0.697761)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" > -0.285693) AND (t."X_7" > 0.900020) AND (t."X_2" > -0.648641) AND (t."X_7" <= 1.313224) AND (t."X_9" > 0.697761)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" > -0.285693) AND (t."X_7" > 0.900020) AND (t."X_2" > -0.648641) AND (t."X_7" > 1.313224) AND (t."X_7" <= 2.465113)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" > -0.285693) AND (t."X_7" > 0.900020) AND (t."X_2" > -0.648641) AND (t."X_7" > 1.313224) AND (t."X_7" > 2.465113)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" > -0.285693) AND (t."X_7" <= 0.900020) AND (t."X_8" > 1.364490)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" > -0.285693) AND (t."X_7" <= 0.900020) AND (t."X_8" <= 1.364490) AND (t."X_9" <= -1.897800) AND (t."X_7" <= 0.104247)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" > -0.285693) AND (t."X_7" <= 0.900020) AND (t."X_8" <= 1.364490) AND (t."X_9" <= -1.897800) AND (t."X_7" > 0.104247)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" > -0.285693) AND (t."X_7" <= 0.900020) AND (t."X_8" <= 1.364490) AND (t."X_9" > -1.897800) AND (t."X_7" > 0.813297)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" > -0.285693) AND (t."X_7" <= 0.900020) AND (t."X_8" <= 1.364490) AND (t."X_9" > -1.897800) AND (t."X_7" <= 0.813297) AND (t."X_2" <= 0.760786)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" > -0.285693) AND (t."X_7" <= 0.900020) AND (t."X_8" <= 1.364490) AND (t."X_9" > -1.897800) AND (t."X_7" <= 0.813297) AND (t."X_2" > 0.760786) AND (t."X_7" <= 0.605047)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" > -0.285693) AND (t."X_7" <= 0.900020) AND (t."X_8" <= 1.364490) AND (t."X_9" > -1.897800) AND (t."X_7" <= 0.813297) AND (t."X_2" > 0.760786) AND (t."X_7" > 0.605047)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" <= -0.285693) AND (t."X_8" <= 2.227339) AND (t."X_9" > 0.214951) AND (t."X_9" > 0.901040) AND (t."X_8" > 0.476894) AND (t."X_9" <= 0.937469)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" <= -0.285693) AND (t."X_8" <= 2.227339) AND (t."X_9" > 0.214951) AND (t."X_9" > 0.901040) AND (t."X_8" > 0.476894) AND (t."X_9" > 0.937469)) THEN 62 ELSE NULL END AS "Leaf_62",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" <= -0.285693) AND (t."X_8" <= 2.227339) AND (t."X_9" > 0.214951) AND (t."X_9" > 0.901040) AND (t."X_8" <= 0.476894) AND (t."X_7" <= -0.540087)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" <= -0.285693) AND (t."X_8" <= 2.227339) AND (t."X_9" > 0.214951) AND (t."X_9" > 0.901040) AND (t."X_8" <= 0.476894) AND (t."X_7" > -0.540087)) THEN 64 ELSE NULL END AS "Leaf_64",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" <= -0.285693) AND (t."X_8" <= 2.227339) AND (t."X_9" > 0.214951) AND (t."X_9" <= 0.901040) AND (t."X_7" <= -1.094646)) THEN 65 ELSE NULL END AS "Leaf_65",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" <= -0.285693) AND (t."X_8" <= 2.227339) AND (t."X_9" > 0.214951) AND (t."X_9" <= 0.901040) AND (t."X_7" > -1.094646)) THEN 66 ELSE NULL END AS "Leaf_66",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" <= -0.285693) AND (t."X_8" <= 2.227339) AND (t."X_9" <= 0.214951) AND (t."X_7" > -0.511474)) THEN 68 ELSE NULL END AS "Leaf_68",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" <= -0.285693) AND (t."X_8" <= 2.227339) AND (t."X_9" <= 0.214951) AND (t."X_7" <= -0.511474) AND (t."X_7" > -0.770749) AND (t."X_7" <= -0.601579)) THEN 71 ELSE NULL END AS "Leaf_71",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" <= -0.285693) AND (t."X_8" <= 2.227339) AND (t."X_9" <= 0.214951) AND (t."X_7" <= -0.511474) AND (t."X_7" > -0.770749) AND (t."X_7" > -0.601579)) THEN 72 ELSE NULL END AS "Leaf_72",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" <= -0.285693) AND (t."X_8" <= 2.227339) AND (t."X_9" <= 0.214951) AND (t."X_7" <= -0.511474) AND (t."X_7" <= -0.770749) AND (t."X_7" > -0.904246)) THEN 74 ELSE NULL END AS "Leaf_74",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" <= -0.285693) AND (t."X_8" <= 2.227339) AND (t."X_9" <= 0.214951) AND (t."X_7" <= -0.511474) AND (t."X_7" <= -0.770749) AND (t."X_7" <= -0.904246) AND (t."X_9" <= -1.073557)) THEN 75 ELSE NULL END AS "Leaf_75",
      CASE WHEN((t."X_7" > -1.330091) AND (t."X_7" <= -0.285693) AND (t."X_8" <= 2.227339) AND (t."X_9" <= 0.214951) AND (t."X_7" <= -0.511474) AND (t."X_7" <= -0.770749) AND (t."X_7" <= -0.904246) AND (t."X_9" > -1.073557)) THEN 76 ELSE NULL END AS "Leaf_76"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.234375 AS "P_0", 0.289062 AS "P_1", 0.281250 AS "P_2", 0.195312 AS "P_3", 1 AS "D", 0.289062 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.514286 AS "P_0", 0.000000 AS "P_1", 0.114286 AS "P_2", 0.371429 AS "P_3", 0 AS "D", 0.514286 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.129032 AS "P_0", 0.397849 AS "P_1", 0.344086 AS "P_2", 0.129032 AS "P_3", 1 AS "D", 0.397849 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.050000 AS "P_2", 0.200000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.928571 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.071429 AS "P_3", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.083333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.428571 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.428571 AS "P_3", 0 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.133333 AS "P_0", 0.222222 AS "P_1", 0.400000 AS "P_2", 0.244444 AS "P_3", 2 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.125000 AS "P_0", 0.562500 AS "P_1", 0.291667 AS "P_2", 0.020833 AS "P_3", 1 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.157895 AS "P_0", 0.105263 AS "P_1", 0.473684 AS "P_2", 0.263158 AS "P_3", 2 AS "D", 0.473684 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.857143 AS "P_1", 0.000000 AS "P_2", 0.142857 AS "P_3", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.285714 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.047619 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.481481 AS "P_1", 0.518519 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.518519 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.125000 AS "P_1", 0.875000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.631579 AS "P_1", 0.368421 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.631579 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.909091 AS "P_1", 0.090909 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.210526 AS "P_0", 0.736842 AS "P_1", 0.000000 AS "P_2", 0.052632 AS "P_3", 1 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.176471 AS "P_0", 0.823529 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.277778 AS "P_0", 0.166667 AS "P_1", 0.555556 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.050000 AS "P_0", 0.050000 AS "P_1", 0.400000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.900000 AS "P_3", 3 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.100000 AS "P_0", 0.100000 AS "P_1", 0.700000 AS "P_2", 0.100000 AS "P_3", 2 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.875000 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 65 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 66 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 67 AS nid,  0.133333 AS "P_0", 0.200000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 68 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 69 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 70 AS nid,  0.000000 AS "P_0", 0.600000 AS "P_1", 0.400000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 71 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 72 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 73 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 74 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 75 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 76 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_23", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= -1.833913) AND (t."X_9" > 0.528884) AND (t."X_6" <= -2.483836)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_6" <= -1.833913) AND (t."X_9" > 0.528884) AND (t."X_6" > -2.483836) AND (t."X_8" > 1.098566)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_6" <= -1.833913) AND (t."X_9" > 0.528884) AND (t."X_6" > -2.483836) AND (t."X_8" <= 1.098566) AND (t."X_6" <= -2.260468)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" <= -1.833913) AND (t."X_9" > 0.528884) AND (t."X_6" > -2.483836) AND (t."X_8" <= 1.098566) AND (t."X_6" > -2.260468)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_6" <= -1.833913) AND (t."X_9" <= 0.528884) AND (t."X_9" > 0.002357)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" <= -1.833913) AND (t."X_9" <= 0.528884) AND (t."X_9" <= 0.002357) AND (t."X_9" > -0.137447)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_6" <= -1.833913) AND (t."X_9" <= 0.528884) AND (t."X_9" <= 0.002357) AND (t."X_9" <= -0.137447) AND (t."X_2" <= 0.386628)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" <= -1.833913) AND (t."X_9" <= 0.528884) AND (t."X_9" <= 0.002357) AND (t."X_9" <= -0.137447) AND (t."X_2" > 0.386628)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" > 0.562745) AND (t."X_6" <= 0.629149) AND (t."X_9" <= -0.926870)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" > 0.562745) AND (t."X_6" <= 0.629149) AND (t."X_9" > -0.926870) AND (t."X_8" <= -0.099292)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" > 0.562745) AND (t."X_6" <= 0.629149) AND (t."X_9" > -0.926870) AND (t."X_8" > -0.099292)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" > 0.562745) AND (t."X_6" > 0.629149) AND (t."X_2" <= -2.053282)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" <= 0.562745) AND (t."X_8" > 0.208819) AND (t."X_2" <= 1.909400)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" <= 0.562745) AND (t."X_8" > 0.208819) AND (t."X_2" > 1.909400)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" > 0.562745) AND (t."X_6" > 0.629149) AND (t."X_2" > -2.053282) AND (t."X_3" <= 2.514059)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" > 0.562745) AND (t."X_6" > 0.629149) AND (t."X_2" > -2.053282) AND (t."X_3" > 2.514059)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" <= 0.562745) AND (t."X_8" <= 0.208819) AND (t."X_9" > 0.933515) AND (t."X_6" <= 1.585676)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" <= 0.562745) AND (t."X_8" <= 0.208819) AND (t."X_9" > 0.933515) AND (t."X_6" > 1.585676)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" <= 0.562745) AND (t."X_8" <= 0.208819) AND (t."X_9" <= 0.933515) AND (t."X_7" <= -0.366585) AND (t."X_8" <= -1.089598)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" <= 0.562745) AND (t."X_8" <= 0.208819) AND (t."X_9" <= 0.933515) AND (t."X_7" <= -0.366585) AND (t."X_8" > -1.089598) AND (t."X_9" <= 0.275705)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" <= 0.562745) AND (t."X_8" <= 0.208819) AND (t."X_9" <= 0.933515) AND (t."X_7" <= -0.366585) AND (t."X_8" > -1.089598) AND (t."X_9" > 0.275705)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" <= 0.562745) AND (t."X_8" <= 0.208819) AND (t."X_9" <= 0.933515) AND (t."X_7" > -0.366585) AND (t."X_2" > -0.478830)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" <= 0.562745) AND (t."X_8" <= 0.208819) AND (t."X_9" <= 0.933515) AND (t."X_7" > -0.366585) AND (t."X_2" <= -0.478830) AND (t."X_3" <= -0.304371)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" <= 0.562745) AND (t."X_8" <= 0.208819) AND (t."X_9" <= 0.933515) AND (t."X_7" > -0.366585) AND (t."X_2" <= -0.478830) AND (t."X_3" > -0.304371) AND (t."X_7" <= 0.125538)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_6" > -1.833913) AND (t."X_3" <= 0.562745) AND (t."X_8" <= 0.208819) AND (t."X_9" <= 0.933515) AND (t."X_7" > -0.366585) AND (t."X_2" <= -0.478830) AND (t."X_3" > -0.304371) AND (t."X_7" > 0.125538)) THEN 48 ELSE NULL END AS "Leaf_48"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.179688 AS "P_0", 0.210938 AS "P_1", 0.273438 AS "P_2", 0.335938 AS "P_3", 3 AS "D", 0.335938 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.200000 AS "P_0", 0.066667 AS "P_1", 0.066667 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.173469 AS "P_0", 0.255102 AS "P_1", 0.336735 AS "P_2", 0.234694 AS "P_3", 2 AS "D", 0.336735 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.086957 AS "P_0", 0.000000 AS "P_1", 0.086957 AS "P_2", 0.826087 AS "P_3", 3 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.571429 AS "P_0", 0.285714 AS "P_1", 0.000000 AS "P_2", 0.142857 AS "P_3", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.250000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.151515 AS "P_0", 0.378788 AS "P_1", 0.424242 AS "P_2", 0.045455 AS "P_3", 2 AS "D", 0.424242 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.218750 AS "P_0", 0.000000 AS "P_1", 0.156250 AS "P_2", 0.625000 AS "P_3", 3 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.232558 AS "P_0", 0.093023 AS "P_1", 0.651163 AS "P_2", 0.023256 AS "P_3", 2 AS "D", 0.651163 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.913043 AS "P_1", 0.000000 AS "P_2", 0.086957 AS "P_3", 1 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.545455 AS "P_0", 0.000000 AS "P_1", 0.272727 AS "P_2", 0.181818 AS "P_3", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.047619 AS "P_0", 0.000000 AS "P_1", 0.095238 AS "P_2", 0.857143 AS "P_3", 3 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.052632 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.947368 AS "P_3", 3 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.157895 AS "P_0", 0.105263 AS "P_1", 0.710526 AS "P_2", 0.026316 AS "P_3", 2 AS "D", 0.710526 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.533333 AS "P_2", 0.066667 AS "P_3", 2 AS "D", 0.533333 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.173913 AS "P_1", 0.826087 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.826087 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.857143 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.142857 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.571429 AS "P_1", 0.428571 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_31", t1."Leaf_35", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_49", t1."Leaf_50", t1."Leaf_51", t1."Leaf_53", t1."Leaf_54" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" > 0.152687) AND (t."X_0" <= -0.572527) AND (t."X_8" > 0.556598)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" > 0.152687) AND (t."X_0" <= -0.572527) AND (t."X_8" <= 0.556598) AND (t."X_9" <= -0.724016)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" > 0.152687) AND (t."X_0" <= -0.572527) AND (t."X_8" <= 0.556598) AND (t."X_9" > -0.724016)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_3" > 0.558276) AND (t."X_1" > -0.534339) AND (t."X_9" <= -0.055474)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_3" > 0.558276) AND (t."X_1" > -0.534339) AND (t."X_9" > -0.055474)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_3" > 0.558276) AND (t."X_1" <= -0.534339) AND (t."X_3" > 1.403926) AND (t."X_8" > -0.379263)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_3" > 0.558276) AND (t."X_1" <= -0.534339) AND (t."X_3" > 1.403926) AND (t."X_8" <= -0.379263) AND (t."X_1" <= -3.416880)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_3" > 0.558276) AND (t."X_1" <= -0.534339) AND (t."X_3" > 1.403926) AND (t."X_8" <= -0.379263) AND (t."X_1" > -3.416880)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_3" > 0.558276) AND (t."X_1" <= -0.534339) AND (t."X_3" <= 1.403926) AND (t."X_1" > -0.815369)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_3" > 0.558276) AND (t."X_1" <= -0.534339) AND (t."X_3" <= 1.403926) AND (t."X_1" <= -0.815369) AND (t."X_8" <= -0.010325)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_3" > 0.558276) AND (t."X_1" <= -0.534339) AND (t."X_3" <= 1.403926) AND (t."X_1" <= -0.815369) AND (t."X_8" > -0.010325)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" <= 0.152687) AND (t."X_7" <= -2.071180)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" <= 0.152687) AND (t."X_7" > -2.071180) AND (t."X_0" <= -0.243797) AND (t."X_8" <= -0.698730) AND (t."X_9" <= -0.249271)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" <= 0.152687) AND (t."X_7" > -2.071180) AND (t."X_0" <= -0.243797) AND (t."X_8" > -0.698730) AND (t."X_1" > 2.339555) AND (t."X_9" <= 0.370720)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" <= 0.152687) AND (t."X_7" > -2.071180) AND (t."X_0" <= -0.243797) AND (t."X_8" > -0.698730) AND (t."X_1" > 2.339555) AND (t."X_9" > 0.370720) AND (t."X_1" <= 2.879476)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" <= 0.152687) AND (t."X_7" > -2.071180) AND (t."X_0" <= -0.243797) AND (t."X_8" > -0.698730) AND (t."X_1" > 2.339555) AND (t."X_9" > 0.370720) AND (t."X_1" > 2.879476)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" <= 0.152687) AND (t."X_7" > -2.071180) AND (t."X_0" <= -0.243797) AND (t."X_8" > -0.698730) AND (t."X_1" <= 2.339555) AND (t."X_1" <= 0.464582)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" <= 0.152687) AND (t."X_7" > -2.071180) AND (t."X_0" > -0.243797) AND (t."X_3" <= 0.396970)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" <= 0.152687) AND (t."X_7" > -2.071180) AND (t."X_0" > -0.243797) AND (t."X_3" > 0.396970)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" <= 0.152687) AND (t."X_7" > -2.071180) AND (t."X_0" <= -0.243797) AND (t."X_8" > -0.698730) AND (t."X_1" <= 2.339555) AND (t."X_1" > 0.464582) AND (t."X_9" <= 0.372937)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" <= 0.152687) AND (t."X_7" > -2.071180) AND (t."X_0" <= -0.243797) AND (t."X_8" > -0.698730) AND (t."X_1" <= 2.339555) AND (t."X_1" > 0.464582) AND (t."X_9" > 0.372937) AND (t."X_1" <= 0.945763)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" <= 0.152687) AND (t."X_7" > -2.071180) AND (t."X_0" <= -0.243797) AND (t."X_8" > -0.698730) AND (t."X_1" <= 2.339555) AND (t."X_1" > 0.464582) AND (t."X_9" > 0.372937) AND (t."X_1" > 0.945763)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" <= 0.152687) AND (t."X_7" > -2.071180) AND (t."X_0" <= -0.243797) AND (t."X_8" <= -0.698730) AND (t."X_9" > -0.249271) AND (t."X_9" <= 1.193869)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" <= 0.152687) AND (t."X_7" > -2.071180) AND (t."X_0" <= -0.243797) AND (t."X_8" <= -0.698730) AND (t."X_9" > -0.249271) AND (t."X_9" > 1.193869) AND (t."X_9" <= 1.406256)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" <= 0.152687) AND (t."X_7" > -2.071180) AND (t."X_0" <= -0.243797) AND (t."X_8" <= -0.698730) AND (t."X_9" > -0.249271) AND (t."X_9" > 1.193869) AND (t."X_9" > 1.406256)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" > 0.152687) AND (t."X_0" > -0.572527) AND (t."X_3" <= -0.458867)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" > 0.152687) AND (t."X_0" > -0.572527) AND (t."X_3" > -0.458867) AND (t."X_1" <= -0.291299)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_3" <= 0.558276) AND (t."X_8" > 0.152687) AND (t."X_0" > -0.572527) AND (t."X_3" > -0.458867) AND (t."X_1" > -0.291299)) THEN 54 ELSE NULL END AS "Leaf_54"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.210938 AS "P_0", 0.257812 AS "P_1", 0.281250 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.281250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.153061 AS "P_0", 0.316327 AS "P_1", 0.336735 AS "P_2", 0.193878 AS "P_3", 2 AS "D", 0.336735 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.400000 AS "P_0", 0.066667 AS "P_1", 0.100000 AS "P_2", 0.433333 AS "P_3", 3 AS "D", 0.433333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.277778 AS "P_0", 0.111111 AS "P_1", 0.592593 AS "P_2", 0.018519 AS "P_3", 2 AS "D", 0.592593 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.568182 AS "P_1", 0.022727 AS "P_2", 0.409091 AS "P_3", 1 AS "D", 0.568182 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.181818 AS "P_1", 0.045455 AS "P_2", 0.772727 AS "P_3", 3 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.954545 AS "P_1", 0.000000 AS "P_2", 0.045455 AS "P_3", 1 AS "D", 0.954545 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.461538 AS "P_0", 0.000000 AS "P_1", 0.038462 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.285714 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.714286 AS "P_3", 3 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.083333 AS "P_2", 0.250000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.230769 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.769231 AS "P_3", 3 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.220000 AS "P_0", 0.120000 AS "P_1", 0.640000 AS "P_2", 0.020000 AS "P_3", 2 AS "D", 0.640000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.333333 AS "P_0", 0.200000 AS "P_1", 0.433333 AS "P_2", 0.033333 AS "P_3", 2 AS "D", 0.433333 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.050000 AS "P_0", 0.000000 AS "P_1", 0.950000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.071429 AS "P_0", 0.142857 AS "P_1", 0.785714 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.562500 AS "P_0", 0.250000 AS "P_1", 0.125000 AS "P_2", 0.062500 AS "P_3", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.083333 AS "P_0", 0.000000 AS "P_1", 0.916667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.777778 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.111111 AS "P_3", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.285714 AS "P_0", 0.571429 AS "P_1", 0.142857 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.875000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_24", t1."Leaf_28", t1."Leaf_30", t1."Leaf_31", t1."Leaf_32", t1."Leaf_34", t1."Leaf_38", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44", t1."Leaf_45", t1."Leaf_47", t1."Leaf_49", t1."Leaf_50", t1."Leaf_52", t1."Leaf_53", t1."Leaf_54", t1."Leaf_55", t1."Leaf_57", t1."Leaf_58", t1."Leaf_59", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" <= -0.956757) AND (t."X_8" > -0.257746) AND (t."X_0" <= 1.819817)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_1" <= -0.956757) AND (t."X_8" > -0.257746) AND (t."X_0" > 1.819817)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_1" <= -0.956757) AND (t."X_8" <= -0.257746) AND (t."X_8" > -0.457980)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_1" <= -0.956757) AND (t."X_8" <= -0.257746) AND (t."X_8" <= -0.457980) AND (t."X_9" > 0.596473)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_1" <= -0.956757) AND (t."X_8" <= -0.257746) AND (t."X_8" <= -0.457980) AND (t."X_9" <= 0.596473) AND (t."X_1" <= -1.547398)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_1" <= -0.956757) AND (t."X_8" <= -0.257746) AND (t."X_8" <= -0.457980) AND (t."X_9" <= 0.596473) AND (t."X_1" > -1.547398)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" <= -1.445453) AND (t."X_8" > -0.283667)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" <= -1.445453) AND (t."X_8" <= -0.283667) AND (t."X_1" <= -0.174809)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" <= -1.445453) AND (t."X_8" <= -0.283667) AND (t."X_1" > -0.174809)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" > 0.151767) AND (t."X_8" > 2.806226)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" > 0.151767) AND (t."X_8" <= 2.806226) AND (t."X_0" > 0.420482) AND (t."X_0" > 0.695682)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" > 0.151767) AND (t."X_8" <= 2.806226) AND (t."X_0" > 0.420482) AND (t."X_0" <= 0.695682) AND (t."X_8" > 0.887886)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" > 0.151767) AND (t."X_8" <= 2.806226) AND (t."X_0" > 0.420482) AND (t."X_0" <= 0.695682) AND (t."X_8" <= 0.887886) AND (t."X_1" <= 0.531695)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" > 0.151767) AND (t."X_8" <= 2.806226) AND (t."X_0" > 0.420482) AND (t."X_0" <= 0.695682) AND (t."X_8" <= 0.887886) AND (t."X_1" > 0.531695)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" <= -0.815781) AND (t."X_7" > 1.312145)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" <= 0.151767) AND (t."X_9" <= 0.281242) AND (t."X_0" > 0.644960)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" <= 0.151767) AND (t."X_9" <= 0.281242) AND (t."X_0" <= 0.644960) AND (t."X_7" > 0.943917) AND (t."X_1" <= 2.021597)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" <= 0.151767) AND (t."X_9" <= 0.281242) AND (t."X_0" <= 0.644960) AND (t."X_7" > 0.943917) AND (t."X_1" > 2.021597) AND (t."X_7" <= 1.525100)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" <= 0.151767) AND (t."X_9" <= 0.281242) AND (t."X_0" <= 0.644960) AND (t."X_7" > 0.943917) AND (t."X_1" > 2.021597) AND (t."X_7" > 1.525100)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" <= 0.151767) AND (t."X_9" > 0.281242) AND (t."X_8" <= -0.601892)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" <= 0.151767) AND (t."X_9" > 0.281242) AND (t."X_8" > -0.601892) AND (t."X_9" <= 0.763699)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" <= 0.151767) AND (t."X_9" > 0.281242) AND (t."X_8" > -0.601892) AND (t."X_9" > 0.763699) AND (t."X_1" <= -0.123589)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" <= 0.151767) AND (t."X_9" > 0.281242) AND (t."X_8" > -0.601892) AND (t."X_9" > 0.763699) AND (t."X_1" > -0.123589)) THEN 50 ELSE NULL END AS "Leaf_50",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" <= 0.151767) AND (t."X_9" <= 0.281242) AND (t."X_0" <= 0.644960) AND (t."X_7" <= 0.943917) AND (t."X_9" > -0.331869)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" <= 0.151767) AND (t."X_9" <= 0.281242) AND (t."X_0" <= 0.644960) AND (t."X_7" <= 0.943917) AND (t."X_9" <= -0.331869) AND (t."X_7" <= -1.199461)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" <= 0.151767) AND (t."X_9" <= 0.281242) AND (t."X_0" <= 0.644960) AND (t."X_7" <= 0.943917) AND (t."X_9" <= -0.331869) AND (t."X_7" > -1.199461)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" <= -0.815781) AND (t."X_7" <= 1.312145) AND (t."X_8" <= 0.508995)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" <= -0.815781) AND (t."X_7" <= 1.312145) AND (t."X_8" > 0.508995) AND (t."X_9" <= -1.634372)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" <= -0.815781) AND (t."X_7" <= 1.312145) AND (t."X_8" > 0.508995) AND (t."X_9" > -1.634372)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" > 0.151767) AND (t."X_8" <= 2.806226) AND (t."X_0" <= 0.420482) AND (t."X_9" <= 0.491821)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" > 0.151767) AND (t."X_8" <= 2.806226) AND (t."X_0" <= 0.420482) AND (t."X_9" > 0.491821) AND (t."X_9" <= 0.656457)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_1" > -0.956757) AND (t."X_7" > -1.445453) AND (t."X_9" > -0.815781) AND (t."X_8" > 0.151767) AND (t."X_8" <= 2.806226) AND (t."X_0" <= 0.420482) AND (t."X_9" > 0.491821) AND (t."X_9" > 0.656457)) THEN 62 ELSE NULL END AS "Leaf_62"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.226562 AS "P_0", 0.195312 AS "P_1", 0.343750 AS "P_2", 0.234375 AS "P_3", 2 AS "D", 0.343750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.266667 AS "P_0", 0.066667 AS "P_1", 0.166667 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.214286 AS "P_0", 0.234694 AS "P_1", 0.397959 AS "P_2", 0.153061 AS "P_3", 2 AS "D", 0.397959 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.833333 AS "P_3", 3 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.375000 AS "P_2", 0.625000 AS "P_3", 3 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.307692 AS "P_0", 0.000000 AS "P_1", 0.076923 AS "P_2", 0.615385 AS "P_3", 3 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.200000 AS "P_0", 0.270588 AS "P_1", 0.447059 AS "P_2", 0.082353 AS "P_3", 2 AS "D", 0.447059 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.800000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.062500 AS "P_1", 0.875000 AS "P_2", 0.062500 AS "P_3", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.246377 AS "P_0", 0.318841 AS "P_1", 0.347826 AS "P_2", 0.086957 AS "P_3", 2 AS "D", 0.347826 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.315789 AS "P_0", 0.078947 AS "P_1", 0.578947 AS "P_2", 0.026316 AS "P_3", 2 AS "D", 0.578947 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.161290 AS "P_0", 0.612903 AS "P_1", 0.064516 AS "P_2", 0.161290 AS "P_3", 1 AS "D", 0.612903 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.178571 AS "P_0", 0.678571 AS "P_1", 0.071429 AS "P_2", 0.071429 AS "P_3", 1 AS "D", 0.678571 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.937500 AS "P_1", 0.000000 AS "P_2", 0.062500 AS "P_3", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.416667 AS "P_0", 0.333333 AS "P_1", 0.166667 AS "P_2", 0.083333 AS "P_3", 0 AS "D", 0.416667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.625000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.125000 AS "P_3", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.066667 AS "P_1", 0.933333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.500000 AS "P_0", 0.100000 AS "P_1", 0.350000 AS "P_2", 0.050000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.111111 AS "P_0", 0.055556 AS "P_1", 0.833333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.666667 AS "P_0", 0.133333 AS "P_1", 0.133333 AS "P_2", 0.066667 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.909091 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.090909 AS "P_3", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.500000 AS "P_0", 0.250000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 0.250000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 0.833333 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_44", t1."Leaf_45", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_59", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_9" <= -0.797244) AND (t."X_0" > 0.399616) AND (t."X_8" <= -0.570677)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_9" <= -0.797244) AND (t."X_0" > 0.399616) AND (t."X_8" > -0.570677)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_9" <= -0.797244) AND (t."X_0" <= 0.399616) AND (t."X_9" <= -2.042625)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_9" <= -0.797244) AND (t."X_0" <= 0.399616) AND (t."X_9" > -2.042625)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" <= 0.152687) AND (t."X_7" <= 0.549573) AND (t."X_0" <= -0.478605) AND (t."X_0" <= -1.837260)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" <= 0.152687) AND (t."X_7" <= 0.549573) AND (t."X_0" <= -0.478605) AND (t."X_0" > -1.837260)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" > 0.152687) AND (t."X_9" > 1.077283) AND (t."X_9" <= 1.289727)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" > 0.152687) AND (t."X_9" > 1.077283) AND (t."X_9" > 1.289727) AND (t."X_7" <= -0.981578)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" > 0.152687) AND (t."X_9" > 1.077283) AND (t."X_9" > 1.289727) AND (t."X_7" > -0.981578) AND (t."X_9" <= 1.534528)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" > 0.152687) AND (t."X_9" > 1.077283) AND (t."X_9" > 1.289727) AND (t."X_7" > -0.981578) AND (t."X_9" > 1.534528)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" > 0.152687) AND (t."X_9" <= 1.077283) AND (t."X_7" <= -1.009942) AND (t."X_0" <= -0.483687)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" > 0.152687) AND (t."X_9" <= 1.077283) AND (t."X_7" <= -1.009942) AND (t."X_0" > -0.483687) AND (t."X_9" <= -0.405498)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" > 0.152687) AND (t."X_9" <= 1.077283) AND (t."X_7" <= -1.009942) AND (t."X_0" > -0.483687) AND (t."X_9" > -0.405498)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" <= 0.152687) AND (t."X_7" <= 0.549573) AND (t."X_0" > -0.478605) AND (t."X_8" > -0.256948) AND (t."X_0" <= 1.472792)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" <= 0.152687) AND (t."X_7" <= 0.549573) AND (t."X_0" > -0.478605) AND (t."X_8" > -0.256948) AND (t."X_0" > 1.472792)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" <= 0.152687) AND (t."X_7" <= 0.549573) AND (t."X_0" > -0.478605) AND (t."X_8" <= -0.256948) AND (t."X_0" <= -0.100245) AND (t."X_9" <= -0.025397)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" <= 0.152687) AND (t."X_7" <= 0.549573) AND (t."X_0" > -0.478605) AND (t."X_8" <= -0.256948) AND (t."X_0" <= -0.100245) AND (t."X_9" > -0.025397)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" <= 0.152687) AND (t."X_7" > 0.549573) AND (t."X_8" <= -0.320119)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" <= 0.152687) AND (t."X_7" > 0.549573) AND (t."X_8" > -0.320119) AND (t."X_8" <= -0.020524)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" <= 0.152687) AND (t."X_7" > 0.549573) AND (t."X_8" > -0.320119) AND (t."X_8" > -0.020524)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" <= 0.152687) AND (t."X_7" <= 0.549573) AND (t."X_0" > -0.478605) AND (t."X_8" <= -0.256948) AND (t."X_0" > -0.100245) AND (t."X_7" > -0.609377)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" <= 0.152687) AND (t."X_7" <= 0.549573) AND (t."X_0" > -0.478605) AND (t."X_8" <= -0.256948) AND (t."X_0" > -0.100245) AND (t."X_7" <= -0.609377) AND (t."X_9" <= 0.537593)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" <= 0.152687) AND (t."X_7" <= 0.549573) AND (t."X_0" > -0.478605) AND (t."X_8" <= -0.256948) AND (t."X_0" > -0.100245) AND (t."X_7" <= -0.609377) AND (t."X_9" > 0.537593) AND (t."X_5" > 1.715699)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" <= 0.152687) AND (t."X_7" <= 0.549573) AND (t."X_0" > -0.478605) AND (t."X_8" <= -0.256948) AND (t."X_0" > -0.100245) AND (t."X_7" <= -0.609377) AND (t."X_9" > 0.537593) AND (t."X_5" <= 1.715699) AND (t."X_0" <= 1.903737)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" <= 0.152687) AND (t."X_7" <= 0.549573) AND (t."X_0" > -0.478605) AND (t."X_8" <= -0.256948) AND (t."X_0" > -0.100245) AND (t."X_7" <= -0.609377) AND (t."X_9" > 0.537593) AND (t."X_5" <= 1.715699) AND (t."X_0" > 1.903737) AND (t."X_9" <= 1.214163)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" <= 0.152687) AND (t."X_7" <= 0.549573) AND (t."X_0" > -0.478605) AND (t."X_8" <= -0.256948) AND (t."X_0" > -0.100245) AND (t."X_7" <= -0.609377) AND (t."X_9" > 0.537593) AND (t."X_5" <= 1.715699) AND (t."X_0" > 1.903737) AND (t."X_9" > 1.214163)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" > 0.152687) AND (t."X_9" <= 1.077283) AND (t."X_7" > -1.009942) AND (t."X_5" <= -1.643079) AND (t."X_0" <= 0.191851)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" > 0.152687) AND (t."X_9" <= 1.077283) AND (t."X_7" > -1.009942) AND (t."X_5" <= -1.643079) AND (t."X_0" > 0.191851)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" > 0.152687) AND (t."X_9" <= 1.077283) AND (t."X_7" > -1.009942) AND (t."X_5" > -1.643079) AND (t."X_5" <= 0.882961)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" > 0.152687) AND (t."X_9" <= 1.077283) AND (t."X_7" > -1.009942) AND (t."X_5" > -1.643079) AND (t."X_5" > 0.882961) AND (t."X_9" <= 0.301532)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" > 0.152687) AND (t."X_9" <= 1.077283) AND (t."X_7" > -1.009942) AND (t."X_5" > -1.643079) AND (t."X_5" > 0.882961) AND (t."X_9" > 0.301532) AND (t."X_0" <= -0.367674)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_9" > -0.797244) AND (t."X_8" > 0.152687) AND (t."X_9" <= 1.077283) AND (t."X_7" > -1.009942) AND (t."X_5" > -1.643079) AND (t."X_5" > 0.882961) AND (t."X_9" > 0.301532) AND (t."X_0" > -0.367674)) THEN 62 ELSE NULL END AS "Leaf_62"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.234375 AS "P_0", 0.250000 AS "P_1", 0.250000 AS "P_2", 0.265625 AS "P_3", 3 AS "D", 0.265625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.434783 AS "P_0", 0.000000 AS "P_1", 0.434783 AS "P_2", 0.130435 AS "P_3", 0 AS "D", 0.434783 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.190476 AS "P_0", 0.304762 AS "P_1", 0.209524 AS "P_2", 0.295238 AS "P_3", 1 AS "D", 0.304762 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.909091 AS "P_2", 0.090909 AS "P_3", 2 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.232143 AS "P_0", 0.035714 AS "P_1", 0.375000 AS "P_2", 0.357143 AS "P_3", 2 AS "D", 0.375000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.142857 AS "P_0", 0.612245 AS "P_1", 0.020408 AS "P_2", 0.224490 AS "P_3", 1 AS "D", 0.612245 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.288889 AS "P_0", 0.022222 AS "P_1", 0.244444 AS "P_2", 0.444444 AS "P_3", 3 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.090909 AS "P_1", 0.909091 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.846154 AS "P_0", 0.000000 AS "P_1", 0.153846 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.062500 AS "P_0", 0.031250 AS "P_1", 0.281250 AS "P_2", 0.625000 AS "P_3", 3 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.076923 AS "P_0", 0.743590 AS "P_1", 0.000000 AS "P_2", 0.179487 AS "P_3", 1 AS "D", 0.743590 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.400000 AS "P_0", 0.100000 AS "P_1", 0.100000 AS "P_2", 0.400000 AS "P_3", 0 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.166667 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.222222 AS "P_0", 0.111111 AS "P_1", 0.000000 AS "P_2", 0.666667 AS "P_3", 3 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.033333 AS "P_0", 0.933333 AS "P_1", 0.000000 AS "P_2", 0.033333 AS "P_3", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.035714 AS "P_1", 0.250000 AS "P_2", 0.714286 AS "P_3", 3 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.666667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.800000 AS "P_3", 3 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.384615 AS "P_2", 0.615385 AS "P_3", 3 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.625000 AS "P_2", 0.375000 AS "P_3", 2 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.833333 AS "P_2", 0.166667 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.964286 AS "P_1", 0.000000 AS "P_2", 0.035714 AS "P_3", 1 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_6", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_27", t1."Leaf_28", t1."Leaf_32", t1."Leaf_33", t1."Leaf_35", t1."Leaf_37", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_52", t1."Leaf_53", t1."Leaf_55", t1."Leaf_56", t1."Leaf_58", t1."Leaf_59", t1."Leaf_61", t1."Leaf_62" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" > 0.023262) AND (t."X_4" > 1.009425)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" <= -3.300494) AND (t."X_4" > 2.130843)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" <= -3.300494) AND (t."X_4" <= 2.130843) AND (t."X_7" <= -1.007331)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" <= -3.300494) AND (t."X_4" <= 2.130843) AND (t."X_7" > -1.007331)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" > 0.588059) AND (t."X_9" <= -0.249271) AND (t."X_8" > -0.154754)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" > 0.588059) AND (t."X_9" <= -0.249271) AND (t."X_8" <= -0.154754) AND (t."X_9" > -0.394727)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" > 0.588059) AND (t."X_9" <= -0.249271) AND (t."X_8" <= -0.154754) AND (t."X_9" <= -0.394727) AND (t."X_4" <= 0.240839)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" > 0.588059) AND (t."X_9" <= -0.249271) AND (t."X_8" <= -0.154754) AND (t."X_9" <= -0.394727) AND (t."X_4" > 0.240839) AND (t."X_8" <= -1.236181)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_6" > 0.588059) AND (t."X_9" <= -0.249271) AND (t."X_8" <= -0.154754) AND (t."X_9" <= -0.394727) AND (t."X_4" > 0.240839) AND (t."X_8" > -1.236181)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_6" > 0.588059) AND (t."X_9" > -0.249271) AND (t."X_7" > -0.432852)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" > 0.588059) AND (t."X_9" > -0.249271) AND (t."X_7" <= -0.432852) AND (t."X_9" <= 0.596473)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_6" > 0.588059) AND (t."X_9" > -0.249271) AND (t."X_7" <= -0.432852) AND (t."X_9" > 0.596473) AND (t."X_6" <= 3.339466)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" > 0.588059) AND (t."X_9" > -0.249271) AND (t."X_7" <= -0.432852) AND (t."X_9" > 0.596473) AND (t."X_6" > 3.339466)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" > -3.300494) AND (t."X_7" > -1.156285) AND (t."X_9" > 1.223711)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" > -3.300494) AND (t."X_7" > -1.156285) AND (t."X_9" <= 1.223711) AND (t."X_6" <= -0.967976)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" > -3.300494) AND (t."X_7" > -1.156285) AND (t."X_9" <= 1.223711) AND (t."X_6" > -0.967976) AND (t."X_8" <= -1.138398)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" > -3.300494) AND (t."X_7" > -1.156285) AND (t."X_9" <= 1.223711) AND (t."X_6" > -0.967976) AND (t."X_8" > -1.138398) AND (t."X_9" <= -0.926870)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" > -3.300494) AND (t."X_7" > -1.156285) AND (t."X_9" <= 1.223711) AND (t."X_6" > -0.967976) AND (t."X_8" > -1.138398) AND (t."X_9" > -0.926870) AND (t."X_6" <= -0.782779)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" > -3.300494) AND (t."X_7" > -1.156285) AND (t."X_9" <= 1.223711) AND (t."X_6" > -0.967976) AND (t."X_8" > -1.138398) AND (t."X_9" > -0.926870) AND (t."X_6" > -0.782779) AND (t."X_4" <= 1.383572)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" > -3.300494) AND (t."X_7" > -1.156285) AND (t."X_9" <= 1.223711) AND (t."X_6" > -0.967976) AND (t."X_8" > -1.138398) AND (t."X_9" > -0.926870) AND (t."X_6" > -0.782779) AND (t."X_4" > 1.383572)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" > -3.300494) AND (t."X_7" <= -1.156285) AND (t."X_4" <= -0.872874) AND (t."X_9" <= 0.740366)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" > -3.300494) AND (t."X_7" <= -1.156285) AND (t."X_4" <= -0.872874) AND (t."X_9" > 0.740366) AND (t."X_7" <= -1.565887)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" > -3.300494) AND (t."X_7" <= -1.156285) AND (t."X_4" <= -0.872874) AND (t."X_9" > 0.740366) AND (t."X_7" > -1.565887)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" > 0.023262) AND (t."X_4" <= 1.009425) AND (t."X_9" <= -0.993572)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" > 0.023262) AND (t."X_4" <= 1.009425) AND (t."X_9" > -0.993572) AND (t."X_7" > 0.854988)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" > 0.023262) AND (t."X_4" <= 1.009425) AND (t."X_9" > -0.993572) AND (t."X_7" <= 0.854988) AND (t."X_6" <= -1.521768)) THEN 53 ELSE NULL END AS "Leaf_53",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" > 0.023262) AND (t."X_4" <= 1.009425) AND (t."X_9" > -0.993572) AND (t."X_7" <= 0.854988) AND (t."X_6" > -1.521768) AND (t."X_7" <= 0.800186)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" > 0.023262) AND (t."X_4" <= 1.009425) AND (t."X_9" > -0.993572) AND (t."X_7" <= 0.854988) AND (t."X_6" > -1.521768) AND (t."X_7" > 0.800186)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" > -3.300494) AND (t."X_7" <= -1.156285) AND (t."X_4" > -0.872874) AND (t."X_4" > 0.080826)) THEN 58 ELSE NULL END AS "Leaf_58",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" > -3.300494) AND (t."X_7" <= -1.156285) AND (t."X_4" > -0.872874) AND (t."X_4" <= 0.080826) AND (t."X_9" <= -0.063603)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" > -3.300494) AND (t."X_7" <= -1.156285) AND (t."X_4" > -0.872874) AND (t."X_4" <= 0.080826) AND (t."X_9" > -0.063603) AND (t."X_6" <= -2.099777)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_6" <= 0.588059) AND (t."X_7" <= 0.023262) AND (t."X_6" > -3.300494) AND (t."X_7" <= -1.156285) AND (t."X_4" > -0.872874) AND (t."X_4" <= 0.080826) AND (t."X_9" > -0.063603) AND (t."X_6" > -2.099777)) THEN 62 ELSE NULL END AS "Leaf_62"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.296875 AS "P_0", 0.218750 AS "P_1", 0.312500 AS "P_2", 0.171875 AS "P_3", 2 AS "D", 0.312500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.352273 AS "P_0", 0.295455 AS "P_1", 0.238636 AS "P_2", 0.113636 AS "P_3", 0 AS "D", 0.352273 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.175000 AS "P_0", 0.050000 AS "P_1", 0.475000 AS "P_2", 0.300000 AS "P_3", 2 AS "D", 0.475000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.491228 AS "P_0", 0.087719 AS "P_1", 0.263158 AS "P_2", 0.157895 AS "P_3", 0 AS "D", 0.491228 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.096774 AS "P_0", 0.677419 AS "P_1", 0.193548 AS "P_2", 0.032258 AS "P_3", 1 AS "D", 0.677419 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.115385 AS "P_0", 0.807692 AS "P_1", 0.038462 AS "P_2", 0.038462 AS "P_3", 1 AS "D", 0.807692 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.076923 AS "P_1", 0.384615 AS "P_2", 0.538462 AS "P_3", 3 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.636364 AS "P_0", 0.090909 AS "P_1", 0.227273 AS "P_2", 0.045455 AS "P_3", 0 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.125000 AS "P_1", 0.000000 AS "P_2", 0.875000 AS "P_3", 3 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.368421 AS "P_0", 0.105263 AS "P_1", 0.210526 AS "P_2", 0.315789 AS "P_3", 0 AS "D", 0.368421 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.714286 AS "P_2", 0.285714 AS "P_3", 2 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 0.166667 AS "P_1", 0.333333 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.400000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.400000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.142857 AS "P_2", 0.857143 AS "P_3", 3 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.863636 AS "P_0", 0.000000 AS "P_1", 0.090909 AS "P_2", 0.045455 AS "P_3", 0 AS "D", 0.863636 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.409091 AS "P_0", 0.181818 AS "P_1", 0.363636 AS "P_2", 0.045455 AS "P_3", 0 AS "D", 0.409091 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.529412 AS "P_0", 0.235294 AS "P_1", 0.176471 AS "P_2", 0.058824 AS "P_3", 0 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.642857 AS "P_0", 0.071429 AS "P_1", 0.214286 AS "P_2", 0.071429 AS "P_3", 0 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.750000 AS "P_0", 0.083333 AS "P_1", 0.083333 AS "P_2", 0.083333 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.818182 AS "P_0", 0.090909 AS "P_1", 0.000000 AS "P_2", 0.090909 AS "P_3", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.900000 AS "P_0", 0.100000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.947368 AS "P_0", 0.000000 AS "P_1", 0.052632 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.120000 AS "P_0", 0.840000 AS "P_1", 0.000000 AS "P_2", 0.040000 AS "P_3", 1 AS "D", 0.840000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  0.272727 AS "P_0", 0.636364 AS "P_1", 0.000000 AS "P_2", 0.090909 AS "P_3", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.875000 AS "P_1", 0.000000 AS "P_2", 0.125000 AS "P_3", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.833333 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_11", t1."Leaf_12", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_22", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_35", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_45", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_51", t1."Leaf_52", t1."Leaf_54", t1."Leaf_55", t1."Leaf_56", t1."Leaf_57", t1."Leaf_59", t1."Leaf_60", t1."Leaf_61", t1."Leaf_63", t1."Leaf_64" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= -4.426781) AND (t."X_9" <= -0.905726)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_6" <= -4.426781) AND (t."X_9" > -0.905726)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" > 0.588059) AND (t."X_3" > 0.687213) AND (t."X_3" > 2.541327) AND (t."X_4" <= 0.300270)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" > 0.588059) AND (t."X_3" > 0.687213) AND (t."X_3" > 2.541327) AND (t."X_4" > 0.300270)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" > 0.152687) AND (t."X_3" > 1.267175)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" > 0.588059) AND (t."X_3" <= 0.687213) AND (t."X_8" > 0.056433)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" > 0.152687) AND (t."X_3" <= 1.267175) AND (t."X_7" <= -1.172661)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" > 0.588059) AND (t."X_3" > 0.687213) AND (t."X_3" <= 2.541327) AND (t."X_8" > 0.450820)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" > 0.152687) AND (t."X_3" <= 1.267175) AND (t."X_7" > -1.172661) AND (t."X_9" > 1.143299) AND (t."X_6" > -2.206362)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" > 0.152687) AND (t."X_3" <= 1.267175) AND (t."X_7" > -1.172661) AND (t."X_9" > 1.143299) AND (t."X_6" <= -2.206362) AND (t."X_9" <= 1.289727)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" > 0.152687) AND (t."X_3" <= 1.267175) AND (t."X_7" > -1.172661) AND (t."X_9" > 1.143299) AND (t."X_6" <= -2.206362) AND (t."X_9" > 1.289727)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" <= 0.152687) AND (t."X_8" > -0.076269) AND (t."X_8" <= 0.146080)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" <= 0.152687) AND (t."X_8" > -0.076269) AND (t."X_8" > 0.146080)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" <= 0.152687) AND (t."X_8" <= -0.076269) AND (t."X_6" > -0.027240) AND (t."X_8" <= -0.938558)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" <= 0.152687) AND (t."X_8" <= -0.076269) AND (t."X_6" > -0.027240) AND (t."X_8" > -0.938558) AND (t."X_4" > 1.018414)) THEN 38 ELSE NULL END AS "Leaf_38",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" <= 0.152687) AND (t."X_8" <= -0.076269) AND (t."X_6" > -0.027240) AND (t."X_8" > -0.938558) AND (t."X_4" <= 1.018414) AND (t."X_7" <= 0.016047)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" <= 0.152687) AND (t."X_8" <= -0.076269) AND (t."X_6" > -0.027240) AND (t."X_8" > -0.938558) AND (t."X_4" <= 1.018414) AND (t."X_7" > 0.016047)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" <= 0.152687) AND (t."X_8" <= -0.076269) AND (t."X_6" <= -0.027240) AND (t."X_6" <= -2.039162)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" <= 0.152687) AND (t."X_8" <= -0.076269) AND (t."X_6" <= -0.027240) AND (t."X_6" > -2.039162) AND (t."X_4" > 0.678110) AND (t."X_4" <= 0.827386)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" <= 0.152687) AND (t."X_8" <= -0.076269) AND (t."X_6" <= -0.027240) AND (t."X_6" > -2.039162) AND (t."X_4" > 0.678110) AND (t."X_4" > 0.827386) AND (t."X_9" <= 0.076464)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" <= 0.152687) AND (t."X_8" <= -0.076269) AND (t."X_6" <= -0.027240) AND (t."X_6" > -2.039162) AND (t."X_4" > 0.678110) AND (t."X_4" > 0.827386) AND (t."X_9" > 0.076464)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" <= 0.152687) AND (t."X_8" <= -0.076269) AND (t."X_6" <= -0.027240) AND (t."X_6" > -2.039162) AND (t."X_4" <= 0.678110) AND (t."X_7" <= -0.198700)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" <= 0.152687) AND (t."X_8" <= -0.076269) AND (t."X_6" <= -0.027240) AND (t."X_6" > -2.039162) AND (t."X_4" <= 0.678110) AND (t."X_7" > -0.198700) AND (t."X_4" <= 0.225540)) THEN 51 ELSE NULL END AS "Leaf_51",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" <= 0.152687) AND (t."X_8" <= -0.076269) AND (t."X_6" <= -0.027240) AND (t."X_6" > -2.039162) AND (t."X_4" <= 0.678110) AND (t."X_7" > -0.198700) AND (t."X_4" > 0.225540)) THEN 52 ELSE NULL END AS "Leaf_52",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" > 0.588059) AND (t."X_3" > 0.687213) AND (t."X_3" <= 2.541327) AND (t."X_8" <= 0.450820) AND (t."X_3" > 1.063858)) THEN 54 ELSE NULL END AS "Leaf_54",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" > 0.588059) AND (t."X_3" > 0.687213) AND (t."X_3" <= 2.541327) AND (t."X_8" <= 0.450820) AND (t."X_3" <= 1.063858) AND (t."X_9" <= -0.905972)) THEN 55 ELSE NULL END AS "Leaf_55",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" > 0.588059) AND (t."X_3" > 0.687213) AND (t."X_3" <= 2.541327) AND (t."X_8" <= 0.450820) AND (t."X_3" <= 1.063858) AND (t."X_9" > -0.905972)) THEN 56 ELSE NULL END AS "Leaf_56",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" > 0.588059) AND (t."X_3" <= 0.687213) AND (t."X_8" <= 0.056433) AND (t."X_4" <= 0.687059)) THEN 57 ELSE NULL END AS "Leaf_57",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" > 0.588059) AND (t."X_3" <= 0.687213) AND (t."X_8" <= 0.056433) AND (t."X_4" > 0.687059) AND (t."X_4" <= 0.950838)) THEN 59 ELSE NULL END AS "Leaf_59",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" > 0.588059) AND (t."X_3" <= 0.687213) AND (t."X_8" <= 0.056433) AND (t."X_4" > 0.687059) AND (t."X_4" > 0.950838)) THEN 60 ELSE NULL END AS "Leaf_60",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" > 0.152687) AND (t."X_3" <= 1.267175) AND (t."X_7" > -1.172661) AND (t."X_9" <= 1.143299) AND (t."X_9" <= 0.418032)) THEN 61 ELSE NULL END AS "Leaf_61",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" > 0.152687) AND (t."X_3" <= 1.267175) AND (t."X_7" > -1.172661) AND (t."X_9" <= 1.143299) AND (t."X_9" > 0.418032) AND (t."X_9" <= 0.637413)) THEN 63 ELSE NULL END AS "Leaf_63",
      CASE WHEN((t."X_6" > -4.426781) AND (t."X_6" <= 0.588059) AND (t."X_8" > 0.152687) AND (t."X_3" <= 1.267175) AND (t."X_7" > -1.172661) AND (t."X_9" <= 1.143299) AND (t."X_9" > 0.418032) AND (t."X_9" > 0.637413)) THEN 64 ELSE NULL END AS "Leaf_64"
    FROM "model_input" AS t
    ) AS t1
    ON(t."index" = t1."index")
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.257812 AS "P_0", 0.234375 AS "P_1", 0.250000 AS "P_2", 0.257812 AS "P_3", 0 AS "D", 0.257812 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.083333 AS "P_2", 0.916667 AS "P_3", 3 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.284483 AS "P_0", 0.258621 AS "P_1", 0.267241 AS "P_2", 0.189655 AS "P_3", 0 AS "D", 0.284483 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.370370 AS "P_0", 0.345679 AS "P_1", 0.197531 AS "P_2", 0.086420 AS "P_3", 0 AS "D", 0.370370 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.085714 AS "P_0", 0.057143 AS "P_1", 0.428571 AS "P_2", 0.428571 AS "P_3", 2 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.066667 AS "P_0", 0.066667 AS "P_1", 0.866667 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.100000 AS "P_0", 0.050000 AS "P_1", 0.100000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 0.058824 AS "P_1", 0.058824 AS "P_2", 0.882353 AS "P_3", 3 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.461538 AS "P_0", 0.025641 AS "P_1", 0.358974 AS "P_2", 0.153846 AS "P_3", 0 AS "D", 0.461538 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.285714 AS "P_0", 0.642857 AS "P_1", 0.047619 AS "P_2", 0.023810 AS "P_3", 1 AS "D", 0.642857 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.166667 AS "P_0", 0.750000 AS "P_1", 0.055556 AS "P_2", 0.027778 AS "P_3", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.071429 AS "P_0", 0.000000 AS "P_1", 0.928571 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.090909 AS "P_0", 0.818182 AS "P_1", 0.060606 AS "P_2", 0.030303 AS "P_3", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.062500 AS "P_2", 0.937500 AS "P_3", 3 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.958333 AS "P_1", 0.000000 AS "P_2", 0.041667 AS "P_3", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.333333 AS "P_0", 0.444444 AS "P_1", 0.222222 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.444444 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.600000 AS "P_0", 0.000000 AS "P_1", 0.400000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.333333 AS "P_0", 0.033333 AS "P_1", 0.433333 AS "P_2", 0.200000 AS "P_3", 2 AS "D", 0.433333 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.888889 AS "P_0", 0.000000 AS "P_1", 0.111111 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.111111 AS "P_0", 0.055556 AS "P_1", 0.611111 AS "P_2", 0.222222 AS "P_3", 2 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.166667 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.333333 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.125000 AS "P_0", 0.062500 AS "P_1", 0.687500 AS "P_2", 0.125000 AS "P_3", 2 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.083333 AS "P_0", 0.083333 AS "P_1", 0.833333 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 51 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 52 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 53 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 54 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 55 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 56 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 57 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 58 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 59 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 60 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 61 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 62 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.000000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 63 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 64 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_Output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", 
   t2."D" AS "D", 
   t2."DP" AS "DP"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
   ON t1.node_id = t2.nid
 ),
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1", scu."P_2" AS "P_2", scu."P_3" AS "P_3"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_4" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_Output_31" AS t
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
   CAST(NULL AS FLOAT) AS "Score_1",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   AVG(t."P_2") AS "Proba_2",
   CAST(NULL AS FLOAT) AS "Score_2",
   CAST(NULL AS FLOAT) AS "LogProba_3",
   AVG(t."P_3") AS "Proba_3",
   CAST(NULL AS FLOAT) AS "Score_3"
FROM "union_of_trees" AS t
GROUP BY t."index"
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    MAX( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Max_Score"
  FROM
     "avg_proba_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
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
     t."Proba_2" AS "Proba_2",
     t."Score_2" AS "Score_2",
     t."Proba_3" AS "Proba_3",
     t."Score_3" AS "Score_3",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3" ) AS argmax_class_idx
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
  arg_max_cte."Score_2" AS "Score_2",
  arg_max_cte."Proba_2" AS "Proba_2",
  CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN LN( arg_max_cte."Proba_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
  arg_max_cte."Score_3" AS "Score_3",
  arg_max_cte."Proba_3" AS "Proba_3",
  CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN LN( arg_max_cte."Proba_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte