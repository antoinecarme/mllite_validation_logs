WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_80" < -0.860575) THEN 1 ELSE CASE WHEN (t."X_96" < 0.333937) THEN CASE WHEN (t."X_32" < 0.893141) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_33" < 0.552688) THEN 7 ELSE CASE WHEN (t."X_0" < 0.064271) THEN 9 ELSE CASE WHEN (t."X_0" < 0.414327) THEN 11 ELSE 12 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  56.942005 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -40.186062 AS "E"
    UNION ALL
    SELECT 6 AS nid,  -12.466640 AS "E"
    UNION ALL
    SELECT 7 AS nid,  15.694046 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -7.122464 AS "E"
    UNION ALL
    SELECT 11 AS nid,  1.613232 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.504723 AS "E"
  ) AS "Values"
 )
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_80" < -0.860575) THEN CASE WHEN (t."X_0" < -0.757753) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_96" < 0.333937) THEN CASE WHEN (t."X_25" < 0.064966) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_33" < 0.552688) THEN CASE WHEN (t."X_1" < -1.217387) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 0.064271) THEN 13 ELSE CASE WHEN (t."X_0" < 0.414327) THEN 15 ELSE 16 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  13.499604 AS "E"
    UNION ALL
    SELECT 4 AS nid,  49.840336 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -41.060204 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -14.596099 AS "E"
    UNION ALL
    SELECT 11 AS nid,  13.964961 AS "E"
    UNION ALL
    SELECT 12 AS nid,  3.378326 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -6.054095 AS "E"
    UNION ALL
    SELECT 15 AS nid,  1.371247 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.429014 AS "E"
  ) AS "Values"
 )
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_80" < -0.860575) THEN 1 ELSE CASE WHEN (t."X_96" < 0.333937) THEN CASE WHEN (t."X_31" < -0.143033) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_33" < 0.552688) THEN CASE WHEN (t."X_9" < -0.692042) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_0" < 0.064271) THEN 11 ELSE CASE WHEN (t."X_0" < 0.414327) THEN 13 ELSE 14 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 1 AS nid,  35.641533 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -10.947074 AS "E"
    UNION ALL
    SELECT 6 AS nid,  -32.848164 AS "E"
    UNION ALL
    SELECT 9 AS nid,  2.871578 AS "E"
    UNION ALL
    SELECT 10 AS nid,  11.171971 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -5.145980 AS "E"
    UNION ALL
    SELECT 13 AS nid,  1.165560 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.364662 AS "E"
  ) AS "Values"
 )
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_80" < -0.860575) THEN CASE WHEN (t."X_0" < -0.757753) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_32" < -0.093567) THEN CASE WHEN (t."X_25" < 0.064966) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_96" < 0.448919) THEN CASE WHEN (t."X_2" < -1.128427) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_4" < 0.308097) THEN 13 ELSE 14 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  6.128435 AS "E"
    UNION ALL
    SELECT 4 AS nid,  32.743961 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -26.278528 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -8.653155 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.309963 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -5.849347 AS "E"
    UNION ALL
    SELECT 13 AS nid,  8.937575 AS "E"
    UNION ALL
    SELECT 14 AS nid,  2.287712 AS "E"
  ) AS "Values"
 )
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_80" < -0.860575) THEN CASE WHEN (t."X_0" < -0.757753) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_21" < -0.028567) THEN CASE WHEN (t."X_31" < 0.412798) THEN CASE WHEN (t."X_0" < 0.652203) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_0" < 0.227229) THEN 9 ELSE CASE WHEN (t."X_0" < 0.414327) THEN 13 ELSE 14 END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  5.209170 AS "E"
    UNION ALL
    SELECT 4 AS nid,  26.195173 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -21.022823 AS "E"
    UNION ALL
    SELECT 9 AS nid,  6.411387 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -7.126326 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.263468 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.647569 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -1.099896 AS "E"
  ) AS "Values"
 )
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_80" < -0.860575) THEN CASE WHEN (t."X_0" < -0.757753) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_47" < -0.960101) THEN 5 ELSE CASE WHEN (t."X_21" < -0.028567) THEN CASE WHEN (t."X_17" < 1.085923) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_6" < -0.821127) THEN 11 ELSE CASE WHEN (t."X_0" < 0.414327) THEN 13 ELSE 14 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  4.427795 AS "E"
    UNION ALL
    SELECT 4 AS nid,  20.956135 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -20.496311 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -5.932946 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.223947 AS "E"
    UNION ALL
    SELECT 11 AS nid,  5.867783 AS "E"
    UNION ALL
    SELECT 13 AS nid,  1.124274 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.934911 AS "E"
  ) AS "Values"
 )
