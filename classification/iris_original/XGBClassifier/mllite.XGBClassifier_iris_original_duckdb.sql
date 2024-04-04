WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_2" < 1.700000) THEN 1 ELSE CASE WHEN (t."X_3" < 1.800000) THEN CASE WHEN (t."X_1" < 3.400000) THEN CASE WHEN (t."X_2" < 5.000000) THEN CASE WHEN (t."X_1" < 3.200000) THEN CASE WHEN (t."X_0" < 5.300000) THEN 17 ELSE 18 END ELSE 16 END ELSE 10 END ELSE CASE WHEN (t."X_1" < 3.600000) THEN 11 ELSE 12 END END ELSE CASE WHEN (t."X_2" < 5.000000) THEN CASE WHEN (t."X_0" < 6.100000) THEN 13 ELSE 14 END ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.428108 AS "P_0", -0.214054 AS "P_1", -0.214054 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.213018 AS "P_0", -0.213018 AS "P_1", 0.426035 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.163636 AS "P_0", -0.000000 AS "P_1", 0.163636 AS "P_2"
    UNION ALL
    SELECT 11 AS nid,  0.128571 AS "P_0", 0.000000 AS "P_1", -0.128571 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  0.257143 AS "P_0", -0.128571 AS "P_1", -0.128571 AS "P_2"
    UNION ALL
    SELECT 13 AS nid,  -0.128571 AS "P_0", 0.000000 AS "P_1", 0.128571 AS "P_2"
    UNION ALL
    SELECT 14 AS nid,  -0.128571 AS "P_0", -0.128571 AS "P_1", 0.257143 AS "P_2"
    UNION ALL
    SELECT 16 AS nid,  -0.036000 AS "P_0", 0.180000 AS "P_1", -0.144000 AS "P_2"
    UNION ALL
    SELECT 17 AS nid,  -0.163636 AS "P_0", 0.245455 AS "P_1", -0.081818 AS "P_2"
    UNION ALL
    SELECT 18 AS nid,  -0.212422 AS "P_0", 0.424845 AS "P_1", -0.212422 AS "P_2"
  ) AS "Values")
,
"DT_output_0" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 3.900000) THEN CASE WHEN (t."X_1" < 3.000000) THEN CASE WHEN (t."X_0" < 5.000000) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_3" < 1.800000) THEN CASE WHEN (t."X_2" < 5.000000) THEN CASE WHEN (t."X_0" < 5.600000) THEN CASE WHEN (t."X_2" < 4.400000) THEN 17 ELSE 18 END ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_2" < 5.000000) THEN CASE WHEN (t."X_1" < 3.000000) THEN 15 ELSE 16 END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 4 AS nid,  0.304427 AS "P_0", -0.194148 AS "P_1", -0.192527 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  0.093326 AS "P_0", 0.009068 AS "P_1", -0.111930 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.149746 AS "P_0", 0.255515 AS "P_1", -0.153022 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.147555 AS "P_0", 0.001456 AS "P_1", 0.129682 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.189412 AS "P_0", -0.189412 AS "P_1", 0.293645 AS "P_2"
    UNION ALL
    SELECT 14 AS nid,  -0.190647 AS "P_0", 0.300594 AS "P_1", -0.188558 AS "P_2"
    UNION ALL
    SELECT 15 AS nid,  -0.116557 AS "P_0", -0.120305 AS "P_1", 0.217725 AS "P_2"
    UNION ALL
    SELECT 16 AS nid,  -0.116862 AS "P_0", 0.006383 AS "P_1", 0.101607 AS "P_2"
    UNION ALL
    SELECT 17 AS nid,  -0.109777 AS "P_0", 0.194113 AS "P_1", -0.112037 AS "P_2"
    UNION ALL
    SELECT 18 AS nid,  -0.109777 AS "P_0", 0.073446 AS "P_1", 0.025228 AS "P_2"
  ) AS "Values")
