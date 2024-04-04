WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_3" < 1.000000) THEN CASE WHEN (t."X_31" < 1.000000) THEN 7 ELSE CASE WHEN (t."X_8" < 121441.000000) THEN CASE WHEN (t."X_30" < 1.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_15" < 1.000000) THEN 17 ELSE 18 END END END ELSE 4 END ELSE CASE WHEN (t."X_20" < 1.000000) THEN CASE WHEN (t."X_28" < 1.000000) THEN 9 ELSE CASE WHEN (t."X_8" < 150324.000000) THEN 13 ELSE 14 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.114491 AS "P_0", 0.114491 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.152841 AS "P_0", -0.152841 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.218007 AS "P_0", -0.218007 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.288491 AS "P_0", 0.288491 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.011172 AS "P_0", -0.011172 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.114491 AS "P_0", 0.114491 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.136836 AS "P_0", -0.136836 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.162973 AS "P_0", 0.162973 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.189852 AS "P_0", -0.189852 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.011172 AS "P_0", -0.011172 AS "P_1"
  ) AS "Values")
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_0" AS t1
   LEFT OUTER JOIN
   "DT_node_data_0" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_1" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_31" < 1.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN 3 ELSE CASE WHEN (t."X_20" < 1.000000) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_11" < 1.000000) THEN CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_29" < 1.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_5" < 1.000000) THEN 15 ELSE 16 END ELSE 14 END ELSE 12 END ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.187606 AS "P_0", -0.187606 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.216049 AS "P_0", 0.216049 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.088456 AS "P_0", 0.088456 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.133074 AS "P_0", -0.133074 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.176392 AS "P_0", -0.176392 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.116181 AS "P_0", -0.116181 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.224612 AS "P_0", 0.224612 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.055453 AS "P_0", 0.055453 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.141926 AS "P_0", -0.141926 AS "P_1"
  ) AS "Values")
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_1" AS t1
   LEFT OUTER JOIN
   "DT_node_data_1" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_2" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_3" < 1.000000) THEN CASE WHEN (t."X_31" < 1.000000) THEN 7 ELSE CASE WHEN (t."X_8" < 121441.000000) THEN CASE WHEN (t."X_30" < 1.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_15" < 1.000000) THEN 17 ELSE 18 END END END ELSE 4 END ELSE CASE WHEN (t."X_20" < 1.000000) THEN CASE WHEN (t."X_8" < 121441.000000) THEN 9 ELSE CASE WHEN (t."X_13" < 1.000000) THEN 13 ELSE 14 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.074610 AS "P_0", 0.074610 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.118085 AS "P_0", -0.118085 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.168606 AS "P_0", -0.168606 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.008998 AS "P_0", 0.008998 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.204751 AS "P_0", 0.204751 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.062554 AS "P_0", 0.062554 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.113352 AS "P_0", -0.113352 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.117275 AS "P_0", 0.117276 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.158348 AS "P_0", -0.158348 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.005155 AS "P_0", 0.005155 AS "P_1"
  ) AS "Values")
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_2" AS t1
   LEFT OUTER JOIN
   "DT_node_data_2" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_3" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_16" < 11.000000) THEN CASE WHEN (t."X_3" < 1.000000) THEN CASE WHEN (t."X_5" < 1.000000) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_20" < 1.000000) THEN CASE WHEN (t."X_8" < 105582.000000) THEN 9 ELSE CASE WHEN (t."X_16" < 13.000000) THEN 11 ELSE CASE WHEN (t."X_0" < 3.000000) THEN 13 ELSE 14 END END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.061199 AS "P_0", 0.061199 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.113256 AS "P_0", -0.113256 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.148218 AS "P_0", -0.148218 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.001072 AS "P_0", 0.001072 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.118890 AS "P_0", -0.118890 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.010237 AS "P_0", 0.010237 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.187519 AS "P_0", 0.187519 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.050843 AS "P_0", 0.050843 AS "P_1"
  ) AS "Values")
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_3" AS t1
   LEFT OUTER JOIN
   "DT_node_data_3" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_4" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_31" < 1.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN 3 ELSE CASE WHEN (t."X_20" < 1.000000) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_16" < 10.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_2" < 1.000000) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_28" < 1.000000) THEN CASE WHEN (t."X_8" < 121441.000000) THEN 17 ELSE 18 END ELSE 16 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.145186 AS "P_0", -0.145186 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.042551 AS "P_0", 0.042551 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.095306 AS "P_0", -0.095306 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.137259 AS "P_0", -0.137259 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.013721 AS "P_0", 0.013721 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.100751 AS "P_0", -0.100751 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.023696 AS "P_0", 0.023696 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.035771 AS "P_0", -0.035771 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.188163 AS "P_0", 0.188163 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.044146 AS "P_0", 0.044146 AS "P_1"
  ) AS "Values")
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_5" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_31" < 1.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_11" < 1.000000) THEN CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_8" < 172009.000000) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_41" < 1.000000) THEN 13 ELSE CASE WHEN (t."X_30" < 1.000000) THEN 15 ELSE 16 END END END ELSE 8 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.135584 AS "P_0", -0.135584 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.026839 AS "P_0", -0.026839 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.128531 AS "P_0", 0.128531 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.139379 AS "P_0", -0.139379 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.059549 AS "P_0", -0.059549 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.013493 AS "P_0", 0.013493 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.027232 AS "P_0", -0.027232 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.038842 AS "P_0", 0.038842 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.143079 AS "P_0", 0.143079 AS "P_1"
  ) AS "Values")
