WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
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
"DT_node_lookup_5" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_95" <= -0.721235) THEN 1 ELSE CASE WHEN (model_input."X_36" <= -0.528239) THEN CASE WHEN (model_input."X_56" <= -0.804724) THEN 5 ELSE CASE WHEN (model_input."X_15" <= -0.257694) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_68" <= 0.459504) THEN CASE WHEN (model_input."X_61" <= 0.236934) THEN CASE WHEN (model_input."X_63" <= 0.516144) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_25" <= -0.405665) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_13" <= -0.389019) THEN 17 ELSE 18 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.403681 AS "E"
    UNION ALL
    SELECT 1 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 2 AS nid, -10.919275 AS "E"
    UNION ALL
    SELECT 3 AS nid, -71.780670 AS "E"
    UNION ALL
    SELECT 4 AS nid, 58.636604 AS "E"
    UNION ALL
    SELECT 5 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 6 AS nid, -47.167950 AS "E"
    UNION ALL
    SELECT 7 AS nid, 80.238991 AS "E"
    UNION ALL
    SELECT 8 AS nid, 4.630660 AS "E"
    UNION ALL
    SELECT 9 AS nid, 60.016418 AS "E"
    UNION ALL
    SELECT 10 AS nid, 110.572830 AS "E"
    UNION ALL
    SELECT 11 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 12 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 13 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 14 AS nid, -55.250988 AS "E"
    UNION ALL
    SELECT 15 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 16 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 17 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 18 AS nid, 2.776306 AS "E"
  ) AS "Values"
 ),
"DT_Output_5" AS 
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
 ),
"DT_node_lookup_6" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_50" <= -0.803619) THEN CASE WHEN (model_input."X_12" <= 0.172251) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_96" <= 0.206679) THEN CASE WHEN (model_input."X_91" <= 0.375869) THEN CASE WHEN (model_input."X_0" <= 0.145750) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_46" <= -0.007668) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_74" <= 0.176316) THEN CASE WHEN (model_input."X_5" <= 0.708809) THEN CASE WHEN (model_input."X_7" <= 0.966668) THEN 17 ELSE 18 END ELSE 14 END ELSE CASE WHEN (model_input."X_33" <= 0.314974) THEN 9 ELSE 10 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, -45.657215 AS "E"
    UNION ALL
    SELECT 1 AS nid, -223.049438 AS "E"
    UNION ALL
    SELECT 2 AS nid, 34.975609 AS "E"
    UNION ALL
    SELECT 3 AS nid, -28.949823 AS "E"
    UNION ALL
    SELECT 4 AS nid, 111.686134 AS "E"
    UNION ALL
    SELECT 5 AS nid, 69.170204 AS "E"
    UNION ALL
    SELECT 6 AS nid, 175.460022 AS "E"
    UNION ALL
    SELECT 7 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 8 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 9 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 10 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 11 AS nid, -45.820782 AS "E"
    UNION ALL
    SELECT 12 AS nid, -12.078872 AS "E"
    UNION ALL
    SELECT 13 AS nid, 57.663136 AS "E"
    UNION ALL
    SELECT 14 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 15 AS nid, 2.776306 AS "E"
    UNION ALL
    SELECT 16 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 17 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 18 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 19 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 20 AS nid, -55.250984 AS "E"
  ) AS "Values"
 ),
"DT_Output_6" AS 
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
 ),
"DT_node_lookup_7" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_96" <= 0.206679) THEN CASE WHEN (model_input."X_95" <= 0.310328) THEN CASE WHEN (model_input."X_15" <= -0.780713) THEN CASE WHEN (model_input."X_29" <= 0.162426) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_21" <= -0.334046) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_93" <= 1.001292) THEN 5 ELSE 6 END END ELSE CASE WHEN (model_input."X_18" <= -0.464985) THEN CASE WHEN (model_input."X_43" <= -1.012394) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_12" <= 0.227430) THEN 11 ELSE CASE WHEN (model_input."X_83" <= -0.839529) THEN 17 ELSE 18 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, -9.723724 AS "E"
    UNION ALL
    SELECT 1 AS nid, -77.102554 AS "E"
    UNION ALL
    SELECT 2 AS nid, 102.574310 AS "E"
    UNION ALL
    SELECT 3 AS nid, -35.574196 AS "E"
    UNION ALL
    SELECT 4 AS nid, -174.002029 AS "E"
    UNION ALL
    SELECT 5 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 6 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 7 AS nid, 135.978409 AS "E"
    UNION ALL
    SELECT 8 AS nid, 69.170204 AS "E"
    UNION ALL
    SELECT 9 AS nid, -8.365077 AS "E"
    UNION ALL
    SELECT 10 AS nid, -46.457844 AS "E"
    UNION ALL
    SELECT 11 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 12 AS nid, 57.663136 AS "E"
    UNION ALL
    SELECT 13 AS nid, 2.776306 AS "E"
    UNION ALL
    SELECT 14 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 15 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 16 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 17 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 18 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 19 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 20 AS nid, -54.486095 AS "E"
  ) AS "Values"
 ),
"DT_Output_7" AS 
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
 ),
"DT_node_lookup_8" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_55" <= -0.795500) THEN CASE WHEN (model_input."X_44" <= -0.553598) THEN 3 ELSE 4 END ELSE CASE WHEN (model_input."X_80" <= 0.538474) THEN CASE WHEN (model_input."X_25" <= 0.056243) THEN 7 ELSE CASE WHEN (model_input."X_31" <= -0.675697) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_65" <= -0.175811) THEN CASE WHEN (model_input."X_32" <= 0.669243) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_17" <= -0.324121) THEN 15 ELSE 16 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 87.051842 AS "E"
    UNION ALL
    SELECT 1 AS nid, 305.577759 AS "E"
    UNION ALL
    SELECT 2 AS nid, 14.209882 AS "E"
    UNION ALL
    SELECT 3 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 4 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 5 AS nid, -78.441612 AS "E"
    UNION ALL
    SELECT 6 AS nid, 45.093712 AS "E"
    UNION ALL
    SELECT 7 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 8 AS nid, -48.178329 AS "E"
    UNION ALL
    SELECT 9 AS nid, 56.654591 AS "E"
    UNION ALL
    SELECT 10 AS nid, 4.630660 AS "E"
    UNION ALL
    SELECT 11 AS nid, -55.250984 AS "E"
    UNION ALL
    SELECT 12 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 13 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 14 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 15 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 16 AS nid, 2.776306 AS "E"
  ) AS "Values"
 ),
