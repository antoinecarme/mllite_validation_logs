WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "FourClass_10_small" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_8" < 0.303962) THEN CASE WHEN (t."X_3" < 0.485730) THEN CASE WHEN (t."X_7" < -1.103278) THEN CASE WHEN (t."X_0" < -0.879404) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_8" < -0.652815) THEN CASE WHEN (t."X_2" < -1.577224) THEN 25 ELSE CASE WHEN (t."X_2" < -1.040184) THEN 31 ELSE 32 END END ELSE CASE WHEN (t."X_4" < -0.087655) THEN 27 ELSE 28 END END END ELSE CASE WHEN (t."X_2" < 0.542731) THEN CASE WHEN (t."X_0" < 1.251710) THEN 19 ELSE 20 END ELSE 10 END END ELSE CASE WHEN (t."X_7" < -1.103278) THEN CASE WHEN (t."X_1" < -0.687010) THEN 11 ELSE CASE WHEN (t."X_0" < -1.368644) THEN 21 ELSE 22 END END ELSE CASE WHEN (t."X_1" < -0.687010) THEN 13 ELSE CASE WHEN (t."X_6" < -1.720070) THEN 23 ELSE CASE WHEN (t."X_2" < 0.423296) THEN 29 ELSE 30 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 10 AS nid,  0.033508 AS "P_0", -0.109120 AS "P_1", 0.181825 AS "P_2", -0.103732 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  0.314367 AS "P_0", -0.109120 AS "P_1", -0.103732 AS "P_2", -0.103732 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  0.179452 AS "P_0", 0.070655 AS "P_1", -0.128123 AS "P_2", -0.128123 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  0.356031 AS "P_0", -0.123405 AS "P_1", -0.117741 AS "P_2", -0.117741 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  -0.001812 AS "P_0", -0.123405 AS "P_1", 0.125350 AS "P_2", 0.003804 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  -0.106922 AS "P_0", -0.109120 AS "P_1", -0.103732 AS "P_2", 0.324603 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  0.033508 AS "P_0", -0.109120 AS "P_1", -0.103732 AS "P_2", 0.181825 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  -0.106922 AS "P_0", -0.109120 AS "P_1", -0.103732 AS "P_2", 0.324603 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  -0.106922 AS "P_0", -0.109120 AS "P_1", 0.039046 AS "P_2", 0.181825 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  -0.027885 AS "P_0", 0.070655 AS "P_1", -0.022313 AS "P_2", -0.022313 AS "P_3"
    UNION ALL
    SELECT 25 AS nid,  0.033508 AS "P_0", -0.109120 AS "P_1", 0.181825 AS "P_2", -0.103732 AS "P_3"
    UNION ALL
    SELECT 27 AS nid,  -0.106922 AS "P_0", 0.029787 AS "P_1", 0.039046 AS "P_2", 0.039046 AS "P_3"
    UNION ALL
    SELECT 28 AS nid,  0.173937 AS "P_0", 0.029787 AS "P_1", -0.103732 AS "P_2", -0.103732 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  -0.159031 AS "P_0", 0.455110 AS "P_1", -0.155555 AS "P_2", -0.155555 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  -0.106922 AS "P_0", 0.168694 AS "P_1", -0.103732 AS "P_2", 0.039046 AS "P_3"
    UNION ALL
    SELECT 31 AS nid,  -0.106922 AS "P_0", 0.029787 AS "P_1", 0.181825 AS "P_2", -0.103732 AS "P_3"
    UNION ALL
    SELECT 32 AS nid,  -0.106922 AS "P_0", -0.109120 AS "P_1", 0.324603 AS "P_2", -0.103732 AS "P_3"
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
    CASE WHEN (t."X_8" < 0.303962) THEN CASE WHEN (t."X_3" < -0.311415) THEN CASE WHEN (t."X_8" < -0.652815) THEN CASE WHEN (t."X_5" < 0.257747) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_2" < 1.664691) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_5" < -0.380529) THEN 9 ELSE CASE WHEN (t."X_1" < -0.162504) THEN 19 ELSE 20 END END END ELSE CASE WHEN (t."X_3" < 1.053780) THEN CASE WHEN (t."X_6" < -1.720070) THEN CASE WHEN (t."X_0" < 0.365485) THEN CASE WHEN (t."X_5" < 0.420555) THEN 25 ELSE 26 END ELSE 22 END ELSE CASE WHEN (t."X_2" < 0.423296) THEN 23 ELSE 24 END END ELSE CASE WHEN (t."X_0" < 0.365485) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 9 AS nid,  0.112857 AS "P_0", -0.115188 AS "P_1", 0.106935 AS "P_2", -0.116009 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  0.028620 AS "P_0", 0.146685 AS "P_1", -0.096619 AS "P_2", -0.096619 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  0.324352 AS "P_0", -0.133327 AS "P_1", -0.119128 AS "P_2", -0.119128 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  0.193638 AS "P_0", -0.132141 AS "P_1", 0.038416 AS "P_2", -0.127270 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  -0.127061 AS "P_0", -0.129475 AS "P_1", 0.344827 AS "P_2", -0.122041 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  0.254490 AS "P_0", -0.027193 AS "P_1", -0.125882 AS "P_2", -0.123853 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  -0.108879 AS "P_0", 0.032542 AS "P_1", 0.036652 AS "P_2", 0.041699 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  -0.136010 AS "P_0", -0.133013 AS "P_1", -0.131321 AS "P_2", 0.357703 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  -0.102762 AS "P_0", 0.032080 AS "P_1", 0.159880 AS "P_2", -0.100002 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  -0.108342 AS "P_0", 0.028817 AS "P_1", 0.188788 AS "P_2", -0.104939 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  -0.148449 AS "P_0", 0.324104 AS "P_1", -0.142806 AS "P_2", -0.142806 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  -0.099302 AS "P_0", 0.141943 AS "P_1", -0.096580 AS "P_2", 0.035399 AS "P_3"
    UNION ALL
    SELECT 25 AS nid,  -0.124335 AS "P_0", -0.128086 AS "P_1", -0.123494 AS "P_2", 0.337513 AS "P_3"
    UNION ALL
    SELECT 26 AS nid,  0.040151 AS "P_0", 0.028429 AS "P_1", -0.103466 AS "P_2", 0.033481 AS "P_3"
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
    CASE WHEN (t."X_7" < -1.103278) THEN CASE WHEN (t."X_0" < 0.365485) THEN CASE WHEN (t."X_8" < 0.303962) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_1" < -1.191537) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_8" < 0.303962) THEN CASE WHEN (t."X_1" < 0.555172) THEN CASE WHEN (t."X_5" < -0.140229) THEN 15 ELSE CASE WHEN (t."X_1" < -0.162504) THEN 21 ELSE 22 END END ELSE CASE WHEN (t."X_8" < -0.652815) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_3" < 1.053780) THEN CASE WHEN (t."X_3" < -1.585723) THEN CASE WHEN (t."X_6" < -1.720070) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_5" < 0.667879) THEN 25 ELSE 26 END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 7 AS nid,  0.235409 AS "P_0", -0.104235 AS "P_1", -0.106306 AS "P_2", -0.098722 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.033807 AS "P_0", -0.127973 AS "P_1", -0.122099 AS "P_2", 0.227975 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  0.089828 AS "P_0", -0.123793 AS "P_1", -0.033351 AS "P_2", 0.046753 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.096188 AS "P_0", -0.099014 AS "P_1", 0.266450 AS "P_2", -0.103258 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  0.127236 AS "P_0", 0.052538 AS "P_1", -0.111127 AS "P_2", -0.111127 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  0.098299 AS "P_0", -0.106736 AS "P_1", 0.087763 AS "P_2", -0.107577 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.119856 AS "P_0", -0.118372 AS "P_1", 0.270017 AS "P_2", -0.110648 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  0.046986 AS "P_0", 0.069038 AS "P_1", -0.012351 AS "P_2", -0.118444 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  -0.103461 AS "P_0", -0.103032 AS "P_1", -0.098890 AS "P_2", 0.229347 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  0.006187 AS "P_0", 0.001281 AS "P_1", -0.024970 AS "P_2", 0.021143 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  0.044855 AS "P_0", -0.112346 AS "P_1", 0.042924 AS "P_2", 0.030126 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  -0.094879 AS "P_0", 0.195630 AS "P_1", -0.092826 AS "P_2", -0.092826 AS "P_3"
    UNION ALL
    SELECT 25 AS nid,  -0.131922 AS "P_0", 0.286880 AS "P_1", -0.125930 AS "P_2", -0.128886 AS "P_3"
    UNION ALL
    SELECT 26 AS nid,  -0.105130 AS "P_0", 0.140439 AS "P_1", -0.099875 AS "P_2", 0.023505 AS "P_3"
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
    CASE WHEN (t."X_7" < -1.103278) THEN CASE WHEN (t."X_0" < 0.365485) THEN CASE WHEN (t."X_8" < 0.303962) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_8" < -0.652815) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_8" < 0.303962) THEN CASE WHEN (t."X_2" < 0.920725) THEN CASE WHEN (t."X_3" < 0.485730) THEN CASE WHEN (t."X_4" < -0.087655) THEN 19 ELSE 20 END ELSE 16 END ELSE 12 END ELSE CASE WHEN (t."X_9" < 0.931445) THEN CASE WHEN (t."X_4" < 0.034662) THEN 17 ELSE 18 END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 7 AS nid,  0.197938 AS "P_0", -0.095138 AS "P_1", -0.096922 AS "P_2", -0.090384 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.026557 AS "P_0", -0.118045 AS "P_1", -0.112835 AS "P_2", 0.184358 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  -0.119103 AS "P_0", -0.097345 AS "P_1", 0.096400 AS "P_2", 0.099835 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  0.127922 AS "P_0", -0.112392 AS "P_1", 0.071656 AS "P_2", -0.118155 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  0.092720 AS "P_0", -0.002580 AS "P_1", -0.120953 AS "P_2", 0.026837 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  0.111760 AS "P_0", 0.009855 AS "P_1", -0.017303 AS "P_2", -0.123708 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  -0.022521 AS "P_0", -0.117482 AS "P_1", -0.021489 AS "P_2", 0.123236 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.047146 AS "P_0", 0.075300 AS "P_1", -0.117437 AS "P_2", 0.056252 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  -0.137027 AS "P_0", 0.249108 AS "P_1", -0.128599 AS "P_2", -0.128324 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  -0.133178 AS "P_0", 0.059630 AS "P_1", 0.149789 AS "P_2", -0.116848 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  0.040532 AS "P_0", -0.122572 AS "P_1", 0.142663 AS "P_2", -0.112262 AS "P_3"
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
    CASE WHEN (t."X_7" < -1.103278) THEN CASE WHEN (t."X_0" < 0.365485) THEN CASE WHEN (t."X_7" < -2.031812) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_2" < 0.171390) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_8" < 0.303962) THEN CASE WHEN (t."X_8" < -0.152956) THEN CASE WHEN (t."X_3" < -0.738516) THEN 15 ELSE CASE WHEN (t."X_5" < 0.420555) THEN 19 ELSE 20 END END ELSE 12 END ELSE CASE WHEN (t."X_1" < -0.687010) THEN 13 ELSE CASE WHEN (t."X_5" < -0.380529) THEN 17 ELSE CASE WHEN (t."X_4" < 0.034662) THEN 21 ELSE 22 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 7 AS nid,  0.152112 AS "P_0", -0.091645 AS "P_1", -0.088300 AS "P_2", -0.018726 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.013747 AS "P_0", -0.105675 AS "P_1", -0.104395 AS "P_2", 0.140258 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  0.052561 AS "P_0", -0.100612 AS "P_1", -0.037510 AS "P_2", 0.065092 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.027098 AS "P_0", -0.096083 AS "P_1", 0.188155 AS "P_2", -0.103632 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  0.143912 AS "P_0", -0.023184 AS "P_1", -0.031415 AS "P_2", -0.112820 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  0.116483 AS "P_0", 0.027538 AS "P_1", -0.100000 AS "P_2", -0.097957 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  0.022310 AS "P_0", -0.030925 AS "P_1", 0.082436 AS "P_2", -0.113825 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.093807 AS "P_0", 0.100926 AS "P_1", 0.052508 AS "P_2", -0.093914 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  -0.128588 AS "P_0", -0.114799 AS "P_1", 0.180765 AS "P_2", 0.024628 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  -0.097237 AS "P_0", 0.021359 AS "P_1", -0.114578 AS "P_2", 0.158890 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  -0.111949 AS "P_0", 0.079120 AS "P_1", -0.101840 AS "P_2", 0.095100 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  -0.038213 AS "P_0", 0.168098 AS "P_1", -0.116974 AS "P_2", -0.119123 AS "P_3"
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
"DT_node_lookup_5" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_7" < -1.103278) THEN CASE WHEN (t."X_0" < 0.365485) THEN CASE WHEN (t."X_8" < 0.642133) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_2" < 0.171390) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_8" < 0.642133) THEN CASE WHEN (t."X_0" < -0.191931) THEN CASE WHEN (t."X_6" < 1.284271) THEN CASE WHEN (t."X_4" < -0.087655) THEN 21 ELSE 22 END ELSE 16 END ELSE CASE WHEN (t."X_3" < 0.485730) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_4" < 0.442332) THEN CASE WHEN (t."X_3" < -0.977799) THEN 19 ELSE 20 END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 7 AS nid,  0.125857 AS "P_0", -0.092382 AS "P_1", -0.092960 AS "P_2", -0.003518 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.002828 AS "P_0", -0.092481 AS "P_1", -0.087697 AS "P_2", 0.116190 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  0.045628 AS "P_0", -0.094791 AS "P_1", -0.032130 AS "P_2", 0.056104 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.021336 AS "P_0", -0.089448 AS "P_1", 0.156481 AS "P_2", -0.096106 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  0.109838 AS "P_0", 0.028035 AS "P_1", -0.087651 AS "P_2", -0.086830 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  -0.104834 AS "P_0", -0.101089 AS "P_1", 0.173329 AS "P_2", -0.026668 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.039318 AS "P_0", -0.124395 AS "P_1", 0.133835 AS "P_2", -0.005639 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  0.111993 AS "P_0", -0.071092 AS "P_1", -0.123655 AS "P_2", 0.059610 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  -0.094304 AS "P_0", 0.038592 AS "P_1", -0.090345 AS "P_2", 0.102337 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  -0.058573 AS "P_0", 0.177324 AS "P_1", -0.110732 AS "P_2", -0.114303 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  -0.114812 AS "P_0", 0.193533 AS "P_1", -0.008869 AS "P_2", -0.102752 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  0.058624 AS "P_0", 0.042218 AS "P_1", -0.033917 AS "P_2", -0.092177 AS "P_3"
  ) AS "Values")