,
"DT_output_1" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 3.900000) THEN CASE WHEN (t."X_1" < 3.000000) THEN CASE WHEN (t."X_0" < 5.000000) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_3" < 1.800000) THEN CASE WHEN (t."X_2" < 5.000000) THEN CASE WHEN (t."X_0" < 5.600000) THEN CASE WHEN (t."X_2" < 4.400000) THEN 17 ELSE 18 END ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_2" < 5.000000) THEN CASE WHEN (t."X_1" < 3.000000) THEN 15 ELSE 16 END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 4 AS nid,  0.241744 AS "P_0", -0.177319 AS "P_1", -0.176108 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  0.080247 AS "P_0", 0.009447 AS "P_1", -0.103154 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.134946 AS "P_0", 0.209032 AS "P_1", -0.137461 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.134948 AS "P_0", 0.003786 AS "P_1", 0.105057 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.173169 AS "P_0", -0.173169 AS "P_1", 0.235360 AS "P_2"
    UNION ALL
    SELECT 14 AS nid,  -0.173628 AS "P_0", 0.239142 AS "P_1", -0.172092 AS "P_2"
    UNION ALL
    SELECT 15 AS nid,  -0.105665 AS "P_0", -0.108685 AS "P_1", 0.183515 AS "P_2"
    UNION ALL
    SELECT 16 AS nid,  -0.107334 AS "P_0", 0.007061 AS "P_1", 0.086580 AS "P_2"
    UNION ALL
    SELECT 17 AS nid,  -0.099564 AS "P_0", 0.166779 AS "P_1", -0.101428 AS "P_2"
    UNION ALL
    SELECT 18 AS nid,  -0.101293 AS "P_0", 0.063141 AS "P_1", 0.023934 AS "P_2"
  ) AS "Values")
,
"DT_output_2" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 3.900000) THEN CASE WHEN (t."X_1" < 3.000000) THEN CASE WHEN (t."X_0" < 5.000000) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_3" < 1.800000) THEN CASE WHEN (t."X_2" < 5.000000) THEN CASE WHEN (t."X_0" < 5.600000) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_0" < 6.100000) THEN CASE WHEN (t."X_2" < 5.000000) THEN 15 ELSE 16 END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 4 AS nid,  0.207473 AS "P_0", -0.164929 AS "P_1", -0.163981 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  0.069446 AS "P_0", 0.010080 AS "P_1", -0.095611 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.122283 AS "P_0", 0.179262 AS "P_1", -0.124331 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.124593 AS "P_0", 0.006302 AS "P_1", 0.086354 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.161935 AS "P_0", -0.162662 AS "P_1", 0.207501 AS "P_2"
    UNION ALL
    SELECT 13 AS nid,  -0.123755 AS "P_0", 0.125483 AS "P_1", -0.041085 AS "P_2"
    UNION ALL
    SELECT 14 AS nid,  -0.160794 AS "P_0", 0.205017 AS "P_1", -0.159595 AS "P_2"
    UNION ALL
    SELECT 15 AS nid,  -0.098981 AS "P_0", 0.012646 AS "P_1", 0.070013 AS "P_2"
    UNION ALL
    SELECT 16 AS nid,  -0.099267 AS "P_0", -0.099267 AS "P_1", 0.145774 AS "P_2"
  ) AS "Values")
,
"DT_output_3" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 3.900000) THEN CASE WHEN (t."X_1" < 3.000000) THEN CASE WHEN (t."X_1" < 2.500000) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_3" < 1.800000) THEN CASE WHEN (t."X_2" < 5.000000) THEN CASE WHEN (t."X_0" < 5.600000) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_2" < 5.000000) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 4 AS nid,  0.186039 AS "P_0", -0.155095 AS "P_1", -0.154324 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  -0.052543 AS "P_0", 0.128949 AS "P_1", -0.112949 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.000803 AS "P_0", 0.071385 AS "P_1", -0.090270 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.115796 AS "P_0", 0.008639 AS "P_1", 0.071706 AS "P_2"
    UNION ALL
    SELECT 11 AS nid,  -0.119145 AS "P_0", -0.044164 AS "P_1", 0.123030 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.151428 AS "P_0", -0.151407 AS "P_1", 0.182847 AS "P_2"
    UNION ALL
    SELECT 13 AS nid,  -0.113959 AS "P_0", 0.105687 AS "P_1", -0.031792 AS "P_2"
    UNION ALL
    SELECT 14 AS nid,  -0.150347 AS "P_0", 0.183347 AS "P_1", -0.149366 AS "P_2"
  ) AS "Values")
