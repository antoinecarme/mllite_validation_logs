WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9", CAST("ADS"."X_10" AS FLOAT) AS "X_10", CAST("ADS"."X_11" AS FLOAT) AS "X_11", CAST("ADS"."X_12" AS FLOAT) AS "X_12", CAST("ADS"."X_13" AS FLOAT) AS "X_13"
  FROM "MLLITE_INPUT_TABLE" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_2" < 121441.000000) THEN CASE WHEN (t."X_2" < 67187.000000) THEN 7 ELSE CASE WHEN (t."X_4" < 10.000000) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_4" < 11.000000) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_2" < 200639.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 6 AS nid,  -0.197651 AS "P_0", 0.197651 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.164377 AS "P_0", -0.164377 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.198310 AS "P_0", -0.198310 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.073803 AS "P_0", -0.073803 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.047570 AS "P_0", -0.047570 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.011172 AS "P_0", -0.011172 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.073803 AS "P_0", -0.073803 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.107344 AS "P_0", 0.107344 AS "P_1"
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
    CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_4" < 11.000000) THEN 7 ELSE CASE WHEN (t."X_2" < 172009.000000) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_2" < 200639.000000) THEN CASE WHEN (t."X_2" < 105582.000000) THEN 15 ELSE 16 END ELSE 10 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_2" < 184655.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 6 AS nid,  -0.140801 AS "P_0", 0.140801 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.173966 AS "P_0", -0.173966 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.138391 AS "P_0", -0.138391 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.003041 AS "P_0", -0.003041 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.043990 AS "P_0", -0.043990 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.071433 AS "P_0", -0.071433 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.001454 AS "P_0", 0.001454 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.006532 AS "P_0", 0.006532 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.084288 AS "P_0", 0.084288 AS "P_1"
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
    CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_2" < 121441.000000) THEN CASE WHEN (t."X_2" < 67187.000000) THEN 7 ELSE CASE WHEN (t."X_4" < 10.000000) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_2" < 340543.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 15 ELSE CASE WHEN (t."X_2" < 200639.000000) THEN 19 ELSE 20 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_2" < 200639.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 6 AS nid,  -0.106565 AS "P_0", 0.106565 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.129583 AS "P_0", -0.129583 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.036816 AS "P_0", -0.036816 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.001741 AS "P_0", -0.001741 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.043288 AS "P_0", -0.043288 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.100988 AS "P_0", 0.100988 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.171007 AS "P_0", -0.171007 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.034620 AS "P_0", 0.034620 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.107370 AS "P_0", -0.107370 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  -0.008371 AS "P_0", 0.008371 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.123052 AS "P_0", -0.123052 AS "P_1"
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
    CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_2" < 121441.000000) THEN CASE WHEN (t."X_2" < 67187.000000) THEN 7 ELSE CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN 19 ELSE 20 END ELSE 16 END END ELSE CASE WHEN (t."X_4" < 11.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 17 ELSE CASE WHEN (t."X_2" < 200639.000000) THEN 21 ELSE 22 END END ELSE 10 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_2" < 184655.000000) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_0" < 3.000000) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 7 AS nid,  0.116028 AS "P_0", -0.116028 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.035951 AS "P_0", -0.035951 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.003793 AS "P_0", 0.003793 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.034409 AS "P_0", -0.034409 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.095588 AS "P_0", 0.095588 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.031277 AS "P_0", 0.031277 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.110201 AS "P_0", 0.110201 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.154674 AS "P_0", -0.154674 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.143731 AS "P_0", -0.143731 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  -0.122642 AS "P_0", 0.122642 AS "P_1"
    UNION ALL
    SELECT 21 AS nid,  -0.006929 AS "P_0", 0.006929 AS "P_1"
    UNION ALL
    SELECT 22 AS nid,  0.110697 AS "P_0", -0.110697 AS "P_1"
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
    CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 3 ELSE CASE WHEN (t."X_2" < 105582.000000) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_0" < 1.000000) THEN 5 ELSE CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_2" < 229656.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 19 ELSE 20 END ELSE 16 END ELSE 12 END ELSE CASE WHEN (t."X_2" < 172009.000000) THEN 13 ELSE CASE WHEN (t."X_0" < 2.000000) THEN 17 ELSE 18 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.144394 AS "P_0", -0.144394 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.130301 AS "P_0", -0.130301 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.009566 AS "P_0", 0.009566 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.090495 AS "P_0", -0.090495 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.072421 AS "P_0", 0.072421 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.110424 AS "P_0", 0.110424 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.031715 AS "P_0", 0.031715 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.028681 AS "P_0", -0.028681 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.054403 AS "P_0", 0.054403 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.132821 AS "P_0", -0.132821 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.035153 AS "P_0", -0.035153 AS "P_1"
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
"DT_node_lookup_5" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_2" < 67187.000000) THEN 5 ELSE CASE WHEN (t."X_0" < 1.000000) THEN 7 ELSE CASE WHEN (t."X_2" < 121441.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_2" < 184655.000000) THEN 15 ELSE 16 END ELSE 14 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.132905 AS "P_0", -0.132905 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.044242 AS "P_0", -0.044242 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.152171 AS "P_0", -0.152170 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.107795 AS "P_0", -0.107795 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.013565 AS "P_0", -0.013565 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.175721 AS "P_0", 0.175721 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.064033 AS "P_0", 0.064033 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.134686 AS "P_0", -0.134686 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.029098 AS "P_0", 0.029098 AS "P_1"
  ) AS "Values")