,
"DT_output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_7" < -1.103278) THEN CASE WHEN (t."X_3" < -0.977799) THEN 3 ELSE CASE WHEN (t."X_9" < 0.029573) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_1" < -1.191537) THEN 5 ELSE CASE WHEN (t."X_8" < 0.642133) THEN CASE WHEN (t."X_2" < 0.920725) THEN CASE WHEN (t."X_2" < 0.423296) THEN CASE WHEN (t."X_6" < 1.284271) THEN 17 ELSE 18 END ELSE 16 END ELSE 12 END ELSE CASE WHEN (t."X_4" < 0.034662) THEN 13 ELSE 14 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.013633 AS "P_0", -0.102422 AS "P_1", 0.096859 AS "P_2", -0.004784 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  0.132402 AS "P_0", -0.124115 AS "P_1", -0.046924 AS "P_2", 0.002577 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.166467 AS "P_0", -0.092344 AS "P_1", -0.112923 AS "P_2", -0.023005 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.018468 AS "P_0", -0.099671 AS "P_1", -0.022700 AS "P_2", 0.101217 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.024579 AS "P_0", 0.087438 AS "P_1", -0.100923 AS "P_2", 0.023036 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  -0.107969 AS "P_0", 0.083664 AS "P_1", -0.098713 AS "P_2", 0.053100 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  -0.035566 AS "P_0", 0.142565 AS "P_1", -0.106526 AS "P_2", -0.107412 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  0.017249 AS "P_0", -0.123368 AS "P_1", 0.085736 AS "P_2", 0.004511 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.111521 AS "P_0", 0.119454 AS "P_1", 0.034655 AS "P_2", -0.097091 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  0.002366 AS "P_0", -0.091490 AS "P_1", 0.110655 AS "P_2", -0.089144 AS "P_3"
  ) AS "Values")