,
"DT_output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_5" AS t1
   LEFT OUTER JOIN
   "DT_node_data_5" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_6" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_16" < 11.000000) THEN CASE WHEN (t."X_3" < 1.000000) THEN CASE WHEN (t."X_8" < 121441.000000) THEN CASE WHEN (t."X_14" < 1.000000) THEN 11 ELSE 12 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_20" < 1.000000) THEN CASE WHEN (t."X_8" < 172009.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_11" < 1.000000) THEN 17 ELSE 18 END ELSE 14 END ELSE CASE WHEN (t."X_15" < 1.000000) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.060666 AS "P_0", 0.060666 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.089690 AS "P_0", -0.089690 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.139569 AS "P_0", -0.139569 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.096098 AS "P_0", -0.096098 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.041590 AS "P_0", 0.041590 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.116887 AS "P_0", 0.116887 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.020912 AS "P_0", 0.020912 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.162089 AS "P_0", 0.162089 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.120138 AS "P_0", -0.120138 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.013663 AS "P_0", 0.013663 AS "P_1"
  ) AS "Values")
,
"DT_output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_6" AS t1
   LEFT OUTER JOIN
   "DT_node_data_6" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_7" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_31" < 1.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN 3 ELSE CASE WHEN (t."X_28" < 1.000000) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_11" < 1.000000) THEN CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_5" < 1.000000) THEN CASE WHEN (t."X_2" < 1.000000) THEN 13 ELSE CASE WHEN (t."X_8" < 172009.000000) THEN 15 ELSE 16 END END ELSE 12 END ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.119862 AS "P_0", -0.119862 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.108071 AS "P_0", 0.108071 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.004899 AS "P_0", -0.004899 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.029983 AS "P_0", -0.029983 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.122016 AS "P_0", -0.122016 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.053968 AS "P_0", -0.053968 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.131487 AS "P_0", 0.131487 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.051613 AS "P_0", -0.051613 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.065560 AS "P_0", 0.065560 AS "P_1"
  ) AS "Values")
,
"DT_output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_7" AS t1
   LEFT OUTER JOIN
   "DT_node_data_7" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_8" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_20" < 1.000000) THEN CASE WHEN (t."X_16" < 10.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_41" < 1.000000) THEN 7 ELSE CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_15" < 1.000000) THEN 15 ELSE 16 END ELSE 12 END ELSE CASE WHEN (t."X_13" < 1.000000) THEN 13 ELSE 14 END END END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.111315 AS "P_0", -0.111315 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.002125 AS "P_0", -0.002125 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.103562 AS "P_0", -0.103562 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.054926 AS "P_0", -0.054926 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.053500 AS "P_0", 0.053500 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.127251 AS "P_0", 0.127251 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.037026 AS "P_0", 0.037026 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.094833 AS "P_0", -0.094833 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.012791 AS "P_0", 0.012791 AS "P_1"
  ) AS "Values")
,
"DT_output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_8" AS t1
   LEFT OUTER JOIN
   "DT_node_data_8" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_9" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_31" < 1.000000) THEN CASE WHEN (t."X_8" < 184655.000000) THEN 3 ELSE CASE WHEN (t."X_32" < 1.000000) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_5" < 1.000000) THEN CASE WHEN (t."X_2" < 1.000000) THEN 11 ELSE CASE WHEN (t."X_16" < 11.000000) THEN 13 ELSE CASE WHEN (t."X_8" < 172009.000000) THEN 15 ELSE 16 END END END ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.113986 AS "P_0", -0.113986 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.060649 AS "P_0", -0.060649 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.001508 AS "P_0", -0.001508 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.019779 AS "P_0", -0.019779 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.043297 AS "P_0", -0.043297 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.116701 AS "P_0", 0.116701 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.045451 AS "P_0", -0.045451 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.008135 AS "P_0", -0.008135 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.123747 AS "P_0", 0.123747 AS "P_1"
  ) AS "Values")