,
"DT_output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_2" < 184655.000000) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_2" < 67187.000000) THEN 5 ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_2" < 229656.000000) THEN CASE WHEN (t."X_2" < 150324.000000) THEN 15 ELSE 16 END ELSE 12 END ELSE CASE WHEN (t."X_2" < 121441.000000) THEN 13 ELSE CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_2" < 184655.000000) THEN 19 ELSE 20 END ELSE 18 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  0.127733 AS "P_0", -0.127733 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.135599 AS "P_0", -0.135599 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.032557 AS "P_0", 0.032557 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.093204 AS "P_0", -0.093204 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.088652 AS "P_0", 0.088652 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.169387 AS "P_0", 0.169387 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.021245 AS "P_0", -0.021245 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.139753 AS "P_0", -0.139753 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.056950 AS "P_0", 0.056950 AS "P_1"
    UNION ALL
    SELECT 19 AS nid,  0.110238 AS "P_0", -0.110238 AS "P_1"
    UNION ALL
    SELECT 20 AS nid,  0.010017 AS "P_0", -0.010017 AS "P_1"
  ) AS "Values")
,
"DT_output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_0" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_2" < 67187.000000) THEN 3 ELSE CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_2" < 121441.000000) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_2" < 150324.000000) THEN 9 ELSE 10 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.121142 AS "P_0", -0.121142 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.128846 AS "P_0", -0.128846 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.031660 AS "P_0", 0.031660 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.152465 AS "P_0", -0.152465 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.039920 AS "P_0", 0.039920 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.131403 AS "P_0", 0.131403 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.089363 AS "P_0", -0.089363 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.055173 AS "P_0", 0.055173 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  -0.093050 AS "P_0", 0.093050 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  0.003095 AS "P_0", -0.003095 AS "P_1"
  ) AS "Values")
