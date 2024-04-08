WITH model_input AS 
 (SELECT "ADS"."index" AS "index",
    CAST("ADS"."X_0" AS FLOAT) AS "X_0", CAST("ADS"."X_1" AS FLOAT) AS "X_1", CAST("ADS"."X_2" AS FLOAT) AS "X_2", CAST("ADS"."X_3" AS FLOAT) AS "X_3", CAST("ADS"."X_4" AS FLOAT) AS "X_4", CAST("ADS"."X_5" AS FLOAT) AS "X_5", CAST("ADS"."X_6" AS FLOAT) AS "X_6", CAST("ADS"."X_7" AS FLOAT) AS "X_7", CAST("ADS"."X_8" AS FLOAT) AS "X_8", CAST("ADS"."X_9" AS FLOAT) AS "X_9"
  FROM "freidman1_tiny" AS "ADS" 
 ),
"DT_node_lookup_0" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_1" < 0.284076) THEN CASE WHEN (t."X_3" < 0.731889) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_4" < 0.553400) THEN CASE WHEN (t."X_0" < 0.830477) THEN CASE WHEN (t."X_6" < 0.588332) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_5" < 0.942998) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_0" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -1.140966 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.117698 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.657875 AS "E"
    UNION ALL
    SELECT 9 AS nid,  1.361974 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.059653 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.071881 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.038478 AS "E"
  ) AS "Values"
 )
,
"DT_output_0" AS 
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
 )
,
"DT_node_lookup_1" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_1" < 0.284076) THEN CASE WHEN (t."X_2" < 0.380885) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_4" < 0.553400) THEN CASE WHEN (t."X_0" < 0.830477) THEN CASE WHEN (t."X_6" < 0.588332) THEN CASE WHEN (t."X_0" < 0.399336) THEN 13 ELSE 14 END ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_5" < 0.942998) THEN 9 ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_1" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.100044 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.867134 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.526300 AS "E"
    UNION ALL
    SELECT 9 AS nid,  1.021480 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.050705 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.032707 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.016204 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.070053 AS "E"
  ) AS "Values"
 )
,
"DT_output_1" AS 
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
 )
,
"DT_node_lookup_2" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_1" < 0.284076) THEN CASE WHEN (t."X_2" < 0.380885) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_4" < 0.553400) THEN CASE WHEN (t."X_0" < 0.830477) THEN CASE WHEN (t."X_6" < 0.588332) THEN CASE WHEN (t."X_0" < 0.399336) THEN 15 ELSE 16 END ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_5" < 0.942998) THEN CASE WHEN (t."X_0" < 0.544738) THEN 13 ELSE 14 END ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_2" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.085037 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.659022 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.421040 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.043099 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.027801 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.323422 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.906599 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.013773 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.059545 AS "E"
  ) AS "Values"
 )
,
"DT_output_2" AS 
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
 )
,
"DT_node_lookup_3" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_3" < 0.731889) THEN CASE WHEN (t."X_2" < 0.823855) THEN 3 ELSE CASE WHEN (t."X_2" < 0.971058) THEN 7 ELSE CASE WHEN (t."X_0" < 0.652811) THEN 11 ELSE 12 END END END ELSE CASE WHEN (t."X_7" < 0.403574) THEN 5 ELSE CASE WHEN (t."X_4" < 0.763064) THEN CASE WHEN (t."X_1" < 0.628863) THEN 13 ELSE 14 END ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_3" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.502112 AS "E"
    UNION ALL
    SELECT 5 AS nid,  0.626919 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.346544 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.192952 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.023631 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.050614 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.072611 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.011707 AS "E"
  ) AS "Values"
 )
,
"DT_output_3" AS 
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
 )
,
"DT_node_lookup_4" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_1" < 0.378970) THEN CASE WHEN (t."X_6" < 0.291713) THEN 3 ELSE CASE WHEN (t."X_2" < 0.670056) THEN 7 ELSE 8 END END ELSE CASE WHEN (t."X_4" < 0.387555) THEN CASE WHEN (t."X_0" < 0.652811) THEN CASE WHEN (t."X_0" < 0.399336) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_1" < 0.628863) THEN 15 ELSE 16 END ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_4" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.069608 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.435671 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.079534 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.236410 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.582585 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.009951 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.020086 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.025743 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.176751 AS "E"
  ) AS "Values"
 )