,
"DT_output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_7" < -1.103278) THEN CASE WHEN (t."X_0" < 0.365485) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_4" < 0.442332) THEN CASE WHEN (t."X_3" < 1.053780) THEN CASE WHEN (t."X_8" < 0.642133) THEN CASE WHEN (t."X_0" < -0.191931) THEN CASE WHEN (t."X_3" < -0.977799) THEN 15 ELSE 16 END ELSE 14 END ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_8" < -0.652815) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  0.071974 AS "P_0", -0.108475 AS "P_1", -0.111686 AS "P_2", 0.066126 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.009922 AS "P_0", -0.109308 AS "P_1", 0.068686 AS "P_2", -0.011134 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.078033 AS "P_0", -0.011933 AS "P_1", -0.103356 AS "P_2", 0.007281 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  0.004957 AS "P_0", -0.085949 AS "P_1", 0.002166 AS "P_2", 0.060573 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  0.123431 AS "P_0", -0.014965 AS "P_1", -0.035600 AS "P_2", -0.111166 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.115429 AS "P_0", 0.106191 AS "P_1", -0.105920 AS "P_2", 0.019166 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  -0.112181 AS "P_0", -0.100696 AS "P_1", 0.147168 AS "P_2", 0.032405 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  -0.027205 AS "P_0", 0.128730 AS "P_1", -0.042813 AS "P_2", -0.086027 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  -0.094749 AS "P_0", 0.055779 AS "P_1", 0.084442 AS "P_2", -0.095134 AS "P_3"
  ) AS "Values")