,
"DT_output_4" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 3.900000) THEN CASE WHEN (t."X_1" < 3.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_3" < 1.800000) THEN CASE WHEN (t."X_2" < 5.000000) THEN CASE WHEN (t."X_0" < 5.600000) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_1" < 3.200000) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  -0.029008 AS "P_0", 0.107930 AS "P_1", -0.123682 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.171298 AS "P_0", -0.146685 AS "P_1", -0.146034 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.108140 AS "P_0", 0.010624 AS "P_1", 0.060009 AS "P_2"
    UNION ALL
    SELECT 9 AS nid,  -0.142901 AS "P_0", -0.148003 AS "P_1", 0.178433 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.117346 AS "P_0", -0.038535 AS "P_1", 0.100870 AS "P_2"
    UNION ALL
    SELECT 11 AS nid,  -0.105442 AS "P_0", 0.089784 AS "P_1", -0.023551 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.141212 AS "P_0", 0.168181 AS "P_1", -0.140370 AS "P_2"
  ) AS "Values")
,
"DT_output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 1.700000) THEN 1 ELSE CASE WHEN (t."X_3" < 1.800000) THEN CASE WHEN (t."X_1" < 3.200000) THEN CASE WHEN (t."X_2" < 5.000000) THEN CASE WHEN (t."X_0" < 5.300000) THEN 11 ELSE 12 END ELSE 10 END ELSE 6 END ELSE CASE WHEN (t."X_0" < 6.100000) THEN 7 ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.166040 AS "P_0", -0.144206 AS "P_1", -0.137316 AS "P_2"
    UNION ALL
    SELECT 6 AS nid,  0.057824 AS "P_0", 0.018405 AS "P_1", -0.101658 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  -0.099688 AS "P_0", -0.010551 AS "P_1", 0.074011 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.135750 AS "P_0", -0.137484 AS "P_1", 0.160966 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.101361 AS "P_0", 0.012192 AS "P_1", 0.050551 AS "P_2"
    UNION ALL
    SELECT 11 AS nid,  -0.113792 AS "P_0", 0.080597 AS "P_1", 0.003606 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.138135 AS "P_0", 0.165963 AS "P_1", -0.141221 AS "P_2"
  ) AS "Values")
,
"DT_output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 3.900000) THEN CASE WHEN (t."X_1" < 2.700000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_2" < 5.300000) THEN CASE WHEN (t."X_3" < 1.800000) THEN CASE WHEN (t."X_1" < 2.700000) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_3" < 1.900000) THEN 11 ELSE 12 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  -0.049764 AS "P_0", 0.107082 AS "P_1", -0.101545 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.151371 AS "P_0", -0.123326 AS "P_1", -0.133467 AS "P_2"
    UNION ALL
    SELECT 6 AS nid,  -0.124168 AS "P_0", -0.136777 AS "P_1", 0.158526 AS "P_2"
    UNION ALL
    SELECT 9 AS nid,  -0.099329 AS "P_0", 0.027576 AS "P_1", 0.044329 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.131356 AS "P_0", 0.167228 AS "P_1", -0.131777 AS "P_2"
    UNION ALL
    SELECT 11 AS nid,  -0.087120 AS "P_0", 0.010488 AS "P_1", 0.049454 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.087496 AS "P_0", -0.093463 AS "P_1", 0.123902 AS "P_2"
  ) AS "Values")
