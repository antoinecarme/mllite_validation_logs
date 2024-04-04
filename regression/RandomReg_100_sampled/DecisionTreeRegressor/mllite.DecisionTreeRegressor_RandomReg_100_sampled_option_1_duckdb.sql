WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_46" <= 1.239304) THEN CASE WHEN (model_input."X_30" <= 0.917465) THEN CASE WHEN (model_input."X_46" <= -0.508200) THEN CASE WHEN (model_input."X_39" <= 0.653643) THEN CASE WHEN (model_input."X_96" <= 0.587820) THEN CASE WHEN (model_input."X_46" <= -1.932181) THEN 23 ELSE 24 END ELSE CASE WHEN (model_input."X_87" <= 1.775831) THEN 21 ELSE 22 END END ELSE CASE WHEN (model_input."X_21" <= -0.567536) THEN CASE WHEN (model_input."X_16" <= -0.240629) THEN 45 ELSE 46 END ELSE CASE WHEN (model_input."X_71" <= 0.329177) THEN 51 ELSE 52 END END END ELSE CASE WHEN (model_input."X_3" <= -1.078660) THEN CASE WHEN (model_input."X_26" <= -0.902599) THEN CASE WHEN (model_input."X_79" <= 1.732306) THEN 53 ELSE 54 END ELSE CASE WHEN (model_input."X_0" <= -0.180262) THEN 49 ELSE 50 END END ELSE CASE WHEN (model_input."X_87" <= 0.709822) THEN CASE WHEN (model_input."X_55" <= -0.634092) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_11" <= -0.312104) THEN 39 ELSE 40 END END END END ELSE CASE WHEN (model_input."X_1" <= 0.564169) THEN CASE WHEN (model_input."X_59" <= 0.899300) THEN CASE WHEN (model_input."X_59" <= 0.307429) THEN 47 ELSE CASE WHEN (model_input."X_76" <= 0.393777) THEN 55 ELSE 56 END END ELSE CASE WHEN (model_input."X_77" <= 0.126109) THEN 33 ELSE 34 END END ELSE CASE WHEN (model_input."X_12" <= -0.162365) THEN CASE WHEN (model_input."X_39" <= -0.643673) THEN 57 ELSE 58 END ELSE 36 END END END ELSE CASE WHEN (model_input."X_47" <= 0.713124) THEN CASE WHEN (model_input."X_20" <= -0.643064) THEN CASE WHEN (model_input."X_3" <= 0.247428) THEN 41 ELSE 42 END ELSE CASE WHEN (model_input."X_34" <= 0.449719) THEN CASE WHEN (model_input."X_80" <= -0.444724) THEN 61 ELSE 62 END ELSE 28 END END ELSE CASE WHEN (model_input."X_86" <= -1.057289) THEN 5 ELSE CASE WHEN (model_input."X_0" <= 0.284825) THEN 59 ELSE 60 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 7.508838 AS "E"
    UNION ALL
    SELECT 1 AS nid, -19.208889 AS "E"
    UNION ALL
    SELECT 2 AS nid, 194.532898 AS "E"
    UNION ALL
    SELECT 3 AS nid, 259.676300 AS "E"
    UNION ALL
    SELECT 4 AS nid, 51.217457 AS "E"
    UNION ALL
    SELECT 5 AS nid, 211.129684 AS "E"
    UNION ALL
    SELECT 6 AS nid, 11.239401 AS "E"
    UNION ALL
    SELECT 7 AS nid, 367.388885 AS "E"
    UNION ALL
    SELECT 8 AS nid, 219.284042 AS "E"
    UNION ALL
    SELECT 9 AS nid, -45.447502 AS "E"
    UNION ALL
    SELECT 10 AS nid, 127.418617 AS "E"
    UNION ALL
    SELECT 11 AS nid, 84.196999 AS "E"
    UNION ALL
    SELECT 12 AS nid, 231.150467 AS "E"
    UNION ALL
    SELECT 13 AS nid, -121.806412 AS "E"
    UNION ALL
    SELECT 14 AS nid, 5.458452 AS "E"
    UNION ALL
    SELECT 15 AS nid, -164.207809 AS "E"
    UNION ALL
    SELECT 16 AS nid, -17.730291 AS "E"
    UNION ALL
    SELECT 17 AS nid, -112.730247 AS "E"
    UNION ALL
    SELECT 18 AS nid, 36.555393 AS "E"
    UNION ALL
    SELECT 19 AS nid, -116.878365 AS "E"
    UNION ALL
    SELECT 20 AS nid, -258.866638 AS "E"
    UNION ALL
    SELECT 21 AS nid, -232.178925 AS "E"
    UNION ALL
    SELECT 22 AS nid, -472.368042 AS "E"
    UNION ALL
    SELECT 23 AS nid, -257.779022 AS "E"
    UNION ALL
    SELECT 24 AS nid, -88.698235 AS "E"
    UNION ALL
    SELECT 25 AS nid, 38.163490 AS "E"
    UNION ALL
    SELECT 26 AS nid, 148.643906 AS "E"
    UNION ALL
    SELECT 27 AS nid, 246.571793 AS "E"
    UNION ALL
    SELECT 28 AS nid, 137.420807 AS "E"
    UNION ALL
    SELECT 29 AS nid, 111.679779 AS "E"
    UNION ALL
    SELECT 30 AS nid, -14.458049 AS "E"
    UNION ALL
    SELECT 31 AS nid, 23.360809 AS "E"
    UNION ALL
    SELECT 32 AS nid, 155.839264 AS "E"
    UNION ALL
    SELECT 33 AS nid, 112.371254 AS "E"
    UNION ALL
    SELECT 34 AS nid, 203.052887 AS "E"
    UNION ALL
    SELECT 35 AS nid, 178.274307 AS "E"
    UNION ALL
    SELECT 36 AS nid, 266.401245 AS "E"
    UNION ALL
    SELECT 37 AS nid, 14.557789 AS "E"
    UNION ALL
    SELECT 38 AS nid, -78.292870 AS "E"
    UNION ALL
    SELECT 39 AS nid, -189.489410 AS "E"
    UNION ALL
    SELECT 40 AS nid, -22.694611 AS "E"
    UNION ALL
    SELECT 41 AS nid, 396.095551 AS "E"
    UNION ALL
    SELECT 42 AS nid, 309.975525 AS "E"
    UNION ALL
    SELECT 43 AS nid, 69.812805 AS "E"
    UNION ALL
    SELECT 44 AS nid, -13.069716 AS "E"
    UNION ALL
    SELECT 45 AS nid, -45.606979 AS "E"
    UNION ALL
    SELECT 46 AS nid, -135.104675 AS "E"
    UNION ALL
    SELECT 47 AS nid, 61.317940 AS "E"
    UNION ALL
    SELECT 48 AS nid, -19.722630 AS "E"
    UNION ALL
    SELECT 49 AS nid, 191.586990 AS "E"
    UNION ALL
    SELECT 50 AS nid, 120.091522 AS "E"
    UNION ALL
    SELECT 51 AS nid, 64.810791 AS "E"
    UNION ALL
    SELECT 52 AS nid, -1.118467 AS "E"
    UNION ALL
    SELECT 53 AS nid, 2.679721 AS "E"
    UNION ALL
    SELECT 54 AS nid, 64.722984 AS "E"
    UNION ALL
    SELECT 55 AS nid, -45.608250 AS "E"
    UNION ALL
    SELECT 56 AS nid, 6.162992 AS "E"
    UNION ALL
    SELECT 57 AS nid, 152.636261 AS "E"
    UNION ALL
    SELECT 58 AS nid, 203.912354 AS "E"
    UNION ALL
    SELECT 59 AS nid, 36.728981 AS "E"
    UNION ALL
    SELECT 60 AS nid, -14.250177 AS "E"
    UNION ALL
    SELECT 61 AS nid, 224.734421 AS "E"
    UNION ALL
    SELECT 62 AS nid, 268.409180 AS "E"
  ) AS "Values"
 ),
"DT_Output" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup" AS t1
   LEFT OUTER JOIN
   "DT_node_data" AS t2
   ON t1.node_id = t2.nid
 )
SELECT
   "DT_Output"."index" AS "index",
   "DT_Output"."E" AS "Estimator"
FROM "DT_Output"