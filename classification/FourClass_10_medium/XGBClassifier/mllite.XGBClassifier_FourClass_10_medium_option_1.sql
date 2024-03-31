WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_7" < -0.059701) THEN CASE WHEN (t."X_3" < 0.279263) THEN CASE WHEN (t."X_8" < 1.019722) THEN CASE WHEN (t."X_0" < 0.363677) THEN CASE WHEN (t."X_3" < -1.043425) THEN CASE WHEN (t."X_8" < -0.344547) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_8" < -0.770565) THEN 43 ELSE 44 END END ELSE CASE WHEN (t."X_8" < -0.770565) THEN 29 ELSE CASE WHEN (t."X_4" < 0.270537) THEN 45 ELSE 46 END END END ELSE CASE WHEN (t."X_1" < 0.852920) THEN 17 ELSE CASE WHEN (t."X_2" < -0.313816) THEN 31 ELSE 32 END END END ELSE CASE WHEN (t."X_8" < 0.131133) THEN CASE WHEN (t."X_1" < -0.650314) THEN CASE WHEN (t."X_3" < 0.726770) THEN 33 ELSE 34 END ELSE 20 END ELSE CASE WHEN (t."X_0" < 0.363677) THEN 21 ELSE CASE WHEN (t."X_6" < -0.565101) THEN 35 ELSE 36 END END END END ELSE CASE WHEN (t."X_8" < -0.344547) THEN CASE WHEN (t."X_1" < 0.396270) THEN 11 ELSE CASE WHEN (t."X_6" < 0.984662) THEN 23 ELSE CASE WHEN (t."X_6" < 1.752021) THEN 37 ELSE 38 END END END ELSE CASE WHEN (t."X_3" < 0.726770) THEN CASE WHEN (t."X_6" < -2.209919) THEN 25 ELSE CASE WHEN (t."X_7" < 0.474345) THEN 39 ELSE CASE WHEN (t."X_6" < 0.402639) THEN 47 ELSE 48 END END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 11 AS nid,  -0.051397 AS "P_0", -0.093633 AS "P_1", 0.033879 AS "P_2", 0.112812 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  0.144933 AS "P_0", 0.077130 AS "P_1", -0.078786 AS "P_2", -0.145581 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.051397 AS "P_0", 0.147999 AS "P_1", -0.089409 AS "P_2", -0.009503 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  0.023306 AS "P_0", -0.121772 AS "P_1", -0.166708 AS "P_2", 0.265261 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  0.127635 AS "P_0", -0.002996 AS "P_1", -0.083557 AS "P_2", -0.042271 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  0.055832 AS "P_0", -0.081436 AS "P_1", 0.197398 AS "P_2", -0.169518 AS "P_3"
    UNION ALL
    SELECT 25 AS nid,  0.023306 AS "P_0", 0.163433 AS "P_1", -0.118228 AS "P_2", -0.071491 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  -0.176749 AS "P_0", -0.177756 AS "P_1", 0.466761 AS "P_2", -0.105427 AS "P_3"
    UNION ALL
    SELECT 31 AS nid,  -0.051397 AS "P_0", -0.093633 AS "P_1", -0.171601 AS "P_2", 0.316670 AS "P_3"
    UNION ALL
    SELECT 32 AS nid,  -0.170094 AS "P_0", -0.126275 AS "P_1", -0.168523 AS "P_2", 0.465878 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  -0.171710 AS "P_0", -0.172728 AS "P_1", 0.046325 AS "P_2", 0.301369 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.135081 AS "P_0", -0.184935 AS "P_1", -0.182431 AS "P_2", 0.504002 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  0.326943 AS "P_0", 0.008242 AS "P_1", -0.168523 AS "P_2", -0.169518 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  0.516842 AS "P_0", -0.174177 AS "P_1", -0.171601 AS "P_2", -0.172590 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  -0.120386 AS "P_0", -0.026704 AS "P_1", 0.318086 AS "P_2", -0.167706 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  -0.173162 AS "P_0", -0.174177 AS "P_1", 0.527033 AS "P_2", -0.172590 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  -0.113938 AS "P_0", 0.237623 AS "P_1", -0.111562 AS "P_2", -0.015543 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  0.140775 AS "P_0", -0.186709 AS "P_1", 0.234901 AS "P_2", -0.185173 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  0.298690 AS "P_0", -0.045429 AS "P_1", -0.083557 AS "P_2", -0.171136 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  0.380262 AS "P_0", -0.180498 AS "P_1", -0.114959 AS "P_2", -0.085204 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  -0.120413 AS "P_0", -0.121898 AS "P_1", -0.118100 AS "P_2", 0.361581 AS "P_3"
    UNION ALL
    SELECT 45 AS nid,  0.018646 AS "P_0", -0.137165 AS "P_1", 0.257300 AS "P_2", -0.135103 AS "P_3"
    UNION ALL
    SELECT 46 AS nid,  0.055832 AS "P_0", -0.126275 AS "P_1", 0.014437 AS "P_2", 0.057409 AS "P_3"
    UNION ALL
    SELECT 47 AS nid,  -0.168796 AS "P_0", 0.519849 AS "P_1", -0.178956 AS "P_2", -0.179991 AS "P_3"
    UNION ALL
    SELECT 48 AS nid,  -0.175664 AS "P_0", 0.335016 AS "P_1", 0.012429 AS "P_2", -0.175095 AS "P_3"
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
    CASE WHEN (t."X_7" < -0.059701) THEN CASE WHEN (t."X_8" < -0.344547) THEN CASE WHEN (t."X_3" < 0.279263) THEN CASE WHEN (t."X_0" < -0.160083) THEN CASE WHEN (t."X_1" < 1.129907) THEN CASE WHEN (t."X_8" < -1.227450) THEN 41 ELSE 42 END ELSE 28 END ELSE CASE WHEN (t."X_6" < -0.565101) THEN 29 ELSE 30 END END ELSE CASE WHEN (t."X_3" < 0.726770) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_3" < 0.726770) THEN CASE WHEN (t."X_0" < 0.363677) THEN CASE WHEN (t."X_3" < -1.743798) THEN 31 ELSE CASE WHEN (t."X_7" < -0.755240) THEN 43 ELSE 44 END END ELSE CASE WHEN (t."X_7" < -1.062429) THEN 33 ELSE 34 END END ELSE CASE WHEN (t."X_6" < -0.565101) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_8" < 0.131133) THEN CASE WHEN (t."X_1" < -0.650314) THEN 11 ELSE CASE WHEN (t."X_6" < 0.402639) THEN 23 ELSE CASE WHEN (t."X_8" < -1.227450) THEN 35 ELSE 36 END END END ELSE CASE WHEN (t."X_3" < 0.726770) THEN CASE WHEN (t."X_7" < 0.977157) THEN CASE WHEN (t."X_1" < 1.129907) THEN 37 ELSE 38 END ELSE CASE WHEN (t."X_6" < -1.086421) THEN 39 ELSE 40 END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 11 AS nid,  0.065363 AS "P_0", -0.061744 AS "P_1", -0.055569 AS "P_2", 0.052521 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  0.086238 AS "P_0", 0.098926 AS "P_1", -0.089691 AS "P_2", -0.124327 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.054202 AS "P_0", -0.166058 AS "P_1", 0.008627 AS "P_2", 0.166992 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  -0.123474 AS "P_0", -0.145505 AS "P_1", -0.169817 AS "P_2", 0.308956 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  0.188110 AS "P_0", -0.001194 AS "P_1", -0.066247 AS "P_2", -0.162809 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  0.352977 AS "P_0", -0.169385 AS "P_1", -0.166023 AS "P_2", -0.136700 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  0.010057 AS "P_0", 0.124959 AS "P_1", 0.000069 AS "P_2", -0.160349 AS "P_3"
    UNION ALL
    SELECT 28 AS nid,  0.052363 AS "P_0", -0.163137 AS "P_1", 0.210395 AS "P_2", -0.162281 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  -0.135986 AS "P_0", -0.163592 AS "P_1", 0.215982 AS "P_2", 0.032752 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  -0.042776 AS "P_0", -0.159121 AS "P_1", 0.296507 AS "P_2", -0.162329 AS "P_3"
    UNION ALL
    SELECT 31 AS nid,  0.135651 AS "P_0", -0.114685 AS "P_1", -0.106332 AS "P_2", 0.060477 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  0.170728 AS "P_0", -0.146437 AS "P_1", -0.037510 AS "P_2", 0.006405 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.084791 AS "P_0", 0.065231 AS "P_1", 0.122051 AS "P_2", -0.103461 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  -0.131289 AS "P_0", -0.169237 AS "P_1", 0.355707 AS "P_2", -0.165304 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  -0.116129 AS "P_0", -0.047898 AS "P_1", 0.254659 AS "P_2", -0.143208 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  -0.173627 AS "P_0", 0.311624 AS "P_1", -0.141786 AS "P_2", -0.091377 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  -0.035847 AS "P_0", 0.072861 AS "P_1", -0.115294 AS "P_2", 0.055735 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  -0.060872 AS "P_0", 0.255203 AS "P_1", -0.126908 AS "P_2", -0.165741 AS "P_3"
    UNION ALL
    SELECT 40 AS nid,  -0.173616 AS "P_0", 0.351468 AS "P_1", -0.153587 AS "P_2", -0.172810 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  0.356549 AS "P_0", -0.160398 AS "P_1", -0.127200 AS "P_2", -0.163675 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  0.110485 AS "P_0", -0.120262 AS "P_1", -0.022251 AS "P_2", 0.015070 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  -0.124554 AS "P_0", -0.124639 AS "P_1", -0.156552 AS "P_2", 0.324152 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  -0.125849 AS "P_0", 0.182389 AS "P_1", -0.160144 AS "P_2", 0.081459 AS "P_3"
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
    CASE WHEN (t."X_7" < -0.059701) THEN CASE WHEN (t."X_3" < 0.279263) THEN CASE WHEN (t."X_8" < 1.019722) THEN CASE WHEN (t."X_3" < -1.043425) THEN CASE WHEN (t."X_0" < -0.583481) THEN CASE WHEN (t."X_2" < -0.043197) THEN 39 ELSE 40 END ELSE 28 END ELSE CASE WHEN (t."X_0" < 0.363677) THEN CASE WHEN (t."X_8" < -0.770565) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_7" < -1.393732) THEN 43 ELSE 44 END END END ELSE CASE WHEN (t."X_1" < 0.852920) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_8" < 0.521836) THEN CASE WHEN (t."X_4" < 0.270537) THEN CASE WHEN (t."X_0" < 1.313001) THEN 31 ELSE 32 END ELSE 20 END ELSE CASE WHEN (t."X_6" < -1.086421) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_8" < 0.131133) THEN CASE WHEN (t."X_0" < 0.774314) THEN CASE WHEN (t."X_3" < -0.262705) THEN CASE WHEN (t."X_2" < 0.188895) THEN 33 ELSE 34 END ELSE 24 END ELSE 12 END ELSE CASE WHEN (t."X_1" < -0.650314) THEN 13 ELSE CASE WHEN (t."X_7" < 0.977157) THEN CASE WHEN (t."X_9" < -0.210721) THEN 35 ELSE 36 END ELSE CASE WHEN (t."X_6" < -1.086421) THEN 37 ELSE 38 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 12 AS nid,  0.144169 AS "P_0", -0.037180 AS "P_1", 0.022526 AS "P_2", -0.127931 AS "P_3"
    UNION ALL
    SELECT 13 AS nid,  0.108970 AS "P_0", 0.124611 AS "P_1", -0.155686 AS "P_2", -0.154891 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  -0.040537 AS "P_0", 0.116976 AS "P_1", -0.074150 AS "P_2", -0.019228 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  -0.095422 AS "P_0", -0.095676 AS "P_1", -0.162778 AS "P_2", 0.233729 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  -0.121352 AS "P_0", -0.099539 AS "P_1", -0.067593 AS "P_2", 0.202323 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  0.146654 AS "P_0", 0.062030 AS "P_1", -0.115742 AS "P_2", -0.159072 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  0.245692 AS "P_0", -0.117087 AS "P_1", -0.107525 AS "P_2", -0.154522 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  -0.160260 AS "P_0", -0.110339 AS "P_1", 0.121444 AS "P_2", 0.103042 AS "P_3"
    UNION ALL
    SELECT 28 AS nid,  -0.074592 AS "P_0", -0.080115 AS "P_1", 0.222174 AS "P_2", -0.122977 AS "P_3"
    UNION ALL
    SELECT 31 AS nid,  -0.018959 AS "P_0", -0.158366 AS "P_1", -0.163323 AS "P_2", 0.232765 AS "P_3"
    UNION ALL
    SELECT 32 AS nid,  0.034464 AS "P_0", -0.155320 AS "P_1", -0.078435 AS "P_2", 0.127108 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  -0.066435 AS "P_0", -0.064168 AS "P_1", 0.202295 AS "P_2", -0.162494 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.072524 AS "P_0", 0.076633 AS "P_1", 0.094207 AS "P_2", -0.152574 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  -0.068658 AS "P_0", 0.229314 AS "P_1", -0.153448 AS "P_2", -0.117154 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  -0.120821 AS "P_0", 0.102251 AS "P_1", -0.074665 AS "P_2", 0.048467 AS "P_3"
    UNION ALL
    SELECT 37 AS nid,  -0.026048 AS "P_0", 0.169696 AS "P_1", -0.103870 AS "P_2", -0.150773 AS "P_3"
    UNION ALL
    SELECT 38 AS nid,  -0.172020 AS "P_0", 0.275389 AS "P_1", -0.116315 AS "P_2", -0.163082 AS "P_3"
    UNION ALL
    SELECT 39 AS nid,  0.260049 AS "P_0", -0.109794 AS "P_1", -0.068038 AS "P_2", -0.157450 AS "P_3"
    UNION ALL
    SELECT 40 AS nid,  0.124973 AS "P_0", -0.158921 AS "P_1", 0.109780 AS "P_2", -0.159609 AS "P_3"
    UNION ALL
    SELECT 41 AS nid,  0.202197 AS "P_0", -0.156997 AS "P_1", -0.098262 AS "P_2", -0.052670 AS "P_3"
    UNION ALL
    SELECT 42 AS nid,  -0.095995 AS "P_0", -0.091909 AS "P_1", -0.087531 AS "P_2", 0.182363 AS "P_3"
    UNION ALL
    SELECT 43 AS nid,  -0.004497 AS "P_0", -0.152497 AS "P_1", 0.032774 AS "P_2", 0.097840 AS "P_3"
    UNION ALL
    SELECT 44 AS nid,  -0.037658 AS "P_0", -0.113417 AS "P_1", 0.228835 AS "P_2", -0.158203 AS "P_3"
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
    CASE WHEN (t."X_7" < -0.059701) THEN CASE WHEN (t."X_8" < -0.344547) THEN CASE WHEN (t."X_3" < -0.619475) THEN CASE WHEN (t."X_0" < -0.160083) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_1" < -0.650314) THEN CASE WHEN (t."X_3" < 0.726770) THEN 27 ELSE 28 END ELSE 18 END END ELSE CASE WHEN (t."X_1" < 0.396270) THEN CASE WHEN (t."X_8" < 0.521836) THEN 19 ELSE CASE WHEN (t."X_3" < 1.487470) THEN CASE WHEN (t."X_7" < -1.062429) THEN 35 ELSE 36 END ELSE 30 END END ELSE CASE WHEN (t."X_1" < 2.019696) THEN CASE WHEN (t."X_0" < -0.583481) THEN 31 ELSE 32 END ELSE 22 END END END ELSE CASE WHEN (t."X_8" < 0.131133) THEN CASE WHEN (t."X_6" < 1.752021) THEN CASE WHEN (t."X_1" < 1.129907) THEN 23 ELSE 24 END ELSE 12 END ELSE CASE WHEN (t."X_3" < 0.726770) THEN CASE WHEN (t."X_0" < 0.774314) THEN CASE WHEN (t."X_3" < -1.411683) THEN 33 ELSE 34 END ELSE 26 END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 12 AS nid,  -0.108877 AS "P_0", -0.162962 AS "P_1", 0.181884 AS "P_2", -0.002052 AS "P_3"
    UNION ALL
    SELECT 14 AS nid,  0.079772 AS "P_0", 0.039505 AS "P_1", -0.064595 AS "P_2", -0.104873 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  0.132371 AS "P_0", -0.159285 AS "P_1", 0.058504 AS "P_2", -0.161022 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  -0.130579 AS "P_0", -0.149447 AS "P_1", 0.247513 AS "P_2", -0.118465 AS "P_3"
    UNION ALL
    SELECT 18 AS nid,  0.121045 AS "P_0", -0.086704 AS "P_1", -0.106578 AS "P_2", 0.017952 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  0.059990 AS "P_0", -0.139108 AS "P_1", -0.045604 AS "P_2", 0.084946 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  0.123219 AS "P_0", -0.153364 AS "P_1", -0.101261 AS "P_2", 0.066664 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  0.117817 AS "P_0", -0.009835 AS "P_1", -0.008027 AS "P_2", -0.112364 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  -0.069311 AS "P_0", 0.053904 AS "P_1", 0.092623 AS "P_2", -0.157342 AS "P_3"
    UNION ALL
    SELECT 26 AS nid,  -0.163921 AS "P_0", 0.259712 AS "P_1", -0.156051 AS "P_2", -0.157163 AS "P_3"
    UNION ALL
    SELECT 27 AS nid,  -0.158899 AS "P_0", -0.149806 AS "P_1", 0.103611 AS "P_2", 0.109330 AS "P_3"
    UNION ALL
    SELECT 28 AS nid,  -0.124726 AS "P_0", -0.151249 AS "P_1", -0.150772 AS "P_2", 0.226462 AS "P_3"
    UNION ALL
    SELECT 30 AS nid,  0.213404 AS "P_0", -0.158812 AS "P_1", -0.054666 AS "P_2", -0.147776 AS "P_3"
    UNION ALL
    SELECT 31 AS nid,  -0.067928 AS "P_0", -0.070433 AS "P_1", -0.132666 AS "P_2", 0.168334 AS "P_3"
    UNION ALL
    SELECT 32 AS nid,  -0.168739 AS "P_0", 0.123288 AS "P_1", -0.066209 AS "P_2", 0.085001 AS "P_3"
    UNION ALL
    SELECT 33 AS nid,  0.024753 AS "P_0", 0.039211 AS "P_1", -0.088872 AS "P_2", -0.007688 AS "P_3"
    UNION ALL
    SELECT 34 AS nid,  -0.159523 AS "P_0", 0.193530 AS "P_1", -0.104530 AS "P_2", -0.086741 AS "P_3"
    UNION ALL
    SELECT 35 AS nid,  0.241328 AS "P_0", -0.057377 AS "P_1", -0.100255 AS "P_2", -0.161347 AS "P_3"
    UNION ALL
    SELECT 36 AS nid,  -0.108902 AS "P_0", 0.204903 AS "P_1", 0.029921 AS "P_2", -0.156784 AS "P_3"
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
    CASE WHEN (t."X_7" < -0.059701) THEN CASE WHEN (t."X_8" < 0.521836) THEN CASE WHEN (t."X_3" < -1.043425) THEN CASE WHEN (t."X_0" < -0.917320) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_8" < -1.929933) THEN 17 ELSE CASE WHEN (t."X_4" < -0.863473) THEN 29 ELSE CASE WHEN (t."X_7" < -1.393732) THEN 31 ELSE 32 END END END END ELSE CASE WHEN (t."X_1" < 0.396270) THEN CASE WHEN (t."X_7" < -1.062429) THEN 19 ELSE 20 END ELSE CASE WHEN (t."X_8" < 1.924498) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_8" < 0.131133) THEN CASE WHEN (t."X_1" < -0.650314) THEN 11 ELSE CASE WHEN (t."X_6" < 0.984662) THEN 23 ELSE 24 END END ELSE CASE WHEN (t."X_7" < 0.977157) THEN CASE WHEN (t."X_0" < -0.160083) THEN 25 ELSE 26 END ELSE CASE WHEN (t."X_5" < 0.254067) THEN 27 ELSE 28 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2", "Values"."P_3" AS "P_3"
  FROM (
    SELECT 11 AS nid,  0.038324 AS "P_0", -0.032648 AS "P_1", -0.069914 AS "P_2", 0.063245 AS "P_3"
    UNION ALL
    SELECT 15 AS nid,  0.152786 AS "P_0", -0.144168 AS "P_1", 0.003506 AS "P_2", -0.148509 AS "P_3"
    UNION ALL
    SELECT 16 AS nid,  -0.042548 AS "P_0", -0.101442 AS "P_1", 0.166812 AS "P_2", -0.113246 AS "P_3"
    UNION ALL
    SELECT 17 AS nid,  0.119591 AS "P_0", -0.146807 AS "P_1", 0.033935 AS "P_2", -0.052942 AS "P_3"
    UNION ALL
    SELECT 19 AS nid,  0.185341 AS "P_0", -0.076413 AS "P_1", -0.072582 AS "P_2", -0.155929 AS "P_3"
    UNION ALL
    SELECT 20 AS nid,  0.036020 AS "P_0", 0.070831 AS "P_1", -0.000201 AS "P_2", -0.154740 AS "P_3"
    UNION ALL
    SELECT 21 AS nid,  0.005142 AS "P_0", 0.084182 AS "P_1", -0.154689 AS "P_2", 0.026627 AS "P_3"
    UNION ALL
    SELECT 22 AS nid,  -0.121758 AS "P_0", -0.093974 AS "P_1", -0.144818 AS "P_2", 0.214025 AS "P_3"
    UNION ALL
    SELECT 23 AS nid,  0.015599 AS "P_0", 0.020095 AS "P_1", 0.028890 AS "P_2", -0.107238 AS "P_3"
    UNION ALL
    SELECT 24 AS nid,  -0.127779 AS "P_0", -0.060800 AS "P_1", 0.186700 AS "P_2", -0.158592 AS "P_3"
    UNION ALL
    SELECT 25 AS nid,  -0.105769 AS "P_0", 0.065359 AS "P_1", -0.046131 AS "P_2", 0.040166 AS "P_3"
    UNION ALL
    SELECT 26 AS nid,  0.103808 AS "P_0", 0.059474 AS "P_1", -0.151050 AS "P_2", -0.084162 AS "P_3"
    UNION ALL
    SELECT 27 AS nid,  -0.094375 AS "P_0", 0.195370 AS "P_1", -0.152185 AS "P_2", -0.149266 AS "P_3"
    UNION ALL
    SELECT 28 AS nid,  -0.122649 AS "P_0", 0.150652 AS "P_1", -0.015378 AS "P_2", -0.144164 AS "P_3"
    UNION ALL
    SELECT 29 AS nid,  -0.090446 AS "P_0", -0.109552 AS "P_1", 0.081435 AS "P_2", 0.075929 AS "P_3"
    UNION ALL
    SELECT 31 AS nid,  -0.058027 AS "P_0", -0.147361 AS "P_1", -0.151454 AS "P_2", 0.239457 AS "P_3"
    UNION ALL
    SELECT 32 AS nid,  0.022563 AS "P_0", -0.120731 AS "P_1", -0.066615 AS "P_2", 0.093858 AS "P_3"
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
   0.253906 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.267578 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   0.232422 + SUM(t."P_2") AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2",
   0.246094 + SUM(t."P_3") AS "Score_3",
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
   MAX(t."Score_0", t."Score_1", t."Score_2", t."Score_3") AS "Greatest_Score"
  FROM
    model_scores_cte AS t
),
soft_max_cte_with_exp_deltas AS 
( SELECT t1.*,
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" + t1."Exp_Score_3" ) AS "Sum_Exp"
  FROM
   ( SELECT t.*,
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
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1",
    CAST(NULL AS FLOAT) AS "LogProba_2",
    t1."Exp_Score_2" / t1."Sum_Exp" AS "Proba_2",
    t1."Score_2" AS "Score_2",
    CAST(NULL AS FLOAT) AS "LogProba_3",
    t1."Exp_Score_3" / t1."Sum_Exp" AS "Proba_3",
    t1."Score_3" AS "Score_3"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t.*,
    MAX(  t."Proba_0", t."Proba_1", t."Proba_2", t."Proba_3" ) AS "Max_Proba"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t.*,
   CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
   CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
   CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
   CASE WHEN(t."Proba_3" = t."Max_Proba") THEN 3 else NULL END AS "max_idx_3"
  FROM
   "arg_max_cte_with_max_proba" AS t
),
arg_max_cte AS 
 (SELECT t.*,
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