,
"DT_output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 1.700000) THEN 1 ELSE CASE WHEN (t."X_3" < 1.500000) THEN CASE WHEN (t."X_1" < 3.000000) THEN CASE WHEN (t."X_0" < 5.800000) THEN 9 ELSE 10 END ELSE 6 END ELSE CASE WHEN (t."X_3" < 1.900000) THEN CASE WHEN (t."X_1" < 3.100000) THEN CASE WHEN (t."X_3" < 1.800000) THEN 13 ELSE 14 END ELSE 12 END ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.150194 AS "P_0", -0.130991 AS "P_1", -0.122162 AS "P_2"
    UNION ALL
    SELECT 6 AS nid,  0.054626 AS "P_0", 0.008884 AS "P_1", -0.085150 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.117363 AS "P_0", -0.119702 AS "P_1", 0.142008 AS "P_2"
    UNION ALL
    SELECT 9 AS nid,  -0.121597 AS "P_0", 0.155593 AS "P_1", -0.121034 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.083710 AS "P_0", 0.069785 AS "P_1", -0.019239 AS "P_2"
    UNION ALL
    SELECT 12 AS nid,  -0.081972 AS "P_0", 0.143308 AS "P_1", -0.092096 AS "P_2"
    UNION ALL
    SELECT 13 AS nid,  -0.105301 AS "P_0", 0.025038 AS "P_1", 0.036868 AS "P_2"
    UNION ALL
    SELECT 14 AS nid,  -0.083673 AS "P_0", -0.099484 AS "P_1", 0.128632 AS "P_2"
  ) AS "Values")
,
"DT_output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 3.900000) THEN CASE WHEN (t."X_3" < 0.400000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_2" < 5.300000) THEN CASE WHEN (t."X_3" < 1.500000) THEN 7 ELSE CASE WHEN (t."X_1" < 3.000000) THEN 9 ELSE 10 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  0.143069 AS "P_0", -0.123503 AS "P_1", -0.113939 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.001324 AS "P_0", 0.068548 AS "P_1", -0.100068 AS "P_2"
    UNION ALL
    SELECT 6 AS nid,  -0.108817 AS "P_0", -0.124555 AS "P_1", 0.144632 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  -0.108026 AS "P_0", 0.137141 AS "P_1", -0.114025 AS "P_2"
    UNION ALL
    SELECT 9 AS nid,  -0.102905 AS "P_0", -0.058580 AS "P_1", 0.112468 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.104808 AS "P_0", 0.114968 AS "P_1", -0.046538 AS "P_2"
  ) AS "Values")
,
"DT_output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_3" < 1.200000) THEN CASE WHEN (t."X_1" < 2.800000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_2" < 5.300000) THEN CASE WHEN (t."X_3" < 1.800000) THEN CASE WHEN (t."X_1" < 3.000000) THEN 9 ELSE 10 END ELSE 8 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  -0.045829 AS "P_0", 0.089786 AS "P_1", -0.084979 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.136693 AS "P_0", -0.117778 AS "P_1", -0.111684 AS "P_2"
    UNION ALL
    SELECT 6 AS nid,  -0.100467 AS "P_0", -0.115110 AS "P_1", 0.135570 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.094818 AS "P_0", -0.034261 AS "P_1", 0.079558 AS "P_2"
    UNION ALL
    SELECT 9 AS nid,  -0.109319 AS "P_0", 0.062831 AS "P_1", -0.007312 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.088218 AS "P_0", 0.145909 AS "P_1", -0.124217 AS "P_2"
  ) AS "Values")
