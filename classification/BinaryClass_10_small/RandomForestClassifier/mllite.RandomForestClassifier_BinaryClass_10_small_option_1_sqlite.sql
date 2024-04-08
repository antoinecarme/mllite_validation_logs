WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "BinaryClass_10_small" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_2" <= -0.433816)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_2" > -0.433816) AND (t."X_9" > 1.311310) AND (t."X_9" <= 1.823854)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_2" > -0.433816) AND (t."X_9" > 1.311310) AND (t."X_9" > 1.823854)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" <= -0.493245) AND (t."X_7" <= 0.717654)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" <= -0.493245) AND (t."X_7" > 0.717654) AND (t."X_2" <= -0.603103)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" <= -0.493245) AND (t."X_7" > 0.717654) AND (t."X_2" > -0.603103)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_2" > -0.433816) AND (t."X_9" <= 1.311310) AND (t."X_2" <= 0.067778)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_2" > -0.433816) AND (t."X_9" <= 1.311310) AND (t."X_2" > 0.067778) AND (t."X_7" > 1.321119)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_2" > -0.433816) AND (t."X_9" <= 1.311310) AND (t."X_2" > 0.067778) AND (t."X_7" <= 1.321119) AND (t."X_4" <= 0.890532)) THEN 17 ELSE NULL END AS "Leaf_17",
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_2" > -0.433816) AND (t."X_9" <= 1.311310) AND (t."X_2" > 0.067778) AND (t."X_7" <= 1.321119) AND (t."X_4" > 0.890532)) THEN 18 ELSE NULL END AS "Leaf_18"
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
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.964286 AS "P_0", 0.035714 AS "P_1", 0 AS "D", 0.964286 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.138889 AS "P_0", 0.861111 AS "P_1", 1 AS "D", 0.861111 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.088235 AS "P_0", 0.911765 AS "P_1", 1 AS "D", 0.911765 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.066667 AS "P_0", 0.933333 AS "P_1", 1 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" <= 0.445245) AND (t."X_8" > -0.138706)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_8" <= 0.445245) AND (t."X_8" <= -0.138706) AND (t."X_8" > -0.312352)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_8" <= 0.445245) AND (t."X_8" <= -0.138706) AND (t."X_8" <= -0.312352) AND (t."X_7" > 0.906276)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_8" <= 0.445245) AND (t."X_8" <= -0.138706) AND (t."X_8" <= -0.312352) AND (t."X_7" <= 0.906276) AND (t."X_4" <= 0.801624)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_8" <= 0.445245) AND (t."X_8" <= -0.138706) AND (t."X_8" <= -0.312352) AND (t."X_7" <= 0.906276) AND (t."X_4" > 0.801624) AND (t."X_7" <= -0.408530)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_8" <= 0.445245) AND (t."X_8" <= -0.138706) AND (t."X_8" <= -0.312352) AND (t."X_7" <= 0.906276) AND (t."X_4" > 0.801624) AND (t."X_7" > -0.408530)) THEN 12 ELSE NULL END AS "Leaf_12",
      CASE WHEN((t."X_8" > 0.445245) AND (t."X_9" <= -1.020005) AND (t."X_9" <= -1.294615)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_8" > 0.445245) AND (t."X_9" <= -1.020005) AND (t."X_9" > -1.294615)) THEN 16 ELSE NULL END AS "Leaf_16",
      CASE WHEN((t."X_8" > 0.445245) AND (t."X_9" > -1.020005) AND (t."X_4" > 0.890532)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_8" > 0.445245) AND (t."X_9" > -1.020005) AND (t."X_4" <= 0.890532) AND (t."X_4" > 0.252610)) THEN 20 ELSE NULL END AS "Leaf_20",
      CASE WHEN((t."X_8" > 0.445245) AND (t."X_9" > -1.020005) AND (t."X_4" <= 0.890532) AND (t."X_4" <= 0.252610) AND (t."X_4" <= -0.572215)) THEN 21 ELSE NULL END AS "Leaf_21",
      CASE WHEN((t."X_8" > 0.445245) AND (t."X_9" > -1.020005) AND (t."X_4" <= 0.890532) AND (t."X_4" <= 0.252610) AND (t."X_4" > -0.572215) AND (t."X_9" <= -0.480098)) THEN 23 ELSE NULL END AS "Leaf_23",
      CASE WHEN((t."X_8" > 0.445245) AND (t."X_9" > -1.020005) AND (t."X_4" <= 0.890532) AND (t."X_4" <= 0.252610) AND (t."X_4" > -0.572215) AND (t."X_9" > -0.480098)) THEN 24 ELSE NULL END AS "Leaf_24"
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
    SELECT 0 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.529412 AS "P_0", 0.470588 AS "P_1", 0 AS "D", 0.529412 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.384615 AS "P_0", 0.615385 AS "P_1", 1 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.444444 AS "P_0", 0.555556 AS "P_1", 1 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.148148 AS "P_0", 0.851852 AS "P_1", 1 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" > -0.235577)) THEN 4 ELSE NULL END AS "Leaf_4",
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" <= -0.235577) AND (t."X_8" > -0.384836)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" <= -0.235577) AND (t."X_8" <= -0.384836) AND (t."X_6" > -1.070237)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" <= -0.235577) AND (t."X_8" <= -0.384836) AND (t."X_6" <= -1.070237) AND (t."X_9" <= -0.203241)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" <= -0.235577) AND (t."X_8" <= -0.384836) AND (t."X_6" <= -1.070237) AND (t."X_9" > -0.203241)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_5" > 0.347646) AND (t."X_6" <= 1.044097)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" > 0.347646) AND (t."X_6" > 1.044097) AND (t."X_5" <= 1.101737)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" > 0.347646) AND (t."X_6" > 1.044097) AND (t."X_5" > 1.101737)) THEN 14 ELSE NULL END AS "Leaf_14"
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
    SELECT 0 AS nid,  0.578125 AS "P_0", 0.421875 AS "P_1", 0 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.921053 AS "P_0", 0.078947 AS "P_1", 0 AS "D", 0.921053 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" <= -0.274754) AND (t."X_9" <= -0.160288) AND (t."X_8" > 0.911954)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_0" <= -0.274754) AND (t."X_9" <= -0.160288) AND (t."X_8" <= 0.911954) AND (t."X_9" <= -1.008315)) THEN 7 ELSE NULL END AS "Leaf_7",
      CASE WHEN((t."X_0" <= -0.274754) AND (t."X_9" <= -0.160288) AND (t."X_8" <= 0.911954) AND (t."X_9" > -1.008315)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_0" <= -0.274754) AND (t."X_9" > -0.160288) AND (t."X_9" <= 2.364494)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_0" <= -0.274754) AND (t."X_9" > -0.160288) AND (t."X_9" > 2.364494)) THEN 10 ELSE NULL END AS "Leaf_10",
      CASE WHEN((t."X_0" > -0.274754) AND (t."X_1" <= -0.970487)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_0" > -0.274754) AND (t."X_1" > -0.970487) AND (t."X_9" <= -1.445841)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_0" > -0.274754) AND (t."X_1" > -0.970487) AND (t."X_9" > -1.445841) AND (t."X_7" <= 0.208495)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_0" > -0.274754) AND (t."X_1" > -0.970487) AND (t."X_9" > -1.445841) AND (t."X_7" > 0.208495) AND (t."X_1" > 0.008317)) THEN 18 ELSE NULL END AS "Leaf_18",
      CASE WHEN((t."X_0" > -0.274754) AND (t."X_1" > -0.970487) AND (t."X_9" > -1.445841) AND (t."X_7" > 0.208495) AND (t."X_1" <= 0.008317) AND (t."X_9" <= 0.192186)) THEN 19 ELSE NULL END AS "Leaf_19",
      CASE WHEN((t."X_0" > -0.274754) AND (t."X_1" > -0.970487) AND (t."X_9" > -1.445841) AND (t."X_7" > 0.208495) AND (t."X_1" <= 0.008317) AND (t."X_9" > 0.192186)) THEN 20 ELSE NULL END AS "Leaf_20"
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
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.303030 AS "P_0", 0.696970 AS "P_1", 1 AS "D", 0.696970 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.709677 AS "P_0", 0.290323 AS "P_1", 0 AS "D", 0.709677 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.095238 AS "P_0", 0.904762 AS "P_1", 1 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.814815 AS "P_0", 0.185185 AS "P_1", 0 AS "D", 0.814815 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.880000 AS "P_0", 0.120000 AS "P_1", 0 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.785714 AS "P_0", 0.214286 AS "P_1", 0 AS "D", 0.785714 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    "model_input" AS t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= -0.493245) AND (t."X_7" <= 0.742464)) THEN 3 ELSE NULL END AS "Leaf_3",
      CASE WHEN((t."X_5" <= -0.493245) AND (t."X_7" > 0.742464) AND (t."X_7" <= 1.038919)) THEN 5 ELSE NULL END AS "Leaf_5",
      CASE WHEN((t."X_5" <= -0.493245) AND (t."X_7" > 0.742464) AND (t."X_7" > 1.038919)) THEN 6 ELSE NULL END AS "Leaf_6",
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_5" > 0.363523)) THEN 8 ELSE NULL END AS "Leaf_8",
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_5" <= 0.363523) AND (t."X_2" <= -0.320730)) THEN 9 ELSE NULL END AS "Leaf_9",
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_5" <= 0.363523) AND (t."X_2" > -0.320730) AND (t."X_9" <= -0.531053)) THEN 11 ELSE NULL END AS "Leaf_11",
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_5" <= 0.363523) AND (t."X_2" > -0.320730) AND (t."X_9" > -0.531053) AND (t."X_2" <= 0.167917)) THEN 13 ELSE NULL END AS "Leaf_13",
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_5" <= 0.363523) AND (t."X_2" > -0.320730) AND (t."X_9" > -0.531053) AND (t."X_2" > 0.167917) AND (t."X_9" <= 0.548812)) THEN 15 ELSE NULL END AS "Leaf_15",
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_5" <= 0.363523) AND (t."X_2" > -0.320730) AND (t."X_9" > -0.531053) AND (t."X_2" > 0.167917) AND (t."X_9" > 0.548812)) THEN 16 ELSE NULL END AS "Leaf_16"
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
    SELECT 0 AS nid,  0.375000 AS "P_0", 0.625000 AS "P_1", 1 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.095238 AS "P_0", 0.904762 AS "P_1", 1 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.222222 AS "P_0", 0.777778 AS "P_1", 1 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
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
    MAX( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1" ) AS "Max_Score"
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