WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_18" < 1.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_28" < 1.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_17" < 1.000000) THEN 15 ELSE 16 END ELSE 10 END END ELSE CASE WHEN (t."X_16" < 11.000000) THEN CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_36" < 1.000000) THEN CASE WHEN (t."X_16" < 10.000000) THEN CASE WHEN (t."X_8" < 198282.000000) THEN 25 ELSE 26 END ELSE CASE WHEN (t."X_0" < 2.000000) THEN 27 ELSE 28 END END ELSE 18 END ELSE 12 END ELSE CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_15" < 1.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_30" < 1.000000) THEN 29 ELSE 30 END ELSE 24 END ELSE 20 END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  0.224452 AS "P_0", -0.224452 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.098613 AS "P_0", -0.098613 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.036322 AS "P_0", 0.036323 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.139764 AS "P_0", 0.139764 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.289842 AS "P_0", 0.289842 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.218334 AS "P_0", -0.218334 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.016772 AS "P_0", -0.016772 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.050373 AS "P_0", 0.050373 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.220460 AS "P_0", 0.220460 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  0.031219 AS "P_0", -0.031219 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.185894 AS "P_0", -0.185894 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.025016 AS "P_0", -0.025016 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.147855 AS "P_0", -0.147855 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.056159 AS "P_0", 0.056159 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.092792 AS "P_0", 0.092792 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  -0.196841 AS "P_0", 0.196841 AS "P_1"
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
    CASE WHEN (t."X_18" < 1.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN 3 ELSE CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_28" < 1.000000) THEN 13 ELSE 14 END ELSE 8 END END ELSE CASE WHEN (t."X_16" < 11.000000) THEN CASE WHEN (t."X_8" < 340148.000000) THEN CASE WHEN (t."X_8" < 198282.000000) THEN CASE WHEN (t."X_14" < 1.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 25 ELSE 26 END ELSE CASE WHEN (t."X_8" < 160943.000000) THEN 27 ELSE 28 END END ELSE CASE WHEN (t."X_0" < 3.000000) THEN 21 ELSE 22 END END ELSE 10 END ELSE CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_8" < 105598.000000) THEN 17 ELSE CASE WHEN (t."X_8" < 228528.000000) THEN CASE WHEN (t."X_8" < 183916.000000) THEN 29 ELSE 30 END ELSE 24 END END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.186588 AS "P_0", -0.186588 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.036376 AS "P_0", 0.036376 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.200106 AS "P_0", -0.200106 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.192783 AS "P_0", 0.192783 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.194612 AS "P_0", -0.194612 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.060338 AS "P_0", -0.060338 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.006606 AS "P_0", 0.006606 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.161923 AS "P_0", 0.161923 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.000529 AS "P_0", -0.000529 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.031132 AS "P_0", 0.031132 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.187503 AS "P_0", -0.187503 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.107997 AS "P_0", -0.107997 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.022080 AS "P_0", -0.022080 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.137394 AS "P_0", 0.137394 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.084144 AS "P_0", 0.084144 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  -0.218584 AS "P_0", 0.218584 AS "P_1"
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
    CASE WHEN (t."X_18" < 1.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 7 ELSE CASE WHEN (t."X_8" < 183916.000000) THEN 15 ELSE CASE WHEN (t."X_17" < 1.000000) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_16" < 13.000000) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_16" < 11.000000) THEN CASE WHEN (t."X_45" < 2.000000) THEN 11 ELSE CASE WHEN (t."X_2" < 1.000000) THEN CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_8" < 183916.000000) THEN 29 ELSE 30 END ELSE 24 END ELSE CASE WHEN (t."X_30" < 1.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 31 ELSE 32 END ELSE CASE WHEN (t."X_8" < 198282.000000) THEN 33 ELSE 34 END END END END ELSE CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_15" < 1.000000) THEN CASE WHEN (t."X_2" < 1.000000) THEN 27 ELSE CASE WHEN (t."X_8" < 160943.000000) THEN 35 ELSE 36 END END ELSE 20 END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  0.185740 AS "P_0", -0.185740 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.119024 AS "P_0", -0.119024 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.053086 AS "P_0", 0.053086 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.149452 AS "P_0", -0.149452 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.146079 AS "P_0", 0.146079 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.171473 AS "P_0", -0.171473 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.123394 AS "P_0", 0.123394 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.098788 AS "P_0", -0.098788 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.021089 AS "P_0", 0.021089 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  0.097896 AS "P_0", -0.097896 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.099453 AS "P_0", 0.099453 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.084479 AS "P_0", 0.084479 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  -0.173601 AS "P_0", 0.173601 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.084841 AS "P_0", -0.084841 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.040798 AS "P_0", 0.040798 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  0.180711 AS "P_0", -0.180711 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  0.035173 AS "P_0", -0.035173 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.082008 AS "P_0", 0.082008 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  0.089320 AS "P_0", -0.089320 AS "P_1"
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
    CASE WHEN (t."X_18" < 1.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_25" < 1.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 13 ELSE CASE WHEN (t."X_8" < 183916.000000) THEN 19 ELSE 20 END END ELSE 8 END ELSE CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_28" < 1.000000) THEN 15 ELSE 16 END ELSE 10 END END ELSE CASE WHEN (t."X_16" < 9.000000) THEN 5 ELSE CASE WHEN (t."X_0" < 1.000000) THEN 11 ELSE CASE WHEN (t."X_4" < 1.000000) THEN CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_12" < 1.000000) THEN 25 ELSE 26 END ELSE 22 END ELSE CASE WHEN (t."X_12" < 1.000000) THEN 23 ELSE 24 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  0.127419 AS "P_0", -0.127419 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.092375 AS "P_0", -0.092375 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.050597 AS "P_0", 0.050597 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.121756 AS "P_0", -0.121756 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.171528 AS "P_0", -0.171528 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.167633 AS "P_0", -0.167633 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.027743 AS "P_0", -0.027743 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.162856 AS "P_0", -0.162856 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.064403 AS "P_0", -0.064403 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.144755 AS "P_0", 0.144755 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.112177 AS "P_0", -0.112177 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  0.003119 AS "P_0", -0.003119 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.065269 AS "P_0", 0.065269 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.034161 AS "P_0", -0.034161 AS "P_1"
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
    CASE WHEN (t."X_18" < 1.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 7 ELSE CASE WHEN (t."X_8" < 183916.000000) THEN 15 ELSE CASE WHEN (t."X_17" < 1.000000) THEN 19 ELSE 20 END END END ELSE CASE WHEN (t."X_8" < 183916.000000) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_45" < 2.000000) THEN CASE WHEN (t."X_2" < 1.000000) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_8" < 69867.000000) THEN 13 ELSE CASE WHEN (t."X_30" < 1.000000) THEN CASE WHEN (t."X_8" < 273905.000000) THEN CASE WHEN (t."X_16" < 10.000000) THEN 25 ELSE 26 END ELSE 22 END ELSE CASE WHEN (t."X_16" < 11.000000) THEN CASE WHEN (t."X_2" < 1.000000) THEN 27 ELSE 28 END ELSE 24 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  0.165822 AS "P_0", -0.165822 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.021825 AS "P_0", 0.021825 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.025935 AS "P_0", -0.025935 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.127792 AS "P_0", -0.127792 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.047075 AS "P_0", -0.047075 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.089472 AS "P_0", -0.089472 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.145603 AS "P_0", -0.145603 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.069716 AS "P_0", -0.069716 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.027731 AS "P_0", 0.027731 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.024801 AS "P_0", -0.024801 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.060799 AS "P_0", 0.060799 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.025374 AS "P_0", 0.025374 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.107719 AS "P_0", 0.107719 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.008766 AS "P_0", -0.008766 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.082178 AS "P_0", -0.082178 AS "P_1"
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
  ) AS scu
)
,soft_max_orig_cte AS 
( SELECT
   t."index" AS "index",
   0.779297 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.220703 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM "union_of_trees" t
  GROUP BY t."index"
 )