,
"DT_output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_7" < -1.103278) THEN CASE WHEN (t."X_4" < -0.087655) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_2" < 1.664691) THEN CASE WHEN (t."X_8" < 0.303962) THEN CASE WHEN (t."X_3" < 0.485730) THEN CASE WHEN (t."X_4" < -0.087655) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_9" < 0.931445) THEN CASE WHEN (t."X_7" < 0.265512) THEN 15 ELSE 16 END ELSE 12 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  0.050330 AS "P_0", -0.093148 AS "P_1", -0.107965 AS "P_2", 0.077665 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.025693 AS "P_0", -0.110264 AS "P_1", 0.056782 AS "P_2", -0.014368 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.012398 AS "P_0", -0.028587 AS "P_1", -0.100359 AS "P_2", 0.134815 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.030259 AS "P_0", -0.090878 AS "P_1", -0.018228 AS "P_2", 0.093461 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  0.090523 AS "P_0", -0.009867 AS "P_1", -0.001587 AS "P_2", -0.103267 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  -0.105742 AS "P_0", 0.041764 AS "P_1", 0.092453 AS "P_2", -0.091724 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  0.090539 AS "P_0", -0.116082 AS "P_1", 0.058932 AS "P_2", -0.098258 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  -0.028160 AS "P_0", 0.064858 AS "P_1", -0.083551 AS "P_2", 0.006126 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  -0.103778 AS "P_0", 0.161831 AS "P_1", -0.090629 AS "P_2", -0.106763 AS "P_3"
  ) AS "Values")
,
"DT_output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_7" < -1.103278) THEN CASE WHEN (t."X_3" < -0.977799) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_1" < -1.191537) THEN 5 ELSE CASE WHEN (t."X_8" < 0.642133) THEN CASE WHEN (t."X_2" < 0.920725) THEN CASE WHEN (t."X_1" < -0.162504) THEN 13 ELSE CASE WHEN (t."X_3" < -1.585723) THEN 15 ELSE 16 END END ELSE 10 END ELSE CASE WHEN (t."X_2" < 0.171390) THEN 11 ELSE 12 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  -0.018848 AS "P_0", -0.084494 AS "P_1", 0.081487 AS "P_2", -0.006935 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.061996 AS "P_0", -0.106477 AS "P_1", -0.071856 AS "P_2", 0.044271 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  0.107077 AS "P_0", -0.111119 AS "P_1", -0.039404 AS "P_2", -0.001325 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.025997 AS "P_0", 0.079016 AS "P_1", -0.094012 AS "P_2", 0.022480 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  -0.102097 AS "P_0", 0.105329 AS "P_1", -0.081345 AS "P_2", 0.000457 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.000500 AS "P_0", 0.050811 AS "P_1", -0.088119 AS "P_2", -0.007662 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  -0.022980 AS "P_0", -0.027904 AS "P_1", -0.005166 AS "P_2", 0.051975 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  -0.113408 AS "P_0", 0.024397 AS "P_1", 0.120266 AS "P_2", -0.084641 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  0.065577 AS "P_0", -0.047580 AS "P_1", 0.048380 AS "P_2", -0.100496 AS "P_3"
  ) AS "Values")
,
"DT_output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_5" < -0.380529) THEN CASE WHEN (t."X_7" < -0.479801) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_3" < -1.758169) THEN 5 ELSE CASE WHEN (t."X_7" < 0.600685) THEN CASE WHEN (t."X_9" < -0.067862) THEN 9 ELSE CASE WHEN (t."X_7" < -0.479801) THEN CASE WHEN (t."X_2" < 0.171390) THEN 15 ELSE 16 END ELSE 14 END END ELSE CASE WHEN (t."X_3" < -0.738516) THEN 11 ELSE 12 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  0.086216 AS "P_0", -0.112446 AS "P_1", 0.030264 AS "P_2", -0.064538 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  -0.019681 AS "P_0", 0.120382 AS "P_1", -0.030381 AS "P_2", -0.103046 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.001290 AS "P_0", 0.009006 AS "P_1", 0.064767 AS "P_2", -0.103630 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  0.091358 AS "P_0", 0.078936 AS "P_1", -0.110673 AS "P_2", -0.100928 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  0.052785 AS "P_0", -0.038287 AS "P_1", -0.051697 AS "P_2", 0.051709 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.090186 AS "P_0", -0.064959 AS "P_1", 0.137216 AS "P_2", -0.010559 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  0.048823 AS "P_0", -0.050892 AS "P_1", -0.099451 AS "P_2", 0.085716 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  -0.074941 AS "P_0", -0.109347 AS "P_1", 0.002237 AS "P_2", 0.126238 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  -0.112221 AS "P_0", 0.096453 AS "P_1", -0.084143 AS "P_2", 0.068756 AS "P_3"
  ) AS "Values")