"DT_Output_8" AS 
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
 ),
"DT_node_lookup_9" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_58" <= 0.864341) THEN CASE WHEN (model_input."X_76" <= 0.829626) THEN CASE WHEN (model_input."X_58" <= -0.410514) THEN CASE WHEN (model_input."X_15" <= 0.611849) THEN CASE WHEN (model_input."X_22" <= -0.193071) THEN CASE WHEN (model_input."X_49" <= 0.188817) THEN 17 ELSE 18 END ELSE 16 END ELSE 12 END ELSE 8 END ELSE CASE WHEN (model_input."X_83" <= -0.820222) THEN 9 ELSE CASE WHEN (model_input."X_0" <= -0.487082) THEN 13 ELSE 14 END END END ELSE CASE WHEN (model_input."X_16" <= -0.083493) THEN 5 ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, -19.195391 AS "E"
    UNION ALL
    SELECT 1 AS nid, 47.004261 AS "E"
    UNION ALL
    SELECT 2 AS nid, -217.794357 AS "E"
    UNION ALL
    SELECT 3 AS nid, 9.352197 AS "E"
    UNION ALL
    SELECT 4 AS nid, 159.960464 AS "E"
    UNION ALL
    SELECT 5 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 6 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 7 AS nid, -6.468029 AS "E"
    UNION ALL
    SELECT 8 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 9 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 10 AS nid, 139.486969 AS "E"
    UNION ALL
    SELECT 11 AS nid, 1.534983 AS "E"
    UNION ALL
    SELECT 12 AS nid, -54.486095 AS "E"
    UNION ALL
    SELECT 13 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 14 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 15 AS nid, 5.743272 AS "E"
    UNION ALL
    SELECT 16 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 17 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 18 AS nid, 2.776306 AS "E"
  ) AS "Values"
 ),
"DT_Output_9" AS 
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
 ),
"DT_node_lookup_10" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_64" <= 0.914766) THEN CASE WHEN (model_input."X_39" <= 1.355935) THEN CASE WHEN (model_input."X_10" <= -0.828650) THEN CASE WHEN (model_input."X_0" <= 0.253734) THEN CASE WHEN (model_input."X_37" <= -0.303892) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_63" <= 0.516144) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_6" <= -0.039778) THEN CASE WHEN (model_input."X_69" <= -0.596979) THEN 23 ELSE 24 END ELSE CASE WHEN (model_input."X_51" <= 0.206649) THEN 21 ELSE 22 END END END ELSE CASE WHEN (model_input."X_50" <= -0.880794) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_32" <= 0.727210) THEN CASE WHEN (model_input."X_16" <= -1.001799) THEN 11 ELSE 12 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 43.905762 AS "E"
    UNION ALL
    SELECT 1 AS nid, -4.513526 AS "E"
    UNION ALL
    SELECT 2 AS nid, 253.722702 AS "E"
    UNION ALL
    SELECT 3 AS nid, 175.460022 AS "E"
    UNION ALL
    SELECT 4 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 5 AS nid, 29.487463 AS "E"
    UNION ALL
    SELECT 6 AS nid, -191.518951 AS "E"
    UNION ALL
    SELECT 7 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 8 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 9 AS nid, 75.299706 AS "E"
    UNION ALL
    SELECT 10 AS nid, -25.487225 AS "E"
    UNION ALL
    SELECT 11 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 12 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 13 AS nid, 110.572830 AS "E"
    UNION ALL
    SELECT 14 AS nid, 57.663136 AS "E"
    UNION ALL
    SELECT 15 AS nid, 4.630660 AS "E"
    UNION ALL
    SELECT 16 AS nid, -45.565815 AS "E"
    UNION ALL
    SELECT 17 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 18 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 19 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 20 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 21 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 22 AS nid, -54.486095 AS "E"
    UNION ALL
    SELECT 23 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 24 AS nid, 2.776306 AS "E"
  ) AS "Values"
 ),
"DT_Output_10" AS 
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
 ),
"DT_node_lookup_11" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_80" <= -0.902055) THEN CASE WHEN (model_input."X_31" <= -0.691982) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_39" <= 1.355935) THEN CASE WHEN (model_input."X_52" <= -0.506760) THEN CASE WHEN (model_input."X_26" <= -0.679850) THEN 11 ELSE CASE WHEN (model_input."X_69" <= -0.596979) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_70" <= -1.259291) THEN 13 ELSE CASE WHEN (model_input."X_98" <= -1.136785) THEN 15 ELSE CASE WHEN (model_input."X_95" <= 0.530869) THEN 17 ELSE 18 END END END END ELSE CASE WHEN (model_input."X_61" <= 0.570970) THEN 7 ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 58.847881 AS "E"
    UNION ALL
    SELECT 1 AS nid, 340.467834 AS "E"
    UNION ALL
    SELECT 2 AS nid, -6.141332 AS "E"
    UNION ALL
    SELECT 3 AS nid, 54.727039 AS "E"
    UNION ALL
    SELECT 4 AS nid, -209.035889 AS "E"
    UNION ALL
    SELECT 5 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 6 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 7 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 8 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 9 AS nid, -15.074925 AS "E"
    UNION ALL
    SELECT 10 AS nid, 84.642159 AS "E"
    UNION ALL
    SELECT 11 AS nid, -54.486095 AS "E"
    UNION ALL
    SELECT 12 AS nid, 4.630660 AS "E"
    UNION ALL
    SELECT 13 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 14 AS nid, 73.747093 AS "E"
    UNION ALL
    SELECT 15 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 16 AS nid, 55.309856 AS "E"
    UNION ALL
    SELECT 17 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 18 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 19 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 20 AS nid, 2.776306 AS "E"
  ) AS "Values"
 ),
"DT_Output_11" AS 
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
 ),