,
"DT_output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_80" < -0.860575) THEN CASE WHEN (t."X_1" < 0.126152) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_47" < -0.960101) THEN 5 ELSE CASE WHEN (t."X_21" < -0.028567) THEN CASE WHEN (t."X_26" < 0.101748) THEN 9 ELSE CASE WHEN (t."X_0" < 0.064271) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_6" < -0.821127) THEN 11 ELSE CASE WHEN (t."X_0" < 0.414327) THEN 15 ELSE 16 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  5.877913 AS "E"
    UNION ALL
    SELECT 4 AS nid,  20.094118 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -17.421865 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -4.769480 AS "E"
    UNION ALL
    SELECT 11 AS nid,  4.694226 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -1.117219 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.190356 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.899419 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.794675 AS "E"
  ) AS "Values"
 )
,
"DT_output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_80" < -0.860575) THEN CASE WHEN (t."X_1" < 0.126152) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_47" < -0.960101) THEN 5 ELSE CASE WHEN (t."X_21" < -0.028567) THEN CASE WHEN (t."X_97" < 0.620222) THEN 9 ELSE CASE WHEN (t."X_0" < 0.158980) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_6" < -0.821127) THEN 11 ELSE CASE WHEN (t."X_0" < 0.414327) THEN 15 ELSE 16 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  4.702332 AS "E"
    UNION ALL
    SELECT 4 AS nid,  17.080002 AS "E"
    UNION ALL
    SELECT 5 AS nid,  -14.808587 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -3.952544 AS "E"
    UNION ALL
    SELECT 11 AS nid,  3.755380 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -1.199736 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.161802 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.719535 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.675473 AS "E"
  ) AS "Values"
 )
,
"DT_output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_25" < -0.671795) THEN CASE WHEN (t."X_3" < 1.537919) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_10" < -0.562062) THEN CASE WHEN (t."X_0" < 0.414327) THEN CASE WHEN (t."X_0" < 0.227229) THEN 17 ELSE 18 END ELSE 14 END ELSE CASE WHEN (t."X_4" < -0.049077) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -12.587297 AS "E"
    UNION ALL
    SELECT 5 AS nid,  3.832072 AS "E"
    UNION ALL
    SELECT 6 AS nid,  14.517999 AS "E"
    UNION ALL
    SELECT 9 AS nid,  3.761865 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.724492 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.137532 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -3.003934 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -1.006917 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.674384 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.138950 AS "E"
  ) AS "Values"
 )
,
"DT_output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_46" < 1.630725) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_25" < -0.671795) THEN CASE WHEN (t."X_3" < 1.537919) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_10" < -0.249382) THEN CASE WHEN (t."X_0" < 0.414327) THEN CASE WHEN (t."X_0" < 0.227229) THEN 17 ELSE 18 END ELSE 14 END ELSE CASE WHEN (t."X_1" < -0.757876) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -10.699203 AS "E"
    UNION ALL
    SELECT 5 AS nid,  3.257261 AS "E"
    UNION ALL
    SELECT 6 AS nid,  12.340298 AS "E"
    UNION ALL
    SELECT 9 AS nid,  3.009491 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.615818 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.360011 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.931067 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -2.491474 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.573227 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.118107 AS "E"
  ) AS "Values"
 )
,
"DT_output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_25" < -0.671795) THEN CASE WHEN (t."X_3" < 1.537919) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_10" < -0.562062) THEN CASE WHEN (t."X_0" < 0.227229) THEN 13 ELSE CASE WHEN (t."X_0" < 0.414327) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_24" < 0.148423) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -9.094322 AS "E"
    UNION ALL
    SELECT 5 AS nid,  2.768672 AS "E"
    UNION ALL
    SELECT 6 AS nid,  10.489252 AS "E"
    UNION ALL
    SELECT 9 AS nid,  2.407593 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.523445 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.487243 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -1.930892 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.724907 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.100391 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.062900 AS "E"
  ) AS "Values"
 )
,
"DT_output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_25" < -0.671795) THEN CASE WHEN (t."X_3" < 1.537919) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_10" < -0.562062) THEN CASE WHEN (t."X_0" < 0.227229) THEN 13 ELSE CASE WHEN (t."X_0" < 0.414327) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_24" < 0.148423) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -7.730175 AS "E"
    UNION ALL
    SELECT 5 AS nid,  2.353370 AS "E"
    UNION ALL
    SELECT 6 AS nid,  8.915863 AS "E"
    UNION ALL
    SELECT 9 AS nid,  1.926074 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.444928 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.414156 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -1.496441 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.550929 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.085333 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.053465 AS "E"
  ) AS "Values"
 )
,
"DT_output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_25" < -0.671795) THEN CASE WHEN (t."X_0" < -0.301125) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_10" < -0.249382) THEN CASE WHEN (t."X_0" < 0.414327) THEN CASE WHEN (t."X_0" < 0.227229) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 1.188539) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_4" < -0.049077) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -6.570649 AS "E"
    UNION ALL
    SELECT 5 AS nid,  2.000365 AS "E"
    UNION ALL
    SELECT 6 AS nid,  7.578484 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.592682 AS "E"
    UNION ALL
    SELECT 10 AS nid,  1.800453 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -1.085190 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.317024 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.352033 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.072533 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.045445 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.177738 AS "E"
  ) AS "Values"
 )
,
"DT_output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_25" < -0.671795) THEN CASE WHEN (t."X_0" < -0.301125) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_41" < -1.014597) THEN CASE WHEN (t."X_0" < 0.227229) THEN 13 ELSE CASE WHEN (t."X_0" < 0.414327) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_37" < -0.223340) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -5.585051 AS "E"
    UNION ALL
    SELECT 5 AS nid,  1.700311 AS "E"
    UNION ALL
    SELECT 6 AS nid,  6.441710 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.474146 AS "E"
    UNION ALL
    SELECT 10 AS nid,  1.530386 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.299228 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.915574 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.304888 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.061653 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.038628 AS "E"
  ) AS "Values"
 )
,
"DT_output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_40" < 1.046873) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_25" < -0.671795) THEN CASE WHEN (t."X_0" < -0.301125) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_76" < 0.600664) THEN CASE WHEN (t."X_20" < -0.980863) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_5" < -0.984432) THEN CASE WHEN (t."X_0" < 0.227229) THEN 17 ELSE 18 END ELSE 16 END END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -4.747293 AS "E"
    UNION ALL
    SELECT 5 AS nid,  1.445263 AS "E"
    UNION ALL
    SELECT 6 AS nid,  5.475453 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.379316 AS "E"
    UNION ALL
    SELECT 10 AS nid,  1.300827 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.809392 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.275876 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.084988 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.254344 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.052405 AS "E"
  ) AS "Values"
 )
,
"DT_output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_25" < -0.671795) THEN CASE WHEN (t."X_0" < -0.301125) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_10" < -0.249382) THEN CASE WHEN (t."X_0" < 0.414327) THEN CASE WHEN (t."X_0" < 0.227229) THEN 17 ELSE 18 END ELSE 14 END ELSE CASE WHEN (t."X_13" < 0.754166) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -4.035198 AS "E"
    UNION ALL
    SELECT 5 AS nid,  1.228473 AS "E"
    UNION ALL
    SELECT 6 AS nid,  4.654134 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.303452 AS "E"
    UNION ALL
    SELECT 10 AS nid,  1.105701 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.056032 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.246826 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.772895 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.216193 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.044544 AS "E"
  ) AS "Values"
 )