,
"DT_output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 1.700000) THEN 1 ELSE CASE WHEN (t."X_3" < 1.500000) THEN CASE WHEN (t."X_1" < 2.800000) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_3" < 1.900000) THEN CASE WHEN (t."X_1" < 3.000000) THEN 9 ELSE 10 END ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.129790 AS "P_0", -0.109654 AS "P_1", -0.098804 AS "P_2"
    UNION ALL
    SELECT 5 AS nid,  -0.104254 AS "P_0", 0.109166 AS "P_1", -0.063451 AS "P_2"
    UNION ALL
    SELECT 6 AS nid,  0.005410 AS "P_0", 0.054399 AS "P_1", -0.086943 AS "P_2"
    UNION ALL
    SELECT 8 AS nid,  -0.094099 AS "P_0", -0.098598 AS "P_1", 0.121576 AS "P_2"
    UNION ALL
    SELECT 9 AS nid,  -0.082591 AS "P_0", -0.040076 AS "P_1", 0.083492 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.094050 AS "P_0", 0.079782 AS "P_1", -0.024157 AS "P_2"
  ) AS "Values")
,
"DT_output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_3" < 1.200000) THEN CASE WHEN (t."X_3" < 0.400000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_2" < 5.300000) THEN CASE WHEN (t."X_3" < 1.500000) THEN 7 ELSE CASE WHEN (t."X_1" < 3.000000) THEN 9 ELSE 10 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  0.122838 AS "P_0", -0.102071 AS "P_1", -0.090210 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.001620 AS "P_0", 0.054754 AS "P_1", -0.083398 AS "P_2"
    UNION ALL
    SELECT 6 AS nid,  -0.085831 AS "P_0", -0.105636 AS "P_1", 0.125329 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  -0.089303 AS "P_0", 0.118846 AS "P_1", -0.094333 AS "P_2"
    UNION ALL
    SELECT 9 AS nid,  -0.085759 AS "P_0", -0.039847 AS "P_1", 0.080671 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.086942 AS "P_0", 0.084285 AS "P_1", -0.034372 AS "P_2"
  ) AS "Values")
,
"DT_output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_3" < 1.200000) THEN CASE WHEN (t."X_3" < 0.400000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_2" < 5.300000) THEN CASE WHEN (t."X_3" < 1.500000) THEN 7 ELSE CASE WHEN (t."X_1" < 3.000000) THEN 9 ELSE 10 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 3 AS nid,  0.115272 AS "P_0", -0.093682 AS "P_1", -0.082465 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  0.003879 AS "P_0", 0.047836 AS "P_1", -0.078795 AS "P_2"
    UNION ALL
    SELECT 6 AS nid,  -0.078217 AS "P_0", -0.096680 AS "P_1", 0.116974 AS "P_2"
    UNION ALL
    SELECT 7 AS nid,  -0.081575 AS "P_0", 0.111289 AS "P_1", -0.086361 AS "P_2"
    UNION ALL
    SELECT 9 AS nid,  -0.080990 AS "P_0", -0.029531 AS "P_1", 0.067307 AS "P_2"
    UNION ALL
    SELECT 10 AS nid,  -0.082480 AS "P_0", 0.070159 AS "P_1", -0.025090 AS "P_2"
  ) AS "Values")
,
"DT_output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 3.900000) THEN 1 ELSE CASE WHEN (t."X_3" < 1.800000) THEN CASE WHEN (t."X_3" < 1.500000) THEN 5 ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.071719 AS "P_0", -0.017035 AS "P_1", -0.099702 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.095031 AS "P_0", -0.055629 AS "P_1", 0.089703 AS "P_2"
    UNION ALL
    SELECT 5 AS nid,  -0.078298 AS "P_0", 0.082043 AS "P_1", -0.044710 AS "P_2"
    UNION ALL
    SELECT 6 AS nid,  -0.083446 AS "P_0", 0.042077 AS "P_1", -0.005783 AS "P_2"
  ) AS "Values")
,
"DT_output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_3" < 1.200000) THEN 1 ELSE CASE WHEN (t."X_3" < 1.800000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.062033 AS "P_0", -0.009201 AS "P_1", -0.095472 AS "P_2"
    UNION ALL
    SELECT 3 AS nid,  -0.102276 AS "P_0", 0.056727 AS "P_1", -0.014842 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.088617 AS "P_0", -0.044355 AS "P_1", 0.078432 AS "P_2"
  ) AS "Values")