"DT_node_lookup_12" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_95" <= -0.721235) THEN 1 ELSE CASE WHEN (model_input."X_25" <= 0.084983) THEN CASE WHEN (model_input."X_42" <= 0.193234) THEN 7 ELSE CASE WHEN (model_input."X_7" <= 0.966668) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_74" <= 0.047335) THEN CASE WHEN (model_input."X_15" <= -1.038073) THEN 9 ELSE CASE WHEN (model_input."X_70" <= -0.902172) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_36" <= -0.766896) THEN 13 ELSE CASE WHEN (model_input."X_84" <= 0.751245) THEN 17 ELSE 18 END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 64.986435 AS "E"
    UNION ALL
    SELECT 1 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 2 AS nid, 15.663363 AS "E"
    UNION ALL
    SELECT 3 AS nid, 71.523476 AS "E"
    UNION ALL
    SELECT 4 AS nid, -26.231733 AS "E"
    UNION ALL
    SELECT 5 AS nid, -0.940032 AS "E"
    UNION ALL
    SELECT 6 AS nid, -51.523434 AS "E"
    UNION ALL
    SELECT 7 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 8 AS nid, 61.193058 AS "E"
    UNION ALL
    SELECT 9 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 10 AS nid, 5.248777 AS "E"
    UNION ALL
    SELECT 11 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 12 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 13 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 14 AS nid, -54.996021 AS "E"
    UNION ALL
    SELECT 15 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 16 AS nid, 2.776306 AS "E"
    UNION ALL
    SELECT 17 AS nid, -55.250984 AS "E"
    UNION ALL
    SELECT 18 AS nid, -54.486095 AS "E"
  ) AS "Values"
 ),
"DT_Output_12" AS 
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
 ),
"DT_node_lookup_13" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_96" <= 0.112292) THEN CASE WHEN (model_input."X_9" <= -0.050670) THEN CASE WHEN (model_input."X_57" <= -0.581466) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_15" <= -0.515054) THEN 11 ELSE CASE WHEN (model_input."X_73" <= -0.829798) THEN 15 ELSE 16 END END END ELSE CASE WHEN (model_input."X_18" <= 0.243099) THEN CASE WHEN (model_input."X_69" <= 0.592241) THEN CASE WHEN (model_input."X_1" <= -0.940302) THEN 13 ELSE 14 END ELSE 10 END ELSE 8 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, -19.023806 AS "E"
    UNION ALL
    SELECT 1 AS nid, -73.180290 AS "E"
    UNION ALL
    SELECT 2 AS nid, 100.120483 AS "E"
    UNION ALL
    SELECT 3 AS nid, -191.518951 AS "E"
    UNION ALL
    SELECT 4 AS nid, -46.882816 AS "E"
    UNION ALL
    SELECT 5 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 6 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 7 AS nid, 74.923737 AS "E"
    UNION ALL
    SELECT 8 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 9 AS nid, 57.663136 AS "E"
    UNION ALL
    SELECT 10 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 11 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 12 AS nid, -54.704632 AS "E"
    UNION ALL
    SELECT 13 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 14 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 15 AS nid, -55.250984 AS "E"
    UNION ALL
    SELECT 16 AS nid, -54.486095 AS "E"
  ) AS "Values"
 ),
"DT_Output_13" AS 
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
 ),
"DT_node_lookup_14" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_96" <= 0.411190) THEN CASE WHEN (model_input."X_31" <= 0.307744) THEN CASE WHEN (model_input."X_99" <= 0.937695) THEN CASE WHEN (model_input."X_24" <= 1.459435) THEN CASE WHEN (model_input."X_69" <= 1.158904) THEN CASE WHEN (model_input."X_95" <= 0.296373) THEN 19 ELSE 20 END ELSE 18 END ELSE 16 END ELSE 12 END ELSE CASE WHEN (model_input."X_62" <= -1.204671) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_29" <= 0.029730) THEN CASE WHEN (model_input."X_39" <= -1.156932) THEN 9 ELSE CASE WHEN (model_input."X_54" <= -0.264051) THEN 13 ELSE 14 END END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 45.743172 AS "E"
    UNION ALL
    SELECT 1 AS nid, -68.057884 AS "E"
    UNION ALL
    SELECT 2 AS nid, 192.058807 AS "E"
    UNION ALL
    SELECT 3 AS nid, 144.892120 AS "E"
    UNION ALL
    SELECT 4 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 5 AS nid, -32.783287 AS "E"
    UNION ALL
    SELECT 6 AS nid, -191.518951 AS "E"
    UNION ALL
    SELECT 7 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 8 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 9 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 10 AS nid, 107.548553 AS "E"
    UNION ALL
    SELECT 11 AS nid, -46.681049 AS "E"
    UNION ALL
    SELECT 12 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 13 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 14 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 15 AS nid, -52.115967 AS "E"
    UNION ALL
    SELECT 16 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 17 AS nid, -54.868538 AS "E"
    UNION ALL
    SELECT 18 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 19 AS nid, -54.486095 AS "E"
    UNION ALL
    SELECT 20 AS nid, -55.250984 AS "E"
  ) AS "Values"
 ),
"DT_Output_14" AS 
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
 ),
"DT_node_lookup_15" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_33" <= -0.780674) THEN CASE WHEN (model_input."X_42" <= 0.556864) THEN CASE WHEN (model_input."X_58" <= -0.027265) THEN 13 ELSE 14 END ELSE 4 END ELSE CASE WHEN (model_input."X_54" <= -0.974589) THEN CASE WHEN (model_input."X_68" <= -1.107891) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_39" <= 0.472064) THEN CASE WHEN (model_input."X_86" <= 0.926560) THEN CASE WHEN (model_input."X_95" <= -0.468375) THEN 17 ELSE CASE WHEN (model_input."X_79" <= 1.110811) THEN 19 ELSE 20 END END ELSE 16 END ELSE CASE WHEN (model_input."X_12" <= 0.248796) THEN 11 ELSE 12 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, -28.504669 AS "E"
    UNION ALL
    SELECT 1 AS nid, 177.040405 AS "E"
    UNION ALL
    SELECT 2 AS nid, -75.938148 AS "E"
    UNION ALL
    SELECT 3 AS nid, 110.572830 AS "E"
    UNION ALL
    SELECT 4 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 5 AS nid, -159.988480 AS "E"
    UNION ALL
    SELECT 6 AS nid, -23.406683 AS "E"
    UNION ALL
    SELECT 7 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 8 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 9 AS nid, -40.723629 AS "E"
    UNION ALL
    SELECT 10 AS nid, 28.544149 AS "E"
    UNION ALL
    SELECT 11 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 12 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 13 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 14 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 15 AS nid, -51.332214 AS "E"
    UNION ALL
    SELECT 16 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 17 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 18 AS nid, -54.741058 AS "E"
    UNION ALL
    SELECT 19 AS nid, -54.486095 AS "E"
    UNION ALL
    SELECT 20 AS nid, -55.250984 AS "E"
  ) AS "Values"
 ),
