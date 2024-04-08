WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "BinaryClass_10_small" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_5" < 0.391962) THEN CASE WHEN (t."X_3" < -0.700210) THEN CASE WHEN (t."X_2" < -0.392572) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_8" < 0.850333) THEN 9 ELSE CASE WHEN (t."X_0" < -0.576757) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -1.954561) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  -0.060000 AS "P_0", 0.060000 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.276000 AS "P_0", 0.276000 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.150000 AS "P_0", -0.150000 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.180000 AS "P_0", 0.180000 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.237931 AS "P_0", -0.237931 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.060000 AS "P_0", 0.060000 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.180000 AS "P_0", -0.180000 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.391962) THEN CASE WHEN (t."X_3" < -0.700210) THEN 3 ELSE CASE WHEN (t."X_8" < 0.850333) THEN CASE WHEN (t."X_4" < 0.260122) THEN CASE WHEN (t."X_4" < -0.152940) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_9" < -0.673836) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -1.954561) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.033388 AS "P_0", 0.033388 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.049319 AS "P_0", 0.049319 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.216109 AS "P_0", 0.216109 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.213144 AS "P_0", -0.213144 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.164430 AS "P_0", -0.164430 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.063991 AS "P_0", 0.063991 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.196918 AS "P_0", -0.196918 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.105489 AS "P_0", 0.105489 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.391962) THEN CASE WHEN (t."X_3" < -0.700210) THEN 3 ELSE CASE WHEN (t."X_6" < 0.408634) THEN CASE WHEN (t."X_9" < 0.415493) THEN CASE WHEN (t."X_7" < 0.832917) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < -0.189211) THEN 13 ELSE 14 END END ELSE 8 END END ELSE CASE WHEN (t."X_0" < -1.954561) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.026382 AS "P_0", 0.026382 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.040690 AS "P_0", 0.040690 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.185678 AS "P_0", 0.185678 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.018010 AS "P_0", -0.018010 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.196038 AS "P_0", -0.196038 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.001476 AS "P_0", -0.001476 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.089655 AS "P_0", 0.089655 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.153121 AS "P_0", -0.153122 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.391962) THEN CASE WHEN (t."X_3" < -0.700210) THEN 3 ELSE CASE WHEN (t."X_8" < 0.850333) THEN CASE WHEN (t."X_4" < 0.260122) THEN CASE WHEN (t."X_4" < -0.152940) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_0" < -0.576757) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -1.954561) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.020863 AS "P_0", 0.020863 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.033647 AS "P_0", 0.033647 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.166462 AS "P_0", 0.166462 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.169101 AS "P_0", -0.169101 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.060235 AS "P_0", 0.060235 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.118166 AS "P_0", -0.118166 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.145998 AS "P_0", -0.145998 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.091788 AS "P_0", 0.091788 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.391962) THEN CASE WHEN (t."X_3" < -0.700210) THEN 3 ELSE CASE WHEN (t."X_6" < 0.408634) THEN CASE WHEN (t."X_2" < -0.120141) THEN CASE WHEN (t."X_4" < -0.152940) THEN 11 ELSE CASE WHEN (t."X_0" < 0.444082) THEN 13 ELSE 14 END END ELSE 10 END ELSE 8 END END ELSE CASE WHEN (t."X_1" < 0.775559) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.016504 AS "P_0", 0.016504 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.156845 AS "P_0", 0.156845 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.031155 AS "P_0", 0.031155 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.002585 AS "P_0", -0.002585 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.158726 AS "P_0", -0.158726 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.136565 AS "P_0", -0.136565 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.166065 AS "P_0", 0.166065 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.110482 AS "P_0", -0.110482 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.391962) THEN CASE WHEN (t."X_6" < -0.680721) THEN CASE WHEN (t."X_3" < 0.118096) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_3" < -0.700210) THEN 9 ELSE CASE WHEN (t."X_6" < -0.311436) THEN 11 ELSE CASE WHEN (t."X_7" < -0.707670) THEN 13 ELSE 14 END END END END ELSE CASE WHEN (t."X_3" < -1.073093) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  -0.016874 AS "P_0", 0.016874 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.145797 AS "P_0", 0.145797 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.163854 AS "P_0", -0.163854 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.027083 AS "P_0", -0.027083 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.137374 AS "P_0", 0.137374 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.014748 AS "P_0", 0.014748 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.004325 AS "P_0", 0.004325 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.145751 AS "P_0", -0.145751 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.391962) THEN CASE WHEN (t."X_4" < -0.152940) THEN CASE WHEN (t."X_5" < -0.120865) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_4" < 0.973998) THEN CASE WHEN (t."X_7" < 0.474760) THEN CASE WHEN (t."X_1" < -0.445387) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_3" < 0.309242) THEN 15 ELSE 16 END END ELSE 10 END END ELSE CASE WHEN (t."X_0" < -1.954561) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  -0.005976 AS "P_0", 0.005976 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.133514 AS "P_0", 0.133514 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.142851 AS "P_0", -0.142851 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.018130 AS "P_0", -0.018130 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.119476 AS "P_0", -0.119476 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.010903 AS "P_0", -0.010903 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.131329 AS "P_0", 0.131329 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.098516 AS "P_0", -0.098516 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.022099 AS "P_0", 0.022099 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.391962) THEN CASE WHEN (t."X_3" < -0.700210) THEN 3 ELSE CASE WHEN (t."X_8" < 0.850333) THEN CASE WHEN (t."X_1" < -1.146429) THEN 9 ELSE CASE WHEN (t."X_9" < 0.415493) THEN 11 ELSE 12 END END ELSE 8 END END ELSE CASE WHEN (t."X_1" < 0.775559) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.020835 AS "P_0", 0.020834 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.127339 AS "P_0", 0.127339 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.004644 AS "P_0", 0.004644 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.006910 AS "P_0", -0.006910 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.006293 AS "P_0", -0.006293 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.131890 AS "P_0", -0.131890 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.018837 AS "P_0", -0.018837 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.391962) THEN CASE WHEN (t."X_4" < -0.689002) THEN 3 ELSE CASE WHEN (t."X_4" < 0.973998) THEN CASE WHEN (t."X_8" < -0.155010) THEN 9 ELSE CASE WHEN (t."X_7" < 0.474760) THEN 11 ELSE 12 END END ELSE 8 END END ELSE CASE WHEN (t."X_3" < -1.073093) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.116471 AS "P_0", -0.116471 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.002806 AS "P_0", -0.002806 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.119486 AS "P_0", 0.119486 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.102476 AS "P_0", -0.102476 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.085071 AS "P_0", 0.085071 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.056204 AS "P_0", 0.056204 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.119502 AS "P_0", -0.119502 AS "P_1"
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
    CASE WHEN (t."X_5" < 1.050597) THEN CASE WHEN (t."X_7" < 0.832917) THEN CASE WHEN (t."X_7" < 0.474760) THEN CASE WHEN (t."X_6" < 0.041262) THEN CASE WHEN (t."X_9" < 0.415493) THEN CASE WHEN (t."X_1" < -0.820872) THEN 13 ELSE 14 END ELSE 12 END ELSE 10 END ELSE 6 END ELSE CASE WHEN (t."X_2" < -0.293115) THEN 7 ELSE 8 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.115128 AS "P_0", 0.115128 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.143298 AS "P_0", -0.143298 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.091388 AS "P_0", 0.091388 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.008870 AS "P_0", -0.008870 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.109183 AS "P_0", 0.109183 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.047812 AS "P_0", 0.047812 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.018255 AS "P_0", -0.018255 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.122082 AS "P_0", -0.122082 AS "P_1"
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
    CASE WHEN (t."X_5" < 1.050597) THEN CASE WHEN (t."X_7" < 0.832917) THEN CASE WHEN (t."X_7" < 0.474760) THEN CASE WHEN (t."X_5" < -0.815225) THEN 9 ELSE CASE WHEN (t."X_4" < -0.689002) THEN 11 ELSE CASE WHEN (t."X_7" < -0.225993) THEN 13 ELSE 14 END END END ELSE 6 END ELSE CASE WHEN (t."X_2" < -0.293115) THEN 7 ELSE 8 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.105237 AS "P_0", 0.105237 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.124507 AS "P_0", -0.124507 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.079007 AS "P_0", 0.079007 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.007494 AS "P_0", -0.007494 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.099001 AS "P_0", -0.099001 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.070286 AS "P_0", -0.070286 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.029338 AS "P_0", 0.029338 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.118705 AS "P_0", 0.118705 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.391962) THEN CASE WHEN (t."X_4" < -0.689002) THEN 3 ELSE CASE WHEN (t."X_4" < 0.973998) THEN CASE WHEN (t."X_0" < -0.890672) THEN 9 ELSE CASE WHEN (t."X_8" < -0.155010) THEN 11 ELSE 12 END END ELSE 8 END END ELSE CASE WHEN (t."X_3" < -1.073093) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.092737 AS "P_0", -0.092737 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.008021 AS "P_0", -0.008021 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.104745 AS "P_0", 0.104745 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.088035 AS "P_0", -0.088035 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.041933 AS "P_0", -0.041933 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.102823 AS "P_0", 0.102823 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.016623 AS "P_0", -0.016623 AS "P_1"
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
    CASE WHEN (t."X_5" < 1.050597) THEN CASE WHEN (t."X_1" < 0.775559) THEN CASE WHEN (t."X_2" < -0.392572) THEN 5 ELSE CASE WHEN (t."X_1" < -0.178366) THEN CASE WHEN (t."X_2" < -0.046821) THEN 9 ELSE 10 END ELSE 8 END END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.093196 AS "P_0", 0.093196 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.088893 AS "P_0", -0.088893 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.059965 AS "P_0", -0.059965 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.092226 AS "P_0", 0.092226 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.039163 AS "P_0", 0.039163 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.079119 AS "P_0", -0.079119 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.391962) THEN CASE WHEN (t."X_4" < -0.152940) THEN 3 ELSE CASE WHEN (t."X_4" < 0.260122) THEN 7 ELSE CASE WHEN (t."X_2" < 0.408459) THEN 9 ELSE 10 END END END ELSE CASE WHEN (t."X_3" < -1.073093) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.073909 AS "P_0", -0.073909 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.009263 AS "P_0", -0.009263 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.093967 AS "P_0", 0.093967 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.047242 AS "P_0", 0.047242 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.086920 AS "P_0", -0.086920 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.016340 AS "P_0", 0.016340 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.391962) THEN CASE WHEN (t."X_3" < -0.700210) THEN 3 ELSE CASE WHEN (t."X_0" < -0.890672) THEN 7 ELSE CASE WHEN (t."X_0" < -0.189211) THEN 9 ELSE 10 END END END ELSE CASE WHEN (t."X_6" < 0.878989) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.025625 AS "P_0", 0.025625 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.092880 AS "P_0", 0.092881 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.011182 AS "P_0", -0.011182 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.093749 AS "P_0", -0.093749 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.045366 AS "P_0", 0.045366 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.049788 AS "P_0", -0.049788 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.391962) THEN CASE WHEN (t."X_7" < 0.832917) THEN CASE WHEN (t."X_2" < -0.392572) THEN 7 ELSE CASE WHEN (t."X_9" < -0.253551) THEN 9 ELSE 10 END END ELSE 4 END ELSE CASE WHEN (t."X_7" < 0.268793) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.026392 AS "P_0", 0.026392 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.085396 AS "P_0", 0.085396 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.012359 AS "P_0", -0.012359 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.093815 AS "P_0", -0.093815 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.057685 AS "P_0", -0.057685 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.043469 AS "P_0", 0.043469 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.391962) THEN CASE WHEN (t."X_3" < -0.700210) THEN 3 ELSE CASE WHEN (t."X_2" < -0.120141) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_3" < -1.073093) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.026799 AS "P_0", 0.026799 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.018134 AS "P_0", -0.018134 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.080327 AS "P_0", 0.080327 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.008774 AS "P_0", 0.008774 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.072217 AS "P_0", -0.072217 AS "P_1"
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
    CASE WHEN (t."X_7" < 0.832917) THEN CASE WHEN (t."X_7" < 0.474760) THEN CASE WHEN (t."X_6" < 0.041262) THEN CASE WHEN (t."X_7" < -0.225993) THEN 7 ELSE 8 END ELSE 6 END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.045015 AS "P_0", 0.045015 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.092387 AS "P_0", -0.092387 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.101560 AS "P_0", 0.101560 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.084789 AS "P_0", -0.084789 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.022848 AS "P_0", 0.022848 AS "P_1"
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
    CASE WHEN (t."X_4" < 0.260122) THEN CASE WHEN (t."X_2" < -0.392572) THEN 3 ELSE CASE WHEN (t."X_8" < 0.589049) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_7" < 0.474760) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.035467 AS "P_0", -0.035467 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.026534 AS "P_0", 0.026534 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.073106 AS "P_0", -0.073105 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.078338 AS "P_0", 0.078338 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.021147 AS "P_0", 0.021147 AS "P_1"
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
    CASE WHEN (t."X_6" < 0.221501) THEN CASE WHEN (t."X_7" < 0.832917) THEN CASE WHEN (t."X_9" < -0.253551) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_7" < 0.474760) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.044106 AS "P_0", 0.044106 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.089608 AS "P_0", 0.089608 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.038686 AS "P_0", -0.038686 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.083860 AS "P_0", -0.083860 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.010959 AS "P_0", -0.010959 AS "P_1"
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
    CASE WHEN (t."X_4" < 0.260122) THEN CASE WHEN (t."X_0" < 0.444082) THEN CASE WHEN (t."X_7" < 0.268793) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_7" < 0.474760) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.037141 AS "P_0", -0.037141 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.017989 AS "P_0", 0.017989 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.058510 AS "P_0", -0.058510 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.009038 AS "P_0", 0.009038 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.079601 AS "P_0", 0.079601 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.391962) THEN CASE WHEN (t."X_1" < -0.820872) THEN 3 ELSE CASE WHEN (t."X_5" < -0.451798) THEN 5 ELSE 6 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.040061 AS "P_0", 0.040061 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  -0.023837 AS "P_0", 0.023837 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.065686 AS "P_0", -0.065686 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.002316 AS "P_0", 0.002316 AS "P_1"
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
    CASE WHEN (t."X_7" < 0.570767) THEN CASE WHEN (t."X_8" < 0.850333) THEN CASE WHEN (t."X_9" < 0.199837) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.037074 AS "P_0", 0.037074 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.028314 AS "P_0", 0.028314 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.011029 AS "P_0", -0.011029 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.056896 AS "P_0", -0.056896 AS "P_1"
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
    CASE WHEN (t."X_6" < 0.221501) THEN CASE WHEN (t."X_7" < 0.832917) THEN CASE WHEN (t."X_0" < -0.576757) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.032619 AS "P_0", 0.032619 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.031685 AS "P_0", 0.031685 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.012615 AS "P_0", -0.012615 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.056164 AS "P_0", -0.056164 AS "P_1"
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
    CASE WHEN (t."X_4" < 0.260122) THEN CASE WHEN (t."X_2" < -0.392572) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_7" < 0.474760) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.026949 AS "P_0", -0.026949 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.054935 AS "P_0", 0.054934 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.018163 AS "P_0", 0.018163 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.056999 AS "P_0", -0.056999 AS "P_1"
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
    CASE WHEN (t."X_6" < 0.221501) THEN CASE WHEN (t."X_7" < 0.268793) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.030170 AS "P_0", 0.030170 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.054046 AS "P_0", -0.054046 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.014210 AS "P_0", 0.014210 AS "P_1"
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
    CASE WHEN (t."X_4" < 0.260122) THEN CASE WHEN (t."X_2" < -0.392572) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_9" < -0.077859) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.021581 AS "P_0", -0.021581 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.047948 AS "P_0", 0.047948 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.005609 AS "P_0", 0.005609 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.049286 AS "P_0", -0.049286 AS "P_1"
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
    CASE WHEN (t."X_6" < 0.221501) THEN CASE WHEN (t."X_2" < -0.120141) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.027690 AS "P_0", 0.027690 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  -0.010159 AS "P_0", 0.010159 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.050108 AS "P_0", -0.050108 AS "P_1"
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
    CASE WHEN (t."X_7" < 0.570767) THEN CASE WHEN (t."X_8" < 0.850333) THEN CASE WHEN (t."X_5" < -0.451798) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.028412 AS "P_0", 0.028412 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.014109 AS "P_0", 0.014109 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.003305 AS "P_0", -0.003305 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.046653 AS "P_0", -0.046653 AS "P_1"
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
    CASE WHEN (t."X_1" < -0.820872) THEN 1 ELSE CASE WHEN (t."X_6" < 0.221501) THEN CASE WHEN (t."X_9" < 0.199837) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  -0.031385 AS "P_0", 0.031385 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.026679 AS "P_0", 0.026679 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.075760 AS "P_0", -0.075761 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.006428 AS "P_0", 0.006428 AS "P_1"
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
    CASE WHEN (t."X_4" < 0.260122) THEN CASE WHEN (t."X_7" < 0.268793) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_9" < -0.077859) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.011738 AS "P_0", -0.011738 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.040589 AS "P_0", 0.040589 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.004553 AS "P_0", 0.004553 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.044097 AS "P_0", -0.044097 AS "P_1"
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
    CASE WHEN (t."X_5" < 0.391962) THEN CASE WHEN (t."X_0" < 0.444082) THEN CASE WHEN (t."X_8" < 0.425589) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.028535 AS "P_0", 0.028535 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.041227 AS "P_0", -0.041227 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.013245 AS "P_0", -0.013245 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.017675 AS "P_0", 0.017675 AS "P_1"
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
   0.500000 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.500000 + SUM(t."P_1") AS "Score_1",
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