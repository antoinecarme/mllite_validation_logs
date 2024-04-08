WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52"
  FROM "census_one_hot_original" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_18" < 1.000000) THEN CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_44" < 4.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_0" < 2.000000) THEN 49 ELSE 50 END END ELSE CASE WHEN (t."X_42" < 1.000000) THEN CASE WHEN (t."X_30" < 1.000000) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_12" < 1.000000) THEN 53 ELSE 54 END END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_44" < 4.000000) THEN 55 ELSE 56 END ELSE CASE WHEN (t."X_20" < 1.000000) THEN 57 ELSE 58 END END ELSE CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_44" < 4.000000) THEN 59 ELSE 60 END ELSE CASE WHEN (t."X_15" < 1.000000) THEN 61 ELSE 62 END END END END ELSE CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_32" < 1.000000) THEN 19 ELSE 20 END ELSE 10 END END ELSE CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_16" < 9.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 35 ELSE 36 END ELSE CASE WHEN (t."X_26" < 1.000000) THEN 37 ELSE 38 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_45" < 2.000000) THEN 41 ELSE 42 END END END ELSE CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_45" < 2.000000) THEN CASE WHEN (t."X_36" < 1.000000) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_0" < 1.000000) THEN 45 ELSE 46 END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 10 AS nid,  -0.398030 AS "P_0", 0.398030 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.398883 AS "P_0", 0.398883 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.092910 AS "P_0", 0.092910 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.345772 AS "P_0", 0.345772 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.208564 AS "P_0", -0.208564 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  0.160521 AS "P_0", -0.160521 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  0.114715 AS "P_0", -0.114715 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.028174 AS "P_0", 0.028174 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.175348 AS "P_0", -0.175348 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  0.061214 AS "P_0", -0.061214 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  0.092677 AS "P_0", -0.092677 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  -0.056741 AS "P_0", 0.056741 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  -0.030249 AS "P_0", 0.030249 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  -0.194118 AS "P_0", 0.194118 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  0.070368 AS "P_0", -0.070368 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  -0.227884 AS "P_0", 0.227884 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.234740 AS "P_0", -0.234740 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  0.217184 AS "P_0", -0.217184 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.213114 AS "P_0", -0.213114 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  0.162076 AS "P_0", -0.162076 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.029976 AS "P_0", -0.029976 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  0.202885 AS "P_0", -0.202885 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  -0.151118 AS "P_0", 0.151118 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  0.061242 AS "P_0", -0.061242 AS "P_1"
    UNION ALL
    SELECT 55 AS nid,  0.207908 AS "P_0", -0.207908 AS "P_1"
    UNION ALL
    SELECT 56 AS nid,  -0.031205 AS "P_0", 0.031205 AS "P_1"
    UNION ALL
    SELECT 57 AS nid,  -0.008675 AS "P_0", 0.008675 AS "P_1"
    UNION ALL
    SELECT 58 AS nid,  0.134741 AS "P_0", -0.134741 AS "P_1"
    UNION ALL
    SELECT 59 AS nid,  0.125242 AS "P_0", -0.125242 AS "P_1"
    UNION ALL
    SELECT 60 AS nid,  -0.195000 AS "P_0", 0.195000 AS "P_1"
    UNION ALL
    SELECT 61 AS nid,  0.022049 AS "P_0", -0.022049 AS "P_1"
    UNION ALL
    SELECT 62 AS nid,  -0.206811 AS "P_0", 0.206811 AS "P_1"
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
    CASE WHEN (t."X_18" < 1.000000) THEN CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_44" < 4.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_0" < 2.000000) THEN 49 ELSE 50 END END ELSE CASE WHEN (t."X_8" < 260254.000000) THEN CASE WHEN (t."X_26" < 1.000000) THEN 51 ELSE 52 END ELSE 32 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_0" < 1.000000) THEN 55 ELSE 56 END END ELSE CASE WHEN (t."X_15" < 1.000000) THEN CASE WHEN (t."X_26" < 1.000000) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_45" < 2.000000) THEN 59 ELSE 60 END END END END ELSE CASE WHEN (t."X_45" < 2.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 19 ELSE 20 END ELSE 10 END END ELSE CASE WHEN (t."X_16" < 10.000000) THEN CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_12" < 1.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 61 ELSE 62 END ELSE 38 END ELSE CASE WHEN (t."X_26" < 1.000000) THEN 39 ELSE 40 END END ELSE CASE WHEN (t."X_4" < 1.000000) THEN 23 ELSE 24 END END ELSE CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 41 ELSE 42 END ELSE 26 END ELSE CASE WHEN (t."X_30" < 1.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_4" < 1.000000) THEN 45 ELSE 46 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 10 AS nid,  -0.262296 AS "P_0", 0.262295 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.032155 AS "P_0", 0.032154 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.245452 AS "P_0", 0.245452 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.369355 AS "P_0", 0.369355 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.239486 AS "P_0", 0.239486 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.364804 AS "P_0", 0.364803 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  0.129915 AS "P_0", -0.129915 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  0.079571 AS "P_0", -0.079571 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.056607 AS "P_0", -0.056607 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  -0.067929 AS "P_0", 0.067929 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  0.023671 AS "P_0", -0.023671 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  -0.069353 AS "P_0", 0.069352 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  -0.093797 AS "P_0", 0.093797 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  -0.176602 AS "P_0", 0.176602 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  -0.060568 AS "P_0", 0.060568 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  0.105375 AS "P_0", -0.105375 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.200596 AS "P_0", -0.200596 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  0.182206 AS "P_0", -0.182206 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.178097 AS "P_0", -0.178097 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  0.128845 AS "P_0", -0.128845 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.002471 AS "P_0", -0.002471 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  -0.190825 AS "P_0", 0.190825 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  0.197041 AS "P_0", -0.197041 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  0.154517 AS "P_0", -0.154517 AS "P_1"
    UNION ALL
    SELECT 55 AS nid,  0.187980 AS "P_0", -0.187980 AS "P_1"
    UNION ALL
    SELECT 56 AS nid,  0.061204 AS "P_0", -0.061204 AS "P_1"
    UNION ALL
    SELECT 57 AS nid,  0.105908 AS "P_0", -0.105908 AS "P_1"
    UNION ALL
    SELECT 58 AS nid,  -0.009760 AS "P_0", 0.009760 AS "P_1"
    UNION ALL
    SELECT 59 AS nid,  0.072958 AS "P_0", -0.072958 AS "P_1"
    UNION ALL
    SELECT 60 AS nid,  -0.107666 AS "P_0", 0.107666 AS "P_1"
    UNION ALL
    SELECT 61 AS nid,  0.174723 AS "P_0", -0.174723 AS "P_1"
    UNION ALL
    SELECT 62 AS nid,  0.129431 AS "P_0", -0.129431 AS "P_1"
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
    CASE WHEN (t."X_18" < 1.000000) THEN CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_23" < 1.000000) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_28" < 1.000000) THEN 49 ELSE 50 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_26" < 1.000000) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_44" < 4.000000) THEN 53 ELSE 54 END END END ELSE CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_15" < 1.000000) THEN 55 ELSE 56 END ELSE CASE WHEN (t."X_44" < 4.000000) THEN 57 ELSE 58 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN 59 ELSE 60 END ELSE CASE WHEN (t."X_26" < 1.000000) THEN 61 ELSE 62 END END END END ELSE CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_32" < 1.000000) THEN 19 ELSE 20 END ELSE 10 END END ELSE CASE WHEN (t."X_16" < 10.000000) THEN CASE WHEN (t."X_16" < 9.000000) THEN CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_47" < 1.000000) THEN 35 ELSE 36 END ELSE CASE WHEN (t."X_0" < 2.000000) THEN 37 ELSE 38 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_45" < 2.000000) THEN 41 ELSE 42 END END END ELSE CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_28" < 1.000000) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_4" < 1.000000) THEN 45 ELSE 46 END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 10 AS nid,  -0.214479 AS "P_0", 0.214479 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.233124 AS "P_0", 0.233124 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.031244 AS "P_0", 0.031244 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.195091 AS "P_0", 0.195091 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.100890 AS "P_0", -0.100890 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  0.166921 AS "P_0", -0.166921 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  0.138056 AS "P_0", -0.138056 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.040604 AS "P_0", 0.040604 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.100540 AS "P_0", -0.100540 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  0.023052 AS "P_0", -0.023052 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  0.111287 AS "P_0", -0.111287 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  -0.009054 AS "P_0", 0.009054 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  -0.011666 AS "P_0", 0.011666 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  -0.110727 AS "P_0", 0.110727 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  -0.145963 AS "P_0", 0.145963 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  0.004172 AS "P_0", -0.004172 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.180978 AS "P_0", -0.180978 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  -0.070925 AS "P_0", 0.070925 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.162025 AS "P_0", -0.162025 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  0.080327 AS "P_0", -0.080327 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.161138 AS "P_0", -0.161138 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  0.083559 AS "P_0", -0.083559 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  0.103719 AS "P_0", -0.103719 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  -0.126155 AS "P_0", 0.126155 AS "P_1"
    UNION ALL
    SELECT 55 AS nid,  0.150953 AS "P_0", -0.150953 AS "P_1"
    UNION ALL
    SELECT 56 AS nid,  0.014239 AS "P_0", -0.014239 AS "P_1"
    UNION ALL
    SELECT 57 AS nid,  0.080775 AS "P_0", -0.080775 AS "P_1"
    UNION ALL
    SELECT 58 AS nid,  -0.143965 AS "P_0", 0.143965 AS "P_1"
    UNION ALL
    SELECT 59 AS nid,  0.161579 AS "P_0", -0.161579 AS "P_1"
    UNION ALL
    SELECT 60 AS nid,  0.045376 AS "P_0", -0.045376 AS "P_1"
    UNION ALL
    SELECT 61 AS nid,  0.010112 AS "P_0", -0.010112 AS "P_1"
    UNION ALL
    SELECT 62 AS nid,  -0.098883 AS "P_0", 0.098883 AS "P_1"
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
    CASE WHEN (t."X_18" < 1.000000) THEN CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_44" < 4.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 45 ELSE 46 END ELSE CASE WHEN (t."X_16" < 10.000000) THEN 47 ELSE 48 END END ELSE CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_52" < 1.000000) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_16" < 10.000000) THEN 51 ELSE 52 END END END ELSE CASE WHEN (t."X_11" < 1.000000) THEN CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_13" < 1.000000) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_45" < 2.000000) THEN 55 ELSE 56 END END ELSE CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_20" < 1.000000) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_45" < 3.000000) THEN 59 ELSE 60 END END END END ELSE CASE WHEN (t."X_0" < 1.000000) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_16" < 11.000000) THEN CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_27" < 1.000000) THEN CASE WHEN (t."X_30" < 1.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 61 ELSE 62 END ELSE 34 END ELSE CASE WHEN (t."X_3" < 1.000000) THEN 35 ELSE 36 END END ELSE CASE WHEN (t."X_4" < 1.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_8" < 130714.000000) THEN 39 ELSE 40 END END END ELSE CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_27" < 1.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_45" < 3.000000) THEN 43 ELSE 44 END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 9 AS nid,  -0.101962 AS "P_0", 0.101962 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.190120 AS "P_0", 0.190120 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.200139 AS "P_0", 0.200139 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  0.052562 AS "P_0", -0.052562 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.133151 AS "P_0", -0.133151 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.003417 AS "P_0", 0.003417 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  0.100906 AS "P_0", -0.100906 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.087731 AS "P_0", 0.087731 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.093924 AS "P_0", -0.093924 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  0.015376 AS "P_0", -0.015376 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  -0.021456 AS "P_0", 0.021456 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  -0.081229 AS "P_0", 0.081229 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  0.140671 AS "P_0", -0.140671 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  -0.002757 AS "P_0", 0.002757 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  0.168000 AS "P_0", -0.168000 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  0.141832 AS "P_0", -0.141832 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.053513 AS "P_0", -0.053513 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  -0.089926 AS "P_0", 0.089926 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.172415 AS "P_0", -0.172415 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  0.077427 AS "P_0", -0.077427 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.115276 AS "P_0", -0.115276 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  0.061784 AS "P_0", -0.061784 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  -0.031920 AS "P_0", 0.031920 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  0.058001 AS "P_0", -0.058001 AS "P_1"
    UNION ALL
    SELECT 55 AS nid,  0.117070 AS "P_0", -0.117070 AS "P_1"
    UNION ALL
    SELECT 56 AS nid,  -0.106424 AS "P_0", 0.106424 AS "P_1"
    UNION ALL
    SELECT 57 AS nid,  0.050402 AS "P_0", -0.050402 AS "P_1"
    UNION ALL
    SELECT 58 AS nid,  0.162507 AS "P_0", -0.162507 AS "P_1"
    UNION ALL
    SELECT 59 AS nid,  0.099794 AS "P_0", -0.099794 AS "P_1"
    UNION ALL
    SELECT 60 AS nid,  0.031474 AS "P_0", -0.031474 AS "P_1"
    UNION ALL
    SELECT 61 AS nid,  0.042141 AS "P_0", -0.042141 AS "P_1"
    UNION ALL
    SELECT 62 AS nid,  -0.022493 AS "P_0", 0.022493 AS "P_1"
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
    CASE WHEN (t."X_18" < 1.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_44" < 4.000000) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_45" < 3.000000) THEN 49 ELSE 50 END END ELSE CASE WHEN (t."X_42" < 1.000000) THEN CASE WHEN (t."X_26" < 1.000000) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_28" < 1.000000) THEN 53 ELSE 54 END END END ELSE CASE WHEN (t."X_45" < 2.000000) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_20" < 1.000000) THEN 33 ELSE CASE WHEN (t."X_45" < 2.000000) THEN 55 ELSE 56 END END ELSE CASE WHEN (t."X_45" < 2.000000) THEN CASE WHEN (t."X_16" < 16.000000) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_44" < 4.000000) THEN 59 ELSE 60 END END END ELSE 10 END END ELSE CASE WHEN (t."X_16" < 10.000000) THEN CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_45" < 2.000000) THEN CASE WHEN (t."X_36" < 1.000000) THEN CASE WHEN (t."X_3" < 1.000000) THEN 61 ELSE 62 END ELSE 38 END ELSE CASE WHEN (t."X_0" < 2.000000) THEN 39 ELSE 40 END END ELSE CASE WHEN (t."X_41" < 1.000000) THEN 23 ELSE 24 END END ELSE CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_45" < 2.000000) THEN CASE WHEN (t."X_36" < 1.000000) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_4" < 1.000000) THEN 43 ELSE 44 END END ELSE CASE WHEN (t."X_0" < 4.000000) THEN 27 ELSE CASE WHEN (t."X_8" < 260254.000000) THEN 45 ELSE 46 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 10 AS nid,  -0.178892 AS "P_0", 0.178892 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.008098 AS "P_0", 0.008098 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.169469 AS "P_0", 0.169469 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.142304 AS "P_0", 0.142304 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.250021 AS "P_0", 0.250021 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.189256 AS "P_0", 0.189256 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  0.058033 AS "P_0", -0.058033 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  0.039079 AS "P_0", -0.039079 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.059009 AS "P_0", -0.059009 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  0.006516 AS "P_0", -0.006516 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  0.071433 AS "P_0", -0.071433 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  -0.033594 AS "P_0", 0.033594 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  -0.050183 AS "P_0", 0.050183 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  0.028847 AS "P_0", -0.028847 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  -0.171254 AS "P_0", 0.171254 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  -0.095836 AS "P_0", 0.095836 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.164271 AS "P_0", -0.164271 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  0.053879 AS "P_0", -0.053879 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.146261 AS "P_0", -0.146261 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  0.101374 AS "P_0", -0.101374 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.141270 AS "P_0", -0.141270 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  0.080235 AS "P_0", -0.080235 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  0.084924 AS "P_0", -0.084924 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  -0.101032 AS "P_0", 0.101032 AS "P_1"
    UNION ALL
    SELECT 55 AS nid,  0.164945 AS "P_0", -0.164945 AS "P_1"
    UNION ALL
    SELECT 56 AS nid,  0.140716 AS "P_0", -0.140716 AS "P_1"
    UNION ALL
    SELECT 57 AS nid,  0.130778 AS "P_0", -0.130778 AS "P_1"
    UNION ALL
    SELECT 58 AS nid,  0.013495 AS "P_0", -0.013495 AS "P_1"
    UNION ALL
    SELECT 59 AS nid,  0.031233 AS "P_0", -0.031233 AS "P_1"
    UNION ALL
    SELECT 60 AS nid,  -0.180553 AS "P_0", 0.180553 AS "P_1"
    UNION ALL
    SELECT 61 AS nid,  0.128256 AS "P_0", -0.128256 AS "P_1"
    UNION ALL
    SELECT 62 AS nid,  -0.006030 AS "P_0", 0.006030 AS "P_1"
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
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.760718 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.239282 + SUM(t."P_1") AS "Score_1",
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
   MAX( t."Score_0", t."Score_1" ) AS "Greatest_Score"
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
    MAX( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1" ) AS "Max_Score"
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