WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63", CAST("ADS"."X_64" AS FLOAT) AS "X_64", CAST("ADS"."X_65" AS FLOAT) AS "X_65", CAST("ADS"."X_66" AS FLOAT) AS "X_66", CAST("ADS"."X_67" AS FLOAT) AS "X_67", CAST("ADS"."X_68" AS FLOAT) AS "X_68", CAST("ADS"."X_69" AS FLOAT) AS "X_69", CAST("ADS"."X_70" AS FLOAT) AS "X_70", CAST("ADS"."X_71" AS FLOAT) AS "X_71", CAST("ADS"."X_72" AS FLOAT) AS "X_72", CAST("ADS"."X_73" AS FLOAT) AS "X_73", CAST("ADS"."X_74" AS FLOAT) AS "X_74", CAST("ADS"."X_75" AS FLOAT) AS "X_75", CAST("ADS"."X_76" AS FLOAT) AS "X_76", CAST("ADS"."X_77" AS FLOAT) AS "X_77", CAST("ADS"."X_78" AS FLOAT) AS "X_78", CAST("ADS"."X_79" AS FLOAT) AS "X_79", CAST("ADS"."X_80" AS FLOAT) AS "X_80", CAST("ADS"."X_81" AS FLOAT) AS "X_81", CAST("ADS"."X_82" AS FLOAT) AS "X_82", CAST("ADS"."X_83" AS FLOAT) AS "X_83", CAST("ADS"."X_84" AS FLOAT) AS "X_84", CAST("ADS"."X_85" AS FLOAT) AS "X_85", CAST("ADS"."X_86" AS FLOAT) AS "X_86", CAST("ADS"."X_87" AS FLOAT) AS "X_87", CAST("ADS"."X_88" AS FLOAT) AS "X_88", CAST("ADS"."X_89" AS FLOAT) AS "X_89", CAST("ADS"."X_90" AS FLOAT) AS "X_90", CAST("ADS"."X_91" AS FLOAT) AS "X_91", CAST("ADS"."X_92" AS FLOAT) AS "X_92", CAST("ADS"."X_93" AS FLOAT) AS "X_93", CAST("ADS"."X_94" AS FLOAT) AS "X_94", CAST("ADS"."X_95" AS FLOAT) AS "X_95", CAST("ADS"."X_96" AS FLOAT) AS "X_96", CAST("ADS"."X_97" AS FLOAT) AS "X_97", CAST("ADS"."X_98" AS FLOAT) AS "X_98", CAST("ADS"."X_99" AS FLOAT) AS "X_99"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_62" < 4.000000) THEN CASE WHEN (t."X_60" < 5.000000) THEN CASE WHEN (t."X_53" < 8.000000) THEN CASE WHEN (t."X_49" < 4.000000) THEN CASE WHEN (t."X_7" < 8.000000) THEN CASE WHEN (t."X_75" < 8.000000) THEN 57 ELSE 58 END ELSE 32 END ELSE CASE WHEN (t."X_42" < 8.000000) THEN CASE WHEN (t."X_14" < 7.000000) THEN 59 ELSE 60 END ELSE 34 END END ELSE CASE WHEN (t."X_49" < 7.000000) THEN CASE WHEN (t."X_66" < 5.000000) THEN 35 ELSE 36 END ELSE 18 END END ELSE CASE WHEN (t."X_49" < 4.000000) THEN CASE WHEN (t."X_35" < 4.000000) THEN 19 ELSE CASE WHEN (t."X_92" < 7.000000) THEN CASE WHEN (t."X_11" < 5.000000) THEN 61 ELSE 62 END ELSE 38 END END ELSE CASE WHEN (t."X_31" < 2.000000) THEN CASE WHEN (t."X_60" < 7.000000) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_35" < 1.000000) THEN 41 ELSE 42 END END END END ELSE CASE WHEN (t."X_31" < 4.000000) THEN CASE WHEN (t."X_66" < 3.000000) THEN CASE WHEN (t."X_35" < 7.000000) THEN CASE WHEN (t."X_72" < 7.000000) THEN 43 ELSE 44 END ELSE 24 END ELSE CASE WHEN (t."X_60" < 6.000000) THEN CASE WHEN (t."X_47" < 4.000000) THEN 45 ELSE 46 END ELSE CASE WHEN (t."X_35" < 8.000000) THEN 47 ELSE 48 END END END ELSE CASE WHEN (t."X_79" < 3.000000) THEN CASE WHEN (t."X_66" < 2.000000) THEN CASE WHEN (t."X_65" < 8.000000) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_60" < 7.000000) THEN 51 ELSE 52 END END ELSE CASE WHEN (t."X_46" < 2.000000) THEN CASE WHEN (t."X_11" < 7.000000) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_62" < 8.000000) THEN 55 ELSE 56 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 18 AS nid,  -0.119902 AS "P_0", 0.360000 AS "P_1", -0.168072 AS "P_2", -0.072000 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  -0.169739 AS "P_0", 0.147170 AS "P_1", -0.124625 AS "P_2", 0.147170 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  0.070801 AS "P_0", -0.070588 AS "P_1", -0.000172 AS "P_2", 0.000000 AS "P_3"
    UNION ALL
    SELECT 32 AS nid,  0.329941 AS "P_0", -0.177465 AS "P_1", -0.177536 AS "P_2", 0.025352 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.149912 AS "P_0", 0.060000 AS "P_1", -0.030158 AS "P_2", 0.120000 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  0.408387 AS "P_0", -0.168000 AS "P_1", -0.168072 AS "P_2", -0.072000 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  0.120230 AS "P_0", -0.168000 AS "P_1", 0.119770 AS "P_2", -0.072000 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  0.024177 AS "P_0", -0.168000 AS "P_1", -0.168072 AS "P_2", 0.312000 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  -0.169739 AS "P_0", -0.124528 AS "P_1", 0.011149 AS "P_2", 0.283019 AS "P_3"
    UNION ALL
    SELECT 40 AS nid,  -0.183604 AS "P_0", -0.183673 AS "P_1", 0.354711 AS "P_2", 0.012245 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  -0.174122 AS "P_0", 0.096774 AS "P_1", 0.251300 AS "P_2", -0.174194 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  -0.143902 AS "P_0", -0.168000 AS "P_1", 0.455528 AS "P_2", -0.144000 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  -0.167132 AS "P_0", -0.167213 AS "P_1", 0.520812 AS "P_2", -0.186885 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  -0.175313 AS "P_0", 0.009231 AS "P_1", 0.341172 AS "P_2", -0.175385 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  -0.092183 AS "P_0", 0.138462 AS "P_1", -0.000180 AS "P_2", -0.046154 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  -0.139627 AS "P_0", -0.041096 AS "P_1", -0.074112 AS "P_2", 0.254795 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  -0.190994 AS "P_0", 0.439106 AS "P_1", -0.083933 AS "P_2", -0.164246 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  -0.124431 AS "P_0", 0.011321 AS "P_1", -0.034109 AS "P_2", 0.147170 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  -0.075927 AS "P_0", -0.076056 AS "P_1", 0.329214 AS "P_2", -0.177465 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  -0.124431 AS "P_0", 0.237736 AS "P_1", 0.056407 AS "P_2", -0.169811 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  0.102688 AS "P_0", 0.102439 AS "P_1", -0.087936 AS "P_2", -0.117073 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  -0.162534 AS "P_0", 0.487851 AS "P_1", -0.140283 AS "P_2", -0.185047 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  0.152797 AS "P_0", -0.010169 AS "P_1", -0.050988 AS "P_2", -0.091525 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  -0.154970 AS "P_0", 0.465169 AS "P_1", -0.128192 AS "P_2", -0.182022 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  0.225831 AS "P_0", -0.054066 AS "P_1", -0.080580 AS "P_2", -0.090989 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  0.439796 AS "P_0", -0.082845 AS "P_1", -0.163266 AS "P_2", -0.193305 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.102317 AS "P_0", -0.160976 AS "P_1", -0.087936 AS "P_2", 0.351220 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  0.212059 AS "P_0", -0.141176 AS "P_1", -0.176542 AS "P_2", 0.105882 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  -0.153195 AS "P_0", -0.170803 AS "P_1", -0.188390 AS "P_2", 0.512409 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  -0.176400 AS "P_0", 0.000000 AS "P_1", -0.070720 AS "P_2", 0.247059 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  -0.167928 AS "P_0", -0.168000 AS "P_1", 0.023823 AS "P_2", 0.312000 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  -0.167928 AS "P_0", -0.168000 AS "P_1", -0.168072 AS "P_2", 0.504000 AS "P_3"
  ) AS "Values")
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_31" < 5.000000) THEN CASE WHEN (t."X_62" < 5.000000) THEN CASE WHEN (t."X_60" < 5.000000) THEN CASE WHEN (t."X_35" < 8.000000) THEN CASE WHEN (t."X_46" < 4.000000) THEN 31 ELSE CASE WHEN (t."X_11" < 3.000000) THEN 53 ELSE 54 END END ELSE CASE WHEN (t."X_73" < 6.000000) THEN 33 ELSE 34 END END ELSE CASE WHEN (t."X_49" < 4.000000) THEN CASE WHEN (t."X_35" < 6.000000) THEN 35 ELSE 36 END ELSE CASE WHEN (t."X_11" < 3.000000) THEN CASE WHEN (t."X_79" < 4.000000) THEN 55 ELSE 56 END ELSE CASE WHEN (t."X_70" < 3.000000) THEN 57 ELSE 58 END END END END ELSE CASE WHEN (t."X_66" < 5.000000) THEN CASE WHEN (t."X_53" < 4.000000) THEN CASE WHEN (t."X_60" < 6.000000) THEN 39 ELSE CASE WHEN (t."X_22" < 4.000000) THEN 59 ELSE 60 END END ELSE CASE WHEN (t."X_80" < 3.000000) THEN 41 ELSE CASE WHEN (t."X_45" < 5.000000) THEN 61 ELSE 62 END END END ELSE CASE WHEN (t."X_35" < 8.000000) THEN CASE WHEN (t."X_60" < 3.000000) THEN 43 ELSE 44 END ELSE 22 END END END ELSE CASE WHEN (t."X_49" < 6.000000) THEN CASE WHEN (t."X_62" < 2.000000) THEN CASE WHEN (t."X_46" < 7.000000) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_79" < 2.000000) THEN CASE WHEN (t."X_66" < 5.000000) THEN 45 ELSE 46 END ELSE CASE WHEN (t."X_31" < 8.000000) THEN 47 ELSE 48 END END END ELSE CASE WHEN (t."X_11" < 8.000000) THEN CASE WHEN (t."X_62" < 8.000000) THEN CASE WHEN (t."X_60" < 3.000000) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_11" < 2.000000) THEN 51 ELSE 52 END END ELSE CASE WHEN (t."X_53" < 7.000000) THEN 29 ELSE 30 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 22 AS nid,  -0.120340 AS "P_0", -0.042530 AS "P_1", -0.062331 AS "P_2", 0.207322 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  -0.069549 AS "P_0", -0.174651 AS "P_1", -0.145639 AS "P_2", 0.322665 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  0.243946 AS "P_0", -0.164519 AS "P_1", -0.053856 AS "P_2", -0.058073 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  -0.168371 AS "P_0", 0.127630 AS "P_1", 0.130542 AS "P_2", -0.120622 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  -0.154960 AS "P_0", 0.429425 AS "P_1", -0.173299 AS "P_2", -0.170168 AS "P_3"
    UNION ALL
    SELECT 31 AS nid,  -0.059628 AS "P_0", 0.061526 AS "P_1", -0.174817 AS "P_2", 0.143622 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  0.193583 AS "P_0", -0.166847 AS "P_1", -0.019917 AS "P_2", -0.012350 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.032569 AS "P_0", -0.161338 AS "P_1", -0.018267 AS "P_2", 0.180249 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  -0.164556 AS "P_0", 0.098084 AS "P_1", -0.087291 AS "P_2", 0.118181 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  -0.147677 AS "P_0", -0.172204 AS "P_1", -0.097813 AS "P_2", 0.317077 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  -0.173074 AS "P_0", 0.095644 AS "P_1", 0.193891 AS "P_2", -0.147409 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  0.231562 AS "P_0", -0.041776 AS "P_1", -0.032000 AS "P_2", -0.165906 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  0.069330 AS "P_0", -0.015114 AS "P_1", -0.126301 AS "P_2", 0.067806 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  -0.161151 AS "P_0", 0.325986 AS "P_1", -0.102829 AS "P_2", -0.150976 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  -0.143383 AS "P_0", 0.160112 AS "P_1", 0.135311 AS "P_2", -0.176156 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  0.112788 AS "P_0", 0.159009 AS "P_1", -0.173503 AS "P_2", -0.139841 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  0.157539 AS "P_0", -0.051351 AS "P_1", -0.108698 AS "P_2", -0.024084 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  0.331602 AS "P_0", -0.041985 AS "P_1", -0.187585 AS "P_2", -0.171861 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  -0.065974 AS "P_0", 0.073438 AS "P_1", -0.109759 AS "P_2", 0.087722 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  -0.068197 AS "P_0", -0.039872 AS "P_1", 0.223673 AS "P_2", -0.143138 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  0.342154 AS "P_0", -0.127637 AS "P_1", -0.158457 AS "P_2", -0.156517 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  0.101612 AS "P_0", 0.084209 AS "P_1", -0.066225 AS "P_2", -0.157699 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  -0.135131 AS "P_0", -0.035751 AS "P_1", -0.135033 AS "P_2", 0.259302 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  -0.153719 AS "P_0", -0.181156 AS "P_1", -0.180003 AS "P_2", 0.420774 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.170901 AS "P_0", -0.049287 AS "P_1", 0.233562 AS "P_2", -0.068965 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  -0.145940 AS "P_0", -0.148666 AS "P_1", 0.045762 AS "P_2", 0.209929 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.161093 AS "P_0", -0.120946 AS "P_1", 0.286526 AS "P_2", -0.063787 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  -0.172345 AS "P_0", -0.173123 AS "P_1", 0.397984 AS "P_2", -0.175246 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  -0.159277 AS "P_0", -0.079902 AS "P_1", 0.306105 AS "P_2", -0.157873 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  -0.164906 AS "P_0", -0.182872 AS "P_1", 0.385828 AS "P_2", -0.127365 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  -0.171680 AS "P_0", -0.013907 AS "P_1", 0.218318 AS "P_2", -0.062176 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  -0.003207 AS "P_0", 0.028064 AS "P_1", -0.061624 AS "P_2", 0.039599 AS "P_3"
  ) AS "Values")
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_60" < 5.000000) THEN CASE WHEN (t."X_46" < 5.000000) THEN CASE WHEN (t."X_62" < 3.000000) THEN CASE WHEN (t."X_67" < 6.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_53" < 8.000000) THEN CASE WHEN (t."X_49" < 7.000000) THEN CASE WHEN (t."X_46" < 2.000000) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_93" < 5.000000) THEN 55 ELSE 56 END END ELSE CASE WHEN (t."X_11" < 5.000000) THEN 33 ELSE 34 END END END ELSE CASE WHEN (t."X_31" < 4.000000) THEN CASE WHEN (t."X_17" < 2.000000) THEN 19 ELSE CASE WHEN (t."X_64" < 5.000000) THEN 35 ELSE 36 END END ELSE CASE WHEN (t."X_27" < 3.000000) THEN CASE WHEN (t."X_60" < 3.000000) THEN CASE WHEN (t."X_48" < 6.000000) THEN 57 ELSE 58 END ELSE 38 END ELSE CASE WHEN (t."X_53" < 3.000000) THEN CASE WHEN (t."X_36" < 4.000000) THEN 59 ELSE 60 END ELSE CASE WHEN (t."X_11" < 3.000000) THEN 61 ELSE 62 END END END END END ELSE CASE WHEN (t."X_49" < 4.000000) THEN CASE WHEN (t."X_31" < 7.000000) THEN CASE WHEN (t."X_62" < 3.000000) THEN CASE WHEN (t."X_97" < 6.000000) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_35" < 8.000000) THEN 43 ELSE 44 END END ELSE CASE WHEN (t."X_70" < 6.000000) THEN 25 ELSE 26 END END ELSE CASE WHEN (t."X_66" < 5.000000) THEN CASE WHEN (t."X_31" < 7.000000) THEN CASE WHEN (t."X_46" < 8.000000) THEN 45 ELSE 46 END ELSE CASE WHEN (t."X_11" < 8.000000) THEN 47 ELSE 48 END END ELSE CASE WHEN (t."X_35" < 3.000000) THEN CASE WHEN (t."X_82" < 6.000000) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_31" < 5.000000) THEN 51 ELSE 52 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 15 AS nid,  -0.129681 AS "P_0", -0.105712 AS "P_1", -0.167796 AS "P_2", 0.285897 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  0.001511 AS "P_0", 0.081433 AS "P_1", -0.083502 AS "P_2", -0.009332 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  0.056495 AS "P_0", -0.159323 AS "P_1", -0.111104 AS "P_2", 0.161981 AS "P_3"
    UNION ALL
    SELECT 25 AS nid,  0.078835 AS "P_0", -0.009069 AS "P_1", -0.105714 AS "P_2", 0.009498 AS "P_3"
    UNION ALL
    SELECT 26 AS nid,  0.253242 AS "P_0", -0.074353 AS "P_1", -0.154885 AS "P_2", -0.119668 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  0.320759 AS "P_0", -0.141301 AS "P_1", -0.168053 AS "P_2", -0.068973 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  0.114434 AS "P_0", 0.118188 AS "P_1", -0.164495 AS "P_2", -0.124964 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  -0.166514 AS "P_0", -0.173559 AS "P_1", -0.166024 AS "P_2", 0.359977 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  -0.121350 AS "P_0", -0.055899 AS "P_1", -0.056519 AS "P_2", 0.175657 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  0.183507 AS "P_0", -0.126440 AS "P_1", -0.119953 AS "P_2", 0.003774 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  -0.114758 AS "P_0", -0.048077 AS "P_1", -0.157856 AS "P_2", 0.215212 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  -0.153238 AS "P_0", -0.159416 AS "P_1", 0.058665 AS "P_2", 0.164003 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  -0.167877 AS "P_0", 0.304234 AS "P_1", -0.124699 AS "P_2", -0.139096 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  -0.133020 AS "P_0", -0.020178 AS "P_1", -0.128503 AS "P_2", 0.215301 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  -0.140810 AS "P_0", -0.117322 AS "P_1", 0.256104 AS "P_2", -0.109772 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  0.119394 AS "P_0", -0.122011 AS "P_1", 0.127048 AS "P_2", -0.162506 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  -0.088340 AS "P_0", -0.015774 AS "P_1", 0.197104 AS "P_2", -0.164329 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  -0.157488 AS "P_0", 0.259683 AS "P_1", -0.013401 AS "P_2", -0.159999 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  -0.133212 AS "P_0", 0.359339 AS "P_1", -0.175662 AS "P_2", -0.156810 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  -0.153391 AS "P_0", 0.206314 AS "P_1", -0.033753 AS "P_2", -0.109233 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  -0.167780 AS "P_0", -0.094847 AS "P_1", 0.160515 AS "P_2", 0.049290 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  0.244225 AS "P_0", -0.122105 AS "P_1", -0.092030 AS "P_2", -0.122411 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  -0.013316 AS "P_0", 0.043032 AS "P_1", 0.072872 AS "P_2", -0.111205 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  0.092286 AS "P_0", 0.054216 AS "P_1", -0.147544 AS "P_2", -0.023894 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.161669 AS "P_0", 0.214204 AS "P_1", -0.088147 AS "P_2", 0.014251 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  -0.159358 AS "P_0", 0.379102 AS "P_1", -0.132429 AS "P_2", -0.165508 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.151135 AS "P_0", -0.122161 AS "P_1", -0.110754 AS "P_2", 0.345173 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  0.028646 AS "P_0", -0.161311 AS "P_1", -0.158497 AS "P_2", 0.240259 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  0.080086 AS "P_0", 0.011546 AS "P_1", -0.107333 AS "P_2", -0.005137 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  -0.109949 AS "P_0", -0.126078 AS "P_1", -0.158408 AS "P_2", 0.307370 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  -0.003842 AS "P_0", -0.097655 AS "P_1", 0.229630 AS "P_2", -0.119462 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  0.309761 AS "P_0", -0.123133 AS "P_1", -0.128425 AS "P_2", -0.154262 AS "P_3"
  ) AS "Values")
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_62" < 5.000000) THEN CASE WHEN (t."X_60" < 5.000000) THEN CASE WHEN (t."X_49" < 7.000000) THEN CASE WHEN (t."X_11" < 2.000000) THEN 15 ELSE CASE WHEN (t."X_53" < 7.000000) THEN CASE WHEN (t."X_66" < 7.000000) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_31" < 6.000000) THEN 53 ELSE 54 END END END ELSE CASE WHEN (t."X_46" < 5.000000) THEN CASE WHEN (t."X_83" < 4.000000) THEN 33 ELSE 34 END ELSE 18 END END ELSE CASE WHEN (t."X_49" < 4.000000) THEN CASE WHEN (t."X_35" < 4.000000) THEN 19 ELSE CASE WHEN (t."X_24" < 6.000000) THEN 35 ELSE 36 END END ELSE CASE WHEN (t."X_31" < 2.000000) THEN CASE WHEN (t."X_81" < 4.000000) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_79" < 3.000000) THEN 39 ELSE CASE WHEN (t."X_46" < 8.000000) THEN 55 ELSE 56 END END END END END ELSE CASE WHEN (t."X_31" < 4.000000) THEN CASE WHEN (t."X_49" < 4.000000) THEN CASE WHEN (t."X_35" < 7.000000) THEN CASE WHEN (t."X_92" < 5.000000) THEN 41 ELSE 42 END ELSE 24 END ELSE CASE WHEN (t."X_65" < 6.000000) THEN CASE WHEN (t."X_11" < 5.000000) THEN 43 ELSE CASE WHEN (t."X_38" < 6.000000) THEN 57 ELSE 58 END END ELSE CASE WHEN (t."X_64" < 5.000000) THEN 45 ELSE 46 END END END ELSE CASE WHEN (t."X_35" < 2.000000) THEN CASE WHEN (t."X_49" < 4.000000) THEN 27 ELSE 28 END ELSE CASE WHEN (t."X_46" < 4.000000) THEN CASE WHEN (t."X_11" < 5.000000) THEN 47 ELSE CASE WHEN (t."X_60" < 6.000000) THEN 59 ELSE 60 END END ELSE CASE WHEN (t."X_79" < 3.000000) THEN 49 ELSE CASE WHEN (t."X_60" < 3.000000) THEN 61 ELSE 62 END END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 15 AS nid,  -0.089725 AS "P_0", -0.036272 AS "P_1", 0.167586 AS "P_2", -0.025121 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  -0.164972 AS "P_0", -0.098658 AS "P_1", -0.043585 AS "P_2", 0.222428 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  -0.110729 AS "P_0", 0.153241 AS "P_1", -0.119075 AS "P_2", 0.012306 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  -0.100860 AS "P_0", -0.008711 AS "P_1", -0.106915 AS "P_2", 0.156839 AS "P_3"
    UNION ALL
    SELECT 27 AS nid,  0.211964 AS "P_0", -0.099042 AS "P_1", 0.006519 AS "P_2", -0.156942 AS "P_3"
    UNION ALL
    SELECT 28 AS nid,  -0.150519 AS "P_0", 0.060904 AS "P_1", 0.174589 AS "P_2", -0.163292 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  -0.066654 AS "P_0", 0.258968 AS "P_1", -0.157795 AS "P_2", -0.105899 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.120059 AS "P_0", 0.128834 AS "P_1", -0.109528 AS "P_2", 0.044671 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  -0.160664 AS "P_0", -0.157864 AS "P_1", -0.058488 AS "P_2", 0.220991 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  0.041682 AS "P_0", -0.148892 AS "P_1", -0.107136 AS "P_2", 0.131275 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  -0.146043 AS "P_0", -0.073377 AS "P_1", 0.165831 AS "P_2", -0.045389 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  -0.154803 AS "P_0", -0.158671 AS "P_1", 0.021508 AS "P_2", 0.203610 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  -0.155526 AS "P_0", 0.114242 AS "P_1", 0.094225 AS "P_2", -0.154348 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  -0.147441 AS "P_0", 0.187101 AS "P_1", -0.006887 AS "P_2", -0.155336 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  -0.154302 AS "P_0", 0.225247 AS "P_1", -0.163935 AS "P_2", -0.026680 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  -0.122969 AS "P_0", -0.021870 AS "P_1", 0.061210 AS "P_2", 0.067170 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  -0.056503 AS "P_0", 0.067032 AS "P_1", 0.013716 AS "P_2", -0.040631 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  -0.102558 AS "P_0", 0.243027 AS "P_1", -0.014184 AS "P_2", -0.170776 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  0.167668 AS "P_0", -0.042365 AS "P_1", -0.097058 AS "P_2", -0.095435 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  0.029292 AS "P_0", 0.183533 AS "P_1", -0.143655 AS "P_2", -0.155919 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  -0.093415 AS "P_0", -0.126775 AS "P_1", -0.118667 AS "P_2", 0.214940 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  0.088037 AS "P_0", -0.112620 AS "P_1", -0.136242 AS "P_2", 0.089791 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  0.089719 AS "P_0", -0.126469 AS "P_1", -0.122970 AS "P_2", 0.092574 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  0.236457 AS "P_0", -0.140821 AS "P_1", -0.086847 AS "P_2", -0.130996 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.157272 AS "P_0", -0.130653 AS "P_1", 0.225843 AS "P_2", -0.089265 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  0.078582 AS "P_0", -0.155938 AS "P_1", 0.140011 AS "P_2", -0.151788 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.137390 AS "P_0", -0.068363 AS "P_1", 0.223979 AS "P_2", -0.141990 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  0.101000 AS "P_0", -0.124669 AS "P_1", 0.129589 AS "P_2", -0.158564 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  -0.080050 AS "P_0", 0.254809 AS "P_1", -0.162046 AS "P_2", -0.108576 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  -0.143180 AS "P_0", 0.153339 AS "P_1", 0.078058 AS "P_2", -0.151371 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  0.143842 AS "P_0", -0.114267 AS "P_1", -0.161790 AS "P_2", 0.046598 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  0.177300 AS "P_0", -0.047768 AS "P_1", -0.083443 AS "P_2", -0.154714 AS "P_3"
  ) AS "Values")
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_62" < 7.000000) THEN CASE WHEN (t."X_60" < 5.000000) THEN CASE WHEN (t."X_46" < 4.000000) THEN CASE WHEN (t."X_66" < 3.000000) THEN CASE WHEN (t."X_37" < 5.000000) THEN 29 ELSE 30 END ELSE CASE WHEN (t."X_65" < 8.000000) THEN CASE WHEN (t."X_49" < 3.000000) THEN 49 ELSE 50 END ELSE 32 END END ELSE CASE WHEN (t."X_31" < 6.000000) THEN CASE WHEN (t."X_35" < 8.000000) THEN CASE WHEN (t."X_42" < 8.000000) THEN 51 ELSE 52 END ELSE 34 END ELSE CASE WHEN (t."X_60" < 2.000000) THEN CASE WHEN (t."X_27" < 3.000000) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_46" < 8.000000) THEN 55 ELSE 56 END END END END ELSE CASE WHEN (t."X_35" < 4.000000) THEN CASE WHEN (t."X_11" < 2.000000) THEN 19 ELSE CASE WHEN (t."X_65" < 3.000000) THEN CASE WHEN (t."X_49" < 6.000000) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_66" < 2.000000) THEN 59 ELSE 60 END END END ELSE CASE WHEN (t."X_46" < 8.000000) THEN CASE WHEN (t."X_49" < 2.000000) THEN 39 ELSE CASE WHEN (t."X_17" < 2.000000) THEN 61 ELSE 62 END END ELSE CASE WHEN (t."X_57" < 6.000000) THEN 41 ELSE 42 END END END END ELSE CASE WHEN (t."X_65" < 4.000000) THEN CASE WHEN (t."X_46" < 5.000000) THEN CASE WHEN (t."X_31" < 5.000000) THEN CASE WHEN (t."X_21" < 4.000000) THEN 43 ELSE 44 END ELSE 24 END ELSE CASE WHEN (t."X_47" < 5.000000) THEN 25 ELSE 26 END END ELSE CASE WHEN (t."X_35" < 2.000000) THEN 13 ELSE CASE WHEN (t."X_11" < 3.000000) THEN CASE WHEN (t."X_31" < 7.000000) THEN 45 ELSE 46 END ELSE CASE WHEN (t."X_26" < 2.000000) THEN 47 ELSE 48 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 13 AS nid,  -0.087050 AS "P_0", -0.000997 AS "P_1", 0.154845 AS "P_2", -0.151701 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  -0.166290 AS "P_0", 0.281534 AS "P_1", -0.135833 AS "P_2", -0.093388 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  0.119557 AS "P_0", -0.034241 AS "P_1", -0.041721 AS "P_2", -0.107605 AS "P_3"
    UNION ALL
    SELECT 25 AS nid,  0.186953 AS "P_0", -0.134797 AS "P_1", 0.029222 AS "P_2", -0.150222 AS "P_3"
    UNION ALL
    SELECT 26 AS nid,  0.231662 AS "P_0", -0.095518 AS "P_1", -0.159850 AS "P_2", -0.073873 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  -0.108024 AS "P_0", 0.270249 AS "P_1", -0.113190 AS "P_2", -0.164338 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  -0.078843 AS "P_0", 0.142751 AS "P_1", -0.066803 AS "P_2", -0.053089 AS "P_3"
    UNION ALL
    SELECT 32 AS nid,  0.222233 AS "P_0", -0.091422 AS "P_1", -0.125699 AS "P_2", -0.055327 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.021293 AS "P_0", -0.135052 AS "P_1", 0.038279 AS "P_2", 0.080614 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  -0.072995 AS "P_0", -0.096883 AS "P_1", -0.149768 AS "P_2", 0.196595 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  0.104669 AS "P_0", -0.102223 AS "P_1", -0.098482 AS "P_2", 0.075426 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  0.081631 AS "P_0", -0.162162 AS "P_1", 0.147170 AS "P_2", -0.124237 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  -0.099122 AS "P_0", -0.054097 AS "P_1", 0.218003 AS "P_2", -0.159814 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  -0.156655 AS "P_0", -0.035269 AS "P_1", 0.117922 AS "P_2", 0.031952 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  0.058394 AS "P_0", 0.159449 AS "P_1", -0.160214 AS "P_2", -0.150731 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  0.238291 AS "P_0", -0.128215 AS "P_1", -0.148125 AS "P_2", -0.144973 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  0.158566 AS "P_0", 0.039308 AS "P_1", -0.101017 AS "P_2", -0.158183 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  -0.091345 AS "P_0", 0.236202 AS "P_1", -0.102280 AS "P_2", -0.128173 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  0.119680 AS "P_0", -0.047619 AS "P_1", -0.152339 AS "P_2", 0.017584 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  -0.095500 AS "P_0", 0.044008 AS "P_1", -0.035309 AS "P_2", 0.068195 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  -0.073433 AS "P_0", -0.147191 AS "P_1", -0.139022 AS "P_2", 0.213476 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  -0.154146 AS "P_0", 0.093557 AS "P_1", -0.152043 AS "P_2", 0.125368 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  -0.084881 AS "P_0", -0.120707 AS "P_1", -0.149458 AS "P_2", 0.245437 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  0.132136 AS "P_0", -0.120721 AS "P_1", -0.075084 AS "P_2", -0.005011 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  0.183638 AS "P_0", -0.064477 AS "P_1", -0.119383 AS "P_2", -0.093377 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  0.034046 AS "P_0", -0.113565 AS "P_1", 0.150241 AS "P_2", -0.080990 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.096112 AS "P_0", 0.129766 AS "P_1", -0.120448 AS "P_2", 0.025239 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  -0.150172 AS "P_0", -0.014503 AS "P_1", 0.127189 AS "P_2", -0.061419 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  -0.118845 AS "P_0", -0.150462 AS "P_1", 0.264315 AS "P_2", -0.159417 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  -0.122630 AS "P_0", -0.000208 AS "P_1", 0.139477 AS "P_2", -0.074586 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  -0.154438 AS "P_0", -0.114510 AS "P_1", 0.238500 AS "P_2", -0.092600 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  -0.122092 AS "P_0", -0.095600 AS "P_1", 0.072060 AS "P_2", 0.077118 AS "P_3"
  ) AS "Values")
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 )
,
union_of_trees AS 
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1", scu."P_2" AS "P_2", scu."P_3" AS "P_3"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_4" AS t
  ) AS scu
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.249023 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.250000 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   0.250977 + SUM(t."P_2") AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   0.250000 + SUM(t."P_3") AS "Score_3",
   CAST(NULL AS FLOAT) AS "Proba_3",
   CAST(NULL AS FLOAT) AS "LogProba_3"
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
   t."Score_2" AS "Score_2",
   t."Proba_2" AS "Proba_2",
   t."LogProba_2" AS "LogProba_2",
   t."Score_3" AS "Score_3",
   t."Proba_3" AS "Proba_3",
   t."LogProba_3" AS "LogProba_3",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Greatest_Score"
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
    t1."Proba_2" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    t1."Exp_Score_2" AS "Exp_Score_2",
    t1."Proba_3" AS "Proba_3",
    t1."Score_3" AS "Score_3",
    t1."Exp_Score_3" AS "Exp_Score_3",
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        t."Proba_2" AS "Proba_2",
        t."Score_2" AS "Score_2",
        t."Proba_3" AS "Proba_3",
        t."Score_3" AS "Score_3",
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2",
        EXP(t."Score_3" - t."Greatest_Score") as "Exp_Score_3"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    t1."Exp_Score_2" / t1."Sum_Exp" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    t1."Exp_Score_3" / t1."Sum_Exp" AS "Proba_3",
    t1."Score_3" AS "Score_3"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    MAX( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1", t."Score_2", t."Score_3" ) AS "Max_Score"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    t."Proba_2" AS "Proba_2",
    t."Score_2" AS "Score_2",
    t."Proba_3" AS "Proba_3",
    t."Score_3" AS "Score_3",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
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
     t."Proba_2" AS "Proba_2",
     t."Score_2" AS "Score_2",
     t."Proba_3" AS "Proba_3",
     t."Score_3" AS "Score_3",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3" ) AS argmax_class_idx
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
  arg_max_cte."Score_2" AS "Score_2",
  arg_max_cte."Proba_2" AS "Proba_2",
  CASE WHEN (arg_max_cte."Proba_2" IS NULL OR arg_max_cte."Proba_2" > 0.0) THEN LN( arg_max_cte."Proba_2" ) ELSE -1.79769313486231e+308 END AS "LogProba_2",
  arg_max_cte."Score_3" AS "Score_3",
  arg_max_cte."Proba_3" AS "Proba_3",
  CASE WHEN (arg_max_cte."Proba_3" IS NULL OR arg_max_cte."Proba_3" > 0.0) THEN LN( arg_max_cte."Proba_3" ) ELSE -1.79769313486231e+308 END AS "LogProba_3",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte