WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_61" < 0.385656) THEN CASE WHEN (t."X_61" < -0.453461) THEN CASE WHEN (t."X_1" < -0.847429) THEN 7 ELSE CASE WHEN (t."X_67" < 1.022175) THEN CASE WHEN (t."X_0" < -0.009363) THEN CASE WHEN (t."X_63" < -0.785685) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_65" < 0.225201) THEN 31 ELSE 32 END END ELSE 14 END END ELSE CASE WHEN (t."X_4" < -0.340496) THEN CASE WHEN (t."X_62" < -0.864967) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_67" < 1.022175) THEN CASE WHEN (t."X_67" < 0.883874) THEN CASE WHEN (t."X_67" < 0.351757) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_68" < -0.224926) THEN 35 ELSE 36 END END ELSE 18 END END END ELSE CASE WHEN (t."X_61" < 1.181141) THEN CASE WHEN (t."X_67" < 0.883874) THEN CASE WHEN (t."X_4" < 0.102563) THEN CASE WHEN (t."X_65" < -0.292424) THEN CASE WHEN (t."X_57" < -0.484844) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_58" < -0.945527) THEN 39 ELSE 40 END END ELSE 20 END ELSE CASE WHEN (t."X_33" < 1.346426) THEN 21 ELSE 22 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 6 AS nid,  -0.288462 AS "P_0", 0.288462 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.287755 AS "P_0", -0.287755 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.284615 AS "P_0", -0.284615 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.100000 AS "P_0", -0.100000 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.283333 AS "P_0", -0.283333 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.272727 AS "P_0", -0.272727 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.158824 AS "P_0", -0.158824 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.286813 AS "P_0", 0.286813 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.150000 AS "P_0", 0.150000 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.000000 AS "P_0", -0.000000 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.264706 AS "P_0", -0.264706 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.136364 AS "P_0", -0.136364 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.052941 AS "P_0", 0.052941 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.073770 AS "P_0", 0.073770 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  0.278571 AS "P_0", -0.278571 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.065217 AS "P_0", 0.065217 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.283784 AS "P_0", 0.283784 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  -0.000000 AS "P_0", -0.000000 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.218182 AS "P_0", 0.218182 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  -0.128571 AS "P_0", 0.128571 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  -0.286957 AS "P_0", 0.286957 AS "P_1"
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
    CASE WHEN (t."X_61" < 0.385656) THEN CASE WHEN (t."X_61" < -0.453461) THEN CASE WHEN (t."X_1" < -0.847429) THEN CASE WHEN (t."X_38" < 1.227960) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_67" < 1.022175) THEN CASE WHEN (t."X_44" < 0.262988) THEN CASE WHEN (t."X_8" < -0.884882) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_3" < 0.330709) THEN 41 ELSE 42 END END ELSE 18 END END ELSE CASE WHEN (t."X_4" < -0.340496) THEN CASE WHEN (t."X_59" < 0.573896) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_67" < 1.022175) THEN CASE WHEN (t."X_67" < 0.883874) THEN CASE WHEN (t."X_4" < -0.077829) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_68" < -0.224926) THEN 45 ELSE 46 END END ELSE 22 END END END ELSE CASE WHEN (t."X_1" < 0.029123) THEN CASE WHEN (t."X_21" < -0.519345) THEN 11 ELSE CASE WHEN (t."X_17" < 0.237407) THEN 23 ELSE 24 END END ELSE CASE WHEN (t."X_61" < 0.808449) THEN CASE WHEN (t."X_46" < -0.487013) THEN CASE WHEN (t."X_9" < 0.298059) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_98" < -0.571723) THEN 35 ELSE 36 END END ELSE CASE WHEN (t."X_63" < -0.218582) THEN CASE WHEN (t."X_84" < 0.839483) THEN CASE WHEN (t."X_9" < 0.843460) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_26" < -0.267075) THEN 49 ELSE 50 END END ELSE 28 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 11 AS nid,  0.001852 AS "P_0", -0.001852 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.227890 AS "P_0", -0.227890 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.139906 AS "P_0", -0.139906 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.220069 AS "P_0", -0.220069 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.228587 AS "P_0", -0.228587 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.072650 AS "P_0", -0.072650 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.213914 AS "P_0", -0.213915 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  -0.230670 AS "P_0", 0.230670 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.073877 AS "P_0", 0.073877 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.234246 AS "P_0", 0.234246 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  0.053039 AS "P_0", -0.053039 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  -0.120716 AS "P_0", 0.120716 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.116259 AS "P_0", 0.116259 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.229478 AS "P_0", 0.229478 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.008495 AS "P_0", -0.008495 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  0.182351 AS "P_0", -0.182351 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  -0.079930 AS "P_0", 0.079930 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  0.122236 AS "P_0", -0.122236 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  -0.096763 AS "P_0", 0.096763 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  0.168606 AS "P_0", -0.168606 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  -0.047563 AS "P_0", 0.047563 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  -0.221341 AS "P_0", 0.221341 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  -0.222401 AS "P_0", 0.222401 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  -0.090095 AS "P_0", 0.090095 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.008707 AS "P_0", -0.008707 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  -0.198390 AS "P_0", 0.198390 AS "P_1"
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
    CASE WHEN (t."X_61" < 0.385656) THEN CASE WHEN (t."X_4" < -0.641995) THEN CASE WHEN (t."X_39" < 1.268111) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_67" < 1.022175) THEN CASE WHEN (t."X_61" < -0.837876) THEN CASE WHEN (t."X_67" < 0.351757) THEN 21 ELSE CASE WHEN (t."X_21" < -0.222326) THEN 27 ELSE 28 END END ELSE CASE WHEN (t."X_67" < 0.883874) THEN CASE WHEN (t."X_67" < 0.351757) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_36" < -0.796243) THEN 31 ELSE 32 END END END ELSE 10 END END ELSE CASE WHEN (t."X_61" < 1.181141) THEN CASE WHEN (t."X_67" < 0.883874) THEN CASE WHEN (t."X_67" < -0.386630) THEN CASE WHEN (t."X_87" < -0.470301) THEN CASE WHEN (t."X_42" < -0.016134) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_31" < -0.881113) THEN 35 ELSE 36 END END ELSE 18 END ELSE CASE WHEN (t."X_26" < -1.262076) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_62" < 1.270880) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  0.205317 AS "P_0", -0.205317 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.098586 AS "P_0", -0.098586 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.193745 AS "P_0", -0.193745 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.198631 AS "P_0", 0.198631 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.117447 AS "P_0", 0.117447 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.172307 AS "P_0", -0.172307 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.085431 AS "P_0", 0.085431 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.196475 AS "P_0", 0.196475 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.034386 AS "P_0", 0.034386 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.046044 AS "P_0", -0.046044 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.194468 AS "P_0", -0.194468 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  -0.020874 AS "P_0", 0.020874 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.179012 AS "P_0", -0.179012 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.031569 AS "P_0", -0.031569 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.184726 AS "P_0", 0.184726 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.189861 AS "P_0", 0.189861 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  0.077689 AS "P_0", -0.077689 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.060492 AS "P_0", 0.060492 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.211641 AS "P_0", 0.211641 AS "P_1"
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
    CASE WHEN (t."X_61" < 0.385656) THEN CASE WHEN (t."X_4" < -0.641995) THEN CASE WHEN (t."X_39" < 1.268111) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_67" < 1.022175) THEN CASE WHEN (t."X_79" < -0.003341) THEN CASE WHEN (t."X_85" < 0.476340) THEN CASE WHEN (t."X_55" < -0.833831) THEN 31 ELSE 32 END ELSE CASE WHEN (t."X_61" < -0.062274) THEN 33 ELSE 34 END END ELSE CASE WHEN (t."X_23" < 1.308142) THEN CASE WHEN (t."X_39" < -1.321974) THEN 35 ELSE 36 END ELSE 26 END END ELSE 10 END END ELSE CASE WHEN (t."X_1" < 0.029123) THEN CASE WHEN (t."X_32" < 0.538748) THEN CASE WHEN (t."X_42" < -0.016134) THEN 17 ELSE 18 END ELSE 12 END ELSE CASE WHEN (t."X_61" < 0.808449) THEN CASE WHEN (t."X_46" < -0.487013) THEN 19 ELSE CASE WHEN (t."X_97" < 0.880907) THEN 27 ELSE 28 END END ELSE CASE WHEN (t."X_63" < -0.218582) THEN CASE WHEN (t."X_39" < 0.219915) THEN CASE WHEN (t."X_99" < 0.619435) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_11" < -0.273264) THEN 39 ELSE 40 END END ELSE 22 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  0.185660 AS "P_0", -0.185660 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.080782 AS "P_0", -0.080782 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.174009 AS "P_0", -0.174009 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.183599 AS "P_0", 0.183599 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.113252 AS "P_0", 0.113252 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.166439 AS "P_0", -0.166439 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.008972 AS "P_0", 0.008972 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.185635 AS "P_0", 0.185635 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.136186 AS "P_0", -0.136186 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  -0.182309 AS "P_0", 0.182309 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.069548 AS "P_0", 0.069548 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  -0.028552 AS "P_0", 0.028552 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  0.158581 AS "P_0", -0.158581 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  0.052004 AS "P_0", -0.052004 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  -0.184931 AS "P_0", 0.184931 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.106719 AS "P_0", -0.106719 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.079361 AS "P_0", 0.079361 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  -0.183857 AS "P_0", 0.183857 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.097501 AS "P_0", 0.097501 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.055089 AS "P_0", -0.055089 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  -0.142762 AS "P_0", 0.142762 AS "P_1"
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
    CASE WHEN (t."X_61" < 0.385656) THEN CASE WHEN (t."X_4" < -0.641995) THEN CASE WHEN (t."X_55" < -1.320804) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_67" < 1.022175) THEN CASE WHEN (t."X_61" < -0.837876) THEN CASE WHEN (t."X_10" < -0.481990) THEN CASE WHEN (t."X_25" < -0.538383) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_57" < 0.248351) THEN 31 ELSE 32 END END ELSE CASE WHEN (t."X_67" < 0.883874) THEN CASE WHEN (t."X_67" < 0.351757) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_44" < -0.250558) THEN 35 ELSE 36 END END END ELSE 10 END END ELSE CASE WHEN (t."X_61" < 1.181141) THEN CASE WHEN (t."X_67" < 0.883874) THEN CASE WHEN (t."X_67" < -0.386630) THEN CASE WHEN (t."X_8" < -0.565049) THEN CASE WHEN (t."X_48" < -0.323966) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_75" < 0.041202) THEN 39 ELSE 40 END END ELSE 18 END ELSE CASE WHEN (t."X_67" < 1.022175) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_86" < 0.880531) THEN 13 ELSE CASE WHEN (t."X_8" < -0.340320) THEN 21 ELSE 22 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  0.058098 AS "P_0", -0.058098 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.174268 AS "P_0", -0.174268 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.160104 AS "P_0", -0.160104 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.173846 AS "P_0", 0.173846 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.143079 AS "P_0", -0.143079 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.174976 AS "P_0", 0.174976 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.065612 AS "P_0", 0.065612 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.011633 AS "P_0", 0.011633 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.154505 AS "P_0", 0.154505 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.085474 AS "P_0", -0.085474 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.198601 AS "P_0", -0.198601 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  -0.047089 AS "P_0", 0.047089 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  0.129434 AS "P_0", -0.129434 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.017221 AS "P_0", 0.017221 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  0.147496 AS "P_0", -0.147496 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  -0.014196 AS "P_0", 0.014196 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.175396 AS "P_0", 0.175396 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  0.098268 AS "P_0", -0.098268 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.123888 AS "P_0", 0.123888 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  -0.182123 AS "P_0", 0.182123 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  -0.058538 AS "P_0", 0.058538 AS "P_1"
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