WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "FourClass_10_sampled" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 1.538672) AND (t."X_5" <= -0.806984)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" <= -0.858643) AND (t."X_5" > 1.642807)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" <= -0.858643) AND (t."X_5" <= 1.642807) AND (t."X_5" <= -0.132579)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" <= -0.858643) AND (t."X_5" <= 1.642807) AND (t."X_5" > -0.132579)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" > -0.858643) AND (t."X_8" > 2.806226)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" <= -1.185406) AND (t."X_5" <= -0.454314)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" <= -1.185406) AND (t."X_5" > -0.454314) AND (t."X_5" <= 0.486350)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" <= -1.185406) AND (t."X_5" > -0.454314) AND (t."X_5" > 0.486350)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_2" > 1.538672) AND (t."X_5" > -0.806984) AND (t."X_7" <= 0.585259)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_2" > 1.538672) AND (t."X_5" > -0.806984) AND (t."X_7" > 0.585259)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" > -0.858643) AND (t."X_8" <= 2.806226) AND (t."X_9" <= 0.866567)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" > 0.191501) AND (t."X_7" > -1.185406) AND (t."X_9" > -0.858643) AND (t."X_8" <= 2.806226) AND (t."X_9" > 0.866567)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" > 1.030464) AND (t."X_5" <= -0.390884)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" > 1.030464) AND (t."X_5" > -0.390884)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_8" <= -2.412755)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_8" > -2.412755) AND (t."X_8" <= -1.017932) AND (t."X_2" <= 0.602036)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_8" > -2.412755) AND (t."X_8" <= -1.017932) AND (t."X_2" > 0.602036)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_8" > -2.412755) AND (t."X_8" > -1.017932) AND (t."X_7" <= -1.199461)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_2" <= 1.538672) AND (t."X_8" <= 0.191501) AND (t."X_2" <= 1.030464) AND (t."X_8" > -2.412755) AND (t."X_8" > -1.017932) AND (t."X_7" > -1.199461)) THEN 36 ELSE NULL END AS "Leaf_36"
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
    SELECT 5 AS nid,  0.246377 AS "P_0", 0.043478 AS "P_1", 0.507246 AS "P_2", 0.202899 AS "P_3", 2 AS "D", 0.507246 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.204545 AS "P_0", 0.545455 AS "P_1", 0.113636 AS "P_2", 0.136364 AS "P_3", 1 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.428571 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.571429 AS "P_3", 3 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.162162 AS "P_0", 0.648649 AS "P_1", 0.135135 AS "P_2", 0.054054 AS "P_3", 1 AS "D", 0.648649 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.375000 AS "P_0", 0.125000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.103448 AS "P_0", 0.793103 AS "P_1", 0.034483 AS "P_2", 0.068966 AS "P_3", 1 AS "D", 0.793103 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.600000 AS "P_0", 0.200000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.111111 AS "P_0", 0.851852 AS "P_1", 0.037037 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.047619 AS "P_0", 0.952381 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.333333 AS "P_0", 0.500000 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.180328 AS "P_0", 0.049180 AS "P_1", 0.540984 AS "P_2", 0.229508 AS "P_3", 2 AS "D", 0.540984 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.750000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.224490 AS "P_0", 0.061224 AS "P_1", 0.428571 AS "P_2", 0.285714 AS "P_3", 2 AS "D", 0.428571 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.136364 AS "P_0", 0.000000 AS "P_1", 0.363636 AS "P_2", 0.500000 AS "P_3", 3 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.296296 AS "P_0", 0.111111 AS "P_1", 0.481481 AS "P_2", 0.111111 AS "P_3", 2 AS "D", 0.481481 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.222222 AS "P_2", 0.611111 AS "P_3", 3 AS "D", 0.611111 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.173913 AS "P_0", 0.130435 AS "P_1", 0.565217 AS "P_2", 0.130435 AS "P_3", 2 AS "D", 0.565217 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_21", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_32", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48", t1."Leaf_49", t1."Leaf_50" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" <= -1.185406) AND (t."X_8" <= 0.393124)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" <= -1.185406) AND (t."X_8" > 0.393124) AND (t."X_9" > 0.436478) AND (t."X_7" <= -1.709208)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" <= -1.185406) AND (t."X_8" > 0.393124) AND (t."X_9" > 0.436478) AND (t."X_7" > -1.709208)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" <= -1.185406) AND (t."X_8" > 0.393124) AND (t."X_9" <= 0.436478) AND (t."X_9" <= -0.372633)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" <= -1.185406) AND (t."X_8" > 0.393124) AND (t."X_9" <= 0.436478) AND (t."X_9" > -0.372633)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" <= 0.096293) AND (t."X_4" <= 0.534175)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" <= 0.096293) AND (t."X_4" > 0.534175)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" <= -0.829891) AND (t."X_9" <= -1.634372) AND (t."X_7" <= -0.122391)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" <= -0.829891) AND (t."X_9" <= -1.634372) AND (t."X_7" > -0.122391)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" > -0.829891) AND (t."X_9" > 0.866384) AND (t."X_9" <= 1.284296)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" > -0.829891) AND (t."X_9" > 0.866384) AND (t."X_9" > 1.284296)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" > -0.408378)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_7" <= -1.330091) AND (t."X_4" > 0.089460)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_7" <= -1.330091) AND (t."X_4" <= 0.089460) AND (t."X_8" > -1.607619)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_7" <= -1.330091) AND (t."X_4" <= 0.089460) AND (t."X_8" <= -1.607619) AND (t."X_7" <= -1.557231)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_7" <= -1.330091) AND (t."X_4" <= 0.089460) AND (t."X_8" <= -1.607619) AND (t."X_7" > -1.557231)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_7" > -1.330091) AND (t."X_9" <= -0.420335) AND (t."X_9" > -1.601854)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_7" > -1.330091) AND (t."X_9" <= -0.420335) AND (t."X_9" <= -1.601854) AND (t."X_9" <= -2.049428)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_7" > -1.330091) AND (t."X_9" <= -0.420335) AND (t."X_9" <= -1.601854) AND (t."X_9" > -2.049428)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_7" > -1.330091) AND (t."X_9" > -0.420335) AND (t."X_4" <= -0.975906)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_7" > -1.330091) AND (t."X_9" > -0.420335) AND (t."X_4" > -0.975906) AND (t."X_4" <= 0.084810)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_8" <= -0.187819) AND (t."X_8" <= -0.408378) AND (t."X_7" > -1.330091) AND (t."X_9" > -0.420335) AND (t."X_4" > -0.975906) AND (t."X_4" > 0.084810)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" > -0.829891) AND (t."X_9" <= 0.866384) AND (t."X_9" <= 0.001642)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" > -0.829891) AND (t."X_9" <= 0.866384) AND (t."X_9" > 0.001642)) THEN 48 ELSE NULL END AS "Leaf_48",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" <= -0.829891) AND (t."X_9" > -1.634372) AND (t."X_8" <= 1.577200)) THEN 49 ELSE NULL END AS "Leaf_49",
      CASE WHEN((t."X_8" > -0.187819) AND (t."X_7" > -1.185406) AND (t."X_8" > 0.096293) AND (t."X_9" <= -0.829891) AND (t."X_9" > -1.634372) AND (t."X_8" > 1.577200)) THEN 50 ELSE NULL END AS "Leaf_50"
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
    SELECT 11 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.208333 AS "P_0", 0.645833 AS "P_1", 0.083333 AS "P_2", 0.062500 AS "P_3", 1 AS "D", 0.645833 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.555556 AS "P_0", 0.222222 AS "P_1", 0.222222 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.128205 AS "P_0", 0.743590 AS "P_1", 0.051282 AS "P_2", 0.076923 AS "P_3", 1 AS "D", 0.743590 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.600000 AS "P_0", 0.000000 AS "P_1", 0.400000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.888889 AS "P_1", 0.000000 AS "P_2", 0.111111 AS "P_3", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.416667 AS "P_0", 0.416667 AS "P_1", 0.166667 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.416667 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 0.714286 AS "P_1", 0.285714 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.204082 AS "P_0", 0.040816 AS "P_1", 0.469388 AS "P_2", 0.285714 AS "P_3", 2 AS "D", 0.469388 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.416667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.583333 AS "P_3", 3 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.135135 AS "P_0", 0.054054 AS "P_1", 0.621622 AS "P_2", 0.189189 AS "P_3", 2 AS "D", 0.621622 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.625000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.375000 AS "P_3", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.375000 AS "P_2", 0.625000 AS "P_3", 3 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.172414 AS "P_0", 0.068966 AS "P_1", 0.689655 AS "P_2", 0.068966 AS "P_3", 2 AS "D", 0.689655 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.600000 AS "P_2", 0.400000 AS "P_3", 2 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.238095 AS "P_0", 0.095238 AS "P_1", 0.571429 AS "P_2", 0.095238 AS "P_3", 2 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.500000 AS "P_0", 0.333333 AS "P_1", 0.000000 AS "P_2", 0.166667 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  0.133333 AS "P_0", 0.000000 AS "P_1", 0.800000 AS "P_2", 0.066667 AS "P_3", 2 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 0.666667 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 49 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 50 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_14", t1."Leaf_15", t1."Leaf_20", t1."Leaf_23", t1."Leaf_24", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_30", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_37", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_42", t1."Leaf_44", t1."Leaf_45", t1."Leaf_46", t1."Leaf_47", t1."Leaf_48" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" <= -1.142108) AND (t."X_5" > 1.010664)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" <= -1.142108) AND (t."X_5" <= 1.010664) AND (t."X_9" <= -0.326417) AND (t."X_9" <= -1.803617)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" <= -1.142108) AND (t."X_5" <= 1.010664) AND (t."X_9" <= -0.326417) AND (t."X_9" > -1.803617)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" > 0.974245) AND (t."X_8" > 0.440907)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" > 0.974245) AND (t."X_8" <= 0.440907) AND (t."X_5" <= -1.050931)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" > -0.077553) AND (t."X_8" > 0.982395)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" > 0.789410) AND (t."X_7" <= -2.005167)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" > 0.789410) AND (t."X_7" > -2.005167)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" <= 0.789410) AND (t."X_8" <= -0.023027) AND (t."X_7" <= -1.129799)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" <= 0.789410) AND (t."X_8" <= -0.023027) AND (t."X_7" > -1.129799)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" <= -1.142108) AND (t."X_5" <= 1.010664) AND (t."X_9" > -0.326417) AND (t."X_8" <= 0.218699)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" <= -1.142108) AND (t."X_5" <= 1.010664) AND (t."X_9" > -0.326417) AND (t."X_8" > 0.218699)) THEN 30 ELSE NULL END AS "Leaf_30",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" > -1.142108) AND (t."X_5" <= -0.640390) AND (t."X_9" <= -0.061231)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" > -1.142108) AND (t."X_5" <= -0.640390) AND (t."X_9" > -0.061231)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" > -1.142108) AND (t."X_5" > -0.640390) AND (t."X_5" <= 0.779313)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" > -1.142108) AND (t."X_5" > -0.640390) AND (t."X_5" > 0.779313) AND (t."X_7" <= -1.091641)) THEN 37 ELSE NULL END AS "Leaf_37",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" > 0.974245) AND (t."X_8" <= 0.440907) AND (t."X_5" > -1.050931) AND (t."X_9" <= -1.082440)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" > 0.974245) AND (t."X_8" <= 0.440907) AND (t."X_5" > -1.050931) AND (t."X_9" > -1.082440)) THEN 40 ELSE NULL END AS "Leaf_40",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" <= 0.789410) AND (t."X_8" > -0.023027) AND (t."X_5" <= 0.227755)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" <= -0.077553) AND (t."X_6" <= 0.789410) AND (t."X_8" > -0.023027) AND (t."X_5" > 0.227755)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" > -0.077553) AND (t."X_8" <= 0.982395) AND (t."X_9" > 0.452830)) THEN 44 ELSE NULL END AS "Leaf_44",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" > -0.077553) AND (t."X_8" <= 0.982395) AND (t."X_9" <= 0.452830) AND (t."X_6" <= 0.775476)) THEN 45 ELSE NULL END AS "Leaf_45",
      CASE WHEN((t."X_6" > -1.034186) AND (t."X_7" <= 0.974245) AND (t."X_7" > -0.077553) AND (t."X_8" <= 0.982395) AND (t."X_9" <= 0.452830) AND (t."X_6" > 0.775476)) THEN 46 ELSE NULL END AS "Leaf_46",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" > -1.142108) AND (t."X_5" > -0.640390) AND (t."X_5" > 0.779313) AND (t."X_7" > -1.091641) AND (t."X_9" <= 0.504594)) THEN 47 ELSE NULL END AS "Leaf_47",
      CASE WHEN((t."X_6" <= -1.034186) AND (t."X_7" > -1.142108) AND (t."X_5" > -0.640390) AND (t."X_5" > 0.779313) AND (t."X_7" > -1.091641) AND (t."X_9" > 0.504594)) THEN 48 ELSE NULL END AS "Leaf_48"
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
    SELECT 11 AS nid,  0.491228 AS "P_0", 0.052632 AS "P_1", 0.315789 AS "P_2", 0.140351 AS "P_3", 0 AS "D", 0.491228 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 0.333333 AS "P_1", 0.625000 AS "P_2", 0.041667 AS "P_3", 2 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 0.157895 AS "P_1", 0.789474 AS "P_2", 0.052632 AS "P_3", 2 AS "D", 0.789474 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.937500 AS "P_2", 0.062500 AS "P_3", 2 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.285714 AS "P_0", 0.028571 AS "P_1", 0.457143 AS "P_2", 0.228571 AS "P_3", 2 AS "D", 0.457143 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.818182 AS "P_0", 0.090909 AS "P_1", 0.090909 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.900000 AS "P_0", 0.000000 AS "P_1", 0.100000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.370370 AS "P_0", 0.037037 AS "P_1", 0.518519 AS "P_2", 0.074074 AS "P_3", 2 AS "D", 0.518519 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.250000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.157895 AS "P_0", 0.000000 AS "P_1", 0.736842 AS "P_2", 0.105263 AS "P_3", 2 AS "D", 0.736842 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.666667 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.062500 AS "P_0", 0.000000 AS "P_1", 0.875000 AS "P_2", 0.062500 AS "P_3", 2 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.400000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 0.400000 AS "P_1", 0.400000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.400000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.894737 AS "P_1", 0.000000 AS "P_2", 0.105263 AS "P_3", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 0.714286 AS "P_1", 0.000000 AS "P_2", 0.285714 AS "P_3", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.666667 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.777778 AS "P_0", 0.000000 AS "P_1", 0.222222 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 45 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 46 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 47 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 48 AS nid,  0.000000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 1 AS "D", 0.500000 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" <= -1.585091) AND (t."X_8" > -0.711485) AND (t."X_9" <= -0.713904)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_1" <= -1.585091) AND (t."X_8" > -0.711485) AND (t."X_9" > -0.713904)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_1" <= -1.585091) AND (t."X_8" <= -0.711485) AND (t."X_9" <= 0.766760)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_1" <= -1.585091) AND (t."X_8" <= -0.711485) AND (t."X_9" > 0.766760)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" > 0.749374) AND (t."X_0" > 1.907418)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" > 0.749374) AND (t."X_0" <= 1.907418) AND (t."X_8" <= 0.166287)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" > 0.749374) AND (t."X_0" <= 1.907418) AND (t."X_8" > 0.166287) AND (t."X_1" <= -0.984633)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" > 0.749374) AND (t."X_0" <= 1.907418) AND (t."X_8" > 0.166287) AND (t."X_1" > -0.984633)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" <= -0.830944)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" > -0.830944) AND (t."X_8" <= -0.601892) AND (t."X_1" <= 0.570085)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" > -0.830944) AND (t."X_8" <= -0.601892) AND (t."X_1" > 0.570085)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" > -0.830944) AND (t."X_8" > -0.601892) AND (t."X_8" <= -0.187819)) THEN 25 ELSE NULL END AS "Leaf_25",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" > -1.140923) AND (t."X_9" > -0.830944) AND (t."X_8" > -0.601892) AND (t."X_8" > -0.187819)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" <= -1.140923) AND (t."X_8" > 1.855637)) THEN 28 ELSE NULL END AS "Leaf_28",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 1.855637) AND (t."X_1" <= -0.563095)) THEN 29 ELSE NULL END AS "Leaf_29",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 1.855637) AND (t."X_1" > -0.563095) AND (t."X_8" <= 0.224561)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_1" > -1.585091) AND (t."X_0" <= 0.749374) AND (t."X_7" <= -1.140923) AND (t."X_8" <= 1.855637) AND (t."X_1" > -0.563095) AND (t."X_8" > 0.224561)) THEN 32 ELSE NULL END AS "Leaf_32"
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
    SELECT 5 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.500000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
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
    SELECT 25 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.750000 AS "P_3", 3 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.045455 AS "P_0", 0.772727 AS "P_1", 0.045455 AS "P_2", 0.136364 AS "P_3", 1 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.379310 AS "P_0", 0.000000 AS "P_1", 0.172414 AS "P_2", 0.448276 AS "P_3", 3 AS "D", 0.448276 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.458333 AS "P_0", 0.000000 AS "P_1", 0.208333 AS "P_2", 0.333333 AS "P_3", 0 AS "D", 0.458333 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.769231 AS "P_0", 0.000000 AS "P_1", 0.230769 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.769231 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.090909 AS "P_0", 0.000000 AS "P_1", 0.181818 AS "P_2", 0.727273 AS "P_3", 3 AS "D", 0.727273 AS "DP"
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
    COALESCE( t1."Leaf_5", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24", t1."Leaf_26", t1."Leaf_27", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_41", t1."Leaf_42", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_2" <= -1.327878)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_2" > -1.327878) AND (t."X_7" <= -0.318620) AND (t."X_6" <= 4.478524)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_2" > -1.327878) AND (t."X_7" <= -0.318620) AND (t."X_6" > 4.478524)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_2" > -1.327878) AND (t."X_7" > -0.318620) AND (t."X_8" <= 0.056433) AND (t."X_2" <= 0.043463)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_2" > -1.327878) AND (t."X_7" > -0.318620) AND (t."X_8" <= 0.056433) AND (t."X_2" > 0.043463)) THEN 14 ELSE NULL END AS "Leaf_14",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_2" > -1.327878) AND (t."X_7" > -0.318620) AND (t."X_8" > 0.056433) AND (t."X_8" <= 0.875563)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_6" > 0.697125) AND (t."X_2" > -1.327878) AND (t."X_7" > -0.318620) AND (t."X_8" > 0.056433) AND (t."X_8" > 0.875563)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_8" > 0.476894) AND (t."X_8" > 2.896916)) THEN 22 ELSE NULL END AS "Leaf_22",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_8" > 0.476894) AND (t."X_8" <= 2.896916) AND (t."X_6" <= -0.708504)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_8" > 0.476894) AND (t."X_8" <= 2.896916) AND (t."X_6" > -0.708504)) THEN 24 ELSE NULL END AS "Leaf_24",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_8" <= 0.476894) AND (t."X_2" > 1.355338)) THEN 26 ELSE NULL END AS "Leaf_26",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" <= -1.140923) AND (t."X_6" <= -3.284509)) THEN 27 ELSE NULL END AS "Leaf_27",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" <= -1.140923) AND (t."X_6" > -3.284509) AND (t."X_5" > 0.356888) AND (t."X_2" <= 0.214203)) THEN 31 ELSE NULL END AS "Leaf_31",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" <= -1.140923) AND (t."X_6" > -3.284509) AND (t."X_5" > 0.356888) AND (t."X_2" > 0.214203)) THEN 32 ELSE NULL END AS "Leaf_32",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" <= -1.140923) AND (t."X_6" > -3.284509) AND (t."X_5" <= 0.356888) AND (t."X_7" <= -1.199461)) THEN 33 ELSE NULL END AS "Leaf_33",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" <= -1.140923) AND (t."X_6" > -3.284509) AND (t."X_5" <= 0.356888) AND (t."X_7" > -1.199461)) THEN 34 ELSE NULL END AS "Leaf_34",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_8" <= 0.476894) AND (t."X_2" <= 1.355338) AND (t."X_7" <= -0.554869)) THEN 35 ELSE NULL END AS "Leaf_35",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" <= 0.073393) AND (t."X_7" > -1.140923) AND (t."X_8" <= 0.476894) AND (t."X_2" <= 1.355338) AND (t."X_7" > -0.554869)) THEN 36 ELSE NULL END AS "Leaf_36",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" > 0.073393) AND (t."X_5" > 0.671463) AND (t."X_2" <= 0.598373)) THEN 39 ELSE NULL END AS "Leaf_39",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" > 0.073393) AND (t."X_5" > 0.671463) AND (t."X_2" > 0.598373) AND (t."X_9" <= -0.430582)) THEN 41 ELSE NULL END AS "Leaf_41",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" > 0.073393) AND (t."X_5" > 0.671463) AND (t."X_2" > 0.598373) AND (t."X_9" > -0.430582)) THEN 42 ELSE NULL END AS "Leaf_42",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" > 0.073393) AND (t."X_5" <= 0.671463) AND (t."X_8" <= 0.196059)) THEN 43 ELSE NULL END AS "Leaf_43",
      CASE WHEN((t."X_6" <= 0.697125) AND (t."X_7" > 0.073393) AND (t."X_5" <= 0.671463) AND (t."X_8" > 0.196059)) THEN 44 ELSE NULL END AS "Leaf_44"
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
    SELECT 13 AS nid,  0.333333 AS "P_0", 0.333333 AS "P_1", 0.333333 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.333333 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.640000 AS "P_0", 0.000000 AS "P_1", 0.040000 AS "P_2", 0.320000 AS "P_3", 0 AS "D", 0.640000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.210526 AS "P_0", 0.184211 AS "P_1", 0.421053 AS "P_2", 0.184211 AS "P_3", 2 AS "D", 0.421053 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.150000 AS "P_0", 0.000000 AS "P_1", 0.750000 AS "P_2", 0.100000 AS "P_3", 2 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.277778 AS "P_0", 0.388889 AS "P_1", 0.055556 AS "P_2", 0.277778 AS "P_3", 1 AS "D", 0.388889 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.333333 AS "P_0", 0.466667 AS "P_1", 0.066667 AS "P_2", 0.133333 AS "P_3", 1 AS "D", 0.466667 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 0.700000 AS "P_1", 0.100000 AS "P_2", 0.200000 AS "P_3", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.055556 AS "P_0", 0.000000 AS "P_1", 0.833333 AS "P_2", 0.111111 AS "P_3", 2 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.727273 AS "P_0", 0.000000 AS "P_1", 0.045455 AS "P_2", 0.227273 AS "P_3", 0 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.882353 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.117647 AS "P_3", 0 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.200000 AS "P_0", 0.000000 AS "P_1", 0.200000 AS "P_2", 0.600000 AS "P_3", 3 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 1.000000 AS "P_3", 3 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.166667 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.333333 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.000000 AS "P_0", 0.950000 AS "P_1", 0.050000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.111111 AS "P_0", 0.555556 AS "P_1", 0.222222 AS "P_2", 0.111111 AS "P_3", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.250000 AS "P_0", 0.000000 AS "P_1", 0.500000 AS "P_2", 0.250000 AS "P_3", 2 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 0.000000 AS "P_1", 1.000000 AS "P_2", 0.000000 AS "P_3", 2 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.500000 AS "P_0", 0.000000 AS "P_1", 0.000000 AS "P_2", 0.500000 AS "P_3", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 0.800000 AS "P_1", 0.200000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 0.000000 AS "P_2", 0.000000 AS "P_3", 1 AS "D", 1.000000 AS "DP"
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
    GREATEST( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Max_Score"
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