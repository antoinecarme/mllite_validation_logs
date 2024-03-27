WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18", t1."Leaf_22", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_28", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.401975) AND (t."X_5" <= 0.933632) AND (t."X_8" <= 0.460122) AND (t."X_8" > 0.013344)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_5" > 0.401975) AND (t."X_5" <= 0.933632) AND (t."X_8" <= 0.460122) AND (t."X_8" <= 0.013344) AND (t."X_7" <= 0.003617)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_5" > 0.401975) AND (t."X_5" <= 0.933632) AND (t."X_8" <= 0.460122) AND (t."X_8" <= 0.013344) AND (t."X_7" > 0.003617)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_5" <= 0.401975) AND (t."X_7" > 0.985989) AND (t."X_9" <= -0.719049)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_5" <= 0.401975) AND (t."X_7" > 0.985989) AND (t."X_9" > -0.719049) AND (t."X_5" > -0.180755)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_5" <= 0.401975) AND (t."X_7" > 0.985989) AND (t."X_9" > -0.719049) AND (t."X_5" <= -0.180755) AND (t."X_8" <= 0.035994)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_5" <= 0.401975) AND (t."X_7" > 0.985989) AND (t."X_9" > -0.719049) AND (t."X_5" <= -0.180755) AND (t."X_8" > 0.035994)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_5" <= 0.401975) AND (t."X_7" <= 0.985989) AND (t."X_2" > -0.562337) AND (t."X_8" > 1.668707)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_5" <= 0.401975) AND (t."X_7" <= 0.985989) AND (t."X_2" > -0.562337) AND (t."X_8" <= 1.668707) AND (t."X_4" > 1.004090)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_5" <= 0.401975) AND (t."X_7" <= 0.985989) AND (t."X_2" > -0.562337) AND (t."X_8" <= 1.668707) AND (t."X_4" <= 1.004090) AND (t."X_8" <= -0.722245)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_5" <= 0.401975) AND (t."X_7" <= 0.985989) AND (t."X_2" > -0.562337) AND (t."X_8" <= 1.668707) AND (t."X_4" <= 1.004090) AND (t."X_8" > -0.722245)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_5" > 0.401975) AND (t."X_5" <= 0.933632) AND (t."X_8" > 0.460122) AND (t."X_2" <= 0.916816)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_5" > 0.401975) AND (t."X_5" <= 0.933632) AND (t."X_8" > 0.460122) AND (t."X_2" > 0.916816)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_5" > 0.401975) AND (t."X_5" > 0.933632) AND (t."X_2" > 0.437624) AND (t."X_7" <= 0.438525)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_5" > 0.401975) AND (t."X_5" > 0.933632) AND (t."X_2" > 0.437624) AND (t."X_7" > 0.438525)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_5" <= 0.401975) AND (t."X_7" <= 0.985989) AND (t."X_2" <= -0.562337) AND (t."X_4" <= 0.192234)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_5" <= 0.401975) AND (t."X_7" <= 0.985989) AND (t."X_2" <= -0.562337) AND (t."X_4" > 0.192234)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_5" > 0.401975) AND (t."X_5" > 0.933632) AND (t."X_2" <= 0.437624) AND (t."X_2" <= -0.202419)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_5" > 0.401975) AND (t."X_5" > 0.933632) AND (t."X_2" <= 0.437624) AND (t."X_2" > -0.202419)) THEN 36 ELSE NULL END AS Leaf_36
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.536133 AS "P_0", 0.463867 AS "P_1", 0 AS "D", 0.536133 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.804688 AS "P_0", 0.195312 AS "P_1", 0 AS "D", 0.804688 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.088542 AS "P_0", 0.911458 AS "P_1", 1 AS "D", 0.911458 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.204380 AS "P_0", 0.795620 AS "P_1", 1 AS "D", 0.795620 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.024291 AS "P_0", 0.975708 AS "P_1", 1 AS "D", 0.975708 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.284211 AS "P_0", 0.715789 AS "P_1", 1 AS "D", 0.715789 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.023810 AS "P_0", 0.976190 AS "P_1", 1 AS "D", 0.976190 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.211268 AS "P_0", 0.788732 AS "P_1", 1 AS "D", 0.788732 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.382353 AS "P_0", 0.617647 AS "P_1", 1 AS "D", 0.617647 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.054054 AS "P_0", 0.945946 AS "P_1", 1 AS "D", 0.945946 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.831144 AS "P_0", 0.168856 AS "P_1", 0 AS "D", 0.831144 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.672897 AS "P_0", 0.327103 AS "P_1", 0 AS "D", 0.672897 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.573171 AS "P_0", 0.426829 AS "P_1", 0 AS "D", 0.573171 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.741935 AS "P_0", 0.258065 AS "P_1", 0 AS "D", 0.741935 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.617647 AS "P_0", 0.382353 AS "P_1", 0 AS "D", 0.617647 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.892857 AS "P_0", 0.107143 AS "P_1", 0 AS "D", 0.892857 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.995000 AS "P_0", 0.005000 AS "P_1", 0 AS "D", 0.995000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.732733 AS "P_0", 0.267267 AS "P_1", 0 AS "D", 0.732733 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.714744 AS "P_0", 0.285256 AS "P_1", 0 AS "D", 0.714744 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.570048 AS "P_0", 0.429952 AS "P_1", 0 AS "D", 0.570048 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.740741 AS "P_0", 0.259259 AS "P_1", 0 AS "D", 0.740741 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.509804 AS "P_0", 0.490196 AS "P_1", 0 AS "D", 0.509804 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.050000 AS "P_0", 0.950000 AS "P_1", 1 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.007874 AS "P_0", 0.992126 AS "P_1", 1 AS "D", 0.992126 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.041667 AS "P_0", 0.958333 AS "P_1", 1 AS "D", 0.958333 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.156250 AS "P_0", 0.843750 AS "P_1", 1 AS "D", 0.843750 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.952381 AS "P_0", 0.047619 AS "P_1", 0 AS "D", 0.952381 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.034483 AS "P_0", 0.965517 AS "P_1", 1 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_0" AS 
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
    COALESCE( t1."Leaf_2", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 1.137688)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" <= 0.888567) AND (t."X_4" <= 0.363950) AND (t."X_4" > -2.000622) AND (t."X_9" > 1.142302) AND (t."X_4" <= -0.422139)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" <= 0.888567) AND (t."X_4" <= 0.363950) AND (t."X_4" > -2.000622) AND (t."X_9" > 1.142302) AND (t."X_4" > -0.422139)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" <= 0.888567) AND (t."X_4" <= 0.363950) AND (t."X_4" > -2.000622) AND (t."X_9" <= 1.142302) AND (t."X_8" <= 0.471867)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" <= 0.888567) AND (t."X_4" <= 0.363950) AND (t."X_4" > -2.000622) AND (t."X_9" <= 1.142302) AND (t."X_8" > 0.471867)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" > 0.888567) AND (t."X_9" <= -0.101666) AND (t."X_9" > -0.623003) AND (t."X_8" <= -0.063417)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" > 0.888567) AND (t."X_9" <= -0.101666) AND (t."X_9" > -0.623003) AND (t."X_8" > -0.063417)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" > 0.888567) AND (t."X_9" <= -0.101666) AND (t."X_9" <= -0.623003) AND (t."X_7" <= -0.783658)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" > 0.888567) AND (t."X_9" <= -0.101666) AND (t."X_9" <= -0.623003) AND (t."X_7" > -0.783658) AND (t."X_4" <= 0.959193)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" > 0.888567) AND (t."X_9" <= -0.101666) AND (t."X_9" <= -0.623003) AND (t."X_7" > -0.783658) AND (t."X_4" > 0.959193)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" <= 0.888567) AND (t."X_4" > 0.363950) AND (t."X_4" <= 0.677963)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" <= 0.888567) AND (t."X_4" > 0.363950) AND (t."X_4" > 0.677963)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" > 0.888567) AND (t."X_9" > -0.101666) AND (t."X_7" <= -1.013670)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" > 0.888567) AND (t."X_9" > -0.101666) AND (t."X_7" > -1.013670) AND (t."X_8" > -0.248720) AND (t."X_9" <= 0.827069)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" > 0.888567) AND (t."X_9" > -0.101666) AND (t."X_7" > -1.013670) AND (t."X_8" > -0.248720) AND (t."X_9" > 0.827069)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" <= 0.888567) AND (t."X_4" <= 0.363950) AND (t."X_4" <= -2.000622) AND (t."X_4" <= -2.153083)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" <= 0.888567) AND (t."X_4" <= 0.363950) AND (t."X_4" <= -2.000622) AND (t."X_4" > -2.153083)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" > 0.888567) AND (t."X_9" > -0.101666) AND (t."X_7" > -1.013670) AND (t."X_8" <= -0.248720) AND (t."X_4" <= 1.013345)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_4" <= 1.137688) AND (t."X_4" > 0.888567) AND (t."X_9" > -0.101666) AND (t."X_7" > -1.013670) AND (t."X_8" <= -0.248720) AND (t."X_4" > 1.013345)) THEN 36 ELSE NULL END AS Leaf_36
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.500977 AS "P_0", 0.499023 AS "P_1", 0 AS "D", 0.500977 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.466597 AS "P_0", 0.533403 AS "P_1", 1 AS "D", 0.533403 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.594203 AS "P_0", 0.405797 AS "P_1", 0 AS "D", 0.594203 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.231454 AS "P_0", 0.768546 AS "P_1", 1 AS "D", 0.768546 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.526923 AS "P_0", 0.473077 AS "P_1", 0 AS "D", 0.526923 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.940594 AS "P_0", 0.059406 AS "P_1", 0 AS "D", 0.940594 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.195122 AS "P_0", 0.804878 AS "P_1", 1 AS "D", 0.804878 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.555324 AS "P_0", 0.444676 AS "P_1", 0 AS "D", 0.555324 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.593750 AS "P_0", 0.406250 AS "P_1", 0 AS "D", 0.593750 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.301587 AS "P_0", 0.698413 AS "P_1", 1 AS "D", 0.698413 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.619048 AS "P_0", 0.380952 AS "P_1", 0 AS "D", 0.619048 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.660959 AS "P_0", 0.339041 AS "P_1", 0 AS "D", 0.660959 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.435484 AS "P_0", 0.564516 AS "P_1", 1 AS "D", 0.564516 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.313609 AS "P_0", 0.686391 AS "P_1", 1 AS "D", 0.686391 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.148810 AS "P_0", 0.851190 AS "P_1", 1 AS "D", 0.851190 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.240385 AS "P_0", 0.759615 AS "P_1", 1 AS "D", 0.759615 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.430769 AS "P_0", 0.569231 AS "P_1", 1 AS "D", 0.569231 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.310345 AS "P_0", 0.689655 AS "P_1", 1 AS "D", 0.689655 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.527778 AS "P_0", 0.472222 AS "P_1", 0 AS "D", 0.527778 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.180556 AS "P_0", 0.819444 AS "P_1", 1 AS "D", 0.819444 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.270833 AS "P_0", 0.729167 AS "P_1", 1 AS "D", 0.729167 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.320000 AS "P_0", 0.680000 AS "P_1", 1 AS "D", 0.680000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.118881 AS "P_0", 0.881119 AS "P_1", 1 AS "D", 0.881119 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.031250 AS "P_0", 0.968750 AS "P_1", 1 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.189873 AS "P_0", 0.810127 AS "P_1", 1 AS "D", 0.810127 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  0.269231 AS "P_0", 0.730769 AS "P_1", 1 AS "D", 0.730769 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.037037 AS "P_0", 0.962963 AS "P_1", 1 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
  ) AS "Values"),