,
"DT_output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_9" AS t1
   LEFT OUTER JOIN
   "DT_node_data_9" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_10" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_20" < 1.000000) THEN CASE WHEN (t."X_16" < 10.000000) THEN CASE WHEN (t."X_8" < 150324.000000) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_41" < 1.000000) THEN 7 ELSE CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_13" < 1.000000) THEN 13 ELSE 14 END END END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.098755 AS "P_0", -0.098755 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.006588 AS "P_0", -0.006588 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.088586 AS "P_0", -0.088585 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.045339 AS "P_0", -0.045339 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.050108 AS "P_0", -0.050108 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.050615 AS "P_0", 0.050615 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.114372 AS "P_0", 0.114372 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.030512 AS "P_0", 0.030512 AS "P_1"
  ) AS "Values")
,
"DT_output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_10" AS t1
   LEFT OUTER JOIN
   "DT_node_data_10" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_11" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_0" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_16" < 10.000000) THEN CASE WHEN (t."X_8" < 105582.000000) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_18" < 1.000000) THEN 7 ELSE CASE WHEN (t."X_28" < 1.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_8" < 229656.000000) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_8" < 121441.000000) THEN 15 ELSE 16 END END ELSE 10 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.095864 AS "P_0", -0.095864 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.008767 AS "P_0", -0.008767 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.087631 AS "P_0", -0.087631 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.038512 AS "P_0", -0.038512 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.013403 AS "P_0", -0.013403 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.092999 AS "P_0", -0.092999 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.095210 AS "P_0", 0.095210 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.125484 AS "P_0", 0.125484 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.013534 AS "P_0", 0.013534 AS "P_1"
  ) AS "Values")
,
"DT_output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_11" AS t1
   LEFT OUTER JOIN
   "DT_node_data_11" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_12" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_20" < 1.000000) THEN CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_41" < 1.000000) THEN 5 ELSE CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_8" < 105582.000000) THEN 9 ELSE CASE WHEN (t."X_8" < 172009.000000) THEN 11 ELSE 12 END END ELSE 8 END END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.085850 AS "P_0", -0.085850 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.067492 AS "P_0", -0.067492 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.051206 AS "P_0", -0.051206 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.115493 AS "P_0", 0.115493 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.040139 AS "P_0", 0.040139 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.057513 AS "P_0", -0.057513 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.034753 AS "P_0", 0.034753 AS "P_1"
  ) AS "Values")
,
"DT_output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_12" AS t1
   LEFT OUTER JOIN
   "DT_node_data_12" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_13" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 1.000000) THEN CASE WHEN (t."X_16" < 11.000000) THEN CASE WHEN (t."X_8" < 121441.000000) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_8" < 229656.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 9 ELSE CASE WHEN (t."X_28" < 1.000000) THEN 11 ELSE 12 END END ELSE 8 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.059236 AS "P_0", 0.059236 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.001333 AS "P_0", 0.001333 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.109573 AS "P_0", -0.109573 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.070973 AS "P_0", 0.070973 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.072936 AS "P_0", -0.072936 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.075120 AS "P_0", 0.075120 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.011776 AS "P_0", -0.011776 AS "P_1"
  ) AS "Values")
,
"DT_output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_13" AS t1
   LEFT OUTER JOIN
   "DT_node_data_13" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_14" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_16" < 10.000000) THEN 1 ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_8" < 229656.000000) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_8" < 121441.000000) THEN 7 ELSE CASE WHEN (t."X_0" < 3.000000) THEN 9 ELSE 10 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.060990 AS "P_0", -0.060990 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.080186 AS "P_0", -0.080186 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.054365 AS "P_0", 0.054365 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.079842 AS "P_0", 0.079842 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.052948 AS "P_0", 0.052948 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.054273 AS "P_0", -0.054273 AS "P_1"
  ) AS "Values")
,
"DT_output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_14" AS t1
   LEFT OUTER JOIN
   "DT_node_data_14" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_15" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_18" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_41" < 1.000000) THEN 5 ELSE CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 9 ELSE 10 END ELSE 8 END END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.063139 AS "P_0", -0.063139 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.051583 AS "P_0", -0.051583 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.036776 AS "P_0", -0.036776 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.090178 AS "P_0", 0.090178 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.004610 AS "P_0", -0.004610 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.052018 AS "P_0", 0.052018 AS "P_1"
  ) AS "Values")
