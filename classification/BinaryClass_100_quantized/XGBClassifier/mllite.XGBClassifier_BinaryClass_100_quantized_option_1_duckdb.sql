WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_61" < 6.000000) THEN CASE WHEN (t."X_61" < 4.000000) THEN CASE WHEN (t."X_1" < 2.000000) THEN 7 ELSE CASE WHEN (t."X_67" < 8.000000) THEN CASE WHEN (t."X_3" < 2.000000) THEN CASE WHEN (t."X_44" < 5.000000) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_63" < 8.000000) THEN 31 ELSE 32 END END ELSE 14 END END ELSE CASE WHEN (t."X_4" < 3.000000) THEN CASE WHEN (t."X_59" < 7.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_67" < 8.000000) THEN CASE WHEN (t."X_67" < 6.000000) THEN CASE WHEN (t."X_4" < 5.000000) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_82" < 4.000000) THEN 35 ELSE 36 END END ELSE 18 END END END ELSE CASE WHEN (t."X_61" < 8.000000) THEN CASE WHEN (t."X_93" < 1.000000) THEN 11 ELSE CASE WHEN (t."X_71" < 2.000000) THEN CASE WHEN (t."X_59" < 8.000000) THEN CASE WHEN (t."X_9" < 4.000000) THEN 37 ELSE 38 END ELSE 26 END ELSE CASE WHEN (t."X_18" < 2.000000) THEN CASE WHEN (t."X_21" < 4.000000) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_67" < 2.000000) THEN 41 ELSE 42 END END END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 6 AS nid,  -0.288119 AS "P_0", 0.288119 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.287027 AS "P_0", -0.287027 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.000000 AS "P_0", -0.000000 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.285366 AS "P_0", -0.285366 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.281818 AS "P_0", -0.281818 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.115385 AS "P_0", -0.115385 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.272727 AS "P_0", -0.272727 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.023077 AS "P_0", -0.023077 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.140000 AS "P_0", -0.140000 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  -0.133333 AS "P_0", 0.133333 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.204255 AS "P_0", -0.204255 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  0.040000 AS "P_0", -0.040000 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.104348 AS "P_0", 0.104348 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  0.183333 AS "P_0", -0.183333 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.042857 AS "P_0", 0.042857 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.235135 AS "P_0", 0.235135 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  -0.133333 AS "P_0", 0.133333 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.271429 AS "P_0", 0.271429 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  -0.023077 AS "P_0", 0.023077 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  -0.245455 AS "P_0", 0.245455 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  -0.173684 AS "P_0", 0.173684 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  -0.283178 AS "P_0", 0.283178 AS "P_1"
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
    CASE WHEN (t."X_61" < 6.000000) THEN CASE WHEN (t."X_1" < 3.000000) THEN CASE WHEN (t."X_4" < 2.000000) THEN CASE WHEN (t."X_55" < 1.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_67" < 6.000000) THEN CASE WHEN (t."X_16" < 7.000000) THEN CASE WHEN (t."X_20" < 8.000000) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_74" < 5.000000) THEN 41 ELSE 42 END END ELSE 18 END END ELSE CASE WHEN (t."X_67" < 8.000000) THEN CASE WHEN (t."X_61" < 3.000000) THEN CASE WHEN (t."X_31" < 2.000000) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_67" < 6.000000) THEN CASE WHEN (t."X_67" < 5.000000) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_36" < 2.000000) THEN 45 ELSE 46 END END END ELSE 10 END END ELSE CASE WHEN (t."X_1" < 5.000000) THEN CASE WHEN (t."X_32" < 7.000000) THEN CASE WHEN (t."X_42" < 5.000000) THEN 21 ELSE 22 END ELSE 12 END ELSE CASE WHEN (t."X_63" < 3.000000) THEN CASE WHEN (t."X_84" < 8.000000) THEN CASE WHEN (t."X_27" < 8.000000) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_8" < 5.000000) THEN 35 ELSE 36 END END ELSE CASE WHEN (t."X_98" < 1.000000) THEN CASE WHEN (t."X_73" < 4.000000) THEN 37 ELSE 38 END ELSE 26 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 10 AS nid,  0.221379 AS "P_0", -0.221379 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.216090 AS "P_0", 0.216090 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.150841 AS "P_0", -0.150841 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.233903 AS "P_0", -0.233903 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.234296 AS "P_0", -0.234296 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.159755 AS "P_0", 0.159755 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.117043 AS "P_0", -0.117043 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.228066 AS "P_0", 0.228066 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.007910 AS "P_0", 0.007910 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.224422 AS "P_0", -0.224422 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.223567 AS "P_0", 0.223567 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  -0.055023 AS "P_0", 0.055023 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.091231 AS "P_0", -0.091231 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.162772 AS "P_0", 0.162772 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  -0.022227 AS "P_0", 0.022227 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.201196 AS "P_0", 0.201196 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.224930 AS "P_0", -0.224930 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  0.030314 AS "P_0", -0.030314 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  0.078374 AS "P_0", -0.078374 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  -0.197348 AS "P_0", 0.197348 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  -0.029977 AS "P_0", 0.029977 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  0.191257 AS "P_0", -0.191257 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  0.045351 AS "P_0", -0.045351 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  -0.179660 AS "P_0", 0.179660 AS "P_1"
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
    CASE WHEN (t."X_61" < 6.000000) THEN CASE WHEN (t."X_1" < 3.000000) THEN CASE WHEN (t."X_4" < 2.000000) THEN CASE WHEN (t."X_55" < 1.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_67" < 6.000000) THEN CASE WHEN (t."X_16" < 5.000000) THEN CASE WHEN (t."X_45" < 3.000000) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_44" < 5.000000) THEN 39 ELSE 40 END END ELSE 18 END END ELSE CASE WHEN (t."X_67" < 8.000000) THEN CASE WHEN (t."X_20" < 6.000000) THEN CASE WHEN (t."X_61" < 3.000000) THEN CASE WHEN (t."X_98" < 6.000000) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_36" < 5.000000) THEN 43 ELSE 44 END END ELSE CASE WHEN (t."X_63" < 8.000000) THEN CASE WHEN (t."X_47" < 2.000000) THEN 45 ELSE 46 END ELSE 32 END END ELSE 10 END END ELSE CASE WHEN (t."X_61" < 7.000000) THEN CASE WHEN (t."X_28" < 4.000000) THEN CASE WHEN (t."X_90" < 3.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_15" < 3.000000) THEN 23 ELSE CASE WHEN (t."X_82" < 3.000000) THEN 33 ELSE CASE WHEN (t."X_35" < 5.000000) THEN 47 ELSE 48 END END END END ELSE CASE WHEN (t."X_1" < 5.000000) THEN 13 ELSE CASE WHEN (t."X_63" < 4.000000) THEN CASE WHEN (t."X_29" < 2.000000) THEN 35 ELSE CASE WHEN (t."X_99" < 7.000000) THEN 49 ELSE 50 END END ELSE 26 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 10 AS nid,  0.189374 AS "P_0", -0.189374 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.077998 AS "P_0", 0.077998 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.122780 AS "P_0", -0.122780 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.201502 AS "P_0", -0.201502 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.199191 AS "P_0", -0.199191 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.092923 AS "P_0", 0.092923 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.206493 AS "P_0", 0.206493 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.190689 AS "P_0", 0.190689 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.204078 AS "P_0", 0.204078 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.090933 AS "P_0", 0.090933 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.137048 AS "P_0", 0.137048 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.034943 AS "P_0", 0.034943 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  0.097154 AS "P_0", -0.097154 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  0.199382 AS "P_0", -0.199382 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.119713 AS "P_0", -0.119713 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  -0.155976 AS "P_0", 0.155976 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  0.062494 AS "P_0", -0.062494 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  0.194928 AS "P_0", -0.194928 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  -0.022269 AS "P_0", 0.022269 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  -0.154838 AS "P_0", 0.154838 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  -0.001926 AS "P_0", 0.001926 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  0.152944 AS "P_0", -0.152944 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  -0.016405 AS "P_0", 0.016405 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  0.175825 AS "P_0", -0.175825 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  -0.196741 AS "P_0", 0.196741 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  -0.099897 AS "P_0", 0.099897 AS "P_1"
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
    CASE WHEN (t."X_61" < 6.000000) THEN CASE WHEN (t."X_4" < 2.000000) THEN CASE WHEN (t."X_55" < 1.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_67" < 8.000000) THEN CASE WHEN (t."X_61" < 2.000000) THEN CASE WHEN (t."X_2" < 3.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_55" < 3.000000) THEN CASE WHEN (t."X_40" < 5.000000) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_44" < 5.000000) THEN 31 ELSE 32 END END END ELSE 10 END END ELSE CASE WHEN (t."X_61" < 8.000000) THEN CASE WHEN (t."X_93" < 1.000000) THEN 11 ELSE CASE WHEN (t."X_71" < 2.000000) THEN CASE WHEN (t."X_59" < 8.000000) THEN CASE WHEN (t."X_74" < 5.000000) THEN 33 ELSE 34 END ELSE 26 END ELSE CASE WHEN (t."X_10" < 5.000000) THEN 27 ELSE CASE WHEN (t."X_48" < 4.000000) THEN 35 ELSE 36 END END END END ELSE CASE WHEN (t."X_86" < 8.000000) THEN 13 ELSE CASE WHEN (t."X_24" < 4.000000) THEN 19 ELSE 20 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  0.101229 AS "P_0", -0.101229 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.183358 AS "P_0", -0.183358 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.173457 AS "P_0", -0.173457 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.057335 AS "P_0", -0.057335 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.186069 AS "P_0", 0.186069 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.026837 AS "P_0", 0.026837 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.170189 AS "P_0", 0.170189 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.044493 AS "P_0", -0.044493 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.180944 AS "P_0", -0.180944 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.061027 AS "P_0", -0.061027 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.181546 AS "P_0", 0.181546 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.007126 AS "P_0", 0.007126 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  -0.158125 AS "P_0", 0.158125 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.096116 AS "P_0", -0.096116 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.029922 AS "P_0", 0.029922 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.022601 AS "P_0", 0.022601 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  -0.175612 AS "P_0", 0.175612 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.009717 AS "P_0", -0.009717 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.145193 AS "P_0", 0.145193 AS "P_1"
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
    CASE WHEN (t."X_61" < 6.000000) THEN CASE WHEN (t."X_4" < 2.000000) THEN CASE WHEN (t."X_73" < 2.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_67" < 8.000000) THEN CASE WHEN (t."X_63" < 2.000000) THEN CASE WHEN (t."X_20" < 6.000000) THEN CASE WHEN (t."X_65" < 3.000000) THEN 29 ELSE 30 END ELSE 22 END ELSE CASE WHEN (t."X_1" < 6.000000) THEN CASE WHEN (t."X_51" < 7.000000) THEN 31 ELSE 32 END ELSE CASE WHEN (t."X_87" < 5.000000) THEN 33 ELSE 34 END END END ELSE CASE WHEN (t."X_3" < 8.000000) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_61" < 8.000000) THEN CASE WHEN (t."X_74" < 1.000000) THEN 11 ELSE CASE WHEN (t."X_23" < 6.000000) THEN CASE WHEN (t."X_83" < 8.000000) THEN CASE WHEN (t."X_2" < 8.000000) THEN 35 ELSE 36 END ELSE 26 END ELSE CASE WHEN (t."X_70" < 5.000000) THEN CASE WHEN (t."X_25" < 4.000000) THEN 37 ELSE 38 END ELSE 28 END END END ELSE CASE WHEN (t."X_5" < 1.000000) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  0.089954 AS "P_0", -0.089954 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.173266 AS "P_0", -0.173266 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.066470 AS "P_0", -0.066470 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.075252 AS "P_0", 0.075252 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.168963 AS "P_0", 0.168963 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.168806 AS "P_0", -0.168806 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.096998 AS "P_0", -0.096998 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.059559 AS "P_0", -0.059559 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.047793 AS "P_0", 0.047793 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.152174 AS "P_0", 0.152174 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.019031 AS "P_0", 0.019031 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  -0.216065 AS "P_0", 0.216065 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.099545 AS "P_0", -0.099545 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.014265 AS "P_0", 0.014265 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  0.063479 AS "P_0", -0.063479 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  -0.147418 AS "P_0", 0.147418 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.182448 AS "P_0", 0.182448 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.081129 AS "P_0", 0.081129 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  0.137692 AS "P_0", -0.137692 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.048561 AS "P_0", 0.048561 AS "P_1"
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