,
"DT_output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 3.900000) THEN 1 ELSE CASE WHEN (t."X_2" < 5.000000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.053563 AS "P_0", -0.006226 AS "P_1", -0.089527 AS "P_2"
    UNION ALL
    SELECT 3 AS nid,  -0.095413 AS "P_0", 0.056441 AS "P_1", -0.013752 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.085291 AS "P_0", -0.026746 AS "P_1", 0.058632 AS "P_2"
  ) AS "Values")
,
"DT_output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_3" < 1.200000) THEN 1 ELSE CASE WHEN (t."X_3" < 1.800000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.046159 AS "P_0", -0.000802 AS "P_1", -0.086006 AS "P_2"
    UNION ALL
    SELECT 3 AS nid,  -0.092510 AS "P_0", 0.045988 AS "P_1", -0.010460 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.077859 AS "P_0", -0.035369 AS "P_1", 0.066149 AS "P_2"
  ) AS "Values")
,
"DT_output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 3.900000) THEN 1 ELSE CASE WHEN (t."X_1" < 3.000000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.039809 AS "P_0", 0.000737 AS "P_1", -0.080504 AS "P_2"
    UNION ALL
    SELECT 3 AS nid,  -0.083151 AS "P_0", -0.006623 AS "P_1", 0.043258 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.078836 AS "P_0", 0.044911 AS "P_1", -0.005725 AS "P_2"
  ) AS "Values")
,
"DT_output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_1" < 3.100000) THEN CASE WHEN (t."X_2" < 4.400000) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 2 AS nid,  0.056251 AS "P_0", 0.007908 AS "P_1", -0.070002 AS "P_2"
    UNION ALL
    SELECT 3 AS nid,  -0.052351 AS "P_0", 0.086045 AS "P_1", -0.077545 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.085285 AS "P_0", -0.028494 AS "P_1", 0.056871 AS "P_2"
  ) AS "Values")
,
"DT_output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_3" < 1.300000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.034761 AS "P_0", 0.008037 AS "P_1", -0.080813 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  -0.099211 AS "P_0", 0.015859 AS "P_1", 0.020072 AS "P_2"
  ) AS "Values")
,
"DT_output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_0" < 5.300000) THEN 1 ELSE CASE WHEN (t."X_2" < 4.600000) THEN 3 ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.033616 AS "P_0", -0.058679 AS "P_1", 0.044602 AS "P_2"
    UNION ALL
    SELECT 3 AS nid,  -0.025499 AS "P_0", 0.078544 AS "P_1", -0.086817 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.082876 AS "P_0", 0.015871 AS "P_1", 0.013366 AS "P_2"
  ) AS "Values")
,
"DT_output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_1" < 3.200000) THEN CASE WHEN (t."X_1" < 2.700000) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 2 AS nid,  0.056596 AS "P_0", 0.011067 AS "P_1", -0.074123 AS "P_2"
    UNION ALL
    SELECT 3 AS nid,  -0.068567 AS "P_0", -0.008047 AS "P_1", 0.067005 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.042565 AS "P_0", 0.025540 AS "P_1", -0.007181 AS "P_2"
  ) AS "Values")
,
"DT_output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_1" < 3.100000) THEN CASE WHEN (t."X_1" < 2.700000) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 2 AS nid,  0.047548 AS "P_0", 0.005274 AS "P_1", -0.054766 AS "P_2"
    UNION ALL
    SELECT 3 AS nid,  -0.063947 AS "P_0", -0.005766 AS "P_1", 0.058190 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.041526 AS "P_0", 0.024109 AS "P_1", -0.006957 AS "P_2"
  ) AS "Values")
,
"DT_output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.400000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.023689 AS "P_0", 0.022017 AS "P_1", -0.082895 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  -0.086418 AS "P_0", 0.000991 AS "P_1", 0.025418 AS "P_2"
  ) AS "Values")