,
"DT_output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_8" < 0.642133) THEN CASE WHEN (t."X_3" < -0.738516) THEN CASE WHEN (t."X_0" < -0.879404) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_5" < 0.667879) THEN CASE WHEN (t."X_4" < 0.442332) THEN 13 ELSE 14 END ELSE 10 END END ELSE CASE WHEN (t."X_1" < -0.687010) THEN 5 ELSE CASE WHEN (t."X_6" < -2.398403) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 5 AS nid,  0.139859 AS "P_0", -0.006807 AS "P_1", -0.097381 AS "P_2", -0.111660 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.009551 AS "P_0", 0.096780 AS "P_1", -0.030871 AS "P_2", -0.107666 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.061624 AS "P_0", -0.104828 AS "P_1", 0.076523 AS "P_2", -0.110546 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.058204 AS "P_0", -0.013890 AS "P_1", -0.118259 AS "P_2", 0.143796 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  -0.038102 AS "P_0", -0.068326 AS "P_1", -0.035202 AS "P_2", 0.110861 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.096733 AS "P_0", 0.096092 AS "P_1", -0.082114 AS "P_2", -0.011104 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  0.008387 AS "P_0", -0.111584 AS "P_1", 0.145740 AS "P_2", -0.111404 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  -0.043584 AS "P_0", -0.031512 AS "P_1", -0.022775 AS "P_2", 0.081426 AS "P_3"
  ) AS "Values")
,
"DT_output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_6" < -3.352625) THEN 1 ELSE CASE WHEN (t."X_5" < -0.380529) THEN CASE WHEN (t."X_7" < -0.479801) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_1" < 0.764608) THEN CASE WHEN (t."X_0" < 0.365485) THEN CASE WHEN (t."X_9" < 0.145527) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_3" < -0.311415) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_2" < 0.171390) THEN 11 ELSE 12 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  -0.104145 AS "P_0", -0.030600 AS "P_1", -0.009242 AS "P_2", 0.112146 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  0.092864 AS "P_0", -0.098769 AS "P_1", 0.040735 AS "P_2", -0.120062 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.014609 AS "P_0", 0.103587 AS "P_1", -0.029818 AS "P_2", -0.090978 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  -0.101661 AS "P_0", 0.009448 AS "P_1", 0.116412 AS "P_2", -0.083396 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  0.066182 AS "P_0", 0.024291 AS "P_1", -0.059435 AS "P_2", -0.062431 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  0.073080 AS "P_0", 0.077067 AS "P_1", -0.129219 AS "P_2", -0.014603 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  -0.105607 AS "P_0", 0.011110 AS "P_1", 0.004366 AS "P_2", 0.071758 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  -0.008545 AS "P_0", -0.082223 AS "P_1", 0.063047 AS "P_2", 0.019029 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  0.035156 AS "P_0", -0.095454 AS "P_1", -0.097504 AS "P_2", 0.088870 AS "P_3"
  ) AS "Values")
,
"DT_output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_8" < 0.642133) THEN CASE WHEN (t."X_3" < -0.738516) THEN CASE WHEN (t."X_0" < -0.879404) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_8" < -0.152956) THEN CASE WHEN (t."X_5" < 0.420555) THEN 13 ELSE 14 END ELSE 10 END END ELSE CASE WHEN (t."X_3" < -0.738516) THEN CASE WHEN (t."X_2" < 0.423296) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 6 AS nid,  0.075327 AS "P_0", 0.066986 AS "P_1", -0.098888 AS "P_2", -0.113508 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.005524 AS "P_0", 0.081615 AS "P_1", -0.029034 AS "P_2", -0.096154 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.048763 AS "P_0", -0.096501 AS "P_1", 0.066583 AS "P_2", -0.101055 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  0.088682 AS "P_0", -0.064821 AS "P_1", -0.008931 AS "P_2", -0.035139 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  -0.094049 AS "P_0", 0.034854 AS "P_1", -0.081456 AS "P_2", 0.089548 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  0.019410 AS "P_0", -0.060298 AS "P_1", 0.002567 AS "P_2", 0.046668 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  -0.076215 AS "P_0", -0.088403 AS "P_1", 0.096625 AS "P_2", 0.025769 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  -0.091706 AS "P_0", 0.016518 AS "P_1", -0.097425 AS "P_2", 0.125402 AS "P_3"
  ) AS "Values")
,
"DT_output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_7" < -1.103278) THEN 1 ELSE CASE WHEN (t."X_4" < 0.442332) THEN CASE WHEN (t."X_3" < 0.485730) THEN CASE WHEN (t."X_9" < -0.067862) THEN 9 ELSE CASE WHEN (t."X_1" < 0.764608) THEN 11 ELSE 12 END END ELSE 6 END ELSE CASE WHEN (t."X_2" < 0.423296) THEN 7 ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  0.022512 AS "P_0", -0.106118 AS "P_1", 0.001619 AS "P_2", 0.023642 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  0.056327 AS "P_0", 0.019412 AS "P_1", -0.086358 AS "P_2", -0.024003 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.012674 AS "P_0", 0.023478 AS "P_1", -0.025853 AS "P_2", -0.012671 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.127738 AS "P_0", -0.112577 AS "P_1", -0.009693 AS "P_2", -0.035127 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  -0.099877 AS "P_0", 0.097961 AS "P_1", 0.023478 AS "P_2", -0.090539 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  -0.101458 AS "P_0", -0.121749 AS "P_1", 0.098985 AS "P_2", 0.097165 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.046252 AS "P_0", 0.079872 AS "P_1", -0.040801 AS "P_2", -0.017775 AS "P_3"
  ) AS "Values")