,
"DT_output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_0" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_2" < 67187.000000) THEN 3 ELSE CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_2" < 121441.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_2" < 172009.000000) THEN 17 ELSE 18 END END ELSE CASE WHEN (t."X_0" < 2.000000) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_2" < 150324.000000) THEN 9 ELSE 10 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.111013 AS "P_0", -0.111013 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  0.115087 AS "P_0", -0.115087 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.026911 AS "P_0", 0.026911 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.137244 AS "P_0", -0.137244 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.031078 AS "P_0", 0.031078 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.116770 AS "P_0", 0.116770 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.000901 AS "P_0", -0.000901 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.075999 AS "P_0", 0.075999 AS "P_1"
    UNION ALL
    SELECT 17 AS nid,  0.110710 AS "P_0", -0.110710 AS "P_1"
    UNION ALL
    SELECT 18 AS nid,  -0.020135 AS "P_0", 0.020135 AS "P_1"
  ) AS "Values")
,
"DT_output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_12" < 2.000000) THEN 5 ELSE CASE WHEN (t."X_2" < 229656.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 9 ELSE CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_2" < 172009.000000) THEN 13 ELSE 14 END ELSE 12 END END ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.021958 AS "P_0", -0.021958 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.117120 AS "P_0", -0.117120 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.097790 AS "P_0", 0.097790 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.044673 AS "P_0", 0.044673 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.143812 AS "P_0", -0.143812 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.080157 AS "P_0", 0.080157 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.023669 AS "P_0", 0.023669 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.046716 AS "P_0", -0.046716 AS "P_1"
  ) AS "Values")
,
"DT_output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_0" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_2" < 184655.000000) THEN CASE WHEN (t."X_2" < 150324.000000) THEN CASE WHEN (t."X_2" < 105582.000000) THEN 15 ELSE 16 END ELSE 12 END ELSE CASE WHEN (t."X_2" < 200639.000000) THEN 13 ELSE 14 END END ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.100676 AS "P_0", -0.100676 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.016766 AS "P_0", 0.016766 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.106778 AS "P_0", -0.106778 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.038395 AS "P_0", -0.038395 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.060456 AS "P_0", -0.060456 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.105460 AS "P_0", 0.105460 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.015437 AS "P_0", 0.015437 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.025874 AS "P_0", -0.025874 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.031032 AS "P_0", 0.031032 AS "P_1"
  ) AS "Values")
,
"DT_output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_2" < 67187.000000) THEN 1 ELSE CASE WHEN (t."X_2" < 150324.000000) THEN CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_2" < 105582.000000) THEN 9 ELSE 10 END ELSE 6 END ELSE CASE WHEN (t."X_4" < 10.000000) THEN 7 ELSE CASE WHEN (t."X_2" < 229656.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 13 ELSE CASE WHEN (t."X_12" < 3.000000) THEN 15 ELSE 16 END END ELSE 12 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.106073 AS "P_0", -0.106073 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.104238 AS "P_0", 0.104238 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.088256 AS "P_0", -0.088256 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.044026 AS "P_0", 0.044026 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.034268 AS "P_0", -0.034268 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.029044 AS "P_0", 0.029044 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.114535 AS "P_0", -0.114535 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.026008 AS "P_0", -0.026008 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.074911 AS "P_0", 0.074911 AS "P_1"
  ) AS "Values")
,
"DT_output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_0" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_12" < 2.000000) THEN 3 ELSE CASE WHEN (t."X_2" < 229656.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 11 ELSE CASE WHEN (t."X_2" < 172009.000000) THEN 15 ELSE 16 END END ELSE CASE WHEN (t."X_2" < 121441.000000) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_2" < 340543.000000) THEN 9 ELSE 10 END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.090974 AS "P_0", -0.090974 AS "P_1"
    UNION ALL
    SELECT 3 AS nid,  -0.069949 AS "P_0", 0.069949 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.038744 AS "P_0", 0.038744 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.001232 AS "P_0", 0.001232 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.111065 AS "P_0", -0.111065 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.049632 AS "P_0", 0.049632 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.011053 AS "P_0", -0.011053 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  -0.007739 AS "P_0", 0.007739 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  0.040316 AS "P_0", -0.040316 AS "P_1"
  ) AS "Values")
