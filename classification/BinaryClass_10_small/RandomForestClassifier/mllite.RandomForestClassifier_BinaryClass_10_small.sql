WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_3", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_2" <= -0.433816)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_2" > -0.433816) AND (t."X_9" > 1.311310) AND (t."X_9" <= 1.823854)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_2" > -0.433816) AND (t."X_9" > 1.311310) AND (t."X_9" > 1.823854)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_5" <= -0.493245) AND (t."X_7" <= 0.717654)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_5" <= -0.493245) AND (t."X_7" > 0.717654) AND (t."X_2" <= -0.603103)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_5" <= -0.493245) AND (t."X_7" > 0.717654) AND (t."X_2" > -0.603103)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_2" > -0.433816) AND (t."X_9" <= 1.311310) AND (t."X_2" <= 0.067778)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_2" > -0.433816) AND (t."X_9" <= 1.311310) AND (t."X_2" > 0.067778) AND (t."X_7" > 1.321119)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_2" > -0.433816) AND (t."X_9" <= 1.311310) AND (t."X_2" > 0.067778) AND (t."X_7" <= 1.321119) AND (t."X_4" <= 0.890532)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_2" > -0.433816) AND (t."X_9" <= 1.311310) AND (t."X_2" > 0.067778) AND (t."X_7" <= 1.321119) AND (t."X_4" > 0.890532)) THEN 18 ELSE NULL END AS Leaf_18
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_22", t1."Leaf_25", t1."Leaf_26", t1."Leaf_27", t1."Leaf_29", t1."Leaf_30" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" <= 0.445245) AND (t."X_8" > -0.138706)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_8" <= 0.445245) AND (t."X_8" <= -0.138706) AND (t."X_8" > -0.312352)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_8" <= 0.445245) AND (t."X_8" <= -0.138706) AND (t."X_8" <= -0.312352) AND (t."X_7" > 0.906276)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_8" <= 0.445245) AND (t."X_8" <= -0.138706) AND (t."X_8" <= -0.312352) AND (t."X_7" <= 0.906276) AND (t."X_4" <= 0.801624)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_8" <= 0.445245) AND (t."X_8" <= -0.138706) AND (t."X_8" <= -0.312352) AND (t."X_7" <= 0.906276) AND (t."X_4" > 0.801624) AND (t."X_7" <= -0.408530)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_8" <= 0.445245) AND (t."X_8" <= -0.138706) AND (t."X_8" <= -0.312352) AND (t."X_7" <= 0.906276) AND (t."X_4" > 0.801624) AND (t."X_7" > -0.408530) AND (t."X_9" <= -0.361238)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_8" <= 0.445245) AND (t."X_8" <= -0.138706) AND (t."X_8" <= -0.312352) AND (t."X_7" <= 0.906276) AND (t."X_4" > 0.801624) AND (t."X_7" > -0.408530) AND (t."X_9" > -0.361238)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_8" > 0.445245) AND (t."X_9" <= -1.020005) AND (t."X_7" <= -0.364941)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_8" > 0.445245) AND (t."X_9" <= -1.020005) AND (t."X_7" > -0.364941)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_8" > 0.445245) AND (t."X_9" > -1.020005) AND (t."X_4" > 0.890532)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_8" > 0.445245) AND (t."X_9" > -1.020005) AND (t."X_4" <= 0.890532) AND (t."X_4" > 0.252610)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_8" > 0.445245) AND (t."X_9" > -1.020005) AND (t."X_4" <= 0.890532) AND (t."X_4" <= 0.252610) AND (t."X_8" > 1.522624) AND (t."X_8" <= 1.648737)) THEN 25 ELSE NULL END AS Leaf_25,
      CASE WHEN((t."X_8" > 0.445245) AND (t."X_9" > -1.020005) AND (t."X_4" <= 0.890532) AND (t."X_4" <= 0.252610) AND (t."X_8" > 1.522624) AND (t."X_8" > 1.648737)) THEN 26 ELSE NULL END AS Leaf_26,
      CASE WHEN((t."X_8" > 0.445245) AND (t."X_9" > -1.020005) AND (t."X_4" <= 0.890532) AND (t."X_4" <= 0.252610) AND (t."X_8" <= 1.522624) AND (t."X_4" <= 0.019128)) THEN 27 ELSE NULL END AS Leaf_27,
      CASE WHEN((t."X_8" > 0.445245) AND (t."X_9" > -1.020005) AND (t."X_4" <= 0.890532) AND (t."X_4" <= 0.252610) AND (t."X_8" <= 1.522624) AND (t."X_4" > 0.019128) AND (t."X_4" <= 0.181013)) THEN 29 ELSE NULL END AS Leaf_29,
      CASE WHEN((t."X_8" > 0.445245) AND (t."X_9" > -1.020005) AND (t."X_4" <= 0.890532) AND (t."X_4" <= 0.252610) AND (t."X_8" <= 1.522624) AND (t."X_4" > 0.019128) AND (t."X_4" > 0.181013)) THEN 30 ELSE NULL END AS Leaf_30
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
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.148148 AS "P_0", 0.851852 AS "P_1", 1 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 25 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 26 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 27 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 28 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 29 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 30 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" > -0.235577)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" <= -0.235577) AND (t."X_8" > -0.384836)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" <= -0.235577) AND (t."X_8" <= -0.384836) AND (t."X_6" > -1.070237)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" <= -0.235577) AND (t."X_8" <= -0.384836) AND (t."X_6" <= -1.070237) AND (t."X_9" <= -0.203241)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" <= -0.235577) AND (t."X_8" <= -0.384836) AND (t."X_6" <= -1.070237) AND (t."X_9" > -0.203241)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_5" > 0.347646) AND (t."X_6" <= 1.044097)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_5" > 0.347646) AND (t."X_6" > 1.044097) AND (t."X_5" <= 1.101737)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_5" > 0.347646) AND (t."X_6" > 1.044097) AND (t."X_5" > 1.101737)) THEN 14 ELSE NULL END AS Leaf_14
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
    COALESCE( t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" <= -0.274754) AND (t."X_9" <= -0.160288) AND (t."X_8" > 0.911954)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_0" <= -0.274754) AND (t."X_9" <= -0.160288) AND (t."X_8" <= 0.911954) AND (t."X_9" <= -1.008315)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_0" <= -0.274754) AND (t."X_9" <= -0.160288) AND (t."X_8" <= 0.911954) AND (t."X_9" > -1.008315)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_0" <= -0.274754) AND (t."X_9" > -0.160288) AND (t."X_9" <= 2.364494)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_0" <= -0.274754) AND (t."X_9" > -0.160288) AND (t."X_9" > 2.364494)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_0" > -0.274754) AND (t."X_1" <= -0.970487)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_0" > -0.274754) AND (t."X_1" > -0.970487) AND (t."X_9" <= -1.445841)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_0" > -0.274754) AND (t."X_1" > -0.970487) AND (t."X_9" > -1.445841) AND (t."X_7" <= 0.208495)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_0" > -0.274754) AND (t."X_1" > -0.970487) AND (t."X_9" > -1.445841) AND (t."X_7" > 0.208495) AND (t."X_1" > 0.008317)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_0" > -0.274754) AND (t."X_1" > -0.970487) AND (t."X_9" > -1.445841) AND (t."X_7" > 0.208495) AND (t."X_1" <= 0.008317) AND (t."X_9" > 0.192186)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_0" > -0.274754) AND (t."X_1" > -0.970487) AND (t."X_9" > -1.445841) AND (t."X_7" > 0.208495) AND (t."X_1" <= 0.008317) AND (t."X_9" <= 0.192186) AND (t."X_1" <= -0.450475)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_0" > -0.274754) AND (t."X_1" > -0.970487) AND (t."X_9" > -1.445841) AND (t."X_7" > 0.208495) AND (t."X_1" <= 0.008317) AND (t."X_9" <= 0.192186) AND (t."X_1" > -0.450475)) THEN 22 ELSE NULL END AS Leaf_22
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
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= -0.493245) AND (t."X_7" <= 0.742464)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_5" <= -0.493245) AND (t."X_7" > 0.742464) AND (t."X_7" <= 1.038919)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_5" <= -0.493245) AND (t."X_7" > 0.742464) AND (t."X_7" > 1.038919)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_5" > 0.363523)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_5" <= 0.363523) AND (t."X_2" <= -0.320730)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_5" <= 0.363523) AND (t."X_2" > -0.320730) AND (t."X_9" <= -0.531053)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_5" <= 0.363523) AND (t."X_2" > -0.320730) AND (t."X_9" > -0.531053) AND (t."X_2" <= 0.167917)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_5" <= 0.363523) AND (t."X_2" > -0.320730) AND (t."X_9" > -0.531053) AND (t."X_2" > 0.167917) AND (t."X_9" <= 0.548812)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_5" > -0.493245) AND (t."X_5" <= 0.363523) AND (t."X_2" > -0.320730) AND (t."X_9" > -0.531053) AND (t."X_2" > 0.167917) AND (t."X_9" > 0.548812)) THEN 16 ELSE NULL END AS Leaf_16
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
"DT_node_lookup_5" AS 
 (SELECT
    t."index" AS "index",
    COALESCE( t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" > 1.296412) AND (t."X_3" <= -0.197549)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" > 1.296412) AND (t."X_3" > -0.197549) AND (t."X_9" <= 0.564639)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" > 1.296412) AND (t."X_3" > -0.197549) AND (t."X_9" > 0.564639)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_5" > 0.347646) AND (t."X_3" > -1.171811)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_5" > 0.347646) AND (t."X_3" <= -1.171811) AND (t."X_3" <= -1.402666)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_5" > 0.347646) AND (t."X_3" <= -1.171811) AND (t."X_3" > -1.402666)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" <= 1.296412) AND (t."X_7" > 1.112133) AND (t."X_3" <= -0.840488)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" <= 1.296412) AND (t."X_7" > 1.112133) AND (t."X_3" > -0.840488)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" <= 1.296412) AND (t."X_7" <= 1.112133) AND (t."X_8" <= 0.455929)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" <= 1.296412) AND (t."X_7" <= 1.112133) AND (t."X_8" > 0.455929) AND (t."X_9" <= -0.480098)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_8" <= 1.296412) AND (t."X_7" <= 1.112133) AND (t."X_8" > 0.455929) AND (t."X_9" > -0.480098)) THEN 20 ELSE NULL END AS Leaf_20
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.515625 AS "P_0", 0.484375 AS "P_1", 0 AS "D", 0.515625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.861111 AS "P_0", 0.138889 AS "P_1", 0 AS "D", 0.861111 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.071429 AS "P_0", 0.928571 AS "P_1", 1 AS "D", 0.928571 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.962963 AS "P_0", 0.037037 AS "P_1", 0 AS "D", 0.962963 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_5" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_20", t1."Leaf_21", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= -0.380758) AND (t."X_1" <= -1.626037)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_2" <= -0.380758) AND (t."X_1" > -1.626037)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_9" <= -0.067733) AND (t."X_8" <= -0.687757) AND (t."X_9" <= -0.660823)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_9" <= -0.067733) AND (t."X_8" <= -0.687757) AND (t."X_9" > -0.660823)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_9" <= -0.067733) AND (t."X_8" > -0.687757) AND (t."X_7" > 1.321119)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_9" <= -0.067733) AND (t."X_8" > -0.687757) AND (t."X_7" <= 1.321119) AND (t."X_1" > 0.814068)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_9" > -0.067733) AND (t."X_1" <= 0.945252)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_9" > -0.067733) AND (t."X_1" > 0.945252) AND (t."X_7" <= -0.021824)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_9" > -0.067733) AND (t."X_1" > 0.945252) AND (t."X_7" > -0.021824)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_9" <= -0.067733) AND (t."X_8" > -0.687757) AND (t."X_7" <= 1.321119) AND (t."X_1" <= 0.814068) AND (t."X_7" > -0.504963)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_9" <= -0.067733) AND (t."X_8" > -0.687757) AND (t."X_7" <= 1.321119) AND (t."X_1" <= 0.814068) AND (t."X_7" <= -0.504963) AND (t."X_1" <= -0.727200)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_9" <= -0.067733) AND (t."X_8" > -0.687757) AND (t."X_7" <= 1.321119) AND (t."X_1" <= 0.814068) AND (t."X_7" <= -0.504963) AND (t."X_1" > -0.727200) AND (t."X_9" <= -1.191230)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_2" > -0.380758) AND (t."X_9" <= -0.067733) AND (t."X_8" > -0.687757) AND (t."X_7" <= 1.321119) AND (t."X_1" <= 0.814068) AND (t."X_7" <= -0.504963) AND (t."X_1" > -0.727200) AND (t."X_9" > -1.191230)) THEN 24 ELSE NULL END AS Leaf_24
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.296875 AS "P_0", 0.703125 AS "P_1", 1 AS "D", 0.703125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.169811 AS "P_0", 0.830189 AS "P_1", 1 AS "D", 0.830189 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.296296 AS "P_0", 0.703704 AS "P_1", 1 AS "D", 0.703704 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.038462 AS "P_0", 0.961538 AS "P_1", 1 AS "D", 0.961538 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.150000 AS "P_0", 0.850000 AS "P_1", 1 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.105263 AS "P_0", 0.894737 AS "P_1", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.055556 AS "P_0", 0.944444 AS "P_1", 1 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_6" AS 
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
    COALESCE( t1."Leaf_2", t1."Leaf_5", t1."Leaf_6", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" > 0.711948)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_3" <= 0.711948) AND (t."X_8" > 0.623693) AND (t."X_9" <= -1.135798)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_3" <= 0.711948) AND (t."X_8" > 0.623693) AND (t."X_9" > -1.135798)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_3" <= 0.711948) AND (t."X_8" <= 0.623693) AND (t."X_2" <= 0.433705) AND (t."X_3" <= 0.346540) AND (t."X_3" <= -0.804553)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_3" <= 0.711948) AND (t."X_8" <= 0.623693) AND (t."X_2" <= 0.433705) AND (t."X_3" <= 0.346540) AND (t."X_3" > -0.804553)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_3" <= 0.711948) AND (t."X_8" <= 0.623693) AND (t."X_2" > 0.433705) AND (t."X_8" <= 0.314546)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_3" <= 0.711948) AND (t."X_8" <= 0.623693) AND (t."X_2" > 0.433705) AND (t."X_8" > 0.314546)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_3" <= 0.711948) AND (t."X_8" <= 0.623693) AND (t."X_2" <= 0.433705) AND (t."X_3" > 0.346540) AND (t."X_8" > 0.029138)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_3" <= 0.711948) AND (t."X_8" <= 0.623693) AND (t."X_2" <= 0.433705) AND (t."X_3" > 0.346540) AND (t."X_8" <= 0.029138) AND (t."X_0" <= -1.258552)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_3" <= 0.711948) AND (t."X_8" <= 0.623693) AND (t."X_2" <= 0.433705) AND (t."X_3" > 0.346540) AND (t."X_8" <= 0.029138) AND (t."X_0" > -1.258552)) THEN 18 ELSE NULL END AS Leaf_18
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.406250 AS "P_0", 0.593750 AS "P_1", 1 AS "D", 0.593750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.269231 AS "P_0", 0.730769 AS "P_1", 1 AS "D", 0.730769 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.361111 AS "P_0", 0.638889 AS "P_1", 1 AS "D", 0.638889 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.521739 AS "P_0", 0.478261 AS "P_1", 0 AS "D", 0.521739 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.076923 AS "P_0", 0.923077 AS "P_1", 1 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.100000 AS "P_0", 0.900000 AS "P_1", 1 AS "D", 0.900000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_7" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_11", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_8" > 0.877607) AND (t."X_7" <= -0.452762)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_8" > 0.877607) AND (t."X_7" > -0.452762) AND (t."X_9" <= 0.564639)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_8" > 0.877607) AND (t."X_7" > -0.452762) AND (t."X_9" > 0.564639)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_8" <= 0.877607) AND (t."X_1" > -0.142386) AND (t."X_7" <= -0.538399)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_8" <= 0.877607) AND (t."X_1" > -0.142386) AND (t."X_7" > -0.538399) AND (t."X_1" <= 0.073879)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_8" <= 0.877607) AND (t."X_1" > -0.142386) AND (t."X_7" > -0.538399) AND (t."X_1" > 0.073879) AND (t."X_9" > -0.922035)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_8" <= 0.877607) AND (t."X_1" > -0.142386) AND (t."X_7" > -0.538399) AND (t."X_1" > 0.073879) AND (t."X_9" <= -0.922035) AND (t."X_9" <= -1.195813)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_8" <= 0.877607) AND (t."X_1" > -0.142386) AND (t."X_7" > -0.538399) AND (t."X_1" > 0.073879) AND (t."X_9" <= -0.922035) AND (t."X_9" > -1.195813)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_8" <= 0.877607) AND (t."X_1" <= -0.142386) AND (t."X_9" <= -1.902730)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_8" <= 0.877607) AND (t."X_1" <= -0.142386) AND (t."X_9" > -1.902730) AND (t."X_1" > -1.033739)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_8" <= 0.877607) AND (t."X_1" <= -0.142386) AND (t."X_9" > -1.902730) AND (t."X_1" <= -1.033739) AND (t."X_1" <= -1.921429)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_8" <= 0.877607) AND (t."X_1" <= -0.142386) AND (t."X_9" > -1.902730) AND (t."X_1" <= -1.033739) AND (t."X_1" > -1.921429)) THEN 22 ELSE NULL END AS Leaf_22
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.562500 AS "P_0", 0.437500 AS "P_1", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.693878 AS "P_0", 0.306122 AS "P_1", 0 AS "D", 0.693878 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.840000 AS "P_0", 0.160000 AS "P_1", 0 AS "D", 0.840000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.541667 AS "P_0", 0.458333 AS "P_1", 0 AS "D", 0.541667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.650000 AS "P_0", 0.350000 AS "P_1", 0 AS "D", 0.650000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.812500 AS "P_0", 0.187500 AS "P_1", 0 AS "D", 0.812500 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_8" AS 
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
    COALESCE( t1."Leaf_5", t1."Leaf_6", t1."Leaf_8", t1."Leaf_9", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" > -0.096180) AND (t."X_7" > 0.976585) AND (t."X_8" <= 0.684728)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_3" > -0.096180) AND (t."X_7" > 0.976585) AND (t."X_8" > 0.684728)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_3" > -0.096180) AND (t."X_7" <= 0.976585) AND (t."X_7" > 0.346420)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_3" > -0.096180) AND (t."X_7" <= 0.976585) AND (t."X_7" <= 0.346420) AND (t."X_8" <= -0.522067)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_3" > -0.096180) AND (t."X_7" <= 0.976585) AND (t."X_7" <= 0.346420) AND (t."X_8" > -0.522067) AND (t."X_7" > -0.495357)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_3" > -0.096180) AND (t."X_7" <= 0.976585) AND (t."X_7" <= 0.346420) AND (t."X_8" > -0.522067) AND (t."X_7" <= -0.495357) AND (t."X_9" <= 1.285916)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_3" > -0.096180) AND (t."X_7" <= 0.976585) AND (t."X_7" <= 0.346420) AND (t."X_8" > -0.522067) AND (t."X_7" <= -0.495357) AND (t."X_9" > 1.285916)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_3" <= -0.096180) AND (t."X_8" <= 0.530713)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_3" <= -0.096180) AND (t."X_8" > 0.530713) AND (t."X_8" <= 0.757351)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_3" <= -0.096180) AND (t."X_8" > 0.530713) AND (t."X_8" > 0.757351)) THEN 18 ELSE NULL END AS Leaf_18
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.421875 AS "P_0", 0.578125 AS "P_1", 1 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.741935 AS "P_0", 0.258065 AS "P_1", 0 AS "D", 0.741935 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.300000 AS "P_0", 0.700000 AS "P_1", 1 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_9" AS 
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
    COALESCE( t1."Leaf_2", t1."Leaf_5", t1."Leaf_8", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_7" > 1.306372)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_7" <= 1.306372) AND (t."X_9" > -0.688068) AND (t."X_8" <= -0.653294)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_7" <= 1.306372) AND (t."X_9" > -0.688068) AND (t."X_8" > -0.653294) AND (t."X_0" > 0.915129)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_7" <= 1.306372) AND (t."X_9" > -0.688068) AND (t."X_8" > -0.653294) AND (t."X_0" <= 0.915129) AND (t."X_7" > 0.346420) AND (t."X_8" > 0.685429)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_7" <= 1.306372) AND (t."X_9" > -0.688068) AND (t."X_8" > -0.653294) AND (t."X_0" <= 0.915129) AND (t."X_7" > 0.346420) AND (t."X_8" <= 0.685429) AND (t."X_3" <= 1.172519)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_7" <= 1.306372) AND (t."X_9" > -0.688068) AND (t."X_8" > -0.653294) AND (t."X_0" <= 0.915129) AND (t."X_7" > 0.346420) AND (t."X_8" <= 0.685429) AND (t."X_3" > 1.172519)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_7" <= 1.306372) AND (t."X_9" > -0.688068) AND (t."X_8" > -0.653294) AND (t."X_0" <= 0.915129) AND (t."X_7" <= 0.346420) AND (t."X_3" <= 0.799840)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_7" <= 1.306372) AND (t."X_9" > -0.688068) AND (t."X_8" > -0.653294) AND (t."X_0" <= 0.915129) AND (t."X_7" <= 0.346420) AND (t."X_3" > 0.799840)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_7" <= 1.306372) AND (t."X_9" <= -0.688068) AND (t."X_3" <= -1.056623)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_7" <= 1.306372) AND (t."X_9" <= -0.688068) AND (t."X_3" > -1.056623) AND (t."X_8" <= -0.973078)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_7" <= 1.306372) AND (t."X_9" <= -0.688068) AND (t."X_3" > -1.056623) AND (t."X_8" > -0.973078) AND (t."X_0" > 1.658386)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_7" <= 1.306372) AND (t."X_9" <= -0.688068) AND (t."X_3" > -1.056623) AND (t."X_8" > -0.973078) AND (t."X_0" <= 1.658386) AND (t."X_7" <= -1.464459)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_7" <= 1.306372) AND (t."X_9" <= -0.688068) AND (t."X_3" > -1.056623) AND (t."X_8" > -0.973078) AND (t."X_0" <= 1.658386) AND (t."X_7" > -1.464459)) THEN 24 ELSE NULL END AS Leaf_24
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.406250 AS "P_0", 0.593750 AS "P_1", 1 AS "D", 0.593750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.352941 AS "P_0", 0.647059 AS "P_1", 1 AS "D", 0.647059 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.241379 AS "P_0", 0.758621 AS "P_1", 1 AS "D", 0.758621 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.185185 AS "P_0", 0.814815 AS "P_1", 1 AS "D", 0.814815 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.052632 AS "P_0", 0.947368 AS "P_1", 1 AS "D", 0.947368 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.823529 AS "P_0", 0.176471 AS "P_1", 0 AS "D", 0.823529 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.933333 AS "P_0", 0.066667 AS "P_1", 0 AS "D", 0.933333 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_10" AS 
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
    COALESCE( t1."Leaf_2", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.347646)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_1" <= -1.033739) AND (t."X_9" > 0.990640)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_1" <= -1.033739) AND (t."X_9" <= 0.990640) AND (t."X_1" <= -2.327893)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_1" <= -1.033739) AND (t."X_9" <= 0.990640) AND (t."X_1" > -2.327893)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_1" > -1.033739) AND (t."X_1" <= -0.134070)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_1" > -1.033739) AND (t."X_1" > -0.134070) AND (t."X_9" <= -0.590869)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_1" > -1.033739) AND (t."X_1" > -0.134070) AND (t."X_9" > -0.590869) AND (t."X_1" <= 0.509624)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_5" <= 0.347646) AND (t."X_1" > -1.033739) AND (t."X_1" > -0.134070) AND (t."X_9" > -0.590869) AND (t."X_1" > 0.509624)) THEN 14 ELSE NULL END AS Leaf_14
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.546875 AS "P_0", 0.453125 AS "P_1", 0 AS "D", 0.546875 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.853659 AS "P_0", 0.146341 AS "P_1", 0 AS "D", 0.853659 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.764706 AS "P_0", 0.235294 AS "P_1", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_11" AS 
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
    COALESCE( t1."Leaf_2", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.363523)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_5" <= 0.363523) AND (t."X_8" > 0.897453) AND (t."X_9" <= -0.639843)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_5" <= 0.363523) AND (t."X_8" > 0.897453) AND (t."X_9" > -0.639843)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_5" <= 0.363523) AND (t."X_8" <= 0.897453) AND (t."X_5" > 0.187560) AND (t."X_9" <= -0.160644)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_5" <= 0.363523) AND (t."X_8" <= 0.897453) AND (t."X_5" > 0.187560) AND (t."X_9" > -0.160644)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_5" <= 0.363523) AND (t."X_8" <= 0.897453) AND (t."X_5" <= 0.187560) AND (t."X_0" > -0.275907)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_5" <= 0.363523) AND (t."X_8" <= 0.897453) AND (t."X_5" <= 0.187560) AND (t."X_0" <= -0.275907) AND (t."X_0" <= -0.640009)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_5" <= 0.363523) AND (t."X_8" <= 0.897453) AND (t."X_5" <= 0.187560) AND (t."X_0" <= -0.275907) AND (t."X_0" > -0.640009)) THEN 14 ELSE NULL END AS Leaf_14
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.625000 AS "P_0", 0.375000 AS "P_1", 0 AS "D", 0.625000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.951219 AS "P_0", 0.048780 AS "P_1", 0 AS "D", 0.951219 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.974359 AS "P_0", 0.025641 AS "P_1", 0 AS "D", 0.974359 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_12" AS 
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 0.042474) AND (t."X_7" > 1.517455)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_6" > 0.042474) AND (t."X_7" <= 1.517455) AND (t."X_9" <= 2.040029)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_6" > 0.042474) AND (t."X_7" <= 1.517455) AND (t."X_9" > 2.040029)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_6" <= 0.042474) AND (t."X_9" <= 0.477732)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_6" <= 0.042474) AND (t."X_9" > 0.477732) AND (t."X_0" <= -0.275907)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_6" <= 0.042474) AND (t."X_9" > 0.477732) AND (t."X_0" > -0.275907)) THEN 10 ELSE NULL END AS Leaf_10
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.925926 AS "P_0", 0.074074 AS "P_1", 0 AS "D", 0.925926 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.189189 AS "P_0", 0.810811 AS "P_1", 1 AS "D", 0.810811 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.117647 AS "P_0", 0.882353 AS "P_1", 1 AS "D", 0.882353 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_13" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_6", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= -0.433816)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_2" > -0.433816) AND (t."X_9" <= -0.067733) AND (t."X_8" > 1.236736)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_2" > -0.433816) AND (t."X_9" <= -0.067733) AND (t."X_8" <= 1.236736) AND (t."X_2" > 0.395830) AND (t."X_8" <= -0.757739)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_2" > -0.433816) AND (t."X_9" <= -0.067733) AND (t."X_8" <= 1.236736) AND (t."X_2" > 0.395830) AND (t."X_8" > -0.757739)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_2" > -0.433816) AND (t."X_9" <= -0.067733) AND (t."X_8" <= 1.236736) AND (t."X_2" <= 0.395830) AND (t."X_9" <= -0.136198)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_2" > -0.433816) AND (t."X_9" <= -0.067733) AND (t."X_8" <= 1.236736) AND (t."X_2" <= 0.395830) AND (t."X_9" > -0.136198)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_2" > -0.433816) AND (t."X_9" > -0.067733) AND (t."X_8" <= -1.770532)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_2" > -0.433816) AND (t."X_9" > -0.067733) AND (t."X_8" > -1.770532) AND (t."X_7" <= 0.413953)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_2" > -0.433816) AND (t."X_9" > -0.067733) AND (t."X_8" > -1.770532) AND (t."X_7" > 0.413953) AND (t."X_0" > 1.435076)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_2" > -0.433816) AND (t."X_9" > -0.067733) AND (t."X_8" > -1.770532) AND (t."X_7" > 0.413953) AND (t."X_0" <= 1.435076) AND (t."X_8" <= 0.684728)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_2" > -0.433816) AND (t."X_9" > -0.067733) AND (t."X_8" > -1.770532) AND (t."X_7" > 0.413953) AND (t."X_0" <= 1.435076) AND (t."X_8" > 0.684728) AND (t."X_2" <= 1.212272)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_2" > -0.433816) AND (t."X_9" > -0.067733) AND (t."X_8" > -1.770532) AND (t."X_7" > 0.413953) AND (t."X_0" <= 1.435076) AND (t."X_8" > 0.684728) AND (t."X_2" > 1.212272)) THEN 22 ELSE NULL END AS Leaf_22
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.562500 AS "P_0", 0.437500 AS "P_1", 0 AS "D", 0.562500 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.377778 AS "P_0", 0.622222 AS "P_1", 1 AS "D", 0.622222 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.560000 AS "P_0", 0.440000 AS "P_1", 0 AS "D", 0.560000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.150000 AS "P_0", 0.850000 AS "P_1", 1 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.105263 AS "P_0", 0.894737 AS "P_1", 1 AS "D", 0.894737 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_14" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_6", t1."Leaf_9", t1."Leaf_11", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" > 0.533987) AND (t."X_0" <= -1.715374)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_2" > 0.533987) AND (t."X_0" > -1.715374)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_2" <= 0.533987) AND (t."X_7" > 1.418993)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_2" <= 0.533987) AND (t."X_7" <= 1.418993) AND (t."X_8" <= 0.675043) AND (t."X_9" <= -1.451332)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_2" <= 0.533987) AND (t."X_7" <= 1.418993) AND (t."X_8" > 0.675043) AND (t."X_9" <= -1.020005)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_2" <= 0.533987) AND (t."X_7" <= 1.418993) AND (t."X_8" > 0.675043) AND (t."X_9" > -1.020005) AND (t."X_9" > 0.564639)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_2" <= 0.533987) AND (t."X_7" <= 1.418993) AND (t."X_8" > 0.675043) AND (t."X_9" > -1.020005) AND (t."X_9" <= 0.564639) AND (t."X_2" <= -0.077560)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_2" <= 0.533987) AND (t."X_7" <= 1.418993) AND (t."X_8" > 0.675043) AND (t."X_9" > -1.020005) AND (t."X_9" <= 0.564639) AND (t."X_2" > -0.077560)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_2" <= 0.533987) AND (t."X_7" <= 1.418993) AND (t."X_8" <= 0.675043) AND (t."X_9" > -1.451332) AND (t."X_9" <= 0.453250)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_2" <= 0.533987) AND (t."X_7" <= 1.418993) AND (t."X_8" <= 0.675043) AND (t."X_9" > -1.451332) AND (t."X_9" > 0.453250) AND (t."X_9" <= 0.927676)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_2" <= 0.533987) AND (t."X_7" <= 1.418993) AND (t."X_8" <= 0.675043) AND (t."X_9" > -1.451332) AND (t."X_9" > 0.453250) AND (t."X_9" > 0.927676)) THEN 20 ELSE NULL END AS Leaf_20
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.531250 AS "P_0", 0.468750 AS "P_1", 0 AS "D", 0.531250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.653061 AS "P_0", 0.346939 AS "P_1", 0 AS "D", 0.653061 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.133333 AS "P_0", 0.866667 AS "P_1", 1 AS "D", 0.866667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.744186 AS "P_0", 0.255814 AS "P_1", 0 AS "D", 0.744186 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.906250 AS "P_0", 0.093750 AS "P_1", 0 AS "D", 0.906250 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.272727 AS "P_0", 0.727273 AS "P_1", 1 AS "D", 0.727273 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.966667 AS "P_0", 0.033333 AS "P_1", 0 AS "D", 0.966667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_15" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_9", t1."Leaf_10", t1."Leaf_12", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_18", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_0" > 0.922560) AND (t."X_9" <= -1.294615)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_0" > 0.922560) AND (t."X_9" > -1.294615)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_0" <= 0.922560) AND (t."X_9" <= -0.136198) AND (t."X_7" <= -0.627744) AND (t."X_8" <= -0.437963)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_0" <= 0.922560) AND (t."X_9" <= -0.136198) AND (t."X_7" <= -0.627744) AND (t."X_8" > -0.437963)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_0" <= 0.922560) AND (t."X_9" <= -0.136198) AND (t."X_7" > -0.627744) AND (t."X_8" > 1.278337)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_0" <= 0.922560) AND (t."X_9" <= -0.136198) AND (t."X_7" > -0.627744) AND (t."X_8" <= 1.278337) AND (t."X_9" <= -1.985154)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_0" <= 0.922560) AND (t."X_9" <= -0.136198) AND (t."X_7" > -0.627744) AND (t."X_8" <= 1.278337) AND (t."X_9" > -1.985154)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_0" <= 0.922560) AND (t."X_9" > -0.136198) AND (t."X_9" > 2.539192)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_0" <= 0.922560) AND (t."X_9" > -0.136198) AND (t."X_9" <= 2.539192) AND (t."X_9" > 0.509049)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_0" <= 0.922560) AND (t."X_9" > -0.136198) AND (t."X_9" <= 2.539192) AND (t."X_9" <= 0.509049) AND (t."X_9" <= 0.307665)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_0" <= 0.922560) AND (t."X_9" > -0.136198) AND (t."X_9" <= 2.539192) AND (t."X_9" <= 0.509049) AND (t."X_9" > 0.307665)) THEN 20 ELSE NULL END AS Leaf_20
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.421875 AS "P_0", 0.578125 AS "P_1", 1 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.326923 AS "P_0", 0.673077 AS "P_1", 1 AS "D", 0.673077 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.518519 AS "P_0", 0.481481 AS "P_1", 0 AS "D", 0.518519 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.120000 AS "P_0", 0.880000 AS "P_1", 1 AS "D", 0.880000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.923077 AS "P_0", 0.076923 AS "P_1", 0 AS "D", 0.923077 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_16" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_6", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= -0.649609)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_5" > -0.649609) AND (t."X_4" > 0.902887)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_5" > -0.649609) AND (t."X_4" <= 0.902887) AND (t."X_5" > 0.233778)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_5" > -0.649609) AND (t."X_4" <= 0.902887) AND (t."X_5" <= 0.233778) AND (t."X_4" <= -0.115806)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_5" > -0.649609) AND (t."X_4" <= 0.902887) AND (t."X_5" <= 0.233778) AND (t."X_4" > -0.115806) AND (t."X_4" <= 0.252610)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_5" > -0.649609) AND (t."X_4" <= 0.902887) AND (t."X_5" <= 0.233778) AND (t."X_4" > -0.115806) AND (t."X_4" > 0.252610)) THEN 10 ELSE NULL END AS Leaf_10
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.484375 AS "P_0", 0.515625 AS "P_1", 1 AS "D", 0.515625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.131579 AS "P_0", 0.868421 AS "P_1", 1 AS "D", 0.868421 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.217391 AS "P_0", 0.782609 AS "P_1", 1 AS "D", 0.782609 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_17" AS 
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.870708)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_5" <= 0.870708) AND (t."X_9" <= -0.701672)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_5" <= 0.870708) AND (t."X_9" > -0.701672) AND (t."X_2" <= -0.214136) AND (t."X_7" <= -0.414398)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_5" <= 0.870708) AND (t."X_9" > -0.701672) AND (t."X_2" > -0.214136) AND (t."X_5" <= -0.493245)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_5" <= 0.870708) AND (t."X_9" > -0.701672) AND (t."X_2" > -0.214136) AND (t."X_5" > -0.493245) AND (t."X_5" <= -0.185166)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_5" <= 0.870708) AND (t."X_9" > -0.701672) AND (t."X_2" > -0.214136) AND (t."X_5" > -0.493245) AND (t."X_5" > -0.185166)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_5" <= 0.870708) AND (t."X_9" > -0.701672) AND (t."X_2" <= -0.214136) AND (t."X_7" > -0.414398) AND (t."X_9" > -0.209050)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_5" <= 0.870708) AND (t."X_9" > -0.701672) AND (t."X_2" <= -0.214136) AND (t."X_7" > -0.414398) AND (t."X_9" <= -0.209050) AND (t."X_9" <= -0.542479)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_5" <= 0.870708) AND (t."X_9" > -0.701672) AND (t."X_2" <= -0.214136) AND (t."X_7" > -0.414398) AND (t."X_9" <= -0.209050) AND (t."X_9" > -0.542479)) THEN 16 ELSE NULL END AS Leaf_16
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.578125 AS "P_0", 0.421875 AS "P_1", 0 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.804348 AS "P_0", 0.195652 AS "P_1", 0 AS "D", 0.804348 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.709677 AS "P_0", 0.290323 AS "P_1", 0 AS "D", 0.709677 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.833333 AS "P_0", 0.166667 AS "P_1", 0 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.166667 AS "P_0", 0.833333 AS "P_1", 1 AS "D", 0.833333 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_18" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= -0.819651)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_2" > -0.819651) AND (t."X_2" > 0.699465)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_2" > -0.819651) AND (t."X_2" <= 0.699465) AND (t."X_2" <= -0.083366) AND (t."X_7" > 1.170824)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_2" > -0.819651) AND (t."X_2" <= 0.699465) AND (t."X_2" <= -0.083366) AND (t."X_7" <= 1.170824) AND (t."X_2" > -0.484289)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_2" > -0.819651) AND (t."X_2" <= 0.699465) AND (t."X_2" <= -0.083366) AND (t."X_7" <= 1.170824) AND (t."X_2" <= -0.484289) AND (t."X_8" <= -0.726965)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_2" > -0.819651) AND (t."X_2" <= 0.699465) AND (t."X_2" <= -0.083366) AND (t."X_7" <= 1.170824) AND (t."X_2" <= -0.484289) AND (t."X_8" > -0.726965)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_2" > -0.819651) AND (t."X_2" <= 0.699465) AND (t."X_2" > -0.083366) AND (t."X_9" <= -0.622449)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_2" > -0.819651) AND (t."X_2" <= 0.699465) AND (t."X_2" > -0.083366) AND (t."X_9" > -0.622449) AND (t."X_9" <= -0.228067)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_2" > -0.819651) AND (t."X_2" <= 0.699465) AND (t."X_2" > -0.083366) AND (t."X_9" > -0.622449) AND (t."X_9" > -0.228067) AND (t."X_2" > 0.213584)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_2" > -0.819651) AND (t."X_2" <= 0.699465) AND (t."X_2" > -0.083366) AND (t."X_9" > -0.622449) AND (t."X_9" > -0.228067) AND (t."X_2" <= 0.213584) AND (t."X_7" <= -0.032171)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_2" > -0.819651) AND (t."X_2" <= 0.699465) AND (t."X_2" > -0.083366) AND (t."X_9" > -0.622449) AND (t."X_9" > -0.228067) AND (t."X_2" <= 0.213584) AND (t."X_7" > -0.032171) AND (t."X_8" <= 0.212386)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_2" > -0.819651) AND (t."X_2" <= 0.699465) AND (t."X_2" > -0.083366) AND (t."X_9" > -0.622449) AND (t."X_9" > -0.228067) AND (t."X_2" <= 0.213584) AND (t."X_7" > -0.032171) AND (t."X_8" > 0.212386)) THEN 22 ELSE NULL END AS Leaf_22
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.406250 AS "P_0", 0.593750 AS "P_1", 1 AS "D", 0.593750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.431818 AS "P_0", 0.568182 AS "P_1", 1 AS "D", 0.568182 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.086957 AS "P_0", 0.913043 AS "P_1", 1 AS "D", 0.913043 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.692308 AS "P_0", 0.307692 AS "P_1", 0 AS "D", 0.692308 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.818182 AS "P_0", 0.181818 AS "P_1", 0 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_19" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_6", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_17", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_9" > 0.590601) AND (t."X_9" <= 1.311310)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_9" > 0.590601) AND (t."X_9" > 1.311310)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_9" <= 0.590601) AND (t."X_4" > 1.075938)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_9" <= 0.590601) AND (t."X_4" <= 1.075938) AND (t."X_7" > 0.728613)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_9" <= 0.590601) AND (t."X_4" <= 1.075938) AND (t."X_7" <= 0.728613) AND (t."X_4" > 0.899704) AND (t."X_9" <= -0.346218)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_9" <= 0.590601) AND (t."X_4" <= 1.075938) AND (t."X_7" <= 0.728613) AND (t."X_4" > 0.899704) AND (t."X_9" > -0.346218)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_9" <= 0.590601) AND (t."X_4" <= 1.075938) AND (t."X_7" <= 0.728613) AND (t."X_4" <= 0.899704) AND (t."X_7" <= -1.561701)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_9" <= 0.590601) AND (t."X_4" <= 1.075938) AND (t."X_7" <= 0.728613) AND (t."X_4" <= 0.899704) AND (t."X_7" > -1.561701) AND (t."X_8" <= 0.876734)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_9" <= 0.590601) AND (t."X_4" <= 1.075938) AND (t."X_7" <= 0.728613) AND (t."X_4" <= 0.899704) AND (t."X_7" > -1.561701) AND (t."X_8" > 0.876734) AND (t."X_9" <= -1.294615)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_9" <= 0.590601) AND (t."X_4" <= 1.075938) AND (t."X_7" <= 0.728613) AND (t."X_4" <= 0.899704) AND (t."X_7" > -1.561701) AND (t."X_8" > 0.876734) AND (t."X_9" > -1.294615) AND (t."X_9" <= -0.742240)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_9" <= 0.590601) AND (t."X_4" <= 1.075938) AND (t."X_7" <= 0.728613) AND (t."X_4" <= 0.899704) AND (t."X_7" > -1.561701) AND (t."X_8" > 0.876734) AND (t."X_9" > -1.294615) AND (t."X_9" > -0.742240) AND (t."X_9" <= 0.112263)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_9" <= 0.590601) AND (t."X_4" <= 1.075938) AND (t."X_7" <= 0.728613) AND (t."X_4" <= 0.899704) AND (t."X_7" > -1.561701) AND (t."X_8" > 0.876734) AND (t."X_9" > -1.294615) AND (t."X_9" > -0.742240) AND (t."X_9" > 0.112263)) THEN 22 ELSE NULL END AS Leaf_22
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.181818 AS "P_0", 0.818182 AS "P_1", 1 AS "D", 0.818182 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.600000 AS "P_0", 0.400000 AS "P_1", 0 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.869565 AS "P_0", 0.130435 AS "P_1", 0 AS "D", 0.869565 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.909091 AS "P_0", 0.090909 AS "P_1", 0 AS "D", 0.909091 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_20" AS 
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
    COALESCE( t1."Leaf_2", t1."Leaf_7", t1."Leaf_9", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_4" > 1.101323)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_4" <= 1.101323) AND (t."X_7" <= 0.433017) AND (t."X_2" <= -0.722014)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_4" <= 1.101323) AND (t."X_7" > 0.433017) AND (t."X_7" <= 0.828977) AND (t."X_0" <= 0.696564)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_4" <= 1.101323) AND (t."X_7" > 0.433017) AND (t."X_7" <= 0.828977) AND (t."X_0" > 0.696564) AND (t."X_9" <= -0.418567)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_4" <= 1.101323) AND (t."X_7" > 0.433017) AND (t."X_7" <= 0.828977) AND (t."X_0" > 0.696564) AND (t."X_9" > -0.418567)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_4" <= 1.101323) AND (t."X_7" > 0.433017) AND (t."X_7" > 0.828977) AND (t."X_8" <= 0.221594)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_4" <= 1.101323) AND (t."X_7" > 0.433017) AND (t."X_7" > 0.828977) AND (t."X_8" > 0.221594) AND (t."X_2" <= -0.142768)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_4" <= 1.101323) AND (t."X_7" > 0.433017) AND (t."X_7" > 0.828977) AND (t."X_8" > 0.221594) AND (t."X_2" > -0.142768)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_4" <= 1.101323) AND (t."X_7" <= 0.433017) AND (t."X_2" > -0.722014) AND (t."X_4" <= 0.960313)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_4" <= 1.101323) AND (t."X_7" <= 0.433017) AND (t."X_2" > -0.722014) AND (t."X_4" > 0.960313) AND (t."X_7" <= -0.814950)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_4" <= 1.101323) AND (t."X_7" <= 0.433017) AND (t."X_2" > -0.722014) AND (t."X_4" > 0.960313) AND (t."X_7" > -0.814950)) THEN 20 ELSE NULL END AS Leaf_20
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.609375 AS "P_0", 0.390625 AS "P_1", 0 AS "D", 0.609375 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.456522 AS "P_0", 0.543478 AS "P_1", 1 AS "D", 0.543478 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.260870 AS "P_0", 0.739130 AS "P_1", 1 AS "D", 0.739130 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.652174 AS "P_0", 0.347826 AS "P_1", 0 AS "D", 0.652174 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.875000 AS "P_0", 0.125000 AS "P_1", 0 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.150000 AS "P_0", 0.850000 AS "P_1", 1 AS "D", 0.850000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_21" AS 
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
    COALESCE( t1."Leaf_4", t1."Leaf_5", t1."Leaf_6", t1."Leaf_9", t1."Leaf_11", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16", t1."Leaf_19", t1."Leaf_20", t1."Leaf_22", t1."Leaf_23", t1."Leaf_24" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_3" > 0.234031) AND (t."X_8" > -0.112902)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_3" > 0.234031) AND (t."X_8" <= -0.112902) AND (t."X_8" <= -0.619290)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_3" > 0.234031) AND (t."X_8" <= -0.112902) AND (t."X_8" > -0.619290)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_3" <= 0.234031) AND (t."X_9" <= -0.341750) AND (t."X_3" <= -1.363765)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_3" <= 0.234031) AND (t."X_9" <= -0.341750) AND (t."X_3" > -1.363765) AND (t."X_8" <= -0.849969)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_3" <= 0.234031) AND (t."X_9" <= -0.341750) AND (t."X_3" > -1.363765) AND (t."X_8" > -0.849969) AND (t."X_7" > -0.596575)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_3" <= 0.234031) AND (t."X_9" <= -0.341750) AND (t."X_3" > -1.363765) AND (t."X_8" > -0.849969) AND (t."X_7" <= -0.596575) AND (t."X_9" <= -1.135798)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_3" <= 0.234031) AND (t."X_9" <= -0.341750) AND (t."X_3" > -1.363765) AND (t."X_8" > -0.849969) AND (t."X_7" <= -0.596575) AND (t."X_9" > -1.135798)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_3" <= 0.234031) AND (t."X_9" > -0.341750) AND (t."X_8" <= -0.519611) AND (t."X_8" <= -0.747525)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_3" <= 0.234031) AND (t."X_9" > -0.341750) AND (t."X_8" <= -0.519611) AND (t."X_8" > -0.747525)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_3" <= 0.234031) AND (t."X_9" > -0.341750) AND (t."X_8" > -0.519611) AND (t."X_3" > -1.196758)) THEN 22 ELSE NULL END AS Leaf_22,
      CASE WHEN((t."X_3" <= 0.234031) AND (t."X_9" > -0.341750) AND (t."X_8" > -0.519611) AND (t."X_3" <= -1.196758) AND (t."X_9" <= 0.799164)) THEN 23 ELSE NULL END AS Leaf_23,
      CASE WHEN((t."X_3" <= 0.234031) AND (t."X_9" > -0.341750) AND (t."X_8" > -0.519611) AND (t."X_3" <= -1.196758) AND (t."X_9" > 0.799164)) THEN 24 ELSE NULL END AS Leaf_24
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.343750 AS "P_0", 0.656250 AS "P_1", 1 AS "D", 0.656250 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.684211 AS "P_0", 0.315789 AS "P_1", 0 AS "D", 0.684211 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.538462 AS "P_0", 0.461538 AS "P_1", 0 AS "D", 0.538462 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.062500 AS "P_0", 0.937500 AS "P_1", 1 AS "D", 0.937500 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.700000 AS "P_0", 0.300000 AS "P_1", 0 AS "D", 0.700000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.777778 AS "P_0", 0.222222 AS "P_1", 0 AS "D", 0.777778 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.034483 AS "P_0", 0.965517 AS "P_1", 1 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 23 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 24 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_22" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_6", t1."Leaf_7", t1."Leaf_8", t1."Leaf_10", t1."Leaf_11", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.283718) AND (t."X_6" <= 1.057696)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_5" > 0.283718) AND (t."X_6" > 1.057696) AND (t."X_9" > 0.799164)) THEN 6 ELSE NULL END AS Leaf_6,
      CASE WHEN((t."X_5" > 0.283718) AND (t."X_6" > 1.057696) AND (t."X_9" <= 0.799164) AND (t."X_5" <= 1.490529)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_5" > 0.283718) AND (t."X_6" > 1.057696) AND (t."X_9" <= 0.799164) AND (t."X_5" > 1.490529)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_5" <= 0.283718) AND (t."X_9" > -0.108564)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_5" <= 0.283718) AND (t."X_9" <= -0.108564) AND (t."X_9" <= -0.701672)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_5" <= 0.283718) AND (t."X_9" <= -0.108564) AND (t."X_9" > -0.701672) AND (t."X_5" > -0.649609)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_5" <= 0.283718) AND (t."X_9" <= -0.108564) AND (t."X_9" > -0.701672) AND (t."X_5" <= -0.649609) AND (t."X_9" <= -0.542479)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_5" <= 0.283718) AND (t."X_9" <= -0.108564) AND (t."X_9" > -0.701672) AND (t."X_5" <= -0.649609) AND (t."X_9" > -0.542479)) THEN 16 ELSE NULL END AS Leaf_16
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.578125 AS "P_0", 0.421875 AS "P_1", 0 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.891892 AS "P_0", 0.108108 AS "P_1", 0 AS "D", 0.891892 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.148148 AS "P_0", 0.851852 AS "P_1", 1 AS "D", 0.851852 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.400000 AS "P_0", 0.600000 AS "P_1", 1 AS "D", 0.600000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.764706 AS "P_0", 0.235294 AS "P_1", 0 AS "D", 0.764706 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_23" AS 
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
    COALESCE( t1."Leaf_2", t1."Leaf_3", t1."Leaf_5", t1."Leaf_6" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" > 0.363523)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_5" <= 0.363523) AND (t."X_5" <= -0.471711)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_5" <= 0.363523) AND (t."X_5" > -0.471711) AND (t."X_5" <= -0.350745)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_5" <= 0.363523) AND (t."X_5" > -0.471711) AND (t."X_5" > -0.350745)) THEN 6 ELSE NULL END AS Leaf_6
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.484375 AS "P_0", 0.515625 AS "P_1", 1 AS "D", 0.515625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.837838 AS "P_0", 0.162162 AS "P_1", 0 AS "D", 0.837838 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_24" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_3", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_13", t1."Leaf_14", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_2" <= -0.376272)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_2" > -0.376272) AND (t."X_8" <= -0.891893)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_2" > -0.376272) AND (t."X_8" > -0.891893) AND (t."X_9" <= -0.739925) AND (t."X_9" <= -1.178823)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_2" > -0.376272) AND (t."X_8" > -0.891893) AND (t."X_9" <= -0.739925) AND (t."X_9" > -1.178823) AND (t."X_8" <= 1.236736)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_2" > -0.376272) AND (t."X_8" > -0.891893) AND (t."X_9" <= -0.739925) AND (t."X_9" > -1.178823) AND (t."X_8" > 1.236736)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_2" > -0.376272) AND (t."X_8" > -0.891893) AND (t."X_9" > -0.739925) AND (t."X_7" > 1.389281) AND (t."X_9" <= 0.969486)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_2" > -0.376272) AND (t."X_8" > -0.891893) AND (t."X_9" > -0.739925) AND (t."X_7" > 1.389281) AND (t."X_9" > 0.969486)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_2" > -0.376272) AND (t."X_8" > -0.891893) AND (t."X_9" > -0.739925) AND (t."X_7" <= 1.389281) AND (t."X_2" > -0.130792)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_2" > -0.376272) AND (t."X_8" > -0.891893) AND (t."X_9" > -0.739925) AND (t."X_7" <= 1.389281) AND (t."X_2" <= -0.130792) AND (t."X_2" <= -0.171310)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_2" > -0.376272) AND (t."X_8" > -0.891893) AND (t."X_9" > -0.739925) AND (t."X_7" <= 1.389281) AND (t."X_2" <= -0.130792) AND (t."X_2" > -0.171310)) THEN 18 ELSE NULL END AS Leaf_18
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.593750 AS "P_0", 0.406250 AS "P_1", 0 AS "D", 0.593750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.434783 AS "P_0", 0.565217 AS "P_1", 1 AS "D", 0.565217 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.257143 AS "P_0", 0.742857 AS "P_1", 1 AS "D", 0.742857 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.115385 AS "P_0", 0.884615 AS "P_1", 1 AS "D", 0.884615 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.857143 AS "P_0", 0.142857 AS "P_1", 0 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.043478 AS "P_0", 0.956522 AS "P_1", 1 AS "D", 0.956522 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_25" AS 
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
    COALESCE( t1."Leaf_2", t1."Leaf_5", t1."Leaf_7", t1."Leaf_8", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_16", t1."Leaf_17", t1."Leaf_18" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > 0.649636)) THEN 2 ELSE NULL END AS Leaf_2,
      CASE WHEN((t."X_6" <= 0.649636) AND (t."X_8" > 0.877607) AND (t."X_9" <= -0.639843)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_6" <= 0.649636) AND (t."X_8" > 0.877607) AND (t."X_9" > -0.639843) AND (t."X_3" <= 0.898534)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_6" <= 0.649636) AND (t."X_8" > 0.877607) AND (t."X_9" > -0.639843) AND (t."X_3" > 0.898534)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_6" <= 0.649636) AND (t."X_8" <= 0.877607) AND (t."X_3" <= -0.906461) AND (t."X_9" <= -0.740200)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_6" <= 0.649636) AND (t."X_8" <= 0.877607) AND (t."X_3" <= -0.906461) AND (t."X_9" > -0.740200)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_6" <= 0.649636) AND (t."X_8" <= 0.877607) AND (t."X_3" > -0.906461) AND (t."X_3" <= 0.353989)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_6" <= 0.649636) AND (t."X_8" <= 0.877607) AND (t."X_3" > -0.906461) AND (t."X_3" > 0.353989) AND (t."X_8" > -0.197418)) THEN 16 ELSE NULL END AS Leaf_16,
      CASE WHEN((t."X_6" <= 0.649636) AND (t."X_8" <= 0.877607) AND (t."X_3" > -0.906461) AND (t."X_3" > 0.353989) AND (t."X_8" <= -0.197418) AND (t."X_6" <= -0.349555)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_6" <= 0.649636) AND (t."X_8" <= 0.877607) AND (t."X_3" > -0.906461) AND (t."X_3" > 0.353989) AND (t."X_8" <= -0.197418) AND (t."X_6" > -0.349555)) THEN 18 ELSE NULL END AS Leaf_18
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.578125 AS "P_0", 0.421875 AS "P_1", 0 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.725490 AS "P_0", 0.274510 AS "P_1", 0 AS "D", 0.725490 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.809524 AS "P_0", 0.190476 AS "P_1", 0 AS "D", 0.809524 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.250000 AS "P_0", 0.750000 AS "P_1", 1 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.868421 AS "P_0", 0.131579 AS "P_1", 0 AS "D", 0.868421 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.761905 AS "P_0", 0.238095 AS "P_1", 0 AS "D", 0.761905 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_26" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_15", t1."Leaf_17", t1."Leaf_18", t1."Leaf_19", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_1" > -0.134070) AND (t."X_0" <= -1.533537)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_1" <= -0.134070) AND (t."X_9" > -0.067733) AND (t."X_9" <= 0.442575)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_1" <= -0.134070) AND (t."X_9" > -0.067733) AND (t."X_9" > 0.442575) AND (t."X_0" <= -0.141114)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_1" <= -0.134070) AND (t."X_9" > -0.067733) AND (t."X_9" > 0.442575) AND (t."X_0" > -0.141114)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_1" <= -0.134070) AND (t."X_9" <= -0.067733) AND (t."X_3" <= -0.824624)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_1" <= -0.134070) AND (t."X_9" <= -0.067733) AND (t."X_3" > -0.824624) AND (t."X_9" <= -1.902730)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_1" <= -0.134070) AND (t."X_9" <= -0.067733) AND (t."X_3" > -0.824624) AND (t."X_9" > -1.902730) AND (t."X_0" <= 0.166295)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_1" <= -0.134070) AND (t."X_9" <= -0.067733) AND (t."X_3" > -0.824624) AND (t."X_9" > -1.902730) AND (t."X_0" > 0.166295) AND (t."X_9" <= -0.950375)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_1" <= -0.134070) AND (t."X_9" <= -0.067733) AND (t."X_3" > -0.824624) AND (t."X_9" > -1.902730) AND (t."X_0" > 0.166295) AND (t."X_9" > -0.950375)) THEN 18 ELSE NULL END AS Leaf_18,
      CASE WHEN((t."X_1" > -0.134070) AND (t."X_0" > -1.533537) AND (t."X_7" <= 0.417460)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_1" > -0.134070) AND (t."X_0" > -1.533537) AND (t."X_7" > 0.417460) AND (t."X_3" <= 0.203329)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_1" > -0.134070) AND (t."X_0" > -1.533537) AND (t."X_7" > 0.417460) AND (t."X_3" > 0.203329)) THEN 22 ELSE NULL END AS Leaf_22
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.406250 AS "P_0", 0.593750 AS "P_1", 1 AS "D", 0.593750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.567568 AS "P_0", 0.432432 AS "P_1", 0 AS "D", 0.567568 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.185185 AS "P_0", 0.814815 AS "P_1", 1 AS "D", 0.814815 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.083333 AS "P_0", 0.916667 AS "P_1", 1 AS "D", 0.916667 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.761905 AS "P_0", 0.238095 AS "P_1", 0 AS "D", 0.761905 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.312500 AS "P_0", 0.687500 AS "P_1", 1 AS "D", 0.687500 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.555556 AS "P_0", 0.444444 AS "P_1", 0 AS "D", 0.555556 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.842105 AS "P_0", 0.157895 AS "P_1", 0 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.500000 AS "P_0", 0.500000 AS "P_1", 0 AS "D", 0.500000 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.285714 AS "P_0", 0.714286 AS "P_1", 1 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_27" AS 
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
    COALESCE( t1."Leaf_3", t1."Leaf_4", t1."Leaf_7", t1."Leaf_9", t1."Leaf_10", t1."Leaf_14", t1."Leaf_15", t1."Leaf_17", t1."Leaf_19", t1."Leaf_20", t1."Leaf_21", t1."Leaf_22" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_9" > 0.897578) AND (t."X_9" <= 2.539192)) THEN 3 ELSE NULL END AS Leaf_3,
      CASE WHEN((t."X_9" > 0.897578) AND (t."X_9" > 2.539192)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_9" <= 0.897578) AND (t."X_7" > 0.828977) AND (t."X_1" <= -0.442682)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_9" <= 0.897578) AND (t."X_7" > 0.828977) AND (t."X_1" > -0.442682) AND (t."X_8" <= -0.151890)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_9" <= 0.897578) AND (t."X_7" > 0.828977) AND (t."X_1" > -0.442682) AND (t."X_8" > -0.151890)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_9" <= 0.897578) AND (t."X_7" <= 0.828977) AND (t."X_9" <= -0.411400) AND (t."X_0" > 0.713322)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_9" <= 0.897578) AND (t."X_7" <= 0.828977) AND (t."X_9" <= -0.411400) AND (t."X_0" <= 0.713322) AND (t."X_9" <= -1.049992)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_9" <= 0.897578) AND (t."X_7" <= 0.828977) AND (t."X_9" <= -0.411400) AND (t."X_0" <= 0.713322) AND (t."X_9" > -1.049992) AND (t."X_1" <= -1.921429)) THEN 17 ELSE NULL END AS Leaf_17,
      CASE WHEN((t."X_9" <= 0.897578) AND (t."X_7" <= 0.828977) AND (t."X_9" <= -0.411400) AND (t."X_0" <= 0.713322) AND (t."X_9" > -1.049992) AND (t."X_1" > -1.921429) AND (t."X_7" <= -1.293424)) THEN 19 ELSE NULL END AS Leaf_19,
      CASE WHEN((t."X_9" <= 0.897578) AND (t."X_7" <= 0.828977) AND (t."X_9" <= -0.411400) AND (t."X_0" <= 0.713322) AND (t."X_9" > -1.049992) AND (t."X_1" > -1.921429) AND (t."X_7" > -1.293424)) THEN 20 ELSE NULL END AS Leaf_20,
      CASE WHEN((t."X_9" <= 0.897578) AND (t."X_7" <= 0.828977) AND (t."X_9" > -0.411400) AND (t."X_1" <= -1.033739)) THEN 21 ELSE NULL END AS Leaf_21,
      CASE WHEN((t."X_9" <= 0.897578) AND (t."X_7" <= 0.828977) AND (t."X_9" > -0.411400) AND (t."X_1" > -1.033739)) THEN 22 ELSE NULL END AS Leaf_22
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.484375 AS "P_0", 0.515625 AS "P_1", 1 AS "D", 0.515625 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.545455 AS "P_0", 0.454545 AS "P_1", 0 AS "D", 0.545455 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.682927 AS "P_0", 0.317073 AS "P_1", 0 AS "D", 0.682927 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.142857 AS "P_0", 0.857143 AS "P_1", 1 AS "D", 0.857143 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.666667 AS "P_0", 0.333333 AS "P_1", 0 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.478261 AS "P_0", 0.521739 AS "P_1", 1 AS "D", 0.521739 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.733333 AS "P_0", 0.266667 AS "P_1", 0 AS "D", 0.733333 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  0.428571 AS "P_0", 0.571429 AS "P_1", 1 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 17 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 18 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 19 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 20 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 21 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 22 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_28" AS 
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
    COALESCE( t1."Leaf_1", t1."Leaf_4", t1."Leaf_7", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_14", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_5" <= -0.596857)) THEN 1 ELSE NULL END AS Leaf_1,
      CASE WHEN((t."X_5" > -0.596857) AND (t."X_8" > 1.522624)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_5" > -0.596857) AND (t."X_8" <= 1.522624) AND (t."X_5" <= 0.363523) AND (t."X_9" <= -0.412199)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_5" > -0.596857) AND (t."X_8" <= 1.522624) AND (t."X_5" <= 0.363523) AND (t."X_9" > -0.412199) AND (t."X_9" > 1.014583)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_5" > -0.596857) AND (t."X_8" <= 1.522624) AND (t."X_5" <= 0.363523) AND (t."X_9" > -0.412199) AND (t."X_9" <= 1.014583) AND (t."X_0" <= 0.861285)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_5" > -0.596857) AND (t."X_8" <= 1.522624) AND (t."X_5" <= 0.363523) AND (t."X_9" > -0.412199) AND (t."X_9" <= 1.014583) AND (t."X_0" > 0.861285)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_5" > -0.596857) AND (t."X_8" <= 1.522624) AND (t."X_5" > 0.363523) AND (t."X_0" > -1.760986)) THEN 14 ELSE NULL END AS Leaf_14,
      CASE WHEN((t."X_5" > -0.596857) AND (t."X_8" <= 1.522624) AND (t."X_5" > 0.363523) AND (t."X_0" <= -1.760986) AND (t."X_8" <= 0.236614)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_5" > -0.596857) AND (t."X_8" <= 1.522624) AND (t."X_5" > 0.363523) AND (t."X_0" <= -1.760986) AND (t."X_8" > 0.236614)) THEN 16 ELSE NULL END AS Leaf_16
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
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
    SELECT 1 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.157895 AS "P_0", 0.842105 AS "P_1", 1 AS "D", 0.842105 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.384615 AS "P_0", 0.615385 AS "P_1", 1 AS "D", 0.615385 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.040000 AS "P_0", 0.960000 AS "P_1", 1 AS "D", 0.960000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.200000 AS "P_0", 0.800000 AS "P_1", 1 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.111111 AS "P_0", 0.888889 AS "P_1", 1 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.333333 AS "P_0", 0.666667 AS "P_1", 1 AS "D", 0.666667 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_29" AS 
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
    COALESCE( t1."Leaf_4", t1."Leaf_7", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_13", t1."Leaf_14" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_9" > 2.040029)) THEN 4 ELSE NULL END AS Leaf_4,
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_9" <= 2.040029) AND (t."X_6" > 1.057696) AND (t."X_9" <= 0.799164)) THEN 7 ELSE NULL END AS Leaf_7,
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_9" <= 2.040029) AND (t."X_6" > 1.057696) AND (t."X_9" > 0.799164)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_9" <= 2.040029) AND (t."X_6" <= 1.057696) AND (t."X_4" <= 1.222171)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_6" > -0.221763) AND (t."X_9" <= 2.040029) AND (t."X_6" <= 1.057696) AND (t."X_4" > 1.222171)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_6" <= -0.221763) AND (t."X_6" <= -0.396742)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_6" <= -0.221763) AND (t."X_6" > -0.396742) AND (t."X_6" <= -0.341862)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_6" <= -0.221763) AND (t."X_6" > -0.396742) AND (t."X_6" > -0.341862)) THEN 14 ELSE NULL END AS Leaf_14
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.421875 AS "P_0", 0.578125 AS "P_1", 1 AS "D", 0.578125 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.904762 AS "P_0", 0.095238 AS "P_1", 0 AS "D", 0.904762 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.186047 AS "P_0", 0.813953 AS "P_1", 1 AS "D", 0.813953 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.125000 AS "P_0", 0.875000 AS "P_1", 1 AS "D", 0.875000 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.034483 AS "P_0", 0.965517 AS "P_1", 1 AS "D", 0.965517 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.363636 AS "P_0", 0.636364 AS "P_1", 1 AS "D", 0.636364 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  0.714286 AS "P_0", 0.285714 AS "P_1", 0 AS "D", 0.714286 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_30" AS 
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
    COALESCE( t1."Leaf_5", t1."Leaf_8", t1."Leaf_9", t1."Leaf_10", t1."Leaf_11", t1."Leaf_12", t1."Leaf_13", t1."Leaf_15", t1."Leaf_16" ) AS node_id
  FROM
    model_input t
    LEFT OUTER JOIN
   (SELECT
      t."index" AS "index",
      CASE WHEN((t."X_6" <= 0.009380) AND (t."X_9" > -0.160288) AND (t."X_3" <= -0.906461)) THEN 5 ELSE NULL END AS Leaf_5,
      CASE WHEN((t."X_6" <= 0.009380) AND (t."X_9" > -0.160288) AND (t."X_3" > -0.906461) AND (t."X_9" > 0.694370)) THEN 8 ELSE NULL END AS Leaf_8,
      CASE WHEN((t."X_6" <= 0.009380) AND (t."X_9" <= -0.160288) AND (t."X_7" <= 0.828977)) THEN 9 ELSE NULL END AS Leaf_9,
      CASE WHEN((t."X_6" <= 0.009380) AND (t."X_9" <= -0.160288) AND (t."X_7" > 0.828977)) THEN 10 ELSE NULL END AS Leaf_10,
      CASE WHEN((t."X_6" > 0.009380) AND (t."X_4" <= 1.118313)) THEN 11 ELSE NULL END AS Leaf_11,
      CASE WHEN((t."X_6" > 0.009380) AND (t."X_4" > 1.118313)) THEN 12 ELSE NULL END AS Leaf_12,
      CASE WHEN((t."X_6" <= 0.009380) AND (t."X_9" > -0.160288) AND (t."X_3" > -0.906461) AND (t."X_9" <= 0.694370) AND (t."X_3" <= 0.607508)) THEN 13 ELSE NULL END AS Leaf_13,
      CASE WHEN((t."X_6" <= 0.009380) AND (t."X_9" > -0.160288) AND (t."X_3" > -0.906461) AND (t."X_9" <= 0.694370) AND (t."X_3" > 0.607508) AND (t."X_8" <= 0.046912)) THEN 15 ELSE NULL END AS Leaf_15,
      CASE WHEN((t."X_6" <= 0.009380) AND (t."X_9" > -0.160288) AND (t."X_3" > -0.906461) AND (t."X_9" <= 0.694370) AND (t."X_3" > 0.607508) AND (t."X_8" > 0.046912)) THEN 16 ELSE NULL END AS Leaf_16
    FROM model_input t
    ) AS t1
    ON(t."index" == t1."index")
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", 
    "Values"."D" AS "D",
    "Values"."DP" AS "DP"
  FROM (
    SELECT 0 AS nid,  0.406250 AS "P_0", 0.593750 AS "P_1", 1 AS "D", 0.593750 AS "DP"
    UNION ALL
    SELECT 1 AS nid,  0.781250 AS "P_0", 0.218750 AS "P_1", 0 AS "D", 0.781250 AS "DP"
    UNION ALL
    SELECT 2 AS nid,  0.031250 AS "P_0", 0.968750 AS "P_1", 1 AS "D", 0.968750 AS "DP"
    UNION ALL
    SELECT 3 AS nid,  0.944444 AS "P_0", 0.055556 AS "P_1", 0 AS "D", 0.944444 AS "DP"
    UNION ALL
    SELECT 4 AS nid,  0.571429 AS "P_0", 0.428571 AS "P_1", 0 AS "D", 0.571429 AS "DP"
    UNION ALL
    SELECT 5 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 6 AS nid,  0.800000 AS "P_0", 0.200000 AS "P_1", 0 AS "D", 0.800000 AS "DP"
    UNION ALL
    SELECT 7 AS nid,  0.888889 AS "P_0", 0.111111 AS "P_1", 0 AS "D", 0.888889 AS "DP"
    UNION ALL
    SELECT 8 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 9 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 10 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 11 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 12 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 13 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 14 AS nid,  0.750000 AS "P_0", 0.250000 AS "P_1", 0 AS "D", 0.750000 AS "DP"
    UNION ALL
    SELECT 15 AS nid,  0.000000 AS "P_0", 1.000000 AS "P_1", 1 AS "D", 1.000000 AS "DP"
    UNION ALL
    SELECT 16 AS nid,  1.000000 AS "P_0", 0.000000 AS "P_1", 0 AS "D", 1.000000 AS "DP"
  ) AS "Values"),
"DT_output_31" AS 
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
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_4" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_31" AS t
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