,
"DT_output_4" AS 
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
 )
,
"DT_node_lookup_5" AS 
 (SELECT
    t."index" AS "index",
    CASE WHEN (t."X_1" < 0.378970) THEN CASE WHEN (t."X_4" < 0.553400) THEN CASE WHEN (t."X_1" < 0.284076) THEN 7 ELSE 8 END ELSE 4 END ELSE CASE WHEN (t."X_4" < 0.387555) THEN CASE WHEN (t."X_0" < 0.652811) THEN CASE WHEN (t."X_0" < 0.399336) THEN 13 ELSE 14 END ELSE 10 END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_1" < 0.628863) THEN 15 ELSE 16 END ELSE 12 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_5" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 4 AS nid,  -0.367529 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.121274 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.032580 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.189128 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.451504 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.008458 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.017073 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.021881 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.141401 AS "E"
  ) AS "Values"
 )
,
"DT_output_5" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_3" < 0.731889) THEN CASE WHEN (t."X_2" < 0.670056) THEN 3 ELSE CASE WHEN (t."X_3" < 0.441636) THEN CASE WHEN (t."X_0" < 0.652811) THEN 11 ELSE 12 END ELSE 8 END END ELSE CASE WHEN (t."X_6" < 0.588332) THEN CASE WHEN (t."X_4" < 0.763064) THEN CASE WHEN (t."X_1" < 0.628863) THEN 13 ELSE 14 END ELSE 10 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_6" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.291775 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.373588 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.139449 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.113121 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.014512 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.060730 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.034238 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.007190 AS "E"
  ) AS "Values"
 )
,
"DT_output_6" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_3" < 0.731889) THEN CASE WHEN (t."X_2" < 0.670056) THEN CASE WHEN (t."X_3" < 0.670145) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_3" < 0.441636) THEN CASE WHEN (t."X_0" < 0.652811) THEN 13 ELSE 14 END ELSE 10 END END ELSE CASE WHEN (t."X_6" < 0.588332) THEN CASE WHEN (t."X_4" < 0.763064) THEN CASE WHEN (t."X_1" < 0.628863) THEN 15 ELSE 16 END ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_7" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.298870 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.246167 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.062039 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.118532 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.090496 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.012335 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.047066 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.027390 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.006111 AS "E"
  ) AS "Values"
 )
,
"DT_output_7" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.284076) THEN CASE WHEN (t."X_4" < 0.553400) THEN 3 ELSE 4 END ELSE CASE WHEN (t."X_4" < 0.553400) THEN CASE WHEN (t."X_0" < 0.830477) THEN CASE WHEN (t."X_6" < 0.588332) THEN 11 ELSE 12 END ELSE 8 END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_1" < 0.628863) THEN 13 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 15 ELSE 16 END END ELSE 10 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_8" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.054745 AS "E"
    UNION ALL
    SELECT 4 AS nid,  -0.186435 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.086728 AS "E"
    UNION ALL
    SELECT 10 AS nid,  0.229698 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.011146 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.010485 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.009355 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.085744 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.022852 AS "E"
  ) AS "Values"
 )
,
"DT_output_8" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_3" < 0.731889) THEN CASE WHEN (t."X_2" < 0.670056) THEN 3 ELSE CASE WHEN (t."X_3" < 0.441636) THEN CASE WHEN (t."X_0" < 0.652811) THEN 11 ELSE 12 END ELSE 8 END END ELSE CASE WHEN (t."X_6" < 0.588332) THEN CASE WHEN (t."X_4" < 0.763064) THEN CASE WHEN (t."X_1" < 0.628863) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_0" < 0.235384) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_9" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 3 AS nid,  -0.142856 AS "E"
    UNION ALL
    SELECT 6 AS nid,  0.193156 AS "E"
    UNION ALL
    SELECT 8 AS nid,  0.066297 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.008912 AS "E"
    UNION ALL
    SELECT 12 AS nid,  -0.025030 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.015502 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.003523 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.072882 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.019424 AS "E"
  ) AS "Values"
 )
