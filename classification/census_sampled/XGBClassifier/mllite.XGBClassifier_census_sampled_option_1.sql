WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_12" < 4.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_4" < 9.000000) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_2" < 106740.000000) THEN 45 ELSE 46 END END ELSE CASE WHEN (t."X_4" < 11.000000) THEN CASE WHEN (t."X_2" < 262552.000000) THEN 47 ELSE 48 END ELSE 30 END END END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN 31 ELSE CASE WHEN (t."X_2" < 177420.000000) THEN 49 ELSE 50 END END ELSE CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_4" < 9.000000) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_12" < 3.000000) THEN 53 ELSE 54 END END END ELSE 10 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN 35 ELSE CASE WHEN (t."X_2" < 106740.000000) THEN 55 ELSE 56 END END ELSE CASE WHEN (t."X_2" < 177420.000000) THEN CASE WHEN (t."X_2" < 67187.000000) THEN 57 ELSE 58 END ELSE 38 END END END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_12" < 1.000000) THEN CASE WHEN (t."X_2" < 158993.000000) THEN 59 ELSE 60 END ELSE CASE WHEN (t."X_0" < 4.000000) THEN 61 ELSE 62 END END ELSE CASE WHEN (t."X_12" < 3.000000) THEN 41 ELSE 42 END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 10 AS nid,  -0.380888 AS "P_0", 0.380888 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.391847 AS "P_0", 0.391847 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.230774 AS "P_0", -0.230774 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.145412 AS "P_0", -0.145412 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.219861 AS "P_0", -0.219861 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.134471 AS "P_0", -0.134471 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.063576 AS "P_0", -0.063576 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.209485 AS "P_0", -0.209485 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.146782 AS "P_0", -0.146782 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.205813 AS "P_0", 0.205813 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  -0.125693 AS "P_0", 0.125693 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  -0.194143 AS "P_0", 0.194143 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  0.220013 AS "P_0", -0.220013 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  0.183244 AS "P_0", -0.183244 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  0.191192 AS "P_0", -0.191192 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  0.136831 AS "P_0", -0.136831 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.117131 AS "P_0", -0.117131 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  0.172473 AS "P_0", -0.172473 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.097649 AS "P_0", -0.097649 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  0.157360 AS "P_0", -0.157360 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.158161 AS "P_0", -0.158161 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  0.078967 AS "P_0", -0.078967 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  0.037297 AS "P_0", -0.037297 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  -0.034864 AS "P_0", 0.034865 AS "P_1"
    UNION ALL
    SELECT 55 AS nid,  -0.051299 AS "P_0", 0.051299 AS "P_1"
    UNION ALL
    SELECT 56 AS nid,  0.047470 AS "P_0", -0.047470 AS "P_1"
    UNION ALL
    SELECT 57 AS nid,  0.042211 AS "P_0", -0.042211 AS "P_1"
    UNION ALL
    SELECT 58 AS nid,  -0.077794 AS "P_0", 0.077794 AS "P_1"
    UNION ALL
    SELECT 59 AS nid,  0.111445 AS "P_0", -0.111445 AS "P_1"
    UNION ALL
    SELECT 60 AS nid,  0.164834 AS "P_0", -0.164834 AS "P_1"
    UNION ALL
    SELECT 61 AS nid,  -0.054654 AS "P_0", 0.054654 AS "P_1"
    UNION ALL
    SELECT 62 AS nid,  0.058531 AS "P_0", -0.058531 AS "P_1"
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
    CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_4" < 9.000000) THEN 35 ELSE 36 END ELSE CASE WHEN (t."X_2" < 106740.000000) THEN 37 ELSE 38 END END ELSE CASE WHEN (t."X_4" < 11.000000) THEN CASE WHEN (t."X_2" < 262552.000000) THEN 39 ELSE 40 END ELSE 26 END END END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN 27 ELSE CASE WHEN (t."X_2" < 177420.000000) THEN 41 ELSE 42 END END ELSE CASE WHEN (t."X_4" < 9.000000) THEN CASE WHEN (t."X_2" < 221650.000000) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_12" < 3.000000) THEN 45 ELSE 46 END END END ELSE 10 END END ELSE CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_12" < 1.000000) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_12" < 1.000000) THEN 49 ELSE 50 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_11" < 4.000000) THEN 53 ELSE 54 END END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 10 AS nid,  -0.254216 AS "P_0", 0.254216 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.185585 AS "P_0", -0.185585 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.108238 AS "P_0", -0.108238 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.276470 AS "P_0", 0.276470 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.198716 AS "P_0", -0.198718 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.155909 AS "P_0", -0.155909 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.047655 AS "P_0", -0.047655 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.174591 AS "P_0", -0.174591 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.185737 AS "P_0", -0.185737 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  0.148743 AS "P_0", -0.148743 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  0.157508 AS "P_0", -0.157508 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  0.106446 AS "P_0", -0.106446 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.089761 AS "P_0", -0.089761 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  0.140119 AS "P_0", -0.140119 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  0.074037 AS "P_0", -0.074037 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  0.125721 AS "P_0", -0.125721 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  0.110448 AS "P_0", -0.110448 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  0.160936 AS "P_0", -0.160936 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  0.054917 AS "P_0", -0.054917 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  -0.009685 AS "P_0", 0.009685 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.085193 AS "P_0", -0.085193 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  0.153275 AS "P_0", -0.153275 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.110331 AS "P_0", -0.110331 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  -0.013845 AS "P_0", 0.013845 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.031577 AS "P_0", -0.031577 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  -0.067357 AS "P_0", 0.067357 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  -0.095463 AS "P_0", 0.095462 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  -0.249095 AS "P_0", 0.249095 AS "P_1"
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
    CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_4" < 9.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 23 ELSE 24 END ELSE CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN 35 ELSE 36 END ELSE CASE WHEN (t."X_2" < 177420.000000) THEN 37 ELSE 38 END END END END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_2" < 158993.000000) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_2" < 177420.000000) THEN 41 ELSE 42 END END ELSE CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 43 ELSE 44 END ELSE CASE WHEN (t."X_2" < 177420.000000) THEN 45 ELSE 46 END END END ELSE 10 END END ELSE CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_12" < 1.000000) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_12" < 1.000000) THEN 49 ELSE 50 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_12" < 3.000000) THEN 53 ELSE 54 END END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 10 AS nid,  -0.208267 AS "P_0", 0.208267 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.163689 AS "P_0", -0.163689 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.087950 AS "P_0", -0.087950 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.222790 AS "P_0", 0.222790 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.178596 AS "P_0", -0.178596 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.132230 AS "P_0", -0.132229 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.163860 AS "P_0", -0.163860 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  0.093419 AS "P_0", -0.093419 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.123439 AS "P_0", -0.123439 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  0.091694 AS "P_0", -0.091694 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  0.052990 AS "P_0", -0.052990 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  0.086160 AS "P_0", -0.086160 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.131597 AS "P_0", -0.131597 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  0.162671 AS "P_0", -0.162671 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  0.055994 AS "P_0", -0.055994 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  0.101722 AS "P_0", -0.101722 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  0.074145 AS "P_0", -0.074145 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  0.019826 AS "P_0", -0.019826 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  0.027381 AS "P_0", -0.027381 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  -0.027353 AS "P_0", 0.027353 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.067004 AS "P_0", -0.067004 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  0.128768 AS "P_0", -0.128768 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.087379 AS "P_0", -0.087379 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  -0.009735 AS "P_0", 0.009735 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.022687 AS "P_0", -0.022687 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  -0.046705 AS "P_0", 0.046705 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  -0.052646 AS "P_0", 0.052646 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  -0.096282 AS "P_0", 0.096282 AS "P_1"
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
    CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 3 ELSE CASE WHEN (t."X_2" < 131662.000000) THEN 7 ELSE CASE WHEN (t."X_2" < 177420.000000) THEN 13 ELSE 14 END END END ELSE CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_4" < 9.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN 19 ELSE CASE WHEN (t."X_0" < 3.000000) THEN 25 ELSE 26 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN 27 ELSE 28 END ELSE CASE WHEN (t."X_12" < 2.000000) THEN 29 ELSE 30 END END END ELSE 10 END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_11" < 4.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_2" < 67187.000000) THEN 31 ELSE 32 END ELSE CASE WHEN (t."X_0" < 2.000000) THEN 33 ELSE 34 END END ELSE 18 END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.163331 AS "P_0", -0.163331 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.163770 AS "P_0", -0.163770 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.239857 AS "P_0", 0.239857 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.195460 AS "P_0", 0.195460 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.009479 AS "P_0", -0.009479 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.124501 AS "P_0", -0.124501 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.209316 AS "P_0", 0.209316 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.149390 AS "P_0", -0.149390 AS "P_1"
    UNION ALL
    SELECT 25 AS nid,  0.128393 AS "P_0", -0.128393 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  0.076878 AS "P_0", -0.076878 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.095750 AS "P_0", -0.095750 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.071036 AS "P_0", -0.071036 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.091752 AS "P_0", -0.091752 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.018172 AS "P_0", -0.018172 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.134845 AS "P_0", -0.134845 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  0.038973 AS "P_0", -0.038973 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  -0.001562 AS "P_0", 0.001562 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  -0.045768 AS "P_0", 0.045768 AS "P_1"
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
    CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 3 ELSE CASE WHEN (t."X_2" < 131662.000000) THEN 7 ELSE CASE WHEN (t."X_2" < 177420.000000) THEN 13 ELSE CASE WHEN (t."X_2" < 221650.000000) THEN 19 ELSE 20 END END END END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_2" < 67187.000000) THEN 27 ELSE 28 END ELSE CASE WHEN (t."X_0" < 3.000000) THEN 29 ELSE 30 END END ELSE CASE WHEN (t."X_2" < 106740.000000) THEN CASE WHEN (t."X_0" < 4.000000) THEN 31 ELSE 32 END ELSE CASE WHEN (t."X_0" < 3.000000) THEN 33 ELSE 34 END END END ELSE CASE WHEN (t."X_11" < 4.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_4" < 13.000000) THEN 35 ELSE 36 END ELSE CASE WHEN (t."X_12" < 3.000000) THEN 37 ELSE 38 END END ELSE 18 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN 11 ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.152314 AS "P_0", -0.152314 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.150188 AS "P_0", -0.150188 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.255138 AS "P_0", 0.255138 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.173343 AS "P_0", 0.173343 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.007021 AS "P_0", -0.007021 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.202117 AS "P_0", 0.202117 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.070758 AS "P_0", -0.070758 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.124997 AS "P_0", -0.124997 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.159603 AS "P_0", -0.159603 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.107268 AS "P_0", -0.107268 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.081720 AS "P_0", -0.081720 AS "P_1"
    UNION ALL
    SELECT 30 AS nid,  0.032689 AS "P_0", -0.032689 AS "P_1"
    UNION ALL
    SELECT 31 AS nid,  0.047348 AS "P_0", -0.047348 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  0.138250 AS "P_0", -0.138250 AS "P_1"
    UNION ALL
    SELECT 33 AS nid,  0.028681 AS "P_0", -0.028681 AS "P_1"
    UNION ALL
    SELECT 34 AS nid,  -0.063809 AS "P_0", 0.063809 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.057514 AS "P_0", -0.057514 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  0.006190 AS "P_0", -0.006190 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  -0.000979 AS "P_0", 0.000979 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  -0.041244 AS "P_0", 0.041244 AS "P_1"
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
)
,soft_max_orig_cte AS 
( SELECT
   t."index" AS "index",
   0.760033 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.239967 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
  FROM "union_of_trees" t
  GROUP BY t."index"
 )