"DT_output_1" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_24", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_31", t1."Leaf_33", t1."Leaf_34", t1."Leaf_37", t1."Leaf_38", t1."Leaf_39", t1."Leaf_40" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.052391) AND (t."X_6" <= -0.163755)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_5" > 0.052391) AND (t."X_6" > -0.163755) AND (t."X_5" <= 0.325408) AND (t."X_9" <= 0.113447)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_5" > 0.052391) AND (t."X_6" > -0.163755) AND (t."X_5" <= 0.325408) AND (t."X_9" > 0.113447)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_5" <= 0.052391) AND (t."X_5" > -0.735483) AND (t."X_9" <= -0.539858) AND (t."X_6" <= -0.305581)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_5" <= 0.052391) AND (t."X_5" > -0.735483) AND (t."X_9" <= -0.539858) AND (t."X_6" > -0.305581)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_5" <= 0.052391) AND (t."X_5" > -0.735483) AND (t."X_9" > -0.539858) AND (t."X_9" <= -0.280707)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_5" <= 0.052391) AND (t."X_5" > -0.735483) AND (t."X_9" > -0.539858) AND (t."X_9" > -0.280707) AND (t."X_6" <= -0.592676)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_5" <= 0.052391) AND (t."X_5" > -0.735483) AND (t."X_9" > -0.539858) AND (t."X_9" > -0.280707) AND (t."X_6" > -0.592676) AND (t."X_9" <= 0.603062)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_5" <= 0.052391) AND (t."X_5" > -0.735483) AND (t."X_9" > -0.539858) AND (t."X_9" > -0.280707) AND (t."X_6" > -0.592676) AND (t."X_9" > 0.603062)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_5" > 0.052391) AND (t."X_6" > -0.163755) AND (t."X_5" > 0.325408) AND (t."X_5" <= 0.890186) AND (t."X_5" > 0.788439)) THEN 24 ELSE NULL END AS Leaf_24,
      CASE WHEN((t."X_5" > 0.052391) AND (t."X_6" > -0.163755) AND (t."X_5" > 0.325408) AND (t."X_5" <= 0.890186) AND (t."X_5" <= 0.788439) AND (t."X_6" <= 0.148283)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_5" > 0.052391) AND (t."X_6" > -0.163755) AND (t."X_5" > 0.325408) AND (t."X_5" <= 0.890186) AND (t."X_5" <= 0.788439) AND (t."X_6" > 0.148283)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_5" <= 0.052391) AND (t."X_5" <= -0.735483) AND (t."X_5" <= -1.529017)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_5" <= 0.052391) AND (t."X_5" <= -0.735483) AND (t."X_5" > -1.529017) AND (t."X_8" <= -1.124338)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_5" <= 0.052391) AND (t."X_5" <= -0.735483) AND (t."X_5" > -1.529017) AND (t."X_8" > -1.124338) AND (t."X_6" <= -0.850713)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_5" <= 0.052391) AND (t."X_5" <= -0.735483) AND (t."X_5" > -1.529017) AND (t."X_8" > -1.124338) AND (t."X_6" > -0.850713) AND (t."X_7" <= 0.337652)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_5" <= 0.052391) AND (t."X_5" <= -0.735483) AND (t."X_5" > -1.529017) AND (t."X_8" > -1.124338) AND (t."X_6" > -0.850713) AND (t."X_7" > 0.337652)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_5" > 0.052391) AND (t."X_6" > -0.163755) AND (t."X_5" > 0.325408) AND (t."X_5" > 0.890186) AND (t."X_5" <= 1.113121) AND (t."X_9" <= -0.334850)) THEN 37 ELSE NULL END AS Leaf_37,
      CASE WHEN((t."X_5" > 0.052391) AND (t."X_6" > -0.163755) AND (t."X_5" > 0.325408) AND (t."X_5" > 0.890186) AND (t."X_5" <= 1.113121) AND (t."X_9" > -0.334850)) THEN 38 ELSE NULL END AS Leaf_38,
      CASE WHEN((t."X_5" > 0.052391) AND (t."X_6" > -0.163755) AND (t."X_5" > 0.325408) AND (t."X_5" > 0.890186) AND (t."X_5" > 1.113121) AND (t."X_7" <= 0.010463)) THEN 39 ELSE NULL END AS Leaf_39,
      CASE WHEN((t."X_5" > 0.052391) AND (t."X_6" > -0.163755) AND (t."X_5" > 0.325408) AND (t."X_5" > 0.890186) AND (t."X_5" > 1.113121) AND (t."X_7" > 0.010463)) THEN 40 ELSE NULL END AS Leaf_40
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.498047 AS "P_0", 0.501953 AS "P_1", 1 AS "D", 0.501953 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.844991 AS "P_0", 0.155009 AS "P_1", 0 AS "D", 0.844991 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.127273 AS "P_0", 0.872727 AS "P_1", 1 AS "D", 0.872727 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.846154 AS "P_0", 0.153846 AS "P_1", 0 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.087420 AS "P_0", 0.912580 AS "P_1", 1 AS "D", 0.912580 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.935780 AS "P_0", 0.064220 AS "P_1", 0 AS "D", 0.935780 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.698020 AS "P_0", 0.301980 AS "P_1", 0 AS "D", 0.698020 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.380952 AS "P_0", 0.619048 AS "P_1", 1 AS "D", 0.619048 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.058548 AS "P_0", 0.941452 AS "P_1", 1 AS "D", 0.941452 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.227273 AS "P_0", 0.772727 AS "P_1", 1 AS "D", 0.772727 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.550000 AS "P_0", 0.450000 AS "P_1", 0 AS "D", 0.550000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.648649 AS "P_0", 0.351351 AS "P_1", 0 AS "D", 0.648649 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.709677 AS "P_0", 0.290323 AS "P_1", 0 AS "D", 0.709677 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.318182 AS "P_0", 0.681818 AS "P_1", 1 AS "D", 0.681818 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.706349 AS "P_0", 0.293651 AS "P_1", 0 AS "D", 0.706349 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.622449 AS "P_0", 0.377551 AS "P_1", 0 AS "D", 0.622449 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.524590 AS "P_0", 0.475410 AS "P_1", 0 AS "D", 0.524590 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.783784 AS "P_0", 0.216216 AS "P_1", 0 AS "D", 0.783784 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.017422 AS "P_0", 0.982578 AS "P_1", 1 AS "D", 0.982578 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.094828 AS "P_0", 0.905172 AS "P_1", 1 AS "D", 0.905172 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.152778 AS "P_0", 0.847222 AS "P_1", 1 AS "D", 0.847222 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.885870 AS "P_0", 0.114130 AS "P_1", 0 AS "D", 0.885870 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.908537 AS "P_0", 0.091463 AS "P_1", 0 AS "D", 0.908537 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.784314 AS "P_0", 0.215686 AS "P_1", 0 AS "D", 0.784314 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  0.925926 AS "P_0", 0.074074 AS "P_1", 0 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  0.050847 AS "P_0", 0.949153 AS "P_1", 1 AS "D", 0.949153 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.008772 AS "P_0", 0.991228 AS "P_1", 1 AS "D", 0.991228 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.150000 AS "P_0", 0.850000 AS "P_1", 1 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.019048 AS "P_0", 0.980952 AS "P_1", 1 AS "D", 0.980952 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_2" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_6", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_9" <= -2.298139)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_9" > -2.298139) AND (t."X_9" <= -1.701571)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_9" > -2.298139) AND (t."X_9" > -1.701571) AND (t."X_1" > 1.813726)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_9" > -2.298139) AND (t."X_9" > -1.701571) AND (t."X_1" <= 1.813726) AND (t."X_9" <= -1.178695) AND (t."X_1" > 0.392779)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_9" > -2.298139) AND (t."X_9" > -1.701571) AND (t."X_1" <= 1.813726) AND (t."X_9" <= -1.178695) AND (t."X_1" <= 0.392779) AND (t."X_1" <= -0.461552)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_9" > -2.298139) AND (t."X_9" > -1.701571) AND (t."X_1" <= 1.813726) AND (t."X_9" <= -1.178695) AND (t."X_1" <= 0.392779) AND (t."X_1" > -0.461552)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_9" > -2.298139) AND (t."X_9" > -1.701571) AND (t."X_1" <= 1.813726) AND (t."X_9" > -1.178695) AND (t."X_9" <= -0.948143) AND (t."X_9" <= -1.025615)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_9" > -2.298139) AND (t."X_9" > -1.701571) AND (t."X_1" <= 1.813726) AND (t."X_9" > -1.178695) AND (t."X_9" <= -0.948143) AND (t."X_9" > -1.025615)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_9" > -2.298139) AND (t."X_9" > -1.701571) AND (t."X_1" <= 1.813726) AND (t."X_9" > -1.178695) AND (t."X_9" > -0.948143) AND (t."X_9" <= -0.856362)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_9" > -2.298139) AND (t."X_9" > -1.701571) AND (t."X_1" <= 1.813726) AND (t."X_9" > -1.178695) AND (t."X_9" > -0.948143) AND (t."X_9" > -0.856362)) THEN 18 ELSE NULL END AS Leaf_18
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.508789 AS "P_0", 0.491211 AS "P_1", 0 AS "D", 0.508789 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.809524 AS "P_0", 0.190476 AS "P_1", 0 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.502493 AS "P_0", 0.497507 AS "P_1", 0 AS "D", 0.502493 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.172414 AS "P_0", 0.827586 AS "P_1", 1 AS "D", 0.827586 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.512320 AS "P_0", 0.487680 AS "P_1", 0 AS "D", 0.512320 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.521785 AS "P_0", 0.478215 AS "P_1", 0 AS "D", 0.521785 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.242424 AS "P_0", 0.757576 AS "P_1", 1 AS "D", 0.757576 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.685714 AS "P_0", 0.314286 AS "P_1", 0 AS "D", 0.685714 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.508611 AS "P_0", 0.491389 AS "P_1", 0 AS "D", 0.508611 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.608696 AS "P_0", 0.391304 AS "P_1", 0 AS "D", 0.608696 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.791667 AS "P_0", 0.208333 AS "P_1", 0 AS "D", 0.791667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.409091 AS "P_0", 0.590909 AS "P_1", 1 AS "D", 0.590909 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.314815 AS "P_0", 0.685185 AS "P_1", 1 AS "D", 0.685185 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.521420 AS "P_0", 0.478580 AS "P_1", 0 AS "D", 0.521420 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.464286 AS "P_0", 0.535714 AS "P_1", 1 AS "D", 0.535714 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.153846 AS "P_0", 0.846154 AS "P_1", 1 AS "D", 0.846154 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.512563 AS "P_0", 0.487437 AS "P_1", 0 AS "D", 0.512563 AS "DP"
  ) AS "Values"),