,
"DT_output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_9" < -0.832824) THEN 1 ELSE CASE WHEN (t."X_6" < 1.284271) THEN CASE WHEN (t."X_7" < -1.103278) THEN 5 ELSE CASE WHEN (t."X_4" < 0.442332) THEN CASE WHEN (t."X_7" < -0.479801) THEN 9 ELSE CASE WHEN (t."X_7" < 0.600685) THEN 11 ELSE 12 END END ELSE 8 END END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  -0.021653 AS "P_0", -0.074101 AS "P_1", 0.107096 AS "P_2", -0.023701 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  -0.029425 AS "P_0", -0.074135 AS "P_1", 0.057815 AS "P_2", 0.014709 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  0.049167 AS "P_0", -0.094909 AS "P_1", -0.046728 AS "P_2", 0.024711 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.100666 AS "P_0", -0.017996 AS "P_1", -0.047258 AS "P_2", -0.081784 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  -0.103010 AS "P_0", 0.049154 AS "P_1", 0.051898 AS "P_2", -0.009025 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  0.043547 AS "P_0", 0.042837 AS "P_1", -0.102044 AS "P_2", -0.005332 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.098084 AS "P_0", 0.097915 AS "P_1", -0.086600 AS "P_2", 0.017081 AS "P_3"
  ) AS "Values")
,
"DT_output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_8" < 0.642133) THEN CASE WHEN (t."X_3" < -0.738516) THEN CASE WHEN (t."X_0" < -0.879404) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_8" < -0.152956) THEN CASE WHEN (t."X_0" < -0.191931) THEN 11 ELSE 12 END ELSE 10 END END ELSE CASE WHEN (t."X_3" < -0.738516) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 5 AS nid,  -0.047049 AS "P_0", -0.014708 AS "P_1", -0.045874 AS "P_2", 0.078849 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  0.065000 AS "P_0", 0.059055 AS "P_1", -0.088781 AS "P_2", -0.104364 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.006885 AS "P_0", 0.062702 AS "P_1", -0.016822 AS "P_2", -0.088665 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.045476 AS "P_0", -0.089130 AS "P_1", 0.057106 AS "P_2", -0.095803 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  0.066251 AS "P_0", -0.053869 AS "P_1", -0.005169 AS "P_2", -0.025457 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  0.003248 AS "P_0", 0.026839 AS "P_1", 0.010272 AS "P_2", -0.037527 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.125144 AS "P_0", -0.084022 AS "P_1", 0.027913 AS "P_2", 0.117315 AS "P_3"
  ) AS "Values")
,
"DT_output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_1" < -0.687010) THEN CASE WHEN (t."X_5" < -0.380529) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_4" < 0.034662) THEN CASE WHEN (t."X_8" < -0.652815) THEN 7 ELSE CASE WHEN (t."X_4" < -0.263412) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_0" < 0.081388) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  0.075589 AS "P_0", -0.036431 AS "P_1", 0.011840 AS "P_2", -0.099499 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.031683 AS "P_0", -0.053680 AS "P_1", -0.065356 AS "P_2", 0.049637 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.027587 AS "P_0", 0.014919 AS "P_1", 0.028120 AS "P_2", -0.088158 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  0.038129 AS "P_0", 0.014627 AS "P_1", 0.009381 AS "P_2", -0.104578 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.096332 AS "P_0", 0.069956 AS "P_1", 0.058664 AS "P_2", -0.039189 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  -0.107814 AS "P_0", 0.076129 AS "P_1", -0.012172 AS "P_2", 0.029326 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  -0.025389 AS "P_0", -0.093954 AS "P_1", -0.029350 AS "P_2", 0.133831 AS "P_3"
  ) AS "Values")
,
"DT_output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_8" < 0.642133) THEN CASE WHEN (t."X_3" < -0.738516) THEN CASE WHEN (t."X_0" < -0.879404) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_5" < 0.667879) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_3" < -0.738516) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 5 AS nid,  -0.034973 AS "P_0", -0.010846 AS "P_1", -0.041932 AS "P_2", 0.061771 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  0.050752 AS "P_0", 0.056963 AS "P_1", -0.081580 AS "P_2", -0.095201 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.004500 AS "P_0", 0.054048 AS "P_1", -0.012985 AS "P_2", -0.082230 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.042789 AS "P_0", -0.083655 AS "P_1", 0.048632 AS "P_2", -0.088841 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  -0.015496 AS "P_0", -0.068365 AS "P_1", 0.064995 AS "P_2", -0.014275 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  -0.044732 AS "P_0", -0.000364 AS "P_1", -0.092443 AS "P_2", 0.095836 AS "P_3"
  ) AS "Values")
,
"DT_output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_9" < -0.832824) THEN 1 ELSE CASE WHEN (t."X_8" < -0.652815) THEN CASE WHEN (t."X_6" < 1.284271) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_1" < -0.687010) THEN 7 ELSE CASE WHEN (t."X_1" < 0.555172) THEN 9 ELSE CASE WHEN (t."X_4" < 0.034662) THEN 11 ELSE 12 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  -0.020477 AS "P_0", -0.058689 AS "P_1", 0.095557 AS "P_2", -0.029881 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.007092 AS "P_0", 0.022925 AS "P_1", 0.014278 AS "P_2", -0.027023 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.040526 AS "P_0", -0.082233 AS "P_1", 0.041030 AS "P_2", 0.046378 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.127884 AS "P_0", -0.014710 AS "P_1", -0.102874 AS "P_2", -0.104439 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  -0.114164 AS "P_0", 0.024517 AS "P_1", 0.080634 AS "P_2", 0.007448 AS "P_3"
    UNION ALL
    SELECT 11 AS nid,  -0.033223 AS "P_0", 0.006119 AS "P_1", -0.096497 AS "P_2", 0.086311 AS "P_3"
    UNION ALL
    SELECT 12 AS nid,  0.038442 AS "P_0", 0.048844 AS "P_1", -0.090959 AS "P_2", -0.049241 AS "P_3"
  ) AS "Values")
,
"DT_output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_7" < -1.103278) THEN 1 ELSE CASE WHEN (t."X_4" < 0.442332) THEN CASE WHEN (t."X_4" < -0.263412) THEN 5 ELSE CASE WHEN (t."X_4" < 0.034662) THEN 7 ELSE 8 END END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  0.011670 AS "P_0", -0.092823 AS "P_1", 0.008715 AS "P_2", 0.021828 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.067049 AS "P_0", -0.038793 AS "P_1", -0.024014 AS "P_2", -0.021697 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.010896 AS "P_0", 0.048712 AS "P_1", 0.041487 AS "P_2", -0.103131 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.013422 AS "P_0", -0.041309 AS "P_1", -0.048005 AS "P_2", 0.075766 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.111663 AS "P_0", 0.113009 AS "P_1", 0.016178 AS "P_2", -0.044035 AS "P_3"
  ) AS "Values")
