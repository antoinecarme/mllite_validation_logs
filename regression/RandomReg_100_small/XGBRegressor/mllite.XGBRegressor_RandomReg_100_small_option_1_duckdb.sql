WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "RandomReg_100_small" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_30" < 0.763970) THEN CASE WHEN (t."X_46" < -0.488510) THEN CASE WHEN (t."X_47" < 0.296655) THEN CASE WHEN (t."X_24" < -0.322282) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_32" < -0.532487) THEN 9 ELSE CASE WHEN (t."X_81" < 0.437277) THEN CASE WHEN (t."X_27" < 0.085198) THEN 15 ELSE 16 END ELSE 14 END END END ELSE CASE WHEN (t."X_22" < -0.143185) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  24.892973 AS "E"
    UNION ALL
    SELECT 6 AS nid,  66.816162 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -68.076508 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -28.640085 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -35.465115 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -7.462740 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -5.195500 AS "E"
    UNION ALL
    SELECT 15 AS nid,  14.889808 AS "E"
    UNION ALL
    SELECT 16 AS nid,  43.858177 AS "E"
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
    CASE WHEN (t."X_46" < 0.643768) THEN CASE WHEN (t."X_95" < -0.387633) THEN CASE WHEN (t."X_81" < 0.437277) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_77" < 0.334081) THEN CASE WHEN (t."X_32" < -0.093567) THEN 11 ELSE CASE WHEN (t."X_24" < 0.318900) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_80" < -0.843559) THEN 13 ELSE CASE WHEN (t."X_3" < -0.600074) THEN 17 ELSE 18 END END END END ELSE CASE WHEN (t."X_30" < -0.446534) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  11.186382 AS "E"
    UNION ALL
    SELECT 6 AS nid,  53.310204 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -13.006298 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -55.146999 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -30.336584 AS "E"
    UNION ALL
    SELECT 13 AS nid,  31.112085 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -9.090543 AS "E"
    UNION ALL
    SELECT 16 AS nid,  16.995895 AS "E"
    UNION ALL
    SELECT 17 AS nid,  14.644228 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.626608 AS "E"
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
    CASE WHEN (t."X_30" < 0.763970) THEN CASE WHEN (t."X_81" < 0.566612) THEN CASE WHEN (t."X_46" < -0.488510) THEN CASE WHEN (t."X_25" < 0.458960) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_26" < 0.269698) THEN CASE WHEN (t."X_90" < 0.296337) THEN 17 ELSE 18 END ELSE 14 END END ELSE CASE WHEN (t."X_71" < -0.507376) THEN 9 ELSE CASE WHEN (t."X_27" < 0.435852) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_46" < -0.258826) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  9.968934 AS "E"
    UNION ALL
    SELECT 6 AS nid,  39.747650 AS "E"
    UNION ALL
    SELECT 9 AS nid,  7.663798 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -20.058849 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -3.774962 AS "E"
    UNION ALL
    SELECT 14 AS nid,  24.094873 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -45.405998 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -16.491865 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -5.591497 AS "E"
    UNION ALL
    SELECT 18 AS nid,  9.728306 AS "E"
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
    CASE WHEN (t."X_46" < 0.643768) THEN CASE WHEN (t."X_59" < 0.160746) THEN CASE WHEN (t."X_77" < 0.659501) THEN CASE WHEN (t."X_26" < -0.663401) THEN CASE WHEN (t."X_4" < 0.274322) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_27" < 0.316900) THEN 19 ELSE 20 END END ELSE 8 END ELSE CASE WHEN (t."X_41" < 0.005344) THEN CASE WHEN (t."X_52" < 0.508818) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_88" < -0.441490) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_44" < -0.316352) THEN 5 ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 5 AS nid,  31.887367 AS "E"
    UNION ALL
    SELECT 6 AS nid,  7.697885 AS "E"
    UNION ALL
    SELECT 8 AS nid,  3.700838 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -6.684747 AS "E"
    UNION ALL
    SELECT 14 AS nid,  5.661029 AS "E"
    UNION ALL
    SELECT 15 AS nid,  8.015421 AS "E"
    UNION ALL
    SELECT 16 AS nid,  19.231731 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -2.598977 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -12.462726 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -46.334187 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -24.164366 AS "E"
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
    CASE WHEN (t."X_36" < -0.599589) THEN CASE WHEN (t."X_34" < -0.226276) THEN CASE WHEN (t."X_50" < 0.098405) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_46" < -0.488510) THEN CASE WHEN (t."X_14" < 0.367786) THEN CASE WHEN (t."X_66" < -0.317404) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_26" < -0.663401) THEN 11 ELSE CASE WHEN (t."X_30" < 0.029938) THEN 15 ELSE CASE WHEN (t."X_9" < 0.242938) THEN 17 ELSE 18 END END END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -26.870466 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -11.470559 AS "E"
    UNION ALL
    SELECT 8 AS nid,  3.465255 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -15.041688 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.323310 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -5.652530 AS "E"
    UNION ALL
    SELECT 14 AS nid,  5.501652 AS "E"
    UNION ALL
    SELECT 15 AS nid,  8.796795 AS "E"
    UNION ALL
    SELECT 17 AS nid,  27.364182 AS "E"
    UNION ALL
    SELECT 18 AS nid,  13.928260 AS "E"
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
  ) AS scu
)
SELECT
   t."index" AS "index",
   11.390068 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"