"DT_Output_15" AS 
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
 ),
"DT_node_lookup_16" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_84" <= -0.493237) THEN CASE WHEN (model_input."X_89" <= -0.026284) THEN 3 ELSE CASE WHEN (model_input."X_85" <= -0.433195) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_35" <= 1.566594) THEN CASE WHEN (model_input."X_13" <= 0.797183) THEN CASE WHEN (model_input."X_49" <= 0.598874) THEN CASE WHEN (model_input."X_45" <= 0.714915) THEN CASE WHEN (model_input."X_20" <= -0.041945) THEN 15 ELSE 16 END ELSE 14 END ELSE 12 END ELSE 10 END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 68.406990 AS "E"
    UNION ALL
    SELECT 1 AS nid, 253.975586 AS "E"
    UNION ALL
    SELECT 2 AS nid, -42.934151 AS "E"
    UNION ALL
    SELECT 3 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 4 AS nid, 360.111755 AS "E"
    UNION ALL
    SELECT 5 AS nid, -69.848442 AS "E"
    UNION ALL
    SELECT 6 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 7 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 8 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 9 AS nid, -46.808529 AS "E"
    UNION ALL
    SELECT 10 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 11 AS nid, -52.268940 AS "E"
    UNION ALL
    SELECT 12 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 13 AS nid, -55.059761 AS "E"
    UNION ALL
    SELECT 14 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 15 AS nid, -55.250988 AS "E"
    UNION ALL
    SELECT 16 AS nid, -54.486095 AS "E"
  ) AS "Values"
 ),
"DT_Output_16" AS 
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
 ),
"DT_node_lookup_17" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_80" <= -0.902055) THEN CASE WHEN (model_input."X_27" <= -0.769974) THEN 7 ELSE CASE WHEN (model_input."X_76" <= 1.715742) THEN 11 ELSE 12 END END ELSE CASE WHEN (model_input."X_21" <= -0.222620) THEN CASE WHEN (model_input."X_2" <= 0.164511) THEN CASE WHEN (model_input."X_90" <= -0.846860) THEN CASE WHEN (model_input."X_28" <= 0.188967) THEN 19 ELSE 20 END ELSE 16 END ELSE CASE WHEN (model_input."X_6" <= -1.002976) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_17" <= 0.753801) THEN CASE WHEN (model_input."X_2" <= 0.048748) THEN 17 ELSE 18 END ELSE 14 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 88.642982 AS "E"
    UNION ALL
    SELECT 1 AS nid, 328.270935 AS "E"
    UNION ALL
    SELECT 2 AS nid, -20.278803 AS "E"
    UNION ALL
    SELECT 3 AS nid, -81.951210 AS "E"
    UNION ALL
    SELECT 4 AS nid, 87.647911 AS "E"
    UNION ALL
    SELECT 5 AS nid, -38.124111 AS "E"
    UNION ALL
    SELECT 6 AS nid, -191.518951 AS "E"
    UNION ALL
    SELECT 7 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 8 AS nid, 273.619507 AS "E"
    UNION ALL
    SELECT 9 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 10 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 11 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 12 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 13 AS nid, 73.876770 AS "E"
    UNION ALL
    SELECT 14 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 15 AS nid, -50.535877 AS "E"
    UNION ALL
    SELECT 16 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 17 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 18 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 19 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 20 AS nid, -55.250984 AS "E"
  ) AS "Values"
 ),
"DT_Output_17" AS 
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
 ),
"DT_node_lookup_18" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_97" <= -0.405790) THEN CASE WHEN (model_input."X_60" <= 0.810390) THEN CASE WHEN (model_input."X_0" <= -0.072903) THEN 7 ELSE 8 END ELSE 6 END ELSE CASE WHEN (model_input."X_52" <= -0.932093) THEN 3 ELSE CASE WHEN (model_input."X_25" <= 1.029705) THEN CASE WHEN (model_input."X_74" <= -0.311982) THEN CASE WHEN (model_input."X_25" <= -0.016290) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_35" <= -1.692556) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_77" <= 1.116089) THEN 17 ELSE 18 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 7.698940 AS "E"
    UNION ALL
    SELECT 1 AS nid, -142.404755 AS "E"
    UNION ALL
    SELECT 2 AS nid, 97.761147 AS "E"
    UNION ALL
    SELECT 3 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 4 AS nid, 63.040398 AS "E"
    UNION ALL
    SELECT 5 AS nid, -122.071754 AS "E"
    UNION ALL
    SELECT 6 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 7 AS nid, -54.486095 AS "E"
    UNION ALL
    SELECT 8 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 9 AS nid, 79.728897 AS "E"
    UNION ALL
    SELECT 10 AS nid, 4.630660 AS "E"
    UNION ALL
    SELECT 11 AS nid, 61.193058 AS "E"
    UNION ALL
    SELECT 12 AS nid, 104.443329 AS "E"
    UNION ALL
    SELECT 13 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 14 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 15 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 16 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 17 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 18 AS nid, 2.776306 AS "E"
  ) AS "Values"
 ),
"DT_Output_18" AS 
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
 ),