,
"DT_output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_15" AS t1
   LEFT OUTER JOIN
   "DT_node_data_15" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_16" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 1.000000) THEN CASE WHEN (t."X_15" < 1.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_8" < 121441.000000) THEN 7 ELSE 8 END ELSE 6 END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.058645 AS "P_0", 0.058645 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.038638 AS "P_0", 0.038638 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.000207 AS "P_0", -0.000207 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.005731 AS "P_0", -0.005731 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.100675 AS "P_0", -0.100675 AS "P_1"
  ) AS "Values")
,
"DT_output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_16" AS t1
   LEFT OUTER JOIN
   "DT_node_data_16" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_17" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_31" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_30" < 1.000000) THEN CASE WHEN (t."X_8" < 121441.000000) THEN 7 ELSE 8 END ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.046902 AS "P_0", -0.046901 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.044705 AS "P_0", -0.044705 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.051643 AS "P_0", 0.051643 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.027660 AS "P_0", -0.027660 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.045339 AS "P_0", 0.045339 AS "P_1"
  ) AS "Values")
,
"DT_output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_17" AS t1
   LEFT OUTER JOIN
   "DT_node_data_17" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_18" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_15" < 1.000000) THEN CASE WHEN (t."X_8" < 150324.000000) THEN CASE WHEN (t."X_14" < 1.000000) THEN 7 ELSE 8 END ELSE 6 END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.042114 AS "P_0", 0.042114 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.029872 AS "P_0", 0.029872 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.073620 AS "P_0", -0.073620 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.027146 AS "P_0", -0.027146 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.021833 AS "P_0", 0.021833 AS "P_1"
  ) AS "Values")
,
"DT_output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_18" AS t1
   LEFT OUTER JOIN
   "DT_node_data_18" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_19" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_16" < 10.000000) THEN 1 ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_8" < 200639.000000) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_30" < 1.000000) THEN 7 ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.044914 AS "P_0", -0.044914 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.060733 AS "P_0", -0.060733 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.025943 AS "P_0", 0.025943 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.006981 AS "P_0", 0.006981 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.065347 AS "P_0", 0.065347 AS "P_1"
  ) AS "Values")
,
"DT_output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_19" AS t1
   LEFT OUTER JOIN
   "DT_node_data_19" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_20" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_15" < 1.000000) THEN CASE WHEN (t."X_8" < 150324.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN 7 ELSE 8 END ELSE 6 END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.037844 AS "P_0", 0.037844 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.024634 AS "P_0", 0.024634 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.065602 AS "P_0", -0.065602 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.004041 AS "P_0", -0.004041 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.000809 AS "P_0", 0.000809 AS "P_1"
  ) AS "Values")
,
"DT_output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_20" AS t1
   LEFT OUTER JOIN
   "DT_node_data_20" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_21" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_31" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_30" < 1.000000) THEN CASE WHEN (t."X_8" < 121441.000000) THEN 7 ELSE 8 END ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.038745 AS "P_0", -0.038745 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.034413 AS "P_0", -0.034413 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.045179 AS "P_0", 0.045179 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.024787 AS "P_0", -0.024787 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.039705 AS "P_0", 0.039705 AS "P_1"
  ) AS "Values")
,
"DT_output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_21" AS t1
   LEFT OUTER JOIN
   "DT_node_data_21" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_22" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_8" < 121441.000000) THEN 3 ELSE CASE WHEN (t."X_8" < 184655.000000) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_28" < 1.000000) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.021246 AS "P_0", 0.021246 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.047756 AS "P_0", 0.047756 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.000882 AS "P_0", -0.000882 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.083043 AS "P_0", -0.083043 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.003713 AS "P_0", -0.003713 AS "P_1"
  ) AS "Values")
,
"DT_output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_22" AS t1
   LEFT OUTER JOIN
   "DT_node_data_22" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_23" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_8" < 105582.000000) THEN 3 ELSE CASE WHEN (t."X_16" < 11.000000) THEN 5 ELSE CASE WHEN (t."X_15" < 1.000000) THEN 7 ELSE 8 END END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.034476 AS "P_0", 0.034476 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.054316 AS "P_0", -0.054316 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.037988 AS "P_0", -0.037988 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.001280 AS "P_0", 0.001280 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.050863 AS "P_0", 0.050863 AS "P_1"
  ) AS "Values")