,
"DT_output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_12" < 2.000000) THEN 5 ELSE CASE WHEN (t."X_2" < 184655.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 9 ELSE CASE WHEN (t."X_2" < 121441.000000) THEN 13 ELSE 14 END END ELSE CASE WHEN (t."X_2" < 200639.000000) THEN 11 ELSE CASE WHEN (t."X_4" < 13.000000) THEN 15 ELSE 16 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.006850 AS "P_0", -0.006850 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.102377 AS "P_0", -0.102377 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.077901 AS "P_0", 0.077901 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.092969 AS "P_0", -0.092969 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.038332 AS "P_0", 0.038332 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  -0.048309 AS "P_0", 0.048309 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  0.054332 AS "P_0", -0.054332 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.029876 AS "P_0", -0.029876 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.023770 AS "P_0", 0.023770 AS "P_1"
  ) AS "Values")
,
"DT_output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_0" < 1.000000) THEN 1 ELSE CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_4" < 10.000000) THEN 5 ELSE CASE WHEN (t."X_2" < 184655.000000) THEN CASE WHEN (t."X_2" < 150324.000000) THEN CASE WHEN (t."X_2" < 105582.000000) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_2" < 200639.000000) THEN 11 ELSE 12 END END END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.083567 AS "P_0", -0.083567 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.063381 AS "P_0", -0.063381 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.030301 AS "P_0", -0.030301 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.031717 AS "P_0", -0.031717 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.091076 AS "P_0", 0.091076 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.016029 AS "P_0", 0.016029 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.024415 AS "P_0", -0.024415 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.025863 AS "P_0", 0.025863 AS "P_1"
  ) AS "Values")
,
"DT_output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_4" < 11.000000) THEN CASE WHEN (t."X_2" < 121441.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < 3.000000) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_2" < 229656.000000) THEN CASE WHEN (t."X_2" < 172009.000000) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 6 AS nid,  -0.077028 AS "P_0", 0.077028 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.012072 AS "P_0", -0.012072 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.048341 AS "P_0", 0.048341 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.106500 AS "P_0", -0.106500 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.021075 AS "P_0", -0.021075 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.033312 AS "P_0", 0.033312 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.067025 AS "P_0", -0.067025 AS "P_1"
  ) AS "Values")
,
"DT_output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_4" < 10.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_2" < 105582.000000) THEN 5 ELSE CASE WHEN (t."X_4" < 13.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_4" < 11.000000) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_2" < 172009.000000) THEN 11 ELSE CASE WHEN (t."X_2" < 200639.000000) THEN 15 ELSE 16 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  -0.006918 AS "P_0", 0.006918 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.090890 AS "P_0", -0.090890 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.036738 AS "P_0", -0.036738 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.023773 AS "P_0", 0.023773 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.114957 AS "P_0", 0.114957 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.086140 AS "P_0", -0.086140 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.004105 AS "P_0", 0.004105 AS "P_1"
    UNION ALL
    SELECT 15 AS nid,  0.026090 AS "P_0", -0.026090 AS "P_1"
    UNION ALL
    SELECT 16 AS nid,  -0.016063 AS "P_0", 0.016063 AS "P_1"
  ) AS "Values")
,
"DT_output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_2" < 200639.000000) THEN CASE WHEN (t."X_2" < 184655.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_4" < 11.000000) THEN 11 ELSE 12 END ELSE CASE WHEN (t."X_2" < 105582.000000) THEN 13 ELSE 14 END END ELSE 6 END ELSE CASE WHEN (t."X_4" < 13.000000) THEN 7 ELSE 8 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.054221 AS "P_0", -0.054221 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.086223 AS "P_0", 0.086223 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.042067 AS "P_0", -0.042067 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.013479 AS "P_0", 0.013479 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.018756 AS "P_0", 0.018756 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.013479 AS "P_0", -0.013479 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.051074 AS "P_0", -0.051074 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.005759 AS "P_0", 0.005759 AS "P_1"
  ) AS "Values")
