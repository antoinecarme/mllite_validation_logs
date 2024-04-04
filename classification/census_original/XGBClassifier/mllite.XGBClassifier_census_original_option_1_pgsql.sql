WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_11" < 4.000000) THEN 43 ELSE 44 END ELSE 28 END ELSE 16 END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN 45 ELSE 46 END ELSE CASE WHEN (t."X_4" < 9.000000) THEN 47 ELSE 48 END END ELSE 18 END END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_4" < 7.000000) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_2" < 260254.000000) THEN 51 ELSE 52 END END ELSE CASE WHEN (t."X_4" < 9.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_12" < 3.000000) THEN 55 ELSE 56 END END END ELSE 10 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN 35 ELSE 36 END ELSE 22 END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_2" < 65738.000000) THEN 59 ELSE 60 END END ELSE 24 END END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_11" < 4.000000) THEN CASE WHEN (t."X_0" < 4.000000) THEN 61 ELSE 62 END ELSE 40 END ELSE CASE WHEN (t."X_12" < 3.000000) THEN 41 ELSE 42 END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 10 AS nid,  -0.377494 AS "P_0", 0.377494 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.399424 AS "P_0", 0.399424 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.200573 AS "P_0", 0.200573 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.373837 AS "P_0", 0.373837 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.172855 AS "P_0", -0.172855 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  -0.395121 AS "P_0", 0.395121 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  0.206746 AS "P_0", -0.206746 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.225958 AS "P_0", -0.225958 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  0.204075 AS "P_0", -0.204075 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  -0.222414 AS "P_0", 0.222414 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  -0.109396 AS "P_0", 0.109396 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  -0.189861 AS "P_0", 0.189861 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  0.233715 AS "P_0", -0.233715 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  0.104724 AS "P_0", -0.104724 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  0.193177 AS "P_0", -0.193177 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  0.152300 AS "P_0", -0.152300 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.190347 AS "P_0", -0.190347 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  0.098838 AS "P_0", -0.098838 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.219826 AS "P_0", -0.219826 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  0.193328 AS "P_0", -0.193328 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.147653 AS "P_0", -0.147653 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  0.109474 AS "P_0", -0.109474 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  0.184262 AS "P_0", -0.184262 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  0.115642 AS "P_0", -0.115642 AS "P_1"
    UNION ALL
    SELECT 55 AS nid,  0.070590 AS "P_0", -0.070590 AS "P_1"
    UNION ALL
    SELECT 56 AS nid,  -0.004415 AS "P_0", 0.004415 AS "P_1"
    UNION ALL
    SELECT 57 AS nid,  0.132742 AS "P_0", -0.132742 AS "P_1"
    UNION ALL
    SELECT 58 AS nid,  0.041206 AS "P_0", -0.041206 AS "P_1"
    UNION ALL
    SELECT 59 AS nid,  -0.008098 AS "P_0", 0.008098 AS "P_1"
    UNION ALL
    SELECT 60 AS nid,  -0.064772 AS "P_0", 0.064772 AS "P_1"
    UNION ALL
    SELECT 61 AS nid,  0.002803 AS "P_0", -0.002803 AS "P_1"
    UNION ALL
    SELECT 62 AS nid,  0.057193 AS "P_0", -0.057193 AS "P_1"
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
    CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_11" < 4.000000) THEN 45 ELSE 46 END ELSE CASE WHEN (t."X_2" < 196308.000000) THEN 47 ELSE 48 END END ELSE 16 END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_4" < 9.000000) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_4" < 9.000000) THEN 51 ELSE 52 END END ELSE 18 END END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_12" < 1.000000) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_4" < 9.000000) THEN 55 ELSE 56 END END ELSE CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_2" < 260254.000000) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_12" < 3.000000) THEN 59 ELSE 60 END END END ELSE CASE WHEN (t."X_0" < 4.000000) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN 37 ELSE 38 END ELSE 24 END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN 61 ELSE 62 END ELSE 40 END ELSE 26 END END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_11" < 4.000000) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_4" < 16.000000) THEN 43 ELSE 44 END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 14 AS nid,  -0.261001 AS "P_0", 0.261001 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.136667 AS "P_0", 0.136667 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.247450 AS "P_0", 0.247450 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.259772 AS "P_0", 0.259772 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  -0.211820 AS "P_0", 0.211820 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  0.139281 AS "P_0", -0.139281 AS "P_1"
    UNION ALL
    SELECT 26 AS nid,  -0.259918 AS "P_0", 0.259918 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  0.191556 AS "P_0", -0.191556 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  0.169062 AS "P_0", -0.169062 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  -0.040335 AS "P_0", 0.040335 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  0.018767 AS "P_0", -0.018767 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  -0.149265 AS "P_0", 0.149265 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  -0.086197 AS "P_0", 0.086197 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  -0.190058 AS "P_0", 0.190058 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  0.199476 AS "P_0", -0.199476 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  0.082297 AS "P_0", -0.082297 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.183568 AS "P_0", -0.183568 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  0.157624 AS "P_0", -0.157624 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.191416 AS "P_0", -0.191416 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  0.134829 AS "P_0", -0.134829 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.155816 AS "P_0", -0.155816 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  0.074322 AS "P_0", -0.074322 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  0.179864 AS "P_0", -0.179864 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  0.154460 AS "P_0", -0.154460 AS "P_1"
    UNION ALL
    SELECT 55 AS nid,  0.136246 AS "P_0", -0.136246 AS "P_1"
    UNION ALL
    SELECT 56 AS nid,  0.064923 AS "P_0", -0.064923 AS "P_1"
    UNION ALL
    SELECT 57 AS nid,  0.115852 AS "P_0", -0.115852 AS "P_1"
    UNION ALL
    SELECT 58 AS nid,  0.083326 AS "P_0", -0.083326 AS "P_1"
    UNION ALL
    SELECT 59 AS nid,  0.018922 AS "P_0", -0.018922 AS "P_1"
    UNION ALL
    SELECT 60 AS nid,  -0.034634 AS "P_0", 0.034634 AS "P_1"
    UNION ALL
    SELECT 61 AS nid,  0.102870 AS "P_0", -0.102870 AS "P_1"
    UNION ALL
    SELECT 62 AS nid,  0.029655 AS "P_0", -0.029655 AS "P_1"
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
    CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN 27 ELSE CASE WHEN (t."X_4" < 11.000000) THEN 43 ELSE 44 END END ELSE CASE WHEN (t."X_2" < 196308.000000) THEN 29 ELSE CASE WHEN (t."X_4" < 11.000000) THEN 45 ELSE 46 END END END ELSE 8 END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_4" < 9.000000) THEN 47 ELSE 48 END ELSE CASE WHEN (t."X_0" < 2.000000) THEN 49 ELSE 50 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_12" < 2.000000) THEN 53 ELSE 54 END END END ELSE CASE WHEN (t."X_0" < 4.000000) THEN 19 ELSE CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_2" < 130714.000000) THEN 55 ELSE 56 END ELSE 36 END END END END ELSE CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_2" < 65738.000000) THEN 21 ELSE 22 END ELSE CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_2" < 260254.000000) THEN 37 ELSE 38 END ELSE 24 END END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_12" < 1.000000) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_4" < 16.000000) THEN 59 ELSE 60 END END ELSE CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN 61 ELSE 62 END ELSE 42 END END ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 8 AS nid,  -0.099903 AS "P_0", 0.099903 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.215078 AS "P_0", 0.215078 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.210677 AS "P_0", 0.210677 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  0.119599 AS "P_0", -0.119599 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.174523 AS "P_0", -0.174522 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  0.114236 AS "P_0", -0.114236 AS "P_1"
    UNION ALL
    SELECT 27 AS nid,  0.185211 AS "P_0", -0.185211 AS "P_1"
    UNION ALL
    SELECT 29 AS nid,  0.160483 AS "P_0", -0.160483 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  -0.206838 AS "P_0", 0.206838 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  0.150419 AS "P_0", -0.150419 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  0.119989 AS "P_0", -0.119989 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  -0.094291 AS "P_0", 0.094291 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  0.175008 AS "P_0", -0.175008 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  0.145996 AS "P_0", -0.145996 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  0.139918 AS "P_0", -0.139918 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  0.031293 AS "P_0", -0.031293 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.144407 AS "P_0", -0.144407 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  0.089977 AS "P_0", -0.089977 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.081927 AS "P_0", -0.081927 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  0.018167 AS "P_0", -0.018167 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.141052 AS "P_0", -0.141052 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  0.069323 AS "P_0", -0.069323 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  0.086286 AS "P_0", -0.086286 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  0.002215 AS "P_0", -0.002215 AS "P_1"
    UNION ALL
    SELECT 55 AS nid,  -0.101870 AS "P_0", 0.101870 AS "P_1"
    UNION ALL
    SELECT 56 AS nid,  -0.164527 AS "P_0", 0.164527 AS "P_1"
    UNION ALL
    SELECT 57 AS nid,  0.121825 AS "P_0", -0.121825 AS "P_1"
    UNION ALL
    SELECT 58 AS nid,  0.024148 AS "P_0", -0.024148 AS "P_1"
    UNION ALL
    SELECT 59 AS nid,  -0.024171 AS "P_0", 0.024171 AS "P_1"
    UNION ALL
    SELECT 60 AS nid,  -0.094251 AS "P_0", 0.094251 AS "P_1"
    UNION ALL
    SELECT 61 AS nid,  0.009844 AS "P_0", -0.009844 AS "P_1"
    UNION ALL
    SELECT 62 AS nid,  -0.043887 AS "P_0", 0.043887 AS "P_1"
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
    CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_11" < 4.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_4" < 11.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN 35 ELSE 36 END ELSE CASE WHEN (t."X_12" < 2.000000) THEN 37 ELSE 38 END END ELSE CASE WHEN (t."X_2" < 130714.000000) THEN 23 ELSE CASE WHEN (t."X_4" < 11.000000) THEN 39 ELSE 40 END END END ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_4" < 11.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 41 ELSE 42 END ELSE CASE WHEN (t."X_0" < 2.000000) THEN 43 ELSE 44 END END ELSE 16 END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_4" < 9.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 45 ELSE 46 END ELSE CASE WHEN (t."X_12" < 3.000000) THEN 47 ELSE 48 END END ELSE CASE WHEN (t."X_4" < 9.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 49 ELSE 50 END ELSE CASE WHEN (t."X_10" < 4.000000) THEN 51 ELSE 52 END END END END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_4" < 16.000000) THEN 53 ELSE 54 END ELSE CASE WHEN (t."X_11" < 4.000000) THEN 55 ELSE 56 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_2" < 106069.000000) THEN 57 ELSE 58 END ELSE CASE WHEN (t."X_12" < 4.000000) THEN 59 ELSE 60 END END END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.206662 AS "P_0", 0.206662 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.050756 AS "P_0", 0.050756 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.191643 AS "P_0", 0.191643 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.126242 AS "P_0", 0.126242 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.149237 AS "P_0", -0.149237 AS "P_1"
    UNION ALL
    SELECT 35 AS nid,  0.173466 AS "P_0", -0.173466 AS "P_1"
    UNION ALL
    SELECT 36 AS nid,  0.161283 AS "P_0", -0.161283 AS "P_1"
    UNION ALL
    SELECT 37 AS nid,  0.159511 AS "P_0", -0.159511 AS "P_1"
    UNION ALL
    SELECT 38 AS nid,  0.134519 AS "P_0", -0.134519 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.123294 AS "P_0", -0.123294 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  0.089775 AS "P_0", -0.089775 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  0.157575 AS "P_0", -0.157575 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  0.125627 AS "P_0", -0.125627 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  0.137818 AS "P_0", -0.137818 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  0.069823 AS "P_0", -0.069823 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  0.148854 AS "P_0", -0.148854 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  0.116420 AS "P_0", -0.116420 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.088570 AS "P_0", -0.088570 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  0.040268 AS "P_0", -0.040268 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.100525 AS "P_0", -0.100525 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  0.049347 AS "P_0", -0.049347 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.019272 AS "P_0", -0.019272 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  -0.167282 AS "P_0", 0.167282 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  0.033006 AS "P_0", -0.033006 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  -0.118672 AS "P_0", 0.118672 AS "P_1"
    UNION ALL
    SELECT 55 AS nid,  -0.012118 AS "P_0", 0.012118 AS "P_1"
    UNION ALL
    SELECT 56 AS nid,  -0.181554 AS "P_0", 0.181554 AS "P_1"
    UNION ALL
    SELECT 57 AS nid,  0.009231 AS "P_0", -0.009231 AS "P_1"
    UNION ALL
    SELECT 58 AS nid,  -0.021587 AS "P_0", 0.021587 AS "P_1"
    UNION ALL
    SELECT 59 AS nid,  -0.072606 AS "P_0", 0.072606 AS "P_1"
    UNION ALL
    SELECT 60 AS nid,  0.002583 AS "P_0", -0.002583 AS "P_1"
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
    CASE WHEN (t."X_0" < 1.000000) THEN CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_4" < 11.000000) THEN 13 ELSE CASE WHEN (t."X_2" < 65738.000000) THEN 23 ELSE 24 END END ELSE CASE WHEN (t."X_11" < 4.000000) THEN CASE WHEN (t."X_4" < 11.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 39 ELSE 40 END ELSE CASE WHEN (t."X_2" < 130714.000000) THEN 41 ELSE 42 END END ELSE 16 END END ELSE 4 END ELSE CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_12" < 2.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 43 ELSE 44 END ELSE 28 END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_4" < 11.000000) THEN 45 ELSE 46 END ELSE CASE WHEN (t."X_10" < 4.000000) THEN 47 ELSE 48 END END END ELSE CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN 49 ELSE 50 END ELSE 32 END ELSE CASE WHEN (t."X_4" < 7.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 51 ELSE 52 END ELSE CASE WHEN (t."X_10" < 4.000000) THEN 53 ELSE 54 END END END END ELSE CASE WHEN (t."X_10" < 4.000000) THEN CASE WHEN (t."X_4" < 16.000000) THEN CASE WHEN (t."X_11" < 4.000000) THEN CASE WHEN (t."X_12" < 1.000000) THEN 55 ELSE 56 END ELSE CASE WHEN (t."X_12" < 2.000000) THEN 57 ELSE 58 END END ELSE CASE WHEN (t."X_12" < 1.000000) THEN CASE WHEN (t."X_0" < 4.000000) THEN 59 ELSE 60 END ELSE CASE WHEN (t."X_2" < 65738.000000) THEN 61 ELSE 62 END END END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.155641 AS "P_0", 0.155641 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.176319 AS "P_0", 0.176319 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.165231 AS "P_0", -0.165231 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.092229 AS "P_0", 0.092229 AS "P_1"
    UNION ALL
    SELECT 23 AS nid,  0.078147 AS "P_0", -0.078147 AS "P_1"
    UNION ALL
    SELECT 24 AS nid,  0.155096 AS "P_0", -0.155096 AS "P_1"
    UNION ALL
    SELECT 28 AS nid,  -0.114946 AS "P_0", 0.114946 AS "P_1"
    UNION ALL
    SELECT 32 AS nid,  -0.179052 AS "P_0", 0.179052 AS "P_1"
    UNION ALL
    SELECT 39 AS nid,  0.149942 AS "P_0", -0.149942 AS "P_1"
    UNION ALL
    SELECT 40 AS nid,  0.115209 AS "P_0", -0.115209 AS "P_1"
    UNION ALL
    SELECT 41 AS nid,  0.133642 AS "P_0", -0.133642 AS "P_1"
    UNION ALL
    SELECT 42 AS nid,  0.102540 AS "P_0", -0.102540 AS "P_1"
    UNION ALL
    SELECT 43 AS nid,  0.141115 AS "P_0", -0.141115 AS "P_1"
    UNION ALL
    SELECT 44 AS nid,  0.107282 AS "P_0", -0.107282 AS "P_1"
    UNION ALL
    SELECT 45 AS nid,  0.118280 AS "P_0", -0.118280 AS "P_1"
    UNION ALL
    SELECT 46 AS nid,  0.057018 AS "P_0", -0.057018 AS "P_1"
    UNION ALL
    SELECT 47 AS nid,  0.056423 AS "P_0", -0.056423 AS "P_1"
    UNION ALL
    SELECT 48 AS nid,  -0.091302 AS "P_0", 0.091302 AS "P_1"
    UNION ALL
    SELECT 49 AS nid,  0.065929 AS "P_0", -0.065928 AS "P_1"
    UNION ALL
    SELECT 50 AS nid,  0.025046 AS "P_0", -0.025046 AS "P_1"
    UNION ALL
    SELECT 51 AS nid,  0.091522 AS "P_0", -0.091522 AS "P_1"
    UNION ALL
    SELECT 52 AS nid,  0.028913 AS "P_0", -0.028913 AS "P_1"
    UNION ALL
    SELECT 53 AS nid,  -0.003621 AS "P_0", 0.003621 AS "P_1"
    UNION ALL
    SELECT 54 AS nid,  -0.145262 AS "P_0", 0.145262 AS "P_1"
    UNION ALL
    SELECT 55 AS nid,  0.055233 AS "P_0", -0.055233 AS "P_1"
    UNION ALL
    SELECT 56 AS nid,  -0.016554 AS "P_0", 0.016554 AS "P_1"
    UNION ALL
    SELECT 57 AS nid,  -0.027116 AS "P_0", 0.027116 AS "P_1"
    UNION ALL
    SELECT 58 AS nid,  -0.162887 AS "P_0", 0.162887 AS "P_1"
    UNION ALL
    SELECT 59 AS nid,  0.150189 AS "P_0", -0.150189 AS "P_1"
    UNION ALL
    SELECT 60 AS nid,  -0.142024 AS "P_0", 0.142024 AS "P_1"
    UNION ALL
    SELECT 61 AS nid,  -0.027509 AS "P_0", 0.027509 AS "P_1"
    UNION ALL
    SELECT 62 AS nid,  -0.110446 AS "P_0", 0.110446 AS "P_1"
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
   0.760718 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.239282 + SUM(t."P_1") AS "Score_1",
   CAST(NULL AS FLOAT) AS "Proba_1",
   CAST(NULL AS FLOAT) AS "LogProba_1"
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
   CAST(NULL AS BIGINT) AS "Decision",
   CAST(NULL AS FLOAT) AS "DecisionProba",
   GREATEST( t."Score_0", t."Score_1" ) AS "Greatest_Score"
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
    ( t1."Exp_Score_0" + t1."Exp_Score_1" ) AS "Sum_Exp"
  FROM
   ( SELECT t."index" as "index",
        t."Proba_0" AS "Proba_0",
        t."Score_0" AS "Score_0",
        t."Proba_1" AS "Proba_1",
        t."Score_1" AS "Score_1",
        EXP(t."Score_0" - t."Greatest_Score") as "Exp_Score_0",
        EXP(t."Score_1" - t."Greatest_Score") as "Exp_Score_1"
    FROM
       soft_max_orig_cte AS t
  ) AS t1
),
soft_max_cte AS 
( SELECT t1."index" AS "index",
    t1."Exp_Score_0" / t1."Sum_Exp" AS "Proba_0",
    t1."Score_0" AS "Score_0",
    t1."Exp_Score_1" / t1."Sum_Exp" AS "Proba_1",
    t1."Score_1" AS "Score_1"
 FROM 
   soft_max_cte_with_exp_deltas as t1
),
arg_max_cte_with_max_proba AS 
( SELECT t."index" AS "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    GREATEST( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    GREATEST( t."Score_0", t."Score_1" ) AS "Max_Score"
  FROM
     "soft_max_cte" AS t
),
arg_max_cte_with_max_proba_idx AS 
( SELECT t."index" as "index",
    t."Proba_0" AS "Proba_0",
    t."Score_0" AS "Score_0",
    t."Proba_1" AS "Proba_1",
    t."Score_1" AS "Score_1",
    CASE WHEN(t."Proba_0" = t."Max_Proba") THEN 0 else NULL END AS "max_idx_0",
    CASE WHEN(t."Proba_1" = t."Max_Proba") THEN 1 else NULL END AS "max_idx_1",
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
     t."Max_Proba" AS "Max_Proba",
     t."Max_Score" AS "Max_Score",
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