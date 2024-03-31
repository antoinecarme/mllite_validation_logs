WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_22" < 106.400002) THEN CASE WHEN (t."X_28" < 0.361300) THEN CASE WHEN (t."X_25" < 0.450300) THEN CASE WHEN (t."X_10" < 0.553900) THEN CASE WHEN (t."X_21" < 30.730000) THEN 21 ELSE CASE WHEN (t."X_7" < 0.022780) THEN 29 ELSE 30 END END ELSE CASE WHEN (t."X_5" < 0.059560) THEN 23 ELSE 24 END END ELSE 8 END ELSE CASE WHEN (t."X_7" < 0.051820) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_22" < 117.699997) THEN CASE WHEN (t."X_24" < 0.137600) THEN CASE WHEN (t."X_1" < 20.980000) THEN CASE WHEN (t."X_5" < 0.069450) THEN 25 ELSE 26 END ELSE CASE WHEN (t."X_4" < 0.087850) THEN 27 ELSE 28 END END ELSE CASE WHEN (t."X_1" < 16.680000) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_4" < 0.079480) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 8 AS nid,  -0.018857 AS "P_0", 0.018857 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.160925 AS "P_0", 0.160925 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.281181 AS "P_0", -0.281181 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.022753 AS "P_0", -0.022753 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.333695 AS "P_0", -0.333695 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.080922 AS "P_0", -0.080922 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.300141 AS "P_0", -0.300141 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.265084 AS "P_0", 0.265084 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.080922 AS "P_0", -0.080922 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.201543 AS "P_0", 0.201543 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.040002 AS "P_0", 0.040002 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.243616 AS "P_0", 0.243616 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.080922 AS "P_0", -0.080922 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.240644 AS "P_0", -0.240644 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.244795 AS "P_0", 0.244795 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.025624 AS "P_0", -0.025624 AS "P_1"
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
    CASE WHEN (t."X_22" < 106.400002) THEN CASE WHEN (t."X_28" < 0.361300) THEN CASE WHEN (t."X_1" < 20.980000) THEN CASE WHEN (t."X_13" < 39.930000) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_27" < 0.084110) THEN CASE WHEN (t."X_0" < 14.250000) THEN 25 ELSE 26 END ELSE CASE WHEN (t."X_22" < 91.760002) THEN CASE WHEN (t."X_1" < 22.110001) THEN 33 ELSE 34 END ELSE 28 END END END ELSE CASE WHEN (t."X_7" < 0.051820) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_21" < 19.900000) THEN CASE WHEN (t."X_7" < 0.065270) THEN 11 ELSE CASE WHEN (t."X_0" < 17.190001) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_7" < 0.051820) THEN CASE WHEN (t."X_15" < 0.016650) THEN 21 ELSE CASE WHEN (t."X_24" < 0.120600) THEN 29 ELSE CASE WHEN (t."X_19" < 0.003130) THEN 35 ELSE 36 END END END ELSE CASE WHEN (t."X_21" < 21.750000) THEN 23 ELSE CASE WHEN (t."X_24" < 0.102600) THEN 31 ELSE 32 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 9 AS nid,  -0.137760 AS "P_0", 0.137760 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.213334 AS "P_0", -0.213334 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.205003 AS "P_0", 0.205003 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.219282 AS "P_0", 0.219282 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.079144 AS "P_0", 0.079144 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.056926 AS "P_0", -0.056926 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.182640 AS "P_0", -0.182640 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.231505 AS "P_0", -0.231505 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.088395 AS "P_0", -0.088395 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.212039 AS "P_0", 0.212039 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.016599 AS "P_0", 0.016599 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.187647 AS "P_0", -0.187647 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.179780 AS "P_0", 0.179780 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.075558 AS "P_0", -0.075558 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  0.244928 AS "P_0", -0.244928 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.012047 AS "P_0", 0.012047 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  -0.125553 AS "P_0", 0.125553 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.033822 AS "P_0", 0.033822 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  0.076957 AS "P_0", -0.076957 AS "P_1"
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
    CASE WHEN (t."X_7" < 0.051820) THEN CASE WHEN (t."X_22" < 106.400002) THEN CASE WHEN (t."X_10" < 0.553900) THEN CASE WHEN (t."X_25" < 0.450300) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_7" < 0.028470) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_17" < 0.009643) THEN CASE WHEN (t."X_1" < 15.510000) THEN 17 ELSE CASE WHEN (t."X_28" < 0.258900) THEN 25 ELSE 26 END END ELSE CASE WHEN (t."X_1" < 20.980000) THEN 19 ELSE 20 END END END ELSE CASE WHEN (t."X_22" < 117.699997) THEN CASE WHEN (t."X_21" < 25.200001) THEN CASE WHEN (t."X_24" < 0.162200) THEN CASE WHEN (t."X_19" < 0.002747) THEN 27 ELSE 28 END ELSE 22 END ELSE CASE WHEN (t."X_28" < 0.271800) THEN 23 ELSE 24 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 6 AS nid,  0.207913 AS "P_0", -0.207913 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.190287 AS "P_0", 0.190287 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.023916 AS "P_0", 0.023916 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.124571 AS "P_0", 0.124571 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.103721 AS "P_0", -0.103721 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.133529 AS "P_0", 0.133529 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.174511 AS "P_0", 0.174511 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.041479 AS "P_0", -0.041479 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.028428 AS "P_0", -0.028428 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.007519 AS "P_0", -0.007519 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  0.207354 AS "P_0", -0.207354 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.043869 AS "P_0", -0.043868 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.199127 AS "P_0", -0.199127 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.065861 AS "P_0", 0.065861 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.183548 AS "P_0", 0.183548 AS "P_1"
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
    CASE WHEN (t."X_7" < 0.051820) THEN CASE WHEN (t."X_22" < 106.400002) THEN CASE WHEN (t."X_13" < 39.930000) THEN CASE WHEN (t."X_21" < 33.330002) THEN 15 ELSE CASE WHEN (t."X_27" < 0.084110) THEN 29 ELSE 30 END END ELSE CASE WHEN (t."X_8" < 0.165200) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_21" < 26.440001) THEN CASE WHEN (t."X_29" < 0.096140) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_15" < 0.016650) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_22" < 98.000000) THEN CASE WHEN (t."X_21" < 28.180000) THEN CASE WHEN (t."X_14" < 0.005820) THEN 23 ELSE 24 END ELSE 12 END ELSE CASE WHEN (t."X_21" < 19.900000) THEN CASE WHEN (t."X_20" < 17.709999) THEN 25 ELSE 26 END ELSE CASE WHEN (t."X_26" < 0.231800) THEN 27 ELSE CASE WHEN (t."X_24" < 0.102600) THEN 31 ELSE 32 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 12 AS nid,  0.124293 AS "P_0", -0.124293 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.176829 AS "P_0", 0.176829 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.105429 AS "P_0", -0.105429 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.117197 AS "P_0", 0.117197 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.158736 AS "P_0", 0.158736 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.067982 AS "P_0", -0.067982 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.169197 AS "P_0", -0.169197 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.077303 AS "P_0", 0.077302 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.025832 AS "P_0", 0.025832 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.153505 AS "P_0", 0.153505 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.146735 AS "P_0", 0.146735 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.147067 AS "P_0", -0.147067 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.028976 AS "P_0", -0.028976 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.145842 AS "P_0", 0.145842 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.111760 AS "P_0", -0.111760 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.051217 AS "P_0", -0.051217 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  0.188981 AS "P_0", -0.188981 AS "P_1"
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
    CASE WHEN (t."X_22" < 106.400002) THEN CASE WHEN (t."X_27" < 0.125200) THEN CASE WHEN (t."X_12" < 3.833000) THEN 7 ELSE CASE WHEN (t."X_18" < 0.022160) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_24" < 0.162200) THEN CASE WHEN (t."X_28" < 0.361300) THEN CASE WHEN (t."X_11" < 1.375000) THEN 23 ELSE 24 END ELSE 18 END ELSE 10 END END ELSE CASE WHEN (t."X_22" < 117.699997) THEN CASE WHEN (t."X_21" < 21.750000) THEN CASE WHEN (t."X_17" < 0.009643) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_24" < 0.120600) THEN CASE WHEN (t."X_3" < 713.299988) THEN 25 ELSE 26 END ELSE CASE WHEN (t."X_16" < 0.020480) THEN 27 ELSE 28 END END END ELSE CASE WHEN (t."X_4" < 0.079480) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  -0.162149 AS "P_0", 0.162149 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.139506 AS "P_0", -0.139506 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.017195 AS "P_0", -0.017195 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.174298 AS "P_0", -0.174298 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.091690 AS "P_0", -0.091690 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.122825 AS "P_0", 0.122825 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.056394 AS "P_0", -0.056394 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.022301 AS "P_0", 0.022301 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.148599 AS "P_0", 0.148599 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.145606 AS "P_0", 0.145606 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.012533 AS "P_0", 0.012533 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.139768 AS "P_0", 0.139768 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.107193 AS "P_0", -0.107193 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.002660 AS "P_0", 0.002660 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.164216 AS "P_0", -0.164216 AS "P_1"
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
    CASE WHEN (t."X_7" < 0.051820) THEN CASE WHEN (t."X_20" < 14.990000) THEN CASE WHEN (t."X_13" < 39.930000) THEN CASE WHEN (t."X_21" < 33.330002) THEN 13 ELSE CASE WHEN (t."X_0" < 12.160000) THEN 23 ELSE 24 END END ELSE 8 END ELSE CASE WHEN (t."X_1" < 20.980000) THEN CASE WHEN (t."X_24" < 0.137600) THEN CASE WHEN (t."X_17" < 0.005564) THEN 25 ELSE 26 END ELSE 16 END ELSE CASE WHEN (t."X_15" < 0.011800) THEN 17 ELSE CASE WHEN (t."X_12" < 2.608000) THEN 27 ELSE 28 END END END END ELSE CASE WHEN (t."X_22" < 117.699997) THEN CASE WHEN (t."X_21" < 25.200001) THEN CASE WHEN (t."X_24" < 0.162200) THEN CASE WHEN (t."X_24" < 0.150300) THEN 29 ELSE 30 END ELSE 20 END ELSE CASE WHEN (t."X_28" < 0.271800) THEN 21 ELSE 22 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 6 AS nid,  0.165483 AS "P_0", -0.165483 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.038454 AS "P_0", 0.038454 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.162593 AS "P_0", 0.162593 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.083266 AS "P_0", -0.083266 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.190120 AS "P_0", -0.190120 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.017845 AS "P_0", -0.017845 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.000022 AS "P_0", 0.000022 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.155149 AS "P_0", -0.155149 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.099307 AS "P_0", 0.099307 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  0.036926 AS "P_0", -0.036926 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.015574 AS "P_0", -0.015574 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.155888 AS "P_0", 0.155888 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.101336 AS "P_0", 0.101336 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.108422 AS "P_0", -0.108422 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.144872 AS "P_0", 0.144872 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  -0.042788 AS "P_0", 0.042788 AS "P_1"
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
    CASE WHEN (t."X_22" < 106.400002) THEN CASE WHEN (t."X_27" < 0.125200) THEN CASE WHEN (t."X_12" < 3.833000) THEN CASE WHEN (t."X_1" < 20.980000) THEN 15 ELSE CASE WHEN (t."X_27" < 0.084110) THEN 25 ELSE 26 END END ELSE CASE WHEN (t."X_19" < 0.003130) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_21" < 26.440001) THEN CASE WHEN (t."X_7" < 0.065270) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_14" < 0.005820) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_22" < 117.699997) THEN CASE WHEN (t."X_21" < 19.900000) THEN 11 ELSE CASE WHEN (t."X_24" < 0.120600) THEN CASE WHEN (t."X_9" < 0.058750) THEN 27 ELSE 28 END ELSE CASE WHEN (t."X_6" < 0.065740) THEN 29 ELSE 30 END END END ELSE CASE WHEN (t."X_4" < 0.079480) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 11 AS nid,  -0.124085 AS "P_0", 0.124085 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.018630 AS "P_0", -0.018630 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.158072 AS "P_0", -0.158072 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.157089 AS "P_0", 0.157089 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.084905 AS "P_0", -0.084906 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.106499 AS "P_0", 0.106499 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.117777 AS "P_0", 0.117777 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.002250 AS "P_0", 0.002250 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.031118 AS "P_0", 0.031118 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.129286 AS "P_0", -0.129286 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.140808 AS "P_0", 0.140808 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.076240 AS "P_0", -0.076240 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.057427 AS "P_0", -0.057427 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.113923 AS "P_0", 0.113923 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.022258 AS "P_0", -0.022258 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.134461 AS "P_0", -0.134461 AS "P_1"
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
    CASE WHEN (t."X_23" < 694.400024) THEN CASE WHEN (t."X_21" < 33.330002) THEN CASE WHEN (t."X_28" < 0.361300) THEN CASE WHEN (t."X_10" < 0.553900) THEN 15 ELSE 16 END ELSE 8 END ELSE CASE WHEN (t."X_1" < 24.490000) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_26" < 0.231800) THEN CASE WHEN (t."X_28" < 0.297300) THEN CASE WHEN (t."X_15" < 0.011800) THEN CASE WHEN (t."X_1" < 18.610001) THEN 23 ELSE 24 END ELSE 18 END ELSE 12 END ELSE CASE WHEN (t."X_21" < 19.900000) THEN CASE WHEN (t."X_20" < 17.709999) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_24" < 0.120600) THEN CASE WHEN (t."X_0" < 15.190000) THEN 25 ELSE 26 END ELSE 22 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 8 AS nid,  0.006360 AS "P_0", -0.006360 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.092257 AS "P_0", -0.092257 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.099471 AS "P_0", 0.099471 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.099631 AS "P_0", -0.099631 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.154084 AS "P_0", 0.154084 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.035557 AS "P_0", 0.035557 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.132806 AS "P_0", 0.132806 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.102675 AS "P_0", 0.102675 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.083111 AS "P_0", -0.083111 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.154518 AS "P_0", -0.154518 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.093478 AS "P_0", 0.093478 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  0.073246 AS "P_0", -0.073246 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.112455 AS "P_0", 0.112455 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.121852 AS "P_0", -0.121852 AS "P_1"
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
    CASE WHEN (t."X_22" < 117.699997) THEN CASE WHEN (t."X_1" < 20.980000) THEN CASE WHEN (t."X_27" < 0.178900) THEN CASE WHEN (t."X_13" < 39.930000) THEN CASE WHEN (t."X_27" < 0.153000) THEN CASE WHEN (t."X_22" < 106.400002) THEN 23 ELSE 24 END ELSE 18 END ELSE CASE WHEN (t."X_5" < 0.078990) THEN 19 ELSE 20 END END ELSE 8 END ELSE CASE WHEN (t."X_27" < 0.084110) THEN CASE WHEN (t."X_9" < 0.055250) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_22" < 91.760002) THEN 15 ELSE CASE WHEN (t."X_8" < 0.179800) THEN 21 ELSE CASE WHEN (t."X_14" < 0.005820) THEN 25 ELSE 26 END END END END END ELSE CASE WHEN (t."X_6" < 0.065740) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  0.014313 AS "P_0", -0.014313 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.148720 AS "P_0", -0.148720 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.091219 AS "P_0", -0.091219 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.019111 AS "P_0", -0.019111 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.126377 AS "P_0", 0.126377 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.031947 AS "P_0", 0.031947 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.027950 AS "P_0", 0.027950 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.040867 AS "P_0", -0.040867 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.069431 AS "P_0", 0.069431 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.176769 AS "P_0", -0.176770 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.149842 AS "P_0", 0.149842 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.071918 AS "P_0", 0.071918 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  -0.052541 AS "P_0", 0.052541 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.114434 AS "P_0", -0.114434 AS "P_1"
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
    CASE WHEN (t."X_23" < 694.400024) THEN CASE WHEN (t."X_21" < 33.330002) THEN CASE WHEN (t."X_28" < 0.361300) THEN CASE WHEN (t."X_13" < 39.930000) THEN 11 ELSE 12 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_27" < 0.153000) THEN CASE WHEN (t."X_1" < 19.670000) THEN CASE WHEN (t."X_24" < 0.137600) THEN CASE WHEN (t."X_20" < 17.709999) THEN 17 ELSE 18 END ELSE 14 END ELSE CASE WHEN (t."X_9" < 0.056740) THEN CASE WHEN (t."X_26" < 0.181100) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_24" < 0.120600) THEN 21 ELSE 22 END END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.006888 AS "P_0", 0.006888 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.141126 AS "P_0", -0.141126 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.003143 AS "P_0", -0.003143 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.146151 AS "P_0", 0.146151 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.023072 AS "P_0", 0.023072 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.045470 AS "P_0", -0.045470 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.132085 AS "P_0", 0.132085 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.004327 AS "P_0", 0.004327 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.032043 AS "P_0", -0.032043 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.150599 AS "P_0", -0.150599 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.088986 AS "P_0", 0.088986 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.093533 AS "P_0", -0.093533 AS "P_1"
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
    CASE WHEN (t."X_20" < 17.709999) THEN CASE WHEN (t."X_1" < 20.980000) THEN CASE WHEN (t."X_25" < 0.308900) THEN CASE WHEN (t."X_12" < 3.833000) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_24" < 0.137600) THEN 13 ELSE CASE WHEN (t."X_13" < 21.570000) THEN 19 ELSE 20 END END END ELSE CASE WHEN (t."X_27" < 0.084110) THEN CASE WHEN (t."X_19" < 0.002005) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_24" < 0.137600) THEN CASE WHEN (t."X_9" < 0.056740) THEN 21 ELSE 22 END ELSE 18 END END END ELSE CASE WHEN (t."X_26" < 0.231800) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  0.011044 AS "P_0", -0.011044 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.140049 AS "P_0", -0.140049 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.142062 AS "P_0", 0.142062 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.013101 AS "P_0", 0.013101 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.098275 AS "P_0", 0.098275 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.000604 AS "P_0", -0.000604 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.111925 AS "P_0", 0.111925 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.126755 AS "P_0", -0.126755 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.040970 AS "P_0", 0.040970 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.110749 AS "P_0", -0.110749 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.121597 AS "P_0", -0.121597 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.065139 AS "P_0", 0.065139 AS "P_1"
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
    CASE WHEN (t."X_23" < 694.400024) THEN CASE WHEN (t."X_21" < 33.330002) THEN CASE WHEN (t."X_10" < 0.553900) THEN CASE WHEN (t."X_8" < 0.215700) THEN 11 ELSE 12 END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_27" < 0.153000) THEN CASE WHEN (t."X_1" < 19.670000) THEN CASE WHEN (t."X_28" < 0.258900) THEN 13 ELSE CASE WHEN (t."X_20" < 17.709999) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_9" < 0.056740) THEN CASE WHEN (t."X_26" < 0.181100) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_24" < 0.120600) THEN 21 ELSE 22 END END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.005184 AS "P_0", 0.005184 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.129881 AS "P_0", -0.129881 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.012742 AS "P_0", 0.012742 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.138603 AS "P_0", 0.138603 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.002150 AS "P_0", 0.002150 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.115455 AS "P_0", 0.115455 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.051795 AS "P_0", 0.051795 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.072319 AS "P_0", -0.072319 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.031739 AS "P_0", -0.031739 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.125895 AS "P_0", -0.125895 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.072545 AS "P_0", 0.072545 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.077571 AS "P_0", -0.077571 AS "P_1"
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
    CASE WHEN (t."X_22" < 117.699997) THEN CASE WHEN (t."X_21" < 23.219999) THEN CASE WHEN (t."X_25" < 0.308900) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_22" < 91.760002) THEN CASE WHEN (t."X_7" < 0.034380) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_26" < 0.181100) THEN CASE WHEN (t."X_14" < 0.005820) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_24" < 0.120600) THEN 17 ELSE 18 END END END END ELSE CASE WHEN (t."X_19" < 0.001706) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  -0.001037 AS "P_0", 0.001037 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.129388 AS "P_0", -0.129388 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.133208 AS "P_0", 0.133208 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.025543 AS "P_0", 0.025543 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.117374 AS "P_0", 0.117374 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.039496 AS "P_0", -0.039496 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.082678 AS "P_0", 0.082678 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.008159 AS "P_0", -0.008159 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.005608 AS "P_0", -0.005608 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.104775 AS "P_0", -0.104775 AS "P_1"
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
    CASE WHEN (t."X_23" < 694.400024) THEN CASE WHEN (t."X_18" < 0.017130) THEN CASE WHEN (t."X_11" < 1.375000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_26" < 0.358200) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_24" < 0.137600) THEN CASE WHEN (t."X_1" < 19.670000) THEN CASE WHEN (t."X_20" < 17.709999) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_9" < 0.056740) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 6 AS nid,  0.116452 AS "P_0", -0.116452 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.097216 AS "P_0", 0.097216 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.079509 AS "P_0", -0.079509 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.128876 AS "P_0", 0.128876 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.016201 AS "P_0", 0.016201 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.106950 AS "P_0", 0.106950 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.004741 AS "P_0", -0.004741 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.101798 AS "P_0", -0.101798 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.011497 AS "P_0", 0.011497 AS "P_1"
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
    CASE WHEN (t."X_7" < 0.051820) THEN CASE WHEN (t."X_15" < 0.011800) THEN CASE WHEN (t."X_1" < 17.660000) THEN 7 ELSE CASE WHEN (t."X_7" < 0.028470) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_21" < 33.330002) THEN CASE WHEN (t."X_11" < 0.637200) THEN 15 ELSE 16 END ELSE 10 END END ELSE CASE WHEN (t."X_21" < 21.750000) THEN 5 ELSE CASE WHEN (t."X_23" < 694.400024) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  -0.048245 AS "P_0", 0.048245 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.085050 AS "P_0", 0.085050 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.024046 AS "P_0", -0.024046 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.020486 AS "P_0", -0.020486 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.116138 AS "P_0", -0.116138 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.004630 AS "P_0", 0.004630 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.107539 AS "P_0", -0.107539 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.001680 AS "P_0", -0.001680 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.129523 AS "P_0", 0.129523 AS "P_1"
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
    CASE WHEN (t."X_23" < 947.900024) THEN CASE WHEN (t."X_21" < 23.219999) THEN CASE WHEN (t."X_25" < 0.308900) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_4" < 0.091590) THEN CASE WHEN (t."X_28" < 0.271800) THEN 11 ELSE CASE WHEN (t."X_29" < 0.073430) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_7" < 0.034380) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_29" < 0.065630) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  -0.003399 AS "P_0", 0.003399 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.112273 AS "P_0", -0.112273 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.118055 AS "P_0", 0.118055 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.017714 AS "P_0", 0.017714 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.095801 AS "P_0", 0.095801 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.030809 AS "P_0", 0.030809 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.075048 AS "P_0", -0.075048 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.038164 AS "P_0", -0.038164 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.020667 AS "P_0", 0.020667 AS "P_1"
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
    CASE WHEN (t."X_22" < 91.760002) THEN CASE WHEN (t."X_18" < 0.017130) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_24" < 0.137600) THEN CASE WHEN (t."X_1" < 20.980000) THEN CASE WHEN (t."X_20" < 17.709999) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_9" < 0.056740) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_13" < 21.570000) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.011855 AS "P_0", 0.011855 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.113791 AS "P_0", 0.113791 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.025561 AS "P_0", -0.025561 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.103832 AS "P_0", -0.103833 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.105756 AS "P_0", 0.105756 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.016006 AS "P_0", -0.016006 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.088238 AS "P_0", -0.088238 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.016819 AS "P_0", 0.016819 AS "P_1"
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
    CASE WHEN (t."X_20" < 16.209999) THEN CASE WHEN (t."X_21" < 23.219999) THEN 3 ELSE CASE WHEN (t."X_15" < 0.011800) THEN 7 ELSE CASE WHEN (t."X_24" < 0.137600) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_21" < 19.900000) THEN 5 ELSE CASE WHEN (t."X_28" < 0.258900) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.107222 AS "P_0", 0.107222 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.040942 AS "P_0", 0.040942 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.039576 AS "P_0", -0.039576 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.002616 AS "P_0", 0.002615 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.095800 AS "P_0", -0.095801 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.095479 AS "P_0", 0.095479 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.043489 AS "P_0", -0.043489 AS "P_1"
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
    CASE WHEN (t."X_7" < 0.051820) THEN CASE WHEN (t."X_15" < 0.011800) THEN CASE WHEN (t."X_15" < 0.009169) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_24" < 0.137600) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_21" < 23.219999) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  -0.016195 AS "P_0", 0.016195 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.088242 AS "P_0", -0.088242 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.048594 AS "P_0", 0.048594 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.055612 AS "P_0", -0.055612 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.094984 AS "P_0", 0.094984 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.000057 AS "P_0", -0.000058 AS "P_1"
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
    CASE WHEN (t."X_22" < 91.760002) THEN CASE WHEN (t."X_7" < 0.034380) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < 19.670000) THEN CASE WHEN (t."X_27" < 0.153000) THEN CASE WHEN (t."X_28" < 0.258900) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_24" < 0.120600) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.101274 AS "P_0", 0.101274 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.006953 AS "P_0", 0.006953 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.053437 AS "P_0", -0.053437 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.018002 AS "P_0", -0.018002 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.095597 AS "P_0", -0.095597 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.084300 AS "P_0", 0.084300 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.016001 AS "P_0", 0.016001 AS "P_1"
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
    CASE WHEN (t."X_20" < 17.709999) THEN CASE WHEN (t."X_1" < 20.980000) THEN CASE WHEN (t."X_4" < 0.099340) THEN 7 ELSE CASE WHEN (t."X_14" < 0.005820) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_27" < 0.084110) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_26" < 0.231800) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  -0.000448 AS "P_0", 0.000448 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.092955 AS "P_0", -0.092955 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.103593 AS "P_0", 0.103593 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.040935 AS "P_0", 0.040935 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.057398 AS "P_0", -0.057398 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.038096 AS "P_0", -0.038096 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.047874 AS "P_0", 0.047874 AS "P_1"
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
    CASE WHEN (t."X_13" < 19.330000) THEN 1 ELSE CASE WHEN (t."X_21" < 19.900000) THEN 3 ELSE CASE WHEN (t."X_22" < 91.760002) THEN 5 ELSE CASE WHEN (t."X_28" < 0.258900) THEN 7 ELSE CASE WHEN (t."X_17" < 0.009643) THEN 9 ELSE CASE WHEN (t."X_5" < 0.125500) THEN 11 ELSE 12 END END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  -0.075801 AS "P_0", 0.075800 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  -0.049399 AS "P_0", 0.049399 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.023713 AS "P_0", 0.023713 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.014439 AS "P_0", 0.014439 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.096715 AS "P_0", -0.096715 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.017706 AS "P_0", 0.017706 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.075246 AS "P_0", -0.075245 AS "P_1"
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
    CASE WHEN (t."X_10" < 0.553900) THEN CASE WHEN (t."X_21" < 28.180000) THEN CASE WHEN (t."X_25" < 0.308900) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_9" < 0.056740) THEN 7 ELSE CASE WHEN (t."X_24" < 0.137600) THEN 9 ELSE 10 END END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.070482 AS "P_0", -0.070482 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.090052 AS "P_0", 0.090052 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.005879 AS "P_0", -0.005879 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.059907 AS "P_0", -0.059907 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.061910 AS "P_0", 0.061910 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.048749 AS "P_0", -0.048749 AS "P_1"
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
    CASE WHEN (t."X_20" < 16.209999) THEN CASE WHEN (t."X_15" < 0.011800) THEN 3 ELSE CASE WHEN (t."X_21" < 30.730000) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_7" < 0.051820) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.020472 AS "P_0", -0.020472 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.001512 AS "P_0", -0.001512 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.074625 AS "P_0", -0.074625 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.086416 AS "P_0", 0.086416 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.010245 AS "P_0", -0.010245 AS "P_1"
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
    CASE WHEN (t."X_13" < 19.330000) THEN 1 ELSE CASE WHEN (t."X_21" < 21.750000) THEN 3 ELSE CASE WHEN (t."X_15" < 0.016650) THEN 5 ELSE CASE WHEN (t."X_7" < 0.051820) THEN 7 ELSE 8 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  -0.060631 AS "P_0", 0.060631 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  -0.031766 AS "P_0", 0.031766 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.067413 AS "P_0", -0.067413 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.069949 AS "P_0", 0.069949 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.062496 AS "P_0", -0.062497 AS "P_1"
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
    CASE WHEN (t."X_22" < 106.400002) THEN CASE WHEN (t."X_18" < 0.018780) THEN CASE WHEN (t."X_11" < 1.375000) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_21" < 21.750000) THEN 5 ELSE CASE WHEN (t."X_11" < 1.217000) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.067492 AS "P_0", 0.067492 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.008523 AS "P_0", 0.008523 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.034761 AS "P_0", 0.034761 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.038994 AS "P_0", -0.038994 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.070068 AS "P_0", -0.070068 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.013983 AS "P_0", -0.013983 AS "P_1"
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
    CASE WHEN (t."X_27" < 0.153000) THEN CASE WHEN (t."X_1" < 20.980000) THEN CASE WHEN (t."X_23" < 803.599976) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_14" < 0.006831) THEN 7 ELSE 8 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.056580 AS "P_0", -0.056580 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.063284 AS "P_0", 0.063283 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.010429 AS "P_0", 0.010429 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.017070 AS "P_0", 0.017070 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.048223 AS "P_0", -0.048223 AS "P_1"
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
    CASE WHEN (t."X_10" < 0.553900) THEN CASE WHEN (t."X_27" < 0.084110) THEN 3 ELSE CASE WHEN (t."X_1" < 19.670000) THEN CASE WHEN (t."X_25" < 0.308900) THEN 7 ELSE 8 END ELSE 6 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.055544 AS "P_0", -0.055544 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  -0.073343 AS "P_0", 0.073343 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.049718 AS "P_0", -0.049718 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.056505 AS "P_0", 0.056505 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.014459 AS "P_0", -0.014459 AS "P_1"
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
    CASE WHEN (t."X_20" < 17.709999) THEN CASE WHEN (t."X_24" < 0.137600) THEN CASE WHEN (t."X_15" < 0.011800) THEN 5 ELSE 6 END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.048843 AS "P_0", -0.048844 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.019188 AS "P_0", -0.019188 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.028285 AS "P_0", -0.028285 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.075102 AS "P_0", 0.075102 AS "P_1"
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
    CASE WHEN (t."X_22" < 91.760002) THEN 1 ELSE CASE WHEN (t."X_24" < 0.137600) THEN CASE WHEN (t."X_9" < 0.056740) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  -0.044541 AS "P_0", 0.044541 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.058951 AS "P_0", -0.058951 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.035630 AS "P_0", -0.035630 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.050805 AS "P_0", 0.050804 AS "P_1"
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
    CASE WHEN (t."X_10" < 0.370400) THEN CASE WHEN (t."X_18" < 0.014470) THEN 3 ELSE CASE WHEN (t."X_24" < 0.131400) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_1" < 19.670000) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.015697 AS "P_0", -0.015696 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.005418 AS "P_0", -0.005419 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.050189 AS "P_0", -0.050189 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.062170 AS "P_0", 0.062170 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.011226 AS "P_0", 0.011226 AS "P_1"
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
    CASE WHEN (t."X_21" < 23.219999) THEN 1 ELSE CASE WHEN (t."X_7" < 0.051820) THEN CASE WHEN (t."X_15" < 0.011800) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  -0.039641 AS "P_0", 0.039641 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.056083 AS "P_0", -0.056083 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.042942 AS "P_0", -0.042942 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.040792 AS "P_0", 0.040791 AS "P_1"
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
   0.386719 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.613281 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM "union_of_trees" t
  GROUP BY t."index"
 ),
soft_max_orig_cte AS 
( SELECT t."index" AS "index", 
   -t."Score_1" AS "Score_0",
   1.0 - t."Proba_1" AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   t."Score_1" AS "Score_1",
   t."Proba_1" AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX(t."Score_0", t."Score_1") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1.*,
    ( t1."Exp_Score_0" + t1."Exp_Score_1" ) AS "Sum_Exp"
  FROM
   ( SELECT t.*,
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1" ) AS "Max_Proba"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t.*,
   CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
   CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
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