,
"DT_output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_4" < 10.000000) THEN 1 ELSE CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_2" < 121441.000000) THEN 5 ELSE CASE WHEN (t."X_4" < 13.000000) THEN 9 ELSE CASE WHEN (t."X_0" < 2.000000) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_2" < 121441.000000) THEN 7 ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.041540 AS "P_0", -0.041540 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.068874 AS "P_0", -0.068874 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.108963 AS "P_0", 0.108963 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.048236 AS "P_0", -0.048236 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.033403 AS "P_0", -0.033403 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.005547 AS "P_0", 0.005547 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.091732 AS "P_0", 0.091732 AS "P_1"
  ) AS "Values")
,
"DT_output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_2" < 229656.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_2" < 121441.000000) THEN 9 ELSE CASE WHEN (t."X_0" < 2.000000) THEN 11 ELSE 12 END END ELSE 8 END ELSE 6 END ELSE 4 END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.047925 AS "P_0", -0.047925 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.032297 AS "P_0", 0.032297 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.024269 AS "P_0", 0.024269 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.027506 AS "P_0", 0.027506 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.102467 AS "P_0", -0.102467 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.026894 AS "P_0", -0.026894 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.045247 AS "P_0", 0.045248 AS "P_1"
  ) AS "Values")
,
"DT_output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_2" < 121441.000000) THEN CASE WHEN (t."X_2" < 105582.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_4" < 11.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN 9 ELSE 10 END ELSE CASE WHEN (t."X_2" < 229656.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 13 ELSE 14 END ELSE 12 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.053180 AS "P_0", 0.053180 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.032618 AS "P_0", -0.032618 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.023105 AS "P_0", 0.023105 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.091928 AS "P_0", -0.091928 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.013234 AS "P_0", -0.013234 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.060901 AS "P_0", 0.060901 AS "P_1"
    UNION ALL
    SELECT 13 AS nid,  0.034289 AS "P_0", -0.034289 AS "P_1"
    UNION ALL
    SELECT 14 AS nid,  -0.000933 AS "P_0", 0.000933 AS "P_1"
  ) AS "Values")
,
"DT_output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_12" < 2.000000) THEN 1 ELSE CASE WHEN (t."X_2" < 121441.000000) THEN CASE WHEN (t."X_4" < 11.000000) THEN 5 ELSE 6 END ELSE CASE WHEN (t."X_2" < 184655.000000) THEN 7 ELSE CASE WHEN (t."X_2" < 200639.000000) THEN 9 ELSE CASE WHEN (t."X_4" < 13.000000) THEN 11 ELSE 12 END END END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  -0.038271 AS "P_0", 0.038271 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  -0.047075 AS "P_0", 0.047075 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.033011 AS "P_0", -0.033011 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.067198 AS "P_0", -0.067198 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.023728 AS "P_0", 0.023728 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.036269 AS "P_0", -0.036269 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.001289 AS "P_0", 0.001289 AS "P_1"
  ) AS "Values")
,
"DT_output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_4" < 10.000000) THEN 1 ELSE CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_2" < 121441.000000) THEN 7 ELSE CASE WHEN (t."X_4" < 13.000000) THEN 9 ELSE CASE WHEN (t."X_2" < 200639.000000) THEN 11 ELSE 12 END END END ELSE 6 END ELSE 4 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.037573 AS "P_0", -0.037573 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  0.026869 AS "P_0", -0.026869 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.059098 AS "P_0", 0.059098 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.052556 AS "P_0", -0.052556 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.025196 AS "P_0", -0.025196 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.055602 AS "P_0", 0.055602 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.001084 AS "P_0", 0.001084 AS "P_1"
  ) AS "Values")