,
"DT_output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_23" AS t1
   LEFT OUTER JOIN
   "DT_node_data_23" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_24" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_18" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_30" < 1.000000) THEN CASE WHEN (t."X_8" < 121441.000000) THEN 7 ELSE 8 END ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.040650 AS "P_0", -0.040650 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.056431 AS "P_0", 0.056431 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.023816 AS "P_0", 0.023816 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.058952 AS "P_0", -0.058952 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.007079 AS "P_0", 0.007079 AS "P_1"
  ) AS "Values")
,
"DT_output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_24" AS t1
   LEFT OUTER JOIN
   "DT_node_data_24" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_25" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_16" < 10.000000) THEN 1 ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_8" < 184655.000000) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_8" < 121441.000000) THEN 7 ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.037615 AS "P_0", -0.037615 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.047079 AS "P_0", -0.047079 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.010786 AS "P_0", 0.010786 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.056410 AS "P_0", 0.056410 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.008452 AS "P_0", 0.008452 AS "P_1"
  ) AS "Values")
,
"DT_output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_25" AS t1
   LEFT OUTER JOIN
   "DT_node_data_25" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_26" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_18" < 1.000000) THEN 3 ELSE CASE WHEN (t."X_8" < 172009.000000) THEN CASE WHEN (t."X_16" < 11.000000) THEN 7 ELSE 8 END ELSE 6 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.038727 AS "P_0", -0.038727 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.031140 AS "P_0", -0.031140 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.043588 AS "P_0", 0.043588 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.029173 AS "P_0", 0.029173 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.018261 AS "P_0", -0.018261 AS "P_1"
  ) AS "Values")
,
"DT_output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_26" AS t1
   LEFT OUTER JOIN
   "DT_node_data_26" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_27" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_8" < 121441.000000) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.027321 AS "P_0", 0.027321 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  -0.019453 AS "P_0", 0.019452 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.050367 AS "P_0", -0.050367 AS "P_1"
  ) AS "Values")
,
"DT_output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_27" AS t1
   LEFT OUTER JOIN
   "DT_node_data_27" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_28" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_16" < 11.000000) THEN CASE WHEN (t."X_8" < 121441.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_8" < 121441.000000) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.024572 AS "P_0", 0.024572 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.059578 AS "P_0", -0.059578 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.014256 AS "P_0", -0.014256 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.031645 AS "P_0", 0.031645 AS "P_1"
  ) AS "Values")
,
"DT_output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_28" AS t1
   LEFT OUTER JOIN
   "DT_node_data_28" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_29" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_31" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_8" < 150324.000000) THEN CASE WHEN (t."X_8" < 105582.000000) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.030979 AS "P_0", -0.030979 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.016177 AS "P_0", -0.016177 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.003431 AS "P_0", 0.003431 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.045770 AS "P_0", 0.045770 AS "P_1"
  ) AS "Values")
,
"DT_output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_29" AS t1
   LEFT OUTER JOIN
   "DT_node_data_29" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_30" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_16" < 11.000000) THEN 3 ELSE CASE WHEN (t."X_8" < 121441.000000) THEN 5 ELSE 6 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.025207 AS "P_0", 0.025206 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.053326 AS "P_0", -0.053326 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.015619 AS "P_0", -0.015619 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.028639 AS "P_0", 0.028639 AS "P_1"
  ) AS "Values")
,
"DT_output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_30" AS t1
   LEFT OUTER JOIN
   "DT_node_data_30" AS t2
   ON t1.node_id = t2.nid
 )
,
"DT_node_lookup_31" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 1.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_28" < 1.000000) THEN CASE WHEN (t."X_16" < 11.000000) THEN 7 ELSE 8 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.001005 AS "P_0", 0.001005 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.031178 AS "P_0", 0.031178 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.013475 AS "P_0", 0.013475 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.039927 AS "P_0", -0.039927 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.010019 AS "P_0", -0.010019 AS "P_1"
  ) AS "Values")
,
"DT_output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
   ON t1.node_id = t2.nid
 )
,
union_of_trees AS 
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
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.781250 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.218750 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM "union_of_trees" t
  GROUP BY t."index"
 ),
soft_max_orig_cte AS 
( SELECT t."index" AS "index", 
   t."Score_0" AS "Score_0",
   t."Proba_0" AS "Proba_0",
   t."LogProba_0" AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   t."LogProba_1" AS "LogProba_1",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   GREATEST( t."Score_0", t."Score_1" ) AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1."index" as "index",
    t1."Proba_0" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_0" AS "Exp_Score_0",
    t1."Proba_1" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    t1."Exp_Score_1" AS "Exp_Score_1",
    ( t1."Exp_Score_0" + t1."Exp_Score_1" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1"
 FROM 
   soft_max_cte_with_exp_deltas as t1
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
     "soft_max_cte" AS t
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