,
"DT_output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_0" < 5.300000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.028950 AS "P_0", -0.050280 AS "P_1", 0.039303 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  -0.061075 AS "P_0", 0.034192 AS "P_1", -0.011606 AS "P_2"
  ) AS "Values")
,
"DT_output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_2" < 4.400000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.020308 AS "P_0", 0.022246 AS "P_1", -0.079413 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  -0.080198 AS "P_0", -0.001952 AS "P_1", 0.024452 AS "P_2"
  ) AS "Values")
,
"DT_output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_1" < 3.100000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  -0.062554 AS "P_0", 0.009026 AS "P_1", 0.019018 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  0.047678 AS "P_0", 0.003185 AS "P_1", -0.050701 AS "P_2"
  ) AS "Values")
,
"DT_output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_1" < 3.200000) THEN CASE WHEN (t."X_1" < 2.700000) THEN 3 ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 2 AS nid,  0.045859 AS "P_0", 0.007715 AS "P_1", -0.055600 AS "P_2"
    UNION ALL
    SELECT 3 AS nid,  -0.056125 AS "P_0", -0.005995 AS "P_1", 0.050172 AS "P_2"
    UNION ALL
    SELECT 4 AS nid,  -0.025662 AS "P_0", 0.014073 AS "P_1", -0.004282 AS "P_2"
  ) AS "Values")
,
"DT_output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_0" < 5.600000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.028503 AS "P_0", -0.027357 AS "P_1", 0.006321 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  -0.071931 AS "P_0", 0.024175 AS "P_1", -0.001118 AS "P_2"
  ) AS "Values")
,
"DT_output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_1" < 3.100000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  -0.053754 AS "P_0", 0.006368 AS "P_1", 0.016539 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  0.039497 AS "P_0", 0.000630 AS "P_1", -0.037531 AS "P_2"
  ) AS "Values")
,
"DT_output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
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
    CASE WHEN (t."X_0" < 5.600000) THEN 1 ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1", "Values"."P_2" AS "P_2"
  FROM (
    SELECT 1 AS nid,  0.025822 AS "P_0", -0.023546 AS "P_1", 0.004105 AS "P_2"
    UNION ALL
    SELECT 2 AS nid,  -0.067357 AS "P_0", 0.019749 AS "P_1", 0.000879 AS "P_2"
  ) AS "Values")
,
"DT_output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1", t2."P_2" AS "P_2"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
   ON t1.node_id = t2.nid
 )
,
union_of_trees AS 
 (SELECT scu."index_u" AS "index", scu."P_0" AS "P_0", scu."P_1" AS "P_1", scu."P_2" AS "P_2"
 FROM (
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_4" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1", t."P_2" AS "P_2" FROM "DT_output_31" AS t
  ) AS scu
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.333333 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.333333 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1",
   0.333333 + SUM(t."P_2") AS "Score_2",
   CAST(NULL AS FLOAT) AS "Proba_2",
   CAST(NULL AS FLOAT) AS "LogProba_2"
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
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   GREATEST( t."Score_0", t."Score_1", t."Score_2" ) AS "Greatest_Score"
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
    ( t1."Exp_Score_0" + t1."Exp_Score_1" + t1."Exp_Score_2" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        t."Proba_2" AS "Proba_2",
        t."Score_2" AS "Score_2",
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1",
        EXP(t."Score_2" - t."Greatest_Score") as "Exp_Score_2"
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
    t1."Score_2" AS "Score_2"
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
    GREATEST( t."Proba_0", t."Proba_1", t."Proba_2" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1", t."Score_2" ) AS "Max_Score"
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
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
    CASE WHEN(t."Proba_2" = t."Max_Proba") THEN 2 else NULL END AS "max_idx_2",
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
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
     COALESCE(  t."max_idx_0", t."max_idx_1", t."max_idx_2" ) AS argmax_class_idx
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
  arg_max_cte."argmax_class_idx" AS "Decision",
  arg_max_cte."Max_Proba" AS "DecisionProba"
FROM arg_max_cte