"DT_node_lookup_19" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_64" <= 0.164952) THEN CASE WHEN (model_input."X_45" <= 0.600166) THEN CASE WHEN (model_input."X_3" <= -0.540801) THEN 11 ELSE CASE WHEN (model_input."X_8" <= -0.197488) THEN 15 ELSE 16 END END ELSE 6 END ELSE CASE WHEN (model_input."X_16" <= 0.063883) THEN CASE WHEN (model_input."X_17" <= -0.717451) THEN CASE WHEN (model_input."X_25" <= -0.348412) THEN 9 ELSE 10 END ELSE CASE WHEN (model_input."X_83" <= -1.696726) THEN 13 ELSE 14 END END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 53.887627 AS "E"
    UNION ALL
    SELECT 1 AS nid, -69.334923 AS "E"
    UNION ALL
    SELECT 2 AS nid, 149.727386 AS "E"
    UNION ALL
    SELECT 3 AS nid, 117.162315 AS "E"
    UNION ALL
    SELECT 4 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 5 AS nid, -17.109985 AS "E"
    UNION ALL
    SELECT 6 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 7 AS nid, 162.736313 AS "E"
    UNION ALL
    SELECT 8 AS nid, 71.588326 AS "E"
    UNION ALL
    SELECT 9 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 10 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 11 AS nid, -54.486095 AS "E"
    UNION ALL
    SELECT 12 AS nid, -4.651283 AS "E"
    UNION ALL
    SELECT 13 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 14 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 15 AS nid, 2.776306 AS "E"
    UNION ALL
    SELECT 16 AS nid, -19.506460 AS "E"
  ) AS "Values"
 ),
"DT_Output_19" AS 
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
 ),
"DT_node_lookup_20" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_59" <= 0.629034) THEN CASE WHEN (model_input."X_81" <= 0.565630) THEN CASE WHEN (model_input."X_8" <= -0.290008) THEN CASE WHEN (model_input."X_85" <= -0.622983) THEN 13 ELSE CASE WHEN (model_input."X_11" <= -0.527482) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_34" <= -0.961787) THEN 17 ELSE CASE WHEN (model_input."X_69" <= -0.149551) THEN 21 ELSE 22 END END END ELSE CASE WHEN (model_input."X_59" <= -0.778436) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_39" <= -0.255869) THEN CASE WHEN (model_input."X_73" <= -0.031895) THEN CASE WHEN (model_input."X_21" <= 0.784015) THEN 15 ELSE 16 END ELSE 12 END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 57.542274 AS "E"
    UNION ALL
    SELECT 1 AS nid, -50.866234 AS "E"
    UNION ALL
    SELECT 2 AS nid, 238.223129 AS "E"
    UNION ALL
    SELECT 3 AS nid, 152.210678 AS "E"
    UNION ALL
    SELECT 4 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 5 AS nid, -15.703053 AS "E"
    UNION ALL
    SELECT 6 AS nid, -191.518951 AS "E"
    UNION ALL
    SELECT 7 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 8 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 9 AS nid, 20.117329 AS "E"
    UNION ALL
    SELECT 10 AS nid, -51.523434 AS "E"
    UNION ALL
    SELECT 11 AS nid, 135.978424 AS "E"
    UNION ALL
    SELECT 12 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 13 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 14 AS nid, 5.248778 AS "E"
    UNION ALL
    SELECT 15 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 16 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 17 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 18 AS nid, -54.996021 AS "E"
    UNION ALL
    SELECT 19 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 20 AS nid, 2.776306 AS "E"
    UNION ALL
    SELECT 21 AS nid, -55.250984 AS "E"
    UNION ALL
    SELECT 22 AS nid, -54.486095 AS "E"
  ) AS "Values"
 ),
"DT_Output_20" AS 
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
 ),
"DT_node_lookup_21" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_72" <= 0.568030) THEN CASE WHEN (model_input."X_32" <= -0.781065) THEN CASE WHEN (model_input."X_99" <= -0.133368) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_43" <= 0.152969) THEN CASE WHEN (model_input."X_99" <= -0.791396) THEN 11 ELSE CASE WHEN (model_input."X_50" <= -0.075302) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_80" <= 0.664963) THEN CASE WHEN (model_input."X_53" <= 0.868271) THEN 17 ELSE 18 END ELSE CASE WHEN (model_input."X_59" <= 0.275748) THEN 15 ELSE 16 END END END END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, -19.611048 AS "E"
    UNION ALL
    SELECT 1 AS nid, -48.268318 AS "E"
    UNION ALL
    SELECT 2 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 3 AS nid, -181.008789 AS "E"
    UNION ALL
    SELECT 4 AS nid, 18.101917 AS "E"
    UNION ALL
    SELECT 5 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 6 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 7 AS nid, 68.058395 AS "E"
    UNION ALL
    SELECT 8 AS nid, -15.202407 AS "E"
    UNION ALL
    SELECT 9 AS nid, -54.868538 AS "E"
    UNION ALL
    SELECT 10 AS nid, 4.630660 AS "E"
    UNION ALL
    SELECT 11 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 12 AS nid, 60.016418 AS "E"
    UNION ALL
    SELECT 13 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 14 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 15 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 16 AS nid, 2.776306 AS "E"
    UNION ALL
    SELECT 17 AS nid, -54.486095 AS "E"
    UNION ALL
    SELECT 18 AS nid, -55.250984 AS "E"
  ) AS "Values"
 ),
"DT_Output_21" AS 
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
 ),
