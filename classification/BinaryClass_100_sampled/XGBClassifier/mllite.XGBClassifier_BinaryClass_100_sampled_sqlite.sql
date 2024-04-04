WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_61" < -0.100331) THEN CASE WHEN (t."X_55" < -0.730767) THEN CASE WHEN (t."X_91" < -0.589543) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_88" < 0.727779) THEN 9 ELSE CASE WHEN (t."X_19" < -0.122861) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_14" < -0.668098) THEN CASE WHEN (t."X_63" < -0.090531) THEN 11 ELSE CASE WHEN (t."X_18" < -0.623245) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_46" < 1.322702) THEN CASE WHEN (t."X_7" < -1.353889) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_3" < 0.016355) THEN 21 ELSE 22 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  0.193878 AS "P_0", -0.193878 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.157144 AS "P_0", 0.157144 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.278521 AS "P_0", -0.278521 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.207736 AS "P_0", -0.207736 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.207736 AS "P_0", -0.207736 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.206382 AS "P_0", 0.206382 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.093813 AS "P_0", -0.093813 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.240805 AS "P_0", 0.240805 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.065662 AS "P_0", 0.065662 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.293779 AS "P_0", 0.293779 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.206382 AS "P_0", 0.206382 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.193878 AS "P_0", -0.193878 AS "P_1"
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
    CASE WHEN (t."X_61" < -0.100331) THEN CASE WHEN (t."X_81" < -1.227186) THEN 3 ELSE CASE WHEN (t."X_58" < -1.315448) THEN 7 ELSE CASE WHEN (t."X_31" < -1.212839) THEN 13 ELSE CASE WHEN (t."X_81" < -0.896516) THEN 19 ELSE 20 END END END END ELSE CASE WHEN (t."X_14" < -0.668098) THEN CASE WHEN (t."X_63" < -0.090531) THEN 9 ELSE CASE WHEN (t."X_54" < 0.024561) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_90" < -1.374215) THEN 11 ELSE CASE WHEN (t."X_98" < -1.296364) THEN 17 ELSE 18 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.096251 AS "P_0", 0.096251 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.049059 AS "P_0", 0.049059 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.170736 AS "P_0", -0.170736 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.048969 AS "P_0", -0.048969 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.020063 AS "P_0", -0.020063 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.202273 AS "P_0", 0.202273 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.093046 AS "P_0", -0.093046 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.050487 AS "P_0", -0.050487 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.230927 AS "P_0", 0.230927 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.037374 AS "P_0", -0.037374 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.224917 AS "P_0", -0.224917 AS "P_1"
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
    CASE WHEN (t."X_61" < -0.100331) THEN CASE WHEN (t."X_6" < 1.029418) THEN CASE WHEN (t."X_28" < -1.287555) THEN 7 ELSE CASE WHEN (t."X_58" < -1.315448) THEN 15 ELSE CASE WHEN (t."X_51" < 1.145852) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_17" < 0.009064) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_3" < 0.262446) THEN CASE WHEN (t."X_1" < -0.192308) THEN 11 ELSE CASE WHEN (t."X_2" < 1.196676) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_46" < 1.322702) THEN CASE WHEN (t."X_23" < 0.449465) THEN CASE WHEN (t."X_6" < -0.683715) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_26" < 0.183692) THEN 25 ELSE 26 END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  -0.054439 AS "P_0", 0.054439 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.167089 AS "P_0", 0.167089 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.109976 AS "P_0", -0.109976 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.045469 AS "P_0", -0.045469 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.167082 AS "P_0", -0.167082 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.048748 AS "P_0", 0.048749 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.199736 AS "P_0", 0.199736 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.032109 AS "P_0", 0.032109 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.198441 AS "P_0", -0.198441 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.039187 AS "P_0", -0.039187 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.032109 AS "P_0", 0.032110 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.186435 AS "P_0", 0.186435 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.156249 AS "P_0", -0.156249 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.032109 AS "P_0", 0.032109 AS "P_1"
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
    CASE WHEN (t."X_1" < -0.192308) THEN CASE WHEN (t."X_81" < -0.896516) THEN CASE WHEN (t."X_53" < 0.454853) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_67" < 1.030094) THEN CASE WHEN (t."X_93" < -0.694559) THEN CASE WHEN (t."X_18" < 0.021694) THEN CASE WHEN (t."X_57" < 0.781214) THEN 19 ELSE 20 END ELSE 14 END ELSE CASE WHEN (t."X_18" < 1.242706) THEN 15 ELSE CASE WHEN (t."X_83" < 0.319501) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_1" < 1.128963) THEN 11 ELSE CASE WHEN (t."X_3" < -0.983256) THEN 17 ELSE 18 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.182370 AS "P_0", -0.182370 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.033630 AS "P_0", -0.033630 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.145278 AS "P_0", 0.145278 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.172452 AS "P_0", -0.172452 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.138282 AS "P_0", 0.138282 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.189427 AS "P_0", 0.189427 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.011608 AS "P_0", 0.011608 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.098458 AS "P_0", 0.098458 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.053389 AS "P_0", 0.053389 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.137219 AS "P_0", -0.137219 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.136243 AS "P_0", 0.136243 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.111419 AS "P_0", -0.111419 AS "P_1"
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
    CASE WHEN (t."X_1" < -0.192308) THEN CASE WHEN (t."X_81" < -0.896516) THEN CASE WHEN (t."X_25" < 0.626756) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_67" < 1.030094) THEN CASE WHEN (t."X_39" < -0.517381) THEN CASE WHEN (t."X_3" < 0.016355) THEN 13 ELSE CASE WHEN (t."X_41" < -0.700234) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_57" < 1.325108) THEN CASE WHEN (t."X_9" < -1.377631) THEN 19 ELSE 20 END ELSE 16 END END ELSE CASE WHEN (t."X_1" < 1.128963) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.167345 AS "P_0", -0.167345 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.132093 AS "P_0", 0.132093 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.038577 AS "P_0", -0.038577 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.153522 AS "P_0", -0.153522 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.064095 AS "P_0", 0.064095 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.137596 AS "P_0", 0.137596 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.004864 AS "P_0", -0.004864 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.029261 AS "P_0", 0.029261 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.130150 AS "P_0", -0.130150 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.047171 AS "P_0", 0.047171 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.173269 AS "P_0", 0.173269 AS "P_1"
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
    CASE WHEN (t."X_61" < -0.946552) THEN CASE WHEN (t."X_26" < -1.282063) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_67" < 1.145204) THEN CASE WHEN (t."X_55" < -0.198217) THEN CASE WHEN (t."X_12" < 1.170649) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_89" < 0.042043) THEN CASE WHEN (t."X_93" < -1.024624) THEN 13 ELSE CASE WHEN (t."X_18" < 1.242706) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_61" < 0.234605) THEN 15 ELSE CASE WHEN (t."X_98" < -0.326630) THEN 19 ELSE 20 END END END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.023192 AS "P_0", -0.023192 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.153546 AS "P_0", -0.153546 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.125064 AS "P_0", -0.125064 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.161299 AS "P_0", 0.161299 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.037431 AS "P_0", 0.037431 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.074836 AS "P_0", -0.074836 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.141138 AS "P_0", -0.141138 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.152089 AS "P_0", 0.152089 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.014679 AS "P_0", -0.014679 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.043043 AS "P_0", -0.043043 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.103382 AS "P_0", 0.103382 AS "P_1"
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
    CASE WHEN (t."X_61" < -0.946552) THEN CASE WHEN (t."X_6" < -0.433400) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_67" < 1.145204) THEN CASE WHEN (t."X_55" < -0.198217) THEN CASE WHEN (t."X_36" < -0.720386) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_93" < -0.694559) THEN CASE WHEN (t."X_68" < -0.636892) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_61" < 0.601282) THEN CASE WHEN (t."X_73" < -0.032667) THEN 17 ELSE 18 END ELSE 16 END END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.015226 AS "P_0", -0.015226 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.143754 AS "P_0", -0.143754 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.113857 AS "P_0", -0.113857 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.034657 AS "P_0", 0.034657 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.149272 AS "P_0", 0.149272 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.043906 AS "P_0", 0.043906 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.119421 AS "P_0", -0.119421 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.132895 AS "P_0", 0.132895 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.108252 AS "P_0", 0.108252 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.089500 AS "P_0", -0.089500 AS "P_1"
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
    CASE WHEN (t."X_61" < 0.601282) THEN CASE WHEN (t."X_61" < -0.946552) THEN CASE WHEN (t."X_63" < -0.666361) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_67" < 1.030094) THEN CASE WHEN (t."X_38" < 0.208281) THEN CASE WHEN (t."X_67" < -0.459161) THEN 13 ELSE CASE WHEN (t."X_43" < -0.084417) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_63" < 0.148196) THEN 15 ELSE 16 END END ELSE 10 END END ELSE CASE WHEN (t."X_93" < -1.024624) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  0.032850 AS "P_0", -0.032850 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.139357 AS "P_0", 0.139357 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.011521 AS "P_0", -0.011521 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.135153 AS "P_0", -0.135153 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.120020 AS "P_0", -0.120020 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.014014 AS "P_0", -0.014014 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.098636 AS "P_0", -0.098636 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.013093 AS "P_0", -0.013093 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.016404 AS "P_0", 0.016404 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.134025 AS "P_0", 0.134025 AS "P_1"
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
    CASE WHEN (t."X_61" < -0.100331) THEN CASE WHEN (t."X_55" < -0.730767) THEN 3 ELSE CASE WHEN (t."X_88" < 0.727779) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_14" < -0.668098) THEN CASE WHEN (t."X_63" < 0.297786) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_46" < 1.322702) THEN CASE WHEN (t."X_89" < 0.795006) THEN 13 ELSE 14 END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.034438 AS "P_0", 0.034438 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.136235 AS "P_0", -0.136235 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.005052 AS "P_0", 0.005052 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.093410 AS "P_0", -0.093410 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.042046 AS "P_0", 0.042046 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.042350 AS "P_0", -0.042350 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.138852 AS "P_0", 0.138852 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.037239 AS "P_0", 0.037239 AS "P_1"
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
    CASE WHEN (t."X_1" < 0.110144) THEN CASE WHEN (t."X_81" < -0.896516) THEN 3 ELSE CASE WHEN (t."X_1" < -0.192308) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_67" < 1.030094) THEN CASE WHEN (t."X_39" < -0.517381) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_10" < 0.459443) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.041305 AS "P_0", 0.041305 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.130899 AS "P_0", -0.130899 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.003672 AS "P_0", -0.003672 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.020346 AS "P_0", 0.020346 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.126003 AS "P_0", 0.126003 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.110372 AS "P_0", -0.110372 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.036174 AS "P_0", 0.036174 AS "P_1"
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
    CASE WHEN (t."X_61" < 0.601282) THEN CASE WHEN (t."X_95" < -0.437645) THEN 3 ELSE CASE WHEN (t."X_81" < -0.896516) THEN 7 ELSE CASE WHEN (t."X_1" < -0.192308) THEN 9 ELSE CASE WHEN (t."X_58" < 0.086757) THEN 11 ELSE 12 END END END END ELSE CASE WHEN (t."X_93" < -1.024624) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.108140 AS "P_0", -0.108140 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.031794 AS "P_0", -0.031794 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.119800 AS "P_0", 0.119800 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.088771 AS "P_0", 0.088771 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.115050 AS "P_0", -0.115050 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.082267 AS "P_0", 0.082267 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.036129 AS "P_0", -0.036129 AS "P_1"
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
    CASE WHEN (t."X_61" < 0.601282) THEN CASE WHEN (t."X_54" < 0.551583) THEN CASE WHEN (t."X_92" < 0.874575) THEN CASE WHEN (t."X_21" < 0.955546) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_31" < 0.228488) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_79" < 0.774583) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  -0.113776 AS "P_0", 0.113776 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.030136 AS "P_0", -0.030136 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.006600 AS "P_0", 0.006600 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.074814 AS "P_0", 0.074814 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.037229 AS "P_0", -0.037229 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.119689 AS "P_0", -0.119689 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.005040 AS "P_0", 0.005040 AS "P_1"
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
    CASE WHEN (t."X_61" < -0.946552) THEN 1 ELSE CASE WHEN (t."X_3" < 0.262446) THEN CASE WHEN (t."X_45" < -0.444863) THEN 5 ELSE CASE WHEN (t."X_61" < -0.100331) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_86" < 0.165822) THEN CASE WHEN (t."X_23" < 0.243614) THEN 11 ELSE 12 END ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.082056 AS "P_0", -0.082056 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.020613 AS "P_0", -0.020613 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.052509 AS "P_0", 0.052509 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.025825 AS "P_0", 0.025825 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.115475 AS "P_0", 0.115475 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.015137 AS "P_0", -0.015137 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.105012 AS "P_0", -0.105012 AS "P_1"
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
    CASE WHEN (t."X_67" < 1.030094) THEN CASE WHEN (t."X_1" < 0.110144) THEN CASE WHEN (t."X_50" < -0.635999) THEN 7 ELSE CASE WHEN (t."X_69" < 0.177311) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_39" < -0.517381) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_27" < 0.465501) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  0.017991 AS "P_0", -0.017991 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.091310 AS "P_0", -0.091310 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.046938 AS "P_0", 0.046938 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.006616 AS "P_0", 0.006616 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.103799 AS "P_0", 0.103799 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.108385 AS "P_0", -0.108385 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.012016 AS "P_0", 0.012016 AS "P_1"
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
    CASE WHEN (t."X_61" < -0.100331) THEN CASE WHEN (t."X_55" < -0.730767) THEN 3 ELSE CASE WHEN (t."X_88" < 0.727779) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_25" < -0.420140) THEN CASE WHEN (t."X_22" < 0.543440) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_16" < -0.384929) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.037952 AS "P_0", 0.037952 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.110617 AS "P_0", -0.110617 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.020379 AS "P_0", 0.020379 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.017333 AS "P_0", 0.017333 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.064859 AS "P_0", -0.064859 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.022237 AS "P_0", 0.022237 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.095658 AS "P_0", 0.095658 AS "P_1"
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
    CASE WHEN (t."X_95" < -0.437645) THEN CASE WHEN (t."X_1" < 0.510031) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_89" < 0.042043) THEN CASE WHEN (t."X_4" < -0.155000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_55" < -0.198217) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.081721 AS "P_0", -0.081721 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.000310 AS "P_0", 0.000310 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.010237 AS "P_0", 0.010237 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.088459 AS "P_0", 0.088459 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.050239 AS "P_0", 0.050239 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.067066 AS "P_0", -0.067066 AS "P_1"
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
    CASE WHEN (t."X_61" < 0.601282) THEN CASE WHEN (t."X_73" < -0.032667) THEN CASE WHEN (t."X_56" < 0.011629) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_29" < -0.439180) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_25" < -0.420140) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 5 AS nid,  0.007566 AS "P_0", -0.007566 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.088449 AS "P_0", 0.088449 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.064755 AS "P_0", 0.064755 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.051304 AS "P_0", -0.051304 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.001100 AS "P_0", 0.001100 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.088756 AS "P_0", -0.088756 AS "P_1"
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
    CASE WHEN (t."X_67" < 1.030094) THEN CASE WHEN (t."X_1" < 0.110144) THEN CASE WHEN (t."X_41" < 0.107833) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_5" < 0.386037) THEN 7 ELSE 8 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.066409 AS "P_0", -0.066409 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.073392 AS "P_0", -0.073392 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.022611 AS "P_0", 0.022611 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.095237 AS "P_0", 0.095237 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.014490 AS "P_0", 0.014490 AS "P_1"
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
    CASE WHEN (t."X_61" < -0.946552) THEN 1 ELSE CASE WHEN (t."X_67" < 1.030094) THEN CASE WHEN (t."X_55" < -0.198217) THEN 5 ELSE CASE WHEN (t."X_95" < 0.490964) THEN CASE WHEN (t."X_69" < -0.036922) THEN 9 ELSE 10 END ELSE 8 END END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.059328 AS "P_0", -0.059328 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.044496 AS "P_0", -0.044496 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.096411 AS "P_0", 0.096411 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.062430 AS "P_0", 0.062430 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.068025 AS "P_0", -0.068025 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.001751 AS "P_0", 0.001751 AS "P_1"
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
    CASE WHEN (t."X_61" < 0.601282) THEN CASE WHEN (t."X_54" < 0.551583) THEN CASE WHEN (t."X_23" < -0.097099) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_74" < 0.134541) THEN 7 ELSE 8 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.048936 AS "P_0", 0.048936 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.081282 AS "P_0", -0.081282 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.006294 AS "P_0", -0.006294 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.055735 AS "P_0", 0.055735 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.020159 AS "P_0", -0.020159 AS "P_1"
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
    CASE WHEN (t."X_3" < 0.262446) THEN CASE WHEN (t."X_86" < 0.165822) THEN CASE WHEN (t."X_1" < 0.110144) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_86" < 0.165822) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.025899 AS "P_0", -0.025899 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.071991 AS "P_0", -0.071991 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.030053 AS "P_0", 0.030053 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.019468 AS "P_0", 0.019468 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.076572 AS "P_0", 0.076571 AS "P_1"
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
    CASE WHEN (t."X_95" < -0.437645) THEN 1 ELSE CASE WHEN (t."X_89" < 0.042043) THEN 3 ELSE CASE WHEN (t."X_78" < -0.238743) THEN 5 ELSE 6 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.043876 AS "P_0", -0.043876 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  -0.057727 AS "P_0", 0.057727 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.052426 AS "P_0", -0.052426 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.029792 AS "P_0", 0.029792 AS "P_1"
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
    CASE WHEN (t."X_61" < 0.601282) THEN CASE WHEN (t."X_81" < -0.896516) THEN 3 ELSE CASE WHEN (t."X_1" < -0.192308) THEN 5 ELSE 6 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.044389 AS "P_0", 0.044389 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  -0.029351 AS "P_0", 0.029351 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.084297 AS "P_0", -0.084297 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.001707 AS "P_0", 0.001707 AS "P_1"
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
    CASE WHEN (t."X_55" < -0.198217) THEN CASE WHEN (t."X_13" < -0.287848) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_93" < -0.694559) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.063393 AS "P_0", 0.063393 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.006478 AS "P_0", -0.006478 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.064702 AS "P_0", -0.064702 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.010332 AS "P_0", 0.010332 AS "P_1"
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
    CASE WHEN (t."X_67" < 1.030094) THEN CASE WHEN (t."X_4" < -0.339109) THEN 3 ELSE CASE WHEN (t."X_17" < 0.009064) THEN 5 ELSE 6 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.046643 AS "P_0", -0.046643 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.035396 AS "P_0", -0.035396 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.072720 AS "P_0", 0.072720 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.006226 AS "P_0", -0.006226 AS "P_1"
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
    CASE WHEN (t."X_55" < -0.198217) THEN CASE WHEN (t."X_91" < 0.100322) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_84" < 0.251323) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.003136 AS "P_0", -0.003136 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.052791 AS "P_0", 0.052791 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.050327 AS "P_0", -0.050327 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.020000 AS "P_0", 0.020000 AS "P_1"
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
    CASE WHEN (t."X_61" < 0.601282) THEN CASE WHEN (t."X_73" < -0.032667) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  -0.040946 AS "P_0", 0.040946 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  -0.020140 AS "P_0", 0.020140 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.053521 AS "P_0", -0.053521 AS "P_1"
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
    CASE WHEN (t."X_95" < -0.437645) THEN 1 ELSE CASE WHEN (t."X_34" < 0.380209) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.037627 AS "P_0", -0.037627 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  -0.046871 AS "P_0", 0.046871 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.014120 AS "P_0", -0.014120 AS "P_1"
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
    CASE WHEN (t."X_1" < 0.110144) THEN CASE WHEN (t."X_54" < 0.551583) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_93" < -0.313792) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.059332 AS "P_0", -0.059332 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.013926 AS "P_0", 0.013926 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.016851 AS "P_0", -0.016851 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.057161 AS "P_0", 0.057161 AS "P_1"
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
    CASE WHEN (t."X_67" < 1.030094) THEN CASE WHEN (t."X_4" < -0.155000) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.040239 AS "P_0", -0.040239 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.023703 AS "P_0", -0.023703 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.048356 AS "P_0", 0.048356 AS "P_1"
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
    CASE WHEN (t."X_88" < -0.061224) THEN CASE WHEN (t."X_84" < -0.308579) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_73" < -0.032667) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.056211 AS "P_0", -0.056211 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.010420 AS "P_0", 0.010420 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.054141 AS "P_0", 0.054141 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.016115 AS "P_0", -0.016115 AS "P_1"
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
    CASE WHEN (t."X_55" < -0.198217) THEN 1 ELSE CASE WHEN (t."X_63" < 0.148196) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  -0.029147 AS "P_0", 0.029147 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.051655 AS "P_0", -0.051655 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.010856 AS "P_0", 0.010856 AS "P_1"
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
   0.531250 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.468750 + SUM(t."P_1") AS "Score_1",
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