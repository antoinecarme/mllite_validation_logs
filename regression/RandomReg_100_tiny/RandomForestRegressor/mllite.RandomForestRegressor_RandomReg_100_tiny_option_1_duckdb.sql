WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "RandomReg_100_tiny" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_67" <= -1.518441) THEN 1 ELSE CASE WHEN (model_input."X_14" <= 0.340760) THEN CASE WHEN (model_input."X_42" <= -1.850717) THEN 9 ELSE CASE WHEN (model_input."X_7" <= 0.355605) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_52" <= 0.032671) THEN CASE WHEN (model_input."X_16" <= -1.001799) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_96" <= 0.653632) THEN 11 ELSE 12 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 3.855151 AS "E"
    UNION ALL
    SELECT 1 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 2 AS nid, 39.272999 AS "E"
    UNION ALL
    SELECT 3 AS nid, -36.149567 AS "E"
    UNION ALL
    SELECT 4 AS nid, 95.839912 AS "E"
    UNION ALL
    SELECT 5 AS nid, 175.460022 AS "E"
    UNION ALL
    SELECT 6 AS nid, 69.299873 AS "E"
    UNION ALL
    SELECT 7 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 8 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 9 AS nid, 2.776306 AS "E"
    UNION ALL
    SELECT 10 AS nid, -43.934734 AS "E"
    UNION ALL
    SELECT 11 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 12 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 13 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 14 AS nid, -55.250984 AS "E"
  ) AS "Values"
 ),
"DT_Output_0" AS 
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
 ),
"DT_node_lookup_1" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_96" <= 0.206679) THEN CASE WHEN (model_input."X_97" <= -0.261433) THEN CASE WHEN (model_input."X_17" <= 0.166075) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_55" <= 0.138284) THEN 13 ELSE CASE WHEN (model_input."X_46" <= -0.007668) THEN 17 ELSE 18 END END END ELSE CASE WHEN (model_input."X_19" <= 1.357550) THEN CASE WHEN (model_input."X_5" <= 1.170591) THEN CASE WHEN (model_input."X_64" <= 0.683796) THEN CASE WHEN (model_input."X_12" <= 0.922320) THEN 19 ELSE 20 END ELSE 16 END ELSE 12 END ELSE CASE WHEN (model_input."X_26" <= 0.770947) THEN 7 ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, -4.428520 AS "E"
    UNION ALL
    SELECT 1 AS nid, -111.553940 AS "E"
    UNION ALL
    SELECT 2 AS nid, 133.304169 AS "E"
    UNION ALL
    SELECT 3 AS nid, -181.008789 AS "E"
    UNION ALL
    SELECT 4 AS nid, -24.735376 AS "E"
    UNION ALL
    SELECT 5 AS nid, 84.449242 AS "E"
    UNION ALL
    SELECT 6 AS nid, 255.441498 AS "E"
    UNION ALL
    SELECT 7 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 8 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 9 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 10 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 11 AS nid, 68.058403 AS "E"
    UNION ALL
    SELECT 12 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 13 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 14 AS nid, -8.365077 AS "E"
    UNION ALL
    SELECT 15 AS nid, 60.016418 AS "E"
    UNION ALL
    SELECT 16 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 17 AS nid, 2.776306 AS "E"
    UNION ALL
    SELECT 18 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 19 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 20 AS nid, 50.603287 AS "E"
  ) AS "Values"
 ),
"DT_Output_1" AS 
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
 ),
"DT_node_lookup_2" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_30" <= 0.726508) THEN CASE WHEN (model_input."X_12" <= 1.123787) THEN CASE WHEN (model_input."X_64" <= 0.473403) THEN CASE WHEN (model_input."X_93" <= 0.403838) THEN CASE WHEN (model_input."X_10" <= -0.828650) THEN 15 ELSE CASE WHEN (model_input."X_13" <= -0.389019) THEN 23 ELSE 24 END END ELSE CASE WHEN (model_input."X_59" <= 0.441980) THEN CASE WHEN (model_input."X_6" <= 0.344613) THEN 21 ELSE 22 END ELSE 18 END END ELSE CASE WHEN (model_input."X_77" <= -0.336430) THEN 11 ELSE CASE WHEN (model_input."X_11" <= -0.597082) THEN 19 ELSE 20 END END END ELSE 4 END ELSE CASE WHEN (model_input."X_6" <= 0.438122) THEN CASE WHEN (model_input."X_38" <= 0.965088) THEN 9 ELSE 10 END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 76.326759 AS "E"
    UNION ALL
    SELECT 1 AS nid, -0.823209 AS "E"
    UNION ALL
    SELECT 2 AS nid, 307.776642 AS "E"
    UNION ALL
    SELECT 3 AS nid, 21.290113 AS "E"
    UNION ALL
    SELECT 4 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 5 AS nid, 343.399658 AS "E"
    UNION ALL
    SELECT 6 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 7 AS nid, -9.091084 AS "E"
    UNION ALL
    SELECT 8 AS nid, 102.306633 AS "E"
    UNION ALL
    SELECT 9 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 10 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 11 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 12 AS nid, 78.453659 AS "E"
    UNION ALL
    SELECT 13 AS nid, 15.660228 AS "E"
    UNION ALL
    SELECT 14 AS nid, -33.842392 AS "E"
    UNION ALL
    SELECT 15 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 16 AS nid, 4.012542 AS "E"
    UNION ALL
    SELECT 17 AS nid, -48.178329 AS "E"
    UNION ALL
    SELECT 18 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 19 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 20 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 21 AS nid, -55.250984 AS "E"
    UNION ALL
    SELECT 22 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 23 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 24 AS nid, 2.776306 AS "E"
  ) AS "Values"
 ),
"DT_Output_2" AS 
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
 ),
"DT_node_lookup_3" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_72" <= 0.315850) THEN CASE WHEN (model_input."X_54" <= -0.974589) THEN CASE WHEN (model_input."X_97" <= -0.692281) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_10" <= -0.927808) THEN 7 ELSE CASE WHEN (model_input."X_38" <= 0.821748) THEN CASE WHEN (model_input."X_65" <= -1.054810) THEN 19 ELSE CASE WHEN (model_input."X_13" <= 0.186675) THEN 21 ELSE 22 END END ELSE 16 END END END ELSE CASE WHEN (model_input."X_25" <= 1.191073) THEN CASE WHEN (model_input."X_77" <= 0.509724) THEN CASE WHEN (model_input."X_15" <= -0.923995) THEN 13 ELSE CASE WHEN (model_input."X_23" <= 0.024303) THEN 17 ELSE 18 END END ELSE 12 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 7.459828 AS "E"
    UNION ALL
    SELECT 1 AS nid, -96.445648 AS "E"
    UNION ALL
    SELECT 2 AS nid, 180.635620 AS "E"
    UNION ALL
    SELECT 3 AS nid, 134.713135 AS "E"
    UNION ALL
    SELECT 4 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 5 AS nid, -217.794342 AS "E"
    UNION ALL
    SELECT 6 AS nid, -15.546515 AS "E"
    UNION ALL
    SELECT 7 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 8 AS nid, -37.092682 AS "E"
    UNION ALL
    SELECT 9 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 10 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 11 AS nid, 152.210678 AS "E"
    UNION ALL
    SELECT 12 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 13 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 14 AS nid, 135.978424 AS "E"
    UNION ALL
    SELECT 15 AS nid, -47.987106 AS "E"
    UNION ALL
    SELECT 16 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 17 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 18 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 19 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 20 AS nid, -54.868538 AS "E"
    UNION ALL
    SELECT 21 AS nid, -54.486095 AS "E"
    UNION ALL
    SELECT 22 AS nid, -55.250984 AS "E"
  ) AS "Values"
 ),
"DT_Output_3" AS 
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
 ),
"DT_node_lookup_4" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_32" <= 1.087020) THEN CASE WHEN (model_input."X_47" <= -0.564114) THEN CASE WHEN (model_input."X_14" <= 0.825496) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_52" <= -0.165369) THEN CASE WHEN (model_input."X_65" <= 0.172428) THEN CASE WHEN (model_input."X_8" <= 0.028232) THEN 17 ELSE CASE WHEN (model_input."X_63" <= 0.480997) THEN 19 ELSE 20 END END ELSE 12 END ELSE CASE WHEN (model_input."X_22" <= 0.680173) THEN 13 ELSE CASE WHEN (model_input."X_35" <= 0.737762) THEN 15 ELSE 16 END END END END ELSE CASE WHEN (model_input."X_52" <= -0.547468) THEN 9 ELSE 10 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 41.043453 AS "E"
    UNION ALL
    SELECT 1 AS nid, -28.731066 AS "E"
    UNION ALL
    SELECT 2 AS nid, 343.399658 AS "E"
    UNION ALL
    SELECT 3 AS nid, -209.035889 AS "E"
    UNION ALL
    SELECT 4 AS nid, 25.360386 AS "E"
    UNION ALL
    SELECT 5 AS nid, -37.834423 AS "E"
    UNION ALL
    SELECT 6 AS nid, 88.555191 AS "E"
    UNION ALL
    SELECT 7 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 8 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 9 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 10 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 11 AS nid, -47.987110 AS "E"
    UNION ALL
    SELECT 12 AS nid, 2.776306 AS "E"
    UNION ALL
    SELECT 13 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 14 AS nid, 78.453659 AS "E"
    UNION ALL
    SELECT 15 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 16 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 17 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 18 AS nid, -54.868538 AS "E"
    UNION ALL
    SELECT 19 AS nid, -54.486095 AS "E"
    UNION ALL
    SELECT 20 AS nid, -55.250984 AS "E"
  ) AS "Values"
 ),
"DT_Output_4" AS 
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
 ),
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."E" AS "E"
 FROM (
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_4" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   AVG(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"