"DT_node_lookup_22" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_12" <= 1.123787) THEN CASE WHEN (model_input."X_27" <= 0.954946) THEN CASE WHEN (model_input."X_43" <= 0.370997) THEN CASE WHEN (model_input."X_29" <= -0.170988) THEN CASE WHEN (model_input."X_51" <= 0.069505) THEN 13 ELSE 14 END ELSE CASE WHEN (model_input."X_61" <= 0.236934) THEN CASE WHEN (model_input."X_85" <= -0.108847) THEN 17 ELSE 18 END ELSE 12 END END ELSE CASE WHEN (model_input."X_21" <= -0.581112) THEN CASE WHEN (model_input."X_14" <= 0.252366) THEN 15 ELSE 16 END ELSE 10 END END ELSE 4 END ELSE 2 END AS node_id
  FROM "model_input"
 ),
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 24.344307 AS "E"
    UNION ALL
    SELECT 1 AS nid, 86.286018 AS "E"
    UNION ALL
    SELECT 2 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 3 AS nid, 45.615200 AS "E"
    UNION ALL
    SELECT 4 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 5 AS nid, 96.444801 AS "E"
    UNION ALL
    SELECT 6 AS nid, -15.380323 AS "E"
    UNION ALL
    SELECT 7 AS nid, 139.486969 AS "E"
    UNION ALL
    SELECT 8 AS nid, 74.923737 AS "E"
    UNION ALL
    SELECT 9 AS nid, -48.178329 AS "E"
    UNION ALL
    SELECT 10 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 11 AS nid, 57.663136 AS "E"
    UNION ALL
    SELECT 12 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 13 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 14 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 15 AS nid, -55.250984 AS "E"
    UNION ALL
    SELECT 16 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 17 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 18 AS nid, 50.603287 AS "E"
  ) AS "Values"
 ),
"DT_Output_22" AS 
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
 ),
"DT_node_lookup_23" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_80" <= -0.885894) THEN CASE WHEN (model_input."X_94" <= 0.364320) THEN 3 ELSE CASE WHEN (model_input."X_16" <= -0.379735) THEN 7 ELSE 8 END END ELSE CASE WHEN (model_input."X_47" <= 0.326623) THEN CASE WHEN (model_input."X_86" <= 0.387818) THEN CASE WHEN (model_input."X_57" <= -1.500419) THEN 13 ELSE CASE WHEN (model_input."X_63" <= 0.480997) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_57" <= 0.440040) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_3" <= 0.785651) THEN 11 ELSE 12 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 101.015953 AS "E"
    UNION ALL
    SELECT 1 AS nid, 332.844757 AS "E"
    UNION ALL
    SELECT 2 AS nid, 23.739706 AS "E"
    UNION ALL
    SELECT 3 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 4 AS nid, 255.441498 AS "E"
    UNION ALL
    SELECT 5 AS nid, -13.673199 AS "E"
    UNION ALL
    SELECT 6 AS nid, 135.978409 AS "E"
    UNION ALL
    SELECT 7 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 8 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 9 AS nid, -50.280914 AS "E"
    UNION ALL
    SELECT 10 AS nid, 4.630660 AS "E"
    UNION ALL
    SELECT 11 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 12 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 13 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 14 AS nid, -54.868538 AS "E"
    UNION ALL
    SELECT 15 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 16 AS nid, 2.776306 AS "E"
    UNION ALL
    SELECT 17 AS nid, -54.486095 AS "E"
    UNION ALL
    SELECT 18 AS nid, -55.250984 AS "E"
  ) AS "Values"
 ),
"DT_Output_23" AS 
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
 ),
"DT_node_lookup_24" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_85" <= -0.134403) THEN CASE WHEN (model_input."X_63" <= -0.622365) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_96" <= 0.206679) THEN CASE WHEN (model_input."X_11" <= -0.030825) THEN 9 ELSE CASE WHEN (model_input."X_14" <= 0.252366) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_89" <= -0.342023) THEN 7 ELSE CASE WHEN (model_input."X_71" <= 0.158271) THEN 11 ELSE 12 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 219.994644 AS "E"
    UNION ALL
    SELECT 1 AS nid, 365.682495 AS "E"
    UNION ALL
    SELECT 2 AS nid, 32.681698 AS "E"
    UNION ALL
    SELECT 3 AS nid, -31.193451 AS "E"
    UNION ALL
    SELECT 4 AS nid, 80.588058 AS "E"
    UNION ALL
    SELECT 5 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 6 AS nid, 410.247986 AS "E"
    UNION ALL
    SELECT 7 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 8 AS nid, 110.572830 AS "E"
    UNION ALL
    SELECT 9 AS nid, 2.776306 AS "E"
    UNION ALL
    SELECT 10 AS nid, -48.178329 AS "E"
    UNION ALL
    SELECT 11 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 12 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 13 AS nid, -55.250984 AS "E"
    UNION ALL
    SELECT 14 AS nid, -41.105675 AS "E"
  ) AS "Values"
 ),
"DT_Output_24" AS 
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
 ),
"DT_node_lookup_25" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_80" <= -0.902055) THEN CASE WHEN (model_input."X_0" <= -0.187793) THEN 7 ELSE CASE WHEN (model_input."X_67" <= -0.199308) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_64" <= -0.316861) THEN CASE WHEN (model_input."X_29" <= -1.029175) THEN 5 ELSE CASE WHEN (model_input."X_7" <= 0.732664) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_2" <= 0.307971) THEN CASE WHEN (model_input."X_19" <= -0.325549) THEN 17 ELSE CASE WHEN (model_input."X_42" <= -0.267638) THEN 19 ELSE 20 END END ELSE CASE WHEN (model_input."X_22" <= 0.096107) THEN 15 ELSE 16 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 104.992752 AS "E"
    UNION ALL
    SELECT 1 AS nid, 308.216400 AS "E"
    UNION ALL
    SELECT 2 AS nid, 12.618363 AS "E"
    UNION ALL
    SELECT 3 AS nid, -123.384964 AS "E"
    UNION ALL
    SELECT 4 AS nid, 90.334549 AS "E"
    UNION ALL
    SELECT 5 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 6 AS nid, -83.156708 AS "E"
    UNION ALL
    SELECT 7 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 8 AS nid, 335.043640 AS "E"
    UNION ALL
    SELECT 9 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 10 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 11 AS nid, 125.029900 AS "E"
    UNION ALL
    SELECT 12 AS nid, 44.074093 AS "E"
    UNION ALL
    SELECT 13 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 14 AS nid, -55.250984 AS "E"
    UNION ALL
    SELECT 15 AS nid, 2.776306 AS "E"
    UNION ALL
    SELECT 16 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 17 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 18 AS nid, 135.978409 AS "E"
    UNION ALL
    SELECT 19 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 20 AS nid, 128.961334 AS "E"
  ) AS "Values"
 ),
"DT_Output_25" AS 
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
 ),
"DT_node_lookup_26" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_46" <= 0.466447) THEN CASE WHEN (model_input."X_19" <= 0.061920) THEN CASE WHEN (model_input."X_47" <= 0.499701) THEN CASE WHEN (model_input."X_40" <= 0.099863) THEN 15 ELSE 16 END ELSE 10 END ELSE CASE WHEN (model_input."X_33" <= -0.198099) THEN 7 ELSE CASE WHEN (model_input."X_52" <= -0.906987) THEN CASE WHEN (model_input."X_62" <= 0.853770) THEN 17 ELSE 18 END ELSE 14 END END END ELSE CASE WHEN (model_input."X_39" <= -0.514230) THEN 3 ELSE CASE WHEN (model_input."X_76" <= 1.195728) THEN 11 ELSE 12 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 17.400646 AS "E"
    UNION ALL
    SELECT 1 AS nid, -23.887623 AS "E"
    UNION ALL
    SELECT 2 AS nid, 196.316483 AS "E"
    UNION ALL
    SELECT 3 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 4 AS nid, 139.486969 AS "E"
    UNION ALL
    SELECT 5 AS nid, 24.043318 AS "E"
    UNION ALL
    SELECT 6 AS nid, -64.971275 AS "E"
    UNION ALL
    SELECT 7 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 8 AS nid, -52.638462 AS "E"
    UNION ALL
    SELECT 9 AS nid, 3.703483 AS "E"
    UNION ALL
    SELECT 10 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 11 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 12 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 13 AS nid, -54.945030 AS "E"
    UNION ALL
    SELECT 14 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 15 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 16 AS nid, 2.776306 AS "E"
    UNION ALL
    SELECT 17 AS nid, -55.250988 AS "E"
    UNION ALL
    SELECT 18 AS nid, -54.486095 AS "E"
  ) AS "Values"
 ),
"DT_Output_26" AS 
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
 ),
"DT_node_lookup_27" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_30" <= 0.726508) THEN CASE WHEN (model_input."X_96" <= -0.014965) THEN CASE WHEN (model_input."X_58" <= 0.684547) THEN CASE WHEN (model_input."X_28" <= 0.513544) THEN CASE WHEN (model_input."X_3" <= 0.011537) THEN 23 ELSE 24 END ELSE 20 END ELSE CASE WHEN (model_input."X_64" <= -0.432588) THEN 9 ELSE 10 END END ELSE CASE WHEN (model_input."X_61" <= 0.187584) THEN CASE WHEN (model_input."X_24" <= -0.039627) THEN 15 ELSE CASE WHEN (model_input."X_41" <= -0.139999) THEN 25 ELSE 26 END END ELSE CASE WHEN (model_input."X_43" <= -0.792257) THEN CASE WHEN (model_input."X_29" <= -0.451455) THEN 21 ELSE 22 END ELSE 18 END END END ELSE CASE WHEN (model_input."X_20" <= -0.543070) THEN CASE WHEN (model_input."X_38" <= 0.965088) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 64.598892 AS "E"
    UNION ALL
    SELECT 1 AS nid, 8.650102 AS "E"
    UNION ALL
    SELECT 2 AS nid, 307.043671 AS "E"
    UNION ALL
    SELECT 3 AS nid, -99.627228 AS "E"
    UNION ALL
    SELECT 4 AS nid, 76.323441 AS "E"
    UNION ALL
    SELECT 5 AS nid, 360.111755 AS "E"
    UNION ALL
    SELECT 6 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 7 AS nid, -38.366077 AS "E"
    UNION ALL
    SELECT 8 AS nid, -191.518951 AS "E"
    UNION ALL
    SELECT 9 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 10 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 11 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 12 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 13 AS nid, 27.616974 AS "E"
    UNION ALL
    SELECT 14 AS nid, 125.029892 AS "E"
    UNION ALL
    SELECT 15 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 16 AS nid, 4.630660 AS "E"
    UNION ALL
    SELECT 17 AS nid, 135.978424 AS "E"
    UNION ALL
    SELECT 18 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 19 AS nid, -47.795883 AS "E"
    UNION ALL
    SELECT 20 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 21 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 22 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 23 AS nid, -54.486095 AS "E"
    UNION ALL
    SELECT 24 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 25 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 26 AS nid, 2.776306 AS "E"
  ) AS "Values"
 ),
"DT_Output_27" AS 
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
 ),
"DT_node_lookup_28" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_57" <= -1.229702) THEN CASE WHEN (model_input."X_29" <= -1.029175) THEN 5 ELSE CASE WHEN (model_input."X_41" <= -0.360979) THEN 17 ELSE 18 END END ELSE CASE WHEN (model_input."X_32" <= 1.072171) THEN CASE WHEN (model_input."X_56" <= -0.270565) THEN CASE WHEN (model_input."X_71" <= -0.766879) THEN 11 ELSE CASE WHEN (model_input."X_22" <= 0.854947) THEN 15 ELSE 16 END END ELSE CASE WHEN (model_input."X_11" <= 0.701779) THEN 13 ELSE 14 END END ELSE CASE WHEN (model_input."X_94" <= 0.777444) THEN 7 ELSE 8 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 35.965683 AS "E"
    UNION ALL
    SELECT 1 AS nid, -144.945267 AS "E"
    UNION ALL
    SELECT 2 AS nid, 144.512253 AS "E"
    UNION ALL
    SELECT 3 AS nid, 90.612358 AS "E"
    UNION ALL
    SELECT 4 AS nid, 360.111755 AS "E"
    UNION ALL
    SELECT 5 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 6 AS nid, -45.820782 AS "E"
    UNION ALL
    SELECT 7 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 8 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 9 AS nid, 128.639740 AS "E"
    UNION ALL
    SELECT 10 AS nid, 27.233370 AS "E"
    UNION ALL
    SELECT 11 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 12 AS nid, 110.572838 AS "E"
    UNION ALL
    SELECT 13 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 14 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 15 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 16 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 17 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 18 AS nid, -55.250984 AS "E"
  ) AS "Values"
 ),
"DT_Output_28" AS 
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
 ),