,
soft_max_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_orig_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_orig_cte"
   ) AS scu
 )
,soft_max_score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
 "soft_max_orig_cte" AS t
    LEFT OUTER JOIN
    (SELECT t1.index_u AS index_m,
      max(t1."Score") AS "max_Score"
     FROM soft_max_class_union t1
     GROUP BY t1.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,soft_max_deltas AS 
 (SELECT soft_max_score_max."index" AS "index",
    soft_max_score_max."Score_0" AS "Score_0",
    EXP(max(-32.0, soft_max_score_max."Score_0" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_0",
    soft_max_score_max."Score_1" AS "Score_1",
    EXP(max(-32.0, soft_max_score_max."Score_1" - soft_max_score_max."max_Score")) AS "ExpDelta_Score_1",
    soft_max_score_max."max_Score" AS "max_Score"
  FROM soft_max_score_max
 )
,soft_max_class_union_with_delta AS 
 (SELECT soft_scu."index" AS "index",
   soft_scu.class AS class,
   soft_scu."ExpDelta_Score" AS "ExpDelta_Score"
  FROM (
    SELECT t."index" AS "index", 0 AS "class", t."ExpDelta_Score_0" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
    UNION ALL
    SELECT t."index" AS "index", 1 AS "class", t."ExpDelta_Score_1" AS "ExpDelta_Score"  FROM soft_max_deltas AS t
) AS soft_scu)
,
soft_max_cte AS 
 (SELECT t1."index" AS "index",
    CAST(NULL AS FLOAT) AS "LogProba_0",
    t1."ExpDelta_Score_0" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    CAST(NULL AS FLOAT) AS "LogProba_1",
    t1."ExpDelta_Score_1" / sum_exp_t."sum_ExpDelta_Score" AS "Proba_1",
    t1."Score_1" AS "Score_1"
 FROM 
   soft_max_deltas AS t1
   LEFT OUTER JOIN
   ( SELECT t3."index" AS "index",
       SUM( t3."ExpDelta_Score" ) AS "sum_ExpDelta_Score"
     FROM soft_max_class_union_with_delta AS t3
     GROUP BY t3."index"
   ) AS sum_exp_t
   ON (t1."index" = sum_exp_t."index")
 )
,
score_class_union AS 
 (SELECT scu.index_u AS index_u, scu.class AS class,  scu."LogProba" AS "LogProba", scu."Proba" AS "Proba", scu."Score" AS "Score"
  FROM 
   (SELECT "index" AS index_u, 0 AS class,  "LogProba_0" AS "LogProba", "Proba_0" AS "Proba", "Score_0" AS "Score" from "soft_max_cte"
    UNION ALL
    SELECT "index" AS index_u, 1 AS class,  "LogProba_1" AS "LogProba", "Proba_1" AS "Proba", "Score_1" AS "Score" from "soft_max_cte"
   ) AS scu
 )
,
score_max AS 
 (SELECT t."index" AS "index",
   t."LogProba_0" AS "LogProba_0", t."Proba_0" AS "Proba_0", t."Score_0" AS "Score_0",
   t."LogProba_1" AS "LogProba_1", t."Proba_1" AS "Proba_1", t."Score_1" AS "Score_1",
   max_select."index_m" AS "index_m",
   max_select."max_Score" AS "max_Score"
  FROM
    "soft_max_cte" AS t
    LEFT OUTER JOIN
    (SELECT score_class_union.index_u AS index_m,
      max(score_class_union."Score") AS "max_Score"
     FROM score_class_union
     GROUP BY score_class_union.index_u
    ) AS max_select
    ON t."index" = max_select.index_m
  )
,
union_with_max AS 
 (SELECT score_class_union.index_u AS "index",
   score_class_union.class AS class,
   score_class_union."LogProba" AS "LogProba", score_class_union."Proba" AS "Proba", score_class_union."Score" AS "Score",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score"
  FROM
   score_class_union
   LEFT OUTER JOIN
   score_max
   ON score_class_union.index_u = score_max."index"
 )
,
arg_max_cte AS 
 (SELECT score_max."index" AS "index",
   score_max."LogProba_0" AS "LogProba_0", score_max."Proba_0" AS "Proba_0", score_max."Score_0" AS "Score_0",
   score_max."LogProba_1" AS "LogProba_1", score_max."Proba_1" AS "Proba_1", score_max."Score_1" AS "Score_1",
   score_max.index_m AS index_m,
   score_max."max_Score" AS "max_Score",
   "arg_max_t_Score"."index_Score" AS "index_Score",
   "arg_max_t_Score"."arg_max_Score" AS "arg_max_Score"
  FROM
   score_max
   LEFT OUTER JOIN
   (SELECT union_with_max."index" AS "index_Score",
     max(union_with_max.class) AS "arg_max_Score"
    FROM union_with_max
    WHERE union_with_max."max_Score" <= union_with_max."Score"
    GROUP BY union_with_max."index"
   ) AS "arg_max_t_Score"
   ON score_max."index" = "arg_max_t_Score"."index_Score"
 )
SELECT arg_max_cte."index" AS "index",
  arg_max_cte."Score_0" AS "Score_0",
  arg_max_cte."Proba_0" AS "Proba_0",
  CASE WHEN (arg_max_cte."Proba_0" IS NULL OR arg_max_cte."Proba_0" > 0.0) THEN LN( arg_max_cte."Proba_0" ) ELSE -1.79769313486231e+308 END AS "LogProba_0",
  arg_max_cte."Score_1" AS "Score_1",
  arg_max_cte."Proba_1" AS "Proba_1",
  CASE WHEN (arg_max_cte."Proba_1" IS NULL OR arg_max_cte."Proba_1" > 0.0) THEN LN( arg_max_cte."Proba_1" ) ELSE -1.79769313486231e+308 END AS "LogProba_1",
  arg_max_cte."arg_max_Score" AS "Decision",
  CASE
   WHEN (arg_max_cte."arg_max_Score" = 0) THEN arg_max_cte."Proba_0"
   WHEN (arg_max_cte."arg_max_Score" = 1) THEN arg_max_cte."Proba_1"
 END AS "DecisionProba"
FROM arg_max_cte