,
soft_max_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_orig_cte"
   ) AS scu
 )
,soft_max_score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
 "soft_max_orig_cte" AS t
    LEFT OUTER JOIN
    (SELECT t1.index_u AS index_m,
      max(t1."Score") AS "max_Score"
     FROM soft_max_class_union t1
     GROUP BY t1.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,soft_max_deltas AS 
 (SELECT soft_max_score_max."index" AS "index",
    soft_max_score_max."Score_0" AS "Score_0",
    EXP(max(-32.0, soft_max_score_max."Score_0" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_0",
    soft_max_score_max."Score_1" AS "Score_1",
    EXP(max(-32.0, soft_max_score_max."Score_1" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_1",
    soft_max_score_max."max_Score" AS "max_Score"
  FROM soft_max_score_max
 )
,soft_max_class_union_with_delta AS 
 (SELECT soft_scu."index" AS "index",
   soft_scu.class AS class,
   soft_scu."ExpDelta_Score" AS "ExpDelta_Score"
  FROM (
    SELECT t."index" AS "index", 0 AS "class", t."ExpDelta_Score_0" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 1 AS "class", t."ExpDelta_Score_1" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
) AS soft_scu)
,
soft_max_cte AS 
 (SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."ExpDelta_Score_0" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."ExpDelta_Score_1" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_1",
    t1."Score_1" AS "Score_1"
 FROM 
   soft_max_deltas AS t1
   LEFT OUTER JOIN
   ( SELECT t3."index" AS "index",
       SUM( t3."ExpDelta_Score" ) AS "sum_ExpDelta_Score"
     FROM soft_max_class_union_with_delta AS t3
     GROUP BY t3."index"
   ) AS sum_exp_t
   ON (t1."index" = sum_exp_t."index")
 )
,
score_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_cte"
   ) AS scu
 )
,
score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
    "soft_max_cte" AS t
    LEFT OUTER JOIN
    (SELECT score_class_union.index_u AS index_m,
      max(score_class_union."Score") AS "max_Score"
     FROM score_class_union
     GROUP BY score_class_union.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,
union_with_max AS 
 (SELECT score_class_union.index_u AS "index",
   score_class_union.class AS class,
   score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score"
  FROM
   score_class_union
   LEFT OUTER JOIN
   score_max
   ON score_class_union.index_u = score_max."index"
 )
,
arg_max_cte AS 
 (SELECT score_max."index" AS "index",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score",
   "arg_max_t_Score"."index_Score" AS "index_Score",
   "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score"
  FROM
   score_max
   LEFT OUTER JOIN
   (SELECT union_with_max."index" AS "index_Score",
     max(union_with_max.class) AS "arg_max_Score"
    FROM union_with_max
    WHERE union_with_max."max_Score" <= union_with_max."Score"
    GROUP BY union_with_max."index"
   ) AS "arg_max_t_Score"
   ON score_max."index" = "arg_max_t_Score"."index_Score"
 )
SELECT arg_max_cte."index" AS "index",
  arg_max_cte."Score_0" AS "Score_0",
  arg_max_cte."Proba_0" AS "Proba_0",
  CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN LN( arg_max_cte."Proba_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
  arg_max_cte."Score_1" AS "Score_1",
  arg_max_cte."Proba_1" AS "Proba_1",
  CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN LN( arg_max_cte."Proba_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
  arg_max_cte."arg_max_Score" AS "Decision",
  CASE
   WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0"
   WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1"
 END AS "DecisionProba"
FROM arg_max_cte