,
"DT_output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_9" < -0.832824) THEN 1 ELSE CASE WHEN (t."X_9" < -0.067862) THEN 3 ELSE CASE WHEN (t."X_8" < -0.152956) THEN CASE WHEN (t."X_5" < 0.420555) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_4" < 0.227505) THEN 9 ELSE 10 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  -0.017164 AS "P_0", -0.053757 AS "P_1", 0.086397 AS "P_2", -0.029043 AS "P_3"
    UNION ALL
    SELECT 3 AS nid,  0.018029 AS "P_0", 0.090050 AS "P_1", -0.063223 AS "P_2", -0.066088 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.004910 AS "P_0", -0.090391 AS "P_1", 0.037659 AS "P_2", -0.005977 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.092403 AS "P_0", 0.000619 AS "P_1", 0.023871 AS "P_2", 0.065378 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  -0.073595 AS "P_0", 0.029002 AS "P_1", -0.033648 AS "P_2", 0.053457 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  0.109509 AS "P_0", -0.030465 AS "P_1", -0.090802 AS "P_2", -0.055503 AS "P_3"
  ) AS "Values")
,
"DT_output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_3" < -1.758169) THEN 1 ELSE CASE WHEN (t."X_5" < -0.380529) THEN 3 ELSE CASE WHEN (t."X_6" < -1.720070) THEN 5 ELSE CASE WHEN (t."X_2" < 0.542731) THEN CASE WHEN (t."X_4" < -0.087655) THEN 9 ELSE 10 END ELSE 8 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  -0.011562 AS "P_0", -0.014195 AS "P_1", 0.065229 AS "P_2", -0.055801 AS "P_3"
    UNION ALL
    SELECT 3 AS nid,  0.035435 AS "P_0", 0.022120 AS "P_1", 0.002459 AS "P_2", -0.082931 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.081220 AS "P_0", 0.032597 AS "P_1", -0.031692 AS "P_2", 0.066520 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.085368 AS "P_0", -0.113350 AS "P_1", -0.012876 AS "P_2", 0.023303 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  -0.035711 AS "P_0", 0.029936 AS "P_1", 0.042997 AS "P_2", -0.055454 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  0.002016 AS "P_0", 0.046007 AS "P_1", -0.119135 AS "P_2", 0.063261 AS "P_3"
  ) AS "Values")
,
"DT_output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_7" < -1.103278) THEN 1 ELSE CASE WHEN (t."X_6" < 1.284271) THEN CASE WHEN (t."X_2" < 0.423296) THEN 5 ELSE CASE WHEN (t."X_9" < 0.434021) THEN 7 ELSE 8 END END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  0.007968 AS "P_0", -0.087654 AS "P_1", 0.009195 AS "P_2", 0.022333 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.001145 AS "P_0", -0.064926 AS "P_1", 0.018859 AS "P_2", 0.023262 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.096809 AS "P_0", 0.087465 AS "P_1", 0.003443 AS "P_2", -0.051640 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.042356 AS "P_0", 0.006570 AS "P_1", -0.051009 AS "P_2", -0.010346 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.058733 AS "P_0", -0.027350 AS "P_1", -0.011031 AS "P_2", -0.023451 AS "P_3"
  ) AS "Values")
,
"DT_output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_7" < -1.103278) THEN 1 ELSE CASE WHEN (t."X_4" < 0.442332) THEN CASE WHEN (t."X_6" < -0.650624) THEN 5 ELSE CASE WHEN (t."X_0" < -0.191931) THEN 7 ELSE 8 END END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  0.007493 AS "P_0", -0.083744 AS "P_1", 0.008938 AS "P_2", 0.019498 AS "P_3"
    UNION ALL
    SELECT 4 AS nid,  0.049743 AS "P_0", -0.030312 AS "P_1", -0.017862 AS "P_2", -0.017476 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.108970 AS "P_0", 0.060605 AS "P_1", 0.005851 AS "P_2", 0.007796 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  -0.024806 AS "P_0", 0.038890 AS "P_1", -0.000364 AS "P_2", -0.031827 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.051991 AS "P_0", -0.057629 AS "P_1", 0.006698 AS "P_2", -0.013889 AS "P_3"
  ) AS "Values")
,
"DT_output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_8" < 0.642133) THEN CASE WHEN (t."X_3" < -0.738516) THEN 3 ELSE CASE WHEN (t."X_0" < -0.191931) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_4" < 0.227505) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  0.029176 AS "P_0", 0.001668 AS "P_1", 0.023898 AS "P_2", -0.105839 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.038735 AS "P_0", 0.025310 AS "P_1", -0.079937 AS "P_2", 0.048555 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  0.054690 AS "P_0", -0.008849 AS "P_1", -0.015514 AS "P_2", -0.047843 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  -0.007806 AS "P_0", -0.005938 AS "P_1", 0.041319 AS "P_2", -0.039377 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.038499 AS "P_0", -0.046027 AS "P_1", -0.009091 AS "P_2", 0.068599 AS "P_3"
  ) AS "Values")
,
"DT_output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_0" < 0.365485) THEN CASE WHEN (t."X_5" < 0.257747) THEN 3 ELSE CASE WHEN (t."X_8" < -0.152956) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_1" < -0.687010) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  0.064798 AS "P_0", 0.016890 AS "P_1", -0.093207 AS "P_2", -0.008435 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  0.038508 AS "P_0", -0.047134 AS "P_1", -0.013331 AS "P_2", -0.006485 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.099697 AS "P_0", -0.011262 AS "P_1", 0.102290 AS "P_2", -0.012937 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  -0.104337 AS "P_0", 0.023086 AS "P_1", 0.038115 AS "P_2", 0.026738 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.012604 AS "P_0", 0.004504 AS "P_1", -0.015375 AS "P_2", -0.006880 AS "P_3"
  ) AS "Values")