"DT_node_lookup_29" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_96" <= 0.826038) THEN CASE WHEN (model_input."X_32" <= -1.067789) THEN 3 ELSE CASE WHEN (model_input."X_10" <= -0.848596) THEN CASE WHEN (model_input."X_25" <= -0.816615) THEN 11 ELSE 12 END ELSE CASE WHEN (model_input."X_80" <= 0.664963) THEN CASE WHEN (model_input."X_75" <= 0.370991) THEN CASE WHEN (model_input."X_0" <= -0.036948) THEN 19 ELSE 20 END ELSE 16 END ELSE CASE WHEN (model_input."X_3" <= 0.037396) THEN CASE WHEN (model_input."X_77" <= 1.116089) THEN 17 ELSE 18 END ELSE 14 END END END END ELSE CASE WHEN (model_input."X_76" <= 1.715742) THEN 5 ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 1.822424 AS "E"
    UNION ALL
    SELECT 1 AS nid, -34.408875 AS "E"
    UNION ALL
    SELECT 2 AS nid, 255.441498 AS "E"
    UNION ALL
    SELECT 3 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 4 AS nid, 0.534606 AS "E"
    UNION ALL
    SELECT 5 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 6 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 7 AS nid, 73.876770 AS "E"
    UNION ALL
    SELECT 8 AS nid, -23.912777 AS "E"
    UNION ALL
    SELECT 9 AS nid, -47.987106 AS "E"
    UNION ALL
    SELECT 10 AS nid, -4.653317 AS "E"
    UNION ALL
    SELECT 11 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 12 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 13 AS nid, 5.248778 AS "E"
    UNION ALL
    SELECT 14 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 15 AS nid, -54.868538 AS "E"
    UNION ALL
    SELECT 16 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 17 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 18 AS nid, 2.776306 AS "E"
    UNION ALL
    SELECT 19 AS nid, -54.486095 AS "E"
    UNION ALL
    SELECT 20 AS nid, -55.250984 AS "E"
  ) AS "Values"
 ),
"DT_Output_29" AS 
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
 ),
"DT_node_lookup_30" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_32" <= 1.087020) THEN CASE WHEN (model_input."X_41" <= -1.392647) THEN CASE WHEN (model_input."X_85" <= 0.626514) THEN CASE WHEN (model_input."X_76" <= 1.195728) THEN 13 ELSE 14 END ELSE 8 END ELSE CASE WHEN (model_input."X_95" <= -0.119553) THEN CASE WHEN (model_input."X_22" <= 1.375984) THEN 15 ELSE 16 END ELSE CASE WHEN (model_input."X_91" <= 1.254627) THEN CASE WHEN (model_input."X_16" <= -0.743237) THEN 17 ELSE 18 END ELSE 12 END END END ELSE CASE WHEN (model_input."X_69" <= -0.506932) THEN 5 ELSE 6 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 77.504822 AS "E"
    UNION ALL
    SELECT 1 AS nid, 16.144470 AS "E"
    UNION ALL
    SELECT 2 AS nid, 343.399658 AS "E"
    UNION ALL
    SELECT 3 AS nid, 114.634636 AS "E"
    UNION ALL
    SELECT 4 AS nid, -27.628931 AS "E"
    UNION ALL
    SELECT 5 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 6 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 7 AS nid, 135.978424 AS "E"
    UNION ALL
    SELECT 8 AS nid, 50.603287 AS "E"
    UNION ALL
    SELECT 9 AS nid, -43.781761 AS "E"
    UNION ALL
    SELECT 10 AS nid, -7.437900 AS "E"
    UNION ALL
    SELECT 11 AS nid, 4.630660 AS "E"
    UNION ALL
    SELECT 12 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 13 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 14 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 15 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 16 AS nid, -54.486095 AS "E"
    UNION ALL
    SELECT 17 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 18 AS nid, 2.776306 AS "E"
  ) AS "Values"
 ),
"DT_Output_30" AS 
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
 ),
"DT_node_lookup_31" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_64" <= 0.275986) THEN CASE WHEN (model_input."X_68" <= -0.888284) THEN CASE WHEN (model_input."X_91" <= 0.162592) THEN 7 ELSE 8 END ELSE CASE WHEN (model_input."X_26" <= -0.682645) THEN 9 ELSE CASE WHEN (model_input."X_3" <= 0.037396) THEN CASE WHEN (model_input."X_85" <= 0.026869) THEN 17 ELSE 18 END ELSE 16 END END END ELSE CASE WHEN (model_input."X_34" <= 0.822265) THEN CASE WHEN (model_input."X_57" <= -0.239534) THEN 11 ELSE CASE WHEN (model_input."X_81" <= -1.033806) THEN 13 ELSE 14 END END ELSE 4 END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 32.708851 AS "E"
    UNION ALL
    SELECT 1 AS nid, -76.339020 AS "E"
    UNION ALL
    SELECT 2 AS nid, 172.913239 AS "E"
    UNION ALL
    SELECT 3 AS nid, 133.357468 AS "E"
    UNION ALL
    SELECT 4 AS nid, 410.248016 AS "E"
    UNION ALL
    SELECT 5 AS nid, -209.035889 AS "E"
    UNION ALL
    SELECT 6 AS nid, -9.990585 AS "E"
    UNION ALL
    SELECT 7 AS nid, -138.968170 AS "E"
    UNION ALL
    SELECT 8 AS nid, -244.069748 AS "E"
    UNION ALL
    SELECT 9 AS nid, -55.250984 AS "E"
    UNION ALL
    SELECT 10 AS nid, -0.938506 AS "E"
    UNION ALL
    SELECT 11 AS nid, 92.184334 AS "E"
    UNION ALL
    SELECT 12 AS nid, 141.592087 AS "E"
    UNION ALL
    SELECT 13 AS nid, 150.012589 AS "E"
    UNION ALL
    SELECT 14 AS nid, 128.961334 AS "E"
    UNION ALL
    SELECT 15 AS nid, 3.703483 AS "E"
    UNION ALL
    SELECT 16 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 17 AS nid, 6.485013 AS "E"
    UNION ALL
    SELECT 18 AS nid, 2.776306 AS "E"
  ) AS "Values"
 ),
"DT_Output_31" AS 
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
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_Output_31" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   AVG(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"