,
"DT_output_9" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.486969) THEN CASE WHEN (t."X_2" < 0.823855) THEN CASE WHEN (t."X_8" < 0.479506) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < 0.825366) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_4" < 0.763064) THEN CASE WHEN (t."X_2" < 0.782862) THEN CASE WHEN (t."X_1" < 0.628863) THEN 15 ELSE 16 END ELSE 12 END ELSE CASE WHEN (t."X_3" < 0.837489) THEN 13 ELSE 14 END END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_10" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 7 AS nid,  -0.028673 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.124167 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.045033 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.006098 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.007575 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.152528 AS "E"
    UNION ALL
    SELECT 14 AS nid,  0.016511 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.011365 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.002994 AS "E"
  ) AS "Values"
 )
,
"DT_output_10" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_2" < 0.670056) THEN CASE WHEN (t."X_3" < 0.670145) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_0" < 0.825366) THEN CASE WHEN (t."X_1" < 0.502155) THEN 13 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 15 ELSE 16 END END ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_11" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.163875 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.096229 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.018311 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.015938 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.002545 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.035403 AS "E"
    UNION ALL
    SELECT 13 AS nid,  0.047835 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.003922 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.006439 AS "E"
  ) AS "Values"
 )
,
"DT_output_11" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_2" < 0.670056) THEN CASE WHEN (t."X_3" < 0.670145) THEN 7 ELSE 8 END ELSE CASE WHEN (t."X_2" < 0.823855) THEN CASE WHEN (t."X_0" < 0.235384) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_2" < 0.971058) THEN 15 ELSE CASE WHEN (t."X_0" < 0.652811) THEN 19 ELSE 20 END END END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 17 ELSE 18 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_12" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.139293 AS "E"
    UNION ALL
    SELECT 7 AS nid,  -0.074578 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.014649 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.002163 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.003334 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.014608 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.038268 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.033760 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.008724 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.005473 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.002792 AS "E"
  ) AS "Values"
 )
,
"DT_output_12" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_2" < 0.823855) THEN CASE WHEN (t."X_4" < 0.763064) THEN CASE WHEN (t."X_3" < 0.731889) THEN CASE WHEN (t."X_1" < 0.486969) THEN 19 ELSE 20 END ELSE 14 END ELSE 8 END ELSE CASE WHEN (t."X_2" < 0.971058) THEN 9 ELSE CASE WHEN (t."X_0" < 0.652811) THEN 15 ELSE 16 END END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 17 ELSE 18 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_13" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.118399 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.075648 AS "E"
    UNION ALL
    SELECT 9 AS nid,  0.030614 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.001839 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.004376 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.004652 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.002373 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.028696 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.007415 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.026476 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.005135 AS "E"
  ) AS "Values"
 )
,
"DT_output_13" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_2" < 0.670056) THEN CASE WHEN (t."X_0" < 0.825366) THEN CASE WHEN (t."X_0" < 0.399336) THEN 13 ELSE 14 END ELSE 8 END ELSE CASE WHEN (t."X_2" < 0.823855) THEN CASE WHEN (t."X_0" < 0.235384) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_2" < 0.971058) THEN 17 ELSE CASE WHEN (t."X_0" < 0.652811) THEN 21 ELSE 22 END END END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 19 ELSE 20 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_14" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.100640 AS "E"
    UNION ALL
    SELECT 8 AS nid,  -0.055702 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.001563 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.015086 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.003075 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.002177 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.008525 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.024491 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.024392 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.006303 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.003955 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.002017 AS "E"
  ) AS "Values"
 )
,
"DT_output_14" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_2" < 0.782862) THEN CASE WHEN (t."X_3" < 0.731889) THEN CASE WHEN (t."X_1" < 0.486969) THEN 19 ELSE 20 END ELSE 14 END ELSE CASE WHEN (t."X_2" < 0.971058) THEN 15 ELSE CASE WHEN (t."X_0" < 0.652811) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 17 ELSE 18 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_15" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.085544 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.055946 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.007145 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.001329 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.002976 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.019593 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.020733 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.005357 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.014500 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.003086 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.003361 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.001715 AS "E"
  ) AS "Values"
 )
,
"DT_output_15" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_2" < 0.782862) THEN CASE WHEN (t."X_3" < 0.731889) THEN CASE WHEN (t."X_1" < 0.486969) THEN 19 ELSE 20 END ELSE 14 END ELSE CASE WHEN (t."X_2" < 0.971058) THEN 15 ELSE CASE WHEN (t."X_0" < 0.652811) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 17 ELSE 18 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_16" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.072712 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.047554 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.006073 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.001129 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.002381 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.015674 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.017623 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.004554 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.011237 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.002623 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.002857 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.001458 AS "E"
  ) AS "Values"
 )
,
"DT_output_16" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_2" < 0.782862) THEN CASE WHEN (t."X_3" < 0.731889) THEN CASE WHEN (t."X_1" < 0.486969) THEN 19 ELSE 20 END ELSE 14 END ELSE CASE WHEN (t."X_2" < 0.971058) THEN 15 ELSE CASE WHEN (t."X_0" < 0.652811) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 17 ELSE 18 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_17" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.061805 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.040421 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.005162 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000960 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.001905 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.012539 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.014979 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.003871 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.008709 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.002230 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.002428 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.001239 AS "E"
  ) AS "Values"
 )
,
"DT_output_17" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_2" < 0.782862) THEN CASE WHEN (t."X_3" < 0.731889) THEN 13 ELSE 14 END ELSE CASE WHEN (t."X_2" < 0.971058) THEN 15 ELSE CASE WHEN (t."X_0" < 0.652811) THEN 19 ELSE 20 END END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 17 ELSE 18 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_18" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.052534 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.034358 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.004388 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000816 AS "E"
    UNION ALL
    SELECT 13 AS nid,  -0.006158 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.001524 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.010032 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.012732 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.003290 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.002064 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.001053 AS "E"
  ) AS "Values"
 )
,
"DT_output_18" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_2" < 0.782862) THEN CASE WHEN (t."X_7" < 0.653572) THEN CASE WHEN (t."X_2" < 0.380885) THEN 19 ELSE 20 END ELSE 14 END ELSE CASE WHEN (t."X_2" < 0.971058) THEN 15 ELSE CASE WHEN (t."X_0" < 0.652811) THEN 21 ELSE 22 END END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 17 ELSE 18 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_19" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.044654 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.029204 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.003729 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000694 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.001513 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.008026 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.010823 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.002797 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.001296 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.006137 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.001755 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.000895 AS "E"
  ) AS "Values"
 )
,
"DT_output_19" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_2" < 0.782862) THEN CASE WHEN (t."X_1" < 0.486969) THEN CASE WHEN (t."X_2" < 0.475292) THEN 19 ELSE 20 END ELSE 14 END ELSE CASE WHEN (t."X_0" < 0.825366) THEN CASE WHEN (t."X_1" < 0.502155) THEN 21 ELSE 22 END ELSE 16 END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 17 ELSE 18 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_20" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.037956 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.024823 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.003170 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000590 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000700 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.000761 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.009199 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.002377 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.001598 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.004910 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.006420 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.001491 AS "E"
  ) AS "Values"
 )
,
"DT_output_20" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_2" < 0.782862) THEN CASE WHEN (t."X_1" < 0.486969) THEN CASE WHEN (t."X_2" < 0.475292) THEN 19 ELSE 20 END ELSE 14 END ELSE CASE WHEN (t."X_3" < 0.670145) THEN CASE WHEN (t."X_0" < 0.652811) THEN 21 ELSE 22 END ELSE 16 END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 17 ELSE 18 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_21" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.032263 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.021100 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.002694 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000501 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000560 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.006255 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.007819 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.002021 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.001278 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.003928 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.001812 AS "E"
    UNION ALL
    SELECT 22 AS nid,  -0.000647 AS "E"
  ) AS "Values"
 )
