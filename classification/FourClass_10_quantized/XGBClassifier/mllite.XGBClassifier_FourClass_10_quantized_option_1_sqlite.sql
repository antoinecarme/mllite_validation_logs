WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_7" < 6.000000) THEN CASE WHEN (t."X_8" < 5.000000) THEN CASE WHEN (t."X_3" < 7.000000) THEN CASE WHEN (t."X_0" < 6.000000) THEN CASE WHEN (t."X_3" < 2.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_8" < 2.000000) THEN 53 ELSE 54 END END ELSE CASE WHEN (t."X_7" < 1.000000) THEN 31 ELSE CASE WHEN (t."X_8" < 3.000000) THEN 55 ELSE 56 END END END ELSE CASE WHEN (t."X_8" < 1.000000) THEN 17 ELSE CASE WHEN (t."X_0" < 6.000000) THEN 33 ELSE CASE WHEN (t."X_3" < 8.000000) THEN 57 ELSE 58 END END END END ELSE CASE WHEN (t."X_1" < 5.000000) THEN CASE WHEN (t."X_3" < 8.000000) THEN CASE WHEN (t."X_8" < 6.000000) THEN 35 ELSE CASE WHEN (t."X_7" < 3.000000) THEN 59 ELSE 60 END END ELSE CASE WHEN (t."X_8" < 7.000000) THEN 37 ELSE CASE WHEN (t."X_0" < 6.000000) THEN 61 ELSE 62 END END END ELSE CASE WHEN (t."X_3" < 1.000000) THEN 21 ELSE CASE WHEN (t."X_6" < 1.000000) THEN 39 ELSE 40 END END END END ELSE CASE WHEN (t."X_8" < 5.000000) THEN CASE WHEN (t."X_1" < 5.000000) THEN CASE WHEN (t."X_3" < 8.000000) THEN 23 ELSE CASE WHEN (t."X_0" < 7.000000) THEN 41 ELSE 42 END END ELSE CASE WHEN (t."X_6" < 7.000000) THEN CASE WHEN (t."X_1" < 8.000000) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_0" < 4.000000) THEN 45 ELSE 46 END END END ELSE CASE WHEN (t."X_1" < 2.000000) THEN 13 ELSE CASE WHEN (t."X_0" < 6.000000) THEN CASE WHEN (t."X_1" < 6.000000) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_5" < 7.000000) THEN 49 ELSE 50 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 13 AS nid,  0.315254 AS "P_0", -0.010006 AS "P_1", -0.132392 AS "P_2", -0.172810 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  0.178379 AS "P_0", -0.178308 AS "P_1", -0.016546 AS "P_2", 0.016400 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  0.193846 AS "P_0", -0.101425 AS "P_1", -0.028003 AS "P_2", -0.064481 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  0.016216 AS "P_0", 0.016400 AS "P_1", 0.048244 AS "P_2", -0.080954 AS "P_3"
    UNION ALL
    SELECT 31 AS nid,  -0.174193 AS "P_0", -0.174122 AS "P_1", 0.057659 AS "P_2", 0.290658 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  -0.020225 AS "P_0", -0.154970 AS "P_1", -0.182162 AS "P_2", 0.357693 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  0.041861 AS "P_0", -0.097555 AS "P_1", -0.097913 AS "P_2", 0.153756 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  0.315255 AS "P_0", -0.010006 AS "P_1", -0.132392 AS "P_2", -0.172810 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  -0.166387 AS "P_0", -0.186486 AS "P_1", -0.186693 AS "P_2", 0.540006 AS "P_3"
    UNION ALL
    SELECT 40 AS nid,  -0.091525 AS "P_0", -0.020163 AS "P_1", -0.162885 AS "P_2", 0.274938 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  -0.168000 AS "P_0", -0.167928 AS "P_1", -0.120197 AS "P_2", 0.456414 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  0.147170 AS "P_0", -0.169739 AS "P_1", -0.034256 AS "P_2", 0.056801 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  0.071187 AS "P_0", -0.132109 AS "P_1", 0.233298 AS "P_2", -0.172810 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  -0.050847 AS "P_0", 0.152797 AS "P_1", 0.070769 AS "P_2", -0.172810 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  -0.161739 AS "P_0", -0.140770 AS "P_1", 0.473810 AS "P_2", -0.172094 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  -0.072000 AS "P_0", -0.023849 AS "P_1", 0.215436 AS "P_2", -0.119902 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  -0.035294 AS "P_0", 0.141430 AS "P_1", -0.000344 AS "P_2", -0.105771 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  -0.150404 AS "P_0", 0.419326 AS "P_1", -0.131213 AS "P_2", -0.137363 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  -0.191351 AS "P_0", 0.561618 AS "P_1", -0.178530 AS "P_2", -0.191284 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  -0.120000 AS "P_0", 0.420422 AS "P_1", -0.150176 AS "P_2", -0.149912 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  0.257143 AS "P_0", -0.171357 AS "P_1", 0.085284 AS "P_2", -0.171357 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  -0.085714 AS "P_0", -0.116776 AS "P_1", 0.381024 AS "P_2", -0.179150 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  0.427200 AS "P_0", -0.187131 AS "P_1", -0.053101 AS "P_2", -0.187131 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  0.129114 AS "P_0", -0.174606 AS "P_1", -0.053470 AS "P_2", 0.098981 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.186555 AS "P_0", -0.186486 AS "P_1", 0.558621 AS "P_2", -0.186486 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  -0.116883 AS "P_0", -0.179150 AS "P_1", 0.381024 AS "P_2", -0.085589 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.180723 AS "P_0", -0.180653 AS "P_1", -0.065337 AS "P_2", 0.426934 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  -0.121678 AS "P_0", -0.188743 AS "P_1", -0.172185 AS "P_2", 0.482999 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  0.339131 AS "P_0", -0.130334 AS "P_1", -0.026412 AS "P_2", -0.182539 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  -0.026087 AS "P_0", 0.130691 AS "P_1", 0.051756 AS "P_2", -0.156436 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  0.397183 AS "P_0", -0.143572 AS "P_1", -0.076315 AS "P_2", -0.177394 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  0.510281 AS "P_0", -0.162534 AS "P_1", -0.162782 AS "P_2", -0.184978 AS "P_3"
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
    CASE WHEN (t."X_7" < 6.000000) THEN CASE WHEN (t."X_3" < 7.000000) THEN CASE WHEN (t."X_0" < 6.000000) THEN CASE WHEN (t."X_8" < 5.000000) THEN CASE WHEN (t."X_3" < 4.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_8" < 2.000000) THEN 49 ELSE 50 END END ELSE CASE WHEN (t."X_3" < 1.000000) THEN 33 ELSE CASE WHEN (t."X_7" < 4.000000) THEN 51 ELSE 52 END END END ELSE CASE WHEN (t."X_7" < 1.000000) THEN 17 ELSE CASE WHEN (t."X_8" < 5.000000) THEN CASE WHEN (t."X_8" < 3.000000) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_3" < 4.000000) THEN 55 ELSE 56 END END END END ELSE CASE WHEN (t."X_8" < 6.000000) THEN CASE WHEN (t."X_8" < 1.000000) THEN 19 ELSE CASE WHEN (t."X_7" < 4.000000) THEN CASE WHEN (t."X_0" < 7.000000) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_0" < 8.000000) THEN 59 ELSE 60 END END END ELSE CASE WHEN (t."X_6" < 5.000000) THEN CASE WHEN (t."X_8" < 8.000000) THEN 39 ELSE CASE WHEN (t."X_4" < 5.000000) THEN 61 ELSE 62 END END ELSE 22 END END END ELSE CASE WHEN (t."X_8" < 5.000000) THEN CASE WHEN (t."X_3" < 8.000000) THEN CASE WHEN (t."X_8" < 2.000000) THEN CASE WHEN (t."X_5" < 5.000000) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_1" < 5.000000) THEN 43 ELSE 44 END END ELSE CASE WHEN (t."X_5" < 6.000000) THEN 25 ELSE 26 END END ELSE CASE WHEN (t."X_3" < 8.000000) THEN CASE WHEN (t."X_3" < 1.000000) THEN 27 ELSE CASE WHEN (t."X_7" < 7.000000) THEN 45 ELSE 46 END END ELSE CASE WHEN (t."X_0" < 3.000000) THEN 29 ELSE 30 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 17 AS nid,  -0.046688 AS "P_0", -0.171716 AS "P_1", -0.000231 AS "P_2", 0.181652 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  0.132022 AS "P_0", -0.166235 AS "P_1", -0.012395 AS "P_2", 0.014825 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  0.370403 AS "P_0", -0.170152 AS "P_1", -0.169220 AS "P_2", -0.166257 AS "P_3"
    UNION ALL
    SELECT 25 AS nid,  0.032247 AS "P_0", -0.160353 AS "P_1", -0.001961 AS "P_2", 0.102867 AS "P_3"
    UNION ALL
    SELECT 26 AS nid,  -0.078883 AS "P_0", -0.158753 AS "P_1", -0.004189 AS "P_2", 0.204165 AS "P_3"
    UNION ALL
    SELECT 27 AS nid,  0.034108 AS "P_0", 0.173614 AS "P_1", -0.111603 AS "P_2", -0.158788 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  -0.160551 AS "P_0", 0.334069 AS "P_1", -0.115448 AS "P_2", -0.160516 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  0.371559 AS "P_0", -0.178491 AS "P_1", -0.125625 AS "P_2", -0.120122 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  0.200733 AS "P_0", -0.163880 AS "P_1", -0.038023 AS "P_2", -0.032228 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  0.139671 AS "P_0", 0.067357 AS "P_1", -0.086017 AS "P_2", -0.161309 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  -0.165888 AS "P_0", -0.166906 AS "P_1", 0.365665 AS "P_2", -0.164534 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  -0.057421 AS "P_0", -0.174655 AS "P_1", 0.280719 AS "P_2", -0.140748 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  0.016570 AS "P_0", 0.055109 AS "P_1", -0.027330 AS "P_2", -0.046408 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  -0.063777 AS "P_0", 0.000754 AS "P_1", 0.169875 AS "P_2", -0.157680 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  -0.158741 AS "P_0", 0.211383 AS "P_1", -0.097005 AS "P_2", -0.033596 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  -0.162782 AS "P_0", 0.318133 AS "P_1", -0.121094 AS "P_2", -0.161338 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  0.217475 AS "P_0", -0.169180 AS "P_1", 0.037822 AS "P_2", -0.144887 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  0.067968 AS "P_0", -0.141407 AS "P_1", 0.204031 AS "P_2", -0.181594 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  0.322674 AS "P_0", -0.165932 AS "P_1", -0.110918 AS "P_2", -0.165932 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  0.020707 AS "P_0", -0.147070 AS "P_1", -0.108765 AS "P_2", 0.202017 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  -0.081163 AS "P_0", -0.125316 AS "P_1", -0.171668 AS "P_2", 0.286031 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  -0.112670 AS "P_0", 0.136202 AS "P_1", -0.153767 AS "P_2", 0.097946 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  -0.171760 AS "P_0", -0.171712 AS "P_1", 0.343881 AS "P_2", -0.171712 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  -0.101562 AS "P_0", -0.165989 AS "P_1", 0.254079 AS "P_2", -0.071319 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.039149 AS "P_0", -0.049211 AS "P_1", 0.208625 AS "P_2", -0.116720 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  0.120861 AS "P_0", -0.019069 AS "P_1", 0.005504 AS "P_2", -0.123311 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.021581 AS "P_0", -0.136506 AS "P_1", -0.169613 AS "P_2", 0.245727 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  -0.158584 AS "P_0", -0.175292 AS "P_1", -0.102521 AS "P_2", 0.311700 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  -0.114204 AS "P_0", -0.136834 AS "P_1", -0.168192 AS "P_2", 0.316378 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  0.173911 AS "P_0", -0.160758 AS "P_1", -0.111261 AS "P_2", 0.065772 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  0.286437 AS "P_0", -0.160294 AS "P_1", -0.073778 AS "P_2", -0.158507 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  0.222097 AS "P_0", -0.001898 AS "P_1", -0.126578 AS "P_2", -0.163981 AS "P_3"
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
    CASE WHEN (t."X_7" < 6.000000) THEN CASE WHEN (t."X_3" < 7.000000) THEN CASE WHEN (t."X_0" < 6.000000) THEN CASE WHEN (t."X_8" < 5.000000) THEN CASE WHEN (t."X_3" < 4.000000) THEN CASE WHEN (t."X_3" < 2.000000) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_8" < 2.000000) THEN 49 ELSE 50 END END ELSE CASE WHEN (t."X_3" < 2.000000) THEN CASE WHEN (t."X_8" < 8.000000) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_7" < 3.000000) THEN 53 ELSE 54 END END END ELSE CASE WHEN (t."X_7" < 1.000000) THEN 17 ELSE CASE WHEN (t."X_8" < 7.000000) THEN CASE WHEN (t."X_8" < 5.000000) THEN 55 ELSE 56 END ELSE 32 END END END ELSE CASE WHEN (t."X_8" < 6.000000) THEN CASE WHEN (t."X_0" < 6.000000) THEN CASE WHEN (t."X_8" < 2.000000) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_8" < 3.000000) THEN CASE WHEN (t."X_5" < 4.000000) THEN 57 ELSE 58 END ELSE 36 END END ELSE CASE WHEN (t."X_6" < 5.000000) THEN CASE WHEN (t."X_8" < 8.000000) THEN 37 ELSE 38 END ELSE 22 END END END ELSE CASE WHEN (t."X_8" < 5.000000) THEN CASE WHEN (t."X_3" < 8.000000) THEN CASE WHEN (t."X_8" < 2.000000) THEN CASE WHEN (t."X_3" < 4.000000) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_5" < 7.000000) THEN CASE WHEN (t."X_3" < 5.000000) THEN 59 ELSE 60 END ELSE 42 END END ELSE 12 END ELSE CASE WHEN (t."X_3" < 8.000000) THEN CASE WHEN (t."X_0" < 7.000000) THEN CASE WHEN (t."X_7" < 7.000000) THEN 43 ELSE CASE WHEN (t."X_6" < 5.000000) THEN 61 ELSE 62 END END ELSE CASE WHEN (t."X_8" < 7.000000) THEN 45 ELSE 46 END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 12 AS nid,  -0.017304 AS "P_0", -0.164210 AS "P_1", -0.000409 AS "P_2", 0.124352 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  0.120585 AS "P_0", 0.073228 AS "P_1", -0.115537 AS "P_2", -0.137720 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.037655 AS "P_0", -0.161868 AS "P_1", 0.002640 AS "P_2", 0.135096 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  0.275340 AS "P_0", -0.157485 AS "P_1", -0.156737 AS "P_2", -0.154450 AS "P_3"
    UNION ALL
    SELECT 32 AS nid,  0.052356 AS "P_0", 0.053486 AS "P_1", -0.008779 AS "P_2", -0.119154 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  0.280652 AS "P_0", -0.154801 AS "P_1", -0.124921 AS "P_2", -0.055235 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.105162 AS "P_0", -0.086820 AS "P_1", -0.157309 AS "P_2", 0.226146 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  0.056904 AS "P_0", -0.162539 AS "P_1", -0.076450 AS "P_2", 0.112083 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  0.108226 AS "P_0", 0.056445 AS "P_1", -0.074361 AS "P_2", -0.151602 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  0.201908 AS "P_0", -0.069543 AS "P_1", -0.094748 AS "P_2", -0.164257 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  -0.134806 AS "P_0", -0.162910 AS "P_1", 0.273520 AS "P_2", -0.160788 AS "P_3"
    UNION ALL
    SELECT 40 AS nid,  -0.018862 AS "P_0", -0.153679 AS "P_1", 0.174670 AS "P_2", -0.103092 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  0.000516 AS "P_0", -0.041475 AS "P_1", 0.010405 AS "P_2", 0.032996 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  -0.127404 AS "P_0", 0.089574 AS "P_1", -0.068978 AS "P_2", 0.051251 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  -0.152747 AS "P_0", 0.219805 AS "P_1", -0.058594 AS "P_2", -0.151580 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  -0.170784 AS "P_0", 0.296442 AS "P_1", -0.168491 AS "P_2", -0.167114 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  0.027383 AS "P_0", -0.118945 AS "P_1", 0.160506 AS "P_2", -0.165207 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  0.173307 AS "P_0", -0.164315 AS "P_1", 0.045551 AS "P_2", -0.146460 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  0.239690 AS "P_0", -0.154772 AS "P_1", -0.093973 AS "P_2", -0.154772 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  0.019393 AS "P_0", -0.135610 AS "P_1", -0.095232 AS "P_2", 0.147123 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  0.299740 AS "P_0", -0.108872 AS "P_1", -0.061289 AS "P_2", -0.156089 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  -0.075370 AS "P_0", -0.158424 AS "P_1", -0.119448 AS "P_2", 0.249051 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  -0.061385 AS "P_0", -0.154221 AS "P_1", -0.167607 AS "P_2", 0.238262 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  -0.140190 AS "P_0", 0.109273 AS "P_1", -0.132159 AS "P_2", 0.098010 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.136174 AS "P_0", -0.167701 AS "P_1", 0.241711 AS "P_2", -0.121463 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  0.029692 AS "P_0", -0.080009 AS "P_1", 0.131974 AS "P_2", -0.100034 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.104584 AS "P_0", -0.153983 AS "P_1", -0.008639 AS "P_2", 0.181098 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  -0.175803 AS "P_0", -0.162283 AS "P_1", -0.118594 AS "P_2", 0.289117 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  -0.058360 AS "P_0", 0.094201 AS "P_1", 0.079070 AS "P_2", -0.170032 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  -0.025287 AS "P_0", -0.103968 AS "P_1", 0.226014 AS "P_2", -0.161637 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  -0.034014 AS "P_0", 0.162842 AS "P_1", -0.138503 AS "P_2", -0.099023 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  -0.170830 AS "P_0", 0.215838 AS "P_1", -0.024264 AS "P_2", -0.170682 AS "P_3"
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
    CASE WHEN (t."X_7" < 6.000000) THEN CASE WHEN (t."X_8" < 5.000000) THEN CASE WHEN (t."X_3" < 6.000000) THEN CASE WHEN (t."X_0" < 6.000000) THEN CASE WHEN (t."X_4" < 2.000000) THEN 29 ELSE CASE WHEN (t."X_3" < 4.000000) THEN 51 ELSE 52 END END ELSE CASE WHEN (t."X_4" < 4.000000) THEN 31 ELSE 32 END END ELSE CASE WHEN (t."X_0" < 6.000000) THEN CASE WHEN (t."X_8" < 2.000000) THEN 33 ELSE 34 END ELSE CASE WHEN (t."X_3" < 8.000000) THEN CASE WHEN (t."X_5" < 6.000000) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_9" < 6.000000) THEN 55 ELSE 56 END END END END ELSE CASE WHEN (t."X_1" < 5.000000) THEN CASE WHEN (t."X_8" < 6.000000) THEN 19 ELSE CASE WHEN (t."X_3" < 7.000000) THEN CASE WHEN (t."X_7" < 3.000000) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_6" < 5.000000) THEN 59 ELSE 60 END END END ELSE CASE WHEN (t."X_1" < 8.000000) THEN CASE WHEN (t."X_8" < 6.000000) THEN 39 ELSE CASE WHEN (t."X_8" < 8.000000) THEN 61 ELSE 62 END END ELSE CASE WHEN (t."X_8" < 8.000000) THEN 41 ELSE 42 END END END END ELSE CASE WHEN (t."X_8" < 5.000000) THEN CASE WHEN (t."X_1" < 5.000000) THEN CASE WHEN (t."X_0" < 8.000000) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_8" < 3.000000) THEN CASE WHEN (t."X_2" < 5.000000) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_6" < 7.000000) THEN 45 ELSE 46 END END END ELSE CASE WHEN (t."X_3" < 8.000000) THEN CASE WHEN (t."X_0" < 6.000000) THEN CASE WHEN (t."X_7" < 7.000000) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_8" < 7.000000) THEN 49 ELSE 50 END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 14 AS nid,  0.094718 AS "P_0", 0.059500 AS "P_1", -0.103712 AS "P_2", -0.127344 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  0.102401 AS "P_0", -0.078880 AS "P_1", -0.096819 AS "P_2", 0.039973 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  -0.059022 AS "P_0", -0.086121 AS "P_1", -0.052436 AS "P_2", 0.159997 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  0.124099 AS "P_0", -0.018074 AS "P_1", 0.000021 AS "P_2", -0.109509 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  0.052278 AS "P_0", -0.151074 AS "P_1", 0.182265 AS "P_2", -0.176680 AS "P_3"
    UNION ALL
    SELECT 31 AS nid,  -0.117961 AS "P_0", -0.149339 AS "P_1", 0.217122 AS "P_2", -0.115407 AS "P_3"
    UNION ALL
    SELECT 32 AS nid,  -0.116774 AS "P_0", -0.148613 AS "P_1", 0.134101 AS "P_2", 0.016206 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  0.202477 AS "P_0", -0.153865 AS "P_1", -0.102561 AS "P_2", -0.069218 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.082181 AS "P_0", -0.093184 AS "P_1", -0.128131 AS "P_2", 0.185650 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  -0.092584 AS "P_0", -0.104179 AS "P_1", -0.004975 AS "P_2", 0.142225 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  0.125773 AS "P_0", -0.159390 AS "P_1", -0.062768 AS "P_2", 0.044338 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  -0.089196 AS "P_0", -0.159190 AS "P_1", -0.156799 AS "P_2", 0.232773 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  -0.116069 AS "P_0", -0.165745 AS "P_1", 0.250248 AS "P_2", -0.161123 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  -0.030100 AS "P_0", -0.065139 AS "P_1", 0.100977 AS "P_2", -0.083145 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  0.061113 AS "P_0", 0.046744 AS "P_1", 0.005216 AS "P_2", -0.154837 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  -0.162381 AS "P_0", -0.003641 AS "P_1", 0.171275 AS "P_2", -0.114823 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  -0.108721 AS "P_0", 0.057210 AS "P_1", -0.080674 AS "P_2", 0.078043 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  -0.089752 AS "P_0", 0.144731 AS "P_1", -0.052953 AS "P_2", -0.132363 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  -0.154323 AS "P_0", 0.176088 AS "P_1", -0.057344 AS "P_2", -0.119639 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  -0.142005 AS "P_0", 0.233250 AS "P_1", -0.160843 AS "P_2", -0.159896 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  0.112324 AS "P_0", -0.124813 AS "P_1", 0.050362 AS "P_2", -0.147771 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  0.119025 AS "P_0", -0.148990 AS "P_1", -0.121628 AS "P_2", 0.062325 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  -0.162342 AS "P_0", -0.146559 AS "P_1", 0.169362 AS "P_2", 0.055816 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  -0.154824 AS "P_0", -0.146586 AS "P_1", 0.018395 AS "P_2", 0.169971 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.031397 AS "P_0", -0.148729 AS "P_1", -0.157699 AS "P_2", 0.188780 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  -0.131154 AS "P_0", -0.147979 AS "P_1", -0.081543 AS "P_2", 0.207879 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  0.175355 AS "P_0", -0.089539 AS "P_1", 0.003728 AS "P_2", -0.166678 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  -0.077748 AS "P_0", 0.083657 AS "P_1", 0.090477 AS "P_2", -0.127429 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  0.144456 AS "P_0", -0.026250 AS "P_1", -0.076860 AS "P_2", -0.161074 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  0.226698 AS "P_0", -0.146742 AS "P_1", -0.146115 AS "P_2", -0.144216 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  -0.130919 AS "P_0", 0.180133 AS "P_1", -0.157340 AS "P_2", 0.050320 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  -0.015367 AS "P_0", -0.016104 AS "P_1", -0.122367 AS "P_2", 0.088862 AS "P_3"
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
    CASE WHEN (t."X_8" < 6.000000) THEN CASE WHEN (t."X_3" < 4.000000) THEN CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_8" < 3.000000) THEN CASE WHEN (t."X_1" < 8.000000) THEN 31 ELSE CASE WHEN (t."X_4" < 4.000000) THEN 47 ELSE 48 END END ELSE CASE WHEN (t."X_9" < 6.000000) THEN CASE WHEN (t."X_5" < 5.000000) THEN 49 ELSE 50 END ELSE 34 END END ELSE CASE WHEN (t."X_7" < 7.000000) THEN CASE WHEN (t."X_6" < 3.000000) THEN 35 ELSE 36 END ELSE 18 END END ELSE CASE WHEN (t."X_7" < 8.000000) THEN CASE WHEN (t."X_0" < 7.000000) THEN CASE WHEN (t."X_8" < 2.000000) THEN CASE WHEN (t."X_7" < 3.000000) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_0" < 3.000000) THEN 53 ELSE 54 END END ELSE CASE WHEN (t."X_8" < 3.000000) THEN CASE WHEN (t."X_3" < 8.000000) THEN 55 ELSE 56 END ELSE CASE WHEN (t."X_7" < 4.000000) THEN 57 ELSE 58 END END END ELSE CASE WHEN (t."X_5" < 6.000000) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_6" < 2.000000) THEN CASE WHEN (t."X_3" < 2.000000) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_7" < 7.000000) THEN 25 ELSE 26 END END ELSE CASE WHEN (t."X_3" < 7.000000) THEN CASE WHEN (t."X_7" < 4.000000) THEN CASE WHEN (t."X_5" < 5.000000) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_1" < 5.000000) THEN CASE WHEN (t."X_7" < 7.000000) THEN 59 ELSE 60 END ELSE CASE WHEN (t."X_4" < 5.000000) THEN 61 ELSE 62 END END END ELSE CASE WHEN (t."X_0" < 6.000000) THEN 29 ELSE CASE WHEN (t."X_5" < 4.000000) THEN 45 ELSE 46 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 18 AS nid,  -0.042066 AS "P_0", 0.056587 AS "P_1", 0.033628 AS "P_2", -0.102737 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  -0.160579 AS "P_0", -0.104872 AS "P_1", 0.265541 AS "P_2", -0.125345 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  -0.153716 AS "P_0", 0.055363 AS "P_1", 0.106441 AS "P_2", -0.047478 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  0.095566 AS "P_0", -0.146507 AS "P_1", -0.152964 AS "P_2", 0.110775 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  -0.104954 AS "P_0", -0.103698 AS "P_1", -0.150380 AS "P_2", 0.192677 AS "P_3"
    UNION ALL
    SELECT 25 AS nid,  -0.169394 AS "P_0", 0.113078 AS "P_1", -0.124569 AS "P_2", 0.083434 AS "P_3"
    UNION ALL
    SELECT 26 AS nid,  -0.163083 AS "P_0", 0.232691 AS "P_1", -0.141322 AS "P_2", -0.156322 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  0.105335 AS "P_0", -0.063880 AS "P_1", 0.015395 AS "P_2", -0.146015 AS "P_3"
    UNION ALL
    SELECT 31 AS nid,  0.114241 AS "P_0", -0.144852 AS "P_1", 0.046309 AS "P_2", -0.144432 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.085025 AS "P_0", 0.129409 AS "P_1", -0.004056 AS "P_2", -0.065607 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  -0.122402 AS "P_0", -0.074617 AS "P_1", 0.146268 AS "P_2", -0.004017 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  -0.109964 AS "P_0", -0.155264 AS "P_1", 0.260579 AS "P_2", -0.161006 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  0.190137 AS "P_0", -0.033850 AS "P_1", -0.105276 AS "P_2", -0.094390 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  0.015052 AS "P_0", -0.019253 AS "P_1", 0.058772 AS "P_2", -0.058344 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  0.156935 AS "P_0", -0.091822 AS "P_1", -0.062604 AS "P_2", -0.141378 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  0.198409 AS "P_0", -0.079770 AS "P_1", -0.155499 AS "P_2", -0.146413 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  -0.036553 AS "P_0", -0.146040 AS "P_1", 0.168491 AS "P_2", -0.142219 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  -0.067387 AS "P_0", -0.060977 AS "P_1", 0.153560 AS "P_2", -0.141209 AS "P_3"
    UNION ALL
    SELECT 49 AS nid,  0.213751 AS "P_0", 0.031665 AS "P_1", -0.128815 AS "P_2", -0.140205 AS "P_3"
    UNION ALL
    SELECT 50 AS nid,  0.142230 AS "P_0", -0.059461 AS "P_1", 0.028561 AS "P_2", -0.156871 AS "P_3"
    UNION ALL
    SELECT 51 AS nid,  0.210423 AS "P_0", -0.146058 AS "P_1", -0.094506 AS "P_2", -0.130078 AS "P_3"
    UNION ALL
    SELECT 52 AS nid,  0.051100 AS "P_0", -0.147100 AS "P_1", -0.090018 AS "P_2", 0.126251 AS "P_3"
    UNION ALL
    SELECT 53 AS nid,  -0.072905 AS "P_0", -0.071702 AS "P_1", 0.047164 AS "P_2", 0.072413 AS "P_3"
    UNION ALL
    SELECT 54 AS nid,  -0.052058 AS "P_0", -0.098446 AS "P_1", -0.172867 AS "P_2", 0.202241 AS "P_3"
    UNION ALL
    SELECT 55 AS nid,  -0.135602 AS "P_0", -0.153495 AS "P_1", 0.152662 AS "P_2", 0.008252 AS "P_3"
    UNION ALL
    SELECT 56 AS nid,  -0.103265 AS "P_0", -0.151336 AS "P_1", -0.086732 AS "P_2", 0.181328 AS "P_3"
    UNION ALL
    SELECT 57 AS nid,  -0.000764 AS "P_0", -0.148379 AS "P_1", -0.004132 AS "P_2", 0.088459 AS "P_3"
    UNION ALL
    SELECT 58 AS nid,  0.182159 AS "P_0", -0.112101 AS "P_1", -0.005688 AS "P_2", -0.100551 AS "P_3"
    UNION ALL
    SELECT 59 AS nid,  -0.162997 AS "P_0", 0.145890 AS "P_1", 0.036873 AS "P_2", -0.115956 AS "P_3"
    UNION ALL
    SELECT 60 AS nid,  -0.149407 AS "P_0", 0.191037 AS "P_1", -0.114735 AS "P_2", -0.146169 AS "P_3"
    UNION ALL
    SELECT 61 AS nid,  0.042297 AS "P_0", 0.094297 AS "P_1", -0.109945 AS "P_2", -0.088646 AS "P_3"
    UNION ALL
    SELECT 62 AS nid,  -0.082419 AS "P_0", 0.141503 AS "P_1", -0.048730 AS "P_2", -0.117450 AS "P_3"
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
   0.250000 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.249023 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   0.251953 + SUM(t."P_2") AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   0.249023 + SUM(t."P_3") AS "Score_3",
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