WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13", CAST("ADS"."X_14" AS FLOAT) AS "X_14", CAST("ADS"."X_15" AS FLOAT) AS "X_15", CAST("ADS"."X_16" AS FLOAT) AS "X_16", CAST("ADS"."X_17" AS FLOAT) AS "X_17", CAST("ADS"."X_18" AS FLOAT) AS "X_18", CAST("ADS"."X_19" AS FLOAT) AS "X_19", CAST("ADS"."X_20" AS FLOAT) AS "X_20", CAST("ADS"."X_21" AS FLOAT) AS "X_21", CAST("ADS"."X_22" AS FLOAT) AS "X_22", CAST("ADS"."X_23" AS FLOAT) AS "X_23", CAST("ADS"."X_24" AS FLOAT) AS "X_24", CAST("ADS"."X_25" AS FLOAT) AS "X_25", CAST("ADS"."X_26" AS FLOAT) AS "X_26", CAST("ADS"."X_27" AS FLOAT) AS "X_27", CAST("ADS"."X_28" AS FLOAT) AS "X_28", CAST("ADS"."X_29" AS FLOAT) AS "X_29", CAST("ADS"."X_30" AS FLOAT) AS "X_30", CAST("ADS"."X_31" AS FLOAT) AS "X_31", CAST("ADS"."X_32" AS FLOAT) AS "X_32", CAST("ADS"."X_33" AS FLOAT) AS "X_33", CAST("ADS"."X_34" AS FLOAT) AS "X_34", CAST("ADS"."X_35" AS FLOAT) AS "X_35", CAST("ADS"."X_36" AS FLOAT) AS "X_36", CAST("ADS"."X_37" AS FLOAT) AS "X_37", CAST("ADS"."X_38" AS FLOAT) AS "X_38", CAST("ADS"."X_39" AS FLOAT) AS "X_39", CAST("ADS"."X_40" AS FLOAT) AS "X_40", CAST("ADS"."X_41" AS FLOAT) AS "X_41", CAST("ADS"."X_42" AS FLOAT) AS "X_42", CAST("ADS"."X_43" AS FLOAT) AS "X_43", CAST("ADS"."X_44" AS FLOAT) AS "X_44", CAST("ADS"."X_45" AS FLOAT) AS "X_45", CAST("ADS"."X_46" AS FLOAT) AS "X_46", CAST("ADS"."X_47" AS FLOAT) AS "X_47", CAST("ADS"."X_48" AS FLOAT) AS "X_48", CAST("ADS"."X_49" AS FLOAT) AS "X_49", CAST("ADS"."X_50" AS FLOAT) AS "X_50", CAST("ADS"."X_51" AS FLOAT) AS "X_51", CAST("ADS"."X_52" AS FLOAT) AS "X_52", CAST("ADS"."X_53" AS FLOAT) AS "X_53", CAST("ADS"."X_54" AS FLOAT) AS "X_54", CAST("ADS"."X_55" AS FLOAT) AS "X_55", CAST("ADS"."X_56" AS FLOAT) AS "X_56", CAST("ADS"."X_57" AS FLOAT) AS "X_57", CAST("ADS"."X_58" AS FLOAT) AS "X_58", CAST("ADS"."X_59" AS FLOAT) AS "X_59", CAST("ADS"."X_60" AS FLOAT) AS "X_60", CAST("ADS"."X_61" AS FLOAT) AS "X_61", CAST("ADS"."X_62" AS FLOAT) AS "X_62", CAST("ADS"."X_63" AS FLOAT) AS "X_63"
  FROM "digits_medium" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_36" < 4.000000) THEN CASE WHEN (t."X_27" < 7.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_60" < 8.000000) THEN CASE WHEN (t."X_27" < 12.000000) THEN CASE WHEN (t."X_34" < 8.000000) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_45" < 1.000000) THEN 9 ELSE CASE WHEN (t."X_26" < 4.000000) THEN CASE WHEN (t."X_43" < 1.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_51" < 14.000000) THEN CASE WHEN (t."X_20" < 16.000000) THEN 19 ELSE 20 END ELSE 18 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 3 AS nid,  1.260455 AS "P_0", -0.150047 AS "P_1", -0.150047 AS "P_2", -0.150105 AS "P_3", -0.149988 AS "P_4", -0.060159 AS "P_5", -0.149988 AS "P_6", -0.149988 AS "P_7", -0.149871 AS "P_8", -0.149930 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  -0.019344 AS "P_0", -0.148755 AS "P_1", 0.012683 AS "P_2", -0.116577 AS "P_3", -0.084019 AS "P_4", 0.109546 AS "P_5", -0.116357 AS "P_6", -0.148695 AS "P_7", -0.018823 AS "P_8", 0.531509 AS "P_9"
    UNION ALL
    SELECT 8 AS nid,  -0.139857 AS "P_0", 0.004599 AS "P_1", -0.139927 AS "P_2", -0.091891 AS "P_3", -0.139857 AS "P_4", 0.438178 AS "P_5", -0.139857 AS "P_6", 0.004880 AS "P_7", 0.053827 AS "P_8", 0.150108 AS "P_9"
    UNION ALL
    SELECT 9 AS nid,  -0.150283 AS "P_0", 0.026255 AS "P_1", 0.968102 AS "P_2", -0.150400 AS "P_3", -0.120804 AS "P_4", -0.120909 AS "P_5", -0.150283 AS "P_6", -0.150283 AS "P_7", -0.002310 AS "P_8", -0.150225 AS "P_9"
    UNION ALL
    SELECT 11 AS nid,  -0.139059 AS "P_0", -0.139129 AS "P_1", -0.039906 AS "P_2", 0.108499 AS "P_3", -0.139059 AS "P_4", -0.139129 AS "P_5", -0.139059 AS "P_6", 0.904292 AS "P_7", -0.138919 AS "P_8", -0.138989 AS "P_9"
    UNION ALL
    SELECT 12 AS nid,  -0.141324 AS "P_0", -0.095853 AS "P_1", -0.141392 AS "P_2", -0.141460 AS "P_3", 0.041101 AS "P_4", -0.004774 AS "P_5", -0.141324 AS "P_6", 0.907619 AS "P_7", -0.141188 AS "P_8", -0.141256 AS "P_9"
    UNION ALL
    SELECT 15 AS nid,  -0.146329 AS "P_0", -0.146392 AS "P_1", -0.146392 AS "P_2", 1.167012 AS "P_3", -0.146329 AS "P_4", -0.146392 AS "P_5", -0.146329 AS "P_6", -0.146329 AS "P_7", -0.146203 AS "P_8", 0.000344 AS "P_9"
    UNION ALL
    SELECT 16 AS nid,  -0.141324 AS "P_0", 0.086304 AS "P_1", -0.004774 AS "P_2", 0.176845 AS "P_3", -0.141324 AS "P_4", -0.141392 AS "P_5", -0.050111 AS "P_6", -0.050111 AS "P_7", 0.407701 AS "P_8", -0.141256 AS "P_9"
    UNION ALL
    SELECT 18 AS nid,  -0.149988 AS "P_0", -0.060159 AS "P_1", -0.030197 AS "P_2", -0.150105 AS "P_3", -0.089969 AS "P_4", -0.120084 AS "P_5", 0.960361 AS "P_6", -0.149988 AS "P_7", -0.089664 AS "P_8", -0.119873 AS "P_9"
    UNION ALL
    SELECT 19 AS nid,  -0.158431 AS "P_0", -0.143691 AS "P_1", -0.158479 AS "P_2", -0.143763 AS "P_3", 0.271129 AS "P_4", 0.196433 AS "P_5", 0.004506 AS "P_6", -0.128806 AS "P_7", 0.153755 AS "P_8", 0.108681 AS "P_9"
    UNION ALL
    SELECT 20 AS nid,  -0.149683 AS "P_0", 0.857150 AS "P_1", -0.149742 AS "P_2", -0.088872 AS "P_3", 0.247590 AS "P_4", -0.149742 AS "P_5", -0.149683 AS "P_6", -0.149683 AS "P_7", -0.118910 AS "P_8", -0.149624 AS "P_9"
  ) AS "Values")
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_10" < 16.000000) THEN CASE WHEN (t."X_21" < 2.000000) THEN CASE WHEN (t."X_46" < 6.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_20" < 16.000000) THEN CASE WHEN (t."X_27" < 14.000000) THEN CASE WHEN (t."X_53" < 4.000000) THEN 17 ELSE CASE WHEN (t."X_36" < 4.000000) THEN 19 ELSE 20 END END ELSE 14 END ELSE CASE WHEN (t."X_13" < 9.000000) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_21" < 2.000000) THEN 5 ELSE CASE WHEN (t."X_42" < 7.000000) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 5 AS nid,  -0.153142 AS "P_0", -0.122991 AS "P_1", 0.123600 AS "P_2", -0.014419 AS "P_3", -0.153872 AS "P_4", 0.796685 AS "P_5", -0.152263 AS "P_6", -0.151188 AS "P_7", -0.153076 AS "P_8", -0.132650 AS "P_9"
    UNION ALL
    SELECT 7 AS nid,  -0.097290 AS "P_0", 0.027006 AS "P_1", 0.096801 AS "P_2", -0.137895 AS "P_3", 0.431888 AS "P_4", 0.022059 AS "P_5", -0.006488 AS "P_6", -0.098313 AS "P_7", -0.142826 AS "P_8", -0.144826 AS "P_9"
    UNION ALL
    SELECT 8 AS nid,  -0.145003 AS "P_0", -0.148507 AS "P_1", -0.147352 AS "P_2", -0.008664 AS "P_3", -0.061897 AS "P_4", -0.148812 AS "P_5", 0.646330 AS "P_6", -0.145389 AS "P_7", -0.149943 AS "P_8", -0.148006 AS "P_9"
    UNION ALL
    SELECT 11 AS nid,  -0.138497 AS "P_0", -0.142150 AS "P_1", 0.059792 AS "P_2", 0.050669 AS "P_3", -0.145042 AS "P_4", 0.006298 AS "P_5", -0.145262 AS "P_6", -0.101260 AS "P_7", -0.103868 AS "P_8", 0.595842 AS "P_9"
    UNION ALL
    SELECT 12 AS nid,  0.153206 AS "P_0", -0.138990 AS "P_1", 0.057130 AS "P_2", -0.090686 AS "P_3", -0.139999 AS "P_4", -0.094696 AS "P_5", -0.139101 AS "P_6", 0.036090 AS "P_7", 0.390500 AS "P_8", -0.094124 AS "P_9"
    UNION ALL
    SELECT 14 AS nid,  -0.143918 AS "P_0", -0.145140 AS "P_1", -0.147107 AS "P_2", -0.035473 AS "P_3", -0.117108 AS "P_4", -0.119938 AS "P_5", -0.147614 AS "P_6", -0.144156 AS "P_7", 0.675838 AS "P_8", 0.203791 AS "P_9"
    UNION ALL
    SELECT 15 AS nid,  -0.137317 AS "P_0", 0.078376 AS "P_1", 0.100047 AS "P_2", -0.055114 AS "P_3", 0.280312 AS "P_4", -0.140663 AS "P_5", -0.140193 AS "P_6", 0.090065 AS "P_7", -0.097492 AS "P_8", -0.052950 AS "P_9"
    UNION ALL
    SELECT 16 AS nid,  -0.145227 AS "P_0", 0.602891 AS "P_1", -0.120791 AS "P_2", 0.005585 AS "P_3", -0.125620 AS "P_4", -0.114435 AS "P_5", -0.149056 AS "P_6", -0.147276 AS "P_7", -0.058503 AS "P_8", -0.115284 AS "P_9"
    UNION ALL
    SELECT 17 AS nid,  -0.145312 AS "P_0", -0.146739 AS "P_1", -0.094321 AS "P_2", -0.118159 AS "P_3", 0.119087 AS "P_4", -0.150606 AS "P_5", -0.146177 AS "P_6", 0.490555 AS "P_7", -0.117192 AS "P_8", -0.052852 AS "P_9"
    UNION ALL
    SELECT 19 AS nid,  0.440180 AS "P_0", -0.142443 AS "P_1", -0.143767 AS "P_2", -0.142738 AS "P_3", -0.142884 AS "P_4", -0.146436 AS "P_5", -0.142631 AS "P_6", -0.142389 AS "P_7", -0.143321 AS "P_8", 0.105663 AS "P_9"
    UNION ALL
    SELECT 20 AS nid,  -0.147479 AS "P_0", -0.149631 AS "P_1", 0.153682 AS "P_2", 0.287573 AS "P_3", 0.180447 AS "P_4", -0.151983 AS "P_5", -0.099035 AS "P_6", -0.104401 AS "P_7", -0.030616 AS "P_8", -0.072379 AS "P_9"
  ) AS "Values")
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_58" < 1.000000) THEN CASE WHEN (t."X_13" < 7.000000) THEN 3 ELSE CASE WHEN (t."X_42" < 2.000000) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_29" < 15.000000) THEN CASE WHEN (t."X_62" < 3.000000) THEN CASE WHEN (t."X_34" < 2.000000) THEN 11 ELSE CASE WHEN (t."X_42" < 7.000000) THEN 13 ELSE CASE WHEN (t."X_38" < 2.000000) THEN 15 ELSE 16 END END END ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 3 AS nid,  -0.143633 AS "P_0", -0.114817 AS "P_1", -0.150110 AS "P_2", -0.148396 AS "P_3", 0.665398 AS "P_4", -0.149902 AS "P_5", 0.126126 AS "P_6", -0.125160 AS "P_7", -0.149870 AS "P_8", -0.149943 AS "P_9"
    UNION ALL
    SELECT 6 AS nid,  -0.019775 AS "P_0", -0.145964 AS "P_1", -0.149103 AS "P_2", -0.069464 AS "P_3", -0.127138 AS "P_4", -0.102440 AS "P_5", -0.147357 AS "P_6", 0.118549 AS "P_7", -0.071619 AS "P_8", 0.474775 AS "P_9"
    UNION ALL
    SELECT 7 AS nid,  -0.134656 AS "P_0", 0.349838 AS "P_1", -0.135444 AS "P_2", -0.139409 AS "P_3", -0.146657 AS "P_4", -0.138037 AS "P_5", -0.136603 AS "P_6", 0.104267 AS "P_7", -0.139851 AS "P_8", 0.038483 AS "P_9"
    UNION ALL
    SELECT 8 AS nid,  -0.094195 AS "P_0", 0.235983 AS "P_1", 0.123637 AS "P_2", -0.142388 AS "P_3", 0.028015 AS "P_4", -0.136009 AS "P_5", -0.072089 AS "P_6", 0.072864 AS "P_7", -0.020133 AS "P_8", -0.137258 AS "P_9"
    UNION ALL
    SELECT 10 AS nid,  -0.098729 AS "P_0", -0.097752 AS "P_1", 0.420674 AS "P_2", -0.099532 AS "P_3", -0.153503 AS "P_4", -0.155278 AS "P_5", 0.171100 AS "P_6", -0.148756 AS "P_7", -0.056060 AS "P_8", -0.053639 AS "P_9"
    UNION ALL
    SELECT 11 AS nid,  -0.146002 AS "P_0", -0.128845 AS "P_1", 0.016555 AS "P_2", 0.409665 AS "P_3", -0.151657 AS "P_4", 0.090004 AS "P_5", -0.150495 AS "P_6", -0.106975 AS "P_7", -0.089165 AS "P_8", -0.091240 AS "P_9"
    UNION ALL
    SELECT 13 AS nid,  -0.139575 AS "P_0", -0.104154 AS "P_1", -0.148496 AS "P_2", -0.048527 AS "P_3", -0.149237 AS "P_4", 0.439049 AS "P_5", -0.145134 AS "P_6", 0.062090 AS "P_7", -0.110468 AS "P_8", -0.059241 AS "P_9"
    UNION ALL
    SELECT 15 AS nid,  -0.147347 AS "P_0", 0.025351 AS "P_1", -0.131654 AS "P_2", -0.145544 AS "P_3", -0.118553 AS "P_4", -0.034568 AS "P_5", -0.001144 AS "P_6", -0.144472 AS "P_7", 0.595707 AS "P_8", -0.152360 AS "P_9"
    UNION ALL
    SELECT 16 AS nid,  0.296158 AS "P_0", -0.143438 AS "P_1", -0.145203 AS "P_2", -0.144048 AS "P_3", -0.059003 AS "P_4", -0.145384 AS "P_5", 0.049824 AS "P_6", 0.104975 AS "P_7", -0.146676 AS "P_8", -0.119957 AS "P_9"
  ) AS "Values")
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_45" < 4.000000) THEN CASE WHEN (t."X_62" < 1.000000) THEN CASE WHEN (t."X_29" < 8.000000) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_26" < 4.000000) THEN CASE WHEN (t."X_58" < 8.000000) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_44" < 14.000000) THEN CASE WHEN (t."X_29" < 13.000000) THEN CASE WHEN (t."X_43" < 4.000000) THEN 17 ELSE 18 END ELSE 14 END ELSE CASE WHEN (t."X_5" < 4.000000) THEN 15 ELSE 16 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 4 AS nid,  -0.104491 AS "P_0", -0.114797 AS "P_1", 0.490800 AS "P_2", -0.141674 AS "P_3", -0.142047 AS "P_4", -0.149721 AS "P_5", -0.147634 AS "P_6", -0.137865 AS "P_7", -0.143395 AS "P_8", -0.141829 AS "P_9"
    UNION ALL
    SELECT 7 AS nid,  -0.097748 AS "P_0", 0.238475 AS "P_1", -0.067568 AS "P_2", -0.098548 AS "P_3", -0.100680 AS "P_4", 0.191689 AS "P_5", -0.137048 AS "P_6", -0.105652 AS "P_7", 0.109274 AS "P_8", -0.106308 AS "P_9"
    UNION ALL
    SELECT 8 AS nid,  -0.137565 AS "P_0", -0.103815 AS "P_1", -0.114435 AS "P_2", -0.143680 AS "P_3", 0.001845 AS "P_4", -0.150309 AS "P_5", -0.137168 AS "P_6", 0.300112 AS "P_7", 0.024914 AS "P_8", 0.079455 AS "P_9"
    UNION ALL
    SELECT 9 AS nid,  -0.140372 AS "P_0", 0.026385 AS "P_1", -0.110553 AS "P_2", 0.058285 AS "P_3", -0.140455 AS "P_4", -0.141293 AS "P_5", -0.059394 AS "P_6", 0.151284 AS "P_7", 0.073356 AS "P_8", 0.114795 AS "P_9"
    UNION ALL
    SELECT 10 AS nid,  -0.133967 AS "P_0", -0.139955 AS "P_1", -0.106946 AS "P_2", 0.386955 AS "P_3", -0.138944 AS "P_4", -0.142224 AS "P_5", -0.138406 AS "P_6", -0.048945 AS "P_7", -0.050657 AS "P_8", -0.107360 AS "P_9"
    UNION ALL
    SELECT 14 AS nid,  0.118346 AS "P_0", -0.006480 AS "P_1", -0.145535 AS "P_2", -0.145188 AS "P_3", -0.120794 AS "P_4", -0.091848 AS "P_5", -0.146454 AS "P_6", -0.116945 AS "P_7", 0.005185 AS "P_8", 0.301493 AS "P_9"
    UNION ALL
    SELECT 15 AS nid,  -0.134229 AS "P_0", -0.116845 AS "P_1", -0.103489 AS "P_2", -0.139161 AS "P_3", 0.460251 AS "P_4", -0.102054 AS "P_5", -0.006609 AS "P_6", -0.151288 AS "P_7", -0.069850 AS "P_8", -0.141704 AS "P_9"
    UNION ALL
    SELECT 16 AS nid,  -0.134634 AS "P_0", 0.221347 AS "P_1", -0.138865 AS "P_2", -0.140186 AS "P_3", 0.043289 AS "P_4", 0.054968 AS "P_5", -0.044617 AS "P_6", 0.005243 AS "P_7", -0.074037 AS "P_8", -0.143621 AS "P_9"
    UNION ALL
    SELECT 17 AS nid,  0.174815 AS "P_0", -0.141798 AS "P_1", -0.144444 AS "P_2", -0.045362 AS "P_3", -0.146264 AS "P_4", 0.293137 AS "P_5", -0.111531 AS "P_6", -0.142067 AS "P_7", -0.011805 AS "P_8", -0.118834 AS "P_9"
    UNION ALL
    SELECT 18 AS nid,  0.008794 AS "P_0", -0.141959 AS "P_1", -0.144319 AS "P_2", -0.140139 AS "P_3", -0.098604 AS "P_4", -0.111138 AS "P_5", 0.335122 AS "P_6", -0.138997 AS "P_7", 0.063075 AS "P_8", -0.142863 AS "P_9"
  ) AS "Values")
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
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
    CASE WHEN (t."X_61" < 1.000000) THEN CASE WHEN (t."X_5" < 6.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_45" < 4.000000) THEN 5 ELSE CASE WHEN (t."X_21" < 2.000000) THEN 7 ELSE CASE WHEN (t."X_28" < 11.000000) THEN 9 ELSE CASE WHEN (t."X_36" < 13.000000) THEN 11 ELSE CASE WHEN (t."X_50" < 8.000000) THEN 13 ELSE 14 END END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3", "Values"."P_4" AS "P_4", "Values"."P_5" AS "P_5", "Values"."P_6" AS "P_6", "Values"."P_7" AS "P_7", "Values"."P_8" AS "P_8", "Values"."P_9" AS "P_9"
  FROM (
    SELECT 3 AS nid,  -0.077472 AS "P_0", -0.111224 AS "P_1", -0.140193 AS "P_2", -0.094574 AS "P_3", 0.316996 AS "P_4", -0.046122 AS "P_5", -0.147114 AS "P_6", 0.110493 AS "P_7", -0.074640 AS "P_8", -0.104990 AS "P_9"
    UNION ALL
    SELECT 4 AS nid,  -0.145977 AS "P_0", -0.125295 AS "P_1", -0.148626 AS "P_2", -0.058128 AS "P_3", -0.149126 AS "P_4", 0.175383 AS "P_5", -0.113322 AS "P_6", 0.209940 AS "P_7", -0.057897 AS "P_8", -0.005718 AS "P_9"
    UNION ALL
    SELECT 5 AS nid,  -0.080731 AS "P_0", 0.083627 AS "P_1", 0.274074 AS "P_2", -0.145288 AS "P_3", -0.120506 AS "P_4", -0.151291 AS "P_5", -0.147635 AS "P_6", -0.144137 AS "P_7", 0.033124 AS "P_8", -0.144507 AS "P_9"
    UNION ALL
    SELECT 7 AS nid,  -0.120258 AS "P_0", -0.114670 AS "P_1", -0.147575 AS "P_2", 0.037848 AS "P_3", -0.089702 AS "P_4", 0.105694 AS "P_5", 0.264019 AS "P_6", -0.141758 AS "P_7", -0.150435 AS "P_8", -0.115085 AS "P_9"
    UNION ALL
    SELECT 9 AS nid,  0.251623 AS "P_0", -0.108072 AS "P_1", -0.138241 AS "P_2", -0.142647 AS "P_3", 0.110107 AS "P_4", -0.142746 AS "P_5", -0.143332 AS "P_6", -0.140251 AS "P_7", -0.018843 AS "P_8", -0.058587 AS "P_9"
    UNION ALL
    SELECT 11 AS nid,  -0.150194 AS "P_0", -0.036755 AS "P_1", -0.101249 AS "P_2", 0.059136 AS "P_3", -0.138971 AS "P_4", -0.029803 AS "P_5", -0.135943 AS "P_6", -0.141517 AS "P_7", -0.124880 AS "P_8", 0.338477 AS "P_9"
    UNION ALL
    SELECT 13 AS nid,  -0.133357 AS "P_0", 0.200563 AS "P_1", -0.141065 AS "P_2", 0.185877 AS "P_3", 0.013812 AS "P_4", -0.138431 AS "P_5", -0.139234 AS "P_6", -0.110995 AS "P_7", -0.108189 AS "P_8", -0.142309 AS "P_9"
    UNION ALL
    SELECT 14 AS nid,  -0.134143 AS "P_0", -0.040127 AS "P_1", -0.049137 AS "P_2", -0.012899 AS "P_3", -0.073811 AS "P_4", -0.141212 AS "P_5", -0.106145 AS "P_6", -0.138346 AS "P_7", 0.374763 AS "P_8", -0.065227 AS "P_9"
  ) AS "Values")
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3", t2."P_4" AS "P_4", t2."P_5" AS "P_5", t2."P_6" AS "P_6", t2."P_7" AS "P_7", t2."P_8" AS "P_8", t2."P_9" AS "P_9"
  FROM
   "DT_node_lookup_4" AS t1
   LEFT OUTER JOIN
   "DT_node_data_4" AS t2
   ON t1.node_id = t2.nid
 )