,
"DT_output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_10" < 1.620184) THEN CASE WHEN (t."X_32" < -0.093567) THEN CASE WHEN (t."X_9" < -0.109777) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_66" < -0.844687) THEN CASE WHEN (t."X_0" < 0.227229) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_2" < -1.128427) THEN 19 ELSE 20 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -3.429918 AS "E"
    UNION ALL
    SELECT 5 AS nid,  1.044202 AS "E"
    UNION ALL
    SELECT 6 AS nid,  3.956012 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.248394 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.939844 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.656962 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.201955 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.199675 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.037863 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.011681 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.103503 AS "E"
  ) AS "Values"
 )
,
"DT_output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_10" < 1.620184) THEN CASE WHEN (t."X_24" < -0.565740) THEN 9 ELSE CASE WHEN (t."X_66" < -0.844687) THEN CASE WHEN (t."X_0" < 0.227229) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_6" < 0.294699) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -2.915431 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.887572 AS "E"
    UNION ALL
    SELECT 6 AS nid,  3.362608 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.558417 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.211134 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.798866 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.159740 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.032183 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.148037 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.026186 AS "E"
  ) AS "Values"
 )
,
"DT_output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_10" < 1.620184) THEN CASE WHEN (t."X_24" < -0.565740) THEN 9 ELSE CASE WHEN (t."X_66" < -0.844687) THEN CASE WHEN (t."X_0" < 0.227229) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < 0.652203) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -2.478115 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.754436 AS "E"
    UNION ALL
    SELECT 6 AS nid,  2.858217 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.474655 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.179464 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.679038 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.127792 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.027356 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.113559 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.015885 AS "E"
  ) AS "Values"
 )
,
"DT_output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_10" < 1.620184) THEN CASE WHEN (t."X_24" < -0.565740) THEN 9 ELSE CASE WHEN (t."X_66" < -0.844687) THEN CASE WHEN (t."X_0" < 0.227229) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_6" < 0.294699) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -2.106397 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.641270 AS "E"
    UNION ALL
    SELECT 6 AS nid,  2.429485 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.403457 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.152545 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.577181 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.102234 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.023252 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.087521 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.008004 AS "E"
  ) AS "Values"
 )
,
"DT_output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_10" < 1.620184) THEN CASE WHEN (t."X_8" < 1.312964) THEN CASE WHEN (t."X_66" < -0.844687) THEN CASE WHEN (t."X_2" < -1.240677) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 0.652203) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_0" < 0.158980) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -1.790437 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.545080 AS "E"
    UNION ALL
    SELECT 6 AS nid,  2.065063 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.129664 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.490604 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.342938 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.078692 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.095348 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.031398 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.049241 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.003156 AS "E"
  ) AS "Values"
 )
,
"DT_output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_10" < 1.620184) THEN CASE WHEN (t."X_8" < 1.312964) THEN CASE WHEN (t."X_66" < -0.844687) THEN CASE WHEN (t."X_2" < -1.240677) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_5" < 0.548053) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_0" < 0.158980) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -1.521872 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.463319 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.755304 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.110213 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.417014 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.291497 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.066888 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.081045 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.025119 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.038281 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.001096 AS "E"
  ) AS "Values"
 )
,
"DT_output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_10" < 1.620184) THEN CASE WHEN (t."X_8" < 1.312964) THEN CASE WHEN (t."X_66" < -0.844687) THEN CASE WHEN (t."X_2" < -1.240677) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_6" < 0.294699) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_0" < 0.158980) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -1.293592 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.393821 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.492007 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.093681 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.354460 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.247771 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.056855 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.068889 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.020096 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.031284 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.002773 AS "E"
  ) AS "Values"
 )
,
"DT_output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_10" < 1.620184) THEN CASE WHEN (t."X_8" < 1.312964) THEN CASE WHEN (t."X_66" < -0.844687) THEN CASE WHEN (t."X_2" < -1.240677) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 0.652203) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_0" < 0.158980) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -1.099553 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.334749 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.268207 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.079628 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.301291 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.210606 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.048327 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.058555 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.016077 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.025003 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.004264 AS "E"
  ) AS "Values"
 )
,
"DT_output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_10" < 1.620184) THEN CASE WHEN (t."X_8" < 1.312964) THEN CASE WHEN (t."X_3" < 0.918846) THEN CASE WHEN (t."X_4" < -1.052697) THEN 17 ELSE 18 END ELSE 14 END ELSE CASE WHEN (t."X_0" < 0.158980) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.934621 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.284537 AS "E"
    UNION ALL
    SELECT 6 AS nid,  1.077974 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.067685 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.256096 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.042136 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.179015 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.041077 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.026349 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.000999 AS "E"
  ) AS "Values"
 )
,
"DT_output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_10" < 1.620184) THEN CASE WHEN (t."X_8" < 1.312964) THEN CASE WHEN (t."X_2" < -1.240677) THEN 13 ELSE CASE WHEN (t."X_25" < 0.221046) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_0" < 0.158980) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.794428 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.241857 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.916278 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.057532 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.217680 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.043453 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.152163 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.034916 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.007584 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.016489 AS "E"
  ) AS "Values"
 )
,
"DT_output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_10" < 1.620184) THEN CASE WHEN (t."X_8" < 1.312964) THEN CASE WHEN (t."X_9" < -0.031088) THEN CASE WHEN (t."X_2" < -1.240677) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 0.652203) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_0" < 0.158980) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.675263 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.205579 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.778835 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.048903 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.185028 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.129339 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.029679 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.036935 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.007062 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.018014 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.001454 AS "E"
  ) AS "Values"
 )
,
"DT_output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_10" < 1.620184) THEN CASE WHEN (t."X_8" < 1.312964) THEN CASE WHEN (t."X_2" < -1.240677) THEN 13 ELSE CASE WHEN (t."X_9" < -0.031088) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_0" < 0.158980) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.573974 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.174742 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.662009 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.041567 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.157274 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.031393 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.109939 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.025227 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.005367 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.010674 AS "E"
  ) AS "Values"
 )
,
"DT_output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_10" < 1.620184) THEN CASE WHEN (t."X_8" < 1.312964) THEN CASE WHEN (t."X_2" < -1.240677) THEN 13 ELSE CASE WHEN (t."X_10" < -0.249382) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_0" < 0.158980) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.487878 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.148531 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.562706 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.035332 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.133681 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.026685 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.093448 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.021443 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.004996 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.009029 AS "E"
  ) AS "Values"
 )
,
"DT_output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_10" < 1.620184) THEN CASE WHEN (t."X_8" < 1.312964) THEN CASE WHEN (t."X_2" < -1.240677) THEN 13 ELSE CASE WHEN (t."X_4" < -1.052697) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_0" < 0.158980) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.414695 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.126251 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.478299 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.030032 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.113631 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.022682 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.079431 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.018226 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.010239 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.002198 AS "E"
  ) AS "Values"
 )
,
"DT_output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_10" < 1.620184) THEN CASE WHEN (t."X_8" < 1.312964) THEN CASE WHEN (t."X_2" < -1.240677) THEN 13 ELSE CASE WHEN (t."X_12" < -0.267924) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_0" < 0.158980) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.352492 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.107314 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.406554 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.025527 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.096588 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.019281 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.067516 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.015492 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.008549 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.001787 AS "E"
  ) AS "Values"
 )
,
"DT_output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_11" < 1.619766) THEN CASE WHEN (t."X_98" < -1.704143) THEN 3 ELSE CASE WHEN (t."X_10" < 1.620184) THEN CASE WHEN (t."X_8" < 1.312964) THEN CASE WHEN (t."X_2" < -1.240677) THEN 13 ELSE CASE WHEN (t."X_4" < -1.052697) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_0" < 0.158980) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_0" < -0.757753) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.299618 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.091216 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.345570 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.021698 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.082100 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.016388 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.057388 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.013169 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.007515 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.001617 AS "E"
  ) AS "Values"
 )
,
"DT_output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
   ON t1.node_id = t2.nid
 )
,
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."E" AS "E"
 FROM (
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_4" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_31" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   53.968105 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"