,
"DT_output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_2" < 121441.000000) THEN CASE WHEN (t."X_2" < 105582.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_4" < 11.000000) THEN 5 ELSE CASE WHEN (t."X_2" < 229656.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 11 ELSE 12 END ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.048618 AS "P_0", 0.048618 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.056799 AS "P_0", -0.056799 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.028361 AS "P_0", -0.028361 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.017817 AS "P_0", 0.017817 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.055153 AS "P_0", 0.055153 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.036399 AS "P_0", -0.036399 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.002434 AS "P_0", -0.002434 AS "P_1"
  ) AS "Values")
,
"DT_output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_2" < 200639.000000) THEN CASE WHEN (t."X_2" < 184655.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 9 ELSE CASE WHEN (t."X_12" < 3.000000) THEN 11 ELSE 12 END END ELSE 6 END ELSE CASE WHEN (t."X_4" < 13.000000) THEN 7 ELSE 8 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.038221 AS "P_0", -0.038221 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.062200 AS "P_0", 0.062200 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.024120 AS "P_0", -0.024120 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.003593 AS "P_0", -0.003593 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.018322 AS "P_0", 0.018322 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.011360 AS "P_0", 0.011360 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.047964 AS "P_0", -0.047964 AS "P_1"
  ) AS "Values")
,
"DT_output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_2" < 150324.000000) THEN CASE WHEN (t."X_2" < 105582.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_2" < 229656.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 9 ELSE CASE WHEN (t."X_0" < 3.000000) THEN 11 ELSE 12 END END ELSE 6 END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.032256 AS "P_0", 0.032256 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.011737 AS "P_0", 0.011737 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.025126 AS "P_0", -0.025126 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.015500 AS "P_0", 0.015500 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.095728 AS "P_0", -0.095728 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.027523 AS "P_0", 0.027523 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.001601 AS "P_0", -0.001601 AS "P_1"
  ) AS "Values")
,
"DT_output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_0" < 4.000000) THEN CASE WHEN (t."X_2" < 200639.000000) THEN CASE WHEN (t."X_2" < 184655.000000) THEN CASE WHEN (t."X_0" < 2.000000) THEN 9 ELSE CASE WHEN (t."X_12" < 3.000000) THEN 11 ELSE 12 END END ELSE 6 END ELSE CASE WHEN (t."X_4" < 13.000000) THEN 7 ELSE 8 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.034173 AS "P_0", -0.034173 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  -0.056540 AS "P_0", 0.056540 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.020964 AS "P_0", -0.020964 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.000281 AS "P_0", -0.000281 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.013988 AS "P_0", 0.013988 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.010025 AS "P_0", 0.010025 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.044901 AS "P_0", -0.044901 AS "P_1"
  ) AS "Values")
,
"DT_output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_2" < 121441.000000) THEN CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_4" < 11.000000) THEN 5 ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_2" < 229656.000000) THEN 11 ELSE 12 END ELSE 10 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 4 AS nid,  -0.043025 AS "P_0", 0.043025 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.048417 AS "P_0", -0.048417 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  0.088947 AS "P_0", -0.088947 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.073332 AS "P_0", 0.073332 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.041300 AS "P_0", -0.041300 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  0.030395 AS "P_0", -0.030395 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  -0.097218 AS "P_0", 0.097218 AS "P_1"
  ) AS "Values")
,
"DT_output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_4" < 10.000000) THEN 1 ELSE CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_2" < 121441.000000) THEN 5 ELSE CASE WHEN (t."X_4" < 13.000000) THEN 9 ELSE CASE WHEN (t."X_2" < 200639.000000) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_2" < 150324.000000) THEN 7 ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.032703 AS "P_0", -0.032703 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.042194 AS "P_0", -0.042194 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.045937 AS "P_0", 0.045937 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.002429 AS "P_0", -0.002429 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.016753 AS "P_0", -0.016753 AS "P_1"
    UNION ALL
    SELECT 11 AS nid,  -0.046326 AS "P_0", 0.046326 AS "P_1"
    UNION ALL
    SELECT 12 AS nid,  0.010304 AS "P_0", -0.010304 AS "P_1"
  ) AS "Values")