,
union_of_trees AS 
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1", scu."P_2" AS "P_2", scu."P_3" AS "P_3", scu."P_4" AS "P_4", scu."P_5" AS "P_5", scu."P_6" AS "P_6", scu."P_7" AS "P_7", scu."P_8" AS "P_8", scu."P_9" AS "P_9"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3", t."P_4" AS "P_4", t."P_5" AS "P_5", t."P_6" AS "P_6", t."P_7" AS "P_7", t."P_8" AS "P_8", t."P_9" AS "P_9" FROM "DT_output_4" AS t
  ) AS scu
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.099609 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.101562 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   0.101562 + SUM(t."P_2") AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   0.103516 + SUM(t."P_3") AS "Score_3",
   CAST(NULL AS FLOAT) AS "Proba_3",
   CAST(NULL AS FLOAT) AS "LogProba_3",
   0.099609 + SUM(t."P_4") AS "Score_4",
   CAST(NULL AS FLOAT) AS "Proba_4",
   CAST(NULL AS FLOAT) AS "LogProba_4",
   0.101562 + SUM(t."P_5") AS "Score_5",
   CAST(NULL AS FLOAT) AS "Proba_5",
   CAST(NULL AS FLOAT) AS "LogProba_5",
   0.099609 + SUM(t."P_6") AS "Score_6",
   CAST(NULL AS FLOAT) AS "Proba_6",
   CAST(NULL AS FLOAT) AS "LogProba_6",
   0.099609 + SUM(t."P_7") AS "Score_7",
   CAST(NULL AS FLOAT) AS "Proba_7",
   CAST(NULL AS FLOAT) AS "LogProba_7",
   0.095703 + SUM(t."P_8") AS "Score_8",
   CAST(NULL AS FLOAT) AS "Proba_8",
   CAST(NULL AS FLOAT) AS "LogProba_8",
   0.097656 + SUM(t."P_9") AS "Score_9",
   CAST(NULL AS FLOAT) AS "Proba_9",
   CAST(NULL AS FLOAT) AS "LogProba_9"
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
   t."Score_4" AS "Score_4",
   t."Proba_4" AS "Proba_4",
   t."LogProba_4" AS "LogProba_4",
   t."Score_5" AS "Score_5",
   t."Proba_5" AS "Proba_5",
   t."LogProba_5" AS "LogProba_5",
   t."Score_6" AS "Score_6",
   t."Proba_6" AS "Proba_6",
   t."LogProba_6" AS "LogProba_6",
   t."Score_7" AS "Score_7",
   t."Proba_7" AS "Proba_7",
   t."LogProba_7" AS "LogProba_7",
   t."Score_8" AS "Score_8",
   t."Proba_8" AS "Proba_8",
   t."LogProba_8" AS "LogProba_8",
   t."Score_9" AS "Score_9",
   t."Proba_9" AS "Proba_9",
   t."LogProba_9" AS "LogProba_9",
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   GREATEST( t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7", t."Score_8", t."Score_9" ) AS "Greatest_Score"
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
    t1."Proba_4" AS "Proba_4",
    t1."Score_4" AS "Score_4",
    t1."Exp_Score_4" AS "Exp_Score_4",
    t1."Proba_5" AS "Proba_5",
    t1."Score_5" AS "Score_5",
    t1."Exp_Score_5" AS "Exp_Score_5",
    t1."Proba_6" AS "Proba_6",
    t1."Score_6" AS "Score_6",
    t1."Exp_Score_6" AS "Exp_Score_6",
    t1."Proba_7" AS "Proba_7",
    t1."Score_7" AS "Score_7",
    t1."Exp_Score_7" AS "Exp_Score_7",
    t1."Proba_8" AS "Proba_8",
    t1."Score_8" AS "Score_8",
    t1."Exp_Score_8" AS "Exp_Score_8",
    t1."Proba_9" AS "Proba_9",
    t1."Score_9" AS "Score_9",
    t1."Exp_Score_9" AS "Exp_Score_9",
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" + t1."Exp_Score_4" + t1."Exp_Score_5" + t1."Exp_Score_6" + t1."Exp_Score_7" + t1."Exp_Score_8" + t1."Exp_Score_9" ) AS "Sum_Exp"
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
        t."Proba_4" AS "Proba_4",
        t."Score_4" AS "Score_4",
        t."Proba_5" AS "Proba_5",
        t."Score_5" AS "Score_5",
        t."Proba_6" AS "Proba_6",
        t."Score_6" AS "Score_6",
        t."Proba_7" AS "Proba_7",
        t."Score_7" AS "Score_7",
        t."Proba_8" AS "Proba_8",
        t."Score_8" AS "Score_8",
        t."Proba_9" AS "Proba_9",
        t."Score_9" AS "Score_9",
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2",
        EXP(t."Score_3" - t."Greatest_Score") as "Exp_Score_3",
        EXP(t."Score_4" - t."Greatest_Score") as "Exp_Score_4",
        EXP(t."Score_5" - t."Greatest_Score") as "Exp_Score_5",
        EXP(t."Score_6" - t."Greatest_Score") as "Exp_Score_6",
        EXP(t."Score_7" - t."Greatest_Score") as "Exp_Score_7",
        EXP(t."Score_8" - t."Greatest_Score") as "Exp_Score_8",
        EXP(t."Score_9" - t."Greatest_Score") as "Exp_Score_9"
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
    t1."Score_3" AS "Score_3",
    t1."Exp_Score_4" / t1."Sum_Exp" AS "Proba_4",
    t1."Score_4" AS "Score_4",
    t1."Exp_Score_5" / t1."Sum_Exp" AS "Proba_5",
    t1."Score_5" AS "Score_5",
    t1."Exp_Score_6" / t1."Sum_Exp" AS "Proba_6",
    t1."Score_6" AS "Score_6",
    t1."Exp_Score_7" / t1."Sum_Exp" AS "Proba_7",
    t1."Score_7" AS "Score_7",
    t1."Exp_Score_8" / t1."Sum_Exp" AS "Proba_8",
    t1."Score_8" AS "Score_8",
    t1."Exp_Score_9" / t1."Sum_Exp" AS "Proba_9",
    t1."Score_9" AS "Score_9"
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
    t."Proba_4" AS "Proba_4",
    t."Score_4" AS "Score_4",
    t."Proba_5" AS "Proba_5",
    t."Score_5" AS "Score_5",
    t."Proba_6" AS "Proba_6",
    t."Score_6" AS "Score_6",
    t."Proba_7" AS "Proba_7",
    t."Score_7" AS "Score_7",
    t."Proba_8" AS "Proba_8",
    t."Score_8" AS "Score_8",
    t."Proba_9" AS "Proba_9",
    t."Score_9" AS "Score_9",
    GREATEST( t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3", t."Proba_4", t."Proba_5", t."Proba_6", t."Proba_7", t."Proba_8", t."Proba_9" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1", t."Score_2", t."Score_3", t."Score_4", t."Score_5", t."Score_6", t."Score_7", t."Score_8", t."Score_9" ) AS "Max_Score"
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
    t."Proba_4" AS "Proba_4",
    t."Score_4" AS "Score_4",
    t."Proba_5" AS "Proba_5",
    t."Score_5" AS "Score_5",
    t."Proba_6" AS "Proba_6",
    t."Score_6" AS "Score_6",
    t."Proba_7" AS "Proba_7",
    t."Score_7" AS "Score_7",
    t."Proba_8" AS "Proba_8",
    t."Score_8" AS "Score_8",
    t."Proba_9" AS "Proba_9",
    t."Score_9" AS "Score_9",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
    CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3",
    CASE WHEN(t."Proba_4" = t."Max_Proba") THEN 4 else NULL END AS "max_idx_4",
    CASE WHEN(t."Proba_5" = t."Max_Proba") THEN 5 else NULL END AS "max_idx_5",
    CASE WHEN(t."Proba_6" = t."Max_Proba") THEN 6 else NULL END AS "max_idx_6",
    CASE WHEN(t."Proba_7" = t."Max_Proba") THEN 7 else NULL END AS "max_idx_7",
    CASE WHEN(t."Proba_8" = t."Max_Proba") THEN 8 else NULL END AS "max_idx_8",
    CASE WHEN(t."Proba_9" = t."Max_Proba") THEN 9 else NULL END AS "max_idx_9",
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
     t."Proba_4" AS "Proba_4",
     t."Score_4" AS "Score_4",
     t."Proba_5" AS "Proba_5",
     t."Score_5" AS "Score_5",
     t."Proba_6" AS "Proba_6",
     t."Score_6" AS "Score_6",
     t."Proba_7" AS "Proba_7",
     t."Score_7" AS "Score_7",
     t."Proba_8" AS "Proba_8",
     t."Score_8" AS "Score_8",
     t."Proba_9" AS "Proba_9",
     t."Score_9" AS "Score_9",
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2", t."max_idx_3", t."max_idx_4", t."max_idx_5", t."max_idx_6", t."max_idx_7", t."max_idx_8", t."max_idx_9" ) AS argmax_class_idx
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
  arg_max_cte."Score_4" AS "Score_4",
  arg_max_cte."Proba_4" AS "Proba_4",
  CASE WHEN (arg_max_cte."Proba_4" IS NULL OR arg_max_cte."Proba_4" > 0.0) THEN LN( arg_max_cte."Proba_4" ) ELSE -1.79769313486231e+308 END AS "LogProba_4",
  arg_max_cte."Score_5" AS "Score_5",
  arg_max_cte."Proba_5" AS "Proba_5",
  CASE WHEN (arg_max_cte."Proba_5" IS NULL OR arg_max_cte."Proba_5" > 0.0) THEN LN( arg_max_cte."Proba_5" ) ELSE -1.79769313486231e+308 END AS "LogProba_5",
  arg_max_cte."Score_6" AS "Score_6",
  arg_max_cte."Proba_6" AS "Proba_6",
  CASE WHEN (arg_max_cte."Proba_6" IS NULL OR arg_max_cte."Proba_6" > 0.0) THEN LN( arg_max_cte."Proba_6" ) ELSE -1.79769313486231e+308 END AS "LogProba_6",
  arg_max_cte."Score_7" AS "Score_7",
  arg_max_cte."Proba_7" AS "Proba_7",
  CASE WHEN (arg_max_cte."Proba_7" IS NULL OR arg_max_cte."Proba_7" > 0.0) THEN LN( arg_max_cte."Proba_7" ) ELSE -1.79769313486231e+308 END AS "LogProba_7",
  arg_max_cte."Score_8" AS "Score_8",
  arg_max_cte."Proba_8" AS "Proba_8",
  CASE WHEN (arg_max_cte."Proba_8" IS NULL OR arg_max_cte."Proba_8" > 0.0) THEN LN( arg_max_cte."Proba_8" ) ELSE -1.79769313486231e+308 END AS "LogProba_8",
  arg_max_cte."Score_9" AS "Score_9",
  arg_max_cte."Proba_9" AS "Proba_9",
  CASE WHEN (arg_max_cte."Proba_9" IS NULL OR arg_max_cte."Proba_9" > 0.0) THEN LN( arg_max_cte."Proba_9" ) ELSE -1.79769313486231e+308 END AS "LogProba_9",
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte