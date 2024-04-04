WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_18" < 1.000000) THEN CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_44" < 4.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_45" < 4.000000) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_28" < 1.000000) THEN 41 ELSE 42 END END ELSE 14 END ELSE CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_17" < 1.000000) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_11" < 1.000000) THEN 45 ELSE 46 END END ELSE CASE WHEN (t."X_32" < 1.000000) THEN CASE WHEN (t."X_8" < 131662.000000) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_8" < 177420.000000) THEN 49 ELSE 50 END END END END ELSE 4 END ELSE CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_16" < 9.000000) THEN CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 51 ELSE 52 END ELSE 30 END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_45" < 2.000000) THEN 55 ELSE 56 END END END ELSE 10 END ELSE CASE WHEN (t."X_45" < 2.000000) THEN CASE WHEN (t."X_36" < 1.000000) THEN CASE WHEN (t."X_45" < 1.000000) THEN CASE WHEN (t."X_2" < 1.000000) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_0" < 4.000000) THEN 59 ELSE 60 END END ELSE 20 END ELSE CASE WHEN (t."X_30" < 1.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN 35 ELSE CASE WHEN (t."X_43" < 4.000000) THEN 61 ELSE 62 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN 37 ELSE 38 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.382829 AS "P_0", 0.382829 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.376360 AS "P_0", 0.376360 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.044857 AS "P_0", -0.044857 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.214987 AS "P_0", 0.214987 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  -0.043885 AS "P_0", 0.043885 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.053768 AS "P_0", -0.053768 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  0.034143 AS "P_0", -0.034143 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.141663 AS "P_0", 0.141663 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.234286 AS "P_0", -0.234286 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  0.167818 AS "P_0", -0.167818 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  0.215376 AS "P_0", -0.215376 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  0.126616 AS "P_0", -0.126616 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  0.209550 AS "P_0", -0.209550 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  0.120638 AS "P_0", -0.120638 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  0.068381 AS "P_0", -0.068381 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  0.140798 AS "P_0", -0.140798 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.054505 AS "P_0", -0.054505 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  0.217985 AS "P_0", -0.217985 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.081511 AS "P_0", -0.081511 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  -0.071069 AS "P_0", 0.071069 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.199788 AS "P_0", -0.199788 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  0.141754 AS "P_0", -0.141754 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  0.168536 AS "P_0", -0.168536 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  0.073498 AS "P_0", -0.073498 AS "P_1"
    UNION ALL
    SELECT 55 AS nid,  0.119043 AS "P_0", -0.119043 AS "P_1"
    UNION ALL
    SELECT 56 AS nid,  -0.043625 AS "P_0", 0.043625 AS "P_1"
    UNION ALL
    SELECT 57 AS nid,  0.142272 AS "P_0", -0.142272 AS "P_1"
    UNION ALL
    SELECT 58 AS nid,  -0.023864 AS "P_0", 0.023864 AS "P_1"
    UNION ALL
    SELECT 59 AS nid,  -0.123985 AS "P_0", 0.123985 AS "P_1"
    UNION ALL
    SELECT 60 AS nid,  0.011337 AS "P_0", -0.011337 AS "P_1"
    UNION ALL
    SELECT 61 AS nid,  -0.257246 AS "P_0", 0.257246 AS "P_1"
    UNION ALL
    SELECT 62 AS nid,  -0.387774 AS "P_0", 0.387774 AS "P_1"
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
    CASE WHEN (t."X_18" < 1.000000) THEN CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_44" < 4.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_16" < 10.000000) THEN 45 ELSE 46 END END ELSE 14 END ELSE CASE WHEN (t."X_0" < 1.000000) THEN 15 ELSE CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_32" < 1.000000) THEN 49 ELSE 50 END END END END ELSE 4 END ELSE CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_16" < 9.000000) THEN CASE WHEN (t."X_25" < 1.000000) THEN CASE WHEN (t."X_0" < 4.000000) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_8" < 221650.000000) THEN 53 ELSE 54 END END ELSE CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_28" < 1.000000) THEN 55 ELSE 56 END ELSE 32 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_16" < 10.000000) THEN 33 ELSE CASE WHEN (t."X_8" < 196232.000000) THEN 57 ELSE 58 END END ELSE CASE WHEN (t."X_45" < 2.000000) THEN 35 ELSE CASE WHEN (t."X_15" < 1.000000) THEN 59 ELSE 60 END END END END ELSE CASE WHEN (t."X_45" < 1.000000) THEN CASE WHEN (t."X_2" < 1.000000) THEN CASE WHEN (t."X_0" < 4.000000) THEN 37 ELSE 38 END ELSE 22 END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_36" < 1.000000) THEN 61 ELSE 62 END ELSE 40 END ELSE CASE WHEN (t."X_4" < 1.000000) THEN 41 ELSE 42 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.255008 AS "P_0", 0.255008 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.033776 AS "P_0", -0.033776 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.201801 AS "P_0", -0.201801 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.047345 AS "P_0", 0.047345 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.244120 AS "P_0", 0.244120 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  0.059492 AS "P_0", -0.059492 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.027658 AS "P_0", -0.027658 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  0.156164 AS "P_0", -0.156164 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  0.021062 AS "P_0", -0.021062 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  -0.177421 AS "P_0", 0.177421 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  -0.190272 AS "P_0", 0.190272 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  -0.081728 AS "P_0", 0.081728 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  0.202178 AS "P_0", -0.202178 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  0.172429 AS "P_0", -0.172429 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  0.190899 AS "P_0", -0.190899 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  0.147154 AS "P_0", -0.147154 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.152469 AS "P_0", -0.152469 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  0.086733 AS "P_0", -0.086733 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.109355 AS "P_0", -0.109355 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  -0.010791 AS "P_0", 0.010791 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.116778 AS "P_0", -0.116778 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  0.182906 AS "P_0", -0.182906 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  0.025756 AS "P_0", -0.025756 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  0.149783 AS "P_0", -0.149783 AS "P_1"
    UNION ALL
    SELECT 55 AS nid,  0.035800 AS "P_0", -0.035800 AS "P_1"
    UNION ALL
    SELECT 56 AS nid,  -0.100355 AS "P_0", 0.100355 AS "P_1"
    UNION ALL
    SELECT 57 AS nid,  0.048358 AS "P_0", -0.048358 AS "P_1"
    UNION ALL
    SELECT 58 AS nid,  -0.076346 AS "P_0", 0.076346 AS "P_1"
    UNION ALL
    SELECT 59 AS nid,  -0.122147 AS "P_0", 0.122147 AS "P_1"
    UNION ALL
    SELECT 60 AS nid,  -0.239093 AS "P_0", 0.239093 AS "P_1"
    UNION ALL
    SELECT 61 AS nid,  -0.020831 AS "P_0", 0.020830 AS "P_1"
    UNION ALL
    SELECT 62 AS nid,  -0.161525 AS "P_0", 0.161525 AS "P_1"
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
    CASE WHEN (t."X_18" < 1.000000) THEN CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_28" < 1.000000) THEN CASE WHEN (t."X_26" < 1.000000) THEN CASE WHEN (t."X_25" < 1.000000) THEN 45 ELSE 46 END ELSE CASE WHEN (t."X_45" < 3.000000) THEN 47 ELSE 48 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_8" < 221650.000000) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_8" < 177420.000000) THEN 51 ELSE 52 END END END ELSE CASE WHEN (t."X_0" < 1.000000) THEN 15 ELSE CASE WHEN (t."X_45" < 2.000000) THEN CASE WHEN (t."X_28" < 1.000000) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_16" < 16.000000) THEN 55 ELSE 56 END END END END ELSE 4 END ELSE CASE WHEN (t."X_16" < 10.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN 31 ELSE CASE WHEN (t."X_41" < 1.000000) THEN 57 ELSE 58 END END ELSE CASE WHEN (t."X_45" < 2.000000) THEN CASE WHEN (t."X_36" < 1.000000) THEN 59 ELSE 60 END ELSE CASE WHEN (t."X_36" < 1.000000) THEN 61 ELSE 62 END END END ELSE CASE WHEN (t."X_4" < 1.000000) THEN CASE WHEN (t."X_12" < 1.000000) THEN 35 ELSE 36 END ELSE CASE WHEN (t."X_0" < 3.000000) THEN 37 ELSE 38 END END END ELSE CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_31" < 1.000000) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_4" < 1.000000) THEN 41 ELSE 42 END END ELSE CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_50" < 1.000000) THEN 43 ELSE 44 END ELSE 24 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.209015 AS "P_0", 0.209017 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.179854 AS "P_0", -0.179854 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.235831 AS "P_0", 0.235831 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.174974 AS "P_0", -0.174974 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.060882 AS "P_0", -0.060882 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.062121 AS "P_0", 0.062121 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  0.187771 AS "P_0", -0.187771 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  0.038129 AS "P_0", -0.038129 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.178886 AS "P_0", -0.178886 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  0.108838 AS "P_0", -0.108838 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  -0.052864 AS "P_0", 0.052864 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  0.068984 AS "P_0", -0.068984 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  0.002251 AS "P_0", -0.002251 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  -0.111337 AS "P_0", 0.111337 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  0.177459 AS "P_0", -0.177459 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  0.141247 AS "P_0", -0.141247 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.155719 AS "P_0", -0.155719 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  0.046329 AS "P_0", -0.046329 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.171587 AS "P_0", -0.171587 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  0.064322 AS "P_0", -0.064322 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.104672 AS "P_0", -0.104672 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  -0.020961 AS "P_0", 0.020961 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  0.193593 AS "P_0", -0.193593 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  0.076349 AS "P_0", -0.076349 AS "P_1"
    UNION ALL
    SELECT 55 AS nid,  0.063210 AS "P_0", -0.063210 AS "P_1"
    UNION ALL
    SELECT 56 AS nid,  -0.113248 AS "P_0", 0.113248 AS "P_1"
    UNION ALL
    SELECT 57 AS nid,  0.196761 AS "P_0", -0.196761 AS "P_1"
    UNION ALL
    SELECT 58 AS nid,  0.096415 AS "P_0", -0.096415 AS "P_1"
    UNION ALL
    SELECT 59 AS nid,  0.151048 AS "P_0", -0.151048 AS "P_1"
    UNION ALL
    SELECT 60 AS nid,  0.071813 AS "P_0", -0.071813 AS "P_1"
    UNION ALL
    SELECT 61 AS nid,  0.028466 AS "P_0", -0.028466 AS "P_1"
    UNION ALL
    SELECT 62 AS nid,  -0.109309 AS "P_0", 0.109309 AS "P_1"
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
    CASE WHEN (t."X_18" < 1.000000) THEN CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_44" < 4.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_45" < 4.000000) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_16" < 10.000000) THEN 41 ELSE 42 END END ELSE 14 END ELSE CASE WHEN (t."X_0" < 1.000000) THEN 15 ELSE CASE WHEN (t."X_45" < 2.000000) THEN CASE WHEN (t."X_28" < 1.000000) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_5" < 1.000000) THEN 45 ELSE 46 END END END END ELSE 4 END ELSE CASE WHEN (t."X_16" < 11.000000) THEN CASE WHEN (t."X_30" < 1.000000) THEN CASE WHEN (t."X_27" < 1.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_16" < 10.000000) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_43" < 4.000000) THEN 49 ELSE 50 END END ELSE CASE WHEN (t."X_8" < 196232.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_0" < 2.000000) THEN 53 ELSE 54 END END END ELSE CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN 55 ELSE 56 END ELSE CASE WHEN (t."X_45" < 2.000000) THEN 57 ELSE 58 END END ELSE CASE WHEN (t."X_6" < 1.000000) THEN CASE WHEN (t."X_12" < 1.000000) THEN 59 ELSE 60 END ELSE CASE WHEN (t."X_12" < 1.000000) THEN 61 ELSE 62 END END END END ELSE CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_3" < 1.000000) THEN CASE WHEN (t."X_30" < 1.000000) THEN 35 ELSE 36 END ELSE CASE WHEN (t."X_13" < 1.000000) THEN 37 ELSE 38 END END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.184229 AS "P_0", 0.184229 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.203549 AS "P_0", 0.203549 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.012139 AS "P_0", 0.012139 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.165036 AS "P_0", -0.165036 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.065019 AS "P_0", 0.065019 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  0.026110 AS "P_0", -0.026110 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  -0.202429 AS "P_0", 0.202429 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.082577 AS "P_0", 0.082577 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.167932 AS "P_0", -0.167932 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  0.078604 AS "P_0", -0.078604 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  0.152765 AS "P_0", -0.152765 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  0.098108 AS "P_0", -0.098108 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  0.175724 AS "P_0", -0.175724 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  0.059777 AS "P_0", -0.059777 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  0.030073 AS "P_0", -0.030073 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  0.167732 AS "P_0", -0.167732 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.070599 AS "P_0", -0.070599 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  -0.003325 AS "P_0", 0.003325 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  -0.031318 AS "P_0", 0.031318 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  -0.210276 AS "P_0", 0.210276 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.201466 AS "P_0", -0.201466 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  0.130075 AS "P_0", -0.130075 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  0.144486 AS "P_0", -0.144486 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  0.006825 AS "P_0", -0.006825 AS "P_1"
    UNION ALL
    SELECT 55 AS nid,  0.139054 AS "P_0", -0.139054 AS "P_1"
    UNION ALL
    SELECT 56 AS nid,  0.050704 AS "P_0", -0.050704 AS "P_1"
    UNION ALL
    SELECT 57 AS nid,  0.100056 AS "P_0", -0.100056 AS "P_1"
    UNION ALL
    SELECT 58 AS nid,  -0.019357 AS "P_0", 0.019357 AS "P_1"
    UNION ALL
    SELECT 59 AS nid,  0.166462 AS "P_0", -0.166462 AS "P_1"
    UNION ALL
    SELECT 60 AS nid,  0.100920 AS "P_0", -0.100920 AS "P_1"
    UNION ALL
    SELECT 61 AS nid,  -0.005741 AS "P_0", 0.005741 AS "P_1"
    UNION ALL
    SELECT 62 AS nid,  0.124345 AS "P_0", -0.124345 AS "P_1"
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
    CASE WHEN (t."X_18" < 1.000000) THEN CASE WHEN (t."X_16" < 13.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_28" < 1.000000) THEN 27 ELSE 28 END ELSE CASE WHEN (t."X_25" < 1.000000) THEN CASE WHEN (t."X_28" < 1.000000) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_14" < 1.000000) THEN 51 ELSE 52 END END END ELSE CASE WHEN (t."X_30" < 1.000000) THEN CASE WHEN (t."X_12" < 1.000000) THEN CASE WHEN (t."X_42" < 1.000000) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_42" < 1.000000) THEN 55 ELSE 56 END END ELSE 18 END END ELSE CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_34" < 1.000000) THEN CASE WHEN (t."X_45" < 2.000000) THEN CASE WHEN (t."X_35" < 1.000000) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_16" < 16.000000) THEN 59 ELSE 60 END END ELSE CASE WHEN (t."X_28" < 1.000000) THEN 35 ELSE 36 END END ELSE 10 END END ELSE CASE WHEN (t."X_16" < 10.000000) THEN CASE WHEN (t."X_43" < 4.000000) THEN CASE WHEN (t."X_45" < 2.000000) THEN CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_8" < 177420.000000) THEN 61 ELSE 62 END ELSE 38 END ELSE CASE WHEN (t."X_0" < 3.000000) THEN 39 ELSE 40 END END ELSE 12 END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_31" < 1.000000) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_36" < 1.000000) THEN 43 ELSE 44 END END ELSE CASE WHEN (t."X_45" < 2.000000) THEN CASE WHEN (t."X_15" < 1.000000) THEN 45 ELSE 46 END ELSE CASE WHEN (t."X_25" < 1.000000) THEN 47 ELSE 48 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 10 AS nid,  -0.162145 AS "P_0", 0.162145 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.188069 AS "P_0", 0.188069 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.146076 AS "P_0", -0.146076 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.161282 AS "P_0", -0.161282 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.101104 AS "P_0", -0.101104 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.171682 AS "P_0", -0.171682 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  0.084872 AS "P_0", -0.084873 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  0.135622 AS "P_0", -0.135622 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.049253 AS "P_0", -0.049253 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  -0.015174 AS "P_0", 0.015174 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  0.158171 AS "P_0", -0.158171 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  0.071221 AS "P_0", -0.071221 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  0.011999 AS "P_0", -0.011999 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  -0.090033 AS "P_0", 0.090033 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  0.040978 AS "P_0", -0.040978 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  -0.073471 AS "P_0", 0.073471 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  -0.080696 AS "P_0", 0.080696 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  0.019719 AS "P_0", -0.019719 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.136554 AS "P_0", -0.136554 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  0.048821 AS "P_0", -0.048821 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.097137 AS "P_0", -0.097137 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  -0.099087 AS "P_0", 0.099087 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  0.061617 AS "P_0", -0.061617 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  -0.040298 AS "P_0", 0.040298 AS "P_1"
    UNION ALL
    SELECT 55 AS nid,  0.154237 AS "P_0", -0.154237 AS "P_1"
    UNION ALL
    SELECT 56 AS nid,  0.064680 AS "P_0", -0.064680 AS "P_1"
    UNION ALL
    SELECT 57 AS nid,  0.144288 AS "P_0", -0.144288 AS "P_1"
    UNION ALL
    SELECT 58 AS nid,  0.010720 AS "P_0", -0.010720 AS "P_1"
    UNION ALL
    SELECT 59 AS nid,  0.035278 AS "P_0", -0.035278 AS "P_1"
    UNION ALL
    SELECT 60 AS nid,  -0.118044 AS "P_0", 0.118044 AS "P_1"
    UNION ALL
    SELECT 61 AS nid,  0.036979 AS "P_0", -0.036979 AS "P_1"
    UNION ALL
    SELECT 62 AS nid,  0.094245 AS "P_0", -0.094245 AS "P_1"
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
   0.760033 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.239967 + SUM(t."P_1") AS "Score_1",
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