"DT_output_3" AS 
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
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22", t1."Leaf_27", t1."Leaf_28", t1."Leaf_29", t1."Leaf_31", t1."Leaf_32", t1."Leaf_33", t1."Leaf_34", t1."Leaf_35", t1."Leaf_36", t1."Leaf_39", t1."Leaf_40", t1."Leaf_41", t1."Leaf_43", t1."Leaf_44" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.268589) AND (t."X_5" <= 0.893602) AND (t."X_7" <= -0.730451)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_5" > 0.268589) AND (t."X_5" <= 0.893602) AND (t."X_7" > -0.730451) AND (t."X_8" <= -1.022065)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_5" > 0.268589) AND (t."X_5" <= 0.893602) AND (t."X_7" > -0.730451) AND (t."X_8" > -1.022065) AND (t."X_5" <= 0.521678)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_5" > 0.268589) AND (t."X_5" <= 0.893602) AND (t."X_7" > -0.730451) AND (t."X_8" > -1.022065) AND (t."X_5" > 0.521678) AND (t."X_7" <= 0.370868)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_5" > 0.268589) AND (t."X_5" <= 0.893602) AND (t."X_7" > -0.730451) AND (t."X_8" > -1.022065) AND (t."X_5" > 0.521678) AND (t."X_7" > 0.370868)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_5" <= 0.268589) AND (t."X_7" <= -1.460426)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_5" <= 0.268589) AND (t."X_7" > -1.460426) AND (t."X_5" > -0.469670) AND (t."X_2" > -0.479751) AND (t."X_6" <= -0.117790)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_5" <= 0.268589) AND (t."X_7" > -1.460426) AND (t."X_5" > -0.469670) AND (t."X_2" > -0.479751) AND (t."X_6" > -0.117790) AND (t."X_8" <= 0.546700)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_5" <= 0.268589) AND (t."X_7" > -1.460426) AND (t."X_5" > -0.469670) AND (t."X_2" > -0.479751) AND (t."X_6" > -0.117790) AND (t."X_8" > 0.546700)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_5" <= 0.268589) AND (t."X_7" > -1.460426) AND (t."X_5" <= -0.469670) AND (t."X_7" <= 0.306360) AND (t."X_5" > -0.954892) AND (t."X_8" <= -0.514486)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_5" <= 0.268589) AND (t."X_7" > -1.460426) AND (t."X_5" <= -0.469670) AND (t."X_7" <= 0.306360) AND (t."X_5" > -0.954892) AND (t."X_8" > -0.514486)) THEN 28 ELSE NULL END AS Leaf_28,
      CASE WHEN((t."X_5" <= 0.268589) AND (t."X_7" > -1.460426) AND (t."X_5" <= -0.469670) AND (t."X_7" > 0.306360) AND (t."X_8" <= -1.117553)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_5" <= 0.268589) AND (t."X_7" > -1.460426) AND (t."X_5" <= -0.469670) AND (t."X_7" <= 0.306360) AND (t."X_5" <= -0.954892) AND (t."X_6" <= -0.847554)) THEN 31 ELSE NULL END AS Leaf_31,
      CASE WHEN((t."X_5" <= 0.268589) AND (t."X_7" > -1.460426) AND (t."X_5" <= -0.469670) AND (t."X_7" <= 0.306360) AND (t."X_5" <= -0.954892) AND (t."X_6" > -0.847554)) THEN 32 ELSE NULL END AS Leaf_32,
      CASE WHEN((t."X_5" <= 0.268589) AND (t."X_7" > -1.460426) AND (t."X_5" > -0.469670) AND (t."X_2" <= -0.479751) AND (t."X_9" <= 0.166056)) THEN 33 ELSE NULL END AS Leaf_33,
      CASE WHEN((t."X_5" <= 0.268589) AND (t."X_7" > -1.460426) AND (t."X_5" > -0.469670) AND (t."X_2" <= -0.479751) AND (t."X_9" > 0.166056)) THEN 34 ELSE NULL END AS Leaf_34,
      CASE WHEN((t."X_5" <= 0.268589) AND (t."X_7" > -1.460426) AND (t."X_5" <= -0.469670) AND (t."X_7" > 0.306360) AND (t."X_8" > -1.117553) AND (t."X_6" <= -0.570661)) THEN 35 ELSE NULL END AS Leaf_35,
      CASE WHEN((t."X_5" <= 0.268589) AND (t."X_7" > -1.460426) AND (t."X_5" <= -0.469670) AND (t."X_7" > 0.306360) AND (t."X_8" > -1.117553) AND (t."X_6" > -0.570661)) THEN 36 ELSE NULL END AS Leaf_36,
      CASE WHEN((t."X_5" > 0.268589) AND (t."X_5" > 0.893602) AND (t."X_2" <= -0.202323) AND (t."X_9" <= 0.187280)) THEN 39 ELSE NULL END AS Leaf_39,
      CASE WHEN((t."X_5" > 0.268589) AND (t."X_5" > 0.893602) AND (t."X_2" <= -0.202323) AND (t."X_9" > 0.187280)) THEN 40 ELSE NULL END AS Leaf_40,
      CASE WHEN((t."X_5" > 0.268589) AND (t."X_5" > 0.893602) AND (t."X_2" > -0.202323) AND (t."X_6" <= 1.918111)) THEN 41 ELSE NULL END AS Leaf_41,
      CASE WHEN((t."X_5" > 0.268589) AND (t."X_5" > 0.893602) AND (t."X_2" > -0.202323) AND (t."X_6" > 1.918111) AND (t."X_7" <= 0.438525)) THEN 43 ELSE NULL END AS Leaf_43,
      CASE WHEN((t."X_5" > 0.268589) AND (t."X_5" > 0.893602) AND (t."X_2" > -0.202323) AND (t."X_6" > 1.918111) AND (t."X_7" > 0.438525)) THEN 44 ELSE NULL END AS Leaf_44
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.534180 AS "P_0", 0.465820 AS "P_1", 0 AS "D", 0.534180 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.847790 AS "P_0", 0.152209 AS "P_1", 0 AS "D", 0.847790 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.070218 AS "P_0", 0.929782 AS "P_1", 1 AS "D", 0.929782 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.013889 AS "P_0", 0.986111 AS "P_1", 1 AS "D", 0.986111 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.240385 AS "P_0", 0.759615 AS "P_1", 1 AS "D", 0.759615 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.202381 AS "P_0", 0.797619 AS "P_1", 1 AS "D", 0.797619 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.312500 AS "P_0", 0.687500 AS "P_1", 1 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.208333 AS "P_0", 0.791667 AS "P_1", 1 AS "D", 0.791667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.416667 AS "P_0", 0.583333 AS "P_1", 1 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.583333 AS "P_0", 0.416667 AS "P_1", 0 AS "D", 0.583333 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.864348 AS "P_0", 0.135652 AS "P_1", 0 AS "D", 0.864348 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.941176 AS "P_0", 0.058824 AS "P_1", 0 AS "D", 0.941176 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.676647 AS "P_0", 0.323353 AS "P_1", 0 AS "D", 0.676647 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.979592 AS "P_0", 0.020408 AS "P_1", 0 AS "D", 0.979592 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.550847 AS "P_0", 0.449153 AS "P_1", 0 AS "D", 0.550847 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.343750 AS "P_0", 0.656250 AS "P_1", 1 AS "D", 0.656250 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.627907 AS "P_0", 0.372093 AS "P_1", 0 AS "D", 0.627907 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.564516 AS "P_0", 0.435484 AS "P_1", 0 AS "D", 0.564516 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.791667 AS "P_0", 0.208333 AS "P_1", 0 AS "D", 0.791667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.917695 AS "P_0", 0.082305 AS "P_1", 0 AS "D", 0.917695 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.975758 AS "P_0", 0.024242 AS "P_1", 0 AS "D", 0.975758 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  0.970760 AS "P_0", 0.029240 AS "P_1", 0 AS "D", 0.970760 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.791667 AS "P_0", 0.208333 AS "P_1", 0 AS "D", 0.791667 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.965517 AS "P_0", 0.034483 AS "P_1", 0 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.674419 AS "P_0", 0.325581 AS "P_1", 0 AS "D", 0.674419 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.992754 AS "P_0", 0.007246 AS "P_1", 0 AS "D", 0.992754 AS "DP"
    UNION ALL
    SELECT 31 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 32 AS nid,  0.928571 AS "P_0", 0.071429 AS "P_1", 0 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 33 AS nid,  0.950000 AS "P_0", 0.050000 AS "P_1", 0 AS "D", 0.950000 AS "DP"
    UNION ALL
    SELECT 34 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 35 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 36 AS nid,  0.973684 AS "P_0", 0.026316 AS "P_1", 0 AS "D", 0.973684 AS "DP"
    UNION ALL
    SELECT 37 AS nid,  0.038462 AS "P_0", 0.961538 AS "P_1", 1 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 38 AS nid,  0.008475 AS "P_0", 0.991525 AS "P_1", 1 AS "D", 0.991525 AS "DP"
    UNION ALL
    SELECT 39 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 40 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 41 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 42 AS nid,  0.035088 AS "P_0", 0.964912 AS "P_1", 1 AS "D", 0.964912 AS "DP"
    UNION ALL
    SELECT 43 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 44 AS nid,  0.095238 AS "P_0", 0.904762 AS "P_1", 1 AS "D", 0.904762 AS "DP"
  ) AS "Values"),
"DT_output_4" AS 
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
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_4" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   AVG(t."P_0") AS "Proba_0",
   CAST(NULL AS FLOAT) AS "Score_0",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   AVG(t."P_1") AS "Proba_1",
   CAST(NULL AS FLOAT) AS "Score_1"
FROM "union_of_trees" AS t
GROUP BY t."index"