,
"DT_output_21" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_5" < 0.062500) THEN 7 ELSE CASE WHEN (t."X_1" < 0.486969) THEN CASE WHEN (t."X_9" < 0.248943) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_2" < 0.782862) THEN 19 ELSE 20 END END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_22" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.027423 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.005317 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.017935 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.002290 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000426 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.006646 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.001718 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.003142 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.001042 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.000448 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.001449 AS "E"
  ) AS "Values"
 )
,
"DT_output_22" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_5" < 0.062500) THEN 7 ELSE CASE WHEN (t."X_2" < 0.731124) THEN CASE WHEN (t."X_8" < 0.479506) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 0.652811) THEN CASE WHEN (t."X_0" < 0.235384) THEN 21 ELSE 22 END ELSE 20 END END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_23" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.023310 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.004519 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.015245 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.001947 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000362 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.005649 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.001460 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.000855 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.002514 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.000394 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -0.000049 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.001159 AS "E"
  ) AS "Values"
 )
,
"DT_output_23" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_5" < 0.062500) THEN 7 ELSE CASE WHEN (t."X_2" < 0.731124) THEN CASE WHEN (t."X_8" < 0.479506) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 0.652811) THEN CASE WHEN (t."X_0" < 0.235384) THEN 21 ELSE 22 END ELSE 20 END END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_24" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.019813 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.003841 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.012958 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.001655 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000308 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.004802 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.001241 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.000663 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.002011 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.000334 AS "E"
    UNION ALL
    SELECT 21 AS nid,  -0.000042 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.000927 AS "E"
  ) AS "Values"
 )
,
"DT_output_24" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_5" < 0.062500) THEN 7 ELSE CASE WHEN (t."X_1" < 0.486969) THEN CASE WHEN (t."X_5" < 0.121827) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_2" < 0.782862) THEN 19 ELSE 20 END END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_25" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.016841 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.003265 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.011014 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.001407 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000261 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.004082 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.001055 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.000380 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.001447 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.000198 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.000742 AS "E"
  ) AS "Values"
 )
,
"DT_output_25" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_5" < 0.062500) THEN 7 ELSE CASE WHEN (t."X_1" < 0.486969) THEN CASE WHEN (t."X_9" < 0.248943) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_2" < 0.782862) THEN 19 ELSE 20 END END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_26" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.014315 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.002775 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.009362 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.001196 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000222 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.003469 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000897 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.001319 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.000360 AS "E"
    UNION ALL
    SELECT 19 AS nid,  -0.000158 AS "E"
    UNION ALL
    SELECT 20 AS nid,  0.000593 AS "E"
  ) AS "Values"
 )
,
"DT_output_26" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_5" < 0.062500) THEN 7 ELSE CASE WHEN (t."X_2" < 0.731124) THEN CASE WHEN (t."X_8" < 0.479506) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 0.652811) THEN CASE WHEN (t."X_0" < 0.235384) THEN 21 ELSE 22 END ELSE 20 END END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_27" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.012168 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.002359 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.007958 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.001016 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000189 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.002949 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000762 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.000296 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.001056 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.000173 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.000018 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.000475 AS "E"
  ) AS "Values"
 )
,
"DT_output_27" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_5" < 0.062500) THEN 7 ELSE CASE WHEN (t."X_1" < 0.486969) THEN CASE WHEN (t."X_9" < 0.248943) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 0.652811) THEN CASE WHEN (t."X_0" < 0.235384) THEN 21 ELSE 22 END ELSE 20 END END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_28" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.010343 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.002005 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.006764 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.000864 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000161 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.002507 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000648 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.000844 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.000221 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.000163 AS "E"
    UNION ALL
    SELECT 21 AS nid,  0.000015 AS "E"
    UNION ALL
    SELECT 22 AS nid,  0.000380 AS "E"
  ) AS "Values"
 )
,
"DT_output_28" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_5" < 0.062500) THEN 7 ELSE CASE WHEN (t."X_1" < 0.486969) THEN CASE WHEN (t."X_9" < 0.248943) THEN 17 ELSE 18 END ELSE CASE WHEN (t."X_0" < 0.652811) THEN 19 ELSE 20 END END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE CASE WHEN (t."X_0" < 0.235384) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_29" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.008791 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.001705 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.005750 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.000734 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000137 AS "E"
    UNION ALL
    SELECT 15 AS nid,  0.002131 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000550 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.000676 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.000172 AS "E"
    UNION ALL
    SELECT 19 AS nid,  0.000234 AS "E"
    UNION ALL
    SELECT 20 AS nid,  -0.000138 AS "E"
  ) AS "Values"
 )
,
"DT_output_29" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_5" < 0.062500) THEN 7 ELSE CASE WHEN (t."X_1" < 0.486969) THEN CASE WHEN (t."X_0" < 0.830477) THEN 15 ELSE 16 END ELSE CASE WHEN (t."X_0" < 0.652811) THEN 17 ELSE 18 END END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_2" < 0.403483) THEN 11 ELSE 12 END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_30" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.007472 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.001449 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.004887 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.000624 AS "E"
    UNION ALL
    SELECT 11 AS nid,  -0.000116 AS "E"
    UNION ALL
    SELECT 12 AS nid,  0.001519 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.000187 AS "E"
    UNION ALL
    SELECT 16 AS nid,  -0.000609 AS "E"
    UNION ALL
    SELECT 17 AS nid,  0.000182 AS "E"
    UNION ALL
    SELECT 18 AS nid,  -0.000118 AS "E"
  ) AS "Values"
 )
,
"DT_output_30" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
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
    CASE WHEN (t."X_1" < 0.628863) THEN CASE WHEN (t."X_0" < 0.888102) THEN CASE WHEN (t."X_5" < 0.062500) THEN 7 ELSE CASE WHEN (t."X_0" < 0.830477) THEN CASE WHEN (t."X_0" < 0.399336) THEN 17 ELSE 18 END ELSE 14 END END ELSE CASE WHEN (t."X_1" < 0.189593) THEN 9 ELSE 10 END END ELSE CASE WHEN (t."X_0" < 0.544738) THEN CASE WHEN (t."X_0" < 0.235384) THEN 11 ELSE CASE WHEN (t."X_0" < 0.399336) THEN 15 ELSE 16 END END ELSE 6 END END AS node_id
  FROM model_input AS t
 )
,
"DT_node_data_31" AS 
 (SELECT
    "Values".nid AS nid,
    "Values"."E" AS "E"
  FROM (
    SELECT 6 AS nid,  0.006351 AS "E"
    UNION ALL
    SELECT 7 AS nid,  0.001231 AS "E"
    UNION ALL
    SELECT 9 AS nid,  -0.004154 AS "E"
    UNION ALL
    SELECT 10 AS nid,  -0.000530 AS "E"
    UNION ALL
    SELECT 11 AS nid,  0.001583 AS "E"
    UNION ALL
    SELECT 14 AS nid,  -0.000412 AS "E"
    UNION ALL
    SELECT 15 AS nid,  -0.000099 AS "E"
    UNION ALL
    SELECT 16 AS nid,  0.000240 AS "E"
    UNION ALL
    SELECT 17 AS nid,  -0.000151 AS "E"
    UNION ALL
    SELECT 18 AS nid,  0.000091 AS "E"
  ) AS "Values"
 )
,
"DT_output_31" AS 
 (SELECT
   t1."index" AS "index",
   t1.node_id AS node_id,
   t2.nid AS nid,
   t2."E" AS "E"
  FROM
   "DT_node_lookup_31" AS t1
   LEFT OUTER JOIN
   "DT_node_data_31" AS t2
   ON t1.node_id = t2.nid
 )
,
"union_of_trees" AS
 (SELECT scu."index_u" AS "index", scu."E" AS "E"
 FROM (
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_0" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_1" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_2" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_3" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_4" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_5" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_6" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_7" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_8" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_9" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_10" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_11" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_12" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_13" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_14" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_15" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_16" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_17" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_18" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_19" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_20" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_21" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_22" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_23" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_24" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_25" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_26" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_27" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_28" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_29" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_30" AS t
    UNION ALL
    SELECT t."index" AS "index_u", t."E" AS "E" FROM "DT_output_31" AS t
  ) AS scu
)
SELECT
   t."index" AS "index",
   15.551092 + SUM(t."E") AS "Estimator"
FROM "union_of_trees" AS t
GROUP BY t."index"