WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    model_input."index" AS "index",
    CASE WHEN (model_input."X_46" <= 1.363570) THEN CASE WHEN (model_input."X_59" <= 0.772609) THEN CASE WHEN (model_input."X_77" <= 0.112987) THEN CASE WHEN (model_input."X_46" <= -0.022050) THEN CASE WHEN (model_input."X_25" <= -1.191607) THEN CASE WHEN (model_input."X_83" <= 0.491486) THEN 19 ELSE 20 END ELSE CASE WHEN (model_input."X_63" <= 0.305646) THEN 23 ELSE 24 END END ELSE CASE WHEN (model_input."X_43" <= 0.203060) THEN CASE WHEN (model_input."X_45" <= 0.630279) THEN 31 ELSE 32 END ELSE CASE WHEN (model_input."X_30" <= -0.724074) THEN 41 ELSE 42 END END END ELSE CASE WHEN (model_input."X_95" <= -0.362305) THEN CASE WHEN (model_input."X_5" <= 0.611390) THEN CASE WHEN (model_input."X_94" <= -0.448520) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_28" <= -0.521499) THEN 43 ELSE 44 END END ELSE CASE WHEN (model_input."X_32" <= -0.493246) THEN CASE WHEN (model_input."X_86" <= 0.175206) THEN 33 ELSE 34 END ELSE CASE WHEN (model_input."X_52" <= -0.711248) THEN 29 ELSE 30 END END END END ELSE CASE WHEN (model_input."X_41" <= 0.997976) THEN CASE WHEN (model_input."X_93" <= 0.607494) THEN CASE WHEN (model_input."X_16" <= -0.867247) THEN CASE WHEN (model_input."X_21" <= 0.206058) THEN 55 ELSE 56 END ELSE CASE WHEN (model_input."X_48" <= 0.293261) THEN 53 ELSE 54 END END ELSE CASE WHEN (model_input."X_6" <= -0.788577) THEN 49 ELSE 50 END END ELSE 10 END END ELSE CASE WHEN (model_input."X_13" <= -0.686994) THEN CASE WHEN (model_input."X_98" <= -0.714784) THEN 5 ELSE 6 END ELSE CASE WHEN (model_input."X_22" <= 0.101238) THEN CASE WHEN (model_input."X_57" <= -0.837683) THEN 47 ELSE 48 END ELSE CASE WHEN (model_input."X_27" <= 0.255999) THEN 51 ELSE 52 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 5.776030 AS "E"
    UNION ALL
    SELECT 1 AS nid, -22.362696 AS "E"
    UNION ALL
    SELECT 2 AS nid, 189.505295 AS "E"
    UNION ALL
    SELECT 3 AS nid, 52.082653 AS "E"
    UNION ALL
    SELECT 4 AS nid, 246.764771 AS "E"
    UNION ALL
    SELECT 5 AS nid, 124.829010 AS "E"
    UNION ALL
    SELECT 6 AS nid, 3.585089 AS "E"
    UNION ALL
    SELECT 7 AS nid, -48.241890 AS "E"
    UNION ALL
    SELECT 8 AS nid, 102.947060 AS "E"
    UNION ALL
    SELECT 9 AS nid, 65.553505 AS "E"
    UNION ALL
    SELECT 10 AS nid, 207.649017 AS "E"
    UNION ALL
    SELECT 11 AS nid, -101.116905 AS "E"
    UNION ALL
    SELECT 12 AS nid, 6.983166 AS "E"
    UNION ALL
    SELECT 13 AS nid, -90.946953 AS "E"
    UNION ALL
    SELECT 14 AS nid, 42.594116 AS "E"
    UNION ALL
    SELECT 15 AS nid, -139.727859 AS "E"
    UNION ALL
    SELECT 16 AS nid, -26.308258 AS "E"
    UNION ALL
    SELECT 17 AS nid, -318.827332 AS "E"
    UNION ALL
    SELECT 18 AS nid, -113.194580 AS "E"
    UNION ALL
    SELECT 19 AS nid, -381.980652 AS "E"
    UNION ALL
    SELECT 20 AS nid, -255.673996 AS "E"
    UNION ALL
    SELECT 21 AS nid, 30.972124 AS "E"
    UNION ALL
    SELECT 22 AS nid, -83.588646 AS "E"
    UNION ALL
    SELECT 23 AS nid, -64.686958 AS "E"
    UNION ALL
    SELECT 24 AS nid, -165.433578 AS "E"
    UNION ALL
    SELECT 25 AS nid, -38.861614 AS "E"
    UNION ALL
    SELECT 26 AS nid, 68.659958 AS "E"
    UNION ALL
    SELECT 27 AS nid, 92.137680 AS "E"
    UNION ALL
    SELECT 28 AS nid, -0.906931 AS "E"
    UNION ALL
    SELECT 29 AS nid, 16.100502 AS "E"
    UNION ALL
    SELECT 30 AS nid, 98.224632 AS "E"
    UNION ALL
    SELECT 31 AS nid, 1.390523 AS "E"
    UNION ALL
    SELECT 32 AS nid, 80.274788 AS "E"
    UNION ALL
    SELECT 33 AS nid, -19.182951 AS "E"
    UNION ALL
    SELECT 34 AS nid, -97.897598 AS "E"
    UNION ALL
    SELECT 35 AS nid, -57.123047 AS "E"
    UNION ALL
    SELECT 36 AS nid, -124.770866 AS "E"
    UNION ALL
    SELECT 37 AS nid, 206.858475 AS "E"
    UNION ALL
    SELECT 38 AS nid, 275.269196 AS "E"
    UNION ALL
    SELECT 39 AS nid, -77.325775 AS "E"
    UNION ALL
    SELECT 40 AS nid, -16.717588 AS "E"
    UNION ALL
    SELECT 41 AS nid, -111.891708 AS "E"
    UNION ALL
    SELECT 42 AS nid, -55.285568 AS "E"
    UNION ALL
    SELECT 43 AS nid, -100.674438 AS "E"
    UNION ALL
    SELECT 44 AS nid, -148.867294 AS "E"
    UNION ALL
    SELECT 45 AS nid, 63.991978 AS "E"
    UNION ALL
    SELECT 46 AS nid, 110.901466 AS "E"
    UNION ALL
    SELECT 47 AS nid, 224.570419 AS "E"
    UNION ALL
    SELECT 48 AS nid, 180.290588 AS "E"
    UNION ALL
    SELECT 49 AS nid, -19.506460 AS "E"
    UNION ALL
    SELECT 50 AS nid, 17.692598 AS "E"
    UNION ALL
    SELECT 51 AS nid, 262.816803 AS "E"
    UNION ALL
    SELECT 52 AS nid, 284.608521 AS "E"
    UNION ALL
    SELECT 53 AS nid, 118.402397 AS "E"
    UNION ALL
    SELECT 54 AS nid, 95.899612 AS "E"
    UNION ALL
    SELECT 55 AS nid, 66.707787 AS "E"
    UNION ALL
    SELECT 56 AS nid, 61.276173 AS "E"
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
    CASE WHEN (model_input."X_87" <= 0.602448) THEN CASE WHEN (model_input."X_46" <= 0.721582) THEN CASE WHEN (model_input."X_63" <= 0.695792) THEN CASE WHEN (model_input."X_57" <= -0.670000) THEN CASE WHEN (model_input."X_92" <= 0.607535) THEN CASE WHEN (model_input."X_3" <= -0.081223) THEN 33 ELSE 34 END ELSE 28 END ELSE CASE WHEN (model_input."X_37" <= 0.759293) THEN CASE WHEN (model_input."X_65" <= -0.331441) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_81" <= -0.246836) THEN 35 ELSE 36 END END END ELSE CASE WHEN (model_input."X_94" <= 1.612016) THEN CASE WHEN (model_input."X_80" <= -0.845161) THEN 37 ELSE CASE WHEN (model_input."X_41" <= 0.591104) THEN 47 ELSE 48 END END ELSE 16 END END ELSE CASE WHEN (model_input."X_72" <= -0.981833) THEN CASE WHEN (model_input."X_27" <= 0.719329) THEN 39 ELSE 40 END ELSE CASE WHEN (model_input."X_48" <= -1.194872) THEN 21 ELSE CASE WHEN (model_input."X_73" <= 0.331561) THEN CASE WHEN (model_input."X_55" <= -0.316956) THEN 61 ELSE 62 END ELSE 32 END END END END ELSE CASE WHEN (model_input."X_77" <= -0.056431) THEN CASE WHEN (model_input."X_52" <= -0.564251) THEN CASE WHEN (model_input."X_95" <= 1.272476) THEN CASE WHEN (model_input."X_91" <= 0.150848) THEN 45 ELSE 46 END ELSE 20 END ELSE CASE WHEN (model_input."X_16" <= 1.659003) THEN CASE WHEN (model_input."X_65" <= 0.213150) THEN CASE WHEN (model_input."X_39" <= 0.015238) THEN 59 ELSE 60 END ELSE CASE WHEN (model_input."X_80" <= -0.337407) THEN 57 ELSE 58 END END ELSE 10 END END ELSE CASE WHEN (model_input."X_52" <= -0.100618) THEN CASE WHEN (model_input."X_36" <= -1.118183) THEN 41 ELSE CASE WHEN (model_input."X_6" <= 0.617982) THEN 51 ELSE 52 END END ELSE CASE WHEN (model_input."X_45" <= 0.634099) THEN CASE WHEN (model_input."X_44" <= 0.363149) THEN CASE WHEN (model_input."X_52" <= 0.771376) THEN 55 ELSE 56 END ELSE 50 END ELSE 24 END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, -2.621751 AS "E"
    UNION ALL
    SELECT 1 AS nid, 63.673748 AS "E"
    UNION ALL
    SELECT 2 AS nid, -113.114258 AS "E"
    UNION ALL
    SELECT 3 AS nid, -214.800797 AS "E"
    UNION ALL
    SELECT 4 AS nid, -27.071800 AS "E"
    UNION ALL
    SELECT 5 AS nid, -96.470367 AS "E"
    UNION ALL
    SELECT 6 AS nid, 83.965927 AS "E"
    UNION ALL
    SELECT 7 AS nid, -105.085693 AS "E"
    UNION ALL
    SELECT 8 AS nid, -277.495178 AS "E"
    UNION ALL
    SELECT 9 AS nid, -245.016373 AS "E"
    UNION ALL
    SELECT 10 AS nid, -472.368042 AS "E"
    UNION ALL
    SELECT 11 AS nid, 17.202494 AS "E"
    UNION ALL
    SELECT 12 AS nid, 172.106705 AS "E"
    UNION ALL
    SELECT 13 AS nid, -31.395590 AS "E"
    UNION ALL
    SELECT 14 AS nid, 104.679054 AS "E"
    UNION ALL
    SELECT 15 AS nid, 75.682861 AS "E"
    UNION ALL
    SELECT 16 AS nid, 268.990753 AS "E"
    UNION ALL
    SELECT 17 AS nid, 241.652588 AS "E"
    UNION ALL
    SELECT 18 AS nid, 113.260201 AS "E"
    UNION ALL
    SELECT 19 AS nid, -138.339279 AS "E"
    UNION ALL
    SELECT 20 AS nid, -5.324924 AS "E"
    UNION ALL
    SELECT 21 AS nid, 245.967346 AS "E"
    UNION ALL
    SELECT 22 AS nid, 89.131622 AS "E"
    UNION ALL
    SELECT 23 AS nid, 57.448521 AS "E"
    UNION ALL
    SELECT 24 AS nid, 190.035553 AS "E"
    UNION ALL
    SELECT 25 AS nid, 79.430328 AS "E"
    UNION ALL
    SELECT 26 AS nid, -53.560768 AS "E"
    UNION ALL
    SELECT 27 AS nid, 139.698334 AS "E"
    UNION ALL
    SELECT 28 AS nid, -41.105675 AS "E"
    UNION ALL
    SELECT 29 AS nid, -79.955750 AS "E"
    UNION ALL
    SELECT 30 AS nid, 8.027547 AS "E"
    UNION ALL
    SELECT 31 AS nid, 118.056259 AS "E"
    UNION ALL
    SELECT 32 AS nid, 38.513519 AS "E"
    UNION ALL
    SELECT 33 AS nid, 102.624802 AS "E"
    UNION ALL
    SELECT 34 AS nid, 176.771866 AS "E"
    UNION ALL
    SELECT 35 AS nid, -43.952122 AS "E"
    UNION ALL
    SELECT 36 AS nid, 34.017384 AS "E"
    UNION ALL
    SELECT 37 AS nid, 114.216827 AS "E"
    UNION ALL
    SELECT 38 AS nid, 41.430447 AS "E"
    UNION ALL
    SELECT 39 AS nid, 220.259323 AS "E"
    UNION ALL
    SELECT 40 AS nid, 298.701294 AS "E"
    UNION ALL
    SELECT 41 AS nid, -156.976974 AS "E"
    UNION ALL
    SELECT 42 AS nid, -76.301506 AS "E"
    UNION ALL
    SELECT 43 AS nid, -30.582941 AS "E"
    UNION ALL
    SELECT 44 AS nid, -99.704880 AS "E"
    UNION ALL
    SELECT 45 AS nid, -169.226273 AS "E"
    UNION ALL
    SELECT 46 AS nid, -107.452293 AS "E"
    UNION ALL
    SELECT 47 AS nid, 56.884418 AS "E"
    UNION ALL
    SELECT 48 AS nid, -12.658428 AS "E"
    UNION ALL
    SELECT 49 AS nid, 79.014656 AS "E"
    UNION ALL
    SELECT 50 AS nid, 21.504969 AS "E"
    UNION ALL
    SELECT 51 AS nid, -29.817017 AS "E"
    UNION ALL
    SELECT 52 AS nid, -91.796341 AS "E"
    UNION ALL
    SELECT 53 AS nid, -223.071640 AS "E"
    UNION ALL
    SELECT 54 AS nid, -275.739044 AS "E"
    UNION ALL
    SELECT 55 AS nid, 92.642876 AS "E"
    UNION ALL
    SELECT 56 AS nid, 58.572334 AS "E"
    UNION ALL
    SELECT 57 AS nid, -289.083038 AS "E"
    UNION ALL
    SELECT 58 AS nid, -255.723007 AS "E"
    UNION ALL
    SELECT 59 AS nid, -209.091400 AS "E"
    UNION ALL
    SELECT 60 AS nid, -241.711975 AS "E"
    UNION ALL
    SELECT 61 AS nid, 106.680794 AS "E"
    UNION ALL
    SELECT 62 AS nid, 133.223526 AS "E"
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
    CASE WHEN (model_input."X_30" <= 0.721163) THEN CASE WHEN (model_input."X_46" <= -0.810205) THEN CASE WHEN (model_input."X_93" <= 0.636079) THEN CASE WHEN (model_input."X_59" <= 0.106545) THEN CASE WHEN (model_input."X_74" <= 0.349851) THEN 29 ELSE CASE WHEN (model_input."X_15" <= -0.672151) THEN 49 ELSE 50 END END ELSE CASE WHEN (model_input."X_67" <= 0.446019) THEN 27 ELSE 28 END END ELSE CASE WHEN (model_input."X_23" <= 0.432341) THEN 35 ELSE 36 END END ELSE CASE WHEN (model_input."X_59" <= 0.347797) THEN CASE WHEN (model_input."X_74" <= -0.802070) THEN CASE WHEN (model_input."X_85" <= 0.949422) THEN CASE WHEN (model_input."X_53" <= -1.036205) THEN 43 ELSE 44 END ELSE 22 END ELSE CASE WHEN (model_input."X_94" <= 0.054636) THEN CASE WHEN (model_input."X_38" <= -0.145054) THEN 25 ELSE 26 END ELSE CASE WHEN (model_input."X_3" <= 0.314914) THEN 39 ELSE 40 END END END ELSE CASE WHEN (model_input."X_88" <= -1.318443) THEN 13 ELSE CASE WHEN (model_input."X_7" <= 0.096650) THEN CASE WHEN (model_input."X_32" <= 0.491193) THEN 33 ELSE 34 END ELSE CASE WHEN (model_input."X_11" <= 0.591075) THEN 47 ELSE 48 END END END END END ELSE CASE WHEN (model_input."X_3" <= 0.317142) THEN CASE WHEN (model_input."X_46" <= -0.621995) THEN CASE WHEN (model_input."X_20" <= -0.964374) THEN 51 ELSE 52 END ELSE CASE WHEN (model_input."X_16" <= -1.020167) THEN CASE WHEN (model_input."X_74" <= -0.150392) THEN 57 ELSE 58 END ELSE CASE WHEN (model_input."X_82" <= 0.162054) THEN CASE WHEN (model_input."X_5" <= -1.615329) THEN 55 ELSE 56 END ELSE 46 END END END ELSE CASE WHEN (model_input."X_14" <= 1.491170) THEN CASE WHEN (model_input."X_92" <= 0.500867) THEN CASE WHEN (model_input."X_13" <= -0.547427) THEN 53 ELSE 54 END ELSE 42 END ELSE 32 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 14.387745 AS "E"
    UNION ALL
    SELECT 1 AS nid, -24.901560 AS "E"
    UNION ALL
    SELECT 2 AS nid, 148.513245 AS "E"
    UNION ALL
    SELECT 3 AS nid, 208.499634 AS "E"
    UNION ALL
    SELECT 4 AS nid, 50.353737 AS "E"
    UNION ALL
    SELECT 5 AS nid, 66.050652 AS "E"
    UNION ALL
    SELECT 6 AS nid, 249.199341 AS "E"
    UNION ALL
    SELECT 7 AS nid, -159.754761 AS "E"
    UNION ALL
    SELECT 8 AS nid, 11.405078 AS "E"
    UNION ALL
    SELECT 9 AS nid, -121.096107 AS "E"
    UNION ALL
    SELECT 10 AS nid, -324.054077 AS "E"
    UNION ALL
    SELECT 11 AS nid, -31.276215 AS "E"
    UNION ALL
    SELECT 12 AS nid, 101.889427 AS "E"
    UNION ALL
    SELECT 13 AS nid, -111.809303 AS "E"
    UNION ALL
    SELECT 14 AS nid, 120.471931 AS "E"
    UNION ALL
    SELECT 15 AS nid, -172.576157 AS "E"
    UNION ALL
    SELECT 16 AS nid, -47.553169 AS "E"
    UNION ALL
    SELECT 17 AS nid, 85.726990 AS "E"
    UNION ALL
    SELECT 18 AS nid, 218.915894 AS "E"
    UNION ALL
    SELECT 19 AS nid, -174.644028 AS "E"
    UNION ALL
    SELECT 20 AS nid, -12.973948 AS "E"
    UNION ALL
    SELECT 21 AS nid, -130.834564 AS "E"
    UNION ALL
    SELECT 22 AS nid, -262.262939 AS "E"
    UNION ALL
    SELECT 23 AS nid, 52.670258 AS "E"
    UNION ALL
    SELECT 24 AS nid, -57.518215 AS "E"
    UNION ALL
    SELECT 25 AS nid, 89.348289 AS "E"
    UNION ALL
    SELECT 26 AS nid, -10.206367 AS "E"
    UNION ALL
    SELECT 27 AS nid, 7.496087 AS "E"
    UNION ALL
    SELECT 28 AS nid, -88.840111 AS "E"
    UNION ALL
    SELECT 29 AS nid, -101.492271 AS "E"
    UNION ALL
    SELECT 30 AS nid, -203.040695 AS "E"
    UNION ALL
    SELECT 31 AS nid, 71.678619 AS "E"
    UNION ALL
    SELECT 32 AS nid, -45.608250 AS "E"
    UNION ALL
    SELECT 33 AS nid, 47.129837 AS "E"
    UNION ALL
    SELECT 34 AS nid, 129.148788 AS "E"
    UNION ALL
    SELECT 35 AS nid, -364.045532 AS "E"
    UNION ALL
    SELECT 36 AS nid, -284.062622 AS "E"
    UNION ALL
    SELECT 37 AS nid, 203.827133 AS "E"
    UNION ALL
    SELECT 38 AS nid, 283.228516 AS "E"
    UNION ALL
    SELECT 39 AS nid, -95.345840 AS "E"
    UNION ALL
    SELECT 40 AS nid, -24.734280 AS "E"
    UNION ALL
    SELECT 41 AS nid, 54.675159 AS "E"
    UNION ALL
    SELECT 42 AS nid, 131.190735 AS "E"
    UNION ALL
    SELECT 43 AS nid, -162.609772 AS "E"
    UNION ALL
    SELECT 44 AS nid, -99.059357 AS "E"
    UNION ALL
    SELECT 45 AS nid, 264.887054 AS "E"
    UNION ALL
    SELECT 46 AS nid, 338.252930 AS "E"
    UNION ALL
    SELECT 47 AS nid, 240.332535 AS "E"
    UNION ALL
    SELECT 48 AS nid, 176.082642 AS "E"
    UNION ALL
    SELECT 49 AS nid, -188.074615 AS "E"
    UNION ALL
    SELECT 50 AS nid, -222.995422 AS "E"
    UNION ALL
    SELECT 51 AS nid, 60.118355 AS "E"
    UNION ALL
    SELECT 52 AS nid, 71.982956 AS "E"
    UNION ALL
    SELECT 53 AS nid, 60.875317 AS "E"
    UNION ALL
    SELECT 54 AS nid, 50.025043 AS "E"
    UNION ALL
    SELECT 55 AS nid, 272.253540 AS "E"
    UNION ALL
    SELECT 56 AS nid, 261.203796 AS "E"
    UNION ALL
    SELECT 57 AS nid, 208.163986 AS "E"
    UNION ALL
    SELECT 58 AS nid, 201.658691 AS "E"
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
    CASE WHEN (model_input."X_30" <= 0.769315) THEN CASE WHEN (model_input."X_46" <= -0.520096) THEN CASE WHEN (model_input."X_77" <= 0.360407) THEN CASE WHEN (model_input."X_36" <= 0.194563) THEN CASE WHEN (model_input."X_56" <= 0.577949) THEN CASE WHEN (model_input."X_75" <= 0.042003) THEN 45 ELSE 46 END ELSE 22 END ELSE CASE WHEN (model_input."X_52" <= -0.542642) THEN 37 ELSE CASE WHEN (model_input."X_11" <= -0.331131) THEN 49 ELSE 50 END END END ELSE CASE WHEN (model_input."X_37" <= -0.121346) THEN CASE WHEN (model_input."X_24" <= 1.540065) THEN CASE WHEN (model_input."X_61" <= 1.301445) THEN 51 ELSE 52 END ELSE 34 END ELSE CASE WHEN (model_input."X_86" <= 0.382357) THEN CASE WHEN (model_input."X_75" <= -1.006191) THEN 55 ELSE 56 END ELSE 40 END END END ELSE CASE WHEN (model_input."X_36" <= -0.722531) THEN CASE WHEN (model_input."X_4" <= 0.472878) THEN CASE WHEN (model_input."X_79" <= -0.617845) THEN 15 ELSE CASE WHEN (model_input."X_8" <= -0.192460) THEN 47 ELSE 48 END END ELSE 14 END ELSE CASE WHEN (model_input."X_25" <= 0.389780) THEN CASE WHEN (model_input."X_39" <= -0.418734) THEN CASE WHEN (model_input."X_97" <= -0.417550) THEN 35 ELSE 36 END ELSE CASE WHEN (model_input."X_30" <= -1.487519) THEN 31 ELSE 32 END END ELSE CASE WHEN (model_input."X_33" <= -0.339796) THEN 27 ELSE CASE WHEN (model_input."X_20" <= -0.887616) THEN 43 ELSE 44 END END END END END ELSE CASE WHEN (model_input."X_46" <= -0.606341) THEN CASE WHEN (model_input."X_0" <= 0.417133) THEN CASE WHEN (model_input."X_89" <= -0.075655) THEN 53 ELSE 54 END ELSE 18 END ELSE CASE WHEN (model_input."X_11" <= 0.542129) THEN CASE WHEN (model_input."X_28" <= -0.405191) THEN CASE WHEN (model_input."X_48" <= 0.237258) THEN 59 ELSE 60 END ELSE CASE WHEN (model_input."X_65" <= 0.490274) THEN CASE WHEN (model_input."X_28" <= 0.084950) THEN 61 ELSE 62 END ELSE 58 END END ELSE 24 END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 5.294643 AS "E"
    UNION ALL
    SELECT 1 AS nid, -29.587009 AS "E"
    UNION ALL
    SELECT 2 AS nid, 183.024933 AS "E"
    UNION ALL
    SELECT 3 AS nid, 70.818291 AS "E"
    UNION ALL
    SELECT 4 AS nid, 252.075165 AS "E"
    UNION ALL
    SELECT 5 AS nid, -119.534302 AS "E"
    UNION ALL
    SELECT 6 AS nid, 24.112877 AS "E"
    UNION ALL
    SELECT 7 AS nid, -182.084351 AS "E"
    UNION ALL
    SELECT 8 AS nid, -15.284208 AS "E"
    UNION ALL
    SELECT 9 AS nid, -292.433899 AS "E"
    UNION ALL
    SELECT 10 AS nid, -120.012726 AS "E"
    UNION ALL
    SELECT 11 AS nid, -102.427650 AS "E"
    UNION ALL
    SELECT 12 AS nid, 60.614948 AS "E"
    UNION ALL
    SELECT 13 AS nid, -73.325256 AS "E"
    UNION ALL
    SELECT 14 AS nid, -291.593231 AS "E"
    UNION ALL
    SELECT 15 AS nid, 44.660175 AS "E"
    UNION ALL
    SELECT 16 AS nid, -108.720886 AS "E"
    UNION ALL
    SELECT 17 AS nid, 102.913261 AS "E"
    UNION ALL
    SELECT 18 AS nid, -25.466587 AS "E"
    UNION ALL
    SELECT 19 AS nid, -73.957413 AS "E"
    UNION ALL
    SELECT 20 AS nid, 36.054836 AS "E"
    UNION ALL
    SELECT 21 AS nid, -264.424011 AS "E"
    UNION ALL
    SELECT 22 AS nid, -390.468506 AS "E"
    UNION ALL
    SELECT 23 AS nid, 232.432129 AS "E"
    UNION ALL
    SELECT 24 AS nid, 360.111755 AS "E"
    UNION ALL
    SELECT 25 AS nid, 79.323128 AS "E"
    UNION ALL
    SELECT 26 AS nid, -42.280045 AS "E"
    UNION ALL
    SELECT 27 AS nid, 36.281387 AS "E"
    UNION ALL
    SELECT 28 AS nid, -89.416908 AS "E"
    UNION ALL
    SELECT 29 AS nid, 31.082561 AS "E"
    UNION ALL
    SELECT 30 AS nid, 119.523621 AS "E"
    UNION ALL
    SELECT 31 AS nid, -39.119720 AS "E"
    UNION ALL
    SELECT 32 AS nid, 133.945740 AS "E"
    UNION ALL
    SELECT 33 AS nid, -47.322693 AS "E"
    UNION ALL
    SELECT 34 AS nid, -140.544205 AS "E"
    UNION ALL
    SELECT 35 AS nid, -38.386227 AS "E"
    UNION ALL
    SELECT 36 AS nid, 54.238819 AS "E"
    UNION ALL
    SELECT 37 AS nid, -197.537033 AS "E"
    UNION ALL
    SELECT 38 AS nid, -102.122513 AS "E"
    UNION ALL
    SELECT 39 AS nid, 67.479012 AS "E"
    UNION ALL
    SELECT 40 AS nid, 4.630660 AS "E"
    UNION ALL
    SELECT 41 AS nid, 264.456543 AS "E"
    UNION ALL
    SELECT 42 AS nid, 205.745132 AS "E"
    UNION ALL
    SELECT 43 AS nid, -121.295609 AS "E"
    UNION ALL
    SELECT 44 AS nid, -68.164429 AS "E"
    UNION ALL
    SELECT 45 AS nid, -235.902344 AS "E"
    UNION ALL
    SELECT 46 AS nid, -285.815247 AS "E"
    UNION ALL
    SELECT 47 AS nid, -127.497917 AS "E"
    UNION ALL
    SELECT 48 AS nid, -80.555321 AS "E"
    UNION ALL
    SELECT 49 AS nid, -78.532440 AS "E"
    UNION ALL
    SELECT 50 AS nid, -122.342567 AS "E"
    UNION ALL
    SELECT 51 AS nid, -58.276936 AS "E"
    UNION ALL
    SELECT 52 AS nid, -30.891333 AS "E"
    UNION ALL
    SELECT 53 AS nid, 87.215317 AS "E"
    UNION ALL
    SELECT 54 AS nid, 110.762222 AS "E"
    UNION ALL
    SELECT 55 AS nid, 61.276173 AS "E"
    UNION ALL
    SELECT 56 AS nid, 73.681854 AS "E"
    UNION ALL
    SELECT 57 AS nid, 203.052887 AS "E"
    UNION ALL
    SELECT 58 AS nid, 211.129684 AS "E"
    UNION ALL
    SELECT 59 AS nid, 261.203796 AS "E"
    UNION ALL
    SELECT 60 AS nid, 266.625031 AS "E"
    UNION ALL
    SELECT 61 AS nid, 200.907471 AS "E"
    UNION ALL
    SELECT 62 AS nid, 205.198288 AS "E"
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
    CASE WHEN (model_input."X_46" <= -0.630629) THEN CASE WHEN (model_input."X_30" <= 0.711909) THEN CASE WHEN (model_input."X_65" <= -0.496114) THEN CASE WHEN (model_input."X_29" <= 1.111183) THEN 29 ELSE 30 END ELSE CASE WHEN (model_input."X_0" <= 1.723632) THEN CASE WHEN (model_input."X_90" <= -0.326648) THEN CASE WHEN (model_input."X_74" <= 0.085746) THEN 49 ELSE 50 END ELSE CASE WHEN (model_input."X_25" <= 1.297559) THEN 41 ELSE 42 END END ELSE 12 END END ELSE CASE WHEN (model_input."X_99" <= -1.125318) THEN 47 ELSE CASE WHEN (model_input."X_28" <= -1.003855) THEN 57 ELSE 58 END END END ELSE CASE WHEN (model_input."X_36" <= -0.335289) THEN CASE WHEN (model_input."X_77" <= 1.314025) THEN CASE WHEN (model_input."X_56" <= -0.121082) THEN CASE WHEN (model_input."X_35" <= -0.543529) THEN CASE WHEN (model_input."X_99" <= -1.547297) THEN 55 ELSE 56 END ELSE 36 END ELSE CASE WHEN (model_input."X_31" <= -0.543931) THEN CASE WHEN (model_input."X_88" <= -0.040629) THEN 53 ELSE 54 END ELSE CASE WHEN (model_input."X_90" <= -0.758492) THEN 39 ELSE 40 END END END ELSE 10 END ELSE CASE WHEN (model_input."X_57" <= -0.751175) THEN CASE WHEN (model_input."X_73" <= 1.069230) THEN CASE WHEN (model_input."X_71" <= -0.111287) THEN CASE WHEN (model_input."X_96" <= 0.051309) THEN 43 ELSE 44 END ELSE CASE WHEN (model_input."X_74" <= -0.331696) THEN 31 ELSE 32 END END ELSE 16 END ELSE CASE WHEN (model_input."X_64" <= -0.602426) THEN CASE WHEN (model_input."X_38" <= -0.008554) THEN CASE WHEN (model_input."X_3" <= -1.024103) THEN 51 ELSE 52 END ELSE CASE WHEN (model_input."X_41" <= 0.265349) THEN 45 ELSE 46 END END ELSE CASE WHEN (model_input."X_64" <= -0.040823) THEN 23 ELSE CASE WHEN (model_input."X_98" <= -1.071686) THEN 37 ELSE 38 END END END END END END AS node_id
  FROM "model_input"
 ),
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 0 AS nid, 15.367391 AS "E"
    UNION ALL
    SELECT 1 AS nid, -88.226608 AS "E"
    UNION ALL
    SELECT 2 AS nid, 67.773773 AS "E"
    UNION ALL
    SELECT 3 AS nid, -129.700745 AS "E"
    UNION ALL
    SELECT 4 AS nid, 68.453522 AS "E"
    UNION ALL
    SELECT 5 AS nid, -40.814346 AS "E"
    UNION ALL
    SELECT 6 AS nid, 118.323418 AS "E"
    UNION ALL
    SELECT 7 AS nid, -324.945465 AS "E"
    UNION ALL
    SELECT 8 AS nid, -103.668121 AS "E"
    UNION ALL
    SELECT 9 AS nid, -64.743645 AS "E"
    UNION ALL
    SELECT 10 AS nid, 150.620117 AS "E"
    UNION ALL
    SELECT 11 AS nid, -82.716690 AS "E"
    UNION ALL
    SELECT 12 AS nid, -292.231415 AS "E"
    UNION ALL
    SELECT 13 AS nid, 193.408966 AS "E"
    UNION ALL
    SELECT 14 AS nid, 75.707291 AS "E"
    UNION ALL
    SELECT 15 AS nid, 230.490067 AS "E"
    UNION ALL
    SELECT 16 AS nid, -29.077780 AS "E"
    UNION ALL
    SELECT 17 AS nid, 186.419647 AS "E"
    UNION ALL
    SELECT 18 AS nid, 40.121178 AS "E"
    UNION ALL
    SELECT 19 AS nid, -142.703461 AS "E"
    UNION ALL
    SELECT 20 AS nid, -25.763748 AS "E"
    UNION ALL
    SELECT 21 AS nid, 242.706284 AS "E"
    UNION ALL
    SELECT 22 AS nid, 141.390350 AS "E"
    UNION ALL
    SELECT 23 AS nid, -101.793396 AS "E"
    UNION ALL
    SELECT 24 AS nid, 57.150917 AS "E"
    UNION ALL
    SELECT 25 AS nid, 264.523315 AS "E"
    UNION ALL
    SELECT 26 AS nid, 177.009323 AS "E"
    UNION ALL
    SELECT 27 AS nid, -140.763763 AS "E"
    UNION ALL
    SELECT 28 AS nid, -58.275803 AS "E"
    UNION ALL
    SELECT 29 AS nid, -362.323059 AS "E"
    UNION ALL
    SELECT 30 AS nid, -287.567841 AS "E"
    UNION ALL
    SELECT 31 AS nid, 208.163986 AS "E"
    UNION ALL
    SELECT 32 AS nid, 135.469788 AS "E"
    UNION ALL
    SELECT 33 AS nid, -61.485672 AS "E"
    UNION ALL
    SELECT 34 AS nid, 9.958182 AS "E"
    UNION ALL
    SELECT 35 AS nid, -122.491364 AS "E"
    UNION ALL
    SELECT 36 AS nid, -203.339752 AS "E"
    UNION ALL
    SELECT 37 AS nid, 116.901207 AS "E"
    UNION ALL
    SELECT 38 AS nid, 38.282421 AS "E"
    UNION ALL
    SELECT 39 AS nid, -33.068638 AS "E"
    UNION ALL
    SELECT 40 AS nid, 35.774273 AS "E"
    UNION ALL
    SELECT 41 AS nid, -71.097023 AS "E"
    UNION ALL
    SELECT 42 AS nid, 10.104079 AS "E"
    UNION ALL
    SELECT 43 AS nid, 246.938431 AS "E"
    UNION ALL
    SELECT 44 AS nid, 311.416260 AS "E"
    UNION ALL
    SELECT 45 AS nid, 118.262123 AS "E"
    UNION ALL
    SELECT 46 AS nid, 176.082642 AS "E"
    UNION ALL
    SELECT 47 AS nid, 113.813232 AS "E"
    UNION ALL
    SELECT 48 AS nid, 55.493603 AS "E"
    UNION ALL
    SELECT 49 AS nid, -171.340332 AS "E"
    UNION ALL
    SELECT 50 AS nid, -122.417809 AS "E"
    UNION ALL
    SELECT 51 AS nid, 222.595749 AS "E"
    UNION ALL
    SELECT 52 AS nid, 262.816803 AS "E"
    UNION ALL
    SELECT 53 AS nid, -71.740410 AS "E"
    UNION ALL
    SELECT 54 AS nid, -30.721485 AS "E"
    UNION ALL
    SELECT 55 AS nid, -100.835075 AS "E"
    UNION ALL
    SELECT 56 AS nid, -133.319504 AS "E"
    UNION ALL
    SELECT 57 AS nid, 71.141701 AS "E"
    UNION ALL
    SELECT 58 AS nid, 43.757538 AS "E"
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