,
"DT_output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_8" < 0.642133) THEN CASE WHEN (t."X_3" < -0.738516) THEN 3 ELSE CASE WHEN (t."X_0" < -0.191931) THEN 5 ELSE 6 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 2 AS nid,  0.004559 AS "P_0", 0.015854 AS "P_1", -0.061296 AS "P_2", 0.015184 AS "P_3"
    UNION ALL
    SELECT 3 AS nid,  0.026196 AS "P_0", 0.001436 AS "P_1", 0.021611 AS "P_2", -0.099580 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  -0.006096 AS "P_0", -0.005073 AS "P_1", 0.036287 AS "P_2", -0.036036 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.036453 AS "P_0", -0.040189 AS "P_1", -0.004367 AS "P_2", 0.058799 AS "P_3"
  ) AS "Values")
,
"DT_output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_3" < -1.758169) THEN 1 ELSE CASE WHEN (t."X_5" < -0.380529) THEN 3 ELSE CASE WHEN (t."X_7" < 0.600685) THEN CASE WHEN (t."X_2" < -0.548994) THEN 7 ELSE CASE WHEN (t."X_7" < -0.792489) THEN 9 ELSE 10 END END ELSE 6 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  -0.015219 AS "P_0", -0.011450 AS "P_1", 0.057073 AS "P_2", -0.045019 AS "P_3"
    UNION ALL
    SELECT 3 AS nid,  0.028808 AS "P_0", 0.021380 AS "P_1", 0.007985 AS "P_2", -0.077833 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.000132 AS "P_0", -0.058118 AS "P_1", 0.033477 AS "P_2", 0.022829 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  -0.092157 AS "P_0", 0.073225 AS "P_1", -0.038075 AS "P_2", 0.051190 AS "P_3"
    UNION ALL
    SELECT 9 AS nid,  0.021676 AS "P_0", -0.015285 AS "P_1", -0.026472 AS "P_2", 0.011361 AS "P_3"
    UNION ALL
    SELECT 10 AS nid,  0.031159 AS "P_0", 0.006446 AS "P_1", -0.083183 AS "P_2", 0.021442 AS "P_3"
  ) AS "Values")
,
"DT_output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_0" < 0.365485) THEN CASE WHEN (t."X_5" < 0.257747) THEN 3 ELSE CASE WHEN (t."X_3" < -0.977799) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_1" < -0.687010) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 3 AS nid,  0.050820 AS "P_0", 0.016851 AS "P_1", -0.084496 AS "P_2", -0.001384 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  0.035099 AS "P_0", -0.043158 AS "P_1", -0.005482 AS "P_2", -0.012478 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.092179 AS "P_0", -0.009681 AS "P_1", 0.088896 AS "P_2", -0.008108 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.017951 AS "P_0", 0.001571 AS "P_1", -0.011618 AS "P_2", -0.013595 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.098608 AS "P_0", 0.026173 AS "P_1", 0.026463 AS "P_2", 0.022715 AS "P_3"
  ) AS "Values")
,
"DT_output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_8" < -0.652815) THEN 1 ELSE CASE WHEN (t."X_1" < -0.687010) THEN 3 ELSE CASE WHEN (t."X_4" < 0.034662) THEN CASE WHEN (t."X_3" < -0.977799) THEN 7 ELSE 8 END ELSE 6 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 1 AS nid,  -0.033916 AS "P_0", -0.033788 AS "P_1", 0.038548 AS "P_2", 0.008316 AS "P_3"
    UNION ALL
    SELECT 3 AS nid,  0.112022 AS "P_0", -0.026428 AS "P_1", -0.085250 AS "P_2", -0.088660 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.022397 AS "P_0", 0.056060 AS "P_1", 0.014909 AS "P_2", -0.070037 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  -0.014189 AS "P_0", -0.036638 AS "P_1", -0.026541 AS "P_2", 0.071977 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  -0.082818 AS "P_0", 0.011593 AS "P_1", -0.008822 AS "P_2", 0.055899 AS "P_3"
  ) AS "Values")
,
"DT_output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
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
    CASE WHEN (t."X_0" < 0.365485) THEN CASE WHEN (t."X_7" < 0.600685) THEN CASE WHEN (t."X_3" < -1.585723) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_9" < 0.145527) THEN 5 ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 4 AS nid,  -0.011493 AS "P_0", 0.016483 AS "P_1", 0.021476 AS "P_2", -0.046590 AS "P_3"
    UNION ALL
    SELECT 5 AS nid,  0.007835 AS "P_0", 0.031764 AS "P_1", -0.006237 AS "P_2", -0.037092 AS "P_3"
    UNION ALL
    SELECT 6 AS nid,  -0.036734 AS "P_0", -0.089267 AS "P_1", 0.074863 AS "P_2", 0.020970 AS "P_3"
    UNION ALL
    SELECT 7 AS nid,  0.036376 AS "P_0", -0.096523 AS "P_1", -0.007437 AS "P_2", 0.055453 AS "P_3"
    UNION ALL
    SELECT 8 AS nid,  0.001377 AS "P_0", 0.073960 AS "P_1", -0.103606 AS "P_2", 0.001238 AS "P_3"
  ) AS "Values")
,
"DT_output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2", t2."P_3" AS "P_3"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
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
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2", t."P_3" AS "P_3" FROM "DT_output_31" AS t
  ) AS scu
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.265625 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.296875 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   0.218750 + SUM(t."P_2") AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   0.218750 + SUM(t."P_3") AS "Score_3",
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