,
"DT_output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_2" < 121441.000000) THEN CASE WHEN (t."X_2" < 105582.000000) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_4" < 11.000000) THEN 5 ELSE CASE WHEN (t."X_0" < 2.000000) THEN CASE WHEN (t."X_2" < 229656.000000) THEN 9 ELSE 10 END ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 3 AS nid,  0.005598 AS "P_0", -0.005598 AS "P_1"
    UNION ALL
    SELECT 4 AS nid,  -0.041522 AS "P_0", 0.041522 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.040262 AS "P_0", -0.040262 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  0.036392 AS "P_0", -0.036392 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.030669 AS "P_0", -0.030669 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.082161 AS "P_0", 0.082161 AS "P_1"
  ) AS "Values")
,
"DT_output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_2" < 200639.000000) THEN CASE WHEN (t."X_12" < 3.000000) THEN CASE WHEN (t."X_2" < 172009.000000) THEN CASE WHEN (t."X_4" < 13.000000) THEN 9 ELSE 10 END ELSE 6 END ELSE CASE WHEN (t."X_0" < 3.000000) THEN 7 ELSE 8 END END ELSE 2 END AS node_id
  FROM model_input t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 2 AS nid,  0.024229 AS "P_0", -0.024229 AS "P_1"
    UNION ALL
    SELECT 6 AS nid,  0.054627 AS "P_0", -0.054627 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.058061 AS "P_0", 0.058061 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.002769 AS "P_0", 0.002769 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  0.025230 AS "P_0", -0.025230 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  -0.053624 AS "P_0", 0.053624 AS "P_1"
  ) AS "Values")
,
"DT_output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
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
    CASE WHEN (t."X_4" < 10.000000) THEN 1 ELSE CASE WHEN (t."X_0" < 3.000000) THEN CASE WHEN (t."X_2" < 121441.000000) THEN 5 ELSE CASE WHEN (t."X_2" < 340543.000000) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_2" < 150324.000000) THEN 7 ELSE 8 END END END AS node_id
  FROM model_input t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."P_0" AS "P_0", "Values"."P_1" AS "P_1"
  FROM (
    SELECT 1 AS nid,  0.028544 AS "P_0", -0.028544 AS "P_1"
    UNION ALL
    SELECT 5 AS nid,  0.043563 AS "P_0", -0.043563 AS "P_1"
    UNION ALL
    SELECT 7 AS nid,  -0.038859 AS "P_0", 0.038859 AS "P_1"
    UNION ALL
    SELECT 8 AS nid,  -0.007661 AS "P_0", 0.007661 AS "P_1"
    UNION ALL
    SELECT 9 AS nid,  -0.024244 AS "P_0", 0.024244 AS "P_1"
    UNION ALL
    SELECT 10 AS nid,  0.012375 AS "P_0", -0.012375 AS "P_1"
  ) AS "Values")
,
"DT_output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."P_0" AS "P_0", t2."P_1" AS "P_1"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
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
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."P_0" AS "P_0", t."P_1" AS "P_1" FROM "DT_output_31" AS t
  ) AS scu
),
model_scores_cte AS 
( SELECT
   t."index" AS "index",
   0.781250 + SUM(t."P_0") AS "Score_0",
   CAST(NULL AS FLOAT) AS "Proba_0",
   CAST(NULL AS FLOAT) AS "LogProba_0",
   0.218750 + SUM(t."P_1") AS "Score_1",
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
   MAX( t."Score_0", t."Score_1" ) AS "Greatest_Score"
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
    MAX( t."Proba_0", t."Proba_1" ) AS "Max_Proba",
    MAX( t."Score_0", t."Score_1" ) AS "Max_Score"
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